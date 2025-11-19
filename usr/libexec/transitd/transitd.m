uint64_t sub_100001DEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 3 || !*(a6 + 40))
  {
    if (a2 == 3)
    {
      NSLog(@"Error while copying");
    }

    return 2;
  }

  else if ([*(a6 + 48) isCancelled])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

Copier *sub_100001EE4()
{
  result = objc_alloc_init(Copier);
  qword_10000C648 = result;
  return result;
}

ssize_t sub_100001F0C(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char value)
{

  return getxattr(v28, a2, &value, 0xFFuLL, 0, 1);
}

uint64_t sub_100001F30(int a1, uint64_t a2, unsigned int *a3, int *a4, _OWORD *a5)
{
  v10 = mach_task_self_;
  pidp = -1;
  previous = 0;
  sub_100002238();
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

  v11 = a5[1];
  *v30.val = *a5;
  *&v30.val[4] = v11;
  error = 0;
  v12 = a5[1];
  *atoken.val = *a5;
  *&atoken.val[4] = v12;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  atoken = v30;
  v13 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &atoken);
  if (!v13)
  {
    *a4 = 13;
LABEL_15:
    sub_1000022A8("pid %d does not have MDT entitlements", pidp);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = SecTaskCopyValueForEntitlement(v13, @"com.apple.MobileDataTransit.allow", &error);
  v16 = error;
  if (error || !v15)
  {
    v18 = 13;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    TypeID = CFBooleanGetTypeID();
    v18 = 13;
    if (TypeID == CFGetTypeID(v15))
    {
      if (CFEqual(v15, kCFBooleanTrue))
      {
        v18 = 0;
      }

      else
      {
        v18 = 13;
      }
    }
  }

  CFRelease(v15);
  v16 = error;
LABEL_12:
  if (v16)
  {
    CFRelease(v16);
  }

  CFRelease(v14);
  *a4 = v18;
  if (v18)
  {
    goto LABEL_15;
  }

  v20 = mach_port_allocate(v10, 1u, a3);
  if (v20)
  {
    *a4 = 22;
    mach_error_string(v20);
    sub_1000022A8("mach_port_allocate: %d (%s)");
LABEL_25:
    if (*a3)
    {
      mach_port_mod_refs(v10, *a3, 1u, -1);
      mach_port_deallocate(v10, *a3);
    }

    *a3 = 0;
    goto LABEL_16;
  }

  inserted = mach_port_insert_right(v10, *a3, *a3, 0x14u);
  v22 = *a3;
  if (inserted)
  {
    v23 = inserted;
    mach_port_mod_refs(v10, v22, 1u, -1);
    *a3 = 0;
    *a4 = 22;
    mach_error_string(v23);
    sub_1000022A8("mach_port_insert_right: %d (%s)");
    goto LABEL_25;
  }

  v24 = mach_port_move_member(v10, v22, dword_10000C6F8);
  if (v24)
  {
    *a4 = 22;
    mach_error_string(v24);
    sub_1000022A8("mach_port_move_member: %d (%s)");
    goto LABEL_25;
  }

  v25 = mach_port_request_notification(v10, *a3, 70, 1u, *a3, 0x15u, &previous);
  if (v25)
  {
    *a4 = 22;
    mach_error_string(v25);
    sub_1000022A8("mach_port_request_notification: %d (%s)");
    goto LABEL_25;
  }

  if (previous)
  {
    sub_100004244();
  }

  [MDTSession sessionWithServerPort:*a3 clientPort:a2 pid:pidp];
  sub_100002318();
LABEL_16:
  sub_100002238();
  return 0;
}

void sub_100002238()
{
  if (qword_10000C698 && +[MDTSession sessionCount]<= 0)
  {
    v0 = qword_10000C698;
    v1 = CFAbsoluteTimeGetCurrent() + 60.0;

    CFRunLoopTimerSetNextFireDate(v0, v1);
  }
}

void sub_1000022A8(char *a1, ...)
{
  va_start(va, a1);
  if (dword_10000C640)
  {
    v1 = 5;
  }

  else
  {
    v1 = 3;
  }

  if (qword_10000C6D8)
  {
    asl_vlog(qword_10000C6D8, 0, v1, a1, va);
  }

  else
  {
    vsyslog(v1, a1, va);
  }
}

void sub_100002318()
{
  if (qword_10000C688)
  {
    v0 = qword_10000C698 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    CFRunLoopRemoveTimer(qword_10000C688, qword_10000C698, kCFRunLoopDefaultMode);
  }
}

uint64_t sub_100002348(uint64_t a1)
{
  [+[MDTSession lookupSessionForPort:](MDTSession lookupSessionForPort:{a1), "invalidate"}];
  if (!+[MDTSession sessionCount])
  {
    sub_100002390();
  }

  sub_100002238();
  return 0;
}

void sub_100002390()
{
  if (qword_10000C688)
  {
    v0 = qword_10000C698 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    CFRunLoopAddTimer(qword_10000C688, qword_10000C698, kCFRunLoopDefaultMode);
  }
}

uint64_t sub_1000023C0(uint64_t a1)
{
  v1 = [MDTSession lookupSessionForPort:a1];
  if (v1)
  {
    [v1[3] cancelCopy];
  }

  sub_100002238();
  return 0;
}

uint64_t sub_100002404(uint64_t a1, const char *a2, const char *a3, uint64_t a4, int a5, _BYTE *a6, int a7)
{
  sub_100002590("Copy %s -> %s\n", a2, a3);
  sub_100002238();
  v14 = [MDTSession lookupSessionForPort:a1];
  if (!v14)
  {
    return 268451842;
  }

  v15 = v14;
  v16 = [NSURL fileURLWithPath:[NSString stringWithCString:a2 encoding:4]];
  v17 = [NSURL fileURLWithPath:[NSString stringWithCString:a3 encoding:4]];
  if (a5)
  {
    v18 = [NSString stringWithCString:a4 encoding:4];
    if (!a6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if (!a6)
    {
LABEL_9:
      v20 = 0;
      goto LABEL_10;
    }
  }

  if (!*a6)
  {
    goto LABEL_9;
  }

  v20 = [NSString stringWithCString:a6 encoding:4];
LABEL_10:
  LODWORD(v22) = a7;
  *(v15 + 3) = [Copier copierWithSourceURL:v16 uniqueIdentifier:v18 destURL:v17 sandboxExtension:v20 callbackTarget:v15 selector:"returnStatusWithDestURL:error:" options:v22];
  v21 = *(v15 + 3);
  [*(v15 + 3) startCopy];
  sub_100002238();
  return 0;
}

void sub_100002590(char *a1, ...)
{
  va_start(va, a1);
  if (dword_10000C640)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if (qword_10000C6D8)
  {
    asl_vlog(qword_10000C6D8, 0, v1, a1, va);
  }

  else
  {
    vsyslog(v1, a1, va);
  }
}

void start()
{
  if (dword_10000C700)
  {
    v0 = asl_open(0, "com.apple.mdt", 2u);
    qword_10000C6D8 = v0;
    if (v0)
    {
      if (dword_10000C6FC)
      {
        v1 = 255;
      }

      else
      {
        v1 = 127;
      }

      asl_set_filter(v0, v1);
    }

    else
    {
      fwrite("Error initializing ASL\n", 0x17uLL, 1uLL, __stderrp);
    }
  }

  else
  {
    openlog("com.apple.mdt", 9, 24);
    if (dword_10000C6FC)
    {
      v2 = 255;
    }

    else
    {
      v2 = 127;
    }

    setlogmask(v2);
  }

  port_info_outCnt = 0;
  *port_info_out = 0u;
  v20 = 0u;
  v21 = 0;
  v3 = getprogname();
  sub_100002590("%s started", v3);
  qword_10000C758 = vproc_transaction_begin(0);
  v23.__sigaction_u.__sa_handler = 1;
  v23.sa_mask = 0;
  v23.sa_flags = 2;
  sigaction(1, &v23, 0);
  sigaction(13, &v23, 0);
  sigaction(14, &v23, 0);
  sigaction(24, &v23, 0);
  sigaction(25, &v23, 0);
  sigaction(26, &v23, 0);
  sigaction(27, &v23, 0);
  sigaction(18, &v23, 0);
  sigaction(21, &v23, 0);
  sigaction(22, &v23, 0);
  sigaction(30, &v23, 0);
  sigaction(31, &v23, 0);
  v23.sa_flags = 0;
  v23.__sigaction_u.__sa_handler = sub_100002B64;
  sigaction(2, &v23, 0);
  sigaction(15, &v23, 0);
  v23.sa_flags = 10;
  sigaction(20, &v23, 0);
  if (pthread_mutexattr_init(&stru_10000C748) || pthread_mutexattr_settype(&stru_10000C748, 1) || pthread_mutex_init(&stru_10000C708, &stru_10000C748) || pthread_cond_init(&stru_10000C650, 0))
  {
    sub_1000022A8("could not initialize mutex: %m");
  }

  else
  {
    pthread_mutex_lock(&stru_10000C708);
    if (pthread_create(&qword_10000C680, 0, sub_100002C2C, 0))
    {
      pthread_mutex_unlock(&stru_10000C708);
      sub_1000022A8("could not start runloop thread: %m", v18);
    }

    else
    {
      while (!qword_10000C688)
      {
        if (pthread_cond_wait(&stru_10000C650, &stru_10000C708))
        {
          __assert_rtn("main", "server.m", 694, "err == 0");
        }
      }

      pthread_mutex_unlock(&stru_10000C708);
      sp = 0;
      v4 = bootstrap_check_in(bootstrap_port, "com.apple.mdt", &sp);
      if (v4)
      {
        mach_error_string(v4);
        sub_1000022A8("bootstrap_check_in: %d (%s)");
      }

      else if (sp)
      {
        inserted = mach_port_insert_right(mach_task_self_, sp, sp, 0x14u);
        if (inserted)
        {
          mach_error_string(inserted);
          sub_1000022A8("mach_port_insert_right: %d (%s)");
        }
      }

      else
      {
        sub_1000022A8("launchd returned a NULL Mach port");
      }

      if (sp)
      {
        dword_10000C690 = sp;
        v5 = mach_port_allocate(mach_task_self_, 3u, &dword_10000C6F8);
        if (v5)
        {
          mach_error_string(v5);
          sub_1000022A8("gPortSet mach_port_allocate: %d (%s)");
        }

        else
        {
          v6 = mach_port_move_member(mach_task_self_, dword_10000C690, dword_10000C6F8);
          if (!v6)
          {
            v21 = 0;
            *port_info_out = 0u;
            v20 = 0u;
            port_info_outCnt = 10;
            attributes = mach_port_get_attributes(mach_task_self_, dword_10000C690, 2, port_info_out, &port_info_outCnt);
            if (attributes)
            {
              v8 = attributes;
              v9 = mach_error_string(attributes);
              sub_1000022A8("get status count: %d (%s)", v8, v9);
            }

            else if (!v20)
            {
              sleep(5u);
            }

            Current = CFAbsoluteTimeGetCurrent();
            qword_10000C698 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 60.0, 60.0, 0, 0, sub_100002CEC, 0);
            if (pthread_create(qword_10000C6A0, 0, sub_100002D2C, 1))
            {
              sub_1000022A8("could create ipc worker thread[%d]: %m", 1);
            }

            sub_100002390();
            while (1)
            {
              v12 = objc_alloc_init(NSAutoreleasePool);
              v13 = mach_msg_server_once(sub_100002DD0, 0x108Cu, dword_10000C6F8, 50331648);
              if (v13)
              {
                v14 = v13 == 268451842;
              }

              else
              {
                v14 = 1;
              }

              if (!v14 && v13 != 268451846)
              {
                v16 = v13;
                v17 = mach_error_string(v13);
                sub_1000022A8("ipc main mach_msg_server: (%d) %s", v16, v17);
              }

              [v12 drain];
            }
          }

          mach_error_string(v6);
          sub_1000022A8("portset mach_port_move_member: %d (%s)");
        }
      }
    }
  }

  sub_100002BB0(1);
}

void sub_100002B64(int a1)
{
  if (a1 != 20)
  {
    if (a1 == 15 || a1 == 2)
    {
      sub_100002BB0(0);
    }

    sub_100002590("got signal %d", a1);
  }
}

void sub_100002BB0(int a1)
{
  if (dword_10000C6F8)
  {
    mach_port_move_member(mach_task_self_, dword_10000C690, 0);
    mach_port_mod_refs(mach_task_self_, dword_10000C6F8, 3u, -1);
    dword_10000C6F8 = 0;
  }

  v2 = getprogname();
  sub_100002590("%s exiting: %d", v2, a1);
  sub_100002F04();
  exit(a1);
}

uint64_t sub_100002C2C()
{
  pthread_mutex_lock(&stru_10000C708);
  qword_10000C688 = CFRunLoopGetCurrent();
  pthread_cond_broadcast(&stru_10000C650);
  pthread_mutex_unlock(&stru_10000C708);
  sub_100002390();
  v0 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.79769313e308, 1u);
  if (qword_10000C688)
  {
    v1 = v0 == kCFRunLoopRunStopped;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    do
    {
      if (v0 == kCFRunLoopRunFinished)
      {
        sleep(1u);
      }

      v0 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.79769313e308, 1u);
      if (qword_10000C688)
      {
        v2 = v0 == kCFRunLoopRunStopped;
      }

      else
      {
        v2 = 1;
      }
    }

    while (!v2);
  }

  return 0;
}

void sub_100002CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100002F44(a1, a2, a3, a4, a5, a6, a7, a8, 60);
  if (qword_10000C758)
  {
    vproc_transaction_end(0, qword_10000C758);
    qword_10000C758 = 0;
  }

  sub_100002BB0(0);
}

void sub_100002D2C(const void *a1)
{
  while (1)
  {
    v2 = objc_alloc_init(NSAutoreleasePool);
    v3 = mach_msg_server_once(sub_100002DD0, 0x108Cu, dword_10000C6F8, 50331648);
    if (v3)
    {
      v4 = v3 == 268451842;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && v3 != 268451846)
    {
      v6 = v3;
      v7 = mach_error_string(v3);
      sub_1000022A8("ipc thread[%p] mach_msg_server: %d (%s)", a1, v6, v7);
    }

    [v2 drain];
  }
}

uint64_t sub_100002DD0(_DWORD *a1, uint64_t a2)
{
  pidp = -1;
  v4 = a1[5];
  if ((v4 - 78) > 0xFFFFFFF1)
  {
    v6 = a1[2];
    *a2 = *a1 & 0x1F;
    *(a2 + 4) = 36;
    *(a2 + 8) = v6;
    *(a2 + 20) = v4 + 100;
    v7 = a1[5];
    if (v7 == 72 || v7 == 70)
    {
      *(a2 + 32) = -303;
      audit_trailer = os_mach_msg_get_audit_trailer();
      if (audit_trailer)
      {
        v9 = *(audit_trailer + 36);
        *atoken.val = *(audit_trailer + 20);
        *&atoken.val[4] = v9;
        audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
        if (!pidp)
        {
          sub_100002348(a1[3]);
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 32) = 0;
        }
      }

      else
      {
        sub_1000022A8("No Trailer");
      }
    }

    else
    {
      *(a2 + 24) = NDR_record;
      *(a2 + 32) = -303;
    }

    return 1;
  }

  else
  {

    return sub_100003E8C(a1, a2);
  }
}

void sub_100002F04()
{
  if (!dword_10000C700)
  {
    closelog();
  }

  if (qword_10000C6D8)
  {
    asl_close(qword_10000C6D8);
    qword_10000C6D8 = 0;
  }
}

void sub_100002F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (dword_10000C640)
  {
    v9 = 5;
  }

  else
  {
    v9 = 7;
  }

  if (qword_10000C6D8)
  {
    asl_vlog(qword_10000C6D8, 0, v9, "now quitting (%d sec idle)", &a9);
  }

  else
  {
    vsyslog(v9, "now quitting (%d sec idle)", &a9);
  }
}

CFDictionaryRef sub_100002FBC(const __CFURL *a1, __CFError *a2)
{
  keys = @"URL";
  v15[0] = @"Domain";
  v15[1] = @"Code";
  v15[2] = @"UserInfo";
  *values = 0u;
  *cf = 0u;
  if (a1)
  {
    values[0] = CFURLGetString(a1);
    p_keys = &keys;
    v4 = values;
    v5 = 1;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    p_keys = v15;
    v4 = &values[1];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  Code = CFErrorGetCode(a2);
  values[1] = CFErrorGetDomain(a2);
  cf[0] = CFNumberCreate(0, kCFNumberLongType, &Code);
  v6 = CFErrorCopyUserInfo(a2);
  if (v6)
  {
    sub_100004334(v6, &v11);
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  cf[1] = v7;
  v5 += 3;
LABEL_8:
  v8 = CFDictionaryCreate(0, p_keys, v4, v5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  return v8;
}

const __CFDictionary *sub_100003118(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"Domain");
    v3 = CFDictionaryGetValue(v1, @"Code");
    v4 = CFDictionaryGetValue(v1, @"UserInfo");
    result = 0;
    valuePtr = 0;
    if (Value)
    {
      if (v3)
      {
        CFNumberGetValue(v3, kCFNumberLongType, &valuePtr);
        return CFErrorCreate(0, Value, valuePtr, v4);
      }
    }
  }

  return result;
}

CFURLRef sub_1000031BC(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"URL");
  if (!Value)
  {
    return 0;
  }

  return CFURLCreateWithString(0, Value, 0);
}

CFTypeRef sub_100003208(const void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
    if (v2)
    {
      v3 = v2;
      CFWriteStreamOpen(v2);
      if (CFPropertyListWrite(v1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0))
      {
        v1 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
        CFWriteStreamClose(v3);
      }

      else
      {
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

const __CFData *sub_1000032A4(CFDataRef theData)
{
  v1 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v1);
    v4 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, kCFAllocatorNull);
    if (v4)
    {
      v5 = v4;
      format = 0;
      CFReadStreamOpen(v4);
      v6 = CFDataGetLength(v1);
      v1 = CFPropertyListCreateWithStream(0, v5, v6, 0, &format, 0);
      CFReadStreamClose(v5);
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFErrorRef sub_100003870(CFErrorRef result)
{
  if (result)
  {
    v1 = result;
    v2 = [(__CFError *)result userInfo];
    if (v2)
    {
      v3 = v2;
      v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v12 + 1) + 8 * i);
            v10 = [v3 valueForKey:v9];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = sub_100003870(v10);
            }

            else
            {
              v11 = v10;
            }

            [(NSMutableDictionary *)v4 setObject:v10 forKey:v9];
          }

          v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v4 = 0;
    }

    return CFErrorCreate(0, [(__CFError *)v1 domain], [(__CFError *)v1 code], v4);
  }

  return result;
}

uint64_t sub_100003A10(int a1, int a2, uint64_t a3, int a4)
{
  v8 = a3;
  v9 = 16777472;
  v10 = a4;
  v11 = NDR_record;
  v12 = a2;
  v13 = a4;
  v5 = 2147483667;
  v6 = a1;
  v7 = xmmword_1000063F0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 1, 0x3Cu, 0, 0, 0, 0);
}

uint64_t sub_100003A9C(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 954437181) >= 0xFFFFFFFC)
  {
    return *(&off_1000084E8 + 5 * (v1 - 954437177) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003ADC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 76);
  v7[0] = *(result + 60);
  v7[1] = v6;
  result = sub_100001F30(v4, v5, (a2 + 28), (a2 + 48), v7);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_10:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100003BE0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = sub_100002348(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

const char *sub_100003C38(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 4169) < 0xFFFFEFFF)
  {
    goto LABEL_43;
  }

  v5 = *(result + 9);
  if (v5 > 0x400)
  {
    goto LABEL_43;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 72 < v5 || v4 < v6 + 72)
  {
    goto LABEL_43;
  }

  v8 = &result[v6];
  v9 = *(v8 + 11);
  if (v9 > 0x400)
  {
    goto LABEL_43;
  }

  v10 = v4 - v6;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 - 72 < v9 || v10 < v11 + 72)
  {
    goto LABEL_43;
  }

  v13 = v8 - 1024;
  v14 = &v8[v11 - 1024];
  v15 = *(v14 + 1076);
  if (v15 > 0x400)
  {
    goto LABEL_43;
  }

  v16 = v10 - v11;
  v17 = (v15 + 3) & 0xFFFFFFFC;
  if (v16 - 72 < v15 || v16 < v17 + 72)
  {
    goto LABEL_43;
  }

  v19 = v14 - 1024;
  v20 = v14 - 1024 + v17;
  v21 = *(v20 + 2112);
  if (v21 > 0x400)
  {
    goto LABEL_43;
  }

  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v16 - v17;
  if (v23 - 72 < v21 || v23 != v22 + 72)
  {
    goto LABEL_43;
  }

  v25 = 1064;
  if (v4 < 0x428)
  {
    v25 = *(result + 1);
  }

  result = memchr((result + 40), 0, v25 - 40);
  if (!result)
  {
    goto LABEL_43;
  }

  v26 = &v3[v4];
  v27 = v13 + 1072;
  v28 = v26 - (v13 + 1072) >= 1024 ? 1024 : v26 - (v13 + 1072);
  result = memchr(v13 + 1072, 0, v28);
  if (!result)
  {
    goto LABEL_43;
  }

  v29 = v19 + 2104;
  v30 = &v26[-v19 - 2104] >= 1024 ? 1024 : &v26[-v19 - 2104];
  result = memchr((v19 + 2104), 0, v30);
  if (result && ((v31 = v20 - 1024, v32 = (v20 + 2116), v26 - v32 >= 1024) ? (v33 = 1024) : (v33 = v26 - v32), (result = memchr(v32, 0, v33)) != 0))
  {
    result = sub_100002404(*(v3 + 3), v3 + 40, v27, v29, *(v31 + 3128), v32, *(v31 + v22 + 3140));
    *(a2 + 32) = result;
  }

  else
  {
LABEL_43:
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

_DWORD *sub_100003E30(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1000023C0(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_100003E8C(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 954437181) >= 0xFFFFFFFC && (v5 = *(&off_1000084E8 + 5 * (v4 - 954437177) + 5)) != 0)
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

_BYTE *sub_1000040F4(void *a1, void *a2, char *a3)
{
  result = [a1 isEqual:a2];
  if ((result & 1) == 0)
  {
    result = [a2 stringByDeletingPathExtension];
    if (!result)
    {
      goto LABEL_17;
    }

    v8 = result;
    result = [a1 hasPrefix:result];
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }

    result = [objc_msgSend(a2 "pathExtension")];
    if (!result)
    {
      goto LABEL_17;
    }

    v9 = result;
    result = [a1 substringFromIndex:{objc_msgSend(v8, "length")}];
    if (!result)
    {
      goto LABEL_17;
    }

    v10 = result;
    result = [result length];
    if (!result)
    {
      goto LABEL_17;
    }

    result = [v10 fileSystemRepresentation];
    if (!result || *result != 45)
    {
      goto LABEL_17;
    }

    do
    {
      v12 = *++result;
      v11 = v12;
    }

    while ((v12 - 58) >= 0xFFFFFFF6);
    if (v11 != 46)
    {
LABEL_17:
      v7 = 0;
      goto LABEL_3;
    }

    v13 = 1;
    while (1)
    {
      v14 = result[v13];
      if (!result[v13])
      {
        break;
      }

      v15 = *v9;
      if (!*v9)
      {
        break;
      }

      ++v9;
      ++v13;
      if (v14 != v15)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = 1;
LABEL_3:
  *a3 = v7;
  return result;
}

CFTypeRef sub_100004270(void *a1, const __CFString *a2, CFIndex a3)
{
  userInfoValues = a1;
  userInfoKeys = kCFErrorDescriptionKey;
  v3 = CFErrorCreateWithUserInfoKeysAndValues(0, a2, a3, &userInfoKeys, &userInfoValues, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_100002FBC(0, v3);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100003208(v5);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void sub_100004334(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  Count = CFDictionaryGetCount(a1);
  Mutable = CFDictionaryCreateMutable(0, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = Mutable;
  if (Mutable)
  {
    v6 = Mutable;
    Typed = CFAllocatorAllocateTyped();
    if (Typed)
    {
      v8 = Typed;
      CFDictionaryGetKeysAndValues(a1, Typed, &Typed[Count]);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = v8;
        while (1)
        {
          v11 = v10[Count];
          v12 = CFGetTypeID(v11);
          if (v12 != CFErrorGetTypeID())
          {
            break;
          }

          v11 = sub_100002FBC(0, v11);
          if (v11)
          {
            goto LABEL_7;
          }

LABEL_8:
          ++v10;
          if (!--v9)
          {
            goto LABEL_12;
          }
        }

        CFRetain(v11);
        if (!v11)
        {
          goto LABEL_8;
        }

LABEL_7:
        CFDictionarySetValue(v6, *v10, v11);
        CFRelease(v11);
        goto LABEL_8;
      }

LABEL_12:
      CFAllocatorDeallocate(0, v8);
    }
  }

  CFRelease(a1);
}