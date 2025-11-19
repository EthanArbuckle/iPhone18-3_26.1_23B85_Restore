void sub_1000008E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *notification = 0;
  if (qword_100010218)
  {
    v8 = qword_100010218;
  }

  else
  {
    v8 = &_os_log_default;
  }

  sub_100007804(v8, "Going to discover services \n", a3, a4, a5, a6, a7, a8, v66);
  if (dword_100010220)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v83 = v9;
    v84 = v9;
    v82 = v9;
    v80 = v9;
    v81 = v9;
    v78 = v9;
    v79 = v9;
    *v77 = v9;
    v75 = 0xAAAAAAAAAAAAAAAALL;
    time(&v75);
    v10 = localtime(&v75);
    strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v10);
    dprintf(dword_100010220, "%s ", v77);
    dprintf(dword_100010220, "Going to discover services \n");
  }

  v17 = IONotificationPortCreate(kIOMainPortDefault);
  if (qword_100010218)
  {
    v18 = qword_100010218;
  }

  else
  {
    v18 = &_os_log_default;
  }

  if (v17)
  {
    v71 = "com.apple.driver.AppleBCMWLANCore";
    sub_100007804(v18, "Matching with -> Core match:'%s', Bundle ID match:'%s'\n", v11, v12, v13, v14, v15, v16, "AppleBCMWLANCore");
    if (dword_100010220)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v83 = v19;
      v84 = v19;
      v82 = v19;
      v80 = v19;
      v81 = v19;
      v78 = v19;
      v79 = v19;
      *v77 = v19;
      v75 = 0xAAAAAAAAAAAAAAAALL;
      time(&v75);
      v20 = localtime(&v75);
      strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v20);
      dprintf(dword_100010220, "%s ", v77);
      dprintf(dword_100010220, "Matching with -> Core match:'%s', Bundle ID match:'%s'\n", "AppleBCMWLANCore", "com.apple.driver.AppleBCMWLANCore");
    }

    RunLoopSource = IONotificationPortGetRunLoopSource(v17);
    v22 = IOServiceNameMatching("AppleBCMWLANCore");
    if (IOServiceAddMatchingNotification(v17, "IOServiceFirstMatch", v22, sub_100000ED4, notification, &notification[1]))
    {
      if (qword_100010218)
      {
        v29 = qword_100010218;
      }

      else
      {
        v29 = &_os_log_default;
      }

      sub_100007804(v29, "Failed to add matching notification\n", v23, v24, v25, v26, v27, v28, v68);
      if (dword_100010220)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v83 = v30;
        v84 = v30;
        v82 = v30;
        v80 = v30;
        v81 = v30;
        v78 = v30;
        v79 = v30;
        *v77 = v30;
        v75 = 0xAAAAAAAAAAAAAAAALL;
        time(&v75);
        v31 = localtime(&v75);
        strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v31);
        dprintf(dword_100010220, "%s ", v77);
        dprintf(dword_100010220, "Failed to add matching notification\n", v69, v71);
      }
    }

    else
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      v35 = CFRunLoopGetCurrent();
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100000EC8;
      block[3] = &unk_10000C408;
      v73 = notification[0];
      v74 = notification[1];
      CFRunLoopPerformBlock(v35, kCFRunLoopDefaultMode, block);
      if (qword_100010218)
      {
        v42 = qword_100010218;
      }

      else
      {
        v42 = &_os_log_default;
      }

      sub_100007804(v42, "Waiting for firmware to load\n", v36, v37, v38, v39, v40, v41, v68);
      if (dword_100010220)
      {
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v83 = v43;
        v84 = v43;
        v82 = v43;
        v80 = v43;
        v81 = v43;
        v78 = v43;
        v79 = v43;
        *v77 = v43;
        v75 = 0xAAAAAAAAAAAAAAAALL;
        time(&v75);
        v44 = localtime(&v75);
        strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v44);
        dprintf(dword_100010220, "%s ", v77);
        dprintf(dword_100010220, "Waiting for firmware to load\n");
      }

      if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 300.0, 0) == kCFRunLoopRunTimedOut)
      {
        v51 = qword_100010218 ? qword_100010218 : &_os_log_default;
        sub_100007804(v51, "Runloop timed out\n", v45, v46, v47, v48, v49, v50, v70);
        if (dword_100010220)
        {
          *&v52 = 0xAAAAAAAAAAAAAAAALL;
          *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v83 = v52;
          v84 = v52;
          v82 = v52;
          v80 = v52;
          v81 = v52;
          v78 = v52;
          v79 = v52;
          *v77 = v52;
          v75 = 0xAAAAAAAAAAAAAAAALL;
          time(&v75);
          v53 = localtime(&v75);
          strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v53);
          dprintf(dword_100010220, "%s ", v77);
          dprintf(dword_100010220, "Runloop timed out\n");
        }
      }

      v54 = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(v54, RunLoopSource, kCFRunLoopDefaultMode);
      IONotificationPortDestroy(v17);
      v61 = dword_100010118 == 2 && dword_100010114 == 1 || dword_100010190 == 2 && dword_10001018C == 1;
      HIDWORD(qword_100010100) = v61;
      if (qword_100010218)
      {
        v63 = qword_100010218;
      }

      else
      {
        v63 = &_os_log_default;
      }

      sub_100007804(v63, "wifiFirmwareLoaderThread exiting with %d\n", v55, v56, v57, v58, v59, v60, v61);
      if (dword_100010220)
      {
        *&v64 = 0xAAAAAAAAAAAAAAAALL;
        *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v83 = v64;
        v84 = v64;
        v82 = v64;
        v80 = v64;
        v81 = v64;
        v78 = v64;
        v79 = v64;
        *v77 = v64;
        v75 = 0xAAAAAAAAAAAAAAAALL;
        time(&v75);
        v65 = localtime(&v75);
        strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v65);
        dprintf(dword_100010220, "%s ", v77);
        dprintf(dword_100010220, "wifiFirmwareLoaderThread exiting with %d\n");
      }
    }
  }

  else
  {
    sub_100007804(v18, "Failed to create notification port\n", v11, v12, v13, v14, v15, v16, v67);
    if (dword_100010220)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v83 = v32;
      v84 = v32;
      v82 = v32;
      v80 = v32;
      v81 = v32;
      v78 = v32;
      v79 = v32;
      *v77 = v32;
      v75 = 0xAAAAAAAAAAAAAAAALL;
      time(&v75);
      v33 = localtime(&v75);
      strftime(v77, 0x80uLL, "%b %d %H:%M:%S", v33);
      dprintf(dword_100010220, "%s ", v77);
      dprintf(dword_100010220, "Failed to create notification port\n");
    }
  }
}

uint64_t sub_100000ED4(io_registry_entry_t *a1, io_iterator_t a2)
{
  v2 = a1;
  v3 = &stru_100010000;
  while (1)
  {
    result = IOIteratorNext(a2);
    if (!result)
    {
      return result;
    }

    v5 = result;
    __strlcpy_chk();
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"DriverKitDriverPlatformType", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      TypeID = CFStringGetTypeID();
      v9 = TypeID == CFGetTypeID(v7);
      v3 = &stru_100010000;
      if (v9)
      {
        xmmword_100010031 = 0u;
        unk_100010041 = 0u;
        xmmword_100010011 = 0u;
        unk_100010021 = 0u;
        v79 = 0;
        v88.length = CFStringGetLength(v7);
        v88.location = 0;
        if (!CFStringGetBytes(v7, v88, 0x8000100u, 0, 0, &xmmword_100010011, 64, &v79))
        {
          v16 = qword_100010218 ? qword_100010218 : &_os_log_default;
          sub_100007804(v16, "%s failed, no characters converted\n", v10, v11, v12, v13, v14, v15, "__serviceCallback");
          if (dword_100010220)
          {
            *&v17 = 0xAAAAAAAAAAAAAAAALL;
            *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v86 = v17;
            v87 = v17;
            v84 = v17;
            v85 = v17;
            v82 = v17;
            v83 = v17;
            *v80 = v17;
            v81 = v17;
            v78 = 0xAAAAAAAAAAAAAAAALL;
            time(&v78);
            v18 = localtime(&v78);
            strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v18);
            dprintf(dword_100010220, "%s ", v80);
            dprintf(dword_100010220, "%s failed, no characters converted\n", "__serviceCallback");
          }
        }

        CFRelease(v7);
      }
    }

    v19 = IORegistryEntryCreateCFProperty(v5, @"DriverKitDriver", kCFAllocatorDefault, 0);
    if (v19)
    {
      v26 = v19;
      LOBYTE(v3[1].__sig) = CFBooleanGetValue(v19) != 0;
      CFRelease(v26);
    }

    if (qword_100010218)
    {
      v27 = qword_100010218;
    }

    else
    {
      v27 = &_os_log_default;
    }

    if (LOBYTE(v3[1].__sig) == 1)
    {
      sub_100007804(v27, "We are using driverkit driver\n", v20, v21, v22, v23, v24, v25, usedBufLen);
      if (dword_100010220)
      {
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v86 = v28;
        v87 = v28;
        v84 = v28;
        v85 = v28;
        v82 = v28;
        v83 = v28;
        *v80 = v28;
        v81 = v28;
        v79 = 0xAAAAAAAAAAAAAAAALL;
        time(&v79);
        v29 = localtime(&v79);
        strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v29);
        dprintf(dword_100010220, "%s ", v80);
        dprintf(dword_100010220, "We are using driverkit driver\n");
      }

      v30 = IORegistryEntryCreateCFProperty(v5, @"IOUserClass", kCFAllocatorDefault, 0);
      if (!v30)
      {
        if (qword_100010218)
        {
          v37 = qword_100010218;
        }

        else
        {
          v37 = &_os_log_default;
        }

        sub_100007804(v37, "Property read for %s returned NULL\n", v31, v32, v33, v34, v35, v36, "IOUserClass");
        if (dword_100010220)
        {
          *&v38 = 0xAAAAAAAAAAAAAAAALL;
          *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v86 = v38;
          v87 = v38;
          v84 = v38;
          v85 = v38;
          v82 = v38;
          v83 = v38;
          *v80 = v38;
          v81 = v38;
          v79 = 0xAAAAAAAAAAAAAAAALL;
          time(&v79);
          v39 = localtime(&v79);
          strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v39);
          dprintf(dword_100010220, "%s ", v80);
          dprintf(dword_100010220, "Property read for %s returned NULL\n", "IOUserClass");
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_100007804(v27, "We are using IOKit driver\n", v20, v21, v22, v23, v24, v25, usedBufLen);
      if (dword_100010220)
      {
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v86 = v40;
        v87 = v40;
        v84 = v40;
        v85 = v40;
        v82 = v40;
        v83 = v40;
        *v80 = v40;
        v81 = v40;
        v79 = 0xAAAAAAAAAAAAAAAALL;
        time(&v79);
        v41 = localtime(&v79);
        strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v41);
        dprintf(dword_100010220, "%s ", v80);
        dprintf(dword_100010220, "We are using IOKit driver\n");
      }

      v30 = IOObjectCopyClass(v5);
      if (!v30)
      {
        goto LABEL_51;
      }
    }

    v42 = v30;
    if (CFStringCompare(v30, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
    {
      v43 = qword_100010218;
      CStringPtr = CFStringGetCStringPtr(v42, 0);
      v51 = &_os_log_default;
      if (v43)
      {
        v51 = v43;
      }

      sub_100007804(v51, "Matched class name '%s', starting ...\n", v45, v46, v47, v48, v49, v50, CStringPtr);
      if (dword_100010220)
      {
        *&v58 = 0xAAAAAAAAAAAAAAAALL;
        *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v86 = v58;
        v87 = v58;
        v84 = v58;
        v85 = v58;
        v82 = v58;
        v83 = v58;
        *v80 = v58;
        v81 = v58;
        v79 = 0xAAAAAAAAAAAAAAAALL;
        time(&v79);
        v59 = localtime(&v79);
        strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v59);
        dprintf(dword_100010220, "%s ", v80);
        v60 = dword_100010220;
        v61 = CFStringGetCStringPtr(v42, 0);
        dprintf(v60, "Matched class name '%s', starting ...\n", v61);
      }

      if (qword_100010218)
      {
        v62 = qword_100010218;
      }

      else
      {
        v62 = &_os_log_default;
      }

      sub_100007804(v62, "%s()\n", v52, v53, v54, v55, v56, v57, "startWiFiFirmwareLoaderService");
      if (dword_100010220)
      {
        *&v69 = 0xAAAAAAAAAAAAAAAALL;
        *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v86 = v69;
        v87 = v69;
        v84 = v69;
        v85 = v69;
        v82 = v69;
        v83 = v69;
        *v80 = v69;
        v81 = v69;
        v79 = 0xAAAAAAAAAAAAAAAALL;
        time(&v79);
        v70 = localtime(&v79);
        strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v70);
        dprintf(dword_100010220, "%s ", v80);
        usedBufLen = "startWiFiFirmwareLoaderService";
        dprintf(dword_100010220, "%s()\n");
      }

      v3 = &stru_100010000;
      if (qword_100010100 == 2)
      {
        if (qword_100010218)
        {
          v71 = qword_100010218;
        }

        else
        {
          v71 = &_os_log_default;
        }

        sub_100007804(v71, "No free interface slot, ignoring service..", v63, v64, v65, v66, v67, v68, usedBufLen);
        v2 = a1;
        if (dword_100010220)
        {
          *&v72 = 0xAAAAAAAAAAAAAAAALL;
          *(&v72 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v86 = v72;
          v87 = v72;
          v84 = v72;
          v85 = v72;
          v82 = v72;
          v83 = v72;
          *v80 = v72;
          v81 = v72;
          v79 = 0xAAAAAAAAAAAAAAAALL;
          time(&v79);
          v73 = localtime(&v79);
          strftime(v80, 0x80uLL, "%b %d %H:%M:%S", v73);
          dprintf(dword_100010220, "%s ", v80);
          dprintf(dword_100010220, "No free interface slot, ignoring service..");
        }
      }

      else
      {
        if (qword_100010100 >= 2)
        {
          __break(0x5512u);
LABEL_55:
          __break(0x5500u);
LABEL_56:
          __break(0x5513u);
        }

        v2 = a1;
        if (120 * qword_100010100 > ~&unk_100010108)
        {
          goto LABEL_56;
        }

        v74 = &unk_100010058 + 120 * qword_100010100;
        *(v74 + 48) = 1;
        *(v74 + 46) = v5;
        pthread_create(v74 + 22, 0, sub_1000015F4, v74 + 176);
        if (__OFADD__(qword_100010100, 1))
        {
          goto LABEL_55;
        }

        LODWORD(qword_100010100) = qword_100010100 + 1;
      }
    }

    CFRelease(v42);
LABEL_51:
    if (!*v2)
    {
      *v2 = v5;
    }
  }
}

void sub_1000015F4(uint64_t a1)
{
  v1 = a1;
  *(a1 + 12) = 0x100000001;
  if (byte_100010010)
  {
    v2 = @"/System/Library/DriverExtensions/com.apple.DriverKit-AppleBCMWLAN.dext/Firmware/";
  }

  else
  {
    v2 = @"/usr/share/firmware/wifi/";
  }

  v681 = v2;
  if (*(&xmmword_1000100A0 + 1))
  {
    v3 = kCFAllocatorDefault;
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 255, *(&xmmword_1000100A0 + 1));
    *(v1 + 112) = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_15;
    }

    v5 = *(v1 + 8);
    v727 = 0u;
    v728 = 0u;
    v725 = 0u;
    v726 = 0u;
    v723 = 0u;
    v724 = 0u;
    v721 = 0u;
    v722 = 0u;
    v719 = 0u;
    v720 = 0u;
    v717 = 0u;
    v718 = 0u;
    v715 = 0u;
    v716 = 0u;
    memset(cStr, 0, sizeof(cStr));
    size[0] = 0;
    if (!v5)
    {
      goto LABEL_15;
    }

    if (!CFStringGetCStringPtr(MutableCopy, 0))
    {
      goto LABEL_15;
    }

    CFStringGetCStringPtr(*(v1 + 112), 0);
    __strlcpy_chk();
    if (!sub_1000073A0(cStr, size))
    {
      goto LABEL_15;
    }

    if (size[0] - 0x2000 <= 0xFFFFFFFFFFFFE080)
    {
      if (qword_100010218)
      {
        v215 = qword_100010218;
      }

      else
      {
        v215 = &_os_log_default;
      }

      sub_100007804(v215, "msf cal file is too big or too small\n", v6, v7, v8, v9, v10, v11, outputStruct);
      if (dword_100010220)
      {
        *&v216 = 0xAAAAAAAAAAAAAAAALL;
        *(&v216 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v216;
        v705 = v216;
        v702 = v216;
        v703 = v216;
        v700 = v216;
        v701 = v216;
        v698 = v216;
        v699 = v216;
        length = 0xAAAAAAAAAAAAAAAALL;
        time(&length);
        v217 = localtime(&length);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v217);
        dprintf(dword_100010220, "%s ", &v698);
        dprintf(dword_100010220, "msf cal file is too big or too small\n");
      }
    }

    else
    {
      v12 = malloc_type_malloc(size[0], 0x100004077774924uLL);
      if (v12)
      {
        v19 = v12;
        length = size[0];
        if (sub_100007AC8(cStr, v12, &length))
        {
          v26 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v19, length, kCFAllocatorNull);
          if (v26)
          {
            v33 = v26;
            IORegistryEntrySetCFProperty(v5, @"WiFiMSFCal", v26);
            free(v19);
            CFRelease(v33);
            goto LABEL_15;
          }

          if (qword_100010218)
          {
            v224 = qword_100010218;
          }

          else
          {
            v224 = &_os_log_default;
          }

          sub_100007804(v224, "failed to create MSF Data Ref\n", v27, v28, v29, v30, v31, v32, outputStruct);
          if (dword_100010220)
          {
            *&v225 = 0xAAAAAAAAAAAAAAAALL;
            *(&v225 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v704 = v225;
            v705 = v225;
            v702 = v225;
            v703 = v225;
            v700 = v225;
            v701 = v225;
            v698 = v225;
            v699 = v225;
            v689 = 0xAAAAAAAAAAAAAAAALL;
            time(&v689);
            v226 = localtime(&v689);
            strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v226);
            dprintf(dword_100010220, "%s ", &v698);
            dprintf(dword_100010220, "failed to create MSF Data Ref\n");
          }
        }

        else
        {
          if (qword_100010218)
          {
            v221 = qword_100010218;
          }

          else
          {
            v221 = &_os_log_default;
          }

          sub_100007804(v221, "copy MSF CAL failed\n", v20, v21, v22, v23, v24, v25, outputStruct);
          if (dword_100010220)
          {
            *&v222 = 0xAAAAAAAAAAAAAAAALL;
            *(&v222 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v704 = v222;
            v705 = v222;
            v702 = v222;
            v703 = v222;
            v700 = v222;
            v701 = v222;
            v698 = v222;
            v699 = v222;
            v689 = 0xAAAAAAAAAAAAAAAALL;
            time(&v689);
            v223 = localtime(&v689);
            strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v223);
            dprintf(dword_100010220, "%s ", &v698);
            dprintf(dword_100010220, "copy MSF CAL failed\n");
          }
        }

        free(v19);
      }

      else
      {
        if (qword_100010218)
        {
          v218 = qword_100010218;
        }

        else
        {
          v218 = &_os_log_default;
        }

        sub_100007804(v218, "failed to alloc memory for msf cal\n", v13, v14, v15, v16, v17, v18, outputStruct);
        if (dword_100010220)
        {
          *&v219 = 0xAAAAAAAAAAAAAAAALL;
          *(&v219 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v704 = v219;
          v705 = v219;
          v702 = v219;
          v703 = v219;
          v700 = v219;
          v701 = v219;
          v698 = v219;
          v699 = v219;
          length = 0xAAAAAAAAAAAAAAAALL;
          time(&length);
          v220 = localtime(&length);
          strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v220);
          dprintf(dword_100010220, "%s ", &v698);
          dprintf(dword_100010220, "failed to alloc memory for msf cal\n");
        }
      }
    }
  }

  else
  {
    *(a1 + 112) = 0;
    v3 = kCFAllocatorDefault;
  }

LABEL_15:
  if (xmmword_1000100A0)
  {
    v34 = CFStringCreateMutableCopy(v3, 255, xmmword_1000100A0);
  }

  else
  {
    v34 = 0;
  }

  *(v1 + 104) = v34;
  CFProperty = IORegistryEntryCreateCFProperty(*(v1 + 8), @"FirmwareLoaded", v3, 0);
  if (CFProperty)
  {
    v36 = CFProperty;
    v37 = CFBooleanGetValue(CFProperty) != 0;
    CFRelease(v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v1 + 8);
  length = 0;
  size[0] = 0;
  *&v39 = 0xAAAAAAAAAAAAAAAALL;
  *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v727 = v39;
  v728 = v39;
  v725 = v39;
  v726 = v39;
  v723 = v39;
  v724 = v39;
  v721 = v39;
  v722 = v39;
  v719 = v39;
  v720 = v39;
  v717 = v39;
  v718 = v39;
  v715 = v39;
  v716 = v39;
  *cStr = v39;
  *&cStr[16] = v39;
  v40 = *(v1 + 104);
  if (v40)
  {
    CFStringGetCStringPtr(v40, 0);
    __strlcpy_chk();
    v41 = 0;
  }

  else
  {
    v42 = IORegistryEntryCreateCFProperty(v38, @"PlatformConfigFileName", v3, 0);
    if (!v42)
    {
      if (qword_100010218)
      {
        v227 = qword_100010218;
      }

      else
      {
        v227 = &_os_log_default;
      }

      sub_100007804(v227, "no PlatformConfigFileName in ioreg\n", v43, v44, v45, v46, v47, v48, outputStruct);
      if (dword_100010220)
      {
        *&v228 = 0xAAAAAAAAAAAAAAAALL;
        *(&v228 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v228;
        v705 = v228;
        v702 = v228;
        v703 = v228;
        v700 = v228;
        v701 = v228;
        v698 = v228;
        v699 = v228;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v229 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v229);
        dprintf(dword_100010220, "%s ", &v698);
        v41 = 0;
        v107 = 0;
        v91 = 0;
        v99 = 0;
        dprintf(dword_100010220, "no PlatformConfigFileName in ioreg\n");
        goto LABEL_177;
      }

      v41 = 0;
      goto LABEL_175;
    }

    v41 = v42;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v41))
    {
      if (qword_100010218)
      {
        v230 = qword_100010218;
      }

      else
      {
        v230 = &_os_log_default;
      }

      sub_100007804(v230, "PlatformConfigFileName is not CFstring!\n", v50, v51, v52, v53, v54, v55, outputStruct);
      if (dword_100010220)
      {
        *&v231 = 0xAAAAAAAAAAAAAAAALL;
        *(&v231 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v231;
        v705 = v231;
        v702 = v231;
        v703 = v231;
        v700 = v231;
        v701 = v231;
        v698 = v231;
        v699 = v231;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v232 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v232);
        dprintf(dword_100010220, "%s ", &v698);
        v107 = 0;
        v91 = 0;
        v99 = 0;
        dprintf(dword_100010220, "PlatformConfigFileName is not CFstring!\n");
        goto LABEL_177;
      }

      goto LABEL_175;
    }

    if (byte_100010010 == 1)
    {
      __strlcpy_chk();
      __strlcat_chk();
      __strlcat_chk();
      if (qword_100010218)
      {
        v62 = qword_100010218;
      }

      else
      {
        v62 = &_os_log_default;
      }

      sub_100007804(v62, "platformType:'%s' platformConfig path:'%s'\n", v56, v57, v58, v59, v60, v61, &xmmword_100010011);
      if (dword_100010220)
      {
        *&v63 = 0xAAAAAAAAAAAAAAAALL;
        *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v63;
        v705 = v63;
        v702 = v63;
        v703 = v63;
        v700 = v63;
        v701 = v63;
        v698 = v63;
        v699 = v63;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v64 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v64);
        dprintf(dword_100010220, "%s ", &v698);
        dprintf(dword_100010220, "platformType:'%s' platformConfig path:'%s'\n", &xmmword_100010011, cStr);
      }
    }

    else
    {
      __strlcpy_chk();
    }

    CFStringGetCStringPtr(v41, 0);
    __strlcat_chk();
  }

  v71 = sub_1000073A0(cStr, &length);
  if (qword_100010218)
  {
    v72 = qword_100010218;
  }

  else
  {
    v72 = &_os_log_default;
  }

  sub_100007804(v72, "config full name %s size %zu\n", v65, v66, v67, v68, v69, v70, cStr);
  if (dword_100010220)
  {
    *&v79 = 0xAAAAAAAAAAAAAAAALL;
    *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v704 = v79;
    v705 = v79;
    v702 = v79;
    v703 = v79;
    v700 = v79;
    v701 = v79;
    v698 = v79;
    v699 = v79;
    v689 = 0xAAAAAAAAAAAAAAAALL;
    time(&v689);
    v80 = localtime(&v689);
    strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v80);
    dprintf(dword_100010220, "%s ", &v698);
    dprintf(dword_100010220, "config full name %s size %zu\n", cStr, length);
  }

  if (!v71)
  {
LABEL_175:
    v107 = 0;
    v91 = 0;
LABEL_176:
    v99 = 0;
    goto LABEL_177;
  }

  if (qword_100010218)
  {
    v81 = qword_100010218;
  }

  else
  {
    v81 = &_os_log_default;
  }

  if ((length - 0x2000) <= 0xFFFFFFFFFFFFE080)
  {
    sub_100007804(v81, "Platform config file is too big or too small\n", v73, v74, v75, v76, v77, v78, outputStructa);
    if (dword_100010220)
    {
      *&v190 = 0xAAAAAAAAAAAAAAAALL;
      *(&v190 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v190;
      v705 = v190;
      v702 = v190;
      v703 = v190;
      v700 = v190;
      v701 = v190;
      v698 = v190;
      v699 = v190;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v191 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v191);
      dprintf(dword_100010220, "%s ", &v698);
      v107 = 0;
      v91 = 0;
      v99 = 0;
      dprintf(dword_100010220, "Platform config file is too big or too small\n");
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  sub_100007804(v81, "config full name %s\n", v73, v74, v75, v76, v77, v78, cStr);
  if (dword_100010220)
  {
    *&v82 = 0xAAAAAAAAAAAAAAAALL;
    *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v704 = v82;
    v705 = v82;
    v702 = v82;
    v703 = v82;
    v700 = v82;
    v701 = v82;
    v698 = v82;
    v699 = v82;
    v689 = 0xAAAAAAAAAAAAAAAALL;
    time(&v689);
    v83 = localtime(&v689);
    strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v83);
    dprintf(dword_100010220, "%s ", &v698);
    dprintf(dword_100010220, "config full name %s\n", cStr);
  }

  v84 = CFStringCreateWithCString(0, cStr, 0);
  if (!v84)
  {
    if (qword_100010218)
    {
      v192 = qword_100010218;
    }

    else
    {
      v192 = &_os_log_default;
    }

    sub_100007804(v192, "fail to create CFStringRef for file w path\n", v85, v86, v87, v88, v89, v90, outputStructb);
    if (dword_100010220)
    {
      *&v193 = 0xAAAAAAAAAAAAAAAALL;
      *(&v193 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v193;
      v705 = v193;
      v702 = v193;
      v703 = v193;
      v700 = v193;
      v701 = v193;
      v698 = v193;
      v699 = v193;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v194 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v194);
      dprintf(dword_100010220, "%s ", &v698);
      v107 = 0;
      v91 = 0;
      v99 = 0;
      dprintf(dword_100010220, "fail to create CFStringRef for file w path\n");
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  v91 = v84;
  v92 = CFURLCreateWithFileSystemPath(v3, v84, kCFURLPOSIXPathStyle, 0);
  if (!v92)
  {
    if (qword_100010218)
    {
      v195 = qword_100010218;
    }

    else
    {
      v195 = &_os_log_default;
    }

    sub_100007804(v195, "fail to create fileURL\n", v93, v94, v95, v96, v97, v98, outputStructb);
    if (dword_100010220)
    {
      *&v196 = 0xAAAAAAAAAAAAAAAALL;
      *(&v196 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v196;
      v705 = v196;
      v702 = v196;
      v703 = v196;
      v700 = v196;
      v701 = v196;
      v698 = v196;
      v699 = v196;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v197 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v197);
      dprintf(dword_100010220, "%s ", &v698);
      v107 = 0;
      v99 = 0;
      dprintf(dword_100010220, "fail to create fileURL\n");
      goto LABEL_177;
    }

    v107 = 0;
    goto LABEL_176;
  }

  v99 = v92;
  v100 = CFReadStreamCreateWithFile(v3, v92);
  if (!v100)
  {
    if (qword_100010218)
    {
      v198 = qword_100010218;
    }

    else
    {
      v198 = &_os_log_default;
    }

    sub_100007804(v198, "fail to create fileStream\n", v101, v102, v103, v104, v105, v106, outputStructb);
    if (dword_100010220)
    {
      *&v199 = 0xAAAAAAAAAAAAAAAALL;
      *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v199;
      v705 = v199;
      v702 = v199;
      v703 = v199;
      v700 = v199;
      v701 = v199;
      v698 = v199;
      v699 = v199;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v200 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v200);
      dprintf(dword_100010220, "%s ", &v698);
      v107 = 0;
      dprintf(dword_100010220, "fail to create fileStream\n");
    }

    else
    {
      v107 = 0;
    }

    goto LABEL_177;
  }

  v107 = v100;
  v108 = CFReadStreamOpen(v100);
  if (!v108)
  {
    if (qword_100010218)
    {
      v201 = qword_100010218;
    }

    else
    {
      v201 = &_os_log_default;
    }

    sub_100007804(v201, "fail to open fileStream\n", v109, v110, v111, v112, v113, v114, outputStructb);
    if (dword_100010220)
    {
      *&v202 = 0xAAAAAAAAAAAAAAAALL;
      *(&v202 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v202;
      v705 = v202;
      v702 = v202;
      v703 = v202;
      v700 = v202;
      v701 = v202;
      v698 = v202;
      v699 = v202;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v203 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v203);
      dprintf(dword_100010220, "%s ", &v698);
      dprintf(dword_100010220, "fail to open fileStream\n");
    }

LABEL_177:
    v150 = 0;
    v123 = 0;
    v685 = 0;
    v186 = v107 != 0;
    if (!v41)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

  v115 = v108;
  entry = v38;
  v116 = CFPropertyListCreateWithStream(v3, v107, 0, 2uLL, 0, size);
  v123 = v116;
  if (!v116)
  {
    CFReadStreamClose(v107);
LABEL_131:
    v150 = 0;
    v685 = 0;
    goto LABEL_90;
  }

  cf = v116;
  if (qword_100010218)
  {
    v124 = qword_100010218;
  }

  else
  {
    v124 = &_os_log_default;
  }

  sub_100007804(v124, "Setting property list  errorCode:%d, status:%u\n", v117, v118, v119, v120, v121, v122, 0);
  if (dword_100010220)
  {
    *&v131 = 0xAAAAAAAAAAAAAAAALL;
    *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v704 = v131;
    v705 = v131;
    v702 = v131;
    v703 = v131;
    v700 = v131;
    v701 = v131;
    v698 = v131;
    v699 = v131;
    v689 = 0xAAAAAAAAAAAAAAAALL;
    time(&v689);
    v132 = localtime(&v689);
    strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v132);
    dprintf(dword_100010220, "%s ", &v698);
    dprintf(dword_100010220, "Setting property list  errorCode:%d, status:%u\n", 0, v115);
  }

  if (size[0])
  {
    if (qword_100010218)
    {
      v204 = qword_100010218;
    }

    else
    {
      v204 = &_os_log_default;
    }

    sub_100007804(v204, "fail to create property list\n", v125, v126, v127, v128, v129, v130, outputStructc);
    v123 = cf;
    if (dword_100010220)
    {
      *&v205 = 0xAAAAAAAAAAAAAAAALL;
      *(&v205 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v205;
      v705 = v205;
      v702 = v205;
      v703 = v205;
      v700 = v205;
      v701 = v205;
      v698 = v205;
      v699 = v205;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v206 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v206);
      dprintf(dword_100010220, "%s ", &v698);
      dprintf(dword_100010220, "fail to create property list\n");
    }

    goto LABEL_131;
  }

  v133 = CFDictionaryGetTypeID();
  v123 = cf;
  if (v133 != CFGetTypeID(cf))
  {
    if (qword_100010218)
    {
      v207 = qword_100010218;
    }

    else
    {
      v207 = &_os_log_default;
    }

    sub_100007804(v207, "Propery list is not CFDictionary!\n", v134, v135, v136, v137, v138, v139, outputStructc);
    if (dword_100010220)
    {
      *&v208 = 0xAAAAAAAAAAAAAAAALL;
      *(&v208 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v208;
      v705 = v208;
      v702 = v208;
      v703 = v208;
      v700 = v208;
      v701 = v208;
      v698 = v208;
      v699 = v208;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v209 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v209);
      dprintf(dword_100010220, "%s ", &v698);
      dprintf(dword_100010220, "Propery list is not CFDictionary!\n");
    }

    goto LABEL_131;
  }

  Count = CFDictionaryGetCount(cf);
  if (Count != Count)
  {
    goto LABEL_621;
  }

  v677 = v41;
  v678 = v1;
  if (Count >> 61)
  {
LABEL_622:
    __break(0x550Cu);
    return;
  }

  v141 = 8 * Count;
  v142 = malloc_type_malloc(v141, 0x6004044C4A2DFuLL);
  if (v142)
  {
    v149 = v142;
    v675 = v107;
    v676 = v91;
    v680 = v37;
    CFDictionaryGetKeysAndValues(cf, v142, 0);
    v150 = 0;
    v151 = 0;
    v685 = v149;
    while (v151 < CFDictionaryGetCount(v123))
    {
      if (v151 >> 60 || ((v151 & 0x1000000000000000) != 0) == 8 * v151 <= ~v149)
      {
        goto LABEL_619;
      }

      if (v151 == v141 >> 3)
      {
        __break(1u);
LABEL_619:
        __break(0x5513u);
LABEL_620:
        __break(0x5500u);
      }

      CStringPtr = CFStringGetCStringPtr(v149[v151], 0);
      v153 = 0;
      v154 = qword_100010218;
      do
      {
        if (!strcmp(CStringPtr, off_10000C468[v153]))
        {
          break;
        }

        ++v153;
      }

      while (v153 != 51);
      if (v154)
      {
        v161 = v154;
      }

      else
      {
        v161 = &_os_log_default;
      }

      sub_100007804(v161, "%5ld: %s allow: %d\n", v155, v156, v157, v158, v159, v160, v151);
      if (dword_100010220)
      {
        *&v162 = 0xAAAAAAAAAAAAAAAALL;
        *(&v162 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v162;
        v705 = v162;
        v702 = v162;
        v703 = v162;
        v700 = v162;
        v701 = v162;
        v698 = v162;
        v699 = v162;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v163 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v163);
        dprintf(dword_100010220, "%s ", &v698);
        v164 = 0;
        v165 = dword_100010220;
        v166 = 1;
        do
        {
          if (!strcmp(CStringPtr, off_10000C468[v164]))
          {
            break;
          }

          v166 = v164++ < 0x32;
        }

        while (v164 != 51);
        dprintf(v165, "%5ld: %s allow: %d\n", v151, CStringPtr, v166);
      }

      v167 = 0;
      v168 = 1;
      do
      {
        if (!strcmp(CStringPtr, off_10000C468[v167]))
        {
          break;
        }

        v168 = v167++ < 0x32;
      }

      while (v167 != 51);
      v123 = cf;
      if (!v168)
      {
        if (qword_100010218)
        {
          v187 = qword_100010218;
        }

        else
        {
          v187 = &_os_log_default;
        }

        sub_100007804(v187, "key not in allowList\n", v169, v170, v171, v172, v173, v174, outputStructc);
        if (dword_100010220)
        {
          *&v188 = 0xAAAAAAAAAAAAAAAALL;
          *(&v188 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v704 = v188;
          v705 = v188;
          v702 = v188;
          v703 = v188;
          v700 = v188;
          v701 = v188;
          v698 = v188;
          v699 = v188;
          v689 = 0xAAAAAAAAAAAAAAAALL;
          time(&v689);
          v189 = localtime(&v689);
          strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v189);
          dprintf(dword_100010220, "%s ", &v698);
          dprintf(dword_100010220, "key not in allowList\n");
        }

        v1 = v678;
        v37 = v680;
        v91 = v676;
        v41 = v677;
        v107 = v675;
        goto LABEL_90;
      }

      if (!strncmp(CStringPtr, "wlan.is.fdr.cal", 0x10uLL))
      {
        v150 = 1;
      }

      ++v151;
    }

    v175 = CFDictionaryGetTypeID();
    v182 = CFGetTypeID(v123);
    if (qword_100010218)
    {
      v183 = qword_100010218;
    }

    else
    {
      v183 = &_os_log_default;
    }

    v1 = v678;
    v107 = v675;
    if (v175 == v182)
    {
      sub_100007804(v183, "%s isFdrCal %d\n", v176, v177, v178, v179, v180, v181, "writePlatformConfig");
      v41 = v677;
      v37 = v680;
      if (dword_100010220)
      {
        *&v184 = 0xAAAAAAAAAAAAAAAALL;
        *(&v184 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v184;
        v705 = v184;
        v702 = v184;
        v703 = v184;
        v700 = v184;
        v701 = v184;
        v698 = v184;
        v699 = v184;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v185 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v185);
        dprintf(dword_100010220, "%s ", &v698);
        v123 = cf;
        dprintf(dword_100010220, "%s isFdrCal %d\n", "writePlatformConfig", v150);
      }

      IORegistryEntrySetCFProperty(entry, @"PlatformConfig", v123);
      v91 = v676;
    }

    else
    {
      sub_100007804(v183, "Propery list is not CFDictionary!\n", v176, v177, v178, v179, v180, v181, outputStructc);
      v41 = v677;
      v37 = v680;
      v91 = v676;
      if (dword_100010220)
      {
        *&v213 = 0xAAAAAAAAAAAAAAAALL;
        *(&v213 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v213;
        v705 = v213;
        v702 = v213;
        v703 = v213;
        v700 = v213;
        v701 = v213;
        v698 = v213;
        v699 = v213;
        v689 = 0xAAAAAAAAAAAAAAAALL;
        time(&v689);
        v214 = localtime(&v689);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v214);
        dprintf(dword_100010220, "%s ", &v698);
        dprintf(dword_100010220, "Propery list is not CFDictionary!\n");
      }

      v123 = cf;
    }
  }

  else
  {
    if (qword_100010218)
    {
      v210 = qword_100010218;
    }

    else
    {
      v210 = &_os_log_default;
    }

    sub_100007804(v210, "fail to allocate memory for keys\n", v143, v144, v145, v146, v147, v148, outputStructc);
    if (dword_100010220)
    {
      *&v211 = 0xAAAAAAAAAAAAAAAALL;
      *(&v211 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v211;
      v705 = v211;
      v702 = v211;
      v703 = v211;
      v700 = v211;
      v701 = v211;
      v698 = v211;
      v699 = v211;
      v689 = 0xAAAAAAAAAAAAAAAALL;
      time(&v689);
      v212 = localtime(&v689);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v212);
      dprintf(dword_100010220, "%s ", &v698);
      dprintf(dword_100010220, "fail to allocate memory for keys\n");
    }

    v150 = 0;
    v685 = 0;
  }

LABEL_90:
  CFReadStreamClose(v107);
  v186 = 1;
  if (v41)
  {
LABEL_178:
    CFRelease(v41);
  }

LABEL_179:
  if (v91)
  {
    CFRelease(v91);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v186)
  {
    CFRelease(v107);
  }

  if (size[0])
  {
    CFRelease(size[0]);
  }

  size[0] = 0;
  if (v123)
  {
    CFRelease(v123);
  }

  if (v685)
  {
    free(v685);
  }

  v233 = *(v1 + 8);
  if (!qword_100010210)
  {
    pthread_once(&stru_100010000, sub_100007164);
  }

  Instance = _CFRuntimeCreateInstance();
  v241 = &stru_100010000;
  if (!Instance)
  {
    goto LABEL_584;
  }

  v242 = Instance;
  *(Instance + 20) = 0;
  v243 = (Instance + 20);
  *(Instance + 16) = v233;
  if (IOServiceOpen(v233, mach_task_self_, 0x57694669u, (Instance + 20)) || IOConnectCallScalarMethod(*v243, 0, 0, 0, 0, 0))
  {
    CFRelease(v242);
LABEL_584:
    *(v1 + 24) = 0;
    goto LABEL_475;
  }

  *(v242 + 24) = 1;
  *(v1 + 24) = v242;
  v244 = IORegistryEntryCreateCFProperty(*(v242 + 16), @"RequestedFiles", v3, 0);
  *(v1 + 32) = v244;
  if (!v244)
  {
    goto LABEL_475;
  }

  *(v1 + 40) = IORegistryEntryCreateCFProperty(*(*(v1 + 24) + 16), @"FileExtensions", v3, 0);
  v245 = IORegistryEntryCreateCFProperty(*(*(v1 + 24) + 16), @"RequestedFilesOverride", v3, 0);
  *(v1 + 48) = v245;
  v246 = *(v1 + 32);
  if (v245)
  {
    Value = CFDictionaryGetValue(v245, @"wifi-fw-path");
    v248 = *(&xmmword_100010070 + 1);
    if (!*(&xmmword_100010070 + 1))
    {
      v249 = Value;
      if (Value)
      {
        v250 = CFGetTypeID(Value);
        if (v250 == CFDataGetTypeID())
        {
          v251 = CFStringCreateFromExternalRepresentation(v3, v249, 0);
          goto LABEL_205;
        }
      }

      goto LABEL_204;
    }

LABEL_203:
    v251 = CFStringCreateMutableCopy(v3, 255, v248);
    goto LABEL_205;
  }

  v248 = *(&xmmword_100010070 + 1);
  if (*(&xmmword_100010070 + 1))
  {
    goto LABEL_203;
  }

LABEL_204:
  v251 = sub_1000082E0(v246, @"Firmware", dword_1000100E8, v681);
LABEL_205:
  v258 = v251;
  v259 = &stru_100010000;
  if (BYTE1(dword_1000100B0) == 1)
  {
    v260 = CFStringGetCStringPtr(v251, 0);
    v261 = &unk_10000A556;
    if (v260)
    {
      v261 = v260;
    }

    fprintf(__stdoutp, "Resolved to Firmware file path: %s\n", v261);
  }

  *(v1 + 64) = v258;
  if (!v258)
  {
    goto LABEL_383;
  }

  if (qword_100010218)
  {
    v262 = qword_100010218;
  }

  else
  {
    v262 = &_os_log_default;
  }

  sub_100007804(v262, "%s: enter\n", v252, v253, v254, v255, v256, v257, "handleFdr");
  v269 = &stru_100010000;
  if (dword_100010220)
  {
    *&v270 = 0xAAAAAAAAAAAAAAAALL;
    *(&v270 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v270;
    v720 = v270;
    v717 = v270;
    v718 = v270;
    v715 = v270;
    v716 = v270;
    *cStr = v270;
    *&cStr[16] = v270;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v271 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v271);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "%s: enter\n", "handleFdr");
  }

  if (v150)
  {
    if (qword_100010218)
    {
      v272 = qword_100010218;
    }

    else
    {
      v272 = &_os_log_default;
    }

    if (BYTE1(dword_1000100B0) == 1)
    {
      sub_100007804(v272, "%s: showFilesOnly mode does not need FDR.\n", v263, v264, v265, v266, v267, v268, "handleFdr");
      if (dword_100010220)
      {
        *&v279 = 0xAAAAAAAAAAAAAAAALL;
        *(&v279 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v279;
        v720 = v279;
        v717 = v279;
        v718 = v279;
        v715 = v279;
        v716 = v279;
        *cStr = v279;
        *&cStr[16] = v279;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v280 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v280);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s: showFilesOnly mode does not need FDR.\n");
      }

      goto LABEL_295;
    }

    sub_100007804(v272, "%s enter\n", v263, v264, v265, v266, v267, v268, "getFDRCal");
    if (dword_100010220)
    {
      *&v290 = 0xAAAAAAAAAAAAAAAALL;
      *(&v290 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v290;
      v720 = v290;
      v717 = v290;
      v718 = v290;
      v715 = v290;
      v716 = v290;
      *cStr = v290;
      *&cStr[16] = v290;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v291 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v291);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "%s enter\n", "getFDRCal");
    }

    LODWORD(v689) = 0;
    if (qword_100010218)
    {
      v292 = qword_100010218;
    }

    else
    {
      v292 = &_os_log_default;
    }

    sub_100007804(v292, "%s enter\n", v284, v285, v286, v287, v288, v289, "findHwIdentifiersPolling");
    *&v293 = 0xAAAAAAAAAAAAAAAALL;
    *(&v293 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v293;
    v720 = v293;
    v717 = v293;
    v718 = v293;
    v715 = v293;
    v716 = v293;
    *cStr = v293;
    *&cStr[16] = v293;
    if (dword_100010220)
    {
      v704 = v293;
      v705 = v293;
      v702 = v293;
      v703 = v293;
      v700 = v293;
      v701 = v293;
      v698 = v293;
      v699 = v293;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v294 = localtime(size);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v294);
      dprintf(dword_100010220, "%s ", &v698);
      dprintf(dword_100010220, "%s enter\n", "findHwIdentifiersPolling");
    }

    cfa = IORegistryGetRootEntry(kIOMainPortDefault);
    if (!cfa || IORegistryCreateIterator(kIOMainPortDefault, "IOService", 0, &v689))
    {
      v332 = 1;
    }

    else
    {
      v301 = v3;
      v302 = 1;
      v686 = 1;
      while (1)
      {
        v303 = IOIteratorNext(v689);
        if (!v303)
        {
          break;
        }

        v304 = v303;
        strcpy(cStr, "IOPlatformExpertDevice");
        if (IOObjectConformsTo(v303, cStr))
        {
          v679 = v1;
          do
          {
            if (qword_100010218)
            {
              v311 = qword_100010218;
            }

            else
            {
              v311 = &_os_log_default;
            }

            sub_100007804(v311, "%s Find HWIdentifiers...%d\n", v305, v306, v307, v308, v309, v310, "findHwIdentifiersPolling");
            if (dword_100010220)
            {
              *&v312 = 0xAAAAAAAAAAAAAAAALL;
              *(&v312 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v704 = v312;
              v705 = v312;
              v702 = v312;
              v703 = v312;
              v700 = v312;
              v701 = v312;
              v698 = v312;
              v699 = v312;
              size[0] = 0xAAAAAAAAAAAAAAAALL;
              time(size);
              v313 = localtime(size);
              strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v313);
              dprintf(dword_100010220, "%s ", &v698);
              dprintf(dword_100010220, "%s Find HWIdentifiers...%d\n", "findHwIdentifiersPolling", v302);
            }

            v314 = IORegistryEntrySearchCFProperty(v304, "IOService", @"HWIdentifiers", v301, 1u);
            v315 = v314;
            if (v302 <= 2 && !v314)
            {
              usleep(0x222E0u);
            }

            v316 = v302 + 1;
            if (__OFADD__(v302, 1))
            {
              goto LABEL_620;
            }

            if (v316 > 3)
            {
              break;
            }

            ++v302;
          }

          while (!v315);
          if (v315)
          {
            v317 = CFDictionaryGetValue(v315, @"P");
            *&v318 = 0xAAAAAAAAAAAAAAAALL;
            *(&v318 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v693[12] = v318;
            v692 = v318;
            *v693 = v318;
            *size = v318;
            CFStringGetCString(v317, size, 60, 0x8000100u);
            v319 = CFDictionaryGetValue(v315, @"C");
            LODWORD(valuePtr) = -1431655766;
            CFNumberGetValue(v319, kCFNumberIntType, &valuePtr);
            if (qword_100010218)
            {
              v326 = qword_100010218;
            }

            else
            {
              v326 = &_os_log_default;
            }

            sub_100007804(v326, "%s HWIdentifiers: chipNumber %d platformName %s\n", v320, v321, v322, v323, v324, v325, "findHwIdentifiersPolling");
            if (dword_100010220)
            {
              *&v327 = 0xAAAAAAAAAAAAAAAALL;
              *(&v327 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v704 = v327;
              v705 = v327;
              v702 = v327;
              v703 = v327;
              v700 = v327;
              v701 = v327;
              v698 = v327;
              v699 = v327;
              length = 0xAAAAAAAAAAAAAAAALL;
              time(&length);
              v328 = localtime(&length);
              strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v328);
              dprintf(dword_100010220, "%s ", &v698);
              dprintf(dword_100010220, "%s HWIdentifiers: chipNumber %d platformName %s\n", "findHwIdentifiersPolling", valuePtr, size);
            }

            v686 = 0;
          }

          else
          {
            if (qword_100010218)
            {
              v329 = qword_100010218;
            }

            else
            {
              v329 = &_os_log_default;
            }

            sub_100007804(v329, "%s No %s in ioreg\n", v305, v306, v307, v308, v309, v310, "findHwIdentifiersPolling");
            if (dword_100010220)
            {
              *&v330 = 0xAAAAAAAAAAAAAAAALL;
              *(&v330 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v704 = v330;
              v705 = v330;
              v702 = v330;
              v703 = v330;
              v700 = v330;
              v701 = v330;
              v698 = v330;
              v699 = v330;
              size[0] = 0xAAAAAAAAAAAAAAAALL;
              time(size);
              v331 = localtime(size);
              strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v331);
              dprintf(dword_100010220, "%s ", &v698);
              dprintf(dword_100010220, "%s No %s in ioreg\n", "findHwIdentifiersPolling", "HWIdentifiers");
            }
          }

          IOObjectRelease(v304);
          v302 = v316;
          v1 = v679;
        }
      }

      if (v302 >= 3)
      {
        IORegistryEntrySetCFProperty(*(v1 + 8), @"HWIdentifiersLate", kCFBooleanTrue);
      }

      v3 = v301;
      v269 = &stru_100010000;
      v259 = &stru_100010000;
      v332 = v686;
    }

    if (v689)
    {
      IOObjectRelease(v689);
    }

    v241 = &stru_100010000;
    if (cfa)
    {
      IOObjectRelease(cfa);
    }

    if (!v332)
    {
      if (qword_100010218)
      {
        v421 = qword_100010218;
      }

      else
      {
        v421 = &_os_log_default;
      }

      sub_100007804(v421, "%s dataClass %s\n", v295, v296, v297, v298, v299, v300, "getFDRCal");
      if (dword_100010220)
      {
        *&v422 = 0xAAAAAAAAAAAAAAAALL;
        *(&v422 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v422;
        v720 = v422;
        v717 = v422;
        v718 = v422;
        v715 = v422;
        v716 = v422;
        *cStr = v422;
        *&cStr[16] = v422;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v423 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v423);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s dataClass %s\n", "getFDRCal", "BWCl");
      }

      v424 = CFStringCreateWithCString(0, "BWCl", 0);
      *&v698 = 0;
      v431 = AMFDRSealingMapCopyLocalDictForClass();
      v432 = v698;
      v433 = 1;
      if (v431 && !v698)
      {
        if (qword_100010218)
        {
          v434 = qword_100010218;
        }

        else
        {
          v434 = &_os_log_default;
        }

        sub_100007804(v434, "%s successful fdr\n", v425, v426, v427, v428, v429, v430, "getFDRCal");
        if (dword_100010220)
        {
          *&v435 = 0xAAAAAAAAAAAAAAAALL;
          *(&v435 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v719 = v435;
          v720 = v435;
          v717 = v435;
          v718 = v435;
          v715 = v435;
          v716 = v435;
          *cStr = v435;
          *&cStr[16] = v435;
          size[0] = 0xAAAAAAAAAAAAAAAALL;
          time(size);
          v436 = localtime(size);
          strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v436);
          dprintf(dword_100010220, "%s ", cStr);
          dprintf(dword_100010220, "%s successful fdr\n", "getFDRCal");
        }

        v443 = CFDictionaryGetValue(v431, @"WCAL");
        v433 = v443 == 0;
        if (qword_100010218)
        {
          v444 = qword_100010218;
        }

        else
        {
          v444 = &_os_log_default;
        }

        if (v443)
        {
          sub_100007804(v444, "%s add fdr cal\n", v437, v438, v439, v440, v441, v442, "getFDRCal");
          if (dword_100010220)
          {
            *&v445 = 0xAAAAAAAAAAAAAAAALL;
            *(&v445 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v719 = v445;
            v720 = v445;
            v717 = v445;
            v718 = v445;
            v715 = v445;
            v716 = v445;
            *cStr = v445;
            *&cStr[16] = v445;
            size[0] = 0xAAAAAAAAAAAAAAAALL;
            time(size);
            v446 = localtime(size);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v446);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s add fdr cal\n", "getFDRCal");
          }

          IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiFdrCal", v443);
          v269 = &stru_100010000;
          v241 = &stru_100010000;
        }

        else
        {
          sub_100007804(v444, "%s failed dict get value\n", v437, v438, v439, v440, v441, v442, "getFDRCal");
          v269 = &stru_100010000;
          if (dword_100010220)
          {
            *&v637 = 0xAAAAAAAAAAAAAAAALL;
            *(&v637 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v719 = v637;
            v720 = v637;
            v717 = v637;
            v718 = v637;
            v715 = v637;
            v716 = v637;
            *cStr = v637;
            *&cStr[16] = v637;
            size[0] = 0xAAAAAAAAAAAAAAAALL;
            time(size);
            v638 = localtime(size);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v638);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s failed dict get value\n", "getFDRCal");
          }
        }

        v432 = v698;
      }

      if (v432)
      {
        CFRelease(v432);
      }

      *&v698 = 0;
      if (v424)
      {
        CFRelease(v424);
      }

      if (v431)
      {
        CFRelease(v431);
      }

      CFRelease(@"WCAL");
      if (!v433)
      {
        v346 = "fdr";
LABEL_288:
        v347 = strlen(v346);
        v354 = CFStringCreateWithBytes(v3, v346, v347, 0x8000100u, 0);
        if (qword_100010218)
        {
          v355 = qword_100010218;
        }

        else
        {
          v355 = &_os_log_default;
        }

        if (v354)
        {
          sub_100007804(v355, "%s add msfSource %s\n", v348, v349, v350, v351, v352, v353, "handleFdr");
          if (dword_100010220)
          {
            *&v356 = 0xAAAAAAAAAAAAAAAALL;
            *(&v356 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v719 = v356;
            v720 = v356;
            v717 = v356;
            v718 = v356;
            v715 = v356;
            v716 = v356;
            *cStr = v356;
            *&cStr[16] = v356;
            *&v698 = 0xAAAAAAAAAAAAAAAALL;
            time(&v698);
            v357 = localtime(&v698);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v357);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s add msfSource %s\n", "handleFdr", v346);
          }

          IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiMSFSource", v354);
        }

        else
        {
          sub_100007804(v355, "%s failed to create msfSourceRef\n", v348, v349, v350, v351, v352, v353, "handleFdr");
          if (dword_100010220)
          {
            *&v447 = 0xAAAAAAAAAAAAAAAALL;
            *(&v447 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v719 = v447;
            v720 = v447;
            v717 = v447;
            v718 = v447;
            v715 = v447;
            v716 = v447;
            *cStr = v447;
            *&cStr[16] = v447;
            *&v698 = 0xAAAAAAAAAAAAAAAALL;
            time(&v698);
            v448 = localtime(&v698);
            strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v448);
            dprintf(dword_100010220, "%s ", cStr);
            dprintf(dword_100010220, "%s failed to create msfSourceRef\n");
          }
        }

        goto LABEL_295;
      }

      if (qword_100010218)
      {
        v645 = qword_100010218;
      }

      else
      {
        v645 = &_os_log_default;
      }

      sub_100007804(v645, "%s failed\n", v639, v640, v641, v642, v643, v644, "getFDRCal");
      if (dword_100010220)
      {
        *&v646 = 0xAAAAAAAAAAAAAAAALL;
        *(&v646 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v646;
        v720 = v646;
        v717 = v646;
        v718 = v646;
        v715 = v646;
        v716 = v646;
        *cStr = v646;
        *&cStr[16] = v646;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v647 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v647);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "%s failed\n", "getFDRCal");
      }
    }

    v727 = 0u;
    v728 = 0u;
    v725 = 0u;
    v726 = 0u;
    v723 = 0u;
    v724 = 0u;
    v721 = 0u;
    v722 = 0u;
    v719 = 0u;
    v720 = 0u;
    v717 = 0u;
    v718 = 0u;
    v715 = 0u;
    v716 = 0u;
    memset(cStr, 0, sizeof(cStr));
    length = 0;
    v712 = 0u;
    v713 = 0u;
    v710 = 0u;
    v711 = 0u;
    v708 = 0u;
    v709 = 0u;
    v706 = 0u;
    v707 = 0u;
    v704 = 0u;
    v705 = 0u;
    v702 = 0u;
    v703 = 0u;
    v700 = 0u;
    v701 = 0u;
    v698 = 0u;
    v699 = 0u;
    if (byte_100010010 == 1)
    {
      goto LABEL_286;
    }

    if (!sub_100005784(v1, cStr, "cal"))
    {
      if (sub_1000073A0(cStr, &length))
      {
        if ((length - 0x2000) >= 0xFFFFFFFFFFFFE081)
        {
          v333 = malloc_type_malloc(length, 0x100004077774924uLL);
          if (v333)
          {
            v334 = v333;
            v689 = length;
            if (sub_100007AC8(cStr, v333, &v689))
            {
              v335 = CFDataCreateWithBytesNoCopy(v3, v334, v689, kCFAllocatorNull);
              if (v335)
              {
                v342 = v335;
                if (qword_100010218)
                {
                  v343 = qword_100010218;
                }

                else
                {
                  v343 = &_os_log_default;
                }

                sub_100007804(v343, "%s writes %s size %zu to %s\n", v336, v337, v338, v339, v340, v341, "getGenericCalibrationData");
                if (dword_100010220)
                {
                  *&v344 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v344 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v697 = v344;
                  v695 = v344;
                  v696 = v344;
                  *&v693[16] = v344;
                  v694 = v344;
                  v692 = v344;
                  *v693 = v344;
                  *size = v344;
                  valuePtr = 0xAAAAAAAAAAAAAAAALL;
                  time(&valuePtr);
                  v345 = localtime(&valuePtr);
                  strftime(size, 0x80uLL, "%b %d %H:%M:%S", v345);
                  dprintf(dword_100010220, "%s ", size);
                  dprintf(dword_100010220, "%s writes %s size %zu to %s\n", "getGenericCalibrationData", cStr, length, "wifi-calibration-gen");
                }

                IORegistryEntrySetCFProperty(*(v1 + 8), @"WiFiGenericCal", v342);
                v269 = &stru_100010000;
                v241 = &stru_100010000;
                if (!sub_100005784(v1, &v698, "clmb"))
                {
                  HIBYTE(dword_1000100B0) = 1;
                  qword_100010088 = CFStringCreateWithCString(0, &v698, 0);
                  free(v334);
LABEL_286:
                  v346 = "genCal";
LABEL_287:
                  v259 = &stru_100010000;
                  goto LABEL_288;
                }
              }
            }

            free(v334);
          }
        }
      }
    }

    v346 = "unavailable";
    goto LABEL_287;
  }

  if (qword_100010218)
  {
    v281 = qword_100010218;
  }

  else
  {
    v281 = &_os_log_default;
  }

  sub_100007804(v281, "%s: platform does not need FDR.\n", v263, v264, v265, v266, v267, v268, "handleFdr");
  if (dword_100010220)
  {
    *&v282 = 0xAAAAAAAAAAAAAAAALL;
    *(&v282 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v282;
    v720 = v282;
    v717 = v282;
    v718 = v282;
    v715 = v282;
    v716 = v282;
    *cStr = v282;
    *&cStr[16] = v282;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v283 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v283);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "%s: platform does not need FDR.\n");
  }

LABEL_295:
  if (BYTE2(dword_1000100B0))
  {
    v358 = 0;
  }

  else
  {
    v358 = v37;
  }

  if (v358 && !BYTE1(dword_1000100B0))
  {
    if (qword_100010218)
    {
      v359 = qword_100010218;
    }

    else
    {
      v359 = &_os_log_default;
    }

    sub_100007804(v359, "Already loaded, bailing use '-r' to force load\n", v273, v274, v275, v276, v277, v278, outputStructd);
    if (dword_100010220)
    {
      *&v360 = 0xAAAAAAAAAAAAAAAALL;
      *(&v360 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v360;
      v720 = v360;
      v717 = v360;
      v718 = v360;
      v715 = v360;
      v716 = v360;
      *cStr = v360;
      *&cStr[16] = v360;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v361 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v361);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "Already loaded, bailing use '-r' to force load\n");
    }

    fwrite("Already loaded, bailing, use '-r' to force load\n", 0x30uLL, 1uLL, __stderrp);
    goto LABEL_474;
  }

  if (byte_1000101F8 == 1)
  {
    v362 = v3;
    v363 = v259;
    if ((qword_1000101FC - 1) > 3)
    {
      v364 = @"PreventUserIdleSystemSleep";
    }

    else
    {
      v364 = off_10000C600[(qword_1000101FC - 1)];
    }

    v365 = HIDWORD(qword_1000101FC);
    v366 = SHIDWORD(qword_1000101FC);
    v367 = qword_100010218;
    v368 = CFStringGetCStringPtr(v364, 0);
    CFStringGetCStringPtr(@"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", 0);
    CFStringGetCStringPtr(@"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0);
    CFStringGetCStringPtr(@"TimeoutActionTurnOff", 0);
    v375 = &_os_log_default;
    if (v367)
    {
      v375 = v367;
    }

    sub_100007804(v375, "_createIOPMHelperCreateAssertion assertionType[%s] assertionName[%s] details[%s] reason[%s] bundle[%s] timeout[%f sec] assertionID[%p] assertionLevel[0x%08x]\n", v369, v370, v371, v372, v373, v374, v368);
    v269 = &stru_100010000;
    if (dword_100010220)
    {
      *&v382 = 0xAAAAAAAAAAAAAAAALL;
      *(&v382 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v382;
      v720 = v382;
      v717 = v382;
      v718 = v382;
      v715 = v382;
      v716 = v382;
      *cStr = v382;
      *&cStr[16] = v382;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v383 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v383);
      dprintf(dword_100010220, "%s ", cStr);
      v384 = dword_100010220;
      v385 = CFStringGetCStringPtr(v364, 0);
      v386 = CFStringGetCStringPtr(@"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", 0);
      v387 = CFStringGetCStringPtr(@"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0);
      v388 = CFStringGetCStringPtr(@"TimeoutActionTurnOff", 0);
      outputStructCnt = v386;
      v269 = &stru_100010000;
      dprintf(v384, "_createIOPMHelperCreateAssertion assertionType[%s] assertionName[%s] details[%s] reason[%s] bundle[%s] timeout[%f sec] assertionID[%p] assertionLevel[0x%08x]\n", v385, outputStructCnt, v387, &unk_10000A556, &unk_10000A556, v366, v388, 0);
    }

    v259 = v363;
    if (v365 <= 0)
    {
      v395 = -536870911;
      v3 = v362;
      v241 = &stru_100010000;
    }

    else
    {
      LODWORD(size[0]) = 0;
      v395 = IOPMAssertionCreateWithDescription(v364, @"com.apple.wifiFirmwareLoader.IOPMAssertion.loading-firmware", @"wifiFirmwareLoader: IOPMAssertion: Loading firmware", 0, 0, v366, @"TimeoutActionTurnOff", size);
      if (qword_100010218)
      {
        v396 = qword_100010218;
      }

      else
      {
        v396 = &_os_log_default;
      }

      sub_100007804(v396, "_createIOPMHelperCreateAssertion 'IOPMAssertionCreateWithDescription': return [0x%08x], id[0x%08x]\n", v389, v390, v391, v392, v393, v394, v395);
      v3 = v362;
      if (dword_100010220)
      {
        *&v397 = 0xAAAAAAAAAAAAAAAALL;
        *(&v397 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v397;
        v720 = v397;
        v717 = v397;
        v718 = v397;
        v715 = v397;
        v716 = v397;
        *cStr = v397;
        *&cStr[16] = v397;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v398 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v398);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "_createIOPMHelperCreateAssertion 'IOPMAssertionCreateWithDescription': return [0x%08x], id[0x%08x]\n", v395, LODWORD(size[0]));
      }

      v241 = &stru_100010000;
      dword_100010208 = size[0];
    }

    if (qword_100010218)
    {
      v399 = qword_100010218;
    }

    else
    {
      v399 = &_os_log_default;
    }

    sub_100007804(v399, "wifiFirmwareLoaderServiceThread: _createIOPMHelperCreateAssertion return[0x%08x], id[0x%08x]\n", v376, v377, v378, v379, v380, v381, v395);
    if (dword_100010220)
    {
      *&v400 = 0xAAAAAAAAAAAAAAAALL;
      *(&v400 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v400;
      v720 = v400;
      v717 = v400;
      v718 = v400;
      v715 = v400;
      v716 = v400;
      *cStr = v400;
      *&cStr[16] = v400;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v401 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v401);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: _createIOPMHelperCreateAssertion return[0x%08x], id[0x%08x]\n", v395, dword_100010208);
    }
  }

  v408 = CFStringGetCStringPtr(*(v1 + 64), 0);
  if (qword_100010218)
  {
    v409 = qword_100010218;
  }

  else
  {
    v409 = &_os_log_default;
  }

  sub_100007804(v409, "full path firmwareName is %s\n", v402, v403, v404, v405, v406, v407, v408);
  if (dword_100010220)
  {
    *&v410 = 0xAAAAAAAAAAAAAAAALL;
    *(&v410 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v410;
    v720 = v410;
    v717 = v410;
    v718 = v410;
    v715 = v410;
    v716 = v410;
    *cStr = v410;
    *&cStr[16] = v410;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v411 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v411);
    dprintf(dword_100010220, "%s ", cStr);
    dprintf(dword_100010220, "full path firmwareName is %s\n", v408);
  }

  if ((sub_1000073A0(v408, &qword_1000100B8) & 1) == 0)
  {
    goto LABEL_383;
  }

  if (!sub_100008458(*(v1 + 32), @"Signature"))
  {
    v420 = 0;
    goto LABEL_374;
  }

  v412 = *(v1 + 32);
  v413 = *(v1 + 48);
  if (!v413)
  {
    v415 = qword_100010080;
    if (!qword_100010080)
    {
LABEL_364:
      v419 = sub_1000082E0(v412, @"Signature", &qword_1000100C0, v681);
      goto LABEL_365;
    }

    goto LABEL_363;
  }

  v414 = CFDictionaryGetValue(v413, @"wifi-signature-path");
  v415 = qword_100010080;
  if (qword_100010080)
  {
LABEL_363:
    v419 = CFStringCreateMutableCopy(v3, 255, v415);
    goto LABEL_365;
  }

  v416 = v414;
  if (!v414)
  {
    goto LABEL_364;
  }

  v417 = CFGetTypeID(v414);
  v418 = v417 == CFDataGetTypeID();
  v269 = &stru_100010000;
  if (!v418)
  {
    goto LABEL_364;
  }

  v419 = CFStringCreateFromExternalRepresentation(v3, v416, 0);
LABEL_365:
  v449 = v419;
  if (!v419)
  {
    *(v1 + 72) = 0;
    goto LABEL_383;
  }

  v450 = CFStringGetCStringPtr(v419, 0);
  v451 = &unk_10000A556;
  if (v450)
  {
    v451 = v450;
  }

  fprintf(__stdoutp, "Resolved to signature file path: %s\n", v451);
  *(v1 + 72) = v449;
  v420 = CFStringGetCStringPtr(v449, 0);
  v458 = sub_1000073A0(v420, &qword_1000100C0);
  if (qword_100010218)
  {
    v459 = qword_100010218;
  }

  else
  {
    v459 = &_os_log_default;
  }

  sub_100007804(v459, "full path signatureName is %s (%zu bytes)\n", v452, v453, v454, v455, v456, v457, v420);
  if (LODWORD(v269[34].__sig))
  {
    *&v460 = 0xAAAAAAAAAAAAAAAALL;
    *(&v460 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v460;
    v720 = v460;
    v717 = v460;
    v718 = v460;
    v715 = v460;
    v716 = v460;
    *cStr = v460;
    *&cStr[16] = v460;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v461 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v461);
    dprintf(v269[34].__sig, "%s ", cStr);
    dprintf(v269[34].__sig, "full path signatureName is %s (%zu bytes)\n", v420, qword_1000100C0);
  }

  if ((v458 & 1) == 0)
  {
    goto LABEL_383;
  }

LABEL_374:
  if (!sub_100008458(*(v1 + 32), @"Platcfg"))
  {
    v476 = 0;
    goto LABEL_400;
  }

  v462 = *(v1 + 32);
  v463 = *(v1 + 48);
  if (v463)
  {
    v464 = CFDictionaryGetValue(v463, @"wifi-platcfg-path");
    v465 = *(&xmmword_100010090 + 1);
    if (!*(&xmmword_100010090 + 1))
    {
      v466 = v464;
      if (v464)
      {
        v467 = v259;
        v468 = CFGetTypeID(v464);
        v418 = v468 == CFDataGetTypeID();
        v259 = v467;
        if (v418)
        {
          v469 = CFStringCreateFromExternalRepresentation(v3, v466, 0);
          goto LABEL_387;
        }
      }

      goto LABEL_386;
    }

LABEL_385:
    v469 = CFStringCreateMutableCopy(v3, 255, v465);
    goto LABEL_387;
  }

  v465 = *(&xmmword_100010090 + 1);
  if (*(&xmmword_100010090 + 1))
  {
    goto LABEL_385;
  }

LABEL_386:
  v469 = sub_1000082E0(v462, @"Platcfg", &qword_1000100E0, v681);
LABEL_387:
  v477 = v469;
  if (v469)
  {
    v478 = CFStringGetCStringPtr(v469, 0);
    v479 = &unk_10000A556;
    if (v478)
    {
      v479 = v478;
    }

    fprintf(__stdoutp, "Resolved to platcfg file path: %s\n", v479);
    *(v1 + 96) = v477;
    v476 = CFStringGetCStringPtr(v477, 0);
    v480 = sub_1000073A0(v476, &qword_1000100E0);
    if (*(v1 + 96) && v480)
    {
      goto LABEL_395;
    }
  }

  else
  {
    v476 = 0;
    *(v1 + 96) = 0;
  }

  qword_1000100E0 = 0;
LABEL_395:
  if (qword_100010218)
  {
    v481 = qword_100010218;
  }

  else
  {
    v481 = &_os_log_default;
  }

  sub_100007804(v481, "full path platcfgName is %s (%zu bytes)\n", v470, v471, v472, v473, v474, v475, v476);
  if (LODWORD(v269[34].__sig))
  {
    *&v482 = 0xAAAAAAAAAAAAAAAALL;
    *(&v482 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v482;
    v720 = v482;
    v717 = v482;
    v718 = v482;
    v715 = v482;
    v716 = v482;
    *cStr = v482;
    *&cStr[16] = v482;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v483 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v483);
    dprintf(v269[34].__sig, "%s ", cStr);
    dprintf(v269[34].__sig, "full path platcfgName is %s (%zu bytes)\n", v476, qword_1000100E0);
  }

LABEL_400:
  v687 = v476;
  v484 = *(v1 + 32);
  v485 = *(v1 + 48);
  if (v485)
  {
    v486 = CFDictionaryGetValue(v485, @"wifi-nvram-path");
    v487 = xmmword_100010070;
    if (!xmmword_100010070)
    {
      v488 = v486;
      if (v486)
      {
        v489 = v420;
        v490 = CFGetTypeID(v486);
        v418 = v490 == CFDataGetTypeID();
        v420 = v489;
        if (v418)
        {
          v491 = CFStringCreateFromExternalRepresentation(v3, v488, 0);
          goto LABEL_409;
        }
      }

      goto LABEL_408;
    }

LABEL_407:
    v491 = CFStringCreateMutableCopy(v3, 255, v487);
    goto LABEL_409;
  }

  v487 = xmmword_100010070;
  if (xmmword_100010070)
  {
    goto LABEL_407;
  }

LABEL_408:
  v491 = sub_1000082E0(v484, @"NVRAM", dword_1000100F0, v681);
LABEL_409:
  v492 = v491;
  if (BYTE1(v259[11].__sig) == 1)
  {
    v493 = CFStringGetCStringPtr(v491, 0);
    v494 = &unk_10000A556;
    if (v493)
    {
      v494 = v493;
    }

    fprintf(__stdoutp, "Resolved to NVRAM file path: %s\n", v494);
  }

  *(v1 + 56) = v492;
  if (!v492)
  {
    goto LABEL_383;
  }

  cfb = v420;
  v501 = CFStringGetCStringPtr(v492, 0);
  if (qword_100010218)
  {
    v502 = qword_100010218;
  }

  else
  {
    v502 = &_os_log_default;
  }

  sub_100007804(v502, "full path NVRAM is %s\n", v495, v496, v497, v498, v499, v500, v501);
  if (LODWORD(v269[34].__sig))
  {
    *&v503 = 0xAAAAAAAAAAAAAAAALL;
    *(&v503 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v503;
    v720 = v503;
    v717 = v503;
    v718 = v503;
    v715 = v503;
    v716 = v503;
    *cStr = v503;
    *&cStr[16] = v503;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v504 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v504);
    dprintf(v269[34].__sig, "%s ", cStr);
    dprintf(v269[34].__sig, "full path NVRAM is %s\n", v501);
  }

  if ((sub_1000073A0(v501, &qword_1000100C8) & 1) == 0)
  {
    goto LABEL_383;
  }

  if (dword_1000100B0 == 1 && HIBYTE(dword_1000100B0) != 1)
  {
    v511 = v3;
    v512 = 0;
    goto LABEL_451;
  }

  if (qword_100010088)
  {
    v505 = CFStringCreateMutableCopy(v3, 255, qword_100010088);
LABEL_424:
    v506 = v505;
    goto LABEL_432;
  }

  if (!*(v1 + 40))
  {
    v505 = sub_1000082E0(*(v1 + 32), @"Regulatory", &qword_1000100F8, v681);
    goto LABEL_424;
  }

  if (qword_100010218)
  {
    v507 = qword_100010218;
  }

  else
  {
    v507 = &_os_log_default;
  }

  sub_100007964(v507, "Deprecated feature\n", 0, v236, v237, v238, v239, v240, outputStructe);
  if (LODWORD(v269[34].__sig))
  {
    *&v508 = 0xAAAAAAAAAAAAAAAALL;
    *(&v508 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v719 = v508;
    v720 = v508;
    v717 = v508;
    v718 = v508;
    v715 = v508;
    v716 = v508;
    *cStr = v508;
    *&cStr[16] = v508;
    *&v698 = 0xAAAAAAAAAAAAAAAALL;
    time(&v698);
    v509 = localtime(&v698);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v509);
    dprintf(v269[34].__sig, "%s ", cStr);
    dprintf(v269[34].__sig, "Deprecated feature\n");
  }

  v506 = 0;
LABEL_432:
  if (BYTE1(v259[11].__sig) == 1)
  {
    if (v506)
    {
      v510 = CFStringGetCStringPtr(v506, 0);
    }

    else
    {
      v510 = 0;
    }

    v513 = &unk_10000A556;
    if (v510)
    {
      v513 = v510;
    }

    fprintf(__stdoutp, "Resolved to Regulatory file path: %s\n", v513);
  }

  v511 = v3;
  *(v1 + 80) = v506;
  if (v506)
  {
    v512 = CFStringGetCStringPtr(v506, 0);
    if (qword_100010218)
    {
      v520 = qword_100010218;
    }

    else
    {
      v520 = &_os_log_default;
    }

    sub_100007804(v520, "full path Regulatory is %s\n", v514, v515, v516, v517, v518, v519, v512);
    if (LODWORD(v269[34].__sig))
    {
      *&v521 = 0xAAAAAAAAAAAAAAAALL;
      *(&v521 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v521;
      v720 = v521;
      v717 = v521;
      v718 = v521;
      v715 = v521;
      v716 = v521;
      *cStr = v521;
      *&cStr[16] = v521;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v522 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v522);
      dprintf(v269[34].__sig, "%s ", cStr);
      dprintf(v269[34].__sig, "full path Regulatory is %s\n", v512);
    }

    if ((sub_1000073A0(v512, &qword_1000100D0) & 1) == 0 || qword_1000100D0 >= 0x19000 || qword_1000100D0 <= 0x20)
    {
      goto LABEL_383;
    }
  }

  else
  {
    v512 = 0;
    qword_1000100F8 = -1;
  }

LABEL_451:
  if (dword_1000100B0 == 1 && word_1000100B4 != 1)
  {
    v524 = 0;
    goto LABEL_473;
  }

  if (xmmword_100010090)
  {
    v523 = CFStringCreateMutableCopy(v511, 255, xmmword_100010090);
  }

  else
  {
    v523 = sub_1000082E0(*(v1 + 32), @"TxCap", cStr, v681);
  }

  v524 = v523;
  if (BYTE1(v259[11].__sig) == 1)
  {
    if (v523)
    {
      v525 = CFStringGetCStringPtr(v523, 0);
    }

    else
    {
      v525 = 0;
    }

    v526 = &unk_10000A556;
    if (v525)
    {
      v526 = v525;
    }

    fprintf(__stdoutp, "Resolved to TxCap file path: %s\n", v526);
  }

  *(v1 + 88) = v524;
  if (v524)
  {
    v524 = CFStringGetCStringPtr(v524, 0);
    if (qword_100010218)
    {
      v533 = qword_100010218;
    }

    else
    {
      v533 = &_os_log_default;
    }

    sub_100007804(v533, "full path TxCap is %s\n", v527, v528, v529, v530, v531, v532, v524);
    if (LODWORD(v269[34].__sig))
    {
      *&v534 = 0xAAAAAAAAAAAAAAAALL;
      *(&v534 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v534;
      v720 = v534;
      v717 = v534;
      v718 = v534;
      v715 = v534;
      v716 = v534;
      *cStr = v534;
      *&cStr[16] = v534;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v535 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v535);
      dprintf(v269[34].__sig, "%s ", cStr);
      dprintf(v269[34].__sig, "full path TxCap is %s\n", v524);
    }

    if ((sub_1000073A0(v524, &qword_1000100D8) & 1) == 0 || qword_1000100D8 >= 0x8000 || qword_1000100D8 <= 0x20)
    {
LABEL_383:
      IOConnectCallScalarMethod(*(*(v1 + 24) + 20), 4u, 0, 0, 0, 0);
      goto LABEL_475;
    }
  }

LABEL_473:
  if ((v259[11].__sig & 0x100) != 0)
  {
LABEL_474:
    *(v1 + 12) = 0;
    goto LABEL_475;
  }

  v719 = 0u;
  v720 = 0u;
  v717 = 0u;
  v718 = 0u;
  v715 = 0u;
  v716 = 0u;
  memset(cStr, 0, sizeof(cStr));
  if (byte_100010010 != 1)
  {
    v581 = *(v1 + 24);
    *&v698 = 128;
    v577 = IOConnectCallMethod(*(v581 + 20), 2u, 0, 0, &qword_1000100B8, 0x48uLL, 0, 0, cStr, &v698);
    if (qword_100010218)
    {
      v588 = qword_100010218;
    }

    else
    {
      v588 = &_os_log_default;
    }

    sub_100007804(v588, "WiFiUserClientPrepareMapping return %x firmwarebuffer len %lld nvrambuffer len %lld reg len %lld signatureBuffer len %lld platcfgBuffer len %lld\n", v582, v583, v584, v585, v586, v587, v577);
    if (LODWORD(v269[34].__sig))
    {
      *&v589 = 0xAAAAAAAAAAAAAAAALL;
      *(&v589 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v589;
      v705 = v589;
      v702 = v589;
      v703 = v589;
      v700 = v589;
      v701 = v589;
      v698 = v589;
      v699 = v589;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v590 = localtime(size);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v590);
      dprintf(v269[34].__sig, "%s ", &v698);
      dprintf(v269[34].__sig, "WiFiUserClientPrepareMapping return %x firmwarebuffer len %lld nvrambuffer len %lld reg len %lld signatureBuffer len %lld platcfgBuffer len %lld\n", v577, *&cStr[8], v715, *(&v718 + 1), v716, v717);
    }

    goto LABEL_542;
  }

  *&v569 = 0xAAAAAAAAAAAAAAAALL;
  *(&v569 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v704 = v569;
  v705 = v569;
  v702 = v569;
  v703 = v569;
  v700 = v569;
  v701 = v569;
  v698 = v569;
  v699 = v569;
  v570 = *(v1 + 24);
  size[0] = 128;
  v577 = IOConnectCallMethod(*(v570 + 20), 2u, 0, 0, &qword_1000100B8, 0x48uLL, 0, 0, &v698, size);
  if (qword_100010218)
  {
    v578 = qword_100010218;
  }

  else
  {
    v578 = &_os_log_default;
  }

  sub_100007804(v578, "WiFiUserClientPrepareMappingDK return %x firmware len %lld nvram len %lld reg len %lld txcap len %lld signature len %lld platcfg len %lld\n", v571, v572, v573, v574, v575, v576, v577);
  if (LODWORD(v269[34].__sig))
  {
    *&v579 = 0xAAAAAAAAAAAAAAAALL;
    *(&v579 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v697 = v579;
    v695 = v579;
    v696 = v579;
    *&v693[16] = v579;
    v694 = v579;
    v692 = v579;
    *v693 = v579;
    *size = v579;
    length = 0xAAAAAAAAAAAAAAAALL;
    time(&length);
    v580 = localtime(&length);
    strftime(size, 0x80uLL, "%b %d %H:%M:%S", v580);
    dprintf(v269[34].__sig, "%s ", size);
    dprintf(v269[34].__sig, "WiFiUserClientPrepareMappingDK return %x firmware len %lld nvram len %lld reg len %lld txcap len %lld signature len %lld platcfg len %lld\n", v577, *(&v698 + 1), v700, *(&v703 + 1), v705, v701, v702);
  }

  if (*(&v698 + 1))
  {
    if (DWORD1(v698))
    {
      goto LABEL_621;
    }

    *cStr = sub_100007278(*(*(v1 + 24) + 20), v698, &cStr[8]);
    *&cStr[16] = v699;
  }

  if (v700)
  {
    if (HIDWORD(v699))
    {
      goto LABEL_621;
    }

    *&cStr[24] = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v699), &v715);
  }

  if (*(&v703 + 1))
  {
    if (DWORD1(v703))
    {
      goto LABEL_621;
    }

    *&v718 = sub_100007278(*(*(v1 + 24) + 20), v703, &v718 + 1);
    LOBYTE(v719) = v704;
  }

  if (v705)
  {
    if (HIDWORD(v704))
    {
      goto LABEL_621;
    }

    *(&v719 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v704), &v720);
    BYTE8(v720) = BYTE8(v705);
  }

  if (!v701)
  {
    goto LABEL_534;
  }

  if (HIDWORD(v700))
  {
LABEL_621:
    __break(0x5507u);
    goto LABEL_622;
  }

  *(&v715 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v700), &v716);
LABEL_534:
  if (v702)
  {
    if (!HIDWORD(v701))
    {
      *(&v716 + 1) = sub_100007278(*(*(v1 + 24) + 20), DWORD2(v701), &v717);
      BYTE8(v717) = BYTE8(v702);
      goto LABEL_542;
    }

    goto LABEL_621;
  }

LABEL_542:
  if (!v577)
  {
    if ((sub_100007AC8(v408, *cStr, &cStr[8]) & 1) == 0)
    {
      if (qword_100010218)
      {
        v648 = qword_100010218;
      }

      else
      {
        v648 = &_os_log_default;
      }

      sub_100007804(v648, "copy FW to image map fail\n", v591, v592, v593, v594, v595, v596, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v649 = 0xAAAAAAAAAAAAAAAALL;
        *(&v649 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v649;
        v705 = v649;
        v702 = v649;
        v703 = v649;
        v700 = v649;
        v701 = v649;
        v698 = v649;
        v699 = v649;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v650 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v650);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy FW to image map fail\n");
      }

      goto LABEL_475;
    }

    if (*(&v718 + 1) && v718 && (sub_100007AC8(v512, v718, &v718 + 1) & 1) == 0)
    {
      if (qword_100010218)
      {
        v651 = qword_100010218;
      }

      else
      {
        v651 = &_os_log_default;
      }

      sub_100007804(v651, "copy RegTable to image map fail\n", v597, v598, v599, v600, v601, v602, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v652 = 0xAAAAAAAAAAAAAAAALL;
        *(&v652 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v652;
        v705 = v652;
        v702 = v652;
        v703 = v652;
        v700 = v652;
        v701 = v652;
        v698 = v652;
        v699 = v652;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v653 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v653);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy RegTable to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v720 && *(&v719 + 1) && (sub_100007AC8(v524, *(&v719 + 1), &v720) & 1) == 0)
    {
      if (qword_100010218)
      {
        v654 = qword_100010218;
      }

      else
      {
        v654 = &_os_log_default;
      }

      sub_100007804(v654, "copy txCapTable to image map fail\n", v603, v604, v605, v606, v607, v608, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v655 = 0xAAAAAAAAAAAAAAAALL;
        *(&v655 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v655;
        v705 = v655;
        v702 = v655;
        v703 = v655;
        v700 = v655;
        v701 = v655;
        v698 = v655;
        v699 = v655;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v656 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v656);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy txCapTable to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v715 && *&cStr[24] && (sub_100007AC8(v501, *&cStr[24], &v715) & 1) == 0)
    {
      if (qword_100010218)
      {
        v657 = qword_100010218;
      }

      else
      {
        v657 = &_os_log_default;
      }

      sub_100007804(v657, "copy NVRAM to image map fail\n", v609, v610, v611, v612, v613, v614, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v658 = 0xAAAAAAAAAAAAAAAALL;
        *(&v658 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v658;
        v705 = v658;
        v702 = v658;
        v703 = v658;
        v700 = v658;
        v701 = v658;
        v698 = v658;
        v699 = v658;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v659 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v659);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy NVRAM to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v716 && *(&v715 + 1) && (sub_100007AC8(cfb, *(&v715 + 1), &v716) & 1) == 0)
    {
      if (qword_100010218)
      {
        v660 = qword_100010218;
      }

      else
      {
        v660 = &_os_log_default;
      }

      sub_100007804(v660, "copy Signature to image map fail\n", v615, v616, v617, v618, v619, v620, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v661 = 0xAAAAAAAAAAAAAAAALL;
        *(&v661 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v661;
        v705 = v661;
        v702 = v661;
        v703 = v661;
        v700 = v661;
        v701 = v661;
        v698 = v661;
        v699 = v661;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v662 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v662);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy Signature to image map fail\n");
      }

      goto LABEL_475;
    }

    if (v717 && *(&v716 + 1) && (sub_100007AC8(v687, *(&v716 + 1), &v717) & 1) == 0)
    {
      if (qword_100010218)
      {
        v663 = qword_100010218;
      }

      else
      {
        v663 = &_os_log_default;
      }

      sub_100007804(v663, "copy PLatcfg to image map fail\n", v621, v622, v623, v624, v625, v626, outputStructf);
      if (LODWORD(v269[34].__sig))
      {
        *&v664 = 0xAAAAAAAAAAAAAAAALL;
        *(&v664 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v704 = v664;
        v705 = v664;
        v702 = v664;
        v703 = v664;
        v700 = v664;
        v701 = v664;
        v698 = v664;
        v699 = v664;
        size[0] = 0xAAAAAAAAAAAAAAAALL;
        time(size);
        v665 = localtime(size);
        strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v665);
        dprintf(v269[34].__sig, "%s ", &v698);
        dprintf(v269[34].__sig, "copy PLatcfg to image map fail\n");
      }

      goto LABEL_475;
    }

    *&cStr[16] = dword_1000100B0;
    LOBYTE(v719) = HIBYTE(dword_1000100B0);
    BYTE8(v717) = HIBYTE(word_1000100B4);
    BYTE8(v720) = word_1000100B4;
    v633 = IOConnectCallMethod(*(*(v1 + 24) + 20), 3u, 0, 0, cStr, 0x80uLL, 0, 0, 0, 0);
    if (qword_100010218)
    {
      v634 = qword_100010218;
    }

    else
    {
      v634 = &_os_log_default;
    }

    sub_100007804(v634, "WiFiUserClientCompleteMapping return %x\n", v627, v628, v629, v630, v631, v632, v633);
    if (LODWORD(v269[34].__sig))
    {
      *&v635 = 0xAAAAAAAAAAAAAAAALL;
      *(&v635 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v704 = v635;
      v705 = v635;
      v702 = v635;
      v703 = v635;
      v700 = v635;
      v701 = v635;
      v698 = v635;
      v699 = v635;
      size[0] = 0xAAAAAAAAAAAAAAAALL;
      time(size);
      v636 = localtime(size);
      strftime(&v698, 0x80uLL, "%b %d %H:%M:%S", v636);
      dprintf(v269[34].__sig, "%s ", &v698);
      dprintf(v269[34].__sig, "WiFiUserClientCompleteMapping return %x\n", v633);
    }

    if (!v633)
    {
      goto LABEL_474;
    }
  }

LABEL_475:
  if (*v241[32].__opaque)
  {
    if (dword_100010204)
    {
      if (qword_100010218)
      {
        v536 = qword_100010218;
      }

      else
      {
        v536 = &_os_log_default;
      }

      sub_100007804(v536, "wifiFirmwareLoaderServiceThread: delay[%u sec] - started\n", v235, v236, v237, v238, v239, v240, dword_100010204);
      if (dword_100010220)
      {
        *&v537 = 0xAAAAAAAAAAAAAAAALL;
        *(&v537 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v537;
        v720 = v537;
        v717 = v537;
        v718 = v537;
        v715 = v537;
        v716 = v537;
        *cStr = v537;
        *&cStr[16] = v537;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v538 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v538);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: delay[%u sec] - started\n", dword_100010204);
      }

      sleep(dword_100010204);
      if (qword_100010218)
      {
        v545 = qword_100010218;
      }

      else
      {
        v545 = &_os_log_default;
      }

      sub_100007804(v545, "wifiFirmwareLoaderServiceThread: delay[%u sec] - ended\n", v539, v540, v541, v542, v543, v544, dword_100010204);
      if (dword_100010220)
      {
        *&v546 = 0xAAAAAAAAAAAAAAAALL;
        *(&v546 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v719 = v546;
        v720 = v546;
        v717 = v546;
        v718 = v546;
        v715 = v546;
        v716 = v546;
        *cStr = v546;
        *&cStr[16] = v546;
        *&v698 = 0xAAAAAAAAAAAAAAAALL;
        time(&v698);
        v547 = localtime(&v698);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v547);
        dprintf(dword_100010220, "%s ", cStr);
        dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: delay[%u sec] - ended\n", dword_100010204);
      }
    }

    v548 = *v241[32].__opaque;
    v555 = IOPMAssertionRelease(v548);
    *v241[32].__opaque = 0;
    if (qword_100010218)
    {
      v556 = qword_100010218;
    }

    else
    {
      v556 = &_os_log_default;
    }

    sub_100007804(v556, "wifiFirmwareLoaderServiceThread: _releaseIOPMHelperAssertionRelease return[0x%08x], id[0x%08x], release id[0x%08x]\n", v549, v550, v551, v552, v553, v554, v555);
    if (dword_100010220)
    {
      *&v557 = 0xAAAAAAAAAAAAAAAALL;
      *(&v557 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v719 = v557;
      v720 = v557;
      v717 = v557;
      v718 = v557;
      v715 = v557;
      v716 = v557;
      *cStr = v557;
      *&cStr[16] = v557;
      *&v698 = 0xAAAAAAAAAAAAAAAALL;
      time(&v698);
      v558 = localtime(&v698);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", v558);
      dprintf(dword_100010220, "%s ", cStr);
      dprintf(dword_100010220, "wifiFirmwareLoaderServiceThread: _releaseIOPMHelperAssertionRelease return[0x%08x], id[0x%08x], release id[0x%08x]\n", v555, v548, *v241[32].__opaque);
    }
  }

  *(v1 + 16) = 2;
  v559 = *(v1 + 24);
  if (v559)
  {
    CFRelease(v559);
  }

  *(v1 + 24) = 0;
  v560 = *(v1 + 32);
  if (v560)
  {
    CFRelease(v560);
  }

  *(v1 + 32) = 0;
  v561 = *(v1 + 40);
  if (v561)
  {
    CFRelease(v561);
  }

  *(v1 + 40) = 0;
  v562 = *(v1 + 48);
  if (v562)
  {
    CFRelease(v562);
  }

  *(v1 + 48) = 0;
  v563 = *(v1 + 64);
  if (v563)
  {
    CFRelease(v563);
  }

  *(v1 + 64) = 0;
  v564 = *(v1 + 56);
  if (v564)
  {
    CFRelease(v564);
  }

  *(v1 + 56) = 0;
  v565 = *(v1 + 80);
  if (v565)
  {
    CFRelease(v565);
  }

  *(v1 + 80) = 0;
  v566 = *(v1 + 88);
  if (v566)
  {
    CFRelease(v566);
  }

  *(v1 + 88) = 0;
  v567 = *(v1 + 96);
  if (v567)
  {
    CFRelease(v567);
  }

  *(v1 + 96) = 0;
  v568 = *(v1 + 8);
  if (v568)
  {
    IOObjectRelease(v568);
    *(v1 + 8) = 0;
  }

  CFRunLoopStop(qword_100010060);
}

CFIndex sub_100005784(uint64_t a1, char *a2, const char *a3)
{
  if (!CFStringGetCStringPtr(*(a1 + 64), 0))
  {
    return 1;
  }

  result = CFStringGetLength(*(a1 + 64));
  if (__OFSUB__(result, 4))
  {
    __break(0x5515u);
    goto LABEL_12;
  }

  v7 = result - 3;
  if (result == 3)
  {
LABEL_12:
    __break(0x5500u);
    return result;
  }

  CStringPtr = CFStringGetCStringPtr(*(a1 + 64), 0);
  strlcpy(a2, CStringPtr, v7);
  strlcat(a2, "_gen.", 0xFFuLL);
  strlcat(a2, a3, 0xFFuLL);
  v9 = qword_100010218;
  CFStringGetCStringPtr(*(a1 + 64), 0);
  v16 = &_os_log_default;
  if (v9)
  {
    v16 = v9;
  }

  sub_100007804(v16, "%s %s from FW path %s\n", v10, v11, v12, v13, v14, v15, "createGenericPath");
  if (dword_100010220)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v17;
    v29 = v17;
    v26 = v17;
    v27 = v17;
    v24 = v17;
    v25 = v17;
    *v22 = v17;
    v23 = v17;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    time(&v21);
    v18 = localtime(&v21);
    strftime(v22, 0x80uLL, "%b %d %H:%M:%S", v18);
    dprintf(dword_100010220, "%s ", v22);
    v19 = dword_100010220;
    v20 = CFStringGetCStringPtr(*(a1 + 64), 0);
    dprintf(v19, "%s %s from FW path %s\n", "createGenericPath", a2, v20);
  }

  return 0;
}

uint64_t start(int a1, char *const *a2)
{
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, &stru_10000C448);
  errorbuf = 0;
  if (sandbox_init("wifiFirmwareLoader", 1uLL, &errorbuf) == -1)
  {
    fprintf(__stderrp, "wifiFirmwareLoader sandbox_init: %s, attempting default compiled profile\n", errorbuf);
    sandbox_free_error(errorbuf);
    if (qword_100010218)
    {
      v10 = qword_100010218;
    }

    else
    {
      v10 = &_os_log_default;
    }

    sub_100007804(v10, "Sandboxing init issue, couldn't find profile in default paths, attempting default compiled profile", v4, v5, v6, v7, v8, v9, v243);
    if (dword_100010220)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v256 = v11;
      v254 = v11;
      v255 = v11;
      v252 = v11;
      v253 = v11;
      v250 = v11;
      v251 = v11;
      *valuePtr = v11;
      v247 = 0xAAAAAAAAAAAAAAAALL;
      time(&v247);
      v12 = localtime(&v247);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v12);
      dprintf(dword_100010220, "%s ", valuePtr);
      dprintf(dword_100010220, "Sandboxing init issue, couldn't find profile in default paths, attempting default compiled profile");
    }

    if (sandbox_init("(version 1)(deny default)(import system.sb)(allow file-read-metadata (literal /Library/Preferences))(allow file-read-data (literal /private/var/preferences/SystemConfiguration/com.apple.wifi.plist))(allow file-read-data (literal /Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist))(allow mach-lookup (global-name com.apple.system.logger))(allow mach-lookup (global-name com.apple.system.notification_center))(allow mach-lookup (global-name com.apple.corecaptured))(allow mach-lookup (global-name com.apple.PowerManagement.control))(allow ipc-posix-shm-read-data (ipc-posix-name apple.shm.notification_center))(allow sysctl-read)(allow iokit-open (iokit-user-client-class IOUserUserClient))(allow iokit-open (iokit-user-client-class AppleBCMWLANUserClient))(allow iokit-open (iokit-user-client-class AppleKeyStoreUserClient))(allow iokit-set-properties (iokit-property PlatformConfig))(allow iokit-set-properties (iokit-property WiFiMSFCal))(allow iokit-set-properties (iokit-property WiFiFdrCal))(allow iokit-set-properties (iokit-property WiFiGenericCal))(allow iokit-set-properties (iokit-property WiFiMSFSource))(allow iokit-set-properties (iokit-property HWIdentifiersLate))(allow file-read* (subpath /usr/share/firmware/wifi))(allow file-read* (subpath /usr/local/share/firmware))(allow file-read* (subpath /AppleInternal))(allow file-read-metadata (literal /usr))(allow file-read-metadata (regex #^/usr/.*$))(allow file-read-metadata (literal /var))(allow file-write* (literal /private/var/logs/wifiFirmwareLoader.log))(allow file-read* (literal /private/var/logs/wifiFirmwareLoader.log))(allow file-read-metadata (regex #^/private/var/db/timezone/.*$))(allow file-read-data (regex #^/usr/share/zoneinfo.default/.*$))(allow file-read-data (literal /Library/Preferences/SystemConfiguration/com.apple.wifiFirmwareLoader.plist))", 0, &errorbuf) == -1)
    {
      v22 = errorbuf;
      if (!errorbuf)
      {
        v22 = &unk_10000A556;
      }

      fprintf(__stderrp, "wifiFirmwareLoader sandbox_init: %s \nwifiFirmwareLoader failed to run, check profile\n", v22);
      sandbox_free_error(errorbuf);
      if (qword_100010218)
      {
        v29 = qword_100010218;
      }

      else
      {
        v29 = &_os_log_default;
      }

      sub_100007804(v29, "Sandboxing init issue failed, wifiFirmwareLoader failed to run, check profile", v23, v24, v25, v26, v27, v28, v245);
      if (dword_100010220)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v256 = v30;
        v254 = v30;
        v255 = v30;
        v252 = v30;
        v253 = v30;
        v250 = v30;
        v251 = v30;
        *valuePtr = v30;
        v247 = 0xAAAAAAAAAAAAAAAALL;
        time(&v247);
        v31 = localtime(&v247);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v31);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Sandboxing init issue failed, wifiFirmwareLoader failed to run, check profile");
      }
    }

    else
    {
      fwrite("wifiFirmwareLoader sandbox_init: Success\n", 0x29uLL, 1uLL, __stderrp);
      if (qword_100010218)
      {
        v19 = qword_100010218;
      }

      else
      {
        v19 = &_os_log_default;
      }

      sub_100007804(v19, "Sandboxing init issue resolved: Success", v13, v14, v15, v16, v17, v18, v244);
      if (dword_100010220)
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v256 = v20;
        v254 = v20;
        v255 = v20;
        v252 = v20;
        v253 = v20;
        v250 = v20;
        v251 = v20;
        *valuePtr = v20;
        v247 = 0xAAAAAAAAAAAAAAAALL;
        time(&v247);
        v21 = localtime(&v247);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v21);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Sandboxing init issue resolved: Success");
      }
    }
  }

  v32 = 0;
  qword_100010100 = &_mh_execute_header;
  dword_100010110 = 0;
  dword_100010118 = 0;
  dword_100010188 = 0;
  dword_100010190 = 0;
  *&qword_1000100B8 = 0u;
  *&qword_1000100C8 = 0u;
  *&qword_1000100D8 = 0u;
  dword_1000100B0 = 0;
  word_1000100B4 = 0;
  xmmword_100010070 = 0u;
  *&qword_100010080 = 0u;
  xmmword_100010090 = 0u;
  *&xmmword_1000100A0 = 0;
  while (1)
  {
    v33 = getopt(a1, a2, "fF:N:C:S:rR:T:MmP:p:");
    if (v33 < 0)
    {
      break;
    }

    if (v33 > 82)
    {
      if (v33 > 108)
      {
        switch(v33)
        {
          case 'm':
            goto LABEL_42;
          case 'p':
            if (!optarg)
            {
              goto LABEL_64;
            }

            *(&xmmword_100010090 + 1) = CFStringCreateWithCString(0, optarg, 0);
            HIBYTE(word_1000100B4) = 1;
            break;
          case 'r':
            BYTE2(dword_1000100B0) = 1;
            break;
          default:
            goto LABEL_64;
        }
      }

      else
      {
        switch(v33)
        {
          case 'S':
            if (!optarg)
            {
              goto LABEL_64;
            }

            qword_100010080 = CFStringCreateWithCString(0, optarg, 0);
            break;
          case 'T':
            if (!optarg)
            {
              goto LABEL_64;
            }

            *&xmmword_100010090 = CFStringCreateWithCString(0, optarg, 0);
            LOBYTE(word_1000100B4) = 1;
            break;
          case 'f':
            BYTE1(dword_1000100B0) = 1;
            break;
          default:
            goto LABEL_64;
        }
      }
    }

    else if (v33 > 77)
    {
      if (v33 == 78)
      {
        if (!optarg)
        {
          goto LABEL_64;
        }

        *&xmmword_100010070 = CFStringCreateWithCString(0, optarg, 0);
      }

      else if (v33 == 80)
      {
        if (!optarg)
        {
          goto LABEL_64;
        }

        *&xmmword_1000100A0 = CFStringCreateWithCString(0, optarg, 0);
      }

      else
      {
        if (v33 != 82 || !optarg)
        {
LABEL_64:
          puts("\nUsage:\n\n  -F <filename> [mfg]\n                    uploads firmware data from a file \n                    <filename>  specifies the path to a binary image of firmware.\n                    mfg denotes a manufacturing firmware; if given the driver will omit initial setup after writing the firmware.\n  -N <filename>     uploads nvram data from a file\n                    <filename>  specifies the path to a text file of NVRAM data\n  -S <filename>     uploads signature data from a file\n                    <filename>  specifies the path to a text file of signature data\n  -p <filename>     uploads platcfg blob data from a file\n                    <filename>  specifies the path to a binary file of platcfg blob data\n  -R <filename>     uploads regulatory table from a file\n                    <filename>  specifies the path to a text file of clmb data\n  -T <filename>     uploads tx cap table from a file\n                    <filename>  specifies the path to a text file of cap tx table\n  -P <filename>     Sets the Platform Config from a file\n                    <filename>  specifies the path to a the PlatformConfig file\n  -f                Prints the file paths for Firmware image and NVRAM file (doesn't perform an upload).\n  -r                Force to load Firmware\n  -M                Set MFG firmware flag\n  -m                Clear MFG firmware flag\n");
          return 1;
        }

        qword_100010088 = CFStringCreateWithCString(0, optarg, 0);
        HIBYTE(dword_1000100B0) = 1;
      }
    }

    else
    {
      switch(v33)
      {
        case 'C':
          if (!optarg)
          {
            goto LABEL_64;
          }

          *(&xmmword_1000100A0 + 1) = CFStringCreateWithCString(0, optarg, 0);
          break;
        case 'F':
          if (!optarg)
          {
            goto LABEL_64;
          }

          *(&xmmword_100010070 + 1) = CFStringCreateWithCString(0, optarg, 0);
          if (v32)
          {
            v34 = dword_1000100B0;
          }

          else
          {
            v34 = strcasestr(optarg, "mfg") != 0;
          }

          LOBYTE(dword_1000100B0) = v34;
          break;
        case 'M':
LABEL_42:
          LOBYTE(dword_1000100B0) = v33 == 77;
          v32 = 1;
          break;
        default:
          goto LABEL_64;
      }
    }
  }

  v35 = SCPreferencesCreate(0, @"com.apple.wifiFirmwareLoader", @"/Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist");
  *valuePtr = 0;
  if (v35)
  {
    v36 = v35;
    Value = SCPreferencesGetValue(v35, @"LoggingEnabled");
    if (Value)
    {
      v38 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v38))
      {
        v41 = CFBooleanGetTypeID();
        if (v41 == CFGetTypeID(v38))
        {
          IntValue = CFEqual(v38, kCFBooleanTrue);
        }

        else
        {
          v43 = CFStringGetTypeID();
          if (v43 != CFGetTypeID(v38))
          {
            goto LABEL_71;
          }

          IntValue = CFStringGetIntValue(v38);
        }

        *valuePtr = IntValue;
        goto LABEL_71;
      }

      CFNumberGetValue(v38, kCFNumberIntType, valuePtr);
    }

LABEL_71:
    CFRelease(v36);
    if (*valuePtr)
    {
      v50 = qword_100010218;
      if (!qword_100010218)
      {
        qword_100010218 = os_log_create("com.apple.wififirmwareloaderdaemon", "wififirmwareloader");
        v242 = -92;
        dword_100010220 = open("/private/var/logs/wifiFirmwareLoader.log", 522);
        if (qword_100010218)
        {
          v50 = qword_100010218;
        }

        else
        {
          v50 = &_os_log_default;
        }
      }

      sub_100007804(v50, "WiFi Firmware Loader logging enabled\n", v44, v45, v46, v47, v48, v49, v242);
      if (dword_100010220)
      {
        *&v57 = 0xAAAAAAAAAAAAAAAALL;
        *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v256 = v57;
        v254 = v57;
        v255 = v57;
        v252 = v57;
        v253 = v57;
        v250 = v57;
        v251 = v57;
        *valuePtr = v57;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v58 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v58);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "WiFi Firmware Loader logging enabled\n");
      }

      if (qword_100010218)
      {
        v59 = qword_100010218;
      }

      else
      {
        v59 = &_os_log_default;
      }

      sub_100007804(v59, "Kicking corecaptured to start logging...\n", v51, v52, v53, v54, v55, v56, v246);
      if (dword_100010220)
      {
        *&v60 = 0xAAAAAAAAAAAAAAAALL;
        *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v256 = v60;
        v254 = v60;
        v255 = v60;
        v252 = v60;
        v253 = v60;
        v250 = v60;
        v251 = v60;
        *valuePtr = v60;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v61 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v61);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Kicking corecaptured to start logging...\n");
      }

      if (&_CoreCaptureControlCreate)
      {
        CoreCaptureControlCreate();
      }

      if (&_CoreCaptureControlStart)
      {
        CoreCaptureControlStart();
      }
    }
  }

  qword_1000101FC = 0xA00000002;
  dword_100010204 = 0;
  v62 = SCPreferencesCreate(0, @"com.apple.wifiFirmwareLoader", @"/Library/Managed Preferences/mobile/com.apple.wifiFirmwareLoader.plist");
  LODWORD(v247) = 0;
  if (!v62)
  {
LABEL_137:
    if (*(&xmmword_100010070 + 1) || ((vaddvq_s32(vbicq_s8(xmmword_100008C40, vuzp1q_s32(vceqzq_s64(*&qword_100010088), vceqzq_s64(xmmword_1000100A0)))) & 0xF) == 0 ? (v114 = xmmword_100010070 == 0) : (v114 = 0), v114 ? (v115 = *(&xmmword_100010090 + 1) == 0) : (v115 = 0), !v115))
    {
      if (qword_100010218)
      {
        v116 = qword_100010218;
      }

      else
      {
        v116 = &_os_log_default;
      }

      sub_100007804(v116, "Settings:\n", v63, v64, v65, v66, v67, v68, v242);
      if (dword_100010220)
      {
        *&v117 = 0xAAAAAAAAAAAAAAAALL;
        *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v256 = v117;
        v254 = v117;
        v255 = v117;
        v252 = v117;
        v253 = v117;
        v250 = v117;
        v251 = v117;
        *valuePtr = v117;
        errorbuf = 0xAAAAAAAAAAAAAAAALL;
        time(&errorbuf);
        v118 = localtime(&errorbuf);
        strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v118);
        dprintf(dword_100010220, "%s ", valuePtr);
        dprintf(dword_100010220, "Settings:\n");
      }

      if (xmmword_1000100A0 && CFStringGetCStringPtr(xmmword_1000100A0, 0))
      {
        v119 = qword_100010218;
        CStringPtr = CFStringGetCStringPtr(xmmword_1000100A0, 0);
        v127 = (v119 ? v119 : &_os_log_default);
        sub_100007804(v127, "    pathPlatformConfig: %s\n", v121, v122, v123, v124, v125, v126, CStringPtr);
        if (dword_100010220)
        {
          *&v128 = 0xAAAAAAAAAAAAAAAALL;
          *(&v128 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v128;
          v254 = v128;
          v255 = v128;
          v252 = v128;
          v253 = v128;
          v250 = v128;
          v251 = v128;
          *valuePtr = v128;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v129 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v129);
          dprintf(dword_100010220, "%s ", valuePtr);
          v130 = dword_100010220;
          v131 = CFStringGetCStringPtr(xmmword_1000100A0, 0);
          dprintf(v130, "    pathPlatformConfig: %s\n", v131);
        }
      }

      if (*(&xmmword_100010070 + 1) && CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0))
      {
        v132 = qword_100010218;
        v133 = CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0);
        if (v132)
        {
          v140 = v132;
        }

        else
        {
          v140 = &_os_log_default;
        }

        sub_100007804(v140, "          pathFirmware: %s\n", v134, v135, v136, v137, v138, v139, v133);
        if (dword_100010220)
        {
          *&v147 = 0xAAAAAAAAAAAAAAAALL;
          *(&v147 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v147;
          v254 = v147;
          v255 = v147;
          v252 = v147;
          v253 = v147;
          v250 = v147;
          v251 = v147;
          *valuePtr = v147;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v148 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v148);
          dprintf(dword_100010220, "%s ", valuePtr);
          v149 = dword_100010220;
          v150 = CFStringGetCStringPtr(*(&xmmword_100010070 + 1), 0);
          dprintf(v149, "          pathFirmware: %s\n", v150);
        }

        if (qword_100010218)
        {
          v151 = qword_100010218;
        }

        else
        {
          v151 = &_os_log_default;
        }

        sub_100007804(v151, "                   mfg: %d\n", v141, v142, v143, v144, v145, v146, dword_1000100B0);
        if (dword_100010220)
        {
          *&v152 = 0xAAAAAAAAAAAAAAAALL;
          *(&v152 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v152;
          v254 = v152;
          v255 = v152;
          v252 = v152;
          v253 = v152;
          v250 = v152;
          v251 = v152;
          *valuePtr = v152;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v153 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v153);
          dprintf(dword_100010220, "%s ", valuePtr);
          dprintf(dword_100010220, "                   mfg: %d\n", dword_1000100B0);
        }
      }

      if (xmmword_100010070 && CFStringGetCStringPtr(xmmword_100010070, 0))
      {
        v154 = qword_100010218;
        v155 = CFStringGetCStringPtr(xmmword_100010070, 0);
        v162 = (v154 ? v154 : &_os_log_default);
        sub_100007804(v162, "             pathNVRAM: %s\n", v156, v157, v158, v159, v160, v161, v155);
        if (dword_100010220)
        {
          *&v163 = 0xAAAAAAAAAAAAAAAALL;
          *(&v163 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v163;
          v254 = v163;
          v255 = v163;
          v252 = v163;
          v253 = v163;
          v250 = v163;
          v251 = v163;
          *valuePtr = v163;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v164 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v164);
          dprintf(dword_100010220, "%s ", valuePtr);
          v165 = dword_100010220;
          v166 = CFStringGetCStringPtr(xmmword_100010070, 0);
          dprintf(v165, "             pathNVRAM: %s\n", v166);
        }
      }

      if (qword_100010080 && CFStringGetCStringPtr(qword_100010080, 0))
      {
        v167 = qword_100010218;
        v168 = CFStringGetCStringPtr(qword_100010080, 0);
        v175 = (v167 ? v167 : &_os_log_default);
        sub_100007804(v175, "             pathSignature: %s\n", v169, v170, v171, v172, v173, v174, v168);
        if (dword_100010220)
        {
          *&v176 = 0xAAAAAAAAAAAAAAAALL;
          *(&v176 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v176;
          v254 = v176;
          v255 = v176;
          v252 = v176;
          v253 = v176;
          v250 = v176;
          v251 = v176;
          *valuePtr = v176;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v177 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v177);
          dprintf(dword_100010220, "%s ", valuePtr);
          v178 = dword_100010220;
          v179 = CFStringGetCStringPtr(qword_100010080, 0);
          dprintf(v178, "             pathSignature: %s\n", v179);
        }
      }

      if (*(&xmmword_100010090 + 1) && CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0))
      {
        v180 = qword_100010218;
        v181 = CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0);
        v188 = (v180 ? v180 : &_os_log_default);
        sub_100007804(v188, "             pathPlatcfg: %s\n", v182, v183, v184, v185, v186, v187, v181);
        if (dword_100010220)
        {
          *&v189 = 0xAAAAAAAAAAAAAAAALL;
          *(&v189 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v189;
          v254 = v189;
          v255 = v189;
          v252 = v189;
          v253 = v189;
          v250 = v189;
          v251 = v189;
          *valuePtr = v189;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v190 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v190);
          dprintf(dword_100010220, "%s ", valuePtr);
          v191 = dword_100010220;
          v192 = CFStringGetCStringPtr(*(&xmmword_100010090 + 1), 0);
          dprintf(v191, "             pathPlatcfg: %s\n", v192);
        }
      }

      if (qword_100010088 && CFStringGetCStringPtr(qword_100010088, 0))
      {
        v193 = qword_100010218;
        v194 = CFStringGetCStringPtr(qword_100010088, 0);
        v201 = (v193 ? v193 : &_os_log_default);
        sub_100007804(v201, "               pathReg: %s\n", v195, v196, v197, v198, v199, v200, v194);
        if (dword_100010220)
        {
          *&v202 = 0xAAAAAAAAAAAAAAAALL;
          *(&v202 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v202;
          v254 = v202;
          v255 = v202;
          v252 = v202;
          v253 = v202;
          v250 = v202;
          v251 = v202;
          *valuePtr = v202;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v203 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v203);
          dprintf(dword_100010220, "%s ", valuePtr);
          v204 = dword_100010220;
          v205 = CFStringGetCStringPtr(qword_100010088, 0);
          dprintf(v204, "               pathReg: %s\n", v205);
        }
      }

      if (xmmword_100010090 && CFStringGetCStringPtr(xmmword_100010090, 0))
      {
        v206 = qword_100010218;
        v207 = CFStringGetCStringPtr(xmmword_100010090, 0);
        v214 = (v206 ? v206 : &_os_log_default);
        sub_100007804(v214, "             pathTxCap: %s\n", v208, v209, v210, v211, v212, v213, v207);
        if (dword_100010220)
        {
          *&v215 = 0xAAAAAAAAAAAAAAAALL;
          *(&v215 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v215;
          v254 = v215;
          v255 = v215;
          v252 = v215;
          v253 = v215;
          v250 = v215;
          v251 = v215;
          *valuePtr = v215;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v216 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v216);
          dprintf(dword_100010220, "%s ", valuePtr);
          v217 = dword_100010220;
          v218 = CFStringGetCStringPtr(xmmword_100010090, 0);
          dprintf(v217, "             pathTxCap: %s\n", v218);
        }
      }

      if (*(&xmmword_1000100A0 + 1) && CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0))
      {
        v219 = qword_100010218;
        v220 = CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0);
        v227 = (v219 ? v219 : &_os_log_default);
        sub_100007804(v227, "             pathMSFCal: %s\n", v221, v222, v223, v224, v225, v226, v220);
        if (dword_100010220)
        {
          *&v228 = 0xAAAAAAAAAAAAAAAALL;
          *(&v228 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v256 = v228;
          v254 = v228;
          v255 = v228;
          v252 = v228;
          v253 = v228;
          v250 = v228;
          v251 = v228;
          *valuePtr = v228;
          errorbuf = 0xAAAAAAAAAAAAAAAALL;
          time(&errorbuf);
          v229 = localtime(&errorbuf);
          strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v229);
          dprintf(dword_100010220, "%s ", valuePtr);
          v230 = dword_100010220;
          v231 = CFStringGetCStringPtr(*(&xmmword_1000100A0 + 1), 0);
          dprintf(v230, "             pathMSFCal: %s\n", v231);
        }
      }
    }

    signal(2, sub_100007048);
    signal(3, sub_100007048);
    signal(15, sub_100007048);
    signal(1, sub_100007048);
    qword_100010060 = CFRunLoopGetCurrent();
    os_transaction_create();
    Current = CFAbsoluteTimeGetCurrent();
    v233 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 360.0, 0.0, 0, 0, sub_100007020, 0);
    qword_100010068 = v233;
    if (v233)
    {
      CFRunLoopAddTimer(qword_100010060, v233, kCFRunLoopDefaultMode);
      sub_1000008E8(v234, v235, v236, v237, v238, v239, v240, v241);
      CFRunLoopRemoveTimer(qword_100010060, qword_100010068, kCFRunLoopDefaultMode);
      sub_100006EB4();
    }

    return HIDWORD(qword_100010100);
  }

  v69 = v62;
  if (qword_100010218)
  {
    v70 = qword_100010218;
  }

  else
  {
    v70 = &_os_log_default;
  }

  sub_100007804(v70, "WiFi Firmware processing preferences\n", v63, v64, v65, v66, v67, v68, v242);
  if (dword_100010220)
  {
    *&v71 = 0xAAAAAAAAAAAAAAAALL;
    *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v256 = v71;
    v254 = v71;
    v255 = v71;
    v252 = v71;
    v253 = v71;
    v250 = v71;
    v251 = v71;
    *valuePtr = v71;
    errorbuf = 0xAAAAAAAAAAAAAAAALL;
    time(&errorbuf);
    v72 = localtime(&errorbuf);
    strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v72);
    dprintf(dword_100010220, "%s ", valuePtr);
    dprintf(dword_100010220, "WiFi Firmware processing preferences\n");
  }

  v73 = SCPreferencesGetValue(v69, @"assertionEnabled");
  if (v73)
  {
    v74 = v73;
    v75 = CFBooleanGetTypeID();
    if (v75 == CFGetTypeID(v74))
    {
      byte_1000101F8 = CFEqual(v74, kCFBooleanTrue) != 0;
    }
  }

  v76 = SCPreferencesGetValue(v69, @"assertionType");
  if (v76)
  {
    v77 = v76;
    v78 = CFNumberGetTypeID();
    if (v78 == CFGetTypeID(v77))
    {
      if (CFNumberGetValue(v77, kCFNumberIntType, &v247))
      {
        LODWORD(qword_1000101FC) = v247;
      }
    }
  }

  v79 = SCPreferencesGetValue(v69, @"assertionTimeout");
  if (v79)
  {
    v80 = v79;
    v81 = CFNumberGetTypeID();
    if (v81 == CFGetTypeID(v80) && CFNumberGetValue(v80, kCFNumberIntType, &v247) && (v247 - 1) <= 9)
    {
      HIDWORD(qword_1000101FC) = v247;
    }
  }

  v82 = SCPreferencesGetValue(v69, @"assertionReleaseDelay");
  if (!v82 || (v83 = v82, v84 = CFNumberGetTypeID(), v84 != CFGetTypeID(v83)) || (result = CFNumberGetValue(v83, kCFNumberIntType, &v247), !result) || v247 > 3 || (dword_100010204 = v247) == 0)
  {
LABEL_116:
    v95 = qword_100010218;
    v96 = byte_1000101F8;
    if (qword_100010218)
    {
      v97 = @"PreventUserIdleSystemSleep";
      v98 = @"NoIdleSleepAssertion";
      v99 = @"NoDisplaySleepAssertion";
      if (qword_1000101FC != 4)
      {
        v99 = @"PreventUserIdleSystemSleep";
      }

      if (qword_1000101FC != 3)
      {
        v98 = v99;
      }

      if (qword_1000101FC == 2)
      {
        v97 = @"PreventSystemSleep";
      }

      if (qword_1000101FC == 1)
      {
        v97 = @"PreventUserIdleDisplaySleep";
      }

      if (qword_1000101FC <= 2)
      {
        v100 = v97;
      }

      else
      {
        v100 = v98;
      }
    }

    else if ((qword_1000101FC - 1) > 3)
    {
      v95 = &_os_log_default;
      v100 = @"PreventUserIdleSystemSleep";
    }

    else
    {
      v100 = off_10000C600[(qword_1000101FC - 1)];
      v95 = &_os_log_default;
    }

    CFStringGetCStringPtr(v100, 0);
    sub_100007804(v95, "WiFi Firmware processing preferences using: assertionEnabled:%u, assertionType:%u mapped['%s'], timeout[%u sec], assertionReleaseDelay[%u sec]\n", v101, v102, v103, v104, v105, v106, v96);
    if (dword_100010220)
    {
      *&v107 = 0xAAAAAAAAAAAAAAAALL;
      *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v256 = v107;
      v254 = v107;
      v255 = v107;
      v252 = v107;
      v253 = v107;
      v250 = v107;
      v251 = v107;
      *valuePtr = v107;
      errorbuf = 0xAAAAAAAAAAAAAAAALL;
      time(&errorbuf);
      v108 = localtime(&errorbuf);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v108);
      dprintf(dword_100010220, "%s ", valuePtr);
      v109 = dword_100010220;
      v110 = byte_1000101F8;
      v111 = qword_1000101FC;
      if ((qword_1000101FC - 1) > 3)
      {
        v112 = @"PreventUserIdleSystemSleep";
      }

      else
      {
        v112 = off_10000C600[(qword_1000101FC - 1)];
      }

      v113 = CFStringGetCStringPtr(v112, 0);
      dprintf(v109, "WiFi Firmware processing preferences using: assertionEnabled:%u, assertionType:%u mapped['%s'], timeout[%u sec], assertionReleaseDelay[%u sec]\n", v110, v111, v113, HIDWORD(qword_1000101FC), dword_100010204);
    }

    CFRelease(v69);
    goto LABEL_137;
  }

  v91 = BYTE4(qword_1000101FC) + v247;
  if (!__OFADD__(HIDWORD(qword_1000101FC), v247))
  {
    HIDWORD(qword_1000101FC) += v247;
    if (qword_100010218)
    {
      v92 = qword_100010218;
    }

    else
    {
      v92 = &_os_log_default;
    }

    sub_100007804(v92, "WiFi Firmware processing preferences, adjusting timeout -> timeout[%u sec], adjusted[%u sec]\n", v85, v86, v87, v88, v89, v90, v91);
    if (dword_100010220)
    {
      *&v93 = 0xAAAAAAAAAAAAAAAALL;
      *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v256 = v93;
      v254 = v93;
      v255 = v93;
      v252 = v93;
      v253 = v93;
      v250 = v93;
      v251 = v93;
      *valuePtr = v93;
      errorbuf = 0xAAAAAAAAAAAAAAAALL;
      time(&errorbuf);
      v94 = localtime(&errorbuf);
      strftime(valuePtr, 0x80uLL, "%b %d %H:%M:%S", v94);
      dprintf(dword_100010220, "%s ", valuePtr);
      dprintf(dword_100010220, "WiFi Firmware processing preferences, adjusting timeout -> timeout[%u sec], adjusted[%u sec]\n", HIDWORD(qword_1000101FC), dword_100010204);
    }

    goto LABEL_116;
  }

  __break(0x5500u);
  return result;
}

void sub_100006EB4()
{
  signal(2, 1);
  signal(3, 1);
  signal(15, 1);
  signal(1, 1);
  if (qword_100010218)
  {
    v6 = qword_100010218;
  }

  else
  {
    v6 = &_os_log_default;
  }

  sub_100007804(v6, "Shutting down\n", v0, v1, v2, v3, v4, v5, v9);
  if (dword_100010220)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v7;
    v18 = v7;
    v15 = v7;
    v16 = v7;
    v13 = v7;
    v14 = v7;
    *v11 = v7;
    v12 = v7;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    time(&v10);
    v8 = localtime(&v10);
    strftime(v11, 0x80uLL, "%b %d %H:%M:%S", v8);
    dprintf(dword_100010220, "%s ", v11);
    dprintf(dword_100010220, "Shutting down\n");
  }

  if (xmmword_100010070)
  {
    CFRelease(xmmword_100010070);
  }

  *&xmmword_100010070 = 0;
  if (*(&xmmword_100010070 + 1))
  {
    CFRelease(*(&xmmword_100010070 + 1));
  }

  *(&xmmword_100010070 + 1) = 0;
  if (qword_100010088)
  {
    CFRelease(qword_100010088);
  }

  qword_100010088 = 0;
  if (xmmword_100010090)
  {
    CFRelease(xmmword_100010090);
  }

  *&xmmword_100010090 = 0;
  if (dword_100010220)
  {
    close(dword_100010220);
    dword_100010220 = 0;
  }

  if (qword_100010218)
  {
    qword_100010218 = 0;
  }

  exit(SHIDWORD(qword_100010100));
}

void sub_100007020()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t sub_100007048(uint64_t result)
{
  if (result <= 0xF && ((1 << result) & 0x800C) != 0)
  {
    sub_100006EB4();
  }

  return result;
}

void sub_100007078(id a1, void *a2)
{
  if (qword_100010218)
  {
    v8 = qword_100010218;
  }

  else
  {
    v8 = &_os_log_default;
  }

  sub_100007804(v8, "Woken up by IOKit matching\n", v2, v3, v4, v5, v6, v7, v11);
  if (dword_100010220)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v9;
    v20 = v9;
    v17 = v9;
    v18 = v9;
    v15 = v9;
    v16 = v9;
    *v13 = v9;
    v14 = v9;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    v10 = localtime(&v12);
    strftime(v13, 0x80uLL, "%b %d %H:%M:%S", v10);
    dprintf(dword_100010220, "%s ", v13);
    dprintf(dword_100010220, "Woken up by IOKit matching\n");
  }
}

uint64_t sub_100007164()
{
  result = _CFRuntimeRegisterClass();
  qword_100010210 = result;
  return result;
}

uint64_t sub_100007218(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 20);
    if (v2)
    {
      IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
    }
  }

  result = *(a1 + 20);
  if (result)
  {
    result = IOServiceClose(result);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return result;
}

mach_vm_address_t sub_100007278(io_connect_t a1, uint32_t a2, mach_vm_size_t *ofSize)
{
  atAddress = 0xAAAAAAAAAAAAAAAALL;
  v10 = IOConnectMapMemory(a1, a2, mach_task_self_, &atAddress, ofSize, 1u);
  if (qword_100010218)
  {
    v11 = qword_100010218;
  }

  else
  {
    v11 = &_os_log_default;
  }

  sub_100007804(v11, "WiFiUserClientGetMemoryDescriptorForType return %d for type %d\n", v4, v5, v6, v7, v8, v9, v10);
  if (dword_100010220)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v12;
    v24 = v12;
    v21 = v12;
    v22 = v12;
    v19 = v12;
    v20 = v12;
    *v17 = v12;
    v18 = v12;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    time(&v15);
    v13 = localtime(&v15);
    strftime(v17, 0x80uLL, "%b %d %H:%M:%S", v13);
    dprintf(dword_100010220, "%s ", v17);
    dprintf(dword_100010220, "WiFiUserClientGetMemoryDescriptorForType return %d for type %d\n", v10, a2);
  }

  return atAddress;
}

uint64_t sub_1000073A0(const char *a1, off_t *a2)
{
  memset(&v69, 0, sizeof(v69));
  bzero(v68, 0x401uLL);
  if (!a1 || !a2)
  {
    if (qword_100010218)
    {
      v54 = qword_100010218;
    }

    else
    {
      v54 = &_os_log_default;
    }

    sub_100007804(v54, "'%s' failed !!\n", v4, v5, v6, v7, v8, v9, "getSizeFromFile");
    if (dword_100010220)
    {
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v66 = v55;
      v67 = v55;
      v64 = v55;
      v65 = v55;
      v62 = v55;
      v63 = v55;
      *v60 = v55;
      v61 = v55;
      v59 = 0xAAAAAAAAAAAAAAAALL;
      time(&v59);
      v56 = localtime(&v59);
      strftime(v60, 0x80uLL, "%b %d %H:%M:%S", v56);
      dprintf(dword_100010220, "%s ", v60);
      dprintf(dword_100010220, "'%s' failed !!\n");
    }

    return 0;
  }

  realpath_DARWIN_EXTSN(a1, v68);
  v16 = &_os_log_default;
  if (qword_100010218)
  {
    v17 = qword_100010218;
  }

  else
  {
    v17 = &_os_log_default;
  }

  v58 = v68;
  sub_100007804(v17, "%s: path['%s'], resolved['%s']\n", v10, v11, v12, v13, v14, v15, "getSizeFromFile");
  if (dword_100010220)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v18;
    v67 = v18;
    v64 = v18;
    v65 = v18;
    v62 = v18;
    v63 = v18;
    *v60 = v18;
    v61 = v18;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    time(&v59);
    v19 = localtime(&v59);
    strftime(v60, 0x80uLL, "%b %d %H:%M:%S", v19);
    dprintf(dword_100010220, "%s ", v60);
    dprintf(dword_100010220, "%s: path['%s'], resolved['%s']\n", "getSizeFromFile", a1, v68);
  }

  if (lstat(v68, &v69))
  {
    v20 = qword_100010218;
    v21 = __error();
    if (!v20)
    {
      v20 = &_os_log_default;
    }

    strerror(*v21);
    sub_100007964(v20, "Error: Could not stat %s (%s)\n", v22, v23, v24, v25, v26, v27, v68);
    if (!dword_100010220)
    {
      return 0;
    }

    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v28;
    v67 = v28;
    v64 = v28;
    v65 = v28;
    v62 = v28;
    v63 = v28;
    *v60 = v28;
    v61 = v28;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    time(&v59);
    v29 = localtime(&v59);
    strftime(v60, 0x80uLL, "%b %d %H:%M:%S", v29);
    dprintf(dword_100010220, "%s ", v60);
    v30 = dword_100010220;
    v31 = __error();
    v57 = strerror(*v31);
    v32 = "Error: Could not stat %s (%s)\n";
    goto LABEL_13;
  }

  v34 = open(v68, 0);
  if (qword_100010218)
  {
    v16 = qword_100010218;
  }

  if (v34 < 0)
  {
    v44 = __error();
    strerror(*v44);
    sub_100007804(v16, "Could not Open file %s (%s)\n", v45, v46, v47, v48, v49, v50, v68);
    if (!dword_100010220)
    {
      return 0;
    }

    *&v51 = 0xAAAAAAAAAAAAAAAALL;
    *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v51;
    v67 = v51;
    v64 = v51;
    v65 = v51;
    v62 = v51;
    v63 = v51;
    *v60 = v51;
    v61 = v51;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    time(&v59);
    v52 = localtime(&v59);
    strftime(v60, 0x80uLL, "%b %d %H:%M:%S", v52);
    dprintf(dword_100010220, "%s ", v60);
    v30 = dword_100010220;
    v53 = __error();
    v57 = strerror(*v53);
    v32 = "Could not Open file %s (%s)\n";
LABEL_13:
    dprintf(v30, v32, v68, v57, v58);
    return 0;
  }

  v41 = v34;
  sub_100007804(v16, "Get size of %s, size = %d bytes\n", v35, v36, v37, v38, v39, v40, v68);
  if (dword_100010220)
  {
    *&v42 = 0xAAAAAAAAAAAAAAAALL;
    *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v42;
    v67 = v42;
    v64 = v42;
    v65 = v42;
    v62 = v42;
    v63 = v42;
    *v60 = v42;
    v61 = v42;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    time(&v59);
    v43 = localtime(&v59);
    strftime(v60, 0x80uLL, "%b %d %H:%M:%S", v43);
    dprintf(dword_100010220, "%s ", v60);
    dprintf(dword_100010220, "Get size of %s, size = %d bytes\n", v68, LODWORD(v69.st_size));
  }

  *a2 = v69.st_size;
  close(v41);
  return 1;
}

void sub_100007804(NSObject *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x800uLL);
  vsnprintf(__str, 0x800uLL, a2, &a9);
  v11 = mach_continuous_time();
  *info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(info);
  if (is_mul_ok(v11, *info) && *&info[4])
  {
    v12 = v11 * *info / *&info[4];
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *info = 134218498;
    *&info[4] = v12 / 0x3B9ACA00;
    v14 = 2048;
    v15 = v12 % 0x3B9ACA00 / 0x3E8;
    v16 = 2082;
    v17 = __str;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "%06llu.%06llu %{public}s", info, 0x20u);
  }
}

void sub_100007964(NSObject *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x800uLL);
  vsnprintf(__str, 0x800uLL, a2, &a9);
  v11 = mach_continuous_time();
  *info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(info);
  if (is_mul_ok(v11, *info) && *&info[4])
  {
    v12 = v11 * *info / *&info[4];
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *info = 134218498;
    *&info[4] = v12 / 0x3B9ACA00;
    v14 = 2048;
    v15 = v12 % 0x3B9ACA00 / 0x3E8;
    v16 = 2082;
    v17 = __str;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%06llu.%06llu %{public}s", info, 0x20u);
  }
}

uint64_t sub_100007AC8(const char *a1, void *a2, off_t *a3)
{
  memset(&v131, 0, sizeof(v131));
  bzero(v130, 0x401uLL);
  if (!a2 || !a3)
  {
    if (qword_100010218)
    {
      v26 = qword_100010218;
    }

    else
    {
      v26 = &_os_log_default;
    }

    sub_100007964(v26, "Error: copyDataFromFile data/datalength is null\n", v6, v7, v8, v9, v10, v11, v118);
    if (!dword_100010220)
    {
      return 0;
    }

    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v27;
    v129 = v27;
    v126 = v27;
    v127 = v27;
    v124 = v27;
    v125 = v27;
    *v122 = v27;
    v123 = v27;
    v121 = 0xAAAAAAAAAAAAAAAALL;
    time(&v121);
    v28 = localtime(&v121);
    strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v28);
    dprintf(dword_100010220, "%s ", v122);
    v25 = dword_100010220;
    v24 = "Error: copyDataFromFile data/datalength is null\n";
    goto LABEL_14;
  }

  if (!lstat(a1, &v131))
  {
    v31 = realpath_DARWIN_EXTSN(a1, v130);
    v38 = qword_100010218;
    if (!v31)
    {
      v54 = __error();
      if (v38)
      {
        v55 = v38;
      }

      else
      {
        v55 = &_os_log_default;
      }

      strerror(*v54);
      sub_100007964(v55, "Error: Could not resolve path %s (%s)\n", v56, v57, v58, v59, v60, v61, a1);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v62 = 0xAAAAAAAAAAAAAAAALL;
      *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v62;
      v129 = v62;
      v126 = v62;
      v127 = v62;
      v124 = v62;
      v125 = v62;
      *v122 = v62;
      v123 = v62;
      v121 = 0xAAAAAAAAAAAAAAAALL;
      time(&v121);
      v63 = localtime(&v121);
      strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v63);
      dprintf(dword_100010220, "%s ", v122);
      v22 = dword_100010220;
      v64 = __error();
      v119 = a1;
      v120 = strerror(*v64);
      v24 = "Error: Could not resolve path %s (%s)\n";
      goto LABEL_8;
    }

    if (qword_100010218)
    {
      v39 = qword_100010218;
    }

    else
    {
      v39 = &_os_log_default;
    }

    sub_100007804(v39, "%s: path['%s'], resolved['%s']\n", v32, v33, v34, v35, v36, v37, "copyDataFromFile");
    if (dword_100010220)
    {
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v40;
      v129 = v40;
      v126 = v40;
      v127 = v40;
      v124 = v40;
      v125 = v40;
      *v122 = v40;
      v123 = v40;
      v121 = 0xAAAAAAAAAAAAAAAALL;
      time(&v121);
      v41 = localtime(&v121);
      strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v41);
      dprintf(dword_100010220, "%s ", v122);
      dprintf(dword_100010220, "%s: path['%s'], resolved['%s']\n", "copyDataFromFile", a1, v130);
    }

    if (lstat(v130, &v131))
    {
      v42 = qword_100010218;
      v43 = __error();
      if (!v42)
      {
        v42 = &_os_log_default;
      }

      strerror(*v43);
      sub_100007964(v42, "Error: Could not stat %s (%s)\n", v44, v45, v46, v47, v48, v49, v130);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v50 = 0xAAAAAAAAAAAAAAAALL;
      *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v50;
      v129 = v50;
      v126 = v50;
      v127 = v50;
      v124 = v50;
      v125 = v50;
      *v122 = v50;
      v123 = v50;
      v121 = 0xAAAAAAAAAAAAAAAALL;
      time(&v121);
      v51 = localtime(&v121);
      strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v51);
      dprintf(dword_100010220, "%s ", v122);
      v52 = dword_100010220;
      v53 = __error();
      v119 = v130;
      v120 = strerror(*v53);
      v24 = "Error: Could not stat %s (%s)\n";
LABEL_28:
      v25 = v52;
      goto LABEL_14;
    }

    v65 = open(v130, 0);
    if (qword_100010218)
    {
      v72 = qword_100010218;
    }

    else
    {
      v72 = &_os_log_default;
    }

    if (v65 < 0)
    {
      v85 = __error();
      strerror(*v85);
      sub_100007804(v72, "Could not Open file %s (%s)\n", v86, v87, v88, v89, v90, v91, v130);
      if (!dword_100010220)
      {
        return 0;
      }

      *&v92 = 0xAAAAAAAAAAAAAAAALL;
      *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v92;
      v129 = v92;
      v126 = v92;
      v127 = v92;
      v124 = v92;
      v125 = v92;
      *v122 = v92;
      v123 = v92;
      v121 = 0xAAAAAAAAAAAAAAAALL;
      time(&v121);
      v93 = localtime(&v121);
      strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v93);
      dprintf(dword_100010220, "%s ", v122);
      v52 = dword_100010220;
      v94 = __error();
      v119 = v130;
      v120 = strerror(*v94);
      v24 = "Could not Open file %s (%s)\n";
      goto LABEL_28;
    }

    v73 = v65;
    sub_100007804(v72, "Copying %s, file size = %d bytes\n", v66, v67, v68, v69, v70, v71, v130);
    if (dword_100010220)
    {
      *&v79 = 0xAAAAAAAAAAAAAAAALL;
      *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v79;
      v129 = v79;
      v126 = v79;
      v127 = v79;
      v124 = v79;
      v125 = v79;
      *v122 = v79;
      v123 = v79;
      v121 = 0xAAAAAAAAAAAAAAAALL;
      time(&v121);
      v80 = localtime(&v121);
      strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v80);
      dprintf(dword_100010220, "%s ", v122);
      dprintf(dword_100010220, "Copying %s, file size = %d bytes\n", v130, LODWORD(v131.st_size));
    }

    st_size = v131.st_size;
    if (v131.st_size > *a3)
    {
      if (qword_100010218)
      {
        v82 = qword_100010218;
      }

      else
      {
        v82 = &_os_log_default;
      }

      sub_100007964(v82, "Error: copyDataFromFile ilestat.st_size %lld is bigger then supplied buffer %lld\n", v131.st_size, v74, v75, v76, v77, v78, v131.st_size);
      if (dword_100010220)
      {
        *&v83 = 0xAAAAAAAAAAAAAAAALL;
        *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v83;
        v129 = v83;
        v126 = v83;
        v127 = v83;
        v124 = v83;
        v125 = v83;
        *v122 = v83;
        v123 = v83;
        v121 = 0xAAAAAAAAAAAAAAAALL;
        time(&v121);
        v84 = localtime(&v121);
        strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v84);
        dprintf(dword_100010220, "%s ", v122);
        dprintf(dword_100010220, "Error: copyDataFromFile ilestat.st_size %lld is bigger then supplied buffer %lld\n", v131.st_size, *a3);
      }

      close(v73);
      return 0;
    }

    *a3 = v131.st_size;
    v95 = read(v73, a2, st_size);
    if (v95 < 0)
    {
      v103 = qword_100010218;
      v104 = __error();
      if (!v103)
      {
        v103 = &_os_log_default;
      }

      strerror(*v104);
      sub_100007964(v103, "Error: read %s (%s)\n", v105, v106, v107, v108, v109, v110, a1);
      if (dword_100010220)
      {
        *&v111 = 0xAAAAAAAAAAAAAAAALL;
        *(&v111 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v111;
        v129 = v111;
        v126 = v111;
        v127 = v111;
        v124 = v111;
        v125 = v111;
        *v122 = v111;
        v123 = v111;
        v121 = 0xAAAAAAAAAAAAAAAALL;
        time(&v121);
        v112 = localtime(&v121);
        strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v112);
        dprintf(dword_100010220, "%s ", v122);
        v113 = dword_100010220;
        v114 = __error();
        strerror(*v114);
        dprintf(v113, "Error: read %s (%s)\n");
      }
    }

    else
    {
      v102 = v95;
      if (v95 == v131.st_size)
      {
        v29 = 1;
LABEL_62:
        close(v73);
        return v29;
      }

      if (qword_100010218)
      {
        v115 = qword_100010218;
      }

      else
      {
        v115 = &_os_log_default;
      }

      sub_100007964(v115, "Error: Only read %ld of %d files\n", v96, v97, v98, v99, v100, v101, v102);
      if (dword_100010220)
      {
        *&v116 = 0xAAAAAAAAAAAAAAAALL;
        *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v116;
        v129 = v116;
        v126 = v116;
        v127 = v116;
        v124 = v116;
        v125 = v116;
        *v122 = v116;
        v123 = v116;
        v121 = 0xAAAAAAAAAAAAAAAALL;
        time(&v121);
        v117 = localtime(&v121);
        strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v117);
        dprintf(dword_100010220, "%s ", v122);
        dprintf(dword_100010220, "Error: Only read %ld of %d files\n");
      }
    }

    v29 = 0;
    goto LABEL_62;
  }

  v12 = qword_100010218;
  v13 = __error();
  if (!v12)
  {
    v12 = &_os_log_default;
  }

  strerror(*v13);
  sub_100007964(v12, "Error: Could not stat %s (%s)\n", v14, v15, v16, v17, v18, v19, a1);
  if (!dword_100010220)
  {
    return 0;
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v128 = v20;
  v129 = v20;
  v126 = v20;
  v127 = v20;
  v124 = v20;
  v125 = v20;
  *v122 = v20;
  v123 = v20;
  v121 = 0xAAAAAAAAAAAAAAAALL;
  time(&v121);
  v21 = localtime(&v121);
  strftime(v122, 0x80uLL, "%b %d %H:%M:%S", v21);
  dprintf(dword_100010220, "%s ", v122);
  v22 = dword_100010220;
  v23 = __error();
  v119 = a1;
  v120 = strerror(*v23);
  v24 = "Error: Could not stat %s (%s)\n";
LABEL_8:
  v25 = v22;
LABEL_14:
  dprintf(v25, v24, v119, v120);
  return 0;
}

CFMutableStringRef sub_1000082E0(const __CFArray *a1, const void *a2, _DWORD *a3, const __CFString *a4)
{
  *a3 = -1;
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    if (!CFDictionaryGetValue(ValueAtIndex, a2))
    {
      goto LABEL_12;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, a2);
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 255, Value);
    if (!MutableCopy)
    {
      goto LABEL_12;
    }

    v14 = MutableCopy;
    v15 = CFGetTypeID(MutableCopy);
    if (v15 == CFStringGetTypeID())
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v16 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a4);
      CFStringAppend(v16, v14);
      CStringPtr = CFStringGetCStringPtr(v16, 0);
      if ((sub_1000073A0(CStringPtr, &v19) & 1) == 0)
      {
        CFRelease(v16);
        goto LABEL_11;
      }

      if (v16)
      {
        break;
      }
    }

LABEL_11:
    CFRelease(v14);
LABEL_12:
    if (v9 == ++v10)
    {
      return 0;
    }
  }

  CFRelease(v14);
  *a3 = v10;
  return v16;
}

BOOL sub_100008458(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v5 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        result = Value != 0;
        if (Value)
        {
          break;
        }
      }

      while (v5 != v6++);
    }
  }

  return result;
}