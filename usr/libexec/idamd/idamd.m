void sub_100000888()
{
  theInterface = 0;
  v27 = 0;
  theScore = 0;
  v0 = IOServiceMatching("IOUSBDeviceInterface");
  if (!v0)
  {
    v14 = qword_100008000;
    if (!os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v11 = "Failed to create matchingDict";
    v12 = v14;
    v13 = 2;
    goto LABEL_11;
  }

  v1 = v0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"USBDeviceFunction", @"IDAMInterface");
    CFDictionarySetValue(v1, @"IOPropertyMatch", v3);
    CFRelease(v3);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
    if (!MatchingService)
    {
      v5 = qword_100008000;
      if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to find a matching service!", buf, 2u);
      }
    }

    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Eu, 0x72u, 0x21u, 0x7Eu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0xBFu, 0x57u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v8 = IOCreatePlugInInterfaceForService(MatchingService, v6, v7, &theInterface, &theScore);
    if (v8)
    {
      v9 = v8;
      v10 = qword_100008000;
      if (!os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v29 = v9;
      v11 = "IOCreatePlugInInterfaceForService failed: 0x%08x";
      v12 = v10;
      v13 = 8;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      return;
    }

    v16 = theInterface;
    QueryInterface = (*theInterface)->QueryInterface;
    v18 = CFUUIDGetConstantUUIDWithBytes(0, 0xEAu, 0x33u, 0xBAu, 0x4Fu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0x84u, 0xDBu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    v19 = CFUUIDGetUUIDBytes(v18);
    v20 = (QueryInterface)(v16, *&v19.byte0, *&v19.byte8, &v27);
    v21 = v27;
    if (!v20 && v27)
    {
      v22 = (*(*v27 + 248))();
      if (v22)
      {
        v23 = v22;
        v24 = qword_100008000;
        if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "com.apple.idamd couldn't set the IDAM configuration due to error 0x%x", buf, 8u);
        }
      }

      else
      {
        syslog(5, "com.apple.idamd set IDAM configuration.");
      }

      v21 = v27;
    }

    if (v21)
    {
      (*(*v21 + 24))(v21);
    }

    if (theInterface)
    {
      IODestroyPlugInInterface(theInterface);
    }
  }

  else
  {
    v15 = qword_100008000;
    if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed CFDictionaryCreateMutable", buf, 2u);
    }

    CFRelease(v1);
  }
}

uint64_t sub_100000C3C()
{
  v0 = IOUSBDeviceControllerCreate();
  v1 = qword_100008000;
  v2 = os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v2)
    {
      *buf = 67109120;
      v5 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "com.apple.idamd couldn't create an IOUSBDeviceControllerRef due to error 0x%x", buf, 8u);
    }
  }

  else
  {
    if (v2)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "com.apple.idamd set default USB configuration.", buf, 2u);
    }

    IOUSBDeviceControllerGoOffAndOnBus();
    CFRelease(0);
  }

  return v0;
}

BOOL sub_100000D40()
{
  v0 = IOServiceMatching("AppleUSBDeviceAudioDevice");
  if (v0)
  {
    v1 = IOServiceGetMatchingService(kIOMasterPortDefault, v0) != 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_100008000;
  if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "false";
    if (v1)
    {
      v3 = "true";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "inIDAMConfiguration returning %s", &v5, 0xCu);
  }

  return v1;
}

void sub_100000E2C()
{
  while (1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    *cf = 0;
    v1 = lockdown_receive_message();
    v2 = *cf;
    if (!v1 && *cf)
    {
      v3 = CFGetTypeID(*cf);
      if (v3 == CFDictionaryGetTypeID())
      {
        v4 = qword_100008000;
        if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "lockdown_receive_message received a plist mesage.\n", buf, 2u);
        }

        Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *cf);
LABEL_11:
        v2 = *cf;
        if (!*cf)
        {
          goto LABEL_13;
        }

LABEL_12:
        CFRelease(v2);
        goto LABEL_13;
      }

LABEL_10:
      Copy = 0;
      goto LABEL_11;
    }

    if (v1)
    {
      v6 = qword_100008000;
      if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = v1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "lockdown_receive_message returned error %x\n", buf, 8u);
      }

      goto LABEL_10;
    }

    Copy = 0;
    if (*cf)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (!Copy)
    {
      break;
    }

    v7 = CFDictionaryContainsKey(Copy, @"Configuration Inquiry");
    if (v7)
    {
      v8 = sub_100000D40();
      v9 = qword_100008000;
      if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "Default";
        if (v8)
        {
          v10 = "IDAM";
        }

        *cf = 136315138;
        *&cf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuration Inquiry -> %s configuration\n", cf, 0xCu);
      }

      if (v8)
      {
        v11 = kCFBooleanTrue;
      }

      else
      {
        v11 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(Mutable, @"IDAM Configuration Active", v11);
      v12 = MGGetSInt32Answer();
      if ((MGGetBoolAnswer() & 1) != 0 || (v15 = kCFBooleanFalse, (v12 - 1) >= 4) && (v15 = kCFBooleanFalse, v12 != 7))
      {
        v13 = qword_100008000;
        v14 = os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT);
        v15 = kCFBooleanTrue;
        if (v14)
        {
          *cf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Configuration Inquiry -> Low End Hardware", cf, 2u);
          v15 = kCFBooleanTrue;
        }
      }

      CFDictionaryAddValue(Mutable, @"Low End Hardware", v15);
    }

    if (!CFDictionaryContainsKey(Copy, @"Set IDAM Configuration") || (Value = CFDictionaryGetValue(Copy, @"Set IDAM Configuration")) == 0)
    {
LABEL_38:
      if (!v7)
      {
        goto LABEL_42;
      }

LABEL_39:
      v19 = lockdown_send_message();
      if (v19)
      {
        v20 = v19;
        v21 = qword_100008000;
        if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 67109120;
          *&cf[4] = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Got error %x from lockdown_send_message\n", cf, 8u);
        }
      }

      goto LABEL_42;
    }

    v17 = Value;
    if (CFBooleanGetValue(Value))
    {
      v18 = qword_100008000;
      if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set IDAM Configuration -> TRUE\n", cf, 2u);
      }

      sub_100000888();
      if (v7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (CFBooleanGetValue(v17))
      {
        goto LABEL_38;
      }

      v22 = qword_100008000;
      if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Set IDAM Configuration -> FALSE\n", cf, 2u);
      }

      sub_100000C3C();
      if (v7)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    CFRelease(Copy);
    CFRelease(Mutable);
  }

  CFRelease(Mutable);
}

void start()
{
  lockdown_checkin_xpc();
  v0 = qword_100008000;
  if (os_log_type_enabled(qword_100008000, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "com.apple.idamd now checked in with lockdown.", v1, 2u);
  }

  dispatch_main();
}

void sub_1000012D0(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  sub_100000E2C();

  _lockdown_disconnect(a2);
}

os_log_t sub_10000130C()
{
  result = os_log_create("com.apple.idamd", "idam");
  qword_100008000 = result;
  return result;
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