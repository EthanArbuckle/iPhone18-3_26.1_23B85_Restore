BOOL sub_100000BA8(mach_port_t *a1)
{
  *special_port = 0;
  if (!a1)
  {
    if (!task_get_special_port(mach_task_self_, 4, special_port))
    {
      v2 = special_port[0];
      return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
    }

    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    if (!task_get_special_port(mach_task_self_, 4, special_port))
    {
      v2 = special_port[0];
      *a1 = special_port[0];
      return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
    }

    return 0;
  }

  special_port[0] = v2;
  return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
}

uint64_t sub_100000C50(mach_port_t a1, int a2, CFTypeRef object)
{
  result = 3758097090;
  if (a1 && object)
  {
    v6 = IOCFSerialize(object, 0);
    if (v6)
    {
      v7 = v6;
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      v10 = sub_100004D94(a1, a2, BytePtr, Length);
      CFRelease(v7);
      return v10;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t sub_100000CE4(mach_port_t a1, int a2, CFTypeRef *a3)
{
  buffer = 0;
  v3 = 3758097090;
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
      v3 = sub_100004F10(a1, a2, &buffer, &v6);
      if (!v3)
      {
        *a3 = IOCFUnserialize(buffer, kCFAllocatorDefault, 0, 0);
        vm_deallocate(mach_task_self_, buffer, v6);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100000D74(mach_port_t a1, int a2, CFTypeRef *a3)
{
  buffer = 0;
  v3 = 3758097090;
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
      v3 = sub_1000050F0(a1, a2, &buffer, &v6);
      if (!v3)
      {
        *a3 = IOCFUnserialize(buffer, kCFAllocatorDefault, 0, 0);
        vm_deallocate(mach_task_self_, buffer, v6);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t start()
{
  signal(2, sub_1000011C0);
  sp[0] = 0;
  if (task_get_special_port(mach_task_self_, 4, &bootstrap_port) || (qword_10000C080 = CFRunLoopGetCurrent()) == 0)
  {
LABEL_2:
    v0 = 0;
    goto LABEL_3;
  }

  if (bootstrap_check_in(bootstrap_port, "com.apple.IOUPSPlugInServer", sp))
  {
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005694();
    }

    goto LABEL_2;
  }

  v0 = CFMachPortCreateWithPort(kCFAllocatorDefault, sp[0], sub_100004C94, 0, 0);
  RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v0, 0);
  qword_10000C088 = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_5;
  }

  CFRunLoopAddSource(qword_10000C080, RunLoopSource, kCFRunLoopDefaultMode);
LABEL_3:
  if (qword_10000C088)
  {
    CFRelease(qword_10000C088);
  }

LABEL_5:
  if (v0)
  {
    CFRelease(v0);
  }

  byte_10000C048 = 0;
  v1 = os_log_create("com.apple.ioupsd", "upsd");
  v2 = qword_10000C050;
  qword_10000C050 = v1;

  qword_10000C058 = IONotificationPortCreate(kIOMainPortDefault);
  Current = CFRunLoopGetCurrent();
  v4 = IONotificationPortGetRunLoopSource(qword_10000C058);
  CFRunLoopAddSource(Current, v4, kCFRunLoopDefaultMode);
  v22 = xmmword_100006E60;
  *sp = xmmword_100006E50;
  v5 = IOServiceMatching("IOHIDDevice");
  if (v5)
  {
    v6 = v5;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 3, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      theDict = v6;
      v9 = &v22;
      v10 = sp;
      v11 = 4;
      do
      {
        v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!v12 || (v13 = v12, (v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v10)) == 0))
        {
LABEL_22:
          CFRelease(theDict);
          v18 = v8;
          goto LABEL_24;
        }

        v15 = v14;
        CFDictionarySetValue(v13, @"DeviceUsagePage", v14);
        CFRelease(v15);
        if (*v9)
        {
          v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v9);
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = v16;
          CFDictionarySetValue(v13, @"DeviceUsage", v16);
          CFRelease(v17);
        }

        CFArrayAppendValue(v8, v13);
        CFRelease(v13);
        v9 = (v9 + 4);
        ++v10;
        --v11;
      }

      while (v11);
      CFDictionarySetValue(theDict, @"DeviceUsagePairs", v8);
      CFRelease(v8);
      if (!IOServiceAddMatchingNotification(qword_10000C058, "IOServiceFirstMatch", theDict, sub_100002C8C, 0, &dword_10000C068))
      {
        sub_100002C8C(0, dword_10000C068);
      }
    }

    else
    {
      v18 = v6;
LABEL_24:
      CFRelease(v18);
    }
  }

  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100008510);
  CFRunLoopRun();
  return 0;
}

void sub_1000011C0()
{
  v0 = qword_10000C050;
  if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "upsd: exiting SIGINT\n", v1, 2u);
  }

  sub_100001C24();
}

void sub_100001218(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = qword_10000C058;
  v4 = sub_1000012F4();
  if (IOServiceAddInterestNotification(v3, v4, "IOGeneralInterest", sub_100001370, 0, &dword_10000C060) && os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
  {
    sub_10000571C();
  }

  v5 = sub_1000012F4();
  CFProperty = IORegistryEntryCreateCFProperty(v5, @"AccessoryDetails", kCFAllocatorDefault, 0);
  sub_10000141C(CFProperty, 1);
  if (!dword_10000C064)
  {
    sub_100001C24();
  }
}

uint64_t sub_1000012F4()
{
  result = dword_10000C0A8;
  if (!dword_10000C0A8)
  {
    v1 = IOServiceMatching("IOPMPowerSource");
    result = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    dword_10000C0A8 = result;
    if (!result)
    {
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005790();
      }

      return dword_10000C0A8;
    }
  }

  return result;
}

void sub_100001370()
{
  v0 = sub_1000012F4();
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"AccessoryDetails", kCFAllocatorDefault, 0);
  v1 = sub_1000012F4();
  v2 = IORegistryEntryCreateCFProperty(v1, @"AppleRawExternalConnected", kCFAllocatorDefault, 0);
  v3 = [v2 BOOLValue];
  sub_10000141C(CFProperty, v3 & ~byte_10000C078 & 1);
  byte_10000C078 = v3;
}

void sub_10000141C(void *a1, char a2)
{
  v3 = a1;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v47 = a2;
    if ([v3 count])
    {
      v5 = 0;
      v6 = &selRef_BOOLValue;
      v7 = &IOAccessoryManagerGetServiceWithPrimaryPort_ptr;
      *&v4 = 67109376;
      v46 = v4;
      v48 = v3;
      while (1)
      {
        v8 = [v3 objectAtIndex:{v5, v46}];
        v9 = v6[10];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *v60 = v5;
          *&v60[8] = 2112;
          v61 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SMCAccessory[%zu]: %@\n", buf, 0x16u);
        }

        v10 = v8;
        if (!v10)
        {
          goto LABEL_71;
        }

        v11 = v7[138];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_71;
        }

        valuePtr = 0;
        v57 = 0;
        v58 = 0;
        v12 = v10;
        v13 = [v12 objectForKey:@"VID"];
        v14 = [v12 objectForKey:@"PID"];
        v15 = [v12 objectForKey:@"CurrentCapacity"];
        v16 = [v12 objectForKey:@"MaxCapacity"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }
            }
          }
        }

LABEL_70:
        v3 = v48;
        v7 = &IOAccessoryManagerGetServiceWithPrimaryPort_ptr;
LABEL_71:

        if (++v5 >= [v3 count])
        {
          goto LABEL_80;
        }
      }

      v52 = v13;
      v54 = [v13 unsignedIntValue];
      v51 = v14;
      v53 = [v14 unsignedIntValue];
      v50 = v15;
      v17 = [v15 unsignedIntValue];
      v49 = v16;
      v18 = [v16 unsignedIntValue];
      v19 = [v12 objectForKey:@"IsCharging"];
      v20 = [v12 objectForKey:@"ExternalConnected"];
      v21 = v6[10];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        v23 = v17;
        *v60 = v54;
        v22 = v18;
        *&v60[4] = 1024;
        *&v60[6] = v53;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = v17;
        HIWORD(v61) = 1024;
        v62 = v18;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "vid:%d, pid:%d, soc:%d/%d\n", buf, 0x1Au);
      }

      else
      {
        v22 = v18;
        v23 = v17;
      }

      if (v22 >= v23)
      {
        v18 = v17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v20 BOOLValue];
      }

      else
      {
        v24 = 0;
      }

      v6 = &selRef_BOOLValue;
      LOBYTE(v58) = v24;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v19 BOOLValue];
      }

      else
      {
        v25 = 0;
      }

      BYTE1(v58) = v25;
      valuePtr = __PAIR64__(v22, v18);
      LODWORD(v57) = v54;
      HIDWORD(v57) = v53;

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        goto LABEL_70;
      }

      v27 = Mutable;
      v28 = qword_10000C050;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
      {
        *buf = v46;
        *v60 = v18;
        *&v60[4] = 1024;
        *&v60[6] = v22;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "ProcessSmcAccessory: soc:%d/%d\n", buf, 0xEu);
      }

      v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v57);
      v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v57 + 4);
      v31 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr + 4);
      v33 = v32;
      if (!v29 || !v30 || !v31 || !v32)
      {
        v34 = 0;
        if (!v29)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v34 = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
      if (!v34)
      {
LABEL_61:
        CFRelease(v29);
LABEL_62:
        if (v30)
        {
          CFRelease(v30);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        v6 = &selRef_BOOLValue;
        if (v33)
        {
          CFRelease(v33);
        }

        CFRelease(v27);
        if (v34)
        {
          CFRelease(v34);
        }

        goto LABEL_70;
      }

      if (BYTE1(v58))
      {
        v35 = kCFBooleanTrue;
      }

      else
      {
        v35 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v27, @"Show Charging UI", v35);
      if ((byte_10000C048 & 2) != 0)
      {
LABEL_46:
        v55 = v31;
        v38 = v30;
        v39 = v29;
        if (v58)
        {
          v40 = @"AC Power";
        }

        else
        {
          v40 = @"Battery Power";
        }

        CFDictionarySetValue(v27, @"Power Source State", v40);
        v41 = qword_10000C090;
        if (qword_10000C090)
        {
          *(qword_10000C090 + 56) = 3;
          v41[28] = 1;
          Value = CFDictionaryGetValue(*(v41 + 4), @"Power Source State");
          if (sub_10000355C(v41, *(v41 + 4), v27, v34))
          {
            goto LABEL_60;
          }

          v43 = *v41;
          v44 = *(v41 + 4);
          if (IOPSSetPowerSourceDetails())
          {
            goto LABEL_60;
          }

          if (Value && CFEqual(Value, v40) && (v47 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v41 = sub_100003458();
          *(v41 + 14) = 3;
          v41[28] = 1;
          if (sub_100003BE0(v41, v27, v34))
          {
LABEL_60:
            v29 = v39;
            v30 = v38;
            v31 = v55;
            goto LABEL_61;
          }

          v41[60] = sub_100001E28(v41);
          v41[61] = sub_100001F00(v41);
        }

        sub_100003D10(v41, v40);
LABEL_59:
        qword_10000C090 = v41;
        byte_10000C048 |= 1u;
        goto LABEL_60;
      }

      CFDictionarySetValue(v27, @"Is Present", kCFBooleanTrue);
      if (BYTE1(v58))
      {
        v36 = kCFBooleanTrue;
      }

      else
      {
        v36 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v27, @"Is Charging", v36);
      CFDictionarySetValue(v27, @"Vendor ID", v29);
      CFDictionarySetValue(v27, @"Product ID", v30);
      CFDictionarySetValue(v27, @"Max Capacity", v33);
      CFDictionarySetValue(v27, @"Current Capacity", v31);
      CFDictionarySetValue(v27, @"Transport Type", @"Inductive In-Band");
      if (v57 == 1452)
      {
        if (HIDWORD(v57) == 5017)
        {
          v37 = @"MagSafe Battery Pack";
          goto LABEL_44;
        }

        if (HIDWORD(v57) == 5026)
        {
          v37 = @"iPhone Air MagSafe Battery";
LABEL_44:
          CFDictionarySetValue(v27, @"Name", v37);
        }
      }

      CFSetAddValue(v34, @"Current Capacity");
      goto LABEL_46;
    }
  }

  else
  {
    v45 = (byte_10000C048 & 0x7E) == 0;
    byte_10000C048 &= 0x7Eu;
    if (v45)
    {
      sub_1000046A8(qword_10000C090);
      qword_10000C090 = 0;
    }
  }

LABEL_80:
}

void sub_100001C24()
{
  IONotificationPortDestroy(qword_10000C058);
  if (dword_10000C068)
  {
    IOObjectRelease(dword_10000C068);
    dword_10000C068 = 0;
  }

  if (dword_10000C060)
  {
    IOObjectRelease(dword_10000C060);
    dword_10000C060 = 0;
  }

  valuePtr = 0;
  v0 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  sub_100005598(v0);
  exit(0);
}

uint64_t sub_100001C94(io_registry_entry_t a1, const __CFDictionary *a2)
{
  v3 = IORegistryEntrySearchCFProperty(a1, "IOService", @"DeviceUsagePairs", kCFAllocatorDefault, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    v8 = 1;
  }

  else
  {
    v6 = Count;
    v7 = 0;
    v8 = 1;
    do
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"DeviceUsagePage");
        v12 = CFDictionaryGetValue(v10, @"DeviceUsage");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
        }

        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        }

        if (valuePtr == 0xFF0000000014 || valuePtr == 0x8400000006)
        {
          v8 = 2;
        }

        else if (valuePtr == 46 && HIDWORD(valuePtr) == 133)
        {
          v8 = 3;
        }

        else
        {
          v8 = v8;
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  CFRelease(v4);
  if (a2)
  {
    v14 = CFDictionaryGetValue(a2, @"Accessory Category");
    if (v14)
    {
      if (CFEqual(v14, @"Game Controller"))
      {
        return 4;
      }

      else
      {
        return v8;
      }
    }
  }

  return v8;
}

BOOL sub_100001E28(uint64_t a1)
{
  valuePtr = 0;
  if (a1 && (v2 = *(a1 + 32)) != 0)
  {
    Value = CFDictionaryGetValue(v2, @"Vendor ID");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    }

    v4 = CFDictionaryGetValue(*(a1 + 32), @"Product ID");
    if (v4)
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
    }

    result = 0;
    if (*(a1 + 56) == 3)
    {
      return valuePtr == 0x5AC00001395;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000057C4(a1, a1 == 0);
      return 0;
    }
  }

  return result;
}

BOOL sub_100001F00(uint64_t a1)
{
  valuePtr = 0;
  if (a1 && (v2 = *(a1 + 32)) != 0)
  {
    Value = CFDictionaryGetValue(v2, @"Vendor ID");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    }

    v4 = CFDictionaryGetValue(*(a1 + 32), @"Product ID");
    if (v4)
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
    }

    result = 0;
    if (*(a1 + 56) == 3)
    {
      return valuePtr == 0x5AC00001398;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10000583C(a1, a1 == 0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001FD8(const void *a1)
{
  connect = 0;
  if (!a1)
  {
    return 4;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID())
  {
    return 4;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr > 199)
  {
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
    if (ServiceWithPrimaryPort)
    {
      v7 = IOServiceOpen(ServiceWithPrimaryPort, mach_task_self_, 0, &connect);
      if (v7)
      {
        USBCurrentLimitBase = v7;
        v8 = qword_10000C050;
        if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
        {
          sub_1000058B4(v8, USBCurrentLimitBase);
        }
      }

      else
      {
        *buf = 0;
        USBCurrentLimitBase = IOAccessoryManagerGetUSBCurrentLimitBase();
        if (!USBCurrentLimitBase)
        {
          USBCurrentLimitBase = IOAccessoryManagerSetUSBCurrentOffset();
        }

        IOServiceClose(connect);
      }
    }

    else
    {
      USBCurrentLimitBase = 3758097088;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005940();
      }
    }
  }

  else
  {
    v3 = qword_10000C050;
    USBCurrentLimitBase = 0;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = valuePtr;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ignoring battery case current limit < 200 (limit=%d)\n", buf, 8u);
      return 0;
    }
  }

  return USBCurrentLimitBase;
}

uint64_t sub_100002194(uint64_t a1, void *a2, int a3)
{
  valuePtr = a3;
  if (!a1)
  {
    return 29;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 29;
  }

  if (!*v4)
  {
    return 29;
  }

  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    return 29;
  }

  v7 = v6;
  values = v6;
  keys = a2;
  v8 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v7);
  if (!v8)
  {
    return 29;
  }

  v9 = (*(**(a1 + 16) + 64))(*(a1 + 16), v8);
  CFRelease(v8);
  return v9;
}

uint64_t sub_100002294(uint64_t a1)
{
  if (!a1)
  {
    return 29;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 29;
  }

  v3 = time(0);
  srand(v3);
  for (i = 0; i != 6; ++i)
  {
    v5 = rand();
    if (i)
    {
      v6 = 255;
    }

    else
    {
      v6 = 63;
    }

    v7 = v5 & v6;
    bytes[i] = v7;
  }

  if (v7)
  {
    if (v7 != 255)
    {
      goto LABEL_14;
    }

    v8 = rand();
    v9 = (5 - ((v8 % 46 + (((v8 % 46) >> 12) & 7)) >> 3));
    v10 = bytes[v9] ^ (1 << ((v8 % 46) & 7));
  }

  else
  {
    v11 = rand();
    v9 = (5 - ((v11 % 46 + (((v11 % 46) >> 12) & 7)) >> 3));
    v10 = bytes[v9] | (1 << ((v11 % 46) & 7));
  }

  bytes[v9] = v10;
LABEL_14:
  v12 = qword_10000C050;
  if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
  {
    sub_1000059BC(a1, bytes, v12);
  }

  v13 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
  if (!v13 && os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
  {
    sub_100005A88();
  }

  values = v13;
  keys = @"Set Address";
  v14 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v13);
  if (!v14)
  {
    return 29;
  }

  v15 = (*(**(a1 + 16) + 64))(*(a1 + 16), v14);
  CFRelease(v14);
  return v15;
}

const __CFNumber *sub_1000024F0(const __CFNumber *result, io_registry_entry_t entry, int a3)
{
  if (a3 == -536723200)
  {
    v4 = result;
    valuePtr = 0;
    v15 = 0;
    v5 = IORegistryEntrySearchCFProperty(entry, "IOService", @"AppleRawCurrentCapacity", kCFAllocatorDefault, 0);
    v6 = IORegistryEntrySearchCFProperty(entry, "IOService", @"AppleRawMaxCapacity", kCFAllocatorDefault, 0);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v6;
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr + 4);
      CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      v10 = HIDWORD(valuePtr);
      CFRelease(v5);
      CFRelease(v8);
      if (valuePtr >= 1)
      {
        v11 = qword_10000C050;
        if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v18 = 100 * v10 / v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending Current State of Charge: %d%%\n", buf, 8u);
        }

        sub_100002194(v4, @"Send Current State of Charge", 100 * v10 / v9);
      }
    }

    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"VirtualTemperature", kCFAllocatorDefault, 0);
    if (result || (result = IORegistryEntrySearchCFProperty(entry, "IOService", @"Temperature", kCFAllocatorDefault, 0)) != 0)
    {
      v12 = result;
      CFNumberGetValue(result, kCFNumberSInt32Type, &v15);
      CFRelease(v12);
      v13 = v15 / 0xA + 2732;
      v14 = qword_10000C050;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending Current Temperature: %d dK\n", buf, 8u);
      }

      return sub_100002194(v4, @"Send Current Temperature", v13);
    }
  }

  return result;
}

void sub_100002758(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -469794795)
  {
    if (IOAccessoryManagerGetUSBCurrentLimit())
    {
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005ABC();
      }
    }

    else if (sub_100002194(a1, @"Set Current Limit", 0) && os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005AF0();
    }
  }
}

const __CFNumber *sub_100002818(uint64_t a1, io_registry_entry_t entry)
{
  result = IORegistryEntrySearchCFProperty(entry, "IOService", @"Voltage", kCFAllocatorDefault, 0);
  if (result)
  {
    v4 = result;
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v4);
    return sub_100002194(a1, @"Set Required Voltage", valuePtr + 150);
  }

  return result;
}

const __CFNumber *sub_1000028A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000012F4();
  result = IORegistryEntryCreateCFProperty(v3, @"AverageChargingCurrent", kCFAllocatorDefault, 0);
  if (result)
  {
    v5 = result;
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v5);
    v6 = qword_10000C050;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = valuePtr;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending Average Charging Current: %d mA\n", buf, 8u);
    }

    return sub_100002194(a2, @"Send Average Charging Current", valuePtr);
  }

  return result;
}

uint64_t sub_10000299C(int a1, unsigned __int16 a2, char *buffer)
{
  v4 = 3758097084;
  v5 = IOCFUnserialize(buffer, kCFAllocatorDefault, 0, 0);
  if (v5)
  {
    v6 = v5;
    if (qword_10000C070 && CFArrayGetCount(qword_10000C070) > a2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_10000C070, a2);
      MutableBytePtr = CFDataGetMutableBytePtr(ValueAtIndex);
      if (MutableBytePtr)
      {
        v9 = *(MutableBytePtr + 2);
        if (v9)
        {
          v4 = (*(*v9 + 64))(v9, v6);
        }
      }
    }

    else
    {
      v4 = 3758097090;
    }

    CFRelease(v6);
  }

  return v4;
}

uint64_t sub_100002A5C(uint64_t a1, unsigned __int16 a2, vm_address_t *a3, size_t *a4)
{
  v4 = 3758097090;
  if (a3)
  {
    if (a4)
    {
      if (qword_10000C070)
      {
        v7 = a2;
        if (CFArrayGetCount(qword_10000C070) > a2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_10000C070, v7);
          MutableBytePtr = CFDataGetMutableBytePtr(ValueAtIndex);
          if (MutableBytePtr)
          {
            v10 = *(MutableBytePtr + 2);
            if (v10)
            {
              object = 0;
              v4 = 3758097084;
              if (!(*(*v10 + 48))(v10, &object) && object != 0)
              {
                v12 = IOCFSerialize(object, 0);
                if (v12)
                {
                  v13 = v12;
                  Length = CFDataGetLength(v12);
                  *a4 = Length;
                  v4 = vm_allocate(mach_task_self_, a3, Length, 1);
                  if (!v4)
                  {
                    v15 = *a3;
                    if (v15)
                    {
                      BytePtr = CFDataGetBytePtr(v13);
                      memcpy(v15, BytePtr, *a4);
                    }
                  }

                  CFRelease(v13);
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_100002B74(uint64_t a1, unsigned __int16 a2, vm_address_t *a3, size_t *a4)
{
  v4 = 3758097090;
  if (a3)
  {
    if (a4)
    {
      if (qword_10000C070)
      {
        v7 = a2;
        if (CFArrayGetCount(qword_10000C070) > a2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_10000C070, v7);
          MutableBytePtr = CFDataGetMutableBytePtr(ValueAtIndex);
          if (MutableBytePtr)
          {
            v10 = *(MutableBytePtr + 2);
            if (v10)
            {
              object = 0;
              v4 = 3758097084;
              if (!(*(*v10 + 40))(v10, &object) && object != 0)
              {
                v12 = IOCFSerialize(object, 0);
                if (v12)
                {
                  v13 = v12;
                  Length = CFDataGetLength(v12);
                  *a4 = Length;
                  v4 = vm_allocate(mach_task_self_, a3, Length, 1);
                  if (!v4)
                  {
                    v15 = *a3;
                    if (v15)
                    {
                      BytePtr = CFDataGetBytePtr(v13);
                      memcpy(v15, BytePtr, *a4);
                    }
                  }

                  CFRelease(v13);
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_100002C8C(int a1, io_iterator_t iterator)
{
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  theInterface = 0;
  cf = 0;
  v67 = 0;
  theScore = 0;
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    byte7 = 0x2C8A950A009592D8;
    v8 = 0x42C6E45000D491D4;
    while (1)
    {
      v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x40u, 0xA5u, 0x7Au, 0x4Eu, 0x26u, 0xA0u, 0x11u, byte7, BYTE1(byte7), BYTE2(byte7), BYTE3(byte7), BYTE4(byte7), BYTE5(byte7), BYTE6(byte7), HIBYTE(byte7), 0x78u);
      v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, v8, BYTE1(v8), BYTE2(v8), BYTE3(v8), BYTE4(v8), BYTE5(v8), BYTE6(v8), HIBYTE(v8), 0x6Fu);
      if (!IOCreatePlugInInterfaceForService(v4, v9, v10, &theInterface, &theScore))
      {
        break;
      }

LABEL_70:
      IOObjectRelease(v4);
      v4 = IOIteratorNext(iterator);
      if (!v4)
      {

        return;
      }
    }

    v11 = v8;
    v12 = theInterface;
    QueryInterface = (*theInterface)->QueryInterface;
    v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xE6u, 0xEu, 7u, 0x99u, 0x9Au, 0xA6u, 0x49u, 0xDFu, 0xB5u, 0x5Bu, 0xA5u, 0xC9u, 0x4Bu, 0xA0u, 0x7Au, 0x4Au);
    v15 = CFUUIDGetUUIDBytes(v14);
    if ((QueryInterface)(v12, *&v15.byte0, *&v15.byte8, &v67))
    {
      v16 = 1;
    }

    else
    {
      v16 = v67 == 0;
    }

    if (v16)
    {
      v17 = theInterface;
      v18 = byte7;
      v19 = (*theInterface)->QueryInterface;
      v20 = CFUUIDGetConstantUUIDWithBytes(0, 0x63u, 0xF8u, 0xBFu, 0xC4u, 0x26u, 0xA0u, 0x11u, 0xD8u, 0x88u, 0xB4u, 0, 0xAu, 0x95u, 0x8Au, 0x2Cu, 0x78u);
      v21 = CFUUIDGetUUIDBytes(v20);
      v22 = (v19)(v17, *&v21.byte0, *&v21.byte8, &v67);
      byte7 = v18;
      v8 = v11;
      if (v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((*(*v67 + 72))())
      {
        v24 = 1;
      }

      else
      {
        v24 = cf == 0;
      }

      if (v24)
      {
        v8 = v11;
        goto LABEL_29;
      }

      v25 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      v27 = cf;
      if (v25 == TypeID)
      {
        v28 = [cf count];
        if (v28 >= 1)
        {
          v29 = v28;
          v30 = byte7;
          for (i = 0; i != v29; ++i)
          {
            v32 = v6;
            v33 = [v27 objectAtIndex:i];
            v65 = v6;
            sub_1000033E8(v33, &v65, &v70);
            v6 = v65;
          }

          byte7 = v30;
        }
      }

      else
      {
        v64 = v6;
        sub_1000033E8(cf, &v64, &v70);
        v27 = v6;
        v6 = v64;
      }

      v34 = v70;
      v8 = v11;
      if (v70)
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v34, kCFRunLoopDefaultMode);
      }

      if (v6)
      {
        v36 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v36, v6, kCFRunLoopDefaultMode);
      }
    }

    if (!v67 || (*(*v67 + 32))(v67, &v73))
    {
LABEL_29:
      if (!v5)
      {
LABEL_30:
        if (v67)
        {
          (*(*v67 + 24))(v67);
          v67 = 0;
        }

        v37 = v70;
        if (v70)
        {
          v38 = CFRunLoopGetCurrent();
          CFRunLoopRemoveSource(v38, v37, kCFRunLoopDefaultMode);
          CFRelease(v37);
          v70 = 0;
        }

        if (v6)
        {
          v39 = CFRunLoopGetCurrent();
          CFRunLoopRemoveTimer(v39, v6, kCFRunLoopDefaultMode);

          v6 = 0;
        }

        v5 = 0;
        goto LABEL_69;
      }

LABEL_68:
      sub_1000046A8(v5);
      v5 = 0;
      v67 = 0;
LABEL_69:
      ((*theInterface)->Release)(theInterface);
      goto LABEL_70;
    }

    Value = CFDictionaryGetValue(v73, @"Transport Type");
    v41 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == v41 && CFEqual(Value, @"Inductive In-Band"))
    {
      v42 = qword_10000C050;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
      {
        sub_100005B24(&v62, v63, v42);
      }

      v5 = qword_10000C090;
      v43 = 1;
      v44 = 1;
      if (qword_10000C090)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v43 = 0;
    }

    v45 = sub_100003458();
    if (!v45)
    {
      v8 = v11;
      goto LABEL_30;
    }

    v5 = v45;
    v44 = 0;
LABEL_47:
    *(v5 + 2) = v67;
    *(v5 + 5) = v70;
    objc_storeStrong(v5 + 6, v6);
    *(v5 + 28) = 1;
    v46 = sub_100001C94(v4, v73);
    v5[14] = v46;
    if (!v46 || (*(*v67 + 40))(v67, &v71))
    {
      goto LABEL_64;
    }

    if (v44)
    {
      if (sub_10000355C(v5, *(v5 + 4), v73, v71))
      {
        goto LABEL_64;
      }

      v47 = *v5;
      v48 = *(v5 + 4);
      v49 = IOPSSetPowerSourceDetails();
    }

    else
    {
      v49 = sub_100003BE0(v5, v73, v71);
    }

    v50 = v49;
    *(v5 + 60) = sub_100001E28(v5);
    *(v5 + 61) = sub_100001F00(v5);
    if (v50)
    {
      goto LABEL_64;
    }

    if (v5[14] == 3)
    {
      if ((v44 & 1) == 0)
      {
        *(v5 + 72) = 0;
        sub_100003D10(v5, @"Battery Power");
      }

      v51 = sub_1000012F4();
      if (v51)
      {
        IOServiceAddInterestNotification(qword_10000C058, v51, "IOGeneralInterest", sub_1000024F0, v5, v5 + 20);
      }

      v52 = sub_100002294(v5);
      if (v52)
      {
        v53 = v52;
        v54 = qword_10000C050;
        if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
        {
          v59 = v5[6];
          *buf = 67109376;
          v75 = v59;
          v76 = 1024;
          v77 = v53;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "failed to send address to power source %d (ret=0x%X)\n", buf, 0xEu);
        }
      }
    }

    if ((*(*v67 + 48))(v67, &v72))
    {
LABEL_64:
      if (byte_10000C048)
      {
        v55 = v43;
      }

      else
      {
        v55 = 0;
      }

      v8 = v11;
      if (v55)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    sub_10000434C(v5, v72);
    (*(*v67 + 56))(v67, sub_1000045AC, 0, v5);
    v56 = IOServiceAddInterestNotification(qword_10000C058, v4, "IOGeneralInterest", sub_1000045B8, v5, v5 + 2);
    v57 = v43 ^ 1;
    if (v56)
    {
      v57 = 1;
    }

    if (v57)
    {
      if (v56)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v58 = qword_10000C050;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
      {
        sub_100005B64(&v60, v61, v58);
      }

      qword_10000C090 = v5;
      byte_10000C048 |= 2u;
    }

    v8 = v11;
    goto LABEL_69;
  }
}

id sub_1000033E8(void *a1, void *a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFRunLoopTimerGetTypeID())
  {
    result = a1;
    a3 = a2;
  }

  else
  {
    v8 = CFGetTypeID(a1);
    result = CFRunLoopSourceGetTypeID();
    if (v8 != result)
    {
      return result;
    }
  }

  *a3 = a1;
  return result;
}

UInt8 *sub_100003458()
{
  v0 = qword_10000C070;
  if (qword_10000C070 || (v0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (qword_10000C070 = v0) != 0))
  {
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_10000C070, v3);
        if (ValueAtIndex)
        {
          MutableBytePtr = CFDataGetMutableBytePtr(ValueAtIndex);
          if (MutableBytePtr)
          {
            v6 = MutableBytePtr;
            if (!MutableBytePtr[28])
            {
              break;
            }
          }
        }

        if (v2 == ++v3)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v2) = v3;
LABEL_16:
      *(v6 + 6) = v2;
      return v6;
    }

    LODWORD(v2) = 0;
LABEL_11:
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 96);
    if (Mutable)
    {
      v8 = Mutable;
      v6 = CFDataGetMutableBytePtr(Mutable);
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
      *(v6 + 5) = 0u;
      CFArrayAppendValue(qword_10000C070, v8);
      CFRelease(v8);
      if (!v6)
      {
        return v6;
      }

      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_10000355C(uint64_t a1, const __CFDictionary *a2, CFDictionaryRef theDict, const __CFSet *a4)
{
  valuePtr = 0;
  value = 0;
  result = 3758097084;
  if (!a2 || !theDict || !a4)
  {
    return result;
  }

  v9 = CFDictionaryGetValue(theDict, @"Name");
  if (!v9)
  {
    if (CFDictionaryContainsKey(a2, @"Name"))
    {
      goto LABEL_19;
    }

    v9 = @"Generic UPS";
  }

  if (sub_10000476C() && sub_10000483C())
  {
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
    {
      sub_100005BA4();
    }

    v10 = sub_10000483C();
    if (!v10)
    {
      sub_100005C18();
    }

    v11 = v10(v9);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(a2, @"Name", v11);
      CFRelease(v12);
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005BE4();
    }
  }

  else
  {
    v13 = qword_10000C050;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CoreAccessories.framework not loaded!!\n", buf, 2u);
    }
  }

  CFDictionarySetValue(a2, @"Name", v9);
LABEL_19:
  v14 = CFDictionaryGetValue(theDict, @"Transport Type");
  if (v14)
  {
LABEL_20:
    CFDictionarySetValue(a2, @"Transport Type", v14);
    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(a2, @"Transport Type"))
  {
    v14 = @"UNK";
    goto LABEL_20;
  }

LABEL_22:
  v15 = CFDictionaryGetValue(theDict, @"Vendor ID");
  v16 = CFDictionaryGetValue(theDict, @"Product ID");
  v17 = CFDictionaryGetValue(theDict, @"Model Number");
  CFDictionarySetValue(a2, @"Is Present", kCFBooleanTrue);
  if (*(a1 + 56) == 1)
  {
    CFDictionarySetValue(a2, @"Is Charging", kCFBooleanTrue);
    v18 = @"AC Power";
LABEL_29:
    CFDictionarySetValue(a2, @"Power Source State", v18);
    goto LABEL_30;
  }

  v19 = CFDictionaryGetValue(theDict, @"Is Charging");
  if (v19)
  {
    v20 = v19;
LABEL_26:
    CFDictionarySetValue(a2, @"Is Charging", v20);
    goto LABEL_28;
  }

  if (!CFDictionaryContainsKey(a2, @"Is Charging"))
  {
    v20 = kCFBooleanFalse;
    goto LABEL_26;
  }

LABEL_28:
  v18 = CFDictionaryGetValue(theDict, @"Power Source State");
  if (v18)
  {
    goto LABEL_29;
  }

  if (!CFDictionaryContainsKey(a2, @"Power Source State"))
  {
    v18 = @"Battery Power";
    goto LABEL_29;
  }

LABEL_30:
  if (v15)
  {
    CFDictionarySetValue(a2, @"Vendor ID", v15);
  }

  if (v16)
  {
    CFDictionarySetValue(a2, @"Product ID", v16);
  }

  if (v17)
  {
    CFDictionarySetValue(a2, @"Model Number", v17);
  }

  *buf = *(a1 + 24) | (getpid() << 16);
  v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
  CFDictionarySetValue(a2, @"Power Source ID", v21);
  CFRelease(v21);
  v22 = CFDictionaryGetValue(theDict, @"Max Capacity");
  if (v22)
  {
    CFDictionarySetValue(a2, @"Max Capacity", v22);
  }

  else if (!CFDictionaryContainsKey(a2, @"Max Capacity"))
  {
    if ((*(a1 + 56) - 3) >= 2)
    {
      v23 = 100;
    }

    else
    {
      v23 = 0;
    }

    valuePtr = v23;
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"Max Capacity", v24);
    CFRelease(v24);
  }

  v25 = CFDictionaryGetValue(theDict, @"Show Charging UI");
  if (v25)
  {
    CFDictionarySetValue(a2, @"Show Charging UI", v25);
  }

  if (CFSetContainsValue(a4, @"Current Capacity"))
  {
    if (CFDictionaryContainsKey(theDict, @"Current Capacity"))
    {
      v26 = CFDictionaryGetValue(theDict, @"Current Capacity");
      CFDictionarySetValue(a2, @"Current Capacity", v26);
    }

    else if (!CFDictionaryContainsKey(a2, @"Current Capacity"))
    {
      valuePtr = 0;
      v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(a2, @"Current Capacity", v27);
      CFRelease(v27);
    }
  }

  if (CFSetContainsValue(a4, @"Time to Empty"))
  {
    valuePtr = 100;
    v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"Time to Empty", v28);
    CFRelease(v28);
  }

  if (CFSetContainsValue(a4, @"Voltage"))
  {
    valuePtr = 130;
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"Voltage", v29);
    CFRelease(v29);
  }

  if (CFSetContainsValue(a4, @"Current"))
  {
    valuePtr = 1;
    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"Current", v30);
    CFRelease(v30);
  }

  v31 = *(a1 + 56);
  if (v31 == 4)
  {
    goto LABEL_59;
  }

  if (v31 != 3)
  {
    if (v31 != 2)
    {
      v32 = @"Type";
      v33 = @"UPS";
      goto LABEL_62;
    }

LABEL_59:
    v32 = @"Type";
    v33 = @"Accessory Source";
LABEL_62:
    v34 = a2;
    goto LABEL_63;
  }

  CFDictionarySetValue(a2, @"Type", @"Battery Case");
  v32 = @"Accessory Category";
  v34 = a2;
  v33 = @"Battery Case";
LABEL_63:
  CFDictionarySetValue(v34, v32, v33);
  if (CFDictionaryGetValueIfPresent(theDict, @"Accessory Identifier", &value))
  {
    CFDictionarySetValue(a2, @"Accessory Identifier", value);
  }

  result = CFDictionaryGetValueIfPresent(theDict, @"Accessory Category", &value);
  if (result)
  {
    CFDictionarySetValue(a2, @"Accessory Category", value);
    return 0;
  }

  return result;
}

uint64_t sub_100003BE0(uint64_t a1, const __CFDictionary *a2, const __CFSet *a3)
{
  v3 = 3758097084;
  if (a1 && a2 && a3)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      sub_10000355C(a1, Mutable, a2, a3);
    }

    snprintf(__str, 0x14uLL, "/UPS%d", *(a1 + 24));
    v8 = IOPSCreatePowerSource();
    ++dword_10000C064;
    if (v8)
    {
      v3 = v8;
      *a1 = 0;
    }

    else
    {
      v10 = *a1;
      v3 = IOPSSetPowerSourceDetails();
      if (v3)
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        *(a1 + 32) = Mutable;
      }
    }
  }

  return v3;
}

void sub_100003D10(uint64_t a1, CFTypeRef cf1)
{
  v3 = CFEqual(cf1, @"AC Power");
  v31 = 0;
  if (*(a1 + 60))
  {
    LODWORD(values) = 0;
    LODWORD(cf) = 0;
    if (sub_1000049FC(&values, &cf))
    {
      return;
    }

    if (v3)
    {
      AssertionID = 0;
      IOPMAssertionCreateWithName(@"DisableInflow", 0xFFu, @"com.apple.ioupsd.battery_case_disable_inflow", &AssertionID);
      *(a1 + 72) = 1;
      v4 = cf;
      IOAccessoryManagerSetUSBPreventSourceDetection();
      IOAccessoryManagerRestoreUSBCurrentLimitBase();
      IOAccessoryManagerSetUSBCurrentOffset();
      v5 = -21;
      v6 = values;
      while (!__CFADD__(v5++, 1))
      {
        usleep(0x3D090u);
        IOAccessoryManagerGetUSBCurrentLimitBase();
        v8 = qword_10000C050;
        if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.version) = 67109120;
          HIDWORD(buf.version) = v31;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Battery Case AC Present: iLim = %d mA\n", &buf, 8u);
        }

        if (v31)
        {
          v21 = qword_10000C050;
          if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.version) = 67109120;
            HIDWORD(buf.version) = v31;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Initial downstream charger iLim: %d mA\n", &buf, 8u);
          }

          v6 = values;
          goto LABEL_35;
        }
      }

      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005C90();
      }

LABEL_35:
      IOAccessoryManagerSetUSBPowerIgnore();
      sub_100002194(a1, @"Set Current Limit", v31);
      IOPMAssertionRelease(AssertionID);
      AssertionID = 0;
      IOObjectRetain(v6);
      IOServiceAddInterestNotification(qword_10000C058, v6, "IOGeneralInterest", sub_100002758, a1, (a1 + 84));
      v23 = sub_1000012F4();
      IOServiceAddInterestNotification(qword_10000C058, v23, "IOGeneralInterest", sub_100002818, a1, (a1 + 88));
    }

    else
    {
      v4 = cf;
      IOAccessoryManagerSetUSBPreventSourceDetection();
      IOAccessoryManagerSetUSBPowerIgnore();
      IOAccessoryManagerSetUSBCurrentLimitBase();
      *(a1 + 72) = 0;
      v19 = *(a1 + 84);
      if (v19)
      {
        IOObjectRelease(v19);
        *(a1 + 84) = 0;
      }

      v20 = *(a1 + 88);
      if (v20)
      {
        IOObjectRelease(v20);
        *(a1 + 88) = 0;
      }
    }

    IOServiceClose(v4);
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(*(a1 + 32), @"Transport Type");
  if (!CFEqual(Value, @"Inductive In-Band"))
  {
    LODWORD(values) = 0;
    if (sub_1000049FC(&buf, &values))
    {
      return;
    }

    v18 = values;
    IOAccessoryManagerSetUSBPowerIgnore();
    IOServiceClose(v18);
    goto LABEL_51;
  }

  values = 0;
  v34 = 0;
  buf.version = @"Dock";
  buf.info = @"Mask";
  AssertionID = 2;
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &AssertionID);
  v11 = &kCFBooleanFalse;
  if (!v3)
  {
    v11 = &kCFBooleanTrue;
  }

  v12 = *v11;
  values = v10;
  v34 = v12;
  cf = CFDictionaryCreate(kCFAllocatorDefault, &buf, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!cf)
  {
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005D70();
    }

    goto LABEL_37;
  }

  v13 = CFArrayCreate(kCFAllocatorDefault, &cf, 1, &kCFTypeArrayCallBacks);
  if (!v13)
  {
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005DA4();
    }

    goto LABEL_37;
  }

  v14 = v13;
  CFRelease(cf);
  CFRelease(values);
  buf.version = @"DockMask";
  values = v14;
  cf = CFDictionaryCreate(kCFAllocatorDefault, &buf, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!cf)
  {
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005D70();
    }

    goto LABEL_37;
  }

  CFRelease(v14);
  v15 = sub_1000012F4();
  if (v15)
  {
    v16 = v15;
    v17 = qword_10000C050;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEBUG))
    {
      sub_100005CC4(v3, v17);
    }

    if (IORegistryEntrySetCFProperties(v16, cf))
    {
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005D3C();
      }

      goto LABEL_37;
    }

    CFRelease(cf);
LABEL_51:
    *(a1 + 72) = v3;
    v28 = qword_10000C050;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.version) = 67109120;
      HIDWORD(buf.version) = v3;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "AC present %d\n", &buf, 8u);
    }
  }

LABEL_37:
  if (*(a1 + 61))
  {
    if (v3)
    {
      buf.version = 0;
      memset(&buf.retain, 0, 24);
      buf.info = a1;
      Current = CFAbsoluteTimeGetCurrent();
      v25 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 5.0, 5.0, 0, 0, sub_1000028A4, &buf);
      *(a1 + 64) = v25;
      if (v25)
      {
        v26 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v26, *(a1 + 64), kCFRunLoopDefaultMode);
      }

      else if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005DD8();
      }
    }

    else if (*(a1 + 64))
    {
      v27 = CFRunLoopGetCurrent();
      CFRunLoopRemoveTimer(v27, *(a1 + 64), kCFRunLoopDefaultMode);
      CFRelease(*(a1 + 64));
      *(a1 + 64) = 0;
    }
  }
}

void sub_10000434C(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
      if (MutableCopy)
      {
        v4 = MutableCopy;
        if (*(a1 + 56) == 3 && *(a1 + 60) && !*(a1 + 72) && !CFDictionaryGetValue(MutableCopy, @"Battery Case Available Current"))
        {
          Value = CFDictionaryGetValue(*(a1 + 32), @"Battery Case Available Current");
          CFDictionarySetValue(v4, @"Battery Case Available Current", Value);
        }

        Count = CFDictionaryGetCount(v4);
        if (Count)
        {
          v7 = Count;
          v8 = 8 * Count;
          v9 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          v10 = malloc_type_malloc(v8, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(v4, v9, v10);
          if (v7 >= 1)
          {
            v11 = v9;
            v12 = v10;
            do
            {
              if (CFEqual(*v11, @"FamilyCode") && *(a1 + 56) == 3)
              {
                v13 = CFDictionaryGetValue(*(a1 + 32), *v11);
                if (!v13 || !CFEqual(v13, *v12))
                {
                  sub_100005598(*v12);
                }
              }

              else if (CFEqual(*v11, @"Power Source State") && *(a1 + 56) == 3)
              {
                v14 = CFDictionaryGetValue(*(a1 + 32), *v11);
                if (v14 && !CFEqual(v14, *v12))
                {
                  sub_100003D10(a1, *v12);
                }
              }

              else if (CFEqual(*v11, @"Battery Case Available Current") && *(a1 + 56) == 3 && *(a1 + 60) && !*(a1 + 72))
              {
                sub_100001FD8(*v12);
              }

              v16 = *v11++;
              v15 = v16;
              v17 = *v12++;
              CFDictionarySetValue(*(a1 + 32), v15, v17);
              --v7;
            }

            while (v7);
          }

          free(v9);
          free(v10);
          v18 = *a1;
          v19 = *(a1 + 32);
          if (IOPSSetPowerSourceDetails())
          {
            if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
            {
              sub_100005E0C();
            }
          }
        }

        CFRelease(v4);
      }
    }
  }
}

void sub_1000045B8(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a3 == -536870896)
  {
    v4 = *(a1 + 32);
    if (v4 && (Value = CFDictionaryGetValue(v4, @"Transport Type"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Inductive In-Band"))
    {
      v7 = (byte_10000C048 & 0x7D) == 0;
      byte_10000C048 &= 0x7Du;
      if (v7)
      {
        sub_1000046A8(a1);
        qword_10000C090 = 0;
      }

      else
      {

        sub_100004AE0(a1);
      }
    }

    else
    {

      sub_1000046A8(a1);
    }
  }
}

void sub_1000046A8(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 28) = 0;
    if (*(a1 + 56) == 3)
    {
      sub_100005E40();
    }

    sub_100004AE0(a1);
    if (*a1)
    {
      v2 = IOPSReleasePowerSource();
      --dword_10000C064;
      if (v2 && os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_100005E7C();
      }

      *a1 = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }

    if (!dword_10000C064)
    {
      CFRelease(qword_10000C070);
      sub_100001C24();
    }
  }
}

uint64_t sub_10000476C()
{
  if (!qword_10000C098)
  {
    qword_10000C098 = _sl_dlopen();
  }

  return qword_10000C098;
}

uint64_t sub_10000483C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10000C0A0;
  v6 = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100004978;
    v2[3] = &unk_100008570;
    v2[4] = &v3;
    sub_100004978(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000048EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004904(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C098 = result;
  return result;
}

void *sub_100004978(uint64_t a1)
{
  v4 = 0;
  v2 = sub_10000476C();
  if (!v2)
  {
    sub_100005EF0(&v4);
  }

  result = dlsym(v2, "ACCConnectionInfoCopyLocalizedAccessoryNameCF");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000C0A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000049FC(io_service_t *a1, io_connect_t *a2)
{
  connect = 0;
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (ServiceWithPrimaryPort)
  {
    v5 = ServiceWithPrimaryPort;
    v6 = IOServiceOpen(ServiceWithPrimaryPort, mach_task_self_, 0, &connect);
    if (v6)
    {
      v7 = v6;
      v8 = 3758097101;
      v9 = qword_10000C050;
      if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
      {
        sub_1000058B4(v9, v7);
      }
    }

    else
    {
      v8 = 0;
      *a1 = v5;
      *a2 = connect;
    }
  }

  else
  {
    v8 = 3758097136;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_ERROR))
    {
      sub_100005940();
    }
  }

  return v8;
}

uint64_t sub_100004AE0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 40), kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  if (*(a1 + 48))
  {
    v3 = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(v3, *(a1 + 48), kCFRunLoopDefaultMode);
    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    IOObjectRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 84);
  if (v7)
  {
    IOObjectRelease(v7);
    *(a1 + 84) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    IOObjectRelease(v8);
    *(a1 + 88) = 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 8) = 0;
  }

  return result;
}

void sub_100004BA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100004BF4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100004C14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100004C34(_DWORD *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 < 60000 || v2 >= 60003)
  {
    return 0;
  }

  v5 = (a1 + ((a1[1] + 3) & 0x1FFFFFFFCLL));
  if (*v5 || v5[1] < 0x14u)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5[3];
  }

  dword_10000C040 = v6;
  return sub_100005500(a1, a2);
}

void sub_100004C94(uint64_t a1, mach_msg_header_t *a2)
{
  Typed = CFAllocatorAllocateTyped();
  v4 = Typed;
  if (Typed)
  {
    bzero(Typed, 0x38uLL);
  }

  sub_100004C34(a2, v4);
  if ((v4->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v4[1].msgh_remote_port;
    if (msgh_remote_port == -305)
    {
      goto LABEL_13;
    }

    if (msgh_remote_port)
    {
      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }
  }

  if (v4->msgh_remote_port)
  {
    if ((v4->msgh_bits & 0x1F) == 0x12)
    {
      v6 = 17;
    }

    else
    {
      v6 = 1;
    }

    if ((mach_msg(v4, v6, v4->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v4->msgh_bits & 0x80000000) != 0)
  {
LABEL_12:
    mach_msg_destroy(v4);
  }

LABEL_13:

  CFAllocatorDeallocate(0, v4);
}

uint64_t sub_100004D94(mach_port_t a1, int a2, uint64_t a3, int a4)
{
  v11 = 1;
  v12 = a3;
  v13 = 16777472;
  v14 = a4;
  v15 = NDR_record;
  v16 = a2;
  v17 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0xEA6000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x3Cu, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v8;
  }

  if (v7)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v8;
  }

  if (msg.msgh_id == 71)
  {
    v8 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v8;
  }

  if (msg.msgh_id != 60100)
  {
    v8 = 4294966995;
    goto LABEL_18;
  }

  v8 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v8 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_18;
  }

  return v8;
}

uint64_t sub_100004F10(mach_port_t a1, int a2, void *a3, _DWORD *a4)
{
  memset(&v14[1] + 4, 0, 28);
  msg.msgh_size = 0;
  v14[0] = NDR_record;
  LODWORD(v14[1]) = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0xEA6100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x24u, 0x40u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 60101)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (LODWORD(v14[0]) == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v14[1]) == 1)
          {
            v11 = v14[2];
            if (LODWORD(v14[2]) == HIDWORD(v14[3]))
            {
              v10 = 0;
              *a3 = *(v14 + 4);
              *a4 = v11;
              return v10;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v10 = 4294966996;
          if (LODWORD(v14[1]))
          {
            if (msg.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v14[1]);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v10;
}

uint64_t sub_1000050F0(mach_port_t a1, int a2, void *a3, _DWORD *a4)
{
  memset(&v14[1] + 4, 0, 28);
  msg.msgh_size = 0;
  v14[0] = NDR_record;
  LODWORD(v14[1]) = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0xEA6200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x24u, 0x40u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 60102)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (LODWORD(v14[0]) == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v14[1]) == 1)
          {
            v11 = v14[2];
            if (LODWORD(v14[2]) == HIDWORD(v14[3]))
            {
              v10 = 0;
              *a3 = *(v14 + 4);
              *a4 = v11;
              return v10;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v10 = 4294966996;
          if (LODWORD(v14[1]))
          {
            if (msg.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v14[1]);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v10;
}

uint64_t sub_1000052D0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 60003) >= 0xFFFFFFFD)
  {
    return *(&off_100008590 + 5 * (v1 - 60000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000530C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 56))
    {
      result = sub_10000299C(*(a1 + 12), *(a1 + 52), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1000053A0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100002A5C(result[3], result[8], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_100005450(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100002B74(result[3], result[8], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100005500(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 60003) >= 0xFFFFFFFD && (v5 = *(&off_100008590 + 5 * (v4 - 60000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

const __CFNumber *sub_100005598(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    v2 = qword_10000C050;
    if (os_log_type_enabled(qword_10000C050, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = valuePtr;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "adapter family %x\n", buf, 8u);
    }

    v3 = IOServiceMatching("AppleSmartBattery");
    result = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    if (result)
    {
      v4 = result;
      IORegistryEntrySetCFProperty(result, @"DownstreamAdapterFamily", v1);
      return IOObjectRelease(v4);
    }
  }

  return result;
}

void sub_1000057C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 32);
  }

  sub_100004BDC();
  sub_100004BF4(&_mh_execute_header, v3, v4, "IsCurrentLimitControlRequired: invalid UPS struct upsData=%p, storeDict%p\n", v5, v6);
}

void sub_10000583C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 32);
  }

  sub_100004BDC();
  sub_100004BF4(&_mh_execute_header, v3, v4, "AreAverageChargeCurrentUpdatesRequired: invalid UPS struct upsData=%p, storeDict%p\n", v5, v6);
}

void sub_1000058B4(void *a1, mach_error_t a2)
{
  v3 = a1;
  mach_error_string(a2);
  sub_100004C14(&_mh_execute_header, v4, v5, "could not open IOAccessoryManager service: %s\n", v6, v7, v8, v9, 2u);
}

void sub_1000059BC(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10[0] = 67110656;
  v10[1] = v3;
  v11 = 1024;
  v12 = v4;
  v13 = 1024;
  v14 = v5;
  v15 = 1024;
  v16 = v6;
  v17 = 1024;
  v18 = v7;
  v19 = 1024;
  v20 = v8;
  v21 = 1024;
  v22 = v9;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "assigning battery case (ID=%d) new address: %02x %02x %02x %0x %02x %02x\n", v10, 0x2Cu);
}

void sub_100005B24(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "UPSDeviceAdded: isInductive\n", buf, 2u);
}

void sub_100005B64(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "UPSDeviceAdded: isInductive: Created\n", buf, 2u);
}

void sub_100005C18()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFStringRef softACCConnectionInfoCopyLocalizedAccessoryNameCF(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"upsd.m" lineNumber:76 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100005CC4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "HandleACStateChange: ACPowerValue:%d\n", v2, 8u);
}

const __CFNumber *sub_100005E40()
{
  valuePtr = 0;
  v0 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  return sub_100005598(v0);
}

void sub_100005EF0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CoreAccessoriesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"upsd.m" lineNumber:74 description:{@"%s", *a1}];

  __break(1u);
  CFAbsoluteTimeGetCurrent();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}