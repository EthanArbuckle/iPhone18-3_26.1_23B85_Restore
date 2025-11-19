BOOL sub_100000CC0()
{
  qword_1004ECA48 = dlopen("/usr/lib/AppleConvergedTransport.dylib", 1);
  if (qword_1004ECA48)
  {
    dlerror();
    off_1004ECA50 = dlsym(qword_1004ECA48, "AppleConvergedTransportInitParameters");
    if (dlerror() || !off_1004ECA50)
    {
      if (qword_1004EE428 != -1)
      {
        sub_100047490();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_1000474A4();
      }
    }

    else
    {
      off_1004ECA58 = dlsym(qword_1004ECA48, "AppleConvergedTransportCreate");
      if (dlerror() || !off_1004ECA58)
      {
        if (qword_1004EE428 != -1)
        {
          sub_100047520();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_100047534();
        }
      }

      else
      {
        off_1004ECA60 = dlsym(qword_1004ECA48, "AppleConvergedTransportSendImage");
        if (dlerror() || !off_1004ECA60)
        {
          if (qword_1004EE428 != -1)
          {
            sub_1000475B0();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_1000475C4();
          }
        }

        else
        {
          off_1004ECA68 = dlsym(qword_1004ECA48, "AppleConvergedTransportRead");
          if (dlerror() || !off_1004ECA68)
          {
            if (qword_1004EE428 != -1)
            {
              sub_100047640();
            }

            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              sub_100047654();
            }
          }

          else
          {
            off_1004ECA70 = dlsym(qword_1004ECA48, "AppleConvergedTransportWrite");
            if (dlerror() || !off_1004ECA70)
            {
              if (qword_1004EE428 != -1)
              {
                sub_1000476D0();
              }

              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_1000476E4();
              }
            }

            else
            {
              off_1004ECA78 = dlsym(qword_1004ECA48, "AppleConvergedTransportFree");
              if (!dlerror() && off_1004ECA78)
              {
                return 1;
              }

              if (qword_1004EE428 != -1)
              {
                sub_100047760();
              }

              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_100047774();
              }
            }
          }
        }
      }
    }

    dlclose(qword_1004ECA48);
    return 0;
  }

  if (qword_1004EE428 != -1)
  {
    sub_1000477F0();
  }

  v1 = qword_1004EE430;
  result = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100047804(v1);
    return 0;
  }

  return result;
}

uint64_t sub_100001180(uint64_t *a1, void *a2, size_t a3, size_t *a4)
{
  if (!a1 || !*a1 || !a4 || (v5 = *(a1 + 3), v5 == -1))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047C8C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047CA0();
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  os_channel_ring_id();
  os_channel_rx_ring();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *__src = 0u;
  memset(&v11, 0, sizeof(v11));
  if (kevent(v5, 0, 0, &v11, 1, 0) == -1 || v11.filter != 0xFFFF)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047BE4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047C0C();
    }

    return 0xFFFFFFFFLL;
  }

  if (!os_channel_get_next_slot())
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047B3C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047B64();
    }

    return 0xFFFFFFFFLL;
  }

  v9 = WORD1(v12);
  if (qword_1004EE428 != -1)
  {
    sub_100047898();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_1000478C0();
  }

  if (v9 > a3)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047A90();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047AB8();
    }

    return 0xFFFFFFFFLL;
  }

  memcpy(a2, __src[0], v9);
  *a4 = v9;
  if (os_channel_advance_slot())
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047948();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047970();
    }

    return 0xFFFFFFFFLL;
  }

  result = os_channel_sync();
  if (result)
  {
    if (qword_1004EE428 != -1)
    {
      sub_1000479EC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047A14();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000015DC()
{
  if (qword_1004EE428 != -1)
  {
    sub_100047D20();
  }

  connect = 0;
  v0 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "PCIe FLR\n", buf, 2u);
  }

  v1 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047E8C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047EB4();
    }

    return 0xFFFFFFFFLL;
  }

  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047D34();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047D5C();
    }

    return 0xFFFFFFFFLL;
  }

  if (IOConnectCallScalarMethod(connect, 5u, 0, 0, 0, 0))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047DCC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047DF4();
    }

    IOServiceClose(connect);
    return 0xFFFFFFFFLL;
  }

  if (qword_1004EE428 != -1)
  {
    sub_100047E64();
  }

  v4 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "pcie_flr";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IOConnectCallScalarMethod succeed and ready to close IO service from %s", buf, 0xCu);
  }

  IOServiceClose(connect);
  result = 0;
  byte_1004ECA80 = 0;
  return result;
}

uint64_t sub_100001930()
{
  if (qword_1004EE428 != -1)
  {
    sub_100047EF0();
  }

  connect = 0;
  v0 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "PCIe powercycle\n", v4, 2u);
  }

  v1 = IOServiceMatching("AppleBluetoothModule");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047FC4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047EB4();
    }

    return 0xFFFFFFFFLL;
  }

  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047F04();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047D5C();
    }

    return 0xFFFFFFFFLL;
  }

  if (IOConnectCallScalarMethod(connect, 3u, 0, 0, 0, 0))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047F2C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100047F54();
    }

    IOServiceClose(connect);
    return 0xFFFFFFFFLL;
  }

  IOServiceClose(connect);
  result = 0;
  byte_1004ECA80 = 0;
  return result;
}

uint64_t sub_100001BC4()
{
  fwrite("-D           - Open pci transport (boot/hci)\n", 0x2DuLL, 1uLL, __stderrp);
  fwrite("-h           - Print device help prompt\n", 0x28uLL, 1uLL, __stderrp);
  v0 = __stderrp;

  return fputc(10, v0);
}

uint64_t sub_100001C30()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100001D7C;
  block[3] = &unk_1004E4CC8;
  block[4] = &v5;
  if (qword_1004ECA88 != -1)
  {
    dispatch_once(&qword_1004ECA88, block);
  }

  if (v6[3])
  {
    if (byte_1004ECA80)
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }

    if (sub_100001DE0(v0))
    {
      if (byte_1004ECA80)
      {
        v1 = 1;
      }

      else
      {
        v1 = 2;
      }

      v2 = sub_100001DE0(v1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_100047FEC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048014();
    }

    v2 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL sub_100001D7C(uint64_t a1)
{
  result = sub_100000CC0();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100001DE0(int a1)
{
  if (a1 != 2)
  {
    goto LABEL_19;
  }

  *notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v5 = IOServiceMatching("AppleConvergedIPCInterface");
  if (!v5)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048914();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048928();
    }

    goto LABEL_19;
  }

  v6 = v5;
  v7 = CFStringCreateWithCString(kCFAllocatorDefault, "hci", 0x600u);
  if (!v7)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048880();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048894();
    }

    CFRelease(v6);
    goto LABEL_19;
  }

  v8 = v7;
  CFDictionarySetValue(v6, @"ACIPCInterfaceProtocol", v7);
  CFRelease(v8);
  if (IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", v6, sub_100003550, Current, notification))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048050();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048078();
    }

    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    goto LABEL_19;
  }

  v15 = IOIteratorNext(*notification);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0xFFFF;
  }

  else
  {
    do
    {
      if (qword_1004EE428 != -1)
      {
        sub_1000480E8();
      }

      v25 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ACIPCInterface not found, waiting for it to appear", buffer, 2u);
      }

      v18 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
      v16 = IOIteratorNext(*notification);
      v17 = v16 == 0;
    }

    while (!v16 && v18 != kCFRunLoopRunTimedOut);
  }

  CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(v2);
  IOObjectRelease(*notification);
  if (!v17 && (v18 == 0xFFFF || v18 == kCFRunLoopRunStopped))
  {
    v19 = IORegistryEntrySearchCFProperty(v16, "IOService", @"ACIPCInterfaceTransport", kCFAllocatorDefault, 1u);
    if (!v19)
    {
      if (qword_1004EE428 != -1)
      {
        sub_100048214();
      }

      v26 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "ACIPCInterface found, ACIPCInterfaceTransport property not found", buffer, 2u);
      }

      IOObjectRelease(v16);
      goto LABEL_19;
    }

    v20 = v19;
    *buffer = 0;
    *&buffer[8] = 0;
    if (CFStringGetCString(v19, buffer, 16, 0x600u))
    {
      if (qword_1004EE428 != -1)
      {
        sub_100048110();
      }

      v21 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.ident) = 136315138;
        *(&buf.ident + 4) = buffer;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ACIPCInterfaceTransport %s\n", &buf, 0xCu);
      }

      if (*buffer == 0x6B6C6177796B73)
      {
        v44 = 0;
        while (1)
        {
          v45 = IORegistryEntrySearchCFProperty(v16, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
          if (v45)
          {
            break;
          }

          usleep(0x30D40u);
          if (qword_1004EE428 != -1)
          {
            sub_100048188();
          }

          v46 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.ident) = 67109120;
            HIDWORD(buf.ident) = v44;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Retry: %d - trying to find ACIPCInterfaceTransport + IOSkywalkNexusUUID\n", &buf, 8u);
          }

          if (++v44 == 25)
          {
            v24 = 0;
            goto LABEL_82;
          }
        }

        v47 = v45;
        if (qword_1004EE428 != -1)
        {
          sub_100048160();
        }

        v48 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.ident) = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "ACIPCInterfaceTransport + IOSkywalkNexusUUID found\n", &buf, 2u);
        }

        CFRelease(v47);
        v24 = 1;
LABEL_82:
        CFRelease(v20);
        if (!v16)
        {
          goto LABEL_83;
        }

        goto LABEL_63;
      }

      if (qword_1004EE428 != -1)
      {
        sub_100048138();
      }

      v22 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.ident) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ACIPCInterfaceTransport is not skywalk\n", &buf, 2u);
      }
    }

    else
    {
      if (qword_1004EE428 != -1)
      {
        sub_1000481B0();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_1000481D8();
      }
    }

    v24 = 0;
    goto LABEL_82;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004823C();
  }

  v23 = qword_1004EE430;
  v24 = 0;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 67109120;
    *&buffer[4] = v18;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ACIPCInterface not found after 5 second -- runLoopResult = 0x%02x", buffer, 8u);
    v24 = 0;
  }

  if (!v16)
  {
LABEL_83:
    if (v24)
    {
      goto LABEL_84;
    }

LABEL_19:
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    memset(buffer, 0, sizeof(buffer));
    if (!qword_1004ECAA8)
    {
      v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
      qword_1004ECAA8 = dispatch_queue_create("com.apple.BlueTool.pcie", v9);
    }

    off_1004ECA50(buffer);
    *buffer = a1;
    *&buffer[24] = 1000;
    *&buffer[8] = qword_1004ECAA8;
    if (a1 == 2)
    {
      *&buffer[32] |= 8u;
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 0x40000000;
    v49[2] = sub_1000030E8;
    v49[3] = &unk_1004E4DE8;
    v50 = a1;
    *&buffer[16] = v49;
    if (qword_1004EE428 != -1)
    {
      sub_1000489A8();
    }

    v10 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      v11 = "BTI";
      if (a1 == 2)
      {
        v11 = "HCI";
      }

      LODWORD(buf.ident) = 136315138;
      *(&buf.ident + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PCIe creating %s transport\n", &buf, 0xCu);
    }

    if (off_1004ECA58(buffer, &qword_1004ECA90))
    {
      if (qword_1004EE428 != -1)
      {
        sub_100048A84();
      }

      v12 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        v13 = "BTI";
        if (a1 == 2)
        {
          v13 = "HCI";
        }

        LODWORD(buf.ident) = 136315138;
        *(&buf.ident + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PCIe successfully created %s transport\n", &buf, 0xCu);
      }

      result = 0;
      strcpy(&xmmword_1004EDFC8, "PCIE");
      dword_1004EE420 = 0;
      off_1004EE3D8 = sub_1000032D0;
      off_1004EE3E0 = sub_1000032D8;
      off_1004EE3E8 = sub_1000032E4;
      off_1004EE3F0 = sub_1000032EC;
      off_1004EE3F8 = sub_100003414;
      off_1004EE408 = sub_1000034D4;
      off_1004EE400 = sub_1000034D8;
      qword_1004EE3C8 = 0;
      dword_1004EE3D0 = 1;
      off_1004EE410 = nullsub_1;
      off_1004EE418 = nullsub_2;
      byte_1004EE424 = 1;
      return result;
    }

    if (qword_1004EE428 != -1)
    {
      sub_1000489D0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_1000489F8();
    }

    return 0xFFFFFFFFLL;
  }

LABEL_63:
  IOObjectRelease(v16);
  if ((v24 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_84:
  qword_1004ECA98 = 0;
  qword_1004ECAA0 = -1;
  if (qword_1004EE428 != -1)
  {
    sub_100048264();
  }

  memset(&buf, 0, sizeof(buf));
  memset(uu, 0, sizeof(uu));
  memset(buffer, 0, 37);
  v27 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *notification = 136315138;
    *&notification[4] = "hci";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "retrieving uuid for %s", notification, 0xCu);
  }

  v28 = IOServiceMatching("AppleConvergedIPCInterface");
  if (!v28)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048774();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004879C();
    }

    goto LABEL_140;
  }

  v29 = v28;
  v30 = CFStringCreateWithCString(kCFAllocatorDefault, "hci", 0x600u);
  if (!v30)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048710();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048738();
    }

    v43 = v29;
    goto LABEL_123;
  }

  v31 = v30;
  CFDictionarySetValue(v29, @"ACIPCInterfaceProtocol", v30);
  CFRelease(v31);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v29);
  if (!MatchingService)
  {
    if (qword_1004EE428 != -1)
    {
      sub_1000486AC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_1000486D4();
    }

    goto LABEL_140;
  }

  v33 = MatchingService;
  v34 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSkywalkNexusUUID", kCFAllocatorDefault, 1u);
  IOObjectRelease(v33);
  if (!v34)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048648();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048670();
    }

    goto LABEL_140;
  }

  if (!CFStringGetCString(v34, buffer, 37, 0x600u))
  {
    if (qword_1004EE428 != -1)
    {
      sub_1000485A0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_1000485C8();
    }

    v43 = v34;
LABEL_123:
    CFRelease(v43);
LABEL_140:
    if (qword_1004EE428 != -1)
    {
      sub_1000487D8();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048800();
    }

    return 0xFFFFFFFFLL;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004828C();
  }

  v35 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *notification = 136315394;
    *&notification[4] = "hci";
    v60 = 2080;
    v61 = buffer;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "protocol: %s, uuidstr: %s", notification, 0x16u);
  }

  uuid_parse(buffer, uu);
  CFRelease(v34);
  v36 = os_channel_create();
  if (!v36)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048494();
    }

    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    sub_1000484BC();
    goto LABEL_174;
  }

  qword_1004ECA98 = v36;
  if (os_channel_attr_create())
  {
    if (!os_channel_read_attr())
    {
      *notification = 0;
      v51 = 0;
      v52 = 0;
      os_channel_attr_get();
      os_channel_attr_get();
      os_channel_attr_get();
      if (qword_1004EE428 != -1)
      {
        sub_1000482B4();
      }

      v37 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 134218496;
        *&buffer[4] = *notification;
        *&buffer[12] = 2048;
        *&buffer[14] = v52;
        *&buffer[22] = 2048;
        *&buffer[24] = v51;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "skywalk channel slotlen: %llu, rxslots: %llu, txslots: %llu", buffer, 0x20u);
      }
    }

    os_channel_attr_destroy();
  }

  v38 = kqueue();
  if (v38 == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048430();
    }

    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    sub_100048458();
    goto LABEL_174;
  }

  v39 = v38;
  LODWORD(qword_1004ECAA0) = v38;
  buf.ident = os_channel_get_fd();
  memset(&buf.fflags, 0, 20);
  *&buf.filter = 393214;
  if (kevent(v39, &buf, 1, 0, 0, 0) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_1000483CC();
    }

    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    sub_1000483F4();
    goto LABEL_174;
  }

  v40 = kqueue();
  if (v40 == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048368();
    }

    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    sub_100048390();
    goto LABEL_174;
  }

  v41 = v40;
  HIDWORD(qword_1004ECAA0) = v40;
  buf.ident = os_channel_get_fd();
  *&buf.filter = 393215;
  *(&buf | 0xC) = 0;
  *((&buf | 0xC) + 8) = 0;
  *((&buf | 0xC) + 0x10) = 0;
  if (kevent(v41, &buf, 1, 0, 0, 0) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048304();
    }

    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    sub_10004832C();
LABEL_174:
    if (qword_1004EE428 != -1)
    {
      sub_1000484F8();
    }

LABEL_176:
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048520();
    }

    sub_100003E0C(&qword_1004ECA98);
    return 0xFFFFFFFFLL;
  }

  if (qword_1004EE428 != -1)
  {
    sub_1000482DC();
  }

  v42 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136315138;
    *&buffer[4] = "hci";
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "channel created successfully for %s", buffer, 0xCu);
  }

  result = 0;
  strcpy(&xmmword_1004EDFC8, "PCIE");
  dword_1004EE420 = 0;
  off_1004EE3D8 = sub_100003988;
  off_1004EE3E0 = sub_100003990;
  off_1004EE3E8 = sub_10000399C;
  off_1004EE3F0 = sub_1000039A4;
  off_1004EE3F8 = sub_100003CFC;
  off_1004EE408 = sub_100003DA8;
  off_1004EE400 = sub_100003DC8;
  qword_1004EE3C8 = 0;
  dword_1004EE3D0 = 1;
  off_1004EE410 = nullsub_3;
  off_1004EE418 = nullsub_4;
  byte_1004EE424 = 1;
  return result;
}

uint64_t sub_100002ED4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (off_1004ECA60(qword_1004ECA90, a1, a2, &v5 + 4, 2000, &v5, 0))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048B10();
    }

    v2 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PCIe successfully transferred FW File\n", v4, 2u);
    }

    sub_100003048();
    byte_1004ECA80 = 1;
    return sub_100001DE0(2);
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048AAC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048AD4();
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_100003048()
{
  if (dword_1004EE3D0)
  {
    if ((off_1004ECA78(&qword_1004ECA90) & 1) == 0)
    {
      if (qword_1004EE428 != -1)
      {
        sub_100048B38();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_100048B4C();
      }
    }

    dispatch_release(qword_1004ECAA8);
    qword_1004ECAA8 = 0;
    dword_1004EE3D0 = 0;
    byte_1004EE424 = 0;
  }
}

void sub_1000030E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1004EE428 != -1)
  {
    sub_100048B88();
  }

  v8 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v11 = 136315906;
    if (v9 == 2)
    {
      v10 = "HCI";
    }

    else
    {
      v10 = "BTI";
    }

    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PCIe %s transport got status %u with args %p and %p\n", &v11, 0x26u);
  }
}

uint64_t sub_1000032EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v4 = off_1004ECA70(qword_1004ECA90, a2, a3, &v8, 0xFFFFFFFFLL, 0);
  result = 0;
  if (v4)
  {
    v6 = v8 == a3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048B9C();
    }

    v7 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v10 = v4;
      v11 = 1024;
      v12 = v8;
      v13 = 2048;
      v14 = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PCIe write failed: ret %u, written %u, expected %zu\n", buf, 0x18u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100003414(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  if (off_1004ECA68(qword_1004ECA90))
  {
    result = 0;
    v6 = v7;
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048BC4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048BEC(&v7);
    }

    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  *a4 = v6;
  return result;
}

void sub_100003550(__CFRunLoop *a1)
{
  if (qword_1004EE428 != -1)
  {
    sub_100048C68();
  }

  v2 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ACIPCInterface found, releasing waiting thread", v3, 2u);
  }

  CFRunLoopStop(a1);
}

uint64_t sub_1000039A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1004ECA98 || !a2 || (v3 = qword_1004ECAA0, qword_1004ECAA0 == -1))
  {
    if (qword_1004EE428 != -1)
    {
      sub_100049000();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049014();
    }

    return 0xFFFFFFFFLL;
  }

  os_channel_ring_id();
  os_channel_tx_ring();
  if (!os_channel_get_next_slot())
  {
    while (1)
    {
      if (qword_1004EE428 != -1)
      {
        sub_100048C7C();
      }

      v6 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.ident) = 136315138;
        *(&buf.ident + 4) = "skywalk_write_channel";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: empty slot. waiting for slot to become available", &buf, 0xCu);
      }

      memset(&buf, 0, sizeof(buf));
      if (kevent(v3, 0, 0, &buf, 1, 0) == -1 || buf.filter != 65534)
      {
        break;
      }

      if (os_channel_get_next_slot())
      {
        goto LABEL_5;
      }
    }

    if (qword_1004EE428 != -1)
    {
      sub_100048CA4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048CCC();
    }

    return 0xFFFFFFFFLL;
  }

LABEL_5:
  if (qword_1004EE428 != -1)
  {
    sub_100048D4C();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_100048D74();
  }

  if (a3)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048F48();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048F70();
    }

    return 0xFFFFFFFFLL;
  }

  os_channel_set_slot_properties();
  if (os_channel_advance_slot())
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048DFC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048E24();
    }

    return 0xFFFFFFFFLL;
  }

  result = os_channel_sync();
  if (result)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100048EA0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100048EC8();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100003CFC(uint64_t a1, void *a2, size_t a3, uint64_t *a4)
{
  v7 = 0;
  result = sub_100001180(&qword_1004ECA98, a2, a3, &v7);
  if (result)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100049094();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_1000490BC(&v7);
    }

    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v7;
  }

  *a4 = v6;
  return result;
}

void sub_100003DA8()
{
  if (dword_1004EE3D0)
  {
    sub_100003E0C(&qword_1004ECA98);
  }
}

void sub_100003E0C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2 != -1)
    {
      close(v2);
      if (qword_1004EE428 != -1)
      {
        sub_100049150();
      }

      v3 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "closed sw_kq_write", buf, 2u);
      }

      *(a1 + 8) = -1;
    }

    v4 = *(a1 + 12);
    if (v4 != -1)
    {
      close(v4);
      if (qword_1004EE428 != -1)
      {
        sub_100049164();
      }

      v5 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "closed sw_kq_read", v8, 2u);
      }

      *(a1 + 12) = -1;
    }

    if (*a1)
    {
      os_channel_destroy();
      if (qword_1004EE428 != -1)
      {
        sub_10004918C();
      }

      v6 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "closed sk_channel", v7, 2u);
      }

      *a1 = 0;
    }

    dword_1004EE3D0 = 0;
    byte_1004EE424 = 0;
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_1000491B4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_1000491C8();
    }
  }
}

uint64_t sub_1000044BC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  optind = 1;
  while (2)
  {
    v4 = getopt(v3, v2, "rhAa:NnBb:FptWcsSo:OURVQKw:q:");
    switch(v4)
    {
      case 'A':
        v14 = qword_1004EE3C8;
        v15 = 0;
        goto LABEL_132;
      case 'B':
        if (sub_100041FEC() == 6)
        {
          return 0;
        }

        v20 = qword_1004EE3C8;
        v21 = 0;
        goto LABEL_123;
      case 'C':
      case 'D':
      case 'E':
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'L':
      case 'M':
      case 'P':
      case 'T':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'e':
      case 'f':
      case 'g':
      case 'i':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'u':
      case 'v':
        goto LABEL_4;
      case 'F':
        if (!dword_1004EE3D0)
        {
          goto LABEL_142;
        }

        v48 = qword_1004EE3C8;
        LOWORD(v237) = 0;
        off_1004EE410(qword_1004EE3C8);
        sleep(2u);
        v49 = sub_100007CD8();
        sub_100016D1C(&v237, 0, 0, 0, 0, 0);
        if (qword_1004EE428 != -1)
        {
          sub_100049330();
        }

        v50 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_100049358(&v237, v49, v50);
        }

        v51 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
        {
          v52 = off_1004EC0B8[v49];
          *buf = 136315650;
          *&buf[4] = v52;
          *&buf[12] = 1024;
          *&buf[14] = dword_1004EC0D0;
          *&buf[18] = 1024;
          *&buf[20] = dword_1004EC0D4;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "ACI %s chip with sw version major=%d, minor=%d.\n", buf, 0x18u);
        }

        v53 = sub_1000077B4();
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        memset(buf, 0, sizeof(buf));
        v54 = fopen("/etc/bluetool/bin_id.aci", "r");
        if (v54)
        {
          v55 = v54;
          if (fgets(buf, 32, v54))
          {
            v56 = strtoul(buf, 0, 10);
            if (qword_1004EE428 != -1)
            {
              sub_10004941C();
            }

            v57 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
            {
              *v134 = 67109120;
              *&v134[4] = v56;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "CPF bin id: 0x%08x.\n", v134, 8u);
            }
          }

          else
          {
            v56 = 0;
          }

          fclose(v55);
        }

        else
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049444();
          }

          if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            v56 = 0;
            goto LABEL_248;
          }

          sub_10004946C();
          v56 = 0;
        }

        if (v53 && v53 == v56)
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004966C();
          }

          v110 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
          {
            v111 = off_1004EC0B8[v49];
            *buf = 136315394;
            *&buf[4] = v111;
            *&buf[12] = 1024;
            *&buf[14] = v53;
            v112 = "ACI %s chip BIN_ID=%08x equals CPF bin_id -> Skip the boot.\n";
            v113 = v110;
            v114 = 18;
            goto LABEL_279;
          }

          return 0;
        }

        if (qword_1004EE428 != -1)
        {
          sub_1000494EC();
        }

LABEL_248:
        v115 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
        {
          v116 = off_1004EC0B8[v49];
          *buf = 136315650;
          *&buf[4] = v116;
          *&buf[12] = 1024;
          *&buf[14] = v53;
          *&buf[18] = 1024;
          *&buf[20] = v56;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "ACI %s chip BIN_ID %08x differ from CPF bin_id %08x -> Go boot.\n", buf, 0x18u);
        }

        if (v49 > 1)
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049514();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004953C();
          }
        }

        else if (sub_10000886C("/etc/bluetool/aci_boot.hcd") || !sub_100006C60(v48, "/etc/bluetool/aci_boot.hcd"))
        {
          sub_100019B78("power off", 0);
          usleep(0xC350u);
          sub_100019B78("power on", 0);
          usleep(0xC350u);
          sub_100019B78("device -D", 0);
          if (!v49)
          {
            sleep(2u);
          }

          sub_100019B78("aci -B", 0);
          usleep(0xC350u);
          sub_100019B78("hci info", 0);
          sub_100019B78("hci cmd 0xfe1f", 0);
          if (qword_1004EE428 != -1)
          {
            sub_100049644();
          }

          v117 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v49;
            v112 = "BOOT Done! for aci_platform=%d\n";
            goto LABEL_278;
          }
        }

        else
        {
          if (qword_1004EE428 != -1)
          {
            sub_1000495AC();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_1000495D4();
          }
        }

        return 0;
      case 'K':
        v171 = 0u;
        memset(v172, 0, sizeof(v172));
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v152 = 0u;
        memset(buf, 0, sizeof(buf));
        v33 = sub_100044574();
        v34 = sub_100044C84();
        if (v34 && !strcmp(v34, "APPLE_M1"))
        {
          v45 = 98;
        }

        else
        {
          v238 = -871113647;
          v237 = xmmword_100051EAE;
          v236 = 1530707451;
          v235 = xmmword_100051EC2;
          v130 = MGIsDeviceOneOfType();
          v234 = 1472775220;
          v233 = xmmword_100051ED6;
          v232 = 483476120;
          v231 = xmmword_100051EEA;
          v128 = MGIsDeviceOneOfType();
          v230 = 282158961;
          v229 = xmmword_100051EFE;
          v228 = 56502976;
          v227 = xmmword_100051F12;
          v127 = MGIsDeviceOneOfType();
          v226 = -961843768;
          v225 = xmmword_100051F26;
          v224 = 1282132887;
          v223 = xmmword_100051F3A;
          v126 = MGIsDeviceOneOfType();
          v222 = -1092155788;
          v221 = xmmword_100051F4E;
          v220 = 763775061;
          v219 = xmmword_100051F62;
          v125 = MGIsDeviceOneOfType();
          v218 = -63049871;
          v217 = xmmword_100051F76;
          v216 = -557458837;
          v215 = xmmword_100051F8A;
          v124 = MGIsDeviceOneOfType();
          v214 = 1730000236;
          v213 = xmmword_100051F9E;
          v123 = MGIsDeviceOneOfType();
          v212 = 1530338216;
          v211 = xmmword_100051FB2;
          v210 = 406601745;
          v209 = xmmword_100051FC6;
          v122 = MGIsDeviceOneOfType();
          v208 = 1654218604;
          v207 = xmmword_100051FDA;
          v206 = -1930811061;
          v205 = xmmword_100051FEE;
          v121 = MGIsDeviceOneOfType();
          v204 = -182498503;
          v203 = xmmword_100052002;
          __streamb = v33;
          v35 = MGIsDeviceOneOfType();
          v202 = 841005628;
          v201 = xmmword_100052016;
          v200 = -2030489149;
          v199 = xmmword_10005202A;
          v36 = MGIsDeviceOneOfType();
          v198 = 1219348060;
          v197 = xmmword_10005203E;
          v196 = 223445260;
          v195 = xmmword_100052052;
          v37 = MGIsDeviceOneOfType();
          v194 = -1921398171;
          v193 = xmmword_100052066;
          v192 = 373548423;
          v191 = xmmword_10005207A;
          v38 = MGIsDeviceOneOfType();
          v190 = -936391310;
          v189 = xmmword_10005208E;
          v188 = 2140507472;
          v187 = xmmword_1000520A2;
          v39 = MGIsDeviceOneOfType();
          v186 = -1384522500;
          v185 = xmmword_1000520B6;
          v40 = MGIsDeviceOneOfType();
          v184 = 1815762806;
          v183 = xmmword_1000520CA;
          v182 = -782763850;
          v181 = xmmword_1000520DE;
          v41 = MGIsDeviceOneOfType();
          v180 = -652049476;
          v179 = xmmword_1000520F2;
          v178 = -1897771119;
          v177 = xmmword_100052106;
          v42 = MGIsDeviceOneOfType();
          v176 = -584398440;
          v175 = xmmword_10005211A;
          v43 = MGIsDeviceOneOfType();
          v44 = v36 | v35;
          v33 = __streamb;
          v45 = 379;
          if (((v43 | v42 | v41 | v40 | v39 | v38 | v37 | v44 | v121 | v122 | v123 | v124 | v125 | v126 | v127) | (v128 | v130)))
          {
            v46 = 379;
          }

          else
          {
            v46 = 187;
          }

          v174 = -879476163;
          v173 = xmmword_10005212E;
          if (!MGIsDeviceOneOfType())
          {
            v45 = v46;
          }
        }

        if (sub_1000159F8(v33, buf))
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049694();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_1000496BC();
          }

          off_1004EE410(qword_1004EE3C8);
          v60 = 22;
          goto LABEL_184;
        }

        if (qword_1004EE428 != -1)
        {
          sub_1000496F8();
        }

        v98 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
        {
          *v134 = 67109634;
          *&v134[4] = v45;
          *&v134[8] = 1040;
          *&v134[10] = v45;
          *&v134[14] = 2096;
          *&v135 = buf;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "Regulatory Data (%d bytes): %.*P", v134, 0x18u);
        }

        off_1004EE410(qword_1004EE3C8);
        if (qword_1004EE428 != -1)
        {
          sub_100049720();
        }

        v99 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
        {
          *v134 = 0;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "Power tables exist for this device", v134, 2u);
        }

        if (!sub_100044C84())
        {
          *__error() = 94;
          v60 = 30;
          goto LABEL_184;
        }

        v100 = buf;
        do
        {
          if (*v100 != 1)
          {
            *__error() = 94;
            if (qword_1004EE428 != -1)
            {
              sub_100049748();
            }

            if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              v60 = 24;
              goto LABEL_186;
            }

            sub_100049770(v100);
            v60 = 24;
            goto LABEL_184;
          }

          v101 = v100[3] + 4;
          if (off_1004EE3E0(qword_1004EE3C8, v100, v101) == -1)
          {
            if (qword_1004EE428 != -1)
            {
              sub_1000498C4();
            }

            if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              v60 = 3;
              goto LABEL_186;
            }

            sub_1000498EC();
            v60 = 3;
LABEL_184:
            if (qword_1004EE428 != -1)
            {
              sub_100049928();
            }

            goto LABEL_186;
          }

          v102 = *(v100 + 1);
          if (qword_1004EE428 != -1)
          {
            sub_1000497E8();
          }

          v103 = qword_1004EE430;
          v104 = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO);
          if (v104)
          {
            *v134 = 67109120;
            *&v134[4] = v102;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "aci_download_power_tables: Handle opcode 0x%04x", v134, 8u);
          }

          if (v102 == 65411)
          {
            usleep(0xBB8u);
            goto LABEL_216;
          }

          if ((sub_100007940(v104, v102) & 0x80000000) != 0)
          {
            if (qword_1004EE428 != -1)
            {
              sub_100049838();
            }

            if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              v60 = 255;
LABEL_186:
              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_100049950();
              }

              goto LABEL_188;
            }

            sub_100049860();
            v60 = 255;
            goto LABEL_184;
          }

          if (qword_1004EE428 != -1)
          {
            sub_100049810();
          }

          v105 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
          {
            *v134 = 67109120;
            *&v134[4] = v102;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "aci_download_power_tables: opcode 0x%04x pass", v134, 8u);
          }

LABEL_216:
          v100 += v101;
          v45 -= v101;
        }

        while (v45);
        if (qword_1004EE428 != -1)
        {
          sub_10004989C();
        }

        v120 = qword_1004EE430;
        v60 = 0;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *v134 = 0;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Power tables download Done!", v134, 2u);
          v60 = 0;
        }

LABEL_188:
        *&v237 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        *v134 = 0u;
        v135 = 0u;
        LOBYTE(v235) = 0;
        sub_100017C50(64817, &v235, 1uLL, v134, &v237, 14);
        if (v134[3])
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004998C();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_1000499B4();
          }
        }

        else
        {
          if (qword_1004EE428 != -1)
          {
            sub_1000499F0();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
          {
            sub_100049A18();
          }
        }

        return v60;
      case 'N':
        v5 = qword_1004EE3C8;
        v6 = 0;
        goto LABEL_74;
      case 'O':
        if (!dword_1004EE3D0)
        {
          goto LABEL_142;
        }

        v89 = sub_100044C84();
        if (v89 && !strcmp(v89, "ACIFPGA"))
        {
          sleep(2u);
        }

        else
        {
          usleep(0xC350u);
        }

        return 0;
      case 'Q':
        v58 = 0;
        goto LABEL_120;
      case 'R':
        memset(&buf[4], 0, 24);
        *buf = 419316737;
        CCRandomGenerateBytes(&buf[4], 0x18uLL);
        v59 = off_1004EE3E0(qword_1004EE3C8, buf, 28);
        if (v59 != -1)
        {
          return sub_100007940(v59, 0xFE44u);
        }

        if (qword_1004EE428 != -1)
        {
          sub_100049204();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004922C();
        }

        return 0xFFFFLL;
      case 'S':
        v47 = qword_1004EE3C8;
        bzero(buf, 0x780uLL);
        bzero(v134, 0x780uLL);
        *&buf[8] = "cmd";
        *&buf[16] = "0x1009";
        sub_100016F80(3, buf, v134);
        *&buf[8] = "cmd";
        *&buf[16] = "0xc1a";
        *&buf[24] = "0x03";
        sub_100016F80(4, buf, v134);
        *&buf[8] = "cmd";
        *&buf[16] = "0xc05";
        *&buf[24] = "0x02";
        *&v152 = "0x00";
        *(&v152 + 1) = "0x03";
        sub_100016F80(6, buf, v134);
        *&buf[8] = "cmd";
        *&buf[16] = "0xfe10";
        *&buf[24] = "0x01";
        *&v152 = "0x78";
        *(&v152 + 1) = "0xff";
        *&v153 = "0x01";
        *(&v153 + 1) = "0xff";
        sub_100016F80(8, buf, v134);
        *&buf[8] = "cmd";
        *&buf[16] = "0xfe11";
        sub_100016F80(3, buf, v134);
        sub_100006FE4(v47, "06:05:04:03:02:01");
        return 0;
      case 'U':
        WORD4(v235) = 0;
        *&v235 = 0;
        v150 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        *v134 = 0u;
        v135 = 0u;
        *&v233 = 0;
        bzero(buf, 0x400uLL);
        v27 = sub_100044C84();
        off_1004EE3F0(qword_1004EE3C8, &unk_100051EAB, 3);
        do
        {
          off_1004EE3F8(qword_1004EE3C8, v134, 258, &v233);
        }

        while (v134[0] != 14);
        __stream = *&v134[6];
        v129 = *&v134[8];
        v28 = *&v134[10];
        v29 = *&v134[12];
        if (v27)
        {
          if (!strcmp(v27, "APPLE_M1"))
          {
            LODWORD(v27) = *&v134[14];
            v31 = v135;
            v32 = WORD1(v135);
          }

          else
          {
            if (strcmp(v27, "APPLE_M2") && strcmp(v27, "APPLE_M2_5") && strcmp(v27, "PROXIMA"))
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              LODWORD(v27) = 0;
              goto LABEL_156;
            }

            LODWORD(v27) = *&v134[14];
            v32 = v135;
            v31 = WORD1(v135);
          }

          v30 = WORD2(v135);
          __sprintf_chk(buf, 0, 0x400uLL, "MAC FW Version: %d.%d.%d.%d, PHY FW Version: %d.%d.%d.%d", __stream, v129, v28, v29, v27, v31, v32, WORD2(v135));
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
        }

LABEL_156:
        sub_1000158B0();
        LODWORD(v235) = 16654081;
        if (off_1004EE3E0(qword_1004EE3C8, &v235, 4) == -1)
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049308();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004922C();
          }
        }

        else
        {
          v150 = 0;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          *v134 = 0u;
          v135 = 0u;
          do
          {
            off_1004EE3F8(qword_1004EE3C8, v134, 258, &v233);
          }

          while (v134[0] != 14);
          printf("pktlen %lu\n", v233);
          v91.i32[0] = *&v134[2];
          v92 = vmovl_u8(v91).u64[0];
          if (vuzp1_s8(v92, v92).u32[0] == 16654081)
          {
            dword_1004EC0D0 = v134[6];
            dword_1004EC0D4 = v134[7];
            if (v134[6] == 8 && v134[7] == 32)
            {
              v93 = v27;
              if (qword_1004EE428 != -1)
              {
                sub_1000492E0();
              }

              v94 = qword_1004EE430;
              if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
              {
                goto LABEL_167;
              }

              LODWORD(v237) = 67109888;
              DWORD1(v237) = v134[6];
              WORD4(v237) = 1024;
              *(&v237 + 10) = v134[7];
              HIWORD(v237) = 1024;
              v238 = v134[8];
              v239 = 1024;
              v240 = v134[9];
              v95 = "Default ACI BGA SW version: %d.%d, chip revision: %d, chip mode=%d";
            }

            else
            {
              if (v134[6] > 1u || v134[6] == 1 && v134[7] >= 0xBu)
              {
                v93 = v27;
                if (qword_1004EE428 != -1)
                {
                  sub_1000492B8();
                }

                v106 = qword_1004EE430;
                if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
                {
                  LODWORD(v237) = 67110144;
                  DWORD1(v237) = v134[6];
                  WORD4(v237) = 1024;
                  *(&v237 + 10) = v134[7];
                  HIWORD(v237) = 1024;
                  v238 = v134[8];
                  v239 = 1024;
                  v240 = v134[9];
                  v241 = 1024;
                  v242 = v134[10];
                  _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "SW version: %d.%d.%d, chip revision: %d, chip mode=%d", &v237, 0x20u);
                }

                dword_1004EDFB0 = v134[8];
                v96 = 9;
LABEL_234:
                v107 = v96;
                v108 = *(v134 | v96);
                switch(v108)
                {
                  case 255:
                    v109 = "CHIP is: FPGA";
                    break;
                  case 32:
                    v109 = "CHIP is: BGA";
                    break;
                  case 15:
                    v109 = "CHIP is: TRIO";
                    break;
                  default:
LABEL_288:
                    printf("MAC FW Version:              %d.%d.%d.%d\n", __stream, v129, v28, v29);
                    printf("PHY FW Version:              %d.%d.%d.%d\n", v93, v31, v32, v30);
                    v119 = (v107 | v134);
                    printf("Chip Revision:               %02x\n", *v119);
                    printf("Chip mode:                   %02x\n", v119[1]);
                    printf("ROOT Clock:                  %02x%02x\n", v119[3], v119[2]);
                    printf("Slow Clock used:             %02x\n", v119[4]);
                    printf("Process Type:                %02x\n", v119[5]);
                    printf("ODP proccess:                %02x\n", v119[6]);
                    if (v233 >= 0x3D)
                    {
                      printf("Deep Sleep Mode:             %02x\n", v119[7]);
                      printf("Whitening Mode:              %02x\n", v119[8]);
                      printf("CDC Mode:                    %02x\n", v119[9]);
                      printf("Hopping Mode:                %02x\n", v119[10]);
                      printf("HCI UART Baud Rate:          %02x%02x%02x%02x\n", v119[14], v119[13], v119[12], v119[11]);
                      printf("Temperature Index:           %02x\n", v119[15]);
                      printf("Detected Temperature:        %02x\n", v119[16]);
                      printf("FREF/TCXO Clock:             %02x%02x\n", v119[18], v119[17]);
                      printf("PLL Sharing Running Mode:    %02x\n", v119[19]);
                      printf("RF Type:                     %02x\n", v119[20]);
                      printf("RTL Version:                 %02x%02x\n", v119[22], v119[21]);
                      printf("FPGA User Code:              %02x%02x%02x%02x\n", v119[26], v119[25], v119[24], v119[23]);
                      printf("MAC bin id:                  %02x%02x%02x%02x\n", v119[30], v119[29], v119[28], v119[27]);
                      printf("PHY bin id:                  %02x%02x%02x%02x\n", v119[34], v119[33], v119[32], v119[31]);
                    }

                    off_1004EE3F0(qword_1004EE3C8, &unk_100052361, 3);
                    do
                    {
                      off_1004EE3F8(qword_1004EE3C8, v134, 258, &v233);
                    }

                    while (v134[0] != 14);
                    printf("Bluetooth Address:           %02x:%02x:%02x:%02x:%02x:%02x\n");
                    return 0;
                }

                puts(v109);
                goto LABEL_288;
              }

              v93 = v27;
              if (qword_1004EE428 != -1)
              {
                sub_100049290();
              }

              v94 = qword_1004EE430;
              if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
              {
LABEL_167:
                v96 = 8;
                goto LABEL_234;
              }

              LODWORD(v237) = 67109888;
              DWORD1(v237) = v134[6];
              WORD4(v237) = 1024;
              *(&v237 + 10) = v134[7];
              HIWORD(v237) = 1024;
              v238 = v134[8];
              v239 = 1024;
              v240 = v134[9];
              v95 = "SW version: %d.%d, chip revision: %d, chip mode=%d";
            }

            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, v95, &v237, 0x1Au);
            goto LABEL_167;
          }

          *__error() = 94;
          if (qword_1004EE428 != -1)
          {
            sub_100049268();
          }

          v97 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v237) = 67110656;
            DWORD1(v237) = v134[2];
            WORD4(v237) = 1024;
            *(&v237 + 10) = v134[3];
            HIWORD(v237) = 1024;
            v238 = v134[4];
            v239 = 1024;
            v240 = v134[5];
            v241 = 1024;
            v242 = v134[6];
            v243 = 1024;
            v244 = v134[7];
            v245 = 1024;
            v246 = 65055;
            _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "EVNT: Invalid opcode Got:[0x%x 0x%x 0x%x 0x%x 0x%x 0x%x], waiting for [0x%x] !", &v237, 0x2Cu);
          }
        }

        return 0xFFFFLL;
      case 'V':
        if (sub_100041FEC() == 6)
        {
          v19 = "Using ACI Chipset changes (ACI_BT_SW_%d_%04d_%04d, transport AppleBTHci)\n\n";
        }

        else
        {
          v19 = "Using ACI Chipset changes (ACI_BT_SW_%d_%04d_%04d)\n\n";
        }

        printf(v19, 9, 27, 25);
        return 0;
      case 'W':
        if (!dword_1004EE3D0)
        {
LABEL_142:
          v60 = 1;
          fwrite("First open the port with device -D command\n", 0x2BuLL, 1uLL, __stderrp);
          return v60;
        }

        v22 = qword_1004EE3C8;
        off_1004EE410(qword_1004EE3C8);
        v23 = sub_100007CD8();
        if (qword_1004EE428 != -1)
        {
          sub_100049A58();
        }

        v24 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "aci_platform=%d\n", buf, 8u);
        }

        if (v23 > 1)
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049A6C();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_100049A94();
          }
        }

        else
        {
          if (sub_10000886C("/etc/bluetool/aci_init.hcd"))
          {
            if (qword_1004EE428 != -1)
            {
              sub_100049B04();
            }

            v25 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Using default init file\n", buf, 2u);
            }

            if (sub_10001382C())
            {
              sub_1000158B0();
            }

            v26 = sub_100008A60(v22, sub_100008C58);
          }

          else
          {
            if (qword_1004EE428 != -1)
            {
              sub_100049B2C();
            }

            v118 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              *&buf[4] = "/etc/bluetool/aci_init.hcd";
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "Using non-default init file: %s\n", buf, 0xCu);
            }

            v26 = sub_100006C60(v22, "/etc/bluetool/aci_init.hcd");
          }

          if (v26)
          {
            if (qword_1004EE428 != -1)
            {
              sub_100049B54();
            }

            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              sub_100049B7C();
            }
          }

          else
          {
            if (qword_1004EE428 != -1)
            {
              sub_100049BEC();
            }

            v117 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = v23;
              v112 = "INIT Done! for aci_platform=%d\n";
LABEL_278:
              v113 = v117;
              v114 = 8;
LABEL_279:
              _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, v112, buf, v114);
            }
          }
        }

        return 0;
      case 'a':
        v14 = qword_1004EE3C8;
        v15 = optarg;
LABEL_132:

        return sub_100006FE4(v14, v15);
      case 'b':
        if (sub_100041FEC() == 6)
        {
          return 0;
        }

        v20 = qword_1004EE3C8;
        v21 = optarg;
LABEL_123:

        return sub_100006E8C(v20, v21);
      case 'c':
        v7 = qword_1004EE3C8;
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        memset(buf, 0, sizeof(buf));
        v134[0] = 0;
        off_1004EE410(qword_1004EE3C8);
        v8 = fopen("/Users/doronk/test_temp/acl_data.txt", "w+");
          ;
        }

        if (v134[0] == 2)
        {
          read(v7, buf, 4uLL);
          v9 = buf[3];
          v10 = buf[2];
          v11 = buf[2] | (buf[3] << 8);
          fprintf(__stderrp, "ACL data header 4 bytes=0x%x, 0x%x, 0x%x, 0x%x\n", buf[0], buf[1], buf[2], buf[3]);
          fprintf(__stderrp, "ACL data length=%d\n", v11);
          read(v7, buf, v11);
          if (v11)
          {
            v12 = 0;
            v13 = ((v9 << 8) + v10);
            do
            {
              fprintf(__stderrp, "Data %d = 0x%x\n", v12, buf[v12]);
              fprintf(v8, "%d", buf[v12++]);
            }

            while (v13 != v12);
          }
        }

        else
        {
          fprintf(__stderrp, "No ACL data, first byte=%d\n", v134[0]);
        }

        v90 = v8;
        goto LABEL_141;
      case 'h':
        fprintf(__stderrp, "%s - ACI Specific Commands\n", *v2);
        fwrite("-V    - Print ACI version information\n", 0x26uLL, 1uLL, __stderrp);
        fwrite("-W    - Download ACI init script internally or from /etc/bluetool/\n", 0x43uLL, 1uLL, __stderrp);
        fwrite("-w    - Download HCD file from /path/to/hcd/file.hcd\n", 0x35uLL, 1uLL, __stderrp);
        fwrite("-b    - Set the baud rate - Baud Rate (UART only)\n", 0x32uLL, 1uLL, __stderrp);
        fwrite("-B    - Set the baud rate using a predefined value (UART only)\n", 0x3FuLL, 1uLL, __stderrp);
        fwrite("-a    - Set BDADDR - 00:00:00:00:00:00\n", 0x27uLL, 1uLL, __stderrp);
        fwrite("-A    - Set BDADDR using devicetree\n", 0x24uLL, 1uLL, __stderrp);
        fwrite("-n    - Set the local name - Local Name\n", 0x28uLL, 1uLL, __stderrp);
        fwrite("-p    - Routes sco over PCM\n", 0x1CuLL, 1uLL, __stderrp);
        fwrite("-t    - Routes sco over Transport (HCI)\n", 0x28uLL, 1uLL, __stderrp);
        fwrite("-c    - Get ACL data, up to 256 bytes\n", 0x26uLL, 1uLL, __stderrp);
        fwrite("-s    - Get SCO data to file\n", 0x1DuLL, 1uLL, __stderrp);
        fwrite("-S    - Set device for SCO over HCI, Set Event filter to accept any connection and change the bT address to 123456\n", 0x73uLL, 1uLL, __stderrp);
        fwrite("-o    - For ACI options: \n\t addr1- to change BT address to 123456, \n\t hcivoice- for voice over HCI (UART), \n\t pcmvoice- for voice over PCM include Trio L codec configuration script\n", 0xB5uLL, 1uLL, __stderrp);
        fwrite("-O    - Sleep delay after power on, adapted to different ACI chipsets (BGA, FPGA, etc...)\n", 0x5CuLL, 1uLL, __stderrp);
        fwrite("-F    - Download FW RAM image HCD file from /etc/bluetool/\n", 0x3BuLL, 1uLL, __stderrp);
        fwrite("-U    - Get System Status \n", 0x1BuLL, 1uLL, __stderrp);
        fwrite("-R    - Set Rand Seed \n", 0x17uLL, 1uLL, __stderrp);
        fwrite("-Q    - Download MSF from ioreg\n", 0x20uLL, 1uLL, __stderrp);
        fwrite("-q    - Download MSF from /path/to/msf/msf.bin\n", 0x2FuLL, 1uLL, __stderrp);
        fwrite("-K    - Download power regulatory HCD file internally\n", 0x36uLL, 1uLL, __stderrp);
        fputc(10, __stderrp);
        return 0;
      case 'n':
        v5 = qword_1004EE3C8;
        v6 = optarg;
LABEL_74:

        return sub_1000071D8(v5, v6);
      case 'o':
        return 0;
      case 'p':
        *buf = 33519616;
        goto LABEL_136;
      case 'q':
        v58 = optarg;
LABEL_120:
        sub_100007430(v58);
        return 0;
      case 'r':

        return sub_100014158(1);
      case 's':
        v61 = qword_1004EE3C8;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        memset(buf, 0, sizeof(buf));
        v134[0] = 0;
        off_1004EE410(qword_1004EE3C8);
        __streama = fopen("/Users/doronk/test_temp/sco_data.txt", "w");
        do
        {
          v62 = read(v61, v134, 1uLL);
          usleep(0x3E8u);
        }

        while ((v62 + 1) < 2);
        v63 = 0;
        v64 = 1;
        while (1)
        {
          if ((v64 & 1) == 0)
          {
              ;
            }
          }

          fprintf(__stderrp, "header=0x%x\n", v134[0]);
          if (v134[0] == 3)
          {
            v78 = 0;
            v79 = 0;
            do
            {
              v80 = v78;
              v81 = read(v61, &buf[v79], 1uLL);
              v79 += v81 & ~(v81 >> 63);
              v78 = v80 + 1;
            }

            while (v79 <= 2u && v80 < 0x752F);
            if (v80 <= 0x752E)
            {
              v83 = buf[2];
              if (!buf[2])
              {
                goto LABEL_117;
              }

              v84 = 0;
              v85 = 0;
              do
              {
                v86 = v84;
                v87 = read(v61, &buf[v85], 1uLL);
                v85 += v87 & ~(v87 >> 63);
                v84 = v86 + 1;
              }

              while (v83 > v85 && v86 < 0x752F);
              if (v86 <= 0x752E)
              {
LABEL_117:
                fprintf(__stderrp, "count = %d, length=%d\n", ++v63, v83);
                fwrite(buf, 1uLL, v83, __streama);
LABEL_118:
                v64 = 0;
                continue;
              }
            }

            return 1;
          }

          if (v134[0] != 4)
          {
            break;
          }

          v65 = 0;
          v66 = 0;
          do
          {
            v67 = v65;
            v68 = read(v61, &buf[v66], 1uLL);
            v66 += v68 & ~(v68 >> 63);
            v65 = v67 + 1;
          }

          while (v66 <= 1u && v67 < 0x752F);
          if (v67 > 0x752E)
          {
            return 1;
          }

          fprintf(__stderrp, "Event opcode=0x%x, length=%d\n", buf[0], buf[1]);
          v64 = 0;
          v70 = buf[1];
          if (buf[1])
          {
            v71 = 0;
            v72 = 0;
            do
            {
              v73 = v71;
              v74 = read(v61, &buf[v72], 1uLL);
              v72 += v74 & ~(v74 >> 63);
              v71 = v73 + 1;
            }

            while (v70 > v72 && v73 < 0x752F);
            if (v73 <= 0x752E)
            {
              v76 = buf;
              do
              {
                v77 = *v76++;
                fprintf(__stderrp, "R: 0x%02x\n", v77);
                --v70;
              }

              while (v70);
              goto LABEL_118;
            }

            return 1;
          }
        }

        fprintf(__stderrp, "No H4 data, first byte=%d, finish reading\n", v134[0]);
        v90 = __streama;
LABEL_141:
        fclose(v90);
        return 0;
      case 't':
        *buf = 33519617;
LABEL_136:
        buf[4] = -1;
        sub_100017C50(65040, buf, 5uLL, 0, 0, 0);
        return 0;
      case 'w':
        v16 = qword_1004EE3C8;
        v17 = optarg;

        return sub_100006C60(v16, v17);
      default:
        if (v4 == -1)
        {
          return 0;
        }

LABEL_4:
        fprintf(__stderrp, "Invalid option '%c'\n", v4);
        continue;
    }
  }
}

uint64_t sub_100006C60(uint64_t a1, char *a2)
{
  memset(&v10, 0, sizeof(v10));
  v4 = stat(a2, &v10);
  if (qword_1004EE428 != -1)
  {
    sub_100049C14();
  }

  v5 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v12 = v4;
    *&v12[4] = 2080;
    *&v12[6] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "stat_result=%d file path=%s", buf, 0x12u);
  }

  if (v4)
  {
    perror("stat ");
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_100049C3C();
    }

    v6 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      v7 = ctime(&v10.st_mtimespec.tv_sec);
      *buf = 136315394;
      *v12 = v7;
      *&v12[8] = 2048;
      *&v12[10] = v10.st_size;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "File last changed:%s File size=%lld Bytes", buf, 0x16u);
    }
  }

  qword_1004EDFA8 = fopen(a2, "r");
  if (qword_1004EDFA8)
  {
    sub_1000158B0();
    v8 = sub_100008A60(a1, sub_1000091E8);
    fclose(qword_1004EDFA8);
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_100049C64();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049C8C();
    }

    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t sub_100006E8C(int a1, char *__str)
{
  if (__str)
  {
    if (*__str == 36)
    {
      v2 = __str + 1;
      v3 = getenv(__str + 1);
      fprintf(__stderrp, "Overriding baud rate from environment variable: %s = %s\n", v2, v3);
      v4 = strtoul(v3, 0, 0);
    }

    else
    {
      v4 = strtoul(__str, 0, 0);
    }
  }

  else
  {
    v5 = sub_100041D24();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = 2400000;
    }
  }

  v12 = 0;
  v8 = 83834369;
  v9 = v4;
  v10 = BYTE2(v4);
  v11 = BYTE3(v4);
  v6 = off_1004EE3E0(qword_1004EE3C8, &v8, 8);
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      *__error() = 5;
    }
  }

  else if ((sub_100007940(v6, 0xFF36u) & 0x80000000) == 0)
  {
    off_1004EE400(qword_1004EE3C8, v4);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100006FE4(uint64_t a1, const char *a2)
{
  memset(v12, 0, 6);
  if (!a2)
  {
    WORD2(v13) = 0;
    LODWORD(v13) = 0;
    if (sub_1000422B8(&v13))
    {
      if (qword_1004EE428 != -1)
      {
        sub_100049CFC();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_100049D24();
      }

      return 0xFFFFFFFFLL;
    }

    v5.i32[0] = *(&v13 + 2);
    v8 = vrev64_s16(*&vmovl_u8(v5));
    v12[0] = vuzp1_s8(v8, v8).u32[0];
    LOBYTE(v12[1]) = BYTE1(v13);
    BYTE1(v12[1]) = v13;
LABEL_12:
    LODWORD(v9) = 117179905;
    v6.i32[0] = *(v12 + 2);
    HIDWORD(v9) = vuzp1_s8(vrev64_s16(*&vmovl_u8(v6)), 117179905).u32[0];
    v13 = v9;
    v14 = BYTE1(v12[0]);
    v15 = v12[0];
    v10 = off_1004EE3E0(qword_1004EE3C8, &v13, 10);
    if (!v10)
    {
      return sub_100007940(v10, 0xFC06u);
    }

    v11 = v10;
    if (qword_1004EE428 != -1)
    {
      sub_100049D60();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049D88();
      if (v11 < 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v11 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    *__error() = 5;
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if (*a2 == 36)
  {
    v3 = a2 + 1;
    v4 = getenv(a2 + 1);
    fprintf(__stderrp, "Overriding BDADDR from environment variable: %s = %s\n", v3, v4);
    v2 = v4;
  }

  result = sub_100008138(v2, v12);
  if (result != -1)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1000071D8(uint64_t a1, uint64_t a2)
{
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
  *__s = 0u;
  v13 = 0u;
  if (a2)
  {
    v2 = a2;
    if (*a2 == 36)
    {
      v2 = getenv((a2 + 1));
      fprintf(__stderrp, "Overriding hostname from environment variable: %s = %s\n");
    }

    else
    {
      fprintf(__stderrp, "Using passed hostname: %s\n");
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    *__s = 0uLL;
    v13 = 0uLL;
    j__gethostname(__s, 0x100uLL);
    if (qword_1004EE428 != -1)
    {
      sub_100049DF8();
    }

    v2 = __s;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      sub_100049E20();
    }
  }

  v3 = strlen(v2);
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    v10 = -133426431;
    v4 = v3 - 1;
    if (v3 >= 1)
    {
      if (v4 >= 0xF7)
      {
        v4 = 247;
      }

      v5 = v4 + 1;
      v6 = v11;
      do
      {
        v7 = *v2++;
        *v6++ = v7;
        --v5;
      }

      while (v5);
    }

    v8 = off_1004EE3E0(qword_1004EE3C8, &v10, 252);
    if (v8 != -1)
    {
      return sub_100007940(v8, 0xC13u);
    }

    if (qword_1004EE428 != -1)
    {
      sub_100049E94();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049EBC();
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_100007430(const char *a1)
{
  v2 = sub_100044C84();
  if (!v2)
  {
    v3 = "UNKNOWN";
    goto LABEL_9;
  }

  v3 = v2;
  if (strcmp(v2, "APPLE_M1"))
  {
    if (!strcmp(v3, "APPLE_M2") || !strcmp(v3, "APPLE_M2_5"))
    {
      sub_100009A58(a1, 7);

      sub_100009A58(a1, 6);
      return;
    }

LABEL_9:
    fprintf(__stderrp, "No MSF supported for chip %s\n", v3);
    return;
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  memset(v37, 0, 256);
  if (!a1)
  {
    if (sub_10004292C(&v16, &v15))
    {
      goto LABEL_12;
    }

LABEL_14:
    if (v15 % 0xF0u)
    {
      v7 = v15 / 0xF0u + 1;
    }

    else
    {
      v7 = v15 / 0xF0u;
    }

    fprintf(__stderrp, "MSF: size %d. numberOfChunks %d. chunkSize %d.\n", v15, v7, 240);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = v15;
      do
      {
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        v30 = 0u;
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        if (v10 >= 0xF0u)
        {
          v11 = 240;
        }

        else
        {
          v11 = v10;
        }

        v19 = v8;
        v20 = v11;
        v21 = v10 < 0xF1u;
        __memcpy_chk();
        sub_100017C50(64791, &v19, (v11 + 4), v37, &v14, 14);
        v12 = v37[4];
        if (v37[4])
        {
          if (qword_1004EE428 != -1)
          {
            sub_100049F38();
          }

          v13 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v18 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MSF Error in Cal data. reason %d", buf, 8u);
          }
        }

        ++v9;
        v10 = v15 - 240;
        v15 -= 240;
        v8 += 240;
      }

      while (v9 < v7);
    }

    v4 = __stderrp;
    v5 = "MSF: Finished sending MSF file to device\n";
    v6 = 41;
    goto LABEL_29;
  }

  if (!sub_100009834(a1, &v16, &v15))
  {
    goto LABEL_14;
  }

LABEL_12:
  v4 = __stderrp;
  v5 = "No MSF cal data in ioreg.\n";
  v6 = 26;
LABEL_29:
  fwrite(v5, v6, 1uLL, v4);
  if (v16)
  {
    free(v16);
  }
}

uint64_t sub_1000077B4()
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = 0;
  off_1004EE3F0(qword_1004EE3C8, &unk_100051EA8, 3);
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v6, 258, &v3);
  }

  while (LOBYTE(v6[0]) != 14);
  if (v3 < 0x3D)
  {
    return 0;
  }

  v0 = DWORD1(v7);
  if (qword_1004EE428 != -1)
  {
    sub_100049F60();
  }

  v1 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v5 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "MAC bin id: 0x%08x.\n", buf, 8u);
  }

  return v0;
}

uint64_t sub_100007940(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  off_1004EE3F8(qword_1004EE3C8, &v22, 258, &v7);
  if (v7 < 4)
  {
LABEL_2:
    *__error() = 5;
    if (qword_1004EE428 != -1)
    {
      sub_100049FD8();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004A000();
    }

    return 0xFFFFFFFFLL;
  }

  while (v22 != 14)
  {
    if (qword_1004EE428 != -1)
    {
      sub_100049F88();
    }

    v3 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v22;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "EVNT: Previous command did not complete yet: %02X", buf, 8u);
    }

    v38 = 0;
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
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    off_1004EE3F8(qword_1004EE3C8, &v22, 258, &v7);
    if (v7 < 4)
    {
      goto LABEL_2;
    }
  }

  if (BYTE2(v22) != 1 || BYTE3(v22) != a2 || (BYTE4(v22) == a2 >> 8 ? (v4 = BYTE5(v22) == 0) : (v4 = 0), !v4))
  {
    *__error() = 94;
    if (qword_1004EE428 != -1)
    {
      sub_100049FB0();
    }

    v5 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110656;
      v9 = v22;
      v10 = 1024;
      v11 = BYTE1(v22);
      v12 = 1024;
      v13 = BYTE2(v22);
      v14 = 1024;
      v15 = BYTE3(v22);
      v16 = 1024;
      v17 = BYTE4(v22);
      v18 = 1024;
      v19 = BYTE5(v22);
      v20 = 1024;
      v21 = a2;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EVNT: Invalid opcode Got:[0x%x 0x%x 0x%x 0x%x 0x%x 0x%x], waiting for [0x%x] !", buf, 0x2Cu);
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_100007CD8()
{
  v27 = 0;
  v26[1] = 0;
  v9 = 0;
  v26[0] = 16654081;
  if (off_1004EE3E0(qword_1004EE3C8, v26, 4) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004A0DC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004922C();
    }

    return 255;
  }

  v25 = 0;
  v0 = v24 + 9;
  memset(v24, 0, sizeof(v24));
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v24, 258, &v9);
  }

  while (LOBYTE(v24[0]) != 14);
  v1.i32[0] = *(v24 + 2);
  v2 = vmovl_u8(v1).u64[0];
  if (vuzp1_s8(v2, v2).u32[0] != 16654081)
  {
    *__error() = 94;
    if (qword_1004EE428 != -1)
    {
      sub_10004A03C();
    }

    v5 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110656;
      v11 = BYTE2(v24[0]);
      v12 = 1024;
      v13 = BYTE3(v24[0]);
      v14 = 1024;
      v15 = BYTE4(v24[0]);
      v16 = 1024;
      v17 = BYTE5(v24[0]);
      v18 = 1024;
      v19 = BYTE6(v24[0]);
      v20 = 1024;
      v21 = BYTE7(v24[0]);
      v22 = 1024;
      v23 = 65055;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EVNT: Invalid opcode Got:[0x%x 0x%x 0x%x 0x%x 0x%x 0x%x], waiting for [0x%x] !", buf, 0x2Cu);
    }

    return 255;
  }

  dword_1004EC0D0 = BYTE6(v24[0]);
  dword_1004EC0D4 = BYTE7(v24[0]);
  if (BYTE6(v24[0]) == 8 && BYTE7(v24[0]) == 32)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004A0B4();
    }

    v3 = qword_1004EE430;
    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 67109888;
    v11 = BYTE6(v24[0]);
    v12 = 1024;
    v13 = BYTE7(v24[0]);
    v14 = 1024;
    v15 = BYTE8(v24[0]);
    v16 = 1024;
    v17 = BYTE9(v24[0]);
    v4 = "Default ACI BGA SW version: %d.%d, chip revision: %d, chip mode=%d";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 0x1Au);
LABEL_12:
    v0 = v24 + 8;
    goto LABEL_30;
  }

  if (BYTE6(v24[0]) <= 1u && (BYTE6(v24[0]) != 1 || BYTE7(v24[0]) < 0xBu))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004A064();
    }

    v3 = qword_1004EE430;
    if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 67109888;
    v11 = BYTE6(v24[0]);
    v12 = 1024;
    v13 = BYTE7(v24[0]);
    v14 = 1024;
    v15 = BYTE8(v24[0]);
    v16 = 1024;
    v17 = BYTE9(v24[0]);
    v4 = "SW version: %d.%d, chip revision: %d, chip mode=%d";
    goto LABEL_11;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004A08C();
  }

  v7 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v11 = BYTE6(v24[0]);
    v12 = 1024;
    v13 = BYTE7(v24[0]);
    v14 = 1024;
    v15 = BYTE8(v24[0]);
    v16 = 1024;
    v17 = BYTE9(v24[0]);
    v18 = 1024;
    v19 = BYTE10(v24[0]);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SW version: %d.%d.%d, chip revision: %d, chip mode=%d", buf, 0x20u);
  }

  dword_1004EDFB0 = BYTE8(v24[0]);
LABEL_30:
  v8 = *v0;
  if (v8 == 255)
  {
    return 0;
  }

  if (v8 != 32)
  {
    if (v8 == 15)
    {
      return 2;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100008138(const char *a1, uint64_t a2)
{
  if (qword_1004EE428 != -1)
  {
    sub_10004A104();
  }

  v4 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
  {
    sub_10004A118(a1, v4);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (strlen(a1) < 0x11)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a1 + 1);
  for (i = 5; i != -1; --i)
  {
    v8 = *(v6 - 1);
    v9 = v8 - 48;
    v10 = v8 - 97;
    if ((v8 - 65) >= 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 - 55;
    }

    v12 = v8 - 87;
    if (v10 > 5)
    {
      v12 = v11;
    }

    if (v9 < 0xA)
    {
      v12 = v9;
    }

    v13 = 16 * v12;
    *(a2 + i) = v13;
    v15 = *v6;
    v6 += 3;
    v14 = v15;
    v16 = v15 - 48;
    v17 = v15 - 97;
    v18 = v15 - 55;
    if ((v15 - 65) >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = v14 - 87;
    if (v17 > 5)
    {
      v20 = v19;
    }

    if (v16 < 0xA)
    {
      v20 = v16;
    }

    *(a2 + i) = v20 | v13;
  }

  return 0;
}

uint64_t sub_100008358()
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v2 = 0;
  off_1004EE3F0(qword_1004EE3C8, &unk_10005235B, 3);
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v7, 258, &v2);
  }

  while (LOBYTE(v7[0]) != 14);
  if (qword_1004EE428 != -1)
  {
    sub_10004A1A0();
  }

  v0 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v4 = BYTE13(v7[0]);
    v5 = 1024;
    v6 = BYTE12(v7[0]);
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "LMP Subversion: 0x%02X%02x", buf, 0xEu);
  }

  return WORD6(v7[0]);
}

char *sub_1000084D8(char *a1)
{
  v1 = a1;
  if (strchr(a1, 58) && strchr(v1, 44))
  {
    v2 = sub_100008358();
    v3 = strtok(v1, ":,");
    if (v3)
    {
      __endptr = 0;
      while (1)
      {
        v4 = strtol(v3, &__endptr, 0);
        v5 = strtok(0, ":,");
        v1 = v5;
        if (v4 == v2)
        {
          break;
        }

        if (!v5)
        {
          return v1;
        }

        v3 = strtok(0, ":,");
        if (!v3)
        {
          return 0;
        }
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004A1C8();
      }

      v7 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v10 = v1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Using HCD File: %s", buf, 0xCu);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_100008664(int a1, char *__str)
{
  v11 = 0;
  v10 = 0;
  result = strtok(__str, ",");
  if (result)
  {
    v3 = 0;
    v6 = 0;
    do
    {
      *(&v10 + v3) = strtol(result, &v6, 0);
      result = strtok(0, ",");
      ++v3;
    }

    while (result);
    if ((v3 - 1) < 9)
    {
      return 0;
    }

    v7 = 217851649;
    v8 = v10;
    v9 = v11;
    v4 = off_1004EE3E0(qword_1004EE3C8, &v7, 16);
    if (v4)
    {
      v5 = v4;
      if (qword_1004EE428 != -1)
      {
        sub_10004A1DC();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004A204();
        if (v5 < 0)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v5 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      *__error() = 5;
      return 0xFFFFFFFFLL;
    }

    return sub_100007940(v4, 0xFC27u);
  }

  return result;
}

uint64_t sub_10000886C(const char *a1)
{
  memset(&v7, 0, sizeof(v7));
  v2 = stat(a1, &v7);
  if (qword_1004EE428 != -1)
  {
    sub_10004A274();
  }

  v3 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v9 = v2;
    *&v9[4] = 2080;
    *&v9[6] = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stat_result=%d file path=%s", buf, 0x12u);
  }

  if (!v2)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004A29C();
    }

    v4 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      v5 = ctime(&v7.st_mtimespec.tv_sec);
      *buf = 136315394;
      *v9 = v5;
      *&v9[8] = 2048;
      *&v9[10] = v7.st_size;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "File last changed:%s File size=%lld Bytes", buf, 0x16u);
    }
  }

  return v2;
}

uint64_t sub_100008A60(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  memset(v5, 0, sizeof(v5));
  if (sub_100044C84())
  {
    result = a2(v5);
    if (result < 1)
    {
      return result;
    }

    while (v5[0] == 1)
    {
      v4 = off_1004EE3E0(qword_1004EE3C8, v5, result);
      if (v4 == -1)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004A3C8();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004A3F0();
        }

        return 0xFFFFFFFFLL;
      }

      if (*&v5[1] == 65411)
      {
        usleep(0xBB8u);
      }

      else if ((sub_100007940(v4, *&v5[1]) & 0x80000000) != 0)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004A364();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004A38C();
        }

        return 0xFFFFFFFFLL;
      }

      result = a2(v5);
      if (result <= 0)
      {
        return result;
      }
    }

    *__error() = 94;
    if (qword_1004EE428 != -1)
    {
      sub_10004A2C4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004A2EC(v5);
    }
  }

  else
  {
    *__error() = 94;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100008C58(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1000132FC(4, a1);
  v3 = v2;
  if (v2)
  {
    if (v2 != 4)
    {
      if ((v2 & 0x80000000) == 0)
      {
        *__error() = 94;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004A47C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004A490();
      }

      return 0xFFFFFFFFLL;
    }

    if (*a1 == 1)
    {
      v4 = 4;
    }

    else
    {
      *(a1 + 1) = *a1;
      *a1 = 1;
      v4 = 5;
    }

    v3 = *(a1 + 3) + 4;
    v5 = v3 - v4;
    v6 = sub_1000132FC(v3 - v4, a1 + v4);
    if (v6 != v5)
    {
      if ((v6 & 0x80000000) == 0)
      {
        *__error() = 94;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004A42C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004A440();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t sub_1000091E8(unsigned __int8 *a1)
{
  fread(a1, 1uLL, 4uLL, qword_1004EDFA8);
  v2 = qword_1004EDFA8;
  if (ferror(qword_1004EDFA8))
  {
    v8 = "Error reading command header file";
  }

  else
  {
    if (feof(v2))
    {
      return 0;
    }

    v4 = a1[3];
    v5 = fread(a1 + 4, 1uLL, v4, qword_1004EDFA8);
    if (qword_1004EE428 != -1)
    {
      sub_10004A500();
    }

    v6 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "aci_download_config_fd_cb";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "we are going to read the entire packet within %s", &v9, 0xCu);
    }

    if (v5 == v4)
    {
      return (v4 + 4);
    }

    v7 = qword_1004EDFA8;
    if (!ferror(qword_1004EDFA8))
    {
      if (feof(v7))
      {
        return 0;
      }

      return (v4 + 4);
    }

    v8 = "Error reading command payload from file";
  }

  perror(v8);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100009834(const char *a1, void **a2, _WORD *a3)
{
  fprintf(__stderrp, "read_msf_file: MSF File %s.\n", a1);
  memset(&v13, 0, sizeof(v13));
  v6 = stat(a1, &v13);
  fprintf(__stderrp, "read_msf_file: stat_result=%d file path=%s\n", v6, a1);
  if (v6)
  {
    perror("stat ");
  }

  else
  {
    v7 = __stderrp;
    v8 = ctime(&v13.st_mtimespec.tv_sec);
    fprintf(v7, "read_msf_file: MSF File last changed:%s File size=%lld Bytes\n", v8, v13.st_size);
  }

  st_size = v13.st_size;
  *a3 = v13.st_size;
  *a2 = malloc_type_malloc(st_size, 0x100004077774924uLL);
  fwrite("read_msf_file: Open MSF File\n", 0x1DuLL, 1uLL, __stderrp);
  qword_1004EDFA8 = fopen(a1, "r");
  if (!qword_1004EDFA8)
  {
    fprintf(__stderrp, "Unable to open MSF, file path=%s\n", a1);
    return 0xFFFFFFFFLL;
  }

  fwrite("read_msf_file: Read MSF File to buffer\n", 0x27uLL, 1uLL, __stderrp);
  v10 = fread(*a2, 1uLL, v13.st_size, qword_1004EDFA8);
  fprintf(__stderrp, "read_msf_file: Read MSF File to buffer. read_result %zu.\n", v10);
  v11 = qword_1004EDFA8;
  if (ferror(qword_1004EDFA8))
  {
    perror("Error reading msf file");
    return 0xFFFFFFFFLL;
  }

  if (feof(v11))
  {
    fprintf(__stderrp, "MSF EOF found, file path=%s\n", a1);
  }

  else
  {
    fwrite("read_msf_file: Close MSF File\n", 0x1EuLL, 1uLL, __stderrp);
    fclose(qword_1004EDFA8);
  }

  return 0;
}

void sub_100009A58(const char *a1, int a2)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  memset(v34, 0, 256);
  if (a1)
  {
    v3 = sub_100009834(a1, &v15, &v14);
  }

  else
  {
    v3 = sub_100042A74(&v15, &v14, a2);
  }

  v4 = v3;
  fprintf(__stderrp, "MSF-M2: type %d. file 0x%x. size %d.\n", a2, v15, v14);
  if (qword_1004EE428 != -1)
  {
    sub_10004A514();
  }

  v5 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = v14;
    *&buf[8] = 1040;
    *&buf[10] = v14;
    *&buf[14] = 2096;
    *&buf[16] = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cal data (Size %d bytes): %.*P", buf, 0x18u);
  }

  if (v4)
  {
    fprintf(__stderrp, "No MSF-M2 type %d cal data in ioreg.\n");
    goto LABEL_24;
  }

  v6 = v14;
  v7 = v14 / 0xF0u;
  if (v14 % 0xF0u)
  {
    ++v7;
    goto LABEL_13;
  }

  if (v14 >= 0xF0u)
  {
LABEL_13:
    v8 = 0;
    v9 = 0;
    do
    {
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      memset(&buf[7], 0, 32);
      if (v6 >= 0xF0u)
      {
        v10 = 240;
      }

      else
      {
        v10 = v6;
      }

      buf[0] = a2;
      *&buf[1] = 0;
      *&buf[3] = v8;
      buf[5] = v10;
      buf[6] = v6 < 0xF1u;
      __memcpy_chk();
      sub_100017C50(64793, buf, (v10 + 7), v34, &v13, 14);
      v11 = v34[4];
      if (v34[4])
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004A53C();
        }

        v12 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          *v16 = 67109376;
          v17 = a2;
          v18 = 1024;
          v19 = v11;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MSF-M2 type %d Error in Cal data. reason %d", v16, 0xEu);
        }
      }

      ++v9;
      v6 = v14 - 240;
      v14 -= 240;
      v8 += 240;
    }

    while (v7 > v9);
  }

  fprintf(__stderrp, "MSF-M2: Finished sending MSF type %d file to device\n");
LABEL_24:
  if (v15)
  {
    free(v15);
  }
}

uint64_t sub_100009E14(int a1, char **a2, char **a3)
{
  optind = 1;
  while (2)
  {
    v6 = getopt(a1, a2, "hw:Aa:Nn:Bb:s:ptgm:PeWvr:lQR:xuLq");
    switch(v6)
    {
      case 'A':
        if (qword_1004EE428 != -1)
        {
          sub_10004AC64();
        }

        v45 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "ready to write BDADDR using devicetree from %s", &buf, 0xCu);
        }

        v46 = qword_1004EE3C8;
        v47 = 0;
        return sub_10000C674(v46, v47);
      case 'B':
        if (qword_1004EE428 != -1)
        {
          sub_10004AC3C();
        }

        v34 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ready to set baudrate using a predefined value from %s", &buf, 0xCu);
        }

        v27 = qword_1004EE3C8;
        v28 = 0;
        return sub_10000C93C(v27, v28);
      case 'C':
      case 'D':
      case 'E':
      case 'F':
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'M':
      case 'O':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'c':
      case 'd':
      case 'f':
      case 'i':
      case 'j':
      case 'k':
      case 'o':
        goto LABEL_4;
      case 'L':
        if (qword_1004EE428 != -1)
        {
          sub_10004A92C();
        }

        v37 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "ready to download Low power mode FW from %s", &buf, 0xCu);
        }

        v38 = qword_1004EE3C8;
        v39 = sub_100013A5C();
        if (v39)
        {
          v40 = v39;
          v41 = sub_10000FF8C(1);
          if (v41)
          {
            v42 = v41;
            if (qword_1004EE428 != -1)
            {
              sub_10004A940();
            }

            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              sub_10004A968();
            }
          }

          else
          {
            v42 = v40;
          }

          goto LABEL_196;
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004A9D8();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004AA00();
        }

        return 0xFFFFFFFFLL;
      case 'N':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB88();
        }

        v48 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "ready to set local name same as host name from %s", &buf, 0xCu);
        }

        v21 = qword_1004EE3C8;
        v22 = 0;
        return sub_10000CBA8(v21, v22);
      case 'P':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB60();
        }

        v30 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "ready to configure I2S PCM and GPIO pins from %s", &buf, 0xCu);
        }

        BYTE4(v134) = 0;
        LODWORD(v134) = 0;
        *v131 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        v31 = &v134;
        v32 = v131;
        v33 = -86;
        goto LABEL_157;
      case 'Q':
        if (qword_1004EE428 != -1)
        {
          sub_10004A904();
        }

        v29 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "ready to load calibration data from %s", &buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_62;
      case 'R':
        if (qword_1004EE428 != -1)
        {
          sub_10004A854();
        }

        v15 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ready to run RSSI sweep from %s", &buf, 0xCu);
        }

        v16 = optarg;
        v17 = objc_autoreleasePoolPush();
        v140 = 0;
        v138[4] = 0;
        *v138 = 921601;
        v130 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        v18 = [[NSString stringWithUTF8String:?], "componentsSeparatedByString:", @", "];
        if ([(NSArray *)v18 count]>= 5)
        {
          v19 = "RSSI Sweep requires 4 arguments -- iterations, F_start F_stop Gain";
          goto LABEL_192;
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v73 = [(NSArray *)v18 countByEnumeratingWithState:&v134 objects:v131 count:16];
        if (v73)
        {
          v74 = 0;
          v75 = *v135;
          while (1)
          {
            v76 = 0;
            v77 = v74;
            do
            {
              if (*v135 != v75)
              {
                objc_enumerationMutation(v18);
              }

              v78 = [*(*(&v134 + 1) + 8 * v76) intValue];
              if (v78 >= 0x10000)
              {
                v19 = "Parameter out of range";
LABEL_192:
                puts(v19);
LABEL_193:
                v14 = 0xFFFFFFFFLL;
                goto LABEL_194;
              }

              v74 = v77 + 1;
              *(&v140 + v77) = v78;
              v76 = v76 + 1;
              ++v77;
            }

            while (v73 != v76);
            v73 = [(NSArray *)v18 countByEnumeratingWithState:&v134 objects:v131 count:16];
            if (!v73)
            {
              v79 = v140;
              LODWORD(v73) = WORD1(v140);
              v80 = WORD2(v140);
              v81 = HIWORD(v140);
              goto LABEL_209;
            }
          }
        }

        v81 = 0;
        v80 = 0;
        v79 = 0;
LABEL_209:
        fprintf(__stderrp, "RSSI Sweep Results:\n# Iteration: %d\nStart Frequency: %d MHz \nStop Frequency: %d MHz \nGain: %d\n", v79, v73, v80, v81);
        *&v138[1] = v79;
        *&v138[5] = v73;
        *&v138[7] = v80;
        v139 = v81;
        sub_100017C50(64767, v138, 0xAuLL, &buf, &v130, 14);
        if (BYTE3(buf))
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004A868();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004A890(&buf + 3);
          }

          printf("RSSI Sweep failed! Error code %02X", BYTE3(buf));
          goto LABEL_193;
        }

        if (v80 - v73 >= 0)
        {
          v125 = (v80 - v73 + 8) - 7;
          v126 = &buf + 7;
          do
          {
            v127 = *v126++;
            fprintf(__stderrp, "%d MHz: %d dBm \n", v73, v127 | 0xFFFFFF00);
            LODWORD(v73) = v73 + 1;
            --v125;
          }

          while (v125);
        }

        fputc(10, __stderrp);
        v14 = 0;
LABEL_194:
        objc_autoreleasePoolPop(v17);
        return v14;
      case 'W':
        if (qword_1004EE428 != -1)
        {
          sub_10004AA50();
        }

        v43 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ready to download default HCD file from %s", &buf, 0xCu);
        }

        v38 = qword_1004EE3C8;
        v44 = sub_10000FF8C(0);
        if (v44)
        {
          v42 = v44;
          if (qword_1004EE428 != -1)
          {
            sub_10004AA64();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004AA8C();
          }

LABEL_196:
          v71 = v38;
          v72 = v42;
          return sub_10000D24C(v71, v72);
        }

        else
        {
          if (sub_10001382C())
          {
            sub_1000158B0();
          }

          return sub_10000E3E8(v38, sub_1000102E0);
        }

      case 'a':
        if (qword_1004EE428 != -1)
        {
          sub_10004AC78();
        }

        v49 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "ready to write all zero BDADDR from %s", &buf, 0xCu);
        }

        v46 = qword_1004EE3C8;
        v47 = optarg;
        return sub_10000C674(v46, v47);
      case 'b':
        if (qword_1004EE428 != -1)
        {
          sub_10004AC50();
        }

        v26 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "ready to set baudrate from %s", &buf, 0xCu);
        }

        v27 = qword_1004EE3C8;
        v28 = optarg;
        return sub_10000C93C(v27, v28);
      case 'e':
        if (qword_1004EE428 != -1)
        {
          sub_10004AC00();
        }

        v9 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ready to read power counter from %s", &buf, 0xCu);
        }

        *v138 = 1008;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        *v131 = 0;
        sub_100017E2C(v138, 2uLL, &buf, v131);
        if (*v131 == 15 && buf == 240 && BYTE2(buf) == 3)
        {
          v88 = 5 * *(&buf + 3);
          if (qword_1004EE428 != -1)
          {
            sub_10004AC14();
          }

          v89 = 2 * v88;
          v90 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v134) = 67109120;
            DWORD1(v134) = v89;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "power=%u", &v134, 8u);
          }

          if (a3)
          {
            v91 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
            *a3 = v91;
            if (v91)
            {
              __sprintf_chk(v91, 0, 0x40uLL, "power=%u", v89);
            }
          }

          return 0;
        }

        *__error() = -94;
        return 0xFFFFFFFFLL;
      case 'g':
        if (qword_1004EE428 != -1)
        {
          sub_10004ABEC();
        }

        v35 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "ready to set I2S GPIO lines from %s", &buf, 0xCu);
        }

        BYTE2(v134) = 0;
        LOWORD(v134) = 2307;
        v138[2] = 0;
        *v138 = 2308;
        strcpy(&v140, "\a\t");
        *v131 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        sub_100017C50(64537, &v134, 3uLL, &buf, v131, 14);
        sub_100017C50(64537, v138, 3uLL, &buf, v131, 14);
        v31 = &v140;
        v32 = v131;
        v33 = -999;
        v36 = 3;
        goto LABEL_158;
      case 'h':
        fprintf(__stderrp, "%s - Broadcom Specific Commands\n", *a2);
        fwrite("-w    - Download HCD configuration file /path/to/hcd/file.hcd\n", 0x3EuLL, 1uLL, __stderrp);
        fwrite("-W    - Download default HCD \n", 0x1EuLL, 1uLL, __stderrp);
        fwrite("-L    - Download Low power mode FW \n", 0x24uLL, 1uLL, __stderrp);
        fwrite("-v    - prints the default hcd file loaded \n", 0x2CuLL, 1uLL, __stderrp);
        fwrite("-a    - Set BDADDR - 00:00:00:00:00:00\n", 0x27uLL, 1uLL, __stderrp);
        fwrite("-A    - Set BDADDR using devicetree\n", 0x24uLL, 1uLL, __stderrp);
        fwrite("-b    - Set the baud rate - Baud Rate\n", 0x26uLL, 1uLL, __stderrp);
        fwrite("-B    - Set the baud rate using a predefined value\n", 0x33uLL, 1uLL, __stderrp);
        fwrite("-P    - Configure I2S PCM and GPIO pins (inactive function/mode)\n", 0x41uLL, 1uLL, __stderrp);
        fwrite("-g    - Setup the I2S GPIO lines\n", 0x21uLL, 1uLL, __stderrp);
        fwrite("-p    - Routes sco over PCM\n", 0x1CuLL, 1uLL, __stderrp);
        fwrite("-t    - Routes sco over Transport (HCI)\n", 0x28uLL, 1uLL, __stderrp);
        fwrite("-n    - Set the local name - Local Name\n", 0x28uLL, 1uLL, __stderrp);
        fwrite("-N    - Set the local name to equal the host name\n", 0x32uLL, 1uLL, __stderrp);
        fwrite("-s    - Set the sleep mode - Sleep Mode, (0x09 = H5)\n", 0x35uLL, 1uLL, __stderrp);
        fwrite("                             Idle Threshold Host, (Not applicable to \n", 0x46uLL, 1uLL, __stderrp);
        fwrite("                             Idle Threshold HC,\n", 0x30uLL, 1uLL, __stderrp);
        fwrite("                             BT WAKE Active Mode,\n", 0x32uLL, 1uLL, __stderrp);
        fwrite("                             Host WAKE Active Mode,\n", 0x34uLL, 1uLL, __stderrp);
        fwrite("                             Allow Host Sleep During SCO,\n", 0x3AuLL, 1uLL, __stderrp);
        fwrite("                             Combine Sleep Mode and LPM,\n", 0x39uLL, 1uLL, __stderrp);
        fwrite("                             Enable Tristate Control of UART TX Line,\n", 0x46uLL, 1uLL, __stderrp);
        fwrite("                             Active Connection Handling On Suspend,\n", 0x44uLL, 1uLL, __stderrp);
        fwrite("                             Resume Timeout,\n", 0x2DuLL, 1uLL, __stderrp);
        fwrite("                             Enable Break to Host,\n", 0x33uLL, 1uLL, __stderrp);
        fwrite("                             Pulsed Host Wake,\n", 0x2FuLL, 1uLL, __stderrp);
        fwrite("-m    - Checks manufacturer\n", 0x1CuLL, 1uLL, __stderrp);
        fwrite("-R    - Run RSSI sweep (MFG FW required)\n", 0x29uLL, 1uLL, __stderrp);
        fwrite("-r    - Writes to RAM\n", 0x16uLL, 1uLL, __stderrp);
        fwrite("-x    - Load regulatory power table\n", 0x24uLL, 1uLL, __stderrp);
        fwrite("-u    - Update firmware in serial flash\n", 0x28uLL, 1uLL, __stderrp);
        fwrite("-Q    - Load calibration data\n", 0x1EuLL, 1uLL, __stderrp);
        fwrite("-q    - Load calibration data and print complete calibration data to stdio\n", 0x4BuLL, 1uLL, __stderrp);
        fputc(10, __stderrp);
        return 0;
      case 'l':
        if (qword_1004EE428 != -1)
        {
          sub_10004AA3C();
        }

        v25 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ready to enable LMP_log from %s", &buf, 0xCu);
        }

        BYTE4(buf) = 0;
        LODWORD(buf) = 117567495;
        off_1004EE3D8(qword_1004EE3C8, &buf, 5);
        usleep(0xC3500u);
        off_1004EE410(qword_1004EE3C8);
        return 0;
      case 'm':
        if (qword_1004EE428 != -1)
        {
          sub_10004ABB0();
        }

        v61 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "ready to check manufacturer from %s", &buf, 0xCu);
          v62 = optarg;
          if (qword_1004EE428 != -1)
          {
            sub_10004ABC4();
          }
        }

        else
        {
          v62 = optarg;
        }

        v82 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "int check_manufacturer(const char *)";
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
        }

        v83 = sub_100043FA8();
        if (!v83)
        {
          return 0;
        }

        return v83 == strtol(v62, 0, 10);
      case 'n':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB9C();
        }

        v20 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ready to set local name from %s", &buf, 0xCu);
        }

        v21 = qword_1004EE3C8;
        v22 = optarg;
        return sub_10000CBA8(v21, v22);
      case 'p':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB74();
        }

        v11 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ready to route SCO over PCM from %s", &buf, 0xCu);
        }

        BYTE4(v134) = 0;
        LODWORD(v134) = 0x10000;
        v138[4] = 9;
        v12 = 134809857;
        goto LABEL_156;
      case 'q':
        if (qword_1004EE428 != -1)
        {
          sub_10004A918();
        }

        v7 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ready to load calibration data (complete printed to stdio) from %s", &buf, 0xCu);
        }

        v8 = 1;
LABEL_62:
        sub_10000D3E4(v8);
        return 0;
      case 'r':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB4C();
        }

        v50 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "ready to write RAM from %s", &buf, 0xCu);
        }

        v51 = optarg;
        v52 = strchr(optarg, 61);
        memset(v133, 0, sizeof(v133));
        v132 = 0u;
        memset(&v131[4], 0, 208);
        *&v134 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        if (!v52)
        {
          return 0xFFFFFFFFLL;
        }

        v53 = v52;
        v54 = strtol(v51, 0, 0);
        v14 = 0xFFFFFFFFLL;
        if (v54 > 0xFFFFFFFFLL)
        {
          return v14;
        }

        *v131 = v54;
        v55 = 4;
        while (*v53)
        {
          *v53 = 0;
          v56 = v53 + 1;
          v131[v55] = strtol(v56, 0, 0);
          v57 = strchr(v56, 44);
          v58 = v55 + 1;
          if (v55 <= 0xFD)
          {
            v53 = v57;
            ++v55;
            if (v57)
            {
              continue;
            }
          }

          goto LABEL_216;
        }

        v58 = v55;
LABEL_216:
        v36 = v58;
        v31 = v131;
        v32 = &v134;
        v33 = -948;
LABEL_158:
        sub_100017C50(v33, v31, v36, &buf, v32, 14);
        return 0;
      case 's':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB38();
        }

        v23 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ready to set sleep mode from %s", &buf, 0xCu);
        }

        return sub_10000CF04(qword_1004EE3C8, optarg);
      case 't':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB24();
        }

        v69 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "ready to route SCO over HCI from %s", &buf, 0xCu);
        }

        BYTE4(v134) = 0;
        LODWORD(v134) = 65537;
        v138[4] = 9;
        v12 = 151587073;
LABEL_156:
        *v138 = v12;
        *v131 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        sub_100017C50(64609, v138, 5uLL, &buf, v131, 14);
        v31 = &v134;
        v32 = v131;
        v33 = -996;
LABEL_157:
        v36 = 5;
        goto LABEL_158;
      case 'u':
        if (qword_1004EE428 != -1)
        {
          sub_10004A564();
        }

        v13 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ready to update FW in serial flash from %s", &buf, 0xCu);
        }

        sub_10000E1B8();
        return 5;
      case 'v':
        if (qword_1004EE428 != -1)
        {
          sub_10004AB10();
        }

        v59 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "ready to print the default hcd file loaded from %s", &buf, 0xCu);
        }

        v60 = sub_100044574();
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        sub_100044C84();
        if (sub_10000FF8C(0))
        {
          fprintf(__stdoutp, "File firmware is %s\n");
        }

        else
        {
          memset(v131, 0, 144);
          snprintf(&buf, 0x80uLL, "/etc/bluetool/%s.boot.script", v60);
          if (!stat(&buf, v131))
          {
            v93 = fopen(&buf, "r");
            if (v93)
            {
              v94 = v93;
              v95 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
              if (v95)
              {
                v96 = v95;
                while (!feof(v94))
                {
                  v97 = fgets(v96, 1024, v94);
                  if (v97)
                  {
                    v98 = v97;
                    v99 = strlen(v97);
                    if (v99 >= 0xA)
                    {
                      v98[v99 - 1] = 0;
                      if (!strncmp(v98, "bcm -w ", 7uLL))
                      {
                        fprintf(__stdoutp, "File firmware is %s\n", v98 + 7);
                      }
                    }
                  }
                }

                fclose(v94);
                free(v96);
              }

              else
              {
                fclose(v94);
              }
            }
          }

          v84 = __stdoutp;
          v85 = sub_10001382C();
          fprintf(v84, "Default firmware is %s\n", v85);
          v86 = __stdoutp;
          sub_100044C84();
          fprintf(v86, "Chipset is %s\n");
        }

        return 0;
      case 'w':
        if (qword_1004EE428 != -1)
        {
          sub_10004AAFC();
        }

        v70 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "ready to download HCD file at /path/to/hcd/file.hcd from %s", &buf, 0xCu);
        }

        v71 = qword_1004EE3C8;
        v72 = optarg;
        return sub_10000D24C(v71, v72);
      case 'x':
        if (qword_1004EE428 != -1)
        {
          sub_10004A578();
        }

        v63 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "bluetool_command_broadcom";
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "ready to load regulatory power table from %s", &buf, 0xCu);
        }

        *v138 = 0;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        buf = 0u;
        v142 = 0u;
        v64 = sub_100044C84();
        v65 = sub_100044574();
        v66 = sub_1000158A4();
        if (strcmp(v64, "BCM4377B2"))
        {
          if (!strcmp(v64, "BCM4377B3"))
          {
            v67 = 0;
            v68 = 250;
            goto LABEL_245;
          }

          if (!strcmp(v64, "BCM4387C2"))
          {
            if (strnstr(v66, "Maldives", 0x400uLL) || strnstr(v66, "Madagascar", 0x400uLL) || strnstr(v66, "Okinawa", 0x400uLL))
            {
              goto LABEL_242;
            }

            v92 = "Macadamia";
          }

          else
          {
            if (!strcmp(v64, "BCM4387C0"))
            {
              v68 = 260;
              goto LABEL_244;
            }

            if (strcmp(v64, "BCM4378B1") && strcmp(v64, "BCM4378B3"))
            {
              if (!strcmp(v64, "BCM4388B0"))
              {
                if (!strnstr(v66, "Amami", 0x400uLL) && !strnstr(v66, "Tokara", 0x400uLL))
                {
                  v68 = 1572;
                  goto LABEL_244;
                }
              }

              else
              {
                if (strcmp(v64, "BCM4388C0") && strcmp(v64, "BCM4388C2"))
                {
                  v67 = 0;
                  v68 = 210;
                  goto LABEL_245;
                }

                if (strnstr(v66, "MahoganyA", 0x400uLL) || strnstr(v66, "MahoganyB", 0x400uLL) || strnstr(v66, "HickoryA", 0x400uLL) || strnstr(v66, "HickoryB", 0x400uLL) || strnstr(v66, "Miyake", 0x400uLL) || strnstr(v66, "Tasmania", 0x400uLL) || strnstr(v66, "Sumatra", 0x400uLL) || strnstr(v66, "Java", 0x400uLL) || strnstr(v66, "Amami", 0x400uLL) || strnstr(v66, "Iona", 0x400uLL) || strnstr(v66, "Azores", 0x400uLL) || strnstr(v66, "Tokara", 0x400uLL) || strnstr(v66, "Tresco", 0x400uLL))
                {
                  v68 = 3144;
                  goto LABEL_244;
                }
              }

              return 0;
            }

            if (strnstr(v66, "Marlin", 0x400uLL) || strnstr(v66, "Atlantis", 0x400uLL) || strnstr(v66, "AtlantisB", 0x400uLL) || strnstr(v66, "Capri", 0x400uLL) || strnstr(v66, "Santorini", 0x400uLL) || strnstr(v66, "Hazel", 0x400uLL))
            {
              goto LABEL_242;
            }

            v92 = "Redwood";
          }

          if (!strnstr(v66, v92, 0x400uLL))
          {
            v68 = 520;
            goto LABEL_244;
          }

LABEL_242:
          v68 = 786;
          goto LABEL_244;
        }

        if (strnstr(v66, "Monstro", 0x400uLL))
        {
          v68 = 378;
LABEL_244:
          v67 = 1;
          goto LABEL_245;
        }

        v68 = 378;
        if (strnstr(v66, "Pinocchio", 0x400uLL))
        {
          goto LABEL_244;
        }

        v100 = strnstr(v66, "MeekoB", 0x400uLL);
        v67 = v100 != 0;
        if (v100)
        {
          v68 = 378;
        }

        else
        {
          v68 = 250;
        }

LABEL_245:
        if (qword_1004EE428 != -1)
        {
          sub_10004A58C();
        }

        v101 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *v131 = 67109120;
          *&v131[4] = v68;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Expected ptb size is %d", v131, 8u);
        }

        v102 = malloc_type_calloc(v68, 1uLL, 0x100004077774924uLL);
        if (strcmp(v64, "BCM4355C0") && strcmp(v64, "BCM43430B1") && strcmp(v64, "BCM4357B1") && strcmp(v64, "BCM4355C1") && strcmp(v64, "BCM4377B2") && strcmp(v64, "BCM4377B3") && strcmp(v64, "BCM4378B1") && strcmp(v64, "BCM4378B3") && strcmp(v64, "BCM4387C0") && strcmp(v64, "BCM4387C2") && strcmp(v64, "BCM4388B0") && strcmp(v64, "BCM4388C0") && strcmp(v64, "BCM4388C2"))
        {
          goto LABEL_338;
        }

        if (!strcmp(v64, "BCM4377B2") || !strcmp(v64, "BCM4377B3") || !strcmp(v64, "BCM4378B1") || !strcmp(v64, "BCM4378B3") || !strcmp(v64, "BCM4387C0") || !strcmp(v64, "BCM4387C2") || !strcmp(v64, "BCM4388B0") || !strcmp(v64, "BCM4388C0") || !strcmp(v64, "BCM4388C2"))
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004A5B4();
          }

          v104 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 136315138;
            *&v131[4] = v64;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Chipset is %s, load regulatory data from file system", v131, 0xCu);
          }

          v103 = sub_100015AF4(v68, v102);
        }

        else
        {
          v103 = sub_1000159F8(v65, v102);
        }

        v14 = v103;
        if (!v103)
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004A700();
          }

          v113 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 68157954;
            *&v131[4] = v68;
            *&v131[8] = 2096;
            *&v131[10] = v102;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Regulatory data : %.*P", v131, 0x12u);
          }

          if (v67)
          {
            v114 = 0;
            v14 = 0;
            v115 = v68 / 0xCFu;
            if (v68 % 0xCFu)
            {
              v116 = v115 + 1;
            }

            else
            {
              v116 = v115;
            }

            v117 = v102;
            do
            {
              if (qword_1004EE428 != -1)
              {
                sub_10004A7B4();
              }

              v118 = qword_1004EE430;
              v119 = v68;
              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
              {
                *v131 = 67109632;
                *&v131[4] = v114 + 1;
                *&v131[8] = 1024;
                *&v131[10] = v116;
                *&v131[14] = 1024;
                *&v131[16] = v68;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Now sending ptb chunk %u of %u, %u bytes remaining", v131, 0x14u);
                v120 = qword_1004EE428 == -1;
              }

              else
              {
                v120 = 1;
              }

              LOWORD(v68) = v68 - 207;
              memset(&v131[2], 0, 207);
              if (v119 >= 0xCF)
              {
                v121 = 207;
              }

              else
              {
                v121 = v119;
              }

              *v131 = ~v114 + v116;
              __memcpy_chk();
              if (!v120)
              {
                sub_10004A7DC();
              }

              v122 = qword_1004EE430;
              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v134) = 67109634;
                DWORD1(v134) = v121;
                WORD4(v134) = 1040;
                *(&v134 + 10) = 209;
                HIWORD(v134) = 2096;
                *&v135 = v131;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "Loading %u bytes of ptb data: %.*P", &v134, 0x18u);
              }

              sub_100017C50(65037, v131, 0xD1uLL, &buf, v138, 14);
              if (BYTE3(buf))
              {
                if (qword_1004EE428 != -1)
                {
                  sub_10004A804();
                }

                v123 = qword_1004EE430;
                if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v134) = 67109120;
                  DWORD1(v134) = v114 + 1;
                  _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "Error in sending regulatory data in chunk %u", &v134, 8u);
                }

                v14 = 23;
              }

              ++v114;
              v117 += 207;
            }

            while (v116 != v114);
            if (v14)
            {
              goto LABEL_339;
            }

            if (qword_1004EE428 != -1)
            {
              sub_10004A82C();
            }

            v124 = qword_1004EE430;
            if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
            {
LABEL_338:
              v14 = 0;
LABEL_339:
              if (v102)
              {
                free(v102);
              }

              return v14;
            }

            *v131 = 0;
          }

          else
          {
            sub_100017C50(64920, v102, v68, &buf, v138, 14);
            if (BYTE3(buf))
            {
              if (qword_1004EE428 != -1)
              {
                sub_10004A728();
              }

              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_10004A750();
              }

              v14 = 23;
              goto LABEL_339;
            }

            if (qword_1004EE428 != -1)
            {
              sub_10004A78C();
            }

            v124 = qword_1004EE430;
            if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_338;
            }

            *v131 = 0;
          }

          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Regulatory data loaded successfully", v131, 2u);
          goto LABEL_338;
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004A5DC();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004A604();
        }

        v105 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *v131 = 136315394;
          *&v131[4] = v64;
          *&v131[12] = 2080;
          *&v131[14] = v65;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Chipset is %s, Platform is %s", v131, 0x16u);
        }

        v106 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/");
        if (v106)
        {
          v107 = v106;
          CFProperty = IORegistryEntryCreateCFProperty(v106, @"board-id", 0, 0);
          if (!CFProperty)
          {
LABEL_344:
            IOObjectRelease(v107);
            return v14;
          }

          v109 = CFProperty;
          v110 = CFGetTypeID(CFProperty);
          if (v110 != CFDataGetTypeID())
          {
            goto LABEL_343;
          }

          memset(v131, 0, 32);
          Length = CFDataGetLength(v109);
          BytePtr = CFDataGetBytePtr(v109);
          if (Length > 0x1F)
          {
            strncpy(v131, BytePtr, 0x20uLL);
          }

          else
          {
            CFDataGetLength(v109);
            __strncpy_chk();
          }

          v128 = strlen(v131);
          if (strncmp(v131, "Mac-E43C1C25D4880AD6", v128))
          {
LABEL_343:
            CFRelease(v109);
            goto LABEL_344;
          }

          if (qword_1004EE428 != -1)
          {
            sub_10004A674();
          }

          v129 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v134) = 0;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "[isBoardJ52FrankenStein] It is a J52 FrankenStein Setup\n", &v134, 2u);
          }

          CFRelease(v109);
          IOObjectRelease(v107);
          if (qword_1004EE428 != -1)
          {
            sub_10004A69C();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004A6C4();
          }

          return 0;
        }

        return v14;
      default:
        if (v6 == -1)
        {
          return 0;
        }

LABEL_4:
        fprintf(__stderrp, "Invalid option '%c'\n", v6);
        continue;
    }
  }
}

uint64_t sub_10000C674(int a1, const char *a2)
{
  v13 = 0;
  v12 = 0;
  if (!a2)
  {
    WORD2(__buf) = 0;
    LODWORD(__buf) = 0;
    if (sub_1000422B8(&__buf))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004AC8C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_100049D24();
      }

      return 0xFFFFFFFFLL;
    }

    v6.i32[0] = *(&__buf + 2);
    v8 = vrev64_s16(*&vmovl_u8(v6));
    v12 = vuzp1_s8(v8, v8).u32[0];
    LOBYTE(v13) = BYTE1(__buf);
    HIBYTE(v13) = __buf;
LABEL_13:
    LODWORD(v9) = 117178625;
    HIDWORD(v9) = v12;
    __buf = v9;
    v15 = v13;
    if (byte_1004EE424 == 1)
    {
      v10 = off_1004EE3E0(qword_1004EE3C8, &__buf, 10);
      if ((v10 & 0x80000000) != 0)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004ACDC();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004AD04();
        }

        return 0xFFFFFFFFLL;
      }

      return sub_10000EBB8(v10, 0xFC01u);
    }

    v10 = write(a1, &__buf, 0xAuLL);
    if (v10 == 10)
    {
      return sub_10000EBB8(v10, 0xFC01u);
    }

    v11 = v10;
    if (qword_1004EE428 != -1)
    {
      sub_10004ACB4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049D88();
      if (v11 < 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v11 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    *__error() = 5;
    return 0xFFFFFFFFLL;
  }

  if (*a2 == 36)
  {
    v3 = a2 + 1;
    v4 = getenv(a2 + 1);
    fprintf(__stderrp, "Overriding BDADDR from environment variable: %s = %s\n", v3, v4);
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  result = sub_10000F084(v5, &v12);
  if (result != -1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10000C93C(int a1, char *__str)
{
  if (byte_1004EE424)
  {
    return 0;
  }

  if (__str)
  {
    if (*__str == 36)
    {
      v3 = __str + 1;
      v4 = getenv(__str + 1);
      fprintf(__stderrp, "Overriding baud rate from environment variable: %s = %s\n", v3, v4);
      v5 = strtoul(v4, 0, 0);
    }

    else
    {
      v5 = strtoul(__str, 0, 0);
    }
  }

  else
  {
    v6 = sub_100041D24();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = 2400000;
    }
  }

  __buf = 117184513;
  v10 = 0;
  v11 = v5;
  v12 = BYTE2(v5);
  v13 = BYTE3(v5);
  v7 = write(a1, &__buf, 0xAuLL);
  if (v7 == 10)
  {
    if ((sub_10000EBB8(10, 0xFC18u) & 0x80000000) == 0)
    {
      off_1004EE400(qword_1004EE3C8, v5);
      return 0;
    }
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    *__error() = 5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000CBA8(uint64_t a1, uint64_t a2)
{
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
  *__s = 0u;
  v13 = 0u;
  if (a2)
  {
    v2 = a2;
    if (*a2 == 36)
    {
      v2 = getenv((a2 + 1));
      fprintf(__stderrp, "Overriding hostname from environment variable: %s = %s\n");
    }

    else
    {
      fprintf(__stderrp, "Using passed hostname: %s\n");
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    *__s = 0uLL;
    v13 = 0uLL;
    j__gethostname(__s, 0x100uLL);
    if (qword_1004EE428 != -1)
    {
      sub_10004AD74();
    }

    v2 = __s;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      sub_10004AD9C();
    }
  }

  v3 = strlen(v2);
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    v10 = -133426431;
    v4 = v3 - 1;
    if (v3 >= 1)
    {
      if (v4 >= 0xF7)
      {
        v4 = 247;
      }

      v5 = v4 + 1;
      v6 = v11;
      do
      {
        v7 = *v2++;
        *v6++ = v7;
        --v5;
      }

      while (v5);
    }

    v8 = off_1004EE3E0(qword_1004EE3C8, &v10, 252);
    if (v8 != -1)
    {
      return sub_10000EBB8(v8, 0xC13u);
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004AE0C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_100049EBC();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000CF04(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v5 = [[NSString stringWithUTF8String:?], "componentsSeparatedByString:", @", "];
  if ([(NSArray *)v5 count]<= 0x18 && [(NSArray *)v5 count]> 9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = 0;
      v11 = *v19;
      do
      {
        v12 = 0;
        v10 = v10;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v26.i8[v10++] = strtol([*(*(&v18 + 1) + 8 * v12) UTF8String], 0, 0);
          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
      v14 = v26;
      v13.i32[0] = v27;
      v15 = vmovl_u8(v13).u64[0];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    __buf = 217851649;
    v24 = v14;
    v25 = vuzp1_s8(v15, v14).u32[0];
    if (byte_1004EE424 == 1)
    {
      v16 = off_1004EE3E0(qword_1004EE3C8, &__buf, 16);
      if ((v16 & 0x80000000) != 0)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004AE5C();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004AE84();
        }

        goto LABEL_4;
      }
    }

    else
    {
      v16 = write(a1, &__buf, 0x10uLL);
      if (v16 != 16)
      {
        v17 = v16;
        if (qword_1004EE428 != -1)
        {
          sub_10004AE34();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004A204();
          if (v17 < 0)
          {
            goto LABEL_4;
          }
        }

        else if (v17 < 0)
        {
          goto LABEL_4;
        }

        *__error() = 5;
        goto LABEL_4;
      }
    }

    v6 = sub_10000EBB8(v16, 0xFC27u);
    goto LABEL_5;
  }

  puts("Sleep mode requires less than 24 parameters");
LABEL_4:
  v6 = 0xFFFFFFFFLL;
LABEL_5:
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t sub_10000D24C(int a1, char *a2)
{
  v3 = sub_10000E240(a2);
  v4 = open(v3, 0);
  if (v4 < 0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004AEC0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004AED4();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    sub_1000158B0();
    dword_1004EDFB8 = v5;
    v6 = sub_10000E3E8(a1, sub_10000E83C);
    close(v5);
    return v6;
  }
}

void sub_10000D3E4(int a1)
{
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  memset(v37, 0, 256);
  v2 = sub_100044C84();
  sub_100044574();
  bzero(__str, 0x400uLL);
  v27 = 1024;
  if (sysctlbyname("kern.bootargs", __str, &v27, 0, 0) || (v7 = strtok(__str, " ")) == 0)
  {
LABEL_2:
    v3 = sub_100044C84();
    if (qword_1004EE428 != -1)
    {
      sub_10004AF38();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      sub_10004AF60();
    }

    if (strcmp(v3, "BCM4355B3") && strcmp(v3, "BCM4355C0") && strcmp(v3, "BCM43430B1") && strcmp(v3, "BCM4357B1") && strcmp(v3, "BCM4355C1") && strcmp(v3, "BCM4377B2") && strcmp(v3, "BCM4377B3") && strcmp(v3, "BCM4378B1") && strcmp(v3, "BCM4378B3") && strcmp(v3, "BCM4387C0") && strcmp(v3, "BCM4387C2") && strcmp(v3, "BCM4388B0") && strcmp(v3, "BCM4388C0") && strcmp(v3, "BCM4388C2"))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004AFD0();
      }

      v4 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v5 = "Chipset does not support taurus cal";
LABEL_62:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
        goto LABEL_63;
      }

      goto LABEL_63;
    }

    if (strcmp(v2, "BCM4378B1") && strcmp(v2, "BCM4378B3") && strcmp(v2, "BCM4387C2") && strcmp(v2, "BCM4388B0") && strcmp(v2, "BCM4388C0") && strcmp(v2, "BCM4388C2"))
    {
      if (sub_100042AEC(&v30, &v29))
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004AFF8();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004B020();
          goto LABEL_134;
        }

        goto LABEL_60;
      }

      if (a1)
      {
        sub_10000F474(v30, v29);
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004B094();
      }

      v14 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 67109634;
        DWORD1(buf[0]) = v29;
        WORD4(buf[0]) = 1040;
        *(buf + 10) = v29;
        HIWORD(buf[0]) = 2096;
        *&buf[1] = v30;
        v15 = "Cal data to be loaded (%d bytes): %.*P";
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    LODWORD(buf[1]) = -1962371525;
    buf[0] = xmmword_1000521A1;
    if (MGIsDeviceOneOfType())
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004B0BC();
      }

      v6 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loading Calibration from FDR ... ", buf, 2u);
        *v41 = 0;
        *&v39 = 0;
        if (qword_1004EE428 != -1)
        {
          sub_10004B0E4();
        }
      }

      else
      {
        *v41 = 0;
        *&v39 = 0;
      }

      v8 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loading calibration of FATP stage ... \n", buf, 2u);
      }

      if (sub_100011204(&v39) == -1)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004B10C();
        }

        v13 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FATP stage calibration not found, looking for Golden calibration from SMT ... \n", buf, 2u);
        }

        if (sub_100011204(&v39))
        {
          if (*v41)
          {
            if (qword_1004EE428 != -1)
            {
              sub_10004B134();
            }

            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              sub_10004B15C(v41);
            }
          }

LABEL_57:
          if (qword_1004EE428 != -1)
          {
            sub_10004B208();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004B230();
LABEL_134:
            if (qword_1004EE428 != -1)
            {
              sub_10004B2A4();
            }
          }

LABEL_60:
          v4 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            v5 = "No taurus cal data. Load extended calibration for Simba";
            goto LABEL_62;
          }

LABEL_63:
          if (sub_100042AD8(&v34, &v33) || (!strcmp(v2, "BCM4355B3") ? (v12 = sub_100042AC4(&v32, &v31)) : (v12 = sub_100042AB0(&v32, &v31)), v12))
          {
            if (qword_1004EE428 != -1)
            {
              sub_10004B2CC();
            }

            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
            {
              sub_10004B2F4();
            }
          }

          else
          {
            if (v31 != 20 && v31 != 320 && v31 != 1360)
            {
              if (qword_1004EE428 != -1)
              {
                sub_10004B468();
              }

              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_10004B490();
              }

              goto LABEL_118;
            }

            if (v33 != 206)
            {
              if (qword_1004EE428 != -1)
              {
                sub_10004B368();
              }

              if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
              {
                sub_10004B390();
              }

              goto LABEL_118;
            }

            if (!strcmp(v2, "BCM4355B3"))
            {
              v24 = malloc_type_malloc(0x550uLL, 0x1000040B4D46FCDuLL);
              v25 = v32;
              *v24 = *v32;
              v24[1] = v25[1];
              LODWORD(v25) = v25[2];
              v24[2] = v25;
              if (v25 != 32)
              {
                if (qword_1004EE428 != -1)
                {
                  sub_10004B3CC();
                }

                if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
                {
                  sub_10004B3F4(v24 + 2);
                }

                free(v24);
                goto LABEL_118;
              }

              for (i = 12; i != 1356; i += 42)
              {
                sub_100017C50(64792, v32 + i, 0x2AuLL, v37, &v28, 14);
              }

              free(v24);
            }

            else
            {
              v22 = 0;
              v23 = 0;
              do
              {
                sub_100017C50(64792, v32 + v22, 0x14uLL, v37, &v28, 14);
                ++v23;
                v22 += 20;
              }

              while (v23 < v31 / 0x14u);
            }

            sub_100017C50(64798, v34, v33, v37, &v28, 14);
          }

LABEL_118:
          if (v32)
          {
            free(v32);
          }

          if (v33)
          {
            free(v34);
          }

          if (v30)
          {
            free(v30);
          }

          return;
        }
      }

      Length = CFDataGetLength(v39);
      v10 = Length;
      if (Length)
      {
        v30 = malloc_type_malloc(Length, 0x100004077774924uLL);
        v43.location = 0;
        v43.length = v10;
        CFDataGetBytes(v39, v43, v30);
        if (qword_1004EE428 != -1)
        {
          sub_10004B1E0();
        }

        v11 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 134217984;
          *(buf + 4) = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "btbf length %ld\n", buf, 0xCu);
        }
      }

      v29 = v10;
    }

    else if (sub_100042B00(&v30, &v29))
    {
      goto LABEL_57;
    }

    if (a1)
    {
      sub_10000F474(v30, v29);
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004B4CC();
    }

    v14 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109634;
      DWORD1(buf[0]) = v29;
      WORD4(buf[0]) = 1040;
      *(buf + 10) = v29;
      HIWORD(buf[0]) = 2096;
      *&buf[1] = v30;
      v15 = "Cal data for beamforming to be loaded (%d bytes): %.*P";
LABEL_83:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x18u);
    }

LABEL_84:
    if (!strcmp(v2, "BCM4355C0"))
    {
      LODWORD(buf[1]) = -350584140;
      buf[0] = xmmword_1000521B5;
      v42 = 368778837;
      *v41 = xmmword_1000521C9;
      v40 = -1418383976;
      v39 = xmmword_1000521DD;
      v38 = -1213485500;
      v37[16] = xmmword_1000521F1;
      if (MGIsDeviceOneOfType())
      {
        if (!*(v30 + 37) && sub_1000108CC(v30))
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004B4F4();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004B51C();
          }
        }
      }
    }

    v16 = v29 / 0xE6u;
    if (v29 % 0xE6u)
    {
      ++v16;
    }

    else if (v29 < 0xE6u)
    {
      goto LABEL_118;
    }

    v17 = 0;
    v18 = 0;
    while (dword_1004EE3D0)
    {
      memset(&buf[13] + 3, 0, 22);
      *(&buf[12] + 3) = 0u;
      *(&buf[11] + 3) = 0u;
      *(&buf[10] + 3) = 0u;
      *(&buf[9] + 3) = 0u;
      *(&buf[8] + 3) = 0u;
      *(&buf[7] + 3) = 0u;
      *(&buf[6] + 3) = 0u;
      *(&buf[5] + 3) = 0u;
      *(&buf[4] + 3) = 0u;
      *(&buf[3] + 3) = 0u;
      *(&buf[2] + 3) = 0u;
      memset(buf + 3, 0, 32);
      *(buf + 1) = ~v17 + v16;
      LOBYTE(buf[0]) = 3;
      __memcpy_chk();
      sub_100017C50(64919, buf, 0xE9uLL, v37, &v28, 14);
      v19 = BYTE4(v37[0]);
      if (BYTE4(v37[0]))
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004B598();
        }

        v20 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004B5C0(v41, v19, &v41[4], v20);
        }
      }

      ++v18;
      v29 -= 230;
      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_118;
      }
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004B628();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004B650();
    }

    goto LABEL_118;
  }

  while (!strstr(v7, "wifibt-external"))
  {
    v7 = strtok(0, " ");
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004AF10();
  }

  v21 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Thunderbolt to PCIe expansion chassis, so skip loading calibration data", buf, 2u);
  }
}

uint64_t sub_10000E1B8()
{
  if (qword_1004EE428 != -1)
  {
    sub_10004B68C();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_10004B6A0();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
  {
    sub_10004B710();
  }

  return 5;
}

char *sub_10000E240(char *a1)
{
  v1 = a1;
  if (strchr(a1, 58) && strchr(v1, 44))
  {
    v2 = sub_10000F258();
    v3 = strtok(v1, ":,");
    if (v3)
    {
      __endptr = 0;
      while (1)
      {
        v4 = strtol(v3, &__endptr, 0);
        v5 = strtok(0, ":,");
        v1 = v5;
        if (v4 == v2)
        {
          break;
        }

        if (!v5)
        {
          return v1;
        }

        v3 = strtok(0, ":,");
        if (!v3)
        {
          return 0;
        }
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004B74C();
      }

      v7 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = v1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using HCD File: %s", buf, 0xCu);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_10000E3E8(int a1, uint64_t (*a2)(_OWORD *))
{
  v4 = sub_100044C84();
  memset(__buf, 0, 259);
  if (byte_1004EE424 == 1)
  {
    return a2(__buf);
  }

  v6 = v4;
  LODWORD(__buf[0]) = 16526849;
  v7 = write(a1, __buf, 4uLL);
  if (v7 != 4)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      *__error() = 5;
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004B760();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004B788();
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10000EBB8(4, 0xFC2Eu) & 0x80000000) != 0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004B940();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004B968();
    }

    return 0xFFFFFFFFLL;
  }

  usleep(0xC350u);
  if (!v6)
  {
    v6 = &unk_1004CFB46;
  }

  if (!strcmp(v6, "BCM4325") || !strcmp(v6, "BCM4329B1") || !strcmp(v6, "BCM4329C0") || !strcmp(v6, "BCM20710"))
  {
    v8 = read(a1, __buf, 2uLL);
    if (v8 == 2)
    {
      if (LOBYTE(__buf[0]) - 48 <= 9 && BYTE1(__buf[0]) - 48 < 0xA)
      {
        goto LABEL_14;
      }

      *__error() = 94;
      if (qword_1004EE428 != -1)
      {
        sub_10004B828();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004B850();
      }
    }

    else
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        *__error() = 5;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004B7C4();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004B7EC();
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_14:
  for (i = 1; ; ++i)
  {
    v5 = a2(__buf);
    if (50 * (i / 0x32) == i)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004B88C();
      }

      v10 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = i;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Loading segment %d", buf, 8u);
      }
    }

    if (v5 < 1)
    {
      break;
    }

    if (LOBYTE(__buf[0]) != 1 || BYTE2(__buf[0]) != 252)
    {
      *__error() = 94;
      return 0xFFFFFFFFLL;
    }

    v11 = off_1004EE3E0(qword_1004EE3C8, __buf, v5);
    if (v11 == -1)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004B918();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004922C();
      }

      return 0xFFFFFFFFLL;
    }

    if ((sub_10000EBB8(v11, *(__buf + 1)) & 0x80000000) != 0)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004B8B4();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004B8DC();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_10000E83C(char *a1)
{
  if (byte_1004EE424 != 1)
  {
    v6 = read(dword_1004EDFB8, a1, 4uLL);
    if (!v6)
    {
      return 0;
    }

    if (v6 == 4)
    {
      if (*a1 == 1)
      {
        v7 = 4;
      }

      else
      {
        *(a1 + 1) = *a1;
        *a1 = 1;
        v7 = 5;
      }

      if (a1[2] == 252)
      {
        v4 = a1[3] + 4;
        v8 = &a1[v7];
        v9 = v4 - v7;
        v10 = read(dword_1004EDFB8, v8, v9);
        if (v10 == v9)
        {
          return v4;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          *__error() = 94;
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004BA3C();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004BA50();
        }
      }

      else
      {
        *__error() = 94;
        if (qword_1004EE428 != -1)
        {
          sub_10004B9A4();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004B9B8();
        }
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        *__error() = 94;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004BA8C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004BAA0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  memset(&v12, 0, sizeof(v12));
  if (fstat(dword_1004EDFB8, &v12) == -1)
  {
    st_size_low = 0xFFFFFFFFLL;
  }

  else
  {
    st_size_low = LODWORD(v12.st_size);
  }

  if (st_size_low < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = malloc_type_malloc(st_size_low, 0x100004077774924uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (st_size_low == read(dword_1004EDFB8, v2, st_size_low))
  {
    v4 = sub_100002ED4(v3, st_size_low);
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004BADC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB04();
    }

    v4 = 0xFFFFFFFFLL;
  }

  free(v3);
  return v4;
}

uint64_t sub_10000EBB8(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  off_1004EE3F8(qword_1004EE3C8, &v22, 258, &v7);
  if (v7 < 4)
  {
LABEL_2:
    *__error() = 5;
    if (qword_1004EE428 != -1)
    {
      sub_10004BBD4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBFC();
    }

    return 0xFFFFFFFFLL;
  }

  while (v22 != 14)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004BB84();
    }

    v3 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v22;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "EVNT: Previous command did not complete yet: %02X", buf, 8u);
    }

    v38 = 0;
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
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    off_1004EE3F8(qword_1004EE3C8, &v22, 258, &v7);
    if (v7 < 4)
    {
      goto LABEL_2;
    }
  }

  if (BYTE2(v22) != 1 || BYTE3(v22) != a2 || (BYTE4(v22) == a2 >> 8 ? (v4 = BYTE5(v22) == 0) : (v4 = 0), !v4))
  {
    *__error() = 94;
    if (qword_1004EE428 != -1)
    {
      sub_10004BBAC();
    }

    v5 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110656;
      v9 = v22;
      v10 = 1024;
      v11 = BYTE1(v22);
      v12 = 1024;
      v13 = BYTE2(v22);
      v14 = 1024;
      v15 = BYTE3(v22);
      v16 = 1024;
      v17 = BYTE4(v22);
      v18 = 1024;
      v19 = BYTE5(v22);
      v20 = 1024;
      v21 = a2;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EVNT: Invalid opcode Got:[0x%x 0x%x 0x%x 0x%x 0x%x 0x%x], waiting for [0x%x] !", buf, 0x2Cu);
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_10000F084(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (strlen(a1) < 0x11)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (a1 + 1);
  for (i = 5; i != -1; --i)
  {
    v7 = *(v5 - 1);
    v8 = v7 - 48;
    v9 = v7 - 97;
    if ((v7 - 65) >= 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 - 55;
    }

    v11 = v7 - 87;
    if (v9 > 5)
    {
      v11 = v10;
    }

    if (v8 < 0xA)
    {
      v11 = v8;
    }

    v12 = 16 * v11;
    *(a2 + i) = v12;
    v14 = *v5;
    v5 += 3;
    v13 = v14;
    v15 = v14 - 48;
    v16 = v14 - 97;
    v17 = v14 - 55;
    if ((v14 - 65) >= 6)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v19 = v13 - 87;
    if (v16 > 5)
    {
      v19 = v18;
    }

    if (v15 < 0xA)
    {
      v19 = v15;
    }

    *(a2 + i) = v19 | v12;
  }

  return 0;
}

uint64_t sub_10000F258()
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v2 = 0;
  off_1004EE3F0(qword_1004EE3C8, &unk_10005235B, 3);
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v7, 258, &v2);
  }

  while (LOBYTE(v7[0]) != 14);
  if (qword_1004EE428 != -1)
  {
    sub_10004BC38();
  }

  v0 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v4 = BYTE13(v7[0]);
    v5 = 1024;
    v6 = BYTE12(v7[0]);
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LMP Subversion: 0x%02X%02x", buf, 0xEu);
  }

  return WORD6(v7[0]);
}

size_t sub_10000F474(unsigned __int8 *a1, int a2)
{
  result = fwrite("Cal data for beamforming to be loaded:\n", 0x27uLL, 1uLL, __stdoutp);
  if (a2)
  {
    v5 = &a1[a2];
    do
    {
      v6 = *a1++;
      result = fprintf(__stdoutp, "%02X ", v6);
    }

    while (a1 < v5);
  }

  return result;
}

void sub_10000F4F4(uint64_t a1, unsigned int *a2, char *__s)
{
  if (a1)
  {
    if (a2)
    {
      v4 = __s;
      v6 = strlen(__s);
      v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
      if (v7)
      {
        v8 = v7;
        v9 = *v4;
        if (*v4)
        {
          v10 = 0;
          do
          {
            ++v4;
            while (1)
            {
              v11 = __tolower(v9);
              if (v11 <= 0xFF && (_DefaultRuneLocale.__runetype[v11] & 0x10000) != 0)
              {
                break;
              }

              v12 = *v4++;
              v9 = v12;
              if (!v12)
              {
                goto LABEL_14;
              }
            }

            v8[v10++] = v11;
            v9 = *v4;
          }

          while (*v4);
        }

        else
        {
          v10 = 0;
        }

LABEL_14:
        v8[v10] = 0;
        LOBYTE(v13) = *v8;
        if (*v8)
        {
          v14 = 0;
          v15 = v8;
          do
          {
            v16 = __tolower(v13);
            if ((v16 - 48) >= 0xA)
            {
              v17 = v16 - 87;
            }

            else
            {
              v17 = v16 - 48;
            }

            if (v15[1])
            {
              v18 = 2;
            }

            else
            {
              v18 = 1;
            }

            if (v15[1])
            {
              v19 = v15 + 2;
            }

            else
            {
              v19 = v15 + 1;
            }

            if (v15[1])
            {
              v20 = v15[1];
            }

            else
            {
              v20 = 48;
            }

            v21 = __tolower(v20);
            v22 = v21 - 48;
            if (v22 >= 0xA)
            {
              LOBYTE(v22) = v21 - 87;
            }

            *(a1 + v14++) = v22 | (16 * v17);
            v13 = v15[v18];
            v15 = v19;
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        free(v8);
        *a2 = v14;
      }
    }
  }
}

uint64_t sub_10000F668(const char *a1, int *a2)
{
  memset(v48, 0, sizeof(v48));
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  memset(v47, 0, sizeof(v47));
  v32 = 0;
  v33 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v2 = fopen(a1, "r");
  if (fgets(v48, 128, v2))
  {
    v3 = 0;
    v30 = 0;
    v4 = &qword_1004EE430;
    do
    {
      if (sscanf(v48, ":%2hhx%4hx%2hhx", &v37, &v36, &v35) == 3)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004BC60();
        }

        v5 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          *v39 = v37;
          *&v39[4] = 1024;
          *&v39[6] = v36;
          *v40 = 1024;
          *&v40[2] = v35;
          _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "count = 0x%02X addressOffset = 0x%04X type = 0x%02X", buf, 0x14u);
        }

        if (v35 == 4)
        {
          sscanf((v48 | 9), "%4hx", &v34);
          v13 = v34;
          v14 = v36;
          if (qword_1004EE428 != -1)
          {
            sub_10004BC88();
          }

          v15 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            *v39 = v36;
            *&v39[4] = 1024;
            *&v39[6] = v34;
            *v40 = 1024;
            *&v40[2] = v14 | (v13 << 16);
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, " addressOffset = 0x%04X addressBase = 0x%04X inAddress = 0x%08X", buf, 0x14u);
          }
        }

        else if (!v35)
        {
          v6 = v4;
          v7 = v34;
          v8 = v36;
          v9 = v36 | (v34 << 16);
          if (v3)
          {
            HIDWORD(v33) = 0;
            sub_10000F4F4(v47, &v33 + 1, (v48 | 9));
            if (qword_1004EE428 != -1)
            {
              sub_10004BCD8();
            }

            v10 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
            {
              v17 = v47[0];
              if (!HIDWORD(v33))
              {
                v17 = 0;
              }

              v18 = v47[1];
              if (HIDWORD(v33) <= 1)
              {
                v18 = 0;
              }

              v19 = v47[2];
              if (HIDWORD(v33) <= 2)
              {
                v19 = 0;
              }

              v20 = v47[3];
              if (HIDWORD(v33) <= 3)
              {
                v20 = 0;
              }

              *buf = 67110400;
              *v39 = v9;
              *&v39[4] = 1024;
              *&v39[6] = HIDWORD(v33);
              *v40 = 1024;
              *&v40[2] = v17;
              *v41 = 1024;
              *&v41[2] = v18;
              *v42 = 1024;
              *&v42[2] = v19;
              LOWORD(v43[0]) = 1024;
              *(v43 + 2) = v20;
              _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, " inAddress = 0x%08X inLength = 0x%08X inData[0-3] = 0x%02X%02X%02X%02X...", buf, 0x26u);
            }

            LOWORD(v44[0]) = v8;
            WORD1(v44[0]) = v7;
            v11 = HIDWORD(v33);
            __memcpy_chk();
            sub_100017C50(64588, v44, (v11 + 3), v44, &v32, 14);
            if (qword_1004EE428 != -1)
            {
              sub_10004BD00();
            }

            v4 = v6;
            v12 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219008;
              *v39 = v32;
              *&v39[8] = 1024;
              *v40 = LOBYTE(v44[0]);
              *&v40[4] = 1024;
              *v41 = BYTE1(v44[0]);
              *&v41[4] = 1024;
              *v42 = BYTE2(v44[0]);
              *&v42[4] = 1024;
              v43[0] = BYTE3(v44[0]);
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "pktLength %zu WriteRAM 0x%02X%02X%02X%02X", buf, 0x24u);
            }

            if (BYTE3(v44[0]))
            {
              goto LABEL_42;
            }

            v3 = 1;
          }

          else
          {
            *a2 = v9;
            if (qword_1004EE428 != -1)
            {
              sub_10004BCB0();
            }

            v16 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
            {
              v21 = *a2;
              *buf = 67109120;
              *v39 = v21;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, " addressLaunch = 0x%08X", buf, 8u);
            }

            LODWORD(v33) = 0;
            sub_10000F4F4(v46, &v33, (v48 | 9));
            v3 = 1;
            v30 = v9;
            v4 = v6;
          }
        }
      }
    }

    while (fgets(v48, 128, v2));
    if ((v3 & 1) == 0)
    {
      return fclose(v2);
    }

LABEL_42:
    if (qword_1004EE428 != -1)
    {
      sub_10004BD28();
    }

    v22 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v26 = v46[0];
      if (!v33)
      {
        v26 = 0;
      }

      v27 = v46[1];
      if (v33 <= 1)
      {
        v27 = 0;
      }

      v28 = v46[2];
      if (v33 <= 2)
      {
        v28 = 0;
      }

      v29 = v46[3];
      if (v33 <= 3)
      {
        v29 = 0;
      }

      *buf = 67110400;
      *v39 = v30;
      *&v39[4] = 1024;
      *&v39[6] = v33;
      *v40 = 1024;
      *&v40[2] = v26;
      *v41 = 1024;
      *&v41[2] = v27;
      *v42 = 1024;
      *&v42[2] = v28;
      LOWORD(v43[0]) = 1024;
      *(v43 + 2) = v29;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, " firstAddress = 0x%08X firstLength = 0x%08X firstData[0-3] = 0x%02X%02X%02X%02X...", buf, 0x26u);
    }

    LODWORD(v44[0]) = v30;
    v23 = v33;
    __memcpy_chk();
    sub_100017C50(64588, v44, (v23 + 3), v44, &v32, 14);
    if (qword_1004EE428 != -1)
    {
      sub_10004BD50();
    }

    v24 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      *v39 = v32;
      *&v39[8] = 1024;
      *v40 = LOBYTE(v44[0]);
      *&v40[4] = 1024;
      *v41 = BYTE1(v44[0]);
      *&v41[4] = 1024;
      *v42 = BYTE2(v44[0]);
      *&v42[4] = 1024;
      v43[0] = BYTE3(v44[0]);
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "pktLength %zu WriteRAM 0x%02X%02X%02X%02X", buf, 0x24u);
    }
  }

  return fclose(v2);
}

char *sub_10000FF8C(int a1)
{
  v1 = &byte_1004ECAB0;
  if (!byte_1004ECAB0)
  {
    v3 = sub_100044C84();
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = MGCopyAnswer();
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = CFEqual(v5, @"Vendor");
    v8 = CFEqual(v6, @"Internal");
    v9 = CFEqual(v6, @"NonUI");
    v10 = CFEqual(v6, @"VendorNonUI");
    CFRelease(v6);
    if (!v7 && !v8 && !v9 && !v10)
    {
      return 0;
    }

    v11 = opendir("/etc/bluetool");
    if (v11)
    {
      v12 = v11;
      v13 = readdir(v11);
      if (v13)
      {
        v14 = v13;
        while (1)
        {
          if (qword_1004EE428 != -1)
          {
            sub_10004BD78();
          }

          v15 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            d_name = v14->d_name;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Looking at file %s", buf, 0xCu);
          }

          v16 = v14->d_name;
          v17 = strlen(v4);
          if (!strncmp(v16, v4, v17) && (strstr(v16, "LPM") == 0) != a1)
          {
            bzero(&byte_1004ECAB0, 0x400uLL);
            __strlcat_chk();
            __strlcat_chk();
            if (qword_1004EE428 != -1)
            {
              sub_10004BDA0();
            }

            v18 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              d_name = &byte_1004ECAB0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Looking at firmware file %s", buf, 0xCu);
            }

            if (!access(&byte_1004ECAB0, 4))
            {
              break;
            }
          }

          readdir(v12);
          v14 = readdir(v12);
          if (!v14)
          {
            goto LABEL_26;
          }
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004BDC8();
        }

        v20 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          d_name = v16;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Have access to file %s", buf, 0xCu);
        }

        v1 = &byte_1004ECAB0;
      }

      else
      {
LABEL_26:
        v1 = 0;
      }

      closedir(v12);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1000102E0(_DWORD *a1)
{
  if (byte_1004EE424 == 1)
  {
    v1 = sub_1000140D0();
    if (v1 >= 1)
    {
      v2 = v1;
      v3 = malloc_type_malloc(v1, 0x100004077774924uLL);
      if (v3)
      {
        v4 = v3;
        if ((sub_100013000() & 0x80000000) == 0)
        {
          if (sub_1000132FC(v2, v4) == v2)
          {
            v5 = sub_100002ED4(v4, v2);
LABEL_24:
            free(v4);
            return v5;
          }

          if (qword_1004EE428 != -1)
          {
            sub_10004BE2C();
          }

          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            sub_10004BE40();
          }
        }

        v5 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 0;
  }

  v7 = sub_1000132FC(4, a1);
  v5 = v7;
  if (v7)
  {
    if (v7 == 4)
    {
      if (*a1 == 1)
      {
        v8 = 4;
      }

      else
      {
        *(a1 + 1) = *a1;
        *a1 = 1;
        v8 = 5;
      }

      if (*(a1 + 2) == 252)
      {
        v5 = *(a1 + 3) + 4;
        v9 = v5 - v8;
        v10 = sub_1000132FC(v5 - v8, a1 + v8);
        if (v10 == v9)
        {
          return v5;
        }

        if ((v10 & 0x80000000) == 0)
        {
          *__error() = 94;
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004BE04();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004BA50();
        }
      }

      else
      {
        *__error() = 94;
        if (qword_1004EE428 != -1)
        {
          sub_10004BDF0();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004B9B8();
        }
      }
    }

    else
    {
      if ((v7 & 0x80000000) == 0)
      {
        *__error() = 94;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004BE18();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004BAA0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t sub_1000108CC(unsigned int *a1)
{
  if (qword_1004EE428 != -1)
  {
    sub_10004BEC0();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_10004BED4();
  }

  v2 = 0;
  v3 = 0;
  v36 = a1;
  v4 = a1 + a1[6];
  while (*(v4 + v3 + 46) != 38)
  {
    v3 += 40;
    ++v2;
    if (v3 == 600)
    {
      return 20;
    }
  }

  v37 = (v4 + v3 + 46);
  if (qword_1004EE428 != -1)
  {
    sub_10004BF10();
  }

  v6 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v37;
    *buf = 67109376;
    *&buf[4] = v7;
    v45 = 1024;
    v46 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "9.5dBm found : %d at row : %d", buf, 0xEu);
    v8 = a1[6] + v3 + 46;
    if (qword_1004EE428 != -1)
    {
      sub_10004BF38();
    }
  }

  else
  {
    v8 = a1[6] + v3 + 46;
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_10004BF60();
  }

  v9 = qword_1004EE430;
  v35 = v8;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "old calibration EDR data", buf, 2u);
    v10 = qword_1004EE428;
  }

  else
  {
    v10 = -1;
  }

  v11 = 13;
  v12 = (v4 + v3 + 46);
  do
  {
    if (v10 != -1)
    {
      sub_10004C008();
    }

    v13 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      v14 = *v12;
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%x", buf, 8u);
      v10 = qword_1004EE428;
    }

    else
    {
      v10 = -1;
    }

    ++v12;
    --v11;
  }

  while (v11);
  v15 = 0;
  v48 = 0;
  v47 = 0;
  *v37 = 54;
  *(v4 + v3 + 47) = 10;
  *buf = *(v4 + v3 + 50);
  LOBYTE(v45) = *(v4 + v3 + 58);
  do
  {
    v16 = 0;
    while (*(v4 + 11 + v15) != byte_100052300[v16])
    {
      if (++v16 == 31)
      {
        v17 = *(&v47 + v15);
        v18 = buf[v15];
        goto LABEL_32;
      }
    }

    v18 = buf[v15];
    v17 = llroundf(flt_100052284[v16] + (v18 * flt_100052208[v16]));
    *(&v47 + v15) = v17;
LABEL_32:
    if (v17 > v18 && v17 - v18 >= 11)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C08C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004C058(&v42, v43);
      }

LABEL_49:
      *(&v47 + v15) = v18;
      v17 = v18;
      goto LABEL_50;
    }

    if (v18 > v17 && v18 - v17 >= 11)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C030();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004C058(&v40, v41);
      }

      goto LABEL_49;
    }

LABEL_50:
    if (v17 >= 0x97)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C0B4();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C0DC(&v38, v39);
      }

      LOBYTE(v17) = -106;
      *(&v47 + v15) = -106;
    }

    *(v4 + v15++ + v3 + 50) = v17;
  }

  while (v15 != 9);
  v21 = (v36 + v35);
  v22 = *v37;
  *(v21 + 5) = *(v4 + v3 + 51);
  *v21 = v22;
  *(v36 + v36[6] + v36[7] - 4) = crc32(0, v36 + v36[6], v36[7] - 4);
  v36[8] = crc32(0, v36 + v36[6], v36[7]);
  if (qword_1004EE428 != -1)
  {
    sub_10004C114();
  }

  v23 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Updated taurus cal data :", buf, 2u);
    v24 = qword_1004EE428;
  }

  else
  {
    v24 = -1;
  }

  for (i = 0; i != 13; ++i)
  {
    if (v24 != -1)
    {
      sub_10004C13C();
    }

    v26 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(v21 + i);
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%x", buf, 8u);
      v24 = qword_1004EE428;
    }

    else
    {
      v24 = -1;
    }
  }

  v28 = v36 - 1;
  v29 = 4;
  do
  {
    if (v24 != -1)
    {
      sub_10004C164();
    }

    v30 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(v28 + v36[6] + v36[7]);
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Updated crc in tx segment : %x", buf, 8u);
      v24 = qword_1004EE428;
    }

    else
    {
      v24 = -1;
    }

    v28 = (v28 + 1);
    --v29;
  }

  while (v29);
  for (j = 0; j != 4; ++j)
  {
    if (v24 != -1)
    {
      sub_10004C18C();
    }

    v33 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(v36 + j + 32);
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Updated header segment crc : %x", buf, 8u);
      v24 = qword_1004EE428;
    }

    else
    {
      v24 = -1;
    }
  }

  return 0;
}

uint64_t sub_100011204(const void **a1)
{
  v2 = AMFDRSealingMapCopyLocalDictForClass();
  if (!a1 || !v2)
  {
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    Value = *a1;
    if (!*a1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_7:
    CFRetain(Value);
    return 0;
  }

  Value = CFDictionaryGetValue(v2, @"BTBF");
  *a1 = Value;
  if (Value)
  {
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

_BYTE *sub_100011864(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_1000118A8(int a1)
{
  v4 = 0;
  memset(&v3[1], 0, 192);
  if (a1)
  {
    v1 = 16387;
  }

  else
  {
    v1 = 16388;
  }

  v3[0] = 0uLL;
  return sub_100011908(2u, v1, v3, 8, 0);
}

uint64_t sub_100011908(unsigned __int16 a1, unsigned __int16 a2, unsigned __int16 *a3, uint64_t a4, int a5)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *a3 = a1;
  a3[1] = (a4 + 10) >> 1;
  v8 = word_1004ECEB0++;
  a3[2] = v8;
  a3[3] = a2;
  a3[4] = 0;
  v12 = -62;
  __memcpy_chk();
  if (a5)
  {
    v11 = 217;
    v9 = sub_100017E2C(&v12, a4 + 11, &v12, &v11);
    memcpy(a3, v13, v11 - 1);
    if (!v9)
    {
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

  if (sub_100017E2C(&v12, a4 + 11, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_5:
  if (v8 != a3[2] || a3[4])
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_100011A68(int a1)
{
  v4 = 0;
  memset(&v3[1], 0, 192);
  if (a1)
  {
    v1 = 16385;
  }

  else
  {
    v1 = 16386;
  }

  v3[0] = 0uLL;
  return sub_100011908(2u, v1, v3, 8, 0);
}

uint64_t sub_100011AC8(__int16 a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  WORD5(v2[0]) = 11;
  WORD6(v2[0]) = a1;
  return sub_100011908(2u, 0x5004u, v2, 8, 0);
}

uint64_t sub_100011B2C()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  WORD5(v1[0]) = 10;
  return sub_100011908(2u, 0x5004u, v1, 8, 1);
}

uint64_t sub_100011B8C(__int16 *a1, __int16 *a2, _WORD *a3)
{
  v26 = -1;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v13 = v6;
  if (sub_100011908(0, 0x281Au, &v13, 8, 1))
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = WORD5(v13);
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v13 = v7;
  v14 = v7;
  v15 = v7;
  v16 = v7;
  v17 = v7;
  v18 = v7;
  v19 = v7;
  v20 = v7;
  v21 = v7;
  v22 = v7;
  v23 = v7;
  v24 = v7;
  v25 = v7;
  v26 = -1;
  if (sub_100011908(0, 0x281Bu, &v13, 8, 1))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = WORD5(v13);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v13 = v8;
  v14 = v8;
  v15 = v8;
  v16 = v8;
  v17 = v8;
  v18 = v8;
  v19 = v8;
  v20 = v8;
  v21 = v8;
  v22 = v8;
  v23 = v8;
  v24 = v8;
  v25 = v8;
  v26 = -1;
  if (sub_100011908(0, 0x2819u, &v13, 8, 1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = WORD5(v13);
  *a3 = WORD5(v13);
  if (*a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v10 == -1 || *a2 == -1;
  return (v12 << 31 >> 31);
}

uint64_t sub_100011CD0(__int16 a1, void *a2, uint64_t a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  WORD5(v8) = a1;
  v5 = 2 * a3;
  WORD6(v8) = a3;
  v6 = sub_100011908(0, 0x7003u, &v8, 2 * a3 + 6, 1);
  if (!v6 && a3)
  {
    memcpy(a2, v9, v5);
  }

  return v6;
}

uint64_t sub_100011D78(__int16 a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x64)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  WORD5(v8) = a1;
  WORD6(v8) = a3;
  if (a3)
  {
    v6 = 2 * a3;
    memcpy(v9, a2, 2 * a3);
    v7 = v6 + 6;
  }

  else
  {
    v7 = 6;
  }

  return sub_100011908(2u, 0x7003u, &v8, v7, 1);
}

uint64_t sub_100011E14(__int16 a1, _WORD *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WORD5(v4[0]) = a1;
  HIWORD(v4[0]) = 0;
  result = sub_100011908(0, 0x3006u, v4, 8, 1);
  if (!result)
  {
    *a2 = WORD6(v4[0]);
  }

  return result;
}

uint64_t sub_100011E8C(int a1, char **a2)
{
  optind = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = getopt(a1, a2, "hVrwRp:l:sicBT");
        v5 = v4;
        if (v4 <= 111)
        {
          break;
        }

        if (v4 > 114)
        {
          if (v4 == 115)
          {
            v22 = sub_100011B2C();
            v9 = __stderrp;
            if (v22)
            {
              fprintf(__stderrp, "Unable to deep sleep chip: %d\n", v22);
            }

            else
            {
              v24 = "Deep Sleep Entered!\n";
              v25 = 20;
LABEL_51:
              fwrite(v24, v25, 1uLL, v9);
            }
          }

          else
          {
            if (v4 != 119)
            {
              goto LABEL_55;
            }

            v8 = sub_1000118A8(0);
            v9 = __stderrp;
            if (!v8)
            {
              v24 = "Warm Halt Entered!\n";
              v25 = 19;
              goto LABEL_51;
            }

            fprintf(__stderrp, "Unable to warm halt chip: %d\n", v8);
          }
        }

        else if (v4 == 112)
        {
          *__s = 0;
          v14 = optarg;
          v15 = strchr(optarg, 61);
          if (v15)
          {
            v16 = v15;
            *v15 = 0;
            v17 = strtoul(v14, 0, 0);
            strcpy(__s, "d");
            v18 = malloc_type_malloc(0xC8uLL, 0x1000040BDFB0063uLL);
            if (v18)
            {
              v19 = v18;
              v20 = strtok(v16 + 1, ",:");
              if (v20)
              {
                v21 = 0;
                while (v21 < *__s)
                {
                  v19[v21++] = strtoul(v20, 0, 0);
                  v20 = strtok(0, ",:");
                  if (!v20)
                  {
                    goto LABEL_64;
                  }
                }

                fprintf(__stderrp, "Too many values given, skipping all past 0x%04x\n", v19[v21 - 1]);
LABEL_64:
                v28 = v21;
              }

              else
              {
                v28 = 0;
              }

              *__s = v28;
              if (sub_100011D78(v17, v19, v28))
              {
                fprintf(__stderrp, "Unable to write PSKEY 0x%04x values: %d\n");
              }

LABEL_67:
              free(v19);
            }
          }

          else
          {
            v26 = strtoul(v14, 0, 0);
            if (sub_100011E14(v26, __s))
            {
              *__s = 1;
              v27 = 2;
            }

            else
            {
              v27 = 2 * *__s;
            }

            v29 = malloc_type_malloc(v27, 0x1000040BDFB0063uLL);
            if (v29)
            {
              v19 = v29;
              if (sub_100011CD0(v26, v29, *__s))
              {
                fprintf(__stderrp, "Unable to read PSKEY 0x%04x: %d\n");
              }

              else
              {
                fprintf(__stderrp, "PSKEY 0x%04x = ", v26);
                if (*__s)
                {
                  v30 = 0;
                  do
                  {
                    fprintf(__stderrp, "0x%04x ", v19[v30++]);
                  }

                  while (v30 < *__s);
                }

                fputc(10, __stderrp);
              }

              goto LABEL_67;
            }
          }
        }

        else
        {
          if (v4 != 114)
          {
            goto LABEL_55;
          }

LABEL_12:
          v6 = sub_100011A68(v4 == 82);
          if (v6)
          {
            fprintf(__stderrp, "Unable to reset chip: %d\n", v6);
          }

          else
          {
            v23 = "Warm";
            if (v5 == 82)
            {
              v23 = "Cold";
            }

            fprintf(__stderrp, "%s reset complete!\n", v23);
          }
        }
      }

      if (v4 <= 103)
      {
        break;
      }

      switch(v4)
      {
        case 'i':
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          *__s = 0u;
          v41 = 0u;
          if (!j__gethostname(__s, 0x100uLL))
          {
            v11 = strlen(__s);
            v12 = sub_100011D78(264, __s, (v11 + 1 + ((v11 + 1) >> 31)) >> 1);
            if (v12)
            {
              fprintf(__stderrp, "Unable to write Device Name (%d)\n", v12);
            }
          }

          if (!sub_1000422B8(__s))
          {
            v39[0] = __s[3];
            v39[1] = bswap32(*&__s[4]) >> 16;
            v39[2] = __s[2];
            v39[3] = bswap32(*__s) >> 16;
            v13 = sub_100011D78(1, v39, 4uLL);
            if (v13)
            {
              fprintf(__stderrp, "Unable to write BDADDR (%d)\n", v13);
            }
          }

          break;
        case 'l':
          v7 = strtoul(optarg, 0, 0);
          if (sub_100011AC8(v7))
          {
            fprintf(__stderrp, "Unable to put chip into PCM Loopback Mode %d\n", v7);
          }

          else
          {
            fprintf(__stderrp, "Chip now in PCM Loopback Mode %d\n", v7);
          }

          break;
        case 'h':
          fprintf(__stderrp, "%s - CSR Specific Commnads\n", *a2);
          fwrite("-V        - Get BlueCore specific version/revision information.\n", 0x40uLL, 1uLL, __stderrp);
          fwrite("-r        - Warm Reset.\n", 0x18uLL, 1uLL, __stderrp);
          fwrite("-R        - Cold Reset.\n", 0x18uLL, 1uLL, __stderrp);
          fwrite("-w        - Warm Halt.\n", 0x17uLL, 1uLL, __stderrp);
          fwrite("-s        - Deep Sleep\n", 0x17uLL, 1uLL, __stderrp);
          fwrite("-p <key>  - Read a given PSKEY\n", 0x1FuLL, 1uLL, __stderrp);
          fwrite("-l <mode> - Put device into PCM loopback\n", 0x29uLL, 1uLL, __stderrp);
          fwrite("-i\t       - Write device name and address\n", 0x2AuLL, 1uLL, __stderrp);
          fwrite("-c        - Check for wifi presence.\n", 0x25uLL, 1uLL, __stderrp);
          fwrite("-B        - Set the baud rate using a predefined value\n", 0x37uLL, 1uLL, __stderrp);
          fwrite("-T        - Set the transport using a predefined value\n", 0x37uLL, 1uLL, __stderrp);
          fputc(10, __stderrp);
          return 0;
        default:
LABEL_55:
          fprintf(__stderrp, "Invalid option '%c'\n", v4);
          break;
      }
    }

    if (v4 <= 83)
    {
      break;
    }

    if (v4 != 86)
    {
      if (v4 != 84)
      {
        goto LABEL_55;
      }

      v34 = sub_100041FEC();
      if (v34 > 2)
      {
        switch(v34)
        {
          case 3:
            goto LABEL_89;
          case 4:
            v35 = 6;
            break;
          case 5:
            v35 = 1;
            break;
          default:
            goto LABEL_95;
        }
      }

      else if (v34)
      {
        if (v34 != 1)
        {
          if (v34 == 2)
          {
            v35 = 7;
            goto LABEL_97;
          }

LABEL_95:
          *__s = 0;
LABEL_98:
          v37 = 505;
          return sub_100011D78(v37, __s, 1uLL);
        }

LABEL_89:
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

LABEL_97:
      *__s = v35;
      goto LABEL_98;
    }

    *__s = 0;
    v39[0] = 0;
    v38 = 0;
    v10 = sub_100011B8C(__s, v39, &v38);
    if (v10)
    {
      fprintf(__stderrp, "Unable to get CSR specific revision information: %d\n", v10);
    }

    else
    {
      fprintf(__stderrp, "CSR BlueCore Version 0x%04x, Revision 0x%04x, Build: ", *__s, v39[0]);
      if (v38 == 3164)
      {
        puts("A06");
      }

      else if (v38 == 1120)
      {
        puts("A05");
      }

      else
      {
        printf("Unknown: 0x%04x\n", v38);
      }
    }
  }

  if (v4 == 82)
  {
    goto LABEL_12;
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (v4 != 66)
  {
    goto LABEL_55;
  }

  v31 = sub_100041D24();
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = 2400000;
  }

  switch(v32)
  {
    case 0x1C200u:
      LOWORD(v33) = 472;
      break;
    case 0x2DC6C0u:
      LOWORD(v33) = 12288;
      break;
    case 0x249F00u:
      LOWORD(v33) = 9830;
      break;
    default:
      v33 = (v32 * 0.004096);
      break;
  }

  *__s = v33;
  v37 = 446;
  return sub_100011D78(v37, __s, 1uLL);
}

uint64_t sub_100012698()
{
  fwrite("-D           - Open apple_pcie transport\n", 0x29uLL, 1uLL, __stderrp);
  fwrite("-h           - Print device help prompt\n", 0x28uLL, 1uLL, __stderrp);
  v0 = __stderrp;

  return fputc(10, v0);
}

uint64_t sub_100012704()
{
  if (qword_1004EE428 != -1)
  {
    sub_10004C1B4();
  }

  v0 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "using airship\n", v2, 2u);
  }

  if (!&_airship_ch_interface_create)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C2CC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C2F4();
    }

    goto LABEL_20;
  }

  qword_1004ECEB8 = airship_ch_interface_create();
  if (!qword_1004ECEB8)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C264();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C28C();
    }

    goto LABEL_20;
  }

  result = airship_ch_interface_open();
  if (result)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C1C8();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C1F0();
    }

LABEL_20:
    sub_100012CA8();
    return 0xFFFFFFFFLL;
  }

  *&xmmword_1004EDFC8 = 0x414D49584F5250;
  dword_1004EE420 = 20;
  off_1004EE3D8 = sub_100012BE4;
  off_1004EE3E0 = sub_100012BEC;
  off_1004EE3E8 = sub_100012C20;
  off_1004EE3F0 = sub_100012C28;
  off_1004EE3F8 = sub_100012C54;
  off_1004EE408 = sub_100012C94;
  off_1004EE400 = sub_100012C98;
  qword_1004EE3C8 = 0;
  dword_1004EE3D0 = 1;
  off_1004EE410 = nullsub_5;
  off_1004EE418 = nullsub_6;
  return result;
}

uint64_t sub_100012960()
{
  if (!&_CentauriControllerCreateWithParameters)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C46C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C480();
    }

    return 0xFFFFFFFFLL;
  }

  if (CentauriControllerCreateWithParameters())
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C334();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C35C();
    }

    return 0xFFFFFFFFLL;
  }

  v1 = CentauriControllerReset();
  if (v1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C3D0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C3F8();
    }
  }

  CentauriControllerFree();
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012BEC()
{
  if (airship_ch_interface_write())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012C28()
{
  if (airship_ch_interface_write())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012C54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = airship_ch_interface_read();
  if (result)
  {
    *a4 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100012CA8()
{
  result = qword_1004ECEB8;
  if (qword_1004ECEB8)
  {
    airship_ch_interface_close();
    result = airship_ch_interface_destroy();
    qword_1004ECEB8 = 0;
  }

  dword_1004EE3D0 = 0;
  return result;
}

uint64_t sub_100012CEC()
{
  v1 = 1;
  if (!MGGetBoolAnswer() || (result = MGIsDeviceOneOfType(), (result & 1) == 0))
  {
    result = MGIsDeviceOneOfType();
    if (!result || (result = MGGetStringAnswer()) == 0 || (result = [result UTF8String]) == 0 || (result = strcmp(result, "rack"), result))
    {
      v1 = 0;
    }
  }

  byte_1004ECEC0 = v1;
  return result;
}

uint64_t sub_100012DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = a2;
  if (a12)
  {
    v14 = &qword_1004ECEC8;
  }

  else
  {
    v14 = &qword_1004ECED0;
  }

  v15 = *v14;
  v16 = &dword_1004ECED8;
  if (!a12)
  {
    v16 = &dword_1004ECEDC;
  }

  v17 = *v16;
  if (!v15)
  {
    v28 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = a8;
    v22 = a7;
    v15 = malloc_type_calloc(0x200uLL, 0x60uLL, 0x10D00408759784FuLL);
    a7 = v22;
    a8 = v21;
    a4 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v28;
    v12 = a2;
    v23 = a12 ? &qword_1004ECEC8 : &qword_1004ECED0;
    *v23 = v15;
    if (!v15)
    {
      return 4661;
    }
  }

  if (v17 >= 0x201)
  {
    v24 = a3;
    if (qword_1004EE428 != -1)
    {
      sub_10004C4C0();
    }

    v25 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = a1;
      v32 = 2080;
      v33 = v12;
      v34 = 2080;
      v35 = v24;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Out of memory, can't add %s_%s_%s.", buf, 0x20u);
    }

    return 4661;
  }

  v27 = &v15[96 * v17];
  *v27 = a1;
  *(v27 + 1) = v12;
  *(v27 + 2) = a3;
  *(v27 + 3) = a7;
  *(v27 + 4) = a8;
  *(v27 + 5) = a9;
  *(v27 + 6) = a10;
  *(v27 + 7) = a11;
  *(v27 + 8) = a4;
  *(v27 + 9) = a5;
  *(v27 + 10) = a6;
  *(v27 + 11) = 0;
  result = 0;
  if (a12)
  {
    dword_1004ECED8 = v17 + 1;
  }

  else
  {
    dword_1004ECEDC = v17 + 1;
  }

  return result;
}

uint64_t sub_100013000()
{
  v0 = sub_100044574();
  v1 = sub_100044C84();
  sub_100043FA8();
  v2 = sub_100013090();
  v3 = byte_1004ECEC0;
  v4 = qword_1004ECEC8;
  v5 = qword_1004ECED0;
  result = sub_1000131E8(v0, v1, v2);
  if (result != -1)
  {
    v7 = result;
    result = 0;
    if (v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    *(v8 + 96 * v7 + 88) = 0;
  }

  return result;
}

const char *sub_100013090()
{
  v0 = sub_100043FA8();
  if (v0 > 1835627634)
  {
    if (v0 <= 1886547811)
    {
      if (v0 == 1835627635)
      {
        return "MIT";
      }

      else
      {
        if (v0 != 1836413537)
        {
          return "ALL";
        }

        return "MUR";
      }
    }

    else
    {
      switch(v0)
      {
        case 1886547812:
          return "PROD";
        case 1936548719:
          return "SMC";
        case 1937006964:
          return "STA";
        default:
          return "ALL";
      }
    }
  }

  else if (v0 <= 544498794)
  {
    if (v0 == 538997881)
    {
      return "TY";
    }

    else
    {
      if (v0 != 543450486)
      {
        return "ALL";
      }

      return "DEV";
    }
  }

  else if (v0 == 544498795)
  {
    return "TDK";
  }

  else
  {
    if (v0 != 544568169)
    {
      return "ALL";
    }

    return "USI";
  }
}

uint64_t sub_1000131E8(char *__s1, const char *a2, const char *a3)
{
  v3 = dword_1004EC9DC;
  if (dword_1004EC9DC == -1)
  {
    if (byte_1004ECEC0)
    {
      v4 = &qword_1004ECEC8;
    }

    else
    {
      v4 = &qword_1004ECED0;
    }

    v5 = &dword_1004ECED8;
    if (!byte_1004ECEC0)
    {
      v5 = &dword_1004ECEDC;
    }

    v6 = *v5;
    if (v6)
    {
      v3 = 0;
      for (i = (*v4 + 16); ; i += 12)
      {
        if (!strcmp(__s1, *(i - 2)) && (!a2 || !strcmp(a2, *(i - 1))))
        {
          v11 = *i;
          if (!strcmp(a3, *i) || !strcmp("ALL", v11))
          {
            break;
          }
        }

        if (v6 == ++v3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (a2)
      {
        dword_1004EC9DC = v3;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t sub_1000132FC(uint64_t a1, void *a2)
{
  v4 = sub_100044574();
  v5 = sub_100044C84();
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (dword_1004EC9D8 == -1)
  {
    v7 = sub_100043FA8();
    if (v7 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    dword_1004EC9D8 = v8;
  }

  v9 = sub_100013090();
  v10 = sub_1000131E8(v4, v6, v9);
  v11 = byte_1004ECEC0 ? &qword_1004ECEC8 : &qword_1004ECED0;
  if (v10 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *v11 + 96 * v10;
  v13 = *(v12 + 88);
  v14 = *(v12 + 40);
  if (v14 <= v13)
  {
    a1 = 0;
    *(v12 + 88) = 0;
    return a1;
  }

  v15 = *(v12 + 48);
  if (v15)
  {
    if (v13 + a1 >= v14)
    {
      memcpy(a2, (v15 + v13), v14 - v13);
      v21 = *(v12 + 40);
      *(v12 + 88) = v21;
      return (v21 - v13);
    }

    else
    {
      memcpy(a2, (v15 + v13), a1);
      *(v12 + 88) += a1;
    }

    return a1;
  }

  v16 = v10;
  bzero(&byte_1004EDAF8, 0x400uLL);
  __strlcat_chk();
  if (byte_1004ECEC0)
  {
    v17 = &qword_1004ECEC8;
  }

  else
  {
    v17 = &qword_1004ECED0;
  }

  v18 = *(*v17 + 96 * v16 + 24);
  __strlcat_chk();
  if (!byte_1004EDAF8)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C760();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C774();
    }

    return 0xFFFFFFFFLL;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004C4D4();
  }

  v19 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = &byte_1004EDAF8;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Expecting firmware file: %s", &buf, 0xCu);
    if (qword_1004EE428 != -1)
    {
      sub_10004C4E8();
    }
  }

  v20 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = &byte_1004EDAF8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Opening firmware file: %s", &buf, 0xCu);
  }

  if (sub_100013CA4(v16, &byte_1004EDAF8, 0))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C510();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C538();
    }

    return 0xFFFFFFFFLL;
  }

  v23 = open(&byte_1004EDAF8, 0);
  if (v23 < 0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C704();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C72C();
    }

    return 0xFFFFFFFFLL;
  }

  v24 = v23;
  if (qword_1004EE428 != -1)
  {
    sub_10004C56C();
  }

  v25 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = &byte_1004EDAF8;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Firmware file %s successfully opened", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  if (fstat(v24, &buf) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C6A8();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C6D0();
      if (!v24)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (LODWORD(buf.st_size) != a1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C594();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C5BC();
      if (!v24)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (read(v24, a2, SLODWORD(buf.st_size)) != a1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C5F0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C618();
      if (!v24)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_69;
    }

LABEL_68:
    if (!v24)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_69:
    close(v24);
    return 0xFFFFFFFFLL;
  }

  close(v24);
  if (qword_1004EE428 != -1)
  {
    sub_10004C680();
  }

  v26 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    v27[0] = 68157954;
    v27[1] = a1;
    v28 = 2096;
    v29 = a2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Raw firmware data loaded: %.*P", v27, 0x12u);
  }

  return a1;
}

uint64_t sub_10001382C()
{
  v0 = sub_100044574();
  v1 = sub_100044C84();
  sub_100043FA8();
  v2 = sub_100013090();
  if (!v0)
  {
    return 0;
  }

  v3 = sub_1000131E8(v0, v1, v2);
  if (v3 == -1)
  {
    return 0;
  }

  if (byte_1004ECEC0)
  {
    v4 = &qword_1004ECEC8;
  }

  else
  {
    v4 = &qword_1004ECED0;
  }

  return *(*v4 + 96 * v3 + 24);
}

uint64_t sub_1000138B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = qword_1004ECEE0;
  if (!qword_1004ECEE0)
  {
    v12 = malloc_type_calloc(0x100uLL, 0x30uLL, 0x1050040F2291469uLL);
    qword_1004ECEE0 = v12;
    if (!v12)
    {
      return 4661;
    }
  }

  v13 = dword_1004ECEE8;
  if (dword_1004ECEE8 >= 0x100)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C7A8();
    }

    v14 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = a1;
      v19 = 2080;
      v20 = a2;
      v21 = 2080;
      v22 = a3;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Out of memory, can't add %s_%s_%s.", &v17, 0x20u);
    }

    return 4661;
  }

  result = 0;
  v16 = &v12[48 * dword_1004ECEE8];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 8) = a5;
  *(v16 + 9) = 0;
  *(v16 + 5) = a6;
  dword_1004ECEE8 = v13 + 1;
  return result;
}

void *sub_100013A5C()
{
  v0 = sub_100044574();
  v1 = sub_100044C84();
  sub_100043FA8();
  v2 = sub_100013090();
  bzero(&unk_1004ECEEC, 0x400uLL);
  __strlcat_chk();
  v3 = 0;
  if (v0 && v1)
  {
    v4 = dword_1004ECEE8;
    if (!dword_1004ECEE8)
    {
      return 0;
    }

    v5 = 0;
    for (i = qword_1004ECEE0 + 16; ; i += 48)
    {
      if (!strcmp(v0, *(i - 16)) && !strcmp(v1, *(i - 8)))
      {
        v7 = *i;
        if (!strcmp(v2, *i) || !strcmp("ALL", v7))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        return 0;
      }
    }

    v9 = *(i + 8);
    __strlcat_chk();
    if (qword_1004EE428 != -1)
    {
      sub_10004C7BC();
    }

    v10 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = &unk_1004ECEEC;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Opening firmware file: %s", &v11, 0xCu);
    }

    v3 = &unk_1004ECEEC;
    if (sub_100013CA4(v5, &unk_1004ECEEC, 1))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C7D0();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004C538();
      }

      return 0;
    }
  }

  return v3;
}

uint64_t sub_100013CA4(int a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (a3)
  {
    if (!**(qword_1004ECEE0 + 48 * a1 + 40))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C990();
      }

      if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        return 10;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (byte_1004ECEC0)
    {
      v6 = &qword_1004ECEC8;
    }

    else
    {
      v6 = &qword_1004ECED0;
    }

    if (!**(*v6 + 96 * a1 + 56))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C7F8();
      }

      if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        return 10;
      }

LABEL_28:
      sub_10004C80C();
      return 10;
    }
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [NSString stringWithUTF8String:a2];
  if (![(NSFileManager *)v7 fileExistsAtPath:v8 isDirectory:0])
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C840();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C854();
    }

    return 10;
  }

  v9 = [NSData dataWithContentsOfFile:v8];
  *md = 0u;
  v17 = 0u;
  v10 = [NSMutableString stringWithCapacity:64];
  if (!CC_SHA256([(NSData *)v9 bytes], [(NSData *)v9 length], md))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004C934();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004C95C();
    }

    return 14;
  }

  for (i = 0; i != 32; ++i)
  {
    [(NSMutableString *)v10 appendFormat:@"%02x", md[i]];
  }

  v12 = [(NSMutableString *)v10 cStringUsingEncoding:4];
  if (v3)
  {
    if (strcmp(*(qword_1004ECEE0 + 48 * a1 + 40), v12))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C8E4();
      }

      if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        return 14;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (byte_1004ECEC0)
    {
      v14 = &qword_1004ECEC8;
    }

    else
    {
      v14 = &qword_1004ECED0;
    }

    if (strcmp(*(*v14 + 96 * a1 + 56), v12))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004C888();
      }

      if (!os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        return 14;
      }

LABEL_41:
      sub_10004C8B0();
      return 14;
    }
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004C90C();
  }

  v15 = qword_1004EE430;
  result = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO);
  if (result)
  {
    *md = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "firmeare file SHA check passed", md, 2u);
    return 0;
  }

  return result;
}