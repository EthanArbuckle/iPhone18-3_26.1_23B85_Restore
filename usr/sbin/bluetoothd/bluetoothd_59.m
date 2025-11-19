void *sub_1003FA248(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1003FA31C()
{
  v0 = sub_10000E92C();
  if (!(*(*v0 + 8))(v0))
  {
    goto LABEL_12;
  }

  v10 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "HWRepair");
  sub_100007E30(__p, "BlueToolBTResult");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v10);
  if (v10)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_12:
    clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 0;
    operator new();
  }

  operator delete(*buf);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v4 = qword_100BCE8D8;
  v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v6 = v10;
  if (v5)
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for runBlueTool BTResult", buf, 8u);
    return v10;
  }

  return v6;
}

void sub_1003FA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FA728(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008283F4(v1);
    }
  }

  sub_100088DD4();
}

uint64_t sub_1003FA850(void *a1, xpc_object_t object)
{
  v4 = a1[5];
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "result");
    v9 = int64;
    v11 = int64 == 10 || int64 == 13;
    if (int64)
    {
      if ((int64 == 13 || int64 == 10) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008284F4();
      }

      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828528(a1, v9, v12);
      }
    }

    else
    {
      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[6];
        *__str = 136446210;
        *&__str[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BlueTool finished running %{public}s script", __str, 0xCu);
      }
    }

    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (!v9)
    {
      v13 = 0;
    }

    *(*(a1[4] + 8) + 24) = v13;
    *(v4 + 128) = *(*(a1[4] + 8) + 24);
    string = xpc_dictionary_get_string(object, "firmware");
    v15 = xpc_dictionary_get_int64(object, "manufacturer");
    if (string)
    {
      std::string::assign((v4 + 96), string);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *__str = 0u;
    v19 = 0u;
    snprintf(__str, 0x80uLL, "%lld/%s", v15, string);
    clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    result = sub_10000F034();
    if (result)
    {
      v7 = *(*sub_10000F034() + 64);
      return v7();
    }
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828478(a1, v5);
    }

    *(v4 + 128) = 213;
    *(*(a1[4] + 8) + 24) = 1;
    clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    result = sub_10000F034();
    if (result)
    {
      v7 = *(*sub_10000F034() + 64);
      return v7();
    }
  }

  return result;
}

uint64_t sub_1003FAB5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10032147C(result);

    operator delete();
  }

  return result;
}

void sub_1003FABA0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 || (v5 = qword_100BCE8D8, os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT)) && (v6 = 136446210, v7 = "fPowerAssertion != NULL", _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu), (v2 = *(a1 + 120)) != 0))
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v2 + 16))(v2), v6 = 136315138, v7 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %s", &v6, 0xCu), (v2 = *(a1 + 120)) != 0))
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 120) = 0;
  }
}

void sub_1003FAD18(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 132) & 1) == 0)
    {
      v3 = dword_100B6D6A8++;
      v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      v5 = v4;
      if (v3)
      {
        if (v4 > qword_100B6D6B0 + 5000000000)
        {
          v6 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
          {
            sub_1008285B4(v5, v6);
          }

          v7 = dword_100B6D6A8;
          if (dword_100B6D6A8 < 0xB)
          {
            dword_100B6D6A8 = 0;
            v10 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
            {
              sub_100828640(v10);
            }
          }

          else
          {
            v8 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
            {
              sub_1008286BC(v5, v7, v8);
            }

            *(a1 + 132) = 1;
          }
        }
      }

      else
      {
        qword_100B6D6B0 = v4;
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100828750(v5, v9);
        }
      }
    }
  }

  else
  {
    dword_100B6D6A8 = 0;
    *(a1 + 132) = 0;
  }
}

void sub_1003FB030(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(object, "output");
    if (string)
    {
      strlcpy(*(a1 + 40), string, *(a1 + 48));
    }

    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2082;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BlueTool finished running %{public}s command - output was %{public}s", buf, 0x16u);
    }

    if (*(a1 + 64) == 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      memset(buf, 0, sizeof(buf));
      snprintf(buf, 0x200uLL, "Command %s, Response %s ", *(a1 + 56), *(a1 + 40));
      sub_1001C429C(buf);
    }
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008287C8(a1, v4);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t sub_1003FB1E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10032147C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1003FB228(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Booting chipset", v5, 2u);
  }

  v3 = sub_1003FB334(a1);
  (*(*a1 + 144))(a1, v3);
  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C();
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FB334(uint64_t a1)
{
  v55 = 0;
  v54 = 0;
  sub_10024E444(&v54);
  if (sub_10009B9DC() != 7 && sub_10009B9DC() != 8 && sub_10009B9DC() != 9 || sub_10022DC58())
  {
    return 11;
  }

  v53 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(__p, "ChipBoot");
  sub_100007E30(&buf, "DisableInitChipSimpleFast");
  (*(*v4 + 72))(v4, __p, &buf, &v53);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v5 = qword_100BCE8D8;
  if (v53 == 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008289D0();
    }

    return 11;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Booting chipset simple and fast", __p, 2u);
  }

  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v52 = 0;
  v51 = 0;
  memset(&__p[4], 0, 60);
  *__p = 1818845542;
  if (sub_10009B9DC() == 9)
  {
    v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/centauri");
    v8 = v7;
    if (v7)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"BTHardwareHealthy", kCFAllocatorDefault, 0);
      v10 = CFProperty;
      if (CFProperty)
      {
        v11 = CFGetTypeID(CFProperty);
        if (v11 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v10);
          v13 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v14 = "healthy";
            if (!Value)
            {
              v14 = "unhealthy";
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "hardware health detected: %s", &buf, 0xCu);
          }

          if (!Value)
          {
            sub_1001BAECC(10000);
            CFRelease(v10);
            IOObjectRelease(v8);
            v2 = 24;
LABEL_68:
            if (v51)
            {
              free(v51);
            }

            v32 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v2;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Booting chipset simple and fast returns %d", &buf, 8u);
            }

            v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
            if (sub_10000F034())
            {
              v34 = sub_10000F034();
              (*(*v34 + 64))(v34, __p, v2, "boot", (v33 - v6) / 0xF4240);
            }

            return v2;
          }
        }

        else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828934();
        }

        CFRelease(v10);
      }

      IOObjectRelease(v8);
    }

LABEL_47:
    if (sub_10009B9DC() != 7)
    {
      goto LABEL_55;
    }

    v21 = IOServiceNameMatching("AppleConvergedIPCOLYBTControl");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v21);
    v23 = MatchingService;
    if (!MatchingService)
    {
      goto LABEL_55;
    }

    v24 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"fatalerror", kCFAllocatorDefault, 1u);
    v25 = v24;
    if (v24)
    {
      v26 = CFGetTypeID(v24);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = CFBooleanGetValue(v25) == 0;
        CFRelease(v25);
        IOObjectRelease(v23);
        if (!v27)
        {
          v28 = sub_10022DE3C();
          if (v28)
          {
            if (v28 != 1220)
            {
              v2 = 2408;
              goto LABEL_68;
            }

            goto LABEL_58;
          }

          v29 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = "PowerCycle";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %s of Bluetooth PCIe transport -- Completed", &buf, 0xCu);
          }

          if (sub_10009B9DC() == 7)
          {
            v30 = sub_100017E6C();
            v31 = (*(*v30 + 320))(v30);
            if (v31 == 4399)
            {
              v35 = sub_100017E6C();
              if ((*(*v35 + 384))(v35))
              {
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
                {
                  sub_100828968();
                }

                v2 = 2413;
                goto LABEL_68;
              }
            }

            else if (!v31)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
              {
                sub_10082899C();
              }

              v2 = 2412;
              goto LABEL_68;
            }
          }

          if (sub_10009B9DC() == 9)
          {
LABEL_79:
            v36 = sub_10009BD9C();
            (*(*v36 + 32))(v36, &v54);
            sub_10024E444(&v54);
            v37 = qword_100BCE8D8;
            v2 = 0;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000BE6F8(&v54, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              *v56 = 136315138;
              v57 = p_buf;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Providing the local device address of %s", v56, 0xCu);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              v2 = 0;
            }

            goto LABEL_68;
          }

          v39 = sub_10022DE20();
          if (v39)
          {
            if (v39 != 1220)
            {
              v2 = 2410;
              goto LABEL_68;
            }

LABEL_58:
            v2 = 2411;
            goto LABEL_68;
          }

          v40 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PCIe successfully transferred firmware image file", &buf, 2u);
          }

          v41 = (a1 + 96);
          if (!std::string::compare((a1 + 96), 0, 0xEuLL, "/etc/bluetool/"))
          {
            v42 = "override";
          }

          else
          {
            if (sub_10009B9DC() != 8)
            {
              v45 = sub_100017E6C();
              (*(*v45 + 360))(&buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                v46 = buf.__r_.__value_.__r.__words[0];
                strncpy(__p, buf.__r_.__value_.__l.__data_, 0x40uLL);
                operator delete(v46);
              }

              else
              {
                strncpy(__p, &buf, 0x40uLL);
              }

              __p[63] = 0;
              v47 = std::string::rfind((a1 + 96), 47, 0xFFFFFFFFFFFFFFFFLL);
              std::string::basic_string(&buf, (a1 + 96), v47 + 1, 0xFFFFFFFFFFFFFFFFLL, v56);
              if (*(a1 + 119) < 0)
              {
                operator delete(*v41);
              }

              *v41 = *&buf.__r_.__value_.__l.__data_;
              *(a1 + 112) = *(&buf.__r_.__value_.__l + 2);
              goto LABEL_106;
            }

            v42 = "pinecrest";
          }

          v43 = *(v42 + 1);
          *__p = *v42;
          *&__p[16] = v43;
          v44 = *(v42 + 3);
          *&__p[32] = *(v42 + 2);
          *&__p[48] = v44;
LABEL_106:
          v48 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a1 + 119) < 0)
            {
              v41 = *v41;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v41;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Setting firmware filename to %s", &buf, 0xCu);
          }

          goto LABEL_79;
        }

LABEL_55:
        sub_1003FA728(a1);
      }

      CFRelease(v25);
    }

    IOObjectRelease(v23);
    goto LABEL_55;
  }

  if (sub_10009B9DC() != 8 || (v15 = sub_100017E6C(), !(*(*v15 + 376))(v15)))
  {
    v16 = sub_100017E6C();
    sub_100007E30(v49, ".bin");
    v17 = (a1 + 96);
    v2 = (*(*v16 + 448))(v16, v49, &v51, &v52, a1 + 96, 0);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100828878();
      }

      goto LABEL_68;
    }

    if (sub_10009B9DC() == 8)
    {
      v18 = std::string::rfind((a1 + 96), 47, 0xFFFFFFFFFFFFFFFFLL);
      std::string::basic_string(&buf, (a1 + 96), v18 + 1, 0xFFFFFFFFFFFFFFFFLL, v56);
      if (*(a1 + 119) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *&buf.__r_.__value_.__l.__data_;
      *(a1 + 112) = *(&buf.__r_.__value_.__l + 2);
      v19 = std::string::compare((a1 + 96), 0, 6uLL, "MT7923");
      v20 = qword_100BCE8D8;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008288AC((a1 + 119), (a1 + 96), v20);
        }

        v2 = 1205;
        goto LABEL_68;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 119) < 0)
        {
          v17 = *v17;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v52;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SRS: FW name : %s, size : %d\n", &buf, 0x12u);
      }
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100828844();
  }

  return 2414;
}

void sub_1003FBDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FBDF4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Powering on chipset", v4, 2u);
  }

  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C();
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FBECC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Powering off chipset", v4, 2u);
  }

  if ((*(*a1 + 136))(a1) == 11)
  {
    return sub_1003FA31C();
  }

  else
  {
    return (*(*a1 + 136))(a1);
  }
}

uint64_t sub_1003FBFA4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting chipset", v4, 2u);
  }

  result = (*(*a1 + 16))(a1);
  if (!result)
  {
    return (*(*a1 + 8))(a1);
  }

  return result;
}

uint64_t sub_1003FC064(int a1, char *name, uint64_t a3)
{
  v4 = IOServiceNameMatching(name);
  if (!v4)
  {
    return 1;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 1;
  }

  v6 = MatchingService;
  v13 = 0;
  *buffer = 0;
  v7 = 1;
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", kCFAllocatorDefault, 1u);
  if (v8)
  {
    v9 = v8;
    v18.location = 0;
    v18.length = 6;
    CFDataGetBytes(v8, v18, buffer);
    *a3 = *buffer;
    *(a3 + 4) = v13;
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v15 = 6;
      v16 = 2096;
      v17 = buffer;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DeviceTree address = %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
    }

    CFRelease(v9);
    v7 = 0;
  }

  IOObjectRelease(v6);
  return v7;
}

uint64_t sub_1003FC1CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
LABEL_2:
    v3 = *(a1 + 80);
    *(a2 + 4) = *(a1 + 84);
    *a2 = v3;
    return 0;
  }

  v5 = 0;
  while (v5 != 5)
  {
    if (*(a1 + 81 + v5++))
    {
      if ((v5 - 1) <= 4)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  v7 = sub_1003FC064(a1, "marconi-bt", a2);
  if (!v7)
  {
    return 0;
  }

  return sub_1003FC064(v7, "bluetooth", a2);
}

uint64_t sub_1003FC270(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 84) = *(a2 + 2);
  *(result + 80) = v2;
  return result;
}

uint64_t sub_1003FC2B4()
{
  v0 = CFPreferencesCopyAppValue(@"defaultPoweredState", @"com.apple.BTServer");
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"off"))
    {
      v2 = 0;
    }

    else
    {
      CFEqual(v1, @"on");
      v2 = 1;
    }

    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default power state : %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_1003FC3B0(uint64_t a1, int a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Write default power state : %d", v7, 8u);
  }

  v4 = @"on";
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"off";
  }

  CFPreferencesSetAppValue(@"defaultPoweredState", v5, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1003FC494()
{
  v0 = CFPreferencesCopyAppValue(@"defaultAirplaneModePowerState", @"com.apple.BTServer");
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"off"))
    {
      v2 = 0;
    }

    else
    {
      CFEqual(v1, @"on");
      v2 = 1;
    }

    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default airplane mode power state : %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_1003FC590(uint64_t a1, int a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Write default airplane mode power state : %d", v7, 8u);
  }

  v4 = @"on";
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"off";
  }

  CFPreferencesSetAppValue(@"defaultAirplaneModePowerState", v5, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1003FC674(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(kCFAllocatorDefault, Current + a2);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A6C();
    }

    return 1;
  }

  v7 = v6;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    CFRelease(v7);
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A38();
    }

    return 1;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"scheduledby", @"BT_Wakeup");
  CFDictionarySetValue(v9, @"time", v7);
  if (a3 >= 1)
  {
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v9, @"leeway", v10);
      CFRelease(v11);
    }
  }

  v12 = IOPMRequestSysWake();
  CFRelease(v9);
  CFRelease(v7);
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828A04();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1003FC818(uint64_t a1)
{
  *a1 = off_100AF2F20;
  *(a1 + 8) = off_100AF2FE0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10007A068(a1 + 16);
  return a1;
}

void sub_1003FC890(uint64_t a1)
{
  *a1 = off_100AF2F20;
  *(a1 + 8) = off_100AF2FE0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10007A068(a1 + 16);

  operator delete();
}

void sub_1003FC930(uint64_t a1, char a2, char a3, int a4)
{
  *a1 = off_100AF3008;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  *(a1 + 12) = a4;
  sub_100044BBC(a1 + 16);
  sub_100044BBC(a1 + 88);
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  sub_100044BBC(a1 + 176);
  operator new();
}

uint64_t sub_1003FCA4C(uint64_t a1)
{
  *a1 = off_100AF3008;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_10007A068(a1 + 176);
  sub_10000CEDC(a1 + 152, *(a1 + 160));
  sub_10007A068(a1 + 88);
  sub_10007A068(a1 + 16);
  return a1;
}

id sub_1003FCAD8(uint64_t a1, unint64_t a2)
{
  v13[1] = 0;
  v14[0] = a2;
  v13[0] = 0;
  sub_100007F88(v13, a1 + 88);
  v6 = *(a1 + 160);
  v5 = a1 + 160;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v14[2] = v14;
    v11 = [NSString stringWithUTF8String:*(sub_10005E16C(v5 - 8, v14)[5] + 8)];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);

  return v11;
}

void sub_1003FCBB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FCBC8(uint64_t a1, unint64_t a2)
{
  v22[1] = 0;
  v23 = a2;
  v22[0] = 0;
  sub_100007F88(v22, a1 + 88);
  v5 = a1 + 160;
  v4 = *(a1 + 160);
  if (v4)
  {
    v6 = a1 + 160;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v5 && *(v6 + 32) <= a2)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a1 + 168);
  sub_10000801C(v22);
  if ((*(a1 + 9) & 1) == 0 && v10)
  {
    sub_100007FB8(v22);
    v11 = *(*(a1 + 152) + 40);
    *&__s1[0] = &v23;
    sub_10005E16C(v5 - 8, &v23)[5] = v11;
LABEL_12:
    v12 = 1;
    goto LABEL_19;
  }

  *v21 = 0;
  memset(__s1, 0, sizeof(__s1));
  memset(&v31, 0, sizeof(v31));
  v13 = openpty(&v21[1], v21, __s1, 0, 0);
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *&buf[4] = v21[1];
    v25 = 1024;
    v26 = v21[0];
    v27 = 2080;
    v28 = __s1;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Tried to open PTY with central = %d, peripheral = %d, name = %s - result was %d", buf, 0x1Eu);
  }

  if (!v13)
  {
    if (*(a1 + 8) == 2)
    {
      v18 = fcntl(v21[1], 3);
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Flags are 0x%08x", buf, 8u);
      }

      fcntl(v21[1], 4, v18 | 4u);
    }

    tcgetattr(v21[1], &v31);
    cfsetspeed(&v31, 0x38400uLL);
    cfmakeraw(&v31);
    tcsetattr(v21[1], 0, &v31);
    v20 = 3145728;
    ioctl(v21[1], 0x80085402uLL, &v20);
    operator new();
  }

  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v16 = __error();
    sub_100828AA0(v16, buf, v15);
  }

  v12 = 0;
LABEL_19:
  sub_1000088CC(v22);
  return v12;
}

void sub_1003FD154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FD1B4(uint64_t a1, unint64_t a2)
{
  v31[1] = 0;
  v32 = a2;
  v31[0] = 0;
  sub_100007F88(v31, a1 + 88);
  v4 = *(a1 + 160);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 160;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 160 && *(v5 + 32) <= a2)
  {
    v30[0] = &v32;
    v17 = sub_10005E16C(a1 + 152, &v32)[5];
    sub_10000801C(v31);
    v30[0] = 0;
    v30[1] = 0;
    sub_100007F88(v30, a1 + 176);
    v18 = read(*v17, *(v17 + 40), *(a1 + 12));
    if (v18 < 1)
    {
      v27 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        v28 = __error();
        sub_100828AEC(v28, buf, v27);
      }
    }

    else
    {
      *(v17 + 32) = 1;
      dispatch_suspend(*(v17 + 24));
      if (((*(*a1 + 24))(a1, v32, *(v17 + 40), v18) & 1) == 0)
      {
        v19 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828B38(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    sub_1000088CC(v30);
  }

  else
  {
LABEL_9:
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828B70(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return sub_1000088CC(v31);
}

void sub_1003FD394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FD3C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0)
  {
    dispatch_release(*(v2 + 24));
    v2 = *(a1 + 32);
  }

  result = close(*v2);
  **(a1 + 32) = -1;
  return result;
}

void sub_1003FD414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003FD488;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1003FD494(uint64_t a1, unint64_t a2)
{
  v14[1] = 0;
  v15 = a2;
  v14[0] = 0;
  sub_100007F88(v14, a1 + 88);
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = (a1 + 152);
    v6 = a1 + 160;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != a1 + 160 && *(v6 + 32) <= a2)
    {
      v13[0] = &v15;
      v10 = sub_10005E16C(v5, &v15)[5];
      sub_100075DC4(v5, &v15);
      if ((*(a1 + 9) & 1) != 0 || !*(a1 + 168))
      {
        v13[0] = 0;
        v13[1] = 0;
        sub_100007F88(v13, a1 + 176);
        sub_100571164(*(v10 + 16));
        v11 = *(v10 + 24);
        if (!v11)
        {
          sub_1003FD604(v10);
        }

        dispatch_set_finalizer_f(v11, sub_1003FD604);
        dispatch_set_context(*(v10 + 24), v10);
        if (*(v10 + 32) == 1)
        {
          *(v10 + 32) = 0;
          dispatch_resume(*(v10 + 24));
        }

        dispatch_source_cancel(*(v10 + 24));
        sub_1000088CC(v13);
      }
    }
  }

  return sub_1000088CC(v14);
}

void sub_1003FD5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FD604(uint64_t a1)
{
  close(*(a1 + 4));
  *(a1 + 4) = -1;
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  operator delete();
}

void sub_1003FD690(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003FD704;
  v2[3] = &unk_100ADF8F8;
  v2[4] = a1;
  sub_10000CA94(v1, v2);
}

uint64_t sub_1003FD70C(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 88);
  while (1)
  {
    v2 = *(a1 + 152);
    if (v2 == a1 + 160)
    {
      break;
    }

    v3 = *(v2 + 32);
    sub_10000801C(v5);
    sub_1003FD494(a1, v3);
    sub_100007FB8(v5);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1003FD79C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v27[1] = 0;
  v28[0] = a2;
  v27[0] = 0;
  sub_100007F88(v27, a1 + 88);
  v12 = *(a1 + 160);
  v11 = a1 + 160;
  v10 = v12;
  if (v12)
  {
    v13 = v11;
    do
    {
      v14 = *(v10 + 32);
      v15 = v14 >= a2;
      v16 = v14 < a2;
      if (v15)
      {
        v13 = v10;
      }

      v10 = *(v10 + 8 * v16);
    }

    while (v10);
    if (v13 != v11 && *(v13 + 32) <= a2)
    {
      v28[2] = v28;
      v17 = sub_10005E16C(v11 - 8, v28)[5];
      v18 = [NSData dataWithBytes:a3 length:a4];
      v19 = 4;
      if (!a5)
      {
        v19 = 0;
      }

      v20 = *(v17 + v19);
      v21 = *(v17 + 16);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1003FD924;
      v24[3] = &unk_100ADF920;
      v25 = v18;
      v26 = v20;
      v22 = v18;
      sub_10000CA94(v21, v24);
    }
  }

  return sub_1000088CC(v27);
}

void sub_1003FD8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FD924(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 != write(*(a1 + 40), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length")))
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828BA8(v3);
    }
  }
}

uint64_t sub_1003FD9B4(uint64_t a1, unint64_t a2)
{
  v21[1] = 0;
  v22[0] = a2;
  v21[0] = 0;
  sub_100007F88(v21, a1 + 88);
  v6 = *(a1 + 160);
  v5 = a1 + 160;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v22[2] = v22;
    v20 = sub_10005E16C(v5 - 8, v22)[5];
    sub_10000801C(v21);
    if (*(v20 + 32) == 1)
    {
      *(v20 + 32) = 0;
      dispatch_resume(*(v20 + 24));
    }
  }

  else
  {
LABEL_9:
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828B70(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return sub_1000088CC(v21);
}

void sub_1003FDAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FDABC()
{
  v0 = *(*sub_10000EE80() + 176);

  return v0();
}

uint64_t sub_1003FDB44(uint64_t a1)
{
  *a1 = off_100AF3038;
  *(a1 + 8) = &off_100AF3408;
  *(a1 + 16) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = &off_100AF36F0;
  sub_10040F624(a1 + 72);
  *(a1 + 92) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 5;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 127) = 0;
  *(a1 + 184) = 0;
  *(a1 + 222) = 0;
  *(a1 + 224) = 0;
  *(a1 + 226) = 0;
  *(a1 + 177) = 0;
  *(a1 + 181) = 0;
  *(a1 + 188) = 0;
  *(a1 + 194) = 0;
  *(a1 + 228) = 1;
  *(a1 + 232) = 0;
  *(a1 + 243) = 0;
  *(a1 + 236) = 0;
  *(a1 + 247) = 257;
  *(a1 + 251) = 1;
  *(a1 + 252) = 0;
  *(a1 + 261) = 1;
  *(a1 + 262) = 0;
  *(a1 + 272) = &_mh_execute_header;
  *(a1 + 280) = 0;
  *(a1 + 288) = 60000;
  sub_100044BBC(a1 + 296);
  *(a1 + 360) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = 0;
  *(a1 + 223) = 0;
  *(a1 + 172) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 176) = -1;
  v2 = objc_autoreleasePoolPush();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [NSString alloc];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v4 initWithFormat:@"%@/Logs/Bluetooth", v5];
  v7 = qword_100B6D6B8;
  qword_100B6D6B8 = v6;

  v8 = [qword_100B6D6B8 stringByAppendingPathComponent:@"PacketLogs"];
  v9 = [v8 copy];
  v10 = qword_100B6D6C0;
  qword_100B6D6C0 = v9;

  objc_autoreleasePoolPop(v2);
  *(a1 + 24) = dispatch_queue_create("com.apple.MobileBluetooth.debugSettings", 0);
  return a1;
}

uint64_t sub_1003FDD9C(uint64_t a1)
{
  *a1 = off_100AF3038;
  v2 = a1 + 8;
  *(a1 + 8) = &off_100AF3408;
  notify_cancel(*(a1 + 20));
  notify_cancel(*(a1 + 16));
  if (qword_100B50AA0 != -1)
  {
    sub_100828C38();
  }

  sub_10007A3F0(off_100B50A98 + 64, v2);
  sub_10007A068(a1 + 296);
  return a1;
}

void sub_1003FDE58(uint64_t a1)
{
  sub_1003FDD9C(a1);

  operator delete();
}

void sub_1003FDE90(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v24 = 0;
  if ((*(*a1 + 8))(a1))
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[89];
  }

  *a2 = v8 & 1;
  if ((*(*a1 + 8))(a1))
  {
    v9 = 1;
  }

  else
  {
    v9 = a1[89];
  }

  *a3 = v9 & 1;
  v10 = *(sub_10000C7D0() + 800);
  v11 = *sub_10000C798();
  if ((*(v11 + 368))())
  {
    v12 = v10 == 9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = 0;
    *a3 = 0;
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "StackDebugEnabled");
  (*(*a1 + 72))(a1, buf, __p, &v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  v13 = v24;
  if (v24 == 1)
  {
    *a2 = v24;
    *a3 = v13;
  }

  if (!(*(*a1 + 8))(a1))
  {
    goto LABEL_29;
  }

  v21 = 0;
  sub_100007E30(buf, "Stack");
  sub_100007E30(__p, "HCILiteLogging");
  (*(*a1 + 72))(a1, buf, __p, &v21);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  v14 = _os_feature_enabled_impl();
  if ((*(*a1 + 8))(a1) & 1 | ((v14 & 1) == 0) || v24 == 1)
  {
    if (((*(*a1 + 8))(a1) & v14) == 1)
    {
      v15 = v21;
      *a4 = v21;
      if ((v15 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_52;
    }

LABEL_29:
    *a4 = 0;
    goto LABEL_30;
  }

  *a4 = 1;
LABEL_52:
  if ((*a3 & 1) == 0)
  {
    *a3 = 1;
  }

LABEL_30:
  if ((*(*a1 + 24))(a1))
  {
    *a2 = 1;
    *a3 = 1;
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "HCILiveTraces");
  (*(*a1 + 72))(a1, buf, __p, a2);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(__p, "HCIFileTraces");
  (*(*a1 + 72))(a1, buf, __p, a3);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "disabled";
    if (*a2)
    {
      v18 = "enabled";
    }

    else
    {
      v18 = "disabled";
    }

    v19 = *a4;
    if (*a3)
    {
      v20 = "enabled";
    }

    else
    {
      v20 = "disabled";
    }

    *buf = 136446722;
    if (v19)
    {
      v17 = "enabled";
    }

    *&buf[4] = v18;
    v26 = 2082;
    v27 = v20;
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "liveTracing:%{public}s fileTracing:%{public}s hciLiteLogging:%{public}s", buf, 0x20u);
  }
}

void sub_1003FE374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FE3C8(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040ACA0;
  block[3] = &unk_100AF3580;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1003FE464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Root prefs changed", v4, 2u);
  }

  return (**v1)(v1);
}

void sub_1003FE500(_BYTE *a1)
{
  a1[88] = 1;
  memset(&v86, 0, sizeof(v86));
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v2 = sub_10000C798();
  if (!(*(*v2 + 24))(v2, &v83))
  {
    v28 = HIBYTE(v85);
    if (v85 < 0)
    {
      v28 = v84;
    }

    if (v28)
    {
      std::operator+<char>();
      v29 = std::string::append(&v77, "\n");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v79 = v29->__r_.__value_.__r.__words[2];
      *__p = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (v79 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if (v79 >= 0)
      {
        v32 = HIBYTE(v79);
      }

      else
      {
        v32 = __p[1];
      }

      std::string::append(&v86, v31, v32);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }
    }
  }

  v3 = [gCBDaemonServer stackController];
  v4 = [v3 controllerInfo];

  v5 = [v4 firmwareVersion];

  if (v5)
  {
    v6 = [gCBDaemonServer stackController];
    v7 = [v6 controllerInfo];
    v8 = [v7 firmwareVersion];
    sub_100007E30(&v76, [v8 UTF8String]);
    v9 = std::string::insert(&v76, 0, "Firmware Version: ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v77, "\n");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v79 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v79 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v79 >= 0)
    {
      v14 = HIBYTE(v79);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(&v86, v13, v14);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  v15 = [v4 chipsetID];

  if (v15)
  {
    v16 = [gCBDaemonServer stackController];
    v17 = [v16 controllerInfo];
    v18 = [v17 chipsetID];
    sub_100007E30(&v77, [v18 UTF8String]);
    v19 = std::string::insert(&v77, 0, "Chipset: ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v79 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v79 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v79 >= 0)
    {
      v22 = HIBYTE(v79);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v86, v21, v22);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    __p[0] = 0;
    __p[1] = 0;
    v79 = 0;
    v23 = sub_10000C798();
    if (!(*(*v23 + 40))(v23, __p))
    {
      v72 = HIBYTE(v79);
      if (v79 < 0)
      {
        v72 = __p[1];
      }

      if (v72)
      {
        std::operator+<char>();
        v73 = (v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v77 : v77.__r_.__value_.__r.__words[0];
        v74 = (v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v77.__r_.__value_.__r.__words[2]) : v77.__r_.__value_.__l.__size_;
        std::string::append(&v86, v73, v74);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }
      }
    }

    std::string::append(&v86, "\n");
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ([v4 hciTransportType])
  {
    v24 = [gCBDaemonServer stackController];
    v25 = [v24 controllerInfo];
    v26 = [v25 hciTransportType];
    if (v26 > 4)
    {
      v27 = "?";
    }

    else
    {
      v27 = off_100AF3640[v26];
    }

    sub_100007E30(&v76, v27);
    v33 = std::string::insert(&v76, 0, "Transport: ");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v77, "\n");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v79 = v35->__r_.__value_.__r.__words[2];
    *__p = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    if (v79 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    if (v79 >= 0)
    {
      v38 = HIBYTE(v79);
    }

    else
    {
      v38 = __p[1];
    }

    std::string::append(&v86, v37, v38);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  v39 = [v4 hardwareAddressData];

  if (v39)
  {
    v40 = [v4 hardwareAddressData];
    v41 = CUPrintNSDataAddress();
    sub_100007E30(&v76, [v41 UTF8String]);
    v42 = std::string::insert(&v76, 0, "Address: ");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v77, "\n");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v79 = v44->__r_.__value_.__r.__words[2];
    *__p = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    if (v79 >= 0)
    {
      v46 = __p;
    }

    else
    {
      v46 = __p[0];
    }

    if (v79 >= 0)
    {
      v47 = HIBYTE(v79);
    }

    else
    {
      v47 = __p[1];
    }

    std::string::append(&v86, v46, v47);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  v48 = [v4 firmwareName];

  if (v48)
  {
    v49 = [v4 firmwareName];
    sub_100007E30(&v76, [v49 UTF8String]);
    v50 = std::string::insert(&v76, 0, "Firmware Filename: ");
    v51 = *&v50->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = std::string::append(&v77, "\n");
    v53 = *&v52->__r_.__value_.__l.__data_;
    v79 = v52->__r_.__value_.__r.__words[2];
    *__p = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    if (v79 >= 0)
    {
      v54 = __p;
    }

    else
    {
      v54 = __p[0];
    }

    if (v79 >= 0)
    {
      v55 = HIBYTE(v79);
    }

    else
    {
      v55 = __p[1];
    }

    std::string::append(&v86, v54, v55);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  sub_100007E30(&v76, CBHostVersion);
  v56 = std::string::insert(&v76, 0, "Bluetooth Host: ");
  v57 = *&v56->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = std::string::append(&v77, "\n");
  v59 = *&v58->__r_.__value_.__l.__data_;
  v79 = v58->__r_.__value_.__r.__words[2];
  *__p = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  if (v79 >= 0)
  {
    v60 = __p;
  }

  else
  {
    v60 = __p[0];
  }

  if (v79 >= 0)
  {
    v61 = HIBYTE(v79);
  }

  else
  {
    v61 = __p[1];
  }

  std::string::append(&v86, v60, v61);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v62 = sub_10000C798();
  if (!(*(*v62 + 32))(v62, &v80, 1))
  {
    v67 = HIBYTE(v82);
    if (v82 < 0)
    {
      v67 = v81;
    }

    if (v67)
    {
      std::operator+<char>();
      v68 = std::string::append(&v77, "\n");
      v69 = *&v68->__r_.__value_.__l.__data_;
      v79 = v68->__r_.__value_.__r.__words[2];
      *__p = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      if (v79 >= 0)
      {
        v70 = __p;
      }

      else
      {
        v70 = __p[0];
      }

      if (v79 >= 0)
      {
        v71 = HIBYTE(v79);
      }

      else
      {
        v71 = __p[1];
      }

      std::string::append(&v86, v70, v71);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }
    }
  }

  v76.__r_.__value_.__s.__data_[0] = 0;
  sub_100007E30(__p, "Stack");
  sub_100007E30(&v77, "HCILiteLogging");
  (*(*a1 + 72))(a1, __p, &v77, &v76);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v63 = _os_feature_enabled_impl();
  if (!((*(*a1 + 8))(a1) & 1 | ((v63 & 1) == 0)) || ((*(*a1 + 8))(a1) & v63) == 1 && v76.__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::append(&v86, "HCILite Logging Mode\n");
  }

  v75 = 0;
  v64 = sub_10000E92C();
  sub_100007E30(__p, "LE");
  sub_100007E30(&v77, "EnableXPCLog");
  v65 = (*(*v64 + 72))(v64, __p, &v77, &v75);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v79) & 0x80000000) == 0)
  {
    if (!v65)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  operator delete(__p[0]);
  if (v65)
  {
LABEL_113:
    a1[240] = 1;
  }

LABEL_114:
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = &v86;
  }

  else
  {
    v66 = v86.__r_.__value_.__r.__words[0];
  }

  sub_1001C40E0(v66);
  sub_10040DAF8(a1 + 8);
  sub_10040F628((a1 + 72));
  (*(*a1 + 496))(a1, 1);
  if ((*(*a1 + 8))(a1))
  {
    sub_1003FF2E8(a1);
  }

  (*(*a1 + 528))(a1);
  (*(*a1 + 832))(a1);

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }
}

void sub_1003FF028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v42 - 65) < 0)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(a1);
}

void sub_1003FF2E8(uint64_t a1)
{
  v2 = sub_10000C798();
  if (!(*(*v2 + 144))(v2))
  {
    return;
  }

  memset(&v31, 0, sizeof(v31));
  *(a1 + 96) = 5;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&__p, "DiversityMode");
  *(a1 + 93) = (*(*a1 + 56))(a1, &buf, &__p, &v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 93) == 1)
  {
    if (!std::string::compare(&v31, "AUTO"))
    {
      *(a1 + 96) = 5;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity mode override: Auto";
    }

    else if (!std::string::compare(&v31, "AUTO_NO_COEX"))
    {
      *(a1 + 96) = 4;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity mode override: Auto with no cellular coex support";
    }

    else if (!std::string::compare(&v31, "DISABLED"))
    {
      *(a1 + 96) = 3;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity mode override: Disabled";
    }

    else if (!std::string::compare(&v31, "FORCE_ANT0"))
    {
      *(a1 + 96) = 0;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity mode override: Force Antenna 0";
    }

    else if (!std::string::compare(&v31, "FORCE_ANT1"))
    {
      *(a1 + 96) = 1;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity mode override: Force Antenna 1";
    }

    else if (!std::string::compare(&v31, "MRC_BF"))
    {
      *(a1 + 96) = 6;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity/beamforming mode override: MRC diversity with tx beamforming";
    }

    else if (!std::string::compare(&v31, "HYBRID_BF"))
    {
      *(a1 + 96) = 7;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity/beamforming mode override: Hybrid diversity with tx beamforming";
    }

    else if (!std::string::compare(&v31, "MRC_DISABLE_BF"))
    {
      *(a1 + 96) = 8;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Diversity/beamforming mode override: MRC diversity without tx beamforming";
    }

    else
    {
      *(a1 + 93) = 0;
      v3 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v4 = "Warning: Diversity mode override: Invalid.  Using default diversity mode.";
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 2u);
  }

LABEL_34:
  memset(&__p, 0, sizeof(__p));
  *(a1 + 104) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v29, "DiversityLogMode");
  *(a1 + 100) = (*(*a1 + 56))(a1, &buf, &v29, &__p);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 100) == 1)
  {
    if (!std::string::compare(&__p, "LOG_DENIALS"))
    {
      *(a1 + 104) = 3;
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v6 = "Diversity log mode override: Log Denials";
      goto LABEL_51;
    }

    if (!std::string::compare(&__p, "LOG_CHANNELS"))
    {
      *(a1 + 104) = 4;
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v6 = "Diversity log mode override: Log Channels";
      goto LABEL_51;
    }

    if (!std::string::compare(&__p, "DISABLED"))
    {
      *(a1 + 104) = 0;
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v6 = "Diversity log mode override: Log Disabled";
      goto LABEL_51;
    }

    if (std::string::compare(&__p, "LOG_DENIALS_3ANT"))
    {
      *(a1 + 100) = 0;
      v5 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v6 = "Warning: Diversity log mode override: Invalid.  Override disabled.";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &buf, 2u);
      goto LABEL_52;
    }

    *(a1 + 104) = 5;
  }

LABEL_52:
  v7 = sub_10000C798();
  if (!(*(*v7 + 152))(v7))
  {
    goto LABEL_69;
  }

  memset(&buf, 0, sizeof(buf));
  *(a1 + 228) = 1;
  sub_100007E30(&v29, "Diversity");
  sub_100007E30(v27, "DiversityAntennaConfig");
  *(a1 + 226) = (*(*a1 + 56))(a1, &v29, v27, &buf);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 226) == 1)
  {
    if (!std::string::compare(&buf, "DIVERSITY_ANT1"))
    {
      *(a1 + 228) = 1;
      v8 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v9 = "Diversity antenna configuration override: Diversity Antenna 1";
    }

    else if (!std::string::compare(&buf, "DIVERSITY_ANT2"))
    {
      *(a1 + 228) = 2;
      v8 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v9 = "Diversity antenna configuration override: Diversity Antenna 2";
    }

    else
    {
      *(a1 + 226) = 0;
      v8 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v9 = "Warning: Diversity antenna configuration override: Invalid.  Using default diversity antenna.";
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v29, 2u);
  }

LABEL_67:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_69:
  v10 = sub_10000C798();
  if ((*(*v10 + 160))(v10))
  {
    memset(&buf, 0, sizeof(buf));
    v26 = 0;
    sub_100007E30(&v29, "Diversity");
    sub_100007E30(v27, "Diversity2GThresholOverride");
    *(a1 + 172) = (*(*a1 + 56))(a1, &v29, v27, &buf);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 172) == 1)
    {
      sub_100007E30(&v29, "Diversity");
      sub_100007E30(v27, "Diversity2GRSSIThreshold");
      v11 = (*(*a1 + 88))(a1, &v29, v27, &v26);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v11)
      {
        *(a1 + 173) = v26;
      }
    }

    sub_100007E30(&v29, "Diversity");
    sub_100007E30(v27, "Diversity5GThresholdOverride");
    *(a1 + 174) = (*(*a1 + 56))(a1, &v29, v27, &buf);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 174) == 1)
    {
      sub_100007E30(&v29, "Diversity");
      sub_100007E30(v27, "Diversity5GRSSIThreshold");
      v12 = (*(*a1 + 88))(a1, &v29, v27, &v26);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        *(a1 + 175) = v26;
      }
    }

    sub_100007E30(&v29, "Diversity");
    sub_100007E30(v27, "EnableAntennaSwitchVSEConfig");
    v13 = (*(*a1 + 88))(a1, &v29, v27, &v26);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v13)
    {
      *(a1 + 176) = v26;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v14 = sub_10000C798();
  if ((*(*v14 + 168))(v14))
  {
    memset(&buf, 0, sizeof(buf));
    *(a1 + 236) = 0;
    sub_100007E30(&v29, "Diversity");
    sub_100007E30(v27, "BeamformingLogMode");
    *(a1 + 232) = (*(*a1 + 56))(a1, &v29, v27, &buf);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 232) != 1)
    {
      goto LABEL_115;
    }

    if (!std::string::compare(&buf, "BF_MRC_LOG_ENABLED"))
    {
      *(a1 + 236) = 1;
      v15 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v16 = "Beamforming log mode override: Log enabled";
    }

    else if (!std::string::compare(&buf, "BF_MRC_LOG_DISABLED"))
    {
      *(a1 + 236) = 0;
      v15 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v16 = "Beamforming log mode override: Log disabled";
    }

    else
    {
      *(a1 + 232) = 0;
      v15 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_115;
      }

      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      v16 = "Warning: Beamforming log mode override: Invalid. VSE Logging disabled.";
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v29, 2u);
LABEL_115:
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  *(a1 + 108) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v29, "DiversityPeripheralOverride");
  (*(*a1 + 72))(a1, &buf, &v29, a1 + 108);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 108) == 1)
  {
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Diversity peripheral override: Enabled.  Diversity can now be enabled when role is peripheral.", &buf, 2u);
    }
  }

  *(a1 + 109) = 0;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(&v29, "DiversityCoexLogEnabled");
  (*(*a1 + 72))(a1, &buf, &v29, a1 + 109);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 109) == 1)
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Diversity coex log: Enabled", &buf, 2u);
    }
  }

  memset(&v29, 0, sizeof(v29));
  *(a1 + 112) = 3;
  sub_100007E30(&buf, "Diversity");
  sub_100007E30(v27, "DiversityCoexCellOverride");
  *(a1 + 110) = (*(*a1 + 56))(a1, &buf, v27, &v29);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 110) == 1)
  {
    if (!std::string::compare(&v29, "CELL_OFF"))
    {
      *(a1 + 112) = 0;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v20 = "Diversity coex cell override: Cell off";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v29, "CELL_ON_ANT_0"))
    {
      *(a1 + 112) = 1;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v20 = "Diversity coex cell override: Cell on antenna 0";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v29, "CELL_ON_ANT_1"))
    {
      *(a1 + 112) = 2;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v20 = "Diversity coex cell override: Cell on antenna 1";
        goto LABEL_151;
      }
    }

    else if (!std::string::compare(&v29, "DISABLED"))
    {
      *(a1 + 112) = 3;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v20 = "Diversity coex cell override: Disabled";
        goto LABEL_151;
      }
    }

    else
    {
      *(a1 + 110) = 0;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v20 = "Warning: Diversity coex cell override: Invalid.  Override disabled.";
LABEL_151:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &buf, 2u);
      }
    }
  }

  sub_10040C0D0(a1, "DiversityCoexAFHMapOverride", (a1 + 116), a1 + 117, "AFH map");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC0B0Override", (a1 + 128), a1 + 129, "HAA map C0B0");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC0B1Override", (a1 + 139), a1 + 140, "HAA map C0B1");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC1B0Override", (a1 + 150), a1 + 151, "HAA map C1B0");
  sub_10040C0D0(a1, "DiversityCoexHAAMapC1B1Override", (a1 + 161), a1 + 162, "HAA map C1B1");
  v21 = sub_10000C7D0();
  if ((*(*v21 + 920))(v21, *(a1 + 109), *(a1 + 112), *(a1 + 116), a1 + 117) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100828C74();
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 139) == 1 && *(a1 + 150) == 1)
    {
      v22 = *(a1 + 161);
      *(a1 + 127) = v22;
      if (v22 == 1)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        *(buf.__r_.__value_.__r.__words + 2) = *(a1 + 129);
        WORD1(buf.__r_.__value_.__r.__words[1]) = *(a1 + 137);
        WORD2(buf.__r_.__value_.__r.__words[1]) = 256;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = *(a1 + 140);
        HIWORD(buf.__r_.__value_.__r.__words[2]) = *(a1 + 148);
        v33 = 512;
        v34 = *(a1 + 151);
        v35 = *(a1 + 159);
        v36 = 768;
        v23 = *(a1 + 162);
        v38 = *(a1 + 170);
        v37 = v23;
        v24 = sub_10000C7D0();
        if ((*(*v24 + 912))(v24, 4, &buf) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828CB0();
        }

        goto LABEL_169;
      }
    }

    else
    {
      *(a1 + 127) = 0;
    }

LABEL_167:
    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: Diversity coex HAA maps ignored: all 4 HAA maps must be set", &buf, 2u);
    }

    goto LABEL_169;
  }

  *(a1 + 127) = 0;
  if ((*(a1 + 139) & 1) != 0 || (*(a1 + 150) & 1) != 0 || *(a1 + 161) == 1)
  {
    goto LABEL_167;
  }

LABEL_169:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_10040045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004005E8(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = CFEqual(v2, @"VendorNonUI") != 0;
    if (CFEqual(v3, @"Vendor"))
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
LABEL_6:
  *(a1 + 360) = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = @"Vendor";
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "check Vendor build %@ %@ %d %d", &v7, 0x22u);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_10040074C(NSObject **a1)
{
  *(a1 + 252) = 0;
  v2 = a1 + 252;
  sub_100007E30(buf, "ExposureNotification");
  sub_100007E30(__p, "insecureDatabasePath");
  ((*a1)[9].isa)(a1, buf, __p, v2);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4 = *v2;
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "fInsecureDatabasePath is %d", buf, 8u);
  }

  *(a1 + 256) = 0;
  sub_100007E30(buf, "ExposureNotification");
  sub_100007E30(__p, "RequireEntitlementAndProfileOnInternalForLogging");
  ((*a1)[9].isa)(a1, buf, __p, a1 + 256);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v5 = ((*a1)[26].isa)(a1);
  *(a1 + 253) = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 256);
    v8 = *v2;
    *buf = 67109632;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    LOWORD(v22) = 1024;
    *(&v22 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "loading fENAppHasLoggingEntitlement:%d fRequireENLoggingProfileOnInternal:%d fInsecureDatabasePath:%d", buf, 0x14u);
  }

  *(a1 + 89) = CFPrefs_GetInt64() != 0;
  v18 = 0;
  sub_100007E30(buf, "HCI");
  sub_100007E30(__p, "lmpRouting");
  ((*a1)[9].isa)(a1, buf, __p, &v18);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  if (((*a1)[1].isa)(a1) & 1) != 0 || (((*a1)[3].isa)(a1) & 1) != 0 || (v18)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 89);
  }

  *(a1 + 241) = v9 & 1;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v11 = "disabled";
    if (v9)
    {
      v11 = "enabled";
    }

    v12 = "";
    if (*(a1 + 89))
    {
      v12 = " [cloud]";
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "LMP logging is %s%s", buf, 0x16u);
  }

  v13 = a1[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100400D04;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v13, block);
  result = ((*a1)[62].isa)(a1, 0);
  if (*(a1 + 88) == 1)
  {
    sub_10040DAF8(a1 + 8);
    sub_10040F628((a1 + 9));
    if (((*a1)[1].isa)(a1))
    {
      sub_1003FF2E8(a1);
    }

    ((*a1)[66].isa)(a1);
    ((*a1)[104].isa)(a1);
    v15 = sub_100017E6C();
    (*(*v15 + 48))(v15);
    v16 = sub_1000154A8();
    return (*(*v16 + 144))(v16);
  }

  return result;
}

void sub_100400CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100400D04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[254] = (*(*v1 + 240))(v1);
  v1[255] = (*(*v1 + 248))(v1);
  (*(*v1 + 256))(v1);
  sub_100404A30(v1);
  sub_100007E30(buf, "ControllerStatistics");
  sub_100007E30(&__p, "ControllerStatisticsEnabled");
  (*(*v1 + 72))(v1, buf, &__p, v1 + 201);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  memset(v125, 0, 14);
  v123 = 8;
  v124 = 1023;
  v121 = 0;
  v122 = 100000;
  v120 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "TimeStampPeriodically");
  (*(*v1 + 72))(v1, buf, &__p, v125);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "DisableDiagnosticsPeriodically");
  (*(*v1 + 72))(v1, buf, &__p, v125 + 1);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "CrashLoggingDisabled");
  (*(*v1 + 72))(v1, buf, &__p, v125 + 2);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryW1LogModule");
  (*(*v1 + 88))(v1, buf, &__p, &v124);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryW1LogLevel");
  (*(*v1 + 88))(v1, buf, &__p, &v123);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryLogPrintInterval");
  (*(*v1 + 88))(v1, buf, &__p, &v122);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "AccessoryLogPowerLoggingInterval");
  (*(*v1 + 88))(v1, buf, &__p, &v121);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "TriggerAccessoryW1AWD");
  (*(*v1 + 72))(v1, buf, &__p, &v120 + 1);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&__p, "DumpAccessoryW1TraceLog");
  (*(*v1 + 72))(v1, buf, &__p, &v120);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *(v125 + 3) = v124;
  BYTE5(v125[0]) = v123;
  *(v125 + 6) = v122;
  *(&v125[1] + 2) = v121;
  if (qword_100B51308 != -1)
  {
    sub_100828CEC();
  }

  sub_1004B3CFC(qword_100B51300, v125[0], LODWORD(v125[1]) | (WORD2(v125[1]) << 32));
  v118 = 0;
  v119 = 255;
  v117 = 2;
  v123 = 2;
  v124 = 255;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  __p = 0;
  v127 = 0;
  v128 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogDevice");
  (*(*v1 + 88))(v1, buf, &v109, &v119);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLog2Module");
  (*(*v1 + 88))(v1, buf, &v109, &v124);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogSubModule");
  (*(*v1 + 88))(v1, buf, &v109, &v118);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogType");
  (*(*v1 + 88))(v1, buf, &v109, &v117);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLog2Level");
  (*(*v1 + 88))(v1, buf, &v109, &v123);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogStart");
  (*(*v1 + 72))(v1, buf, &v109, &v116 + 1);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogStop");
  (*(*v1 + 72))(v1, buf, &v109, &v116);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogConfigSet");
  (*(*v1 + 72))(v1, buf, &v109, &v115 + 1);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogConfigGet");
  (*(*v1 + 72))(v1, buf, &v109, &v115);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogDump");
  (*(*v1 + 72))(v1, buf, &v109, &v114 + 1);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogDismiss");
  (*(*v1 + 72))(v1, buf, &v109, &v114);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryVSCCaptureTraceHistory");
  (*(*v1 + 72))(v1, buf, &v109, &v113 + 1);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryCoredumpEnable");
  (*(*v1 + 72))(v1, buf, &v109, &v113);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryCoredumpAACP");
  (*(*v1 + 72))(v1, buf, &v109, &v112 + 1);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryCoredumpDisable");
  (*(*v1 + 72))(v1, buf, &v109, &v112);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "AccessoryLogCommand");
  (*(*v1 + 56))(v1, buf, &v109, &__p);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v2 = v119;
  v3 = v124;
  v5 = v117;
  v4 = v118;
  v6 = v123;
  if (qword_100B51308 != -1)
  {
    sub_100828CEC();
  }

  sub_1004B3E20(qword_100B51300, (v5 << 24) | (v6 << 32) | (v4 << 16) | (v3 << 8) | v2);
  if (v120 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B442C(qword_100B51300, 0, 0);
  }

  if (HIBYTE(v120) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B3F1C();
  }

  if (HIBYTE(v116) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 1, 0);
  }

  if (v116 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 2, 0);
  }

  if (HIBYTE(v115) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 3, 0);
  }

  if (v115 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 4, 0);
  }

  if (HIBYTE(v114) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 5, 0);
  }

  if (v114 == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 6, 0);
  }

  if (HIBYTE(v113) == 1)
  {
    if (qword_100B51308 != -1)
    {
      sub_100828CEC();
    }

    sub_1004B22F4(qword_100B51300, 0, 7, 0);
  }

  if ((*(*v1 + 8))(v1))
  {
    if (v112 == 1)
    {
      if (qword_100B51308 != -1)
      {
        sub_100828CEC();
      }

      sub_1004B22F4(qword_100B51300, 0, 18, 0);
      sub_100007E30(buf, "AccessoryLogging");
      sub_100007E30(&v109, "AccessoryCoredumpDisable");
      (*(*v1 + 80))(v1, buf, &v109, 0);
      if (SHIBYTE(v111) < 0)
      {
        operator delete(v109);
      }

      if ((v131[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      if (v113 == 1)
      {
        if (qword_100B51308 != -1)
        {
          sub_100828CEC();
        }

        v7 = 16;
      }

      else
      {
        if (HIBYTE(v112) != 1)
        {
          goto LABEL_162;
        }

        if (qword_100B51308 != -1)
        {
          sub_100828CEC();
        }

        v7 = 17;
      }

      sub_1004B22F4(qword_100B51300, 0, v7, 0);
    }
  }

LABEL_162:
  v8 = HIBYTE(v128);
  if (v128 < 0)
  {
    v8 = v127;
  }

  if (v8)
  {
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(&v109, "AccessoryLogCommand");
    sub_100007E30(v107, "");
    (*(*v1 + 64))(v1, buf, &v109, v107);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v128 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = [NSString stringWithUTF8String:p_p];
    v11 = [NSCharacterSet characterSetWithCharactersInString:@", "];
    v12 = [v10 componentsSeparatedByCharactersInSet:v11];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 intValue];

      v15 = [v12 objectAtIndexedSubscript:1];
      v16 = [v15 intValue];

      if (qword_100B51308 != -1)
      {
        sub_100828CEC();
      }

      sub_1004B22F4(qword_100B51300, 0, v14, v16);
    }
  }

  v106 = 0;
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(&v109, "BBFCTimeLogging");
  (*(*v1 + 72))(v1, buf, &v109, &v106);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if ((v131[1] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v17 = sub_1004329F8();
  (*(*v17 + 16))(v17, v106);
  v1[220] = 0;
  v18 = sub_10000C798();
  if ((*(*v18 + 416))(v18))
  {
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "EnableUltraHighPriorityVSC");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 220);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if ((*(*v1 + 8))(v1))
  {
    v1[90] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v109, "EnableAudioLogging");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 90);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[90])
      {
        v20 = "enabled";
      }

      else
      {
        v20 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Audio Logging %{public}s", buf, 0xCu);
    }

    v1[91] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v109, "DisableEnhancedAudioLogging");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 91);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[91])
      {
        v22 = "enabled";
      }

      else
      {
        v22 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Audio Enhanced Logging %{public}s", buf, 0xCu);
    }

    v1[92] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(&v109, "DisableAdaptiveEncoderBitrate");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 92);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[92])
      {
        v24 = "enabled";
      }

      else
      {
        v24 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Audio Adaptive Encoder Bitrate %{public}s", buf, 0xCu);
    }

    v1[225] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "Disable3EDR");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 225);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[225])
      {
        v26 = "on";
      }

      else
      {
        v26 = "off";
      }

      *buf = 136446210;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Disable 3EDR packet type (force 2EDR instead) is %{public}s based on defaults write", buf, 0xCu);
    }

    v1[224] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "DisableAdaptivePacketType");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 224);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[224])
      {
        v28 = "enabled";
      }

      else
      {
        v28 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Audio Adaptive Packet type %{public}s", buf, 0xCu);
    }

    v1[177] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "DisableAudioTimeSync");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 177);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v29 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[177])
      {
        v30 = "enabled";
      }

      else
      {
        v30 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Audio Time Sync Disable %{public}s", buf, 0xCu);
    }

    v1[181] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "SubJitterBufferEnable");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 181);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v31 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[181])
      {
        v32 = "enabled";
      }

      else
      {
        v32 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sub Jitter Buffer %{public}s", buf, 0xCu);
    }

    v1[182] = 0;
    v33 = v1 + 182;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "AdaptiveEQEnable");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 182);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v34 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*v33)
      {
        v35 = "enabled";
      }

      else
      {
        v35 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Adaptive EQ %{public}s", buf, 0xCu);
    }

    v1[183] = 0;
    v36 = v1 + 183;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(&v109, "LoudnessCompensationEQEnable");
    (*(*v1 + 72))(v1, buf, &v109, v1 + 183);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v37 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*v36)
      {
        v38 = "enabled";
      }

      else
      {
        v38 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Loudness Compensation EQ %{public}s", buf, 0xCu);
    }

    v105 = 0;
    v104 = 0;
    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v109, "GyroJammingSimulationIsEnabledKey");
    (*(*v1 + 128))(v1, buf, &v109, &v105);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v109, "GyroJammingSimulationRightBudInfoKey");
    (*(*v1 + 128))(v1, buf, &v109, &v104 + 4);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100007E30(buf, "GyroJammingSimulationKey");
    sub_100007E30(&v109, "GyroJammingSimulationLeftBudInfoKey");
    (*(*v1 + 128))(v1, buf, &v109, &v104);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(v109);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v39 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v105;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      LOWORD(v130) = 1024;
      *(&v130 + 2) = HIDWORD(v104);
      HIWORD(v130) = 1024;
      *v131 = v104;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "DebugSettings::loadDebugSettings: Gyro jam simulation is enabled = %u, info version = %u, right bud is jammed = %u, left bud is jammed = %u", buf, 0x1Au);
    }

    v109 = 0;
    v110 = 0;
    v111 = 0;
    buf[0] = v105;
    sub_1000C89B4(&v109, buf);
    v40 = v110;
    if (v110 >= v111)
    {
      v42 = v109;
      v43 = (v110 - v109);
      v44 = v110 - v109 + 1;
      if (v44 < 0)
      {
        sub_1000C7698();
      }

      v45 = v111 - v109;
      if (2 * (v111 - v109) > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        operator new();
      }

      v47 = v110 - v109;
      *v43 = 1;
      v41 = v43 + 1;
      memcpy(0, v42, v47);
      v109 = 0;
      v110 = v43 + 1;
      v111 = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      *v110 = 1;
      v41 = v40 + 1;
    }

    v110 = v41;
    buf[0] = BYTE4(v104);
    sub_1000C89B4(&v109, buf);
    buf[0] = v104;
    sub_1000C89B4(&v109, buf);
    v48 = *v33;
    v49 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *v49 = 514;
    v49[2] = 9.445e21;
    v49[3] = v48;
    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    sub_1003344C8(off_100B50948, 1, 16, v49);
    free(v49);
    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    v50 = sub_100334688(off_100B50948);
    if (v50)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_100828D3C();
      }

      v51 = sub_1004DF834(qword_100B50AD8, v50);
      if (qword_100B50950 != -1)
      {
        sub_100828D14();
      }

      v52 = sub_100334610(v51);
      if (v52)
      {
        v53 = *v36;
        v54 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v54 = 258;
        *(v54 + 1) = v52 - 1;
        v54[2] = 2.1991e12;
        v54[3] = v53;
        if (qword_100B50950 != -1)
        {
          sub_100828D14();
        }

        sub_100330C90(off_100B50948, v50, 1, 16, v54);
        free(v54);
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828D64();
      }
    }

    *(v1 + 66) = 0;
    sub_100007E30(buf, "HFP");
    sub_100007E30(v107, "HfpUplinkMode");
    v55 = v1 + 264;
    (*(*v1 + 128))(v1, buf, v107, v1 + 264);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*v55 >= 3u)
    {
      *v55 = 0;
    }

    if (qword_100B50950 != -1)
    {
      sub_100828D14();
    }

    sub_100334370(off_100B50948, 34, *v55, 1u);
    v1[179] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DisableSoftwareVolume");
    (*(*v1 + 72))(v1, buf, v107, v1 + 179);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v56 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[179])
      {
        v57 = "enabled";
      }

      else
      {
        v57 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Software Volume Disable %{public}s", buf, 0xCu);
    }

    v1[180] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DisableVolumeUpdateToCM");
    (*(*v1 + 72))(v1, buf, v107, v1 + 180);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v58 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[180])
      {
        v59 = "enabled";
      }

      else
      {
        v59 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Direct volume rocker update to CMSession %{public}s", buf, 0xCu);
    }

    v1[178] = 0;
    if ((v1[177] & 1) == 0)
    {
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v107, "EnableRemoteAudioTimeSync");
      (*(*v1 + 72))(v1, buf, v107, v1 + 178);
      if (v108 < 0)
      {
        operator delete(v107[0]);
      }

      if ((v131[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v60 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[178])
      {
        v61 = "enabled";
      }

      else
      {
        v61 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Remote Audio Time Sync : %{public}s", buf, 0xCu);
    }

    v1[202] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicLatencyDebugDisable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 202);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[203] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicLatencyHighEnable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 203);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *(v1 + 51) = 0;
    v62 = (v1 + 204);
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicLatencyLowEnable");
    (*(*v1 + 88))(v1, buf, v107, v1 + 204);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    *(v1 + 53) = 100;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicAdaptiveLowJitterBufferCutoff");
    (*(*v1 + 88))(v1, buf, v107, v1 + 212);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[218] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicLatencyDefaultEnable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 218);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[219] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "SpatialProfileTuningEnable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 219);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[208] = 0;
    v63 = v1 + 208;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicAdaptiveLowJitterBufferDisable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 208);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[216] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicAdaptiveLowDebugJitterBufferEnable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 216);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[217] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DynamicAdaptiveLowJitterBufferLogging");
    (*(*v1 + 72))(v1, buf, v107, v1 + 217);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v64 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v65 = "enabled";
      if (*v63)
      {
        v66 = "disabled";
      }

      else
      {
        v66 = "enabled";
      }

      v67 = v1[216];
      if (v1[217])
      {
        v68 = "enabled";
      }

      else
      {
        v68 = "disabled";
      }

      *buf = 136446722;
      if (!v67)
      {
        v65 = "disabled";
      }

      *&buf[4] = v66;
      *&buf[12] = 2082;
      v130 = v68;
      *v131 = 2082;
      *&v131[2] = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Adaptive Low Latency is %{public}s, Logging is %{public}s DEBUG Low Latency is %{public}s", buf, 0x20u);
    }

    v1[221] = 0;
    sub_100007E30(buf, "A2DP");
    sub_100007E30(v107, "DisableSpatialOnMacOS");
    (*(*v1 + 72))(v1, buf, v107, v1 + 221);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v69 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v70 = "enabled";
      if (v1[202])
      {
        v70 = "disabled";
      }

      v71 = "NOT FORCED";
      v72 = v1[218];
      if (v1[203])
      {
        v73 = "FORCED";
      }

      else
      {
        v73 = "NOT FORCED";
      }

      v74 = v1[220];
      if (*v62 <= 0)
      {
        v75 = "NOT FORCED";
      }

      else
      {
        v75 = "FORCED";
      }

      v76 = v1[221];
      if (*v63)
      {
        v77 = "NOT FORCED";
      }

      else
      {
        v77 = "FORCED";
      }

      *buf = 136447746;
      if (v72)
      {
        v78 = "FORCED";
      }

      else
      {
        v78 = "NOT FORCED";
      }

      *&buf[4] = v70;
      *&buf[12] = 2080;
      v130 = v73;
      v79 = "FORCED OFF";
      *v131 = 2080;
      if (v74)
      {
        v71 = "FORCED";
      }

      *&v131[2] = v75;
      if (!v76)
      {
        v79 = "AUTO";
      }

      v132 = 2080;
      v133 = v77;
      v134 = 2080;
      v135 = v78;
      v136 = 2080;
      v137 = v71;
      v138 = 2080;
      v139 = v79;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "A2DP Dynamic Latency is %{public}s, it is %s into HLM, it is %s into LLM, it is %s into adaptive latency,it is %s into MLM Ultra High Priority VSC is %s Spatial On MacOS is %s", buf, 0x48u);
    }

    v80 = *v62;
    if (*v62 >= 1)
    {
      v81 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v80;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "A2DP Dynamic Latency JBL %i", buf, 8u);
      }
    }

    v1[222] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(v107, "EnableTailspinLogging");
    (*(*v1 + 72))(v1, buf, v107, v1 + 222);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v82 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[222])
      {
        v83 = "enabled";
      }

      else
      {
        v83 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "A2DP Tailspin logging %{public}s", buf, 0xCu);
    }

    v1[223] = 0;
    sub_100007E30(buf, "Audio");
    sub_100007E30(v107, "DisableOverwaitMitigaton");
    (*(*v1 + 72))(v1, buf, v107, v1 + 223);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v84 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[223])
      {
        v85 = "disabled";
      }

      else
      {
        v85 = "enabled";
      }

      *buf = 136446210;
      *&buf[4] = v85;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "A2DP Overwait Mitigation %{public}s", buf, 0xCu);
    }

    v1[242] = 0;
    sub_100007E30(buf, "BTPageScan");
    sub_100007E30(v107, "BTPageScanDisabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 242);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[242] == 1)
    {
      v86 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "BT Page Scan is explicitly disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "ForceAuthPassEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 243);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[243] == 1)
    {
      v87 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "GAPA force auth pass explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "ForceAuthFailEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 244);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[244] == 1)
    {
      v88 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "GAPA force auth fail explicitly enabled", buf, 2u);
      }
    }

    if ((*(*v1 + 8))(v1))
    {
      v1[245] = 0;
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "HideAuthFailEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 245);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[245] == 1)
    {
      v89 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "GAPA hide auth fail explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "ForceNonAppleMfgEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 246);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[246] == 1)
    {
      v90 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "GAPA force non Apple manufacturer explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "AuthEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 247);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v1[247] & 1) == 0)
    {
      v91 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "GAPA auth explicity disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "NonAuthEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 248);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v1[248] & 1) == 0)
    {
      v92 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "GAPA non-auth explicity disabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "ForceZeroEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 249);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[249] == 1)
    {
      v93 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "GAPA force zero device explicity enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "ForceInvalidCertsEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 250);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[250] == 1)
    {
      v94 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "GAPA force invalid certificate support explicitly enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "GAPA");
    sub_100007E30(v107, "SkipCertFailEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 251);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[251] == 1)
    {
      v95 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "GAPA skip certificate fail explicitly enabled", buf, 2u);
      }
    }

    v1[261] = 1;
    sub_100007E30(buf, "DebugLevel");
    sub_100007E30(v107, "EnableNotifyCrashes");
    (*(*v1 + 72))(v1, buf, v107, v1 + 261);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[262] = 0;
    sub_100007E30(buf, "XPC");
    sub_100007E30(v107, "XpcStackshotReportEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 262);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[263] = 0;
    sub_100007E30(buf, "XPC");
    sub_100007E30(v107, "XpcAbcReportEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 263);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v1[268] = 0;
    sub_100007E30(buf, "LEConnectedAudioServerModeKey");
    sub_100007E30(v107, "LEConnectedAudioServerModeEnable");
    (*(*v1 + 72))(v1, buf, v107, v1 + 268);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[268] == 1)
    {
      v96 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "LE Connected Audio Server Mode enabled", buf, 2u);
      }
    }

    sub_100007E30(buf, "LEConnectedAudioServerModeKey");
    sub_100007E30(v107, "LEConnectedAudioFakeCISStackCallbacksEnabled");
    (*(*v1 + 72))(v1, buf, v107, v1 + 269);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if ((v131[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v1[269] == 1)
    {
      v97 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "LE Connected Stack Bypass enabled", buf, 2u);
      }
    }

    if (_os_feature_enabled_impl())
    {
      *(v1 + 68) = 0;
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v107, "A2DPOverSniffJBL");
      v98 = (v1 + 272);
      (*(*v1 + 88))(v1, buf, v107, v1 + 272);
      if (v108 < 0)
      {
        operator delete(v107[0]);
      }

      if ((v131[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v99 = *v98;
      if ((*v98 - 301) <= 0xFFFFFEE1)
      {
        v99 = 60;
        *v98 = 60;
      }

      v100 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v99;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "JBL Value: %d", buf, 8u);
      }
    }

    if (_os_feature_enabled_impl())
    {
      *(v1 + 69) = 1;
      sub_100007E30(buf, "A2DP");
      sub_100007E30(v107, "A2DPOverSniffAACELDFrames");
      v101 = (v1 + 276);
      (*(*v1 + 88))(v1, buf, v107, v1 + 276);
      if (v108 < 0)
      {
        operator delete(v107[0]);
      }

      if ((v131[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v102 = *v101;
      if ((*v101 - 4) <= 0xFFFFFFFC)
      {
        v102 = 1;
        *v101 = 1;
      }

      v103 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v102;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Overriden AACELD Frame Count: %d", buf, 8u);
      }
    }

    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }
  }

  if (SHIBYTE(v128) < 0)
  {
    operator delete(__p);
  }
}

void sub_1004045A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_100404A30(uint64_t a1)
{
  v77 = 0;
  v76 = 0;
  sub_1003FDE90(a1, &v77 + 1, &v77, &v76);
  v2 = 4997400;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 3;
  v71 = 4997400;
  v70 = 0;
  v3 = (*(*a1 + 184))(a1);
  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "UnlimitedHCIFileSize");
  (*(*a1 + 72))(a1, buf, v96, &v73 + 1);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "RawAudioTrace");
  (*(*a1 + 72))(a1, buf, v96, &v75);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "HIDTrace");
  (*(*a1 + 72))(a1, buf, v96, &v74);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "AudioTimeSyncAudioLog");
  (*(*a1 + 72))(a1, buf, v96, &v74 + 1);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxFileSize");
  (*(*a1 + 72))(a1, buf, v96, &v73);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxTraces");
  (*(*a1 + 88))(a1, buf, v96, &v72);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "MaxFileSize");
  (*(*a1 + 88))(a1, buf, v96, &v71);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "HCITraces");
  sub_100007E30(v96, "HCISkipAuth");
  (*(*a1 + 72))(a1, buf, v96, &v70);
  if (v97 < 0)
  {
    operator delete(*v96);
  }

  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHIDLogging", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  keyExistsAndHasValidFormat = 0;
  v5 = CFPreferencesGetAppBooleanValue(@"enableHRMLogging", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v6 = v72;
  if (v72 < 0 || v71 <= 999999)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828DDC();
    }

    v71 = 4997400;
    v6 = 5;
    v72 = 5;
  }

  else
  {
    v2 = v71;
  }

  if (HIBYTE(v73) == 1 && (v73 & 1) == 0)
  {
    v2 = 200000000;
    v71 = 200000000;
  }

  v7 = qword_100BCE8D8;
  v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v9 = v76;
  if (v8)
  {
    *buf = 67111424;
    *&buf[4] = v75;
    LOWORD(v82) = 1024;
    *(&v82 + 2) = v74;
    HIWORD(v82) = 1024;
    *v83 = AppBooleanValue != 0;
    *&v83[4] = 1024;
    *&v83[6] = v2;
    v84 = 1024;
    v85 = v6;
    v86 = 1024;
    v87 = HIBYTE(v77);
    v88 = 1024;
    v89 = v77;
    v90 = 1024;
    v91 = HIBYTE(v74);
    v92 = 1024;
    v93 = v3;
    v94 = 1024;
    v95 = v76;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set HCI config raw:%d HID:%d developerEnableHIDLogging:%d size:%d files:%d liveTracing:%d fileTracing:%d timesync:%d logENPackets:%d hciLiteLogging:%d", buf, 0x3Eu);
    v2 = v71;
    v6 = v72;
  }

  sub_1001C341C(v75, v74 & 1 | (AppBooleanValue != 0), v5 != 0, v2, v6, SHIBYTE(v77), v77, SHIBYTE(v74), v3, v9 & 1);
  sub_1001C3964(v70);
  *buf = 0;
  v82 = 0;
  *v83 = 0;
  sub_100007E30(v96, "HCITraces");
  sub_100007E30(v79, "AutoDisableTime");
  if ((*(*a1 + 56))(a1, v96, v79, buf))
  {
    if (v83[7] >= 0)
    {
      v10 = v83[7];
    }

    else
    {
      v10 = v82;
    }

    if (v80 < 0)
    {
      operator delete(*v79);
    }

    if (v97 < 0)
    {
      operator delete(*v96);
      if (!v10)
      {
        goto LABEL_74;
      }
    }

    else if (!v10)
    {
      goto LABEL_74;
    }

    if (v83[7] >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v12 = CFStringCreateWithCString(0, v11, 0x600u);
    v13 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"HH:mm:ss MM-dd-yyyy");
    DateFromString = CFDateFormatterCreateDateFromString(0, v13, v12, 0);
    v15 = DateFromString;
    if (DateFromString)
    {
      v16 = *(a1 + 40);
      if (!v16 || CFDateCompare(DateFromString, v16, 0))
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          dispatch_suspend(v17);
        }

        else
        {
          v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
          *(a1 + 32) = v18;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100407628;
          handler[3] = &unk_100ADF8F8;
          handler[4] = a1;
          dispatch_source_set_event_handler(v18, handler);
          v19 = *(a1 + 32);
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100407664;
          v67[3] = &unk_100ADF8F8;
          v67[4] = a1;
          dispatch_source_set_cancel_handler(v19, v67);
        }

        v20 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = buf;
          if (v83[7] < 0)
          {
            v21 = *buf;
          }

          *v96 = 136315138;
          *&v96[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enabling HCI unlimited tracing auto-disable for %s", v96, 0xCu);
        }

        Current = CFAbsoluteTimeGetCurrent();
        v23 = CFDateCreate(0, Current);
        AbsoluteTime = CFDateGetAbsoluteTime(v15);
        v25 = CFDateGetAbsoluteTime(v23);
        CFRelease(v23);
        v26 = *(a1 + 32);
        v27 = dispatch_walltime(0, ((AbsoluteTime - v25) * 1000000000.0));
        dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        dispatch_resume(*(a1 + 32));
      }

      CFRelease(v15);
    }

    CFRelease(v13);
    CFRelease(v12);
  }

  else
  {
    if (v80 < 0)
    {
      operator delete(*v79);
    }

    if (v97 < 0)
    {
      operator delete(*v96);
    }
  }

LABEL_74:
  context = objc_autoreleasePoolPush();
  if (v77 == 1)
  {
    v28 = sub_1001C42E0();
    v29 = qword_100BCE8D8;
    if (v28)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully started HCI tracing", v96, 2u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828E74();
    }
  }

  else
  {
    v30 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
    CFDateFormatterSetFormat(v30, @"yyyy_MM_dd-HH_mm_ss");
    v57 = +[NSDate date];
    StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v30, v57);
    if (v9)
    {
      v32 = @"%@/bluetoothd-hcilite-%@.pklg";
    }

    else
    {
      v32 = @"%@/bluetoothd-hci-%@.pklg";
    }

    cf = StringWithDate;
    v33 = [NSString stringWithFormat:v32, qword_100B6D6B8, StringWithDate];
    CFRelease(v30);
    v59 = v33;
    v34 = v33;
    sub_1001C4774([v33 UTF8String]);
    v35 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Successfully stopped HCI tracing", v96, 2u);
    }

    v36 = +[NSFileManager defaultManager];
    v66 = 0;
    v37 = [v36 contentsOfDirectoryAtPath:qword_100B6D6B8 error:&v66];
    v38 = v66;
    v39 = v38;
    v58 = v37;
    if (v37 && !v38)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v40 = v37;
      v39 = 0;
      v41 = [v40 countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v41)
      {
        v42 = *v63;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v63 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v62 + 1) + 8 * i);
            v45 = [qword_100B6D6B8 stringByAppendingPathComponent:v44];
            if ([v36 isReadableFileAtPath:v45] && (objc_msgSend(v44, "pathExtension"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "lowercaseString"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", @"pklg"), v47, v46, v48))
            {
              v61 = v39;
              v49 = [v36 removeItemAtPath:v45 error:&v61];
              v50 = v61;

              v51 = qword_100BCE8D8;
              if (v49)
              {
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  *v96 = 138412290;
                  *&v96[4] = v45;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Deleted file: %@", v96, 0xCu);
                }
              }

              else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                v55 = [v50 localizedDescription];
                sub_100828E18(v55, v79, &v79[4], v51);
              }

              v39 = v50;
            }

            else
            {
              v52 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                v53 = v45;
                v54 = [v45 UTF8String];
                *v96 = 136315138;
                *&v96[4] = v54;
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "File %s is not readable.\n", v96, 0xCu);
              }
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v62 objects:v78 count:16];
        }

        while (v41);
      }
    }

    CFRelease(cf);
  }

  objc_autoreleasePoolPop(context);
  if ((v83[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }
}

void sub_10040579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  if (*(v17 - 185) < 0)
  {
    operator delete(*(v17 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_1004058F0(_BYTE *a1)
{
  v2 = sub_10000C7D0();
  if ((*(*v2 + 2768))(v2))
  {
    v7 = 0;
    sub_100007E30(buf, "SPMI");
    sub_100007E30(__p, "DebugControl");
    a1[259] = (*(*a1 + 128))(a1, buf, __p, &v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(*buf);
    }

    if (a1[259] == 1)
    {
      v3 = v7;
      if (v7 > 3)
      {
        a1[259] = 0;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100828EB0();
        }
      }

      else
      {
        a1[260] = v7;
        v4 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SPMI Debug Control is %{public}d", buf, 8u);
        }
      }
    }
  }
}

void sub_100405A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100405ACC(uint64_t a1)
{
  v2 = sub_10000E92C();
  if (!(*(*v2 + 8))(v2))
  {
    v4 = 0;
    return sub_1001BC09C(v4);
  }

  v3 = *(sub_10000C7D0() + 800) - 2000;
  v4 = v3 < 0x7D0;
  v12 = 0;
  sub_100007E30(buf, "Firmware");
  sub_100007E30(__p, "DisableAppleFwLogsCapture");
  v5 = (*(*a1 + 72))(a1, buf, __p, &v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      return sub_1001BC09C(v4);
    }
  }

  else if (!v5)
  {
    return sub_1001BC09C(v4);
  }

  v4 = (v3 < 0x7D0) & (v12 ^ 1u);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Default writes disabling AppleFwLogCapture", buf, 2u);
  }

  return sub_1001BC09C(v4);
}

void sub_100405C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100405C60(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      std::string::assign(a4, [v13 UTF8String]);
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

uint64_t sub_100405DB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = CFPreferencesCopyAppValue(v7, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = v15;
            sub_100007E30(__p, [v15 UTF8String]);
            sub_10034A52C(a3, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }

            v10 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10 & 1;
}

void sub_100405FE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    if (*(a4 + 23) >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    v13 = [NSString stringWithUTF8String:v12];
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    v15 = [NSString stringWithUTF8String:v14];
    [v11 setObject:v13 forKey:v15];

    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }
  }

  else
  {
    if (*(a4 + 23) >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    v18 = [NSString stringWithUTF8String:v17];
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    v20 = [NSString stringWithUTF8String:v19];
    v11 = [NSDictionary dictionaryWithObject:v18 forKey:v20];

    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }
  }

  v21 = [NSString stringWithUTF8String:v16];
  CFPreferencesSetAppValue(v21, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

void sub_100406258(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithBool:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithBool:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

void sub_1004064C0(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406728(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v13 floatValue];
      *a4 = v15;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

void sub_100406874(float a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 mutableCopy];
    *&v13 = a1;
    v14 = [NSNumber numberWithFloat:v13];
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = [NSString stringWithUTF8String:v15];
    [v12 setObject:v14 forKey:v16];

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }
  }

  else
  {
    *&v11 = a1;
    v18 = [NSNumber numberWithFloat:v11];
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    v20 = [NSString stringWithUTF8String:v19];
    v12 = [NSDictionary dictionaryWithObject:v18 forKey:v20];

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }
  }

  v21 = [NSString stringWithUTF8String:v17];
  CFPreferencesSetAppValue(v21, v12, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406AE4(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a4 = [v13 unsignedIntValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

void sub_100406C30(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100406E98(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a4 = [v13 unsignedLongLongValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

uint64_t sub_100406FE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = CFPreferencesCopyAppValue(v7, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = v15;
            sub_100007E30(__p, [v15 UTF8String]);
            sub_10034A52C(a3, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }

            v10 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10 & 1;
}

void sub_100407210(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
    v12 = [NSNumber numberWithUnsignedLongLong:a4];
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v11 setObject:v12 forKey:v14];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  else
  {
    v16 = [NSNumber numberWithUnsignedLongLong:a4];
    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    v18 = [NSString stringWithUTF8String:v17];
    v11 = [NSDictionary dictionaryWithObject:v16 forKey:v18];

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }
  }

  v19 = [NSString stringWithUTF8String:v15];
  CFPreferencesSetAppValue(v19, v11, @"com.apple.MobileBluetooth.debug");

  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");

  objc_autoreleasePoolPop(v7);
}

BOOL sub_100407478(_BYTE *a1)
{
  if (a1[254] & 1) != 0 || (a1[252])
  {
    return 1;
  }

  if ((*(*a1 + 8))(a1))
  {
    return 0;
  }

  v3 = qword_100BCEA28;

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_1004074F4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HCI tracing timer expired - disabling unlimited tracing", v7, 2u);
  }

  v3 = CFPreferencesCopyAppValue(@"HCITraces", @"com.apple.MobileBluetooth.debug");
  v4 = v3;
  if (v3 && (v5 = CFGetTypeID(v3), v5 == CFDictionaryGetTypeID()))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    CFDictionaryRemoveValue(MutableCopy, @"UnlimitedHCIFileSize");
    CFDictionaryRemoveValue(MutableCopy, @"MaxFileSize");
    CFDictionaryRemoveValue(MutableCopy, @"AutoDisableTime");
  }

  else
  {
    MutableCopy = 0;
  }

  CFPreferencesSetAppValue(@"HCITraces", MutableCopy, @"com.apple.MobileBluetooth.debug");
  CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
  sub_100404A30(a1);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_100407628(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_cancel(*(v1 + 32));

  sub_1004074F4(v1);
}

void sub_100407664(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_release(*(v1 + 32));
  *(v1 + 32) = 0;
}

void sub_100407690(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = 0;
  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupDelete");
  (*(*a1 + 72))(a1, buf, __p, &v30);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(*buf);
  }

  if (v30 == 1)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup"];

    if (v5)
    {
      v6 = +[NSFileManager defaultManager];
      v7 = [v6 removeItemAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" error:0];

      if (v7)
      {
        v8 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delete FW logging files under: %@", buf, 0xCu);
        }

        sub_100007E30(buf, "FWStreamLogging");
        sub_100007E30(__p, "FWStreamLoggingBackupDelete");
        (*(*a1 + 80))(a1, buf, __p, 0);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  v27 = 0;
  if (sub_10009B9DC() == 8)
  {
    v9 = sub_10000E92C();
    v27 = (*(*v9 + 8))(v9) != 0;
  }

  v26 = 1;
  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupEnable");
  (*(*a1 + 72))(a1, buf, __p, &v27);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(*buf);
  }

  sub_100007E30(buf, "FWStreamLogging");
  sub_100007E30(__p, "FWStreamLoggingBackupAutoCleanup");
  (*(*a1 + 72))(a1, buf, __p, &v26);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(*buf);
  }

  v10 = qword_100B6D6D0;
  if (v27)
  {
    if (!qword_100B6D6D0)
    {
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enable fwLogsBackupTimer", buf, 2u);
      }

      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
      qword_100B6D6D0 = v12;
      v13 = dispatch_time(0, 0);
      dispatch_source_set_timer(v12, v13, 0x6FC23AC00uLL, 0xF4240uLL);
      v14 = qword_100B6D6D0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100407D50;
      v24[3] = &unk_100ADF820;
      v25 = v3;
      dispatch_source_set_event_handler(v14, v24);
      dispatch_activate(qword_100B6D6D0);
    }

    v15 = qword_100B6D6D8;
    if (v26 == 1)
    {
      if (!qword_100B6D6D8)
      {
        v16 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Enable fwLogsCleanupTimer", buf, 2u);
        }

        v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
        qword_100B6D6D8 = v17;
        v18 = dispatch_time(0, 0);
        dispatch_source_set_timer(v17, v18, 0x34630B8A000uLL, 0x3B9ACA00uLL);
        dispatch_source_set_event_handler(qword_100B6D6D8, &stru_100AF3428);
        dispatch_activate(qword_100B6D6D8);
      }

      goto LABEL_47;
    }

    if (!qword_100B6D6D8)
    {
      goto LABEL_47;
    }

    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disable fwLogsCleanupTimer", buf, 2u);
      v15 = qword_100B6D6D8;
    }

    v22 = v15;
LABEL_46:
    dispatch_source_cancel(v22);
    dispatch_release(qword_100B6D6D8);
    qword_100B6D6D8 = 0;
    goto LABEL_47;
  }

  if (qword_100B6D6D0)
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disable fwLogsBackupTimer", buf, 2u);
      v10 = qword_100B6D6D0;
    }

    dispatch_source_cancel(v10);
    dispatch_release(qword_100B6D6D0);
    qword_100B6D6D0 = 0;
  }

  v20 = qword_100B6D6D8;
  if (qword_100B6D6D8)
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Disable fwLogsCleanupTimer", buf, 2u);
      v20 = qword_100B6D6D8;
    }

    v22 = v20;
    goto LABEL_46;
  }

LABEL_47:
}

void sub_100407CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100407D50(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fwLogsBackupTimer timeout", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v29 = 0;
  [v3 createDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" withIntermediateDirectories:1 attributes:0 error:&v29];
  v4 = v29;

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828F3C();
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = +[NSFileManager defaultManager];
    v6 = [NSURL fileURLWithPath:*(a1 + 32) isDirectory:1];
    obj = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:4 error:0];

    v4 = 0;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v7)
    {
      v8 = *v26;
      do
      {
        v9 = 0;
        v10 = v4;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * v9);
          v12 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found FW logging file: %@", buf, 0xCu);
          }

          v13 = [(__CFString *)v11 lastPathComponent];
          v14 = [NSString stringWithFormat:@"%@/%@", @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup", v13];

          v15 = +[NSFileManager defaultManager];
          v16 = [v15 fileExistsAtPath:v14];

          if (v16)
          {
            v17 = +[NSFileManager defaultManager];
            v18 = [v17 removeItemAtPath:v14 error:0];

            if (v18)
            {
              v19 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v14;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delete duplicated FW logging file: %@", buf, 0xCu);
              }
            }
          }

          v20 = +[NSFileManager defaultManager];
          v21 = [NSURL fileURLWithPath:v14];
          v24 = v10;
          [v20 copyItemAtURL:v11 toURL:v21 error:&v24];
          v4 = v24;

          if (v4)
          {
            v22 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = @"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup";
              v32 = 2112;
              v33 = v4;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Copying file to %@ with error %@", buf, 0x16u);
            }
          }

          v9 = v9 + 1;
          v10 = v4;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v7);
    }
  }
}

void sub_1004081E8(id a1)
{
  v33 = +[NSFileManager defaultManager];
  v28 = [v33 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" error:0];
  v30 = +[NSMutableArray array];
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  obj = v28;
  v1 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v1)
  {
    v31 = 0;
    v2 = 0;
    v3 = *v42;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v42 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [@"/private/var/mobile/Library/Logs/Bluetooth/FWlogBackup" stringByAppendingPathComponent:*(*(&v41 + 1) + 8 * i)];
        v40 = 0;
        [v33 fileExistsAtPath:v5 isDirectory:&v40];
        if ((v40 & 1) == 0)
        {
          v39 = v2;
          v6 = [v33 attributesOfItemAtPath:v5 error:&v39];
          v7 = v39;

          if (v7)
          {
            v8 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              v9 = [v7 localizedDescription];
              *buf = 138412546;
              v47 = v5;
              v48 = 2112;
              v49 = v9;
              _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error getting attributes for file at path: %@, Error: %@", buf, 0x16u);
            }
          }

          else
          {
            v10 = [v6 objectForKeyedSubscript:NSFileCreationDate];
            v11 = [v6 objectForKeyedSubscript:NSFileSize];
            v12 = [v11 unsignedLongLongValue];

            v50[0] = @"filePath";
            v50[1] = @"creationDate";
            v51[0] = v5;
            v51[1] = v10;
            v50[2] = @"fileSize";
            v13 = [NSNumber numberWithUnsignedLongLong:v12];
            v51[2] = v13;
            v14 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
            [v30 addObject:v14];

            v31 += v12;
          }

          v2 = v7;
        }
      }

      v1 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v1);
  }

  else
  {
    v31 = 0;
    v2 = 0;
  }

  [v30 sortedArrayUsingComparator:&stru_100AF3468];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v29 = v36 = 0u;
  v15 = [v29 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v15)
  {
    v16 = *v36;
    while (2)
    {
      v17 = 0;
      v18 = v2;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v29);
        }

        if (v31 < 0x280000001)
        {
          v2 = v18;
          goto LABEL_34;
        }

        v19 = *(*(&v35 + 1) + 8 * v17);
        v20 = [v19 objectForKeyedSubscript:@"filePath"];
        v21 = [v19 objectForKeyedSubscript:@"fileSize"];
        v22 = [v21 unsignedLongLongValue];

        v34 = v18;
        v23 = [v33 removeItemAtPath:v20 error:&v34];
        v2 = v34;

        if (v2)
        {
          v23 = 0;
        }

        v24 = qword_100BCE8D8;
        v25 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            *buf = 138412546;
            v47 = v20;
            v48 = 2048;
            v49 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleted file: %@ (size: %llu bytes)", buf, 0x16u);
          }

          v31 -= v22;
        }

        else if (v25)
        {
          v26 = [v2 localizedDescription];
          *buf = 138412546;
          v47 = v20;
          v48 = 2112;
          v49 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error deleting file at path: %@, Error: %@", buf, 0x16u);
        }

        v17 = v17 + 1;
        v18 = v2;
      }

      while (v15 != v17);
      v15 = [v29 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Final total size: %llu bytes", buf, 0xCu);
  }
}

int64_t sub_1004088A0(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"creationDate"];
  v6 = [v4 objectForKeyedSubscript:@"creationDate"];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_100408920(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10040894C(_BYTE *a1, int a2)
{
  v4 = sub_10000E92C();
  a1[200] = (*(*v4 + 16))(v4);
  v5 = a1 + 200;
  sub_100007E30(&buf, "FWStreamLogging");
  sub_100007E30(__p, "FWCoreDumpEnable");
  (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1001BBF78(a1[200]);
  if ((a1[88] & 1) == 0)
  {
    return;
  }

  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (a2)
    {
      v6 = sub_10000E92C();
      LOBYTE(v59[0]) = (*(*v6 + 8))(v6);
      sub_100007E30(&buf, "FWStreamLogging");
      sub_100007E30(__p, "FWEnhancedLoggingEnable");
      (*(*a1 + 72))(a1, &buf, __p, v59);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v7 = LOBYTE(v59[0]);
      a1[184] = v59[0];
      if (v7 == 1)
      {
        v8 = sub_10000C7D0();
        if ((*(*v8 + 1440))(v8, 255, 1, 1, 0, 8, 1))
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100828FBC();
          }
        }
      }
    }

    v9 = sub_10000E92C();
    *v5 = (*(*v9 + 16))(v9);
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWCoreDumpEnable");
    (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_1001BBF78(a1[200]);
    sub_100407690(a1, @"/private/var/log/CoreCapture/com.apple.driver.AppleCentauriBeta/BetaFirmwareLogs");
    return;
  }

  if (*(sub_10000C7D0() + 800) >> 3 < 0x271u || *(sub_10000C7D0() + 800) >> 4 > 0x176u)
  {
    sub_10000C7D0();
    if (sub_100410F0C())
    {
      v20 = sub_10000E92C();
      LOBYTE(v59[0]) = (*(*v20 + 8))(v20);
      sub_100007E30(&buf, "Enable FW Logs");
      sub_100007E30(__p, "FWEnhancedLoggingEnable");
      v21 = (*(*a1 + 72))(a1, &buf, __p, v59);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v22 = a1[184];
      v23 = v22 != LOBYTE(v59[0]);
      if (v22 != LOBYTE(v59[0]))
      {
        a1[184] = v59[0];
      }

      v24 = sub_10000C798();
      v26 = (*(*v24 + 416))(v24) && (v25 = sub_10000E92C(), (*(*v25 + 8))(v25)) && *(sub_10000C7D0() + 800) > 0x16u;
      if (a1[184] == 1)
      {
        if (*(sub_10000C7D0() + 800) == 15)
        {
          v27 = 2048;
        }

        else
        {
          v27 = 3072;
        }

        if (*(a1 + 47) != v27)
        {
          *(a1 + 47) = v27;
          v23 = 1;
        }

        if (*(a1 + 48) != 4)
        {
          *(a1 + 48) = 4;
          v23 = 1;
        }

        v70 = v26;
        v69 = v26;
        v68 = v26;
        v67 = 0;
        v66 = v26;
        v65 = v26;
        v64 = 0;
        v63 = 0;
        v62 = v26;
        v61 = 0;
        sub_100007E30(&buf, "Route to HCI");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v70);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v28 = v70;
        sub_100007E30(&buf, "Log Level Lite");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v69);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v29 = v69;
        sub_100007E30(&buf, "Log Level Advanced");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v68);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v30 = v68;
        sub_100007E30(&buf, "Voice");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v67);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v31 = v67;
        sub_100007E30(&buf, "CoEx");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v66);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v32 = v66;
        sub_100007E30(&buf, "CoEx1");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v65);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v56 = v65;
        sub_100007E30(&buf, "CoEx2");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v64 + 1);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v55 = HIBYTE(v64);
        sub_100007E30(&buf, "LTE CoEx");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v64);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v54 = v64;
        sub_100007E30(&buf, "Apipe");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v63);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v53 = v63;
        sub_100007E30(&buf, "Non Connection");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v62);
        v52 = v32;
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        v33 = v31;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v34 = v62;
        sub_100007E30(&buf, "Scan Core");
        v51 = a2;
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        v35 = v26;
        (*(*a1 + 72))(a1, &buf, __p, &v61 + 1);
        v36 = v23;
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        v37 = v21;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v38 = HIBYTE(v61);
        sub_100007E30(&buf, "HP Link");
        sub_100007E30(__p, "FWEnhancedLoggingEnable");
        (*(*a1 + 72))(a1, &buf, __p, &v61);
        v39 = v28 | (2 * v29) | (4 * v30) | (8 * v33) | (16 * v52) | (32 * v56) | (v55 << 6) | (v54 << 7) | (v53 << 8) | (v34 << 9);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        v40 = v39 | (v38 << 10);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v41 = v40 | (v61 << 12);
        v21 = v37;
        v23 = v36;
        if (*(a1 + 49) != v41)
        {
          *(a1 + 49) = v41;
          v23 = 1;
        }

        v26 = v35;
        a2 = v51;
      }

      if (v23 || a2)
      {
        if (a1[184] == 1)
        {
          v42 = sub_10000C7D0();
          (*(*v42 + 1280))(v42, 0, 0, 0);
        }

        v43 = sub_10000C7D0();
        (*(*v43 + 1280))(v43, a1[184], *(a1 + 47), *(a1 + 48));
        if (a1[184] == 1)
        {
          v44 = sub_10000C7D0();
          if ((v21 | v26))
          {
            v45 = *(a1 + 49);
          }

          else
          {
            v45 = 2;
          }

          (*(*v44 + 3960))(v44, v45);
        }
      }
    }

    v70 = 0;
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWStreamLoggingTriggerLogDump");
    (*(*a1 + 72))(a1, &buf, __p, &v70);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v70 != 1)
    {
LABEL_146:
      v69 = 0;
      sub_100007E30(&buf, "FWStreamLogging");
      sub_100007E30(__p, "FWCoreDumpTrigger");
      (*(*a1 + 72))(a1, &buf, __p, &v69);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (!v69)
      {
        return;
      }

      sub_100007E30(&buf, "FWStreamLogging");
      sub_100007E30(__p, "FWCoreDumpTrigger");
      (*(*a1 + 80))(a1, &buf, __p, 0);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      memset(&buf, 0, sizeof(buf));
      sub_100007E30(__p, "FWStreamLogging");
      sub_100007E30(v59, "FWCoreDumpReason");
      v49 = (*(*a1 + 56))(a1, __p, v59, &buf);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      if (v72 < 0)
      {
        operator delete(__p[0]);
        if (v49)
        {
LABEL_162:
          block[0] = _NSConcreteStackBlock;
          block[1] = 3321888768;
          block[2] = sub_100409E40;
          block[3] = &unk_100AF3488;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100008904(&v58, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            v58 = buf;
          }

          global_queue = dispatch_get_global_queue(0, 0);
          dispatch_async(global_queue, block);
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          return;
        }
      }

      else if (v49)
      {
        goto LABEL_162;
      }

      std::string::assign(&buf, "Manually triggered core dump");
      goto LABEL_162;
    }

    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWStreamLoggingTriggerLogDump");
    (*(*a1 + 80))(a1, &buf, __p, 0);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    memset(&buf, 0, sizeof(buf));
    sub_100007E30(__p, "FWStreamLogging");
    sub_100007E30(v59, "FWStreamLoggingLogDumpReason");
    v47 = (*(*a1 + 56))(a1, __p, v59, &buf);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (v72 < 0)
    {
      operator delete(__p[0]);
      if (v47)
      {
        goto LABEL_141;
      }
    }

    else if (v47)
    {
LABEL_141:
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      (*(*a1 + 504))(a1, p_buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    std::string::assign(&buf, "Manually triggered log dump");
    goto LABEL_141;
  }

  v10 = sub_10000E92C();
  *v5 = (*(*v10 + 16))(v10);
  sub_100007E30(&buf, "FWStreamLogging");
  sub_100007E30(__p, "FWCoreDumpEnable");
  (*(*a1 + 72))(a1, &buf, __p, a1 + 200);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1001BBF78(a1[200]);
  sub_100407690(a1, @"/private/var/log/CoreCapture/com.apple.KalBluetooth_driver/FwLogs");
  if (a2)
  {
    v11 = sub_10000E92C();
    v70 = (*(*v11 + 16))(v11);
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWEnhancedLoggingEnable");
    (*(*a1 + 72))(a1, &buf, __p, &v70);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v12 = v70;
    a1[184] = v70;
    if (v12 != 1)
    {
      v46 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v17 = "SRS FW log disabled";
      v18 = v46;
      v19 = 2;
      goto LABEL_122;
    }

    LODWORD(v59[0]) = 2;
    sub_100007E30(&buf, "FWStreamLogging");
    sub_100007E30(__p, "FWLogLevel");
    (*(*a1 + 128))(a1, &buf, __p, v59);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v13 = sub_10000C7D0();
    (*(*v13 + 4200))(v13, 0, 2);
    if (LODWORD(v59[0]))
    {
      v14 = sub_10000C7D0();
      (*(*v14 + 4208))(v14);
      v15 = sub_10000C7D0();
      (*(*v15 + 4200))(v15, LOBYTE(v59[0]), 2);
    }

    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v59[0];
      v17 = "SRS FW log enabled, logLevel = %d";
      v18 = v16;
      v19 = 8;
LABEL_122:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &buf, v19);
    }
  }
}

void sub_100409CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_100409E40(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100828C38();
  }

  v2 = off_100B50A98;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__dst, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__dst = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  sub_100007E30(__p, "");
  sub_1005A24D4(v2, 3703, __dst, 0, 0, 0, __p);
}

void sub_100409F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100409F34(IOBTDebug *a1)
{
  if (*(a1 + 184) == 1)
  {
    IOBTDebug::create(a1);
  }

  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FW log streaming disabled, skipping BTDebug log dump", v2, 2u);
  }
}

void sub_100409FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003E772C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10040A014(_BYTE *a1, int a2, char *a3, void *a4)
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = -536870186;
  sub_10000C7D0();
  v8 = sub_100410F0C();
  if (v8 && a1[200] == 1)
  {
    IOBTDebug::create(v8);
  }

  sub_10000C7D0();
  if (sub_100410F34() && a1[200] == 1)
  {
    connect = 0;
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "triggerPcieCoreDump";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    values = @"AppleSunriseBluetooth";
    keys = @"IOUserClass";
    v10 = sub_10022EB48(&keys, &values, 1);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v10);
    v12 = MatchingService;
    if (!MatchingService)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PCIe could not find AppleSunriseBluetooth service", buf, 2u);
      }

      goto LABEL_61;
    }

    v13 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v13)
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "triggerPcieCoreDump";
        *&buf[12] = 1024;
        *&buf[14] = v13;
        v15 = v14;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s failed: %#x", buf, 0x12u);
      }
    }

    else
    {
      v19 = IOConnectCallScalarMethod(connect, 4u, 0, 0, 0, 0);
      v20 = qword_100BCE8D8;
      v21 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v19)
      {
        if (v21)
        {
          *buf = 136315138;
          *&buf[4] = "triggerPcieCoreDump";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Done...", buf, 0xCu);
        }

        if (a2 == 1214)
        {
          v22 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "triggerPcieCoreDump";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: FW Crash - Checking for AppleSunriseFWDumpReason", buf, 0xCu);
          }

          v23 = 0;
          while (1)
          {
            v24 = IORegistryEntrySearchCFProperty(v12, "IOService", @"AppleSunriseFWDumpReason", kCFAllocatorDefault, 1u);
            v25 = v24;
            if (!v24)
            {
              break;
            }

            CStringPtr = CFStringGetCStringPtr(v24, 0x600u);
            v27 = CStringPtr;
            if (!CStringPtr)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_1008290BC();
              }

              goto LABEL_58;
            }

            if (*CStringPtr)
            {
              memset(__dst, 0, sizeof(__dst));
              strlcpy(__dst, CStringPtr, 0x80uLL);
              v30 = strtok(__dst, "-");
              v65 = 0;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              memset(v52, 0, sizeof(v52));
              memset(buf, 0, sizeof(buf));
              sub_100007AD0(buf);
              __p[0] = 0;
              __p[1] = 0;
              v41 = 0;
              sub_100007E30(__p, v30);
              sub_10050DFDC(__p);
              v31 = *&buf[16];
              *&buf[*(*&buf[16] - 24) + 24] = *&buf[*(*&buf[16] - 24) + 24] & 0xFFFFFFB5 | 8;
              *&buf[*(v31 - 24) + 24] |= 0x4000u;
              v32 = &buf[*(v31 - 24) + 16];
              if (*(v32 + 36) == -1)
              {
                std::ios_base::getloc(&buf[*(v31 - 24) + 16]);
                v33 = std::locale::use_facet(&v38, &std::ctype<char>::id);
                (v33->__vftable[2].~facet_0)(v33, 32);
                std::locale::~locale(&v38);
              }

              *(v32 + 36) = 48;
              std::ostream::operator<<();
              v34 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                std::stringbuf::str();
                v35 = v39 >= 0 ? &v38 : v38.__locale_;
                *v47 = 136315394;
                v48 = v35;
                v49 = 2080;
                v50 = v27;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "fwCrashSignature (%s) %s\n", v47, 0x16u);
                if (v39 < 0)
                {
                  operator delete(v38.__locale_);
                }
              }

              if (SHIBYTE(v41) < 0)
              {
                operator delete(__p[0]);
              }

              *&buf[16] = v36;
              if (SHIBYTE(v54) < 0)
              {
                operator delete(*(&v53 + 1));
              }

              std::locale::~locale(v52);
              std::iostream::~basic_iostream();
              std::ios::~ios();
LABEL_58:
              CFRelease(v25);
              goto LABEL_59;
            }

            v28 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "triggerPcieCoreDump";
              *&buf[12] = 1024;
              *&buf[14] = v23;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: fwCrashSignature is empty, retry count = %d\n", buf, 0x12u);
            }

            usleep(0x2710u);
            if (++v23 == 20)
            {
              goto LABEL_58;
            }
          }

          v29 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "triggerPcieCoreDump";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: Checking for AppleSunriseFWDumpReason - fwProperty not found", buf, 0xCu);
          }
        }

LABEL_59:
        *(v44 + 6) = 0;
        goto LABEL_60;
      }

      if (v21)
      {
        *buf = 136315394;
        *&buf[4] = "triggerPcieCoreDump";
        *&buf[12] = 1024;
        *&buf[14] = v19;
        v15 = v20;
        goto LABEL_27;
      }
    }

LABEL_60:
    IOObjectRelease(v12);
LABEL_61:
    if (connect)
    {
      IOServiceClose(connect);
    }

LABEL_63:
    v17 = 1;
    goto LABEL_64;
  }

  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (sub_1001A63E4(a3, 1, a1[200], a4) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100829034();
    }

    *(v44 + 6) = 0;
    goto LABEL_63;
  }

  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FW PCIe core dumps disabled or not supported", buf, 2u);
  }

  v17 = 0;
LABEL_64:
  if (*(v44 + 6))
  {
    (*(*a1 + 504))(a1, a3);
  }

  _Block_object_dispose(&v43, 8);
  return v17;
}

void sub_10040AAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_10040ABAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) = a2;
  dispatch_group_leave(v3);
}

void sub_10040ABBC(void *a1, uint64_t a2)
{
  v3 = objc_retainBlock(a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PCIe core dump complete: 0x%08X", v5, 8u);
  }

  v3[2](v3, a2);
}

void sub_10040ACA0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 67109376;
    v15 = v3;
    v16 = 2048;
    v17 = qword_100B6D6E0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setDoubleHeightStatusBar: %d %p", &v14, 0x12u);
  }

  v4 = dword_100B6D6F8;
  if (!dword_100B6D6F8)
  {
    v4 = getpid();
    dword_100B6D6F8 = v4;
  }

  v5 = qword_100B6D6E0;
  if (v4)
  {
    v6 = qword_100B6D6E0 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [SBSStatusBarStyleOverridesAssertion assertionWithStatusBarStyleOverrides:0x200000 forPID:v4 exclusive:0 showsWhenForeground:1];
    v8 = qword_100B6D6E0;
    qword_100B6D6E0 = v7;

    LODWORD(v4) = dword_100B6D6F8;
    v5 = qword_100B6D6E0;
  }

  if (v4 && v5)
  {
    if (*(a1 + 32) == 1)
    {
      if (qword_100B6D6F0)
      {
        [qword_100B6D6F0 invalidate];
        v9 = qword_100B6D6F0;
        qword_100B6D6F0 = 0;
      }

      if ((byte_100B6D6E8 & 1) == 0)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Acquire assertion", &v14, 2u);
        }

        [qword_100B6D6E0 acquireWithHandler:&stru_100AF3500 invalidationHandler:&stru_100AF3520];
        [qword_100B6D6E0 setStatusString:@"Recording Bluetooth Data"];
      }
    }

    else if (byte_100B6D6E8 == 1 && !qword_100B6D6F0)
    {
      v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_100AF3560 block:2.0];
      v13 = qword_100B6D6F0;
      qword_100B6D6F0 = v12;
    }
  }

  else
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Couldn't get pid: %d or assertion: %p", &v14, 0x12u);
    }
  }
}

void sub_10040AF0C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SBSStatusBarStyleOverridesAssertion: Acquire handler, acquired: %d", v4, 8u);
  }

  byte_100B6D6E8 = v2;
}

void sub_10040AFB8(id a1)
{
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SBSStatusBarStyleOverridesAssertion: Invalidation handler", v2, 2u);
  }

  byte_100B6D6E8 = 0;
}

void sub_10040B028(id a1, NSTimer *a2)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating assert", v3, 2u);
  }

  [qword_100B6D6E0 invalidate];
  byte_100B6D6E8 = 0;
}

uint64_t sub_10040B0CC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B15C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D700 != -1)
  {
    dispatch_once(&qword_100B6D700, block);
  }

  return byte_100B6D6FC;
}

void sub_10040B15C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForcePhyStats");
  v3 = (*(*v2 + 72))(v2, buf, __p, &byte_100B6D6FC);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6D6FC)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Forcing PHY Stats - %{public}s", buf, 0xCu);
  }

  *(v1 + 201) = byte_100B6D6FC;
}

void sub_10040B2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B2FC()
{
  if (qword_100B6D710 != -1)
  {
    sub_100829264();
  }

  return byte_100B6D708;
}

void sub_10040B334(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceLatencyStats");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D708);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6D708)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing Latency Stats - %{public}s", buf, 0xCu);
  }
}

void sub_10040B484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B4C0(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B550;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D720 != -1)
  {
    dispatch_once(&qword_100B6D720, block);
  }

  return byte_100B6D718;
}

void sub_10040B550(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ScanAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D718 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "LEScanAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ScanDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ScanDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D718 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "LEScanAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040B84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040B898(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040B928;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D730 != -1)
  {
    dispatch_once(&qword_100B6D730, block);
  }

  return byte_100B6D728;
}

void sub_10040B928(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ConnectionScanAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D728 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "LEConnectionScanAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConnectionScanDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D728 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "LEConnectionScanAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040BC70(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040BD00;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  if (qword_100B6D740 != -1)
  {
    dispatch_once(&qword_100B6D740, block);
  }

  return byte_100B6D738;
}

void sub_10040BD00(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "advAllowListEnabled");
  (*(*v2 + 72))(v2, buf, __p, &v12 + 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (HIBYTE(v12))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AdvAllowList is %s", buf, 0xCu);
  }

  if (HIBYTE(v12) == 1)
  {
    byte_100B6D738 = 1;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "AdvAgentList");
    (*(*v5 + 48))(v5, buf, *(a1 + 32));
    goto LABEL_23;
  }

  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AdvDenyListEnabled");
  (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AdvDenyList is %s", buf, 0xCu);
  }

  if (v12 == 1)
  {
    byte_100B6D738 = 2;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "AdvAgentList");
    (*(*v9 + 48))(v9, buf, *(a1 + 32));
LABEL_23:
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10040BFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040C0D0(uint64_t a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  memset(&__str, 0, sizeof(__str));
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_100007E30(buf, "Diversity");
  sub_100007E30(__p, a2);
  v10 = (*(*a1 + 56))(a1, buf, __p, &__str);
  *a3 = v10;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  if (*a3 == 1)
  {
    if (sub_10040C308(v10, &__str, a4))
    {
      v11 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = a5;
      v21 = 2080;
      v22 = p_str;
      v13 = "Diversity coex %s override: %s";
      v14 = v11;
      v15 = 22;
    }

    else
    {
      *a3 = 0;
      v16 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315138;
      *&buf[4] = a5;
      v13 = "Warning: Diversity coex %s override: Invalid.  Override disabled.";
      v14 = v16;
      v15 = 12;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

LABEL_14:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10040C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10040C308(int a1, std::string *__str, uint64_t a3)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size == 20)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v15 = 0;
    v14 = 0;
    while (1)
    {
      memset(&v13, 0, sizeof(v13));
      std::string::basic_string(&v13, __str, v6, 2uLL, &__endptr);
      __endptr = 0;
      v9 = (v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v13 : v13.__r_.__value_.__r.__words[0];
      *(&v14 + v7) = strtol(v9, &__endptr, 16);
      v10 = *__endptr;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (v10)
      {
        break;
      }

      v8 = v7 > 8;
      v6 += 2;
      if (++v7 == 10)
      {
        *a3 = v14;
        *(a3 + 8) = v15;
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_10040C4C8(_BYTE *a1, int a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 384))(v4))
  {
    if (a1[253] != a2)
    {
      a1[253] = a2;
      if (a2)
      {
        v5 = @"yes";
      }

      else
      {
        v5 = @"no";
      }

      CFPreferencesSetAppValue(@"ENLoggingEntitledApp", v5, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
      v6 = (*(*a1 + 208))(a1);
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[253];
        v10[0] = 67109376;
        v10[1] = v8;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fENAppHasLoggingEntitlement:%d plistEntitled:%d", v10, 0xEu);
      }

      (*(*a1 + 256))(a1);
      sub_100404A30(a1);
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setENAppHasLoggingEntitlement", v10, 2u);
    }
  }
}

void sub_10040C6B4(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10040C730;
  v4[3] = &unk_100AEB940;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_sync(v3, v4);
}

void sub_10040C730(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10000C798();
  if ((*(*v3 + 384))(v3))
  {
    v4 = *(a1 + 40);
    if (v4 == v2[255])
    {
      v5 = *(a1 + 41);
      v6 = v2[254];
      if (v5 == v6)
      {
LABEL_15:
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setENLoggingParams", v10, 2u);
        }

        return;
      }
    }

    else
    {
      v2[255] = v4;
      if (v4)
      {
        v7 = @"yes";
      }

      else
      {
        v7 = @"no";
      }

      CFPreferencesSetAppValue(@"rpiLogging", v7, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
      v5 = *(a1 + 41);
      v6 = v2[254];
    }

    if (v5 != v6)
    {
      v2[254] = v5;
      if (v5)
      {
        v8 = @"yes";
      }

      else
      {
        v8 = @"no";
      }

      CFPreferencesSetAppValue(@"sensitiveLogging", v8, @"com.apple.MobileBluetooth.debug");
      CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
    }

    (*(*v2 + 256))(v2);
    sub_100404A30(v2);
    goto LABEL_15;
  }
}

BOOL sub_10040C8C0()
{
  v0 = CFPreferencesCopyAppValue(@"ENLoggingEntitledApp", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_10040C920()
{
  v0 = CFPreferencesCopyAppValue(@"sensitiveLogging", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_10040C980()
{
  v0 = CFPreferencesCopyAppValue(@"rpiLogging", @"com.apple.MobileBluetooth.debug");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"yes") != 0;
  CFRelease(v1);
  return v2;
}

void sub_10040C9E0(_BYTE *a1)
{
  a1[257] = a1[254];
  if (((*(*a1 + 8))(a1) && a1[256] != 1 || a1[253] == 1) && a1[254] == 1)
  {
    v2 = a1[255];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  a1[258] = v2 & 1;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[254];
    v6 = a1[255];
    v7 = a1[256];
    v8 = a1[253];
    v9 = a1[257];
    v10[0] = 67110400;
    v10[1] = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fENSensitiveLogging: %d, fENRPILogging: %d, fRequireENLoggingProfileOnInternal:%d, fENAppHasLoggingEntitlement:%d, fPrivacySensitiveENLoggingEnabled:%d fRPIENLoggingEnabled: %d", v10, 0x26u);
  }
}

uint64_t sub_10040CB34(_BYTE *a1)
{
  if (((*(*a1 + 8))(a1) & 1) != 0 || a1[253] == 1)
  {
    v2 = a1[252];
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[253];
    v5 = a1[252];
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fENAppHasLoggingEntitlement:%d fInsecureDatabasePath:%d", v7, 0xEu);
  }

  return v2 & 1;
}

uint64_t sub_10040CC70(uint64_t a1, const std::string::value_type *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v13 = *a3;
  v50 = *a4;
  v51 = v13;
  v14 = *a5;
  v15 = *a6;
  v48 = *a7;
  v49 = v14;
  memset(&v47, 0, sizeof(v47));
  sub_100007E30(&v47, "LEConnectionPrioritization");
  std::string::append(&v47, a2);
  v16 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v47;
  }

  else
  {
    v17 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v17);
  sub_100007E30(__p, "priority");
  v18 = (*(*v16 + 128))(v16, buf, __p, &v51);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else if (!v18)
  {
    goto LABEL_14;
  }

  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v20;
    v53 = 1024;
    v54 = v51;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s priority parameter set to %d", buf, 0x12u);
  }

LABEL_14:
  v21 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v47;
  }

  else
  {
    v22 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v22);
  sub_100007E30(__p, "protectWLAN");
  v23 = (*(*v21 + 128))(v21, buf, __p, &v50);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  else if (!v23)
  {
    goto LABEL_28;
  }

  v24 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v25;
    v53 = 1024;
    v54 = v50;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s protectWLAN parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_28:
  v26 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v47;
  }

  else
  {
    v27 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v27);
  sub_100007E30(__p, "protectLEA");
  v28 = (*(*v26 + 128))(v26, buf, __p, &v49);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v28)
    {
      goto LABEL_42;
    }
  }

  else if (!v28)
  {
    goto LABEL_42;
  }

  v29 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v30;
    v53 = 1024;
    v54 = v49;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s protectLEA parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_42:
  v31 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v47;
  }

  else
  {
    v32 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v32);
  sub_100007E30(__p, "protectHFPA2DP");
  v33 = (*(*v31 + 128))(v31, buf, __p, &v49);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_56;
    }
  }

  else if (!v33)
  {
    goto LABEL_56;
  }

  v34 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v35 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v47.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v35;
    v53 = 1024;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s protectHFPA2DP parameter set to %d", buf, 0x12u);
  }

  v18 = 1;
LABEL_56:
  v36 = sub_10000E92C();
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v47;
  }

  else
  {
    v37 = v47.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(buf, v37);
  sub_100007E30(__p, "percentageWithCriticalPriority");
  v38 = (*(*v36 + 128))(v36, buf, __p, &v48);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if (v55 < 0)
  {
    operator delete(*buf);
    if (v38)
    {
LABEL_63:
      v39 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v40 = &v47;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v47.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v40;
        v53 = 1024;
        v54 = v48;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s percentageWithCriticalPriority parameter set to %d", buf, 0x12u);
      }

      goto LABEL_69;
    }
  }

  else if (v38)
  {
    goto LABEL_63;
  }

  if (v18)
  {
LABEL_69:
    v41 = v50;
    *a3 = v51;
    *a4 = v41;
    v42 = v48;
    *a5 = v49;
    *a6 = v15;
    *a7 = v42;
    v43 = 1;
    goto LABEL_71;
  }

  v43 = 0;
LABEL_71:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return v43;
}