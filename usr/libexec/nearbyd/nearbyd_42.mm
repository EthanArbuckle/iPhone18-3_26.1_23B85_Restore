void sub_100303110(unsigned __int8 *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 8;
    if (a1[31] < 0)
    {
      v3 = *v3;
    }

    v4 = *a1;
    v5 = a1[1];
    v6 = *(a1 + 16);
    v7 = a1 + 40;
    if (a1[63] < 0)
    {
      v7 = *v7;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 17);
    v10 = *(a1 + 18);
    v11 = *(a1 + 19);
    v12[0] = 67176707;
    v12[1] = v4;
    v13 = 1025;
    v14 = v5;
    v15 = 2081;
    v16 = v3;
    v17 = 1025;
    v18 = v6;
    v19 = 2081;
    v20 = v7;
    v21 = 1025;
    v22 = v8;
    v23 = 1025;
    v24 = v9;
    v25 = 1025;
    v26 = v10;
    v27 = 1025;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#fu,endian,%{private}d,headerVersion,%{private}d,type,%{private}s,version,%{private}d,copyright,%{private}s,timestamp,%{private}u,expiration,%{private}u,dataSizeBytes,%{private}u,crc,%{private}u", v12, 0x40u);
  }
}

unint64_t sub_100303230(uint64_t *a1)
{
  sub_100180564(v5, a1);
  if ((*(&v5[4] + *(v5[0] - 3)) & 5) != 0)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    std::istream::tellg();
    v2 = v4 & 0xFFFFFFFFFFFFFF00;
    v1 = v4;
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v2 | v1;
}

BOOL sub_1003033C8(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) >= 0;
}

void sub_100303404(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v1) & 0x80000000) == 0)
  {
    CFAbsoluteTimeGetCurrent();
  }
}

uint64_t sub_100303480(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 128))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD030();
    }

    return 0;
  }

  v4 = (a2 + 31);
  v3 = *(a2 + 31);
  v5 = (a2 + 16);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3 != 30)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCF28(v4, v5);
    }

    return 0;
  }

  if ((*(a2 + 63) & 0x80000000) == 0 || *(a2 + 48) != 128)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BCFAC((a2 + 63), (a2 + 48));
    }

    return 0;
  }

  v6 = 1;
  std::ostream::write();
  std::ostream::write();
  if (*(a2 + 31) >= 0)
  {
    v8 = *(a2 + 31);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  std::ostream::write();
  std::ostream::write();
  v10 = *(a2 + 40);
  v9 = a2 + 40;
  if (*(v9 + 23) >= 0)
  {
    v11 = *(v9 + 23);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::flush();
  return v6;
}

BOOL sub_100303650(FILE *__stream, uint64_t a2)
{
  if (!__stream)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD25C();
    }

    return 0;
  }

  if (fread(&__ptr, 1uLL, 0xB2uLL, __stream) != 178)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD070();
    }

    return 0;
  }

  v3 = __ptr;
  *a2 = __ptr;
  if ((v3 - 1) >= 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD0F4(a2);
    }

    return 0;
  }

  v4 = v17;
  *(a2 + 1) = v17;
  if (!v4)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD1E4((a2 + 1));
    }

    return 0;
  }

  v15 = 0;
  *__s = *v18;
  *&__s[14] = *&v18[14];
  std::string::assign((a2 + 8), __s);
  if (*a2 == 2)
  {
    v5 = bswap32(v19) >> 16;
  }

  else
  {
    v5 = v19;
  }

  *(a2 + 32) = v5;
  v6 = v5 != 0;
  if (v5)
  {
    v13 = 0;
    v12[4] = v24;
    v12[5] = v25;
    v12[6] = v26;
    v12[7] = v27;
    v12[0] = v20;
    v12[1] = v21;
    v12[2] = v22;
    v12[3] = v23;
    std::string::assign((a2 + 40), v12);
    if (*a2 == 2)
    {
      v8 = bswap32(v28);
      v9 = bswap32(v29);
      v10 = bswap32(v30);
      v11 = bswap32(v31);
    }

    else
    {
      v8 = v28;
      v9 = v29;
      v10 = v30;
      v11 = v31;
    }

    *(a2 + 64) = v8;
    *(a2 + 68) = v9;
    *(a2 + 72) = v10;
    *(a2 + 76) = v11;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BD16C((a2 + 32));
  }

  return v6;
}

BOOL sub_1003038C0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a1 + 23);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v15) < 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD29C(v4, v3);
    }

    return 0;
  }

  v5 = sub_100303230(v3);
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD30C(v4, v3);
    }

    return 0;
  }

  v7 = v5;
  if (v5 <= 0xB1)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) >= 0)
      {
        v14 = v3;
      }

      else
      {
        v14 = *v3;
      }

      v15.st_dev = 136315650;
      *&v15.st_mode = v14;
      WORD2(v15.st_ino) = 2048;
      *(&v15.st_ino + 6) = v7;
      HIWORD(v15.st_gid) = 1024;
      v15.st_rdev = 178;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#fu,getHeader,failed,file,%s,fileTooSmall,size,%lu,expected,%d", &v15, 0x1Cu);
    }
  }

  if (*(v3 + 23) >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  v10 = fopen(v9, "rb");
  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD37C(v4, v3);
    }

    return 0;
  }

  v12 = sub_100303650(v10, a2);
  fclose(v11);
  return v12;
}

BOOL sub_100303AB8(uint64_t *a1, int *a2, uint64_t *a3)
{
  sub_100180564(v12, a1);
  v5 = v13;
  if (v13)
  {
    v6 = 0;
    v7 = v12[0];
    *(&v12[1] + *(v12[0] - 3)) &= ~0x1000u;
    *a2 = -1;
    if ((*(&v12[4] + *(v7 - 3)) & 2) == 0)
    {
      v8 = -174;
      while (1)
      {
        std::istream::read();
        v9 = v12[0];
        if ((*(&v12[4] + *(v12[0] - 3)) & 2) != 0)
        {
          break;
        }

        v10 = dword_10056B238[*a2] ^ (*a2 >> 8);
        *a2 = v10;
        ++v8;
        if ((*(&v12[4] + *(v9 - 3)) & 2) != 0)
        {
          goto LABEL_11;
        }
      }

      v10 = *a2;
LABEL_11:
      v6 = ~v10;
    }

    *a2 = v6;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BD3EC(a3);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v5 != 0;
}

BOOL sub_100303D7C(uint64_t *a1, int *a2)
{
  sub_100004A08(__p, "generateCrc");
  v4 = sub_100303AB8(a1, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100303DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100303DFC(uint64_t a1)
{
  *v10 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  v18 = xmmword_100561E40;
  if (!sub_1003038C0(a1, v10))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD478(a1);
    }

    goto LABEL_11;
  }

  sub_100303110(v10);
  v9 = 0;
  sub_100004A08(buf, "isCrcOkay");
  v2 = sub_100303AB8(a1, &v9, buf);
  v3 = v2;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v2)
  {
    goto LABEL_11;
  }

  v4 = v9;
  if (HIDWORD(v18) == v9)
  {
    v5 = 1;
    goto LABEL_12;
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    v20 = 1024;
    v21 = HIDWORD(v18);
    v22 = 1024;
    v23 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#fu,isCrcOkay,file,%s,crcMismatch,onFile,%08x,calculated,%08x", buf, 0x18u);
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v11);
  }

  return v5;
}

BOOL sub_100303FF4(uint64_t a1)
{
  sub_100303230(a1);
  if ((v2 & 1) == 0)
  {
    v4 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#fu,%s does not exist", &v6, 0xCu);
    return 0;
  }

  if (sub_100303DFC(a1))
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004BD4E8(a1);
    return 0;
  }

  return result;
}

BOOL sub_1003040F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100303230(a1);
  if ((v5 & 1) == 0)
  {
    v7 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#fu,%s does not exist", &v9, 0xCu);
    return 0;
  }

  if (v4 != a2)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004BD558();
    return 0;
  }

  if (sub_100303DFC(a1))
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004BD4E8(a1);
    return 0;
  }

  return result;
}

char *sub_100304244@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

void sub_1003042A0(id a1)
{
  v1 = [[NIServerKeychainManager alloc] _initInternal];
  v2 = qword_1009F4D48;
  qword_1009F4D48 = v1;

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"KMUnitTestOverride"];

  if (v4)
  {
    [qword_1009F4D48 _unitTest1];
    [qword_1009F4D48 _unitTest2];
    v5 = qword_1009F4D48;

    [v5 _unitTest3];
  }
}

void sub_100304438(uint64_t a1)
{
  if ([*(a1 + 32) _shouldLog])
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 56);
      v5 = *(a1 + 57);
      *buf = 138478339;
      v29 = v3;
      v30 = 1024;
      v31 = v4;
      v32 = 1024;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ni-km,Write: %{private}@, %d, %d", buf, 0x18u);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFAutorelease(Mutable);
  v8 = v7;
  if (*(a1 + 57))
  {
    v9 = kCFBooleanTrue;
  }

  else
  {
    v9 = kCFBooleanFalse;
  }

  key = kSecUseSystemKeychain;
  CFDictionaryAddValue(v7, kSecUseSystemKeychain, v9);
  CFDictionaryAddValue(v8, kSecClass, kSecClassGenericPassword);
  v10 = [*(a1 + 40) data];
  CFDictionaryAddValue(v8, kSecValueData, v10);

  CFDictionaryAddValue(v8, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  v11 = [*(a1 + 40) account];
  CFDictionaryAddValue(v8, kSecAttrAccount, v11);

  v12 = [*(a1 + 40) service];
  CFDictionaryAddValue(v8, kSecAttrService, v12);

  CFDictionaryAddValue(v8, kSecAttrAccessGroup, @"com.apple.nearbyd");
  if (*(a1 + 56))
  {
    v13 = kCFBooleanTrue;
  }

  else
  {
    v13 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v8, kSecAttrSynchronizable, v13);
  v14 = &kSecAttrAccessibleAfterFirstUnlock;
  if (!*(a1 + 56))
  {
    v14 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  CFDictionaryAddValue(v8, kSecAttrAccessible, *v14);
  v15 = SecItemAdd(v8, 0);
  if ([*(a1 + 32) _shouldLog])
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174657;
      LODWORD(v29) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ni-km,Write status: %{private}d.", buf, 8u);
    }
  }

  if (v15 == -25299)
  {
    v17 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v18 = CFAutorelease(v17);
    v19 = v18;
    if (*(a1 + 57))
    {
      v20 = kCFBooleanTrue;
    }

    else
    {
      v20 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(v18, key, v20);
    CFDictionaryAddValue(v19, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(v19, kSecUseDataProtectionKeychain, kCFBooleanTrue);
    v21 = [*(a1 + 40) account];
    CFDictionaryAddValue(v19, kSecAttrAccount, v21);

    v22 = [*(a1 + 40) service];
    CFDictionaryAddValue(v19, kSecAttrService, v22);

    CFDictionaryAddValue(v19, kSecAttrAccessGroup, @"com.apple.nearbyd");
    if (*(a1 + 56))
    {
      v23 = kCFBooleanTrue;
    }

    else
    {
      v23 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(v19, kSecAttrSynchronizable, v23);
    CFDictionaryRemoveAllValues(v8);
    v24 = [*(a1 + 40) data];
    CFDictionaryAddValue(v8, kSecValueData, v24);

    v25 = SecItemUpdate(v19, v8);
    if ([*(a1 + 32) _shouldLog])
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67174657;
        LODWORD(v29) = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ni-km,Update status: %{private}d.", buf, 8u);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = v25 == 0;
  }

  else if (v15)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_100304A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100304A84(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalReadItemWithService:*(a1 + 40) account:*(a1 + 48) synchronizable:*(a1 + 64) systemKeychain:*(a1 + 65)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100304C30(uint64_t a1)
{
  if ([*(a1 + 32) _shouldLog])
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 56);
      v5 = *(a1 + 57);
      *buf = 138478339;
      *v27 = v3;
      *&v27[8] = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ni-km,Read all: %{private}@, %d, %d", buf, 0x18u);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFAutorelease(Mutable);
  v8 = v7;
  result = 0;
  if (*(a1 + 57))
  {
    v9 = kCFBooleanTrue;
  }

  else
  {
    v9 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v7, kSecUseSystemKeychain, v9);
  CFDictionaryAddValue(v8, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v8, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(v8, kSecAttrService, *(a1 + 40));
  CFDictionaryAddValue(v8, kSecAttrAccessGroup, @"com.apple.nearbyd");
  if (*(a1 + 56))
  {
    v10 = kCFBooleanTrue;
  }

  else
  {
    v10 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v8, kSecAttrSynchronizable, v10);
  CFDictionaryAddValue(v8, kSecMatchLimit, kSecMatchLimitAll);
  CFDictionaryAddValue(v8, kSecReturnData, kCFBooleanTrue);
  CFDictionaryAddValue(v8, kSecReturnAttributes, kCFBooleanTrue);
  v11 = SecItemCopyMatching(v8, &result);
  if (result)
  {
    TypeID = CFArrayGetTypeID();
    v13 = CFGetTypeID(result);
    v14 = result;
    if (TypeID != v13)
    {
      v14 = 0;
      CFRelease(result);
    }

    if ([*(a1 + 32) _shouldLog])
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 count];
        *buf = 67174913;
        *v27 = v11;
        *&v27[4] = 1025;
        *&v27[6] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ni-km,Read all status: %{private}d. Num results: %{private}d", buf, 0xEu);
      }
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10030501C;
    v21[3] = &unk_1009A4788;
    v17 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v18 = v17;
    v24 = *(a1 + 56);
    v19 = *(a1 + 48);
    v22 = v18;
    v23 = v19;
    [v14 enumerateObjectsUsingBlock:v21];
  }

  else if ([*(a1 + 32) _shouldLog])
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174657;
      *v27 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ni-km,Read all status: %{private}d. No results", buf, 8u);
    }
  }
}

void sub_10030501C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:kSecAttrAccount];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) _internalReadItemWithService:*(a1 + 40) account:v3 synchronizable:*(a1 + 56) systemKeychain:*(a1 + 57)];
    if (v4)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
    }

    v3 = v5;
  }
}

void sub_1003051E0(uint64_t a1)
{
  if ([*(a1 + 32) _shouldLog])
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v5 = *(a1 + 64);
      v6 = *(a1 + 65);
      v16 = 138478595;
      v17 = v3;
      v18 = 2113;
      v19 = v4;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ni-km,Delete: %{private}@, %{private}@, %d, %d", &v16, 0x22u);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFAutorelease(Mutable);
  v9 = v8;
  if (*(a1 + 65))
  {
    v10 = kCFBooleanTrue;
  }

  else
  {
    v10 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v8, kSecUseSystemKeychain, v10);
  CFDictionaryAddValue(v9, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v9, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(v9, kSecAttrAccount, *(a1 + 48));
  CFDictionaryAddValue(v9, kSecAttrService, *(a1 + 40));
  CFDictionaryAddValue(v9, kSecAttrAccessGroup, @"com.apple.nearbyd");
  if (*(a1 + 64))
  {
    v11 = kCFBooleanTrue;
  }

  else
  {
    v11 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v9, kSecAttrSynchronizable, v11);
  v12 = SecItemDelete(v9);
  if ([*(a1 + 32) _shouldLog])
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67174657;
      LODWORD(v17) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ni-km,Delete status: %{private}d.", &v16, 8u);
    }
  }

  if (v12)
  {
    v14 = v12 == -25300;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  *(*(*(a1 + 56) + 8) + 24) = v15;
}

void sub_100305530(uint64_t a1)
{
  if ([*(a1 + 32) _shouldLog])
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 56);
      v5 = *(a1 + 57);
      v15 = 138478339;
      v16 = v3;
      v17 = 1024;
      v18 = v4;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ni-km,Delete all: %{private}@, %d, %d", &v15, 0x18u);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFAutorelease(Mutable);
  v8 = v7;
  if (*(a1 + 57))
  {
    v9 = kCFBooleanTrue;
  }

  else
  {
    v9 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v7, kSecUseSystemKeychain, v9);
  CFDictionaryAddValue(v8, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v8, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(v8, kSecAttrService, *(a1 + 40));
  CFDictionaryAddValue(v8, kSecAttrAccessGroup, @"com.apple.nearbyd");
  if (*(a1 + 56))
  {
    v10 = kCFBooleanTrue;
  }

  else
  {
    v10 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v8, kSecAttrSynchronizable, v10);
  v11 = SecItemDelete(v8);
  if ([*(a1 + 32) _shouldLog])
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67174657;
      LODWORD(v16) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ni-km,Delete all status: %{private}d.", &v15, 8u);
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  *(*(*(a1 + 48) + 8) + 24) = v14;
}

id sub_1003082A4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id sub_1003082EC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id sub_100308334(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id sub_10030837C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

id sub_1003083C4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1003098F4(uint64_t a1)
{
  *a1 = sub_100003AE0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 34) = -1;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 50) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 201) = 0u;
  v6 = a1;
  sub_100309BB8(&v6, 5u, 1, 0);
  sub_100309BB8(&v6, 9u, 1, 0);
  sub_100309BB8(&v6, 5u, 2, 0);
  sub_100309BB8(&v6, 9u, 2, 0);
  sub_100309BB8(&v6, 5u, 0, 1);
  sub_100309BB8(&v6, 9u, 0, 1);
  sub_100309BB8(&v6, 5u, 3, 0);
  sub_100309BB8(&v6, 9u, 3, 0);
  LOWORD(v5) = 5;
  sub_10030CA64(a1 + 80, &v5);
  LOWORD(v5) = 9;
  sub_10030CA64(a1 + 80, &v5);
  v5 = a1;
  sub_10030C80C(&v5, 1, 0);
  sub_10030C80C(&v5, 2, 0);
  sub_10030C80C(&v5, 0, 1);
  sub_10030C80C(&v5, 3, 0);
  *v4 = 1;
  sub_10030CA64(a1 + 128, v4);
  v2 = qword_1009F4D58;
  if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,settings,init", v4, 2u);
  }

  return a1;
}

void sub_100309B54(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v6);
  sub_10002074C(v5, *(v1 + 136));
  sub_10017AC74(v4, *(v1 + 112));
  sub_10002074C(v3, *(v1 + 88));
  sub_10017AC74(v2, *(v1 + 64));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v7);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100309BB8(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v19 = a2;
  v6 = *(*a1 + 64);
  v7 = *a1 + 56;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *a1 + 64;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == *a1 + 64 || *(v8 + 32) > a2)
  {
LABEL_9:
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    LOBYTE(v16) = a2;
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    sub_10030C5EC(v7, &v16);
    sub_10002074C(&v17, v18[0]);
    sub_10002074C(&v14, v15[0]);
  }

  v16 = &v19;
  v12 = sub_10030C984(v7, &v19);
  LODWORD(v16) = a3;
  BYTE4(v16) = a4;
  return sub_10030C738((v12 + 5), &v16);
}

void sub_100309CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10002074C(v14 + 8, a14);
  sub_10002074C(&a9, a10);
  _Unwind_Resume(a1);
}

BOOL sub_100309CE0(uint64_t a1, int a2)
{
  v23 = a2;
  sub_100309FC4(a1, a2);
  *buf = &v23;
  v3 = sub_10030C984(a1 + 104, &v23)[5];
  *buf = &v23;
  v4 = sub_10030C984(a1 + 104, &v23) + 6;
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    do
    {
      v5 = *(v3 + 32);
      if (v5 != 1)
      {
        break;
      }

      v6 = *(v3 + 8);
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
          v7 = *(v3 + 16);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  *buf = &v23;
  v9 = *(sub_10030CB30(a1 + 128, &v23) + 26);
  if (v9 != v5)
  {
    v10 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      v11 = &v21;
      if (v22 < 0)
      {
        v11 = v21;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v12 = qword_1009F4D58;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_100428110(v23, __p);
      v13 = v20;
      v14 = __p[0];
      v24 = &v23;
      v15 = sub_10030CB30(a1 + 128, &v23);
      v16 = __p;
      v17 = *(v15 + 26);
      if (v13 < 0)
      {
        v16 = v14;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "regulatory,settings,ch,%s,current,%d,newChannelPreference,%d", buf, 0x18u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v23;
    *(sub_10030CB30(a1 + 128, &v23) + 26) = v5;
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  return v9 != v5;
}

void sub_100309F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100309FC4(uint64_t a1, int a2)
{
  v28 = a2;
  sub_100193120(v23);
  v4 = sub_10000EA44(&v24, "regulatory,settings,NBChannelPref,", 34);
  sub_100428110(a2, __p);
  if ((v22 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v6 = v22;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10000EA44(v4, v5, v6);
  sub_10000EA44(v7, ",", 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EA44(&v24, "Airplane,", 9);
  __p[0] = &v28;
  v8 = sub_10030C984(a1 + 104, &v28);
  __p[0] = &dword_10056B64C;
  v9 = *(sub_1001BF9A0((v8 + 5), &dword_10056B64C) + 32);
  v10 = std::ostream::operator<<();
  sub_10000EA44(v10, ",", 1);
  sub_10000EA44(&v24, "RegulatoryArea,", 15);
  __p[0] = &v28;
  v11 = sub_10030C984(a1 + 104, &v28);
  __p[0] = &unk_10056B658;
  v12 = *(sub_1001BF9A0((v11 + 5), &unk_10056B658) + 32);
  v13 = std::ostream::operator<<();
  sub_10000EA44(v13, ",", 1);
  sub_10000EA44(&v24, "Switch,", 7);
  __p[0] = &v28;
  v14 = sub_10030C984(a1 + 104, &v28);
  __p[0] = &dword_10056B650;
  v15 = *(sub_1001BF9A0((v14 + 5), &dword_10056B650) + 32);
  v16 = std::ostream::operator<<();
  sub_10000EA44(v16, ",", 1);
  sub_10000EA44(&v24, "RestrictedRegion,", 17);
  __p[0] = &v28;
  v17 = sub_10030C984(a1 + 104, &v28);
  __p[0] = &dword_10056B654;
  v18 = *(sub_1001BF9A0((v17 + 5), &dword_10056B654) + 32);
  std::ostream::operator<<();
  std::stringbuf::str();
  v24 = v19;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_10030A3D0(uint64_t a1, int a2)
{
  v20 = a2;
  sub_10030A688(a1, a2);
  *buf = &v20;
  v3 = sub_10030C984(a1 + 56, &v20)[5];
  *buf = &v20;
  v4 = sub_10030C984(a1 + 56, &v20) + 6;
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    do
    {
      v5 = *(v3 + 32);
      if (v5 != 1)
      {
        break;
      }

      v6 = *(v3 + 8);
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
          v7 = *(v3 + 16);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  *buf = &v20;
  v9 = *(sub_10030CB30(a1 + 80, &v20) + 26);
  if (v9 != v5)
  {
    v10 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p;
      }

      *buf = 136315138;
      *&buf[4] = p_p;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v12 = qword_1009F4D58;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v20;
      v21 = &v20;
      v14 = sub_10030CB30(a1 + 80, &v20);
      v15 = "CH9";
      v16 = *(v14 + 26);
      *buf = 136315650;
      if (v13 == 5)
      {
        v15 = "CH5";
      }

      *&buf[4] = v15;
      v23 = 1024;
      v24 = v16;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "regulatory,settings,ch,%s,current,%d,newChannelPreference,%d", buf, 0x18u);
    }

    *buf = &v20;
    *(sub_10030CB30(a1 + 80, &v20) + 26) = v5;
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  return v9 != v5;
}

void sub_10030A658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10030A688(uint64_t a1, int a2)
{
  v28 = a2;
  sub_100193120(v23);
  v4 = sub_10000EA44(&v24, "regulatory,settings,UWBChannelPref,", 35);
  sub_100428144(a2, __p);
  if ((v22 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v6 = v22;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10000EA44(v4, v5, v6);
  sub_10000EA44(v7, ",", 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EA44(&v24, "Airplane,", 9);
  __p[0] = &v28;
  v8 = sub_10030C984(a1 + 56, &v28);
  __p[0] = &dword_10056B64C;
  v9 = *(sub_1001BF9A0((v8 + 5), &dword_10056B64C) + 32);
  v10 = std::ostream::operator<<();
  sub_10000EA44(v10, ",", 1);
  sub_10000EA44(&v24, "RegulatoryArea,", 15);
  __p[0] = &v28;
  v11 = sub_10030C984(a1 + 56, &v28);
  __p[0] = &unk_10056B658;
  v12 = *(sub_1001BF9A0((v11 + 5), &unk_10056B658) + 32);
  v13 = std::ostream::operator<<();
  sub_10000EA44(v13, ",", 1);
  sub_10000EA44(&v24, "Switch,", 7);
  __p[0] = &v28;
  v14 = sub_10030C984(a1 + 56, &v28);
  __p[0] = &dword_10056B650;
  v15 = *(sub_1001BF9A0((v14 + 5), &dword_10056B650) + 32);
  v16 = std::ostream::operator<<();
  sub_10000EA44(v16, ",", 1);
  sub_10000EA44(&v24, "RestrictedRegion,", 17);
  __p[0] = &v28;
  v17 = sub_10030C984(a1 + 56, &v28);
  __p[0] = &dword_10056B654;
  v18 = *(sub_1001BF9A0((v17 + 5), &dword_10056B654) + 32);
  std::ostream::operator<<();
  std::stringbuf::str();
  v24 = v19;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10030AA94(uint64_t a1)
{
  v2 = sub_10030A3D0(a1, 5);
  v3 = v2 | sub_10030A3D0(a1, 9);
  if (sub_100309CE0(a1, 1))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_10030AAEC(uint64_t a1, int a2, int a3)
{
  std::mutex::lock((a1 + 152));
  if (*(a1 + 36) == a2 && *(a1 + 44) && *(a1 + 40) == a3)
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 36) = a2;
    *(a1 + 40) = a3;
    v6 = 1;
    *(a1 + 44) = 1;
  }

  if (*(a1 + 216))
  {
    v7 = 1;
  }

  else
  {
    v8 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109888;
      v11[1] = 0;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = 0;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setAttachedAccessoryStatus,ignoreUpdates,isUWBChannelSettingChanged,%d,isUWBPowerTableChanged,%d,isNBChannelSettingChanged,%d,isNBPowerTableChanged,%d", v11, 0x1Au);
    }

    v7 = *(a1 + 216);
  }

  v9 = v6 << 8;
  std::mutex::unlock((a1 + 152));
  if (v7)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030AC1C(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 152));
  v4 = qword_1009F4D58;
  if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setAirplaneMode,%d", buf, 8u);
  }

  *(a1 + 49) = a2;
  *buf = &unk_10056B648;
  v5 = sub_10030C984(a1 + 56, &unk_10056B648);
  *buf = &dword_10056B64C;
  *(sub_1001BF9A0((v5 + 5), &dword_10056B64C) + 32) = a2 ^ 1;
  v6 = *(a1 + 49);
  *buf = &unk_10056B649;
  v7 = sub_10030C984(a1 + 56, &unk_10056B649);
  *buf = &dword_10056B64C;
  *(sub_1001BF9A0((v7 + 5), &dword_10056B64C) + 32) = (v6 ^ 1) & 1;
  v8 = *(a1 + 49);
  *buf = byte_10056B64A;
  v9 = sub_10030C984(a1 + 104, byte_10056B64A);
  *buf = &dword_10056B64C;
  *(sub_1001BF9A0((v9 + 5), &dword_10056B64C) + 32) = (v8 ^ 1) & 1;
  v10 = sub_10030AA94(a1);
  v11 = v10;
  v12 = (v10 >> 8) & 1;
  if ((*(a1 + 216) & 1) == 0)
  {
    v13 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v11 & 1;
      v17 = 1024;
      v18 = 0;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setAirplaneMode,ignoreUpdates,isUWBChannelSettingChanged,%d,isUWBPowerTableChanged,%d, isNBChannelSettingChanged,%d,isNBPowerTableChanged,%d", buf, 0x1Au);
    }
  }

  if (v11)
  {
    v14 = *(a1 + 216);
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock((a1 + 152));
  return v14 | (v12 << 16);
}

uint64_t sub_10030AE88(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 152));
  if (*(a1 + 50) != a2)
  {
    v4 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,settings,isRestrictedRegion,%d", buf, 8u);
    }
  }

  *(a1 + 50) = a2;
  *buf = &unk_10056B648;
  v5 = sub_10030C984(a1 + 56, &unk_10056B648);
  *buf = &dword_10056B654;
  *(sub_1001BF9A0((v5 + 5), &dword_10056B654) + 32) = a2;
  v6 = *(a1 + 50);
  *buf = &unk_10056B649;
  v7 = sub_10030C984(a1 + 56, &unk_10056B649);
  *buf = &dword_10056B654;
  *(sub_1001BF9A0((v7 + 5), &dword_10056B654) + 32) = v6;
  v8 = *(a1 + 50);
  *buf = byte_10056B64A;
  v9 = sub_10030C984(a1 + 104, byte_10056B64A);
  *buf = &dword_10056B654;
  *(sub_1001BF9A0((v9 + 5), &dword_10056B654) + 32) = v8;
  v10 = sub_10030AA94(a1);
  if ((*(a1 + 216) & 1) == 0)
  {
    v11 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v10 & 1;
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setInRestrictedRegion,ignoreUpdates,isChannelSettingChanged,%d,isPowerTableChanged,%d", buf, 0xEu);
    }
  }

  if (v10)
  {
    v12 = *(a1 + 216);
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock((a1 + 152));
  return v12;
}

uint64_t sub_10030B0D8(uint64_t a1, const std::string *a2)
{
  v2 = a2;
  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if (v5 >= 0)
  {
    v6 = *(a1 + 31);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v8 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    goto LABEL_13;
  }

  if (v5 >= 0)
  {
    v9 = (a1 + 8);
  }

  else
  {
    v9 = v4->__r_.__value_.__r.__words[0];
  }

  v10 = a2->__r_.__value_.__r.__words[0];
  if (v8 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v9, a2, v6);
  if (result)
  {
LABEL_13:
    v12 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "__";
      if (*(a1 + 31) < 0)
      {
        if (*(a1 + 16))
        {
          v14 = v4->__r_.__value_.__r.__words[0];
        }

        else
        {
          v14 = "__";
        }
      }

      else if (*(a1 + 31))
      {
        v14 = v4;
      }

      else
      {
        v14 = "__";
      }

      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (v2->__r_.__value_.__l.__size_)
        {
          v13 = v2->__r_.__value_.__r.__words[0];
        }

        else
        {
          v13 = "__";
        }
      }

      else if (*(&v2->__r_.__value_.__s + 23))
      {
        v13 = v2;
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setIsoCountry,current:%s,new:%s", buf, 0x16u);
    }

    v70 = 0;
    *v68 = 0u;
    v69 = 0u;
    *v67 = 0u;
    v71 = -1;
    v15 = *a1;
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__p, v2->__r_.__value_.__l.__data_, v2->__r_.__value_.__l.__size_);
    }

    else
    {
      *__p = *&v2->__r_.__value_.__l.__data_;
      v66 = v2->__r_.__value_.__r.__words[2];
    }

    v16 = sub_100459DC8(v15, __p, v67);
    v17 = v16;
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
      if (v17)
      {
        goto LABEL_34;
      }
    }

    else if (v16)
    {
LABEL_34:
      std::mutex::lock((a1 + 152));
      v18 = qword_1009F4D58;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v4;
        v19 = SHIBYTE(v69);
        v20 = v68[1];
        v21 = SHIBYTE(v68[0]);
        v22 = v67[0];
        v23 = v70;
        v24 = HIBYTE(v70);
        sub_100457E08(v71, &v75);
        v25 = v67;
        v26 = &v68[1];
        if (v21 < 0)
        {
          v25 = v22;
        }

        if (v19 < 0)
        {
          v26 = v20;
        }

        *buf = 136316162;
        v27 = &v75;
        if (v78 < 0)
        {
          v27 = v75;
        }

        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v25;
        *&buf[22] = 1024;
        *&buf[24] = v23;
        *&buf[28] = 1024;
        *&buf[30] = v24;
        *&buf[34] = 2080;
        *&buf[36] = v27;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "regulatory,settings,countryAvailable,U,iso,%s,name,%s,ch5,%d,ch9,%d,group,%s", buf, 0x2Cu);
        if (v78 < 0)
        {
          operator delete(v75);
        }

        v4 = v58;
      }

      v28 = sub_10030B99C(a1);
      v29 = v70;
      *buf = &unk_10056B648;
      v30 = sub_10030C984(a1 + 56, &unk_10056B648);
      *buf = &unk_10056B658;
      *(sub_1001BF9A0((v30 + 5), &unk_10056B658) + 32) = v29;
      v31 = HIBYTE(v70);
      *buf = &unk_10056B649;
      v32 = sub_10030C984(a1 + 56, &unk_10056B649);
      *buf = &unk_10056B658;
      *(sub_1001BF9A0((v32 + 5), &unk_10056B658) + 32) = v31;
      v33 = sub_10030A3D0(a1, 5);
      v34 = sub_10030A3D0(a1, 9);
      std::string::operator=(v4, v2);
      if (*(a1 + 32) == v71)
      {
        v35 = 0;
      }

      else
      {
        *(a1 + 32) = v71;
        v35 = 1;
      }

      v37 = v33 || v34;
      if ((v28 & sub_10030B99C(a1)) != 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = 0;
      }

      v39 = *(a1 + 216);
      if ((v39 & 1) == 0)
      {
        v40 = qword_1009F4D58;
        if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v37;
          *&buf[8] = 1024;
          *&buf[10] = v38;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setIsoCountry,ignoreUpdates,isChannelSettingChanged,%d,isPowerTableChanged,%d", buf, 0xEu);
        }

        v39 = *(a1 + 216);
      }

      std::mutex::unlock((a1 + 152));
      v41 = sub_100003AE0();
      if (v39)
      {
        v17 = v38;
      }

      else
      {
        v17 = 0;
      }

      sub_10045C228(v41, v4);
      v36 = v37 & v39;
LABEL_60:
      v74[0] = 0;
      v74[1] = 0;
      memset(buf, 0, sizeof(buf));
      v73 = v74;
      v42 = *a1;
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000056BC(__dst, v2->__r_.__value_.__l.__data_, v2->__r_.__value_.__l.__size_);
      }

      else
      {
        *__dst = *&v2->__r_.__value_.__l.__data_;
        v64 = v2->__r_.__value_.__r.__words[2];
      }

      v43 = sub_100459FFC(v42, __dst, buf);
      v44 = v43;
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__dst[0]);
        if (v44)
        {
LABEL_65:
          std::mutex::lock((a1 + 152));
          v45 = sub_10030B9F8(a1);
          v62 = 0;
          v75 = &v62;
          if (*(sub_10030CC04(&v73, &v62) + 27) == 254 || (v61 = 0, v75 = &v61, *(sub_10030CC04(&v73, &v61) + 27) == 255) || (v60 = 0, v75 = &v60, *(sub_10030CC04(&v73, &v60) + 26) == 254))
          {
            v46 = 0;
          }

          else
          {
            v59 = 0;
            v75 = &v59;
            v46 = *(sub_10030CC04(&v73, &v59) + 26) != 255;
          }

          v75 = byte_10056B64A;
          v47 = sub_10030C984(a1 + 104, byte_10056B64A);
          v75 = &unk_10056B658;
          *(sub_1001BF9A0((v47 + 5), &unk_10056B658) + 32) = v46;
          v48 = sub_100309CE0(a1, 1);
          v49 = *(a1 + 33);
          v62 = 0;
          v75 = &v62;
          if (v49 == *(sub_10030CC04(&v73, &v62) + 27) && (v50 = *(a1 + 34), v61 = 0, v75 = &v61, v50 == *(sub_10030CC04(&v73, &v61) + 26)))
          {
            v51 = 0;
          }

          else
          {
            v62 = 0;
            v75 = &v62;
            *(a1 + 33) = *(sub_10030CC04(&v73, &v62) + 27);
            v62 = 0;
            v75 = &v62;
            *(a1 + 34) = *(sub_10030CC04(&v73, &v62) + 26);
            v51 = 1;
          }

          v53 = sub_10030B9F8(a1);
          if (v45)
          {
            v54 = v51;
          }

          else
          {
            v54 = 1;
          }

          if (v53)
          {
            v55 = v54;
          }

          else
          {
            v55 = 0;
          }

          if (*(a1 + 216))
          {
            v56 = 1;
          }

          else
          {
            v57 = qword_1009F4D58;
            if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v75) = 67109376;
              HIDWORD(v75) = v48;
              v76 = 1024;
              v77 = v55;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "regulatory,settings,setIsoCountry,ignoreUpdates,N,isChannelSettingChanged,%d,isPowerTableChanged,%d", &v75, 0xEu);
            }

            v56 = *(a1 + 216);
          }

          std::mutex::unlock((a1 + 152));
          if (v56)
          {
            v52 = v55 << 24;
          }

          else
          {
            v52 = 0;
          }

          if (v48)
          {
            v44 = 0x10000;
          }

          else
          {
            v44 = 0;
          }

          goto LABEL_92;
        }
      }

      else if (v43)
      {
        goto LABEL_65;
      }

      v52 = 0;
LABEL_92:
      sub_10002074C(&v73, v74[0]);
      if (buf[47] < 0)
      {
        operator delete(*&buf[24]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68[1]);
      }

      if (SHIBYTE(v68[0]) < 0)
      {
        operator delete(v67[0]);
      }

      return v36 | (v17 << 8) | v44 | v52;
    }

    v36 = 0;
    goto LABEL_60;
  }

  return result;
}

void sub_10030B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::mutex::unlock((v33 + 152));
  sub_10030C934(&a33);
  sub_10022A868(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B99C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = (a1 + 88);
  if (v1 == (a1 + 88))
  {
    return 0;
  }

  do
  {
    result = *(v1 + 26);
    if (result)
    {
      break;
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10030B9F8(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = (a1 + 136);
  if (v1 == (a1 + 136))
  {
    return 0;
  }

  do
  {
    result = *(v1 + 26);
    if (result)
    {
      break;
    }

    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10030BA54(uint64_t a1)
{
  std::mutex::lock((a1 + 152));
  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  v2 = sub_10030C984(a1 + 56, &unk_10056B648);
  *(sub_1001BF9A0((v2 + 5), &unk_10056B658) + 32) = 0;
  v3 = sub_10030C984(a1 + 56, &unk_10056B649);
  *(sub_1001BF9A0((v3 + 5), &unk_10056B658) + 32) = 0;
  v4 = sub_10030C984(a1 + 104, byte_10056B64A);
  *buf = &unk_10056B658;
  *(sub_1001BF9A0((v4 + 5), &unk_10056B658) + 32) = 0;
  v5 = sub_10030AA94(a1);
  v6 = v5 & 1;
  if ((*(a1 + 216) & 1) == 0)
  {
    v7 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v5 & 1;
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regulatory,settings,clearIsoCountry,isChannelSettingChanged,%d,isPowerTableChanged,%d", buf, 0xEu);
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      v6 = 0;
    }
  }

  std::mutex::unlock((a1 + 152));
  return v6 & 0xFFFEFFFF | (((v5 >> 8) & 1) << 16);
}

uint64_t sub_10030BC60(uint64_t a1)
{
  if (sub_10030B99C(a1))
  {
    return 1;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 64);
  v4 = a1 + 64;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v4;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= 9;
    v9 = v7 < 9;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v4 || *(v6 + 32) >= 0xAu)
  {
LABEL_33:
    sub_1004BD708();
  }

  sub_10030CCDC(&v22, v6 + 40);
  v10 = v22;
  if (v22 != v23)
  {
    do
    {
      if ((v10[4] & 1) == 0)
      {
        sub_1002856D8(&__p, v10 + 7);
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v15 = *v12 == v10;
          v10 = v12;
        }

        while (!v15);
      }

      v10 = v12;
    }

    while (v12 != v23);
  }

  v13 = __p;
  v14 = __p + 4;
  v15 = __p == v25 || v14 == v25;
  if (!v15)
  {
    v16 = *__p;
    v17 = __p + 4;
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      v20 = v16 < v19;
      if (v16 <= v19)
      {
        v16 = v18;
      }

      if (v20)
      {
        v13 = v14;
      }

      v14 = v17;
    }

    while (v17 != v25);
  }

  v21 = *v13;
  sub_10002074C(&v22, v23[0]);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v21 << 32;
}

void sub_10030BDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030BDDC(uint64_t a1)
{
  if (sub_10030B9F8(a1))
  {
    return 1;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v4;
  do
  {
    if (*(v3 + 32))
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) == 0));
  }

  while (v3);
  if (v6 == v4 || *(v6 + 32) >= 2u)
  {
LABEL_32:
    sub_1004BD734();
  }

  sub_10030CCDC(&v19, v6 + 40);
  v7 = v19;
  if (v19 != v20)
  {
    do
    {
      if ((v7[4] & 1) == 0)
      {
        sub_1002856D8(&__p, v7 + 7);
      }

      v8 = v7[1];
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
          v9 = v7[2];
          v12 = *v9 == v7;
          v7 = v9;
        }

        while (!v12);
      }

      v7 = v9;
    }

    while (v9 != v20);
  }

  v10 = __p;
  v11 = __p + 4;
  v12 = __p == v22 || v11 == v22;
  if (!v12)
  {
    v13 = *__p;
    v14 = __p + 4;
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      v17 = v13 < v16;
      if (v13 <= v16)
      {
        v13 = v15;
      }

      if (v17)
      {
        v10 = v11;
      }

      v11 = v14;
    }

    while (v14 != v22);
  }

  v18 = *v10;
  sub_10002074C(&v19, v20[0]);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return v18 << 32;
}

void sub_10030BF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030BF58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((a1 + 152));
  *(a2 + 32) = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if ((*(a1 + 216) & 1) == 0)
  {
    v4 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,settings,getRegulatorySettingsLocked", buf, 2u);
    }
  }

  *(a1 + 216) = 1;
  v5 = *a1;
  if (sub_10045C288())
  {
    v6 = qword_1009F4D58;
    if (os_log_type_enabled(qword_1009F4D58, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRegulatorySettings: bypassing regulatory compliance requirements via defaults write.", v10, 2u);
    }

    *a2 = 257;
    *(a2 + 4) = 1;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    *(a2 + 16) = 1;
    *(a2 + 20) = 0;
    *(a2 + 24) = 0;
    std::string::assign((a2 + 32), "US");
    v7 = 0;
    *(a2 + 56) = 0;
    *(a2 + 60) = 0;
  }

  else
  {
    *a2 = sub_10030B99C(a1);
    *(a2 + 1) = sub_10030B9F8(a1);
    *(a2 + 4) = sub_10030BC60(a1);
    *(a2 + 12) = v8;
    *(a2 + 16) = sub_10030BDDC(a1);
    *(a2 + 24) = v9;
    std::string::operator=((a2 + 32), (a1 + 8));
    *(a2 + 56) = *(a1 + 32);
    *(a2 + 57) = *(a1 + 33);
    *(a2 + 60) = *(a1 + 36);
    if (*(a1 + 44) == 1)
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = 0;
    }
  }

  *(a2 + 64) = v7;
  std::mutex::unlock((a1 + 152));
}

void sub_10030C118(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*v3);
  }

  std::mutex::unlock((v1 + 152));
  _Unwind_Resume(a1);
}

id sub_10030C144(uint64_t a1)
{
  std::mutex::lock((a1 + 152));
  v2 = objc_opt_new();
  v3 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = v30;
  sub_100457E08(*(a1 + 32), v30);
  if (v31 < 0)
  {
    v4 = v30[0];
  }

  sub_100457E78(*(a1 + 33), v28);
  v5 = v29;
  v6 = v28[0];
  sub_100457E40(*(a1 + 34), __p);
  v7 = v28;
  if (v5 < 0)
  {
    v7 = v6;
  }

  if (v27 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithFormat:@"Country: %s. UWB-reg group: %s. NB-reg group: %s. NB-SAR group: %s. Rose ready: %d", v3, v4, v7, v8, *(a1 + 216)];
  [v2 addObject:v9];

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (*(a1 + 44) == 1)
  {
    v10 = *(a1 + 40);
  }

  v11 = *(a1 + 36);
  sub_10041C9CC();
  if (v31 >= 0)
  {
    v12 = v30;
  }

  else
  {
    v12 = v30[0];
  }

  v13 = [NSString stringWithFormat:@"Accessory: %d (%s). Switch: %d. Airplane mode: %d. Region allowed: %d", v11, v12, *(a1 + 48), *(a1 + 49), *(a1 + 50)];
  [v2 addObject:v13];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  LOBYTE(__p[0]) = 5;
  v30[0] = __p;
  v14 = *(sub_10030CB30(a1 + 80, __p) + 26);
  v25 = 9;
  v30[0] = &v25;
  v15 = *(sub_10030CB30(a1 + 80, &v25) + 26);
  v24 = 1;
  v30[0] = &v24;
  v16 = [NSString stringWithFormat:@"Channel state: CH5 %d, CH9 %d, UNII-3 %d. Preference strings:", v14, v15, *(sub_10030CB30(a1 + 128, &v24) + 26)];
  [v2 addObject:v16];

  sub_10030A688(a1, 5);
  if (v31 >= 0)
  {
    v17 = v30;
  }

  else
  {
    v17 = v30[0];
  }

  v18 = [NSString stringWithFormat:@"    %s", v17];
  [v2 addObject:v18];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  sub_10030A688(a1, 9);
  if (v31 >= 0)
  {
    v19 = v30;
  }

  else
  {
    v19 = v30[0];
  }

  v20 = [NSString stringWithFormat:@"    %s", v19];
  [v2 addObject:v20];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  sub_100309FC4(a1, 1);
  if (v31 >= 0)
  {
    v21 = v30;
  }

  else
  {
    v21 = v30[0];
  }

  v22 = [NSString stringWithFormat:@"    %s", v21];
  [v2 addObject:v22];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::mutex::unlock((a1 + 152));

  return v2;
}

void sub_10030C51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = v35;

  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v33 + 152));
  _Unwind_Resume(a1);
}

uint64_t *sub_10030C5EC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10030C6A0();
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

uint64_t *sub_10030C738(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *sub_10030C80C(uint64_t a1, int a2, char a3)
{
  v15 = 1;
  v5 = *(*a1 + 112);
  v6 = *a1 + 104;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = *a1 + 112;
  do
  {
    if (*(v5 + 32))
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) == 0));
  }

  while (v5);
  if (v7 == *a1 + 112 || *(v7 + 32) >= 2u)
  {
LABEL_8:
    v11[0] = 0;
    v11[1] = 0;
    v10 = v11;
    LOBYTE(v12) = 1;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    sub_10030C5EC(v6, &v12);
    sub_10002074C(&v13, v14[0]);
    sub_10002074C(&v10, v11[0]);
  }

  v12 = &v15;
  v8 = sub_10030C984(v6, &v15);
  LODWORD(v12) = a2;
  BYTE4(v12) = a3;
  return sub_10030C738((v8 + 5), &v12);
}

void sub_10030C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10002074C(v14 + 8, a14);
  sub_10002074C(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10030C934(uint64_t a1)
{
  sub_10002074C(a1 + 48, *(a1 + 56));
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

uint64_t *sub_10030C984(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_10030CA64(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_10030CB30(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_10030CC04(uint64_t a1, unsigned __int8 *a2)
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

void *sub_10030CCDC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10030CD34(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10030CD34(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10030CDBC(v5, v5 + 1, v4 + 7);
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

uint64_t sub_10030CDBC(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1001BD1C8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_10030CE54()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F4D58 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_10030D218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10030D27C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void **sub_10030D340(void **a1)
{
  v3 = a1;
  sub_10030E938(&v3);
  return a1;
}

uint64_t sub_10030D378(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10030E938(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

dispatch_queue_t *sub_10030D3F0(dispatch_queue_t *a1)
{
  *a1 = dispatch_queue_create("com.apple.nearbyd.ota.queue", 0);
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.ota.task"];

  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10030D508;
  v6[3] = &unk_1009A0888;
  v6[4] = a1;
  [v3 registerForTaskWithIdentifier:@"com.apple.nearbyd.ota.task" usingQueue:v4 launchHandler:v6];

  dispatch_async(*a1, &stru_1009A4820);
  sub_10030D7C8(a1);
  return a1;
}

void sub_10030D510(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ota,start to query ota files", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10030DC34;
  v16[3] = &unk_1009A4848;
  v16[4] = buf;
  [v3 setExpirationHandler:v16];
  v6 = qword_1009F4E80;
  if (qword_1009F4E80 != &unk_1009F4E88)
  {
    *&v5 = 136315138;
    v15 = v5;
    while (1)
    {
      v7 = v18[24];
      v8 = qword_1009F9820;
      v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v7 == 1)
      {
        break;
      }

      if (v9)
      {
        v10 = v6 + 32;
        if (*(v6 + 55) < 0)
        {
          v10 = *(v6 + 32);
        }

        *v21 = v15;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,query %s", v21, 0xCu);
      }

      sub_10030DC48(a1, v6 + 32, (v6 + 56));
      v11 = *(v6 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v6 + 16);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
      if (v12 == &unk_1009F4E88)
      {
        goto LABEL_19;
      }
    }

    if (v9)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,task expiration, terminate file query", v21, 2u);
    }
  }

LABEL_19:
  [v3 setTaskCompleted];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ota,task complete", v21, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void sub_10030D7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10030D7C8(NSObject **a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ota,query configurable parameters on startup", buf, 2u);
  }

  v3 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030D980;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

id *sub_10030D88C(id *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.ota.task"];

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ota,deregister %d in destructor", v6, 8u);
  }

  return a1;
}

void sub_10030D970(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10030D988(dispatch_queue_t *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ota,query all files", v7, 2u);
  }

  dispatch_assert_queue_V2(*a1);
  v3 = qword_1009F4E80;
  if (qword_1009F4E80 != &unk_1009F4E88)
  {
    do
    {
      sub_10030DC48(a1, (v3 + 4), v3 + 7);
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

      v3 = v5;
    }

    while (v5 != &unk_1009F4E88);
  }
}

void sub_10030DA68(id a1)
{
  v1 = +[BGSystemTaskScheduler sharedScheduler];
  v2 = [v1 taskRequestForIdentifier:@"com.apple.nearbyd.ota.task"];

  if (v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ota,task already submitted, return", buf, 2u);
    }
  }

  else
  {
    v4 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.nearbyd.ota.task"];
    [v4 setInterval:86400.0];
    [v4 setMinDurationBetweenInstances:69120.0];
    [v4 setPriority:2];
    [v4 setPreventsDeviceSleep:0];
    [v4 setShouldWakeDevice:0];
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v10 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v10];
    v7 = v10;

    v8 = qword_1009F9820;
    if (v6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ota,submitted ota query task successfully", v9, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD7D8(v7, v8);
    }
  }
}

void sub_10030DC48(dispatch_queue_t *a1, uint64_t a2, void *a3)
{
  dispatch_assert_queue_V2(*a1);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *cf = 136315138;
    *&cf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ota,query file %s", cf, 0xCu);
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v7, +[NSString defaultCStringEncoding]);
  v9 = CLCopyNearbyAssetSettingsOfAccessoryFile();
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      *cf = 0;
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      v13 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
      if (CFDictionaryGetValueIfPresent(v10, v13, cf))
      {
        if (*cf)
        {
          v14 = CFGetTypeID(*cf);
          TypeID = CFDataGetTypeID();
          if (v14 == TypeID)
          {
            sub_10030DE64(TypeID, *cf, a2, a3);
          }
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }

LABEL_23:
      CFRelease(v10);
      goto LABEL_24;
    }
  }

  v16 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ota,empty file content", cf, 2u);
  }

  if (v10)
  {
    goto LABEL_23;
  }

LABEL_24:
}

void sub_10030DE64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v49 = a2;
  v5 = [NSPropertyListSerialization propertyListWithData:"propertyListWithData:options:format:error:" options:? format:? error:?];
  v50 = 0;
  if (v50)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD850(a3);
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a4[1];
    if (*a4 == v7)
    {
      goto LABEL_44;
    }

    v8 = *a4 + 24;
    *&v6 = 136315906;
    v48 = v6;
    while (1)
    {
      v9 = (v8 - 24);
      if (*(v8 - 1) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9, v48];
      v11 = v8;
      if (*(v8 + 23) < 0)
      {
        v11 = *v8;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = [v5 objectForKeyedSubscript:v10];
      v14 = v13 == 0;

      if (v14)
      {
        goto LABEL_40;
      }

      v15 = *(v8 + 24);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v41 = [v5 objectForKey:v10];
          v42 = v12;
          v43 = +[NSUserDefaults standardUserDefaults];
          [v43 setObject:v41 forKey:v42];
          v44 = +[NSUserDefaults standardUserDefaults];
          [v44 synchronize];

          v45 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v46 = a3;
            }

            else
            {
              v46 = *a3;
            }

            *buf = v48;
            v53 = v46;
            v54 = 2112;
            v55 = v10;
            v56 = 2112;
            v57 = v42;
            v58 = 2112;
            v59 = *&v41;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#ota,%s dict override. Config file key: %@. Defaults key: %@. Value: %@", buf, 0x2Au);
          }

          goto LABEL_40;
        }

        if (v15 == 3)
        {
          v27 = [v5 objectForKeyedSubscript:v10];
          v28 = [v27 BOOLValue];

          v29 = v12;
          v30 = +[NSUserDefaults standardUserDefaults];
          [v30 setBool:v28 forKey:v29];
          v31 = +[NSUserDefaults standardUserDefaults];
          [v31 synchronize];

          v32 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v33 = a3;
            }

            else
            {
              v33 = *a3;
            }

            *buf = v48;
            v53 = v33;
            v54 = 2112;
            v55 = v10;
            v56 = 2112;
            v57 = v29;
            v58 = 1024;
            LODWORD(v59) = v28;
            v24 = v32;
            v25 = "#ota,%s BOOL override. Config file key: %@. Defaults key: %@. Value: %d";
LABEL_32:
            v26 = 38;
LABEL_33:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
          }
        }
      }

      else
      {
        if (*(v8 + 24))
        {
          if (v15 != 1)
          {
            goto LABEL_40;
          }

          v16 = [v5 objectForKeyedSubscript:v10];
          [v16 doubleValue];
          v18 = v17;

          v19 = v12;
          v20 = +[NSUserDefaults standardUserDefaults];
          [v20 setDouble:v19 forKey:v18];
          v21 = +[NSUserDefaults standardUserDefaults];
          [v21 synchronize];

          v22 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          if (*(a3 + 23) >= 0)
          {
            v23 = a3;
          }

          else
          {
            v23 = *a3;
          }

          *buf = v48;
          v53 = v23;
          v54 = 2112;
          v55 = v10;
          v56 = 2112;
          v57 = v19;
          v58 = 2048;
          v59 = v18;
          v24 = v22;
          v25 = "#ota,%s double override. Config file key: %@. Defaults key: %@. Value: %f";
          v26 = 42;
          goto LABEL_33;
        }

        v34 = [v5 objectForKeyedSubscript:v10];
        v35 = [v34 integerValue];

        v36 = v12;
        v37 = +[NSUserDefaults standardUserDefaults];
        [v37 setInteger:v35 forKey:v36];
        v38 = +[NSUserDefaults standardUserDefaults];
        [v38 synchronize];

        v39 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) >= 0)
          {
            v40 = a3;
          }

          else
          {
            v40 = *a3;
          }

          *buf = v48;
          v53 = v40;
          v54 = 2112;
          v55 = v10;
          v56 = 2112;
          v57 = v36;
          v58 = 1024;
          LODWORD(v59) = v35;
          v24 = v39;
          v25 = "#ota,%s integer override. Config file key: %@. Defaults key: %@. Value: %d";
          goto LABEL_32;
        }
      }

LABEL_40:

      v47 = v8 + 32;
      v8 += 56;
      if (v47 == v7)
      {
        goto LABEL_44;
      }
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004BD8D8(a3);
  }

LABEL_44:
}

char *sub_10030E528(char *__dst, __int128 *a2, __int128 *a3, char a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  __dst[48] = a4;
  return __dst;
}

void sub_10030E5B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10030E5D0(void *__dst, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10030E670((__dst + 3), *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_10030E654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030E670(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10030E6F8(result, a4);
  }

  return result;
}

void sub_10030E6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10030E938(&a9);
  _Unwind_Resume(a1);
}

void sub_10030E6F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10030E748(a1, a2);
  }

  sub_100019B38();
}

void sub_10030E748(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

char *sub_10030E7A4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_1000056BC(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v13 + 56;
      v13 += 56;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_10030E8AC(v10);
  return v4;
}

uint64_t sub_10030E8AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10030E8E4(a1);
  }

  return a1;
}

void sub_10030E8E4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_10022E56C(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_10030E938(void ***a1)
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
        v4 -= 56;
        sub_10022E56C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10030E9C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10030E6F8(result, a4);
  }

  return result;
}

void sub_10030EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10030E938(&a9);
  _Unwind_Resume(a1);
}

char *sub_10030EA48(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_1000056BC(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v13 + 56;
      v13 += 56;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_10030E8AC(v10);
  return v4;
}

void *sub_10030EB50(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10030EBD4(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10030EBD4(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_10030EC68();
  }

  return v3;
}

uint64_t sub_10030ECE0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10030EDC8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10030ED2C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10030E670((__dst + 3), *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_10030EDAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030EDC8(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_10030E938(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10030EE10(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10030EE10(a1, *a2);
    sub_10030EE10(a1, a2[1]);
    sub_10030EDC8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10030EE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  sub_100004A08(v264, "PPFSC");
  sub_100004A08(v262, "PeopleFinderAlgorithmsParticleFilterSeedWithCL");
  sub_10030E528(__dst, v264, v262, 3);
  sub_100004A08(v260, "PPFDSA");
  sub_100004A08(v258, "PeopleFinderAlgorithmsParticleFilterDisableSeedWithSA");
  sub_10030E528(v267, v260, v258, 3);
  sub_100004A08(v256, "PPFNP");
  sub_100004A08(v254, "PeopleFinderAlgorithmsParticleFilterNumParticles");
  sub_10030E528(v268, v256, v254, 0);
  sub_100004A08(v252, "PPFFR");
  sub_100004A08(v250, "PeopleFinderAlgorithmsParticleFilterPDRFrameRotationNoiseRads");
  sub_10030E528(v269, v252, v250, 1);
  sub_100004A08(v248, "PPFSM");
  sub_100004A08(v246, "PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseMuLognormal");
  sub_10030E528(v270, v248, v246, 1);
  sub_100004A08(v244, "PPFSS");
  sub_100004A08(v242, "PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseSigmaLognormal");
  sub_10030E528(v271, v244, v242, 1);
  sub_100004A08(v240, "PPFMV");
  sub_100004A08(v238, "PeopleFinderAlgorithmsParticleFilterMultipathProcessVarianceScaling");
  sub_10030E528(v272, v240, v238, 1);
  sub_100004A08(v236, "PPFMS");
  sub_100004A08(v234, "PeopleFinderAlgorithmsParticleFilterMultipathMeasurementStd");
  sub_10030E528(v273, v236, v234, 1);
  sub_100004A08(v232, "PPFST");
  sub_100004A08(v230, "PeopleFinderAlgorithmsParticleFilterTrailingMeasurementStdThreshold");
  sub_10030E528(v274, v232, v230, 1);
  sub_100004A08(v228, "PPFNT");
  sub_100004A08(v226, "PeopleFinderAlgorithmsParticleFilterNLOSTimeoutSec");
  sub_10030E528(v275, v228, v226, 1);
  sub_100004A08(v224, "PPFMT");
  sub_100004A08(v222, "PeopleFinderAlgorithmsParticleFilterNoMeasurementTimeoutSec");
  sub_10030E528(v276, v224, v222, 1);
  sub_100004A08(v220, "PPFCNT");
  sub_100004A08(v218, "PeopleFinderAlgorithmsParticleFilterConservativeNLOSTimeoutSec");
  sub_10030E528(v277, v220, v218, 1);
  sub_100004A08(v216, "PDFIO");
  sub_100004A08(v214, "PeopleFinderAlgorithmsDisableFinderIO");
  sub_10030E528(v278, v216, v214, 3);
  sub_100004A08(v212, "PDSA");
  sub_100004A08(v210, "PeopleFinderAlgorithmsDisableSA");
  sub_10030E528(v279, v212, v210, 3);
  sub_100004A08(v208, "PDSV");
  sub_100004A08(v206, "PeopleFinderAlgorithmsDisableSAWithFindeeVIO");
  sub_10030E528(v280, v208, v206, 3);
  sub_100004A08(v204, "PDCL");
  sub_100004A08(v202, "PeopleFinderAlgorithmsDisableCL");
  sub_10030E528(v281, v204, v202, 3);
  sub_100004A08(v200, "PESS");
  sub_100004A08(v198, "PeopleFinderAlgorithmsEnableStraightPathFilter");
  sub_10030E528(v282, v200, v198, 3);
  sub_100004A08(v196, "PDPF");
  sub_100004A08(v194, "PeopleFinderAlgorithmsDisablePF");
  sub_10030E528(v283, v196, v194, 3);
  sub_100004A08(v192, "PDSBSR");
  sub_100004A08(v190, "PeopleFinderAlgorithmsDisableStrictSABoxSpanRequirement");
  sub_10030E528(v284, v192, v190, 3);
  sub_100004A08(v188, "PRRR");
  sub_100004A08(v186, "PeopleFinderAlgorithmsYieldMinUWBRangeRate");
  sub_10030E528(v285, v188, v186, 1);
  sub_100004A08(v184, "PRRW");
  sub_100004A08(v182, "PeopleFinderAlgorithmsYieldRangeRateWindow");
  sub_10030E528(v286, v184, v182, 1);
  sub_100004A08(v180, "PGFRRR");
  sub_100004A08(v178, "PeopleFinderAlgorithmsYieldGroupFindingMinUWBRangeRate");
  sub_10030E528(v287, v180, v178, 1);
  sub_100004A08(v176, "PGFRRW");
  sub_100004A08(v174, "PeopleFinderAlgorithmsYieldGroupFindingRangeRateWindow");
  sub_10030E528(v288, v176, v174, 1);
  sub_100004A08(v172, "PMR");
  sub_100004A08(v170, "PeopleFinderAlgorithmsYieldMaxRange");
  sub_10030E528(v289, v172, v170, 1);
  sub_100004A08(v168, "PMRIFGC");
  sub_100004A08(v166, "PeopleFinderAlgorithmsYieldMaxRangeInFavorableGnssConditions");
  sub_10030E528(v290, v168, v166, 1);
  sub_100004A08(v164, "PLFT");
  sub_100004A08(v162, "PeopleFinderLowPassFilterTimeConstant");
  sub_10030E528(v291, v164, v162, 1);
  sub_100004A08(v160, "PDRYC");
  sub_100004A08(v158, "PeopleFinderAlgorithmsDisableRelaxedYieldCriteria");
  sub_10030E528(v292, v160, v158, 3);
  sub_100004A08(v156, "PMSTARFGC");
  sub_100004A08(v154, "PeopleFinderMinSvTrackedToAvailableRatioForFavorableGnssConditions");
  sub_10030E528(v293, v156, v154, 1);
  sub_100004A08(v152, "PMGSED");
  sub_100004A08(v150, "PeopleFinderMinGnssSatelliteElevationDeg");
  sub_10030E528(v294, v152, v150, 1);
  sub_100004A08(v148, "PFBT");
  sub_100004A08(v146, "PeopleFindingFindButtonTimeoutSecondsOverride");
  sub_10030E528(v295, v148, v146, 1);
  sub_100004A08(v144, "FMSTARFGC");
  sub_100004A08(v142, "FindeeMinSvTrackedToAvailableRatioForFavorableGnssConditions");
  sub_10030E528(v296, v144, v142, 1);
  sub_100004A08(v140, "FMGSED");
  sub_100004A08(v138, "FindeeMinGnssSatelliteElevationDeg");
  sub_10030E528(v297, v140, v138, 1);
  sub_100004A08(v136, "DCMD");
  sub_100004A08(v134, "DeviceFinderAlgorithmsUseCMADistance");
  sub_10030E528(v298, v136, v134, 3);
  sub_100004A08(v132, "DRR");
  sub_100004A08(v130, "DeviceFinderAlgorithmsYieldMinUWBRangeRate");
  sub_10030E528(v299, v132, v130, 1);
  sub_100004A08(v128, "DRRW");
  sub_100004A08(v126, "DeviceFinderAlgorithmsYieldRangeRateWindow");
  sub_10030E528(v300, v128, v126, 1);
  sub_100004A08(v124, "DMR");
  sub_100004A08(v122, "DeviceFinderAlgorithmsYieldMaxRange");
  sub_10030E528(v301, v124, v122, 1);
  sub_100004A08(v120, "DAST");
  sub_100004A08(v118, "DeviceFinderAlgorithmsArcShowThreshold");
  sub_10030E528(v302, v120, v118, 1);
  sub_100004A08(v116, "DART");
  sub_100004A08(v114, "DeviceFinderAlgorithmsArcRevokeThreshold");
  sub_10030E528(v303, v116, v114, 1);
  sub_100004A08(v112, "DTRR");
  sub_100004A08(v110, "DeviceFinderAlgorithmsTimeWithoutRangeRevoke");
  sub_10030E528(v304, v112, v110, 1);
  sub_100004A08(v108, "DTRI");
  sub_100004A08(v106, "DeviceFinderAlgorithmsTimeWithoutRangeReinitialize");
  sub_10030E528(v305, v108, v106, 1);
  sub_100004A08(v104, "CTFSI");
  sub_100004A08(v102, "FindingSchedulingInterval");
  sub_10030E528(v306, v104, v102, 0);
  sub_100004A08(v100, "CTFDC");
  sub_100004A08(v98, "FindingDutyCycle");
  sub_10030E528(v307, v100, v98, 1);
  sub_100004A08(v96, "CTFSSD");
  sub_100004A08(v94, "FindingSecondarySchedulingDelay");
  sub_10030E528(v308, v96, v94, 0);
  sub_100004A08(v92, "CTFSSI");
  sub_100004A08(v90, "FindingSecondarySchedulingInterval");
  sub_10030E528(v309, v92, v90, 0);
  sub_100004A08(v88, "CTFSDC");
  sub_100004A08(v86, "FindingSecondaryDutyCycle");
  sub_10030E528(v310, v88, v86, 1);
  sub_100004A08(v84, "CTPFOOB");
  sub_100004A08(v82, "PeopleFindingOOBRefreshPeriodSecondsOverride");
  sub_10030E528(v311, v84, v82, 1);
  sub_100004A08(v80, "CTPFKABT");
  sub_100004A08(v78, "PeopleFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride");
  sub_10030E528(v312, v80, v78, 1);
  sub_100004A08(v76, "CTPFKAOOB");
  sub_100004A08(v74, "PeopleFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride");
  sub_10030E528(v313, v76, v74, 1);
  sub_100004A08(v72, "CTPFDT");
  sub_100004A08(v70, "PeopleFindingUWBDiscoveryTimeoutSecondsOverride");
  sub_10030E528(v314, v72, v70, 0);
  sub_100004A08(v68, "CTPFRT");
  sub_100004A08(v66, "PeopleFindingUWBReacquisitionTimeoutSecondsOverride");
  sub_10030E528(v315, v68, v66, 0);
  sub_100004A08(v64, "CTDFOOB");
  sub_100004A08(v62, "DeviceFindingOOBRefreshPeriodSecondsOverride");
  sub_10030E528(v316, v64, v62, 1);
  sub_100004A08(v60, "CTDFKABT");
  sub_100004A08(v58, "DeviceFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride");
  sub_10030E528(v317, v60, v58, 1);
  sub_100004A08(v56, "CTDFKAOOB");
  sub_100004A08(v54, "DeviceFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride");
  sub_10030E528(v318, v56, v54, 1);
  sub_100004A08(v52, "CTDFDT");
  sub_100004A08(v50, "DeviceFindingUWBDiscoveryTimeoutSecondsOverride");
  sub_10030E528(v319, v52, v50, 0);
  sub_100004A08(v48, "CTDFRT");
  sub_100004A08(v46, "DeviceFindingUWBReacquisitionTimeoutSecondsOverride");
  sub_10030E528(v320, v48, v46, 0);
  sub_100004A08(v44, "CTFTT");
  sub_100004A08(v42, "FindingUWBTotalTimeoutSecondsOverride");
  sub_10030E528(v321, v44, v42, 0);
  sub_100004A08(v40, "CTFWDT");
  sub_100004A08(v38, "FindingUWBEventWatchdogTimeoutMillisecondsOverride");
  sub_10030E528(v322, v40, v38, 0);
  sub_100004A08(v36, "CTRTTL");
  sub_100004A08(v34, "FindingServiceRangingTriggerTimeLimitOverrideSeconds");
  sub_10030E528(v323, v36, v34, 1);
  sub_100004A08(v32, "CTRFBT");
  sub_100004A08(v30, "RunawayFindingBackstopTimeoutOverrideSeconds");
  sub_10030E528(v324, v32, v30, 1);
  sub_100004A08(v28, "CTNIWDT");
  sub_100004A08(v26, "PeerEventWatchdogTimeoutMillisecondsOverride");
  sub_10030E528(v325, v28, v26, 0);
  sub_100004A08(v24, "CTFSDIS");
  sub_100004A08(v22, "FindingDisableService");
  sub_10030E528(v326, v24, v22, 3);
  sub_100004A08(v20, "CTFPWEN");
  sub_100004A08(v18, "FindableDeviceEnableWatch");
  sub_10030E528(v327, v20, v18, 3);
  sub_100004A08(v16, "CTBSDM");
  sub_100004A08(v14, "r121951698_DisableMitigation");
  sub_10030E528(v328, v16, v14, 3);
  sub_100004A08(v12, "CTDSRC");
  sub_100004A08(v10, "DisableDualRxChain");
  sub_10030E528(v329, v12, v10, 3);
  sub_100004A08(v8, "DUORWS7");
  sub_100004A08(__p, "DisableUseOfRangesWithStatus7");
  sub_10030E528(v330, v8, __p, 3);
  qword_1009F4E08 = 0;
  unk_1009F4E10 = 0;
  qword_1009F4E18 = 0;
  sub_10030E9C0(&qword_1009F4E08, __dst, &v331, 0x41uLL);
  v3 = 455;
  do
  {
    v4 = &__dst[v3 * 8];
    if (SHIBYTE(v264[v3 + 1]) < 0)
    {
      operator delete(*(v4 - 4));
    }

    if (*(v4 - 33) < 0)
    {
      operator delete(*(v4 - 7));
    }

    v3 -= 7;
  }

  while (v3 * 8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  if (v91 < 0)
  {
    operator delete(v90[0]);
  }

  if (v93 < 0)
  {
    operator delete(v92[0]);
  }

  if (v95 < 0)
  {
    operator delete(v94[0]);
  }

  if (v97 < 0)
  {
    operator delete(v96[0]);
  }

  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  if (v101 < 0)
  {
    operator delete(v100[0]);
  }

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  if (v105 < 0)
  {
    operator delete(v104[0]);
  }

  if (v107 < 0)
  {
    operator delete(v106[0]);
  }

  if (v109 < 0)
  {
    operator delete(v108[0]);
  }

  if (v111 < 0)
  {
    operator delete(v110[0]);
  }

  if (v113 < 0)
  {
    operator delete(v112[0]);
  }

  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  if (v117 < 0)
  {
    operator delete(v116[0]);
  }

  if (v119 < 0)
  {
    operator delete(v118[0]);
  }

  if (v121 < 0)
  {
    operator delete(v120[0]);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  if (v125 < 0)
  {
    operator delete(v124[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  if (v129 < 0)
  {
    operator delete(v128[0]);
  }

  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  if (v137 < 0)
  {
    operator delete(v136[0]);
  }

  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  if (v141 < 0)
  {
    operator delete(v140[0]);
  }

  if (v143 < 0)
  {
    operator delete(v142[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  if (v153 < 0)
  {
    operator delete(v152[0]);
  }

  if (v155 < 0)
  {
    operator delete(v154[0]);
  }

  if (v157 < 0)
  {
    operator delete(v156[0]);
  }

  if (v159 < 0)
  {
    operator delete(v158[0]);
  }

  if (v161 < 0)
  {
    operator delete(v160[0]);
  }

  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  if (v165 < 0)
  {
    operator delete(v164[0]);
  }

  if (v167 < 0)
  {
    operator delete(v166[0]);
  }

  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if (v171 < 0)
  {
    operator delete(v170[0]);
  }

  if (v173 < 0)
  {
    operator delete(v172[0]);
  }

  if (v175 < 0)
  {
    operator delete(v174[0]);
  }

  if (v177 < 0)
  {
    operator delete(v176[0]);
  }

  if (v179 < 0)
  {
    operator delete(v178[0]);
  }

  if (v181 < 0)
  {
    operator delete(v180[0]);
  }

  if (v183 < 0)
  {
    operator delete(v182[0]);
  }

  if (v185 < 0)
  {
    operator delete(v184[0]);
  }

  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  if (v189 < 0)
  {
    operator delete(v188[0]);
  }

  if (v191 < 0)
  {
    operator delete(v190[0]);
  }

  if (v193 < 0)
  {
    operator delete(v192[0]);
  }

  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v197 < 0)
  {
    operator delete(v196[0]);
  }

  if (v199 < 0)
  {
    operator delete(v198[0]);
  }

  if (v201 < 0)
  {
    operator delete(v200[0]);
  }

  if (v203 < 0)
  {
    operator delete(v202[0]);
  }

  if (v205 < 0)
  {
    operator delete(v204[0]);
  }

  if (v207 < 0)
  {
    operator delete(v206[0]);
  }

  if (v209 < 0)
  {
    operator delete(v208[0]);
  }

  if (v211 < 0)
  {
    operator delete(v210[0]);
  }

  if (v213 < 0)
  {
    operator delete(v212[0]);
  }

  if (v215 < 0)
  {
    operator delete(v214[0]);
  }

  if (v217 < 0)
  {
    operator delete(v216[0]);
  }

  if (v219 < 0)
  {
    operator delete(v218[0]);
  }

  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  if (v223 < 0)
  {
    operator delete(v222[0]);
  }

  if (v225 < 0)
  {
    operator delete(v224[0]);
  }

  if (v227 < 0)
  {
    operator delete(v226[0]);
  }

  if (v229 < 0)
  {
    operator delete(v228[0]);
  }

  if (v231 < 0)
  {
    operator delete(v230[0]);
  }

  if (v233 < 0)
  {
    operator delete(v232[0]);
  }

  if (v235 < 0)
  {
    operator delete(v234[0]);
  }

  if (v237 < 0)
  {
    operator delete(v236[0]);
  }

  if (v239 < 0)
  {
    operator delete(v238[0]);
  }

  if (v241 < 0)
  {
    operator delete(v240[0]);
  }

  if (v243 < 0)
  {
    operator delete(v242[0]);
  }

  if (v245 < 0)
  {
    operator delete(v244[0]);
  }

  if (v247 < 0)
  {
    operator delete(v246[0]);
  }

  if (v249 < 0)
  {
    operator delete(v248[0]);
  }

  if (v251 < 0)
  {
    operator delete(v250[0]);
  }

  if (v253 < 0)
  {
    operator delete(v252[0]);
  }

  if (v255 < 0)
  {
    operator delete(v254[0]);
  }

  if (v257 < 0)
  {
    operator delete(v256[0]);
  }

  if (v259 < 0)
  {
    operator delete(v258[0]);
  }

  if (v261 < 0)
  {
    operator delete(v260[0]);
  }

  if (v263 < 0)
  {
    operator delete(v262[0]);
  }

  if (v265 < 0)
  {
    operator delete(v264[0]);
  }

  return __cxa_atexit(sub_10030D340, &qword_1009F4E08, &_mh_execute_header);
}

void sub_1003106B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  v95 = -3640;
  v96 = v93;
  do
  {
    v96 = sub_10022A868(v96) - 56;
    v95 += 56;
  }

  while (v95);
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

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a93);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9EF]) < 0)
  {
    operator delete(STACK[0x9D8]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(STACK[0xA20]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(STACK[0xAF8]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  if (SLOBYTE(STACK[0xB87]) < 0)
  {
    operator delete(STACK[0xB70]);
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(STACK[0xB88]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  if (SLOBYTE(STACK[0xBCF]) < 0)
  {
    operator delete(STACK[0xBB8]);
  }

  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  if (SLOBYTE(STACK[0xC2F]) < 0)
  {
    operator delete(STACK[0xC18]);
  }

  _Unwind_Resume(a1);
}

void sub_100311650()
{
  v0 = objc_autoreleasePoolPush();
  sub_100004A08(&xmmword_1009F4D60, "ALP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4D60, &_mh_execute_header);
  sub_100004A08(v137, "RDL");
  sub_100004A08(v135, "AlishaRangingDurationLimitOverrideSeconds");
  sub_10030E528(__dst, v137, v135, 0);
  sub_100004A08(v133, "TA");
  sub_100004A08(v131, "AlishaTimeoutAOverrideSeconds");
  sub_10030E528(v141, v133, v131, 0);
  sub_100004A08(v129, "TB");
  sub_100004A08(v127, "AlishaTimeoutBOverrideSeconds");
  sub_10030E528(v143, v129, v127, 0);
  sub_100004A08(v125, "TRFP");
  sub_100004A08(v123, "AlishaTimeoutRefirePeriodOverrideSeconds");
  sub_10030E528(v145, v125, v123, 0);
  sub_100004A08(v121, "MTRF");
  sub_100004A08(v119, "AlishaMaxTimeoutRefiresOverride");
  sub_10030E528(v147, v121, v119, 0);
  sub_100004A08(v117, "MRM");
  sub_100004A08(v115, "AlishaMinRanMultiplierOverride");
  sub_10030E528(v149, v117, v115, 0);
  sub_100004A08(v113, "STO");
  sub_100004A08(v111, "AlishaStartTimeOffsetSeconds");
  sub_10030E528(v150, v113, v111, 1);
  sub_100004A08(v109, "TA2");
  sub_100004A08(v107, "AcwgTimeoutAOverrideSeconds");
  sub_10030E528(v151, v109, v107, 0);
  sub_100004A08(v105, "TB2");
  sub_100004A08(v103, "AcwgTimeoutBOverrideSeconds");
  sub_10030E528(v152, v105, v103, 0);
  sub_100004A08(v101, "TAE2");
  sub_100004A08(v99, "AcwgTimeoutAExceptionOverrideSeconds");
  sub_10030E528(v153, v101, v99, 0);
  sub_100004A08(v97, "TBE2");
  sub_100004A08(v95, "AcwgTimeoutBExceptionOverrideSeconds");
  sub_10030E528(v154, v97, v95, 0);
  sub_100004A08(v93, "TRFP2");
  sub_100004A08(v91, "AcwgTimeoutRefirePeriodOverrideSeconds");
  sub_10030E528(v155, v93, v91, 0);
  sub_100004A08(v89, "MTRF2");
  sub_100004A08(v87, "AcwgMaxTimeoutRefiresOverride");
  sub_10030E528(v156, v89, v87, 0);
  sub_100004A08(v85, "MRM2");
  sub_100004A08(v83, "AcwgMinRanMultiplierOverride");
  sub_10030E528(v157, v85, v83, 0);
  sub_100004A08(v81, "STO2");
  sub_100004A08(v79, "AcwgStartTimeOffsetSeconds");
  sub_10030E528(v158, v81, v79, 1);
  sub_100004A08(v77, "CRBE");
  sub_100004A08(v75, "DigitalKeyCombinedRangingBudgetEnabled");
  sub_10030E528(v159, v77, v75, 3);
  sub_100004A08(v73, "DRB");
  sub_100004A08(v71, "DigitalKeyRangingBudgetSeconds");
  sub_10030E528(v160, v73, v71, 1);
  sub_100004A08(v69, "ARB");
  sub_100004A08(v67, "AlishaRangingBudgetSeconds");
  sub_10030E528(v161, v69, v67, 1);
  sub_100004A08(v65, "LRB");
  sub_100004A08(v63, "LyonRangingBudgetSeconds");
  sub_10030E528(v162, v65, v63, 1);
  sub_100004A08(v61, "RDRP");
  sub_100004A08(v59, "DigitalKeyRangingDurationResetPeriodSeconds");
  sub_10030E528(v163, v61, v59, 1);
  sub_100004A08(v57, "RDRPT");
  sub_100004A08(v55, "DigitalKeyRangingDurationResetPeriodToleranceSeconds");
  sub_10030E528(v164, v57, v55, 1);
  sub_100004A08(v53, "SDBT");
  sub_100004A08(v51, "AopSFDisableDynamicBubbles");
  sub_10030E528(v165, v53, v51, 3);
  sub_100004A08(v49, "SDEBH");
  sub_100004A08(v47, "AopSFUseHEPHandling");
  sub_10030E528(v166, v49, v47, 3);
  sub_100004A08(v45, "SCT");
  sub_100004A08(v43, "AopSFBubbleDeltadB");
  sub_10030E528(v167, v45, v43, 0);
  sub_100004A08(v41, "SMCT");
  sub_100004A08(v39, "AopSFBubbleMaxThresholddBm");
  sub_10030E528(v168, v41, v39, 0);
  sub_100004A08(v37, "SIC");
  sub_100004A08(v35, "AopSFUseStaticIOClassifier");
  sub_10030E528(v169, v37, v35, 0);
  sub_100004A08(v33, "SICE");
  sub_100004A08(v31, "AopSFStaticIOClassifierEpsilonInMM");
  sub_10030E528(v170, v33, v31, 0);
  sub_100004A08(v29, "SRI");
  sub_100004A08(v27, "AopSFIOReportIntervalIn10msUnits");
  sub_10030E528(v171, v29, v27, 0);
  sub_100004A08(v25, "SST");
  sub_100004A08(v23, "AopSFStationaryTimeoutIn100msUnits");
  sub_10030E528(v172, v25, v23, 0);
  sub_100004A08(v21, "SPD");
  sub_100004A08(v19, "AopSFTxPowerdBm");
  sub_10030E528(v173, v21, v19, 0);
  sub_100004A08(v17, "URSKC");
  sub_100004A08(__p, "AlishaTriggerCrashOnURSKRetrievalFailure");
  sub_10030E528(v174, v17, __p, 3);
  qword_1009F4D78 = 0;
  unk_1009F4D80 = 0;
  qword_1009F4D88 = 0;
  sub_10030E9C0(&qword_1009F4D78, __dst, &v175, 0x1FuLL);
  v1 = 217;
  do
  {
    v2 = &__dst[v1];
    if (SHIBYTE(v137[v1 + 1]) < 0)
    {
      operator delete(*(v2 - 4));
    }

    if (*(v2 - 33) < 0)
    {
      operator delete(*(v2 - 7));
    }

    v1 -= 7;
  }

  while (v1 * 8);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  if (v86 < 0)
  {
    operator delete(v85[0]);
  }

  if (v88 < 0)
  {
    operator delete(v87[0]);
  }

  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  if (v104 < 0)
  {
    operator delete(v103[0]);
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  if (v112 < 0)
  {
    operator delete(v111[0]);
  }

  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4D78, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4D90, "GLP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4D90, &_mh_execute_header);
  sub_100004A08(v137, "DSBR");
  sub_100004A08(v135, "DisableSleepBetweenRangingCycles");
  sub_10030E528(__dst, v137, v135, 0);
  sub_100004A08(v133, "DSLP");
  sub_100004A08(v131, "AllowRoseDeepSleep");
  sub_10030E528(v141, v133, v131, 3);
  qword_1009F4DA8 = 0;
  unk_1009F4DB0 = 0;
  qword_1009F4DB8 = 0;
  sub_10030E9C0(&qword_1009F4DA8, __dst, v143, 2uLL);
  for (i = 0; i != -14; i -= 7)
  {
    v4 = &__dst[i];
    if (SHIBYTE(v142[i]) < 0)
    {
      operator delete(v4[10]);
    }

    if (*(v4 + 79) < 0)
    {
      operator delete(v4[7]);
    }
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4DA8, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4DC0, "BTP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4DC0, &_mh_execute_header);
  sub_100004A08(v137, "SMAM");
  sub_100004A08(v135, "BtThresholdScannerModelAdvertiserModel");
  sub_10030E528(__dst, v137, v135, 2);
  sub_100004A08(v133, "SCAM");
  sub_100004A08(v131, "BtThresholdScannerClassAdvertiserModel");
  sub_10030E528(v141, v133, v131, 2);
  sub_100004A08(v129, "AM");
  sub_100004A08(v127, "BtThresholdAdvertiserModel");
  sub_10030E528(v143, v129, v127, 2);
  sub_100004A08(v125, "SMAC");
  sub_100004A08(v123, "BtThresholdScannerModelAdvertiserClass");
  sub_10030E528(v145, v125, v123, 2);
  sub_100004A08(v121, "SM");
  sub_100004A08(v119, "BtThresholdScannerModel");
  sub_10030E528(v147, v121, v119, 2);
  qword_1009F4DD8 = 0;
  unk_1009F4DE0 = 0;
  qword_1009F4DE8 = 0;
  sub_10030E9C0(&qword_1009F4DD8, __dst, v149, 5uLL);
  v5 = 35;
  do
  {
    v6 = &__dst[v5];
    if (SHIBYTE(v137[v5 + 1]) < 0)
    {
      operator delete(*(v6 - 4));
    }

    if (*(v6 - 33) < 0)
    {
      operator delete(*(v6 - 7));
    }

    v5 -= 7;
  }

  while (v5 * 8);
  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4DD8, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4DF0, "FP.plist");
  v7 = __cxa_atexit(&std::string::~string, &xmmword_1009F4DF0, &_mh_execute_header);
  sub_10030EE6C(v7, v8, v9);
  sub_100004A08(&xmmword_1009F4E20, "NIACP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4E20, &_mh_execute_header);
  sub_100004A08(&xmmword_1009F4E38, "NIPRP.plist");
  __cxa_atexit(&std::string::~string, &xmmword_1009F4E38, &_mh_execute_header);
  sub_100004A08(v137, "TOBFTR");
  sub_100004A08(v135, "NIBackgroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking");
  sub_10030E528(__dst, v137, v135, 0);
  sub_100004A08(v133, "TOAFTR");
  sub_100004A08(v131, "NIBackgroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking");
  sub_10030E528(v141, v133, v131, 0);
  sub_100004A08(v129, "TOTJ");
  sub_100004A08(v127, "NIBackgroundAccessoryTimeoutSecondsOverride_TotalJobTime");
  sub_10030E528(v143, v129, v127, 0);
  sub_100004A08(v125, "FGTOBFTR");
  sub_100004A08(v123, "NIForegroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking");
  sub_10030E528(v145, v125, v123, 0);
  sub_100004A08(v121, "FGTOAFTR");
  sub_100004A08(v119, "NIForegroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking");
  sub_10030E528(v147, v121, v119, 0);
  sub_100004A08(v117, "FGTOTJ");
  sub_100004A08(v115, "NIForegroundAccessoryTimeoutSecondsOverride_TotalJobTime");
  sub_10030E528(v149, v117, v115, 0);
  qword_1009F4E50 = 0;
  *algn_1009F4E58 = 0;
  qword_1009F4E60 = 0;
  sub_10030E9C0(&qword_1009F4E50, __dst, v150, 6uLL);
  v10 = 42;
  do
  {
    v11 = &__dst[v10];
    if (SHIBYTE(v137[v10 + 1]) < 0)
    {
      operator delete(*(v11 - 4));
    }

    if (*(v11 - 33) < 0)
    {
      operator delete(*(v11 - 7));
    }

    v10 -= 7;
  }

  while (v10 * 8);
  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4E50, &_mh_execute_header);
  sub_100004A08(v137, "GRTOBFTR");
  sub_100004A08(v135, "NIPeerGR_MaxInactivityBeforeTrackingBeganSeconds");
  sub_10030E528(__dst, v137, v135, 1);
  sub_100004A08(v133, "GRTOAFTR");
  sub_100004A08(v131, "NIPeerGR_MaxInactivityAfterTrackingBeganSeconds");
  sub_10030E528(v141, v133, v131, 1);
  sub_100004A08(v129, "EDMTOBFTR");
  sub_100004A08(v127, "NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds");
  sub_10030E528(v143, v129, v127, 1);
  sub_100004A08(v125, "EDMTOAFTR");
  sub_100004A08(v123, "NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds");
  sub_10030E528(v145, v125, v123, 1);
  qword_1009F4E68 = 0;
  unk_1009F4E70 = 0;
  qword_1009F4E78 = 0;
  sub_10030E9C0(&qword_1009F4E68, __dst, v147, 4uLL);
  for (j = 0; j != -28; j -= 7)
  {
    v13 = &__dst[j];
    if (SHIBYTE(v146[j + 2]) < 0)
    {
      operator delete(v13[24]);
    }

    if (*(v13 + 191) < 0)
    {
      operator delete(v13[21]);
    }
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  __cxa_atexit(sub_10030D340, &qword_1009F4E68, &_mh_execute_header);
  sub_10030E5D0(__dst, &xmmword_1009F4D60, &qword_1009F4D78);
  sub_10030E5D0(&v140, &xmmword_1009F4D90, &qword_1009F4DA8);
  sub_10030E5D0(v142, &xmmword_1009F4DC0, &qword_1009F4DD8);
  sub_10030E5D0(v144, &xmmword_1009F4DF0, &qword_1009F4E08);
  sub_10030E5D0(v146, &xmmword_1009F4E20, &qword_1009F4E50);
  sub_10030E5D0(v148, &xmmword_1009F4E38, &qword_1009F4E68);
  sub_10030EB50(&qword_1009F4E80, __dst, 6);
  v14 = 36;
  do
  {
    v137[0] = &v137[v14];
    sub_10030E938(v137);
    if (*(&v136 + v14 * 8) < 0)
    {
      operator delete(v135[v14]);
    }

    v14 -= 6;
  }

  while (v14 * 8);
  __cxa_atexit(sub_10030D3C4, &qword_1009F4E80, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100312CAC(_Unwind_Exception *a1)
{
  v3 = v1 + 240;
  v4 = -288;
  do
  {
    v3 = sub_10030D378(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void sub_1003139C8()
{
  do
  {
    v0 -= 6;
    sub_10030D378(v0);
  }

  while (v0 != &STACK[0x5D0]);
  JUMPOUT(0x1003136E8);
}

uint64_t sub_1003144A4(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A4878;
  objc_initWeak((a1 + 24), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1003144F4(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A4878;
  v3 = a2;
  *(a1 + 24) = 0;
  objc_initWeak((a1 + 32), v3);

  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_100314560(uint64_t a1)
{
  *a1 = off_1009A4878;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~PRRangingManagerClient()", v5, 2u);
  }

  objc_destroyWeak((a1 + 32));
  objc_destroyWeak((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10031460C(uint64_t a1)
{
  sub_100314560(a1);

  operator delete();
}

void sub_100314644(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained serviceRequestDidUpdateStatus:{*a2, *(a2 + 8)}];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 24));
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0 || (*(a2 + 4) - 1) > 3)
    {
      return;
    }

    v6 = objc_loadWeakRetained((a1 + 24));
    v7 = *(a2 + 4) - 1;
    if (v7 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_10056B710[v7];
    }

    WeakRetained = v6;
    [v6 rangingRequestDidUpdateStatus:v8];
  }
}

void sub_100314754(uint64_t a1, double *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveNewSolution:a2];
    goto LABEL_4;
  }

  if (*(a2 + 8) == 5)
  {
    return;
  }

  v55 = objc_loadWeakRetained((a1 + 24));
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v6 = objc_alloc_init(NSMutableArray);
  if (a2[116])
  {
    v7 = *(a2 + 888);
    v8 = *(a2 + 904);
    if (v8)
    {
      v9 = a2[112];
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(a2 + 920);
    v11 = *(a2 + 114);
    if (v10)
    {
      v12 = a2[114];
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v7 = 0;
    v12 = 0.0;
    v9 = 0.0;
  }

  v13 = *(a2 + 8);
  if (v13 == 4)
  {
    if (*(a2 + 600) != 1)
    {
      v49 = "solution.raw_rose_measurement.has_value()";
      v50 = 251;
      goto LABEL_67;
    }

    if ((a2[94] & 1) == 0)
    {
      __assert_rtn("toXPCCompatibleType", "PRRangingManagerClient.mm", 253, "solution.sensor_fusion_solution.has_value()");
    }

    if (a2[74])
    {
      v14 = a2[73];
    }

    else
    {
      v14 = 0.0;
    }

    if (a2[72])
    {
      v15 = a2[71];
    }

    else
    {
      v15 = 10.0;
    }

    v16 = *(a2 + 80);
    v17 = *(a2 + 9);
    if (v16)
    {
      v18 = a2[9];
    }

    else
    {
      v18 = 0.0;
    }

    v19 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
    v20 = *(a2 + 24);
    v21 = a2[2];
    v22 = [PRRoseSolution alloc];
    if (v20)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0.0;
    }

    LOBYTE(v53) = v16;
    LOBYTE(v52) = v10;
    BYTE1(v51) = v8;
    LOBYTE(v51) = v7 & 1;
    v24 = [v22 initWithVariant:0 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:1 machContTime_sec:1 range_m:1 rangeUnc_m:*a2 azValid:v23 elValid:a2[44] az_deg:v15 el_deg:a2[83] azUnc_deg:a2[82] elUnc_deg:a2[86] fovConfidence:a2[85] soiRssiValid:*&v14 soiRssi_dBm:*(a2 + 27) antennaType:v19 prevSolutionIsBad:v51 trackScoreValid:*&v9 trackScore:v52 sweepAngleValid:*&v12 sweepAngle_deg:v53 multipathProbabilityValid:*&v18 multipathProbability:?];
    [v6 addObject:v24];

    v13 = *(a2 + 8);
  }

  if ((v13 | 2) == 3)
  {
    if (*(a2 + 600) != 1)
    {
      v49 = "solution.raw_rose_measurement.has_value()";
      v50 = 309;
      goto LABEL_67;
    }

    if (a2[72])
    {
      v25 = a2[71];
    }

    else
    {
      v25 = 10.0;
    }

    if (a2[74])
    {
      v26 = a2[73];
    }

    else
    {
      v26 = 0.0;
    }

    v27 = *(a2 + 80);
    v28 = *(a2 + 9);
    if (v27)
    {
      v29 = a2[9];
    }

    else
    {
      v29 = 0.0;
    }

    v30 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
    v31 = *(a2 + 24);
    v32 = a2[2];
    v33 = [PRRoseSolution alloc];
    if (v31)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0.0;
    }

    LOBYTE(v53) = v27;
    LOBYTE(v52) = v10;
    BYTE1(v51) = v8;
    LOBYTE(v51) = v7 & 1;
    v35 = [v33 initWithVariant:0 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:0 machContTime_sec:0 range_m:1 rangeUnc_m:*a2 azValid:v34 elValid:a2[44] az_deg:v25 el_deg:0.0 azUnc_deg:0.0 elUnc_deg:0.0 fovConfidence:0.0 soiRssiValid:*&v26 soiRssi_dBm:*(a2 + 27) antennaType:v30 prevSolutionIsBad:v51 trackScoreValid:*&v9 trackScore:v52 sweepAngleValid:*&v12 sweepAngle_deg:v53 multipathProbabilityValid:*&v29 multipathProbability:?];
    [v6 addObject:v35];

    v13 = *(a2 + 8);
  }

  v36 = WeakRetained;
  if ((v13 & 0xFFFFFFFE) == 2)
  {
    if (a2[94])
    {
      v37 = *(a2 + 600);
      if (v37 == 1)
      {
        v38 = *(a2 + 27);
        v39 = a2[73];
        v40 = *(a2 + 74);
        v41 = sub_1003152B8(*(a2 + 360), *(a2 + 416));
        if ((v40 & 1) == 0)
        {
          v39 = 0.0;
        }

        v42 = *(a2 + 80);
        if (v42)
        {
          v43 = a2[9];
        }

        else
        {
          v43 = 0.0;
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
        v38 = 0;
        v39 = 0.0;
        v43 = 0.0;
      }

      v44 = *(a2 + 24);
      v45 = a2[2];
      v46 = [PRRoseSolution alloc];
      if (v44)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0.0;
      }

      LOBYTE(v53) = v42;
      LOBYTE(v52) = v10;
      BYTE1(v51) = v8;
      LOBYTE(v51) = v7 & 1;
      v48 = [v46 initWithVariant:1 macAddr:*(a2 + 5) machAbsTime_sec:*(a2 + 24) machContTimeValid:1 machContTime_sec:1 range_m:v37 rangeUnc_m:*a2 azValid:v47 elValid:a2[81] az_deg:a2[84] el_deg:a2[83] azUnc_deg:a2[82] elUnc_deg:a2[86] fovConfidence:a2[85] soiRssiValid:*&v39 soiRssi_dBm:v38 antennaType:v41 prevSolutionIsBad:v51 trackScoreValid:*&v9 trackScore:v52 sweepAngleValid:*&v12 sweepAngle_deg:v53 multipathProbabilityValid:*&v43 multipathProbability:?];
      [v6 addObject:v48];

      v36 = WeakRetained;
      goto LABEL_62;
    }

    v49 = "solution.sensor_fusion_solution.has_value()";
    v50 = 371;
LABEL_67:
    __assert_rtn("toXPCCompatibleType", "PRRangingManagerClient.mm", v50, v49);
  }

LABEL_62:
  [v36 didReceiveNewSolutions:v6];

LABEL_4:
}

void sub_100314C90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveSessionStartNotification:a2];
    v6 = WeakRetained;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v7 = objc_loadWeakRetained((a1 + 24));
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1000195BC();
    }

    v9 = [NSNumber numberWithUnsignedLongLong:*(a2 + 8)];
    v11 = [PRSessionStartNotification createWithBluetoothConnectionEventCounterValue:v9];

    v10 = objc_loadWeakRetained((a1 + 24));
    [v10 didReceiveSessionStartNotification:v11];

    v6 = v11;
  }
}

void sub_100314DC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didReceiveRemoteData:a2];
  }
}

void sub_100314E54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      [v6 didReceiveAopSensorFusionUpdate:**(a2 + 8) withBtConnHandle:*(*(a2 + 8) + 4)];
    }
  }
}

void sub_100314F18(uint64_t a1, unsigned int **a2)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = **a2;
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 didReceiveAopSFZoneUpdate:v5];
    }
  }
}

void sub_100314FE0(uint64_t a1, uint64_t *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BD950(a2, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didFailWithErrorCode:*a2 errorString:a2 + 1];
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 24));
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v9 = *a2;
    v12 = a2[1];
    v11 = a2 + 1;
    v10 = v12;
    if (*(v11 + 23) >= 0)
    {
      v10 = v11;
    }

    v13 = [NSString stringWithFormat:@"%s", v10];
    v16 = NSLocalizedDescriptionKey;
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = PRErrorWithCodeAndUserInfo(v9, v14);

    [WeakRetained didFailWithError:v15];
  }
}

void sub_1003151A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained rangingServiceDidUpdateState:a2 cause:a3];
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 24));
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = objc_loadWeakRetained((a1 + 24));
    if (a2 > 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = qword_10056B730[a2];
    }

    if (a3 > 7)
    {
      v10 = 5;
    }

    else
    {
      v10 = qword_10056B750[a3];
    }

    WeakRetained = v8;
    [v8 rangingServiceDidUpdateState:v9 cause:v10];
  }
}

uint64_t sub_1003152B8(int a1, int a2)
{
  if ((atomic_load_explicit(&qword_1009F4F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F4F78))
  {
    dword_1009F4F70 = *(sub_1000054A8() + 144);
    __cxa_guard_release(&qword_1009F4F78);
  }

  if (a2 == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a2 == 9);
  }

  sub_1001A6460(v7, dword_1009F4F70, v4, 0, 1);
  v5 = sub_1001A6E84(v7, a1) - 1;
  if (v5 >= 4)
  {
    return 2;
  }

  else
  {
    return qword_10056B790[v5];
  }
}

void sub_100315398()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100315448()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1003154F8()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1003155A8()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100315658()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100315708()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1003157B8()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100315868()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100315918()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056B688;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100315A0C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F4EA8 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F4E98 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4E98, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F4EC0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F4EB0 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EB0, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F4ED8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F4EC8 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EC8, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F4EF0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F4EE0 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EE0, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F4F08 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F4EF8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4EF8, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F4F20 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F4F10 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F10, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F4F38 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F4F28 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F28, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F4F50 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F4F40 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F40, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F4F68 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F4F58 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F4F58, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10031604C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003161A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PRSystemSettingsMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100316554(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

const __CFString *sub_100316574(uint64_t a1)
{
  v1 = @"PRAirplaneModeOff";
  if (a1 == 1)
  {
    v1 = @"PRAirplaneModeOn";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PRAirplaneModeStatusUnknown";
  }
}

void sub_100316724()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F4F80 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100316778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  v6 = (a1 + 8);
  v7 = (a1 + 424);
  *(a1 + 472) = 0;
  *(a1 + 8) = v9;
  *(v6 + *(v9 - 24)) = v8;
  v10 = (a1 + 8 + *(*(a1 + 8) - 24));
  std::ios_base::init(v10, (a1 + 16));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = gzopen(v11, "rb");
  *a1 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDB10((a2 + 23), a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v16);
  }

  std::ofstream::open();
  if (!*(a1 + 136))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDAA8(a3);
    }

    gzclose(*a1);
    *a1 = 0;
    v15 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v15, &v16);
  }

  return a1;
}

void sub_100316A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ios::~ios();
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_100316AA4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    gzclose(v2);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

BOOL sub_100316B8C(uint64_t *a1, uint64_t *a2)
{
  sub_100316778(file, a1, a2);
  if (file[0] && file[17])
  {
    sub_10003FB04(buf, 0x4000);
    while (2)
    {
      v4 = gzeof(file[0]);
      v5 = v4 != 0;
      if (v4)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004BDD7C(a1);
        }
      }

      else
      {
        v6 = gzread(file[0], buf[0], 0x4000u);
        if (v6)
        {
          v7 = 0;
          v8 = v6;
          v9 = v6;
          do
          {
            std::ostream::write();
            if ((*(&file[5] + *&file[1][-1].have) & 5) != 0)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004BDC44(a2);
              }

              goto LABEL_15;
            }

            ++v7;
          }

          while (v9 != v7);
          if (v9 == v8)
          {
            continue;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BDCAC(a2);
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004BDD14(a1);
        }
      }

      break;
    }

LABEL_15:
    if (buf[0])
    {
      buf[1] = buf[0];
      operator delete(buf[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100316AA4(file);
  return v5;
}

void sub_100316D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_100316AA4(&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDB98(v14, v15);
    }

    __cxa_end_catch();
    JUMPOUT(0x100316CF8);
  }

  _Unwind_Resume(a1);
}

void sub_100317C54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 == &_xpc_error_connection_invalid && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BDE44();
  }

  [*(a1 + 32) _processXPCEvent:v3];
}

void sub_100317CDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbInterruptionHandler];
}

void sub_100317D38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbErrorHandler:v3];
}

void sub_100317DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbBluetoothStateChangedHandler];
}

void sub_100317E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004BDE78();
      }

      v9 = WeakRetained[115];
      WeakRetained[115] = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,CBController: Activation complete [%0.6f s]", &v10, 0xCu);
      }

      [WeakRetained _cbBluetoothStateChangedHandler];
    }
  }
}

void sub_100318B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100318E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10031A7E4(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateNearbyObjects:*(a1 + 40)];
}

void sub_10031A9AC(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateAlgorithmState:*(a1 + 40) forObject:*(a1 + 48)];
}

const char *sub_10031AC04(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1009A50F8[a1];
  }
}

void sub_10031AF28(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerItemLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptedWithReason:8 timestamp:sub_100005288()];
}

const char *sub_10031B88C(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "Invalid";
  }

  else
  {
    return off_1009A5150[a1 - 1];
  }
}

void sub_10031C030(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10031C8B8(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10031DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10031E968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031E988(uint64_t a1, void *a2, void *a3)
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
    sub_1004BE888();
    if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = sub_1002FE75C((WeakRetained + 109), v8);
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

        [WeakRetained[7] acceptDeviceMotionInput:v50];
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BE8F8();
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
    sub_1004BE92C();
  }

LABEL_12:
}

void sub_10031EF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031EF30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BE99C();
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

      [WeakRetained[7] acceptAltimeterData:v15];
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BEA0C();
    }
  }

LABEL_9:
}

void sub_10031F054(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10031F2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031F2E4(uint64_t a1, void *a2, void *a3)
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
    sub_1004BEA74();
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
      sub_1004BEAE4();
    }

    [WeakRetained[7] acceptDevicePDRInput:&v62];
    goto LABEL_52;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BEB54();
  }

LABEL_52:
}

void sub_10031FA54(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didDiscoverNearbyObject:*(a1 + 40)];
}

void sub_10031FE20(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NIServerItemLocalizerSession;
  v2 = objc_msgSendSuper2(&v5, "resourcesManager");
  v3 = [v2 remote];
  v6 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 didRemoveNearbyObjects:v4 withReason:0];
}

void sub_10031FEF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100320450(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000AD84(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10032111C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003216FC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100322D7C(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerItemLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptionReasonEnded:8 timestamp:sub_100005288()];
}

void sub_100324F90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A4A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100325038(uint64_t a1)
{

  operator delete();
}

id sub_1003250EC(uint64_t a1, void *a2)
{
  *a2 = off_1009A4AC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10032513C(id *a1)
{

  operator delete(a1);
}

void sub_100325178(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling requestStateCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didServiceRequestUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325240(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4B28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003252B8(uint64_t a1)
{

  operator delete();
}

id sub_10032536C(uint64_t a1, void *a2)
{
  *a2 = off_1009A4B48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1003253BC(id *a1)
{

  operator delete(a1);
}

void sub_1003253F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling solutionsCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1003254A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003254BC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4BA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325534(uint64_t a1)
{

  operator delete();
}

id sub_1003255E8(uint64_t a1, void *a2)
{
  *a2 = off_1009A4BC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325638(id *a1)
{

  operator delete(a1);
}

void sub_100325674(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling dataCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveRemoteData:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325738(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4C28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003257B0(uint64_t a1)
{

  operator delete();
}

id sub_100325864(uint64_t a1, void *a2)
{
  *a2 = off_1009A4C48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1003258B4(id *a1)
{

  operator delete(a1);
}

void sub_1003258F0(uint64_t a1, void *a2, int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling invalidationCallback.", v8, 2u);
    v6 = qword_1009F9820;
  }

  v7 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(v5, v8);
    sub_1004BF4F4(v8);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didInvalidateUWBSession];
  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_100325A04(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100325A30(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4CA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325AA8(uint64_t a1)
{

  operator delete();
}

id sub_100325B5C(uint64_t a1, void *a2)
{
  *a2 = off_1009A4CC8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325BAC(id *a1)
{

  operator delete(a1);
}

void sub_100325BE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling unsuccessfulRangingCallback.", v7, 2u);
  }

  [*(a1 + 8) didReceiveUnsuccessfulSolution:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325C94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325CAC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4D28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325D24(uint64_t a1)
{

  operator delete();
}

id sub_100325DD8(uint64_t a1, void *a2)
{
  *a2 = off_1009A4D48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100325E28(id *a1)
{

  operator delete(a1);
}

void sub_100325E64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-item-loc,Calling sessionStartNotifCallback.", v7, 2u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 8) + 64));
  [*(a1 + 8) didReceiveSessionStartNotification:a3];
  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100325F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325F28(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A4DB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100325F78(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_100325FB8(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_100325FF4()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003260A4()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100326154()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100326204()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1003262B4()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100326364()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100326414()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1003264C4()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100326574()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056B840;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100326668()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_10056B7B0;
  v44[0] = unk_10056B7C0;
  sub_1001BD0B0(qword_1009F4F88, &v43, 4);
  xmmword_1009F4FA0 = xmmword_100563BD0;
  *algn_1009F4FB0 = xmmword_100563BE0;
  qword_1009F4FC8 = 0;
  unk_1009F4FD0 = 0;
  qword_1009F4FC0 = 0x3FD999999999999ALL;
  unk_1009F4FD8 = xmmword_100563BF0;
  dword_1009F4FE8 = 5;
  qword_1009F4FF0 = 0x4000000000000000;
  dword_1009F4FF8 = 5;
  byte_1009F5000 = 0;
  *&algn_1009F5001[3] = 0x30000000ALL;
  xmmword_1009F5010 = xmmword_100563C00;
  unk_1009F5020 = xmmword_100563C10;
  xmmword_1009F5030 = xmmword_100563C20;
  qword_1009F5040 = 0x3FE3333333333333;
  dword_1009F5048 = 3;
  xmmword_1009F5050 = xmmword_100563C30;
  unk_1009F5060 = xmmword_100563C10;
  xmmword_1009F5070 = xmmword_100563C00;
  qword_1009F5080 = 0x3FE3333333333333;
  byte_1009F5088 = 0;
  xmmword_1009F5090 = xmmword_100563C40;
  unk_1009F50A0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F50B0 = _Q0;
  qword_1009F50C0 = 0xBFD3333333333333;
  xmmword_1009F50C8 = xmmword_100563C60;
  qword_1009F50D8 = 0x3E99999A40000000;
  xmmword_1009F50E0 = xmmword_100563BE0;
  qword_1009F50F8 = 0;
  unk_1009F5100 = 0;
  qword_1009F50F0 = 0x3FD999999999999ALL;
  xmmword_1009F5108 = xmmword_100563BF0;
  dword_1009F5118 = 5;
  qword_1009F5120 = 0x4000000000000000;
  dword_1009F5128 = 4;
  qword_1009F5130 = 0x300000008;
  qword_1009F5138 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F5140, &v45, 1);
  xmmword_1009F5158 = xmmword_100563C70;
  qword_1009F5168 = 0x4024000000000000;
  dword_1009F5170 = 45;
  byte_1009F5178 = 0;
  byte_1009F5190 = 0;
  qword_1009F5198 = 0;
  byte_1009F51A0 = 0;
  dword_1009F51A4 = 1;
  byte_1009F51A8 = 1;
  xmmword_1009F51B0 = xmmword_100563C80;
  xmmword_1009F51C0 = xmmword_100563C90;
  xmmword_1009F51D0 = v42;
  qword_1009F51E0 = 0xC059000000000000;
  xmmword_1009F51E8 = xmmword_100563CA0;
  qword_1009F51F8 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F5200 = xmmword_100563BE0;
  qword_1009F5210 = 0x3FD999999999999ALL;
  xmmword_1009F5218 = 0u;
  unk_1009F5228 = xmmword_100563BF0;
  dword_1009F5238 = 5;
  qword_1009F5240 = 0x4000000000000000;
  dword_1009F5248 = 10;
  qword_1009F5250 = 0x4034000000000000;
  dword_1009F5258 = 3;
  xmmword_1009F5260 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F4F88, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EBFD8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBFE0, &_mh_execute_header);
  v43 = xmmword_10056B7D0;
  v44[0] = unk_10056B7E0;
  v44[1] = xmmword_10056B7F0;
  v44[2] = unk_10056B800;
  qword_1009F5278 = 0;
  unk_1009F5280 = 0;
  qword_1009F5270 = 0;
  sub_10004EEB8(&qword_1009F5270, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F5270, &_mh_execute_header);
  v43 = xmmword_10056B810;
  qword_1009F5290 = 0;
  unk_1009F5298 = 0;
  qword_1009F5288 = 0;
  sub_10004EEB8(&qword_1009F5288, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F5288, &_mh_execute_header);
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
  qword_1009F52B0 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F52A0 = v9;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F52A0, &_mh_execute_header);
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
  qword_1009F52C8 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F52B8 = v13;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F52B8, &_mh_execute_header);
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
  qword_1009F52E0 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F52D0 = v17;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F52D0, &_mh_execute_header);
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
  qword_1009F52F8 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F52E8 = v21;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F52E8, &_mh_execute_header);
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
  qword_1009F5310 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F5300 = v25;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F5300, &_mh_execute_header);
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
  qword_1009F5328 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F5318 = v29;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F5318, &_mh_execute_header);
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
  qword_1009F5340 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F5330 = v33;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F5330, &_mh_execute_header);
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
  qword_1009F5358 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F5348 = v37;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F5348, &_mh_execute_header);
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
  qword_1009F5370 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F5360 = v41;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F5360, &_mh_execute_header);
  LOWORD(v43) = 1031;
  word_1009F5378 = sub_100428664(&v43);
  LOWORD(v43) = 1800;
  word_1009F537A = sub_100428664(&v43);
  objc_autoreleasePoolPop(v0);
}

void sub_100327078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_10032895C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 shortDescription];
  [v2 appendFormat:@"\n    [%@] ", v3];
}

void *sub_100329544(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

void sub_100329550(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 8) + 104))(&v6);
  v28[0] = 0;
  v35 = 0;
  if (v6)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BF550(v4);
    }
  }

  else
  {
    sub_1003297E8(a1, &v6, v21);
    sub_100329770(v28, v21);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  v5 = v6;
  sub_10026A998(v13, v28);
  *a2 = v5;
  sub_10026A998((a2 + 8), v13);
  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  if (v35 == 1)
  {
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_100329728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_10026ACD4(&a33);
  sub_10025C150(v33 - 144);
  sub_10026ACD4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100329770(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      *(a1 + 64) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      *(a1 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      *(a1 + 16) = v6;
      operator delete(v6);
    }

    *(a1 + 96) = 0;
  }

  result = sub_10032A3D0(a1, a2);
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_1003297E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "regulatory,produceRoseConfig", buf, 2u);
  }

  v7 = (*(**a1 + 32))();
  buf[0] = 0;
  v17 = 0;
  if ((v7 & 0x1000000000000) != 0)
  {
    v17 = 1;
    *buf = v7 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 9;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"DisableCoex"];

  if (v9)
  {
    v15 = 0;
  }

  v10 = +[PRGlobalDebugSettings sharedSettings];
  v11 = [v10 integerForKey:PRDebugConfigArgDebugLevel];

  if (!v11)
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    v11 = [v12 integerForKey:@"RoseDebugLevelOverride"];
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  return sub_10032A2D8(a3, v13, a2 + 1, a2 + 4, a2 + 7, &v15, buf);
}

BOOL sub_1003299D8(uint64_t a1, char *a2, unsigned __int8 *a3, __int16 a4)
{
  (*(**(a1 + 8) + 48))(&v37);
  v8 = v37;
  v7 = v38;
  if (v38 != v37)
  {
    v32 = a3;
    v33 = a2;
    v9 = 0;
    v10 = 0;
    v34 = v37;
    do
    {
      v11 = *v8;
      if (v11 == 9)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] RF channel 9 ALLOWED.", buf, 2u);
        }

        v10 = 1;
      }

      else if (v11 == 5)
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] RF channel 5 ALLOWED.", buf, 2u);
        }

        v9 = 1;
      }

      ++v8;
    }

    while (v8 != v7);
    if (((v9 | v10) & 1) == 0)
    {
      sub_1004BF5D8();
    }

    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 objectForKey:@"PreferredUWBChannelOverride"];
    v8 = v34;
    v16 = v15;
    if ((a4 & 0x100) != 0)
    {
      if (a4 == 5)
      {
        goto LABEL_22;
      }
    }

    else if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 integerValue];
        if (v17 == sub_10042838C(5, 1))
        {
          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Ch5 set as preferred in default write. Override preference for channel 9.", buf, 2u);
          }

LABEL_22:
          v20 = 9;
          if (v9)
          {
            v21 = 5;
            goto LABEL_29;
          }

          goto LABEL_32;
        }

        v22 = sub_10042838C(9, 1);
        v23 = qword_1009F9820;
        if (v17 != v22)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004BF6A8(v17, v23);
          }

          v31 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/DaemonCore/PRConfigurationManager.mm";
            v44 = 1024;
            v45 = 168;
            v46 = 2080;
            v47 = "getPreferredChannels";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", buf, 0x1Cu);
          }

          abort();
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Ch 9 set as preferred in default write. This is already the preference. Do nothing.", buf, 2u);
        }
      }
    }

    v20 = 5;
    if (v10)
    {
      v21 = 9;
      LOBYTE(v10) = v9;
LABEL_29:
      v24 = v33;
      *v33 = v21;
      if (v10)
      {
        v25 = v32;
        *v32 = v20 | 0x100;
LABEL_36:
        v26 = qword_1009F9820;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v24;
          v28 = buf;
          sub_100428144(v27, buf);
          if (SBYTE3(v47) < 0)
          {
            v28 = *buf;
          }

          if (v25[1] == 1)
          {
            sub_100428144(*v25, __p);
            if (v36 >= 0)
            {
              v29 = __p;
            }

            else
            {
              v29 = __p[0];
            }

            *v39 = 136315394;
            v40 = v28;
            v41 = 2080;
            v42 = v29;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Primary channel %s. Alternate channel %s", v39, 0x16u);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *v39 = 136315394;
            v40 = v28;
            v41 = 2080;
            v42 = "None";
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[PRConfigurationManager] Primary channel %s. Alternate channel %s", v39, 0x16u);
          }

          if (SBYTE3(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_49;
      }

LABEL_34:
      v25 = v32;
      if (v32[1] == 1)
      {
        v32[1] = 0;
      }

      goto LABEL_36;
    }

    LOBYTE(v10) = v9;
LABEL_32:
    v24 = v33;
    if ((v10 & 1) == 0)
    {
      __assert_rtn("getPreferredChannels", "PRConfigurationManager.mm", 184, "leastPreferredChannelAllowed");
    }

    *v33 = v20;
    goto LABEL_34;
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BF594(v19);
  }

LABEL_49:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v7 != v8;
}

void sub_100329ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}