void start(int a1, uint64_t a2)
{
  if (a1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  v3 = sub_1000008BC(v2);
  if (!v3)
  {
    exit(1);
  }

  v4 = v3;
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000008B4;
  handler[3] = &unk_10000C420;
  handler[4] = v4;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);
  signal(1, 1);
  dispatch_main();
}

void *sub_1000008BC(const char *a1)
{
  v22 = 0;
  v2 = sub_100000C68();
  if ((v2 & 0x80000000) != 0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      v11 = __error();
      v12 = strerror(*v11);
      *v10 = 136315138;
      *(v10 + 4) = v12;
      __SC_log_send();
    }

    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_100000FDC();
  v22 = v4;
  if (!v4)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13);
      v14 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    close(v3);
LABEL_10:
    sub_1000037A0(&v22);
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x50uLL, 0x10F004095A59CC2uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = "/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist";
  }

  v15 = strdup(v7);
  *(v6 + 2) = v5;
  *(v6 + 3) = v15;
  *v6 = v3;
  v16 = dispatch_source_create(&_dispatch_source_type_read, v3, 0, &_dispatch_main_q);
  *(v6 + 1) = v16;
  dispatch_set_context(v16, v3);
  dispatch_set_finalizer_f(*(v6 + 1), j__close);
  v17 = *(v6 + 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000011B4;
  handler[3] = &unk_10000C440;
  handler[4] = v6;
  dispatch_source_set_event_handler(v17, handler);
  sub_100001628(v6);
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v6;
  v18 = SCDynamicStoreCreate(0, @"DHCPv6Server", sub_100002E50, &context);
  values = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
  v19 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  CFRelease(values);
  SCDynamicStoreSetNotificationKeys(v18, 0, v19);
  CFRelease(v19);
  *(v6 + 6) = v18;
  SCDynamicStoreSetDispatchQueue(v18, &_dispatch_main_q);
  dispatch_resume(*(v6 + 1));
  return v6;
}

uint64_t sub_100000C68()
{
  v15 = 1;
  v0 = socket(30, 2, 0);
  v1 = v0;
  if ((v0 & 0x80000000) == 0)
  {
    *&v16.sa_len = 587341312;
    *&v16.sa_data[6] = 0;
    v18 = 0;
    v17 = 0;
    if (bind(v0, &v16, 0x1Cu))
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_6:
        close(v1);
        return 0xFFFFFFFFLL;
      }

      v2 = _os_log_pack_size();
      __chkstk_darwin(v2);
      v3 = *__error();
    }

    else
    {
      if (ioctl(v1, 0x8004667EuLL, &v15) < 0)
      {
        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_6;
        }
      }

      else
      {
        if ((setsockopt(v1, 41, 61, &v15, 4u) & 0x80000000) == 0)
        {
          return v1;
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_6;
        }
      }

      v13 = _os_log_pack_size();
      __chkstk_darwin(v13);
      v14 = *__error();
    }

    v4 = _os_log_pack_fill();
    v5 = __error();
    v6 = strerror(*v5);
    *v4 = 136315138;
    *(v4 + 4) = v6;
    __SC_log_send();
    goto LABEL_6;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    v10 = __error();
    v11 = strerror(*v10);
    *v9 = 136315138;
    *(v9 + 4) = v11;
    __SC_log_send();
  }

  return v1;
}

const void *sub_100000FDC()
{
  v0 = sub_1000037D8("/var/db/com.apple.dhcp6d.plist");
  v11 = v0;
  TypeID = CFDictionaryGetTypeID();
  if (v0 && CFGetTypeID(v0) == TypeID && (Value = CFDictionaryGetValue(v0, @"DUID"), v3 = CFDataGetTypeID(), Value) && CFGetTypeID(Value) == v3)
  {
    CFRetain(Value);
  }

  else
  {
    Value = sub_1000019C8();
    if (!Value)
    {
      goto LABEL_10;
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  sub_100006A24(Mutable, BytePtr, Length);
  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 138412290;
    *(v9 + 4) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
LABEL_10:
  sub_1000037A0(&v11);
  return Value;
}

void sub_1000011BC(int *a1)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  *&v21.msg_namelen = 28;
  *&v21.msg_iovlen = 1;
  v22[0] = v25;
  v22[1] = 1500;
  v21.msg_name = v23;
  v21.msg_iov = v22;
  v21.msg_control = &v26;
  *&v21.msg_controllen = 32;
  v2 = recvmsg(*a1, &v21, 0);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (*__error() != 35)
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7);
        v8 = *__error();
        v9 = _os_log_pack_fill();
        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *v9 = 136315394;
        *(v9 + 4) = v11;
        *(v9 + 12) = 1024;
        *(v9 + 14) = v12;
LABEL_8:
        __SC_log_send();
      }
    }
  }

  else
  {
    v3 = v2;
    if (v2 <= 3)
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v4 = _os_log_pack_size();
      __chkstk_darwin(v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 134218240;
      *(v6 + 4) = v3;
      *(v6 + 12) = 1024;
      *(v6 + 14) = 4;
      goto LABEL_8;
    }

    if (v21.msg_controllen < 0xC)
    {
      goto LABEL_22;
    }

    msg_control = v21.msg_control;
    if (!v21.msg_control)
    {
      goto LABEL_22;
    }

    v14 = 0;
    do
    {
      if (msg_control[1] == 41)
      {
        if (msg_control[2] == 46)
        {
          if (*msg_control >= 0x20)
          {
            v14 = msg_control + 3;
          }
        }

        else
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v15 = _os_log_pack_size();
            __chkstk_darwin(v15);
            v16 = *__error();
            v17 = _os_log_pack_fill();
            v18 = msg_control[2];
            *v17 = 67109120;
            v17[1] = v18;
            __SC_log_send();
          }
        }
      }

      msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
    }

    while ((msg_control + 3) <= v21.msg_control + v21.msg_controllen);
    if (v14)
    {
      sub_100001E48(a1, v23, v25, v3, v14[4]);
    }

    else
    {
LABEL_22:
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v19 = _os_log_pack_size();
        __chkstk_darwin(v19);
        v20 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }
  }
}

void sub_100001628(uint64_t a1)
{
  v2 = sub_1000037D8(*(a1 + 24));
  v10 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID)
  {
    v4 = CFDictionaryGetTypeID();
  }

  else
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 24);
      *v7 = 136315138;
      *(v7 + 4) = v8;
      __SC_log_send();
    }

    v4 = CFDictionaryGetTypeID();
    if (!v2)
    {
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (CFGetTypeID(v2) == v4)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  sub_1000017AC(a1, v9);
  sub_1000037A0(&v10);
}

void sub_1000017AC(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"enabled_interfaces");
    TypeID = CFArrayGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v6 = CFDictionaryGetValue(theDict, @"options");
    v7 = CFDictionaryGetTypeID();
    if (v6 && CFGetTypeID(v6) != v7)
    {
      v6 = 0;
    }

    v8 = CFDictionaryGetValue(theDict, @"verbose");
    v9 = CFBooleanGetTypeID();
    if (v8)
    {
      if (CFGetTypeID(v8) == v9)
      {
        v10 = CFBooleanGetValue(v8);
        if (v10 != byte_100010000)
        {
          byte_100010000 = v10 != 0;
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            _os_log_pack_size();
            __chkstk_darwin();
            v11 = *__error();
            v12 = _os_log_pack_fill();
            if (byte_100010000)
            {
              v13 = "enabled";
            }

            else
            {
              v13 = "disabled";
            }

            *v12 = 136315138;
            *(v12 + 4) = v13;
            __SC_log_send();
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
    Value = 0;
  }

  sub_100002E5C(a1, Value);
  sub_100003678(a1, v6);
}

__CFData *sub_1000019C8()
{
  v0 = sub_10000541C(0);
  v15 = v0;
  if (!v0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v1 = sub_100005320(v0);
  if (!v1)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_100005C14(v1);
  v4 = sub_100005410(v2);
  v5 = sub_100005BF8(v2);
  v6 = sub_100006D3C(v3, v4, v5);
  if (!v6)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_11:
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12);
      v13 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      v7 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  sub_100001CEC(v6);
  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    v11 = nullsub_1(v2);
    *v10 = 136315138;
    *(v10 + 4) = v11;
    __SC_log_send();
  }

LABEL_13:
  sub_100005B74(&v15);
  return v7;
}

void sub_100001CEC(void *a1)
{
  values = a1;
  v4 = CFDictionaryCreate(0, &off_10000C460, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if ((sub_1000038D8(v4, "/var/db/com.apple.dhcp6d.plist", 420) & 0x80000000) != 0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1);
      v2 = *__error();
      v3 = _os_log_pack_fill();
      *v3 = 136315138;
      *(v3 + 4) = "/var/db/com.apple.dhcp6d.plist";
      __SC_log_send();
    }
  }

  sub_1000037A0(&v4);
}

void sub_100001E48(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  memset(v81, 0, sizeof(v81));
  v78 = 0;
  v77[0] = 0;
  v77[1] = 0;
  v7 = *(a1 + 72);
  if (v7 < 1)
  {
    goto LABEL_14;
  }

  v11 = 0;
  while (*(*(a1 + 56) + 4 * v11) != a5)
  {
    if (v7 == ++v11)
    {
      goto LABEL_14;
    }
  }

  v12 = *(*(a1 + 64) + 8 * v11);
  if (v12)
  {
    if (*a3 == 11)
    {
      v76 = v12;
      v13 = sub_100007480(a3, a4, v81);
      v79 = v13;
      if (byte_100010000 == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        DHCPv6PacketPrintToString(Mutable, a3, a4);
        if (v13)
        {
          sub_1000074E8(Mutable, v13);
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          v75 = v13;
          v74 = v72;
          __chkstk_darwin(v15);
          v16 = *__error();
          v17 = _os_log_pack_fill();
          v18 = inet_ntop(30, (a2 + 8), v80, 0x2Eu);
          *v17 = 136315650;
          *(v17 + 4) = v76;
          *(v17 + 12) = 2080;
          *(v17 + 14) = v18;
          *(v17 + 22) = 2112;
          *(v17 + 24) = Mutable;
          v13 = v75;
          __SC_log_send();
        }

        CFRelease(Mutable);
      }

      else
      {
        v27 = _SC_LOG_DEFAULT();
        v28 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v29 = _os_log_pack_size();
          v73 = v27;
          v74 = v72;
          __chkstk_darwin(v29);
          v75 = v13;
          v30 = *__error();
          v31 = _os_log_pack_fill();
          v32 = DHCPv6MessageTypeName(*a3);
          v72[3] = v28;
          v33 = v32;
          v34 = *a3;
          v35 = inet_ntop(30, (a2 + 8), v80, 0x2Eu);
          *v31 = 136316162;
          *(v31 + 4) = v76;
          *(v31 + 12) = 2080;
          *(v31 + 14) = v33;
          *(v31 + 22) = 1024;
          *(v31 + 24) = v34;
          *(v31 + 28) = 1024;
          *(v31 + 30) = a4;
          *(v31 + 34) = 2080;
          *(v31 + 36) = v35;
          v13 = v75;
          __SC_log_send();
        }
      }

      if (v13)
      {
        v36 = sub_100007640(v13, 2, &v78, 0);
        if (v36)
        {
          v37 = v36;
          if (!sub_100006CF4(v36, v78))
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }

          Length = CFDataGetLength(*(a1 + 16));
          if (Length != v78 || (BytePtr = CFDataGetBytePtr(*(a1 + 16)), bcmp(v37, BytePtr, v78)))
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }
        }

        DHCPv6PacketSetMessageType(&v82, 7);
        v83 = *(a3 + 1);
        v84 = a3[3];
        sub_100007288(v77, &v85, 1496);
        v43 = sub_100007640(v13, 1, &v78, 0);
        if (!v43)
        {
          goto LABEL_33;
        }

        v44 = v43;
        if (!sub_100006CF4(v43, v78))
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
LABEL_48:
            v63 = _os_log_pack_size();
            __chkstk_darwin(v63);
            v64 = *__error();
            *_os_log_pack_fill() = 0;
LABEL_53:
            __SC_log_send();
          }

LABEL_54:
          sub_100007498(&v79);
          return;
        }

        if (!sub_10000729C(v77, 1u, v78, v44, v81))
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_54;
          }
        }

        else
        {
LABEL_33:
          v45 = CFDataGetLength(*(a1 + 16));
          v46 = CFDataGetBytePtr(*(a1 + 16));
          if (sub_10000729C(v77, 2u, v45, v46, v81))
          {
            v47 = sub_100007640(v13, 6, &v78, 0);
            if (v47 && *(a1 + 32) && v78 >= 2)
            {
              v48 = v47;
              v49 = 0;
              while (1)
              {
                v50 = bswap32(v48[v49]);
                v51 = HIWORD(v50);
                v52 = sub_1000076EC(*(a1 + 32), SHIWORD(v50));
                if (v52)
                {
                  v53 = v52;
                  v54 = CFDataGetLength(v52);
                  v55 = CFDataGetBytePtr(v53);
                  if (!sub_10000729C(v77, v51, v54, v55, v81))
                  {
                    break;
                  }
                }

                if (++v49 >= v78 >> 1)
                {
                  goto LABEL_41;
                }
              }

              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_54;
              }

              v68 = _os_log_pack_size();
              __chkstk_darwin(v68);
              v69 = *__error();
              v70 = _os_log_pack_fill();
              v71 = sub_100007034(v51);
              *v70 = 136315394;
              *(v70 + 4) = v71;
              *(v70 + 12) = 2080;
              *(v70 + 14) = v81;
            }

            else
            {
LABEL_41:
              v56 = sub_100007294(v77);
              v57 = sub_100002A14(a1, a5, (a2 + 8), &v82, (v56 + 4));
              v58 = v57;
              if (v57 <= 0x32 && ((1 << v57) & 0x4000000000041) != 0)
              {
                goto LABEL_54;
              }

              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_54;
              }

              v59 = _os_log_pack_size();
              __chkstk_darwin(v59);
              v60 = *__error();
              v61 = _os_log_pack_fill();
              v62 = strerror(v58);
              *v61 = 136315394;
              *(v61 + 4) = v76;
              *(v61 + 12) = 2080;
              *(v61 + 14) = v62;
            }

            goto LABEL_53;
          }

          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_54;
          }
        }

        v65 = _os_log_pack_size();
        __chkstk_darwin(v65);
        v66 = *__error();
        v67 = _os_log_pack_fill();
        *v67 = 136315138;
        *(v67 + 4) = v81;
        goto LABEL_53;
      }

      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v40 = _os_log_pack_size();
        __chkstk_darwin(v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        *v42 = 136315138;
        *(v42 + 4) = v81;
        __SC_log_send();
      }
    }

    else
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v22 = _os_log_pack_size();
        __chkstk_darwin(v22);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        v25 = DHCPv6MessageTypeName(*a3);
        v26 = *a3;
        *v24 = 136315906;
        *(v24 + 4) = v25;
        *(v24 + 12) = 1024;
        *(v24 + 14) = v26;
        *(v24 + 18) = 1024;
        *(v24 + 20) = a5;
        *(v24 + 24) = 1024;
        *(v24 + 26) = a4;
        __SC_log_send();
      }
    }
  }

  else
  {
LABEL_14:
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 67109376;
      *(v21 + 4) = a5;
      *(v21 + 8) = 1024;
      *(v21 + 10) = a4;
      __SC_log_send();
    }
  }
}

uint64_t sub_100002A14(int *a1, unsigned int a2, _OWORD *a3, unsigned __int8 *a4, uint64_t a5)
{
  v34 = a3;
  v33 = a2;
  memset(v38, 0, sizeof(v38));
  if (byte_100010000 == 1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    DHCPv6PacketPrintToString(Mutable, a4, a5);
    v9 = sub_100007480(a4, a5, v38);
    *v35 = v9;
    if (v9)
    {
      sub_1000074E8(Mutable, v9);
      sub_100007498(v35);
    }

    else
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v19 = _os_log_pack_size();
        v32 = a1;
        __chkstk_darwin(v19);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        *v21 = 136315138;
        *(v21 + 4) = v38;
        __SC_log_send();
        a1 = v32;
      }
    }

    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      v32 = v30;
      __chkstk_darwin(v22);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      v25 = a1;
      v26 = if_indextoname(v33, v37);
      v27 = inet_ntop(30, v34, v36, 0x2Eu);
      *v24 = 136315906;
      *(v24 + 4) = v26;
      a1 = v25;
      *(v24 + 12) = 1024;
      *(v24 + 14) = a5;
      *(v24 + 18) = 2080;
      *(v24 + 20) = v27;
      *(v24 + 28) = 2112;
      *(v24 + 30) = Mutable;
      __SC_log_send();
    }

    CFRelease(Mutable);
  }

  else
  {
    _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v32 = a1;
      v31 = v30;
      __chkstk_darwin(v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = if_indextoname(v33, v37);
      v30[3] = v10;
      v15 = v14;
      v16 = DHCPv6MessageTypeName(*a4);
      v17 = *a4;
      v18 = inet_ntop(30, v34, v36, 0x2Eu);
      *v13 = 136316162;
      *(v13 + 4) = v15;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v16;
      *(v13 + 22) = 1024;
      *(v13 + 24) = v17;
      *(v13 + 28) = 1024;
      *(v13 + 30) = a5;
      *(v13 + 34) = 2080;
      *(v13 + 36) = v18;
      a1 = v32;
      __SC_log_send();
    }
  }

  v28 = *a1;
  *&v35[12] = *(&xmmword_100009070 + 12);
  *v35 = xmmword_100009070;
  *&v35[8] = *v34;
  *&v35[2] = 8706;
  return sub_1000064CC(v28, v33, v35, a4, a5, -1);
}

void sub_100002E5C(uint64_t a1, const void *a2)
{
  v23 = 0;
  v4 = *(a1 + 40);
  v22 = v4;
  if (byte_100010000 != 1 || sub_100003F28(v4, a2))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_28:
    LODWORD(v6) = 0;
    v5 = 0;
    v8 = 0;
    v15 = 1;
    goto LABEL_29;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  v16 = __SC_log_enabled();
  if (!a2)
  {
    if (v16)
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v19 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      v15 = 1;
      LODWORD(v6) = 0;
      v5 = 0;
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    _os_log_pack_size();
    __chkstk_darwin();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 138412290;
    *(v18 + 4) = a2;
    __SC_log_send();
  }

LABEL_4:
  v5 = sub_100003C64(a2, &v23);
  v6 = v23;
  if (!v5)
  {
    v15 = 0;
LABEL_21:
    v8 = 0;
    goto LABEL_29;
  }

  v7 = if_nameindex();
  v8 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (v7 && (if_name = v7->if_name) != 0)
      {
        v12 = v5[i];
        v13 = v7;
        while (strcmp(if_name, v12))
        {
          if_name = v13[1].if_name;
          ++v13;
          if (!if_name)
          {
            goto LABEL_12;
          }
        }

        if_index = v13->if_index;
      }

      else
      {
LABEL_12:
        if_index = 0;
      }

      v8[i] = if_index;
    }
  }

  if (v7)
  {
    if_freenameindex(v7);
  }

  LODWORD(v6) = v23;
  if (v8)
  {
    sub_10000317C(a1, v8, v5, v23, v9);
    v15 = 0;
    LODWORD(v6) = v23;
  }

  else
  {
    v15 = 0;
  }

LABEL_29:
  sub_100003310(a1, v8, v6);
  v20 = *(a1 + 56);
  if (v20)
  {
    free(v20);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    free(v21);
  }

  *(a1 + 72) = v23;
  *(a1 + 56) = v8;
  *(a1 + 64) = v5;
  if ((v15 & 1) == 0)
  {
    CFRetain(a2);
  }

  *(a1 + 40) = a2;
  sub_1000037A0(&v22);
}

uint64_t sub_10000317C(uint64_t result, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a4;
    a5.n128_u64[0] = 136315138;
    v17 = a5;
    do
    {
      v10 = *(a2 + 4 * v8);
      if (v10)
      {
        v11 = *(a3 + 8 * v8);
        v12 = *(v7 + 72);
        if (v12 < 1)
        {
LABEL_8:
          result = sub_1000034C0(*v7, 80, v10);
          if (!result)
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              _os_log_pack_size();
              v18 = &v17;
              __chkstk_darwin();
              v15 = *__error();
              v16 = _os_log_pack_fill();
              *v16 = v17.n128_u32[0];
              *(v16 + 4) = v11;
              result = __SC_log_send();
            }
          }
        }

        else
        {
          v13 = *(v7 + 56);
          while (1)
          {
            v14 = *v13++;
            if (v14 == v10)
            {
              break;
            }

            if (!--v12)
            {
              goto LABEL_8;
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t sub_100003310(uint64_t result, int *a2, unsigned int a3)
{
  if (*(result + 72) >= 1)
  {
    v3 = a3;
    v5 = result;
    v6 = 0;
    v7 = a3;
    do
    {
      v8 = *(*(v5 + 56) + 4 * v6);
      if (v8)
      {
        v9 = *(*(v5 + 64) + 8 * v6);
        if (a2 && v3 >= 1)
        {
          v10 = a2;
          v11 = v7;
          while (1)
          {
            v12 = *v10++;
            if (v12 == v8)
            {
              break;
            }

            if (!--v11)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          result = sub_1000034C0(*v5, 81, v8);
          if (!result)
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              _os_log_pack_size();
              __chkstk_darwin();
              v13 = *__error();
              v14 = _os_log_pack_fill();
              *v14 = 136315138;
              *(v14 + 4) = v9;
              result = __SC_log_send();
              v3 = a3;
            }
          }
        }
      }

      ++v6;
    }

    while (v6 < *(v5 + 72));
  }

  return result;
}

uint64_t sub_1000034C0(int a1, int a2, int a3)
{
  v12 = a3;
  v13[0] = xmmword_10000908C;
  memset(&v13[1] + 12, 0, 100);
  *(v13 + 12) = *(&xmmword_10000908C + 12);
  v5 = setsockopt(a1, 41, a2, &v12, 0x84u);
  if (v5)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v6 = *__error();
      v7 = _os_log_pack_fill();
      if (a2 == 80)
      {
        v8 = "MCAST_JOIN_GROUP";
      }

      else
      {
        v8 = "MCAST_LEAVE_GROUP";
      }

      v9 = __error();
      v10 = strerror(*v9);
      *v7 = 136315650;
      *(v7 + 4) = v8;
      *(v7 + 12) = 1024;
      *(v7 + 14) = a3;
      *(v7 + 18) = 2080;
      *(v7 + 20) = v10;
      __SC_log_send();
    }
  }

  return v5;
}

void sub_100003678(uint64_t a1, const __CFDictionary *a2)
{
  if (!a2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = sub_100007754(a2);
  if (!v3)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v4 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    goto LABEL_5;
  }

LABEL_6:
  sub_1000037A0((a1 + 32));
  *(a1 + 32) = v3;
}

void sub_1000037A0(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

CFPropertyListRef sub_1000037D8(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xE6DA7C8BuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreateWithBytesNoCopy(0, v4, st_size, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t sub_1000038D8(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  if (!propertyList)
  {
    return 0;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 0;
  }

  v6 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  __nbyte = CFDataGetLength(v6);
  snprintf(__str, 0x400uLL, "%s-", a2);
  v8 = 5;
  while (1)
  {
    if (unlink(__str))
    {
      v9 = __stderrp;
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "unlink(%s) failed, %s\n", __str, v11);
    }

    v12 = open(__str, 1793, a3);
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      fprintf(__stderrp, "open(%s) failed with ELOOP\n", __str);
      if (--v8)
      {
        continue;
      }
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v15 = v12;
  if (!__nbyte)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v16 = __nbyte;
  while (1)
  {
    v17 = write(v15, BytePtr, v16);
    if (v17 == -1)
    {
      break;
    }

LABEL_16:
    BytePtr += v17;
    v16 -= v17;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (*__error() == 4)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v18 = -1;
LABEL_20:
  if (v18 == __nbyte)
  {
LABEL_21:
    rename(__str, a2, v13);
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  close(v15);
LABEL_24:
  CFRelease(v6);
  return v14;
}

uint64_t sub_100003AC4(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_100003B4C(const __CFArray *a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  v9 = Count;
  v10 = 8 * Count;
  if (a2)
  {
    if (*a3 < v10)
    {
      return 0;
    }

    v12 = (a2 + v10);
  }

  else
  {
    v12 = 0;
  }

  if (Count >= 1)
  {
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
      TypeID = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID)
      {
        return 0;
      }

      if (a2)
      {
        v16 = *a3 - v10;
        if (v16 < 0)
        {
          return 0;
        }

        v17 = sub_100003AC4(ValueAtIndex, v12, v16, 0);
        *(a2 + 8 * v13) = v12;
        v12 += v17;
      }

      else
      {
        v17 = sub_100003AC4(ValueAtIndex, v12, 0, 0);
      }

      v10 += v17;
    }

    while (v9 != ++v13);
  }

  *a3 = (v10 + 7) & 0xFFFFFFF8;
  *a4 = v9;
  return 1;
}

void *sub_100003C64(const __CFArray *a1, _DWORD *a2)
{
  size = 0;
  *a2 = 0;
  if (!sub_100003B4C(a1, 0, &size, &size + 1))
  {
    return 0;
  }

  v4 = malloc_type_malloc(size, 0x10040436913F5uLL);
  if (!sub_100003B4C(a1, v4, &size, &size + 1))
  {
    free(v4);
    return 0;
  }

  *a2 = HIDWORD(size);
  return v4;
}

uint64_t sub_100003D04(const __CFString *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

void *sub_100003DBC(const __CFArray *a1, int *a2)
{
  Count = CFArrayGetCount(a1);
  v5 = Count;
  if (!Count)
  {
    return 0;
  }

  v6 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  v7 = v6;
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      if ((sub_100003D04(ValueAtIndex, v9) & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if ((v5 & 0x7FFFFFFF) == v8)
      {
        goto LABEL_6;
      }
    }

    free(v7);
    return 0;
  }

LABEL_6:
  *a2 = v5;
  return v7;
}

uint64_t sub_100003F28(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFGetTypeID(a2))
  {
    return 0;
  }

  return CFEqual(a1, a2);
}

void sub_100003FAC(CFMutableStringRef theString, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (a4 && v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          *v11 = a4;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

UInt8 *sub_100004070(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_100004128(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_100004070(a1, v4, a2);
}

void *sub_100004188(uint64_t a1, int a2, void *a3, _DWORD *a4, char a5, char a6)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = a1;
  v9 = *a4;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!a3)
  {
    *&v74 = 0;
    v73 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v9 = 128;
    v10 = &v65;
    v65 = 0uLL;
    v66 = 0uLL;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_87;
  }

  v73 = 0uLL;
  *&v74 = 0;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v10 = a3;
  LOBYTE(v73) = 1;
LABEL_7:
  *(&v73 + 1) = v10;
  DWORD1(v74) = v9;
  *(&v74 + 1) = 0;
  *&v75 = 0;
  BYTE8(v75) = a5;
  if (a2 >= 1)
  {
    v12 = 0;
    v57 = a2;
    while (1)
    {
      v13 = *(v8 + 8 * v12);
      v61 = v74;
      v14 = strlen(v13);
      v15 = malloc_type_malloc(v14 + 26, 0x10300409B68AA8EuLL);
      v16 = malloc_type_malloc(0x30uLL, 0x101004044458BAAuLL);
      if (v16)
      {
        *(v16 + 28) = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        *(v16 + 11) = 8;
        *(v16 + 4) = v16;
      }

      *v15 = v16;
      *(v15 + 1) = v15 + 24;
      if ((v14 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = v14 & 0x7FFFFFFF;
        v23 = (v14 + 1);
        while (1)
        {
          if (v17 == v22 || (v24 = v13[v17], v24 == 46))
          {
            if (!v21)
            {
              goto LABEL_22;
            }

            if (v21 > 63)
            {
              v53 = (v8 + 8 * v12);
              fprintf(__stderrp, "label length %d > %d\n", v21, 63);
              sub_100005164(v15);
              free(v15);
              if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
              {
                fprintf(__stderrp, "trying to set used to %d\n", v61);
              }

              else
              {
                LODWORD(v74) = v61;
              }

              goto LABEL_82;
            }

            sub_100004FD8(*v15, v19);
            *(*(v15 + 1) + v19) = v21;
            v20 += v21 + 1;
            v25 = v17 + 1;
            v19 = v17 + 1;
            v21 = 0;
          }

          else
          {
            *(*(v15 + 1) + v17 + 1) = v24;
            ++v21;
            v25 = v17 + 1;
          }

          v18 = v17 >= v22;
          v17 = v25;
          if (v25 == v23)
          {
            goto LABEL_22;
          }
        }
      }

      v20 = 0;
      v18 = 1;
LABEL_22:
      v59 = v12;
      if ((a6 & 1) != 0 && ((a6 & 2) == 0 || v18))
      {
        *(v15 + 4) = v20;
      }

      else
      {
        *(v15 + 4) = v20 + 1;
        *(*(v15 + 1) + v20) = 0;
      }

      if (BYTE8(v75) == 1)
      {
        break;
      }

      if ((sub_100005074(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_100005164(v15);
      free(v15);
      v8 = a1;
      v12 = v59 + 1;
      if (v59 + 1 == v57)
      {
        v11 = v74;
        v7 = a3;
        v6 = a4;
        goto LABEL_71;
      }
    }

    v63 = v75;
    if (v75 < 1)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v62 = *(&v74 + 1);
      v29 = *(&v73 + 1);
      do
      {
        v30 = *(v62 + 8 * v26);
        if (!v30)
        {
          break;
        }

        v31 = 0;
        v32 = *(v30 + 40);
        v33 = *v15;
        v34 = *(*v15 + 40);
        do
        {
          v35 = v31;
          if (v32 < 1)
          {
            break;
          }

          if (v34 < 1)
          {
            break;
          }

          v36 = (v29 + *(*(v30 + 32) + 4 * v32 - 4));
          v37 = *v36;
          v38 = (*(v15 + 1) + *(v33[4] + 4 * v34 - 4));
          if (v37 != *v38)
          {
            break;
          }

          v39 = memcmp(v36 + 1, v38 + 1, v37);
          v31 = v35 + 1;
          --v32;
          --v34;
        }

        while (!v39);
        v40 = v35 > v28;
        if (v35 > v28)
        {
          v28 = v35;
        }

        if (v40)
        {
          v27 = v30;
        }

        ++v26;
      }

      while (v26 != v63);
      if (v27)
      {
        v41 = 0;
        v42 = *(v27 + 40) - v28;
LABEL_47:
        v43 = *v15;
        v44 = *(*v15 + 40);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v44 - v28;
          do
          {
            if (v45 >= v46)
            {
              v49 = *(*(v27 + 32) + 4 * v42);
              if (v46 == v45)
              {
                __src = bswap32(v49 | 0xC000) >> 16;
                if (!sub_100005074(&v65, &__src, 2))
                {
                  goto LABEL_76;
                }
              }

              ++v42;
              v47 = *v15;
            }

            else
            {
              v47 = *v15;
              v48 = *(*(*v15 + 32) + 4 * v45);
              if ((v41 & 1) == 0)
              {
                if (!sub_100005074(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
                {
                  goto LABEL_76;
                }

                v47 = *v15;
              }

              v49 = v48 + v61;
            }

            if (v45 > *(v47 + 10))
            {
              fprintf(__stderrp, "attempt to set offset 0x%x at index %d\n", v49, v45);
            }

            *(v47[4] + 4 * v45++) = v49;
          }

          while (v44 != v45);
          v43 = *v15;
        }

        v50 = SDWORD1(v75);
        if (DWORD1(v75) == v75)
        {
          if (DWORD1(v75))
          {
            DWORD1(v75) *= 2;
            v51 = reallocf(*(&v74 + 1), 16 * v50);
          }

          else
          {
            DWORD1(v75) = 8;
            v51 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
          }

          *(&v74 + 1) = v51;
        }

        else
        {
          v51 = *(&v74 + 1);
        }

        v52 = v75;
        LODWORD(v75) = v75 + 1;
        v51[v52] = v43;
        *v15 = 0;
        goto LABEL_68;
      }
    }

    if ((sub_100005074(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
    {
LABEL_76:
      v53 = (a1 + 8 * v59);
      if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
      {
        fprintf(__stderrp, "trying to set used to %d\n", v61);
      }

      else
      {
        LODWORD(v74) = v61;
      }

      sub_100005164(v15);
      free(v15);
LABEL_82:
      v6 = a4;
      fprintf(__stderrp, "failed to add %s\n", *v53);
      if (a3)
      {
        v11 = v74;
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      goto LABEL_86;
    }

    v27 = 0;
    v42 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  v11 = 0;
LABEL_71:
  if (!v7)
  {
    v7 = malloc_type_malloc(v11, 0x7FF68011uLL);
    memcpy(v7, *(&v73 + 1), v11);
  }

LABEL_86:
  sub_100004F2C(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

CFDataRef sub_1000047EC(const __CFArray *a1, char a2)
{
  length = 0;
  v3 = sub_100003C64(a1, &length);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_100004188(v3, length, 0, &length + 1, a2, 0);
  free(v4);
  v6 = CFDataCreate(0, v5, SHIDWORD(length));
  free(v5);
  return v6;
}

const UInt8 *sub_10000487C(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_100004188(&length[1], 1, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

UInt8 *sub_1000048EC(const __CFString *a1)
{
  result = sub_100004128(a1, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = sub_10000487C(result);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_100004930(uint64_t a1, unsigned int a2, int *a3)
{
  __src[0] = 0;
  memset(v11, 0, sizeof(v11));
  __src[1] = v11;
  __n = 0x8000000000;
  v4 = sub_100004A70(a1, a2, v11, 0);
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(__n + 8 * v4, 0x10040436913F5uLL);
    v7 = &v6[8 * v5];
    memcpy(v7, __src[1], __n);
    if (v5 >= 1)
    {
      v8 = 0;
      do
      {
        *&v6[v8] = v7;
        v7 += strlen(v7) + 1;
        v8 += 8;
      }

      while (8 * v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  if ((__src[0] & 1) == 0 && __src[1] && __src[1] != v11)
  {
    free(__src[1]);
  }

  return v6;
}

uint64_t sub_100004A70(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v4 = 0;
  __src = 46;
  v31 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v30 = 0;
  v4 = 0;
  v9 = 0;
  v10 = 0;
  v34[1] = 0x800000000;
  memset(v33, 0, sizeof(v33));
  v34[0] = v33;
  v29 = 1;
  v11 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v9 >= a2)
        {
          goto LABEL_44;
        }

        v12 = (a1 + v9);
        v13 = *v12;
        if ((~v13 & 0xC0) != 0)
        {
          break;
        }

        if (a4)
        {
          v23 = __stderrp;
          v24 = "single name with pointers\n";
          v25 = 26;
          goto LABEL_54;
        }

        if (v9 >= v10)
        {
          if (v11 <= 1)
          {
            v23 = __stderrp;
            v24 = "truncated pointer value\n";
            v25 = 24;
            goto LABEL_54;
          }

          v10 = (v10 + 2);
          v11 -= 2;
        }

        v14 = bswap32(*v12 & 0xFF3F);
        if (v9 <= HIWORD(v14))
        {
          v23 = __stderrp;
          v24 = "pointer points at or ahead of current position\n";
          v25 = 47;
          goto LABEL_54;
        }

        v9 = HIWORD(v14);
        if (v30 <= v9)
        {
          v23 = __stderrp;
          v24 = "attempt to create infinite loop\n";
          v25 = 32;
          goto LABEL_54;
        }

        if (SLODWORD(v34[1]) >= 1)
        {
          if (*v34[0] == v9)
          {
            continue;
          }

          v15 = 1;
          do
          {
            v16 = v15;
            if (LODWORD(v34[1]) == v15)
            {
              break;
            }

            v17 = *(v34[0] + v15++);
          }

          while (v17 != v9);
          if (v16 < LODWORD(v34[1]))
          {
            continue;
          }
        }

        v23 = __stderrp;
        v24 = "attempt to point off into the weeds\n";
        v25 = 36;
LABEL_54:
        fwrite(v24, v25, 1uLL, v23);
        goto LABEL_55;
      }

      if (v9 >= v10)
      {
        break;
      }

      if (!*v12)
      {
        goto LABEL_35;
      }

LABEL_21:
      if (SLODWORD(v34[1]) < 1)
      {
        goto LABEL_27;
      }

      if (*v34[0] != v9)
      {
        v18 = 1;
        do
        {
          v19 = v18;
          if (LODWORD(v34[1]) == v18)
          {
            break;
          }

          v20 = *(v34[0] + v18++);
        }

        while (v20 != v9);
        if (v19 >= LODWORD(v34[1]))
        {
LABEL_27:
          sub_100004FD8(v33, v9);
        }
      }

      if ((v29 & 1) == 0)
      {
        sub_100005074(a3, &__src, 1);
      }

      sub_100005074(a3, v12 + 1, v13);
      v29 = 0;
      v9 = v9 + v13 + 1;
    }

    if (v13 >= 0x40)
    {
      v28 = *v12;
      fprintf(__stderrp, "label length %d > %d\n");
      goto LABEL_40;
    }

    v21 = v13 + 1;
    if (v11 <= v13)
    {
      break;
    }

    v10 = v21 + v10;
    v11 -= v21;
    if (*v12)
    {
      goto LABEL_21;
    }

LABEL_35:
    if ((a4 & 2) != 0)
    {
      sub_100005074(a3, &__src, 1);
    }

    v29 = 1;
    sub_100005074(a3, &v31, 1);
    v4 = (v4 + 1);
    if (a4)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v30 = v10;
    v9 = v10;
    if (v22)
    {
      goto LABEL_43;
    }
  }

  fprintf(__stderrp, "label truncated %d < %d\n");
LABEL_40:
  v22 = 4;
LABEL_43:
  if (v22 == 4)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (v4)
  {
    goto LABEL_60;
  }

  if (!*(a3 + 144))
  {
    v23 = __stderrp;
    v24 = "empty list\n";
    v25 = 11;
    goto LABEL_54;
  }

  if (a4)
  {
    v4 = 1;
    sub_100005074(a3, &v31, 1);
    goto LABEL_60;
  }

LABEL_55:
  if ((*(a3 + 128) & 1) == 0)
  {
    v26 = *(a3 + 136);
    if (v26)
    {
      if (v26 != a3)
      {
        free(v26);
      }
    }
  }

  v4 = 0;
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
LABEL_60:
  if (v34[0] && v34[0] != v33)
  {
    free(v34[0]);
  }

  return v4;
}

CFStringRef sub_100004E54(uint64_t a1, unsigned int a2, int a3)
{
  cStr[0] = 0;
  cStr[1] = v6;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  HIDWORD(v8) = 128;
  if (!sub_100004A70(a1, a2, v6, v3))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, cStr[1], 0x8000100u);
  if ((cStr[0] & 1) == 0 && cStr[1] && cStr[1] != v6)
  {
    free(cStr[1]);
  }

  return v4;
}

void sub_100004F2C(_OWORD *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = *(a1 + 17);
    if (v2 && v2 != a1)
    {
      free(v2);
    }
  }

  *(a1 + 18) = 0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 19;
  v4 = *(a1 + 19);
  if (v4)
  {
    if (*(a1 + 40) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_100005164((*(a1 + 19) + v6));
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a1 + 40));
      v4 = *v5;
    }

    free(v4);
  }

  *v5 = 0;
  *(a1 + 20) = 0;
}

int *sub_100004FD8(int *result, size_t size)
{
  v2 = size;
  v3 = result;
  v4 = result[11];
  if (v4 == result[10])
  {
    result[11] = 2 * v4;
    v5 = *(result + 4);
    v6 = 8 * v4;
    if (v5 == v3)
    {
      v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      *(v3 + 32) = v7;
      result = memmove(v7, v3, 4 * *(v3 + 40));
    }

    else
    {
      result = reallocf(v5, v6);
      *(v3 + 32) = result;
    }
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(v3 + 40) = v9 + 1;
  *(v8 + 4 * v9) = v2;
  return result;
}

uint64_t sub_100005074(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 148);
  v7 = v6 - *(a1 + 144);
  if (v7 < a3)
  {
    if (*(a1 + 128) == 1)
    {
      fprintf(__stderrp, "user-supplied buffer failed to add data with length %d (> %d)\n", a3, v7);
      return 0;
    }

    if (a3 <= 128)
    {
      v9 = 128;
    }

    else
    {
      v9 = a3;
    }

    v10 = v6 + v9;
    *(a1 + 148) = v10;
    v11 = *(a1 + 136);
    if (v11 == a1)
    {
      v12 = malloc_type_malloc(v10, 0xDF09CD32uLL);
      *(a1 + 136) = v12;
      memcpy(v12, a1, *(a1 + 144));
    }

    else
    {
      *(a1 + 136) = reallocf(v11, v10);
    }
  }

  memcpy((*(a1 + 136) + *(a1 + 144)), __src, a3);
  *(a1 + 144) += a3;
  return 1;
}

void sub_100005164(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v3 == v2;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        free(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void *sub_1000051B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100006224(a1);
  a1[2] = a2;
  a1[3] = a3;
  return result;
}

void sub_1000051EC(uint64_t *a1)
{
  v1 = a1;
  v3 = 0;
  while (sub_10000629C(a1, 0, &v3))
  {
    if (v3)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v2();
      }
    }

    a1 = v1;
  }

  sub_10000622C(v1);
}

__n128 sub_100005254(__n128 *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

uint64_t sub_10000529C(uint64_t *a1, char *__s2)
{
  v4 = -104;
  v5 = -1;
  while (1)
  {
    v6 = a1 ? *(a1 + 2) : 0;
    if (++v5 >= v6)
    {
      break;
    }

    v7 = v4 + 104;
    v8 = *a1;
    v9 = strcmp((*a1 + v4 + 104), __s2);
    v4 = v7;
    if (!v9)
    {
      return v8 + v7;
    }
  }

  return 0;
}

uint64_t sub_100005320(uint64_t a1)
{
  result = sub_10000529C(a1, "en0");
  if (!result)
  {
    if (a1 && (v3 = *(a1 + 8), v3 >= 1))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        if (v4 >= v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = *a1 + 104 * v4;
        }

        v9 = *(v8 + 18);
        if (v9 == 6 || v9 == 144)
        {
          if (v5)
          {
            if (strcmp(v8, v5) < 0)
            {
              v5 = v8;
            }
          }

          else
          {
            v5 = v8;
          }
        }

        else if (!v6)
        {
          if (*(v8 + 74))
          {
            v6 = v8;
          }

          else
          {
            v6 = 0;
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (v6)
    {
      v10 = v5 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void *sub_10000541C(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v3 = v2;
  if (v2 && !sub_10000547C(v2, a1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_10000547C(uint64_t a1, uint64_t *a2)
{
  v61 = a2;
  v62 = 0;
  memset(v64, 0, 44);
  *a1 = 0;
  v3 = getifaddrs(&v62);
  v4 = v62;
  if (v3 < 0)
  {
    goto LABEL_88;
  }

  if (!v62)
  {
LABEL_90:
    result = *a1;
    if (*a1)
    {
      free(result);
      result = 0;
      *a1 = 0;
    }

    return result;
  }

  v5 = 0;
  v6 = v62;
  while (v6->ifa_addr)
  {
    v6 = v6->ifa_next;
    --v5;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (!v5)
  {
LABEL_88:
    if (v4)
    {
      freeifaddrs(v4);
    }

    goto LABEL_90;
  }

LABEL_8:
  v7 = -v5;
  v8 = malloc_type_malloc(104 * -v5, 0x1080040821398E0uLL);
  *a1 = v8;
  if (!v8)
  {
    v4 = v62;
    goto LABEL_88;
  }

  v9 = socket(2, 2, 0);
  v4 = v62;
  if (v9 < 0)
  {
    goto LABEL_88;
  }

  v11 = v9;
  *(a1 + 8) = 0;
  *(a1 + 12) = v7;
  v12 = 104;
  if (!v4)
  {
    goto LABEL_84;
  }

  v58 = kSCNetworkInterfaceTypeIEEE80211;
  *&v10 = 136315906;
  v59 = v10;
  do
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_82;
    }

    ifa_name = v4->ifa_name;
    sa_family = ifa_addr->sa_family;
    if (sa_family == 2)
    {
      v22 = 104 * (*(a1 + 8) & ~(*(a1 + 8) >> 31));
      v23 = -104;
      do
      {
        v24 = v23 + 104;
        if (v22 == v23 + 104)
        {
          goto LABEL_31;
        }

        v25 = *a1;
        v26 = strcmp((*a1 + v23 + 104), ifa_name);
        v23 = v24;
      }

      while (v26);
      if (v25)
      {
        v27 = v25 + v24;
LABEL_33:
        v36 = *&ifa_addr->sa_data[2];
        ifa_netmask = v4->ifa_netmask;
        if (ifa_netmask)
        {
          v38 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v38 = 0;
        }

        if ((*(v27 + 16) & 2) != 0 && (ifa_dstaddr = v4->ifa_dstaddr) != 0)
        {
          v46 = *&ifa_dstaddr->sa_data[2];
        }

        else
        {
          v46 = 0;
        }

        v47 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v47)
        {
          *v47 = v36;
          v47[1] = v38;
          v47[2] = v38 & v36;
          v47[3] = v46;
        }

        sub_100005250(v27 + 24, v47);
        goto LABEL_82;
      }

LABEL_31:
      v35 = sub_100005E68(a1);
      if (v35)
      {
        v27 = v35;
        *(v35 + 16) = v4->ifa_flags;
        ifa_addr = v4->ifa_addr;
        goto LABEL_33;
      }

      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (sa_family != 18)
      {
        goto LABEL_82;
      }

      v16 = 104 * (*(a1 + 8) & ~(*(a1 + 8) >> 31));
      v17 = -104;
      do
      {
        v18 = v17 + 104;
        if (v16 == v17 + 104)
        {
          goto LABEL_25;
        }

        v19 = *a1;
        v20 = strcmp((*a1 + v17 + 104), ifa_name);
        v17 = v18;
      }

      while (v20);
      if (v19)
      {
        v21 = v19 + v18;
LABEL_27:
        v29 = ifa_addr->sa_data[4];
        if (v29 < 0x11)
        {
          *(v21 + 74) = v29;
        }

        else
        {
          sub_100006ED4();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v30 = _os_log_pack_size();
            v60 = &v57;
            __chkstk_darwin(v30);
            v31 = *__error();
            v32 = _os_log_pack_fill();
            v33 = ifa_addr->sa_data[2];
            v34 = ifa_addr->sa_data[4];
            *v32 = v59;
            *(v32 + 4) = ifa_name;
            *(v32 + 12) = 1024;
            *(v32 + 14) = v33;
            *(v32 + 18) = 1024;
            *(v32 + 20) = v34;
            *(v32 + 24) = 2048;
            *(v32 + 26) = 16;
            __SC_log_send();
          }

          *(v21 + 74) = 16;
          v29 = 16;
        }

        memmove((v21 + 56), &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], v29);
        v39 = ifa_addr->sa_data[2];
        *(v21 + 75) = v39;
        *(v21 + 72) = *ifa_addr->sa_data;
        ifa_data = v4->ifa_data;
        if (ifa_data)
        {
          v39 = *ifa_data;
        }

        *(v21 + 18) = v39;
        v41 = sub_100005CB0(v11, ifa_name);
        if ((v41 & 0x100000) != 0)
        {
          *(v21 + 19) |= 3u;
        }

        *(v21 + 20) = (v41 >> 14) & 1;
        if (sub_100005C1C(v11, ifa_name, v64))
        {
          if (SLODWORD(v64[2]) < 1)
          {
            v43 = 0;
            v42 = 0;
            v44 = 0;
          }

          else
          {
            v42 = (BYTE8(v64[1]) & 2) << 31;
            if (BYTE8(v64[1]))
            {
              v43 = (DWORD2(v64[1]) >> 2) & 1;
            }

            else
            {
              v43 = 0;
            }

            if ((BYTE8(v64[1]) & 1) == 0)
            {
              v42 = 0;
            }

            v44 = 1;
            if ((BYTE8(v64[1]) & 1) == 0)
            {
              v44 = 0;
            }
          }

          *(v21 + 80) = v44 | v42;
          *(v21 + 88) = v43;
          if ((v64[1] & 0xE0) == 0x80)
          {
            *(v21 + 19) |= 1u;
          }
        }

        v50 = sub_100005F00(v11, ifa_name);
        *(v21 + 96) = v50;
        if (*(v21 + 18) == 6)
        {
          v63 = 0;
          if (!v61 || (sub_1000060B8(v61, ifa_name, v50, &v63) & 1) == 0)
          {
            v51 = CFStringCreateWithCString(0, ifa_name, 0x8000100u);
            v52 = _SCNetworkInterfaceCreateWithBSDName();
            if (v52)
            {
              v53 = v52;
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v52);
              if (InterfaceType)
              {
                if (CFEqual(InterfaceType, v58))
                {
                  v55 = v63;
                  v63 |= 1u;
                  if (*ifa_name == 101 && *(ifa_name + 1) == 110)
                  {
                    v63 = v55 | 9;
                  }
                }
              }

              if (_SCNetworkInterfaceIsTetheredHotspot())
              {
                v63 |= 4u;
              }

              if (_SCNetworkInterfaceIsCarPlay())
              {
                v63 |= 0x10u;
              }

              CFRelease(v53);
            }

            CFRelease(v51);
          }

          if (v63)
          {
            *(v21 + 19) |= v63;
          }
        }

        goto LABEL_82;
      }

LABEL_25:
      v28 = sub_100005E68(a1);
      if (v28)
      {
        v21 = v28;
        *(v28 + 16) = v4->ifa_flags;
        goto LABEL_27;
      }

      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    v48 = _os_log_pack_size();
    __chkstk_darwin(v48);
    v49 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
LABEL_82:
    v4 = v4->ifa_next;
  }

  while (v4);
  v12 = 104 * *(a1 + 8) + 104;
LABEL_84:
  *a1 = reallocf(*a1, v12);
  if (v62)
  {
    freeifaddrs(v62);
  }

  close(v11);
  return 1;
}

void sub_100005B74(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 8) >= 1)
      {
        v3 = 0;
        v4 = 24;
        do
        {
          sub_1000051EC((*v2 + v4));
          ++v3;
          v4 += 104;
        }

        while (v3 < *(v2 + 8));
      }

      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_100005BF8(uint64_t a1)
{
  v1 = *(a1 + 75);
  if (v1 == 144)
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005C1C(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02C6938uLL, a3) != -1)
  {
    return 1;
  }

  if (*__error() != 102)
  {
    return 0;
  }

  *(a3 + 24) = 3;
  result = 1;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_100005CB0(int a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC020698EuLL, &v10) != -1)
  {
    return v11;
  }

  sub_100006ED4();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    v8 = __error();
    v9 = strerror(*v8);
    *v7 = 136315394;
    *(v7 + 4) = a2;
    *(v7 + 12) = 2080;
    *(v7 + 14) = v9;
    *__error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_100005E68(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= *(a1 + 3))
  {
    return 0;
  }

  v2 = *a1;
  *(a1 + 2) = v1 + 1;
  v3 = v2 + 104 * v1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  __strlcpy_chk();
  sub_1000051B4((v3 + 24), j__free, sub_100005254);
  return v3;
}

uint64_t sub_100005F00(int a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02069D9uLL, &v10) != -1)
  {
    return v11;
  }

  sub_100006ED4();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    v8 = __error();
    v9 = strerror(*v8);
    *v7 = 136315394;
    *(v7 + 4) = a2;
    *(v7 + 12) = 2080;
    *(v7 + 14) = v9;
    *__error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_1000060B8(uint64_t *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  result = sub_10000529C(a1, a2);
  if (result)
  {
    if (*(result + 96) == a3)
    {
      *a4 = *(result + 19);
      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8);
        v9 = *__error();
        v10 = _os_log_pack_fill();
        v11 = *a4;
        *v10 = 136315650;
        *(v10 + 4) = a2;
        *(v10 + 12) = 1024;
        *(v10 + 14) = v11;
        *(v10 + 18) = 2048;
        *(v10 + 20) = a3;
        __SC_log_send();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100006224(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_10000622C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_10000625C(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (*a1 && *(a1 + 12) > a2)
  {
    return *(*a1 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000629C(uint64_t *a1, unsigned int a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 3);
    if (v6 > a2)
    {
      if (a3)
      {
        *a3 = *(v3 + 8 * a2);
      }

      if ((v6 + ~a2) >= 1)
      {
        memmove((*a1 + 8 * a2), (*a1 + 8 * a2 + 8), 8 * (v6 + ~a2));
        v6 = *(a1 + 3);
      }

      *(a1 + 3) = v6 - 1;
      return 1;
    }
  }

  return result;
}

BOOL sub_100006324(uint64_t a1, uint64_t a2)
{
  result = sub_100006368(a1);
  if (result)
  {
    v5 = *a1;
    v6 = *(a1 + 12);
    *(a1 + 12) = v6 + 1;
    *(v5 + 8 * v6) = a2;
    return 1;
  }

  return result;
}

BOOL sub_100006368(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!v2)
  {
    if (!v3)
    {
      v3 = 16;
      *(a1 + 8) = 16;
    }

    *(a1 + 12) = 0;
    v4 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
    goto LABEL_7;
  }

  if (v3 == *(a1 + 12))
  {
    *(a1 + 8) = 2 * v3;
    v4 = malloc_type_realloc(v2, 16 * v3, 0x80040B8603338uLL);
LABEL_7:
    *a1 = v4;
    return v4 != 0;
  }

  return 1;
}

void sub_100006404(CFMutableStringRef theString, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          *v11 = a4;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

uint64_t sub_1000064CC(int a1, int a2, void *a3, uint64_t a4, int a5, int a6)
{
  v6 = a5;
  v11[0] = a4;
  v11[1] = a5;
  v10.msg_name = a3;
  *(&v10.msg_namelen + 1) = 0;
  v10.msg_namelen = 28;
  v10.msg_iov = v11;
  *(&v10.msg_iovlen + 1) = 0;
  v10.msg_iovlen = 1;
  v10.msg_control = &v12;
  if (a6 >= 0)
  {
    v7 = 48;
  }

  else
  {
    v7 = 32;
  }

  v10.msg_controllen = v7;
  v10.msg_flags = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 46;
  v12 = 0x2900000020;
  v16 = 0;
  LODWORD(v15) = a2;
  if ((a6 & 0x80000000) == 0)
  {
    *(&v15 + 4) = 0x2900000010;
    HIDWORD(v15) = 47;
    v16 = a6;
  }

  v8 = sendmsg(a1, &v10, 0);
  result = 0;
  if (v8 != v6)
  {
    return *__error();
  }

  return result;
}

__CFDictionary *sub_1000065C0(uint64_t a1, int a2)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFNumberCreate(0, kCFNumberShortType, (a1 + 4));
  v21 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServicePriority, v5);
  v6 = CFRetain(*(a1 + 8));
  v20 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAuthenticationDomainName, v6);
  v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v19 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *(a1 + 24);
  if (a2)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = sub_100003EBC((*(a1 + 16) + v10));
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(v8, v11);
          CFRelease(v12);
        }

        v10 += 16;
      }

      while (v10 < 16 * *(a1 + 24));
    }
  }

  else if (v9 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_100003E74(*(*(a1 + 16) + v13));
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(v8, v14);
        CFRelease(v15);
      }

      v13 += 4;
    }

    while (v13 < 4 * *(a1 + 24));
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAddresses, v8);
  v16 = CFDataCreate(0, *(a1 + 32), *(a1 + 40));
  v18 = v16;
  if (v16)
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServiceParameters, v16);
  }

  else
  {
LABEL_18:
    sub_1000037A0(Mutable);
  }

  sub_1000037A0(&v21);
  sub_1000037A0(&v20);
  sub_1000037A0(&v19);
  sub_1000037A0(&v18);
  return Mutable;
}

void sub_1000067A4(uint64_t a1)
{
  if (a1)
  {
    sub_1000037A0((a1 + 8));
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

__CFDictionary *sub_100006804(unsigned __int16 *a1, int a2)
{
  v31 = 0;
  v32 = 0;
  if (a2 < 23)
  {
    goto LABEL_13;
  }

  v2 = bswap32(a1[1]) >> 16;
  v3 = a2 - 4;
  if ((v2 - 256) < 0xFF01u || v3 < v2)
  {
    goto LABEL_13;
  }

  v5 = *a1;
  v6 = a1 + 2;
  v32 = sub_100004E54((a1 + 2), v2, 0);
  if (!v32)
  {
    goto LABEL_13;
  }

  v7 = v3 - v2 - 2;
  if ((v3 - v2) < 2)
  {
    goto LABEL_13;
  }

  v8 = (v6 + v2);
  v11 = *v8;
  v9 = (v8 + 1);
  v10 = v11;
  v12 = v11 >> 8;
  if (v7 < v12 || (v12 & 0xF) != 0)
  {
LABEL_13:
    sub_1000037A0(&v32);
LABEL_14:
    sub_1000037A0(&v31);
    return v31;
  }

  v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
  v16 = v15;
  if (v10 < 0x100)
  {
    goto LABEL_32;
  }

  v17 = 0;
  v18 = bswap32(v5) >> 16;
  v19 = v12 >> 4;
  if ((v12 >> 4) <= 1)
  {
    LODWORD(v19) = 1;
  }

  do
  {
    v20 = *v9++;
    v21 = v20;
    v22 = ~v20;
    v23 = v20 | DWORD1(v20) | DWORD2(v20);
    v24 = HIDWORD(v20);
    v25 = (v23 | HIDWORD(v20)) == 0;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 == 0x1000000;
    }

    v27 = v26;
    if (v22 && !v25 && (v27 & 1) == 0)
    {
      *(v15 + v17++) = v21;
    }

    LOWORD(v7) = v7 - 16;
    LODWORD(v19) = v19 - 1;
  }

  while (v19);
  if (!v17)
  {
LABEL_32:
    sub_1000037A0(&v32);
    if (v16)
    {
      free(v16);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v28 = malloc_type_malloc(v7, 0x100004077774924uLL);
    memcpy(v28, v9, v7);
  }

  else
  {
    v28 = 0;
  }

  v29 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v29 + 6) = 0u;
  *(v29 + 22) = 0u;
  v29[2] = 0u;
  *v29 = 1;
  *(v29 + 2) = v18;
  *(v29 + 1) = v32;
  *(v29 + 2) = v16;
  *(v29 + 6) = v17;
  *(v29 + 4) = v28;
  *(v29 + 20) = v7;
  v30 = sub_1000065C0(v29, 1);
  sub_1000067A4(v29);
  return v30;
}

void sub_100006A24(CFMutableStringRef theString, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 < 2)
  {
    v6 = 2;
LABEL_3:
    CFStringAppendFormat(theString, 0, @"DUID too short (%d < %d), Data = { ", a3, v6);
    sub_100003FAC(theString, a2, v3, 32);

    CFStringAppendCString(theString, " }", 0x600u);
    return;
  }

  v7 = bswap32(*a2) >> 16;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (a3 >= 0x12)
        {
          memset(out, 0, 37);
          uuid_unparse(a2 + 2, out);
          CFStringAppendFormat(theString, 0, @"DUID UUID %s", out);
          return;
        }

        v6 = 18;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v8 = a3 - 4;
    if (a3 < 4)
    {
      v6 = 4;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LL HW %d Addr ", bswap32(a2[1]) >> 16);
    v10 = (a2 + 2);
LABEL_24:
    v9 = theString;
    v11 = v8;
    v12 = 58;
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v8 = a3 - 8;
    if (a3 < 8)
    {
      v6 = 8;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LLT HW %d Time %u Addr ", bswap32(a2[1]) >> 16, bswap32(*(a2 + 1)));
    v10 = (a2 + 4);
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = a3 - 6;
    if (a3 < 6)
    {
      v6 = 6;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID EN Num %d Id ", __rev16(a2[2]));
    v10 = (a2 + 3);
    goto LABEL_24;
  }

LABEL_15:
  CFStringAppendFormat(theString, 0, @"DUID (unrecognized type=%d): ", v7);
  v9 = theString;
  v10 = a2;
  v11 = v3;
  v12 = 32;
LABEL_25:

  sub_100003FAC(v9, v10, v11, v12);
}

BOOL sub_100006CF4(unsigned __int16 *a1, int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = (bswap32(*a1) >> 16) - 1;
  return v2 <= 3u && dword_1000090C0[v2] <= a2;
}

__CFData *sub_100006D3C(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 8;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 256;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 8, a1, v5);
  memset(&v11, 0, sizeof(v11));
  v11.tm_year = 100;
  v11.tm_mday = 1;
  v9 = timegm(&v11);
  *(MutableBytePtr + 1) = bswap32(time(0) - v9);
  return Mutable;
}

const char *DHCPv6MessageTypeName(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "<unknown";
  }

  else
  {
    return off_10000C468[a1];
  }
}

void DHCPv6PacketPrintToString(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    v6 = *a2;
    v7 = DHCPv6MessageTypeName(*a2);
    CFStringAppendFormat(theString, 0, @"DHCPv6 %s (%d) Transaction ID 0x%06x Length %d\n", v7, v6, bswap32((a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24)), a3);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet too short %d < %d\n", a3, 4);
  }
}

uint64_t sub_100006EE0(int a1)
{
  result = 1;
  switch(a1)
  {
    case 1:
    case 2:
      result = 2;
      break;
    case 3:
      result = 7;
      break;
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
      return result;
    case 5:
      result = 8;
      break;
    case 6:
    case 8:
      result = 3;
      break;
    case 12:
    case 22:
    case 23:
      result = 5;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 0;
      break;
    case 21:
    case 24:
      result = 6;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 39:
      result = 14;
      break;
    case 41:
    case 42:
      goto LABEL_7;
    default:
      if (a1 == 103)
      {
LABEL_7:
        result = 10;
      }

      else if (a1 == 144)
      {
        result = 13;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

const char *sub_100007034(int a1)
{
  v1 = a1 - 1;
  result = "CLIENTID";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "SERVERID";
      break;
    case 2:
      result = "IA_NA";
      break;
    case 3:
      result = "IA_TA";
      break;
    case 4:
      result = "IAADDR";
      break;
    case 5:
      result = "ORO";
      break;
    case 6:
      result = "PREFERENCE";
      break;
    case 7:
      result = "ELAPSED_TIME";
      break;
    case 8:
      result = "RELAY_MSG";
      break;
    case 9:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
      goto LABEL_6;
    case 10:
      result = "AUTH";
      break;
    case 11:
      result = "UNICAST";
      break;
    case 12:
      result = "STATUS_CODE";
      break;
    case 13:
      result = "RAPID_COMMIT";
      break;
    case 14:
      result = "USER_CLASS";
      break;
    case 15:
      result = "VENDOR_CLASS";
      break;
    case 16:
      result = "VENDOR_OPTS";
      break;
    case 17:
      result = "INTERFACE_ID";
      break;
    case 18:
      result = "RECONF_MSG";
      break;
    case 19:
      result = "RECONF_ACCEPT";
      break;
    case 20:
      result = "SIP_SERVER_D";
      break;
    case 21:
      result = "SIP_SERVER_A";
      break;
    case 22:
      result = "DNS_SERVERS";
      break;
    case 23:
      result = "DOMAIN_LIST";
      break;
    case 24:
      result = "IA_PD";
      break;
    case 25:
      result = "IAPREFIX";
      break;
    case 38:
      result = "CLIENT_FQDN";
      break;
    case 40:
      result = "POSIX_TIMEZONE";
      break;
    case 41:
      result = "TZDB_TIMEZONE";
      break;
    default:
      if ("CLIENTID" == 103)
      {
        result = "CAPTIVE_PORTAL_URL";
      }

      else if ("CLIENTID" == 144)
      {
        result = "DNS_ENCRYPTED_SERVERS";
      }

      else
      {
LABEL_6:
        result = "<unknown>";
      }

      break;
  }

  return result;
}

uint64_t sub_100007288(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = 0;
  return result;
}

BOOL sub_10000729C(uint64_t a1, unsigned int a2, size_t __len, void *__src, char *a5)
{
  v6 = *(a1 + 8) - *(a1 + 12);
  v7 = __len + 4;
  *a5 = 0;
  if (v6 < __len + 4)
  {
    v11 = sub_100007034(a2);
    snprintf(a5, 0x100uLL, "No room for option %s (%d), %d < %d", v11, a2, v6, v7);
  }

  else
  {
    v9 = (*a1 + *(a1 + 12));
    *v9 = __rev16(a2);
    v9[1] = __rev16(__len);
    if (__len)
    {
      memmove(v9 + 2, __src, __len);
    }

    *(a1 + 12) += v7;
  }

  return v6 >= v7;
}

_OWORD *sub_100007360(unsigned __int16 *a1, unsigned int a2, char *a3)
{
  v10 = 0uLL;
  sub_100006224(&v10);
  if (a2 >= 4)
  {
    v7 = a1;
    while (1)
    {
      v8 = (bswap32(v7[1]) >> 16) + 4;
      v6 = a2 - v8;
      if (a2 < v8)
      {
        break;
      }

      sub_100006324(&v10, v7);
      v7 = (v7 + v8);
      a2 -= v8;
      if (v6 < 4)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      sub_100007034(bswap32(*v7) >> 16);
      snprintf(a3, 0x100uLL, "truncated option %s (%d) at offset %d, left %d < need %d");
    }
  }

  else
  {
    v6 = a2;
LABEL_6:
    if (!v6)
    {
      result = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
      *result = v10;
      return result;
    }

    if (a3)
    {
      snprintf(a3, 0x100uLL, "truncated buffer at offset %d\n");
    }
  }

  sub_10000622C(&v10);
  return 0;
}

_OWORD *sub_100007480(uint64_t a1, int a2, char *a3)
{
  v3 = __OFSUB__(a2, 4);
  v4 = a2 - 4;
  if (v4 < 0 != v3)
  {
    return 0;
  }

  else
  {
    return sub_100007360((a1 + 4), v4, a3);
  }
}

void sub_100007498(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_10000622C(v1);

    free(v1);
  }
}

void sub_1000074F0(__CFString *a1, uint64_t a2, int a3)
{
  v6 = sub_10000625C(a2);
  v7 = v6;
  CFStringAppendFormat(a1, 0, @"Options[%d] = {\n", v6);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_100006278(a2, i);
      v10 = *v9;
      v11 = v9[1];
      if (a3 >= 1)
      {
        v12 = a3;
        do
        {
          CFStringAppendFormat(a1, 0, @"  ");
          --v12;
        }

        while (v12);
      }

      CFStringAppendFormat(a1, 0, @"  ");
      sub_100007E68(a1, bswap32(v10) >> 16, bswap32(v11) >> 16, v9 + 2, a3);
    }
  }

  if (a3 >= 1)
  {
    do
    {
      CFStringAppendFormat(a1, 0, @"  ");
      --a3;
    }

    while (a3);
  }

  CFStringAppendFormat(a1, 0, @"}\n");
}

unsigned __int16 *sub_100007640(uint64_t a1, int a2, unsigned int *a3, int *a4)
{
  v8 = sub_10000625C(a1);
  v9 = v8;
  if (a4)
  {
    v10 = *a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= v8)
  {
    return 0;
  }

  while (1)
  {
    v11 = sub_100006278(a1, v10);
    if (a2 == bswap32(*v11) >> 16)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = v10 + 1;
  }

  *a3 = bswap32(v11[1]) >> 16;
  return v11 + 2;
}

const void *sub_1000076EC(const __CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(a1, v3);
  CFRelease(v4);
  return Value;
}

CFMutableDictionaryRef sub_100007754(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  Mutable = CFDictionaryCreateMutable(0, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = Mutable;
  v5 = malloc_type_malloc(16 * v3, 0xC0040B8AA526DuLL);
  v6 = &v5[v3];
  CFDictionaryGetKeysAndValues(a1, v5, v6);
  if (v3 >= 1)
  {
    v7 = 0;
    v21 = Mutable;
    do
    {
      v8 = v5[v7];
      v9 = v6[v7];
      if (CFStringHasPrefix(v8, @"dhcp_"))
      {
        v24.length = CFStringGetLength(v8) - 5;
        v24.location = 5;
        v10 = sub_100004070(v8, v24, 0x8000100u);
        if (v10)
        {
          v11 = v10;
          v12 = 7;
          v13 = &off_10000C4E0;
          while (strcasecmp(v11, *v13))
          {
            v13 += 2;
            if (!--v12)
            {
              goto LABEL_11;
            }
          }

          v14 = *(v13 - 4);
          if (!v14)
          {
LABEL_11:
            if ((*v11 - 48) > 9 || (LOWORD(v14) = strtoul(v11, 0, 0), !v14))
            {
              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_19;
              }

LABEL_18:
              _os_log_pack_size();
              __chkstk_darwin();
              v18 = *__error();
              v19 = _os_log_pack_fill();
              *v19 = 138412290;
              *(v19 + 4) = v8;
              __SC_log_send();
              Mutable = v21;
              goto LABEL_19;
            }
          }

          v15 = sub_100007AD8(v14, v9);
          if (v15)
          {
            v16 = v15;
            valuePtr = v14;
            v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
            CFDictionarySetValue(Mutable, v17, v16);
            CFRelease(v17);
            CFRelease(v16);
            goto LABEL_19;
          }

          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            goto LABEL_18;
          }

LABEL_19:
          free(v11);
          v6 = &v5[v3];
        }
      }

      ++v7;
    }

    while (v7 != v3);
  }

  free(v5);
  if (!CFDictionaryGetCount(Mutable))
  {
    sub_1000037A0(&v22);
    return v22;
  }

  return Mutable;
}

CFDataRef sub_100007AD8(int a1, const __CFString *a2)
{
  v3 = sub_100006EE0(a1);
  TypeID = CFDataGetTypeID();
  if (!a2)
  {
    CFStringGetTypeID();
    CFArrayGetTypeID();
    return a2;
  }

  if (CFGetTypeID(a2) == TypeID)
  {

    return CFRetain(a2);
  }

  v6 = CFStringGetTypeID();
  if (CFGetTypeID(a2) == v6)
  {
    if (v3 == 6)
    {

      return sub_1000048EC(a2);
    }

    else
    {
      if (v3 == 5)
      {
        *bytes = 0;
        v13 = 0;
        if (sub_100003D04(a2, bytes))
        {
          return CFDataCreate(0, bytes, 16);
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_29;
        }

        return 0;
      }

      return sub_100004170(a2);
    }
  }

  else
  {
    v7 = CFArrayGetTypeID();
    if (CFGetTypeID(a2) != v7)
    {
      return 0;
    }

    if (v3 != 6)
    {
      if (v3 == 5)
      {
        *bytes = 0;
        v8 = sub_100003DBC(a2, bytes);
        if (v8)
        {
          v9 = v8;
          a2 = CFDataCreate(0, v8, 16 * *bytes);
          free(v9);
          return a2;
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_29:
          _os_log_pack_size();
          __chkstk_darwin();
          v10 = *__error();
          v11 = _os_log_pack_fill();
          *v11 = 138412290;
          *(v11 + 4) = a2;
          __SC_log_send();
        }
      }

      return 0;
    }

    return sub_1000047EC(a2, 0);
  }
}

void sub_100007E68(__CFString *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v10 = sub_100007034(a2);
  CFStringAppendFormat(a1, 0, @"%s (%d) Length %d: ", v10, a2, a3);
  switch(sub_100006EE0(a2))
  {
    case 0u:
      return;
    case 2u:
      sub_100006A24(a1, a4, a3);
      goto LABEL_79;
    case 3u:
      if (a3 >= 2)
      {
        v23 = 0;
        v24 = a3 & 0xFFFE;
        do
        {
          v25 = bswap32(a4[v23]);
          v26 = HIWORD(v25);
          if ((v23 * 2))
          {
            v27 = ", ";
          }

          else
          {
            v27 = &unk_1000091B1;
          }

          if (a2 == 6)
          {
            v37 = sub_100007034(HIWORD(v25));
            CFStringAppendFormat(a1, 0, @"%s%s (%d)", v27, v37, v26);
          }

          else
          {
            CFStringAppendFormat(a1, 0, @"%s%d", v27, HIWORD(v25), v39);
          }

          ++v23;
        }

        while (v24 != (v23 * 2));
      }

      goto LABEL_79;
    case 4u:
      if (a3 >= 4)
      {
        v21 = 0;
        do
        {
          if ((v21 * 2))
          {
            v22 = ", ";
          }

          else
          {
            v22 = &unk_1000091B1;
          }

          CFStringAppendFormat(a1, 0, @"%s%d", v22, bswap32(*&a4[v21]));
          v21 += 2;
        }

        while ((a3 & 0xFFFC) != (v21 * 2));
      }

      goto LABEL_79;
    case 5u:
      if (a3 >= 0x10)
      {
        v14 = 0;
        do
        {
          if (v14)
          {
            v15 = ", ";
          }

          else
          {
            v15 = &unk_1000091B1;
          }

          v16 = inet_ntop(30, a4, v41, 0x2Eu);
          CFStringAppendFormat(a1, 0, @"%s%s", v15, v16);
          ++v14;
          a4 += 8;
        }

        while (a3 >> 4 != v14);
      }

      goto LABEL_71;
    case 6u:
      *v41 = 0;
      v17 = sub_100004930(a4, a3, v41);
      if (v17)
      {
        v18 = v17;
        if (*v41 >= 1)
        {
          v19 = 0;
          do
          {
            if (v19)
            {
              v20 = ", ";
            }

            else
            {
              v20 = &unk_1000091B1;
            }

            CFStringAppendFormat(a1, 0, @"%s%s", v20, *&v18[8 * v19++]);
          }

          while (v19 < *v41);
        }

        free(v18);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" Invalid");
LABEL_69:
        if (a3)
        {
          CFStringAppendFormat(a1, 0, @" Data ");
          sub_1000064C4(a1, a4, a3);
        }
      }

LABEL_71:
      CFStringAppendFormat(a1, 0, @"\n", v35, v36, v39);
      return;
    case 7u:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_NA option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_NA IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
      goto LABEL_62;
    case 8u:

      sub_100008614(a1, a4, a3, a5);
      return;
    case 9u:
      if (a3 > 1)
      {
        v31 = bswap32(*a4);
        v32 = HIWORD(v31);
        v33 = (a3 - 2);
        v34 = sub_1000087F4(HIWORD(v31));
        if (v33)
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d) '%.*s'\n", v34, v32, v33, a4 + 1);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d)\n", v34, v32, v39);
        }
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" STATUS_CODE option is too short %d < %d\n", a3, 2, v39);
      }

      return;
    case 0xAu:
      *v41 = CFStringCreateWithBytes(kCFAllocatorDefault, a4, a3, 0x8000100u, 0);
      CFStringAppendFormat(a1, 0, @" %@\n", *v41);
      goto LABEL_57;
    case 0xBu:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_PD option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_PD IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
LABEL_62:
      if (!v28)
      {
        goto LABEL_79;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      v29 = sub_100007360(a4 + 6, v28, v41);
      if (v29)
      {
        v30 = v29;
        CFStringAppendFormat(a1, 0, @" ");
        sub_1000074F0(a1, v30, (a5 + 1));
        sub_10000622C(v30);
        free(v30);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v41, v38, v40);
      }

      return;
    case 0xCu:

      sub_100008700(a1, a4, a3, a5);
      return;
    case 0xDu:
      *v41 = sub_100006804(a4, a3);
      CFStringAppendFormat(a1, 0, @"%@\n", *v41);
LABEL_57:
      sub_1000037A0(v41);
      return;
    case 0xEu:
      if (!a3)
      {
        CFStringAppendFormat(a1, 0, @" CLIENT_FQDN option is too short %d < %d\n", a3, 1, v39);
        return;
      }

      v11 = *a4;
      CFStringAppendFormat(a1, 0, @" CLIENT_FQDN flags 0x%x", v11);
      if (!v11)
      {
        goto LABEL_10;
      }

      CFStringAppendFormat(a1, 0, @" [");
      if ((v11 & 4) != 0)
      {
        CFStringAppendFormat(a1, 0, @" N");
        if ((v11 & 2) == 0)
        {
LABEL_7:
          if ((v11 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }
      }

      else if ((v11 & 2) == 0)
      {
        goto LABEL_7;
      }

      CFStringAppendFormat(a1, 0, @" O");
      if (v11)
      {
LABEL_8:
        CFStringAppendFormat(a1, 0, @" S");
      }

LABEL_9:
      CFStringAppendFormat(a1, 0, @" ]");
LABEL_10:
      v12 = a3 - 1;
      printf("LENGTH %d\n", v12);
      if (v12)
      {
        v13 = sub_100004E54(a4 + 1, v12, 1);
        SCPrint();
        if (v13)
        {
          CFStringAppendFormat(a1, 0, @" domain-name %@", v13);
          CFRelease(v13);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" domain-name bad, raw bytes <", 0);
          sub_1000064C4(a1, a4 + 1, v12);
          CFStringAppendFormat(a1, 0, @">");
        }
      }

LABEL_79:

      CFStringAppendFormat(a1, 0, @"\n");
      return;
    default:
      goto LABEL_69;
  }
}

void sub_100008614(CFMutableStringRef theString, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 > 23)
  {
    v7 = a3 - 24;
    v8 = inet_ntop(30, a2, v11, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAADDR %s Preferred %d Valid=%d", v8, bswap32(*(a2 + 16)), bswap32(*(a2 + 20)));
    if (v7)
    {
      sub_100008818(theString, (a2 + 24), v7, a4);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAADDR option is too short %d < %d\n", a3, 24);
  }
}

void sub_100008700(CFMutableStringRef theString, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 > 24)
  {
    v7 = a3 - 25;
    v8 = inet_ntop(30, (a2 + 9), v11, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAPREFIX %s/%d Preferred %d Valid=%d", v8, *(a2 + 8), bswap32(*a2), bswap32(*(a2 + 4)));
    if (v7)
    {
      sub_100008818(theString, (a2 + 25), v7, a4);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAPREFIX option is too short %d < %d\n", a3, 25);
  }
}

const char *sub_1000087F4(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_10000C548)[a1];
  }
}

void sub_100008818(__CFString *a1, unsigned __int16 *a2, unsigned int a3, int a4)
{
  memset(v8, 0, sizeof(v8));
  v6 = sub_100007360(a2, a3, v8);
  if (v6)
  {
    v7 = v6;
    CFStringAppendFormat(a1, 0, @" ");
    sub_1000074F0(a1, v7, (a4 + 1));
    sub_10000622C(v7);
    free(v7);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v8);
  }
}