uint64_t unpublish_dict(CFStringRef entity)
{
  if (!cfgCache)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v2 = NetworkServiceEntity;
  if (publish_dict)
  {
    CFDictionaryRemoveValue(publish_dict, NetworkServiceEntity);
  }

  v3 = SCDynamicStoreRemoveValue(cfgCache, v2) == 0;
  CFRelease(v2);
  return v3;
}

uint64_t sif6addr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = socket(30, 2, 0);
  if (v5 < 0)
  {
    error("Can't create IPv6 socket: %m", v6, v7, v8, v9, v10, v11, v12, v30);
  }

  else
  {
    v13 = v5;
    if (if_nametoindex(&ifname))
    {
      memset(v41, 0, sizeof(v41));
      __strlcpy_chk();
      v31 = v41;
      if (ioctl(v13, 0xC080696EuLL) < 0)
      {
        v29 = "sif6addr: can't attach IPv6 protocol: %m";
      }

      else
      {
        v38 = 0u;
        v39 = 0;
        *&v35[16] = 0u;
        v34 = 0u;
        *v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        __strlcpy_chk();
        LOWORD(v33) = 7708;
        WORD4(v33) = -32514;
        *&v34 = a2;
        WORD5(v33) = htons();
        WORD6(v34) = 7708;
        *&v35[4] = __PAIR32__(WORD5(v33), -32514);
        *&v35[12] = a3;
        *&v35[24] = 7708;
        v36 = -1;
        v37 = -1;
        v40 = -1;
        v31 = &v32;
        if ((ioctl(v13, 0xC0806982uLL) & 0x80000000) == 0)
        {
          close(v13);
          return 1;
        }

        v29 = "sif6addr: can't set LL address: %m";
      }

      error(v29, v21, v22, v23, v24, v25, v26, v27, v31);
    }

    else
    {
      error("sifaddr6: no interface %s", v14, v15, v16, v17, v18, v19, v20, &ifname);
    }

    close(v13);
  }

  return 0;
}

uint64_t cif6addr()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    error("Can't create IPv6 socket: %m", v1, v2, v3, v4, v5, v6, v7, v24);
  }

  else
  {
    v8 = v0;
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    __strlcpy_chk();
    if ((ioctl(v8, 0xC0206951uLL, v26) & 0x80000000) == 0)
    {
      close(v8);
      return 1;
    }

    __strlcpy_chk();
    if (ioctl(v8, 0xC1206983uLL) < 0)
    {
      warning("Can't stop LL address: %m", v10, v11, v12, v13, v14, v15, v16, v25);
    }

    __strlcpy_chk();
    if (ioctl(v8, 0xC120696FuLL) < 0)
    {
      warning("Can't detach IPv6 protocol: %m", v17, v18, v19, v20, v21, v22, v23, v25);
    }

    close(v8);
  }

  return 0;
}

uint64_t ether_to_eui64(uint64_t a1)
{
  v2 = IOServiceMatching("IOEthernetInterface");
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetValue(Mutable, @"IOPrimaryInterface", kCFBooleanTrue);
      CFDictionarySetValue(v2, @"IOPropertyMatch", v4);
      CFRelease(v4);
    }
  }

  *existing = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v2, existing);
  if (MatchingServices)
  {
    ParentEntry = MatchingServices;
LABEL_6:
    warning("Can't get hardware interface address for en0 (error = %d)\n", v6, v7, v8, v9, v10, v11, v12, ParentEntry);
    return 0;
  }

  v22 = 0;
  *buffer = 0;
  v15 = IOIteratorNext(existing[0]);
  if (v15)
  {
    v16 = v15;
    do
    {
      ParentEntry = IORegistryEntryGetParentEntry(v16, "IOService", &existing[1]);
      if (!ParentEntry)
      {
        CFProperty = IORegistryEntryCreateCFProperty(existing[1], @"IOMACAddress", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v18 = CFProperty;
          v24.location = 0;
          v24.length = 6;
          CFDataGetBytes(CFProperty, v24, buffer);
          CFRelease(v18);
        }

        IOObjectRelease(existing[1]);
      }

      IOObjectRelease(v16);
      v16 = IOIteratorNext(existing[0]);
    }

    while (v16);
    IOObjectRelease(existing[0]);
    if (ParentEntry)
    {
      goto LABEL_6;
    }
  }

  else
  {
    IOObjectRelease(existing[0]);
  }

  if (*buffer == dword_10004B84D && v22 == word_10004B851)
  {
    return 0;
  }

  if (*buffer == dword_100045298 && v22 == word_10004529C)
  {
    return 0;
  }

  *a1 = buffer[0] | 2;
  *(a1 + 1) = *&buffer[1];
  *(a1 + 3) = -257;
  *(a1 + 5) = buffer[3];
  *(a1 + 6) = v22;
  return 1;
}

void ppp_create_ipv6_dummy_primary(int a1)
{
  valuePtr = 1;
  if (noipv6override)
  {
    v1 = 1;
  }

  else
  {
    v1 = cfgCache == 0;
  }

  if (!v1 && serviceidRef != 0)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv6);
    if (NetworkServiceEntity)
    {
      v5 = NetworkServiceEntity;
      if (a1)
      {
        unpublish_dict(NetworkServiceEntity);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v7 = Mutable;
          v8 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
          if (v8)
          {
            v9 = v8;
            CFArrayAppendValue(v8, @"::1");
            CFDictionarySetValue(v7, kSCPropNetIPv6Addresses, v9);
            CFRelease(v9);
          }

          CFDictionarySetValue(v7, kSCPropNetIPv6Router, @"::1");
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(v7, kSCPropNetOverridePrimary, v10);
            CFRelease(v11);
          }

          CFDictionarySetValue(v7, @"IsNULL", kCFBooleanTrue);
          v12 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
          if (v12)
          {
            v13 = v12;
            CFDictionarySetValue(v7, kSCPropInterfaceName, v12);
            CFRelease(v13);
          }

          sub_100019DA0(v5, v7);
          CFRelease(v7);
        }
      }

      CFRelease(v5);
    }
  }
}

BOOL sub_100019DA0(CFStringRef key, CFPropertyListRef value)
{
  if (demand)
  {
    v4 = SCDynamicStoreSetValue(cfgCache, key, value) != 0;
  }

  else
  {
    v4 = 1;
  }

  if (!publish_dict)
  {
    return 0;
  }

  CFDictionarySetValue(publish_dict, key, value);
  return v4;
}

uint64_t sifdefaultroute()
{
  byte_10004B858 = 1;
  ppp_create_ipv6_dummy_primary(0);

  return publish_dictnumentry(kSCEntNetIPv4, kSCPropNetOverridePrimary, 1);
}

uint64_t publish_dns_wins_entry(CFStringRef entity, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, void *key, void *value, int a11)
{
  if (publish_dict | cfgCache)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
    if (NetworkServiceEntity)
    {
      v19 = NetworkServiceEntity;
      if (publish_dict)
      {
        v20 = CFDictionaryGetValue(publish_dict, NetworkServiceEntity);
        if (v20)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v20);
          goto LABEL_11;
        }
      }

      else
      {
        v20 = SCDynamicStoreCopyValue(cfgCache, NetworkServiceEntity);
        if (v20)
        {
          v23 = v20;
          v24 = CFDictionaryCreateMutableCopy(0, 0, v20);
          CFRelease(v23);
          if (v24)
          {
            goto LABEL_12;
          }

          goto LABEL_9;
        }
      }

      MutableCopy = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_11:
      v24 = MutableCopy;
      if (MutableCopy)
      {
LABEL_12:
        v25 = CFGetTypeID(v24);
        if (v25 != CFDictionaryGetTypeID())
        {
          goto LABEL_46;
        }

        if (a11 || (v33 = CFDictionaryGetValue(v24, a2)) == 0)
        {
          cf = 0;
        }

        else
        {
          v34 = v33;
          v50 = CFGetTypeID(v33);
          cf = v34;
          if (v50 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v34);
            v26 = CFArrayCreateMutableCopy(0, Count + 1, v34);
LABEL_16:
            v27 = v26;
            if (v26)
            {
              CFArrayAppendValue(v26, a3);
              if (a4)
              {
                CFArrayAppendValue(v27, a4);
              }

              CFDictionarySetValue(v24, a2, v27);
              CFRelease(v27);
              if (a5)
              {
                v28 = cf;
                v29 = a11;
                if (!a11)
                {
                  v28 = CFDictionaryGetValue(v24, a5);
                }

                if (v28 && (v30 = CFGetTypeID(v28), v30 == CFArrayGetTypeID()))
                {
                  v31 = CFArrayGetCount(v28);
                  Mutable = CFArrayCreateMutableCopy(0, v31 + 1, v28);
                }

                else
                {
                  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                }

                v36 = Mutable;
                if (!Mutable)
                {
                  goto LABEL_46;
                }

                CFArrayAppendValue(Mutable, a6);
                CFDictionarySetValue(v24, a5, v36);
                CFRelease(v36);
              }

              else
              {
                v28 = cf;
                v29 = a11;
              }

              if (a7)
              {
                if (!v29)
                {
                  v28 = CFDictionaryGetValue(v24, a7);
                }

                if (v28 && (v37 = CFGetTypeID(v28), v37 == CFArrayGetTypeID()))
                {
                  v38 = CFArrayGetCount(v28);
                  v39 = CFArrayCreateMutableCopy(0, v38 + 1, v28);
                }

                else
                {
                  v39 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                }

                v40 = v39;
                if (!v39)
                {
                  goto LABEL_46;
                }

                CFArrayAppendValue(v39, a8);
                CFDictionarySetValue(v24, a7, v40);
                CFRelease(v40);
              }

              if (key)
              {
                CFDictionarySetValue(v24, key, value);
              }

              if (sub_100019DA0(v19, v24))
              {
                v22 = 1;
LABEL_47:
                CFRelease(v19);
                goto LABEL_48;
              }

              v41 = SCError();
              SCErrorString(v41);
              warning("SCDynamicStoreSetValue DNS/WINS %s failed: %s\n", v42, v43, v44, v45, v46, v47, v48, &ifname);
            }

LABEL_46:
            v22 = 0;
            goto LABEL_47;
          }
        }

        v26 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
        goto LABEL_16;
      }

LABEL_9:
      v22 = 0;
      v24 = v19;
LABEL_48:
      CFRelease(v24);
      return v22;
    }
  }

  return 0;
}

uint64_t sifdns(unsigned int a1, unsigned int a2)
{
  valuePtr = 100000;
  v4 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithCString(0, &unk_10002F9F2, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      notify_post("com.apple.system.dns.delay");
      v8 = a1 & 0xFF000000 | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1;
      if (v8 && (v9 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1))) != 0)
      {
        v10 = v9;
        v11 = 0;
        v12 = a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2;
        if (v12 && v12 != v8)
        {
          v11 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
        }

        v13 = 1;
        if (publish_dns_wins_entry(kSCEntNetDNS, kSCPropNetDNSServerAddresses, v10, v11, kSCPropNetDNSSupplementalMatchDomains, v7, kSCPropNetDNSSupplementalMatchOrders, v5, kSCPropNetDNSConfirmedServiceID, serviceidRef, 1))
        {
          publish_dns_wins_entry(kSCEntNetProxies, kSCPropNetProxiesSupplementalMatchDomains, v7, 0, kSCPropNetProxiesSupplementalMatchOrders, v5, 0, 0, 0, 0, 1);
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v5);
        CFRelease(v10);
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
        v11 = v5;
      }

      CFRelease(v11);
    }

    else
    {
      v13 = 0;
      v7 = v5;
    }

LABEL_16:
    CFRelease(v7);
    return v13;
  }

  return 0;
}

uint64_t sifproxyarp(uint64_t a1, int a2)
{
  xmmword_10004B85C = 0u;
  *algn_10004B86C = 0u;
  xmmword_10004B87C = 0u;
  unk_10004B88C = 0u;
  xmmword_10004B89C = 0u;
  unk_10004B8AC = 0u;
  xmmword_10004B8BC = 0u;
  unk_10004B8CC = 0u;
  xmmword_10004B8DC = 0u;
  unk_10004B8EC = 0u;
  xmmword_10004B8FC = 0u;
  unk_10004B90C = 0u;
  xmmword_10004B91C = 0u;
  unk_10004B92C = 0u;
  xmmword_10004B93C = 0u;
  unk_10004B94C = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = 1024;
  v29 = &v30;
  v27 = &v28;
  if (ioctl(dword_10004B6BC, 0xC00C6924uLL) < 0)
  {
    error("ioctl(SIOCGIFCONF): %m", v3, v4, v5, v6, v7, v8, v9, &v28);
  }

  else if (v28 >= 1)
  {
    v10 = v29;
    v11 = &v29[v28];
    while (1)
    {
      if (v10[17] == 2)
      {
        v12 = *(v10 + 5);
        __strlcpy_chk();
        v27 = &v31;
        if ((ioctl(dword_10004B6BC, 0xC0206911uLL) & 0x80000000) == 0 && (v32 & 0x9B) == 3)
        {
          v27 = &v31;
          if ((ioctl(dword_10004B6BC, 0xC0206925uLL) & 0x80000000) == 0 && (DWORD1(v32) & (v12 ^ a2)) == 0)
          {
            break;
          }
        }
      }

      v10 += *(v10 + 16) + 16;
      if (v10 >= v11)
      {
        goto LABEL_12;
      }
    }

    info("found interface %s for proxy arp", v3, v4, v5, v6, v7, v8, v9, v10);
    for (i = v29; i < v11; i += *(i + 16) + 16)
    {
      if (!strcmp(v10, i) && i[17] == 18)
      {
        v17 = *(i + 16);
        __memcpy_chk();
        v18 = socket(17, 3, 17);
        if (v18 < 0)
        {
          v13 = "Couldn't add proxy arp entry: socket: %m";
          goto LABEL_13;
        }

        v19 = v18;
        *(&xmmword_10004B85C + 1) = 0x300004804;
        WORD1(xmmword_10004B85C) = 261;
        dword_10004B870 = ++dword_10004B95C;
        LODWORD(xmmword_10004B87C) = 4;
        word_10004B8B8 = 528;
        LODWORD(xmmword_10004B8BC) = a2;
        v14 = 1;
        WORD5(xmmword_10004B8BC) = 1;
        LOWORD(xmmword_10004B85C) = BYTE12(xmmword_10004B8BC) + 108;
        if ((write(v18, &xmmword_10004B85C, BYTE12(xmmword_10004B8BC) + 108) & 0x8000000000000000) == 0)
        {
          close(v19);
          byte_10004B960 = 1;
          dword_10004B7D0 = a2;
          return v14;
        }

        error("Couldn't add proxy arp entry: %m", v20, v21, v22, v23, v24, v25, v26, v27);
        close(v19);
        return 0;
      }
    }
  }

LABEL_12:
  v13 = "Cannot determine ethernet address for proxy ARP";
LABEL_13:
  error(v13, v3, v4, v5, v6, v7, v8, v9, v27);
  return 0;
}

uint64_t GetMask()
{
  v19 = 0u;
  v20 = 0u;
  v0 = ntohl();
  v1 = v0;
  if (v0 >> 30 == 2)
  {
    v2 = -65536;
  }

  else
  {
    v2 = -256;
  }

  if (v0 < 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -16777216;
  }

  v4 = netmask;
  v5 = htonl() | v4;
  v16 = 1024;
  v17 = &v18;
  if (ioctl(dword_10004B6BC, 0xC00C6924uLL) < 0)
  {
    warning("ioctl(SIOCGIFCONF): %m", v6, v7, v8, v9, v10, v11, v12, &v16);
  }

  else
  {
    v13 = v17;
    do
    {
      if (*(v13 + 17) == 2)
      {
        v14 = *(v13 + 20);
        if (((ntohl() ^ v1) & v3) == 0)
        {
          __strlcpy_chk();
          if ((ioctl(dword_10004B6BC, 0xC0206911uLL, &v19) & 0x80000000) == 0 && (v20 & 0x19) == 1 && (ioctl(dword_10004B6BC, 0xC0206925uLL, &v19) & 0x80000000) == 0)
          {
            v5 = DWORD1(v20) | v5;
          }
        }
      }

      v13 += 16 + *(v13 + 16);
    }

    while (v13 < &v17[v16]);
  }

  return v5;
}

uint64_t sys_loadplugin(_BYTE *a1)
{
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcpy_chk();
    __strlcat_chk();
  }

  v1 = strlen(__s);
  v2 = CFURLCreateFromFileSystemRepresentation(0, __s, v1, 1u);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = CFBundleCreate(0, v2);
  if (v4)
  {
    v5 = v4;
    if (CFBundleLoadExecutable(v4) && (FunctionPointerForName = CFBundleGetFunctionPointerForName(v5, @"start")) != 0)
    {
      v7 = FunctionPointerForName(v5);
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v7;
}

uint64_t sys_eaploadplugin(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcpy_chk();
    __strlcat_chk();
  }

  v3 = strlen(__s);
  v4 = CFURLCreateFromFileSystemRepresentation(0, __s, v3, 1u);
  if (v4)
  {
    v5 = v4;
    v6 = CFBundleCopyInfoDictionaryForURL(v4);
    if (v6)
    {
      v7 = v6;
      valuePtr = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      Value = CFDictionaryGetValue(v6, @"EAPType");
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
          *(a2 + 8) = valuePtr;
        }
      }

      v11 = CFDictionaryGetValue(v7, @"EAPName");
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          Length = CFStringGetLength(v12);
          v15 = malloc_type_malloc(Length + 1, 0xB223BAA2uLL);
          *(a2 + 16) = v15;
          if (v15)
          {
            v16 = v15;
            v17 = CFStringGetLength(v12);
            CFStringGetCString(v12, v16, v17 + 1, 0x8000100u);
          }
        }
      }

      CFRelease(v7);
      v18 = CFBundleCreate(0, v5);
      if (v18)
      {
        v19 = v18;
        if (CFBundleLoadExecutable(v18))
        {
          *(a2 + 40) = CFBundleGetFunctionPointerForName(v19, @"Init");
          *(a2 + 48) = CFBundleGetFunctionPointerForName(v19, @"Dispose");
          *(a2 + 56) = CFBundleGetFunctionPointerForName(v19, @"Process");
          *(a2 + 64) = CFBundleGetFunctionPointerForName(v19, @"Free");
          *(a2 + 72) = CFBundleGetFunctionPointerForName(v19, @"GetAttribute");
          *(a2 + 80) = CFBundleGetFunctionPointerForName(v19, @"InteractiveUI");
          *(a2 + 88) = CFBundleGetFunctionPointerForName(v19, @"PrintPacket");
          v20 = 0;
          *(a2 + 96) = CFBundleGetFunctionPointerForName(v19, @"Identity");
          *(a2 + 32) = v19;
LABEL_19:
          CFRelease(v5);
          return v20;
        }

        CFRelease(v19);
      }
    }

    v20 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  return 0xFFFFFFFFLL;
}

uint64_t publish_keyentry(const __CFString *key, const void *a2, const void *a3)
{
  if (!cfgCache)
  {
    return 0;
  }

  if (key && publish_dict && CFDictionaryContainsKey(publish_dict, key) && (Value = CFDictionaryGetValue(publish_dict, key)) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v8 = MutableCopy;
  if (!MutableCopy)
  {
    return 0;
  }

  CFDictionarySetValue(MutableCopy, a2, a3);
  if (!sub_100019DA0(key, v8))
  {
    v9 = SCError();
    v10 = SCErrorString(v9);
    warning("publish_entry SCDSet() failed: %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
  }

  CFRelease(v8);
  return 1;
}

uint64_t unpublish_keyentry(const __CFString *key, const void *a2)
{
  if (cfgCache)
  {
    if (key)
    {
      if (publish_dict)
      {
        if (CFDictionaryContainsKey(publish_dict, key))
        {
          Value = CFDictionaryGetValue(publish_dict, key);
          if (Value)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
            if (MutableCopy)
            {
              v6 = MutableCopy;
              CFDictionaryRemoveValue(MutableCopy, a2);
              if (!sub_100019DA0(key, v6))
              {
                v7 = SCError();
                v8 = SCErrorString(v7);
                warning("unpublish_keyentry SCDSet() failed: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
              }

              CFRelease(v6);
            }
          }
        }
      }
    }
  }

  return 0;
}

double getabsolutetime(uint64_t a1)
{
  result = *&timeScaleSeconds;
  if (*&timeScaleSeconds != 0.0)
  {
    v3 = mach_absolute_time();
    v4 = *&timeScaleSeconds * v3;
    *a1 = v4;
    result = v4 * -1000000.0 + v3 * *&timeScaleMicroSeconds;
    *(a1 + 8) = result;
  }

  return result;
}

const char *sys_publish_remoteaddress(const char *result)
{
  if (result)
  {
    return publish_dictstrentry(kSCEntNetPPP, kSCPropNetPPPCommRemoteAddress, result, 0x8000100u);
  }

  return result;
}

uint64_t sys_reinit()
{
  cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
  if (!cfgCache)
  {
    v2 = SCError();
    SCErrorString(v2);
    fatal();
  }

  v0 = getpid();

  return publish_dictnumentry(kSCEntNetPPP, @"pid", v0);
}

uint64_t route_gateway(int a1, int a2, int a3, int a4, int a5)
{
  v26 = a3;
  v27 = a2;
  v25 = a4;
  v10 = socket(17, 3, 17);
  if (v10 < 0)
  {
    v14 = __error();
    v15 = strerror(*v14);
    v16 = addr2ascii(2, &v27, 4, v42);
    v17 = addr2ascii(2, &v26, 4, v41);
    v18 = addr2ascii(2, &v25, 4, v40);
    sys_log(6, "host_gateway: open routing socket failed, %s. (address %s, mask %s, gateway %s, use-gateway %d).", v15, v16, v17, v18, a5);
  }

  else
  {
    v11 = v10;
    v31 = 0u;
    v32 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v30 = a1;
    if (a5)
    {
      v12 = 2051;
    }

    else
    {
      v12 = 2049;
    }

    v29 = 5;
    LODWORD(v32) = 1;
    *(&v31 + 4) = v12 | 0x700000000;
    WORD4(v36) = 528;
    HIDWORD(v36) = a2;
    WORD4(v37) = 528;
    HIDWORD(v37) = a4;
    WORD4(v38) = 528;
    HIDWORD(v38) = a3;
    __buf = 140;
    if ((write(v10, &__buf, 0x8CuLL) & 0x8000000000000000) == 0)
    {
      close(v11);
      return 1;
    }

    if (a1 == 2)
    {
      v19 = 7;
    }

    else
    {
      v19 = 3;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = addr2ascii(2, &v27, 4, v42);
    v23 = addr2ascii(2, &v26, 4, v41);
    v24 = addr2ascii(2, &v25, 4, v40);
    sys_log(v19, "host_gateway: write routing socket failed, %s. (address %s, mask %s, gateway %s, use-gateway %d).", v21, v22, v23, v24, a5);
    close(v11);
  }

  return 0;
}

uint64_t ppp_ip_probe_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dbglog("%s: starting", a2, a3, a4, a5, a6, a7, a8, "ppp_ip_probe_send");
  if (!session || !*session)
  {
    return 0xFFFFFFFFLL;
  }

  if_nametoindex(*(session + 16));
  v15 = session;
  *(session + 312) = 0;
  if (*(v15 + 253) != 2 || !*(v15 + 256))
  {
    info("%s: no goog-dns address", v8, v9, v10, v11, v12, v13, v14, "ppp_ip_probe_send");
    goto LABEL_8;
  }

  dbglog("%s: found goog-dns address", v8, v9, v10, v11, v12, v13, v14, "ppp_ip_probe_send");
  v16 = *(session + 300);
  v17 = *(session + 320);
  v18 = sub_10001B410();
  *(session + 300) = v18;
  if (v18 == -1)
  {
LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  add_fd(v18);
  dbglog("%s: sent to goog-dns over scope %d", v26, v27, v28, v29, v30, v31, v32, "ppp_ip_probe_send");
  v33 = 1;
LABEL_9:
  if (*(session + 269) != 2 || !*(session + 272))
  {
    v62 = "%s: no peer address";
LABEL_19:
    dbglog(v62, v19, v20, v21, v22, v23, v24, v25, "ppp_ip_probe_send");
LABEL_20:
    if (v33)
    {
      goto LABEL_21;
    }

    return 0xFFFFFFFFLL;
  }

  dbglog("%s: found peer address", v19, v20, v21, v22, v23, v24, v25, "ppp_ip_probe_send");
  v34 = *(session + 304);
  v35 = *(session + 320);
  v36 = sub_10001B410();
  v37 = session;
  *(session + 304) = v36;
  if (v36 != -1)
  {
    add_fd(v36);
    dbglog("%s: sent to peer over scope %d", v38, v39, v40, v41, v42, v43, v44, "ppp_ip_probe_send");
    ++v33;
    v37 = session;
  }

  if (*(v37 + 285) != 2 || !*(v37 + 288))
  {
    v62 = "%s: no alternate peer address";
    goto LABEL_19;
  }

  dbglog("%s: found alternate peer address", v19, v20, v21, v22, v23, v24, v25, "ppp_ip_probe_send");
  v45 = *(session + 308);
  v46 = *(session + 320);
  v47 = sub_10001B410();
  *(session + 308) = v47;
  if (v47 == -1)
  {
    goto LABEL_20;
  }

  add_fd(v47);
  info("%s: sent to alternate peer over scope %d", v55, v56, v57, v58, v59, v60, v61, "ppp_ip_probe_send");
LABEL_21:
  dbglog("%s: %d probes sent", v48, v49, v50, v51, v52, v53, v54, "ppp_ip_probe_send");
  v63 = session;
  ++*(session + 316);
  if (!*(v63 + 248))
  {
    *(v63 + 248) = 1;
    timeout(sub_10001B57C);
  }

  return 0;
}

uint64_t sub_10001B410()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v0;
  v9 = 0;
  v10 = v1;
  if ((v0 & 0x80000000) != 0)
  {
    v6 = v1;
    v7 = socket(2, 2, 1);
    if ((v7 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = v7;
    if (v6 && setsockopt(v7, 0, 25, &v10, 4u))
    {
LABEL_3:
      close(v4);
      return 0xFFFFFFFFLL;
    }

    v9 = 65663;
    setsockopt(v4, 0xFFFF, 4098, &v9, 4u);
  }

  v11.i32[0] = 8;
  v11.i16[3] = htons();
  v11.i16[2] = getpid();
  v5 = vaddvq_s32(vmovl_u16(v11));
  v11.i16[1] = ~(HIWORD(v5) + v5 + ((HIWORD(v5) + v5) >> 16));
  if (sendto(v4, &v11, 8uLL, 0, v3, 0x10u) != 8)
  {
    goto LABEL_3;
  }

  return v4;
}

void sub_10001B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (session && *session && (*(session + 316) > 14 || ppp_ip_probe_send(a1, a2, a3, a4, a5, a6, a7, a8)))
  {

    error("ppp_auxiliary_probe timed out", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t ppp_ip_probe_stop()
{
  v0 = session;
  if (!session || !*session)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(session + 248))
  {
    *(session + 248) = 0;
    untimeout(sub_10001B57C, 0);
    dbglog("ppp_auxiliary_probe stopped", v1, v2, v3, v4, v5, v6, v7, v11);
    v0 = session;
  }

  for (i = 300; i != 312; i += 4)
  {
    v9 = *(v0 + i);
    if (v9 >= 1)
    {
      remove_fd(v9);
      close(*(session + i));
      v0 = session;
      *(session + i) = -1;
    }
  }

  result = 0;
  *(v0 + 312) = 0;
  return result;
}

double ppp_session_clear(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 320) = 0;
    result = 0.0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 308) = -1;
    *(a1 + 300) = -1;
  }

  return result;
}

void ppp_variable_echo_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (session && *session && (wait_underlying_interface_up != 0) | byte_10004B964 & 1 && !lcp_echos_hastened)
  {
    dbglog("ppp_variable_echo_start", a2, a3, a4, a5, a6, a7, a8, v8);
    lcp_echo_interval_slow = lcp_echo_interval;
    lcp_echo_interval = 1;
    lcp_echo_fails_slow = lcp_echo_fails;
    if (lcp_echo_fails >= 11)
    {
      lcp_echo_fails = 10;
    }

    lcp_echos_hastened = 1;

    lcp_echo_restart(0);
  }
}

void ppp_variable_echo_stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (session && *session)
  {
    if (wait_underlying_interface_up)
    {
      v8 = 0;
    }

    else
    {
      v8 = byte_10004B964 == 0;
    }

    if (!v8)
    {
      dbglog("received echo-reply, ppp_variable_echo_stop!", a2, a3, a4, a5, a6, a7, a8, v9);
      wait_underlying_interface_up = 0;
      byte_10004B964 = 0;
      if (lcp_echos_hastened)
      {
        lcp_echo_interval = lcp_echo_interval_slow;
        lcp_echo_fails = lcp_echo_fails_slow;
        lcp_echos_hastened = 0;
      }
    }
  }
}

void *ppp_auxiliary_probe_init()
{
  dword_10004B96C = 0;
  dword_10004B970 = 0;
  if ((byte_10004B974 & 1) == 0)
  {
    add_notifier(&ip_up_notify, ppp_auxiliary_probe_ip_up, 0);
    result = add_notifier(&ip_down_notify, ppp_auxiliary_probe_ip_down, 0);
    byte_10004B974 = 1;
  }

  return result;
}

uint64_t ppp_auxiliary_probe_stop()
{
  result = ppp_ip_probe_stop();
  dword_10004B96C = 0;
  dword_10004B970 = 0;
  return result;
}

void ppp_auxiliary_probe_check(int a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 2)
  {
    v8 = byte_10004B968 && wait_underlying_interface_up == 0;
    if (v8 && (byte_10004B964 & 1) == 0)
    {
      v9 = dword_10004B96C;
      if (dword_10004B96C)
      {
        ++dword_10004B96C;
        if (v9 >= 1 && dword_10004B970 != 0)
        {
          error("no echo-reply, despite successful ppp_auxiliary_probe!", a2, a3, a4, a5, a6, a7, a8, v20);
          if (a2)
          {

            a2(a3);
          }
        }
      }

      else
      {
        error("no echo-reply, start ppp_auxiliary_probe!", a2, a3, a4, a5, a6, a7, a8, v20);
        ppp_ip_probe_send(v12, v13, v14, v15, v16, v17, v18, v19);
        dword_10004B96C = 1;
        dword_10004B970 = 0;
      }
    }
  }
}

void ppp_process_auxiliary_probe_input()
{
  v0 = session;
  if (session)
  {
    v12 = 0;
    if (*session)
    {
      v1 = 0;
      for (i = 75; i != 78; ++i)
      {
        v3 = *(v0 + 4 * i);
        if (v3 >= 1)
        {
          ready = is_ready_fd(v3);
          v0 = session;
          if (ready)
          {
            v12 = 0;
            read(*(session + 4 * i), &v12, 1uLL);
            remove_fd(*(session + 4 * i));
            if (v12 >= 1)
            {
              ++*(session + 312);
              ++v1;
              dbglog("ppp_auxiliary_probe[%d] response!", v5, v6, v7, v8, v9, v10, v11, i - 75);
            }

            close(*(session + 4 * i));
            v0 = session;
            *(session + 4 * i) = -1;
          }
        }
      }

      if (v1)
      {
        if (*(v0 + 248))
        {
          *(v0 + 248) = 0;
          untimeout(sub_10001B57C, 0);
        }

        if (dword_10004B96C)
        {
          ++dword_10004B970;
        }
      }
    }
  }
}

void ppp_start_public_nat_port_mapping_timer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (session && *session && !*(session + 32) && !*(session + 36))
  {
    notice("starting wait-port-mapping timer for %s: %d secs", a2, a3, a4, a5, a6, a7, a8, *(session + 8));
    timeout(sub_10001BBE8);
    *(session + 36) = 1;
  }
}

void sub_10001BBE8()
{
  if (session)
  {
    if (*session)
    {
      if (*(session + 36))
      {
        *(session + 36) = 0;
        sys_log(3, "NAT's public interface down for more than %d secs... starting faster probe.\n", 20);
        v0 = *(session + 240);
        if (v0)
        {
          byte_10004B964 = 1;

          v0();
        }
      }
    }
  }
}

void ppp_stop_public_nat_port_mapping_timer()
{
  if (session && *session)
  {
    if (*(session + 36))
    {
      untimeout(sub_10001BBE8, 0);
      *(session + 36) = 0;
    }
  }
}

void ppp_block_public_nat_port_mapping_timer()
{
  if (session)
  {
    if (*session)
    {
      ppp_stop_public_nat_port_mapping_timer();
      *(session + 32) = 1;
    }
  }
}

void ppp_unblock_public_nat_port_mapping_timer()
{
  if (session)
  {
    if (*session)
    {
      *(session + 32) = 0;
    }
  }
}

uint64_t sys_setup_security_session()
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (qword_10004B988 != -1)
    {
      sub_10002D818();
    }

    if (qword_10004B980)
    {
      ne_session_copy_security_session_info();
    }

    return 1;
  }

  else
  {

    return setup_security_context();
  }
}

intptr_t sub_10001BE8C(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(object);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_10001BED8(id a1)
{
  v1 = getenv("NetworkExtension");
  if (v1)
  {
    memset(uu, 0, sizeof(uu));
    if (!uuid_parse(v1, uu))
    {
      qword_10004B980 = ne_session_create();
    }
  }
}

const char *tdb_error(uint64_t a1)
{
  if (!a1)
  {
    return "Invalid tdb context";
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    return "Success";
  }

  v2 = &dword_10003CC30;
  v3 = 6;
  result = "Invalid error code";
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v1 == v6)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t tdb_update(_DWORD *a1, char *a2, size_t a3, const void *a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v10 = 596579247 * a3;
  if (a3)
  {
    v11 = 0;
    v12 = 1;
    v13 = a2;
    do
    {
      v14 = *v13++;
      v10 += v14 << (v11 % 0x18);
      v15 = a3 > v12++;
      v11 += 5;
    }

    while (v15);
  }

  v16 = 1103515243 * v10 + 12345;
  sub_10001C124(a1, v16 % a1[20]);
  v17 = sub_10001C1B4(a1, a2, a3, v16, &v21);
  if (!v17 || a5 + a3 > v21 || (v18 = v17, sub_10001C2B4(a1, v17 + v22 + 24, a4, a5) == -1))
  {
    v19 = 0xFFFFFFFFLL;
  }

  else if (a5 == HIDWORD(v22))
  {
    v19 = 0;
  }

  else
  {
    HIDWORD(v22) = a5;
    v19 = sub_10001C2B4(a1, v18, &v21, 0x18u);
  }

  sub_10001C354(a1, v16 % a1[20]);
  return v19;
}

uint64_t sub_10001C124(uint64_t a1, int a2)
{
  if (a2 < -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 80) > a2)
  {
    v4 = *(a1 + 32);
    v5 = a2 + 1;
    v6 = *(v4 + 4 * (a2 + 1));
    if (v6)
    {
LABEL_5:
      result = 0;
      *(v4 + 4 * v5) = v6 + 1;
      return result;
    }

    if (!sub_10001D820(a1, 4 * a2 + 1024, 1, 3, 9))
    {
      v4 = *(a1 + 32);
      v6 = *(v4 + 4 * v5);
      goto LABEL_5;
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_10001C1B4(_DWORD *a1, const void *a2, size_t a3, unsigned int a4, unsigned int *a5)
{
  v15 = 0;
  if (sub_10001D348(a1, 4 * (a4 % a1[20]) + 44, &v15, 4u) != -1)
  {
    v10 = v15;
    if (v15)
    {
      while (sub_10001C800(a1, v10, a5) != -1)
      {
        if (a5[4] == a4)
        {
          v11 = a5[2];
          if (a3 == v11)
          {
            result = sub_10001C518(a1, v15 + 24, v11);
            if (!result)
            {
              return result;
            }

            v13 = result;
            v14 = memcmp(a2, result, a3);
            free(v13);
            if (!v14)
            {
              return v15;
            }
          }
        }

        v10 = a5[1];
        v15 = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10001C2B4(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  if (sub_10001DA5C(a1, a4 + a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy((v9 + a2), a3, a4);
  }

  else if (lseek(*(a1 + 16), a2, 0) != a2 || write(*(a1 + 16), a3, a4) != a4)
  {
    *(a1 + 40) = 2;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_10001C354(uint64_t a1, int a2)
{
  if (a2 < -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 80) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32);
  v5 = a2 + 1;
  v6 = *(v4 + 4 * (a2 + 1));
  if (v6 == 1)
  {
    if (sub_10001D820(a1, 4 * a2 + 1024, 0, 3, 9))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 32);
    v6 = *(v4 + 4 * v5);
  }

  else if (!v6)
  {
    *(a1 + 40) = 3;
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v4 + 4 * v5) = v6 - 1;
  return result;
}

void *tdb_fetch(_DWORD *a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 596579247 * a3;
  if (a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 += v10 << (v7 % 0x18);
      v11 = a3 > v8++;
      v7 += 5;
    }

    while (v11);
  }

  v12 = 1103515243 * v6 + 12345;
  sub_10001C124(a1, v12 % a1[20]);
  v13 = sub_10001C1B4(a1, a2, a3, v12, &v16);
  if (v13)
  {
    v14 = sub_10001C518(a1, v13 + v17 + 24, HIDWORD(v17));
  }

  else
  {
    v14 = 0;
  }

  sub_10001C354(a1, v12 % a1[20]);
  return v14;
}

void *sub_10001C518(uint64_t a1, unsigned int a2, size_t size)
{
  v3 = size;
  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v6)
  {
    if (sub_10001D348(a1, a2, v6, v3) == -1)
    {
      free(v6);
      return 0;
    }
  }

  else
  {
    *(a1 + 40) = 4;
  }

  return v6;
}

_DWORD *tdb_exists(_DWORD *result, char *a2, size_t a3)
{
  if (result)
  {
    v5 = result;
    memset(v14, 0, sizeof(v14));
    v6 = 596579247 * a3;
    if (a3)
    {
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *v9++;
        v6 += v10 << (v7 % 0x18);
        v11 = a3 > v8++;
        v7 += 5;
      }

      while (v11);
    }

    v12 = 1103515243 * v6 + 12345;
    sub_10001C124(result, v12 % result[20]);
    v13 = sub_10001C1B4(v5, a2, a3, v12, v14);
    sub_10001C354(v5, v12 % v5[20]);
    return (v13 != 0);
  }

  return result;
}

uint64_t tdb_traverse(_DWORD *a1, unsigned int (*a2)(_DWORD *, char *, void, char *, void, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1[20])
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  while (1)
  {
    sub_10001C124(a1, v6);
    if (sub_10001D348(a1, 4 * (v6 % a1[20]) + 44, &v15, 4u) == -1)
    {
      break;
    }

    v8 = v15;
    if (v15)
    {
      while (sub_10001C800(a1, v8, &v12) != -1)
      {
        v9 = sub_10001C518(a1, v15 + 24, (HIDWORD(v13) + v13));
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v7 = (v7 + 1);
        if (a2 && a2(a1, v9, v13, &v9[v13], HIDWORD(v13), a3))
        {
          free(v10);
          goto LABEL_17;
        }

        free(v10);
        v8 = HIDWORD(v12);
        v15 = HIDWORD(v12);
        if (!HIDWORD(v12))
        {
          goto LABEL_11;
        }
      }

      break;
    }

LABEL_11:
    sub_10001C354(a1, v6 % a1[20]);
    if (++v6 >= a1[20])
    {
      return v7;
    }
  }

  v7 = 0xFFFFFFFFLL;
LABEL_17:
  sub_10001C354(a1, v6 % a1[20]);
  return v7;
}

uint64_t sub_10001C800(_DWORD *a1, unsigned int a2, unsigned int *a3)
{
  result = sub_10001D348(a1, a2, a3, 0x18u);
  if (result != -1)
  {
    if (a3[5] == 637606297)
    {
      if (sub_10001DA5C(a1, a3[1]))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      a1[10] = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *tdb_firstkey(_DWORD *a1)
{
  if (a1)
  {
    v10 = 0;
    if (a1[20])
    {
      v2 = 0;
      v7 = 0;
      size = 0;
      v3 = 44;
      v9 = 0;
      while (1)
      {
        sub_10001C124(a1, v2);
        if (sub_10001D348(a1, v3, &v10, 4u) == -1)
        {
          break;
        }

        v4 = v10;
        if (v10)
        {
          goto LABEL_8;
        }

        sub_10001C354(a1, v2 % a1[20]);
        ++v2;
        v3 += 4;
        if (v2 >= a1[20])
        {
          v4 = v10;
          if (!v10)
          {
            return 0;
          }

LABEL_8:
          if (sub_10001C800(a1, v4, &v7) != -1)
          {
            v5 = sub_10001C518(a1, v10 + 24, size);
            sub_10001C354(a1, v2 % a1[20]);
            return v5;
          }

          break;
        }
      }

      sub_10001C354(a1, v2 % a1[20]);
    }
  }

  return 0;
}

void *tdb_nextkey(_DWORD *a1, char *a2, size_t a3)
{
  if (a1)
  {
    v18 = 0;
    size = 0;
    v20 = 0;
    v6 = 596579247 * a3;
    if (a3)
    {
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *v9++;
        v6 += v10 << (v7 % 0x18);
        v11 = a3 > v8++;
        v7 += 5;
      }

      while (v11);
    }

    v12 = 1103515243 * v6 + 12345;
    v13 = v12 % a1[20];
    sub_10001C124(a1, v13);
    v21 = sub_10001C1B4(a1, a2, a3, v12, &v18);
    if (v21)
    {
      v21 = HIDWORD(v18);
    }

    while (!v21)
    {
      sub_10001C354(a1, v13++);
      v14 = a1[20];
      if (v13 >= v14 - 1)
      {
        return 0;
      }

      v15 = 4 * (v13 % v14);
      sub_10001C124(a1, v13);
      if (sub_10001D348(a1, v15 + 44, &v21, 4u) == -1)
      {
        goto LABEL_13;
      }
    }

    if (sub_10001C800(a1, v21, &v18) != -1)
    {
      v16 = sub_10001C518(a1, v21 + 24, size);
      sub_10001C354(a1, v13);
      return v16;
    }

LABEL_13:
    sub_10001C354(a1, v13);
  }

  return 0;
}

uint64_t tdb_delete(_DWORD *a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  size[1] = 0;
  v27 = 0;
  size[0] = 0;
  v25 = 0;
  v6 = 596579247 * a3;
  v24 = 0uLL;
  if (a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 += v10 << (v7 % 0x18);
      v11 = a3 > v8++;
      v7 += 5;
    }

    while (v11);
  }

  v12 = 1103515243 * v6 + 12345;
  sub_10001C124(a1, v12 % a1[20]);
  if (sub_10001D348(a1, 4 * (v12 % a1[20]) + 44, &v28, 4u) != -1)
  {
    v13 = v28;
    if (v28)
    {
      v14 = 0;
      while (sub_10001C800(a1, v13, size) != -1)
      {
        if (v12 == v27 && a3 == LODWORD(size[1]))
        {
          v15 = sub_10001C518(a1, v28 + 24, LODWORD(size[1]));
          if (!v15)
          {
            break;
          }

          v16 = v15;
          if (!memcmp(a2, v15, a3))
          {
            if (v14)
            {
              DWORD1(v24) = HIDWORD(size[0]);
              v20 = &v24;
              v21 = a1;
              v22 = v14;
              v23 = 24;
            }

            else
            {
              v22 = 4 * (v12 % a1[20]) + 44;
              v20 = size + 4;
              v21 = a1;
              v23 = 4;
            }

            if (sub_10001C2B4(v21, v22, v20, v23) == -1)
            {
              free(v16);
              break;
            }

            sub_10001C354(a1, v12 % a1[20]);
            sub_10001C124(a1, -1);
            if (sub_10001D348(a1, 0x28u, size + 4, 4u) != -1)
            {
              HIDWORD(v27) = -637606298;
              if (sub_10001C2B4(a1, v28, size, 0x18u) != -1 && sub_10001C2B4(a1, 0x28u, &v28, 4u) != -1)
              {
                free(v16);
                v18 = 0;
                v17 = -1;
                goto LABEL_17;
              }
            }

            free(v16);
            v17 = -1;
            goto LABEL_16;
          }

          free(v16);
        }

        v14 = v28;
        v24 = *size;
        v25 = v27;
        v13 = HIDWORD(size[0]);
        v28 = HIDWORD(size[0]);
        if (!HIDWORD(size[0]))
        {
          break;
        }
      }
    }
  }

  v17 = v12 % a1[20];
LABEL_16:
  v18 = 0xFFFFFFFFLL;
LABEL_17:
  sub_10001C354(a1, v17);
  return v18;
}

uint64_t tdb_store(uint64_t a1, char *a2, unint64_t a3, const void *a4, size_t a5, int a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v44 = 0uLL;
  v45 = 0;
  v12 = 596579247 * a3;
  if (a3)
  {
    v13 = 0;
    v14 = 1;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v12 += v16 << (v13 % 0x18);
      v17 = a3 > v14++;
      v13 += 5;
    }

    while (v17);
  }

  if (a6 == 2)
  {
    if (tdb_exists(a1, a2, a3))
    {
      *(a1 + 40) = 5;
      return 0xFFFFFFFFLL;
    }
  }

  else if (!tdb_update(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v52 = 0;
  v50 = 0uLL;
  v51 = 0;
  v48 = 0uLL;
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  sub_10001C124(a1, -1);
  if (sub_10001D348(a1, 0x28u, &v52, 4u) != -1)
  {
    v19 = a5 + a3;
    v43 = 1103515243 * v12 + 12345;
    while (1)
    {
      v20 = v52;
      if (v52)
      {
        break;
      }

LABEL_21:
      v55[0] = 0;
      v55[1] = 0;
      v56 = 0;
      v54 = 0;
      __buf = 0;
      sub_10001C124(a1, -1);
      sub_10001DA5C(a1, *(a1 + 20) + 1);
      v23 = *(a1 + 16);
      v24 = *(a1 + 20);
      v25 = 10 * (a5 + a3) + 240 + v24;
      if (v23 != -1)
      {
        lseek(v23, v25 | 0x1FFFu, 0);
        if (write(*(a1 + 16), &__buf, 1uLL) != 1)
        {
          goto LABEL_35;
        }
      }

      v26 = (v25 & 0xFFFFE000) - v24;
      LODWORD(v55[0]) = v26 + 8168;
      HIDWORD(v56) = -637606298;
      if (sub_10001D348(a1, 0x28u, v55 + 4, 4u) == -1)
      {
        goto LABEL_35;
      }

      v27 = v26 + 0x2000;
      v28 = *(a1 + 16);
      v29 = (*(a1 + 20) + v27);
      *(a1 + 20) = v29;
      if (v28 == -1)
      {
        *(a1 + 8) = malloc_type_realloc(*(a1 + 8), v29, 0x9B74745BuLL);
        LODWORD(v29) = *(a1 + 20);
      }

      if (sub_10001C2B4(a1, v29 - v27, v55, 0x18u) == -1 || (v54 = *(a1 + 20) - v27, sub_10001C2B4(a1, 0x28u, &v54, 4u) == -1))
      {
LABEL_35:
        sub_10001C354(a1, -1);
        goto LABEL_49;
      }

      sub_10001C354(a1, -1);
      if (sub_10001D348(a1, 0x28u, &v52, 4u) == -1)
      {
        goto LABEL_49;
      }
    }

    v21 = 0;
    while (sub_10001D348(a1, v20, &v50, 0x18u) != -1 && HIDWORD(v51) == -637606298)
    {
      if (v50 >= v19)
      {
        if (v19 + 52 < v50)
        {
          LODWORD(v46[0]) = v50 - (v19 & 0xFFFFFFFC) - 28;
          HIDWORD(v46[0]) = DWORD1(v50);
          HIDWORD(v47) = -637606298;
          LODWORD(v50) = (v19 & 0xFFFFFFFC) + 4;
          DWORD1(v50) = (v19 & 0xFFFFFFFC) + v52 + 28;
          if (sub_10001C2B4(a1, DWORD1(v50), v46, 0x18u) == -1 || sub_10001C2B4(a1, v52, &v50, 0x18u) == -1)
          {
            break;
          }
        }

        if (v21)
        {
          DWORD1(v48) = DWORD1(v50);
          v30 = &v48;
          v31 = a1;
          v32 = v21;
          v33 = 24;
        }

        else
        {
          v30 = &v50 + 4;
          v31 = a1;
          v32 = 40;
          v33 = 4;
        }

        if (sub_10001C2B4(v31, v32, v30, v33) == -1)
        {
          break;
        }

        v18 = 0xFFFFFFFFLL;
        sub_10001C354(a1, -1);
        v34 = v52;
        LODWORD(v55[0]) = v52;
        if (!v52)
        {
          return v18;
        }

        sub_10001C124(a1, v43 % *(a1 + 80));
        if (a6 != 2)
        {
          tdb_delete(a1, a2, a3);
        }

        if (sub_10001D348(a1, v34, &v44, 0x18u) != -1 && HIDWORD(v45) == -637606298)
        {
          v35 = 4 * (v43 % *(a1 + 80));
          if (sub_10001D348(a1, v35 + 44, &v44 + 4, 4u) != -1)
          {
            *(&v44 + 1) = __PAIR64__(a5, a3);
            v45 = v43 | 0x2601199900000000;
            v36 = v19 + 24;
            v37 = malloc_type_malloc(v19 + 24, 0x1000040504FFAC1uLL);
            if (v37)
            {
              v38 = v37;
              v39 = v44;
              *(v37 + 2) = v45;
              *v37 = v39;
              v40 = v37 + 24;
              memcpy(v37 + 24, a2, a3);
              memcpy(&v40[a3], a4, a5);
              v41 = sub_10001C2B4(a1, v34, v38, v36);
              free(v38);
              if (v41 != -1 && sub_10001C2B4(a1, v35 + 44, v55, 4u) != -1)
              {
                sub_10001C354(a1, v43 % *(a1 + 80));
                return 0;
              }
            }

            else
            {
              *(a1 + 40) = 4;
            }
          }
        }

        sub_10001C354(a1, v43 % *(a1 + 80));
        return 0xFFFFFFFFLL;
      }

      v48 = v50;
      v49 = v51;
      v21 = v52;
      v20 = DWORD1(v50);
      v52 = DWORD1(v50);
      if (!DWORD1(v50))
      {
        goto LABEL_21;
      }
    }
  }

LABEL_49:
  v18 = 0xFFFFFFFFLL;
  sub_10001C354(a1, -1);
  return v18;
}

uint64_t sub_10001D348(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  if (sub_10001DA5C(a1, a4 + a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy(a3, (v9 + a2), a4);
  }

  else if (lseek(*(a1 + 16), a2, 0) != a2 || read(*(a1 + 16), a3, a4) != a4)
  {
    *(a1 + 40) = 2;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

_OWORD *tdb_open(char *a1, int a2, char a3, __int16 a4, uint64_t a5)
{
  memset(&v22, 0, sizeof(v22));
  __fd = 0u;
  memset(v25, 0, sizeof(v25));
  LODWORD(__fd) = -1;
  v23 = 0uLL;
  if ((a4 & 3) != 1)
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 128;
    }

    DWORD2(__fd) = (a4 & 3) == 0;
    if (a1)
    {
      v9 = open(a1, a4, a5);
      LODWORD(__fd) = v9;
      if (v9 == -1)
      {
        goto LABEL_41;
      }

      fcntl(v9, 2, 1);
    }

    sub_10001D820(&v23, 0, 1, 3, 9);
    if ((a3 & 1) != 0 && !sub_10001D820(&v23, 4u, 1, 3, 8))
    {
      ftruncate(__fd, 0);
      sub_10001D820(&v23, 4u, 0, 3, 8);
    }

    sub_10001D820(&v23, 4u, 1, 1, 9);
    if (read(__fd, &v25[12], 0x28uLL) == 40 && !(*&v25[12] ^ 0x656C696620424454 | *&v25[20] ^ 0xALL) && *&v25[44] == 637606248)
    {
      goto LABEL_14;
    }

    if ((a4 & 0x200) == 0)
    {
LABEL_41:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_43;
    }

    memset(&__buf[10], 0, 22);
    strcpy(__buf, "TDB file\n");
    LODWORD(v28) = 637606248;
    HIDWORD(v28) = v8;
    lseek(__fd, 0, 0);
    ftruncate(__fd, 0);
    if (__fd == -1 || write(__fd, __buf, 0x28uLL) == 40)
    {
      memset(v26, 0, sizeof(v26));
      if (v8 >= 15)
      {
        v10 = 0;
        v11 = v8 + 16;
        v12 = 40;
        while (__fd == -1 || write(__fd, v26, 0x40uLL) == 64)
        {
          v12 += 64;
          v10 += 16;
          v11 -= 16;
          if (v11 <= 30)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_40;
      }

      v10 = 0;
      v12 = 40;
LABEL_26:
      if (v10 <= v8)
      {
        v13 = v8 - v10 + 1;
        while (__fd == -1 || write(__fd, v26, 4uLL) == 4)
        {
          v12 += 4;
          if (!--v13)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_40;
      }

LABEL_31:
      v14 = __fd;
      if (__fd != -1)
      {
        goto LABEL_34;
      }

      *(&v23 + 1) = malloc_type_calloc(v12, 1uLL, 0x76AD00A4uLL);
      DWORD1(__fd) = v12;
      if (*(&v23 + 1))
      {
        *&v25[12] = *__buf;
        *&v25[28] = *&__buf[16];
        *&v25[44] = v28;
        v14 = __fd;
LABEL_34:
        lseek(v14, 0, 0);
        if (__fd == -1)
        {
          goto LABEL_37;
        }

        if (read(__fd, &v25[12], 0x28uLL) == 40)
        {
LABEL_14:
          if (__fd != -1)
          {
            fstat(__fd, &v22);
            *&v23 = strdup(a1);
            DWORD1(__fd) = v22.st_size;
          }

LABEL_37:
          *v25 = malloc_type_calloc((*&v25[48] + 1), 4uLL, 0x100004052888210uLL);
          if (*v25)
          {
            v15 = malloc_type_malloc(0x58uLL, 0x10900406C209894uLL);
            if (v15)
            {
              v16 = v15;
              v17 = __fd;
              *v15 = v23;
              v15[1] = v17;
              v18 = *v25;
              v19 = *&v25[16];
              v20 = *&v25[32];
              *(v15 + 10) = *&v25[48];
              v15[3] = v19;
              v15[4] = v20;
              v15[2] = v18;
              sub_10001D820(&v23, 0, 0, 3, 9);
              return v16;
            }
          }

          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

LABEL_40:
    *&v25[8] = 2;
    goto LABEL_41;
  }

LABEL_43:
  if (__fd != -1)
  {
    close(__fd);
  }

  if (*(&v23 + 1))
  {
    munmap(*(&v23 + 1), DWORD1(__fd));
  }

  return 0;
}

uint64_t sub_10001D820(_DWORD *a1, unsigned int a2, int a3, __int16 a4, int a5)
{
  v6 = a1[4];
  if (v6 == -1)
  {
    return 0;
  }

  if (a1[6])
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 != 1)
  {
    a4 = 2;
  }

  v11 = a4;
  v12 = 0;
  v9[0] = a2;
  v9[1] = 1;
  v10 = 0;
  result = fcntl(v6, a5, v9);
  if (result)
  {
    a1[10] = 3;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t tdb_close(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != -1)
  {
    close(v3);
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    if (a1[4] == -1)
    {
      free(v5);
    }

    else
    {
      munmap(v5, a1[5]);
    }
  }

  *(a1 + 10) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
  return 0;
}

uint64_t tdb_writelock(uint64_t a1)
{
  if (a1)
  {
    return sub_10001C124(a1, -1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tdb_writeunlock(uint64_t a1)
{
  if (a1)
  {
    return sub_10001C354(a1, -1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tdb_lockchain(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 596579247 * a3;
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *a2++;
      v3 += v6 << (v4 % 0x18);
      v7 = a3 >= v5;
      v8 = a3 == v5++;
      v4 += 5;
    }

    while (!v8 && v7);
  }

  return sub_10001C124(a1, (1103515243 * v3 + 12345) % *(a1 + 80));
}

uint64_t tdb_unlockchain(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 596579247 * a3;
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *a2++;
      v3 += v6 << (v4 % 0x18);
      v7 = a3 >= v5;
      v8 = a3 == v5++;
      v4 += 5;
    }

    while (!v8 && v7);
  }

  return sub_10001C354(a1, (1103515243 * v3 + 12345) % *(a1 + 80));
}

uint64_t sub_10001DA5C(_DWORD *a1, unsigned int a2)
{
  if (a1[5] >= a2)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v5 = a1[4];
  if (v5 == -1)
  {
    return 0;
  }

  memset(&v8, 0, sizeof(v8));
  fstat(v5, &v8);
  if (v8.st_size <= a2)
  {
    a1[10] = 2;
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    a1[5] = v8.st_size;
  }

  return result;
}

BOOL sub_10001DAF8(char *__s2, uint64_t a2, int a3)
{
  if (!*__s2)
  {
    return 0;
  }

  v4 = __s2;
  memset(&v13, 0, sizeof(v13));
  if (strncmp("/dev/", __s2, 5uLL))
  {
    __strlcpy_chk();
    __strlcat_chk();
    v4 = &v14;
  }

  if (stat(v4, &v13) < 0)
  {
    if (!a3)
    {
      return *__error() != 2;
    }

    option_error("Couldn't stat %s: %m", v5, v6, v7, v8, v9, v10, v11, v4);
    return 0;
  }

  if ((v13.st_mode & 0xF000) != 0x2000)
  {
    if (a3)
    {
      option_error("%s is not a character device", v5, v6, v7, v8, v9, v10, v11, v4);
    }

    return 0;
  }

  if (a3)
  {
    __strlcpy_chk();
    *devstat = v13;
    default_device = 0;
  }

  return 1;
}

uint64_t sub_10001DC80(const char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  v5 = strtol(a1, &__endptr, 0);
  if (__endptr == a1)
  {
    return 0;
  }

  if (*__endptr || v5 == 0)
  {
    return 0;
  }

  if (a3)
  {
    inspeed = v5;
    slprintf(&unk_10004B994, 16, "%d");
  }

  return 1;
}

uint64_t sub_10001DD10()
{
  connect_script = 0;
  initializer = 0;
  disconnect_script = 0;
  default_device = 1;
  LOBYTE(devnam) = 0;
  inspeed = 0;
  return 1;
}

uint64_t sub_10001DD54()
{
  dword_10004792C |= 0xA0000u;
  byte_100047914 = 1;
  crtscts = -2;
  return 1;
}

uint64_t sub_10001DD88(const char **a1)
{
  i = *a1;
  if (**a1)
  {
    __endptr = 0;
    v2 = 1;
    while (1)
    {
      v3 = strtol(i, &__endptr, 16);
      v11 = __endptr;
      if (i == __endptr)
      {
        break;
      }

      if (v3 > 0xFF || v3 == 94)
      {
        option_error("can't escape character 0x%x", v4, v5, v6, v7, v8, v9, v10, v3);
        v2 = 0;
      }

      else
      {
        xmit_accm[v3 >> 5] |= 1 << v3;
      }

      for (i = v11; ; ++i)
      {
        v12 = *i;
        if (v12 != 32 && v12 != 44)
        {
          break;
        }
      }

      if (!*i)
      {
        goto LABEL_15;
      }
    }

    option_error("escape parameter contains invalid hex number '%s'", v4, v5, v6, v7, v8, v9, v10, i);
    return 0;
  }

  else
  {
    v2 = 1;
LABEL_15:
    dword_1000479B4 = xmit_accm[0];
  }

  return v2;
}

void sub_10001DE94(uint64_t a1, void (*a2)(uint64_t, const char *, ...), uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  do
  {
    while (1)
    {
      v6 = v5 == 125 ? 127 : v5;
      if (((xmit_accm[v6 >> 5] >> v6) & 1) == 0)
      {
        break;
      }

      if (v4)
      {
        a2(a3, ",");
      }

      a2(a3, "%x", v6);
      v5 = v6 + 1;
      v4 = 1;
      if (v6 >= 255)
      {
        return;
      }
    }

    v5 = v6 + 1;
  }

  while (v6 < 255);
  if ((v4 & 1) == 0)
  {

    a2(a3, "oops # nothing escaped");
  }
}

void tty_process_extra_options()
{
  if (notty)
  {
    v0 = 0;
  }

  else
  {
    v0 = ptycommand == 0;
  }

  if (!v0)
  {
    using_pty = 1;
    return;
  }

  using_pty = pty_socket != 0;
  if (!pty_socket)
  {
    if (default_device)
    {
      if (!isatty(0) || !ttyname(0))
      {
        option_error("no device specified and stdin is not a tty", v1, v2, v3, v4, v5, v6, v7, v8);
        goto LABEL_14;
      }

      __strlcpy_chk();
      if (stat(&devnam, devstat) < 0)
      {
        fatal();
      }
    }

    if (options_for_tty())
    {
      return;
    }

LABEL_14:
    exit(2);
  }
}

uint64_t tty_check_options(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (demand)
  {
    v8 = connect_script == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && ptycommand == 0)
  {
    v14 = "connect script is required for demand-dialling\n";
    goto LABEL_49;
  }

  if (connect_script)
  {
    v10 = 0;
  }

  else
  {
    v10 = holdoff_specified == 0;
  }

  if (v10)
  {
    holdoff = 0;
  }

  memset(&v17, 0, sizeof(v17));
  if (using_pty)
  {
    if (!default_device)
    {
      if (notty)
      {
        v15 = "notty";
      }

      else
      {
        v15 = "pty";
      }

      option_error("%s option precludes specifying device name", a2, a3, a4, a5, a6, a7, a8, v15);
LABEL_50:
      exit(2);
    }

    if (ptycommand && notty)
    {
      v14 = "pty option is incompatible with notty option";
    }

    else
    {
      if (notty)
      {
        v11 = 0;
      }

      else
      {
        v11 = ptycommand == 0;
      }

      v12 = !v11;
      if (!pty_socket || !v12)
      {
        default_device = notty;
        lockflag = 0;
        modem = 0;
        if (notty && log_to_fd <= 1)
        {
          log_to_fd = -1;
        }

        goto LABEL_34;
      }

      v14 = "socket option is incompatible with pty and notty";
    }

LABEL_49:
    option_error(v14, a2, a3, a4, a5, a6, a7, a8, v16);
    goto LABEL_50;
  }

  if ((fstat(0, &v17) & 0x80000000) == 0 && (v17.st_mode & 0xF000) == 0x2000 && v17.st_rdev == *&devstat[24])
  {
    default_device = 1;
    if ((fcntl(0, 3) & 3) == 2)
    {
      privopen = 1;
    }
  }

LABEL_34:
  if (default_device)
  {
    nodetach = 1;
  }

  result = log_to_fd;
  if ((log_to_fd & 0x80000000) == 0)
  {
    result = fstat(log_to_fd, &v17);
    if ((result & 0x80000000) == 0 && (v17.st_mode & 0xF000) == 0x2000 && v17.st_rdev == *&devstat[24])
    {
      log_to_fd = -1;
    }
  }

  return result;
}

uint64_t connect_tty(_DWORD *a1)
{
  *a1 = -1;
  __strlcpy_chk();
  dword_10004B9A8 = -1;
  v2 = &unk_10004B000;
  dword_10004B9AC = -1;
  dword_10004B9A4 = -1;
  if (using_pty)
  {
    v3 = 0;
  }

  else
  {
    v3 = record_file == 0;
  }

  if (!v3)
  {
    if (!get_pty(&dword_10004B9A8, &dword_10004B9AC, ppp_devnam, uid))
    {
      error("Couldn't allocate pseudo-tty", v4, v5, v6, v7, v8, v9, v10, v153);
      v14 = 1;
      goto LABEL_56;
    }

    clocal = 1;
    set_up_tty(dword_10004B9AC, 1);
  }

  if (lockflag && !privopen)
  {
    if ((lock(&devnam) & 0x80000000) != 0)
    {
      v14 = 6;
      goto LABEL_56;
    }

    locked = 1;
  }

  hungup = 0;
  do_modem_hungup = 0;
  if (redialingalternate && (v11 = altconnect_script) != 0)
  {
    v12 = altconnect_data;
    v13 = altconnect_data_len;
  }

  else if (doing_callback)
  {
    v12 = 0;
    v13 = 0;
    v11 = callback_script;
  }

  else
  {
    v11 = connect_script;
    v12 = connect_data;
    v13 = connect_data_len;
  }

  memset(&v156, 0, sizeof(v156));
  if (!devnam)
  {
LABEL_61:
    if (kill_link)
    {
      return 0xFFFFFFFFLL;
    }

    *status = 9;
    if (ptycommand)
    {
      if (record_file)
      {
        if (pipe(&v157) < 0 || pipe(&__endptr) < 0)
        {
          fatal();
        }

        fcntl(*&v157.sa_len, 2, 1);
        v153 = 1;
        fcntl(SHIDWORD(__endptr), 2);
        v47 = &unk_100049000;
        if (device_script(ptycommand, __endptr, *&v157.sa_data[2], 1, 0xFFFFFFFF, 0, 0))
        {
          close(*&v157.sa_len);
          close(*&v157.sa_data[2]);
          close(__endptr);
          v48 = HIDWORD(__endptr);
LABEL_70:
          close(v48);
          return 0xFFFFFFFFLL;
        }

        v155 = v12;
        v80 = sub_10001F2C0(*&v157.sa_len, SHIDWORD(__endptr));
        close(*&v157.sa_len);
        close(*&v157.sa_data[2]);
        close(__endptr);
        close(SHIDWORD(__endptr));
        if (!v80)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v155 = v12;
        notify(connectscript_started_notify, 0);
        v45 = 0xFFFFFFFFLL;
        if ((device_script(ptycommand, dword_10004B9A8, dword_10004B9A8, 1, 0xFFFFFFFF, 0, 0) & 0x80000000) != 0)
        {
          return v45;
        }

        dword_10004B9B0 = v2[619];
        close(dword_10004B9A8);
        dword_10004B9A8 = -1;
        if (pty_delay)
        {
          if (wait_input_fd(dword_10004B9B0, pty_delay) < 1)
          {
            return v45;
          }
        }

        notify(connectscript_finished_notify, 0);
        v47 = &unk_100049000;
      }

      goto LABEL_96;
    }

    v155 = v12;
    v49 = pty_socket;
    if (!pty_socket)
    {
      if (notty)
      {
        v47 = &unk_100049000;
        if (!sub_10001F2C0(0, 1))
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v47 = &unk_100049000;
        if (record_file && !sub_10001F2C0(dword_10004B9B0, dword_10004B9B0))
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_96;
    }

    __endptr = 0;
    v50 = strchr(pty_socket, 58);
    if (!v50 || (v58 = v50, v59 = v50 + 1, v60 = strtol(v50 + 1, &__endptr, 10), v58 == v49) || v60 < 0 || __endptr == v59)
    {
      v79 = "Can't parse host:port for socket destination";
    }

    else
    {
      *v58 = 0;
      v61 = inet_addr(v49);
      if (v61 == -1)
      {
        v62 = gethostbyname(v49);
        if (!v62)
        {
          error("%s: unknown host in socket option", v63, v64, v65, v66, v67, v68, v69, v49);
          *v58 = 58;
          return 0xFFFFFFFFLL;
        }

        v61 = **v62->h_addr_list;
      }

      *v58 = 58;
      v70 = socket(2, 1, 0);
      if ((v70 & 0x80000000) == 0)
      {
        v71 = v70;
        *&v157.sa_len = 512;
        *&v157.sa_data[6] = 0;
        *v157.sa_data = htons();
        *&v157.sa_data[2] = v61;
        if (connect(v71, &v157, 0x10u) < 0)
        {
          error("Can't connect to %s: %m", v72, v73, v74, v75, v76, v77, v78, v49);
          v48 = v71;
          goto LABEL_70;
        }

        v47 = &unk_100049000;
        if (!sub_10001F2C0(v71, v71))
        {
          return 0xFFFFFFFFLL;
        }

LABEL_96:
        if (v11)
        {
          v81 = initializer;
          if (!*v11 && !initializer)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v81 = initializer;
          if (!initializer)
          {
            v11 = 0;
            goto LABEL_135;
          }
        }

        if (dword_10004B9A4 != -1 && !default_device && modem)
        {
          setdtr(dword_10004B9A4, 0);
          sleep(1u);
          setdtr(dword_10004B9A4, 1);
          v81 = initializer;
        }

        if (v81 && *v81)
        {
          if (kill_link)
          {
            return 0xFFFFFFFFLL;
          }

          notify(initscript_started_notify, 0);
          v82 = device_script(initializer, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, 0, 0);
          if (v82)
          {
            error("Initializer script failed", v83, v84, v85, v86, v87, v88, v89, v153);
            v90 = 18;
LABEL_124:
            *status = v90;
            return 0xFFFFFFFFLL;
          }

          if (kill_link)
          {
            disconnect_tty(v82, v83, v84, v85, v86, v87, v88, v89, v153);
            return 0xFFFFFFFFLL;
          }

          notify(initscript_finished_notify, 0);
          info("Serial port initialized.", v91, v92, v93, v94, v95, v96, v97, v153);
        }

        if (v11 && *v11)
        {
          if (kill_link)
          {
            return 0xFFFFFFFFLL;
          }

          notify(connectscript_started_notify, 0);
          v98 = device_script(v11, dword_10004B9B0, dword_10004B9B0, 0, connector_uid, v155, v13);
          *a1 = v98;
          if (v98)
          {
            if (cancelcode == -1 || v98 != cancelcode)
            {
              error("Connect script failed", v99, v100, v101, v102, v103, v104, v105, v153);
              v90 = 8;
              goto LABEL_124;
            }

            goto LABEL_162;
          }

          if (kill_link)
          {
            return 4294967294;
          }

          notify(connectscript_finished_notify, 0);
          info("Serial connection established.", v106, v107, v108, v109, v110, v111, v112, v153);
          if (link_up_hook && !link_up_hook())
          {
            goto LABEL_162;
          }

          link_up_done = 1;
        }

        if (dword_10004B9A4 != -1)
        {
          *&v157.sa_len = 0;
          if (ioctl(dword_10004B9A4, 0x4004746AuLL, &v157) != -1 && (v157.sa_len & 0x40) != 0)
          {
            clocal = 0;
            set_up_tty_local(dword_10004B9A4, 0);
          }
        }

        if (doing_callback == 1)
        {
          v11 = 0;
        }

LABEL_135:
        if (!v11 && modem && devnam)
        {
          ioctl(dword_10004B9B0, 0x2000740EuLL, 0);
          while (1)
          {
            v113 = open(&devnam, 2);
            if ((v113 & 0x80000000) == 0)
            {
              break;
            }

            if (*__error() != 4)
            {
              error("Failed to reopen %s: %m", v114, v115, v116, v117, v118, v119, v120, &devnam);
              *status = 7;
            }

            if (!persist)
            {
              return 0xFFFFFFFFLL;
            }

            v45 = 0xFFFFFFFFLL;
            if (*__error() == 4 && !hungup && kill_link == 0)
            {
              continue;
            }

            return v45;
          }

          v122 = v113;
          if (ioctl(v113, 0x2000740DuLL, 0) < 0)
          {
            error("Failed to reacquire the port %s exclusively: %m", v123, v124, v125, v126, v127, v128, v129, &devnam);
            *status = 7;
            v48 = v122;
            goto LABEL_70;
          }

          close(v122);
          v47 = &unk_100049000;
        }

        v154 = baud_rate;
        slprintf(&v157, 16, "%d");
        script_setenv("SPEED", &v157);
        if (!terminal_window_hook && (!terminal_script || !*terminal_script))
        {
LABEL_165:
          if (welcomer && *welcomer && device_script(welcomer, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, 0, 0))
          {
            warning("Welcome script failed", v146, v147, v148, v149, v150, v151, v152, v154);
          }

          if (v11 | v47[400])
          {
            listen_time = connect_delay;
          }

          return dword_10004B9B0;
        }

        if (!kill_link)
        {
          notify(terminalscript_started_notify, 0);
          if (terminal_window_hook)
          {
            v130 = terminal_window_hook(terminal_script, dword_10004B9B0, dword_10004B9B0);
          }

          else
          {
            v130 = device_script(terminal_script, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, terminal_data, terminal_data_len);
          }

          *a1 = v130;
          if (v130)
          {
            if (cancelcode == -1 || v130 != cancelcode)
            {
              error("Terminal script failed", v131, v132, v133, v134, v135, v136, v137, v154);
              v138 = 20;
              goto LABEL_174;
            }

LABEL_162:
            v138 = 5;
LABEL_174:
            *status = v138;
            return 4294967294;
          }

          if (!kill_link)
          {
            notify(terminalscript_finished_notify, 0);
            info("Terminal connection established.", v139, v140, v141, v142, v143, v144, v145, v154);
            goto LABEL_165;
          }
        }

        return 4294967294;
      }

      v79 = "Can't create socket: %m";
    }

    error(v79, v51, v52, v53, v54, v55, v56, v57, v153);
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (privopen)
    {
      v15 = 0;
    }

    else
    {
      v15 = word_1000452F0 < 100;
    }

    v16 = v15;
    if (v16 == 1)
    {
      seteuid(uid);
    }

    dword_10004B9B0 = open(&devnam, 6, 0);
    v17 = *__error();
    if (v16)
    {
      seteuid(0);
    }

    if ((dword_10004B9B0 & 0x80000000) == 0)
    {
      v153 = 0;
      if (ioctl(dword_10004B9B0, 0x2000740DuLL) < 0)
      {
        v17 = *__error();
        goto LABEL_33;
      }

      dword_10004B9A4 = dword_10004B9B0;
      v25 = fcntl(dword_10004B9B0, 3);
      if (v25 == -1 || (v153 = v25 & 0xFFFFFFFB, fcntl(dword_10004B9B0, 4) < 0))
      {
        warning("Couldn't reset non-blocking mode on device: %m", v26, v27, v28, v29, v30, v31, v32, v153);
      }

      if (fstat(dword_10004B9B0, &v156) < 0 || fchmod(dword_10004B9B0, v156.st_mode & 0xFFED) < 0)
      {
        warning("Couldn't restrict write permissions to %s: %m", v33, v34, v35, v36, v37, v38, v39, &devnam);
      }

      else
      {
        tty_mode = v156.st_mode;
      }

      if (v11)
      {
        if (*v11)
        {
          v40 = 0;
        }

        else
        {
          v40 = initializer == 0;
        }

        v41 = !v40;
        clocal = v41;
        v42 = dword_10004B9B0;
        if (*v11)
        {
          v43 = 1;
          v2 = &unk_10004B000;
LABEL_60:
          set_up_tty(v42, v43);
          goto LABEL_61;
        }

        v44 = initializer;
      }

      else
      {
        v44 = initializer;
        clocal = initializer != 0;
        v42 = dword_10004B9B0;
      }

      v2 = &unk_10004B000;
      v43 = v44 != 0;
      goto LABEL_60;
    }

LABEL_33:
    *__error() = v17;
    if (v17 != 4)
    {
      break;
    }

    if (!persist)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (dword_10004B9B0 < 0)
  {
    error("Failed to open %s: %m", v18, v19, v20, v21, v22, v23, v24, &devnam);
  }

  else
  {
    error("Failed to acquire %s in exclusive mode : %m", v18, v19, v20, v21, v22, v23, v24, &devnam);
    close(dword_10004B9B0);
    dword_10004B9B0 = -1;
  }

  v14 = 7;
LABEL_56:
  *status = v14;
  return 0xFFFFFFFFLL;
}

void disconnect_tty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (disconnect_script)
  {
    v9 = hungup == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if ((dword_10004B9A4 & 0x80000000) == 0)
    {
      clocal = 1;
    }

    set_up_tty_local(dword_10004B9A4, 1);
    if (device_script(disconnect_script, dword_10004B9B0, dword_10004B9B0, 0, disconnector_uid, disconnect_data, disconnect_data_len))
    {

      warning("disconnect script failed", v10, v11, v12, v13, v14, v15, v16, a9);
    }

    else
    {

      info("Serial link disconnected.", v10, v11, v12, v13, v14, v15, v16, a9);
    }
  }
}

void tty_do_send_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  tty_set_xaccm(xmit_accm, a2, a3, a4, a5, a6, a7, a8, v12);

  tty_send_config(a1, v10, v9, v8);
}

uint64_t cleanup_tty()
{
  v0 = dword_10004B9A4;
  if ((dword_10004B9A4 & 0x80000000) == 0)
  {
    if (default_device)
    {
      v1 = 1;
    }

    else
    {
      v1 = modem == 0;
    }

    if (!v1)
    {
      setdtr(dword_10004B9A4, 0);
      sleep(1u);
      v0 = dword_10004B9A4;
    }

    restore_tty(v0);
    if (tty_mode != 0xFFFF && fchmod(dword_10004B9A4, tty_mode))
    {
      chmod(&devnam, tty_mode);
    }

    close(dword_10004B9A4);
    dword_10004B9A4 = -1;
  }

  result = tty_close_fds();
  if (locked)
  {
    result = unlock();
    locked = 0;
  }

  return result;
}

uint64_t tty_close_fds()
{
  if ((dword_10004B9A8 & 0x80000000) == 0)
  {
    close(dword_10004B9A8);
  }

  if ((dword_10004B9AC & 0x80000000) == 0)
  {
    close(dword_10004B9AC);
  }

  result = dword_10004B9A4;
  if ((dword_10004B9A4 & 0x80000000) == 0)
  {
    result = close(dword_10004B9A4);
    dword_10004B9A4 = -1;
  }

  return result;
}

void *tty_init()
{
  add_notifier(&pidchange, sub_10001F1F4, 0);
  result = add_notifier(&sigreceived, sub_10001F20C, 0);
  dword_10004B9A4 = -1;
  the_channel = &tty_channel;
  dword_100049CF0 = 1610612736;
  return result;
}

uint64_t sub_10001F1F4()
{
  if (locked)
  {
    return relock();
  }

  return result;
}

void sub_10001F20C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 == 1 && dword_10004B9A4 != -1 && phase != 12)
  {
    ioctl(dword_10004B9A4, 0x4004746AuLL, &v3);
    if (!clocal && (v3 & 0x40) == 0)
    {
      hungup = 1;
      do_modem_hungup = 1;
      if ((phase - 11) <= 0xFFFFFFFD)
      {
        *status = 16;
      }
    }
  }
}

uint64_t sub_10001F2C0(int a1, int a2)
{
  v4 = safe_fork();
  if (v4 == -1)
  {
    error("Can't fork process for character shunt: %m", v5, v6, v7, v8, v9, v10, v11, v15);
    return 0;
  }

  else
  {
    v12 = v4;
    if (!v4)
    {
      close(dword_10004B9AC);
      setuid(uid);
      if (getuid() == uid)
      {
        v14 = getgid();
        setgid(v14);
        sys_close();
        if (!nodetach)
        {
          log_to_fd = -1;
        }

        sub_10001F400(a1, a2, record_file);
      }

      fatal();
    }

    charshunt_pid = v4;
    add_notifier(&sigreceived, sub_10001FE80, 0);
    close(dword_10004B9A8);
    dword_10004B9A8 = -1;
    dword_10004B9B0 = dword_10004B9AC;
    record_child(v12, "pppd (charshunt)", sub_10001FEA4, 0);
    return 1;
  }
}

void sub_10001F400(int a1, int a2, const char *a3)
{
  signal(1, 1);
  signal(2, 0);
  signal(15, 0);
  signal(20, 0);
  signal(30, 0);
  signal(31, 0);
  signal(6, 0);
  signal(14, 0);
  signal(8, 0);
  signal(4, 0);
  signal(13, 0);
  signal(3, 0);
  signal(11, 0);
  signal(10, 0);
  signal(7, 0);
  signal(27, 0);
  signal(12, 0);
  signal(5, 0);
  signal(26, 0);
  signal(24, 0);
  signal(25, 0);
  if (a1 > 1023 || a2 > 1023 || dword_10004B9A8 >= 1024)
  {
    fatal();
  }

  if (a3)
  {
    v5 = fopen(a3, "a");
    if (!v5)
    {
      error("Couldn't create record file %s: %m", v6, v7, v8, v9, v10, v11, v12, a3);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = fcntl(dword_10004B9A8, 3);
  if (v13 == -1 || (v87 = v13 | 4, fcntl(dword_10004B9A8, 4) == -1))
  {
    warning("couldn't set pty master to nonblock: %m", v14, v15, v16, v17, v18, v19, v20, v87);
  }

  v21 = fcntl(a1, 3);
  if (v21 == -1 || (v88 = v21 | 4, fcntl(a1, 4) == -1))
  {
    v29 = "tty";
    if (!a1)
    {
      v29 = "stdin";
    }

    warning("couldn't set %s to nonblock: %m", v22, v23, v24, v25, v26, v27, v28, v29);
  }

  if (a2 != a1)
  {
    v30 = fcntl(a2, 3);
    if (v30 == -1 || (v88 = v30 | 4, fcntl(a2, 4) == -1))
    {
      warning("couldn't set stdout to nonblock: %m", v31, v32, v33, v34, v35, v36, v37, v88);
    }
  }

  memset(&v107, 0, sizeof(v107));
  memset(&v106, 0, sizeof(v106));
  v104.tv_sec = 0;
  *&v104.tv_usec = 0;
  v102 = 0;
  v103 = 0;
  gettimeofday(&v104, 0);
  if (max_data_rate)
  {
    v38 = max_data_rate / 10;
    if (max_data_rate / 10 <= 100)
    {
      v38 = 100;
    }
  }

  else
  {
    v38 = 1505;
  }

  v91 = v38;
  v105.tv_sec = 0;
  *&v105.tv_usec = 0;
  if (dword_10004B9A8 <= a2)
  {
    v39 = a2;
  }

  else
  {
    v39 = dword_10004B9A8;
  }

  if (v5)
  {
    gettimeofday(&v105, 0);
    putc(7, v5);
    tv_sec = v105.tv_sec;
    putc(v105.tv_sec >> 24, v5);
    putc(tv_sec >> 16, v5);
    putc(tv_sec >> 8, v5);
    putc(tv_sec, v5);
    v105.tv_usec = 0;
  }

  v94 = 0;
  v95 = v5;
  v41 = 0;
  v42 = 0;
  v89 = 0;
  v90 = 0;
  v93 = 0;
  v43 = 0;
  v97 = 0;
  v99 = 1 << a2;
  v98 = &v106.fds_bits[a2 >> 5];
  v44 = 1;
  v45 = 1;
  v46 = 1;
  v47 = 1;
  v92 = 0x100000001;
  while (1)
  {
    __buf = v43;
    while (1)
    {
      v102 = 0;
      LODWORD(v103) = 10000;
      memset(&v107, 0, sizeof(v107));
      memset(&v106, 0, sizeof(v106));
      if (!v42)
      {
        if (v46)
        {
          v51 = __darwin_check_fd_set_overflow(a1, &v107, 0);
          v50 = &v107.fds_bits[a1 >> 5];
          v49 = 1 << a1;
          if (v51)
          {
            goto LABEL_38;
          }
        }

LABEL_40:
        v52 = 0;
        if (v41)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }

      if (v45)
      {
        v48 = dword_10004B9A8;
        if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v106, 0))
        {
          v49 = 1 << v48;
          v50 = &v106.fds_bits[v48 >> 5];
LABEL_38:
          v52 = 0;
          *v50 |= v49;
          if (v41)
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v52 = &v102;
      if (v41)
      {
LABEL_41:
        if (v44)
        {
          v53 = __darwin_check_fd_set_overflow(a2, &v106, 0);
          v54 = &v106.fds_bits[a2 >> 5];
          v55 = 1 << a2;
          if (v53)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v52 = &v102;
        }

        goto LABEL_50;
      }

LABEL_45:
      if (v47)
      {
        v56 = dword_10004B9A8;
        if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v107, 0))
        {
          v55 = 1 << v56;
          v54 = &v107.fds_bits[v56 >> 5];
LABEL_48:
          *v54 |= v55;
        }
      }

LABEL_50:
      if ((select(v39 + 1, &v107, &v106, 0, v52) & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        fatal();
      }
    }

    if (max_data_rate)
    {
      v101.tv_sec = 0;
      *&v101.tv_usec = 0;
      gettimeofday(&v101, 0);
      v57 = (((v101.tv_usec - v104.tv_usec) / 1000000.0 + (v101.tv_sec - v104.tv_sec)) * max_data_rate);
      v58 = v57 < 0;
      if (v89 < v57 || v57 < 0)
      {
        v60 = 0;
      }

      else
      {
        v60 = v89 - v57;
      }

      v61 = __OFSUB__(v90, v57);
      v62 = v90 - v57;
      if (v62 < 0 != v61)
      {
        v58 = 1;
      }

      if (v58)
      {
        v63 = 0;
      }

      else
      {
        v63 = v62;
      }

      v104 = v101;
    }

    else
    {
      v60 = 0;
      v63 = 0;
    }

    v64 = v97;
    v65 = v94;
    if (!__darwin_check_fd_set_overflow(a1, &v107, 0) || (v107.fds_bits[a1 >> 5] & (1 << a1)) == 0)
    {
      v67 = v95;
      goto LABEL_88;
    }

    v66 = read(a1, &inpacket_buf, 0x5E0uLL);
    v65 = v66;
    if ((v66 & 0x80000000) != 0)
    {
      v67 = v95;
      if (*__error() == 5)
      {
        goto LABEL_78;
      }

      if (*__error() == 4 || *__error() == 35)
      {
        v65 = 0;
        goto LABEL_87;
      }

      v86 = "Error reading standard input: %m";
      goto LABEL_139;
    }

    v67 = v95;
    if (v66)
    {
      v68 = dword_10004B9A8;
      if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v106, 0))
      {
        *(v106.fds_bits + ((v68 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v68;
      }

      if (v95)
      {
        v69 = sub_10001FEB0(v95, 2, &inpacket_buf, v65, &v105);
LABEL_80:
        if (!v69)
        {
          v67 = 0;
        }
      }

      goto LABEL_87;
    }

LABEL_78:
    write(dword_10004B9A8, &inpacket_buf, 0);
    if (v67)
    {
      v69 = sub_10001FEB0(v67, 4, 0, 0, &v105);
      v65 = 0;
      LODWORD(v92) = 0;
      goto LABEL_80;
    }

    v65 = 0;
    LODWORD(v92) = 0;
LABEL_87:
    __buf = &inpacket_buf;
LABEL_88:
    v77 = dword_10004B9A8;
    v78 = v93;
    if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v107, 0) && ((*(v107.fds_bits + ((v77 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v77) & 1) != 0)
    {
      v79 = read(dword_10004B9A8, &outpacket_buf, 0x5E0uLL);
      v64 = v79;
      if ((v79 & 0x80000000) == 0)
      {
        if (v79)
        {
          if (__darwin_check_fd_set_overflow(a2, &v106, 0))
          {
            *v98 |= v99;
          }

          if (v67)
          {
            v78 = &outpacket_buf;
            if (!sub_10001FEB0(v67, 1, &outpacket_buf, v64, &v105))
            {
              v67 = 0;
            }

            goto LABEL_108;
          }

LABEL_107:
          v78 = &outpacket_buf;
          goto LABEL_108;
        }

LABEL_99:
        close(a2);
        if (v67)
        {
          v65 = 0;
          v64 = 0;
          v92 = 0;
          if (!sub_10001FEB0(v67, 3, 0, 0, &v105))
          {
            v67 = 0;
          }
        }

        else
        {
          v65 = 0;
          v64 = 0;
          v92 = 0;
        }

        goto LABEL_107;
      }

      if (*__error() == 5)
      {
        goto LABEL_99;
      }

      if (*__error() == 4 || *__error() == 35)
      {
        v64 = 0;
        goto LABEL_107;
      }

      v86 = "Error reading pseudo-tty master: %m";
LABEL_139:
      error(v86, v70, v71, v72, v73, v74, v75, v76, v88);
LABEL_140:
      exit(0);
    }

LABEL_108:
    if (__darwin_check_fd_set_overflow(a2, &v106, 0) && (*v98 & v99) != 0)
    {
      if (v64 + v63 <= v91)
      {
        v80 = v64;
      }

      else
      {
        v80 = v91 - v63;
      }

      v81 = write(a2, v78, v80);
      if (v81 < 0)
      {
        if (*__error() == 5)
        {
          v64 = 0;
          HIDWORD(v92) = 0;
        }

        else if (*__error() != 35 && *__error() != 4)
        {
          v86 = "Error writing standard output: %m";
          goto LABEL_139;
        }
      }

      else
      {
        v78 = (v78 + (v81 & 0x7FFFFFFF));
        v64 = (v64 - v81);
        v63 += v81;
      }
    }

    v82 = dword_10004B9A8;
    v93 = v78;
    if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v106, 0) && ((*(v106.fds_bits + ((v82 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v82) & 1) != 0)
    {
      if (v65 + v60 <= v91)
      {
        v83 = v65;
      }

      else
      {
        v83 = v91 - v60;
      }

      v43 = __buf;
      v84 = write(dword_10004B9A8, __buf, v83);
      if (v84 < 0)
      {
        if (*__error() == 5)
        {
          v65 = 0;
          LODWORD(v92) = 0;
        }

        else if (*__error() != 35 && *__error() != 4)
        {
          v86 = "Error writing pseudo-tty master: %m";
          goto LABEL_139;
        }
      }

      else
      {
        v43 = (__buf + (v84 & 0x7FFFFFFF));
        v65 = (v65 - v84);
        v60 += v84;
      }
    }

    else
    {
      v43 = __buf;
    }

    v95 = v67;
    v42 = v65 != 0;
    v97 = v64;
    v41 = v64 != 0;
    v47 = HIDWORD(v92) != 0;
    v85 = v65;
    v46 = v92 != 0;
    v89 = v60;
    v90 = v63;
    v45 = v60 < v91;
    v44 = v63 < v91;
    v94 = v85;
    if (!v85 && !v97 && !v92)
    {
      goto LABEL_140;
    }
  }
}

uint64_t sub_10001FE80(uint64_t a1, uint64_t a2)
{
  result = charshunt_pid;
  if (charshunt_pid)
  {
    if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 15;
    }

    return kill(charshunt_pid, v3);
  }

  return result;
}

uint64_t sub_10001FEB0(FILE *a1, int a2, const void *a3, unsigned int a4, _DWORD *a5)
{
  v20 = 0uLL;
  gettimeofday(&v20, 0);
  SDWORD2(v20) /= 100000;
  v10 = DWORD2(v20) - a5[2] + 10 * (v20 - *a5);
  if (v10 >= 1)
  {
    if (v10 < 0x100)
    {
      v11 = 6;
    }

    else
    {
      putc(5, a1);
      putc(HIBYTE(v10), a1);
      putc(HIWORD(v10), a1);
      v11 = v10 >> 8;
    }

    putc(v11, a1);
    putc(v10, a1);
    *a5 = v20;
  }

  putc(a2, a1);
  if (a3)
  {
    putc(a4 >> 8, a1);
    putc(a4, a1);
    fwrite(a3, a4, 1uLL, a1);
  }

  fflush(a1);
  if (!ferror(a1))
  {
    return 1;
  }

  error("Error writing record file: %m", v12, v13, v14, v15, v16, v17, v18, v20);
  return 0;
}

double sub_100020008(int a1)
{
  v1 = &upap + 64 * a1;
  *v1 = a1;
  *(v1 + 1) = 0;
  *(v1 + 4) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 37) = 0;
  *(v1 + 12) = 3;
  *&result = 0x1E0000000ALL;
  *(v1 + 7) = 0x1E0000000ALL;
  return result;
}

void sub_100020044(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3 <= 3)
  {
    if (!debug)
    {
      return;
    }

    v9 = "pap_input: rcvd short header.";
LABEL_10:

    dbglog(v9, a2, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  v10 = __rev16(*(a2 + 1));
  if (v10 <= 3)
  {
    if (!debug)
    {
      return;
    }

    v9 = "pap_input: rcvd illegal length.";
    goto LABEL_10;
  }

  if (v10 > a3)
  {
    if (!debug)
    {
      return;
    }

    v9 = "pap_input: rcvd short packet.";
    goto LABEL_10;
  }

  v11 = (&upap + 64 * a1);
  v12 = *a2;
  v13 = v10 - 4;
  switch(v12)
  {
    case 3:
      if (v11[9] != 3)
      {
        return;
      }

      if (v10 == 4)
      {
        if (debug)
        {
          dbglog("pap_rauthnak: ignoring missing msg-length.", a2, a3, a4, a5, a6, a7, a8, v51);
        }
      }

      else if (a2[4])
      {
        if (v13 <= a2[4])
        {
          if (!debug)
          {
            return;
          }

          v9 = "pap_rauthnak: rcvd short packet.";
          goto LABEL_10;
        }

        info("Remote message: %0.*v", a2, a3, a4, a5, a6, a7, a8, a2[4]);
      }

      v11[9] = 5;
      error("PAP authentication failed", a2, a3, a4, a5, a6, a7, a8, v51);
      v18 = *v11;

      auth_withpeer_fail(v18, 49187);
      break;
    case 2:
      if (v11[9] != 3)
      {
        return;
      }

      if (v10 == 4)
      {
        if (debug)
        {
          dbglog("pap_rauthack: ignoring missing msg-length.", a2, a3, a4, a5, a6, a7, a8, v51);
        }
      }

      else if (a2[4])
      {
        if (v13 <= a2[4])
        {
          if (!debug)
          {
            return;
          }

          v9 = "pap_rauthack: rcvd short packet.";
          goto LABEL_10;
        }

        info("Remote message: %0.*v", a2, a3, a4, a5, a6, a7, a8, a2[4]);
      }

      v11[9] = 4;
      notice("PAP authentication succeeded", a2, a3, a4, a5, a6, a7, a8, v51);
      v17 = *v11;

      auth_withpeer_success(v17, 49187, 0);
      break;
    case 1:
      v14 = v11[10];
      if (v14 < 3)
      {
        return;
      }

      v15 = a2[1];
      if (v14 == 5)
      {
        outpacket_buf = 599786495;
        v16 = 3;
        goto LABEL_41;
      }

      if (v14 == 4)
      {
        outpacket_buf = 599786495;
        v16 = 2;
LABEL_41:
        LOBYTE(word_100048120) = v16;
        HIBYTE(word_100048120) = v15;
        word_100048122 = 1280;
        byte_100048124 = 0;
        output(*v11, &outpacket_buf, 9, a4, a5, a6, a7, a8, v51);
        return;
      }

      if (v10 == 4 || (v19 = a2[4], (v10 - v19 - 6) < 0) || (v20 = (a2 + 5), v21 = &a2[a2[4] + 5], v22 = *v21, v10 - v19 - 6 < v22))
      {
        if (debug)
        {
          dbglog("pap_rauth: rcvd short packet.", a2, a3, a4, a5, a6, a7, a8, v51);
        }
      }

      else
      {
        __s = 0;
        v23 = check_passwd(*v11, (a2 + 5), v19, (v21 + 1), v22, &__s);
        bzero(v21 + 1, v22);
        if (v23 == 2)
        {
          if (auth_number())
          {
            v23 = 2;
          }

          else
          {
            warning("calling number %q is not authorized", v24, v25, v26, v27, v28, v29, v30, &remote_number);
            v23 = 3;
          }
        }

        v31 = strlen(__s);
        if (v31 >= 255)
        {
          v32 = 255;
        }

        else
        {
          v32 = v31;
        }

        outpacket_buf = 599786495;
        LOBYTE(word_100048120) = v23;
        HIBYTE(word_100048120) = v15;
        LOBYTE(word_100048122) = (v32 + 5) >> 8;
        HIBYTE(word_100048122) = v32 + 5;
        byte_100048124 = v32;
        memcpy(byte_100048125, __s, v32);
        output(*v11, &outpacket_buf, (v32 + 9), v33, v34, v35, v36, v37, v51);
        slprintf(v53, 256, "%.*v");
        if (v23 == 2)
        {
          v11[10] = 4;
          notice("PAP peer authentication succeeded for %q", v38, v39, v40, v41, v42, v43, v44, v53);
          auth_peer_success(*v11, 49187, 0, v20, v19);
        }

        else
        {
          v11[10] = 5;
          warning("PAP peer authentication failed for %q", v38, v39, v40, v41, v42, v43, v44, v53);
          auth_peer_fail(*v11, 49187, v45, v46, v47, v48, v49, v50);
        }

        if (v11[15] >= 1)
        {
          untimeout(sub_100020B64, v11);
        }
      }

      break;
    default:
      return;
  }
}

void sub_1000205D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &upap + 64 * a1;
  if (*(v9 + 9) == 3)
  {
    error("PAP authentication failed due to protocol-reject", a2, a3, a4, a5, a6, a7, a8, v16);
    auth_withpeer_fail(a1, 49187);
  }

  if (*(v9 + 10) == 3)
  {
    error("PAP authentication of peer failed (protocol-reject)", a2, a3, a4, a5, a6, a7, a8, v16);
    auth_peer_fail(a1, 49187, v10, v11, v12, v13, v14, v15);
  }

  sub_100020714(a1);
}

void sub_100020660(int a1)
{
  v1 = (&upap + 64 * a1);
  v2 = v1[9];
  if (v2 == 2)
  {
    sub_100020A28(&upap + 16 * a1);
  }

  else if (!v2)
  {
    v1[9] = 1;
  }

  v3 = v1[10];
  if (v3 == 2)
  {
    v1[10] = 3;
    if (v1[15] >= 1)
    {

      timeout(sub_100020B64);
    }
  }

  else if (!v3)
  {
    v1[10] = 1;
  }
}

void sub_100020714(int a1)
{
  v1 = (&upap + 64 * a1);
  if (v1[9] == 3)
  {
    untimeout(sub_100020BA8, v1);
  }

  if (v1[10] == 3 && v1[15] >= 1)
  {
    untimeout(sub_100020B64, v1);
  }

  v1[9] = 0;
  v1[10] = 0;
}

uint64_t sub_100020798(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  if ((v11 - 1) > 2)
  {
    v26 = *a1;
    v14 = " code=0x%x";
  }

  else
  {
    v25 = (&off_10003CC90)[v11 - 1];
    v14 = " %s";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  if ((v11 - 2) < 2)
  {
    if (v6 == 4)
    {
      return (v13 - a1);
    }

    v15 = *v13;
    if (v7 <= v15)
    {
      goto LABEL_25;
    }

    v13 += v15 + 1;
    v16 = v7 - (v15 + 1);
    a3(a4, " ");
    v17 = (a1 + 5);
    v18 = v15;
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    if (v6 == 4)
    {
      return (v13 - a1);
    }

    v19 = *v13;
    if (v7 < v19 + 2)
    {
      goto LABEL_25;
    }

    v20 = &v13[*v13];
    v21 = v20[1];
    v22 = v19 + 2 + v21;
    v16 = v7 - v22;
    if (v7 < v22)
    {
      goto LABEL_25;
    }

    v13 += v22;
    a3(a4, " user=");
    print_string(a1 + 5, v19, a3, a4);
    a3(a4, " password=");
    if (!byte_100046080)
    {
      v17 = (v20 + 2);
      v18 = v21;
LABEL_16:
      print_string(v17, v18, a3, a4);
      goto LABEL_24;
    }

    a3(a4, "<hidden>");
  }

  else
  {
    v16 = v6 - 4;
  }

LABEL_24:
  v7 = v16;
  if (v16 >= 1)
  {
LABEL_25:
    v23 = v7 + 1;
    do
    {
      v24 = *v13++;
      (a3)(a4, " %.2x", v24);
      --v23;
    }

    while (v23 > 1);
  }

  return (v13 - a1);
}

void upap_authwithpeer(int a1, char *__s, const char *a3)
{
  v4 = &upap + 64 * a1;
  *(v4 + 1) = __s;
  *(v4 + 4) = strlen(__s);
  *(v4 + 3) = a3;
  *(v4 + 8) = strlen(a3);
  *(v4 + 13) = 0;
  if ((*(v4 + 9) | 2) == 2)
  {
    *(v4 + 9) = 2;
  }

  else
  {

    sub_100020A28(v4);
  }
}

void sub_100020A28(unsigned int *a1)
{
  v2 = a1[4];
  v3 = v2 + a1[8];
  outpacket_buf = 599786495;
  LOBYTE(word_100048120) = 1;
  v4 = *(a1 + 44) + 1;
  *(a1 + 44) = v4;
  HIBYTE(word_100048120) = v4;
  LOBYTE(word_100048122) = (v3 + 6) >> 8;
  HIBYTE(word_100048122) = v3 + 6;
  byte_100048124 = v2;
  memcpy(byte_100048125, *(a1 + 1), v2);
  v5 = &byte_100048125[a1[4]];
  *v5 = a1[8];
  memcpy(v5 + 1, *(a1 + 3), a1[8]);
  output(*a1, &outpacket_buf, (v3 + 10), v6, v7, v8, v9, v10, v12);
  v11 = a1[12];
  timeout(sub_100020BA8);
  ++a1[13];
  a1[9] = 3;
}

void upap_authpeer(int a1)
{
  v1 = &upap + 64 * a1;
  if ((*(v1 + 10) | 2) == 2)
  {
    *(v1 + 10) = 2;
  }

  else
  {
    *(v1 + 10) = 3;
    if (*(v1 + 15) >= 1)
    {
      timeout(sub_100020B64);
    }
  }
}

void sub_100020B64(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[10] == 3)
  {
    auth_peer_fail(*a1, 49187, a3, a4, a5, a6, a7, a8);
    a1[10] = 5;
  }
}

void sub_100020BA8(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[9] == 3)
  {
    if (a1[13] >= a1[14])
    {
      error("No response to PAP authenticate-requests", a2, a3, a4, a5, a6, a7, a8, v10);
      a1[9] = 5;
      v9 = *a1;

      auth_withpeer_fail(v9, 49187);
    }

    else
    {

      sub_100020A28();
    }
  }
}

uint64_t vslprintf(char *a1, int a2, char *__src, int *a4)
{
  v4 = a1;
  v95 = 0;
  v96 = a4;
  v93 = 0;
  v94 = 0;
  __dst = a1;
  if (a2 >= 2)
  {
    v6 = a2 - 1;
    v4 = a1;
    while (1)
    {
      while (1)
      {
          ;
        }

        v8 = &__src[i];
        if (&__src[i] > __src)
        {
          if (v6 >= i)
          {
            v9 = i;
          }

          else
          {
            v9 = v6;
          }

          memcpy(v4, __src, v9);
          v4 += v9;
          v6 -= v9;
          __src = v8;
        }

        if (!*__src)
        {
          goto LABEL_224;
        }

        v11 = __src + 1;
        v10 = __src[1];
        if (v10 == 48)
        {
          v13 = __src[2];
          v12 = 48;
          v11 = __src + 2;
        }

        else
        {
          v12 = 32;
          v13 = __src[1];
        }

        if (v13 == 42)
        {
          v14 = v96;
          v96 += 2;
          v15 = *v14;
          v17 = *++v11;
          v16 = v17;
        }

        else
        {
          v16 = v13;
          if ((v13 - 48) > 9)
          {
            v15 = 0;
          }

          else
          {
            v15 = 0;
            do
            {
              v15 = v16 + 10 * v15 - 48;
              v18 = *++v11;
              v16 = v18;
            }

            while ((v18 - 48) < 0xA);
          }
        }

        if (v16 == 46)
        {
          v16 = v11[1];
          if (v16 == 42)
          {
            v19 = v96;
            v96 += 2;
            v20 = *v19;
            v21 = v11[2];
            v11 += 2;
            v16 = v21;
          }

          else if ((v16 - 48) > 9)
          {
            v20 = 0;
            ++v11;
          }

          else
          {
            v20 = 0;
            ++v11;
            do
            {
              v20 = v16 + 10 * v20 - 48;
              v27 = *++v11;
              v16 = v27;
            }

            while ((v27 - 48) < 0xA);
          }
        }

        else
        {
          v20 = -1;
        }

        __src = v11 + 1;
        if (v16 <= 110)
        {
          break;
        }

        if (v16 > 115)
        {
          if (v16 <= 117)
          {
            if (v16 == 116)
            {
              time(&v95);
              v52 = ctime(&v95);
              v24 = v52 + 4;
              v52[19] = 0;
              goto LABEL_137;
            }

            LODWORD(v26) = 0;
            v30 = v96;
            v96 += 2;
            v25 = *v30;
            goto LABEL_169;
          }

          if (v16 == 118)
          {
LABEL_65:
            v35 = v96;
            v96 += 2;
            v36 = *v35;
            if (v10 != 48 || v20 < 0)
            {
              v37 = strlen(*v35);
              if (v20 >= v37)
              {
                v38 = v37;
              }

              else
              {
                v38 = v20;
              }

              if (v20 >= 0)
              {
                v20 = v38;
              }

              else
              {
                v20 = v37;
              }
            }

            if (v20 < 1 || v6 < 1)
            {
              goto LABEL_196;
            }

            while (2)
            {
              v40 = *v36++;
              v39 = v40;
              v41 = v40;
              if (v16 != 113 && v39 < 0)
              {
                *v4 = 77;
                v42 = v6 >= 2;
                v6 -= 2;
                if (v42)
                {
                  v4[1] = 45;
                  v4 += 2;
                }

                else
                {
                  v6 = 0;
                  ++v4;
                }

                v41 -= 128;
                goto LABEL_88;
              }

              if (v16 != 113)
              {
                if (v41 < 0x20 || (v41 - 127) < 0x21)
                {
LABEL_93:
                  if (v41 == 9)
                  {
                    if (!v6)
                    {
                      goto LABEL_224;
                    }

                    --v6;
                    v43 = 9;
                    goto LABEL_96;
                  }

                  if (!v6)
                  {
                    goto LABEL_224;
                  }

                  *v4 = 94;
                  if (v6 == 1)
                  {
                    ++v4;
                    goto LABEL_224;
                  }

                  v6 -= 2;
                  v4[1] = v41 ^ 0x40;
                  v4 += 2;
LABEL_102:
                  if (v20 < 2)
                  {
                    goto LABEL_196;
                  }

                  --v20;
                  if (!v6)
                  {
                    goto LABEL_196;
                  }

                  continue;
                }

LABEL_91:
                --v6;
                *v4++ = v41;
                goto LABEL_102;
              }

              break;
            }

            if (v41 == 92 || v41 == 34)
            {
              --v6;
              *v4++ = 92;
            }

LABEL_88:
            if (v41 >= 32 && (v41 - 127) >= 0x21)
            {
              if (!v6)
              {
                goto LABEL_224;
              }

              goto LABEL_91;
            }

            if (v16 != 113)
            {
              goto LABEL_93;
            }

            if (v6)
            {
              v44 = v6 - 1;
              *v4++ = 92;
            }

            else
            {
              v44 = 0;
            }

            if (v41 > 9)
            {
              if (v41 == 10)
              {
                if (!v44)
                {
                  goto LABEL_224;
                }

                v6 = v44 - 1;
                v43 = 110;
                goto LABEL_96;
              }

              if (v41 == 12)
              {
                if (!v44)
                {
                  goto LABEL_224;
                }

                v6 = v44 - 1;
                v43 = 102;
                goto LABEL_96;
              }
            }

            else
            {
              if (v41 == 8)
              {
                if (!v44)
                {
                  goto LABEL_224;
                }

                v6 = v44 - 1;
                v43 = 98;
                goto LABEL_96;
              }

              if (v41 == 9)
              {
                if (!v44)
                {
                  goto LABEL_224;
                }

                v6 = v44 - 1;
                v43 = 116;
LABEL_96:
                *v4++ = v43;
                goto LABEL_102;
              }
            }

            if (!v44)
            {
              goto LABEL_224;
            }

            *v4 = 120;
            if (v44 == 1)
            {
              ++v4;
              goto LABEL_224;
            }

            v4[1] = a0123456789abcd[v41 >> 4];
            if (v44 == 2)
            {
              v4 += 2;
              goto LABEL_224;
            }

            v6 = v44 - 3;
            v4[2] = a0123456789abcd[v41 & 0xF];
            v4 += 3;
            goto LABEL_102;
          }

          if (v16 != 120)
          {
            goto LABEL_161;
          }

          goto LABEL_63;
        }

        if (v16 > 112)
        {
          if (v16 == 113)
          {
            goto LABEL_65;
          }

          if (v16 == 115)
          {
            v31 = v96;
            v96 += 2;
            v24 = *v31;
            goto LABEL_137;
          }

          goto LABEL_161;
        }

        if (v16 == 111)
        {
          LODWORD(v26) = 0;
          v50 = v96;
          v96 += 2;
          v25 = *v50;
          v34 = 8;
          goto LABEL_170;
        }

        v26 = v96;
        v96 += 2;
        v25 = *v26;
        LODWORD(v26) = 2;
LABEL_64:
        v34 = 16;
LABEL_170:
        v98 = 0;
        v24 = &v98;
        while (v24 > &v97[v26])
        {
          v73 = v25;
          v25 /= v34;
          *--v24 = a0123456789abcd[v73 - v25 * v34];
          v74 = __OFSUB__(v20--, 1);
          if ((v20 < 0) ^ v74 | (v20 == 0))
          {
            if (v34 > v73)
            {
              break;
            }
          }
        }

        if (v26 == 1)
        {
          v75 = 45;
          v76 = -1;
          goto LABEL_179;
        }

        if (v26 == 2)
        {
          *(v24 - 1) = 120;
          v75 = 48;
          v76 = -2;
LABEL_179:
          v24 += v76;
          *v24 = v75;
        }

        v55 = &v98 - v24;
LABEL_181:
        if (v15 >= 1)
        {
          v77 = v15 >= v6 ? v6 : v15;
          v78 = v77 - v55;
          if (v77 - v55 >= 1)
          {
            v79 = (v77 + ~v55) + 1;
            memset(v4, v12, v79);
            v6 -= v78;
            v4 += v79;
          }
        }

        if (v55 >= v6)
        {
          v80 = v6;
        }

        else
        {
          v80 = v55;
        }

        memcpy(v4, v24, v80);
        v4 += v80;
        v74 = __OFSUB__(v6, v80);
        v6 -= v80;
        if ((v6 < 0) ^ v74 | (v6 == 0))
        {
          goto LABEL_224;
        }
      }

      if (v16 <= 98)
      {
        break;
      }

      if (v16 <= 107)
      {
        if (v16 == 99)
        {
          v51 = v96;
          v96 += 2;
          v97[0] = *v51;
          v97[1] = 0;
          v24 = v97;
          goto LABEL_137;
        }

        if (v16 != 100)
        {
          goto LABEL_161;
        }

        v28 = v96;
        v96 += 2;
        v29 = *v28;
        if (v29 >= 0)
        {
          v25 = v29;
        }

        else
        {
          v25 = -v29;
        }

        LODWORD(v26) = v29 >> 31;
        goto LABEL_169;
      }

      if (v16 != 108)
      {
        if (v16 == 109)
        {
          v32 = __error();
          v24 = strerror(*v32);
          goto LABEL_137;
        }

LABEL_161:
        *v4++ = 37;
        if (v16 != 37)
        {
          __src = v11;
        }

        --v6;
        goto LABEL_196;
      }

      v68 = *__src;
      if (v68 == 117)
      {
        LODWORD(v26) = 0;
        __src = v11 + 2;
        v72 = v96;
        v96 += 2;
        v25 = *v72;
LABEL_169:
        v34 = 10;
        goto LABEL_170;
      }

      if (v68 == 100)
      {
        __src = v11 + 2;
        v69 = v96;
        v96 += 2;
        v70 = *v69;
        if (v70 >= 0)
        {
          v25 = v70;
        }

        else
        {
          v25 = -v70;
        }

        v26 = v70 >> 63;
        goto LABEL_169;
      }

      *v4 = 27685;
      v4 += 2;
      v6 -= 2;
LABEL_196:
      if (v6 <= 0)
      {
        goto LABEL_224;
      }
    }

    if (v16 <= 79)
    {
      if (v16 == 66)
      {
        v45 = v96;
        v96 += 2;
        if (v20 >= 1)
        {
          v46 = *v45;
          v47 = v20 + 1;
          do
          {
            v49 = *v46++;
            v48 = v49;
            if (v10 != 48 && v6 >= 1)
            {
              *v4++ = 32;
              --v6;
            }

            if (v6 >= 1)
            {
              *v4 = a0123456789abcd[v48 >> 4];
              if (v6 == 1)
              {
                v6 = 0;
                ++v4;
              }

              else
              {
                v6 -= 2;
                v4[1] = a0123456789abcd[v48 & 0xF];
                v4 += 2;
              }
            }

            --v47;
          }

          while (v47 > 1);
        }

        goto LABEL_196;
      }

      if (v16 == 73)
      {
        v22 = v96;
        v96 += 2;
        v23 = *v22;
        ntohl();
        v24 = v97;
        slprintf(v97, 32, "%d.%d.%d.%d");
LABEL_137:
        v53 = strlen(v24);
        if (v20 >= v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = v20;
        }

        if (v20 >= 0)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }

        goto LABEL_181;
      }

      goto LABEL_161;
    }

    if (v16 != 80)
    {
      if (v16 != 88)
      {
        goto LABEL_161;
      }

LABEL_63:
      LODWORD(v26) = 0;
      v33 = v96;
      v96 += 2;
      v25 = *v33;
      goto LABEL_64;
    }

    v93 = v4;
    LODWORD(v94) = v6 + 1;
    v56 = v96;
    v96 += 2;
    v57 = *v56;
    v96 = (v56 + 2);
    v58 = *(v56 + 2);
    v59 = (v58 - 4);
    if (v58 < 4)
    {
      goto LABEL_194;
    }

    if (*v57 == 255 && v57[1] == 3)
    {
      v60 = v57 + 4;
      v61 = __rev16(*(v57 + 1));
      v62 = protocols;
      if (protocols)
      {
        v63 = &off_100043898;
        v64 = protocols;
        do
        {
          if (v61 == *v64)
          {
            v90 = *(v64 + 11);
            sub_10002177C(&v93, "[%s");
            v81 = (*(v64 + 8))(v60, v59, sub_10002177C, &v93);
            sub_10002177C(&v93, "]");
            LODWORD(v59) = v59 - v81;
            goto LABEL_166;
          }

          v65 = *v63++;
          v64 = v65;
        }

        while (v65);
        if (protocols)
        {
          v66 = &off_100043898;
          while (v61 != (*v62 & 0x7FFF))
          {
            v67 = *v66++;
            v62 = v67;
            if (!v67)
            {
              goto LABEL_221;
            }
          }

          if (*(v62 + 12))
          {
            v91 = *(v62 + 12);
            sub_10002177C(&v93, "[%s data");
            v82 = *(v62 + 20);
            if (v82)
            {
              v83 = v82(v60, v59, sub_10002177C, &v93);
              v60 += v83;
              LODWORD(v59) = v59 - v83;
            }

            sub_10002177C(&v93, "]\n");
            if (v59 >= 1)
            {
              do
              {
                if (v59 >= 0x10)
                {
                  v84 = 16;
                }

                else
                {
                  v84 = v59;
                }

                sub_10002177C(&v93, "  ");
                v85 = 0;
                do
                {
                  v86 = v85;
                  if (v85 == 8)
                  {
                    sub_10002177C(&v93, "  ");
                  }

                  sub_10002177C(&v93, "%.1B");
                  v85 = v86 + 1;
                }

                while (v86 + 1 < v84);
                if (v86 <= 0xE)
                {
                  do
                  {
                    if (v86 == 7)
                    {
                      sub_10002177C(&v93, "  ");
                    }

                    sub_10002177C(&v93, "   ");
                    LODWORD(v86) = v86 + 1;
                  }

                  while (v86 < 0xF);
                }

                sub_10002177C(&v93, "   '");
                v87 = 0;
                do
                {
                  if (v60[v87] - 32 < 0x5F)
                  {
                    v88 = v60[v87];
                  }

                  sub_10002177C(&v93, "%c");
                  ++v87;
                }

                while (v87 < v84);
                sub_10002177C(&v93, "'\n");
                v60 += 16;
                v74 = __OFSUB__(v59, 16);
                LODWORD(v59) = v59 - 16;
              }

              while (!((v59 < 0) ^ v74 | (v59 == 0)));
            }

            goto LABEL_194;
          }
        }
      }

LABEL_221:
      sub_10002177C(&v93, "[proto=0x%x]");
    }

    else
    {
      LODWORD(v59) = v58;
    }

LABEL_166:
    if (v59 >= 33)
    {
      v71 = "%.32B ...";
LABEL_195:
      sub_10002177C(&v93, v71);
      v4 = v93;
      v6 = v94 - 1;
      goto LABEL_196;
    }

LABEL_194:
    v71 = "%.*B";
    goto LABEL_195;
  }

LABEL_224:
  *v4 = 0;
  return (v4 - __dst);
}

uint64_t sub_10002177C(uint64_t a1, void *__src)
{
  result = vslprintf(*a1, *(a1 + 8), __src);
  *a1 += result;
  *(a1 + 8) -= result;
  return result;
}

size_t init_pr_log(size_t result, int a2)
{
  qword_10004BAB8 = byte_10004B9B8;
  if (result)
  {
    __strlcpy_chk();
    result = strlen(byte_10004B9B8);
    qword_10004BAB8 = &byte_10004B9B8[result];
  }

  dword_10004BAC0 = a2;
  return result;
}

void end_pr_log()
{
  if (qword_10004BAB8 != byte_10004B9B8)
  {
    *qword_10004BAB8 = 0;
    sub_100021874(dword_10004BAC0, byte_10004B9B8);
  }
}

void sub_100021874(int a1, const char *a2)
{
  sys_log(a1, "%s", a2);
  if ((log_to_fd & 0x80000000) == 0 && (a1 != 7 || debug))
  {
    v7 = 0;
    v4 = strlen(a2);
    time(&v7);
    v5 = localtime(&v7);
    v6 = strftime(__buf, 0x40uLL, "%c : ", v5);
    if (write(log_to_fd, __buf, v6) != v6)
    {
      log_to_fd = -1;
    }

    if (v4 >= 1)
    {
      v4 -= a2[v4 - 1] == 10;
    }

    if (write(log_to_fd, a2, v4) != v4 || write(log_to_fd, "\n", 1uLL) != 1)
    {
      log_to_fd = -1;
    }
  }
}

void pr_log(uint64_t a1, char *__src, ...)
{
  va_start(va, __src);
  v2 = __s;
  v3 = vslprintf(__s, 256, __src, va);
  v4 = strchr(__s, 10);
  v5 = v4;
  v6 = qword_10004BAB8;
  if (qword_10004BAB8 == byte_10004B9B8)
  {
    goto LABEL_10;
  }

  v2 = __s;
  v7 = v4 - __s;
  if (!v4)
  {
    v7 = v3;
  }

  v8 = (qword_10004BAB8 + v7);
  if (v8 >= &qword_10004BAB8)
  {
LABEL_9:
    *v6 = 0;
    sub_100021874(dword_10004BAC0, byte_10004B9B8);
    qword_10004BAB8 = byte_10004B9B8;
LABEL_10:
    while (v5)
    {
      *v5 = 0;
      sub_100021874(dword_10004BAC0, v2);
      v2 = v5 + 1;
      v5 = strchr(v5 + 1, 10);
    }

    v9 = &__s[v3] - v2;
    if (v9 >= 1)
    {
      __memcpy_chk();
      qword_10004BAB8 = &byte_10004B9B8[v9 & 0x7FFFFFFF];
    }

    return;
  }

  if (v7 >= 1)
  {
    memcpy(qword_10004BAB8, __s, v7);
    qword_10004BAB8 = v8;
    v6 = v8;
  }

  if (v5)
  {
    v2 = v5 + 1;
    v5 = strchr(v5 + 1, 10);
    goto LABEL_9;
  }
}

uint64_t print_string(char *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  a3(a4, "");
  if (a2 >= 1)
  {
    v7 = a2 + 1;
    do
    {
      v9 = *a1++;
      v8 = v9;
      if ((v9 - 32) > 0x5E)
      {
        if (v8 == 9)
        {
          v10 = a4;
          v11 = "\\t";
        }

        else if (v8 == 13)
        {
          v10 = a4;
          v11 = "\\r";
        }

        else
        {
          v10 = a4;
          if (v8 == 10)
          {
            v11 = "\\n";
          }

          else
          {
            v11 = "\\%.3o";
          }
        }
      }

      else
      {
        if (v8 == 92 || v8 == 34)
        {
          a3(a4, "\");
        }

        v10 = a4;
        v11 = "%c";
      }

      a3(v10, v11);
      --v7;
    }

    while (v7 > 1);
  }

  return (a3)(a4, "");
}

void sub_100021CEC()
{
  v0 = __chkstk_darwin();
  vslprintf(v3, 4096, v1, v2);
  sub_100021874(v0, v3);
}

void error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  vslprintf(v10, 4096, v9, &a9);
  sub_100021874(3, v10);
  ++error_count;
}

void warning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  vslprintf(v10, 4096, v9, &a9);
  sub_100021874(4, v10);
}

void notice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  vslprintf(v10, 4096, v9, &a9);
  sub_100021874(5, v10);
}

void info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  vslprintf(v10, 4096, v9, &a9);
  sub_100021874(6, v10);
}

void dbglog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  vslprintf(v10, 4096, v9, &a9);
  sub_100021874(7, v10);
}

void dump_packet(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (debug)
  {
    if (a3 < 8)
    {
      goto LABEL_17;
    }

    v8 = __rev16(*(a2 + 2));
    v9 = debug <= 1 && unsuccess == 0;
    if (!v9 || v8 != 49185)
    {
      goto LABEL_17;
    }

    v11 = __rev16(*(a2 + 6));
    v12 = *(a2 + 4);
    if ((v12 - 9) >= 2)
    {
      if (v12 != 13 || v11 <= 3)
      {
        goto LABEL_17;
      }
    }

    else if (v11 < 4)
    {
LABEL_17:
      dbglog("%s %P", a2, a3, a4, a5, a6, a7, a8, a1);
      return;
    }

    if (v11 <= a3 - 4)
    {
      return;
    }

    goto LABEL_17;
  }
}

uint64_t complete_read(int a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3;
  do
  {
    while (1)
    {
      v8 = read(a1, a2, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v6 += v8;
        a2 += v8;
        v7 = a3 - v6;
        if (a3 > v6)
        {
          continue;
        }
      }

      return v6;
    }
  }

  while (*__error() == 4);
  return -1;
}

uint64_t lock(char *a1)
{
  v2 = strstr(a1, "dev/");
  if (v2)
  {
    v3 = __dst;
    strncpy(__dst, v2 + 4, 0x3FFuLL);
    __dst[1023] = 0;
    for (i = strrchr(__dst, 47); i; i = strrchr(__dst, 47))
    {
      *i = 95;
      v3 = __dst;
    }
  }

  else
  {
    v5 = strrchr(a1, 47);
    if (v5)
    {
      v3 = v5 + 1;
    }

    else
    {
      v3 = a1;
    }
  }

  slprintf(&byte_10004BAC4, 1024, "%s/LCK..%s");
  v6 = open(&byte_10004BAC4, 2562, 420, v3);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_9:
    v7 = v6;
    getpid();
    slprintf(__buf, 12, "%10d\n");
    write(v7, __buf, 0xBuLL);
    close(v7);
    return 0;
  }

  while (1)
  {
    if (*__error() != 17)
    {
      error("Can't create lock file %s: %m", v9, v10, v11, v12, v13, v14, v15, &byte_10004BAC4);
      goto LABEL_28;
    }

    v16 = open(&byte_10004BAC4, 0, 0);
    if (v16 < 0)
    {
      break;
    }

    v17 = v16;
    v18 = read(v16, __buf, 0xBuLL);
    close(v17);
    if (v18 <= 0)
    {
      error("Can't read pid from lock file %s", v19, v20, v21, v22, v23, v24, v25, &byte_10004BAC4);
      goto LABEL_28;
    }

    __buf[v18 & 0x7FFFFFFF] = 0;
    v26 = atoi(__buf);
    if (v26 == getpid())
    {
      return 1;
    }

    if (v26 && (kill(v26, 0) != -1 || *__error() != 3))
    {
      notice("Device %s is locked by pid %d", v27, v28, v29, v30, v31, v32, v33, v3);
      goto LABEL_28;
    }

    if (unlink(&byte_10004BAC4))
    {
      warning("Couldn't remove stale lock on %s", v34, v35, v36, v37, v38, v39, v40, v3);
      goto LABEL_28;
    }

    v48 = v26;
    notice("Removed stale lock on %s (pid %d)", v34, v35, v36, v37, v38, v39, v40, v3);
LABEL_20:
    v6 = open(&byte_10004BAC4, 2562, 420, v48);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*__error() == 2)
  {
    goto LABEL_20;
  }

  error("Can't open existing lock file %s: %m", v41, v42, v43, v44, v45, v46, v47, &byte_10004BAC4);
LABEL_28:
  byte_10004BAC4 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t relock()
{
  if (byte_10004BAC4)
  {
    v0 = open(&byte_10004BAC4, 1, 0);
    if ((v0 & 0x80000000) == 0)
    {
      v8 = v0;
      slprintf(__buf, 12, "%10d\n");
      write(v8, __buf, 0xBuLL);
      close(v8);
      return 0;
    }

    error("Couldn't reopen lock file %s: %m", v1, v2, v3, v4, v5, v6, v7, &byte_10004BAC4);
    byte_10004BAC4 = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t unlock()
{
  if (byte_10004BAC4)
  {
    result = unlink(&byte_10004BAC4);
    byte_10004BAC4 = 0;
  }

  return result;
}

void log_vpn_interface_address_event(int a1, uint64_t a2, int a3, int a4, void *a5)
{
  if (!a2)
  {
    addr2ascii(2, a5, 4, v36);
    notice("%s: %d secs TIMEOUT waiting for interface to be reconfigured. previous setting (name: %s, address: %s).", v19, v20, v21, v22, v23, v24, v25, a1);
    return;
  }

  v8 = *(a2 + 64);
  v32 = ntohl();
  v9 = *(a2 + 20);
  addr2ascii(2, a5, 4, v36);
  v10 = *(a2 + 28);
  sub_1000227FC(*(a2 + 24));
  addr2ascii(2, (a2 + 48), 4, v35);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      addr2ascii(2, &v32, 4, v34);
      addr2ascii(2, (a2 + 72), 4, v33);
      v18 = "%s: Address deleted. previous interface setting (name: %s, address: %s), deleted interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v9 == 7)
    {
      v30 = *(a2 + 54);
      v31 = *(a2 + 53);
      v28 = *(a2 + 56);
      v29 = *(a2 + 55);
      v26 = *(a2 + 58);
      v27 = *(a2 + 57);
      v18 = "%s: ARP collided. previous interface setting (name: %s, address: %s), conflicting interface setting (name: %s%d, family: %s, address: %s, mac: %x:%x:%x:%x:%x:%x).";
      goto LABEL_13;
    }

LABEL_10:
    addr2ascii(2, &v32, 4, v34);
    addr2ascii(2, (a2 + 72), 4, v33);
    v18 = "%s: Other Address event (%d). previous interface setting (name: %s, address: %s), other interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    addr2ascii(2, &v32, 4, v34);
    addr2ascii(2, (a2 + 72), 4, v33);
    v18 = "%s: Address added. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
    goto LABEL_13;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  addr2ascii(2, &v32, 4, v34);
  addr2ascii(2, (a2 + 72), 4, v33);
  v18 = "%s: Address changed. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
LABEL_13:
  notice(v18, v11, v12, v13, v14, v15, v16, v17, a1);
}

char *sub_1000227FC(int a1)
{
  if ((a1 - 1) < 0xE)
  {
    return (&off_10003CCA8)[a1 - 1];
  }

  v1 = byte_10004BEC4;
  snprintf(byte_10004BEC4, 0x10uLL, "%d", a1);
  return v1;
}

uint64_t check_vpn_interface_or_service_unrecoverable(const __SCDynamicStore *a1, uint64_t a2, uint64_t a3, char *cStr, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a1)
  {
    dbglog("%s: invalid SCDynamicStore reference", a2, a3, cStr, a5, a6, a7, a8, a2);
    return 0;
  }

  if ((*(a3 + 20) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  memset(v96, 0, 512);
  memset(v95, 0, 512);
  v10 = CFStringCreateWithCStringNoCopy(0, cStr, 0x600u, kCFAllocatorNull);
  if (!v10)
  {
    notice("%s: failed to initialize interface CFString", v11, v12, v13, v14, v15, v16, v17, v8);
    return 1;
  }

  v18 = v10;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v20 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v18, kSCEntNetAirPort);
  CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v22 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v18, kSCEntNetAirPort);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v22);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(v20, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v24 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
  CFArrayAppendValue(v20, v24);
  CFRelease(v24);
  v25 = SCDynamicStoreCopyMultiple(a1, Mutable, v20);
  CFRelease(Mutable);
  CFRelease(v20);
  if (!v25)
  {
    notice("%s: failed to initialize SCDynamicStore dictionary", v26, v27, v28, v29, v30, v31, v32, v8);
    CFRelease(v18);
    return 1;
  }

  Count = CFDictionaryGetCount(v25);
  if (Count <= 0)
  {
    notice("%s: empty SCDynamicStore dictionary", v34, v35, v36, v37, v38, v39, v40, v8);
    CFRelease(v18);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v41 = Count;
    if (Count < 0x81)
    {
      v43 = v95;
      Typed = v96;
    }

    else
    {
      Typed = CFAllocatorAllocateTyped();
      v43 = CFAllocatorAllocateTyped();
    }

    theDict = v25;
    CFDictionaryGetKeysAndValues(v25, Typed, v43);
    v93 = 0;
    for (i = 0; i != v41; ++i)
    {
      v48 = Typed[i];
      v49 = v43[i];
      TypeID = CFStringGetTypeID();
      if (v48)
      {
        if (CFGetTypeID(v48) == TypeID)
        {
          v51 = CFDictionaryGetTypeID();
          if (v49)
          {
            if (CFGetTypeID(v49) == v51)
            {
              if (CFStringHasSuffix(v48, kSCEntNetInterface))
              {
                Value = CFDictionaryGetValue(v49, kSCPropNetInterfaceDeviceName);
                v53 = CFStringGetTypeID();
                if (Value && CFGetTypeID(Value) == v53 && CFEqual(v18, Value))
                {
                  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v48, @"/");
                  if (CFArrayGetCount(ArrayBySeparatingStrings) < 4)
                  {
                    v73 = 1;
                  }

                  else
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
                    v56 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv4);
                    if (v56)
                    {
                      v64 = v56;
                      v65 = CFDictionaryGetValue(theDict, v56);
                      v73 = v65 != 0;
                      if (!v65)
                      {
                        notice("%s: detected disabled IPv4 Config", v66, v67, v68, v69, v70, v71, v72, v8);
                      }

                      CFRelease(v64);
                    }

                    else
                    {
                      notice("%s: detected disabled IPv4 Config", v57, v58, v59, v60, v61, v62, v63, v8);
                      v73 = 0;
                    }
                  }

                  if (ArrayBySeparatingStrings)
                  {
                    CFRelease(ArrayBySeparatingStrings);
                  }

                  v93 = 1;
                  v45 = 1;
                  if (!v73)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else if (CFStringHasSuffix(v48, kSCEntNetAirPort))
              {
                if (CFStringHasPrefix(v48, kSCDynamicStoreDomainSetup))
                {
                  v74 = CFDictionaryGetValue(v49, @"PowerEnabled");
                  v75 = CFBooleanGetTypeID();
                  if (v74 && CFGetTypeID(v74) == v75 && CFEqual(v74, kCFBooleanFalse))
                  {
                    notice("%s: detected AirPort, PowerEnable == FALSE", v76, v77, v78, v79, v80, v81, v82, v8);
                    v45 = 1;
                    goto LABEL_48;
                  }
                }

                else if (CFStringHasPrefix(v48, kSCDynamicStoreDomainState))
                {
                  valuePtr = 0;
                  v83 = CFDictionaryGetValue(v49, @"Power Status");
                  v84 = CFNumberGetTypeID();
                  if (v83)
                  {
                    if (CFGetTypeID(v83) == v84 && CFNumberGetValue(v83, kCFNumberShortType, &valuePtr) && !valuePtr)
                    {
                      notice("%s: detected AirPort, PowerStatus == 0", v85, v86, v87, v88, v89, v90, v91, v8);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v45 = 0;
LABEL_48:
    CFRelease(v18);
    if (Typed != v96)
    {
      CFAllocatorDeallocate(0, Typed);
      CFAllocatorDeallocate(0, v43);
    }

    v25 = theDict;
    v46 = v93;
  }

  CFRelease(v25);
  if (v46)
  {
    return v45;
  }

  else
  {
    return 1;
  }
}

BOOL check_vpn_interface_alternate(int a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if ((*(a2 + 20) - 1) <= 1)
    {
      v2 = *(a2 + 48);
      if (ntohl() >> 16 != 43518)
      {
        return 1;
      }
    }
  }

  return result;
}

double sub_100022F78(int a1)
{
  v1 = &eap + 416 * a1;
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = a1;
  *(v1 + 38) = 0xA00000003;
  result = NAN;
  *(v1 + 44) = -1;
  return result;
}

void sub_100022FE0(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3 < 4)
  {
    return;
  }

  v9 = a3;
  v11 = __rev16(*(a2 + 1));
  v12 = v11 - 4;
  if (v11 < 4 || v11 > a3)
  {
    return;
  }

  v14 = (&eap + 416 * a1);
  v15 = *a2;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      if (v14[1] == 4)
      {
        return;
      }
    }

    else if (v15 != 4)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v16 = a2[1];
  if (v15 != 1)
  {
    if (v15 == 2)
    {
      if (v14[2] - 1 < 2 || v11 == 4 || *(v14 + 296) != v16)
      {
        return;
      }

      v17 = a2[4];
      if (v17 == 3)
      {
        if (!*(v14 + 48))
        {
          return;
        }

        untimeout(sub_100023FCC, v14);
        v22 = *(v14 + 48);
        v23 = &eap_extensions;
        while (1)
        {
          v23 = *v23;
          if (!v23)
          {
            break;
          }

          if (*(v23 + 8) == a2[5])
          {
            goto LABEL_60;
          }
        }

        if (*(v22 + 8))
        {
LABEL_60:
          (*(v22 + 48))(*(v14 + 49));
          free(*(v14 + 50));
          free(*(v14 + 51));
          *(v14 + 24) = 0u;
          *(v14 + 25) = 0u;
          if (v23)
          {
            goto LABEL_62;
          }

          v23 = *v22;
          if (*v22)
          {
            goto LABEL_62;
          }

          v43 = "Server and client disagree on EAP type";
          goto LABEL_76;
        }
      }

      else
      {
        if (*(v14 + 298) && v17 != *(v14 + 298))
        {
          return;
        }

        untimeout(sub_100023FCC, v14);
        if (v17 == 1)
        {
          if (v12 >= 0x100)
          {
            v34 = 256;
          }

          else
          {
            v34 = v12;
          }

          v35 = v34 - 1;
          memcpy(v14 + 10, a2 + 5, (v34 - 1));
          *(v14 + v35 + 40) = 0;
          v23 = eap_extensions;
          if (eap_extensions)
          {
LABEL_62:
            *(v14 + 48) = v23;
            *(v14 + 298) = *(v23 + 8);
            *(v14 + 50) = malloc_type_malloc(0x40uLL, 0x1090040C3ADEBCBuLL);
            v59 = malloc_type_malloc(0x18uLL, 0x10900405F3747B1uLL);
            *(v14 + 51) = v59;
            if (v59)
            {
              v60 = *(v14 + 50);
              if (v60)
              {
                *v60 = 64;
                *v59 = 24;
                *(v60 + 2) = 1;
                *(v60 + 3) = *(v14 + 296) + 1;
                v61 = *v14;
                mtu = netif_get_mtu();
                v63 = *(v14 + 50);
                *(v63 + 4) = mtu;
                *(v63 + 24) = v14 + 10;
                *(v63 + 32) = 0;
                *(v63 + 40) = 0;
                *(v63 + 48) = dbglog;
                *(v63 + 56) = error;
                *(v63 + 6) = 0;
                v64 = *(v14 + 48);
                v66 = *(v64 + 32);
                v65 = *(v64 + 40);
                *(v63 + 16) = v66;
                if (v65(v63, v14 + 98))
                {
                  v70 = v23[2];
                  if (!v70)
                  {
                    v70 = "???";
                  }

                  v90 = *(v14 + 298);
                  error("EAP cannot initialize plugin for %s (request type %d)", v67, v68, v69, v18, v19, v20, v21, v70);
                  return;
                }

                v71 = v14;
                v72 = 1;
                v73 = 0;
                v74 = 0;
                goto LABEL_70;
              }
            }

LABEL_79:
            novm();
          }

          v43 = "No EAP server protocol available";
LABEL_76:
          error(v43, v36, v37, v38, v39, v40, v41, v42, v89);
          v14[2] = 6;
          v88 = *v14;

          auth_peer_fail(v88, 49703, v82, v83, v84, v85, v86, v87);
          return;
        }
      }

      v71 = v14;
      v72 = 4;
      v73 = a2;
      v74 = v9;
LABEL_70:

      sub_1000240F0(v71, v72, v73, v74, v18, v19, v20, v21, a9);
      return;
    }

LABEL_22:
    warning("Unknown EAP code (%d) received.", a2, a3, a4, a5, a6, a7, a8, *a2);
    return;
  }

  if (v11 == 4)
  {
    return;
  }

  if (v14[1] - 1 < 2)
  {
    return;
  }

  v24 = a2[4];
  switch(v24)
  {
    case 3:
      return;
    case 2:
      info("Remote message: %0.*v", a2, a3, a4, a5, a6, a7, a8, v11 - 5);
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v16;
      word_100048122 = 1024;
      v32 = *v14;
      v33 = 8;
      goto LABEL_34;
    case 1:
      v25 = *(v14 + 2);
      v26 = strlen(v25);
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v16;
      LOBYTE(word_100048122) = (v26 + 5) >> 8;
      HIBYTE(word_100048122) = v26 + 5;
      byte_100048124 = 1;
      memcpy(byte_100048125, v25, v26 + 1 - 1);
      v32 = *v14;
      v33 = (v26 + 9);
LABEL_34:

      output(v32, &outpacket_buf, v33, v27, v28, v29, v30, v31, a9);
      return;
  }

  v44 = *(v14 + 40);
  if (v44)
  {
    if (*(v44 + 8) != v24)
    {
      error("EAP received an unexpected request for type %d", a2, a3, a4, a5, a6, a7, a8, a2[4]);
      return;
    }

    goto LABEL_30;
  }

  v45 = &eap_extensions;
  do
  {
    v45 = *v45;
    if (!v45)
    {
      error("EAP refuse to authenticate using type %d", a2, a3, a4, a5, a6, a7, a8, a2[4]);
      if (!eap_extensions)
      {
        return;
      }

      error("EAP send NAK requesting type %d", v75, v76, v77, v78, v79, v80, v81, *(eap_extensions + 8));
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v16;
      word_100048122 = 1536;
      byte_100048124 = 3;
      byte_100048125[0] = *(eap_extensions + 8);
      v32 = *v14;
      v33 = 10;
      goto LABEL_34;
    }
  }

  while (*(v45 + 8) != v24);
  *(v14 + 40) = v45;
  *(v14 + 42) = malloc_type_malloc(0x40uLL, 0x1090040C3ADEBCBuLL);
  v46 = malloc_type_malloc(0x18uLL, 0x10900405F3747B1uLL);
  *(v14 + 43) = v46;
  if (!v46)
  {
    goto LABEL_79;
  }

  v47 = *(v14 + 42);
  if (!v47)
  {
    goto LABEL_79;
  }

  *v47 = 64;
  *v46 = 24;
  v48 = *v14;
  v49 = netif_get_mtu();
  v50 = *(v14 + 42);
  *(v50 + 4) = v49;
  *(v50 + 24) = *(v14 + 1);
  *(v50 + 40) = *(v14 + 4);
  *(v50 + 48) = dbglog;
  *(v50 + 56) = error;
  *(v50 + 6) = 0;
  v51 = *(v14 + 40);
  v53 = *(v51 + 32);
  v52 = *(v51 + 40);
  *(v50 + 16) = v53;
  if (!v52(v50, v14 + 82))
  {
LABEL_30:

    sub_100024484(v14, 4, a2, v9, a5, a6, a7, a8, a9);
    return;
  }

  v57 = v45[2];
  if (!v57)
  {
    v57 = "???";
  }

  error("EAP cannot initialize plugin for %s (request type %d)", v54, v55, v56, a5, a6, a7, a8, v57);
  v58 = *v14;

  auth_withpeer_fail(v58, 49703);
}

double sub_100023650(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &eap + 416 * a1;
  if (*(v9 + 2) >= 2u)
  {
    auth_peer_fail(a1, 49703, a3, a4, a5, a6, a7, a8);
  }

  if (*(v9 + 1) >= 2u)
  {
    auth_withpeer_fail(a1, 49703);
  }

  return sub_100023738(a1);
}

void sub_1000236C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &eap + 416 * a1;
  v9 = *(v8 + 1);
  if (v9)
  {
    if (v9 != 2)
    {
      goto LABEL_6;
    }

    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  *(v8 + 1) = v10;
LABEL_6:
  v11 = *(v8 + 2);
  if (v11)
  {
    if (v11 != 2)
    {
      return;
    }

    sub_100023BD4(&eap + 104 * a1, a2, a3, a4, a5, a6, a7, a8);
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  *(v8 + 2) = v12;
}

double sub_100023738(int a1)
{
  v1 = &eap + 416 * a1;
  v2 = *(v1 + 2);
  v3 = sub_100023FCC;
  v4 = v2 == 3 || v2 == 5;
  if (v4 || v2 == 4 && (v3 = sub_100024098, *(v1 + 75)))
  {
    untimeout(v3, v1);
  }

  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v6 = *(v1 + 40);
  if (v6)
  {
    (*(v6 + 48))(*(v1 + 41));
    free(*(v1 + 42));
    free(*(v1 + 43));
    result = 0.0;
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    (*(v7 + 48))(*(v1 + 49));
    free(*(v1 + 50));
    free(*(v1 + 51));
    result = 0.0;
    *(v1 + 24) = 0u;
    *(v1 + 25) = 0u;
  }

  return result;
}

uint64_t sub_100023804(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v7 | (v6 << 8);
  v9 = v8 - 4;
  if (v8 < 4 || v8 > a2)
  {
    return 0;
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = v13 - 1;
  if ((v13 - 1) > 3u)
  {
    v30 = *a1;
    v17 = " code=0x%x";
  }

  else
  {
    v16 = (&off_10003CD18)[v15];
    v17 = " %s";
  }

  a3(a4, v17);
  (a3)(a4, " id=0x%x", v14);
  if (v15 < 2)
  {
    if (v8 != 4)
    {
      v20 = a1[4];
      if ((v20 - 1) >= 3)
      {
        v24 = &eap_extensions;
        while (1)
        {
          v24 = *v24;
          if (!v24)
          {
            break;
          }

          if (*(v24 + 8) == v20)
          {
            v24[2];
            goto LABEL_28;
          }
        }

        v31 = a1[4];
        v25 = " type=0x%x ";
      }

      else
      {
        v21 = (&off_10003CD38)[v20 - 1];
LABEL_28:
        v25 = " %s ";
      }

      a3(a4, v25);
      v19 = v8 - 5;
      if (v8 != 5)
      {
        v26 = (a1 + 5);
        if ((v20 - 1) >= 2u)
        {
          v27 = &eap_extensions;
          while (1)
          {
            v27 = *v27;
            if (!v27)
            {
              break;
            }

            if (*(v27 + 8) == v20)
            {
              v28 = v27[11];
              if (v28)
              {
                v28(a3, a4, v13, v26, v8 - 5);
                return v19 + 5;
              }

              break;
            }
          }

          a3(a4, "<");
          if (v8 >= 6)
          {
            do
            {
              v29 = *v26++;
              (a3)(a4, "%.2x", v29);
              --v9;
            }

            while (v9 > 1);
          }
        }

        else
        {
          a3(a4, "<");
          print_string(v26, v8 - 5, a3, a4);
        }

        a3(a4, ">");
      }

      return v19 + 5;
    }

    goto LABEL_23;
  }

  v18 = (a1 + 4);
  if ((v13 - 3) >= 2)
  {
    if (v8 >= 5)
    {
      v22 = (v6 << 8) + v7 - 3;
      do
      {
        v23 = *v18++;
        (a3)(a4, " %.2x", v23);
        --v22;
      }

      while (v22 > 1);
      goto LABEL_15;
    }

LABEL_23:
    v19 = 0;
    return v19 + 5;
  }

  a3(a4, " ");
  print_string(v18, v8 - 4, a3, a4);
LABEL_15:
  v19 = v8 - 4;
  return v19 + 5;
}

uint64_t EapAuthWithPeer(uint64_t result)
{
  v1 = result;
  v2 = eap_extensions;
  if (username)
  {
    v3 = 1;
  }

  else
  {
    v3 = eap_extensions == 0;
  }

  if (!v3)
  {
    do
    {
      v4 = v2[12];
      if (v4)
      {
        result = v4(&username, 256);
        if (!result)
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  v5 = &eap + 416 * v1;
  *(v5 + 2) = &username;
  *(v5 + 3) = &username;
  *(v5 + 4) = &passwd;
  if ((*(v5 + 1) & 0xFFFFFFFD) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  *(v5 + 1) = v6;
  return result;
}

void EapAuthPeer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &eap + 416 * a1;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = &user;
  v8[298] = 1;
  *(v8 + 78) = 0;
  v8[296] = 1;
  v9 = *(v8 + 2) | 2;
  if (v9 != 2)
  {
    sub_100023BD4(&eap + 104 * a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = 3;
  }

  *(v8 + 2) = v9;
}

void sub_100023BD4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  outpacket_buf = 667026431;
  LOBYTE(word_100048120) = 1;
  HIBYTE(word_100048120) = *(a1 + 296);
  word_100048122 = 1280;
  byte_100048124 = *(a1 + 298);
  output(*a1, &outpacket_buf, 9, a4, a5, a6, a7, a8, v10);
  v9 = a1[76];
  timeout(sub_100023FCC);
  ++a1[78];
}

void EapLostSuccess(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (&eap + 416 * a1);
  v10[0] = 3;
  v10[1] = *(v8 + 297);
  v11 = 1024;
  if (v8[1] != 4)
  {
    sub_100024484(v8, 4, v10, 4, a5, a6, a7, a8, v9);
  }
}

void EapLostFailure(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (&eap + 416 * a1);
  v10[0] = 4;
  v10[1] = *(v8 + 297);
  v11 = 1024;
  sub_100024484(v8, 4, v10, 4, a5, a6, a7, a8, v9);
}

uint64_t EapExtAdd(uint64_t a1)
{
  v1 = &eap_extensions;
  v2 = eap_extensions;
  if (eap_extensions)
  {
    while (1)
    {
      v1 = v2;
      if (*(v2 + 8) == *(a1 + 8))
      {
        return 1;
      }

      v2 = *v2;
      if (!*v1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
    *v1 = a1;
    *a1 = 0;
  }

  return v3;
}

uint64_t EAPClientUIThread(int a1)
{
  __buf = -1;
  v2 = pthread_self();
  if (!pthread_detach(v2))
  {
    v4 = &eap + 416 * a1;
    v5 = *(*(v4 + 40) + 80);
    if (v5)
    {
      if (!v5(*(v4 + 45), *(v4 + 92), v4 + 360, v4 + 368))
      {
        __buf = 0;
      }
    }
  }

  write(SHIDWORD(qword_100049F58), &__buf, 1uLL);
  return 0;
}

uint64_t EapGetClientSecret(unsigned int *a1, const char *a2, const char *a3, void *a4, int *a5)
{
  v6 = a3;
  secret = get_secret(*a1, a2, a3, a4, a5, 0);
  result = 0;
  if (!secret)
  {
    *a5 = 0;
    warning("No EAP secret found for authenticating us to %s", v7, v8, v9, v10, v11, v12, v13, v6);
    return 1;
  }

  return result;
}

uint64_t EapGetServerSecret(unsigned int *a1, const char *a2, const char *a3, void *a4, int *a5)
{
  v6 = a3;
  if (get_secret(*a1, a2, a3, a4, a5, 1))
  {
    return 0;
  }

  *a5 = 0;
  warning("No EAP secret found for authenticating %s", v7, v8, v9, v10, v11, v12, v13, v6);
  return 1;
}

uint64_t sub_100023EAC(_BYTE **a1)
{
  v2 = *a1;
  v3 = malloc_type_malloc(0x68uLL, 0x10B0040F6A58395uLL);
  if (!v3)
  {
    novm();
  }

  v4 = v3;
  v3[12] = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  if (sys_eaploadplugin(*a1, v3))
  {
    option_error("Couldn't load EAP plugin %s", v5, v6, v7, v8, v9, v10, v11, v2);
    return 1;
  }

  if (v4[5] && v4[6] && v4[7])
  {
    v13 = *(v4 + 8);
    v14 = &eap_extensions;
    v15 = &eap_extensions;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (*(v15 + 8) == v13)
      {
        v17 = *(v4 + 8);
        option_error("EAP plugin %s is trying to use an already loaded EAP type %d", v5, v6, v7, v8, v9, v10, v11, v2);
        return 0;
      }
    }

    while (1)
    {
      v16 = *v14;
      if (!*v14)
      {
        break;
      }

      v14 = *v14;
      if (*(v16 + 8) == v13)
      {
        return 1;
      }
    }

    *v14 = v4;
    *v4 = 0;
    return 1;
  }

  option_error("EAP plugin %s has no Init() Dispose() or Process() function", v5, v6, v7, v8, v9, v10, v11, v2);
  return 0;
}

void sub_100023FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a1 + 8);
  if (v9 == 5 || v9 == 3)
  {
    if (*(a1 + 312) >= *(a1 + 308))
    {
      error("Peer failed to respond to EAP challenge", a2, a3, a4, a5, a6, a7, a8, v19);
      *(a1 + 8) = 6;
      v18 = *a1;

      auth_peer_fail(v18, 49703, v12, v13, v14, v15, v16, v17);
    }

    else if (*(a1 + 298) == 1)
    {

      sub_100023BD4();
    }

    else
    {

      sub_1000240F0(a1, 6, 0, 0, a5, a6, a7, a8, a9);
    }
  }
}

uint64_t sub_100024098(uint64_t result)
{
  if (*(result + 8) == 4)
  {
    v1 = result;
    ++*(result + 296);
    *(result + 312) = 0;
    result = sub_1000240F0();
    *(v1 + 8) = 5;
  }

  return result;
}

void sub_1000240F0(unsigned int *a1, __int16 a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a1 + 48);
  if (v9)
  {
    v11 = *(a1 + 50);
    v12 = *(a1 + 51);
    *(v11 + 6) = a2;
    *(v11 + 16) = a3;
    *(v11 + 8) = a4;
    *(v12 + 2) = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    if ((*(v9 + 56))(*(a1 + 49), v11, v12))
    {
      v20 = *(a1 + 48);
      v21 = *(v20 + 16);
      if (!v21)
      {
        v21 = "???";
      }

      v56 = *(v20 + 8);
      error("EAP error while processing packet for %s (request type %d, error %d)", v13, v14, v15, v16, v17, v18, v19, v21);
    }

    else
    {
      v22 = *(a1 + 51);
      v23 = *(v22 + 2);
      v24 = v23 > 6;
      v25 = (1 << v23) & 0x62;
      if (!v24 && v25 != 0)
      {
        v27 = *(v22 + 8);
        if (v27 && (v14 = *(v22 + 4), (v14 - 1501) > 0xFFFFFA26))
        {
          outpacket_buf = 667026431;
          memcpy(&word_100048120, v27, v14);
          v33 = word_100048120;
          a1[78] = 0;
          *(a1 + 296) = HIBYTE(word_100048120);
          v34 = *(*(a1 + 48) + 64);
          if (v34)
          {
            v34(*(a1 + 49), v22);
          }

          output(*a1, &outpacket_buf, *(v22 + 4) + 4, v28, v29, v30, v31, v32, v55);
          v35 = *(v22 + 2);
          if (v35 == 5)
          {
            v36 = a1[76];
            timeout(sub_100023FCC);
            v35 = *(v22 + 2);
          }

          ++a1[78];
          if (v35 == 6 && (a1[2] | 2) != 6)
          {
            if (*(v22 + 16))
            {
              v37 = *(v22 + 16);
            }

            else
            {
              v37 = (a1 + 10);
            }

            untimeout(sub_100023FCC, a1);
            if (v33 == 3)
            {
              v45 = a1[2];
              a1[2] = 4;
              if (v45 == 3)
              {
                sub_10002438C(a1);
                v46 = strlen(v37);
                auth_peer_success(*a1, 49703, 0, v37, v46);
              }

              v47 = a1[75];
              if (v47)
              {
                timeout(sub_100024098);
              }

              notice("EAP peer authentication succeeded for %s", v38, v47, v40, v41, v42, v43, v44, v37);
            }

            else
            {
              error("EAP peer authentication failed for remote host %s", v38, v39, v40, v41, v42, v43, v44, v37);
              a1[2] = 6;
              v54 = *a1;

              auth_peer_fail(v54, 49703, v48, v49, v50, v51, v52, v53);
            }
          }
        }

        else
        {

          error("EAP plugin tries to send a packet with with incorrect data", v27, v14, v15, v16, v17, v18, v19, a9);
        }
      }
    }
  }
}

void sub_10002438C(uint64_t a1)
{
  v1 = *(*(a1 + 384) + 72);
  if (v1)
  {
    v13[1] = 0;
    v13[0] = 1;
    if (v1(*(a1 + 392), v13) || (__memmove_chk(), LOWORD(v13[0]) = 2, (*(*(a1 + 384) + 72))(*(a1 + 392), v13)))
    {
      v10 = *(a1 + 384);
      v11 = *(v10 + 16);
      if (!v11)
      {
        v11 = "???";
      }

      v12 = *(v10 + 8);
      dbglog("EAP plugin %s (type %d) does not have %s attribute", v3, v4, v5, v6, v7, v8, v9, v11);
    }

    else
    {
      __memmove_chk();
    }
  }
}

void sub_100024484(int *a1, __int16 a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a1 + 40);
  if (!v9)
  {
    return;
  }

  v11 = *(a1 + 42);
  v12 = *(a1 + 43);
  *(v11 + 6) = a2;
  *(v11 + 16) = a3;
  *(v11 + 8) = a4;
  *(v12 + 2) = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  if ((*(v9 + 56))(*(a1 + 41), v11, v12))
  {
    v20 = *(a1 + 40);
    v21 = *(v20 + 16);
    if (!v21)
    {
      v21 = "???";
    }

    v56 = *(v20 + 8);
    error("EAP error while processing packet for %s (request type %d, error %d)", v13, v14, v15, v16, v17, v18, v19, v21);
    return;
  }

  v22 = *(a1 + 43);
  v23 = *(v22 + 2);
  if (v23 > 2)
  {
    switch(v23)
    {
      case 3u:
        v34 = *(*(a1 + 40) + 72);
        if (v34)
        {
          v58[1] = 0;
          v58[0] = 1;
          if (v34(*(a1 + 41), v58) || (__memmove_chk(), LOWORD(v58[0]) = 2, (*(*(a1 + 40) + 72))(*(a1 + 41), v58)))
          {
            v52 = *(a1 + 40);
            v53 = *(v52 + 16);
            if (!v53)
            {
              v53 = "???";
            }

            v57 = *(v52 + 8);
            dbglog("EAP plugin %s (type %d) does not have %s attribute", v35, v36, v37, v38, v39, v40, v41, v53);
          }

          else
          {
            __memmove_chk();
          }
        }

        a1[1] = 4;
        auth_withpeer_success(*a1, 49703, 0);
        break;
      case 4u:
        error("EAP authentication failed", v13, v14, v15, v16, v17, v18, v19, v55);
        v42 = *a1;

        auth_withpeer_fail(v42, 49703);
        break;
      case 7u:
        v24 = *a1;

        auth_withpeer_cancelled(v24, 49703, v14, v15, v16, v17, v18, v19);
        break;
    }

    return;
  }

  if (v23 != 1)
  {
    if (v23 != 2)
    {
      return;
    }

    *(a1 + 45) = *(v22 + 8);
    a1[92] = *(v22 + 4);
    if ((pipe(a1 + 88) & 0x80000000) == 0)
    {
      if (pthread_create(a1 + 47, 0, EAPClientUIThread, *a1))
      {
        error("EAP failed to create thread for client User Interface...\n", v26, v27, v28, v29, v30, v31, v32, v55);
        close(a1[88]);
        v33 = a1[89];

        close(v33);
      }

      else
      {
        wait_input_hook = sub_100024828;
        v54 = a1[88];

        add_fd(v54);
      }

      return;
    }

    v43 = "EAP failed to create pipe for User Interface...\n";
    goto LABEL_31;
  }

  v25 = *(v22 + 8);
  if (!v25 || (v14 = *(v22 + 4), (v14 - 1501) <= 0xFFFFFA26))
  {
    v43 = "EAP plugin tries to send a packet with with incorrect data";
LABEL_31:

    error(v43, v25, v14, v15, v16, v17, v18, v19, a9);
    return;
  }

  outpacket_buf = 667026431;
  memcpy(&word_100048120, v25, v14);
  *(a1 + 297) = HIBYTE(word_100048120);
  v49 = *(*(a1 + 40) + 64);
  if (v49)
  {
    v49(*(a1 + 41), v22);
  }

  v50 = *a1;
  v51 = *(v22 + 4) + 4;

  output(v50, &outpacket_buf, v51, v44, v45, v46, v47, v48, a9);
}

void sub_100024828()
{
  if (qword_100049F58 != -1)
  {
    v12 = v0;
    v13 = v1;
    if (is_ready_fd(qword_100049F58))
    {
      v11 = 0;
      read(qword_100049F58, &v11, 1uLL);
      wait_input_hook = 0;
      remove_fd(qword_100049F58);
      close(qword_100049F58);
      close(SHIDWORD(qword_100049F58));
      qword_100049F58 = -1;
      if (v11 == 255)
      {
        v9 = *(qword_100049F38 + 16);
        if (!v9)
        {
          v9 = "???";
        }

        v10 = *(qword_100049F38 + 8);
        error("EAP error while requesting user input for %s (request type %d)", v2, v3, v4, v5, v6, v7, v8, v9);
      }

      else
      {
        sub_100024484(&eap, 5, qword_100049F60, dword_100049F68);
      }
    }
  }
}

void sub_100024908(int a1)
{
  v2 = &ecp_fsm + 80 * a1;
  *v2 = a1;
  *(v2 + 1) = 32851;
  *(v2 + 7) = &unk_1000464D8;
  fsm_init(v2);
  ecp_wantoptions[a1] = 0;
  *&ecp_gotoptions[8 * a1] = 0;
  ecp_allowoptions[a1] = 0;
  ecp_hisoptions[a1] = 0;
}

double sub_100024988(int a1)
{
  v1 = &ipv6cp_fsm + 80 * a1;
  v2 = &ipv6cp_wantoptions + 52 * a1;
  v3 = &ipv6cp_allowoptions + 52 * a1;
  *v1 = a1;
  *(v1 + 1) = 32855;
  *(v1 + 7) = off_100046A78;
  fsm_init(v1);
  result = 0.0;
  *(v2 + 12) = 0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 12) = 0;
  *(v2 + 2) = 1;
  *v2 = 1;
  *v3 = 1;
  return result;
}

uint64_t sub_100024AB0(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  v14 = v11 - 1;
  if ((v11 - 1) > 6)
  {
    v31 = *a1;
    v16 = " code=0x%x";
  }

  else
  {
    v15 = (&off_10003CD50)[v14];
    v16 = " %s";
  }

  a3(a4, v16);
  (a3)(a4, " id=0x%x", v12);
  if (v14 < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v17 = v13[1];
        if (v17 < 2 || v7 < v17)
        {
          goto LABEL_41;
        }

        v19 = *v13;
        a3(a4, " <");
        if (v19 == 1)
        {
          v21 = v13;
          if (v17 == 10)
          {
            v21 = v13 + 10;
            v25 = eui64_ntoa(*(v13 + 2));
            snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v25);
            v23 = a4;
            v24 = "addr %s";
            goto LABEL_28;
          }
        }

        else
        {
          v20 = v19 == 2 && v17 >= 4;
          v21 = v13;
          if (v20)
          {
            v21 = v13 + 4;
            v22 = __rev16(*(v13 + 1));
            a3(a4, "compress ");
            v23 = a4;
            v24 = "0x%x";
LABEL_28:
            a3(v23, v24);
          }
        }

        if (v21 < &v13[v17])
        {
          v26 = &v13[v17];
          v27 = v26 - v21;
          do
          {
            v28 = *v21++;
            (a3)(a4, " %.2x", v28);
            --v27;
          }

          while (v27);
          v21 = v26;
        }

        v7 -= v17;
        a3(a4, ">");
        v13 = v21;
        if (v7 <= 1)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    v21 = a1 + 4;
LABEL_40:
    v13 = v21;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_41;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_39;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_41:
      v29 = v7 + 1;
      do
      {
        v30 = *v13++;
        (a3)(a4, " %.2x", v30);
        --v29;
      }

      while (v29 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

void sub_100024D48()
{
  if (!byte_100046A20)
  {
    return;
  }

  v0 = dword_10004A018;
  if (dword_10004A024)
  {
    v1 = dword_10004A018 == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1 || dword_10004A01C != 0)
  {
    goto LABEL_13;
  }

  if (!ether_to_eui64(&qword_10004A030))
  {
    v0 = dword_10004A018;
LABEL_13:
    if (!v0)
    {
      v3 = qword_10004A030;
      v4 = HIDWORD(qword_10004A030);
      if (dword_10004A020)
      {
        v5 = qword_10004A030 == 0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        LODWORD(qword_10004A030) = 0;
        ntohl();
        HIDWORD(qword_10004A030) = htonl();
        if (HIDWORD(qword_10004A030))
        {
          v3 = 0;
          v4 = 1;
          dword_10004A018 = 1;
        }

        else
        {
          v4 = 0;
          v3 = 0;
        }
      }

      if (!(v4 | v3))
      {
        do
        {
          LODWORD(qword_10004A030) = magic();
          HIDWORD(qword_10004A030) = magic();
          LOBYTE(qword_10004A030) = qword_10004A030 & 0xFD;
        }

        while (!qword_10004A030);
      }
    }

    goto LABEL_24;
  }

  dword_10004A018 = 1;
LABEL_24:
  if (dword_10004A01C)
  {
    v6 = 1;
  }

  else
  {
    v6 = dword_10004A020 == 0;
  }

  if (!v6 && !qword_10004A038)
  {
    LODWORD(qword_10004A038) = 0;
    ntohl();
    HIDWORD(qword_10004A038) = htonl();
    if (HIDWORD(qword_10004A038))
    {
      dword_10004A01C = 1;
    }
  }
}

BOOL sub_100024EB0(unsigned __int8 *a1, int a2)
{
  if (a2 < 44)
  {
    return 0;
  }

  v3 = a1[10];
  if (v3 != 6)
  {
    return v3 != 44;
  }

  return a2 >= 0x40 && ((a1[57] & 1) == 0 || a2 - 4 != ((a1[56] >> 2) & 0x3C) + 40);
}

char *llv6_ntoa(unint64_t a1)
{
  v1 = eui64_ntoa(a1);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v1);
  return byte_10004BED4;
}

uint64_t sub_100024F74(char **a1)
{
  v1 = *a1;
  v2 = strchr(*a1, 44);
  if (!v2)
  {
    v2 = &v1[strlen(v1)];
  }

  v26 = 0;
  v27 = 0;
  v3 = *v2;
  if (v2 != v1)
  {
    *v2 = 0;
    if (inet_pton(30, v1, &v26))
    {
      v11 = v26 == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 && HIDWORD(v26) == 0;
    if (!v12 || !v27)
    {
      option_error("Illegal interface identifier (local): %s", v4, v5, v6, v7, v8, v9, v10, v1);
      return 0;
    }

    if (option_priority >= dword_10004BF14)
    {
      qword_10004A030 = v27;
      dword_10004A018 = 1;
      dword_10004BF14 = option_priority;
    }

    *v2 = v3;
  }

  if (v3)
  {
    v14 = v2[1];
    v13 = v2 + 1;
    if (v14)
    {
      if (inet_pton(30, v13, &v26))
      {
        v22 = v26 == 0;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 && HIDWORD(v26) == 0;
      if (v23 && v27)
      {
        if (option_priority >= dword_10004BF18)
        {
          qword_10004A038 = v27;
          dword_10004A01C = 1;
          dword_10004BF18 = option_priority;
        }

        goto LABEL_29;
      }

      option_error("Illegal interface identifier (remote): %s", v15, v16, v17, v18, v19, v20, v21, v13);
      return 0;
    }
  }

LABEL_29:
  v24 = override_value("+ipv6", option_priority, option_source);
  result = 1;
  if (v24)
  {
    byte_100046A20 = 1;
  }

  return result;
}

uint64_t sub_100025118(uint64_t a1, void (*a2)(uint64_t, const char *, ...), uint64_t a3)
{
  if (dword_10004A018)
  {
    v5 = eui64_ntoa(qword_10004A030);
    snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v5);
    a2(a3, "%s", byte_10004BED4);
  }

  result = (a2)(a3, ",");
  if (dword_10004A01C)
  {
    v7 = eui64_ntoa(qword_10004A038);
    snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v7);
    return (a2)(a3, "%s", byte_10004BED4);
  }

  return result;
}

__n128 sub_1000251F4(int *a1)
{
  v1 = *a1;
  v2 = &ipv6cp_wantoptions + 52 * *a1;
  v3 = *v2;
  if (*v2)
  {
    v3 = *(&ipv6cp_allowoptions + 13 * v1) != 0;
  }

  *(v2 + 1) = v3;
  if (!*(v2 + 3))
  {
    do
    {
      *(v2 + 9) = magic();
      v4 = magic();
      *(v2 + 10) = v4;
      v2[36] &= ~2u;
    }

    while (!(*(v2 + 9) | v4));
  }

  v5 = &ipv6cp_gotoptions + 52 * v1;
  v6 = *(v2 + 1);
  *v5 = *v2;
  *(v5 + 1) = v6;
  result = *(v2 + 28);
  *(v5 + 28) = result;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  return result;
}

uint64_t sub_1000252A0(int *a1)
{
  v1 = (&ipv6cp_gotoptions + 52 * *a1);
  if (*v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (4 * (v1[7] != 0));
}

int *sub_1000252D8(int *result, uint64_t a2, int *a3)
{
  v3 = &ipv6cp_gotoptions + 52 * *result;
  v4 = *a3;
  if (*v3)
  {
    if (v4 < 10)
    {
      *v3 = 0;
    }

    else
    {
      *a2 = 2561;
      *(a2 + 2) = *(v3 + 36);
      a2 += 10;
      v4 -= 10;
    }
  }

  if (*(v3 + 7))
  {
    if (v4 < 4)
    {
      *(v3 + 7) = 0;
    }

    else
    {
      *a2 = 1026;
      *(a2 + 2) = v3[33];
      *(a2 + 3) = v3[32];
      v4 -= 4;
    }
  }

  *a3 -= v4;
  return result;
}

BOOL sub_100025364(int *a1, uint64_t a2, int a3)
{
  v3 = &ipv6cp_gotoptions + 52 * *a1;
  if (*v3)
  {
    v4 = __OFSUB__(a3, 10);
    a3 -= 10;
    if (a3 < 0 != v4)
    {
      return 0;
    }

    v5 = *(a2 + 1) == 10 && *a2 == 1;
    if (!v5 || *(v3 + 9) != *(a2 + 2) || *(v3 + 10) != *(a2 + 6))
    {
      return 0;
    }

    a2 += 10;
  }

  if (*(v3 + 7))
  {
    v4 = __OFSUB__(a3, 4);
    a3 -= 4;
    if (a3 < 0 != v4 || *(a2 + 1) != 4 || *a2 != 2 || *(v3 + 16) != bswap32(*(a2 + 2)) >> 16)
    {
      return 0;
    }
  }

  return !a3;
}

uint64_t sub_100025410(int *a1, unsigned __int8 *a2, int a3)
{
  v4 = 0;
  v5 = &ipv6cp_gotoptions + 52 * *a1;
  v6 = *v5;
  v29 = *(v5 + 4);
  v30 = *(v5 + 20);
  v7 = *(v5 + 7);
  v8 = *(v5 + 8);
  v10 = *(v5 + 9);
  v9 = *(v5 + 10);
  v11 = *(v5 + 44);
  v12 = a3 - 10;
  if (a3 < 10 || !v6)
  {
    goto LABEL_12;
  }

  if (a2[1] != 10 || *a2 != 1)
  {
    v4 = 0;
LABEL_12:
    v17 = *(v5 + 7);
    v13 = a2;
    v12 = a3;
    goto LABEL_13;
  }

  v13 = a2 + 10;
  if (*(v5 + 2))
  {
    v14 = *(v5 + 44);
    v9 = *(a2 + 6);
    v15 = *(a2 + 2);
    for (i = v15; ; i = v15 & 0xFD)
    {
      v10 = v15 & 0xFFFFFF00 | i;
      if (v10 | v9)
      {
        if (v10 != *(v5 + 11) || v9 != *(v5 + 12))
        {
          break;
        }
      }

      v15 = magic();
      v9 = magic();
    }

    v17 = *(v5 + 7);
    v4 = 1;
    v11 = v14;
  }

  else
  {
    v4 = 1;
    v17 = *(v5 + 7);
  }

LABEL_13:
  v18 = 0;
  if (v17 && v13[1] == 4 && v12 >= 4)
  {
    if (*v13 != 2)
    {
      v18 = 0;
LABEL_22:
      v27 = v11;
      v28 = v8;
      while (1)
      {
        v19 = v13[1];
        if (v19 < 2)
        {
          return 0;
        }

        v12 -= v19;
        if (v12 < 0)
        {
          return 0;
        }

        v20 = *v13;
        if (v20 == 1)
        {
          if (v19 != 10 || *v5 != 0 || v4 != 0)
          {
            return 0;
          }

          if (*(v5 + 2))
          {
            v9 = *(v13 + 6);
            v24 = *(v13 + 2);
            for (j = v24; ; j = v24 & 0xFD)
            {
              v10 = v24 & 0xFFFFFF00 | j;
              if (v10 | v9)
              {
                if (v10 != *(v5 + 11) || v9 != *(v5 + 12))
                {
                  break;
                }
              }

              v24 = magic();
              v9 = magic();
            }
          }

          v4 = 1;
          v6 = 1;
        }

        else if (v20 == 2)
        {
          v21 = 0;
          if (v19 != 4 || *(v5 + 7) || v18)
          {
            return v21;
          }

          v18 = 1;
        }

        v13 += v19;
        if (v12 <= 1)
        {
          v8 = v28;
          v11 = v27;
          if (!v12)
          {
            goto LABEL_49;
          }

          return 0;
        }
      }
    }

    v7 = 0;
    v13 += 4;
    v18 = 1;
    v12 -= 4;
  }

  if (v12 >= 2)
  {
    goto LABEL_22;
  }

  if (v12)
  {
    return 0;
  }

LABEL_49:
  if (a1[2] != 9)
  {
    *v5 = v6;
    *(v5 + 4) = v29;
    *(v5 + 20) = v30;
    *(v5 + 7) = v7;
    *(v5 + 8) = v8;
    *(v5 + 9) = v10;
    *(v5 + 10) = v9;
    *(v5 + 44) = v11;
  }

  return 1;
}

uint64_t sub_1000256A4(uint64_t result, uint64_t a2, int a3)
{
  v3 = result;
  v4 = &ipv6cp_gotoptions + 52 * *result;
  LODWORD(result) = *v4;
  v5 = *(v4 + 7);
  if (a3 >= 10 && result && *(a2 + 1) == 10 && *a2 == 1)
  {
    if (*(a2 + 2) != *(v4 + 9))
    {
      return 0;
    }

    result = 0;
    if (*(a2 + 6) != *(v4 + 10))
    {
      return result;
    }

    a2 += 10;
    a3 -= 10;
  }

  if (!v5 || (*(a2 + 1) == 4 ? (v6 = a3 < 4) : (v6 = 1), v6))
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (*a2 != 2)
  {
    return 0;
  }

  if (*(v4 + 16) != bswap32(*(a2 + 2)) >> 16)
  {
    return 0;
  }

  v5 = 0;
  if (a3 != 4)
  {
    return 0;
  }

LABEL_15:
  if (*(v3 + 8) != 9)
  {
    *v4 = result;
    *(v4 + 7) = v5;
  }

  return 1;
}

uint64_t sub_10002577C(int *a1, unsigned __int8 *__src, int *a3, int a4)
{
  v4 = __src;
  v5 = &ipv6cp_wantoptions + 52 * *a1;
  v6 = &ipv6cp_hisoptions + 52 * *a1;
  v7 = (&ipv6cp_allowoptions + 52 * *a1);
  v8 = &ipv6cp_gotoptions + 52 * *a1;
  v9 = *a3;
  *(v6 + 12) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  v10 = 2;
  v11 = __src;
LABEL_2:
  v12 = v11;
LABEL_3:
  v13 = v12;
  while (v9)
  {
    if (v9 < 2 || ((v14 = v13[1], v14 >= 2) ? (v15 = v9 >= v14) : (v15 = 0), !v15))
    {
      LOWORD(v14) = v9;
      v11 = v13;
      v9 = 0;
      goto LABEL_36;
    }

    v9 -= v14;
    v11 = &v13[v14];
    if (*v13 != 1 || v14 != 10 || !*v7)
    {
      goto LABEL_36;
    }

    v16 = *(v13 + 2);
    v17 = HIDWORD(v16);
    if (!v16 && !*(v8 + 36))
    {
      goto LABEL_42;
    }

    if (*(v5 + 44) && *(v5 + 44) != v16 && !*(v8 + 44))
    {
      v21 = *(v5 + 44);
      v19 = v21;
      v20 = HIDWORD(v21);
      LODWORD(v16) = v21;
      goto LABEL_31;
    }

    if (!v16 || *(v8 + 36) == v16)
    {
      v18 = *(v13 + 2);
      if (!*(v8 + 44))
      {
        v16 = *(v5 + 44);
        v17 = HIDWORD(v16);
        LODWORD(v18) = v16;
      }

      v19 = v16;
      v20 = v17;
      while (!(v20 | v18) || v18 == *(v8 + 9) && v20 == *(v8 + 10))
      {
        LODWORD(v16) = magic();
        v20 = magic();
        v19 = v16 & 0xFD;
        LODWORD(v18) = v16 & 0xFFFFFFFD;
      }

      v21 = v16 & 0xFFFFFF00 | v19 | (v20 << 32);
LABEL_31:
      *(v8 + 44) = v21;
      v22 = v16 & 0xFFFFFF00 | v19 | (v20 << 32);
      *(v13 + 2) = v22;
      *v6 = 1;
      *(v6 + 44) = v22;
      if (!a4)
      {
        v12 = v11;
        if (v10 == 4)
        {
          goto LABEL_3;
        }

        if (v10 == 2)
        {
          v4 = __src;
        }

        v23 = 10;
        v10 = 3;
        goto LABEL_39;
      }

LABEL_42:
      LOWORD(v14) = 10;
LABEL_36:
      if (v10 != 4)
      {
        v4 = __src;
      }

      v23 = v14;
      v10 = 4;
LABEL_39:
      if (v4 != v13)
      {
        memcpy(v4, v13, v23);
      }

      v4 += v23;
      goto LABEL_2;
    }

    *v6 = 1;
    *(v6 + 44) = v16;
    v13 = v11;
    if (v10 == 2)
    {
      v23 = 10;
      v13 = v12;
      goto LABEL_39;
    }
  }

  if (v10 == 4)
  {
    v24 = a3;
  }

  else
  {
    v24 = a3;
    if (!*v6 && !a4 && *(v5 + 1))
    {
      if (v10 == 2)
      {
        *(v5 + 1) = 0;
        v4 = __src;
      }

      *v4 = 2561;
      *(v4 + 2) = *(v5 + 44);
      LODWORD(v4) = v4 + 10;
      v10 = 3;
    }
  }

  *v24 = v4 - __src;
  return v10;
}

void sub_100025A80(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &ipv6cp_hisoptions + 52 * *a1;
  v10 = &ipv6cp_gotoptions + 52 * *a1;
  if (!*v9)
  {
    *(v9 + 44) = *(&ipv6cp_wantoptions + 52 * *a1 + 44);
  }

  if (!no_ifaceid_neg)
  {
    if (*(v9 + 44))
    {
      if (*(v10 + 36))
      {
        if (*(v10 + 9) != *(v9 + 11) || *(v10 + 10) != *(v9 + 12))
        {
          goto LABEL_4;
        }

        v39 = "local and remote LL addresses are equal";
      }

      else
      {
        v39 = "Could not determine local LL address";
      }
    }

    else
    {
      v39 = "Could not determine remote LL address";
    }

    error(v39, a2, a3, a4, a5, a6, a7, a8, v43);
    v41 = &ipv6cp_fsm + 80 * *a1;
    v42 = v39;
    goto LABEL_29;
  }

LABEL_4:
  v11 = eui64_ntoa(*(v10 + 36));
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v11);
  script_setenv("LLLOCAL", byte_10004BED4);
  v12 = eui64_ntoa(*(v9 + 44));
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v12);
  script_setenv("LLREMOTE", byte_10004BED4);
  if (sif6addr(*a1, *(v10 + 36), *(v9 + 44)))
  {
    v20 = *a1;
    if (sifup())
    {
      sifnpmode(*a1, 87, 0);
      v21 = eui64_ntoa(*(v10 + 36));
      snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v21);
      notice("local  LL address %s", v22, v23, v24, v25, v26, v27, v28, byte_10004BED4);
      v29 = eui64_ntoa(*(v9 + 44));
      snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v29);
      notice("remote LL address %s", v30, v31, v32, v33, v34, v35, v36, byte_10004BED4);
      v37 = *a1;
      np_up();
      byte_10004BF1C = 1;
      if ((byte_10004BF20 & 1) == 0 && !dword_10004BF24)
      {
        byte_10004BF20 = 1;

        sub_100025E64("/etc/ppp/ipv6-up");
      }

      return;
    }

    if (!debug)
    {
      goto LABEL_24;
    }

    v40 = "sifup failed (IPV6)";
    goto LABEL_23;
  }

  if (debug)
  {
    v40 = "sif6addr failed";
LABEL_23:
    warning(v40, v13, v14, v15, v16, v17, v18, v19, v44);
  }

LABEL_24:
  v41 = &ipv6cp_fsm + 80 * *a1;
  v42 = "Interface configuration failed";
LABEL_29:

  fsm_close(v41, v42, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100025D48(int *a1)
{
  update_link_stats(*a1);
  if (byte_10004BF1C == 1)
  {
    byte_10004BF1C = 0;
    v2 = *a1;
    np_down();
  }

  sifnpmode(*a1, 87, 1);
  v3 = *a1;
  sifdown();
  v4 = *(&ipv6cp_gotoptions + 52 * *a1 + 36);
  v5 = *(&ipv6cp_hisoptions + 52 * *a1 + 44);
  result = cif6addr();
  if (byte_10004BF20 == 1 && dword_10004BF24 == 0)
  {
    byte_10004BF20 = 0;

    return sub_100025E64("/etc/ppp/ipv6-down");
  }

  return result;
}

void sub_100025E18(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10004BF28 == 1)
  {
    byte_10004BF28 = 0;
    np_finished(*a1, 87, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t **sub_100025E3C(uint64_t **result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

uint64_t sub_100025E64(char *a1)
{
  snprintf(__str, 0x20uLL, "%d", baud_rate);
  v2 = eui64_ntoa(qword_10004A064);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v2);
  __strlcpy_chk();
  v3 = eui64_ntoa(qword_10004A0D4);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v3);
  __strlcpy_chk();
  v5[0] = a1;
  v5[1] = &ifname;
  v5[2] = &devnam;
  v5[3] = __str;
  v5[4] = &v7;
  v5[5] = &v6;
  v5[6] = ipparam;
  v5[7] = 0;
  result = run_program(a1, v5, 0, sub_100025FD0, 0);
  dword_10004BF24 = result;
  return result;
}

void sub_100025FD0()
{
  dword_10004BF24 = 0;
  if (byte_10004BF20 == 1)
  {
    if (dword_10004A0E8 == 9)
    {
      return;
    }

    v0 = "/etc/ppp/ipv6-down";
  }

  else
  {
    if (dword_10004A0E8 != 9)
    {
      return;
    }

    v0 = "/etc/ppp/ipv6-up";
  }

  byte_10004BF20 ^= 1u;
  sub_100025E64(v0);
}

void sub_100026098(int a1)
{
  v1 = &acscp_fsm + 80 * a1;
  acsp_no_routes = 0;
  acsp_no_domains = 0;
  *v1 = a1;
  *(v1 + 1) = 33333;
  *(v1 + 7) = off_100046F58;
  fsm_init(v1);
  *&acscp_wantoptions = 0x100000000;
  *(&acscp_wantoptions + 1) = &_mh_execute_header;
  acscp_allowoptions = 0x100000000;
  *&byte_10004A178 = &_mh_execute_header;
}

uint64_t sub_1000261A8(unsigned __int8 *a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  v14 = v11 - 1;
  if ((v11 - 1) > 6)
  {
    v28 = *a1;
    v16 = " code=0x%x";
  }

  else
  {
    v15 = (&off_10003CD88)[v14];
    v16 = " %s";
  }

  a3(a4, v16);
  (a3)(a4, " id=0x%x", v12);
  if (v14 < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v17 = v13[1];
        if (v17 < 2 || v7 < v17)
        {
          goto LABEL_36;
        }

        v19 = *v13;
        a3(a4, " <");
        if (v19 == 1)
        {
          break;
        }

        v20 = v13;
        if (v19 == 2)
        {
          v21 = "domain vers %d";
LABEL_23:
          v20 = v13 + 6;
          v22 = *(v13 + 2);
          htonl();
          a3(a4, v21);
        }

        if (v20 < &v13[v17])
        {
          v23 = &v13[v17];
          v24 = &v13[v17] - v20;
          do
          {
            v25 = *v20++;
            (a3)(a4, " %.2x", v25);
            --v24;
          }

          while (v24);
          v20 = v23;
        }

        v7 -= v17;
        a3(a4, ">");
        v13 = v20;
        if (v7 <= 1)
        {
          goto LABEL_35;
        }
      }

      v21 = "route vers %d";
      goto LABEL_23;
    }

LABEL_34:
    v20 = a1 + 4;
LABEL_35:
    v13 = v20;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_36;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_34;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_36:
      v26 = v7 + 1;
      do
      {
        v27 = *v13++;
        (a3)(a4, " %.2x", v27);
        --v26;
      }

      while (v26 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

void *sub_1000263F4()
{
  if (byte_100046F00)
  {
    v0 = 0;
  }

  else
  {
    v0 = acsp_use_dhcp == 0;
  }

  if (!v0 || acsp_intercept_dhcp != 0)
  {
    result = add_notifier(&phasechange, acsp_init_plugins, 0);
    if (acsp_intercept_dhcp)
    {
      ip_src_address_filter |= 4u;
    }
  }

  if (acsp_use_dhcp)
  {
    ip_src_address_filter |= 8u;
  }

  return result;
}

double sub_1000264A8()
{
  result = *&acscp_wantoptions;
  acscp_gotoptions = acscp_wantoptions;
  return result;
}

uint64_t sub_1000264C4()
{
  if (acscp_gotoptions)
  {
    v0 = 6;
  }

  else
  {
    v0 = 0;
  }

  if (BYTE8(acscp_gotoptions))
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  return (v1 + v0);
}

void sub_1000264F0(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (acscp_gotoptions)
  {
    if (v3 < 6)
    {
      LOBYTE(acscp_gotoptions) = 0;
    }

    else
    {
      *a2 = 1537;
      *(a2 + 2) = BYTE7(acscp_gotoptions);
      *(a2 + 3) = BYTE6(acscp_gotoptions);
      *(a2 + 4) = BYTE5(acscp_gotoptions);
      *(a2 + 5) = BYTE4(acscp_gotoptions);
      a2 += 6;
      v3 -= 6;
    }
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (v3 < 6)
    {
      BYTE8(acscp_gotoptions) = 0;
    }

    else
    {
      *a2 = 1538;
      *(a2 + 2) = HIBYTE(acscp_gotoptions);
      *(a2 + 3) = BYTE14(acscp_gotoptions);
      *(a2 + 4) = BYTE13(acscp_gotoptions);
      *(a2 + 5) = BYTE12(acscp_gotoptions);
      v3 -= 6;
    }
  }

  *a3 -= v3;
}

BOOL sub_1000265B0(uint64_t a1, uint64_t a2, int a3)
{
  if (acscp_gotoptions)
  {
    v3 = __OFSUB__(a3, 6);
    a3 -= 6;
    if (a3 < 0 != v3)
    {
      return 0;
    }

    v4 = *(a2 + 1) == 6 && *a2 == 1;
    if (!v4 || DWORD1(acscp_gotoptions) != bswap32(*(a2 + 2)))
    {
      return 0;
    }

    a2 += 6;
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (a3 < 6)
    {
      return 0;
    }

    if (*(a2 + 1) != 6 || *a2 != 2)
    {
      return 0;
    }

    return HIDWORD(acscp_gotoptions) == bswap32(*(a2 + 2)) && a3 == 6;
  }

  return !a3;
}

uint64_t sub_10002664C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = DWORD1(acscp_gotoptions);
  v4 = HIDWORD(acscp_gotoptions);
  if (acscp_gotoptions && a3 >= 6 && *(a2 + 1) == 6 && *a2 == 1)
  {
    v5 = *(a2 + 2);
    a2 += 6;
    v6 = bswap32(v5);
    if (v6 < 2)
    {
      v3 = v6;
    }

    a3 -= 6;
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (*(a2 + 1) == 6 && a3 >= 6)
    {
      if (*a2 != 2)
      {
        goto LABEL_17;
      }

      a3 -= 6;
      v8 = *(a2 + 2);
      a2 += 6;
      v9 = bswap32(v8);
      if (v9 < 2)
      {
        v4 = v9;
      }
    }
  }

  if (a3 < 3)
  {
LABEL_19:
    if (*(a1 + 8) != 9)
    {
      DWORD1(acscp_gotoptions) = v3;
      HIDWORD(acscp_gotoptions) = v4;
    }

    return 1;
  }

  else
  {
LABEL_17:
    while (1)
    {
      v10 = *(a2 + 1);
      a3 -= v10;
      if (a3 < 0)
      {
        return 0;
      }

      a2 += v10;
      if (a3 <= 2)
      {
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_100026724(uint64_t a1, uint64_t a2, int a3)
{
  v3 = acscp_gotoptions;
  v4 = BYTE8(acscp_gotoptions);
  if (acscp_gotoptions && a3 >= 6 && *(a2 + 1) == 6 && *a2 == 1)
  {
    if (bswap32(*(a2 + 2)) != DWORD1(acscp_gotoptions))
    {
      return 0;
    }

    v3 = 0;
    a2 += 6;
    a3 -= 6;
  }

  if (!BYTE8(acscp_gotoptions) || (*(a2 + 1) == 6 ? (v5 = a3 < 6) : (v5 = 1), v5))
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (*a2 != 2)
  {
    return 0;
  }

  if (bswap32(*(a2 + 2)) != HIDWORD(acscp_gotoptions))
  {
    return 0;
  }

  v4 = 0;
  if (a3 != 6)
  {
    return 0;
  }

LABEL_14:
  if (*(a1 + 8) != 9)
  {
    LOBYTE(acscp_gotoptions) = v3;
    BYTE8(acscp_gotoptions) = v4;
  }

  return 1;
}

uint64_t sub_1000267E8(int a1, unsigned __int8 *__src, int *a3, int a4)
{
  v5 = *a3;
  acscp_hisoptions = 0;
  *&byte_10004A188 = 0;
  v6 = 2;
  v7 = acscp_allowoptions;
  v8 = __src;
  v9 = __src;
LABEL_2:
  v10 = v8;
LABEL_3:
  v11 = byte_10004A178;
  v12 = dword_10004A17C;
  v13 = v10;
  v14 = HIDWORD(acscp_allowoptions);
  while (v5)
  {
    if (v5 < 2 || ((v15 = v13[1], v15 >= 2) ? (v16 = v5 >= v15) : (v16 = 0), !v16))
    {
      LOWORD(v15) = v5;
      v8 = v13;
      v5 = 0;
      goto LABEL_29;
    }

    v17 = *v13;
    v5 -= v15;
    v8 = &v13[v15];
    if (v17 == 2)
    {
      if (v15 != 6 || !v11)
      {
        goto LABEL_29;
      }

      v18 = &byte_10004A188;
      if (bswap32(*(v13 + 2)) > v12)
      {
        HIBYTE(v14) = HIBYTE(v12);
        v19 = &dword_10004A17C;
LABEL_23:
        v13[2] = HIBYTE(v14);
        v13[3] = *(v19 + 1);
        v13[4] = BYTE1(*v19);
        v13[5] = *v19;
        if (!a4)
        {
          v10 = v8;
          if (v6 == 4)
          {
            goto LABEL_3;
          }

          if (v6 == 2)
          {
            v9 = __src;
          }

          v20 = 6;
          v6 = 3;
          goto LABEL_32;
        }

        LOWORD(v15) = 6;
LABEL_29:
        if (v6 != 4)
        {
          v9 = __src;
        }

        v20 = v15;
        v6 = 4;
LABEL_32:
        if (v9 != v13)
        {
          memcpy(v9, v13, v20);
          v7 = acscp_allowoptions;
        }

        v9 += v20;
        goto LABEL_2;
      }
    }

    else
    {
      if (v17 != 1 || v15 != 6 || !v7)
      {
        goto LABEL_29;
      }

      v18 = &acscp_hisoptions;
      if (bswap32(*(v13 + 2)) > v14)
      {
        v19 = &acscp_allowoptions + 1;
        goto LABEL_23;
      }
    }

    *v18 = 1;
    v13 = v8;
    if (v6 == 2)
    {
      v20 = 6;
      v13 = v10;
      goto LABEL_32;
    }
  }

  *a3 = v9 - __src;
  return v6;
}

void sub_1000269E0(unsigned int *a1)
{
  v1 = *a1;
  mtu = netif_get_mtu();
  v3 = notify(acsp_up_notifier, 0);
  if (acsp_up_hook)
  {
    acsp_up_hook(v3);
  }

  check_protocols_ready();

  acsp_start(mtu);
}

uint64_t (*sub_100026A40())(void)
{
  notify(acsp_down_notifier, 0);
  acsp_stop();
  result = acsp_down_hook;
  if (acsp_down_hook)
  {

    return result();
  }

  return result;
}

void sub_100026A8C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10004BF4C == 1)
  {
    byte_10004BF4C = 0;
    np_finished(*a1, 565, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t **sub_100026AB0(uint64_t **result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

void acsp_init_plugins()
{
  qword_10004BF50 = 0;
  remove_notifier(&phasechange, acsp_init_plugins, 0);
  qword_10004BF58 = 0;
  qword_10004BF60 = 0;
  if (!serverid)
  {
    if (!acsp_no_routes)
    {
      LOBYTE(acscp_wantoptions) = 1;
    }

    if (!acsp_no_domains)
    {
      BYTE8(acscp_wantoptions) = 1;
    }

    buffer[0] = 0;
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    if (!NetworkGlobalEntity)
    {
      goto LABEL_22;
    }

    v9 = NetworkGlobalEntity;
    v10 = SCDynamicStoreCopyValue(cfgCache, NetworkGlobalEntity);
    if (v10)
    {
      v11 = v10;
      Value = CFDictionaryGetValue(v10, kSCPropNetIPv4Router);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFStringGetTypeID())
        {
          CFStringGetCString(v13, buffer, 32, 0x8000100u);
        }
      }

      CFRelease(v11);
    }

    CFRelease(v9);
    if (buffer[0])
    {
      inet_aton(buffer, &dword_10004BF68);
    }

    else
    {
LABEL_22:
      dword_10004BF68 = 0;
    }

    goto LABEL_23;
  }

  v0 = SCPreferencesCreate(0, @"pppd", @"com.apple.RemoteAccessServers.plist");
  if (v0)
  {
    v1 = v0;
    v2 = SCPreferencesGetValue(v0, @"Servers");
    if (v2)
    {
      v3 = v2;
      v4 = CFStringCreateWithCString(0, serverid, 0);
      if (!v4)
      {
LABEL_9:
        CFRelease(v1);
        goto LABEL_23;
      }

      v5 = v4;
      v6 = CFDictionaryGetValue(v3, v4);
      if (v6)
      {
        v7 = v6;
        if (!acsp_no_routes)
        {
          v35 = CFDictionaryGetValue(v6, kSCEntNetIPv4);
          if (v35)
          {
            v36 = v35;
            v37 = CFGetTypeID(v35);
            if (v37 == CFDictionaryGetTypeID())
            {
              v38 = CFDictionaryGetValue(v36, @"OfferedRouteAddresses");
              if (v38)
              {
                v39 = v38;
                v40 = CFGetTypeID(v38);
                if (v40 == CFArrayGetTypeID())
                {
                  Count = CFArrayGetCount(v39);
                  v42 = CFDictionaryGetValue(v36, @"OfferedRouteMasks");
                  if (v42)
                  {
                    v43 = v42;
                    v44 = CFGetTypeID(v42);
                    if (v44 == CFArrayGetTypeID())
                    {
                      v45 = CFArrayGetCount(v39);
                      v46 = CFDictionaryGetValue(v36, @"OfferedRouteTypes");
                      if (v46)
                      {
                        v47 = v46;
                        v161 = v43;
                        v48 = CFGetTypeID(v46);
                        v49 = v48 == CFArrayGetTypeID();
                        v50 = v161;
                        if (v49)
                        {
                          v51 = CFArrayGetCount(v47);
                          if (Count == v45 && Count == v51)
                          {
                            LOBYTE(acscp_allowoptions) = 1;
                            if (Count >= 1)
                            {
                              v59 = v47;
                              v60 = 0;
                              *&v163[0].s_addr = 0;
                              v159 = "ACSP plugin: invalid route type specified\n";
                              v160 = Count;
                              v61 = v59;
                              while (1)
                              {
                                ValueAtIndex = CFArrayGetValueAtIndex(v39, v60);
                                buffer[0] = 0;
                                CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u);
                                v63 = CFArrayGetValueAtIndex(v50, v60);
                                LOBYTE(v164.s_addr) = 0;
                                CFStringGetCString(v63, &v164, 1024, 0x8000100u);
                                v64 = CFArrayGetValueAtIndex(v61, v60);
                                if (CFStringCompare(v64, @"Private", 0))
                                {
                                  if (CFStringCompare(v64, @"Public", 0))
                                  {
                                    goto LABEL_100;
                                  }

                                  v72 = 2;
                                }

                                else
                                {
                                  v72 = 1;
                                }

                                v73 = malloc_type_malloc(0x20uLL, 0x1020040983EA955uLL);
                                if (!v73)
                                {
                                  break;
                                }

                                v74 = v73;
                                *&v73->s_addr = 0u;
                                *&v73[4].s_addr = 0u;
                                if (!inet_aton(buffer, &v163[1]) || !inet_aton(&v164, v163))
                                {
                                  error("ACSP plugin: invalid ip address or mask specified\n", v75, v76, v77, v78, v79, v80, v81, "ACSP plugin: invalid route type specified\n");
                                  free(v74);
                                  goto LABEL_102;
                                }

                                s_addr = v163[0].s_addr;
                                v74[2].s_addr = v163[1];
                                v74[3].s_addr = s_addr;
                                LOWORD(v74[5].s_addr) = v72;
                                v74[6].s_addr = 0;
                                *&v74->s_addr = qword_10004BF58;
                                qword_10004BF58 = v74;
                                ++v60;
                                v50 = v161;
                                v61 = v59;
                                if (v160 == v60)
                                {
                                  goto LABEL_7;
                                }
                              }

                              v159 = "ACSP plugin: no memory\n";
LABEL_100:
                              error(v159, v65, v66, v67, v68, v69, v70, v71, v159);
                              LOBYTE(acscp_allowoptions) = 0;
                            }

                            if (!qword_10004BF58)
                            {
LABEL_102:
                              LOBYTE(acscp_allowoptions) = 0;
                            }
                          }

                          else
                          {
                            error("ACSP plugin: while reading prefs - route address, mask, and type counts not equal\n", v52, v53, v54, v55, v56, v57, v58, v159);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_7:
        if (!acsp_no_domains)
        {
          v83 = CFDictionaryGetValue(v7, kSCEntNetDNS);
          if (v83)
          {
            v84 = v83;
            v85 = CFGetTypeID(v83);
            if (v85 == CFDictionaryGetTypeID())
            {
              v86 = CFDictionaryGetValue(v84, @"OfferedSearchDomains");
              if (v86)
              {
                v87 = v86;
                v88 = CFGetTypeID(v86);
                if (v88 == CFArrayGetTypeID())
                {
                  v89 = CFArrayGetCount(v87);
                  v90 = CFDictionaryGetValue(v84, @"OfferedSearchDomainServers");
                  v91 = v90;
                  if (v90 && (v92 = CFGetTypeID(v90), v92 == CFArrayGetTypeID()))
                  {
                    v162 = v89;
                    if (CFArrayGetCount(v91) != v89)
                    {
                      error("ACSP plugin: search domain count not equal to search domain server count\n", v93, v94, v95, v96, v97, v98, v99, v159);
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v164.s_addr = 0;
                  byte_10004A178 = 1;
                  if (v89)
                  {
                    if (v89 >= 1)
                    {
                      for (i = 0; v89 != i; ++i)
                      {
                        v101 = CFArrayGetValueAtIndex(v87, i);
                        buffer[0] = 0;
                        CFStringGetCString(v101, buffer, 1024, 0x8000100u);
                        v102 = strlen(buffer);
                        if (v102)
                        {
                          v103 = v102;
                          v104 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                          if (!v104)
                          {
                            error("ACSP plugin: no memory\n", v105, v106, v107, v108, v109, v110, v111, v159);
                            byte_10004A178 = 0;
                            break;
                          }

                          v112 = v104;
                          v113 = malloc_type_malloc(v103 + 1, 0x2E559E60uLL);
                          *&v112[4].s_addr = v113;
                          if (!v113)
                          {
                            error("ACSP plugin: no memory\n", v114, v115, v116, v117, v118, v119, v120, v159);
                            byte_10004A178 = 0;
                            free(v112);
                            break;
                          }

                          memcpy(v113, buffer, v103 + 1);
                          if (v162)
                          {
                            v121 = CFArrayGetValueAtIndex(v91, i);
                            buffer[0] = 0;
                            CFStringGetCString(v121, buffer, 1024, 0x8000100u);
                            if (!inet_aton(buffer, &v164))
                            {
                              error("ACSP plugin: invalid ip address specified for DNS server\n", v122, v123, v124, v125, v126, v127, v128, v159);
                              free(v112);
                              goto LABEL_109;
                            }

                            v112[2].s_addr = v164.s_addr;
                          }

                          else
                          {
                            v112[2].s_addr = 0;
                          }

                          *&v112->s_addr = qword_10004BF60;
                          qword_10004BF60 = v112;
                        }
                      }
                    }
                  }

                  else
                  {
                    v129 = SCDynamicStoreCreate(0, @"pppd", 0, 0);
                    if (v129)
                    {
                      v130 = v129;
                      v131 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
                      if (v131)
                      {
                        v132 = v131;
                        v133 = SCDynamicStoreCopyValue(v130, v131);
                        if (v133)
                        {
                          v134 = v133;
                          v135 = CFGetTypeID(v133);
                          if (v135 == CFDictionaryGetTypeID())
                          {
                            v136 = CFDictionaryGetValue(v134, kSCPropNetDNSDomainName);
                            if (v136)
                            {
                              v137 = v136;
                              v138 = CFGetTypeID(v136);
                              if (v138 == CFStringGetTypeID())
                              {
                                buffer[0] = 0;
                                CFStringGetCString(v137, buffer, 1024, 0x8000100u);
                                v139 = strlen(buffer);
                                if (v139)
                                {
                                  v140 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                                  if (v140)
                                  {
                                    v148 = v140;
                                    v149 = v139 + 1;
                                    v150 = v139 + 1;
                                    v151 = malloc_type_malloc(v149, 0x8390BA50uLL);
                                    v148[2] = v151;
                                    if (v151)
                                    {
                                      memcpy(v151, buffer, v150);
                                      *(v148 + 2) = 0;
                                      *v148 = qword_10004BF60;
                                      qword_10004BF60 = v148;
                                    }

                                    else
                                    {
                                      error("ACSP plugin: no memory\n", v152, v153, v154, v155, v156, v157, v158, v159);
                                      free(v148);
                                    }
                                  }

                                  else
                                  {
                                    error("ACSP plugin: no memory\n", v141, v142, v143, v144, v145, v146, v147, v159);
                                  }
                                }
                              }
                            }
                          }

                          CFRelease(v132);
                        }

                        else
                        {
                          v134 = v132;
                        }

                        CFRelease(v134);
                      }

                      CFRelease(v130);
                    }
                  }

                  if (!qword_10004BF60)
                  {
LABEL_109:
                    byte_10004A178 = 0;
                  }
                }
              }
            }
          }
        }
      }

LABEL_8:
      CFRelease(v5);
      goto LABEL_9;
    }
  }

LABEL_23:
  for (j = 1; ; j = 0)
  {
    v16 = j;
    v17 = malloc_type_malloc(0x78uLL, 0x10A0040E44D7C7EuLL);
    if (!v17)
    {
      break;
    }

    v25 = v17;
    if (v16)
    {
      *(v17 + 64) = 1;
      if (!sub_100028F04(v17, 1))
      {
        v33 = &qword_10004BF58;
LABEL_31:
        v34 = v25[9];
        *(v34 + 48) = *v33;
        if (*(v25 + 64) == 2)
        {
          add_notifier_last(&ip_up_notify, sub_100028FF0, v34);
        }

        else
        {
          add_notifier(&ip_up_notify, sub_100028FF0, v34);
        }

        add_notifier(&ip_down_notify, sub_100029030, v25[9]);
        *(v25 + 12) = 0x2000000000;
        v25[4] = 0;
        v25[5] = 0;
        *(v25 + 24) = 16;
        *v25 = qword_10004BF50;
        qword_10004BF50 = v25;
        goto LABEL_35;
      }
    }

    else
    {
      *(v17 + 64) = 2;
      if (!sub_100028F04(v17, 2))
      {
        v33 = &qword_10004BF60;
        goto LABEL_31;
      }
    }

    error("error initializing acsp plugin type\n", v26, v27, v28, v29, v30, v31, v32, v159);
    free(v25);
LABEL_35:
    if ((v16 & 1) == 0)
    {
      ipdata_input_hook = sub_1000274E8;
      ipdata_up_hook = sub_100027EEC;
      ipdata_down_hook = sub_100027FD8;
      ipdata_print_hook = sub_100028040;
      return;
    }
  }

  error("acscp unable allocate plugin structures\n", v18, v19, v20, v21, v22, v23, v24, v159);
  byte_100046F00 = 0;
}