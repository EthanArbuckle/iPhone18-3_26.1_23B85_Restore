uint64_t sub_100180250(void *a1, void *a2, uint64_t a3)
{
  off_100B557D0 = a1;
  off_100B557D8 = a2;
  if (!a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("dataCbs is NULL", v4, v5, v6, v7, v8, v9, v10, v13);
      v11 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  qword_100B557C8 = a3;
  mach_timebase_info(&stru_100BC7DB8);
  return 0;
}

uint64_t sub_1001802DC(unsigned __int16 *a1)
{
  if (off_100B557D0)
  {
    v2 = sub_1000ABB80(*a1);
    if (v2)
    {
      v9 = v2;
      v10 = *(v2 + 2);
      if (v10 == 5)
      {
        v11 = 132;
LABEL_12:
        if (*(a1 + 2) == 1)
        {
          v23 = *(v2 + v11);
          if ((v23 & 2) == 0)
          {
            v22 = v23 | 2;
            goto LABEL_18;
          }
        }

        else
        {
          if (*(a1 + 2))
          {
            goto LABEL_19;
          }

          v21 = *(v2 + v11);
          if ((v21 & 1) == 0)
          {
            v22 = v21 | 1;
LABEL_18:
            *(v2 + v11) = v22;
LABEL_19:
            v20 = sub_100018960(241, sub_100180454, v3, v4, v5, v6, v7, v8, *a1);
            if (v20)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("LE_Setup_ISO_Data_Path command failed", v24, v25, v26, v27, v28, v29, v30, v34);
                v31 = sub_10000C050(0x46u);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }

              *(v9 + v11) = 0;
            }

            return v20;
          }
        }

        return 712;
      }

      if (v10 == 6)
      {
        v11 = 88;
        goto LABEL_12;
      }
    }

    return 702;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No ISO Setup Cb", v12, v13, v14, v15, v16, v17, v18, v33);
    v19 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F6C8();
    }
  }

  return 114;
}

uint64_t sub_100180454(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to setup ISO data path with result %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v12 = sub_1000ABB80(a2);
    if (v12)
    {
      *(v12 + 33) = 0;
    }
  }

  return off_100B557D0(a1, a2);
}

uint64_t sub_1001804F4(uint64_t a1, int a2)
{
  v4 = sub_1000ABB80(a1);
  if (off_100B557D8)
  {
    v11 = v4;
    if (v4)
    {
      v12 = *(v4 + 2);
      if (v12 == 5)
      {
        v13 = 132;
LABEL_12:
        if (a2 == 1)
        {
          if ((*(v4 + v13) & 2) != 0)
          {
            v23 = *(v4 + v13) & 2;
            goto LABEL_20;
          }
        }

        else
        {
          if (a2)
          {
LABEL_21:
            v22 = sub_100018960(242, sub_100180660, v5, v6, v7, v8, v9, v10, a1);
            if (v22)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("LE_Remove_ISO_Data_Path command failed", v24, v25, v26, v27, v28, v29, v30, v34);
                v31 = sub_10000C050(0x46u);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }

              *(v11 + v13) = 0;
            }

            return v22;
          }

          if (*(v4 + v13))
          {
            v23 = *(v4 + v13) & 2;
LABEL_20:
            *(v4 + v13) = v23;
            goto LABEL_21;
          }
        }

        return 712;
      }

      if (v12 == 6)
      {
        v13 = 88;
        goto LABEL_12;
      }
    }

    return 702;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No ISO Remove Cb", v14, v15, v16, v17, v18, v19, v20, v33);
    v21 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F6C8();
    }
  }

  return 114;
}

uint64_t sub_100180660(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to remove ISO data path with result %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v12 = sub_1000ABB80(a2);
    if (v12)
    {
      *(v12 + 33) = 0;
    }
  }

  return off_100B557D8(a1, a2);
}

uint64_t sub_100180700(int a1, char *a2, size_t a3)
{
  if (a2 && a3)
  {
    if (a3 < 0x1000)
    {
      v5 = sub_1000ABB80(a1);
      if (byte_100B557C0 == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write Iso Data is pending", v6, v7, v8, v9, v10, v11, v12, v67);
          v13 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 116;
      }

      v31 = v5;
      if (v5)
      {
        v32 = *(v5 + 2);
        if (v32 == 6)
        {
          if (sub_1002555E4(v5) && !*(v31 + 48))
          {
LABEL_38:
            sub_1001BACB0();
            v65 = 56;
            if (*(v31 + 2) == 5)
            {
              v65 = 64;
            }

            v66 = *(v31 + v65);
            *(v31 + v65) = v66 + 1;
            word_100B557E0 = v66;
            word_100B557E2 = a3;
            sub_10001FF10(byte_100B557E8, 2u);
            sub_10001F968(byte_100B557E8, &word_100B557E0, 4uLL, 2u);
            sub_10001F968(byte_100B557E8, a2, a3, 2u);
            byte_100B557C0 = 1;
            result = sub_100259154(v31, byte_100B557E8, 1, 0);
            if (result)
            {
              byte_100B557C0 = 0;
            }

            return result;
          }

          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("BIS connection handle is no longer valid or state is not connected. Dropping ISO data.", v49, v50, v51, v52, v53, v54, v55, v67);
          v56 = sub_10000C050(0x46u);
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }
        }

        else
        {
          if (v32 == 5)
          {
            if (!sub_1002555B4(v5) || *(v31 + 56))
            {
              if (!sub_10000C240())
              {
                return 601;
              }

              sub_10000AF54("CIS connection handle is no longer valid or state is not connected. Dropping ISO data.", v33, v34, v35, v36, v37, v38, v39, v67);
              v40 = sub_10000C050(0x46u);
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                return 601;
              }

              goto LABEL_35;
            }

            goto LABEL_38;
          }

          if (!sub_10000C240())
          {
            return 601;
          }

          sub_10000AF54("Neither valid CIS nor BIS handle", v57, v58, v59, v60, v61, v62, v63, v67);
          v64 = sub_10000C050(0x46u);
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            return 601;
          }
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          return 601;
        }

        sub_10000AF54("isoHandle is NULL", v41, v42, v43, v44, v45, v46, v47, v67);
        v48 = sub_10000C050(0x46u);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          return 601;
        }
      }

LABEL_35:
      sub_10080F604();
      return 601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("isoWriteLen: %d is over 12-bit", v23, v24, v25, v26, v27, v28, v29, a3);
      v30 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Iso write buffer is empty or length is zero", v15, v16, v17, v18, v19, v20, v21, v67);
      v22 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 131;
  }
}

uint64_t IOBTDebug::init(IOBTDebug *this)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "init";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v23, 0xCu);
  }

  v2 = IOServiceMatching("BTDebug");
  if (v2)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
    *(this + 16) = MatchingService;
    if (MatchingService)
    {
      v4 = IOServiceOpen(MatchingService, mach_task_self_, 0, this + 17);
      if (!v4)
      {
        v21 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100181464(v4);
      }
    }

    else
    {
      v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        sub_1001814F8(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_100181574(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v21 = 0;
LABEL_13:
  std::mutex::unlock(this);
  return v21;
}

void IOBTDebug::~IOBTDebug(IOBTDebug *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "~IOBTDebug";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", buf, 0xCu);
  }

  v2 = *(this + 17);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 9);
  if (*(this + 10))
  {
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100180DFC;
      block[3] = &unk_100AE4588;
      block[4] = this;
      dispatch_sync(v4, block);
      dispatch_release(*(this + 9));
      *(this + 9) = 0;
      goto LABEL_11;
    }

    v5 = "fQueue";
    v6 = 65;
LABEL_16:
    __assert_rtn("~IOBTDebug", "IOBTDebug.cpp", v6, v5);
  }

  if (v4)
  {
    v5 = "!fQueue";
    v6 = 78;
    goto LABEL_16;
  }

LABEL_11:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "~IOBTDebug";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: --done\n", buf, 0xCu);
  }

  std::mutex::~mutex(this);
}

void sub_100180DF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000F0588(a1);
}

void sub_100180DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  v2 = *(v1 + 80);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(v1 + 80) = 0;
  }

  std::mutex::unlock(v1);
}

void IOBTDebug::setNotificationPort(IOBTDebug *this)
{
  if (!*(this + 10))
  {
    if (*(this + 9))
    {
      sub_1001815F0();
    }

    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v3 = dispatch_queue_create("com.apple.BTDebug.IOBTDebug", v2);
    *(this + 9) = v3;
    if (!v3)
    {
      sub_100181648();
    }

    v4 = IONotificationPortCreate(kIOMainPortDefault);
    *(this + 10) = v4;
    if (!v4)
    {
      sub_10018161C();
    }

    v5 = *(this + 9);

    IONotificationPortSetDispatchQueue(v4, v5);
  }
}

uint64_t IOBTDebug::coreDump(std::mutex *this, uint64_t a2, const char *a3, void (*a4)(void *, int), void *a5)
{
  v39 = 0u;
  v40 = 0u;
  *reference = 0u;
  v38 = 0u;
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "coreDump";
    v34 = 1024;
    v35 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: size %u\n", buf, 0x12u);
  }

  if (!a4)
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_100181674(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  IOBTDebug::setNotificationPort(this);
  v18 = *&this[1].__m_.__opaque[8];
  if (v18)
  {
    input = a2;
    reference[1] = a4;
    *&v38 = a5;
    sig_high = HIDWORD(this[1].__m_.__sig);
    MachPort = IONotificationPortGetMachPort(v18);
    v21 = strlen(a3);
    v22 = IOConnectCallAsyncMethod(sig_high, 0, MachPort, reference, 3u, &input, 1u, a3, v21 + 1, 0, 0, 0, 0);
  }

  else
  {
    v22 = 3758097112;
    v23 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      sub_1001816F0(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  std::mutex::unlock(this);
  return v22;
}

uint64_t IOBTDebug::enableLogging(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, int *a5, unsigned int a6)
{
  v6 = 3758097090;
  if (a4)
  {
    v7 = a5;
    if (a5)
    {
      if (a6 - 4 >= 0xFFFFFFFD)
      {
        v9 = a4;
        v11 = a2;
        v13 = __chkstk_darwin(a1, a2);
        v15 = &buf[-v14];
        std::mutex::lock(v13);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v23 = "enableLogging";
          v24 = 1024;
          v25 = v11;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = a6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: bufferSize %u, numReads %u, numLogs %u\n", buf, 0x1Eu);
        }

        input[0] = v11;
        input[1] = a3;
        v16 = v15 + 4;
        v17 = a6;
        do
        {
          v19 = *v7++;
          v18 = v19;
          v20 = *v9++;
          *(v16 - 1) = v20;
          *v16 = v18;
          v16 += 2;
          --v17;
        }

        while (v17);
        v6 = IOConnectCallMethod(*(a1 + 68), 1u, input, 2u, v15, 8 * a6, 0, 0, 0, 0);
        std::mutex::unlock(a1);
      }
    }
  }

  return v6;
}

uint64_t IOBTDebug::disableLogging(IOBTDebug *this)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "disableLogging";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v4, 0xCu);
  }

  v2 = IOConnectCallScalarMethod(*(this + 17), 2u, 0, 0, 0, 0);
  std::mutex::unlock(this);
  return v2;
}

uint64_t IOBTDebug::dumpLogs(IOBTDebug *this, const char *a2)
{
  std::mutex::lock(this);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "dumpLogs";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOBTDebug::%s: \n", &v7, 0xCu);
  }

  v4 = strlen(a2);
  v5 = IOConnectCallStructMethod(*(this + 17), 3u, a2, v4 + 1, 0, 0);
  std::mutex::unlock(this);
  return v5;
}

void sub_100181464(int a1)
{
  v1 = 136315394;
  v2 = "init";
  v3 = 1024;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IOBTDebug::%s: could not open service: 0x%x\n", &v1, 0x12u);
}

uint64_t sub_10018176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10006DC7C(a1, a2, a3, a4, a5);
  v7 = sub_100181D40(v6, v5, v10);
  sub_1000E0A98(v7, &off_100AE4760, v8);
  return (v11 >> 2) & 1;
}

BOOL sub_1001817B8(void *a1, uint64_t a2, uint64_t a3)
{
  memset(a1, 0, 0x40uLL);
  *a1 = a2;
  a1[1] = a3;

  return sub_10018180C(a1);
}

BOOL sub_10018180C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v1 < v3)
  {
    v4 = (*v2 + 4 * *(a1 + 18));
    v5 = *v4;
    v6 = BYTE1(*v4);
    *(a1 + 30) = v6;
    switch(v5 & 3)
    {
      case 1u:
        v11 = v4[1];
        *(a1 + 28) = HIWORD(v5) & 0xFFF;
        *(a1 + 24) = (v11 >> 22) & 0x3C0 | (v5 >> 2);
        v7 = v5 >> 28;
        v8 = v11;
        v9 = HIWORD(v11) & 0xFFF;
        break;
      case 2u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = HIWORD(v5);
        goto LABEL_6;
      case 3u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = v4[4];
LABEL_6:
        *(a1 + 28) = v10;
        *(a1 + 24) = (v7 >> 2) & 0xFFC0 | (v5 >> 2);
        break;
      default:
        *(a1 + 28) = 1;
        *(a1 + 24) = v5 >> 2;
        v7 = HIBYTE(v5) & 0xF;
        v8 = BYTE2(v5);
        v9 = v5 >> 28;
        break;
    }

    *(a1 + 26) = v9;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 + v8);
      *(a1 + 32) = v13;
      v14 = v5 & 0x3000;
      v15 = (a1 + 28);
      if ((v6 & 0x40 | 0x80) != 0x80)
      {
        v15 = 0;
      }

      if (v14 == 0x2000)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v7)
      {
        v16 = v13 - v7;
      }

      *(a1 + 48) = v16;
      if ((v6 & 0xC0) == 0x80)
      {
        v13 = *v13;
      }

      v17 = 40;
    }

    else
    {
      v13 = 0;
      *(a1 + 32) = 0;
      v17 = 48;
    }

    *(a1 + v17) = v13;
    if ((v6 & 0xE) == 8)
    {
      v18 = *(v2[1] + 8 * *(a1 + 22));
    }

    else
    {
      v18 = 0;
    }

    *(a1 + 56) = v18;
  }

  return v1 < v3;
}

BOOL sub_100181970(void *a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(*a2 + 16);
  if ((**v5 & 0xC000) != 0x8000)
  {
    v4 = *v4;
  }

  result = sub_1001817B8(a1, v5, v4);
  a1[6] = a2 + 3;
  return result;
}

BOOL sub_1001819C8(_WORD *a1)
{
  sub_100181A00(a1);
  sub_10018180C(a1);
  return a1[8] != 0;
}

double sub_100181A00(_WORD *a1)
{
  v1 = a1[8] + 1;
  a1[8] = v1;
  if (*(*a1 + 32) <= v1)
  {
    result = 0.0;
    *(a1 + 2) = 0;
  }

  else
  {
    v2 = a1[9];
    v3 = *(**a1 + 4 * v2);
    a1[9] = v2 + (1 << (v3 & 3));
    v4 = a1[10];
    if ((v3 & 0x3000) == 0)
    {
      ++v4;
    }

    a1[10] = v4;
    if ((v3 & 0xE00) == 0x800)
    {
      v5 = a1[11] + 1;
    }

    else
    {
      v5 = a1[11];
    }

    a1[11] = v5;
  }

  return result;
}

uint64_t sub_100181A70(unsigned __int16 *a1, unsigned int a2)
{
  v2 = a1[12];
  if (v2 == a2)
  {
    return 1;
  }

  if (*(*a1 + 36) < a2)
  {
    return 0;
  }

  v6 = a1[8];
  if (v2 > a2)
  {
    a1[8] = *(*a1 + 32);
  }

  while (1)
  {
    sub_100181A00(a1);
    sub_10006DC9C();
    if (((a2 ^ (v7 >> 2)) & 0x3F) == 0)
    {
      sub_10018180C(a1);
      if (a1[12] == a2 && (a1[15] & 0xF) != 0xA)
      {
        break;
      }
    }

    if (a1[8] == v6)
    {
      sub_10018180C(a1);
      return 0;
    }
  }

  return 1;
}

BOOL sub_100181B34(uint64_t a1)
{
  if ((*(a1 + 30) & 0xF) == 0xA)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    sub_100181A00(a1);
    sub_10006DC9C();
    if ((v4 & 0xF00) == 0xA00)
    {
      break;
    }

    if (*(a1 + 16) == v3)
    {
      sub_10018180C(a1);
      return 0;
    }
  }

  return sub_10018180C(a1);
}

uint64_t sub_100181BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 26) == 16)
  {
    v4 = *(a3 + 40);
    if (v4)
    {
      if (a1)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          return v5(a1, a3, v6);
        }
      }

      if (a2)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          a1 = a2;
          return v5(a1, a3, v6);
        }
      }
    }
  }

  return 1;
}

void sub_100181C10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    if (a2 || *a1 == sub_100181D14)
    {
      if (*(a1 + 16) >= a3 && ((*a1)(a1) & 1) != 0)
      {
        *(a1 + 16) -= v3;
      }

      else
      {
        sub_10006DCB0();
        sub_1000E0AB0();
        *(a1 + 24) = v5;
      }
    }

    else
    {
      while (v3 >= 0x11)
      {
        if (!sub_100181C10(a1, v6, 16))
        {
          return;
        }

        v3 -= 16;
      }

      sub_100181C10(a1, v6, v3);
    }
  }
}

uint64_t sub_100181D14(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = &v3[a3];
  if (a2 && a3)
  {
    do
    {
      v4 = *v3++;
      *a2++ = v4;
      --a3;
    }

    while (a3);
  }

  return 1;
}

uint64_t sub_100181D40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = sub_100181D14;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

void sub_100181D60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_10009C610();
  sub_100181EF8(v6, &v17);
  if (v7)
  {
    v8 = v17;
    if (v17 < 0)
    {
      v8 = v17 & 0x7F;
      v9 = 7;
      while (1)
      {
        sub_100181EF8(v3, &v17);
        if (!v10)
        {
          break;
        }

        v11 = v9;
        if (v9 < 0x20u)
        {
          v8 |= (v17 & 0x7F) << v9;
        }

        else
        {
          if (v9 >= 0x3Fu)
          {
            v12 = 1;
          }

          else
          {
            v12 = 255;
          }

          v14 = v8 >= 0 || v12 != v17;
          if ((v17 & 0x7F) == 0)
          {
            v14 = 0;
          }

          if (v9 > 0x3Fu || v14)
          {
            goto LABEL_31;
          }
        }

        v9 += 7;
        if ((v17 & 0x80) == 0)
        {
          if (v11 == 28 && v17 >= 0x10u)
          {
LABEL_31:
            sub_10006DCB0();
            sub_1000E0AB0();
            *(v3 + 24) = v16;
            return;
          }

          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      *v4 = v8;
    }
  }

  else if (a3 && !*(v3 + 16))
  {
    *a3 = 1;
  }
}

void sub_100181E6C()
{
  sub_10009C610();
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = v2;
    if (v2 >= 0x40u)
    {
      break;
    }

    sub_100181EF8(v0, &v7);
    if (!v5)
    {
      return;
    }

    v3 |= (v7 & 0x7F) << v4;
    v2 = v4 + 7;
    if ((v7 & 0x80) == 0)
    {
      *v1 = v3;
      return;
    }
  }

  sub_10006DCB0();
  sub_1000E0AB0();
  *(v0 + 24) = v6;
}

void sub_100181EF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && ((*a1)(a1, a2, 1) & 1) != 0)
  {
    --*(a1 + 16);
  }

  else
  {
    sub_10006DCB0();
    sub_1000E0AB0();
    *(a1 + 24) = v3;
  }
}

void sub_100181F6C(uint64_t a1, int *a2, unsigned int *a3, _BYTE *a4)
{
  *a4 = 0;
  *a2 = 0;
  *a3 = 0;
  sub_100181D60(a1, &v8, a4);
  if (v6)
  {
    v7 = v8;
    *a3 = v8 >> 3;
    *a2 = v7 & 7;
  }
}

void sub_100181FC8(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      do
      {
        sub_100181C10(a1, &v7, 1uLL);
      }

      while (v3 && v7 < 0);
      break;
    case 1:
      v5 = 8;
      goto LABEL_9;
    case 2:
      sub_100181D58(a1, &v8);
      if (v4)
      {
        sub_100181C10(a1, 0, v8);
      }

      break;
    case 5:
      v5 = 4;
LABEL_9:

      sub_100181C10(a1, 0, v5);
      break;
    default:
      sub_10006DCB0();
      sub_1000E0AB0();
      *(a1 + 24) = v6;
      break;
  }
}

void sub_1001820B0()
{
  sub_10009C610();
  sub_100181D58(v2, &v7);
  if (v3)
  {
    v4 = *(v0 + 16);
    *v1 = *v0;
    v1[1] = v4;
    v5 = v7;
    if (*(v1 + 2) >= v7)
    {
      *(v1 + 2) = v7;
      *(v0 + 16) -= v5;
    }

    else
    {
      sub_10006DCB0();
      sub_1000E0AB0();
      *(v0 + 24) = v6;
    }
  }
}

void sub_100182128()
{
  sub_10009C610();
  v3 = *(v2 + 16);
  if (!v3 || (sub_100181C10(v1, 0, v3), v4))
  {
    *(v0 + 8) = *(v1 + 8);
    *(v0 + 24) = *(v1 + 24);
  }
}

void sub_100182174(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v51 = 0;
  v50 = 0;
  v6 = sub_1001817B8(v42, a2, a3);
  if ((a4 & 1) == 0 && v6)
  {
    sub_1001825E4(v42, v7, v8, v9, v10, v11, v12, v13);
    if ((v14 & 1) == 0)
    {
      sub_10006DCB0();
LABEL_74:
      sub_1000E0AB0();
      *(a1 + 24) = v37;
      return;
    }
  }

  v38 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xFFFF;
  while (*(a1 + 16))
  {
    sub_100181F6C(a1, &v40, &v41, &v39);
    if ((v18 & 1) == 0)
    {
      if ((v39 & 1) == 0)
      {
        return;
      }

      break;
    }

    v19 = v41;
    if (!v41)
    {
      if ((a4 & 4) == 0)
      {
LABEL_55:
        sub_1000E0AB0();
        *(a1 + 24) = v31;
        return;
      }

      break;
    }

    if (sub_100181A70(v42, v41) && (v47 & 0xF) != 0xA)
    {
      if ((v47 & 0x30) == 0x20 && v49 == &v46)
      {
        if (v17 != v43)
        {
          if (v17 != 0xFFFF && v51 != v38)
          {
            goto LABEL_55;
          }

          v51 = 0;
          v38 = v46;
          v17 = v43;
        }

        v49 = &v51;
      }

      if ((v47 & 0x30) == 0 && v44 <= 0x3Fu)
      {
        *(&v50 + ((v44 >> 3) & 0x1FFC)) |= 1 << v44;
      }

      sub_100182794(a1, v40, v42);
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (!v16)
      {
        if (sub_100181B34(v42))
        {
          v15 = *v48;
          v20 = v45;
        }

        else
        {
          v20 = 0;
        }

        if (v15)
        {
          v16 = v20;
        }

        else
        {
          v16 = -1;
        }
      }

      v24 = v40;
      if (v19 < v16)
      {
        goto LABEL_36;
      }

      v26 = *(a1 + 16);
      v27 = v26;
      v28 = v15;
      if (v15)
      {
        while (v26 == v27)
        {
          v29 = **v28;
          if (v29)
          {
            if ((v29(a1, v28, v19, v24) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            if (!sub_100181970(v52, v28))
            {
              goto LABEL_55;
            }

            if (v19 == v53)
            {
              if (v52[1])
              {
                *(v28 + 24) = 1;
                sub_100182794(a1, v24, v52);
                if (!v30)
                {
                  return;
                }
              }
            }
          }

          v28 = v28[2];
          v27 = *(a1 + 16);
          if (!v28)
          {
            break;
          }
        }
      }

      if (v26 == v27)
      {
        LODWORD(v24) = v40;
LABEL_36:
        sub_100181FC8(a1, v24);
        if ((v25 & 1) == 0)
        {
          return;
        }
      }
    }
  }

  if (v17 != 0xFFFF && v51 != v38)
  {
    goto LABEL_73;
  }

  if (*(*v42 + 34))
  {
    v33 = 0;
    v34 = *(*v42 + 34) >= 0x40u ? 64 : *(*v42 + 34);
    v35 = v34 >> 5;
    while (v33 < v35)
    {
      v36 = *(&v50 + v33++);
      if (v36 != -1)
      {
        goto LABEL_73;
      }
    }

    if ((v34 & 0x1F) != 0 && *(&v50 + v35) != 0xFFFFFFFF >> -(v34 & 0x1F))
    {
LABEL_73:
      sub_10006DCB0();
      goto LABEL_74;
    }
  }
}

void sub_1001824D8(uint64_t a1, BOOL *a2)
{
  sub_100181D58(a1, &v4);
  if (v3)
  {
    *a2 = v4 != 0;
  }
}

void sub_10018251C(uint64_t a1, unint64_t *a2)
{
  sub_100181E6C();
  if (v3)
  {
    *a2 = -(v4 & 1) ^ (v4 >> 1);
  }
}

void sub_100182564(uint64_t a1, _DWORD *a2)
{
  sub_100181C10(a1, &v4, 4uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void sub_1001825A4(uint64_t a1, void *a2)
{
  sub_100181C10(a1, &v4, 8uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void sub_1001825E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  if (*(*a1 + 16))
  {
    *(&v27 + 1) = *(*a1 + 16);
    v28 = 0xFFFFFFFFFFFFFFFFLL;
    sub_1000B6F00(a1, a2, a3, a4, a5, a6, a7, a8, v25, SWORD2(v25), SBYTE6(v25), SHIBYTE(v25), 0, 0, sub_100181D14);
    if (!v9)
    {
      return;
    }
  }

  while (1)
  {
    v10 = *(a1 + 30);
    if ((v10 & 0xF) == 0xA)
    {
      break;
    }

    if ((v10 & 0xC0) == 0x80)
    {
      **(a1 + 32) = 0;
      if ((v10 & 0x20) != 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v10 & 0xC0) == 0)
    {
      v12 = (v10 >> 4) & 3;
      if ((v12 - 2) < 2)
      {
        goto LABEL_23;
      }

      if (v12)
      {
        v13 = *(a1 + 48);
        if (v13)
        {
          *v13 = 0;
        }

        else if ((v10 & 0x20 | 0x10) == 0x30)
        {
LABEL_23:
          **(a1 + 48) = 0;
          goto LABEL_24;
        }
      }

      if ((v10 & 0xE) == 8 && ((v14 = *(a1 + 56), *(v14 + 16)) || *(v14 + 24) || **(v14 + 8)))
      {
        if (sub_1001817B8(v29, v14, *(a1 + 40)) && !sub_1001825E4(v29))
        {
          return;
        }
      }

      else
      {
        memset(*(a1 + 40), 0, *(a1 + 26));
      }
    }

LABEL_24:
    if (HIDWORD(v26) && HIDWORD(v26) == *(a1 + 24))
    {
      sub_100182794(&v27, v26, a1);
      if (!v15)
      {
        return;
      }

      sub_1000B6F00(v15, v16, v17, v18, v19, v20, v21, v22, v25, SWORD2(v25), SBYTE6(v25), SHIBYTE(v25), v26, HIDWORD(v26), v27);
      if (!v23)
      {
        return;
      }

      v24 = *(a1 + 48);
      if (v24)
      {
        *v24 = 0;
      }
    }

    if (!sub_1001819C8(a1))
    {
      return;
    }
  }

  v11 = **(a1 + 40);
  if (!v11)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (sub_100181970(v29, v11))
    {
      *(v11 + 24) = 0;
      if (!sub_1001825E4(v29))
      {
        break;
      }
    }

    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_24;
    }
  }
}

void sub_100182794(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 30);
  switch(v3 >> 6)
  {
    case 1u:
      if (*(*a3 + 24))
      {
        if (a2 == 2)
        {
          sub_100183044();
          sub_1001820B0();
          if (v9)
          {
            v17 = v46;
            do
            {
              v18 = sub_10003F108(v9, v10, v11, v12, v13, v14, v15, v16, v44, v45[0]);
              v9 = v19(v18);
              if ((v9 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (v46)
              {
                v20 = v46 >= v17;
              }

              else
              {
                v20 = 1;
              }

              v17 = v46;
            }

            while (!v20);
            sub_100183044();
            sub_100182128();
          }
        }

        else
        {
          if (a2 == 5)
          {
            v32 = 4;
            v41 = 4;
          }

          else
          {
            if (a2 != 1)
            {
              if (a2)
              {
LABEL_5:
                sub_10006DCB0();
              }

              else
              {
                v21 = 0;
                v22 = v48;
                while (v21 != -10)
                {
                  sub_100181C10(a1, v22, 1uLL);
                  if (!v23)
                  {
                    return;
                  }

                  v31 = *v22++;
                  --v21;
                  if ((v31 & 0x80000000) == 0)
                  {
                    v32 = -v21;
                    goto LABEL_56;
                  }
                }

                sub_10006DCB0();
              }

LABEL_6:
              sub_1000E0AB0();
              *(a1 + 24) = v8;
              return;
            }

            v32 = 8;
            v41 = 8;
          }

          sub_100181C10(a1, v48, v41);
          if (v23)
          {
LABEL_56:
            v45[1] = v48;
            v46 = v32;
            v47 = 0;
            v42 = sub_10003F108(v23, v24, v25, v26, v27, v28, v29, v30, v44, sub_100181D14);
            v43(v42);
          }
        }
      }

      else
      {

        sub_100181FC8(a1, a2);
      }

      return;
    case 2u:
    case 3u:
      goto LABEL_5;
    default:
      switch((v3 >> 4) & 3)
      {
        case 1u:
          v7 = *(a3 + 48);
          if (v7)
          {
            *v7 = 1;
          }

          goto LABEL_36;
        case 2u:
          v33 = v3 & 0xE;
          if (a2 != 2 || v33 > 5)
          {
            v35 = *(a3 + 48);
            v36 = *v35;
            *(a3 + 40) = *(a3 + 32) + *(a3 + 26) * *v35;
            *v35 = v36 + 1;
            if (v36 >= *(a3 + 28))
            {
              goto LABEL_61;
            }

LABEL_36:

            sub_100182BA0(a1, a2, a3);
          }

          else
          {
            v38 = *(a3 + 48);
            *(a3 + 40) = *(a3 + 32) + *v38 * *(a3 + 26);
            sub_100183044();
            sub_1001820B0();
            if (v39)
            {
              while (1)
              {
                if (!v46)
                {
                  goto LABEL_62;
                }

                if (*v38 >= *(a3 + 28))
                {
                  goto LABEL_61;
                }

                sub_100182BA0(v45, 255, a3);
                if (!v40)
                {
                  break;
                }

                ++*v38;
                *(a3 + 40) += *(a3 + 26);
              }

              if (v46)
              {
LABEL_61:
                sub_10006DCB0();
                goto LABEL_6;
              }

LABEL_62:
              sub_100183044();
              sub_100182128();
            }
          }

          return;
        case 3u:
          if ((v3 & 0xE) == 8 && **(a3 + 48) != *(a3 + 24))
          {
            memset(*(a3 + 40), 0, *(a3 + 26));
            v37 = *(a3 + 56);
            if ((*(v37 + 16) || *(v37 + 24) || **(v37 + 8)) && sub_1001817B8(v45, v37, *(a3 + 40)) && !sub_1001825E4(v45))
            {
              goto LABEL_6;
            }
          }

          **(a3 + 48) = *(a3 + 24);
          sub_100182BA0(a1, a2, a3);
          return;
        default:
          goto LABEL_36;
      }
  }
}

void sub_100182BA0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 30) & 0xF;
  switch(*(a3 + 30) & 0xF)
  {
    case 0:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      v20 = *(a3 + 40);

      sub_1001824D8(a1, v20);
      return;
    case 1:
    case 2:
    case 3:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      if (v4 == 2)
      {
        sub_10003F4D8();
        sub_100181E6C();
        if (v6)
        {
          switch(*(a3 + 26))
          {
            case 1:
              sub_1000B70D8();
              *v8 = v7;
              v9 = v7;
              goto LABEL_80;
            case 2:
              sub_1000B70D8();
              *v44 = v7;
              v9 = v7;
              goto LABEL_80;
            case 4:
              sub_1000B70D8();
              *v43 = v7;
              v9 = v7;
              goto LABEL_80;
            case 8:
              sub_1000B70D8();
              *v46 = v45;
              break;
            default:
              goto LABEL_44;
          }
        }
      }

      else
      {
        if (v4 == 3)
        {
          v31 = sub_100183044();
          sub_10018251C(v31, v32);
          if (!v33)
          {
            return;
          }

          v34 = *(a3 + 26);
        }

        else
        {
          sub_10003F4D8();
          sub_100181E6C();
          if (!v35)
          {
            return;
          }

          v34 = *(a3 + 26);
          v36 = v48[0];
          if (v34 == 8)
          {
LABEL_83:
            **(a3 + 40) = v36;
            return;
          }

          v47 = SLODWORD(v48[0]);
        }

        switch(v34)
        {
          case 1:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 2:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 4:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 8:
            v36 = v47;
            goto LABEL_83;
          default:
            goto LABEL_44;
        }

LABEL_80:
        if (v9 != v7)
        {
          goto LABEL_44;
        }
      }

      return;
    case 4:
      if (a2 != 5 && a2 != 255)
      {
        goto LABEL_44;
      }

      v24 = *(a3 + 40);

      sub_100182564(a1, v24);
      return;
    case 5:
      if (a2 != 1 && a2 != 255)
      {
        goto LABEL_44;
      }

      v25 = *(a3 + 40);

      sub_1001825A4(a1, v25);
      return;
    case 6:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v14 = sub_10003F4D8();
      sub_100181D58(v14, v15);
      if (v16)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) < 0x10000 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) + 2 <= *(a3 + 26))
        {
          v18 = *(a3 + 40);
          *v18 = v48[0];
          v19 = (v18 + 1);
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      return;
    case 7:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v26 = *(a3 + 40);
      v27 = sub_10003F4D8();
      sub_100181D58(v27, v28);
      if (v29)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) != -1 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) < *(a3 + 26))
        {
          *(v26 + LODWORD(v48[0])) = 0;
          v42 = a1;
          v19 = v26;
          goto LABEL_77;
        }

        goto LABEL_44;
      }

      return;
    case 8:
    case 9:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      sub_10003F4D8();
      sub_1001820B0();
      if (!v10)
      {
        return;
      }

      if (!*(a3 + 56))
      {
        goto LABEL_44;
      }

      if ((*(a3 + 30) & 0xF) == 9 && (v11 = *(a3 + 48)) != 0)
      {
        v12 = *(v11 - 16);
        if (v12)
        {
          v13 = v12(v48, a3, v11 - 8);
          LOBYTE(v12) = v48[2] == 0;
          goto LABEL_56;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = 1;
LABEL_56:
      if ((v12 & 1) == 0 && v13)
      {
        v37 = *(a3 + 30);
        v38 = v37 >= 0x40;
        v39 = v37 & 0x30;
        v41 = !v38 && v39 != 32;
        sub_100182174(v48, *(a3 + 56), *(a3 + 40), v41);
      }

      sub_10003F4D8();
      sub_100182128();
      return;
    case 0xB:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v21 = sub_10003F4D8();
      sub_100181D58(v21, v22);
      if (v23)
      {
        if (LODWORD(v48[0]) >= 0x10000)
        {
          goto LABEL_44;
        }

        if (LODWORD(v48[0]))
        {
          v17 = *(a3 + 26);
          if (LODWORD(v48[0]) != v17)
          {
            goto LABEL_44;
          }

          v19 = *(a3 + 40);
LABEL_70:
          v42 = a1;
LABEL_77:
          sub_100181C10(v42, v19, v17);
        }

        else
        {
          memset(*(a3 + 40), 0, *(a3 + 26));
        }
      }

      return;
    default:
LABEL_44:
      sub_10006DCB0();
      sub_1000E0AB0();
      *(a1 + 24) = v30;
      return;
  }
}

double sub_100183050(uint64_t a1)
{
  if ((*(a1 + 2) & 1) == 0)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 20);
  if (*(a1 + 20))
  {
    v3 = 0;
    do
    {
      v4 = *(*(*(a1 + 48) + 8 * v3) + 8);
      if (v4)
      {
        sub_1000E12C4(v4);
        v2 = *(a1 + 20);
      }

      *(a1 + 2) = 0;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001830C0(int a1, uint64_t (*a2)(void, void, void, __n128), void *a3)
{
  if (!a1 || a2 && a3)
  {
    result = 0;
    off_100B558D8 = a2;
    byte_100B558D0 = 0;
    byte_100B558D2 = 0;
    off_100B558E0 = a3;
    xmmword_100B558E8 = 0u;
    unk_100B558F8 = 0u;
    xmmword_100B55908 = 0u;
    unk_100B55918 = 0u;
    xmmword_100B55928 = 0u;
    unk_100B55938 = 0u;
    xmmword_100B55948 = 0u;
    xmmword_100B55958 = 0u;
    unk_100B55968 = 0u;
    xmmword_100B55978 = 0u;
    unk_100B55988 = 0u;
    xmmword_100B55998 = 0u;
    unk_100B559A8 = 0u;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_InitBisBroadcaster no createdCb or terminatedCb", v5, v6, v7, v8, v9, v10, v11, v3);
      v12 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return result;
}

void sub_100183188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &xmmword_100B558E8 + 56 * v8;
    if (v11[2] <= 1u && sub_1001832E0(*v11, 22, 1, a4, a5, a6, a7, a8) && sub_10000C240())
    {
      sub_10000AF54("Failed to terminate bigHandle %x", v12, v13, a4, a5, a6, a7, a8, *v11);
      v14 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_10000C0FC();
        *buf = 136446466;
        v17 = v15;
        v18 = 1024;
        v19 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
}

uint64_t sub_1001832E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&xmmword_100B558E8 + 56 * v9 + 2);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != 6);
    if (v10 == 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_CreateBig pending start command", v11, v12, v13, v14, v15, v16, v17, v35);
        v18 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 117;
    }
  }

  v20 = 0;
  for (i = 1; ; i = 0)
  {
    v22 = i;
    v23 = &xmmword_100B558E8 + 56 * v20;
    if (v23[1] == 1 && *v23 == a1)
    {
      break;
    }

    v20 = 1;
    if ((v22 & 1) == 0)
    {
      return 120;
    }
  }

  if (v23[2] > 1u)
  {
    return 0;
  }

  v24 = sub_1000D6178(0xEEu, a2, a3, a4, a5, a6, a7, a8, a1);
  if (!v24)
  {
    v23[2] = 6;
    if (v23[3])
    {
      v33 = 0;
      do
      {
        v19 = 0;
        *(*(*(*(v23 + 6) + 8 * v33++) + 8) + 48) = 6;
      }

      while (v33 < v23[3]);
      return v19;
    }

    return 0;
  }

  v19 = v24;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not terminate BIG %!", v25, v26, v27, v28, v29, v30, v31, v19);
    v32 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v19;
}

double sub_100183470(uint64_t a1)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 3);
  if (*(a1 + 3))
  {
    v3 = 0;
    v4 = *(a1 + 48);
    do
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 8);
      if (v6)
      {
        sub_1000E12C4(v6);
        v4 = *(a1 + 48);
        v2 = *(a1 + 3);
        v5 = *(v4 + 8 * v3);
      }

      *v5 = 0;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001834E8(int a1, uint64_t (*a2)(void, void, void, __n128), void *a3, void *a4, uint64_t (*a5)(void))
{
  if (!a1 || a2 && a3 && a4 && a5)
  {
    result = 0;
    off_100B559C8 = a2;
    byte_100B559C0 = 0;
    off_100B559D0 = a3;
    off_100B559D8 = a4;
    off_100B559E0 = a5;
    xmmword_100B55858 = 0u;
    unk_100B55868 = 0u;
    xmmword_100B55878 = 0u;
    unk_100B55888 = 0u;
    xmmword_100B55898 = 0u;
    unk_100B558A8 = 0u;
    xmmword_100B558B8 = 0u;
    xmmword_100B559E8 = 0u;
    unk_100B559F8 = 0u;
    xmmword_100B55A08 = 0u;
    unk_100B55A18 = 0u;
    xmmword_100B55A28 = 0u;
    unk_100B55A38 = 0u;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_InitBisSync no establishedCb or lostCb or terminateCb or advReportCb", v7, v8, v9, v10, v11, v12, v13, v5);
      v14 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return result;
}

void sub_1001835C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &xmmword_100B55858 + 56 * v8;
    if (v11[3] <= 1u && sub_100183714(*v11, 1, a3, a4, a5, a6, a7, a8) && sub_10000C240())
    {
      sub_10000AF54("Failed to terminate bigHandle %x", v12, a3, a4, a5, a6, a7, a8, *v11);
      v13 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10000C0FC();
        *buf = 136446466;
        v16 = v14;
        v17 = 1024;
        v18 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
}

uint64_t sub_100183714(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&xmmword_100B55858 + 56 * v9 + 3);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != 6);
    if (v10 == 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_BigTerminateSync pending start command", v11, v12, v13, v14, v15, v16, v17, v35);
        v18 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 117;
    }
  }

  v20 = 0;
  for (i = 1; ; i = 0)
  {
    v22 = i;
    v23 = &xmmword_100B55858 + 56 * v20;
    if (v23[2] == 1 && *v23 == a1)
    {
      break;
    }

    v20 = 1;
    if ((v22 & 1) == 0)
    {
      return 120;
    }
  }

  if (v23[3] > 1u)
  {
    return 0;
  }

  v24 = sub_100018960(240, sub_1001838B4, a3, a4, a5, a6, a7, a8, a1);
  if (!v24)
  {
    v23[3] = 6;
    if (v23[40])
    {
      v33 = 0;
      do
      {
        v19 = 0;
        *(*(*(*(v23 + 6) + 8 * v33++) + 8) + 48) = 6;
      }

      while (v33 < v23[40]);
      return v19;
    }

    return 0;
  }

  v19 = v24;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not terminate BIG sync %!", v25, v26, v27, v28, v29, v30, v31, v19);
    v32 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v19;
}

void sub_1001838B4(uint64_t a1, unsigned __int8 a2)
{
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &xmmword_100B55858 + 56 * v4;
    if (v7[2] == 1 && *v7 == a2)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      sub_1000D660C();
      v7 = 0;
      break;
    }
  }

  v8.n128_f64[0] = sub_100183050(v7);
  v9 = off_100B559D8;
  if (off_100B559D8)
  {

    v9(a1, a2, v8);
  }
}

void sub_10018396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B558E8 + 56 * v5;
      if (v8[1] == 1)
      {
        v8[2] = 7;
        v9 = sub_100183470(v8);
        if (off_100B558D8)
        {
          (off_100B558D8)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    return;
  }

  v10 = a1;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &xmmword_100B558E8 + 56 * v11;
    if (v14[1] == 1 && *v14 == a2)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      sub_1000D660C();
      v14 = 0;
      break;
    }
  }

  if (v10 == 768)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Create BIG completed, due to terminate a BIG while the create BIG is pending", v22, v23, v24, v25, v26, v27, v28, v40);
      v29 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v42 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = 768;
    goto LABEL_32;
  }

  if (!v10)
  {
    if (!*(a3 + 18))
    {
LABEL_19:
      v10 = 0;
      v20 = *a3;
      v21 = *(a3 + 16);
      *(v14 + 5) = *(a3 + 32);
      *(v14 + 24) = v21;
      *(v14 + 8) = v20;
      v14[2] = 0;
      ++byte_100B558D0;
      byte_100B558D2 += *(a3 + 18);
      goto LABEL_33;
    }

    v15 = 0;
    while (1)
    {
      v16 = sub_1002561EC(*(*(a3 + 24) + 2 * v15));
      v17 = *(v14 + 6);
      *(*(v17 + 8 * v15) + 8) = v16;
      v18 = *(*(v17 + 8 * v15) + 8);
      if (!v18)
      {
        break;
      }

      *(v18 + 48) = 0;
      *(*(*(*(v14 + 6) + 8 * v15) + 8) + 49) = 1;
      v19 = *(*(*(v14 + 6) + 8 * v15) + 8);
      *v19 = *(*(a3 + 24) + 2 * v15);
      *(v19 + 88) = 0;
      *(*(a3 + 32) + 8 * v15) = *(*(*(v14 + 6) + 8 * v15) + 8);
      if (++v15 >= *(a3 + 18))
      {
        goto LABEL_19;
      }
    }

    if (sub_10000C240() && (sub_10000AF54("No resource for lmHandle %:", v30, v31, v32, v33, v34, v35, v36, *(*(a3 + 24) + 2 * v15)), v37 = sub_10000C050(0x46u), os_log_type_enabled(v37, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v15)
      {
LABEL_27:
        for (i = 0; i != v15; ++i)
        {
          v39 = *(*(*(v14 + 6) + 8 * i) + 8);
          if (!v39)
          {
            sub_1000D660C();
            v39 = *(*(*(v14 + 6) + 8 * i) + 8);
          }

          sub_1000E12C4(v39);
          *(*(a3 + 32) + 8 * i) = 0;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_27;
    }

    v10 = 104;
  }

LABEL_32:
  v14[2] = 7;
  v20.n128_f64[0] = sub_100183470(v14);
LABEL_33:
  if (off_100B558D8)
  {
    off_100B558D8(v10, a2, a3, v20);
  }
}

void sub_100183C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B558E8 + 56 * v5;
      if (v8[1] == 1)
      {
        v8[2] = 7;
        --byte_100B558D0;
        byte_100B558D2 -= v8[26];
        v9 = sub_100183470(v8);
        if (off_100B558E0)
        {
          (off_100B558E0)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  else
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      v14 = &xmmword_100B558E8 + 56 * v11;
      if (v14[1] == 1 && *v14 == a2)
      {
        break;
      }

      v12 = 0;
      v11 = 1;
      if ((v13 & 1) == 0)
      {
        sub_1000D660C();
        v14 = 0;
        break;
      }
    }

    v14[2] = 7;
    --byte_100B558D0;
    byte_100B558D2 -= v14[26];
    v15.n128_f64[0] = sub_100183470(v14);
    v16 = off_100B558E0;
    if (off_100B558E0)
    {

      v16(a1, a2, a3, v15);
    }
  }
}

void sub_100183E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 129)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = &xmmword_100B55858 + 56 * v5;
      if (v8[2] == 1)
      {
        v8[3] = 7;
        v9 = sub_100183050(v8);
        if (off_100B559C8)
        {
          (off_100B559C8)(129, a2, a3, v9);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    return;
  }

  v10 = a1;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &xmmword_100B55858 + 56 * v11;
    if (v14[2] == 1 && *v14 == a2)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      sub_1000D660C();
      v14 = 0;
      break;
    }
  }

  if (v10 == 768)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BIG sync established completed, due to terminate a BIG while the sync established BIG is pending", v21, v22, v23, v24, v25, v26, v27, v39);
      v28 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v41 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = 768;
    goto LABEL_32;
  }

  if (!v10)
  {
    if (!*(a3 + 12))
    {
LABEL_19:
      v10 = 0;
      v20 = *a3;
      *(v14 + 24) = *(a3 + 16);
      *(v14 + 8) = v20;
      v14[3] = 0;
      ++byte_100B559C0;
      byte_100B559C2 += *(a3 + 12);
      goto LABEL_33;
    }

    v15 = 0;
    while (1)
    {
      v16 = sub_100256324(*(*(a3 + 16) + 2 * v15));
      v17 = *(v14 + 6);
      *(*(v17 + 8 * v15) + 8) = v16;
      v18 = *(*(v17 + 8 * v15) + 8);
      if (!v18)
      {
        break;
      }

      *(v18 + 48) = 0;
      *(*(*(*(v14 + 6) + 8 * v15) + 8) + 49) = 0;
      v19 = *(*(*(v14 + 6) + 8 * v15) + 8);
      *v19 = *(*(a3 + 16) + 2 * v15);
      *(v19 + 88) = 0;
      *(*(a3 + 24) + 8 * v15) = *(*(*(v14 + 6) + 8 * v15) + 8);
      if (++v15 >= *(a3 + 12))
      {
        goto LABEL_19;
      }
    }

    if (sub_10000C240() && (sub_10000AF54("No resource for lmHandle %:", v29, v30, v31, v32, v33, v34, v35, *(*(a3 + 16) + 2 * v15)), v36 = sub_10000C050(0x46u), os_log_type_enabled(v36, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v15)
      {
LABEL_27:
        for (i = 0; i != v15; ++i)
        {
          v38 = *(*(*(v14 + 6) + 8 * i) + 8);
          if (!v38)
          {
            sub_1000D660C();
            v38 = *(*(*(v14 + 6) + 8 * i) + 8);
          }

          sub_1000E12C4(v38);
          *(*(a3 + 24) + 8 * i) = 0;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_27;
    }

    v10 = 104;
  }

LABEL_32:
  v14[3] = 7;
  v20.n128_f64[0] = sub_100183050(v14);
LABEL_33:
  if (off_100B559C8)
  {
    off_100B559C8(v10, a2, a3, v20);
  }
}

void sub_100184150(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &xmmword_100B55858 + 56 * v4;
    if (v7[2] == 1 && *v7 == a1)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      sub_1000D660C();
      v7 = 0;
      break;
    }
  }

  v7[3] = 7;
  --byte_100B559C0;
  byte_100B559C2 -= v7[20];
  v8.n128_f64[0] = sub_100183050(v7);
  v9 = off_100B559D0;
  if (off_100B559D0)
  {

    v9(a1, a2, v8);
  }
}

uint64_t sub_10018421C()
{
  if (off_100B559E0)
  {
    return off_100B559E0();
  }

  return result;
}

uint64_t sub_100184230()
{
  sub_100304AF8("%s: [START]", "pcie_dump_state");
  if (qword_100B55A48)
  {
    sub_100304AF8("HCI/SCO Pool Info:");
    sub_100254AFC(qword_100B55A48);
  }

  if (qword_100B55A50)
  {
    sub_100304AF8("ACL Pool Info:");
    sub_100254AFC(qword_100B55A50);
  }

  return sub_100304AF8("%s: [END]", "pcie_dump_state");
}

uint64_t sub_1001842BC()
{
  if (qword_100B55A70 != -1)
  {
    sub_10080F74C();
  }

  if (qword_100B55A68)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

uint64_t sub_100184300(int a1, __int16 a2, unsigned int a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v6 = 3;
    }

    else
    {
      if (a1 != 243)
      {
        goto LABEL_8;
      }

      v6 = 4;
    }

    v7 = &qword_100B55A48;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v6 = 4;
        v7 = &qword_100B55A50;
        goto LABEL_12;
      }

LABEL_8:
      sub_100304AF8("PCIe default packet type: 0x%x\n", a1);
      off_100B55A60("PCIe bad packet type", 1);
      return 101;
    }

    v6 = 3;
    v7 = &qword_100B55A48;
  }

LABEL_12:
  v9 = sub_100254FA0(*v7);
  if (!v9)
  {
    v10 = malloc_type_malloc(v6 + a3, 0x100004077774924uLL);
    if (!v10)
    {
      sub_100304AF8("failed to allocate memory for tx_buff");
      off_100B55A60("PCIe memory allocation failure", 1);
      return 106;
    }

    v9 = v10;
  }

  *v9 = a2;
  *(v9 + 2) = a3;
  if (a1 == 243 || a1 == 2)
  {
    *(v9 + 3) = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC((v9 + v6));
  }

  else
  {
    sub_10001F480();
  }

  if (AppleConvergedTransportWrite())
  {
    return 625;
  }

  if ((byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe write failed: type %u\n", a1);
    off_100B55A60("PCIe write failed", 1);
  }

  return 1205;
}

uint64_t sub_100184550()
{
  sub_100304AF8("PCIe FLR\n");
  v0 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleBluetoothModule service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 5u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        return 0;
      }

      sub_100304AF8("PCIe FLR failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleBluetoothModule service\n");
  }

  return 1205;
}

uint64_t sub_100184634(int a1)
{
  sub_100304AF8("PCIe Download Firmware, size = %d\n", a1);
  AppleConvergedTransportInitParameters();
  v1 = 1205;
  if (AppleConvergedTransportCreate())
  {
    v2 = AppleConvergedTransportSendImage();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = "PCIe Download Firmware -- Done\n";
    }

    else
    {
      v4 = "PCIe failed to send image\n";
    }

    if (v3)
    {
      v1 = 1205;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v4 = "PCIe failed to create BTI transport\n";
  }

  sub_100304AF8(v4);
  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free BTI transport failed\n");
  }

  return v1;
}

uint64_t sub_100184744()
{
  sub_100304AF8("PCIe powercycle\n");
  v0 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleBluetoothModule service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 3u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        return 0;
      }

      sub_100304AF8("PCIe powercycle failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleBluetoothModule service\n");
  }

  return 1205;
}

uint64_t sub_100184828(uint64_t (*a1)(void, void), uint64_t a2, uint64_t (*a3)(void, void))
{
  if (a1 && a2 && a3)
  {
    if (qword_100B55A70 != -1)
    {
      sub_10080F74C();
    }

    if (qword_100B55A68)
    {
      off_100B55A60 = a1;
      if (!AppleConvergedTransportRegisterEventBlockQ())
      {
        sub_100304AF8("PCIe failed to register event listener\n", _NSConcreteStackBlock, 0x40000000, sub_10018495C, &unk_100AE4788, a1, a2);
        result = 0;
        off_100B55A60 = 0;
        return result;
      }

      sub_100304AF8("PCIe registered event listener successfully\n", _NSConcreteStackBlock, 0x40000000, sub_10018495C, &unk_100AE4788, a1, a2);
      if (sub_1003079A0(qword_100B55A68, a3))
      {
        sub_100304AF8("Registered ABTM listener successfully\n");
        return 1;
      }

      sub_100304AF8("Failed to register ABTM listener\n");
    }

    else
    {
      sub_100304AF8("Initialization failed\n");
    }
  }

  else
  {
    sub_100304AF8("Bad argument\n");
  }

  return 0;
}

uint64_t sub_10018495C(uint64_t a1, int a2, const char *a3, int a4)
{
  if (a2 == 2)
  {
    sub_100304AF8("PCIe detected controller is resetting");
    v7 = *(a1 + 40);
    v9 = &byte_100B55A59;
    v8 = a3;
  }

  else
  {
    if (a2)
    {
      sub_100304AF8("Non-fatal event: %s\n", a3);
      v7 = *(a1 + 32);
      v8 = a3;
      v9 = 0;
    }

    else
    {
      byte_100B55A59 = 1;
      sub_100304AF8("Fatal event: %s\n", a3);
      usleep(1000 * a4);
      v7 = *(a1 + 32);
      v8 = a3;
      v9 = 1;
    }
  }

  return v7(v8, v9);
}

uint64_t sub_100184A44(uint64_t a1)
{
  if (a1)
  {
    if (qword_100B55A70 != -1)
    {
      sub_10080F74C();
    }

    if (qword_100B55A68)
    {
      if (AppleConvergedTransportRegisterTimeSyncEventBlockQ())
      {
        sub_100304AF8("PCIe registered time sync listener successfully\n");
        return 1;
      }

      sub_100304AF8("PCIe failed to register time sync listener\n");
    }

    else
    {
      sub_100304AF8("Initialization failed\n");
    }
  }

  else
  {
    sub_100304AF8("Bad argument\n");
  }

  return 0;
}

uint64_t sub_100184B74()
{
  qword_100B55A48 = sub_100254D50(0x10u, 0x200uLL);
  if (qword_100B55A48)
  {
    qword_100B55A50 = sub_100254D50(0x10u, 0x1000uLL);
    if (qword_100B55A50)
    {
      if ((AppleConvergedTransportIsValid() & 1) != 0 || (AppleConvergedTransportIsValid() & 1) != 0 || AppleConvergedTransportIsValid())
      {
        sub_1000D660C();
      }

      v2 = 0u;
      v3 = 0u;
      HIDWORD(v1) = 0;
      byte_100B55A59 = 0;
      AppleConvergedTransportInitParameters();
      DWORD2(v2) = 5000;
      LODWORD(v3) = 12;
      *(&v3 + 4) = 0x10200000020;
      HIDWORD(v4) = 0;
      if (AppleConvergedTransportCreate())
      {
        AppleConvergedTransportInitParameters();
        LODWORD(v1) = 3;
        DWORD2(v2) = 5000;
        LODWORD(v3) = 12;
        *(&v3 + 4) = 0xA2200000020;
        LODWORD(v4) = 33;
        if (AppleConvergedTransportCreate())
        {
          AppleConvergedTransportInitParameters();
          LODWORD(v1) = 4;
          DWORD2(v2) = 5000;
          LODWORD(v3) = 12;
          *(&v3 + 4) = 0x10200000020;
          LODWORD(v4) = 33;
          if (AppleConvergedTransportCreate())
          {
            return 0;
          }

          sub_100304AF8("PCIe failed to create SCO transport\n", v1, 0, &stru_100AE49A8, *(&v2 + 1), v3, &stru_100AE49E8, &stru_100AE4A28, 0, 0, v4);
        }

        else
        {
          sub_100304AF8("PCIe failed to create ACL transport\n", v1, 0, &stru_100AE48E8, *(&v2 + 1), v3, &stru_100AE4928, &stru_100AE4968, 0, 0, v4);
        }
      }

      else
      {
        sub_100304AF8("PCIe failed to create HCI transport\n", 2, 0, &stru_100AE4828, *(&v2 + 1), v3, &stru_100AE4868, &stru_100AE48A8, 0, 0, 25);
      }

      sub_1001850C0();
      sub_1001851B4();
      off_100B55A60("PCIe transport creation failed", 1);
    }

    else
    {
      sub_100254CB4(qword_100B55A48);
      off_100B55A60("acl mempool allocation failure", 1);
    }
  }

  else
  {
    off_100B55A60("hci-sco mempool allocation failure", 1);
  }

  return 633;
}

void sub_100184E0C(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  if (!a2)
  {
    if ((byte_100B55A59 & 1) == 0)
    {
      if ((byte_100B55A58 & 1) == 0)
      {
        sub_1000031B0();
        v9[0] = 0;
        v9[1] = 0;
        v8 = sub_100003560(a1, a3, a4, v9);
        sub_10000394C(a1, a3, v8, v9);
        sub_10000C198();
        if (!a3)
        {
          return;
        }

LABEL_10:
        free(a3);
        return;
      }

      sub_1000040DC();
    }

    if (!a3)
    {
      return;
    }

    goto LABEL_10;
  }

  if ((byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe read failed: type %u, status 0x%x\n", a1, a2);
    sleep(0xC8u);
    v5 = off_100B55A60;

    v5("PCIe read failed", 1);
  }
}

void sub_100184F0C(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe HCI write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe HCI write failed", 1);
  }
}

void sub_100184FB0(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe ACL write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe ACL write failed", 1);
  }
}

void sub_100185054(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2 && (byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe SCO write failed: 0x%x\n", a2);
    sleep(0xC8u);
    v4 = off_100B55A60;

    v4("PCIe SCO write failed", 1);
  }
}

uint64_t sub_1001850C0()
{
  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free HCI transport failed\n");
    off_100B55A60("PCIe free HCI transport failed", 1);
  }

  if (AppleConvergedTransportIsValid() && (AppleConvergedTransportFree() & 1) == 0)
  {
    sub_100304AF8("PCIe free ACL transport failed\n");
    off_100B55A60("PCIe free ACL transport failed", 1);
  }

  result = AppleConvergedTransportIsValid();
  if (result)
  {
    result = AppleConvergedTransportFree();
    if ((result & 1) == 0)
    {
      sub_100304AF8("PCIe free SCO transport failed\n");
      v1 = off_100B55A60;

      return v1("PCIe free SCO transport failed", 1);
    }
  }

  return result;
}

void sub_1001851B4()
{
  if (qword_100B55A48)
  {
    sub_100254EE8(qword_100B55A48);
    sub_100254CB4(qword_100B55A48);
    qword_100B55A48 = 0;
  }

  if (qword_100B55A50)
  {
    sub_100254EE8(qword_100B55A50);
    sub_100254CB4(qword_100B55A50);
    qword_100B55A50 = 0;
  }
}

uint64_t sub_100185210()
{
  sub_10000C198();
  sub_1001850C0();
  sub_1001851B4();
  sub_1000031B0();
  return 0;
}

uint64_t sub_100185294()
{
  if (!sub_10023E808())
  {
    return 114;
  }

  sub_100304AF8("pcie_force_doorbell_flush AppleConvergedIPCOLYBTControl\n");
  v0 = IOServiceMatching("AppleConvergedIPCOLYBTControl");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    connect = 0;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      sub_100304AF8("PCIe could not open AppleConvergedIPCOLYBTControl service: %#x\n");
    }

    else
    {
      v3 = IOConnectCallScalarMethod(connect, 4u, 0, 0, 0, 0);
      if (!v3)
      {
        IOServiceClose(connect);
        sub_100304AF8("pcie_force_doorbell_flush completed successfully\n");
        return 0;
      }

      sub_100304AF8("PCIe doorbell flush failed: %#x\n", v3);
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleConvergedIPCOLYBTControl service\n");
  }

  return 1205;
}

uint64_t sub_1001853C4()
{
  qword_100B55A90 = 0;
  qword_100B55AA8 = 0;
  qword_100B55AB0 = -1;
  unk_100B55AB9 = 0;
  qword_100B55A98 = -1;
  qword_100B55AC0 = 0;
  qword_100B55AC8 = -1;
  unk_100B55AD1 = 0;
  unk_100B55AA1 = 0;
  qword_100B55AD8 = 0;
  qword_100B55AE0 = -1;
  *algn_100B55AE9 = 0;
  byte_100B55A59 = 0;
  if ((sub_10018567C("hci", &qword_100B55A90) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create HCI transport\n");
    goto LABEL_5;
  }

  byte_100B55AA0 = 4;
  unk_100B55AA1 = 25448;
  byte_100B55AA3 = 105;
  if (pthread_create(&qword_100BC7DC0, 0, sub_1000032AC, &qword_100B55A90))
  {
    sub_100304AF8("failed to create hci rx thread\n");
LABEL_5:
    sub_100185E08();
    off_100B55A60("PCIe Skywalk transport creation failed", 1);
    return 633;
  }

  sub_1001C5C44(qword_100BC7DC0, 63);
  if ((sub_10018567C("acl", &qword_100B55AA8) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create ACL transport\n");
    goto LABEL_5;
  }

  byte_100B55AB8 = 2;
  unk_100B55AB9 = 25441;
  byte_100B55ABB = 108;
  if (pthread_create(&qword_100BC7DC8, 0, sub_1000032AC, &qword_100B55AA8))
  {
    sub_100304AF8("failed to create acl rx thread\n");
    goto LABEL_5;
  }

  sub_1001C5C44(qword_100BC7DC8, 63);
  if ((sub_10018567C("sco", &qword_100B55AC0) & 0x80000000) != 0)
  {
    sub_100304AF8("PCIe Skywalk failed to create SCO transport\n");
    goto LABEL_5;
  }

  byte_100B55AD0 = 3;
  unk_100B55AD1 = 25459;
  byte_100B55AD3 = 111;
  if (pthread_create(&qword_100BC7DD0, 0, sub_1000032AC, &qword_100B55AC0))
  {
    sub_100304AF8("failed to create sco rx thread\n");
    goto LABEL_5;
  }

  sub_1001C5C44(qword_100BC7DD0, 63);
  if (sub_100185C94() && !sub_10018567C("iso", &qword_100B55AD8))
  {
    byte_100B55AE8 = 5;
    __strlcpy_chk();
    if (pthread_create(&qword_100BC7DD8, 0, sub_1000032AC, &qword_100B55AD8))
    {
      sub_100304AF8("failed to create iso rx thread\n");
      goto LABEL_5;
    }

    sub_1001C5C44(qword_100BC7DD8, 63);
  }

  result = 0;
  byte_100B56AF0 = 0;
  return result;
}

uint64_t sub_10018567C(const char *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    sub_100304AF8("%s: invalid input. protocol/channel_data null\n");
    return 0xFFFFFFFFLL;
  }

  memset(&changelist, 0, sizeof(changelist));
  memset(uu, 0, sizeof(uu));
  sub_100304AF8("retrieving uuid for %s\n", a1);
  notification[0] = 0;
  *in = 0u;
  memset(v37, 0, sizeof(v37));
  v4 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v4);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v7 = IOServiceMatching("AppleConvergedIPCInterface");
  if (v7)
  {
    v8 = v7;
    v9 = kCFAllocatorDefault;
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v8, @"ACIPCInterfaceProtocol", v10);
      CFRelease(v11);
      v12 = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v8, sub_100185C54, Current, notification);
      if (v12)
      {
        sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v12);
        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v4);
      }

      else
      {
        v13 = IOIteratorNext(notification[0]);
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = 0xFFFF;
        }

        else
        {
          do
          {
            sub_100304AF8("ACIPCInterface not found, waiting for it to appear");
            v16 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
            v17 = IOIteratorNext(notification[0]);
            v15 = v17 == 0;
            if (v17)
            {
              v18 = 1;
            }

            else
            {
              v18 = v16 == kCFRunLoopRunTimedOut;
            }
          }

          while (!v18);
          v14 = v17;
          v9 = kCFAllocatorDefault;
        }

        CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        IONotificationPortDestroy(v4);
        IOObjectRelease(notification[0]);
        if (!v15 && (v16 == 0xFFFF || v16 == kCFRunLoopRunStopped))
        {
          v19 = IORegistryEntrySearchCFProperty(v14, "IOService", @"ACIPCInterfaceTransport", v9, 1u);
          if (v19)
          {
            v20 = v19;
            *buffer = 0;
            v35 = 0;
            if (CFStringGetCString(v19, buffer, 16, 0x600u))
            {
              sub_100304AF8("ACIPCInterfaceTransport %s\n", buffer);
              if (*buffer == 0x6B6C6177796B73)
              {
                v28 = 0;
                while (1)
                {
                  v29 = IORegistryEntrySearchCFProperty(v14, "IOService", @"IOSkywalkNexusUUID", v9, 1u);
                  if (v29)
                  {
                    break;
                  }

                  usleep(0x30D40u);
                  sub_100304AF8("Retry: %d - trying to find ACIPCInterfaceTransport + IOSkywalkNexusUUID\n", v28++);
                  if (v28 == 25)
                  {
                    goto LABEL_29;
                  }
                }

                v30 = v29;
                if (CFStringGetCString(v29, in, 37, 0x600u))
                {
                  sub_100304AF8("protocol: %s, uuidstr: %s\n", a1, in);
                  uuid_parse(in, uu);
                }

                else
                {
                  sub_100304AF8("protocol: %s, failed to get uuid CString\n", a1);
                }

                sub_100304AF8("ACIPCInterfaceTransport + IOSkywalkNexusUUID found\n");
                CFRelease(v30);
              }

              else
              {
                sub_100304AF8("ACIPCInterfaceTransport is not skywalk\n");
              }
            }

            else
            {
              sub_100304AF8("failed to get cstring property");
            }

LABEL_29:
            CFRelease(v20);
            if (!v14)
            {
              goto LABEL_31;
            }
          }

          else
          {
            sub_100304AF8("ACIPCInterface found, ACIPCInterfaceTransport property not found");
          }
        }

        else
        {
          sub_100304AF8("ACIPCInterface not found after 5 second -- runLoopResult = 0x%02x", v16);
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        IOObjectRelease(v14);
      }
    }

    else
    {
      sub_100304AF8("%s: failed to create stringRef", "get_uuid");
      CFRelease(v8);
    }
  }

  else
  {
    sub_100304AF8("%s: could not create matching dictionary", "get_uuid");
  }

LABEL_31:
  v21 = os_channel_create();
  if (v21)
  {
    *a2 = v21;
    if (os_channel_attr_create())
    {
      if (!os_channel_read_attr())
      {
        *in = 0;
        *buffer = 0;
        *notification = 0;
        os_channel_attr_get();
        os_channel_attr_get();
        os_channel_attr_get();
        sub_100304AF8("(%s) skywalk channel slotlen: %llu, rxslots: %llu, txslots: %llu\n", a1, *in, *buffer, *notification);
      }

      os_channel_attr_destroy();
    }

    v22 = kqueue();
    if (v22 == -1)
    {
      sub_100304AF8("(%s) failed to create write kqueue\n");
    }

    else
    {
      v23 = v22;
      *(a2 + 8) = v22;
      changelist.ident = os_channel_get_fd();
      *&changelist.filter = 393214;
      memset(&changelist.fflags, 0, 20);
      if (kevent(v23, &changelist, 1, 0, 0, 0) == -1)
      {
        sub_100304AF8("(%s) write kevent registration failed\n");
      }

      else
      {
        v24 = kqueue();
        if (v24 == -1)
        {
          sub_100304AF8("(%s) failed to create read kqueue\n");
        }

        else
        {
          v25 = v24;
          v26 = &changelist | 0xC;
          *(a2 + 12) = v24;
          changelist.ident = os_channel_get_fd();
          *&changelist.filter = 393215;
          *v26 = 0;
          *(v26 + 8) = 0;
          *(v26 + 16) = 0;
          if (kevent(v25, &changelist, 1, 0, 0, 0) != -1)
          {
            sub_100304AF8("(%s) channel created successfully\n", a1);
            return 0;
          }

          sub_100304AF8("(%s) read kevent registration failed\n");
        }
      }
    }
  }

  else
  {
    sub_100304AF8("(%s) failed to create channel\n");
  }

  sub_100304AF8("(%s) failed to create channel\n");
  return 0xFFFFFFFFLL;
}

void sub_100185C54(__CFRunLoop *a1)
{
  sub_100304AF8("ACIPCInterface found, releasing waiting thread");

  CFRunLoopStop(a1);
}

uint64_t sub_100185C94()
{
  valuePtr = 0;
  v0 = IOServiceNameMatching("AppleOLYHAL");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  v3 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"HWIdentifiers", kCFAllocatorDefault, 1u);
  if (!v3)
  {
    IOObjectRelease(v2);
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    v10 = 0;
    Value = 0;
    v8 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v4, @"C");
  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  v7 = CFDictionaryGetValue(v4, @"s");
  v8 = v7;
  if (valuePtr == 4388)
  {
    if (CFStringCompare(v7, @"C2", 0))
    {
      v9 = valuePtr > 0x112E;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  if (valuePtr >= 0x112F)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 0;
LABEL_15:
  IOObjectRelease(v2);
  CFRelease(v4);
  if (Value)
  {
    CFRelease(Value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t sub_100185E08()
{
  sub_100304AF8("closing hci channel\n");
  sub_100185E88(&qword_100B55A90);
  sub_100304AF8("closing acl channel\n");
  sub_100185E88(&qword_100B55AA8);
  sub_100304AF8("closing sco channel\n");
  sub_100185E88(&qword_100B55AC0);
  sub_100304AF8("closing iso channel\n");

  return sub_100185E88(&qword_100B55AD8);
}

uint64_t sub_100185E88(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2 != -1)
    {
      close(v2);
      *(v1 + 8) = -1;
    }

    v3 = *(v1 + 12);
    if (v3 != -1)
    {
      close(v3);
      *(v1 + 12) = -1;
    }

    result = *v1;
    if (*v1)
    {
      result = os_channel_destroy();
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_100185EF8()
{
  sub_100185E08();
  sub_10000C198();
  v0 = pthread_join(qword_100BC7DC0, 0);
  if (v0)
  {
    sub_100304AF8("hci thread join failed: %d\n", v0);
  }

  sub_100304AF8("hci thread joined\n");
  v1 = pthread_join(qword_100BC7DC8, 0);
  if (v1)
  {
    sub_100304AF8("acl thread join failed: %d\n", v1);
  }

  sub_100304AF8("acl thread joined\n");
  v2 = pthread_join(qword_100BC7DD0, 0);
  if (v2)
  {
    sub_100304AF8("sco thread join failed: %d\n", v2);
  }

  sub_100304AF8("sco thread joined\n");
  v3 = pthread_join(qword_100BC7DD8, 0);
  if (v3)
  {
    sub_100304AF8("iso thread join failed: %d\n", v3);
  }

  sub_100304AF8("iso thread joined\n");
  sub_1000031B0();
  return 0;
}

const char *sub_10018601C(int a1)
{
  if (a1 > -536870353)
  {
    if (a1 > -536870257)
    {
      if (a1 <= -536870113)
      {
        switch(a1)
        {
          case -536870256:
            return "kIOMessageSystemWillNotSleep";
          case -536870144:
            return "kIOMessageSystemHasPoweredOn";
          case -536870128:
            return "kIOMessageSystemWillRestart";
        }
      }

      else if (a1 > -536870081)
      {
        if (a1 == -536870080)
        {
          return "kIOMessageSystemCapabilityChange";
        }

        if (a1 == -536870064)
        {
          return "kIOMessageDeviceSignaledWakeup";
        }
      }

      else
      {
        if (a1 == -536870112)
        {
          return "kIOMessageSystemWillPowerOn";
        }

        if (a1 == -536870096)
        {
          return "kIOMessageCopyClientID";
        }
      }
    }

    else if (a1 <= -536870316)
    {
      switch(a1)
      {
        case -536870352:
          return "kIOMessageDeviceHasPoweredOn";
        case -536870336:
          return "kIOMessageCanSystemPowerOff";
        case -536870320:
          return "kIOMessageSystemWillPowerOff";
      }
    }

    else if (a1 > -536870289)
    {
      if (a1 == -536870288)
      {
        return "kIOMessageCanSystemSleep";
      }

      if (a1 == -536870272)
      {
        return "kIOMessageSystemWillSleep";
      }
    }

    else
    {
      if (a1 == -536870315)
      {
        return "kIOMessageSystemPagingOff";
      }

      if (a1 == -536870304)
      {
        return "kIOMessageSystemWillNotPowerOff";
      }
    }
  }

  else if (a1 > -536870617)
  {
    if (a1 <= -536870385)
    {
      switch(a1)
      {
        case -536870616:
          return "kIOMessageConsoleSecurityChange";
        case -536870608:
          return "kIOMessageServicePropertyChange";
        case -536870400:
          return "kIOMessageCanDevicePowerOff";
      }
    }

    else if (a1 > -536870369)
    {
      if (a1 == -536870368)
      {
        return "kIOMessageDeviceWillNotPowerOff";
      }

      if (a1 == -536870363)
      {
        return "kIOMessageDeviceHasPoweredOff";
      }
    }

    else
    {
      if (a1 == -536870384)
      {
        return "kIOMessageDeviceWillPowerOff";
      }

      if (a1 == -536870379)
      {
        return "kIOMessageDeviceWillPowerOn";
      }
    }
  }

  else if (a1 <= -536870657)
  {
    switch(a1)
    {
      case -536870896:
        return "kIOMessageServiceIsTerminated";
      case -536870880:
        return "kIOMessageServiceIsSuspended";
      case -536870864:
        return "kIOMessageServiceIsResumed";
    }
  }

  else if (a1 > -536870641)
  {
    if (a1 == -536870640)
    {
      return "kIOMessageServiceWasClosed";
    }

    if (a1 == -536870624)
    {
      return "kIOMessageServiceBusyStateChange";
    }
  }

  else
  {
    if (a1 == -536870656)
    {
      return "kIOMessageServiceIsRequestingClose";
    }

    if (a1 == -536870655)
    {
      return "kIOMessageServiceIsAttemptingOpen";
    }
  }

  return "Unknown";
}

uint64_t sub_1001863E4(uint64_t (*a1)(void, void), uint64_t (*a2)(void, void))
{
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v4 = sub_10022EB48(&keys, &values, 1);
  notification = 0;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IONotificationPortCreate(kIOMainPortDefault);
    if (v7)
    {
      v8 = v7;
      IONotificationPortSetDispatchQueue(v7, &_dispatch_main_q);
      v9 = IOServiceAddInterestNotification(v8, v6, "IOGeneralInterest", sub_100186530, 0, &notification);
      if (!v9)
      {
        IOObjectRelease(v6);
        off_100B56AF8 = a1;
        off_100B56B00 = a2;
        return 1;
      }

      sub_100304AF8("Could not add interest notification on service: %#x\n", v9);
      IONotificationPortDestroy(v8);
    }

    else
    {
      sub_100304AF8("Cannot create notification port\n");
    }
  }

  else
  {
    sub_100304AF8("Cannot find AppleBluetoothModule service\n");
  }

  return 0;
}

void sub_100186530(uint64_t a1, io_registry_entry_t a2, int a3)
{
  v5 = sub_10018601C(a3);
  sub_100304AF8("%s: messageType:%s (0x%x)\n", "pcieSrsListenerCallback", v5, a3);
  v6 = IORegistryEntrySearchCFProperty(a2, "IOService", @"errorCode", kCFAllocatorDefault, 1u);
  valuePtr = 0;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (a3 == -536870608 && v6)
  {
    v10 = 0;
    if (!CFNumberGetValue(v6, kCFNumberSInt32Type, &v10))
    {
      sub_100304AF8("%s: failed to get property value\n");
      goto LABEL_34;
    }

    sub_100304AF8("%s: errorCode:%d\n", "pcieSrsListenerCallback", v10);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if (off_100B56B00)
        {
          off_100B56B00("PCIE SRS Reset", &byte_100B56B10);
        }

        goto LABEL_32;
      }

      if (v10 != 4)
      {
        goto LABEL_29;
      }
    }

    else if (v10 != 1)
    {
      if (v10 == 2)
      {
        if (off_100B56AF8)
        {
          off_100B56AF8("Non Fatal Error", 0);
        }

        goto LABEL_32;
      }

LABEL_29:
      sub_100304AF8("%s: Invalid errorCode \n", "pcieSrsListenerCallback");
LABEL_32:
      if (IORegistryEntrySetCFProperty(a2, @"errorCode", v7))
      {
        sub_100304AF8("%s: failed to clear error code due to: %x\n");
      }

      goto LABEL_34;
    }

    if (off_100B56AF8)
    {
      if (v10 == 4)
      {
        v9 = "Driver Error";
      }

      else
      {
        v9 = "Fatal Error";
      }

      off_100B56AF8(v9, 1);
    }

    goto LABEL_32;
  }

  if ((a3 | 0x20) == 0xE0000230)
  {
    if (a3 == -536870352)
    {
      v8 = "woke up";
    }

    else
    {
      v8 = "in sleep";
    }

    sub_100304AF8("SRS Transport %s", v8);
  }

  else if (a3 == -536870896 && off_100B56AF8)
  {
    off_100B56AF8("Driver Terminated", 1);
  }

  if (!v6)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_34:
  CFRelease(v6);
  if (!v7)
  {
    return;
  }

LABEL_16:
  CFRelease(v7);
}

uint64_t sub_100186790(uint64_t (*a1)(void))
{
  connect = 0;
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v2 = sub_10022EB48(&keys, &values, 1);
  v13 = 0u;
  v14 = 0u;
  *reference = 0u;
  v12 = 0u;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IONotificationPortCreate(kIOMainPortDefault);
    v6 = v5;
    if (v5)
    {
      MachPort = IONotificationPortGetMachPort(v5);
      if (MachPort)
      {
        v8 = MachPort;
        IONotificationPortSetDispatchQueue(v6, &_dispatch_main_q);
        if (a1)
        {
          reference[1] = sub_1001869B0;
          *&v12 = a1;
          if (IOServiceOpen(v4, mach_task_self_, 0, &connect))
          {
            sub_100304AF8("%s: PCIe could not open AppleSunriseBluetooth service: %#x\n");
          }

          else
          {
            if (!IOConnectCallAsyncScalarMethod(connect, 8u, v8, reference, 3u, 0, 0, 0, 0))
            {
              sub_100304AF8("%s: Created Timesync listener successfully\n", "create_pcie_srs_timesync_listener");
              off_100B56B08 = a1;
              IOObjectRelease(v4);
              return 1;
            }

            sub_100304AF8("%s: IOConnectCallAsyncScalarMethod failed with error:: %#x\n");
          }
        }

        else
        {
          sub_100304AF8("%s: Bad argument\n");
        }
      }

      else
      {
        sub_100304AF8("%s: Failed to get mach notification port\n");
      }
    }

    else
    {
      sub_100304AF8("%s: Cannot create notification port\n");
    }

    IOObjectRelease(v4);
    if (connect)
    {
      IOServiceClose(connect);
    }

    if (v6)
    {
      IONotificationPortDestroy(v6);
    }
  }

  else
  {
    sub_100304AF8("%s: Cannot find AppleBluetoothModule service\n", "create_pcie_srs_timesync_listener");
  }

  return 0;
}

void sub_1001869B0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (a3[1] == -1)
    {
      sub_100304AF8("%s: Invalid timestamp received\n");
    }

    else
    {
      v3[1] = a3[1];
      v4 = 0;
      v3[0] = *a3;
      LODWORD(v4) = a3[2];
      off_100B56B08(v3);
    }
  }

  else
  {
    sub_100304AF8("%s: Invalid args\n");
  }
}

uint64_t sub_100186A34()
{
  if (qword_100B56B18 != -1)
  {
    sub_10080F760();
  }

  if (qword_100B56B20)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

uint64_t sub_100186A78()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  qword_100B56B28 = dispatch_queue_create("com.apple.bluetoothd.pcie-srs", v0);
  byte_100B56B10 = 0;
  if (dword_100B56B30)
  {
    sub_1000D660C();
  }

  dword_100B56B30 = sub_100187344("hci");
  if (!dword_100B56B30)
  {
    sub_100304AF8("Failed to find SRS HCI transport");
    goto LABEL_29;
  }

  if (dword_100B56B78)
  {
    sub_1000D660C();
  }

  dword_100B56B78 = sub_100187344("acl");
  if (!dword_100B56B78)
  {
    sub_100304AF8("Failed to find SRS ACL transport");
    goto LABEL_29;
  }

  if (dword_100B56BC0)
  {
    sub_1000D660C();
  }

  dword_100B56BC0 = sub_100187344("sco");
  if (!dword_100B56BC0)
  {
    sub_100304AF8("Failed to find SRS SCO transport");
    goto LABEL_29;
  }

  if (dword_100B56C08)
  {
    sub_1000D660C();
  }

  dword_100B56C08 = sub_100187344("iso");
  if (!dword_100B56C08)
  {
    sub_100304AF8("Failed to find SRS ISO transport");
  }

  if (dword_100B56B34)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56B30, &dword_100B56B30))
  {
    sub_100304AF8("Failed to open SRS HCI transport");
LABEL_29:
    sub_10000C198();
    sub_100187BEC();
    sub_1000031B0();
    return 114;
  }

  if (dword_100B56B7C)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56B78, &dword_100B56B78))
  {
    sub_100304AF8("Failed to open SRS ACL transport");
    goto LABEL_29;
  }

  if (dword_100B56BC4)
  {
    sub_1000D660C();
  }

  if (sub_100187518(dword_100B56BC0, &dword_100B56BC0))
  {
    sub_100304AF8("Failed to open SRS SCO transport");
    goto LABEL_29;
  }

  v2 = dword_100B56C08;
  if (dword_100B56C08)
  {
    if (dword_100B56C0C)
    {
      sub_1000D660C();
      v2 = dword_100B56C08;
    }

    if (sub_100187518(v2, &dword_100B56C08))
    {
      sub_100304AF8("Failed to open SRS ISO transport");
    }
  }

  sub_100187594(&dword_100B56B30);
  sub_100187594(&dword_100B56B78);
  sub_100187594(&dword_100B56BC0);
  return 0;
}

uint64_t sub_100186C90()
{
  sub_10000C198();
  sub_100187BEC();
  sub_1000031B0();
  return 0;
}

void sub_100186CBC(int a1, __int16 a2, int a3)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_8;
      case 5:
        v4 = &dword_100B56C08;
        goto LABEL_11;
      case 243:
LABEL_8:
        v4 = &dword_100B56BC0;
        goto LABEL_11;
    }

LABEL_32:
    sub_100304AF8("PCIe default packet type: 0x%x\n");
    goto LABEL_34;
  }

  if (a1 == 1)
  {
    v4 = &dword_100B56B30;
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_32;
  }

  v4 = &dword_100B56B78;
LABEL_11:
  if (byte_100B57C51 == 1)
  {
    sub_1000D660C();
    return;
  }

  byte_100B56C51[&stru_100001000] = 1;
  byte_100B56C51[0] = a1;
  word_100B56C52 = a2;
  byte_100B56C54 = a3;
  if (a1 != 2 && a1 != 243 && a1 != 5)
  {
    v5 = 4;
    if (a3)
    {
      goto LABEL_17;
    }

LABEL_19:
    sub_10001F480();
    goto LABEL_20;
  }

  byte_100B56C55 = BYTE1(a3);
  v5 = 5;
  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_10001F6DC(&byte_100B56C51[v5]);
LABEL_20:
  if (!*v4 || (v6 = v4[1]) == 0)
  {
    sub_100304AF8("Invalid SRS transport handle to write\n");
    byte_100B57C51 = 0;
LABEL_27:
    if (byte_100B56B10)
    {
      return;
    }

    sub_100304AF8("PCIe SRS write failed: type %u\n");
LABEL_34:
    __break(1u);
    return;
  }

  if (byte_100B56C51[0] >= 6u)
  {
    sub_10080F774();
  }

  v7 = IOConnectCallMethod(v6, 1u, 0, 0, byte_100B56C51, (v5 + a3), 0, 0, 0, 0);
  if (v7)
  {
    v8 = v7;
    sub_100304AF8("Write to SRS transport failed with error: %x\n", v7);
    byte_100B57C51 = 0;
    if (v8 == -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    byte_100B57C51 = 0;
  }
}

uint64_t sub_100186EE0()
{
  connect = 0;
  sub_100304AF8("SRS: PCIe FLR Start...");
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v3)
    {
      sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x", v3);
      v4 = 1205;
    }

    else
    {
      v5 = IOConnectCallScalarMethod(connect, 5u, 0, 0, 0, 0);
      v4 = v5;
      if (v5)
      {
        sub_100304AF8("PCIe FLR failed: %#x", v5);
        if (v4 == -536870167)
        {
          v4 = 1220;
        }

        else
        {
          v4 = 1205;
        }
      }

      else
      {
        sub_100304AF8("SRS: PCIe FLR Done...");
      }
    }

    IOObjectRelease(v2);
    if (connect)
    {
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  return v4;
}

uint64_t sub_100187044(int a1, const void *a2)
{
  connect = 0;
  sub_100304AF8("SRS: Send Image Start ...");
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v4 = sub_10022EB48(&keys, &values, 1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v7)
    {
      sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x", v7);
      v8 = 1205;
    }

    else
    {
      v9 = IOConnectCallMethod(connect, 7u, 0, 0, a2, a1, 0, 0, 0, 0);
      v8 = v9;
      if (v9)
      {
        sub_100304AF8("SRS: sendImage failed: %#x", v9);
        if (v8 == -536870167)
        {
          v8 = 1220;
        }

        else
        {
          v8 = 1205;
        }
      }

      else
      {
        sub_100304AF8("SRS: Send Image Done ...");
      }
    }

    IOObjectRelease(v6);
    if (connect)
    {
      IOServiceClose(connect);
    }
  }

  else
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  return v8;
}

uint64_t sub_1001871BC()
{
  connect = 0;
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  sub_100304AF8("SRS: PCIe Power Cycle ...");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
    return 1205;
  }

  v2 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
    sub_100304AF8("PCIe could not open AppleSunriseBluetooth service: %#x");
LABEL_7:
    v3 = 1205;
    goto LABEL_8;
  }

  if (IOConnectCallScalarMethod(connect, 3u, 0, 0, 0, 0))
  {
    sub_100304AF8("SRS: PCIe Power Failed: %#x");
    goto LABEL_7;
  }

  sub_100304AF8("SRS: PCIe Power Cycle Done ...");
  v3 = 0;
LABEL_8:
  IOObjectRelease(v2);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v3;
}

uint64_t sub_100187344(const char *a1)
{
  notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  *keys = *off_100AE4AC8;
  values[0] = @"AppleSunriseBluetoothIPC";
  values[1] = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
  v5 = sub_10022EB48(keys, values, 2);
  v6 = CFAutorelease(v5);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 2, v6);
  v8 = IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", MutableCopy, sub_100187780, Current, &notification);
  if (v8)
  {
    sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v8);
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    return 0;
  }

  else
  {
    v10 = IOIteratorNext(notification);
    if (!v10)
    {
      do
      {
        sub_100304AF8("AppleSunriseIPCInterface not found, waiting for it to appear");
        v11 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
        v10 = IOIteratorNext(notification);
        if (v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11 == kCFRunLoopRunTimedOut;
        }
      }

      while (!v12);
    }

    v9 = v10;
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
  }

  return v9;
}

uint64_t sub_100187518(io_service_t a1, uint64_t a2)
{
  connect = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  result = IOServiceOpen(a1, mach_task_self_, 0, &connect);
  if (result)
  {
    sub_100304AF8("Failed to open connection to AppleSunriseIPCInterface: %#x\n", result);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = connect;
    *a2 = a1;
    *(a2 + 4) = v5;
  }

  return result;
}

void sub_100187594(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = IONotificationPortCreate(kIOMainPortDefault);
    if (v2)
    {
      v3 = v2;
      MachPort = IONotificationPortGetMachPort(v2);
      if (MachPort)
      {
        v5 = MachPort;
        IONotificationPortSetDispatchQueue(v3, qword_100B56B28);
        *(a1 + 8) = v5;
        *(a1 + 16) = v3;
      }

      else
      {
        sub_100304AF8("%s: Failed to get mach notification port\n");
      }
    }

    else
    {
      sub_100304AF8("%s: Cannot create notification port\n");
    }
  }

  if (a1 == &dword_100B56B30)
  {
    v6 = &qword_100B56B48;
    qword_100B56B48 = "hci";
    byte_100B56B50 = 4;
    qword_100B56B58 = &unk_100BC7DE0;
    v7 = xmmword_1008A30F0;
LABEL_14:
    *(v6 + 3) = v7;
    v8 = 266;
    goto LABEL_15;
  }

  if (a1 == &dword_100B56BC0)
  {
    v6 = &qword_100B56BD8;
    qword_100B56BD8 = "sco";
    byte_100B56BE0 = 3;
    qword_100B56BE8 = &unk_100BC7DE0;
    v7 = xmmword_1008A30E0;
    goto LABEL_14;
  }

  if (a1 == &dword_100B56B78)
  {
    v6 = &qword_100B56B90;
    qword_100B56B90 = "acl";
    byte_100B56B98 = 2;
    qword_100B56BA0 = &unk_100BC7DE0;
    unk_100B56BA8 = xmmword_1008A30D0;
    v8 = 2602;
  }

  else
  {
    if (a1 != &dword_100B56C08)
    {
      sub_1000D660C();
      goto LABEL_16;
    }

    v6 = &qword_100B56C20;
    qword_100B56C20 = "iso";
    byte_100B56C28 = 5;
    qword_100B56C30 = &unk_100BC7DE0;
    unk_100B56C38 = xmmword_1008A30D0;
    v8 = 2594;
  }

LABEL_15:
  v6[5] = v8;
LABEL_16:

  sub_1001877C0(a1);
}

void sub_100187780(__CFRunLoop *a1)
{
  sub_100304AF8("ACIPCInterface found, releasing waiting thread");

  CFRunLoopStop(a1);
}

void sub_1001877C0(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  *reference = 0u;
  v4 = 0u;
  if (a1 && *a1 && (v1 = *(a1 + 4)) != 0)
  {
    reference[1] = sub_1001878C4;
    *&v4 = a1;
    v2 = IOConnectCallAsyncMethod(v1, 0, *(a1 + 8), reference, 3u, 0, 0, (a1 + 56), 0x10uLL, 0, 0, *(a1 + 40), (a1 + 48));
    if (v2)
    {
      sub_100304AF8("Read from SRS transport failed with error: %x\n", v2);
    }
  }

  else
  {

    sub_100304AF8("Invalid SRS transport handle to read\n");
  }
}

uint64_t sub_1001878C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (byte_100B56B10)
  {
    sub_100304AF8("Read %d bytes from SRS %s transport but rx route suspended\n");
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    if ((byte_100B56C50 & 1) != 0 || !v4)
    {
      if (v4)
      {
        sub_1000040DC();
      }

      else
      {
        sub_100304AF8("Read invalid packet from SRS %s transport: %x");
      }
    }

    else
    {
      info = 0;
      mach_timebase_info(&info);
      if (sub_1001B2A44())
      {
        v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
        v9 = dispatch_time(0, 1900000000);
        dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_100187AB8;
        handler[3] = &unk_100AE4AD8;
        handler[4] = a1;
        dispatch_source_set_event_handler(v8, handler);
        sub_1000031B0();
        dispatch_resume(v8);
        v10 = mach_absolute_time();
        v12[0] = 0;
        v12[1] = 0;
        v11 = sub_100003560(*(a1 + 32), (v6 + v7), v4, v12);
        sub_10000394C(*(a1 + 32), (v6 + v7), v11, v12);
        dispatch_source_cancel(v8);
        dispatch_release(v8);
        sub_10000C198();
        if ((mach_absolute_time() - v10) * info.numer / info.denom >= 0x1C9C381)
        {
          sub_100304AF8("pcie_srs_read_completion_callback warning, it took %d ms, on %s");
        }
      }
    }
  }

  return sub_1001877C0(a1);
}

uint64_t sub_100187AB8(uint64_t a1)
{
  result = sub_1001B2A44();
  if (result)
  {
    sub_100187BEC();
    _os_log_pack_size();
    __error();
    v3 = _os_log_pack_fill();
    v4 = *(*(a1 + 32) + 24);
    *v3 = 67109378;
    *(v3 + 4) = 656;
    *(v3 + 8) = 2080;
    *(v3 + 10) = v4;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  return result;
}

unint64_t sub_100187BEC()
{
  sub_100187C3C(&dword_100B56B30);
  sub_100187C3C(&dword_100B56BC0);
  sub_100187C3C(&dword_100B56B78);

  return sub_100187C3C(&dword_100B56C08);
}

unint64_t sub_100187C3C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      IOConnectRelease(v2);
      v1[1] = 0;
    }

    result = *v1;
    if (result)
    {
      result = IOObjectRelease(result);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_100187C84(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) || (sub_1000D660C(), *(a1 + 8)))
    {
      if (*(a1 + 16) || (sub_1000D660C(), *(a1 + 16)))
      {
        qword_100BC91E0 = a1;
        v3[2] = 0;
        v3[1] = 0x200010004;
        v3[0] = off_100AE4AF8;
        return sub_1001BD290(v3);
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  return 101;
}

uint64_t sub_100187D44(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AACP_CLIENT_Connect(addr=%:)", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
    }
  }

  if (!a2)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a2 + 8))
  {
    sub_1000D660C();
    if (!*(a2 + 8))
    {
      return 101;
    }
  }

  if (!*(a2 + 16))
  {
    sub_1000D660C();
    if (!*(a2 + 16))
    {
      return 101;
    }
  }

  v12 = qword_100B57C58;
  if (qword_100B57C58 || (v12 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL), (qword_100B57C58 = v12) != 0))
  {
    v13 = sub_100188094(a1);
    if (v13 && *v13)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Aready connected/connection in progress", v14, v15, v16, v17, v18, v19, v20, v62);
        v21 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 133;
    }

    else
    {
      v24 = v12 + 32;
      v25 = 5;
      while (!*v24 || *(v24 - 24) != 1)
      {
        v24 += 6;
        if (!--v25)
        {
          v26 = sub_100188114();
          if (v26)
          {
            v27 = v26;
            v26[3] = a2;
            v26[1] = 0;
            v28 = *a1;
            *(v26 + 5) = *(a1 + 4);
            *(v26 + 1) = v28;
            *v26 = 1;
            v64 = 0;
            *(&buf + 1) = 4;
            *(v26 + 8) = 0;
            *&buf = off_100AE4AF8;
            *(&buf + 10) = 131073;
            v29 = sub_1001BE058(v26 + 1, &buf);
            v22 = v29;
            if (v29 && v29 != 133)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AAP Client Connect failure %u", v30, v31, v32, v33, v34, v35, v36, v22);
                v37 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              sub_100188180(v27);
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No free AACP connection slot ", v54, v55, v56, v57, v58, v59, v60, v62);
              v61 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            return 104;
          }

          return v22;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Another AACP connection in progress", v38, v39, v40, v41, v42, v43, v44, v62);
        v45 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 118;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("init failed..!", v46, v47, v48, v49, v50, v51, v52, v62);
      v53 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_100188094(unsigned __int8 *a1)
{
  v1 = 0;
  if (a1 && qword_100B57C58)
  {
    v2 = 0;
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    for (i = qword_100B57C58 + 10; ; i += 48)
    {
      v1 = qword_100B57C58 + 8 + 48 * v2;
      if (*(v1 + 1) == v4)
      {
        v7 = 0;
        do
        {
          v8 = v7;
          if (v7 == 5)
          {
            break;
          }

          v9 = *(i + v7);
          v10 = v3[v7++];
        }

        while (v9 == v10);
        if (v8 >= 5)
        {
          break;
        }
      }

      if (++v2 == 5)
      {
        return 0;
      }
    }
  }

  return v1;
}

void *sub_100188114()
{
  v0 = qword_100B57C58;
  if (!qword_100B57C58)
  {
    v0 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL);
    qword_100B57C58 = v0;
  }

  v1 = v0 + 32;
  v2 = 5;
  while (*v1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return v1 - 3;
}

void sub_100188180(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (qword_100B57C58)
  {
    v1 = 32;
    while (!*(qword_100B57C58 + v1))
    {
      v1 += 48;
      if (v1 == 272)
      {
        sub_10000C1E8(qword_100B57C58);
        qword_100B57C58 = 0;
        return;
      }
    }
  }
}

uint64_t sub_1001881D4(unsigned __int8 *a1)
{
  v1 = sub_100188094(a1);
  if (v1 && *v1 == 2)
  {
    result = *(v1 + 8);
    if (result)
    {
      sub_1001BD4DC(result);
      return 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No active connection", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  return result;
}

uint64_t sub_10018825C(unsigned __int8 *a1, int a2, int a3)
{
  v6 = sub_100188094(a1);
  if (!v6)
  {
    return 122;
  }

  v7 = v6;
  if (!*(v6 + 8))
  {
    return 122;
  }

  v31[0] = 0;
  if (*v6 != 2)
  {
    return 408;
  }

  v8 = malloc_type_malloc(0xAuLL, 0x100004001E4F5AEuLL);
  v30 = v8;
  if (v8)
  {
    v9 = *a1;
    *(v8 + 2) = *(a1 + 2);
    *v8 = v9;
    *(v8 + 6) = a2;
    *(v8 + 4) = a3;
    v31[1] = &v30;
    LOWORD(v31[0]) = 8;
    switch(a2)
    {
      case 2:
        v10 = sub_100188554;
        v11 = v7 + 10;
        goto LABEL_17;
      case 1:
        v10 = sub_1001884CC;
        v11 = v7 + 9;
        goto LABEL_17;
      case 0:
        v10 = sub_100188418;
        v11 = v7 + 8;
LABEL_17:
        sub_10002195C(v10, v31, a3, v11);
        return 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid type for Request Periodically", v21, v22, v23, v24, v25, v26, v27, v29);
      v28 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    free(v30);
    return 117;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Memory allocation failure for AACP_PERIODICAL_REQUEST_ARG", v13, v14, v15, v16, v17, v18, v19, v29);
      v20 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_100188418(uint64_t a1)
{
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  v8 = 0;
  gettimeofday(&v10, 0);
  v7[0] = v10.tv_sec;
  v7[1] = v10.tv_usec;
  v9 = 0;
  v2 = **(a1 + 8);
  result = sub_100189258(v2, v7);
  if (!result)
  {
    v4 = sub_100188094(v2);
    v5 = *(v2 + 8);
    v6 = (v4 + 4 * *(v2 + 6) + 32);

    return sub_10002195C(sub_100188418, a1, v5, v6);
  }

  return result;
}

uint64_t sub_1001884CC(uint64_t a1)
{
  v2 = **(a1 + 8);
  result = sub_100189034(v2, 0x20u, 0, 0);
  if (!result)
  {
    v4 = sub_100188094(v2);
    v5 = *(v2 + 8);
    v6 = v4 + 4 * *(v2 + 6);

    return sub_10002195C(sub_1001884CC, a1, v5, (v6 + 32));
  }

  return result;
}

uint64_t sub_100188554(uint64_t a1)
{
  *&v5[3] = 6;
  *v5 = 100684801;
  v2 = **(a1 + 8);
  result = sub_100189034(v2, 4u, 7u, v5);
  if (!result)
  {
    v4 = sub_100188094(v2);
    return sub_10002195C(sub_100188554, a1, *(v2 + 8), (v4 + 4 * *(v2 + 6) + 32));
  }

  return result;
}

uint64_t sub_1001885E0(unsigned __int8 *a1, unsigned int a2)
{
  v3 = sub_100188094(a1);
  if (!v3 || !*(v3 + 8))
  {
    return 122;
  }

  if (*v3 != 2)
  {
    return 408;
  }

  if (a2 > 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid type for Cancel Request Periodically", v6, v7, v8, v9, v10, v11, v12, v14);
      v13 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 117;
  }

  else
  {
    v4 = v3 + 4 * a2;
    sub_10002242C(*(v4 + 32));
    result = 0;
    *(v4 + 32) = 0;
  }

  return result;
}

uint64_t sub_100188690(unsigned __int8 *a1, void *a2, size_t a3)
{
  v6 = sub_100188094(a1);
  if (v6 && (v7 = v6, *(v6 + 8)))
  {
    if (*v6 == 2)
    {
      v43 = 0;
      v8 = sub_10023DB58(a1, &v43);
      if (v8)
      {
        v9 = v8;
        if (!sub_10000C240())
        {
          goto LABEL_25;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Unable to retrieve ACL handle, status: %u", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (*(v43 + 278) == 1 && *(v7 + 14) >= 0xA12u)
      {
        if (a3 >= 0xA13)
        {
          if (!sub_10000C240())
          {
            goto LABEL_20;
          }

          sub_10000AF54("BT_AACP_CLIENT_SendData: Attempting to send too much data, dataLen: %u, MTU: %u", v18, v19, v20, v21, v22, v23, v24, a3);
          v25 = sub_10000C050(0x53u);
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else if (a3 >= 0x3F4)
      {
        if (!sub_10000C240())
        {
          goto LABEL_20;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Attempting to send too much data, dataLen: %u, MTU: %u", v26, v27, v28, v29, v30, v31, v32, a3);
        v33 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_10080F7A0();
LABEL_20:
        v9 = 142;
LABEL_25:
        sub_10000C1E8(a2);
        return v9;
      }

      v9 = sub_1001BE834(*(v7 + 8), a2, a3);
      if (v9)
      {
        if (!sub_10000C240())
        {
          goto LABEL_25;
        }

        sub_10000AF54("BT_AACP_CLIENT_SendData: Unable to send data due to: %u", v34, v35, v36, v37, v38, v39, v40, v9);
        v41 = sub_10000C050(0x53u);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_10080F7A0();
        goto LABEL_25;
      }
    }

    else
    {
      sub_10000C1E8(a2);
      return 408;
    }
  }

  else
  {
    sub_10000C1E8(a2);
    return 122;
  }

  return v9;
}

uint64_t sub_100188894(unsigned __int8 *a1, char a2)
{
  v4 = sub_100007618(4uLL, 0xC0C226E7uLL);
  if (!v4)
  {
    return 106;
  }

  *v4 = 1;
  v4[2] = a2;

  return sub_100188690(a1, v4, 3uLL);
}

uint64_t sub_100188904(unsigned __int8 *a1, char a2)
{
  v4 = sub_100007618(3uLL, 0x8E2196E3uLL);
  if (!v4)
  {
    return 106;
  }

  *v4 = 3;
  v4[2] = a2;

  return sub_100188690(a1, v4, 3uLL);
}

uint64_t sub_100188980(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xB83B56B6uLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 5;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_1001889E8(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xBDF8CFEDuLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 7;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100188A50(unsigned __int8 *a1, char a2, int a3)
{
  v6 = sub_100007618(7uLL, 0x5B2F198BuLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 9;
  v6[2] = a2;
  *(v6 + 3) = a3;

  return sub_100188690(a1, v6, 7uLL);
}

uint64_t sub_100188AEC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xD698862FuLL);
  if (!v2)
  {
    return 106;
  }

  *v2 = 13;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100188B54(unsigned __int8 *a1, __int16 a2, __int16 a3)
{
  v6 = sub_100007618(6uLL, 0x9858E8D2uLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 15;
  v6[1] = a2;
  v6[2] = a3;

  return sub_100188690(a1, v6, 6uLL);
}

uint64_t sub_100188BE8(unsigned __int8 *a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 10;
  v9 = sub_100007618(a3 + 10, 0xF186F3B2uLL);
  if (!v9)
  {
    return 106;
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2063, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2061, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 16;
  if (v8 <= 7u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2064, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  sub_1000075EC(v9 + 2, a2, 6uLL);
  if (v8 <= 9u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2065, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v10[4] = a3;
  if (v8 - 10 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2066, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v10 + 5, a4, a3);

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100188D50(unsigned __int8 *a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 9;
  v9 = sub_100007618(v8, 0xFDB90C3uLL);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  *v9 = 18;
  sub_1000075EC(v9 + 2, a2, 6uLL);
  v10[8] = a3;
  if (a3)
  {
    memmove(v10 + 9, a4, a3);
  }

  else
  {
    v8 = 9;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100188E10(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = 6 * a2;
  v7 = sub_100007618(6 * a2 + 3, 0xAAD96A7FuLL);
  if (!v7)
  {
    return 106;
  }

  v8 = v7;
  *v7 = 20;
  *(v7 + 2) = a2;
  if (a2)
  {
    v9 = 0;
    v10 = v6 - 2;
    v11 = 6 * a2;
    do
    {
      if (v9 + 3 >= v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2126, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
      }

      sub_1000075EC(&v8[v9 + 3], a3 + v9, 6uLL);
      v9 += 6;
    }

    while (v11 != v9);
    v12 = v9 + 3;
  }

  else
  {
    v12 = 3;
  }

  return sub_100188690(a1, v8, v12);
}

uint64_t sub_100188F1C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_100007618(8uLL, 0x85B8BC88uLL);
  if (!v4)
  {
    return 106;
  }

  v5 = v4;
  *v4 = 21;
  sub_1000075EC(v4 + 2, a2, 6uLL);

  return sub_100188690(a1, v5, 8uLL);
}

uint64_t sub_100188FA4(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v6 = sub_100007618(9uLL, 0x2B8A06FDuLL);
  if (!v6)
  {
    return 106;
  }

  v7 = v6;
  *v6 = 22;
  sub_1000075EC(v6 + 2, a2, 6uLL);
  v7[8] = a3;

  return sub_100188690(a1, v7, 9uLL);
}

uint64_t sub_100189034(unsigned __int8 *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = sub_100188094(a1);
  if (!v8)
  {
    return 122;
  }

  v9 = *(v8 + 16);
  if (v9 >= 0x10002)
  {
    v10 = 8;
  }

  else
  {
    v10 = 6;
  }

  if (a2 == 4 && a3 >= 2 && *a4 - 1 > 1)
  {
    return 101;
  }

  v11 = v10 + a3;
  v12 = sub_100007618(v10 + a3, 0xF806FF31uLL);
  if (!v12)
  {
    return 106;
  }

  if (v11 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2223, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v11)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2221, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v13 = v12;
  *v12 = 23;
  if (v9 > 0x10001)
  {
    if (v11 <= 5u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2227, "ByteStream_NumReadBytesAvail(bs) >= 4");
    }

    v18 = HIWORD(a2);
    v12[1] = a2;
    v14 = 3;
    v15 = 24;
    v16 = 5;
    v17 = 2;
  }

  else
  {
    if (v11 <= 3u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2225, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v14 = 2;
    v15 = 8;
    v16 = 3;
    v17 = 1;
    LOBYTE(v18) = a2;
  }

  LOBYTE(v12[v17]) = v18;
  *(v12 + v16) = a2 >> v15;
  if ((v11 - v14 * 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2229, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v12[v14] = a3;
  v20 = v14 * 2 + 2;
  if (a3)
  {
    if ((v11 - v20) < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2231, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v12 + v20, a4, a3);
    LOWORD(v20) = v20 + a3;
  }

  return sub_100188690(a1, v13, v20);
}

uint64_t sub_100189258(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 8) + 12;
  v5 = sub_100007618(*(a2 + 8) + 12, 0x8E8E32FuLL);
  if (!v5)
  {
    return 106;
  }

  if (v4 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2256, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2254, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v6 = v5;
  *v5 = 27;
  if (v4 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2257, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v5 + 1) = *a2;
  v5[4] = *(a2 + 2);
  v5[5] = *(a2 + 3);
  if (v4 <= 9u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2258, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v5 + 3) = *(a2 + 4);
  v5[8] = *(a2 + 6);
  v5[9] = *(a2 + 7);
  if (v4 <= 0xBu)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2259, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v5[10] = *(a2 + 8);
  v5[11] = *(a2 + 9);
  v7 = *(a2 + 8);
  if (v4 - 12 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2260, "ByteStream_NumReadBytesAvail(bs) >= (timeStamp->strLen)");
  }

  memmove(v5 + 12, *(a2 + 16), v7);
  v8 = (*(a2 + 8) + 12);

  return sub_100188690(a1, v6, v8);
}

uint64_t sub_100189410(unsigned __int8 *a1, char a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 5;
  v9 = sub_100007618(a3 + 5, 0x8FD9FC7FuLL);
  if (!v9)
  {
    return 106;
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2309, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2307, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 26;
  if (v8 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2310, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v9[2] = a2;
  if (v8 <= 4u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2311, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v9 + 3) = a3;
  if (a3)
  {
    if (v8 - 5 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2313, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v9 + 5, a4, a3);
  }

  else
  {
    v8 = 5;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_10018956C(unsigned __int8 *a1, unsigned int a2, char a3)
{
  if (a2 > 0x1F)
  {
    return 101;
  }

  v5 = a2;
  v7 = sub_100007618(4uLL, 0x45E3586AuLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2339, "stream");
  }

  *v7 = 30;
  v7[2] = a3;
  v7[3] = (4 * v5) | 0x80;

  return sub_100188690(a1, v7, 4uLL);
}

uint64_t sub_100189618(unsigned __int8 *a1, unsigned int a2, unsigned int a3, const void *a4)
{
  if (a2 > 0x1F || !a4)
  {
    return 101;
  }

  v6 = a2;
  v8 = a3 + 4;
  v9 = sub_100007618(a3 + 4, 0xDA5F1823uLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2366, "stream");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2368, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2367, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 30;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2369, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a3;
  v9[3] = ((v6 << 10) | a3) >> 8;
  if (v8 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2370, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v9 + 4, a4, a3);

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100189778(unsigned __int8 *a1, char a2, int a3)
{
  v6 = sub_100007618(7uLL, 0x3FCC915CuLL);
  if (!v6)
  {
    return 106;
  }

  *v6 = 31;
  v6[2] = a2;
  *(v6 + 3) = a3;

  return sub_100188690(a1, v6, 7uLL);
}

uint64_t sub_100189814(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  if (!a2 || !a3)
  {
    return 101;
  }

  v6 = a2 + 4;
  v7 = sub_100007618(a2 + 4, 0xB68DA2E3uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2415, "stream");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2417, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2416, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 32;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2418, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a2;
  if (v6 - 4 < a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2419, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a3, a2);

  return sub_100188690(a1, v8, v6);
}

uint64_t sub_10018995C(unsigned __int8 *a1, char a2, char a3, unsigned int a4, const void *a5)
{
  v10 = a4 + 6;
  v11 = sub_100007618(a4 + 6, 0x727D466EuLL);
  if (!v11)
  {
    return 106;
  }

  if (v10 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2444, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v10)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2442, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v12 = v11;
  *v11 = 33;
  if (v10 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2445, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v11[2] = a2;
  if (v10 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2446, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v11[3] = a3;
  if (v10 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2447, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v11 + 2) = a4;
  if (a4)
  {
    if (v10 - 6 < a4)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2449, "ByteStream_NumReadBytesAvail(bs) >= (pldLen)");
    }

    memmove(v11 + 6, a5, a4);
  }

  else
  {
    v10 = 6;
  }

  return sub_100188690(a1, v12, v10);
}

uint64_t sub_100189AEC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0xC980B399uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2467, "stream");
  }

  *v2 = 34;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_100189B5C(unsigned __int8 *a1, __int16 a2, unsigned int a3, const void *a4)
{
  v8 = a3 + 6;
  v9 = sub_100007618(a3 + 6, 0xF436E72EuLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2491, "data");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2494, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2492, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 36;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2495, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[1] = a2;
  if (v8 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2496, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a3;
  if (a3)
  {
    if (v8 - 6 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2498, "ByteStream_NumReadBytesAvail(bs) >= (pLen)");
    }

    memmove(v9 + 3, a4, a3);
  }

  else
  {
    v8 = 6;
  }

  return sub_100188690(a1, v10, v8);
}

uint64_t sub_100189CB8(unsigned __int8 *a1, int a2)
{
  result = 101;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = sub_100007618(4uLL, 0x415A632BuLL);
      if (v5)
      {
        *v5 = 48;
        v5[1] = v4;

        return sub_100188690(a1, v5, 4uLL);
      }

      else
      {
        return 106;
      }
    }
  }

  return result;
}

uint64_t sub_100189D3C(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 101;
  }

  v5 = a3;
  v6 = a2;
  v8 = a2;
  v9 = (a3 + 2);
  v10 = 3;
  v11 = a2;
  do
  {
    v12 = *v9;
    v9 += 8;
    v10 += v12 + 4;
    --v11;
  }

  while (v11);
  if (!a1)
  {
    return 101;
  }

  v13 = sub_100007618(v10, 0xFE384586uLL);
  if (!v13)
  {
    return 106;
  }

  if (v10 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2568, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v10)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2565, "(msgLen) > 0");
  }

  v14 = v13;
  if (a4)
  {
    v15 = 49;
  }

  else
  {
    v15 = 50;
  }

  *v13 = v15;
  v13[1] = 0;
  if (v10 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2569, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v13[2] = v6;
  v16 = 3;
  do
  {
    if ((v10 - 1) <= v16)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2572, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v17 = &v14[v16];
    *v17 = *v5;
    v17[1] = *(v5 + 1);
    if ((v10 - 1) <= (v16 + 2))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2573, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    v18 = &v14[(v16 + 2)];
    *v18 = *(v5 + 2);
    v18[1] = *(v5 + 3);
    v19 = v16 + 4;
    v20 = *(v5 + 2);
    if (v10 - (v16 + 4) < v20)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2576, "ByteStream_NumReadBytesAvail(bs) >= (keys[i].keyLength)");
    }

    memmove(&v14[v19], *(v5 + 8), v20);
    v16 = *(v5 + 2) + v19;
    v5 += 16;
    --v8;
  }

  while (v8);

  return sub_100188690(a1, v14, v16);
}

uint64_t sub_100189F4C(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  if (!a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a3 + 8))
  {
    sub_1000D660C();
    if (!*(a3 + 8))
    {
      return 101;
    }
  }

  if (!*(a3 + 16))
  {
    sub_1000D660C();
    if (!*(a3 + 16))
    {
      return 101;
    }
  }

  if (qword_100B57C58 || (qword_100B57C58 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL)) != 0)
  {
    v8 = sub_100188094(a1);
    if (v8 && *v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel Aready connected/connection in progress", v9, v10, v11, v12, v13, v14, v15, v56[0]);
        v16 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 133;
    }

    else
    {
      v19 = sub_100188114();
      if (v19)
      {
        v20 = v19;
        v19[3] = a3;
        v19[1] = 0;
        v21 = (v19 + 1);
        v22 = *(a1 + 4);
        *(v19 + 1) = *a1;
        v23 = v19 + 1;
        *(v23 + 4) = v22;
        *(v23 + 31) = 0;
        if (a2)
        {
          v56[2] = 0;
          v56[1] = 0x200010004;
          v56[0] = off_100AE4AF8;
          *(v20 + 6) = a2;
          v17 = sub_1001BEF5C(v23, a2, v56, a4, v21);
          if (v17)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel: Error creating AAP", v24, v25, v26, v27, v28, v29, v30, v56[0]);
              v31 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_10080F818();
              }
            }
          }

          else
          {
            *v20 = 2;
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel invalid PSM", v48, v49, v50, v51, v52, v53, v54, v56[0]);
            v55 = sub_10000C050(0x53u);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 131;
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AACP_CLIENT_fastConnectCreateChannel No free AACP connection slot ", v32, v33, v34, v35, v36, v37, v38, v56[0]);
          v39 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 104;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("init failed..!", v40, v41, v42, v43, v44, v45, v46, v56[0]);
      v47 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }

  return v17;
}

void sub_10018A214(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_100188094(a1);
  if (v4)
  {
    sub_100188180(v4);
  }

  sub_1001BF328(a1, a2);
}

uint64_t sub_10018A25C(int a1, int a2, __int16 a3, unsigned __int8 *a4)
{
  v7 = sub_100188094(a4);
  if (!v7)
  {
    return 114;
  }

  v8 = v7;
  result = 0;
  *(v8 + 14) = a3;
  *(v8 + 16) = a1 | (a2 << 16);
  return result;
}

uint64_t sub_10018A2B4(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a2)
  {
    return 101;
  }

  v6 = a3 + 2;
  v7 = sub_100007618(v6, 0xC0E69430uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2729, "stream");
  }

  v8 = v7;
  *v7 = 41;
  memmove(v7 + 1, a2, a3);

  return sub_100188690(a1, v8, v6);
}

uint64_t sub_10018A36C(unsigned __int8 *a1, unsigned int a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v10 = a2;
  v11 = 3 * a2 + 3;
  v12 = sub_100007618(3 * a2 + 3, 0x3F81F2ACuLL);
  if (!v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2753, "stream");
  }

  *v12 = 84;
  v12[2] = a2;
  v13 = 3;
  if (a2)
  {
    do
    {
      if (v11 <= v13)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2759, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v12[v13] = *a3;
      if (v11 <= (v13 + 1))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2760, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v14 = v13 + 2;
      v12[v13 + 1] = *a4;
      if (v11 <= v14)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2761, "ByteStream_NumReadBytesAvail(bs) >= 1");
      }

      v15 = *a5++;
      v13 += 3;
      v12[v14] = v15;
      ++a4;
      ++a3;
      --v10;
    }

    while (v10);
  }

  return sub_100188690(a1, v12, v13);
}

uint64_t sub_10018A4BC(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0x513CBD58uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2782, "data");
  }

  *v2 = 38;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018A52C(unsigned __int8 *a1)
{
  v2 = sub_100007618(2uLL, 0x1D6E8A9uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2830, "data");
  }

  *v2 = 45;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018A59C(unsigned __int8 *a1, const void *a2, uint64_t a3, char a4)
{
  if (a2 && a3)
  {
    v8 = a3 + 6;
    v9 = sub_100007618((a3 + 6), 0x704BAC6FuLL);
    if (!v9)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2859, "data");
    }

    if (v8 == 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2862, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    if (!v8)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2860, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
    }

    v10 = v9;
    *v9 = 44;
    if (v8 <= 2u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2863, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v9[2] = a4;
    if (v8 == 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2864, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v9[3] = 1;
    if (v8 <= 5u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2865, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    *(v9 + 2) = a3;
    if (v8 - 6 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2866, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v9 + 6, a2, a3);

    return sub_100188690(a1, v10, (a3 + 6));
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BT_AACP_CLIENT_GAPASendChallenge: Invalid data or len (%u)", v12, v13, v14, v15, v16, v17, v18, a3);
      v19 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }
}

uint64_t sub_10018A788(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x2D3966E4uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2893, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2896, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2894, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 68;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2897, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2898, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018A8D8(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0xEFC9BB78uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2924, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2927, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2925, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 75;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2928, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2929, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018AA28(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0x28A755A6uLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2949, "packet");
  }

  *v2 = 69;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018AAAC(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(6uLL, 0x64FC31EDuLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2972, "packet");
  }

  v5 = v4;
  *v4 = 72;
  *(v4 + 2) = a2;
  v6 = sub_100188094(a1);
  if (v6 && (v7 = v6, v8 = *(v6 + 8), v8))
  {
    if (*v7 == 2)
    {
      v9 = sub_1001BEAC8(v8, v5, 6uLL);
      if (v9)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("BT_AAP_Client_SendUnstallableData failed due to %u", v10, v11, v12, v13, v14, v15, v16, v9);
          v17 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_10000C1E8(v5);
      }
    }

    else
    {
      sub_10000C1E8(v5);
      return 408;
    }
  }

  else
  {
    sub_10000C1E8(v5);
    return 122;
  }

  return v9;
}

uint64_t sub_10018ABE8(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0xD0B7DECuLL);
  if (!v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 2995, "packet");
  }

  *v2 = 74;

  return sub_100188690(a1, v2, 2uLL);
}

uint64_t sub_10018AC6C(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  if (!a2 || !a1 || !a3)
  {
    return 101;
  }

  v6 = a2 + 5;
  v7 = sub_100007618(a2 + 5, 0x593359B9uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3024, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3027, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3025, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 76;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3028, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a2;
  if (v6 - 4 < a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3029, "ByteStream_NumReadBytesAvail(bs) >= (avMsgLen)");
  }

  memmove(v7 + 2, a3, a2);

  return sub_100188690(a1, v8, (a2 + 4));
}

uint64_t sub_10018ADBC(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xE152A404uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3063, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3061, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 79;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3064, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3065, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendUARPData - failed to allocate memory", v10, v11, v12, v13, v14, v15, v16, v18);
        v17 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018AF38(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(0xAuLL, 0x864E91E1uLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3086, "packet");
  }

  *v4 = 77;
  *(v4 + 2) = a2;

  return sub_100188690(a1, v4, 0xAuLL);
}

uint64_t sub_10018AFFC(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_100007618(0xAuLL, 0x6E4DBD67uLL);
  if (!v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3110, "packet");
  }

  *v4 = 78;
  *(v4 + 2) = a2;

  return sub_100188690(a1, v4, 0xAuLL);
}

uint64_t sub_10018B0C0(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xFE669342uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3147, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3145, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 82;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3148, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3149, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendSourceContextMessage - failed to allocate memory", v10, v11, v12, v13, v14, v15, v16, v18);
        v17 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018B23C(unsigned __int8 *a1, unsigned int a2, const void *a3)
{
  result = 101;
  if (a2 && a1 && a3)
  {
    v7 = a2 + 4;
    v8 = sub_100007618(a2 + 4, 0xAA1602B6uLL);
    if (v8)
    {
      if (v7 == 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3183, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3181, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      v9 = v8;
      *v8 = 83;
      if (v7 <= 3u)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3184, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v8[1] = a2;
      if (v7 - 4 < a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3185, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
      }

      memmove(v8 + 2, a3, a2);

      return sub_100188690(a1, v9, (a2 + 4));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("BT_AACP_CLIENT_SendPMEConfig - failed to allocate memory", v10, v11, v12, v13, v14, v15, v16, v18);
        v17 = sub_10000C050(0x53u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 106;
    }
  }

  return result;
}

uint64_t sub_10018B3B8(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 101;
  }

  v2 = sub_100007618(2uLL, 0x5AFD5D6CuLL);
  if (v2)
  {
    *v2 = 86;

    return sub_100188690(a1, v2, 2uLL);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("BT_AACP_CLIENT_SendUSBSpatialSensorDataReq - failed to allocate memory", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }
}

uint64_t sub_10018B46C(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x9E4A60DAuLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3237, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3240, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3238, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 87;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3241, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3242, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018B5BC(unsigned __int8 *a1, __int16 a2, const void *a3, unsigned int a4)
{
  if (!a1 || !a3 || !a4)
  {
    return 101;
  }

  v8 = a4 + 6;
  v9 = sub_100007618(a4 + 6, 0x3DC917C8uLL);
  if (!v9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3267, "packet");
  }

  if (v8 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3270, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3268, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v10 = v9;
  *v9 = 88;
  if (v8 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3271, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[1] = a2;
  if (v8 <= 5u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3272, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v9[2] = a4;
  if (v8 - 6 < a4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3273, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v9 + 3, a3, a4);

  return sub_100188690(a1, v10, (a4 + 6));
}

uint64_t sub_10018B734(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x57E922A9uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3300, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3303, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3301, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 89;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3304, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3305, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

uint64_t sub_10018B884(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, size_t a4)
{
  v7 = sub_100188094(a1);
  if (v7)
  {
    sub_10018B928(*(v7 + 8), a2, a3, a4);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle %x", v9, v10, v11, v12, v13, v14, v15, 0);
      v16 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 414;
  }
}

void sub_10018B928(uint64_t a1, unsigned __int16 *a2, uint64_t a3, size_t size)
{
  if (qword_100B57C58)
  {
    v5 = size;
    v6 = a3;
    v7 = a2;
    v8 = qword_100B57C58 + 32;
    v9 = 5;
    while (*(v8 - 16) != a1)
    {
      v8 += 48;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    if (a2)
    {
      if (a3 == 1)
      {
        v18 = 0;
LABEL_35:
        if (sub_10000C240())
        {
          sub_10000AF54("Unknown AACP opcode: 0x%04x (AAP len %u)", v34, v35, v36, v37, v38, v39, v40, v18);
          v41 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 136446210;
            *&buf[1] = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      if (a3)
      {
        v18 = *a2;
        v19 = 2;
        switch(*a2)
        {
          case 2u:
            v441 = size;
            if (a3 < 3)
            {
              v190 = 0;
              v191 = 2;
              v189 = 1;
            }

            else
            {
              v189 = 0;
              v190 = *(a2 + 2);
              v191 = 3;
            }

            v291 = sub_1001BBBD8(5 * v190, 0x1000040957D8CC4uLL);
            if (v291)
            {
              v292 = v190;
              v293 = v291;
              ptrc = v292;
              if (!v292)
              {
LABEL_481:
                v298 = *(*v8 + 32);
                if (v298)
                {
                  v298(v8 - 23, ptrc, v293);
                }

                sub_10000C1E8(v293);
                if (v441)
                {
                  v18 = 2;
                  goto LABEL_39;
                }

                return;
              }

              v294 = v291 + 1;
              v295 = v292;
              while (!v189)
              {
                if (v6 <= v191)
                {
                  goto LABEL_362;
                }

                v189 = 0;
                *(v294 - 1) = v7[v191];
                v296 = 1;
                ++v191;
LABEL_363:
                v297 = *(v294 - 1);
                if (v297 <= 0x7F)
                {
                  switch(*(v294 - 1))
                  {
                    case 1:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 2:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 3:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 4:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 5:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 6:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 7:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 8:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_449;
                    case 9:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0xA:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0xB:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0xC:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0xD:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0xF:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x10:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x11:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x12:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x13:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x14:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x15:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x16:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x17:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x18:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x19:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x20:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x21:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x22:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x23:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x24:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x25:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x26:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x28:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x29:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x30:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

LABEL_449:
                      if (v6 - 3 <= v191)
                      {
                        goto LABEL_479;
                      }

                      v189 = 0;
                      *v294 = *&v7[v191];
                      v191 += 4;
                      break;
                    case 0x31:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x32:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x33:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x34:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x40:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x50:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    case 0x60:
                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }

                      goto LABEL_476;
                    default:
                      goto LABEL_480;
                  }

                  goto LABEL_480;
                }

                if (*(v294 - 1) > 0xBFu)
                {
                  if (*(v294 - 1) > 0xDFu)
                  {
                    if (v297 == 224)
                    {
                      if ((v296 & 1) == 0)
                      {
LABEL_478:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_479:
                        v189 = 1;
                        goto LABEL_480;
                      }
                    }

                    else
                    {
                      if (v297 != 240)
                      {
                        goto LABEL_480;
                      }

                      if ((v296 & 1) == 0)
                      {
                        goto LABEL_478;
                      }
                    }
                  }

                  else if (v297 == 192)
                  {
                    if ((v296 & 1) == 0)
                    {
                      goto LABEL_478;
                    }
                  }

                  else
                  {
                    if (v297 != 208)
                    {
                      goto LABEL_480;
                    }

                    if ((v296 & 1) == 0)
                    {
                      goto LABEL_478;
                    }
                  }
                }

                else if (*(v294 - 1) > 0x9Fu)
                {
                  if (v297 == 160)
                  {
                    if ((v296 & 1) == 0)
                    {
                      goto LABEL_478;
                    }
                  }

                  else
                  {
                    if (v297 != 176)
                    {
                      goto LABEL_480;
                    }

                    if ((v296 & 1) == 0)
                    {
                      goto LABEL_478;
                    }
                  }
                }

                else if (v297 == 128)
                {
                  if ((v296 & 1) == 0)
                  {
                    goto LABEL_478;
                  }
                }

                else
                {
                  if (v297 != 144)
                  {
                    goto LABEL_480;
                  }

                  if ((v296 & 1) == 0)
                  {
                    goto LABEL_478;
                  }
                }

LABEL_476:
                if (v6 <= v191)
                {
                  goto LABEL_479;
                }

                v189 = 0;
                *v294 = v7[v191++];
LABEL_480:
                v294 = (v294 + 5);
                if (!--v295)
                {
                  goto LABEL_481;
                }
              }

              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_362:
              v296 = 0;
              v189 = 1;
              goto LABEL_363;
            }

            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("AACP_MSG_CAPABILITIES_RESP Could not allocate %d bytes", v340, v341, v342, v343, v344, v345, v346, 5 * v190);
            v347 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_669;
          case 4u:
            if (a3 >= 3 && (v199 = *(a2 + 2), *(a2 + 2)))
            {
              v201 = sub_1001BBBD8(5 * v199, 0x1000040957D8CC4uLL);
              if (v201)
              {
                v439 = v5;
                v202 = v6;
                v203 = 0;
                ptrb = v201;
                v204 = v201 + 2;
                v205 = 3;
                v206 = v199;
                while (!v203)
                {
                  if (v202 <= v205)
                  {
                    goto LABEL_246;
                  }

                  v207 = v205 + 1;
                  *(v204 - 2) = *(a2 + v205);
                  if (v202 <= (v205 + 1))
                  {
                    goto LABEL_247;
                  }

                  v208 = v205 + 2;
                  *(v204 - 1) = *(a2 + v207);
                  v207 = v208;
                  if (v202 <= v208)
                  {
                    goto LABEL_248;
                  }

                  v209 = v205 + 3;
                  *v204 = *(a2 + v208);
                  v207 = v209;
                  if (v202 > v209)
                  {
                    v207 = v205 + 4;
                    v204[1] = *(a2 + v209);
                    if (v202 <= v207)
                    {
                      v203 = 1;
                    }

                    else
                    {
                      v203 = 0;
                      v204[2] = *(a2 + v207);
                      v207 = (v205 + 5);
                    }

                    goto LABEL_250;
                  }

LABEL_249:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                  v203 = 1;
LABEL_250:
                  v204 += 5;
                  v205 = v207;
                  if (!--v206)
                  {
                    v389 = *(*v8 + 40);
                    if (v389)
                    {
                      v389(v8 - 23, v199, ptrb);
                    }

                    sub_10000C1E8(ptrb);
                    v18 = 4;
                    v6 = v202;
                    v7 = a2;
                    goto LABEL_310;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_246:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                v207 = v205;
LABEL_247:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_248:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                goto LABEL_249;
              }

              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("BATT_INFO_MSG_BATT_INFO Could not allocate %d bytes", v411, v412, v413, v414, v415, v416, v417, 5 * v199);
              v418 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("BATT_INFO_MSG_BATT_INFO: count = 0", v255, v256, v257, v258, v259, v260, v261, v438);
              v262 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            goto LABEL_669;
          case 6u:
            LOWORD(buf[0]) = 0;
            if ((a3 & 0xFFFE) != 2)
            {
              LOWORD(buf[0]) = a2[1];
            }

            v210 = *(*v8 + 48);
            if (v210)
            {
              v210(v8 - 23, buf);
            }

            v18 = 6;
            goto LABEL_38;
          case 8u:
            buf[0] = 0;
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            }

            else
            {
              LOBYTE(buf[0]) = *(a2 + 2);
              if (a3 != 3)
              {
                BYTE1(buf[0]) = *(a2 + 3);
                if (a3 > 4)
                {
                  BYTE2(buf[0]) = *(a2 + 4);
                  if (a3 != 5)
                  {
                    HIBYTE(buf[0]) = *(a2 + 5);
                  }

LABEL_344:
                  v285 = *(*v8 + 56);
                  if (v285)
                  {
                    v285(v8 - 23, buf);
                  }

                  v18 = 8;
                  goto LABEL_38;
                }

LABEL_343:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                goto LABEL_344;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            goto LABEL_343;
          case 9u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1191, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 6)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1192, "ByteStream_NumReadBytesAvail(bs) >= 4");
            }

            v174 = *(*v8 + 160);
            if (v174)
            {
              v174(v8 - 23, *(a2 + 2), *(a2 + 3));
            }

            v18 = 9;
            goto LABEL_38;
          case 0xBu:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 694, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 695, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v152 = *(a2 + 2);
            v153 = v7[3];
            if (!v7[3])
            {
              v103 = 0;
              goto LABEL_570;
            }

            ptra = v152;
            v440 = size;
            v445 = v7;
            v103 = sub_1001BBBD8(6 * v153, 0x1000040274DC3F3uLL);
            v154 = v6;
            v155 = 0;
            v443 = v154;
            v156 = v154 - 5;
            v157 = 4;
LABEL_166:
            v158 = v157;
            v159 = -6 * v155++;
            v160 = 1;
            while (1)
            {
              if (v160)
              {
                if (v156 > v158)
                {
                  sub_1000075EC(&v103[-v159], &v445[v158], 6uLL);
                  v157 = v158 + 6;
                  if (v155 == v153)
                  {
                    v6 = v443;
                    v7 = v445;
                    v5 = v440;
                    v152 = ptra;
LABEL_570:
                    v348 = *(*v8 + 64);
                    if (v348)
                    {
                      v348(v8 - 23, v152, v153, v103);
                    }

                    if (v103)
                    {
                      sub_10000C1E8(v103);
                    }

                    v18 = 11;
                    goto LABEL_38;
                  }

                  goto LABEL_166;
                }
              }

              else
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              }

              v160 = 0;
              ++v155;
              v159 -= 6;
              if (v155 - v153 == 1)
              {
                if (!sub_10000C240())
                {
                  goto LABEL_611;
                }

                sub_10000AF54("AACP_MSG_DEV_LIST error initializing device list", v264, v265, v266, v267, v268, v269, v270, v438);
                v271 = sub_10000C050(0x53u);
                if (!os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_611;
                }

                goto LABEL_610;
              }
            }

          case 0xCu:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 719, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v161 = 0;
            }

            else
            {
              v161 = v7[8];
              if (v6 >= 0xA)
              {
                v315 = v7[9];
                goto LABEL_524;
              }
            }

            v315 = 0;
LABEL_524:
            v316 = *(*v8 + 72);
            if (v316)
            {
              v316(v8 - 23, buf, v161, v315);
            }

            v18 = 12;
            goto LABEL_38;
          case 0xEu:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 731, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              v136 = 0;
            }

            else
            {
              v136 = v7[8];
            }

            v314 = *(*v8 + 80);
            if (v314)
            {
              v314(v8 - 23, buf, v136);
            }

            v18 = 14;
            goto LABEL_38;
          case 0x11u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 754, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 <= 9)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 755, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v142 = *(v7 + 4);
            v143 = sub_1001BBBD8(v142, 0x100004077774924uLL);
            v103 = v143;
            if (!v143 || !v142)
            {
              goto LABEL_615;
            }

            if (v6 - 10 < v142)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_RELAY_MSG_INDICATION, error initializing relayData", v144, v145, v146, v147, v148, v149, v150, v438);
                v151 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              goto LABEL_611;
            }

            v368 = (v7 + 10);
            v369 = v143;
            do
            {
              v370 = *v368++;
              *v369++ = v370;
            }

            while (v369 < &v143[v142]);
LABEL_615:
            v371 = *(*v8 + 88);
            if (v371)
            {
              v371(v8 - 23, buf, v142, v143);
            }

            if (v103)
            {
              sub_10000C1E8(v103);
            }

            v18 = 17;
            goto LABEL_38;
          case 0x13u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 742, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 743, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v97 = *(*v8 + 96);
            if (v97)
            {
              v97(v8 - 23, buf, v7[8]);
            }

            v18 = 19;
            goto LABEL_38;
          case 0x15u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 777, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            v137 = *(*v8 + 104);
            if (v137)
            {
              v137(v8 - 23, buf);
            }

            v18 = 21;
            goto LABEL_38;
          case 0x16u:
            LOWORD(buf[1]) = 0;
            buf[0] = 0;
            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 788, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(buf, (a2 + 1), 6uLL);
            if (v6 == 8)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 789, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v192 = *(*v8 + 112);
            if (v192)
            {
              v192(v8 - 23, buf, v7[8]);
            }

            v18 = 22;
            goto LABEL_38;
          case 0x17u:
            if (*(v8 - 8) > 0x10001u)
            {
              if (a3 >= 6)
              {
                v175 = *(a2 + 1);
                v176 = 3;
                goto LABEL_349;
              }
            }

            else if (a3 >= 4)
            {
              v175 = a2[1];
              v176 = 2;
LABEL_349:
              if ((a3 - v176 * 2) > 1)
              {
                v57 = a2;
                v286 = a2[v176];
                v287 = v176 * 2 + 2;
                v288 = sub_1001BBBD8(v286, 0xFC3A5ED8uLL);
                v289 = v288;
                if (v6 - v287 >= v286 && v286)
                {
                  for (i = 0; i != v286; ++i)
                  {
                    *(v288 + i) = v57[v287 + i];
                  }
                }

LABEL_603:
                v354 = *(*v8 + 120);
                if (v354)
                {
                  v354(v8 - 23, v175, v286, v289);
                }

                sub_10000C1E8(v289);
                v18 = 23;
LABEL_606:
                v7 = v57;
                goto LABEL_38;
              }

              v57 = a2;
LABEL_602:
              v289 = sub_1001BBBD8(0, 0xFC3A5ED8uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v286 = 0;
              goto LABEL_603;
            }

            v57 = a2;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v175 = 0;
            goto LABEL_602;
          case 0x19u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1458, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1460, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v112 = *(*v8 + 336);
            if (v112)
            {
              v112(v8 - 23, *(a2 + 2), *(a2 + 3));
            }

            v18 = 25;
            goto LABEL_38;
          case 0x1Cu:
            if (a3 < 6)
            {
              v223 = 0;
            }

            else
            {
              v223 = *(a2 + 1);
            }

            v300 = *(*v8 + 152);
            if (v300)
            {
              v300(v8 - 23, v223);
            }

            v18 = 28;
            goto LABEL_38;
          case 0x1Du:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 829, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v224 = *(a2 + 2);
            if (a3 <= 4)
            {
              v64 = a2;
              v227 = sub_1001BBBD8(0, 0x7EB70963uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v225 = 0;
            }

            else
            {
              v64 = a2;
              v225 = *(a2 + 3);
              v226 = sub_1001BBBD8(v225, 0x7EB70963uLL);
              v227 = v226;
              if (v6 - 5 >= v225 && v225)
              {
                for (j = 0; j != v225; ++j)
                {
                  *(v226 + j) = v64[j + 5];
                }
              }
            }

            v317 = *(*v8 + 168);
            if (v317)
            {
              v317(v8 - 23, v224, v225, v227);
            }

            sub_10000C1E8(v227);
            v18 = 29;
            goto LABEL_589;
          case 0x1Eu:
            if (a3 <= 3)
            {
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD, invalid PDU", v302, v303, v304, v305, v306, v307, v308, v438);
              v309 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              goto LABEL_669;
            }

            v233 = *(a2 + 3);
            if ((v233 & 0x80000000) != 0)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD received unsupported control message", v390, v391, v392, v393, v394, v395, v396, v438);
                v397 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v18 = 30;
              goto LABEL_38;
            }

            v234 = (*(a2 + 2) | (v233 << 8)) & 0x3FF;
            v235 = sub_100007618(v234, 0x8BBEBDD4uLL);
            v103 = v235;
            if (v6 - 4 >= v234)
            {
              if (v234)
              {
                v402 = (v7 + 4);
                v403 = v235;
                do
                {
                  v404 = *v402++;
                  *v403++ = v404;
                }

                while (v403 < &v235[v234]);
              }

              v405 = *(*v8 + 176);
              if (v405)
              {
                v405(v8 - 23, (v233 >> 2) & 0x1F, v234, v235);
              }

              sub_10000C1E8(v103);
              if (v5)
              {
                v18 = 30;
                goto LABEL_39;
              }

              return;
            }

            if (!sub_10000C240())
            {
              goto LABEL_611;
            }

            sub_10000AF54("AACP_MSG_EA_SESSION_DOWNLOAD, invalid PDU", v236, v237, v238, v239, v240, v241, v242, v438);
            v243 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_611;
            }

            goto LABEL_610;
          case 0x20u:
            if (a3 <= 3)
            {
              v231 = sub_1001BBBD8(0, 0xD4FC53DBuLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v229 = 0;
            }

            else
            {
              v229 = a2[1];
              v230 = sub_1001BBBD8(v229, 0xD4FC53DBuLL);
              v231 = v230;
              if (v6 - 4 >= v229 && v229)
              {
                for (k = 0; k != v229; ++k)
                {
                  *(v230 + k) = v7[k + 4];
                }
              }
            }

            v301 = *(*v8 + 184);
            if (v301)
            {
              v301(v8 - 23, v229, v231);
            }

            sub_10000C1E8(v231);
            v18 = 32;
            goto LABEL_38;
          case 0x21u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 891, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 892, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v87 = *(a2 + 2);
            v88 = *(a2 + 3);
            v89 = size;
            if (a3 < 6)
            {
              v90 = a2;
              v91 = 0;
            }

            else
            {
              v90 = a2;
              v91 = a2[2];
              if (a2[2])
              {
                v92 = sub_1001BBBD8(a2[2], 0x1F4D8532uLL);
                v93 = v92;
                if (v6 - 6 >= v91)
                {
                  v94 = (v90 + 6);
                  v95 = v92;
                  do
                  {
                    v96 = *v94++;
                    *v95++ = v96;
                  }

                  while (v95 < &v92[v91]);
                }

LABEL_533:
                v318 = *(*v8 + 192);
                if (v318)
                {
                  v318(v8 - 23, v87, v88, v91, v93);
                }

                if (v93)
                {
                  sub_10000C1E8(v93);
                }

                v18 = 33;
                v7 = v90;
                v5 = v89;
                goto LABEL_38;
              }
            }

            v93 = 0;
            goto LABEL_533;
          case 0x23u:
            memset(&buf[2] + 2, 0, 20);
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            }

            else
            {
              v177 = *(a2 + 2);
              LOBYTE(buf[0]) = *(a2 + 2);
              if (a3 > 4)
              {
                *(buf + 1) = *(a2 + 3);
                if (a3 > 8)
                {
                  *(buf + 3) = *(a2 + 5);
                  if (a3 > 0xA)
                  {
                    *(&buf[1] + 3) = *(a2 + 9);
                    if (a3 != 11)
                    {
                      BYTE1(buf[2]) = *(a2 + 11);
                      if (a3 <= 0xD)
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                        v178 = 0;
                      }

                      else
                      {
                        v178 = a2[6];
                        *(&buf[2] + 2) = v178;
                        if (a3 != 14)
                        {
                          v180 = *(a2 + 14);
                          v181 = v180 + 1;
                          v182 = sub_1001BBBD8(v180 + 1, 0x8635BB43uLL);
                          *(&buf[5] + 2) = v182;
                          if (a3 - 15 > v180)
                          {
                            v183 = &v182[v181];
                            v184 = (v7 + 15);
                            do
                            {
                              v185 = *v184++;
                              *v182++ = v185;
                            }

                            while (v182 < v183);
                            v6 = a3;
                            if (v177 <= 1)
                            {
                              goto LABEL_560;
                            }

                            v186 = v181 + 15;
                            if (a3 - v186 > 1)
                            {
                              v187 = (v7[v186] << 16) | (v7[v186 + 1] << 24);
                              if (a3 - (v181 + 17) > 3)
                              {
                                v188 = v181 + 21;
                                *(&buf[2] + 2) = v178 | (*&v7[v181 + 17] << 32) | v187;
                                if (a3 - v188 >= 4)
                                {
                                  *(&buf[4] + 2) = *&v7[v188];
                                }

                                goto LABEL_560;
                              }

                              goto LABEL_559;
                            }

LABEL_558:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                            v187 = 0;
LABEL_559:
                            *(&buf[2] + 2) = v178 | v187;
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                            goto LABEL_560;
                          }

                          v6 = a3;
LABEL_556:
                          if (v177 <= 1)
                          {
LABEL_560:
                            v339 = *(*v8 + 200);
                            if (v339)
                            {
                              v339(v8 - 23, buf);
                            }

                            if (*(&buf[5] + 2))
                            {
                              sub_10000C1E8(*(&buf[5] + 2));
                            }

                            v18 = 35;
                            goto LABEL_38;
                          }

                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                          goto LABEL_558;
                        }
                      }

                      *(&buf[5] + 2) = sub_1001BBBD8(1uLL, 0x8635BB43uLL);
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                      goto LABEL_556;
                    }

LABEL_711:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 921, "ByteStream_NumReadBytesAvail(bs) >= 1");
                  }

LABEL_710:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                  goto LABEL_711;
                }

LABEL_709:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                goto LABEL_710;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            goto LABEL_709;
          case 0x24u:
            if (a3 <= 3)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v248 = 0;
            }

            else
            {
              v248 = a2[1];
              if (a3 > 5)
              {
                v249 = a2[2];
                v250 = sub_1001BBBD8(v249, 0x10DC546AuLL);
                v251 = v250;
                if (v6 - 6 >= v249 && v249)
                {
                  for (m = 0; m != v249; ++m)
                  {
                    *(v250 + m) = v7[m + 6];
                  }
                }

LABEL_508:
                v311 = *(*v8 + 208);
                if (v311)
                {
                  v311(v8 - 23, v248, v249, v251);
                }

                sub_10000C1E8(v251);
                v18 = 36;
                goto LABEL_38;
              }
            }

            v251 = sub_1001BBBD8(0, 0x10DC546AuLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v249 = 0;
            goto LABEL_508;
          case 0x27u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 968, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 == 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 969, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 970, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v439 = size;
            if (a3 == 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 971, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v98 = *(a2 + 2);
            v99 = *(a2 + 3);
            v100 = *(a2 + 4);
            v101 = *(a2 + 5);
            v102 = sub_1001BBBD8(v101 + 1, 0x9E629437uLL);
            v103 = v102;
            if (v6 - 6 < v101)
            {
              if (!sub_10000C240())
              {
                goto LABEL_611;
              }

              sub_10000AF54("AACP_MSG_GET_CERTIFICATES_RESP error reading serialNumber", v104, v105, v106, v107, v108, v109, v110, v438);
              v111 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_611;
              }

              goto LABEL_610;
            }

            if (v101)
            {
              v323 = (v7 + 6);
              v324 = v102;
              do
              {
                v325 = *v323++;
                *v324++ = v325;
              }

              while (v324 < &v102[v101]);
            }

            if (v6 - (v101 + 6) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 982, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v326 = v7;
            v327 = *&v7[v101 + 6];
            v328 = sub_1001BBBD8(v327, 0x7F0F4EDAuLL);
            v329 = v328;
            if (v6 - (v101 + 8) < v327)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("AACP_MSG_GET_CERTIFICATES_RESP error reading certificateData", v330, v331, v332, v333, v334, v335, v336, v438);
                v337 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              sub_10000C1E8(v103);
              v338 = v329;
              goto LABEL_612;
            }

            if (v327)
            {
              v372 = &v326[v101 + 8];
              v373 = v328;
              do
              {
                v374 = *v372++;
                *v373++ = v374;
              }

              while (v373 < &v328[v327]);
            }

            v375 = *(*v8 + 216);
            if (v375)
            {
              v375(v8 - 23, v98, v99, v100, v101, v103, v327, v328);
            }

            sub_10000C1E8(v103);
            sub_10000C1E8(v329);
            v18 = 39;
            v7 = v326;
            goto LABEL_310;
          case 0x28u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1006, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            if (a3 <= 4)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1007, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v162 = *(a2 + 2);
            v164 = *(a2 + 3);
            v165 = sub_1001BBBD8(v164, 0x100004077774924uLL);
            v103 = v165;
            if (v6 - 5 >= v164)
            {
              if (v164)
              {
                v319 = a2 + 5;
                v320 = v165;
                do
                {
                  v321 = *v319++;
                  *v320++ = v321;
                }

                while (v320 < &v165[v164]);
              }

              v322 = *(*v8 + 224);
              if (v322)
              {
                v322(v8 - 23, v165, v164, v162);
              }

              sub_10000C1E8(v103);
              if (v5)
              {
                v7 = a2;
                v18 = 40;
                goto LABEL_39;
              }

              return;
            }

            if (!sub_10000C240())
            {
              goto LABEL_611;
            }

            sub_10000AF54("AACP_MSG_GYRO_INFO, invalid gyroInfoData", v166, v167, v168, v169, v170, v171, v172, v438);
            v173 = sub_10000C050(0x53u);
            if (!os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_611;
            }

            goto LABEL_610;
          case 0x2Bu:
            v126 = size;
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v127 = 0;
              v283 = 2;
            }

            else
            {
              v127 = *(a2 + 2);
              if (a3 > 4)
              {
                v128 = *(a2 + 3);
                if (a3 > 8)
                {
                  v130 = *(a2 + 5);
                  if (a3 > 0xC)
                  {
                    v130 |= *(a2 + 9) << 32;
                    v131 = malloc_type_calloc(*(a2 + 3), 1uLL, 0x100004077774924uLL);
                    v132 = a2;
                    v133 = a2 + 13;
                    v134 = &v131[v128];
                    v135 = v6 - 13;
                    goto LABEL_594;
                  }

                  v132 = a2;
                  v283 = 9;
LABEL_593:
                  v131 = malloc_type_calloc(v128, 1uLL, 0x100004077774924uLL);
                  v133 = &v132[v283];
                  v134 = &v131[v128];
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                  v135 = 0;
LABEL_594:
                  if (v135 >= v128 && v128)
                  {
                    v351 = v131;
                    do
                    {
                      v352 = *v133++;
                      *v351++ = v352;
                    }

                    while (v351 < v134);
                  }

                  v353 = *(*v8 + 232);
                  if (v353)
                  {
                    v353(v8 - 23, v127, v130, v128, v131);
                  }

                  free(v131);
                  v18 = 43;
                  v7 = v132;
                  v5 = v126;
                  goto LABEL_38;
                }

                v132 = a2;
                v283 = 5;
LABEL_592:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                v130 = 0;
                goto LABEL_593;
              }

              v283 = 3;
            }

            v132 = v7;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v128 = 0;
            goto LABEL_592;
          case 0x2Cu:
            if (a3 <= 5)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Invalid length=%d for GAPA message", v211, v212, v213, v214, v215, v216, v217, v6);
                v218 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v18 = 44;
              goto LABEL_38;
            }

            if ((a3 & 0xFFFE) == 4)
            {
              v103 = sub_1001BBBD8(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_608:
              if (!sub_10000C240())
              {
                goto LABEL_611;
              }

              sub_10000AF54("AACP_MSG_GAPA, invalid gapaData", v360, v361, v362, v363, v364, v365, v366, v438);
              v367 = sub_10000C050(0x53u);
              if (!os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_611;
              }

              goto LABEL_610;
            }

            v355 = *(a2 + 2);
            v356 = *(a2 + 3);
            v358 = a2[2];
            v359 = sub_1001BBBD8(v358, 0x100004077774924uLL);
            v103 = v359;
            if (v6 - 6 < v358)
            {
              goto LABEL_608;
            }

            if (v358)
            {
              v406 = (a2 + 3);
              v407 = v358;
              v408 = v359;
              do
              {
                v409 = *v406++;
                *v408++ = v409;
                --v407;
              }

              while (v407);
              v410 = v358 + 6;
            }

            else
            {
              v410 = 6;
            }

            if (v355 != 2)
            {
              goto LABEL_680;
            }

            if (v358 + 7 <= v6)
            {
              if (v6 <= v410)
              {
LABEL_680:
                v427 = 0;
              }

              else
              {
                v427 = *(a2 + v410);
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("Invalid length=%d for GAPA version=%d message", v419, v420, v421, v422, v423, v424, v425, v6);
              v426 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v426, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }

              v427 = 0;
            }

            else
            {
              v427 = 0;
            }

            if (v356 == 2)
            {
              v428 = *(*v8 + 248);
              if (v428)
              {
                v428(v8 - 23, v103, v358, v355, v427);
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("Unknown GAPA message type %d", v429, v430, v431, v432, v433, v434, v435, v356);
              v436 = sub_10000C050(0x53u);
              if (os_log_type_enabled(v436, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            sub_10000C1E8(v103);
            if (v5)
            {
              v7 = a2;
              v18 = 44;
              goto LABEL_39;
            }

            return;
          case 0x2Eu:
            if (a3 <= 2)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            }

            else if (a3 != 3)
            {
              if (a3 > 4)
              {
                v113 = size;
                v114 = *(a2 + 3);
                v116 = *(a2 + 4);
                v117 = sub_1001BBBD8(8 * v116, 0xF8CF1C16uLL);
                v103 = v117;
                if (v6 - 5 >= 8 * v116)
                {
                  if (v116)
                  {
                    v118 = a2 + 5;
                    v119 = v117;
                    do
                    {
                      v120 = *v118++;
                      *v119++ = v120;
                    }

                    while (v119 < &v117[8 * v116]);
                  }

                  v121 = *(*v8 + 240);
                  if (v121)
                  {
                    v121(v8 - 23, v114, v116, v117);
                  }

                  sub_10000C1E8(v103);
                  if (v113)
                  {
                    v7 = a2;
                    v18 = 46;
                    goto LABEL_39;
                  }

                  return;
                }

LABEL_329:
                if (!sub_10000C240())
                {
                  goto LABEL_611;
                }

                sub_10000AF54("AACP_MSG_TIPI_TABLE, error initializing tipiTable", v274, v275, v276, v277, v278, v279, v280, v438);
                v281 = sub_10000C050(0x53u);
                if (!os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_611;
                }

LABEL_610:
                sub_10080F7A0();
LABEL_611:
                v338 = v103;
LABEL_612:
                sub_10000C1E8(v338);
                return;
              }

LABEL_328:
              v103 = sub_1001BBBD8(0, 0xF8CF1C16uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              goto LABEL_329;
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            goto LABEL_328;
          case 0x30u:
            if (a3 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1087, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v82 = *(*v8 + 128);
            if (v82)
            {
              v82(v8 - 23, a2[1]);
            }

            v18 = 48;
            goto LABEL_38;
          case 0x31u:
          case 0x32u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1098, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v20 = *(a2 + 2);
            ptr = sub_1001BBBD8(16 * v20, 0x101004082113244uLL);
            v439 = v5;
            if (!v20)
            {
              v43 = *(*v8 + 136);
              if (!v43)
              {
                goto LABEL_309;
              }

              goto LABEL_305;
            }

            v21 = v6;
            v22 = 0;
            v23 = 0;
            v442 = v21;
            v444 = v7;
            v446 = v21 - 1;
            v24 = 3;
            while (1)
            {
              v25 = &ptr[2 * v22];
              if (v23)
              {
                break;
              }

              if (v446 <= v24)
              {
                goto LABEL_20;
              }

              LOWORD(ptr[2 * v22]) = *&v444[v24];
              if (v446 <= (v24 + 2))
              {
                v26 = 0;
                v23 = 1;
                v24 += 2;
              }

              else
              {
                v23 = 0;
                *(v25 + 1) = *&v444[(v24 + 2)];
                v24 += 4;
                v26 = 1;
              }

LABEL_21:
              v27 = sub_1001BBBD8(*(v25 + 1), 0x82F6A03CuLL);
              *(v25 + 1) = v27;
              v28 = *(v25 + 1);
              if (v26)
              {
                v29 = v442 - v24;
              }

              else
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
                v29 = 0;
              }

              v30 = *(v25 + 1);
              if (v29 >= v30)
              {
                if (v28)
                {
                  v31 = &v444[v24];
                  v32 = &v27[v28];
                  do
                  {
                    v33 = *v31++;
                    *v27++ = v33;
                  }

                  while (v27 < v32);
                  v30 = *(v25 + 1);
                }

                v24 += v30;
              }

              else
              {
                v23 = 1;
              }

              if (++v22 == v20)
              {
                v43 = *(*v8 + 136);
                v6 = v442;
                v7 = v444;
                if (!v43)
                {
                  goto LABEL_306;
                }

                if (v23)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("AACP_MSG_DELETE_KEYS, error getting keys", v44, v45, v46, v47, v48, v49, v50, v438);
                    v51 = sub_10000C050(0x53u);
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      sub_10080F7A0();
                    }
                  }

LABEL_306:
                  if (v20)
                  {
                    v253 = ptr + 1;
                    do
                    {
                      v254 = *v253;
                      v253 += 2;
                      sub_10000C1E8(v254);
                      --v20;
                    }

                    while (v20);
                  }

LABEL_309:
                  sub_10000C1E8(ptr);
LABEL_310:
                  v5 = v439;
                  goto LABEL_38;
                }

LABEL_305:
                v43(v8 - 23, v20, ptr, v18 != 49);
                goto LABEL_306;
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
LABEL_20:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v26 = 0;
            v23 = 1;
            goto LABEL_21;
          case 0x40u:
            if (a3 <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1179, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            if (a3 <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1180, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            if (a3 <= 7)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1181, "ByteStream_NumReadBytesAvail(bs) >= 2");
            }

            v193 = *(*v8 + 144);
            v18 = 64;
            if (v193 && a2[1])
            {
              v193(v8 - 23, a2[1], a2[2], a2[3]);
              v18 = 64;
            }

            goto LABEL_38;
          case 0x47u:
            sub_1001B9F2C((v8 - 23));
            v18 = 71;
            goto LABEL_38;
          case 0x49u:
            sub_1001BA5F0(v8 - 23);
            v18 = 73;
            goto LABEL_38;
          case 0x4Bu:
            if (*(*v8 + 256))
            {
              if (a3 >= 4 && (v69 = a2[1], v69 > 1))
              {
                v398 = malloc_type_malloc(a2[1], 0x23159633uLL);
                if (!v398)
                {
                  sub_1000D660C();
                }

                if (v6 - 4 >= v69)
                {
                  v399 = (v7 + 4);
                  v400 = v398;
                  do
                  {
                    v401 = *v399++;
                    *v400++ = v401;
                  }

                  while (v400 < &v398[v69]);
                }

                (*(*v8 + 256))(v8 - 23, v398, v69);
                free(v398);
              }

              else if (sub_10000C240())
              {
                sub_10000AF54("CD message data length cannot be less than 2 bytes", v70, v71, v72, v73, v74, v75, v76, v438);
                v77 = sub_10000C050(0x53u);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }
            }

            v18 = 75;
            goto LABEL_38;
          case 0x4Cu:
            if (a3 <= 3)
            {
              v124 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v122 = 0;
            }

            else
            {
              v122 = a2[1];
              v123 = malloc_type_malloc(v122, 0x100004077774924uLL);
              v124 = v123;
              if (v6 - 4 >= v122 && v122)
              {
                for (n = 0; n != v122; ++n)
                {
                  *(v123 + n) = v7[n + 4];
                }
              }
            }

            v282 = *(*v8 + 264);
            if (v282)
            {
              v282(v8 - 23, v122, v124);
            }

            free(v124);
            v18 = 76;
            goto LABEL_38;
          case 0x4Eu:
            v56 = *(*v8 + 272);
            if (!v56)
            {
              v18 = 78;
              goto LABEL_38;
            }

            if (a3 < 0xA)
            {
              v56(v8 - 23, 0);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            }

            else
            {
              v56(v8 - 23, *(a2 + 1));
              v19 = 10;
LABEL_56:
              if ((v6 - v19) > 1)
              {
                v57 = v7;
                v58 = *&v7[v19];
                v59 = v19 + 2;
                v60 = malloc_type_malloc(v58, 0x100004077774924uLL);
                v61 = v60;
                if (v6 - v59 >= v58 && v58)
                {
                  for (ii = 0; ii != v58; ++ii)
                  {
                    *(v60 + ii) = v57[v59 + ii];
                  }
                }

LABEL_577:
                v349 = *(*v8 + 280);
                if (v349)
                {
                  v349(v8 - 23, v58, v61);
                }

                free(v61);
                goto LABEL_606;
              }
            }

            v57 = v7;
            v61 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v58 = 0;
            goto LABEL_577;
          case 0x4Fu:
            goto LABEL_56;
          case 0x50u:
            if (a3 <= 2)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 1298, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v83 = *(a2 + 2);
            if (*(a2 + 2) > 1u)
            {
              if (v83 == 2)
              {
                v386 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                v85 = v386;
                if ((v6 - 11) <= 0xFFFFFFF7)
                {
                  for (jj = 0; jj != 8; ++jj)
                  {
                    *(v386 + jj) = v7[jj + 3];
                  }
                }
              }

              else
              {
                if (v83 != 3)
                {
LABEL_626:
                  if (sub_10000C240())
                  {
                    sub_10000AF54("PerfStats: subtype %d not found", v376, v377, v378, v379, v380, v381, v382, v83);
                    v383 = sub_10000C050(0x53u);
                    if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
                    {
                      buf[0] = 136446210;
                      *&buf[1] = sub_10000C0FC();
                      _os_log_impl(&_mh_execute_header, v383, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                    }
                  }

                  v85 = 0;
                  goto LABEL_637;
                }

                v312 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                v85 = v312;
                if ((v6 - 11) <= 0xFFFFFFF7)
                {
                  for (kk = 0; kk != 8; ++kk)
                  {
                    *(v312 + kk) = v7[kk + 3];
                  }
                }
              }
            }

            else
            {
              if (*(a2 + 2))
              {
                if (v83 == 1)
                {
                  v84 = malloc_type_malloc(0xBuLL, 0x10000403B807CB7uLL);
                  v85 = v84;
                  if ((v6 - 14) <= 0xFFFFFFF4)
                  {
                    for (mm = 0; mm != 11; ++mm)
                    {
                      *(v84 + mm) = v7[mm + 3];
                    }
                  }

                  goto LABEL_637;
                }

                goto LABEL_626;
              }

              v384 = malloc_type_malloc(9uLL, 0x10000408EEE02DCuLL);
              v85 = v384;
              if ((v6 - 12) <= 0xFFFFFFF6)
              {
                for (nn = 0; nn != 9; ++nn)
                {
                  *(v384 + nn) = v7[nn + 3];
                }
              }
            }

LABEL_637:
            v388 = *(*v8 + 288);
            if (v388)
            {
              v388(v8 - 23, v83, v85);
            }

            free(v85);
            v18 = 80;
            goto LABEL_38;
          case 0x52u:
            if (a3 <= 3)
            {
              v221 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v219 = 0;
            }

            else
            {
              v219 = a2[1];
              v220 = malloc_type_malloc(v219, 0x100004077774924uLL);
              v221 = v220;
              if (v6 - 4 >= v219 && v219)
              {
                for (i1 = 0; i1 != v219; ++i1)
                {
                  *(v220 + i1) = v7[i1 + 4];
                }
              }
            }

            v299 = *(*v8 + 296);
            if (v299)
            {
              v299(v8 - 23, v219, v221);
            }

            free(v221);
            v18 = 82;
            goto LABEL_38;
          case 0x53u:
            if (a3 <= 3)
            {
              v80 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v78 = 0;
            }

            else
            {
              v78 = a2[1];
              v79 = malloc_type_malloc(v78, 0x100004077774924uLL);
              v80 = v79;
              if (v6 - 4 >= v78 && v78)
              {
                for (i2 = 0; i2 != v78; ++i2)
                {
                  *(v79 + i2) = v7[i2 + 4];
                }
              }
            }

            v273 = *(*v8 + 304);
            if (v273)
            {
              v273(v8 - 23, v78, v80);
            }

            free(v80);
            v18 = 83;
            goto LABEL_38;
          case 0x55u:
            if (a3 <= 2)
            {
              v64 = a2;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v63 = 0;
            }

            else
            {
              v63 = *(a2 + 2);
              if (a3 > 4)
              {
                v64 = a2;
                v65 = *(a2 + 3);
                v66 = malloc_type_malloc(v65, 0x100004077774924uLL);
                v67 = v66;
                if (v6 - 5 >= v65 && v65)
                {
                  for (i3 = 0; i3 != v65; ++i3)
                  {
                    *(v66 + i3) = v64[i3 + 5];
                  }
                }

LABEL_586:
                v350 = *(*v8 + 312);
                if (v350)
                {
                  v350(v8 - 23, v63, v65, v67);
                }

                free(v67);
                v18 = 85;
LABEL_589:
                v7 = v64;
LABEL_38:
                if (v5)
                {
LABEL_39:
                  v42 = *(*v8 + 352);
                  if (v42)
                  {
                    v42(v8 - 23, v18, v7, v6);
                  }
                }

                return;
              }

              v64 = a2;
            }

            v67 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v65 = 0;
            goto LABEL_586;
          case 0x57u:
            if (a3 <= 3)
            {
              v140 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v138 = 0;
            }

            else
            {
              v138 = a2[1];
              v139 = malloc_type_malloc(v138, 0x100004077774924uLL);
              v140 = v139;
              if (v6 - 4 >= v138 && v138)
              {
                for (i4 = 0; i4 != v138; ++i4)
                {
                  *(v139 + i4) = v7[i4 + 4];
                }
              }
            }

            v284 = *(*v8 + 320);
            if (v284)
            {
              v284(v8 - 23, v140, v138);
            }

            free(v140);
            v18 = 87;
            goto LABEL_38;
          case 0x58u:
            if (!*(*v8 + 328))
            {
              goto LABEL_583;
            }

            if (a3 <= 3)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v194 = 0;
            }

            else
            {
              v194 = a2[1];
              if (a3 > 5)
              {
                v195 = a2[2];
                v196 = malloc_type_malloc(v195, 0x100004077774924uLL);
                v197 = v196;
                if (v6 - 6 >= v195 && v195)
                {
                  for (i5 = 0; i5 != v195; ++i5)
                  {
                    *(v196 + i5) = v7[i5 + 6];
                  }
                }

LABEL_582:
                (*(*v8 + 328))(v8 - 23, v194, v197, v195);
                free(v197);
LABEL_583:
                v18 = 88;
                goto LABEL_38;
              }
            }

            v197 = malloc_type_malloc(0, 0x100004077774924uLL);
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
            v195 = 0;
            goto LABEL_582;
          case 0x59u:
            if (a3 <= 3)
            {
              v246 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v244 = 0;
            }

            else
            {
              v244 = a2[1];
              v245 = malloc_type_malloc(v244, 0x100004077774924uLL);
              v246 = v245;
              if (v6 - 4 >= v244 && v244)
              {
                for (i6 = 0; i6 != v244; ++i6)
                {
                  *(v245 + i6) = v7[i6 + 4];
                }
              }
            }

            v310 = *(*v8 + 344);
            if (v310)
            {
              v310(v8 - 23, v246, v244);
            }

            v18 = 89;
            goto LABEL_38;
          case 0x60u:
            if (a3 <= 3)
            {
              v54 = malloc_type_malloc(0, 0x100004077774924uLL);
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c");
              v52 = 0;
            }

            else
            {
              v52 = a2[1];
              v53 = malloc_type_malloc(v52, 0x100004077774924uLL);
              v54 = v53;
              if (v6 - 4 >= v52 && v52)
              {
                for (i7 = 0; i7 != v52; ++i7)
                {
                  *(v53 + i7) = v7[i7 + 4];
                }
              }
            }

            v272 = *(*v8 + 360);
            if (v272)
            {
              v272(v8 - 23, v54, v52);
            }

            free(v54);
            v18 = 96;
            goto LABEL_38;
          default:
            goto LABEL_35;
        }
      }

      v437 = "(length) > 0";
    }

    else
    {
      v437 = "data";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 401, v437);
  }

LABEL_5:
  if (sub_10000C240())
  {
    sub_10000AF54("No connection associated with handle (%d)", v10, v11, v12, v13, v14, v15, v16, a1);
    v17 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_669:
      sub_10080F7A0();
    }
  }
}