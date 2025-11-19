void sub_100000700(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  uint64 = xpc_dictionary_get_uint64(a2, "IOMatchLaunchServiceID");
  if (byte_100008000 == 1)
  {
    syslog(1, "Kicked on behalf of com.apple.iokit.matching: event=%s id=%lld\n", string, uint64);
  }

  else
  {
    printf("Kicked on behalf of com.apple.iokit.matching: event=%s id=%lld\n", string, uint64);
  }

  exit(0);
}

uint64_t sub_100000780(int a1, io_iterator_t iterator)
{
  v2 = iterator;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    v60 = v2;
    while (1)
    {
      *buffer = 0;
      v72 = 0;
      memset(className, 0, sizeof(className));
      *parent = 0;
      memset(v69, 0, sizeof(v69));
      if (!IORegistryEntryGetParentEntry(v4, "IOService", &parent[1]) && !IOObjectGetClass(parent[1], className) && !IORegistryEntryGetParentEntry(parent[1], "IOService", parent) && !IOObjectGetClass(parent[0], v69))
      {
        if (!qword_100008010)
        {
          goto LABEL_18;
        }

        if (CFArrayGetCount(qword_100008010) >= 1)
        {
          break;
        }
      }

LABEL_53:
      if (parent[1])
      {
        IOObjectRelease(parent[1]);
      }

      if (parent[0])
      {
        IOObjectRelease(parent[0]);
      }

      IOObjectRelease(v4);
      result = IOIteratorNext(v2);
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100008010, v5);
      if (ValueAtIndex)
      {
        v7 = ValueAtIndex;
        v8 = parent[1];
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v7, SystemEncoding);
        v11 = IOObjectConformsTo(v8, CStringPtr) != 0;
        v12 = parent[0];
        v13 = CFStringGetSystemEncoding();
        v14 = CFStringGetCStringPtr(v7, v13);
        v15 = IOObjectConformsTo(v12, v14) | v11;
        v16 = IOObjectConformsTo(parent[0], "IOUserNetworkWLAN");
        if (v15 && v16 == 0)
        {
          break;
        }
      }

      if (CFArrayGetCount(qword_100008010) <= ++v5)
      {
        goto LABEL_53;
      }
    }

    sub_100001958(v7);
LABEL_18:
    v18 = kCFAllocatorDefault;
    v19 = IORegistryEntrySearchCFProperty(parent[1], "IOService", @"HiddenInterface", kCFAllocatorDefault, 3u);
    v20 = v19;
    if (v19 && CFBooleanGetValue(v19))
    {
      if (byte_100008000 == 1)
      {
        syslog(1, "Skipping configuration on HiddenInterface\n");
      }

      else
      {
        puts("Skipping configuration on HiddenInterface");
      }

      v22 = 0;
      v27 = 0;
      v64 = 0;
      goto LABEL_46;
    }

    v21 = IORegistryEntrySearchCFProperty(parent[1], "IOService", @"InterfaceRole", kCFAllocatorDefault, 3u);
    v22 = v21;
    if (v21 && CFStringCompare(v21, @"CarPlay", 0) == kCFCompareEqualTo)
    {
      if (byte_100008000 == 1)
      {
        syslog(1, "Skipping configuration on CarPlay interface\n");
      }

      else
      {
        puts("Skipping configuration on CarPlay interface");
      }

      v64 = 0;
      v27 = 0;
      goto LABEL_45;
    }

    cf = v22;
    v23 = IORegistryEntrySearchCFProperty(parent[1], "IOService", @"NetworkInterfaceFlags", kCFAllocatorDefault, 0);
    v64 = v23;
    if (v23)
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
      v63 = (valuePtr & 0x20000000) >> 29;
      if ((valuePtr & 0x20000000) != 0)
      {
        v24 = 3;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
      LOBYTE(v63) = 0;
    }

    v25 = 0;
    while (1)
    {
      v26 = IORegistryEntrySearchCFProperty(v4, "IOService", @"BSD Name", kCFAllocatorDefault, 0);
      if (v26)
      {
        break;
      }

      usleep(0xC350u);
      if (++v25 == 50)
      {
        if (byte_100008000 == 1)
        {
          syslog(1, "%s didn't find a name after %d intervals\n", className, 50);
        }

        else
        {
          printf("%s didn't find a name after %d intervals\n", className, 50);
        }

        v27 = 0;
        goto LABEL_44;
      }
    }

    v27 = v26;
    v28 = CFStringGetSystemEncoding();
    CFStringGetCString(v27, buffer, 16, v28);
    if (byte_100008000 == 1)
    {
      syslog(1, "%s found name after %d intervals : %s\n", className, v25, buffer);
    }

    else
    {
      printf("%s found name after %d intervals : %s\n", className, v25, buffer);
    }

    if (qword_100008008)
    {
      if (CFArrayGetCount(qword_100008008) < 1)
      {
LABEL_44:
        v22 = cf;
        goto LABEL_45;
      }

      v29 = 0;
      while (1)
      {
        v30 = CFArrayGetValueAtIndex(qword_100008008, v29);
        if (v30)
        {
          v31 = v30;
          if (CFEqual(v27, v30))
          {
            break;
          }
        }

        if (CFArrayGetCount(qword_100008008) <= ++v29)
        {
          goto LABEL_44;
        }
      }

      sub_1000018E8(v31);
      v18 = kCFAllocatorDefault;
    }

    v61 = v20;
    v32 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
    if (!v32)
    {
      theArray = 0;
      v42 = 0;
      v44 = 1001;
      goto LABEL_122;
    }

    if (!SCPreferencesLock(qword_100008018, 1u))
    {
      SCPreferencesSynchronize(qword_100008018);
      if (!SCPreferencesLock(qword_100008018, 1u))
      {
        v42 = 0;
        theArray = 0;
LABEL_147:
        v44 = SCError();
LABEL_121:
        v22 = cf;
        if (!v44)
        {
LABEL_126:
          if (v42)
          {
            CFRelease(v42);
          }

          v20 = v61;
          if (v32)
          {
            CFRelease(v32);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (byte_100008000 == 1)
          {
            syslog(1, "%s: enabled %s\n", className, buffer);
          }

          else
          {
            printf("%s: enabled %s\n", className, buffer);
          }

LABEL_45:
          if (!v20)
          {
LABEL_47:
            if (v22)
            {
              CFRelease(v22);
            }

            if (v64)
            {
              CFRelease(v64);
            }

            if (v27)
            {
              CFRelease(v27);
            }

            goto LABEL_53;
          }

LABEL_46:
          CFRelease(v20);
          goto LABEL_47;
        }

LABEL_122:
        v58 = byte_100008000;
        v59 = SCErrorString(v44);
        if (v58 == 1)
        {
          syslog(1, "%s\n", v59);
        }

        else
        {
          puts(v59);
        }

        v22 = cf;
        goto LABEL_126;
      }
    }

    v33 = SCNetworkSetCopyAll(qword_100008018);
    v34 = v33;
    if (v33 && CFArrayGetCount(v33))
    {
      v62 = 0;
    }

    else
    {
      valuePtr = _SCNetworkSetCreateDefault();
      if (!valuePtr)
      {
        theArray = v34;
LABEL_79:
        v42 = 0;
LABEL_80:
        v44 = 1001;
        goto LABEL_81;
      }

      v62 = SCNetworkSetEstablishDefaultConfiguration() != 0;
      if (v34)
      {
        CFRelease(v34);
        v35 = SCNetworkSetCopyAll(qword_100008018);
      }

      else
      {
        v35 = CFArrayCreate(v18, &valuePtr, 1, &kCFTypeArrayCallBacks);
      }

      v34 = v35;
      if (!v35)
      {
        v42 = 0;
        theArray = 0;
        goto LABEL_80;
      }
    }

    theArray = v34;
    v36 = SCNetworkServiceCopyAll(qword_100008018);
    if (v36)
    {
      v37 = v36;
      Count = CFArrayGetCount(v36);
      if (Count >= 1)
      {
        v39 = Count;
        v40 = 0;
        while (1)
        {
          v41 = CFArrayGetValueAtIndex(v37, v40);
          if (v41)
          {
            v42 = v41;
            Interface = SCNetworkServiceGetInterface(v41);
            if (Interface)
            {
              if (CFEqual(Interface, v32))
              {
                break;
              }
            }
          }

          if (v39 == ++v40)
          {
            goto LABEL_77;
          }
        }

        if (sub_10000174C(v42, v37, v24))
        {
          goto LABEL_98;
        }

        goto LABEL_83;
      }

LABEL_77:
      CFRelease(v37);
    }

    if ((sub_1000016D0(v32, &valuePtr) & 1) == 0)
    {
      v42 = valuePtr;
LABEL_83:
      v46 = theArray;
      if (byte_100008000 == 1)
      {
        syslog(1, "Setting Primary rank to %d.\n", v24);
      }

      else
      {
        printf("Setting Primary rank to %d.\n", v24);
      }

      if (SCNetworkServiceSetPrimaryRank())
      {
        v62 = 1;
LABEL_99:
        if ((v63 & 1) != 0 && !SCNetworkServiceGetEnabled(v42))
        {
          if (byte_100008000 == 1)
          {
            syslog(1, "Service should be enabled, but isn't! Force-enabling service.\n");
          }

          else
          {
            puts("Service should be enabled, but isn't! Force-enabling service.");
          }

          v62 = 1;
          if (!SCNetworkServiceSetEnabled(v42, 1u))
          {
            if (byte_100008000 == 1)
            {
              v62 = byte_100008000;
              syslog(1, "Failed to force enable service.\n");
            }

            else
            {
              puts("Failed to force enable service.");
              v62 = 1;
            }
          }
        }

        v50 = CFArrayGetCount(v46);
        if (v50 >= 1)
        {
          v51 = v50;
          for (i = 0; i != v51; ++i)
          {
            v53 = CFArrayGetValueAtIndex(theArray, i);
            v54 = v53;
            if (v53)
            {
              v55 = SCNetworkSetCopyServices(v53);
              if (v55)
              {
                v56 = v55;
                v73.length = CFArrayGetCount(v55);
                v73.location = 0;
                v57 = CFArrayContainsValue(v56, v73, v42);
                CFRelease(v56);
                if (v57)
                {
                  continue;
                }
              }
            }

            sub_10000183C(v54, v42, v62 & 1, &valuePtr);
            v62 = valuePtr;
          }
        }

        if (v62)
        {
          v45 = &byte_100008000;
          v2 = v60;
          if (SCPreferencesCommitChanges(qword_100008018) && SCPreferencesApplyChanges(qword_100008018))
          {
            v44 = 0;
          }

          else
          {
            v44 = SCError();
          }

LABEL_120:
          if (SCPreferencesUnlock(*(v45 + 3)))
          {
            goto LABEL_121;
          }

          goto LABEL_147;
        }

        v44 = 0;
        v2 = v60;
LABEL_81:
        v45 = &byte_100008000;
        goto LABEL_120;
      }

      v47 = SCError();
      v48 = byte_100008000;
      if (v47)
      {
        v49 = SCErrorString(v47);
        if (v48)
        {
          syslog(1, "SCNetworkServiceSetPrimaryRank: %s\n");
        }

        else
        {
          printf("SCNetworkServiceSetPrimaryRank: %s\n", v49);
        }
      }

      else if (byte_100008000)
      {
        syslog(1, "SCNetworkServiceSetPrimaryRank: Failed but no error.\n");
      }

      else
      {
        puts("SCNetworkServiceSetPrimaryRank: Failed but no error.");
      }

LABEL_98:
      v46 = theArray;
      goto LABEL_99;
    }

    goto LABEL_79;
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  if (argc >= 2)
  {
    v3 = 0;
    v4 = argv + 1;
    for (i = argc - 1; i; --i)
    {
      v6 = *v4;
      if (**v4 == 45)
      {
        if (v6[1] == 105 && !v6[2])
        {
          v3 = 1;
          goto LABEL_33;
        }

        if (v6[1] == 99 && !v6[2])
        {
          v3 = 2;
          goto LABEL_33;
        }

        if (v6[1] == 112 && !v6[2])
        {
          sub_100001100();
          if (v17)
          {
            syslog(1, "Will persist\n");
          }

          else
          {
            puts("Will persist");
          }

          byte_100008001 = 1;
          goto LABEL_33;
        }

        if (v6[1] == 120 && !v6[2])
        {
          sub_100001100();
          if (v17)
          {
            syslog(1, "XPC support\n");
          }

          else
          {
            puts("XPC support");
          }

          byte_100008002 = 1;
          goto LABEL_33;
        }

        if (v6[1] == 115 && !v6[2])
        {
          puts("Routing debug output to syslog");
          sub_100001100();
          if (v17)
          {
            syslog(1, "Routing debug output to syslog\n");
          }

          else
          {
            puts("Routing debug output to syslog");
          }

          byte_100008000 = 1;
          goto LABEL_33;
        }
      }

      if (v3 == 2)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        v13 = CFStringCreateWithCString(kCFAllocatorDefault, v6, SystemEncoding);
        if (v13)
        {
          v14 = v13;
          Mutable = qword_100008010;
          if (qword_100008010 || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (qword_100008010 = Mutable) != 0))
          {
            CFArrayAppendValue(Mutable, v14);
            v16 = *v4;
            if (byte_100008000 == 1)
            {
              syslog(1, "Looking for controller %s\n", *v4);
            }

            else
            {
              printf("Looking for controller %s\n", *v4);
            }
          }

          CFRelease(v14);
        }

        v3 = 2;
      }

      else
      {
        if (v3 != 1)
        {
          puts("options:\n");
          puts("\t[-i <interface>]");
          puts("\t[-c <controller>]");
          puts("\t[-p] persistent host detection");
          puts("\t[-s] route logging to syslog");
          puts("\t[-x] register xpc");
          v26 = -1;
          v18 = &byte_100008000;
          goto LABEL_76;
        }

        v7 = CFStringGetSystemEncoding();
        v8 = CFStringCreateWithCString(kCFAllocatorDefault, v6, v7);
        if (v8)
        {
          v9 = v8;
          v10 = qword_100008008;
          if (qword_100008008 || (v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (qword_100008008 = v10) != 0))
          {
            CFArrayAppendValue(v10, v9);
            v11 = *v4;
            if (byte_100008000 == 1)
            {
              syslog(1, "Looking for interface %s\n", *v4);
            }

            else
            {
              printf("Looking for interface %s\n", *v4);
            }
          }

          CFRelease(v9);
        }

        v3 = 1;
      }

LABEL_33:
      ++v4;
    }
  }

  v18 = &byte_100008000;
  if (!qword_100008008)
  {
    sub_100001100();
    if (v17)
    {
      syslog(1, "Looking for all interfaces\n");
    }

    else
    {
      puts("Looking for all interfaces");
    }
  }

  if (!qword_100008010)
  {
    sub_100001100();
    if (v17)
    {
      syslog(1, "Looking for all controllers\n");
    }

    else
    {
      puts("Looking for all controllers");
    }
  }

  if (byte_100008002 == 1)
  {
    xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100004260);
  }

  v19 = getpid();
  v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"addNetworkInterface-%d", v19);
  if (v20)
  {
    v21 = v20;
    qword_100008018 = SCPreferencesCreate(kCFAllocatorDefault, v20, 0);
    if (!qword_100008018)
    {
      goto LABEL_79;
    }

    sub_100001100();
    if (v17)
    {
      syslog(1, "Looking for network interfaces...\n");
    }

    else
    {
      puts("Looking for network interfaces...");
    }

    v22 = IOServiceMatching("IONetworkInterface");
    if (!v22)
    {
      sub_100001100();
      if (v17)
      {
        syslog(1, "Can't create a service matching dictionary\n");
      }

      else
      {
        puts("Can't create a service matching dictionary");
      }

      goto LABEL_71;
    }

    if (byte_100008001 == 1)
    {
      MatchingServices = IOServiceAddMatchingNotification(qword_100008020, "IOServiceMatched", v22, sub_100000780, 0, &dword_100008004);
      if (MatchingServices)
      {
        sub_100001100();
        if (v17)
        {
          syslog(1, "IOServiceAddMatchingNotification failed: 0x%x\n");
        }

        else
        {
          printf("IOServiceAddMatchingNotification failed: 0x%x\n");
        }

        goto LABEL_71;
      }
    }

    else
    {
      MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v22, &dword_100008004);
      if (MatchingServices)
      {
        sub_100001100();
        if (v17)
        {
          syslog(1, "IOServiceGetMatchingServices failed: 0x%x\n");
        }

        else
        {
          printf("IOServiceGetMatchingServices failed: 0x%x\n");
        }

        goto LABEL_71;
      }
    }

    sub_100000780(MatchingServices, dword_100008004);
LABEL_71:
    if (byte_100008001 != 1)
    {
LABEL_74:
      v26 = 0;
LABEL_75:
      CFRelease(v21);
      goto LABEL_76;
    }

    qword_100008020 = IONotificationPortCreate(kIOMasterPortDefault);
    if (qword_100008020)
    {
      Current = CFRunLoopGetCurrent();
      RunLoopSource = IONotificationPortGetRunLoopSource(qword_100008020);
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      CFRunLoopRun();
      goto LABEL_74;
    }

LABEL_79:
    v26 = -1;
    goto LABEL_75;
  }

  v26 = -1;
LABEL_76:
  if (v18[2] == 1)
  {
    dispatch_main();
  }

  return v26;
}

uint64_t sub_1000016D0(const __SCNetworkInterface *a1, const __SCNetworkService **a2)
{
  if (byte_100008000 == 1)
  {
    syslog(1, "No existing service found. Creating new service.\n");
  }

  else
  {
    puts("No existing service found. Creating new service.");
  }

  v4 = SCNetworkServiceCreate(qword_100008018, a1);
  *a2 = v4;
  if (!v4)
  {
    return 1;
  }

  SCNetworkServiceEstablishDefaultConfiguration(v4);
  return 0;
}

BOOL sub_10000174C(const void *a1, const void *a2, int a3)
{
  CFRetain(a1);
  CFRelease(a2);
  PrimaryRank = SCNetworkServiceGetPrimaryRank();
  v7 = byte_100008000;
  ServiceID = SCNetworkServiceGetServiceID(a1);
  if (v7)
  {
    if (ServiceID)
    {
      v9 = SCNetworkServiceGetServiceID(a1);
      SystemEncoding = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v9, SystemEncoding);
    }

    else
    {
      CStringPtr = "NULL";
    }

    syslog(1, "Found existing service %s rank = %d.\n", CStringPtr, PrimaryRank);
  }

  else
  {
    if (ServiceID)
    {
      v12 = SCNetworkServiceGetServiceID(a1);
      v13 = CFStringGetSystemEncoding();
      v14 = CFStringGetCStringPtr(v12, v13);
    }

    else
    {
      v14 = "NULL";
    }

    printf("Found existing service %s rank = %d.\n", v14, PrimaryRank);
  }

  return PrimaryRank == a3;
}

void sub_10000183C(const __SCNetworkSet *a1, const __SCNetworkService *a2, char a3, _BYTE *a4)
{
  if (SCNetworkSetAddService(a1, a2))
  {
    a3 = 1;
  }

  else
  {
    v6 = SCError();
    v7 = byte_100008000;
    if (v6)
    {
      v8 = SCErrorString(v6);
      if (v7)
      {
        syslog(1, "SCNetworkSetAddService: %s\n");
      }

      else
      {
        printf("SCNetworkSetAddService: %s\n", v8);
      }
    }

    else if (byte_100008000)
    {
      syslog(1, "SCNetworkSetAddService: Failed but no error.  Probably already in the set.\n");
    }

    else
    {
      puts("SCNetworkSetAddService: Failed but no error.  Probably already in the set.");
    }
  }

  *a4 = a3 & 1;
}

void sub_1000018E8(const __CFString *a1)
{
  v2 = byte_100008000;
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a1, SystemEncoding);
  if (v2 == 1)
  {
    syslog(1, "found %s interface\n", CStringPtr);
  }

  else
  {
    printf("found %s interface\n", CStringPtr);
  }
}

void sub_100001958(const __CFString *a1)
{
  v2 = byte_100008000;
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a1, SystemEncoding);
  if (v2 == 1)
  {
    syslog(1, "found %s controller \n", CStringPtr);
  }

  else
  {
    printf("found %s controller \n", CStringPtr);
  }
}