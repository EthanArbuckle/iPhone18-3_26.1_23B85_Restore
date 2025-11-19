uint64_t sub_100059E44()
{
  if (qword_100081C48)
  {
    return qword_100081C48;
  }

  v0 = SCNetworkInterfaceCopyAll();
  if (!v0)
  {
LABEL_10:
    qword_100081C48 = 0;
    return qword_100081C48;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
LABEL_9:
    CFRelease(v1);
    goto LABEL_10;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
    if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
    {
      if (BSDName && CFStringHasPrefix(BSDName, @"en"))
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  v9 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
  CFRetain(v9);
  CFRelease(v1);
  qword_100081C48 = v9;
  if (v9)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = qword_100081C48;
      *v14 = 138412290;
      *(v14 + 4) = v15;
      __SC_log_send();
    }
  }

  return qword_100081C48;
}

uint64_t sub_10005A03C(const __CFString *a1, int a2)
{
  result = sub_10005A2BC("set_expensive");
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
    {
      result = sub_10005A438(v5, buffer, a2);
      if ((result & 0x80000000) == 0)
      {
        if (!qword_100081C38)
        {
          qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v6 = _os_log_pack_size();
          __chkstk_darwin(v6, v7, v8);
          v9 = *__error();
          v10 = _os_log_pack_fill();
          v11 = "enable";
          if (!a2)
          {
            v11 = "disable";
          }

          *v10 = 136315394;
          *(v10 + 4) = v11;
          *(v10 + 12) = 2080;
          *(v10 + 14) = buffer;
          return __SC_log_send();
        }
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 136315394;
        *(v16 + 4) = "set_expensive";
        *(v16 + 12) = 2112;
        *(v16 + 14) = a1;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005A2BC(uint64_t a1)
{
  if (dword_1000816A0 < 0)
  {
    dword_1000816A0 = socket(2, 2, 0);
    if (dword_1000816A0 < 0)
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4);
        v5 = *__error();
        v6 = _os_log_pack_fill();
        v7 = __error();
        v8 = strerror(*v7);
        *v6 = 136315394;
        *(v6 + 4) = a1;
        *(v6 + 12) = 2080;
        *(v6 + 14) = v8;
        __SC_log_send();
      }
    }
  }

  return dword_1000816A0;
}

uint64_t sub_10005A438(int a1, uint64_t a2, int a3)
{
  v16 = 0u;
  v17 = 0u;
  __strlcpy_chk();
  LODWORD(v17) = a3 != 0;
  v6 = ioctl(a1, 0xC02069A1uLL, &v16);
  if ((v6 & 0x80000000) != 0)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = v17;
      v13 = __error();
      v14 = strerror(*v13);
      *v11 = 136315650;
      *(v11 + 4) = a2;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v12;
      *(v11 + 18) = 2080;
      *(v11 + 20) = v14;
      __SC_log_send();
    }
  }

  return v6;
}

void sub_10005A5F0(id a1)
{
  sub_1000597CC(0);
  sub_100059A40();
  if ((dword_1000816A0 & 0x80000000) == 0)
  {
    close(dword_1000816A0);
    dword_1000816A0 = -1;
  }
}

uint64_t sub_10005A664(const __SCNetworkInterface *a1)
{
  result = SCNetworkInterfaceGetBSDName(a1);
  if (result)
  {
    v2 = result;
    result = __SCNetworkInterfaceCreateCapabilities();
    if (result != -1)
    {
      v3 = result;
      valuePtr = result;
      Value = CFDictionaryGetValue(qword_100081C18, v2);
      if (Value)
      {
        v5 = CFDictionaryGetValue(Value, @"_CAPABILITIES_");
        if (v5)
        {
          CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        }
      }

      result = __SCNetworkInterfaceCreateCapabilities();
      if (result != v3)
      {
        v6 = result;
        v15 = 0u;
        v16 = 0u;
        _SC_cfstring_to_cstring();
        *&v16 = __PAIR64__(v3, v6);
        result = sub_10005A2BC("_SCNetworkInterfaceSetCapabilities");
        if (result != -1)
        {
          result = ioctl(result, 0x8020695AuLL, &v15);
          if (result == -1)
          {
            if (!qword_100081C38)
            {
              qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
            }

            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              v7 = _os_log_pack_size();
              __chkstk_darwin(v7, v8, v9);
              v10 = *__error();
              v11 = _os_log_pack_fill();
              v12 = __error();
              v13 = strerror(*v12);
              *v11 = 138412546;
              *(v11 + 4) = v2;
              *(v11 + 12) = 2080;
              *(v11 + 14) = v13;
              return __SC_log_send();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_10005A888(const void *a1, const void *a2)
{
  current = 0;
  available = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {

    goto LABEL_29;
  }

  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v53 = 0u;
  v54 = 0u;
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      *v32 = 138412290;
      *(v32 + 4) = a1;
      __SC_log_send();
    }

LABEL_29:
    _SCErrorSet();
    return;
  }

  v6 = BSDName;
  if (SCNetworkInterfaceCopyMediaOptions(a1, &current, 0, &available, 0))
  {
    v7 = sub_10005B2BC(a2);
    if (v7 || (Value = CFDictionaryGetValue(qword_100081C18, v6), (v7 = sub_10005B2BC(Value)) != 0))
    {
      v9 = v7;
    }

    else
    {
      v9 = sub_10005B2BC(current);
      if (!v9)
      {
        v43 = 1;
LABEL_51:
        if (available)
        {
          CFRelease(available);
        }

        if (current)
        {
          CFRelease(current);
        }

        if ((v43 & 1) == 0)
        {
          CFRelease(v9);
        }

        return;
      }
    }

    if (!current || !CFEqual(current, v9))
    {
      v10 = available;
      v58.length = CFArrayGetCount(available);
      v58.location = 0;
      if (CFArrayContainsValue(v10, v58, v9))
      {
        MediaOptions = __SCNetworkInterfaceCreateMediaOptions();
        if (MediaOptions == -1)
        {
          goto LABEL_50;
        }

        v12 = MediaOptions;
        v13 = sub_10005A2BC("_SCNetworkInterfaceSetMediaOptions");
        if (v13 == -1)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v55 = 0u;
        memset(v56, 0, sizeof(v56));
        _SC_cfstring_to_cstring();
        if (ioctl(v14, 0xC02C6948uLL, &v55) == -1)
        {
          if (!qword_100081C38)
          {
            qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_50;
          }
        }

        else
        {
          v53 = v55;
          v15 = v56[0] & 0xF0000000 | v12;
          v54 = v56[0] & 0xF0000000 | v12;
          if (!qword_100081C38)
          {
            qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v16 = _os_log_pack_size();
            __chkstk_darwin(v16, v17, v18);
            v19 = *__error();
            v20 = _os_log_pack_fill();
            v21 = v56[0];
            v22 = v56[3];
            *v20 = 67109376;
            *(v20 + 4) = v21;
            *(v20 + 8) = 1024;
            *(v20 + 10) = v22;
            __SC_log_send();
          }

          if (!qword_100081C38)
          {
            qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24, v25);
            v26 = *__error();
            v27 = _os_log_pack_fill();
            *v27 = 67109120;
            v27[1] = v15;
            __SC_log_send();
          }

          if (ioctl(v14, 0xC0206937uLL, &v53) != -1)
          {
            goto LABEL_50;
          }

          if (!qword_100081C38)
          {
            qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_50;
          }
        }

        v44 = _os_log_pack_size();
        __chkstk_darwin(v44, v45, v46);
        v47 = *__error();
        v48 = _os_log_pack_fill();
        v49 = __error();
        v50 = strerror(*v49);
        *v48 = 138412546;
        *(v48 + 4) = v6;
        *(v48 + 12) = 2080;
        *(v48 + 14) = v50;
      }

      else
      {
        if (!qword_100081C38)
        {
          qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_50;
        }

        v38 = _os_log_pack_size();
        __chkstk_darwin(v38, v39, v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        *v42 = 138412290;
        *(v42 + 4) = v6;
      }

      __SC_log_send();
    }

LABEL_50:
    v43 = 0;
    goto LABEL_51;
  }

  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v33 = _os_log_pack_size();
    __chkstk_darwin(v33, v34, v35);
    v36 = *__error();
    v37 = _os_log_pack_fill();
    *v37 = 138412290;
    *(v37 + 4) = v6;
    __SC_log_send();
  }
}

void sub_10005B088(const __SCNetworkInterface *a1, const void *a2)
{
  mtu_max = -1;
  mtu_cur = -1;
  mtu_min = -1;
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    v5 = BSDName;
    valuePtr = 0;
    if (SCNetworkInterfaceCopyMTU(a1, &mtu_cur, &mtu_min, &mtu_max))
    {
      if ((TypeID = CFDictionaryGetTypeID(), a2) && CFGetTypeID(a2) == TypeID && (Value = CFDictionaryGetValue(a2, kSCPropNetEthernetMTU), v8 = CFNumberGetTypeID(), Value) && CFGetTypeID(Value) == v8 || (v9 = CFDictionaryGetValue(qword_100081C18, v5)) != 0 && (Value = CFDictionaryGetValue(v9, kSCPropNetEthernetMTU)) != 0)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        if (valuePtr != mtu_cur && (mtu_min < 0 || valuePtr >= mtu_min) && (mtu_max < 0 || valuePtr <= mtu_max))
        {
          InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
          if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeBridge) && (MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces()) != 0 && (v12 = MemberInterfaces, CFArrayGetCount(MemberInterfaces)))
          {
            CFRetain(v12);
            if (SCBridgeInterfaceSetMemberInterfaces() && (v13 = *(a1 + 10), _SCBridgeInterfaceUpdateConfiguration()))
            {
              sub_10005B3F4(v5, valuePtr);
              v14 = 0;
            }

            else
            {
              v14 = 1;
            }

            Count = CFArrayGetCount(v12);
            if (Count >= 1)
            {
              v16 = Count;
              for (i = 0; i != v16; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
                v19 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
                sub_10005B3F4(v19, valuePtr);
              }
            }

            SCBridgeInterfaceSetMemberInterfaces();
            CFRelease(v12);
            if ((v14 & 1) == 0)
            {
              v20 = *(a1 + 10);
              _SCBridgeInterfaceUpdateConfiguration();
            }
          }

          else
          {
            sub_10005B3F4(v5, valuePtr);
          }
        }
      }
    }
  }
}

__CFDictionary *sub_10005B2BC(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, kSCPropNetEthernetMediaSubType);
  v4 = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != v4)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSCPropNetEthernetMediaSubType, Value);
  v6 = CFDictionaryGetValue(a1, kSCPropNetEthernetMediaOptions);
  v7 = CFArrayGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    CFRelease(Mutable);
    return 0;
  }

  CFDictionaryAddValue(Mutable, kSCPropNetEthernetMediaOptions, v6);
  return Mutable;
}

uint64_t sub_10005B3F4(uint64_t a1, int a2)
{
  v17 = 0u;
  v18 = 0u;
  _SC_cfstring_to_cstring();
  LODWORD(v18) = a2;
  result = sub_10005A2BC("interfaceSetMTU");
  if (result != -1)
  {
    if (ioctl(result, 0x80206934uLL, &v17) == -1)
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12);
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = __error();
        v16 = strerror(*v15);
        *v14 = 138412546;
        *(v14 + 4) = a1;
        *(v14 + 12) = 2080;
        *(v14 + 14) = v16;
        return __SC_log_send();
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7);
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 138412546;
        *(v9 + 4) = a1;
        *(v9 + 12) = 1024;
        *(v9 + 14) = a2;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005B668(const __CFString *a1, int a2)
{
  result = sub_10005A2BC("set_low_data_mode");
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
    {
      result = sub_10005B8E8(v5, buffer, a2);
      if ((result & 0x80000000) == 0)
      {
        if (!qword_100081C38)
        {
          qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v6 = _os_log_pack_size();
          __chkstk_darwin(v6, v7, v8);
          v9 = *__error();
          v10 = _os_log_pack_fill();
          v11 = "enable";
          if (!a2)
          {
            v11 = "disable";
          }

          *v10 = 136315394;
          *(v10 + 4) = v11;
          *(v10 + 12) = 2080;
          *(v10 + 14) = buffer;
          return __SC_log_send();
        }
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 136315394;
        *(v16 + 4) = "set_low_data_mode";
        *(v16 + 12) = 2112;
        *(v16 + 14) = a1;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005B8E8(int a1, uint64_t a2, int a3)
{
  v16 = 0u;
  v17 = 0u;
  __strlcpy_chk();
  LODWORD(v17) = a3 != 0;
  v6 = ioctl(a1, 0xC02069CDuLL, &v16);
  if ((v6 & 0x80000000) != 0)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = v17;
      v13 = __error();
      v14 = strerror(*v13);
      *v11 = 136315650;
      *(v11 + 4) = a2;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v12;
      *(v11 + 18) = 2080;
      *(v11 + 20) = v14;
      __SC_log_send();
    }
  }

  return v6;
}

id sub_10005BAA0()
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CWFInterface);
  [v1 activate];
  v2 = [objc_msgSend(v1 "currentScanResult")];
  [v1 invalidate];

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_10005BB50(uint64_t a1, uint64_t a2)
{
  if (qword_100081C60)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
LABEL_3:
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 0;
    }
  }

  else
  {
    qword_100081C68 = a1;
    qword_100081C70 = a2;
    v7 = qword_100081C78;
    if (!qword_100081C78)
    {
      v7 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v7;
    }

    mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.NetworkCategoryManager", v7, 1uLL);
    if (mach_service)
    {
      v9 = mach_service;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10005C11C;
      handler[3] = &unk_10007B338;
      handler[4] = mach_service;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_activate(v9);
      qword_100081C60 = v9;
      if (!qword_100081C78)
      {
        qword_100081C78 = dispatch_queue_create("CategoryManagerServer", 0);
      }

      os_state_add_handler();
      return 1;
    }

    else
    {
      qword_100081C60 = 0;
      qword_100081C68 = 0;
      qword_100081C70 = 0;
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_10005BDBC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10005BEAC;
  v3[3] = &unk_10007B2F8;
  v3[4] = &v4;
  v0 = qword_100081C78;
  if (!qword_100081C78)
  {
    v0 = dispatch_queue_create("CategoryManagerServer", 0);
    qword_100081C78 = v0;
  }

  dispatch_sync(v0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10005BEAC(uint64_t a1)
{
  v2 = S_CategorySessions;
  if (S_CategorySessions)
  {
    Mutable = 0;
    do
    {
      v4 = sub_10005DFB0(v2);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(Mutable, v4);
      CFRelease(v4);
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
}

void sub_10005BF7C(uint64_t a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 0x40000000;
    v2[2] = sub_10005C040;
    v2[3] = &unk_10007B318;
    v2[4] = a1;
    v1 = qword_100081C78;
    if (!qword_100081C78)
    {
      v1 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v1;
    }

    dispatch_sync(v1, v2);
  }
}

CFIndex sub_10005C040(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = CFArrayGetCount(v1);
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      result = sub_10005E250(ValueAtIndex);
      if (result)
      {
        v4 = 1;
      }
    }

    if (v4)
    {

      return sub_10005E5C0();
    }
  }

  return result;
}

void sub_10005C11C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10005C438;
    handler[3] = &unk_10007B358;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    v12 = qword_100081C78;
    if (!qword_100081C78)
    {
      v12 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v12;
    }

    xpc_connection_set_target_queue(object, v12);
    xpc_connection_activate(object);
  }

  else
  {
    string = type;
    if (type != &_xpc_type_error)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      v11 = 134217984;
LABEL_11:
      *v10 = v11;
      *(v10 + 4) = string;
      __SC_log_send();
      return;
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    v13 = __SC_log_enabled();
    if (object != &_xpc_error_connection_invalid)
    {
      if (!v13)
      {
        return;
      }

      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      v10 = _os_log_pack_fill();
      v11 = 136315138;
      goto LABEL_11;
    }

    if (v13)
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136315138;
      *(v22 + 4) = string;
      __SC_log_send();
    }

    xpc_release(*(a1 + 32));
  }
}

void sub_10005C438(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);

  sub_10005C494(v2, a2);
}

void sub_10005C494(_xpc_connection_s *a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "Type");
    reply = xpc_dictionary_create_reply(object);
    v11 = reply;
    if (int64 != 3)
    {
      if (int64 == 2)
      {
        v12 = sub_10005CD0C(a1, object);
        if (!v11)
        {
          return;
        }
      }

      else if (int64 == 1)
      {
        v12 = sub_10005C828(a1, object);
        if (!v11)
        {
          return;
        }
      }

      else
      {
        v12 = 22;
        if (!v11)
        {
          return;
        }
      }

      goto LABEL_26;
    }

    if (!reply)
    {
      return;
    }

    context = xpc_connection_get_context(a1);
    if (context)
    {
      if (context != kCFBooleanTrue && context != kCFBooleanFalse)
      {
        goto LABEL_22;
      }
    }

    if (sub_10005D7AC(a1))
    {
      string = xpc_dictionary_get_string(object, "Category");
      if (string)
      {
        v18 = string;
        v19 = xpc_dictionary_get_string(object, "InterfaceName");
        context = sub_10005D138(v18, v19);
        if (context)
        {
LABEL_22:
          v15 = *(context + 9);
          if (v15)
          {
            xpc_dictionary_set_string(v11, "ActiveValue", v15);
          }

          v12 = 0;
          goto LABEL_26;
        }

        v12 = 2;
      }

      else
      {
        v12 = 22;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_26:
    xpc_dictionary_set_int64(v11, "Error", v12);
    remote_connection = xpc_dictionary_get_remote_connection(object);
    xpc_connection_send_message(remote_connection, v11);

    xpc_release(v11);
    return;
  }

  if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {

      sub_10005CFF4(a1);
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_4:
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }
}

uint64_t sub_10005C828(_xpc_connection_s *a1, void *a2)
{
  if (xpc_connection_get_context(a1))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      v8 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1);
      *v8 = 136315650;
      *(v8 + 4) = "HandleRegister";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      *(v8 + 22) = 1024;
      *(v8 + 24) = pid;
      __SC_log_send();
      return 22;
    }

    return 22;
  }

  if (sub_10005D558(a1))
  {
    string = xpc_dictionary_get_string(a2, "Category");
    if (!string)
    {
      return 22;
    }

    v12 = string;
    v13 = xpc_dictionary_get_string(a2, "InterfaceName");
    int64 = xpc_dictionary_get_int64(a2, "Flags");
    if (!int64 || (result = 22, int64 == 1) && v13)
    {
      if (sub_10005D138(v12, v13))
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          __chkstk_darwin(v15, v16, v17);
          v18 = *__error();
          v19 = _os_log_pack_fill();
          v20 = xpc_connection_get_pid(a1);
          *v19 = 134218498;
          *(v19 + 4) = a1;
          *(v19 + 12) = 1024;
          *(v19 + 14) = v20;
          *(v19 + 18) = 2080;
          *(v19 + 20) = v12;
          __SC_log_send();
        }

        return 17;
      }

      else
      {
        v27 = xpc_dictionary_get_string(a2, "ProcessName");
        v28 = sub_10005D1D8(a1, v27, v12, v13, int64);
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v29 = _os_log_pack_size();
          __chkstk_darwin(v29, v30, v31);
          v32 = *__error();
          v33 = _os_log_pack_fill();
          v34 = *(v28 + 7);
          v35 = *(v28 + 4);
          v36 = *(v28 + 5);
          v37 = "<any>";
          if (v13)
          {
            v37 = v13;
          }

          *v33 = 136316162;
          *(v33 + 4) = v35;
          if (int64)
          {
            v38 = " [no_default]";
          }

          else
          {
            v38 = "";
          }

          *(v33 + 12) = 1024;
          *(v33 + 14) = v34;
          *(v33 + 18) = 2080;
          *(v33 + 20) = v36;
          *(v33 + 28) = 2080;
          *(v33 + 30) = v37;
          *(v33 + 38) = 2080;
          *(v33 + 40) = v38;
          __SC_log_send();
        }

        sub_10005D424();
        return 0;
      }
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = xpc_connection_get_pid(a1);
      *v25 = 136315650;
      *(v25 + 4) = "HandleRegister";
      *(v25 + 12) = 2048;
      *(v25 + 14) = a1;
      *(v25 + 22) = 1024;
      *(v25 + 24) = v26;
      __SC_log_send();
    }

    xpc_connection_set_context(a1, kCFBooleanFalse);
    return 1;
  }

  return result;
}

uint64_t sub_10005CD0C(_xpc_connection_s *a1, void *a2)
{
  context = xpc_connection_get_context(a1);
  if (context)
  {
    v5 = context;
    if (context != kCFBooleanTrue && context != kCFBooleanFalse)
    {
      string = xpc_dictionary_get_string(a2, "Value");
      v8 = string;
      v9 = *(v5 + 8);
      if (string && v9)
      {
        v10 = strcmp(*(v5 + 8), string) != 0;
      }

      else
      {
        v10 = (string | v9) != 0;
        if (!string)
        {
          v17 = 0;
          v18 = 1;
          if (!v9)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

      v17 = strdup(v8);
      v18 = 0;
      if (!v9)
      {
LABEL_15:
        *(v5 + 8) = v17;
        if (v10)
        {
          v19 = *(v5 + 6);
          sub_10005E6F8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v20 = _os_log_pack_size();
            __chkstk_darwin(v20, v21, v22);
            v23 = *__error();
            v24 = _os_log_pack_fill();
            v25 = *(v5 + 7);
            v26 = *(v5 + 4);
            v27 = *(v5 + 5);
            v28 = "<any>";
            if (v19)
            {
              v28 = v19;
            }

            v29 = "<none>";
            *v24 = 136316162;
            if (!v18)
            {
              v29 = v8;
            }

            *(v24 + 4) = v26;
            *(v24 + 12) = 1024;
            *(v24 + 14) = v25;
            *(v24 + 18) = 2080;
            *(v24 + 20) = v27;
            *(v24 + 28) = 2080;
            *(v24 + 30) = v28;
            *(v24 + 38) = 2080;
            *(v24 + 40) = v29;
            __SC_log_send();
          }

          sub_10005D424();
        }

        return 0;
      }

LABEL_14:
      free(v9);
      goto LABEL_15;
    }
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    __SC_log_send();
  }

  return 22;
}

void sub_10005CFF4(_xpc_connection_s *a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  context = xpc_connection_get_context(a1);
  if (context)
  {
    if (context != kCFBooleanTrue && context != kCFBooleanFalse)
    {
      sub_10005DBF0(context);
    }
  }
}

uint64_t sub_10005D138(char *__s2, const char *a2)
{
  for (i = S_CategorySessions; i; i = *i)
  {
    if (!strcmp(*(i + 40), __s2))
    {
      if (!a2)
      {
        break;
      }

      v5 = *(i + 48);
      if (!v5 || !strcmp(a2, v5))
      {
        break;
      }
    }
  }

  return i;
}

_OWORD *sub_10005D1D8(_xpc_connection_s *a1, const char *a2, const char *a3, const char *a4, int a5)
{
  v10 = malloc_type_malloc(0x50uLL, 0x10B0040F25E0655uLL);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  *(v10 + 2) = a1;
  *(v10 + 7) = xpc_connection_get_pid(a1);
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "<unknown>";
  }

  *(v10 + 4) = strdup(v11);
  *(v10 + 5) = strdup(a3);
  *(v10 + 14) = a5;
  if (a4)
  {
    *(v10 + 6) = strdup(a4);
  }

  xpc_connection_set_finalizer_f(a1, sub_10005D610);
  xpc_connection_set_context(a1, v10);
  v12 = S_CategorySessions;
  *v10 = S_CategorySessions;
  if (v12)
  {
    *(v12 + 8) = v10;
  }

  S_CategorySessions = v10;
  *(v10 + 1) = &S_CategorySessions;
  *(v10 + 24) = 1;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    __chkstk_darwin(v13, v14, v15);
    v16 = *__error();
    v17 = _os_log_pack_fill();
    v18 = *(v10 + 7);
    v19 = "<any>";
    v20 = *(v10 + 4);
    v21 = *(v10 + 5);
    if (a4)
    {
      v19 = a4;
    }

    *v17 = 136316674;
    *(v17 + 4) = "CategorySessionCreate";
    *(v17 + 12) = 2080;
    *(v17 + 14) = v20;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v18;
    *(v17 + 28) = 2080;
    *(v17 + 30) = v21;
    *(v17 + 38) = 2080;
    *(v17 + 40) = v19;
    *(v17 + 48) = 2048;
    *(v17 + 50) = v10;
    *(v17 + 58) = 2048;
    *(v17 + 60) = a1;
    __SC_log_send();
  }

  return v10;
}

void sub_10005D424()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    v4 = _os_log_pack_fill();
    *v4 = 136315138;
    *(v4 + 4) = "SendNotification";
    __SC_log_send();
  }

  if (qword_100081C70)
  {
    CFRunLoopSourceSignal(qword_100081C70);
    if (qword_100081C68)
    {
      CFRunLoopWakeUp(qword_100081C68);
    }
  }
}

uint64_t sub_10005D558(_xpc_connection_s *a1)
{
  if (!xpc_connection_get_euid(a1))
  {
    return 1;
  }

  v1 = xpc_connection_copy_entitlement_value();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = xpc_get_type(v1) == &_xpc_type_BOOL && xpc_BOOL_get_value(v2);
  xpc_release(v2);
  return v3;
}

void sub_10005D610(uint64_t a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 28);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *v6 = 136316162;
    *(v6 + 4) = "CategorySessionRelease";
    *(v6 + 12) = 2080;
    *(v6 + 14) = v8;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v7;
    *(v6 + 28) = 2080;
    *(v6 + 30) = v9;
    *(v6 + 38) = 2048;
    *(v6 + 40) = a1;
    __SC_log_send();
  }

  free(*(a1 + 32));
  free(*(a1 + 40));
  v10 = *(a1 + 48);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 64) = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 72) = 0;
  if (*(a1 + 24))
  {
    sub_1000683CC();
  }

  free(a1);
}

uint64_t sub_10005D7AC(_xpc_connection_s *a1)
{
  context = xpc_connection_get_context(a1);
  if (context)
  {
    if (context == kCFBooleanFalse)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1);
      *v21 = 136315650;
      *(v21 + 4) = "connectionAllowManagerObserverAccess";
      *(v21 + 12) = 2048;
      *(v21 + 14) = a1;
      *(v21 + 22) = 1024;
      *(v21 + 24) = pid;
      __SC_log_send();
    }

    else if (context == kCFBooleanTrue)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5);
        v6 = *__error();
        v7 = _os_log_pack_fill();
        v8 = xpc_connection_get_pid(a1);
        *v7 = 136315650;
        *(v7 + 4) = "connectionAllowManagerObserverAccess";
        *(v7 + 12) = 2048;
        *(v7 + 14) = a1;
        *(v7 + 22) = 1024;
        *(v7 + 24) = v8;
        __SC_log_send();
        return 1;
      }

      return 1;
    }
  }

  else
  {
    v10 = sub_10005D558(a1);
    sub_10005E6F8();
    if (v10)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        v16 = xpc_connection_get_pid(a1);
        *v15 = 136315650;
        *(v15 + 4) = "connectionAllowManagerObserverAccess";
        *(v15 + 12) = 2048;
        *(v15 + 14) = a1;
        *(v15 + 22) = 1024;
        *(v15 + 24) = v16;
        __SC_log_send();
      }

      xpc_connection_set_context(a1, kCFBooleanTrue);
      return 1;
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v23 = _os_log_pack_size();
      __chkstk_darwin(v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = xpc_connection_get_pid(a1);
      *v27 = 136315650;
      *(v27 + 4) = "connectionAllowManagerObserverAccess";
      *(v27 + 12) = 2048;
      *(v27 + 14) = a1;
      *(v27 + 22) = 1024;
      *(v27 + 24) = v28;
      __SC_log_send();
    }

    xpc_connection_set_context(a1, kCFBooleanFalse);
  }

  return 0;
}

void sub_10005DBF0(uint64_t *a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "CategorySessionInvalidate";
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    __SC_log_send();
  }

  if (*(a1 + 24))
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1)
    {
      *(v7 + 8) = v8;
    }

    *v8 = v7;
    *(a1 + 24) = 0;
  }

  sub_10005D424();
}

os_state_data_s *__cdecl sub_10005DD34(id a1, os_state_hints_s *a2)
{

  return sub_10005DD8C();
}

_DWORD *sub_10005DD8C()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v1 = S_CategorySessions;
  if (S_CategorySessions)
  {
    do
    {
      v2 = sub_10005DFB0(v1);
      if (v2)
      {
        v3 = v2;
        CFArrayAppendValue(Mutable, v2);
        CFRelease(v3);
      }

      v1 = *v1;
    }

    while (v1);
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(Mutable);
  Length = CFDataGetLength(Data);
  v6 = Length + 200;
  if ((Length + 200) <= 0x8000)
  {
    v13 = Length;
    v12 = malloc_type_calloc(1uLL, v6, 0xCF9002DFuLL);
    *v12 = 1;
    v12[1] = v13;
    __strlcpy_chk();
    BytePtr = CFDataGetBytePtr(Data);
    memcpy(v12 + 50, BytePtr, v13);
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 136315650;
      *(v11 + 4) = "CategoryManagerCopyOSStateData";
      *(v11 + 12) = 2048;
      *(v11 + 14) = v6;
      *(v11 + 22) = 1024;
      *(v11 + 24) = 0x8000;
      __SC_log_send();
    }

    v12 = 0;
  }

  CFRelease(Data);
  return v12;
}

CFDictionaryRef sub_10005DFB0(void *a1)
{
  cf = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 28);
  v2 = a1[4];
  if (v2)
  {
    v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[9];
  if (v8)
  {
    v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  }

  else
  {
    v9 = 0;
  }

  v10 = v23;
  v11 = v21;
  v12 = a1[6];
  if (v12)
  {
    v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
  }

  else
  {
    v13 = 0;
  }

  memset(v23, 0, sizeof(v23));
  memset(v21, 0, sizeof(v21));
  v14 = 3;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 7);
  v16 = v15;
  keys[0] = @"ProcessID";
  keys[1] = @"ProcessName";
  values[0] = cf;
  values[1] = v3;
  keys[2] = @"Category";
  values[2] = v5;
  if (v13)
  {
    v11 = &v21[1];
    v10 = &v23[1];
    v23[0] = @"InterfaceName";
    v21[0] = v13;
    v14 = 4;
  }

  if (v7)
  {
    *v10 = @"Value";
    *v11 = v7;
    ++v14;
  }

  if (v9)
  {
    keys[v14] = @"ActiveValue";
    values[v14++] = v9;
  }

  if (v15)
  {
    keys[v14] = @"Flags";
    values[v14++] = v15;
  }

  v17 = CFDictionaryCreate(0, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t sub_10005E250(const __CFDictionary *a1)
{
  if (!CFDictionaryGetValue(a1, @"Category"))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      v8 = _os_log_pack_fill();
      *v8 = 136315650;
      *(v8 + 4) = "CategoryManagerServerAckOne";
      *(v8 + 12) = 2112;
      *(v8 + 14) = a1;
      *(v8 + 22) = 2112;
      *(v8 + 24) = @"Category";
LABEL_19:
      __SC_log_send();
    }

    return 0;
  }

  v2 = _SC_cfstring_to_cstring();
  if (CFDictionaryGetValue(a1, @"InterfaceName"))
  {
    v3 = _SC_cfstring_to_cstring();
  }

  else
  {
    v3 = 0;
  }

  if (CFDictionaryGetValue(a1, @"Value"))
  {
    v9 = _SC_cfstring_to_cstring();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_10005D138(v2, v3);
  if (!v10)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = "<any>";
      *v17 = 136315650;
      *(v17 + 4) = "CategoryManagerServerAckOne";
      *(v17 + 12) = 2080;
      if (v3)
      {
        v18 = v3;
      }

      *(v17 + 14) = v2;
      *(v17 + 22) = 2080;
      *(v17 + 24) = v18;
      goto LABEL_19;
    }

    return 0;
  }

  v11 = v10;
  v12 = *(v10 + 72);
  if (v9 && v12)
  {
    if (!strcmp(*(v10 + 72), v9))
    {
LABEL_32:
      v19 = 0;
      if (!v2)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!(v9 | v12))
  {
    goto LABEL_32;
  }

  if (v9)
  {
LABEL_23:
    v20 = strdup(v9);
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v20 = 0;
  if (v12)
  {
LABEL_24:
    free(v12);
  }

LABEL_25:
  *(v11 + 72) = v20;
  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_connection_send_message(*(v11 + 16), v21);
  xpc_release(v21);
  v19 = 1;
  if (v2)
  {
LABEL_26:
    CFAllocatorDeallocate(0, v2);
  }

LABEL_27:
  if (v3)
  {
    CFAllocatorDeallocate(0, v3);
  }

  if (v9)
  {
    CFAllocatorDeallocate(0, v9);
  }

  return v19;
}

uint64_t sub_10005E5C0()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    v4 = _os_log_pack_fill();
    *v4 = 136315394;
    *(v4 + 4) = "CategoryManagerServerNotifyStore";
    *(v4 + 12) = 2112;
    *(v4 + 14) = @"com.apple.scnetworkcategory";
    __SC_log_send();
  }

  return SCDynamicStoreNotifyValue(0, @"com.apple.scnetworkcategory");
}

os_log_t sub_10005E6F8()
{
  result = qword_100081C80;
  if (!qword_100081C80)
  {
    result = os_log_create("com.apple.SystemConfiguration", "PreferencesMonitor");
    qword_100081C80 = result;
  }

  return result;
}

const void *sub_10005E76C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Category");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

const void *sub_10005E7F0(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"InterfaceName");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

const void *sub_10005E874(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Value");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

uint64_t sub_10005E8F8(const __CFDictionary *a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"Flags");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

void sub_10005E994()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  if (sub_10005EB4C())
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  sub_10005ECC0(qword_100081C88, 2);
}

uint64_t sub_10005EB4C()
{
  memset(&context, 0, 72);
  context.perform = sub_10005FD40;
  v0 = CFRunLoopSourceCreate(0, 0, &context);
  Current = CFRunLoopGetCurrent();
  v2 = sub_10005BB50(Current, v0);
  if (v2)
  {
    v3 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v3, v0, kCFRunLoopDefaultMode);
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  CFRelease(v0);
  return v2;
}

void sub_10005ECC0(SCPreferencesRef prefs, char a2)
{
  if ((a2 & 1) != 0 && (byte_100081CA8 & 1) == 0)
  {
    SCPreferencesSynchronize(prefs);
  }

  if ((a2 & 2) != 0)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    if (qword_100081CA0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (sub_100061328(&v12, prefs))
      {
        Count = CFArrayGetCount(qword_100081CA0);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(qword_100081CA0, i);
            sub_100061460(&v12, ValueAtIndex);
          }
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }
    }

    sub_10005FECC(prefs);
    sub_100060268(prefs);
    sub_100060518(qword_100081C90, prefs);
    if ((byte_100081CA8 & 1) == 0)
    {
      SCPreferencesSynchronize(prefs);
    }
  }
}

void sub_10005EEA0(__CFBundle *a1)
{
  *keys = *&off_10007B3B8;
  values[0] = kCFBooleanTrue;
  values[1] = kCFBooleanFalse;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    Identifier = CFBundleGetIdentifier(a1);
    *v10 = 138412290;
    *(v10 + 4) = Identifier;
    __SC_log_send();
  }

  qword_100081C90 = SCDynamicStoreCreate(0, @"PreferencesMonitor.bundle", sub_10005F508, 0);
  if (!qword_100081C90)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19);
      v20 = *__error();
LABEL_27:
      v32 = _os_log_pack_fill();
      v33 = SCError();
      v34 = SCErrorString(v33);
      *v32 = 136315138;
      *(v32 + 4) = v34;
      __SC_log_send();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v12 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100081C88 = SCPreferencesCreateWithOptions();
  CFRelease(v12);
  if (!qword_100081C88)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

LABEL_26:
    v28 = _os_log_pack_size();
    __chkstk_darwin(v28, v29, v30);
    v31 = *__error();
    goto LABEL_27;
  }

  __SCNetworkConfigurationUpgrade();
  Value = SCPreferencesGetValue(qword_100081C88, @"Model");
  v14 = _SC_hw_model();
  if (!Value || (v15 = v14, Value == v14) || v14 && CFEqual(Value, v14))
  {
    v16 = SCNetworkSetCopyCurrent(qword_100081C88);
    if (v16)
    {
      byte_100081C98 = 1;
      CFRelease(v16);
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 138412546;
      *(v25 + 4) = Value;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v15;
      __SC_log_send();
    }

    sub_10005F9DC(qword_100081C88);
  }

  if (!SCPreferencesSetCallback(qword_100081C88, sub_10005ECC0, 0))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v26 = qword_100081C88;
  Current = CFRunLoopGetCurrent();
  if (SCPreferencesScheduleWithRunLoop(v26, Current, kCFRunLoopDefaultMode))
  {
    sub_10005FAD0(qword_100081C90);
    sub_10005F508(qword_100081C90, 0);
    return;
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    goto LABEL_26;
  }

LABEL_28:
  if (qword_100081C90)
  {
    CFRelease(qword_100081C90);
  }

  if (qword_100081C88)
  {
    CFRelease(qword_100081C88);
  }

  byte_100081C98 = 1;
}

void sub_10005F508(const __SCDynamicStore *a1, uint64_t a2)
{
  v3 = SCDynamicStoreCopyValue(a1, qword_100081D00);
  if (!v3)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_44;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v4) == TypeID)
  {
    v6 = CFDictionaryContainsKey(v4, @"*QUIET*") != 0;
    v7 = CFDictionaryContainsKey(v4, @"*TIMEOUT*") != 0;
    Value = CFDictionaryGetValue(v4, @"_Excluded_");
    v9 = CFArrayGetTypeID();
    if (Value && CFGetTypeID(Value) != v9)
    {
      Value = 0;
    }

    if (Value == qword_100081CB8 || Value && qword_100081CB8 && CFEqual(Value, qword_100081CB8) || !sub_100062E94(Value, &qword_100081D08, &qword_100081CB8))
    {
      v11 = 0;
    }

    else
    {
      if (qword_100081CB8)
      {
        v10 = CFStringCreateByCombiningStrings(0, qword_100081CB8, @",");
      }

      else
      {
        v10 = @"<empty>";
        CFRetain(@"<empty>");
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        __chkstk_darwin(v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        *v17 = 138412290;
        *(v17 + 4) = v10;
        __SC_log_send();
      }

      CFRelease(v10);
      v11 = 1;
    }

    v18 = CFDictionaryGetValue(v4, @"_PreConfigured_");
    v19 = CFArrayGetTypeID();
    if (v18 && CFGetTypeID(v18) != v19)
    {
      v18 = 0;
    }

    if (v18 == qword_100081CB0 || v18 && qword_100081CB0 && CFEqual(v18, qword_100081CB0) || !sub_100062E94(v18, &qword_100081CE0, &qword_100081CB0))
    {
      v12 = 0;
    }

    else
    {
      if (qword_100081CB0)
      {
        v20 = CFStringCreateByCombiningStrings(0, qword_100081CB0, @",");
      }

      else
      {
        v20 = @"<empty>";
        CFRetain(@"<empty>");
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        v31 = &v31;
        __chkstk_darwin(v21, v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 138412290;
        *(v25 + 4) = v20;
        __SC_log_send();
      }

      CFRelease(v20);
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v7 = 0;
    v6 = 0;
  }

  CFRelease(v4);
  if ((byte_100081C98 & 1) == 0 && (v7 || v6))
  {
    if (v6)
    {
      byte_100081C98 = 1;
      sub_1000631F0(qword_100081C88);
      if (!v7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      sub_1000631F0(qword_100081C88);
      if (!v7)
      {
        goto LABEL_44;
      }
    }

    if (!dword_100081D10++)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v27 = _os_log_pack_size();
        __chkstk_darwin(v27, v28, v29);
        v30 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }
  }

LABEL_44:
  if (a2)
  {
    if (v11 | v12)
    {
      sub_10005ECC0(qword_100081C88, 2);
    }
  }
}

void sub_10005F9DC(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, kSCPrefSystem);
  if (Value)
  {
    v3 = Value;
    CFRetain(Value);
    __SCNetworkConfigurationSaveModel();
    SCPreferencesSetValue(a1, kSCPrefSystem, v3);

    CFRelease(v3);
  }

  else
  {

    __SCNetworkConfigurationSaveModel();
  }
}

void sub_10005FAD0(const __SCDynamicStore *a1)
{
  qword_100081D18 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  qword_100081D00 = SCDynamicStoreKeyCreate(0, @"%@InterfaceNamer", kSCDynamicStoreDomainPlugin);
  RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, a1, 0);
  if (RunLoopSource)
  {
    v3 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v3, kCFRunLoopDefaultMode);
    CFRelease(v3);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, qword_100081D18);
    CFArrayAppendValue(Mutable, qword_100081D00);
    v6 = SCDynamicStoreSetNotificationKeys(a1, Mutable, 0);
    CFRelease(Mutable);
    if (v6)
    {
      return;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_6:
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = SCError();
      v13 = SCErrorString(v12);
      *v11 = 136315138;
      *(v11 + 4) = v13;
      __SC_log_send();
    }
  }

  byte_100081C98 = 1;
}

void sub_10005FD40()
{
  v0 = sub_10005BDBC();
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3);
    v4 = *__error();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "categoryInformationChanged";
    *(v5 + 12) = 2112;
    *(v5 + 14) = v0;
    __SC_log_send();
  }

  v6 = qword_100081CA0;
  if (qword_100081CA0 == v0)
  {
    v7 = 0;
    if (qword_100081CA0)
    {
LABEL_8:
      CFRelease(v6);
    }
  }

  else
  {
    v7 = 1;
    if (v0 && qword_100081CA0)
    {
      v7 = CFEqual(qword_100081CA0, v0) == 0;
      v6 = qword_100081CA0;
    }

    if (v6)
    {
      goto LABEL_8;
    }
  }

  qword_100081CA0 = v0;
  if (v7)
  {
    sub_10005ECC0(qword_100081C88, 2);
    sub_10005BF7C(v0);
  }
}

void sub_10005FECC(const __SCPreferences *a1)
{
  v2 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081CB0)
  {
    Count = CFArrayGetCount(qword_100081CB0);
    if (Count)
    {
      v4 = Count;
      v5 = SCNetworkSetCopyCurrent(a1);
      if (v5)
      {
        v6 = v5;
        v7 = SCNetworkServiceCopyAll(a1);
        if (v7)
        {
          v8 = v7;
          v9 = CFArrayGetCount(v7);
          if (v9 < 1)
          {
            CFRelease(v8);
          }

          else
          {
            v10 = v9;
            v36 = a1;
            v37 = v6;
            v11 = 0;
            v12 = 0;
            v38 = v4;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
              Interface = SCNetworkServiceGetInterface(ValueAtIndex);
              if (Interface)
              {
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                if (BSDName)
                {
                  v16 = BSDName;
                  v39.location = 0;
                  v39.length = v4;
                  if (CFArrayContainsValue(v2[406], v39, BSDName))
                  {
                    sub_10005E6F8();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v17 = _os_log_pack_size();
                      __chkstk_darwin(v17, v18, v19);
                      v20 = *__error();
                      v21 = _os_log_pack_fill();
                      *v21 = 138412290;
                      *(v21 + 4) = v16;
                      v2 = &selRef_qosMarkingIsEnabled_;
                      __SC_log_send();
                      v4 = v38;
                    }

                    if (SCNetworkServiceRemove(ValueAtIndex) || (sub_10005E6F8(), _SC_syslog_os_log_mapping(), !__SC_log_enabled()))
                    {
                      v11 = 1;
                    }

                    else
                    {
                      v22 = _os_log_pack_size();
                      __chkstk_darwin(v22, v23, v24);
                      v25 = *__error();
                      v26 = _os_log_pack_fill();
                      v27 = SCError();
                      v28 = SCErrorString(v27);
                      *v26 = 136315138;
                      *(v26 + 4) = v28;
                      v2 = &selRef_qosMarkingIsEnabled_;
                      __SC_log_send();
                      v11 = 1;
                      v4 = v38;
                    }
                  }
                }
              }

              ++v12;
            }

            while (v10 != v12);
            CFRelease(v8);
            v6 = v37;
            if (v11 && !SCPreferencesCommitChanges(v36) && SCError() != 30)
            {
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v29 = _os_log_pack_size();
                __chkstk_darwin(v29, v30, v31);
                v32 = *__error();
                v33 = _os_log_pack_fill();
                v34 = SCError();
                v35 = SCErrorString(v34);
                *v33 = 136315138;
                *(v33 + 4) = v35;
                __SC_log_send();
              }
            }
          }
        }

        CFRelease(v6);
      }
    }
  }
}

void sub_100060268(const __SCPreferences *a1)
{
  v2 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081CB8)
  {
    Count = CFArrayGetCount(qword_100081CB8);
    if (Count)
    {
      v4 = Count;
      v5 = SCNetworkSetCopyCurrent(a1);
      if (v5)
      {
        v6 = v5;
        v7 = SCNetworkSetCopyServices(v5);
        if (v7)
        {
          v8 = v7;
          v9 = CFArrayGetCount(v7);
          if (v9 >= 1)
          {
            v10 = v9;
            v11 = 0;
            v28 = v4;
            v29 = v6;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
              Interface = SCNetworkServiceGetInterface(ValueAtIndex);
              if (Interface)
              {
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                if (BSDName)
                {
                  v15 = BSDName;
                  v30.location = 0;
                  v30.length = v4;
                  if (CFArrayContainsValue(v2[407], v30, BSDName))
                  {
                    sub_10005E6F8();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v16 = _os_log_pack_size();
                      __chkstk_darwin(v16, v17, v18);
                      v19 = *__error();
                      v4 = v28;
                      v20 = _os_log_pack_fill();
                      *v20 = 138412290;
                      *(v20 + 4) = v15;
                      v6 = v29;
                      __SC_log_send();
                      v2 = &selRef_qosMarkingIsEnabled_;
                    }

                    if (!SCNetworkSetRemoveService(v6, ValueAtIndex))
                    {
                      sub_10005E6F8();
                      _SC_syslog_os_log_mapping();
                      if (__SC_log_enabled())
                      {
                        v21 = _os_log_pack_size();
                        __chkstk_darwin(v21, v22, v23);
                        v24 = *__error();
                        v25 = _os_log_pack_fill();
                        v26 = SCError();
                        v27 = SCErrorString(v26);
                        *v25 = 136315138;
                        *(v25 + 4) = v27;
                        v4 = v28;
                        v6 = v29;
                        __SC_log_send();
                        v2 = &selRef_qosMarkingIsEnabled_;
                      }
                    }
                  }
                }
              }

              ++v11;
            }

            while (v10 != v11);
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }
}

void sub_100060518(const __SCDynamicStore *a1, const __SCPreferences *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v5 = CFStringCreateWithFormat(0, 0, @"^%@.*", kSCDynamicStoreDomainSetup);
  CFArrayAppendValue(Mutable, v5);
  v90 = a1;
  v6 = SCDynamicStoreCopyMultiple(a1, 0, Mutable);
  CFRelease(Mutable);
  CFRelease(v5);
  if (v6)
  {
    qword_100081CC0 = CFDictionaryCreateMutableCopy(0, 0, v6);
    CFRelease(v6);
  }

  else
  {
    qword_100081CC0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  qword_100081CC8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Count = CFDictionaryGetCount(qword_100081CC0);
  if (Count < 1)
  {
    qword_100081CD0 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  else
  {
    v8 = Count;
    Typed = CFAllocatorAllocateTyped();
    CFDictionaryGetKeysAndValues(qword_100081CC0, Typed, 0);
    v10 = CFArrayCreate(0, Typed, v8, &kCFTypeArrayCallBacks);
    qword_100081CD0 = CFArrayCreateMutableCopy(0, 0, v10);
    CFRelease(v10);
    CFAllocatorDeallocate(0, Typed);
  }

  v11 = &selRef_qosMarkingIsEnabled_;
  qword_100081CD8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Current = CFAbsoluteTimeGetCurrent();
  v14 = CFDateCreate(0, Current);
  v15 = SCPreferencesCopyKeyList(a2);
  v16 = v15;
  if (!v15 || !CFArrayGetCount(v15))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_25;
    }

    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28);
    v29 = *__error();
    *_os_log_pack_fill() = 0;
LABEL_24:
    __SC_log_send();
    goto LABEL_25;
  }

  v17 = kSCPrefSystem;
  Value = SCPreferencesGetValue(a2, kSCPrefSystem);
  if (Value)
  {
    v19 = Value;
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v19) != TypeID)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

LABEL_20:
      v30 = _os_log_pack_size();
      __chkstk_darwin(v30, v31, v32);
      v33 = *__error();
      v34 = _os_log_pack_fill();
      *v34 = 138412290;
      *(v34 + 4) = v17;
LABEL_23:
      v11 = &selRef_qosMarkingIsEnabled_;
      goto LABEL_24;
    }

    sub_100062A18(a2, @"/", v19);
  }

  v21 = SCPreferencesGetValue(a2, kSCPrefCurrentSet);
  if (v21)
  {
    v17 = v21;
    v22 = CFStringGetTypeID();
    if (CFGetTypeID(v17) != v22)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

      v35 = _os_log_pack_size();
      __chkstk_darwin(v35, v36, v37);
      v38 = *__error();
      v39 = _os_log_pack_fill();
      *v39 = 138412290;
      *(v39 + 4) = kSCPrefCurrentSet;
      goto LABEL_23;
    }

    v23 = SCPreferencesPathGetValue(a2, v17);
    if (v23)
    {
      v24 = v23;
      v25 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v24) == v25)
      {
        sub_100062A18(a2, @"/", v24);
        CFDictionarySetValue(v12, kSCDynamicStorePropSetupCurrentSet, v17);
        goto LABEL_25;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v82 = _os_log_pack_size();
      p_isa = &v87;
      __chkstk_darwin(v82, v83, v84);
      v85 = *__error();
      v11 = &selRef_qosMarkingIsEnabled_;
      v86 = _os_log_pack_fill();
      *v86 = 138412546;
      *(v86 + 4) = kSCPrefCurrentSet;
      *(v86 + 12) = 2112;
      *(v86 + 14) = v17;
      __SC_log_send();
    }
  }

LABEL_25:
  v88 = v16;
  v87 = v14;
  CFDictionarySetValue(v12, kSCDynamicStorePropSetupLastUpdated, v14);
  v40 = v11[411];
  v89 = v12;
  CFDictionarySetValue(v40, kSCDynamicStoreDomainSetup, v12);
  if (qword_100081CE0)
  {
    v41 = qword_100081CD8;
    v107 = CFArrayGetCount(qword_100081CE0);
    if (v107 >= 1)
    {
      v42 = 0;
      v106 = kSCValNetInterfaceTypeEthernet;
      v105 = kSCEntNetIPv4;
      v94 = kSCPropNetIPv4ConfigMethod;
      v93 = kSCValNetIPv4ConfigMethodDHCP;
      v104 = kSCEntNetIPv6;
      v92 = kSCPropNetIPv6ConfigMethod;
      v91 = kSCValNetIPv6ConfigMethodAutomatic;
      v103 = kSCEntNetInterface;
      v102 = kSCPropNetInterfaceDeviceName;
      v101 = kSCPropNetInterfaceHardware;
      v100 = kSCPropNetInterfaceType;
      v98 = kCFBooleanTrue;
      v97 = kSCEntNetProxies;
      v96 = kSCPropNetProxiesExceptionsList;
      v95 = kSCPropNetProxiesFTPPassive;
      v108 = kSCPropNetServicePrimaryRank;
      v99 = kSCPropUserDefinedName;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081CE0, v42);
        LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(ValueAtIndex);
        v45 = @"Preconfigured";
        if (LocalizedDisplayName)
        {
          v45 = LocalizedDisplayName;
        }

        p_isa = &v45->isa;
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
        if (InterfaceType)
        {
          v48 = InterfaceType;
        }

        else
        {
          v48 = v106;
        }

        v49 = _SC_copyInterfaceUUID();
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v49, v105);
        TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides();
        v52 = CFDictionaryGetTypeID();
        if (!TemplateOverrides || CFGetTypeID(TemplateOverrides) != v52)
        {
          TemplateOverrides = qword_100081CE8;
          if (!qword_100081CE8)
          {
            keys = v94;
            values = v93;
            TemplateOverrides = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            qword_100081CE8 = TemplateOverrides;
          }
        }

        CFDictionarySetValue(v41, NetworkServiceEntity, TemplateOverrides);
        if (NetworkServiceEntity)
        {
          CFRelease(NetworkServiceEntity);
        }

        v53 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v49, v104);
        v54 = __SCNetworkInterfaceGetTemplateOverrides();
        v55 = CFDictionaryGetTypeID();
        if (!v54 || CFGetTypeID(v54) != v55)
        {
          v54 = qword_100081CF0;
          if (!qword_100081CF0)
          {
            keys = v92;
            values = v91;
            v54 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            qword_100081CF0 = v54;
          }
        }

        CFDictionarySetValue(v41, v53, v54);
        if (v53)
        {
          CFRelease(v53);
        }

        v56 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v49, v103);
        keys = v102;
        v117 = v101;
        v118 = @"HiddenConfiguration";
        v119 = v100;
        v57 = v99;
        v120 = v99;
        values = BSDName;
        v112 = v48;
        v113 = v98;
        v114 = v48;
        v115 = p_isa;
        v58 = CFDictionaryCreate(0, &keys, &values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v41, v56, v58);
        if (v56)
        {
          CFRelease(v56);
        }

        if (v58)
        {
          CFRelease(v58);
        }

        v59 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v49, v97);
        keys = v96;
        v117 = v95;
        v60 = qword_100081CF8;
        if (!qword_100081CF8)
        {
          *v121 = *&off_10007B3C8;
          valuePtr = 1;
          v61 = CFArrayCreate(0, v121, 2, &kCFTypeArrayCallBacks);
          values = v61;
          v62 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v112 = v62;
          qword_100081CF8 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFRelease(v61);
          CFRelease(v62);
          v60 = qword_100081CF8;
        }

        CFDictionarySetValue(v41, v59, v60);
        if (v59)
        {
          CFRelease(v59);
        }

        v63 = __SCNetworkInterfaceGetTemplateOverrides();
        v64 = CFStringGetTypeID();
        if (v63)
        {
          if (CFGetTypeID(v63) == v64)
          {
            v65 = v63;
          }

          else
          {
            v65 = 0;
          }
        }

        else
        {
          v65 = 0;
        }

        v66 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v49, 0);
        keys = v57;
        v117 = 0;
        values = p_isa;
        v112 = 0;
        if (v65)
        {
          v117 = v108;
          v112 = v65;
          v67 = 2;
        }

        else
        {
          v67 = 1;
        }

        v68 = CFDictionaryCreate(0, &keys, &values, v67, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v41, v66, v68);
        if (v66)
        {
          CFRelease(v66);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        ++v42;
      }

      while (v107 != v42);
    }
  }

  CFDictionaryApplyFunction(qword_100081CD8, sub_100062D94, 0);
  v69 = CFArrayGetCount(qword_100081CC8);
  if (v69 >= 1)
  {
    v70 = v69;
    for (i = 0; i != v70; ++i)
    {
      v72 = CFArrayGetValueAtIndex(qword_100081CC8, i);
      CFDictionaryRemoveValue(qword_100081CD8, v72);
    }
  }

  v73 = SCDynamicStoreSetMultiple(v90, qword_100081CD8, qword_100081CD0, 0);
  v74 = v88;
  if (!v73)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v75 = _os_log_pack_size();
      __chkstk_darwin(v75, v76, v77);
      v78 = *__error();
      v79 = _os_log_pack_fill();
      v80 = SCError();
      v81 = SCErrorString(v80);
      *v79 = 136315138;
      *(v79 + 4) = v81;
      __SC_log_send();
    }
  }

  CFRelease(qword_100081CC0);
  CFRelease(qword_100081CD8);
  CFRelease(qword_100081CC8);
  CFRelease(qword_100081CD0);
  if (v89)
  {
    CFRelease(v89);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v74)
  {
    CFRelease(v74);
  }
}

uint64_t sub_100061328(void *a1, SCPreferencesRef prefs)
{
  v4 = SCNetworkSetCopyCurrent(prefs);
  a1[1] = v4;
  if (v4)
  {
    a1[2] = SCNetworkSetCopyServices(v4);
    *a1 = prefs;
    CFRetain(prefs);
    return 1;
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8);
      v9 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 0;
    }
  }

  return result;
}

void sub_100061460(SCPreferencesRef *a1, const __CFDictionary *a2)
{
  if (!sub_10005E76C(a2))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_8:
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "handleCategoryInfo";
    __SC_log_send();
    return;
  }

  v4 = *a1;
  v5 = SCNetworkCategoryCreate();
  if (!v5)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_10005E874(a2);
  if (v7)
  {
    v8 = SCNetworkCategoryCopyServices();
  }

  else
  {
    v8 = 0;
  }

  v14 = sub_10005E8F8(a2);
  v15 = sub_10005E7F0(a2);
  if (v7 && v8)
  {
    sub_100061B4C(a1, v6, v7, v8, v15);
    CFRelease(v6);
LABEL_18:

    CFRelease(v8);
    return;
  }

  if (v15 && (v14 & 1) != 0)
  {
    sub_1000616E4(a1, v15);
  }

  CFRelease(v6);
  if (v8)
  {
    goto LABEL_18;
  }
}

void sub_1000616E4(SCPreferencesRef *a1, const void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
      goto LABEL_21;
    }

    v7 = Count;
    v8 = 0;
    v9 = 0;
    *&v6 = 136315650;
    v36 = v6;
    *&v6 = 136315906;
    v38 = v6;
    v37 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v9);
      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (Interface)
      {
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (BSDName)
        {
          v13 = BSDName;
          if (CFEqual(a2, BSDName))
          {
            if (v8)
            {
              v14 = SCNetworkSetRemoveService(a1[1], ValueAtIndex);
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v15 = _os_log_pack_size();
                v39 = v14;
                v40 = &v36;
                __chkstk_darwin(v15, v16, v17);
                v18 = *__error();
                v19 = _os_log_pack_fill();
                *v19 = v38;
                v20 = "SUCCESS";
                if (!v39)
                {
                  v20 = "FAILED";
                }

                *(v19 + 4) = "ensureDefaultServiceExistsForInterface";
                *(v19 + 12) = 2112;
                *(v19 + 14) = ValueAtIndex;
                *(v19 + 22) = 2112;
                *(v19 + 24) = v13;
                *(v19 + 32) = 2080;
                *(v19 + 34) = v20;
                a2 = v37;
                __SC_log_send();
              }
            }

            else
            {
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v21 = _os_log_pack_size();
                v40 = &v36;
                __chkstk_darwin(v21, v22, v23);
                v24 = *__error();
                v25 = _os_log_pack_fill();
                *v25 = v36;
                *(v25 + 4) = "ensureDefaultServiceExistsForInterface";
                *(v25 + 12) = 2112;
                *(v25 + 14) = ValueAtIndex;
                *(v25 + 22) = 2112;
                *(v25 + 24) = v13;
                __SC_log_send();
              }

              v8 = ValueAtIndex;
            }
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    if (!v8)
    {
LABEL_21:
      sub_1000622A4(a1, a2);
      return;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136315394;
    *(v30 + 4) = "ensureDefaultServiceExistsForInterface";
    *(v30 + 12) = 2112;
    *(v30 + 14) = a2;
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v31 = _os_log_pack_size();
    __chkstk_darwin(v31, v32, v33);
    v34 = *__error();
    v35 = _os_log_pack_fill();
    *v35 = 136315138;
    *(v35 + 4) = "ensureDefaultServiceExistsForInterface";
  }

  __SC_log_send();
}

uint64_t sub_100061B4C(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef theArray, const void *a5)
{
  v73 = a2;
  v74 = a3;
  v75 = a1;
  Count = CFArrayGetCount(theArray);
  __chkstk_darwin(Count, v8, v9);
  v11 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 >= 0x200)
  {
    v12 = 512;
  }

  else
  {
    v12 = v10;
  }

  bzero(&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v76 = theArray;
  v13 = CFArrayGetCount(theArray);
  v15 = v13;
  if (!a5)
  {
    if (v13 < 1)
    {
      return sub_100062730(v75, v11, 0);
    }

    v16 = 0;
    v43 = 0;
    *&v14 = 136315138;
    v71 = v14;
    *&v14 = 136315394;
    v72 = v14;
    *&v14 = 136315650;
    v70 = v14;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v76, v43);
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v45 = _os_log_pack_size();
        __chkstk_darwin(v45, v46, v47);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        *v49 = v72;
        *(v49 + 4) = "insertCategoryServices";
        *(v49 + 12) = 2112;
        *(v49 + 14) = ValueAtIndex;
        __SC_log_send();
      }

      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (Interface)
      {
        v51 = Interface;
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (BSDName)
        {
          v53 = BSDName;
          if (v16 < 1)
          {
LABEL_32:
            v11[v16] = v53;
            sub_10005E6F8();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v55 = _os_log_pack_size();
              __chkstk_darwin(v55, v56, v57);
              v58 = *__error();
              v59 = _os_log_pack_fill();
              *v59 = v70;
              *(v59 + 4) = "insertCategoryServices";
              *(v59 + 12) = 2112;
              *(v59 + 14) = v53;
              *(v59 + 22) = 1024;
              *(v59 + 24) = v16 + 1;
              __SC_log_send();
            }

            ++v16;
          }

          else
          {
            v54 = 0;
            while (!CFEqual(v11[v54], v53))
            {
              if (v16 == ++v54)
              {
                goto LABEL_32;
              }
            }
          }

          goto LABEL_40;
        }

        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v65 = _os_log_pack_size();
          __chkstk_darwin(v65, v66, v67);
          v68 = *__error();
          v69 = _os_log_pack_fill();
          *v69 = v72;
          *(v69 + 4) = "insertCategoryServices";
          *(v69 + 12) = 2112;
          *(v69 + 14) = v51;
          goto LABEL_39;
        }
      }

      else
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v60 = _os_log_pack_size();
          __chkstk_darwin(v60, v61, v62);
          v63 = *__error();
          v64 = _os_log_pack_fill();
          *v64 = v71;
          *(v64 + 4) = "insertCategoryServices";
LABEL_39:
          __SC_log_send();
        }
      }

LABEL_40:
      if (++v43 == v15)
      {
        goto LABEL_6;
      }
    }
  }

  *v11 = a5;
  v16 = 1;
LABEL_6:
  result = sub_100062730(v75, v11, v16);
  if (v15 >= 1)
  {
    v19 = 0;
    *&v18 = 136315650;
    v72 = v18;
    *&v18 = 136315394;
    v71 = v18;
    while (1)
    {
      v20 = CFArrayGetValueAtIndex(v76, v19);
      ServiceQoSMarkingPolicy = SCNetworkCategoryGetServiceQoSMarkingPolicy();
      v22 = SCNetworkSetAddService(*(v75 + 8), v20);
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (v22)
      {
        break;
      }

      if (result)
      {
        v36 = _os_log_pack_size();
        __chkstk_darwin(v36, v37, v38);
        v39 = *__error();
        v40 = _os_log_pack_fill();
        v41 = SCError();
        v42 = SCErrorString(v41);
        *v40 = v72;
        *(v40 + 4) = "insertCategoryServices";
        *(v40 + 12) = 2112;
        *(v40 + 14) = v20;
        *(v40 + 22) = 2080;
        *(v40 + 24) = v42;
LABEL_19:
        result = __SC_log_send();
      }

LABEL_20:
      if (v15 == ++v19)
      {
        return result;
      }
    }

    if (result)
    {
      v23 = _os_log_pack_size();
      __chkstk_darwin(v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = v71;
      *(v27 + 4) = "insertCategoryServices";
      *(v27 + 12) = 2112;
      *(v27 + 14) = v20;
      __SC_log_send();
    }

    result = SCNetworkServiceGetInterface(v20);
    if (!result)
    {
      goto LABEL_20;
    }

    if (!ServiceQoSMarkingPolicy)
    {
      goto LABEL_20;
    }

    v28 = result;
    v29 = SCNetworkInterfaceSetQoSMarkingPolicy();
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_20;
    }

    v30 = _os_log_pack_size();
    __chkstk_darwin(v30, v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = v72;
    v35 = "";
    if (!v29)
    {
      v35 = "FAILED to ";
    }

    *(v34 + 4) = "insertCategoryServices";
    *(v34 + 12) = 2080;
    *(v34 + 14) = v35;
    *(v34 + 22) = 2112;
    *(v34 + 24) = v28;
    goto LABEL_19;
  }

  return result;
}

void sub_1000622A4(SCPreferencesRef *a1, uint64_t a2)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136315394;
    *(v8 + 4) = "establishServiceForInterface";
    *(v8 + 12) = 2112;
    *(v8 + 14) = a2;
    __SC_log_send();
  }

  v9 = _SCNetworkInterfaceCreateWithBSDName();
  if (v9)
  {
    v10 = v9;
    v11 = SCNetworkServiceCreate(*a1, v9);
    v12 = _SC_copyInterfaceUUID();
    if (v12)
    {
      v13 = v12;
      if (!_SCNetworkServiceSetServiceID())
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          __chkstk_darwin(v14, v15, v16);
          v17 = *__error();
          v18 = _os_log_pack_fill();
          *v18 = 136315394;
          *(v18 + 4) = "establishServiceForInterface";
          *(v18 + 12) = 2112;
          *(v18 + 14) = a2;
          __SC_log_send();
        }
      }

      CFRelease(v13);
    }

    if (SCNetworkServiceEstablishDefaultConfiguration(v11))
    {
      if (SCNetworkSetAddService(a1[1], v11))
      {
        goto LABEL_17;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_17:
        CFRelease(v11);
        CFRelease(v10);
        return;
      }
    }

    v24 = _os_log_pack_size();
    __chkstk_darwin(v24, v25, v26);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    v29 = SCError();
    v30 = SCErrorString(v29);
    *v28 = 136315650;
    *(v28 + 4) = "establishServiceForInterface";
    *(v28 + 12) = 2112;
    *(v28 + 14) = a2;
    *(v28 + 22) = 2080;
    *(v28 + 24) = v30;
    __SC_log_send();
    goto LABEL_17;
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "establishServiceForInterface";
    *(v23 + 12) = 2112;
    *(v23 + 14) = a2;
    __SC_log_send();
  }
}

uint64_t sub_100062730(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    result = CFArrayGetCount(v4);
    if (result >= 1)
    {
      v9 = result;
      v10 = 0;
      *&v8 = 136315906;
      v27 = v8;
      v28 = v3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v10);
        result = SCNetworkServiceGetInterface(ValueAtIndex);
        if (result)
        {
          result = SCNetworkInterfaceGetBSDName(result);
          if (a3 >= 1)
          {
            v12 = result;
            if (result)
            {
              result = CFEqual(*a2, result);
              if (result)
              {
                goto LABEL_12;
              }

              v13 = 1;
              do
              {
                v14 = v13;
                if (a3 == v13)
                {
                  break;
                }

                result = CFEqual(a2[v13], v12);
                v13 = v14 + 1;
              }

              while (!result);
              if (v14 < a3)
              {
LABEL_12:
                v15 = SCNetworkSetRemoveService(*(v3 + 8), ValueAtIndex);
                sub_10005E6F8();
                _SC_syslog_os_log_mapping();
                result = __SC_log_enabled();
                if (result)
                {
                  v16 = _os_log_pack_size();
                  v30 = &v27;
                  __chkstk_darwin(v16, v17, v18);
                  v29 = v15;
                  v19 = *__error();
                  v3 = v28;
                  v20 = _os_log_pack_fill();
                  *v20 = v27;
                  v21 = "SUCCESS";
                  if (!v29)
                  {
                    v21 = "FAILED";
                  }

                  *(v20 + 4) = "removeServicesForInterfaces";
                  *(v20 + 12) = 2112;
                  *(v20 + 14) = ValueAtIndex;
                  *(v20 + 22) = 2112;
                  *(v20 + 24) = v12;
                  *(v20 + 32) = 2080;
                  *(v20 + 34) = v21;
                  result = __SC_log_send();
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v22 = _os_log_pack_size();
      __chkstk_darwin(v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      *v26 = 136315138;
      *(v26 + 4) = "removeServicesForInterfaces";
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100062A18(const __SCPreferences *a1, const void *a2, const __CFDictionary *a3)
{
  v3 = a3;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a3, kSCResvLink, &value) && (v3 = SCPreferencesPathGetValue(a1, value)) == 0)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = value;
      v15 = SCError();
      v16 = SCErrorString(v15);
      *v13 = 138412546;
      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v16;
      __SC_log_send();
    }
  }

  else if (!CFDictionaryContainsKey(v3, kSCResvInactive))
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@%@", kSCDynamicStoreDomainSetup, a2);
    v7 = CFDictionaryGetValue(qword_100081CD8, v6);
    if (v7)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v17 = MutableCopy;
    Count = CFDictionaryGetCount(v3);
    if (Count >= 1)
    {
      v19 = Count;
      v28 = v6;
      Typed = CFAllocatorAllocateTyped();
      v21 = CFAllocatorAllocateTyped();
      CFDictionaryGetKeysAndValues(v3, Typed, v21);
      for (i = 0; i != v19; ++i)
      {
        v23 = v21[i];
        TypeID = CFDictionaryGetTypeID();
        if (v23 && CFGetTypeID(v23) == TypeID)
        {
          v25 = CFEqual(a2, @"/");
          v26 = "";
          if (!v25)
          {
            v26 = "/";
          }

          v27 = CFStringCreateWithFormat(0, 0, @"%@%s%@", a2, v26, Typed[i]);
          sub_100062A18(a1, v27, v21[i]);
          CFRelease(v27);
        }

        else
        {
          CFDictionarySetValue(v17, Typed[i], v21[i]);
        }
      }

      CFAllocatorDeallocate(0, Typed);
      CFAllocatorDeallocate(0, v21);
      v6 = v28;
    }

    if (CFDictionaryGetCount(v17) >= 1)
    {
      CFDictionarySetValue(qword_100081CD8, v6, v17);
    }

    CFRelease(v17);
    CFRelease(v6);
  }
}

void sub_100062D94(void *key, const void *a2)
{
  Value = CFDictionaryGetValue(qword_100081CC0, key);
  if (Value && CFEqual(Value, a2))
  {
    CFArrayAppendValue(qword_100081CC8, key);
  }

  v5 = qword_100081CD0;
  v10.length = CFArrayGetCount(qword_100081CD0);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v10, key);
  if (FirstIndexOfValue != -1)
  {
    v7 = FirstIndexOfValue;
    v8 = qword_100081CD0;

    CFArrayRemoveValueAtIndex(v8, v7);
  }
}

uint64_t sub_100062E94(const __CFArray *a1, CFTypeRef *a2, CFArrayRef *a3)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (*a3)
  {
    Count = CFArrayGetCount(*a3);
    CFRelease(*a3);
    *a3 = 0;
    v28 = Count > 0;
  }

  else
  {
    v28 = 0;
  }

  if (!a1 || (v31 = CFArrayGetCount(a1), v31 < 1))
  {
    v29 = 0;
    goto LABEL_29;
  }

  v29 = 0;
  v7 = 0;
  v30 = a1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    v9 = 10;
    while (1)
    {
      if (v9 != 10)
      {
        usleep(0x4E20u);
      }

      v10 = _SCNetworkInterfaceCreateWithBSDName();
      if (!v10)
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v17 = _os_log_pack_size();
          __chkstk_darwin(v17, v18, v19);
          v20 = *__error();
          v21 = _os_log_pack_fill();
          *v21 = 138412290;
          *(v21 + 4) = ValueAtIndex;
          __SC_log_send();
        }

        goto LABEL_19;
      }

      v11 = v10;
      if (_SCNetworkInterfaceGetIOPath())
      {
        break;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 138412290;
        *(v16 + 4) = ValueAtIndex;
        __SC_log_send();
      }

      CFRelease(v11);
LABEL_19:
      if (!--v9)
      {
        a1 = v30;
        goto LABEL_26;
      }
    }

    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, ValueAtIndex);
    v23 = *a2;
    a1 = v30;
    if (!*a2)
    {
      v23 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      *a2 = v23;
    }

    CFArrayAppendValue(v23, v11);
    CFRelease(v11);
    v29 = 1;
LABEL_26:
    ++v7;
  }

  while (v7 != v31);
LABEL_29:
  if (*a3)
  {
    v24 = CFArrayGetCount(*a3) == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v28 || !v24;
  v26 = v29;
  if (!v25)
  {
    return 1;
  }

  return v26;
}

void sub_1000631F0(const __SCPreferences *a1)
{
  for (i = a1; ; a1 = i)
  {
    if (SCPreferencesLock(a1, 1u))
    {
      Value = SCPreferencesGetValue(i, @"Model");
      v4 = _SC_hw_model();
      if (Value)
      {
        v5 = v4;
        if (Value != v4 && (!v4 || !CFEqual(Value, v4)))
        {
          sub_10005E6F8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v6 = _os_log_pack_size();
            __chkstk_darwin(v6, v7, v8);
            v9 = *__error();
            v10 = _os_log_pack_fill();
            *v10 = 138412546;
            *(v10 + 4) = Value;
            *(v10 + 12) = 2112;
            *(v10 + 14) = v5;
            __SC_log_send();
          }

          sub_10005F9DC(i);
        }
      }

      v11 = SCNetworkSetCopyCurrent(i);
      Default = v11;
      if (v11 || (Default = _SCNetworkSetCreateDefault()) != 0)
      {
        if (SCNetworkSetEstablishDefaultConfiguration())
        {
          if (SCPreferencesCommitChanges(i))
          {
            sub_10005E6F8();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v13 = _os_log_pack_size();
              __chkstk_darwin(v13, v14, v15);
              v16 = *__error();
              *_os_log_pack_fill() = 0;
              __SC_log_send();
            }

            goto LABEL_24;
          }

          v25 = SCError();
          if (v25 == 30)
          {
            byte_100081CA8 = 1;
LABEL_24:
            SCPreferencesApplyChanges(i);
            SCPreferencesUnlock(i);
LABEL_34:
            CFRelease(Default);
            return;
          }

          v17 = v25;
          SCPreferencesApplyChanges(i);
        }

        else
        {
          v17 = SCError();
          if (!v11)
          {
            SCNetworkSetRemove(Default);
          }
        }
      }

      else
      {
        v17 = SCError();
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      v26 = __SC_log_enabled();
      if (v17)
      {
        if (!v26)
        {
          goto LABEL_33;
        }

        v27 = _os_log_pack_size();
        __chkstk_darwin(v27, v28, v29);
        v30 = *__error();
        v31 = _os_log_pack_fill();
        v32 = SCErrorString(v17);
        *v31 = 136315138;
        *(v31 + 4) = v32;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_33;
        }

        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35);
        v36 = *__error();
        *_os_log_pack_fill() = 0;
      }

      __SC_log_send();
LABEL_33:
      SCPreferencesUnlock(i);
      if (!Default)
      {
        return;
      }

      goto LABEL_34;
    }

    v2 = SCError();
    if (v2 != 3005)
    {
      break;
    }

    SCPreferencesSynchronize(i);
  }

  v18 = v2;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    v24 = SCErrorString(v18);
    *v23 = 136315138;
    *(v23 + 4) = v24;
    __SC_log_send();
  }
}

id sub_1000636BC()
{
  v0 = qword_100081D30;
  if (!qword_100081D30)
  {
    v1 = os_log_create("com.apple.SystemConfiguration", "QoSMarking");
    v2 = qword_100081D30;
    qword_100081D30 = v1;

    v0 = qword_100081D30;
  }

  return v0;
}

void sub_100065CFC(id a1)
{
  qword_100081D38 = objc_alloc_init(QoSMarkingController);

  _objc_release_x1();
}

void sub_100066630(__CFBundle *a1)
{
  v2 = sub_1000636BC();
  v3 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0uLL;
    v35 = 0uLL;
    os_log_type_enabled(v2, v3);
    v4 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v4 != &v34)
    {
      free(v4);
    }
  }

  v5 = sub_1000636BC();
  v6 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0uLL;
    v35 = 0uLL;
    os_log_type_enabled(v5, v6);
    v7 = v5;
    CFBundleGetIdentifier(a1);
    v8 = _os_log_send_and_compose_impl();

    __SC_log_send2();
    if (v8 != &v34)
    {
      free(v8);
    }
  }

  if (objc_opt_class())
  {
    qword_100081D48 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    TypeID = CFDictionaryGetTypeID();
    if (InfoDictionary && CFGetTypeID(InfoDictionary) == TypeID)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"QoSMarking_AppleAudioVideoCalls_BundleIDs");
      v12 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v12)
        {
          v13 = Value;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(&qword_100081D20, v13);
      v14 = CFDictionaryGetValue(InfoDictionary, @"QoSMarking_AppleAudioVideoCalls_ExecutablePaths");
      v15 = CFArrayGetTypeID();
      if (v14)
      {
        if (CFGetTypeID(v14) == v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(&qword_100081D28, v16);
    }

    v17 = SCDynamicStoreCreate(0, @"QoS Marking Configuraton plug-in", sub_100066D44, 0);
    if (v17)
    {
      v18 = v17;
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v20 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(Mutable, qword_100081D48);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetQoSMarkingPolicy);
      CFArrayAppendValue(v20, NetworkInterfaceEntity);
      CFRelease(NetworkInterfaceEntity);
      LODWORD(NetworkInterfaceEntity) = SCDynamicStoreSetNotificationKeys(v18, Mutable, v20);
      CFRelease(Mutable);
      CFRelease(v20);
      if (!NetworkInterfaceEntity)
      {
        v25 = sub_1000636BC();
        v26 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }

      v22 = qword_100081D68;
      if (!qword_100081D68)
      {
        v23 = dispatch_queue_create("com.apple.SystemConfiguration.QoSMarking", 0);
        v24 = qword_100081D68;
        qword_100081D68 = v23;

        v22 = qword_100081D68;
      }

      if (!SCDynamicStoreSetDispatchQueue(v18, v22))
      {
        v25 = sub_1000636BC();
        v26 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_33:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0uLL;
          v35 = 0uLL;
          os_log_type_enabled(v25, v26);
          v25 = v25;
          v32 = SCError();
          SCErrorString(v32);
          v33 = _os_log_send_and_compose_impl();

          __SC_log_send2();
          if (v33 != &v34)
          {
            free(v33);
          }
        }

LABEL_35:

        CFRelease(v18);
      }
    }

    else
    {
      v27 = sub_1000636BC();
      v28 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0uLL;
        v35 = 0uLL;
        os_log_type_enabled(v27, v28);
        v29 = v27;
        v30 = SCError();
        SCErrorString(v30);
        v31 = _os_log_send_and_compose_impl();

        __SC_log_send2();
        if (v31 != &v34)
        {
          free(v31);
        }
      }
    }
  }
}

void sub_100066D44(SCDynamicStoreRef store, CFArrayRef keys)
{
  if (!qword_100081D60)
  {
    qword_100081D60 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompInterface);
  }

  v4 = SCDynamicStoreCopyMultiple(store, keys, 0);
  Count = CFArrayGetCount(keys);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    v28 = kSCPropNetQoSMarkingWhitelistedAppIdentifiers;
    v27 = kSCPropNetQoSMarkingAllowListAppIdentifiers;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(keys, v7);
      if (CFEqual(ValueAtIndex, qword_100081D48))
      {
        if (v4)
        {
          Value = CFDictionaryGetValue(v4, ValueAtIndex);
          TypeID = CFDictionaryGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == TypeID)
            {
              v11 = CFDictionaryGetValue(Value, kSCPropNetInterfaces);
              v12 = CFArrayGetTypeID();
              if (v11)
              {
                if (CFGetTypeID(v11) == v12)
                {
                  v13 = objc_autoreleasePoolPush();
                  v14 = +[QoSMarkingController sharedController];
                  [v14 setInterfaces:v11];

                  objc_autoreleasePoolPop(v13);
                }
              }
            }
          }
        }

        else
        {
          CFDictionaryGetTypeID();
        }
      }

      else
      {
        v15 = qword_100081D60;
        if (CFStringHasPrefix(ValueAtIndex, qword_100081D60))
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, ValueAtIndex);
          v30.length = CFStringGetLength(v15);
          v30.location = 0;
          CFStringDelete(MutableCopy, v30);
          location = CFStringFind(MutableCopy, @"/", 0).location;
          if (location != -1)
          {
            v18 = location;
            v31.length = CFStringGetLength(MutableCopy) - location;
            v31.location = v18;
            CFStringDelete(MutableCopy, v31);
          }

          if (MutableCopy)
          {
            if (v4)
            {
              v19 = CFDictionaryGetValue(v4, ValueAtIndex);
              v20 = v19;
              if (v19)
              {
                v21 = CFDictionaryGetValue(v19, v28);
                if (v21)
                {
                  v22 = v21;
                  v23 = CFDictionaryGetValue(v20, v27);
                  v24 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v20);
                  v20 = v24;
                  if (!v23)
                  {
                    CFDictionarySetValue(v24, v27, v22);
                  }

                  CFDictionaryRemoveValue(v20, v28);
                }

                else
                {
                  CFRetain(v20);
                }
              }
            }

            else
            {
              v20 = 0;
            }

            v25 = objc_autoreleasePoolPush();
            v26 = +[QoSMarkingController sharedController];
            [v26 setPolicy:v20 forInterface:MutableCopy];

            objc_autoreleasePoolPop(v25);
            if (v20)
            {
              CFRelease(v20);
            }

            CFRelease(MutableCopy);
          }
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_100067124(const char *a1, int a2)
{
  v11 = a2;
  if (sysctlbyname(a1, 0, 0, &v11, 4uLL) != -1)
  {
    v3 = sub_1000636BC();
    v4 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_10;
    }

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
    os_log_type_enabled(v3, v4);
    v12 = 136315394;
    v13 = a1;
    v14 = 1024;
    v15 = v11;
    v5 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v5 == &v16)
    {
      goto LABEL_10;
    }

    v6 = v5;
    goto LABEL_9;
  }

  if (*__error() == 2)
  {
    return;
  }

  v3 = sub_1000636BC();
  v7 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
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
    os_log_type_enabled(v3, v7);
    v3 = v3;
    v8 = __error();
    v9 = strerror(*v8);
    v12 = 136315138;
    v13 = v9;
    v10 = _os_log_send_and_compose_impl();

    __SC_log_send2();
    if (v10 != &v16)
    {
      v6 = v10;
LABEL_9:
      free(v6);
    }
  }

LABEL_10:
}

void sub_10006745C()
{

  dispatch_once(&qword_100081758, &stru_100079B58);
}

void sub_1000674F0()
{

  dispatch_once(&qword_100081798, &stru_100079DA8);
}

void sub_100067558()
{

  dispatch_once(&qword_100081788, &stru_100079D68);
}

void sub_1000675C0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cleanup : %5u", v2, 8u);
}

void sub_100067664(int *a1, uint64_t *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2112;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "open    : %5u : %@", v5, 0x12u);
}

void sub_1000676F4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "close   : %5u", v3, 8u);
}

void sub_100067770(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 44);
  v4 = *(a1 + 40);
  v6 = 136315650;
  if (v3)
  {
    v5 = "t ";
  }

  else
  {
    v5 = "  ";
  }

  v7 = v5;
  v8 = 1024;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "add  %s : %5u : %@", &v6, 0x1Cu);
}

void sub_100067824(uint64_t a1)
{
  v1 = *(*(*a1 + 56) + 40);
  sub_100024594();
  sub_1000245AC(&_mh_execute_header, v2, v3, "*copy   : %5u : %@");
}

void sub_100067898(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100024594();
  sub_1000245AC(&_mh_execute_header, v2, v3, "*copy   : %5u : %@");
}

void sub_10006798C()
{

  dispatch_once(&qword_1000818B8, &stru_10007A5B0);
}

void sub_100067B04()
{

  dispatch_once(&qword_100081898, &stru_10007A510);
}

void sub_100067BF0()
{

  dispatch_once(&qword_100081928, &stru_10007A730);
}

void sub_100067D10()
{

  dispatch_once(&qword_100081950, &stru_10007A860);
}

void sub_100067DFC()
{
  sub_1000471E4();

  dispatch_once(&qword_100081AD8, &stru_10007ACD0);
}

void sub_100067EBC()
{
  sub_1000471E4();

  dispatch_once(&qword_100081AE8, &stru_10007AD10);
}

void sub_1000680B4()
{

  dispatch_once(&qword_100081B58, &stru_10007AF00);
}

void sub_1000681D0()
{

  dispatch_once(&qword_100081B98, &stru_10007AFA0);
}

void sub_100068294()
{

  dispatch_once(&qword_100081BC0, &stru_10007B0A0);
}

void sub_1000682FC()
{

  dispatch_once(&qword_100081BD8, &stru_10007B190);
}

void sub_100068364()
{

  dispatch_once(&qword_100081BF0, &stru_10007B230);
}

void sub_1000683F8()
{

  dispatch_once(&qword_100081D58, &stru_10007B3F8);
}

void sub_100068460()
{

  dispatch_once(&qword_100081D40, &stru_10007B3D8);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}