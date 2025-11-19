void sub_100000888(int a1)
{
  os_release(qword_1000103E8);
  qword_1000103E8 = 0;
  if (dword_1000103B0 != -1)
  {
    close(dword_1000103B0);
    dword_1000103B0 = -1;
  }

  if (qword_1000103D0)
  {
    xpc_connection_cancel(qword_1000103D0);
  }

  if (qword_1000103D8)
  {
    CFRelease(qword_1000103D8);
  }

  if (qword_1000103E0)
  {
    CFRelease(qword_1000103E0);
  }

  exit(a1);
}

uint64_t sub_1000009CC(const char *a1)
{
  Count = CFArrayGetCount(qword_1000103D8);
  if (Count < 1)
  {
LABEL_5:
    LOWORD(v4) = -1;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000103D8, v4);
      if (!strncmp(a1, ValueAtIndex, 0x40uLL))
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v4;
}

uint64_t sub_100000A44(uint64_t a1, const char *a2)
{
  v3 = qword_1000103E0;
  Count = CFArrayGetCount(qword_1000103E0);
  if (Count < 1)
  {
LABEL_5:
    LOWORD(v6) = -1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (!strncmp(a2, ValueAtIndex, 0x40uLL))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

const char *sub_100000ACC(uint64_t a1)
{
  if (a1 > 3222291537)
  {
    if (a1 <= 3295691826)
    {
      if (a1 <= 3223864408)
      {
        if (a1 == 3222291538)
        {
          return "DIOCXCOMMIT";
        }

        if (a1 == 3222291539)
        {
          return "DIOCXROLLBACK";
        }
      }

      else
      {
        switch(a1)
        {
          case 3223864409:
            return "DIOCSETIFFLAG";
          case 3223864410:
            return "DIOCCLRIFFLAG";
          case 3235398674:
            return "DIOCCLRSTATES";
        }
      }
    }

    else if (a1 > 3424666629)
    {
      switch(a1)
      {
        case 3424666630:
          return "DIOCGETRULES";
        case 3424666651:
          return "DIOCINSERTRULE";
        case 3424666652:
          return "DIOCDELETERULE";
      }
    }

    else
    {
      switch(a1)
      {
        case 3295691827:
          return "DIOCBEGINADDRS";
        case 3295691828:
          return "DIOCADDADDR";
        case 3424666628:
          return "DIOCADDRULE";
      }
    }
  }

  else if (a1 <= 3221505047)
  {
    if (a1 <= 536888341)
    {
      if (a1 == 536888321)
      {
        return "DIOCSTART";
      }

      if (a1 == 536888322)
      {
        return "DIOCSTOP";
      }
    }

    else
    {
      switch(a1)
      {
        case 536888342:
          return "DIOCCLRSTATUS";
        case 536888405:
          return "DIOCCLRSRCNODES";
        case 1074283528:
          return "DIOCSTARTREF";
      }
    }
  }

  else if (a1 > 3222291460)
  {
    switch(a1)
    {
      case 3222291461:
        return "DIOCGETSTARTERS";
      case 3222291465:
        return "DIOCSTOPREF";
      case 3222291537:
        return "DIOCXBEGIN";
    }
  }

  else
  {
    switch(a1)
    {
      case 3221505048:
        return "DIOCSETDEBUG";
      case 3221767197:
        return "DIOCSETTIMEOUT";
      case 3221767208:
        return "DIOCSETLIMIT";
    }
  }

  return "UNKNOWN";
}

void start(int a1, char *const *a2)
{
  v4 = *a2;
  errorbuf = 0;
  if (sandbox_init("pfd", 1uLL, &errorbuf) == -1)
  {
    fprintf(__stderrp, "sandbox_init: %s\n", errorbuf);
    sandbox_free_error(errorbuf);
  }

  while (1)
  {
    v5 = getopt(a1, a2, "D");
    if (v5 != 68)
    {
      break;
    }

    dword_1000103B8 = 1;
  }

  if (v5 == -1)
  {
    sub_100000EE0();
    sub_100000F30();
    sub_100001424();
    sub_100001528();
    sub_1000016CC();
    sub_100001740();
    dispatch_main();
  }

  sub_100000E84(v4);
  exit(1);
}

uint64_t sub_100000E84(const char *a1)
{
  printf("Usage: %s ", a1);
  puts("[-D]");
  puts("\noptions:");

  return puts("\t-D\tEnable PF debugging");
}

void sub_100000EE0()
{
  qword_1000103E8 = os_log_create(off_100010000[0], "daemon");
  if (!qword_1000103E8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007190();
  }
}

void sub_100000F30()
{
  if (dword_1000103B0 != -1)
  {
    sub_100000888(22);
  }

  v0 = open("/dev/pfm", 2);
  dword_1000103B0 = v0;
  if (v0 == -1 || fcntl(v0, 2, 1) == -1)
  {
    sub_100000900();
    v15 = __error();
    sub_100000888(*v15);
  }

  xmmword_1000103F0 = xmmword_100008260;
  unk_100010400 = xmmword_100008270;
  xmmword_100010410 = xmmword_100008280;
  unk_100010420 = xmmword_100008290;
  xmmword_100010430 = xmmword_1000082A0;
  unk_100010440 = xmmword_1000082B0;
  qword_100010450 = 0x9600000000;
  if (dword_1000103B8)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  LODWORD(v19[0]) = v1;
  if (ioctl(dword_1000103B0, 0xC0044418uLL, v19))
  {
    sub_100000900();
  }

  if (LODWORD(v19[0]) <= 3)
  {
    v2 = off_10000C4A0[LODWORD(v19[0])];
  }

  sub_100000988();
  v3 = 0;
  *&v19[0] = 0;
  do
  {
    LODWORD(v19[0]) = v3;
    v4 = ioctl(dword_1000103B0, 0xC0084427uLL, v19, v17, v18);
    if (v4)
    {
      v6 = v4;
LABEL_52:
      sub_100000900();
LABEL_53:
      sub_100000888(v6);
    }

    v5 = dword_1000082C8[v3];
    if (DWORD1(v19[0]) <= v5 && (DWORD1(v19[0]) = dword_1000082C8[v3], ioctl(dword_1000103B0, 0xC0084428uLL, v19)))
    {
      v6 = *__error();
      if (v6 == 16)
      {
        goto LABEL_52;
      }

      v17 = v3;
      v18 = v5;
      sub_100000900();
    }

    else
    {
      v6 = 0;
    }

    if (v3 > 4)
    {
      break;
    }

    ++v3;
  }

  while (!v6);
  if (v6)
  {
    goto LABEL_53;
  }

  v7 = 0;
  do
  {
    *&v19[0] = __PAIR64__(*(&xmmword_1000103F0 + v7), v7);
    if (ioctl(dword_1000103B0, 0xC008441DuLL, v19, v17, v18))
    {
      v6 = *__error();
      v17 = v7;
      v18 = *(&xmmword_1000103F0 + v7);
      sub_100000900();
    }

    else
    {
      v6 = 0;
    }

    if (v7 > 0x18)
    {
      break;
    }

    ++v7;
  }

  while (!v6);
  if (v6)
  {
    goto LABEL_53;
  }

  v20 = 0x10000000000;
  memset(v19, 0, sizeof(v19));
  if (__strlcpy_chk() >= 0x10)
  {
    sub_100000900();
  }

  if (ioctl(dword_1000103B0, 0xC0284459uLL, v19))
  {
    v8 = *__error();
    sub_100000900();
    if (v8)
    {
      v14 = v8;
      goto LABEL_57;
    }
  }

  v19[0] = 0uLL;
  if (ioctl(dword_1000103B0, 0xC0104405uLL, v19) < 0)
  {
    if (*__error() == 2)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v9 = malloc_type_malloc(2 * SLODWORD(v19[0]), 0xA3D50ABFuLL);
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  *(&v19[0] + 1) = v9;
  if (ioctl(dword_1000103B0, 0xC0104405uLL, v19) < 0)
  {
    free(v10);
    if (*__error() == 2)
    {
LABEL_44:
      sub_100000944();
      goto LABEL_46;
    }

LABEL_45:
    sub_100000900();
LABEL_46:
    v14 = *__error();
    if ((v14 & 0xFFFFFFFD) == 0)
    {
      return;
    }

LABEL_57:
    sub_100000888(v14);
  }

  v11 = v19[0];
  if (SLODWORD(v19[0]) >= 1)
  {
    v12 = 0;
    v13 = (*(&v19[0] + 1) + 20);
    while (strncmp(v13, "pfd", 0x40uLL))
    {
      v12 += 84;
      v13 += 84;
      if (v12 >= v11)
      {
        goto LABEL_49;
      }
    }

    v16 = *(v13 - 20);
    sub_100000988();
    qword_1000103C0 = *(v13 - 20);
  }

LABEL_49:
  free(v10);
}

void sub_100001424()
{
  memset(&v1, 0, sizeof(v1));
  v0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &v1);
  qword_1000103D8 = v0;
  if (!v0)
  {
    sub_100000900();
    sub_100000888(12);
  }

  CFArrayAppendValue(v0, off_1000100E0[0]);
  CFArrayAppendValue(qword_1000103D8, kPFThreadBR[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010108[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010110[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100E8[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100F0[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100F8[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010100[0]);
}

void sub_100001528()
{
  memset(&v1, 0, sizeof(v1));
  v0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &v1);
  qword_1000103E0 = v0;
  if (!v0)
  {
    sub_100000900();
    sub_100000888(12);
  }

  CFArrayAppendValue(v0, off_100010170[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010120[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010128[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010130[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010138[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010140[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010148[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010150[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010158[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010160[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010168[0]);
  CFArrayAppendValue(qword_1000103E0, kPFThreadBR_nat64[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010178[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010180[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010188[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010190[0]);
}

void sub_1000016CC()
{
  mach_service = xpc_connection_create_mach_service(off_100010008[0], &_dispatch_main_q, 1uLL);
  qword_1000103D0 = mach_service;
  if (!mach_service)
  {
    sub_100000900();
    sub_100000888(12);
  }

  xpc_connection_set_event_handler(mach_service, &stru_10000C420);
  v1 = qword_1000103D0;

  xpc_connection_resume(v1);
}

void sub_100001740()
{
  v5.__sigaction_u.__sa_handler = 1;
  *&v5.sa_mask = 0x200000000;
  sigaction(1, &v5, 0);
  sigaction(13, &v5, 0);
  sigaction(14, &v5, 0);
  sigaction(24, &v5, 0);
  sigaction(25, &v5, 0);
  sigaction(26, &v5, 0);
  sigaction(27, &v5, 0);
  sigaction(18, &v5, 0);
  sigaction(21, &v5, 0);
  sigaction(22, &v5, 0);
  sigaction(30, &v5, 0);
  sigaction(31, &v5, 0);
  sigaction(29, &v5, 0);
  sigaction(15, &v5, 0);
  sigaction(2, &v5, 0);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, &_dispatch_main_q);
  v1 = v0;
  if (v0)
  {
    dispatch_source_set_event_handler(v0, &stru_10000C460);
    dispatch_resume(v1);
  }

  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  if (v2)
  {
    v3 = v2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_1000019E8;
    v4[3] = &unk_10000C480;
    v4[4] = v1;
    v4[5] = v2;
    dispatch_source_set_event_handler(v2, v4);
    dispatch_resume(v3);
  }
}

void sub_10000191C(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    sub_100000988();

    sub_100001A24(a2);
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      xpc_dictionary_get_string(a2, _xpc_error_key_description);
      sub_100000900();
      sub_100000888(22);
    }

    sub_100000900();
  }
}

void sub_1000019E8(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  dispatch_source_cancel(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  sub_100000888(0);
}

void sub_100001A24(_xpc_connection_s *a1)
{
  if (__CFADD__(dword_100010458++, 1))
  {
    sub_1000071D8();
  }

  xpc_connection_set_target_queue(a1, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100001ACC;
  handler[3] = &unk_10000C4C0;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100001ACC(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type != &_xpc_type_error)
    {

      sub_100000900();
      return;
    }

    goto LABEL_35;
  }

  v5 = *(a1 + 32);
  *size = 0u;
  v185 = 0u;
  error = 0;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (!v6)
  {
LABEL_29:
    xpc_connection_get_name(*(a1 + 32));
    xpc_connection_get_pid(*(a1 + 32));
    sub_100000900();
    if (&_xpc_type_dictionary == &_xpc_type_error)
    {
LABEL_35:
      v176 = *(a1 + 32);
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      sub_100000944();
      xpc_connection_cancel(*(a1 + 32));
      if (!dword_100010458)
      {
        sub_100007204();
      }

      --dword_100010458;
      return;
    }

    reply = xpc_dictionary_create_reply(object);
    if (reply)
    {
      v22 = reply;
      xpc_dictionary_set_uint64(reply, off_100010010[0], 0x7D2uLL);
      v23 = *(a1 + 32);
LABEL_32:
      sub_10000320C(v23, v22);
LABEL_33:
      v24 = v22;
      goto LABEL_34;
    }

    goto LABEL_101;
  }

  v7 = v6;
  v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.pf.allow", &error);
  v9 = error;
  if (!error && v8)
  {
    TypeID = CFBooleanGetTypeID();
    v11 = TypeID == CFGetTypeID(v8) && CFEqual(v8, kCFBooleanTrue) != 0;
    goto LABEL_14;
  }

  v11 = 0;
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
    v9 = error;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v7);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(object, off_100010010[0]);
  if (uint64 <= 1005)
  {
    if (uint64 > 1002)
    {
      if (uint64 != 1003)
      {
        if (uint64 != 1004)
        {
          size[0] = 0;
          *token.val = 0;
          v25 = sub_10000327C(object, size, &token);
          v14 = 0;
          v26 = 0;
          LOBYTE(error) = v25;
          if (v25)
          {
            v14 = sub_100003808(size[0], *token.val);
            v26 = sub_100004BC0();
          }

          v27 = xpc_dictionary_create_reply(object);
          if (v27)
          {
            v28 = v27;
            if (error)
            {
              xpc_dictionary_set_uint64(v27, off_100010010[0], 0x7D1uLL);
              if (v26)
              {
                xpc_dictionary_set_value(v28, off_100010028[0], v26);
              }
            }

            else
            {
              xpc_dictionary_set_uint64(v27, off_100010010[0], 0x7D0uLL);
            }

            sub_10000320C(v12, v28);
            xpc_release(v28);
          }

          else
          {
            sub_100000900();
          }

          if (!v26)
          {
LABEL_208:
            if (!v14)
            {
              return;
            }

            goto LABEL_209;
          }

          v20 = v26;
LABEL_207:
          xpc_release(v20);
          goto LABEL_208;
        }

        size[0] = 0;
        *token.val = 0;
        if (sub_10000327C(object, size, &token))
        {
          v50 = sub_100007874(size[0], *token.val, v44, v45, v46, v47, v48, v49);
          goto LABEL_72;
        }

LABEL_75:
        v22 = xpc_dictionary_create_reply(object);
        if (v22)
        {
          goto LABEL_99;
        }

        goto LABEL_101;
      }

      *token.val = 0;
      error = 0;
      v14 = 0;
      if (!sub_10000327C(object, &token, &error))
      {
        goto LABEL_203;
      }

      value = xpc_dictionary_get_value(object, off_100010020[0]);
      if (!value || xpc_get_type(value) != &_xpc_type_string || (v37 = *token.val, v134 = sub_1000009CC(*token.val), v39 = error, v135 = sub_100000A44(v37, error), (v136 = xpc_dictionary_get_value(object, off_100010028[0])) == 0) || xpc_get_type(v136) != &_xpc_type_array)
      {
LABEL_202:
        sub_100000900();
        v14 = 0;
        goto LABEL_203;
      }

      xpc_dictionary_get_value(object, off_100010028[0]);
      *size = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v14 = sub_100007398(v37, v39, v134, v135, size);
      if (v14)
      {
        if (sub_1000076B0())
        {
          if (sub_100004B14())
          {
            v153 = xpc_dictionary_create_reply(object);
            if (!v153)
            {
              sub_100000900();
              sub_100007874(v37, v39, v158, v159, v160, v161, v162, v163);
              goto LABEL_209;
            }

            v36 = v153;
            goto LABEL_105;
          }

          sub_100007874(v37, v39, v147, v148, v149, v150, v151, v152);
LABEL_203:
          v137 = xpc_dictionary_create_reply(object);
          if (v137)
          {
            v36 = v137;
            goto LABEL_205;
          }

LABEL_210:
          sub_100000900();
          if (!v14)
          {
            return;
          }

LABEL_209:
          CFRelease(v14);
          return;
        }

LABEL_240:
        sub_100003564(v37, v39, size);
        goto LABEL_203;
      }

      goto LABEL_231;
    }

    if (uint64 == 1001)
    {
      *token.val = 0;
      *v182 = 0;
      error = 0;
      v14 = 0;
      if (!sub_10000327C(object, &token, &error))
      {
        goto LABEL_203;
      }

      v37 = *token.val;
      v38 = sub_1000009CC(*token.val);
      v39 = error;
      v40 = sub_100000A44(v37, error);
      v41 = xpc_dictionary_get_value(object, off_100010030[0]);
      if (!v41)
      {
        goto LABEL_202;
      }

      v42 = v41;
      v43 = xpc_dictionary_get_value(object, off_100010048[0]);
      if (!v43 || xpc_get_type(v43) != &_xpc_type_uint64)
      {
        goto LABEL_202;
      }

      v143 = xpc_dictionary_get_uint64(object, off_100010048[0]);
      *size = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v14 = sub_100007398(v37, v39, v38, v40, size);
      if (v14)
      {
        if (!sub_100007964(v37, v39, v14, v143, v42, v182, v144, v145))
        {
          sub_100003564(v37, v39, size);
        }

        if (sub_100004B14())
        {
          v146 = xpc_dictionary_create_reply(object);
          if (!v146)
          {
            sub_100000900();
            sub_100007230(v37, v39, *v182, v14);
            sub_100003564(v37, v39, size);
            goto LABEL_209;
          }

          v36 = v146;
          xpc_dictionary_set_uint64(v146, off_100010010[0], 0x7D1uLL);
          v66 = off_100010050[0];
          v68 = *v182;
          v67 = v36;
          goto LABEL_206;
        }

        sub_100007230(v37, v39, *v182, v14);
        goto LABEL_240;
      }

LABEL_231:
      sub_100000900();
      goto LABEL_203;
    }

    if (uint64 != 1002)
    {
      goto LABEL_97;
    }

    size[0] = 0;
    *token.val = 0;
    LODWORD(error) = 0;
    if (sub_10000327C(object, size, &token))
    {
      v35 = xpc_dictionary_get_value(object, off_100010050[0]);
      if (!v35 || xpc_get_type(v35) != &_xpc_type_uint64)
      {
        sub_100000900();
        v36 = xpc_dictionary_create_reply(object);
        v14 = 0;
        if (!v36)
        {
          goto LABEL_210;
        }

LABEL_205:
        v66 = off_100010010[0];
        v67 = v36;
        v68 = 2000;
        goto LABEL_206;
      }

      v124 = xpc_dictionary_get_uint64(object, off_100010050[0]);
      v125 = size[0];
      v126 = *token.val;
      v14 = sub_100003808(size[0], *token.val);
      if (sub_100007230(v125, v126, v124, v14))
      {
        v127 = sub_1000049C8(v14, &error);
        v64 = v127;
        if (v127 && !error)
        {
          CFStringGetCStringPtr(v14, 0);
          sub_100000988();
          sub_100007874(v125, v126, v128, v129, v130, v131, v132, v133);
          v36 = xpc_dictionary_create_reply(object);
          if (!v36)
          {
            goto LABEL_210;
          }

          goto LABEL_105;
        }
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
      v14 = 0;
    }

    v65 = xpc_dictionary_create_reply(object);
    if (!v65)
    {
      goto LABEL_210;
    }

    v36 = v65;
    if ((v64 & 1) == 0)
    {
      goto LABEL_205;
    }

LABEL_105:
    v66 = off_100010010[0];
    v67 = v36;
    v68 = 2001;
LABEL_206:
    xpc_dictionary_set_uint64(v67, v66, v68);
    sub_10000320C(v12, v36);
    v20 = v36;
    goto LABEL_207;
  }

  if (uint64 <= 1008)
  {
    if (uint64 == 1006)
    {
      v59 = xpc_dictionary_get_value(object, off_100010030[0]);
      if (v59)
      {
        v60 = xpc_dictionary_create(0, 0, 0);
        if (v60)
        {
          LOBYTE(v59) = sub_100005868(v59, v60);
        }

        else
        {
          sub_100000900();
          LOBYTE(v59) = 0;
        }
      }

      else
      {
        sub_100000900();
        v60 = 0;
      }

      v122 = xpc_dictionary_create_reply(object);
      if (v122)
      {
        v123 = v122;
        if (v59)
        {
          xpc_dictionary_set_uint64(v122, off_100010010[0], 0x7D1uLL);
          xpc_dictionary_set_value(v123, off_100010030[0], v60);
        }

        else
        {
          xpc_dictionary_set_uint64(v122, off_100010010[0], 0x7D0uLL);
        }

        sub_10000320C(v12, v123);
        xpc_release(v123);
      }

      else
      {
        sub_100000900();
      }

      if (!v60)
      {
        return;
      }

      v24 = v60;
LABEL_34:
      xpc_release(v24);
      return;
    }

    if (uint64 != 1007)
    {
      *token.val = 0;
      error = 0;
      v14 = 0;
      if (sub_10000327C(object, &token, &error))
      {
        v15 = xpc_dictionary_get_value(object, off_100010020[0]);
        if (v15 && xpc_get_type(v15) == &_xpc_type_string && (v69 = *token.val, v138 = sub_1000009CC(*token.val), v70 = error, v139 = sub_100000A44(v69, error), (v140 = xpc_dictionary_get_value(object, off_100010040[0])) != 0) && xpc_get_type(v140) == &_xpc_type_array)
        {
          v154 = xpc_dictionary_get_value(object, off_100010040[0]);
          *size = 0u;
          v185 = 0u;
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v14 = sub_100007398(v69, v70, v138, v139, size);
          if (v14)
          {
            string = xpc_dictionary_get_string(object, off_100010038[0]);
            if (sub_100005F28(v69, v70, string, v154))
            {
              v16 = xpc_dictionary_create_reply(object);
              if (v16)
              {
                v17 = v16;
                v18 = off_100010010[0];
                v19 = 2001;
                goto LABEL_28;
              }

              goto LABEL_109;
            }

            sub_100003564(v69, v70, size);
          }

          else
          {
            sub_100000900();
          }
        }

        else
        {
          sub_100000900();
          v14 = 0;
        }
      }

      v16 = xpc_dictionary_create_reply(object);
      if (v16)
      {
        v17 = v16;
        v18 = off_100010010[0];
        v19 = 2000;
LABEL_28:
        xpc_dictionary_set_uint64(v16, v18, v19);
        sub_10000320C(v12, v17);
        v20 = v17;
        goto LABEL_207;
      }

      v69 = *token.val;
      v70 = error;
LABEL_109:
      sub_100000900();
      xpc_dictionary_get_string(object, off_100010038[0]);
      sub_100006304(v69, v70);
      if (!v14)
      {
        return;
      }

      goto LABEL_209;
    }

    size[0] = 0;
    *token.val = 0;
    if (sub_10000327C(object, size, &token))
    {
      v50 = sub_100007A40(size[0], *token.val);
LABEL_72:
      v51 = v50;
      v52 = xpc_dictionary_create_reply(object);
      if (v52)
      {
        v22 = v52;
        if (v51)
        {
          v53 = off_100010010[0];
          v54 = 2001;
LABEL_100:
          xpc_dictionary_set_uint64(v52, v53, v54);
          v23 = v12;
          goto LABEL_32;
        }

LABEL_99:
        v53 = off_100010010[0];
        v52 = v22;
        v54 = 2000;
        goto LABEL_100;
      }

LABEL_101:
      sub_100000900();
      return;
    }

    goto LABEL_75;
  }

  if (uint64 == 1009)
  {
    size[0] = 0;
    *token.val = 0;
    if (sub_10000327C(object, size, &token))
    {
      v61 = xpc_dictionary_get_value(object, off_100010020[0]);
      if (v61)
      {
        if (xpc_get_type(v61) == &_xpc_type_string)
        {
          v141 = xpc_dictionary_get_value(object, off_100010038[0]);
          if (v141)
          {
            v142 = v141;
            if (xpc_get_type(v141) == &_xpc_type_string)
            {
              v156 = size[0];
              sub_1000009CC(size[0]);
              v157 = *token.val;
              sub_100000A44(v156, *token.val);
              xpc_string_get_string_ptr(v142);
              if (sub_100006304(v156, v157))
              {
                v62 = 2001;
              }

              else
              {
                v62 = 2000;
              }

LABEL_95:
              v52 = xpc_dictionary_create_reply(object);
              if (v52)
              {
                v22 = v52;
                v53 = off_100010010[0];
                v54 = v62;
                goto LABEL_100;
              }

              goto LABEL_101;
            }
          }
        }
      }

      sub_100000900();
    }

    v62 = 2000;
    goto LABEL_95;
  }

  if (uint64 != 3000)
  {
    if (uint64 == 3001)
    {
      size[0] = 0;
      size[1] = 0;
      token.val[0] = 0;
      LODWORD(error) = 0;
      if (!object)
      {
        goto LABEL_52;
      }

      if (xpc_get_type(object) != &_xpc_type_dictionary)
      {
        goto LABEL_52;
      }

      v116 = xpc_dictionary_get_value(object, off_100010060[0]);
      if (!v116)
      {
        goto LABEL_52;
      }

      v117 = v116;
      if (xpc_get_type(v116) != &_xpc_type_dictionary)
      {
        goto LABEL_52;
      }

      token.val[0] = 0;
      v118 = xpc_dictionary_get_value(v117, off_1000100B8[0]);
      if (!v118)
      {
        goto LABEL_52;
      }

      v119 = v118;
      if (xpc_get_type(v118) != &_xpc_type_data)
      {
        goto LABEL_52;
      }

      if (xpc_data_get_bytes(v119, &token, 0, 4uLL) != 4)
      {
        goto LABEL_52;
      }

      v120 = xpc_dictionary_get_value(v117, off_1000100C0[0]);
      if (!v120)
      {
        goto LABEL_52;
      }

      v121 = v120;
      if (xpc_get_type(v120) != &_xpc_type_uint64 || xpc_uint64_get_value(v121) >= 0x10000)
      {
        goto LABEL_52;
      }

      v164 = xpc_uint64_get_value(v121);
      v165 = xpc_dictionary_get_value(v117, off_1000100D8[0]);
      if (v165 && (v11 = v165, xpc_get_type(v165) == &_xpc_type_uint64) && xpc_uint64_get_value(v11) < 0x100)
      {
        v166 = xpc_uint64_get_value(v11);
      }

      else
      {
        sub_100000900();
        v166 = 0;
      }

      LODWORD(error) = 0;
      v167 = xpc_dictionary_get_value(v117, off_1000100C8[0]);
      if (v167 && (v11 = v167, xpc_get_type(v167) == &_xpc_type_data) && xpc_data_get_bytes(v11, &error, 0, 4uLL) == 4)
      {
        v168 = 1;
      }

      else
      {
        sub_100000900();
        v168 = 0;
      }

      v169 = xpc_dictionary_get_value(v117, off_1000100D0[0]);
      if (v169 && (v170 = v169, xpc_get_type(v169) == &_xpc_type_uint64) && xpc_uint64_get_value(v170) < 0x10000)
      {
        v171 = xpc_uint64_get_value(v170);
      }

      else
      {
        sub_100000900();
        v171 = 0;
      }

      v172 = sub_100000AC0();
      if ((v172 & 0x80000000) == 0 && (v11 = v172, (ioctl(v172, 0xC0104419uLL, size) & 0x80000000) == 0))
      {
        v173 = malloc_type_malloc(SLODWORD(size[0]), 0x81BD4D42uLL);
        v30 = v173;
        if (!v173 || (size[1] = v173, bzero(v173, SLODWORD(size[0])), ioctl(v11, 0xC0104419uLL, size) < 0))
        {
LABEL_294:
          sub_100000900();
          v29 = 0;
        }

        else
        {
          if (SLODWORD(size[0]) >= 1)
          {
            v174 = 0;
            v11 = 0;
            v29 = 0;
            while (1)
            {
              v175 = size[1] + v174;
              if (*(size[1] + v174 + 282) == 2 && (*(v175 + 24) != *(v175 + 48) || *(size[1] + v174 + 40) != *(size[1] + v174 + 64)) && *(v175 + 24) == token.val[0] && *(size[1] + v174 + 40) == v164)
              {
                if (v168 && *(size[1] + v174 + 72) != error || v171 && v171 != *(size[1] + v174 + 88) || v166 && v166 != *(size[1] + v174 + 284))
                {
                  goto LABEL_53;
                }

                if (v29)
                {
                  goto LABEL_294;
                }

                v29 = 1;
                v11 = size[1] + v174;
              }

              v174 += 297;
              if (v174 >= SLODWORD(size[0]))
              {
                goto LABEL_53;
              }
            }
          }

          v29 = 0;
          v11 = 0;
        }
      }

      else
      {
LABEL_52:
        sub_100000900();
        v29 = 0;
        v30 = 0;
      }

LABEL_53:
      v31 = xpc_dictionary_create_reply(object);
      if (v31)
      {
        v32 = v31;
        v33 = off_100010010[0];
        if (v29)
        {
          xpc_dictionary_set_uint64(v31, off_100010010[0], 0x7D1uLL);
          xpc_dictionary_set_data(v32, off_1000100A8[0], (v11 + 48), 4uLL);
          v33 = off_1000100B0[0];
          v34 = *(v11 + 64);
          v31 = v32;
        }

        else
        {
          v34 = 2000;
        }

        xpc_dictionary_set_uint64(v31, v33, v34);
        sub_10000320C(v12, v32);
      }

      if (v30)
      {
        free(v30);
      }

      return;
    }

LABEL_97:
    sub_100000900();
    v63 = xpc_dictionary_create_reply(object);
    if (v63)
    {
      v22 = v63;
      goto LABEL_99;
    }

    goto LABEL_101;
  }

  if (!object || xpc_get_type(object) != &_xpc_type_dictionary || (v71 = xpc_dictionary_get_value(object, off_100010058[0])) == 0 || (v72 = v71, xpc_get_type(v71) != &_xpc_type_dictionary) || (v73 = xpc_dictionary_get_value(v72, off_100010068[0])) == 0 || (v74 = v73, xpc_get_type(v73) != &_xpc_type_array) || (v75 = sub_100000AC0(), size[0] = 0, size[1] = 0, ioctl(v75, 0xC0104419uLL, size) < 0))
  {
    sub_100000900();
    v55 = 0;
    goto LABEL_80;
  }

  sub_100000944();
  v76 = (SLODWORD(size[0]) & 0xFFFFFFFFFFFFFFF8) + 8;
  v77 = v76 + 40 * xpc_array_get_count(v74) + 8 * (v76 / 0x129) + 96;
  v78 = malloc_type_malloc(v77, 0x7F8243ADuLL);
  v55 = v78;
  if (!v78)
  {
    goto LABEL_289;
  }

  size[1] = v78;
  bzero(v78, v77);
  if (ioctl(v75, 0xC0104419uLL, size, 297) < 0)
  {
    goto LABEL_289;
  }

  v79 = size[0];
  v178 = SLODWORD(size[0]) & 0xFFFFFFFFFFFFFFF8;
  v80 = &v55[v178];
  *(v80 + 8) = 529;
  *(v80 + 20) = 7697;
  *(v80 + 32) = 518;
  *(v80 + 44) = 7686;
  v179 = &v55[v178 + 104];
  v81 = size[1];
  if (v79 < 1)
  {
    goto LABEL_136;
  }

  v82 = 0;
  v83 = (size[1] + 284);
  do
  {
    v84 = *(v83 - 2);
    if (v84 == 30)
    {
      v85 = *v83;
      if (v85 == 6)
      {
        v86 = &v55[v178 + 80];
LABEL_133:
        ++*v86;
        goto LABEL_134;
      }

      v86 = v80 + 32;
    }

    else
    {
      if (v84 != 2)
      {
        goto LABEL_134;
      }

      v85 = *v83;
      v86 = v80 + 56;
      if (v85 == 6)
      {
        goto LABEL_133;
      }

      v86 = &v55[v178 + 8];
    }

    if (v85 == 17)
    {
      goto LABEL_133;
    }

LABEL_134:
    v82 += 297;
    v83 += 297;
  }

  while (v82 < v79);
  v81 = size[1];
LABEL_136:
  *(v80 + 3) = v179;
  v87 = v179 + 8 * *(v80 + 2);
  *(v80 + 6) = v87;
  v88 = v87 + 8 * *(v80 + 8);
  *(v80 + 9) = v88;
  *(v80 + 12) = v88 + 8 * *(v80 + 14);
  *token.val = &v55[v178 + 8];
  if (v79 >= 1)
  {
    v89 = 0;
    while (1)
    {
      v90 = v81[282];
      if (v90 == v81[283])
      {
        break;
      }

LABEL_149:
      v81 += 297;
      v89 += 297;
      if (v89 >= v79)
      {
        goto LABEL_150;
      }
    }

    v91 = v81[284];
    if (v90 == 30)
    {
      if (v91 == 6)
      {
        v92 = &v55[v178 + 80];
LABEL_148:
        v93 = *(v92 + 4);
        *(*(v92 + 16) + 8 * v93) = v81;
        *(v92 + 4) = v93 + 1;
        goto LABEL_149;
      }

      v92 = &v55[v178 + 32];
LABEL_145:
      if (v91 == 17)
      {
        goto LABEL_148;
      }
    }

    else if (v90 == 2)
    {
      v92 = &v55[v178 + 56];
      if (v91 == 6)
      {
        goto LABEL_148;
      }

      v92 = &v55[v178 + 8];
      goto LABEL_145;
    }

    v177 = v81[282];
    sub_100000944();
    v79 = size[0];
    goto LABEL_149;
  }

LABEL_150:
  sub_100000944();
  v180 = (((((size[0] & 0xFFFFFFF8) + 8) * 0xDCA8F158C7F91AB9) >> 64) >> 5) & 0x7FFFFFFFFFFFFF8;
  if (xpc_array_get_count(v74))
  {
    v94 = 0;
    v95 = v179 + v180;
    while (1)
    {
      v96 = v94;
      v97 = xpc_array_get_value(v74, v94);
      if (!v97)
      {
        break;
      }

      v98 = v97;
      if (xpc_get_type(v97) != &_xpc_type_dictionary)
      {
        break;
      }

      v99 = xpc_dictionary_get_value(v98, off_100010070[0]);
      if (!v99)
      {
        break;
      }

      v100 = v99;
      if (xpc_get_type(v99) != &_xpc_type_data)
      {
        break;
      }

      bytes_ptr = xpc_data_get_bytes_ptr(v100);
      length = xpc_data_get_length(v100);
      v103 = xpc_dictionary_get_value(v98, off_100010078[0]);
      if (!v103)
      {
        break;
      }

      v104 = v103;
      if (xpc_get_type(v103) != &_xpc_type_uuid || length != 48 || *bytes_ptr != 2)
      {
        break;
      }

      bytes = xpc_uuid_get_bytes(v104);
      uuid_copy((v95 + 16), bytes);
      sub_10000333C(&token, bytes_ptr, v95);
      v106 = *xpc_uuid_get_bytes(v104);
      v107 = *(xpc_uuid_get_bytes(v104) + 1);
      sub_100000944();
      count = xpc_array_get_count(v74);
      v94 = v96 + 1;
      v95 += 40;
      if (v96 + 1 >= count)
      {
        goto LABEL_161;
      }
    }

LABEL_289:
    sub_100000900();
LABEL_80:
    v56 = xpc_dictionary_create_reply(object);
    if (v56)
    {
      v22 = v56;
      xpc_dictionary_set_uint64(v56, off_100010010[0], 0x7D0uLL);
      goto LABEL_82;
    }

LABEL_167:
    sub_100000900();
    v22 = 0;
    v57 = 1;
  }

  else
  {
LABEL_161:
    empty = xpc_array_create_empty();
    if (!empty)
    {
      goto LABEL_289;
    }

    v110 = empty;
    v111 = xpc_dictionary_create_reply(object);
    if (!v111)
    {
      goto LABEL_167;
    }

    v22 = v111;
    xpc_dictionary_set_uint64(v111, off_100010010[0], 0x7D1uLL);
    if (xpc_array_get_count(v74))
    {
      v112 = 0;
      v113 = &v55[v180 + 136 + v178];
      do
      {
        v114 = xpc_dictionary_create_empty();
        xpc_dictionary_set_uint64(v114, off_100010098[0], *(v113 - 4));
        xpc_dictionary_set_uint64(v114, off_1000100A0[0], *(v113 - 3));
        xpc_dictionary_set_uuid(v114, off_100010088[0], v113 - 16);
        v115 = *v113;
        v113 += 40;
        xpc_dictionary_set_BOOL(v114, off_100010090[0], v115);
        xpc_array_append_value(v110, v114);
        xpc_release(v114);
        ++v112;
      }

      while (v112 < xpc_array_get_count(v74));
    }

    xpc_dictionary_set_value(v22, off_100010080[0], v110);
    xpc_release(v110);
LABEL_82:
    sub_10000320C(v12, v22);
    v57 = 0;
  }

  if (v55)
  {
    free(v55);
  }

  if ((v57 & 1) == 0)
  {
    goto LABEL_33;
  }
}

void sub_10000320C(_xpc_connection_s *a1, xpc_object_t object)
{
  v4 = xpc_copy_description(object);
  sub_100000988();
  free(v4);

  xpc_connection_send_message(a1, object);
}

uint64_t sub_10000327C(void *a1, const char **a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, off_100010018[0]);
  if (value && xpc_get_type(value) == &_xpc_type_string && (v8 = xpc_dictionary_get_value(a1, off_100010020[0])) != 0 && xpc_get_type(v8) == &_xpc_type_string)
  {
    *a2 = xpc_dictionary_get_string(a1, off_100010018[0]);
    *a3 = xpc_dictionary_get_string(a1, off_100010020[0]);
    return 1;
  }

  else
  {
    sub_100000900();
    return 0;
  }
}

uint64_t sub_10000333C(void *a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 4; ++i)
  {
    if (*(a2 + 8))
    {
      v7 = (i & 1) != 0 ? 4 : 96;
      if (*(a2 + 9) == v7)
      {
        continue;
      }
    }

    if ((*(a2 + 8) & 2) != 0)
    {
      v17 = *(a2 + 10);
      if (i <= 1 && v17 == 6)
      {
        continue;
      }

      if (i >= 2 && v17 == 17)
      {
        continue;
      }
    }

    v8 = *a1 + 24 * i;
    *(a3 + 32) = 0;
    *a3 = 0;
    v9 = *(v8 + 4);
    if (v9)
    {
      for (j = 0; j < v9; ++j)
      {
        v11 = *(*(v8 + 16) + 8 * j);
        if (((*(a2 + 8) & 0x10) == 0 || *(a2 + 44) == *(v11 + 40)) && ((*(a2 + 8) & 0x20) == 0 || *(a2 + 46) == *(v11 + 88)) && ((*(a2 + 8) & 2) == 0 || *(a2 + 10) == *(v11 + 284)))
        {
          if ((*(a2 + 8) & 1) == 0)
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 9);
          if (v12 == 96)
          {
            if (*(v11 + 282) != 2)
            {
              if ((*(a2 + 8) & 4) == 0 || (*(a2 + 12) == *(v11 + 24) ? (v13 = *(a2 + 20) == *(v11 + 32)) : (v13 = 0), v13))
              {
                if ((*(a2 + 8) & 8) == 0 || (*(a2 + 28) == *(v11 + 72) ? (v14 = *(a2 + 36) == *(v11 + 80)) : (v14 = 0), v14))
                {
LABEL_38:
                  *(a3 + 32) = 1;
                  v15 = (*(v11 + 256) | (*(v11 + 252) << 32)) + *a3;
                  v16 = (*(v11 + 248) | (*(v11 + 244) << 32)) + *(a3 + 8);
                  *a3 = v15;
                  *(a3 + 8) = v16;
                  continue;
                }
              }
            }
          }

          else if (v12 != 4 || *(v11 + 282) != 30 && ((*(a2 + 8) & 4) == 0 || *(a2 + 24) == *(v11 + 48)) && ((*(a2 + 8) & 8) == 0 || *(a2 + 40) == *(v11 + 72)))
          {
            goto LABEL_38;
          }
        }

        sub_100000944();
        v9 = *(v8 + 4);
      }
    }
  }

  *(a3 + 32);
  sub_100000988();
  return *(a3 + 32);
}

void sub_100003564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  while (!*(a3 + 8 * v6))
  {
LABEL_8:
    if (++v6 == 10)
    {
      return;
    }
  }

  if (v6 > 4)
  {
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s", "com.apple", a1);
  }

  else
  {
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", "/", v9);
  }

  v8 = v7;
  if (v7)
  {
    sub_100007230(a1, a2, *(a3 + 8 * v6), v7);
    CFRelease(v8);
    goto LABEL_8;
  }

  sub_100000900();
}

uint64_t sub_100003684(uint64_t a1, uint64_t a2, const char *a3, int a4, unsigned int a5, void *a6)
{
  bzero(v13, 0xC20uLL);
  __strlcpy_chk();
  __strlcpy_chk();
  if (a5 <= 5 && ((0x37u >> a5) & 1) != 0)
  {
    v17 = 0xB0800040002uLL >> (8 * a5);
  }

  v16 = a4;
  if (a3)
  {
    strncpy(v15, a3, 0x40uLL);
  }

  if (ioctl(dword_1000103B0, 0xCC20441BuLL, v13))
  {
    v10 = 0;
    v11 = *__error();
    if (v11 && v11 != 17)
    {
      v10 = v11;
      sub_100000ACC(3424666651);
      sub_100000900();
    }
  }

  else
  {
    if (a6)
    {
      *a6 = v14;
    }

    sub_100000988();
    return 0;
  }

  return v10;
}

CFStringRef sub_100003808(const char *a1, const char *a2)
{
  snprintf(__str, 0x40uLL, "%s%s/%s", "com.apple.", a1, a2);
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(kCFAllocatorDefault, __str, SystemEncoding);
}

uint64_t sub_10000389C(unint64_t a1, uint64_t a2)
{
  v5[0] = 0x40800000008;
  v5[1] = a2;
  if (!ioctl(dword_1000103B0, a1, v5))
  {
    return 0;
  }

  v3 = *__error();
  sub_100000ACC(a1);
  sub_100000900();
  return v3;
}

uint64_t sub_10000391C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  memset(v79, 0, 496);
  v78 = 0u;
  bzero(v73, 0x470uLL);
  snprintf(v76, 0x400uLL, "%s", v10);
  if (!ioctl(dword_1000103B0, 0xC4704433uLL, v73) || (v12 = *__error(), sub_100000ACC(3295691827), sub_100000900(), !v12))
  {
    value = xpc_dictionary_get_value(v11, off_1000101A0[0]);
    if (!value || xpc_get_type(value) != &_xpc_type_uint64)
    {
      sub_100000900();
      return 22;
    }

    bzero(&v78, 0xC20uLL);
    LOBYTE(v15) = xpc_dictionary_get_uint64(v11, off_1000101A0[0]);
    v111 = v15;
    v71 = v2;
    if (v15 >= 2uLL)
    {
      if ((v15 & 0xFE) == 2)
      {
        v16 = 0;
      }

      else if ((v15 & 0xFE) == 4)
      {
        v16 = 2;
      }

      else
      {
        v17 = v15 - 8;
        if (v15 - 8) < 7u && ((0x63u >> v17))
        {
          v15 = 0xE0D0E0E0E0908uLL >> (8 * (v17 & 0x1Fu));
          v16 = 4;
        }

        else if (v15 - 11 >= 2)
        {
          sub_100000900();
          v16 = 22;
          LOBYTE(v15) = v111;
        }

        else
        {
          v16 = 5;
        }
      }
    }

    else
    {
      v16 = 1;
    }

    if (v15 <= 0xDu && ((1 << v15) & 0x2110) != 0)
    {
      v18 = sub_10000641C(v77, v11, off_1000101F8[0]);
      if (v18)
      {
        return v18;
      }

      if (v111 == 13)
      {
        uint64 = 2;
      }

      else
      {
        uint64 = xpc_dictionary_get_uint64(v11, off_1000101C0[0]);
      }

      v75 = uint64;
      if (ioctl(dword_1000103B0, 0xC4704434uLL, v73))
      {
        v12 = *__error();
        sub_100000ACC(3295691828);
        sub_100000900();
        return v12;
      }
    }

    if (v8)
    {
      DWORD1(v78) = *(v8 + 1032 * v16 + 1028);
    }

    v99 = v6;
    DWORD2(v78) = v74;
    snprintf(v79, 0x40uLL, "%s", v10);
    strncpy(v98, v4, 0x40uLL);
    string = xpc_dictionary_get_string(v11, off_1000101B8[0]);
    if (string)
    {
      snprintf(v90, 0x10uLL, "%s", string);
    }

    v21 = xpc_dictionary_get_value(v11, off_1000101B0[0]);
    if (v21 && xpc_get_type(v21) == &_xpc_type_uint64)
    {
      v112 = xpc_dictionary_get_uint64(v11, off_1000101B0[0]);
    }

    v22 = xpc_dictionary_get_value(v11, off_100010328[0]);
    if (v22 && xpc_get_type(v22) == &_xpc_type_uint64)
    {
      v113 = xpc_dictionary_get_uint64(v11, off_100010328[0]);
    }

    v23 = xpc_dictionary_get_value(v11, off_100010330[0]);
    if (v23 && xpc_get_type(v23) == &_xpc_type_uint64)
    {
      v114 = xpc_dictionary_get_uint64(v11, off_100010330[0]);
    }

    v24 = xpc_dictionary_get_value(v11, off_1000101D0[0]);
    if (v24 && xpc_get_type(v24) == &_xpc_type_BOOL)
    {
      v115 = xpc_dictionary_get_BOOL(v11, off_1000101D0[0]);
    }

    v25 = xpc_dictionary_get_value(v11, off_1000101C0[0]);
    if (v25 && xpc_get_type(v25) == &_xpc_type_uint64)
    {
      v119 = xpc_dictionary_get_uint64(v11, off_1000101C0[0]);
    }

    v26 = xpc_dictionary_get_value(v11, off_100010338[0]);
    if (v26 && xpc_get_type(v26) == &_xpc_type_uint64)
    {
      v121 = xpc_dictionary_get_uint64(v11, off_100010338[0]) + 1;
    }

    v27 = xpc_dictionary_get_value(v11, off_100010340[0]);
    if (v27 && xpc_get_type(v27) == &_xpc_type_uint64)
    {
      v122 = xpc_dictionary_get_uint64(v11, off_100010340[0]) + 1;
    }

    v28 = xpc_dictionary_get_value(v11, off_1000101C8[0]);
    if (v28 && xpc_get_type(v28) == &_xpc_type_uint64)
    {
      v120 = xpc_dictionary_get_uint64(v11, off_1000101C8[0]);
    }

    v29 = xpc_dictionary_get_value(v11, off_100010390[0]);
    if (v29 && xpc_get_type(v29) == &_xpc_type_uint64)
    {
      v103 = xpc_dictionary_get_uint64(v11, off_100010390[0]);
    }

    v30 = xpc_dictionary_get_value(v11, off_100010388[0]);
    if (v30 && xpc_get_type(v30) == &_xpc_type_uint64)
    {
      v125 = xpc_dictionary_get_uint64(v11, off_100010388[0]);
    }

    v31 = xpc_dictionary_get_value(v11, off_100010380[0]);
    if (v31 && xpc_get_type(v31) == &_xpc_type_uint64)
    {
      v32 = xpc_dictionary_get_uint64(v11, off_100010380[0]);
      v110 |= v32;
    }

    v33 = xpc_dictionary_get_value(v11, off_100010348[0]);
    if (v33)
    {
      if (xpc_get_type(v33) == &_xpc_type_uint64)
      {
        v34 = xpc_dictionary_get_uint64(v11, off_100010348[0]);
        v110 |= v34;
        if ((v110 & 8) != 0)
        {
          v102 = 17040131;
        }
      }
    }

    v35 = xpc_dictionary_get_value(v11, off_100010350[0]);
    if (v35 && xpc_get_type(v35) == &_xpc_type_uint64)
    {
      v127 = xpc_dictionary_get_uint64(v11, off_100010350[0]);
    }

    v36 = xpc_dictionary_get_value(v11, off_100010358[0]);
    if (v36 && xpc_get_type(v36) == &_xpc_type_uint64)
    {
      LOWORD(v102) = xpc_dictionary_get_uint64(v11, off_100010358[0]) | 0x300;
      HIWORD(v102) = 260;
    }

    v37 = xpc_dictionary_get_value(v11, off_100010360[0]);
    if (v37)
    {
      if (xpc_get_type(v37) == &_xpc_type_uint64)
      {
        HIWORD(v102) = xpc_dictionary_get_uint64(v11, off_100010360[0]) | 0x100;
        if (!v102)
        {
          LOWORD(v102) = 771;
        }
      }
    }

    v38 = xpc_dictionary_get_value(v11, off_100010300[0]);
    if (v38 && xpc_get_type(v38) == &_xpc_type_uint64)
    {
      v106 = xpc_dictionary_get_uint64(v11, off_100010300[0]);
    }

    v39 = xpc_dictionary_get_value(v11, off_1000102F0[0]);
    if (v39 && xpc_get_type(v39) == &_xpc_type_uint64)
    {
      v104 = xpc_dictionary_get_uint64(v11, off_1000102F0[0]);
    }

    v40 = xpc_dictionary_get_value(v11, off_1000102F8[0]);
    if (v40 && xpc_get_type(v40) == &_xpc_type_uint64)
    {
      v105 = xpc_dictionary_get_uint64(v11, off_1000102F8[0]);
    }

    v41 = xpc_dictionary_get_value(v11, off_100010320[0]);
    if (v41 && xpc_get_type(v41) == &_xpc_type_uint64)
    {
      v109 = xpc_dictionary_get_uint64(v11, off_100010320[0]);
    }

    v42 = xpc_dictionary_get_value(v11, off_100010310[0]);
    if (v42 && xpc_get_type(v42) == &_xpc_type_uint64)
    {
      v107 = xpc_dictionary_get_uint64(v11, off_100010310[0]);
    }

    v43 = xpc_dictionary_get_value(v11, off_100010318[0]);
    if (v43 && xpc_get_type(v43) == &_xpc_type_uint64)
    {
      v108 = xpc_dictionary_get_uint64(v11, off_100010318[0]);
    }

    v44 = xpc_dictionary_get_value(v11, off_100010200[0]);
    if (v44 && xpc_get_type(v44) == &_xpc_type_uint64)
    {
      v123 = xpc_dictionary_get_uint64(v11, off_100010200[0]);
    }

    v45 = xpc_dictionary_get_value(v11, off_100010208[0]);
    if (v45 && xpc_get_type(v45) == &_xpc_type_uint64)
    {
      v124 = xpc_dictionary_get_uint64(v11, off_100010208[0]);
    }

    v46 = xpc_dictionary_get_value(v11, off_100010238[0]);
    if (v46 && xpc_get_type(v46) == &_xpc_type_uint64)
    {
      v118 = xpc_dictionary_get_uint64(v11, off_100010238[0]);
    }

    v47 = xpc_dictionary_get_value(v11, off_100010240[0]);
    if (v47 && xpc_get_type(v47) == &_xpc_type_BOOL)
    {
      v126 = xpc_dictionary_get_BOOL(v11, off_100010240[0]);
    }

    v48 = xpc_dictionary_get_string(v11, off_100010368[0]);
    if (v48)
    {
      snprintf(v91, 0x40uLL, "%s", v48);
    }

    v49 = xpc_dictionary_get_string(v11, off_100010370[0]);
    if (v49)
    {
      snprintf(v92, 0x40uLL, "%s", v49);
    }

    v50 = xpc_dictionary_get_value(v11, off_100010378[0]);
    if (v50 && xpc_get_type(v50) == &_xpc_type_BOOL)
    {
      v116 = xpc_dictionary_get_BOOL(v11, off_100010378[0]);
    }

    v51 = xpc_dictionary_get_value(v11, off_100010260[0]);
    if (v51 && xpc_get_type(v51) == &_xpc_type_uint64)
    {
      v129 = xpc_dictionary_get_uint64(v11, off_100010260[0]);
    }

    v52 = xpc_dictionary_get_value(v11, off_100010258[0]);
    if (v52 && xpc_get_type(v52) == &_xpc_type_uint64)
    {
      v128 = xpc_dictionary_get_uint64(v11, off_100010258[0]);
    }

    v53 = xpc_dictionary_get_value(v11, off_100010268[0]);
    if (v53 && xpc_get_type(v53) == &_xpc_type_uint64)
    {
      v100 = xpc_dictionary_get_uint64(v11, off_100010268[0]);
    }

    v54 = xpc_dictionary_get_value(v11, off_100010270[0]);
    if (v54 && xpc_get_type(v54) == &_xpc_type_BOOL)
    {
      v117 = xpc_dictionary_get_BOOL(v11, off_100010270[0]);
    }

    v55 = xpc_dictionary_get_value(v11, off_100010278[0]);
    if (v55 && xpc_get_type(v55) == &_xpc_type_uint64)
    {
      v101 = xpc_dictionary_get_uint64(v11, off_100010278[0]);
    }

    v56 = xpc_dictionary_get_value(v11, off_1000103A0[0]);
    if (v56 && xpc_get_type(v56) == &_xpc_type_uint64)
    {
      v131 = xpc_dictionary_get_uint64(v11, off_1000103A0[0]);
    }

    v57 = xpc_dictionary_get_value(v11, off_100010398[0]);
    if (v57 && xpc_get_type(v57) == &_xpc_type_uint64)
    {
      v130 = xpc_dictionary_get_uint64(v11, off_100010398[0]);
    }

    v18 = sub_10000641C(v80, v11, off_1000101D8[0]);
    if (v18)
    {
      return v18;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C0[0]);
    v58 = xpc_dictionary_get_value(v11, __str);
    if (v58 && xpc_get_type(v58) == &_xpc_type_BOOL)
    {
      v84 = xpc_dictionary_get_BOOL(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102D8[0]);
    v59 = xpc_dictionary_get_value(v11, __str);
    if (v59 && xpc_get_type(v59) == &_xpc_type_uint64)
    {
      v83 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
    v60 = xpc_dictionary_get_value(v11, __str);
    if (v60 && xpc_get_type(v60) == &_xpc_type_uint64)
    {
      v81 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102D0[0]);
    v61 = xpc_dictionary_get_value(v11, __str);
    if (v61 && xpc_get_type(v61) == &_xpc_type_uint64)
    {
      v82 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    v18 = sub_10000641C(v85, v11, "to");
    if (v18)
    {
      return v18;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C0[0]);
    v62 = xpc_dictionary_get_value(v11, __str);
    if (v62 && xpc_get_type(v62) == &_xpc_type_BOOL)
    {
      v89 = xpc_dictionary_get_BOOL(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102D8[0]);
    v63 = xpc_dictionary_get_value(v11, __str);
    if (v63 && xpc_get_type(v63) == &_xpc_type_uint64)
    {
      v88 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C8[0]);
    v64 = xpc_dictionary_get_value(v11, __str);
    if (v64 && xpc_get_type(v64) == &_xpc_type_uint64)
    {
      v86 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102D0[0]);
    v65 = xpc_dictionary_get_value(v11, __str);
    if (v65 && xpc_get_type(v65) == &_xpc_type_uint64)
    {
      v87 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102D8[0]);
    v66 = xpc_dictionary_get_value(v11, __str);
    if (v66 && xpc_get_type(v66) == &_xpc_type_uint64)
    {
      v95 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102C8[0]);
    v67 = xpc_dictionary_get_value(v11, __str);
    if (v67 && xpc_get_type(v67) == &_xpc_type_uint64)
    {
      v93 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102D0[0]);
    v68 = xpc_dictionary_get_value(v11, __str);
    if (v68 && xpc_get_type(v68) == &_xpc_type_uint64)
    {
      v94 = xpc_dictionary_get_uint64(v11, __str);
    }

    if (v111 == 13)
    {
      v119 = 30;
      v96 = 2;
    }

    if (v8)
    {
      v69 = 3424666628;
      v70 = ioctl(dword_1000103B0, 0xCC204404uLL, &v78);
    }

    else
    {
      v69 = 3424666651;
      v70 = ioctl(dword_1000103B0, 0xCC20441BuLL, &v78);
    }

    if (v70)
    {
      v12 = *__error();
      sub_100000ACC(v69);
      sub_100000900();
    }

    else
    {
      v12 = 0;
    }

    if (v71)
    {
      *v71 = v97;
    }
  }

  return v12;
}

uint64_t sub_1000048D0()
{
  if (qword_1000103C0)
  {
    v1[0] = qword_1000103C0;
    v1[1] = 0;
    if (ioctl(dword_1000103B0, 0xC0104409uLL, v1))
    {
      if (*__error() != 2)
      {
        sub_100000ACC(3222291465);
      }

      return sub_100000900();
    }

    else
    {
      result = sub_100000988();
      qword_1000103C0 = 0;
    }
  }

  else
  {

    return sub_100000988();
  }

  return result;
}

uint64_t sub_1000049C8(const __CFString *a1, _DWORD *a2)
{
  bzero(v9, 0xC20uLL);
  v12[1] = v12;
  if (!CFStringGetCString(a1, v11, 1024, 0x8000100u))
  {
    goto LABEL_19;
  }

  v4 = 0;
  *a2 = 0;
  while (1)
  {
    if ((v4 & 0xB) == 0xA || v4 == 12 || v4 == 9 || (v4 & 9) == 1)
    {
      goto LABEL_15;
    }

    v13 = v4;
    if (ioctl(dword_1000103B0, 0xCC204406uLL, v9))
    {
      break;
    }

    *a2 += v10;
LABEL_15:
    if (++v4 == 15)
    {
      return 1;
    }
  }

  sub_100000ACC(3424666630);
LABEL_19:
  sub_100000900();
  return 0;
}

BOOL sub_100004B14()
{
  if (qword_1000103C0)
  {
    sub_100000988();
    return 1;
  }

  if (!ioctl(dword_1000103B0, 0x40084408uLL, &qword_1000103C0))
  {
    return 1;
  }

  v1 = *__error();
  if (v1 == 17)
  {
    sub_100000900();
    return 1;
  }

  sub_100000ACC(1074283528);
  sub_100000900();
  return v1 == 0;
}

xpc_object_t sub_100004BC0()
{
  v0 = __chkstk_darwin();
  v54 = v1;
  v2 = v0;
  bzero(v55, 0xC20uLL);
  __src = CFStringGetCStringPtr(v2, 0);
  snprintf(v58, 0x40uLL, "%s", __src);
  v3 = xpc_array_create(0, 0);
  v4 = 0;
  while (1)
  {
    v5 = (v4 & 0xB) == 0xA || v4 == 12;
    v6 = v5 || v4 == 9;
    if (!v6 && (v4 & 9) != 1)
    {
      value = v4;
      if (ioctl(dword_1000103B0, 0xCC204406uLL, v55))
      {
        v50 = 3424666630;
LABEL_169:
        sub_100000ACC(v50);
        sub_100000900();
        xpc_release(v3);
        v3 = 0;
        *v54 = 0;
        return v3;
      }

      v53 = v57;
      if (v57 >= 1)
      {
        break;
      }
    }

LABEL_160:
    if (++v4 == 15)
    {
      if (!xpc_array_get_count(v3))
      {
        sub_100000988();
        xpc_release(v3);
        v3 = 0;
      }

      *v54 = 1;
      return v3;
    }
  }

  v8 = 0;
  while (1)
  {
    v57 = v8;
    if (ioctl(dword_1000103B0, 0xCC204407uLL, v55))
    {
      v50 = 3424666631;
      goto LABEL_169;
    }

    v9 = v56;
    v10 = xpc_dictionary_create(0, 0, 0);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    xpc_dictionary_set_uint64(v10, off_1000101A0[0], value);
    if (value > 0xEu || ((1 << value) & 0x6330) == 0)
    {
      xpc_dictionary_set_uint64(v11, off_1000101B0[0], value_1);
    }

    if (v69[0])
    {
      xpc_dictionary_set_string(v11, off_1000101B8[0], v69);
    }

    if (v101)
    {
      xpc_dictionary_set_uint64(v11, off_1000101C0[0], v101);
    }

    if (value == 1 && (v92 & 0xD) != 0)
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      if (!v13)
      {
        goto LABEL_170;
      }

      v14 = v13;
      if ((v92 & 8) != 0)
      {
        v17 = off_100010348[0];
        v15 = 8;
      }

      else
      {
        if ((v92 & 1) == 0)
        {
          if ((v92 & 4) != 0)
          {
            xpc_dictionary_set_uint64(v13, off_100010348[0], 4uLL);
            if (v84)
            {
              xpc_dictionary_set_uint64(v14, off_100010358[0], v84);
            }

            v15 = v85;
            if (v85)
            {
              v16 = off_100010360;
              goto LABEL_39;
            }
          }

LABEL_41:
          xpc_dictionary_set_value(v11, off_1000101A8[0], v14);
          xpc_release(v14);
          goto LABEL_42;
        }

        xpc_dictionary_set_uint64(v13, off_100010348[0], 1uLL);
        v15 = v109;
        if (!v109)
        {
          goto LABEL_41;
        }

        v16 = off_100010350;
LABEL_39:
        v17 = *v16;
        v13 = v14;
      }

      xpc_dictionary_set_uint64(v13, v17, v15);
      goto LABEL_41;
    }

LABEL_42:
    if (v102)
    {
      v18 = getprotobynumber(v102);
      if (v18)
      {
        xpc_dictionary_set_string(v11, off_1000101C8[0], v18->p_name);
      }

      else
      {
        xpc_dictionary_set_uint64(v11, off_1000101C8[0], v102);
      }
    }

    if (value_4)
    {
      xpc_dictionary_set_BOOL(v11, off_1000101D0[0], 1);
    }

    if (v110 - 1 <= 2)
    {
      xpc_dictionary_set_uint64(v11, off_100010258[0], v110);
    }

    if (v111 - 1 <= 2)
    {
      xpc_dictionary_set_uint64(v11, off_100010260[0], v111);
    }

    if (!value && v100)
    {
      xpc_dictionary_set_uint64(v11, off_100010238[0], v100);
    }

    if (v108)
    {
      xpc_dictionary_set_BOOL(v11, off_100010240[0], 1);
    }

    if (v82)
    {
      xpc_dictionary_set_uint64(v11, off_100010268[0], v82);
    }

    if (value_7)
    {
      xpc_dictionary_set_BOOL(v11, off_100010270[0], 1);
    }

    if (v83)
    {
      xpc_dictionary_set_uint64(v11, off_100010278[0], v83);
    }

    if (v77)
    {
      xpc_dictionary_set_uint64(v11, off_100010280[0], v77);
    }

    if (v78)
    {
      xpc_dictionary_set_uint64(v11, off_100010288[0], v78);
    }

    if (v79)
    {
      xpc_dictionary_set_uint64(v11, off_100010290[0], v79);
    }

    if (v80)
    {
      xpc_dictionary_set_uint64(v11, off_100010298[0], v80);
    }

    if (v81)
    {
      xpc_dictionary_set_uint64(v11, off_1000102A0[0], v81);
    }

    if (v105)
    {
      v19 = 0;
      *v116 = 0u;
      string = 0u;
      p_string = &string;
      v21 = 70;
      do
      {
        if ((v105 >> v19))
        {
          *p_string++ = v21;
        }

        v21 = aFsrpauew[++v19];
      }

      while (v19 != 8);
      if (!v106)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (!v106)
      {
        goto LABEL_87;
      }

      *v116 = 0u;
      string = 0u;
      p_string = &string;
    }

    v22 = 0;
    *p_string = 47;
    v23 = p_string + 1;
    v24 = 70;
    do
    {
      if ((v106 >> v22))
      {
        *v23++ = v24;
      }

      v24 = aFsrpauew[++v22];
    }

    while (v22 != 8);
LABEL_86:
    xpc_dictionary_set_string(v11, off_100010200[0], &string);
LABEL_87:
    if (v89 && !sub_100006AD0(v89, v87, v88, off_100010210[0], v11) || v91 && !sub_100006AD0(v91, v90, v90, off_100010218[0], v11))
    {
      goto LABEL_167;
    }

    v25 = value;
    if (value == 2)
    {
      if (!v92 && !v107 && !v86)
      {
        goto LABEL_107;
      }

      v26 = xpc_dictionary_create(0, 0, 0);
      if (!v26)
      {
        goto LABEL_170;
      }

      v27 = v26;
      if (v92)
      {
        xpc_dictionary_set_uint64(v26, off_100010380[0], v92);
      }

      if (v107)
      {
        xpc_dictionary_set_uint64(v27, off_100010388[0], v107);
      }

      if (v86)
      {
        xpc_dictionary_set_uint64(v27, off_100010390[0], v86);
      }

      xpc_dictionary_set_value(v11, off_100010230[0], v27);
      xpc_release(v27);
      v25 = value;
    }

    if (v25 == 11 && v112)
    {
      v28 = xpc_dictionary_create(0, 0, 0);
      if (!v28)
      {
        goto LABEL_170;
      }

      v29 = v28;
      xpc_dictionary_set_uint64(v28, off_1000103A0[0], v113);
      xpc_dictionary_set_uint64(v29, off_100010398[0], v112);
      xpc_dictionary_set_value(v11, off_100010250[0], v29);
      xpc_release(v29);
    }

LABEL_107:
    if (value_2)
    {
      v30 = xpc_dictionary_create(0, 0, 0);
      if (!v30)
      {
        goto LABEL_170;
      }

      v31 = v30;
      if (value_2)
      {
        xpc_dictionary_set_uint64(v30, off_100010328[0], value_2);
      }

      if (value_3)
      {
        snprintf(__str, 0x40uLL, "pflog%d", value_3);
        xpc_dictionary_set_string(v31, off_100010330[0], __str);
      }

      xpc_dictionary_set_value(v11, off_100010220[0], v31);
      xpc_release(v31);
    }

    if ((v102 == 58 || v102 == 1) && v103)
    {
      v32 = xpc_dictionary_create(0, 0, 0);
      if (!v32)
      {
        goto LABEL_170;
      }

      v33 = v32;
      xpc_dictionary_set_uint64(v32, off_100010338[0], v103 - 1);
      if (v104)
      {
        xpc_dictionary_set_uint64(v33, off_100010340[0], v104 - 1);
      }

      xpc_dictionary_set_value(v11, off_100010228[0], v33);
      xpc_release(v33);
    }

    if (v70[0] | v71[0])
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      if (!v34)
      {
LABEL_170:
        xpc_release(v11);
        break;
      }

      v35 = v34;
      if (v70[0])
      {
        xpc_dictionary_set_string(v34, off_100010368[0], v70);
      }

      if (v71[0])
      {
        xpc_dictionary_set_string(v35, off_100010370[0], v71);
      }

      if (value_6)
      {
        xpc_dictionary_set_BOOL(v35, off_100010378[0], 1);
      }

      xpc_dictionary_set_value(v11, off_100010248[0], v35);
      xpc_release(v35);
    }

    if (v60 || v65 | v63 || ((v40 = vbicq_s8(xmmword_100008300, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v59[0]), vceqzq_s32(v59[1])), vuzp1q_s16(vceqzq_s32(v64[0]), vceqzq_s32(v64[1])))), v41 = vzip1q_s8(v40, vextq_s8(v40, v40, 8uLL)), v41.i16[0] = vaddvq_s16(v41), !v41.i32[0]) ? (v42 = v68 == 0) : (v42 = 0), !v42))
    {
      if (!sub_100006D04(v59, v101, v63, v61, v62, v102, v11, off_1000101D8[0]) || (sub_100006D04(v64, v101, v68, v66, v67, v102, v11, off_1000101F0[0]) & 1) == 0)
      {
        sub_100000900();
LABEL_167:
        xpc_release(v11);
        goto LABEL_172;
      }
    }

    v36 = value;
    if (value <= 0xDu && ((1 << value) & 0x2110) != 0)
    {
      bzero(&string, 0x470uLL);
      memcpy(&v116[3], __src, 0x400uLL);
      v116[0] = v36;
      HIDWORD(string) = v8;
      DWORD1(string) = v9;
      if (ioctl(dword_1000103B0, 0xC4704435uLL, &string))
      {
        sub_100000900();
      }

      else
      {
        v72 = 0;
        v73 = &v72;
        v43 = DWORD2(string);
        if (!DWORD2(string))
        {
          goto LABEL_141;
        }

        v44 = 0;
        do
        {
          DWORD2(string) = v44;
          if (ioctl(dword_1000103B0, 0xC4704436uLL, &string) || (v45 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL)) == 0)
          {
            sub_100000900();
            v48 = v72;
            if (v72)
            {
              do
              {
                v49 = v48[6];
                free(v48);
                v48 = v49;
              }

              while (v49);
            }

            goto LABEL_137;
          }

          v46 = v45;
          memmove(v45, &v117, 0x58uLL);
          v46[6] = 0;
          v47 = v73;
          v46[7] = v73;
          *v47 = v46;
          v73 = v46 + 6;
          ++v44;
        }

        while (v43 != v44);
        if (!v72)
        {
          goto LABEL_141;
        }

        if (sub_100006D04(v72, v101, v76, v74, v75, v102, v11, off_1000101F8[0]))
        {
          v37 = 1;
          goto LABEL_138;
        }
      }

LABEL_137:
      sub_100000900();
      v37 = 0;
LABEL_138:
      v38 = v72;
      if (v72)
      {
        do
        {
          v39 = v38[6];
          free(v38);
          v38 = v39;
        }

        while (v39);
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_167;
      }
    }

LABEL_141:
    xpc_array_append_value(v3, v11);
    xpc_release(v11);
    *v54 = 1;
    if (++v8 == v53)
    {
      goto LABEL_160;
    }
  }

  sub_100000900();
LABEL_172:
  *v54 = 0;
  sub_100000900();
  xpc_release(v3);
  return 0;
}

uint64_t sub_100005868(void *a1, void *a2)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  value = xpc_dictionary_get_value(a1, off_1000101B0[0]);
  if (value && xpc_get_type(value) == &_xpc_type_uint64)
  {
    HIBYTE(v26) = xpc_dictionary_get_uint64(a1, off_1000101B0[0]);
    xpc_dictionary_set_uint64(a2, off_1000101B0[0], HIBYTE(v26));
  }

  v5 = xpc_dictionary_get_value(a1, off_1000101C0[0]);
  if (v5 && xpc_get_type(v5) == &_xpc_type_uint64)
  {
    LOBYTE(v26) = xpc_dictionary_get_uint64(a1, off_1000101C0[0]);
    xpc_dictionary_set_uint64(a2, off_1000101C0[0], v26);
  }

  v6 = xpc_dictionary_get_value(a1, off_1000101C8[0]);
  if (v6 && xpc_get_type(v6) == &_xpc_type_uint64)
  {
    BYTE1(v26) = xpc_dictionary_get_uint64(a1, off_1000101C8[0]);
    xpc_dictionary_set_uint64(a2, off_1000101C8[0], BYTE1(v26));
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    if (sub_100005D18(&v21, a1, off_1000101D8[0], v7))
    {
LABEL_12:
      v9 = 0;
LABEL_37:
      xpc_release(v8);
      return v9;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
    v10 = xpc_dictionary_get_value(a1, __str);
    if (v10 && xpc_get_type(v10) == &_xpc_type_uint64)
    {
      uint64 = xpc_dictionary_get_uint64(a1, __str);
      LOWORD(v25) = bswap32(uint64) >> 16;
      xpc_dictionary_set_uint64(v8, off_1000102C8[0], uint64);
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    if (!v12)
    {
      sub_100000900();
      goto LABEL_12;
    }

    v13 = v12;
    if (!sub_100005D18(&v22, a1, off_1000101F0[0], v12))
    {
      snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C8[0]);
      v14 = xpc_dictionary_get_value(a1, __str);
      if (v14 && xpc_get_type(v14) == &_xpc_type_uint64)
      {
        v15 = xpc_dictionary_get_uint64(a1, __str);
        WORD2(v25) = bswap32(v15) >> 16;
        xpc_dictionary_set_uint64(v13, off_1000102C8[0], v15);
      }

      if (ioctl(dword_1000103B0, 0xC0544417uLL, &v21) == -1)
      {
        snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102B0[0]);
        snprintf(key, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
        xpc_dictionary_get_string(a1, __str);
        xpc_dictionary_get_uint64(a1, key);
      }

      else
      {
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          v17 = v16;
          if ((sub_100005E5C(&v23, v26, v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (WORD4(v25))
          {
            xpc_dictionary_set_uint64(v17, off_1000102C8[0], __rev16(WORD4(v25)));
          }

          v18 = xpc_dictionary_create(0, 0, 0);
          if (v18)
          {
            v19 = v18;
            v9 = sub_100005E5C(&v24, v26, v18);
            if (v9)
            {
              if (WORD6(v25))
              {
                xpc_dictionary_set_uint64(v19, off_1000102C8[0], __rev16(WORD6(v25)));
              }

              xpc_dictionary_set_value(a2, off_1000101D8[0], v8);
              xpc_dictionary_set_value(a2, off_1000101F0[0], v13);
              xpc_dictionary_set_value(a2, off_1000101E0[0], v17);
              xpc_dictionary_set_value(a2, off_1000101E8[0], v19);
            }

            else
            {
              sub_100000900();
            }

            xpc_release(v19);
          }

          else
          {
LABEL_39:
            sub_100000900();
            v9 = 0;
          }

          xpc_release(v17);
          goto LABEL_36;
        }
      }

      sub_100000900();
    }

    v9 = 0;
LABEL_36:
    xpc_release(v13);
    goto LABEL_37;
  }

  sub_100000900();
  return 0;
}

uint64_t sub_100005D18(_DWORD *a1, void *a2, const char *a3, void *a4)
{
  v11 = 0;
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B0[0]) < 1)
  {
    return 22;
  }

  string = xpc_dictionary_get_string(a2, __str);
  if (!string)
  {
    return 22;
  }

  v8 = string;
  v13 = 0;
  xpc_dictionary_set_string(a4, off_1000102B0[0], string);
  if (inet_pton(2, v8, &v13) == 1)
  {
    result = 0;
    *a1 = v13;
    return result;
  }

  memset(&v12.ai_socktype, 0, 40);
  v12.ai_socktype = 2;
  *&v12.ai_flags = 0x1E00000004;
  if (getaddrinfo(v8, "0", &v12, &v11))
  {
    return 22;
  }

  v10 = v11;
  *a1 = *&v11->ai_addr->sa_data[6];
  freeaddrinfo(v10);
  return 0;
}

uint64_t sub_100005E5C(_DWORD *a1, int a2, void *a3)
{
  if (!*a1 && !a1[1] && !a1[2] && !a1[3])
  {
    return 1;
  }

  memset(v5, 0, 46);
  if (inet_ntop(a2, a1, v5, 0x2Eu))
  {
    xpc_dictionary_set_string(a3, off_1000102B0[0], v5);
    return 1;
  }

  sub_100000900();
  return 0;
}

uint64_t sub_100005F28(const char *a1, const char *a2, uint64_t a3, void *a4)
{
  bzero(__str, 0x428uLL);
  __strcpy_chk();
  snprintf(__str, 0x400uLL, "com.apple.%s/%s", a1, a2);
  bzero(__dst, 0x450uLL);
  LODWORD(v27) = 1;
  v24 = __str;
  v25 = 0x100000428;
  if (ioctl(dword_1000103B0, 0xC450443DuLL, __dst))
  {
    sub_100000ACC(3293594685);
    v7 = __error();
    strerror(*v7);
    sub_100000900();
    return 0;
  }

  else
  {
    count = xpc_array_get_count(a4);
    v11 = count;
    if (count)
    {
      v12 = count;
      v13 = malloc_type_malloc(20 * count, 0x1000040A86A77D5uLL);
      v14 = 0;
      v15 = v13;
      do
      {
        string = xpc_array_get_string(a4, v14);
        if (sub_10000620C(string, v15, 2))
        {
          v21 = 0uLL;
          if (strrchr(string, 47))
          {
            v17 = inet_net_pton(30, string, &v21, 0x10uLL);
            if (v17 < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (inet_pton(30, string, &v21) != -1)
            {
LABEL_18:
              v19 = __error();
              strerror(*v19);
              sub_100000900();
              v20 = __error();
              strerror(*v20);
              sub_100000900();
              goto LABEL_19;
            }

            LOBYTE(v17) = 0x80;
          }

          *v15 = v21;
          v15[1].i8[1] = v17;
          v15[1].i8[0] = 30;
        }

        ++v14;
        v15 = (v15 + 20);
      }

      while (v12 != v14);
      v26 = 0u;
      v27 = 0;
      memcpy(__dst, __str, sizeof(__dst));
      v24 = v13;
      HIDWORD(v25) = v11;
      LODWORD(v25) = 20;
      if (ioctl(dword_1000103B0, 0xC4504443uLL, __dst))
      {
        sub_100000ACC(3293594691);
        v18 = __error();
        strerror(*v18);
        sub_100000900();
        v8 = 0;
        if (!v13)
        {
          return v8;
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 1;
      if (!v13)
      {
        return v8;
      }

LABEL_20:
      free(v13);
    }

    else
    {
      return 1;
    }
  }

  return v8;
}

uint64_t sub_10000620C(char *a1, int8x16_t *a2, int a3)
{
  v12 = 0;
  if (strrchr(a1, 47))
  {
    v6 = inet_net_pton(2, a1, &v12, 4uLL);
    if (v6 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (inet_pton(2, a1, &v12) != 1)
    {
LABEL_9:
      v10 = __error();
      strerror(*v10);
      sub_100000988();
      return 22;
    }

    LOBYTE(v6) = 32;
  }

  a2->i32[0] = v12;
  if (a3 == 1)
  {
    a2[2].i8[8] = 0;
    sub_100006950(a2, v6, v7, v8);
    return 0;
  }

  else
  {
    v9 = 0;
    a2[1].i8[1] = v6;
    a2[1].i8[0] = 2;
  }

  return v9;
}

BOOL sub_100006304(const char *a1, const char *a2)
{
  bzero(__str, 0x428uLL);
  __strcpy_chk();
  snprintf(__str, 0x400uLL, "com.apple.%s/%s", a1, a2);
  bzero(v8, 0x450uLL);
  v9 = __str;
  v10 = 0x100000428;
  v4 = ioctl(dword_1000103B0, 0xC450443EuLL, v8);
  if (v4)
  {
    sub_100000ACC(3293594686);
    v5 = __error();
    strerror(*v5);
    sub_100000900();
  }

  return v4 == 0;
}

uint64_t sub_10000641C(int8x16_t *a1, void *a2, const char *a3)
{
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102A8[0]) >= 1)
  {
    string = xpc_dictionary_get_string(a2, __str);
    if (string)
    {
      if (!strncmp(string, off_1000103A8, 0x40uLL))
      {
        return 0;
      }

      return 22;
    }
  }

  __endptr = 0;
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B0[0]) < 1 || (v7 = xpc_dictionary_get_string(a2, __str)) == 0)
  {
    if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B8[0]) < 1 || (v20 = xpc_dictionary_get_string(a2, __str)) == 0)
    {
      if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102E0[0]) < 1)
      {
        return 0;
      }

      v27 = xpc_dictionary_get_string(a2, __str);
      if (!v27)
      {
        return 0;
      }

      v28 = v27;
      if (strlen(v27) >= 0x21)
      {
        goto LABEL_40;
      }

      a1[2].i8[8] = 3;
      snprintf(a1->i8, 0x20uLL, "%s", v28);
      return 0;
    }

    v21 = strdup(v20);
    if (v21)
    {
      v22 = v21;
      v23 = strrchr(v21, 58);
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        while (1)
        {
          if (!strcmp(v24 + 1, "network"))
          {
            v26 = 1;
          }

          else if (!strcmp(v24 + 1, "broadcast"))
          {
            v26 = 2;
          }

          else if (!strcmp(v24 + 1, "peer"))
          {
            v26 = 4;
          }

          else
          {
            if (v24[1] != 48 || v24[2])
            {
              goto LABEL_61;
            }

            v26 = 8;
          }

          v25 |= v26;
          *v24 = 0;
          v24 = strrchr(v22, 58);
          if (!v24)
          {
            goto LABEL_44;
          }
        }
      }

      v25 = 0;
LABEL_44:
      if ((v25 & (v25 - 1) & 6) == 0)
      {
        *&v44.ai_flags = 0;
        if ((getifaddrs(&v44) & 0x80000000) == 0)
        {
          v32 = &v44;
          do
          {
            v32 = *&v32->ai_flags;
            if (!v32)
            {
              freeifaddrs(*&v44.ai_flags);
              goto LABEL_60;
            }
          }

          while (strncmp(*&v32->ai_socktype, v22, 0x10uLL));
          freeifaddrs(*&v44.ai_flags);
          a1[2].i8[8] = 2;
          a1[2].i8[9] = v25;
          snprintf(a1->i8, 0x10uLL, "%s", v22);
          uint64 = xpc_dictionary_get_uint64(a2, off_1000101C0[0]);
          if (uint64 == 30)
          {
            v36 = a1;
            v37 = 128;
          }

          else
          {
            if (uint64 != 2)
            {
              return 0;
            }

            v36 = a1;
            v37 = 32;
          }

          sub_100006950(v36, v37, v34, v35);
          return 0;
        }

        v41 = __error();
        strerror(*v41);
        sub_100000900();
      }

LABEL_60:
      sub_100000900();
LABEL_61:
      free(v22);
      return 22;
    }

    goto LABEL_57;
  }

  v8 = v7;
  v9 = strrchr(v7, 47);
  if (v9)
  {
    v10 = v9;
    v11 = v9 + 1;
    v12 = strtol(v9 + 1, &__endptr, 0);
    if (!__endptr)
    {
      goto LABEL_40;
    }

    if (__endptr == v11)
    {
      goto LABEL_40;
    }

    if (*__endptr)
    {
      goto LABEL_40;
    }

    v13 = v12;
    if (v12 >= 129)
    {
      goto LABEL_40;
    }

    v14 = strlen(v8);
    v15 = strlen(v10);
    v16 = malloc_type_malloc(v14 - v15 + 1, 0x7AAA25DCuLL);
    if (v16)
    {
      v17 = v16;
      v18 = strlen(v8);
      v19 = strlen(v10);
      strlcpy(v17, v8, v18 - v19 + 1);
      goto LABEL_37;
    }

LABEL_57:
    sub_100000900();
    return 12;
  }

  v29 = strdup(v8);
  if (!v29)
  {
    goto LABEL_57;
  }

  v17 = v29;
  v13 = 0x80;
LABEL_37:
  if (!sub_10000620C(v8, a1, 1))
  {
LABEL_55:
    free(v17);
    return 0;
  }

  v43 = 0;
  memset(&v44.ai_socktype, 0, 40);
  v44.ai_socktype = 2;
  *&v44.ai_flags = 0x1E00000004;
  v30 = getaddrinfo(v17, "0", &v44, &v43);
  if (!v30)
  {
    v38 = v43;
    v39 = *&v43->ai_addr->sa_data[6];
    *a1 = v39;
    sub_100006950(a1, v13, v39, v31);
    freeaddrinfo(v38);
    goto LABEL_55;
  }

  gai_strerror(v30);
  sub_100000988();
  free(v17);
LABEL_40:
  sub_100000900();
  return 22;
}

int8x16_t sub_100006950(int8x16_t *a1, unsigned int a2, int8x16_t result, int16x8_t a4)
{
  v4 = a2;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  v6 = a1 + 1;
  v7 = a2 - 32;
  if (a2 < 0x20)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7 >> 5;
    memset(&a1[1], 255, (4 * v8 + 4));
    v9 = (v8 + 1);
    v10 = vdupq_n_s64(v8);
    a4 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(xmmword_100008340, v10), vcgtq_u64(xmmword_100008330, v10)), vuzp1q_s32(vcgtq_u64(xmmword_100008320, v10), vcgtq_u64(xmmword_100008310, v10)));
    *a4.i8 = vmovn_s16(a4);
    v11.i8[1] = -32;
    v11.i16[1] = -7968;
    v11.i32[1] = -522133280;
    v11.i8[0] = v7;
    *result.i8 = vbsl_s8(*a4.i8, v4, v11);
    result.i8[0] = vaddv_s8(*result.i8);
    v4 = result.i8[0];
  }

  if (v4)
  {
    v12 = v4 ^ 0x1F;
    if (v12 >= 0x1E)
    {
      v12 = 30;
    }

    v13 = v12 ^ 0x1F;
    v14 = ((v12 ^ 0x1F) + 3) & 0x3C;
    v15 = vdupq_n_s32(v13 - 1);
    a4.i32[0] = v6->i32[v9];
    v16 = xmmword_100008350;
    v17 = 4;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    v19.i64[0] = 0x300000003;
    v19.i64[1] = 0x300000003;
    do
    {
      v20 = a4;
      a4 = vorrq_s8(a4, vshlq_u32(v18, v16));
      v16 = vaddq_s32(v16, v19);
      v17 -= 4;
    }

    while (v14 + v17 != 4);
    result = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v17), xmmword_100008360), v15), v20, a4);
    *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
    v6->i32[v9] = bswap32(result.i32[0] | result.i32[1]);
  }

  if (!a1[2].i8[8])
  {
    result = vandq_s8(a1[1], *a1);
    *a1 = result;
  }

  return result;
}

BOOL sub_100006AD0(unsigned int a1, unsigned int a2, int a3, const char *a4, void *a5)
{
  LODWORD(v7) = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    v11 = off_100010210[0];
    v12 = strnlen(off_100010210[0], 0x40uLL);
    v13 = strncmp(a4, v11, v12);
    if (a2 == 0x7FFFFFFF && (a1 & 0xFE) == 2)
    {
      v7 = a1;
      if (v13)
      {
        xpc_dictionary_set_string(v10, off_100010308[0], "unknown");
        v14 = off_100010320;
LABEL_10:
        xpc_dictionary_set_uint64(v10, *v14, v7);
        v15 = off_100010218;
LABEL_16:
        xpc_dictionary_set_value(a5, *v15, v10);
        xpc_release(v10);
        return v10 != 0;
      }

      xpc_dictionary_set_string(v10, off_1000102E8[0], "unknown");
      v16 = off_100010300[0];
      v18 = v10;
      v17 = a1;
    }

    else
    {
      if (v13)
      {
        xpc_dictionary_set_uint64(v10, off_100010310[0], a2);
        v14 = off_100010318;
        v7 = v7;
        xpc_dictionary_set_uint64(v10, off_100010318[0], v7);
        xpc_dictionary_set_uint64(v10, off_100010320[0], a1);
        v15 = off_100010218;
        if (a1 > 9 || ((1 << a1) & 0x302) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      xpc_dictionary_set_uint64(v10, off_1000102F0[0], a2);
      xpc_dictionary_set_uint64(v10, off_100010300[0], a1);
      v15 = off_100010210;
      if (a1 > 9 || ((1 << a1) & 0x302) == 0)
      {
        goto LABEL_16;
      }

      v16 = off_1000102F8[0];
      v17 = v7;
      v18 = v10;
    }

    xpc_dictionary_set_uint64(v18, v16, v17);
    v15 = off_100010210;
    goto LABEL_16;
  }

  sub_100000900();
  return v10 != 0;
}

uint64_t sub_100006D04(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, void *a7, char *a8)
{
  LODWORD(v11) = a5;
  LODWORD(v12) = a4;
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v17 = v16;
    if (*(a1 + 40))
    {
      if (*(a1 + 40) == 2)
      {
        v41 = 0u;
        v42 = 0u;
        *__str = 0u;
        v40 = 0u;
        v18 = *(a1 + 41);
        if (v18)
        {
          snprintf(__str, 0x40uLL, "%s:network", a1);
          v18 = *(a1 + 41);
          if ((v18 & 2) == 0)
          {
LABEL_6:
            if ((v18 & 4) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_31;
          }
        }

        else if ((*(a1 + 41) & 2) == 0)
        {
          goto LABEL_6;
        }

        snprintf(__str, 0x40uLL, "%s:broadcast", a1);
        v18 = *(a1 + 41);
        if ((v18 & 4) == 0)
        {
LABEL_7:
          if ((v18 & 8) == 0)
          {
LABEL_9:
            v19 = off_1000102B8[0];
            v20 = __str;
            goto LABEL_45;
          }

LABEL_8:
          snprintf(__str, 0x40uLL, "%s:0", a1);
          goto LABEL_9;
        }

LABEL_31:
        snprintf(__str, 0x40uLL, "%s:peer", a1);
        if ((*(a1 + 41) & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

LABEL_33:
      sub_100000900();
      v21 = 0;
LABEL_63:
      xpc_release(v17);
      return v21;
    }

    if (*a1 || *(a1 + 4) || *(a1 + 8) || *(a1 + 12) || *(a1 + 16) || *(a1 + 20) || *(a1 + 24) || *(a1 + 28))
    {
      v41 = 0u;
      v42 = 0u;
      *__str = 0u;
      v40 = 0u;
      if (!inet_ntop(a2, a1, __str, 0x40u))
      {
        goto LABEL_33;
      }

      if (!*(a1 + 16) && !*(a1 + 20) && !*(a1 + 24) && !*(a1 + 28))
      {
        goto LABEL_43;
      }

      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = *(a1 + 16 + v22);
        if (v24 != -1)
        {
          break;
        }

        v23 += 32;
        v22 += 4;
        if (v22 == 16)
        {
          v23 = 128;
          goto LABEL_38;
        }
      }

      v25 = bswap32(v24);
      if ((v25 & 0x80000000) != 0)
      {
        v26 = 0;
        do
        {
          v27 = v26-- + 30;
        }

        while (((v25 >> v27) & 1) != 0);
        v23 -= v26;
      }

LABEL_38:
      v28 = a2 == 2 ? 32 : 128;
      if (v23 == v28)
      {
        snprintf(string, 0x40uLL, "%s");
      }

      else
      {
LABEL_43:
        snprintf(string, 0x40uLL, "%s/%d");
      }

      v19 = off_1000102B0[0];
      v20 = string;
    }

    else
    {
      v19 = off_1000102A8[0];
      v20 = off_1000103A8;
    }

LABEL_45:
    xpc_dictionary_set_string(v17, v19, v20);
    if (a6 == 6)
    {
      v29 = "tcp";
    }

    else
    {
      v29 = "udp";
    }

    v30 = getservbyport(v12, v29);
    v31 = __rev16(v12);
    v32 = __rev16(v11);
    if (off_1000101F8[0] == a8)
    {
      v11 = v11;
    }

    else
    {
      v11 = v32;
    }

    if (off_1000101F8[0] == a8)
    {
      v12 = v12;
    }

    else
    {
      v12 = v31;
    }

    if (v30 && ((p_s_name = &v30->s_name, a3 - 2 < 6) || !a3))
    {
      xpc_dictionary_set_uint64(v17, off_1000102D8[0], a3);
      xpc_dictionary_set_string(v17, off_1000102C8[0], *p_s_name);
    }

    else if (v12)
    {
      if (a3 - 2 >= 6 && a3)
      {
        if (!v11 || v12 == v11 || a3 > 9 || ((1 << a3) & 0x302) == 0)
        {
          goto LABEL_62;
        }

        xpc_dictionary_set_uint64(v17, off_1000102D8[0], a3);
        xpc_dictionary_set_uint64(v17, off_1000102C8[0], v12);
        v34 = off_1000102D0[0];
        v35 = v17;
        v36 = v11;
      }

      else
      {
        xpc_dictionary_set_uint64(v17, off_1000102D8[0], a3);
        v34 = off_1000102C8[0];
        v35 = v17;
        v36 = v12;
      }

      xpc_dictionary_set_uint64(v35, v34, v36);
    }

LABEL_62:
    xpc_dictionary_set_value(a7, a8, v17);
    v21 = 1;
    goto LABEL_63;
  }

  sub_100000900();
  return 0;
}

uint64_t sub_10000716C(uint64_t a1, const char *a2)
{

  return strncmp(v2, a2, 0x40uLL);
}

BOOL sub_100007230(uint64_t a1, uint64_t a2, uint64_t a3, CFStringRef theString)
{
  result = 0;
  if (a1 && a2 && theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0);
    if (CStringPtr)
    {
      v9 = CStringPtr;
      bzero(v23, 0xC20uLL);
      if (*v9 != 47 || v9[1])
      {
        v17 = sub_100007184(v10, v11, "%s%s", v12, v13, v14, v15, v16, a1, a2, v21, __src[0]);
        snprintf(v17, v18, v19);
        strncpy(v27, __src, 0x40uLL);
      }

      snprintf(v25, 0x40uLL, "%s", v9);
      v26 = a3;
      if (ioctl(dword_1000103B0, 0xCC20441CuLL, v23))
      {
        v20 = *__error();
        sub_100000ACC(3424666652);
        sub_100000900();
        return v20 == 0;
      }

      else
      {
        if (!v24)
        {
          sub_1000048D0();
        }

        return 1;
      }
    }

    else
    {
      sub_100000900();
      return 0;
    }
  }

  return result;
}

CFStringRef sub_100007398(const char *a1, const char *a2, uint64_t a3, int a4, void *a5)
{
  v5 = 0;
  if (!a1 || !a2)
  {
    return v5;
  }

  snprintf(__str, 0x40uLL, "%s%s", "com.apple.", a1);
  v10 = snprintf(v111, 0x40uLL, "%s", a2);
  v18 = sub_100007184(v10, v11, v12, v13, v14, v15, v16, v17, a1, a2, v91, v94);
  snprintf(v18, v19, "%s%s", v85, v88);
  v89 = "/";
  v92 = v111;
  v86 = __str;
  v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s");
  v5 = v20;
  if (!v20)
  {
    sub_100000900();
    return v5;
  }

  v21 = sub_10000716C(v20, off_1000100E0[0]);
  if (v21)
  {
    v22 = sub_10000716C(v21, kPFThreadBR[0]);
    v23 = v22;
    v24 = sub_10000716C(v22, off_1000100F8[0]);
    v25 = v24;
    v26 = sub_10000716C(v24, off_1000100E8[0]);
    v27 = v26 == 0;
    if (v25 && v23)
    {
      v28 = 0;
      v29 = 0;
      v27 = 0;
      if (v26)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v23)
    {
      v29 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = sub_10000716C(v21, off_1000100E8[0]) == 0;
  }

  sub_100007160();
  if (sub_100003684(v30, v31, v32, v33, 2u, a5))
  {
LABEL_21:
    CFRelease(v5);
    sub_100003564(a1, a2, a5);
    return 0;
  }

  v29 = 1;
LABEL_15:
  sub_100007160();
  if (sub_100003684(v34, v35, v36, v37, 4u, v38))
  {
    goto LABEL_21;
  }

  v28 = 1;
  if (!v27)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_100007160();
  if (sub_100003684(v39, v40, v41, v42, 5u, v43))
  {
    goto LABEL_21;
  }

  v27 = 1;
LABEL_19:
  sub_100007160();
  if (sub_100003684(v44, v45, v46, v47, 0, v48))
  {
    goto LABEL_21;
  }

  sub_100007160();
  v54 = sub_100003684(v49, v50, v51, v52, 1u, v53);
  if (v54)
  {
    goto LABEL_21;
  }

  if (v29)
  {
    v63 = sub_100007150(0, v55, v56, v57, v58, v59, v60, v61, __str, "/", v111, v95, v97, v99, v101, v103, v105, v107, v109, v111[0]);
    v54 = sub_100003684(v63, v64, v65, a4, 2u, a5 + 5);
    if (v54)
    {
      goto LABEL_21;
    }
  }

  if (v28)
  {
    v66 = sub_100007150(v54, v55, v56, v57, v58, v59, v60, v61, v86, v89, v92, v95, v97, v99, v101, v103, v105, v107, v109, v111[0]);
    v54 = sub_100003684(v66, v67, v68, a4, 4u, a5 + 6);
    if (v54)
    {
      goto LABEL_21;
    }
  }

  if (v27)
  {
    v69 = sub_100007150(v54, v55, v56, v57, v58, v59, v60, v61, v86, v89, v92, v95, v97, v99, v101, v103, v105, v107, v109, v111[0]);
    v54 = sub_100003684(v69, v70, v71, a4, 5u, a5 + 7);
    if (v54)
    {
      goto LABEL_21;
    }
  }

  v72 = sub_100007150(v54, v55, v56, v57, v58, v59, v60, v61, v86, v89, v92, v95, v97, v99, v101, v103, v105, v107, v109, v111[0]);
  if (sub_100003684(v72, v73, v74, a4, 0, a5 + 8))
  {
    goto LABEL_21;
  }

  v82 = sub_100007150(0, v75, v76, v77, v78, v79, v80, v81, v87, v90, v93, v96, v98, v100, v102, v104, v106, v108, v110, v111[0]);
  if (sub_100003684(v82, v83, v84, a4, 1u, a5 + 9))
  {
    goto LABEL_21;
  }

  return v5;
}

BOOL sub_1000076B0()
{
  v3 = __chkstk_darwin();
  result = 1;
  if (v0)
  {
    if (v3)
    {
      if (v1)
      {
        v5 = v2;
        if (v2)
        {
          v6 = v0;
          if (CFStringGetCStringPtr(v1, 0))
          {
            snprintf(__str, 0x40uLL, "%s%s", v3, v6);
            memcpy(__dst, &unk_100008370, sizeof(__dst));
            v7 = &__dst[4];
            v8 = 8;
            do
            {
              if (v8 != 2)
              {
                __strlcpy_chk();
              }

              v7 += 1032;
              --v8;
            }

            while (v8);
            if (!sub_10000389C(0xC0104451uLL, __dst))
            {
              count = xpc_array_get_count(v5);
              if (count < 1)
              {
                return sub_10000389C(0xC0104452uLL, __dst) == 0;
              }

              v10 = count;
              v11 = 0;
              while (1)
              {
                xpc_array_get_value(v5, v11);
                if (sub_10000391C())
                {
                  break;
                }

                if (v10 == ++v11)
                {
                  return sub_10000389C(0xC0104452uLL, __dst) == 0;
                }
              }

              sub_100000900();
            }

            sub_10000389C(0xC0104453uLL, __dst);
          }

          else
          {
            sub_100000900();
          }

          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_100007874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2)
  {
    v10 = sub_100007184(0, a2, "%s%s", a4, a5, a6, a7, a8, a1, a2, v14, __src[0]);
    snprintf(v10, v11, v12);
    bzero(v16, 0xC20uLL);
    strncpy(v18, __src, 0x40uLL);
    if (ioctl(dword_1000103B0, 0xCC20441CuLL, v16))
    {
      v13 = *__error();
      sub_100000ACC(3424666652);
      sub_100000900();
      return v13 == 0;
    }

    else
    {
      if (!v17)
      {
        sub_1000048D0();
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_100007964(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2 && a3 && a5)
  {
    v11 = sub_100007184(0, a2, "%s%s", a4, a5, a6, a7, a8, a1, a2, v14, v15);
    snprintf(v11, v12, v13);
    if (CFStringGetCStringPtr(a3, 0))
    {
      return sub_10000391C() == 0;
    }

    else
    {
      sub_100000900();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100007A40(const char *a1, const char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    bzero(v6, 0xD8uLL);
    snprintf(v7, 0x40uLL, "%s%s", a1, a2);
    sub_100000900();
    if (ioctl(dword_1000103B0, 0xC0D84412uLL, v6) && (v5 = *__error(), sub_100000ACC(3235398674), sub_100000900(), v5))
    {
      return 0;
    }

    else
    {
      sub_100000988();
      return 1;
    }
  }

  return result;
}