void sub_100001370(int a1, int a2)
{
  if (os_variant_has_internal_content())
  {
    dword_10002C400 = a1;
    if (a1)
    {
      goto LABEL_16;
    }

    if (a2)
    {
      v4 = "safe-oblit-sim-fail";
    }

    else
    {
      v4 = "oblit-sim-fail";
    }

    v5 = sub_10000ED78(v4, 1);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberIntType, &dword_10002C400);
      }

      else
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFDataGetTypeID())
        {
          *buffer = 0;
          v13 = 0;
          if (CFDataGetLength(v6) > 0xF)
          {
            v9.length = 16;
          }

          else
          {
            v9.length = CFDataGetLength(v6);
          }

          v9.location = 0;
          CFDataGetBytes(v6, v9, buffer);
          dword_10002C400 = strtoul(buffer, 0, 0);
        }
      }

      v10 = CFGetTypeID(v6);
      Length = CFDataGetLength(v6);
      sub_1000018A4(1, "%s: Found %s set in NVRAM (type: %lu, size: %ld)\n", "obliteration_sim_failure_setup", "oblit-sim-fail", v10, Length);
      CFRelease(v6);
    }

    a1 = dword_10002C400;
    if (dword_10002C400)
    {
LABEL_16:
      sub_1000018A4(1, "%s: Set simulated failure location to 0x%x", "obliteration_sim_failure_setup", a1);
    }
  }
}

uint64_t sub_100001504(int a1, const char *a2)
{
  has_internal_content = os_variant_has_internal_content();
  if (dword_10002C400 == a1)
  {
    v5 = has_internal_content;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    sub_1000018A4(1, "%s: Simulating failure at location 0x%x (%s)\n", "obliteration_sim_failure_should_fail", a1, a2);
  }

  return v5;
}

char *sub_100001580(int a1)
{
  if (qword_10002EC78 != -1)
  {
    sub_1000189E4();
  }

  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        return &byte_10002D200;
      }

      else
      {
        return byte_10002D600;
      }
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return &byte_10002E600;
      }

      goto LABEL_15;
    }

    v3 = byte_10002EC68;
    v4 = "/";
    v5 = &unk_10002DA00;
    goto LABEL_18;
  }

  if (!a1)
  {
    v3 = byte_10002EC68;
    v4 = byte_10002C600;
    v5 = &byte_10002C600[&loc_100001800];
LABEL_18:
    if (v3)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return &byte_10002CE00;
    }

LABEL_15:
    sub_1000018A4(1, "%s: ☠️ =====>>> Error: Invalid path request (%d) <<<===== ☠️", "getCurrentPath", a1);
    return byte_10002C600;
  }

  v6 = 1024;
  if (byte_10002EC68)
  {
    v6 = 7168;
  }

  return &byte_10002C600[v6];
}

void sub_1000016C0(id a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v4 = 0;
  if (Mutable)
  {
    v2 = Mutable;
    sub_100005B48(Mutable, &v4);
    CFRelease(v2);
  }

  if (!byte_10002C600[0])
  {
    __strlcpy_chk();
  }

  if (!byte_10002CE00)
  {
    __strlcpy_chk();
  }

  if (!byte_10002D200)
  {
    __strlcpy_chk();
  }

  if (!byte_10002E600)
  {
    __strlcpy_chk();
  }

  snprintf(byte_10002CA00, 0x400uLL, "%s/mobile", byte_10002C600);
  snprintf(byte_10002D600, 0x400uLL, "%s/tmp", byte_10002C600);
  v3 = &byte_10002C600[&loc_100001400];
  snprintf(v3, 0x400uLL, "%s/alt_root", byte_10002D600);
  snprintf(&byte_10002C600[&loc_100001800], 0x400uLL, "%s%s", v3, byte_10002C600);
  snprintf(&byte_10002C600[&loc_100001C00], 0x400uLL, "%s%s", v3, byte_10002CA00);
  sub_100005DFC(byte_10002C600, "var");
  sub_100005DFC(&byte_10002CE00, "hardware");
  sub_100005DFC(&byte_10002D200, "MobileSoftwareUpdate");
  sub_100005DFC(&byte_10002E600, "xarts");
}

void sub_1000018A4(int a1, char *__format, ...)
{
  va_start(va, __format);
  if (!__format)
  {
    return;
  }

  if (word_10002EC6B != 1)
  {
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, __format, 0x8000100u);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v5 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v6, va);
    CFRelease(v7);
    if (!v5)
    {
      return;
    }

LABEL_10:
    sub_100004234(v5, 1u, a1);
    CFRelease(v5);
    return;
  }

  v3 = vsnprintf(__str, 0x400uLL, __format, va);
  if (v3)
  {
    v4 = v3;
    if (v3 <= 0x3FF)
    {
      __str[v3] = 10;
      v4 = v3 + 1;
    }

    v5 = CFStringCreateWithBytes(kCFAllocatorDefault, __str, v4, 0x8000100u, 0);
    if (v5)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000019EC(int a1, char *__s1, const char *a3)
{
  if (__s1)
  {
    v6 = strnlen(__s1, 0x100uLL) + 1;
    if (a3)
    {
LABEL_3:
      v7 = strnlen(a3, 0x100uLL);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = sub_100001580(a1);
  v9 = strlen(v8);
  if (v6 + v7 + v9 >= 0x101)
  {
    sub_1000018A4(1, "%s: ☠️ =====>>> Error: path too long (%zu > %d) and WILL BE TRUNCATED <<<===== ☠️", "setGlobalPath", v6 + v7 + v9, 256);
  }

  v10 = "";
  if (__s1)
  {
    v11 = __s1;
  }

  else
  {
    v11 = "";
  }

  if (a3)
  {
    v10 = a3;
  }

  return snprintf(byte_10002C500, 0x100uLL, "%s%s%s", v8, v11, v10);
}

uint64_t start(int a1, uint64_t a2)
{
  byte_10002C409 = sub_10000FB64();
  v4 = sub_10000FA50();
  dword_10002C2D8 = open("/dev/console", 9);
  if (sub_10000E6A8())
  {
    sub_10000E824();
  }

  byte_10002EC69 = sub_10000E60C();
  if (a1 == 2 && !strcmp(*(a2 + 8), "--init"))
  {
    fwrite("Obliterator: In INIT check\n", 0x1BuLL, 1uLL, __stderrp);
    v8 = sub_100001F74(0, 0);
    if (v8)
    {
      if (!v4)
      {
        fwrite("Obliterator: Obliteration terminated improperly, continuing obliteration...\n", 0x4CuLL, 1uLL, __stderrp);
        v8 = 0;
LABEL_18:
        close(0);
        if (open("/dev/null", 2) == -1)
        {
          v9 = "failed to open stdin devnull\n";
          v10 = 29;
        }

        else
        {
          v9 = "*** STDIN set with devnull ***\n";
          v10 = 31;
        }

        fwrite(v9, v10, 1uLL, __stderrp);
        sub_100001370(0, 1);
        v11 = sub_1000022A8();
        v12 = v11;
        if (v11 != 89 && v11)
        {
          if (byte_10002EC6A)
          {
            v23 = "RRTS";
          }

          else
          {
            v23 = "Oblit";
          }

          v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Safe%s failed with [gF: 0x%016llX] Attempt: %ld", v23, qword_10002C410, qword_10002EC80 + 1);
          if (v24)
          {
            v25 = v24;
            sub_10000F4A0("oblit-failure", v24);
            CFRelease(v25);
          }

          if (byte_10002EC6A)
          {
            v26 = "RRTS";
          }

          else
          {
            v26 = "Obliteration";
          }

          sub_1000018A4(0, "%s: Safe %s failed, returning %d", "main", v26, v12);
LABEL_51:
          if (sub_10000E6A8())
          {
            sub_1000019EC(0, 0, "/log/obliteration.log");
            sub_10000EAD4(byte_10002C500, sub_10000E708);
            sub_10000E8D0();
          }

          exit(v12);
        }

        v13 = sub_100004138("oblit-begins", __big, 0x100u);
        if (v13)
        {
          v15 = v13;
          v16 = strnstr(__big, "Caller: ", v13);
          v17 = v15 - 8;
          if (!v16)
          {
            v17 = v15;
          }

          v14 = &__big[8 * (v16 != 0)];
          if (v17 >= 0xC1)
          {
            v18 = 199;
            if (!v16)
            {
              v18 = 191;
            }

            __big[v18] = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        if (byte_10002EC6A)
        {
          v19 = "RRTS";
        }

        else
        {
          v19 = "Oblit";
        }

        v20 = time(0);
        v21 = "<unknown>";
        if (v14)
        {
          v21 = v14;
        }

        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Safe%s done @%ld, Err:%d, By:%s", v19, v20, v12, v21);
        sub_100004234(v22, 0, 1);
        sub_10000F94C(@"oblit-begins");
        sub_10000F94C(@"oblit-failure");
        if (byte_10002EC6A == 1)
        {
          sub_10000F94C(@"oblit-rrts-bstoken");
          sub_10000F94C(@"oblit-rrts-snapshot");
        }

        if ((v8 | v4 ^ 1))
        {
          goto LABEL_51;
        }

LABEL_41:
        exit(0);
      }
    }

    else
    {
      if (!v4)
      {
        fwrite("Obliterator: No obliteration needed, continue booting, returning 0\n", 0x43uLL, 1uLL, __stderrp);
        goto LABEL_41;
      }

      sub_1000020A0();
    }

    fwrite("Obliterator: Running in ephemeral data mode, initiating obliteration...\n", 0x48uLL, 1uLL, __stderrp);
    goto LABEL_18;
  }

  sub_1000018A4(1, "%s: mobile_obliterator - XPC version started", "main");
  v5 = dispatch_queue_create("com.apple.mobile.obliterator", 0);
  if (v5)
  {
    v6 = v5;
    if (qword_10002EA00 || (qword_10002EA00 = MOXPCTransportOpen()) != 0)
    {
      MOXPCTransportSetMessageHandler();
      dispatch_release(v6);
      MOXPCTransportResume();
      dispatch_main();
    }

    sub_1000018A4(1, "%s: Unable to start server");
  }

  else
  {
    sub_1000018A4(1, "%s: Can't create dispatch resources.");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100001F74(int a1, uint64_t *a2)
{
  size = 255;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v4)
  {
    sub_1000018A4(0, "%s: IORegistryEntryFromPath failed");
    return 0;
  }

  memset(_20, 0, 255);
  if (IORegistryEntryGetProperty(v4, "oblit-inprogress", _20, &size))
  {
    sub_1000018A4(0, "%s: IORegistryEntryGetProperty failed, may be does not exist");
    return 0;
  }

  result = 1;
  if (a2)
  {
    if (a1)
    {
      __endptr = 0;
      *a2 = strtol(_20, &__endptr, 10);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000020A0()
{
  sub_1000018A4(1, "%s: Marking NVRAM Obliteration in Progress", "setOblitNVRAMkey");
  if (!sub_100001F74(0, 0))
  {
    mainPort = 0;
    *__str = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v1 = 64;
    if (!HIBYTE(word_10002EC6B))
    {
      v1 = 0;
    }

    snprintf(__str, 0x40uLL, "%d", v1);
    v2 = CFStringCreateWithCString(0, "oblit-inprogress", 0x8000100u);
    if (IOMainPort(bootstrap_port, &mainPort))
    {
      sub_1000018A4(1, "%s: Could not get main port\n");
    }

    else
    {
      v3 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
      if (v3)
      {
        v4 = v3;
        v5 = CFStringCreateWithCString(0, __str, 0x8000100u);
        if (v5)
        {
          v6 = v5;
          v7 = IORegistryEntrySetCFProperty(v4, v2, v5);
          if (v7)
          {
            sub_1000018A4(1, "%s: Could not save value:%08x\n", "setOblitNVRAMkey", v7);
            v0 = 0xFFFFFFFFLL;
          }

          else
          {
            sub_10000F164(v4, "0");
            v0 = 0;
          }

          sub_1000018A4(1, "%s: NVRamSyncNow", "setOblitNVRAMkey");
          CFRelease(v6);
        }

        else
        {
          sub_1000018A4(1, "%s: Could not create string for value\n", "setOblitNVRAMkey");
          v0 = 0xFFFFFFFFLL;
        }

        IOObjectRelease(v4);
        goto LABEL_17;
      }

      sub_1000018A4(1, "%s: Could not get options entry from the device tree\n");
    }

    v0 = 0xFFFFFFFFLL;
LABEL_17:
    CFRelease(v2);
    return v0;
  }

  sub_1000018A4(1, "%s: Already marked the start of progress, returning", "setOblitNVRAMkey");
  return 0;
}

uint64_t sub_1000022A8()
{
  memset(v119, 0, 64);
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  *__s = 0u;
  memset(v114, 0, sizeof(v114));
  v110 = 0;
  v109 = 0;
  v0 = sub_10000FA50();
  v108 = 0;
  sub_1000018A4(1, "%s: safeObliterate: Starting", "safeObliterate");
  if (v0)
  {
    goto LABEL_32;
  }

  v1 = sub_100004138("oblit-failure", &xmmword_10002EAE8, 0x180u);
  if (v1)
  {
    v2 = v1;
    v3 = strnstr(&xmmword_10002EAE8, "[gF: 0x", v1);
    if (v3)
    {
      v4 = strtoull(v3 + 7, 0, 16);
      sub_1000018A4(1, "%s: Safe Obliteration previous gFailure is 0x%016llX", "safeOblitCheckLoop", v4);
    }

    else
    {
      v4 = 0;
    }

    v6 = strnstr(&xmmword_10002EAE8, "Attempt: ", v2);
    if (v6)
    {
      v7 = strtol(v6 + 9, 0, 10);
      v8 = v7;
      if (v7)
      {
        sub_1000018A4(1, "%s: Safe Obliteration previous finish count in nvram is %ld", "safeOblitCheckLoop", v7);
        if (v8 >= 1)
        {
          qword_10002EC80 = v8;
        }
      }

      v5 = v8 & ~(v8 >> 63);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v9 = sub_100004138("oblit-begins", &xmmword_10002EAE8, 0x160u);
  if (v9)
  {
    v10 = strnstr(&xmmword_10002EAE8, "Attempt: ", v9);
    if (v10)
    {
      v11 = v10 + 9;
      v12 = strtol(v10 + 9, 0, 10);
      if (v12)
      {
        v13 = v12;
        sub_1000018A4(1, "%s: Safe Obliteration previous start count in nvram is %ld", "safeOblitCheckLoop", v12);
        if (v13 > 0)
        {
          if (v13 > 0xA)
          {
            v14 = "no";
            if ((v4 & 0x8650100000165600) == 0)
            {
              v14 = "yes";
            }

            sub_1000018A4(1, "%s: Too many failures (try boot: %s)", "safeObliterate", v14);
            if ((v4 & 0x8650100000165600) == 0)
            {
              sub_1000018A4(0, "%s: Skipping safe attempt, returning 0 to try normal boot (also clearing NVRAM Key indicating obliteration should run)", "safeObliterate");
              sub_1000018A4(0, "%s: Clearing Obliteration in Progress", "clearOblitNVRAMkey");
              sub_10000F94C(@"oblit-inprogress");
              return 0;
            }

            goto LABEL_30;
          }

          goto LABEL_28;
        }
      }
    }
  }

  if ((v5 - 1) > 3)
  {
    v5 = 1;
    sub_1000018A4(1, "%s: Overriding all safe obliteration previous count values to 1", "safeOblitCheckLoop");
    qword_10002EC80 = 1;
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_26:
    strcpy(&xmmword_10002EAE8, "No info for unknown MO type, Attempt: ");
    v9 = &stru_100000020.cmdsize + 2;
    goto LABEL_27;
  }

  sub_1000018A4(1, "%s: Overriding safe obliteration previous start count to %ld", "safeOblitCheckLoop", v5);
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_24:
  v9 = v9 - 1 + snprintf(&xmmword_10002EAE8 + v9 - 1, 353 - v9, ", Attempt: ");
LABEL_27:
  v11 = &xmmword_10002EAE8 + v9;
  v13 = v5;
LABEL_28:
  if (v13 - v5 >= 5)
  {
    sub_1000018A4(1, "%s: Too many failures (try boot: %s)", "safeObliterate", "no");
LABEL_30:
    sub_10000EFD4("auto-boot", "false");
    sub_1000018A4(0, "%s: Skipping safe attempt, returning EACCES to go into recovery (set 'auto-boot' to false)");
    return 13;
  }

  snprintf(v11, 384 - v9, "%lu", v13 + 1);
  sub_10000EFD4("oblit-begins", &xmmword_10002EAE8);
  sub_1000018A4(1, "%s: safeOblitCheckLoop() passed, attempting safe-obliterate", "safeObliterate");
LABEL_32:
  if (sub_100001504(16, "safeObliterate"))
  {
    sub_1000018A4(1, "%s: Simulating safeObliterate failure at start");
    return 13;
  }

  v16 = sub_100008ADC();
  if (v16)
  {
    sub_1000018A4(1, "%s: safeObliterate: Device is in multiuser mode", "safeObliterate");
  }

  qword_10002EC98 = sub_10000EF00("oblit-rrts-bstoken", 1);
  v17 = sub_100004138("oblit-rrts-snapshot", cStr, 0xFFu);
  if (v17)
  {
    cStr[v17] = 0;
    v18 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    qword_10002ECA0 = v18;
  }

  else
  {
    v18 = qword_10002ECA0;
  }

  v19 = [NSString stringWithFormat:@"safeObliterate: Found BST %@ and Snapshot %@", qword_10002EC98, v18];
  v20 = CFStringCreateWithFormat(0, 0, @"%@", v19);
  if (v20)
  {
    v21 = v20;
    CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
    if (CStringPtr)
    {
      v23 = CStringPtr;
    }

    else
    {
      v23 = "<error getting string>";
    }

    sub_1000018A4(1, "%s: %s", "safeObliterate", v23);
    CFRelease(v21);
  }

  else
  {
    sub_1000018A4(1, "%s: %s", "safeObliterate", "<error getting string>");
  }

  free(v19);
  if (qword_10002EC98 && (v24 = CFGetTypeID(qword_10002EC98), v24 == CFDataGetTypeID()) && qword_10002ECA0)
  {
    byte_10002EC6A = 1;
    sub_1000018A4(1, "%s: safeRRTS is in progress...");
  }

  else
  {
    sub_1000018A4(1, "%s: safeObliteration is in progress...", "safeObliterate");
  }

  if (qword_10002EC78 != -1)
  {
    sub_1000189F8();
  }

  if (byte_10002EC68)
  {
    v25 = &byte_10002C600[&loc_100001800];
  }

  else
  {
    v25 = byte_10002C600;
  }

  v26 = getfsfile(v25);
  if (v26 && (v27 = v26, (sub_100001504(17, "safeObliterate") & 1) == 0))
  {
    fs_spec = v27->fs_spec;
    __strlcpy_chk();
  }

  else
  {
    sub_1000018A4(1, "%s: safeObliterate: Failed getfsfile, manually creating data volume device", "safeObliterate");
    memset(&v112, 0, 512);
    *__error() = 0;
    if (statfs("/", &v112) || sub_100001504(17, "safeObliterate"))
    {
      v28 = *__error();
      sub_1000018A4(1, "%s: safeObliterate: Failed statfs of /, error: %d");
    }

    else
    {
      f_mntfromname = v112.f_mntfromname;
      do
      {
        v47 = strchr(f_mntfromname, 64);
        f_mntfromname = v47 + 1;
      }

      while (v47);
      __strlcpy_chk();
      __s[strlen(__s) - 1] = 50;
      sub_1000018A4(1, "%s: safeObliterate: Using data volume device: %s");
    }
  }

  sub_1000018A4(1, "%s: safeObliterate(): XXXXXXXXXXXXX SKIPPING RAMROD SETUP XXXXXXXXXXXXX ", "safeObliterate");
  sub_1000018A4(1, "%s: safeObliterate: Checking if Data volume exists", "safeObliterate");
  v30 = sub_10000C7E0();
  if (v30)
  {
    v31 = v30;
    Count = CFArrayGetCount(v30);
    if (Count)
    {
      sub_1000018A4(1, "%s: Obtained List of APFS volumes", "data_volume_exists");
      v33 = CFStringCreateWithCString(kCFAllocatorDefault, __s, 0x8000100u);
      if (v33)
      {
        if (Count > 0)
        {
          v34 = v33;
          ValueAtIndex = CFArrayGetValueAtIndex(v31, 0);
          if (CFStringFind(v34, ValueAtIndex, 0x40uLL).location != -1)
          {
            v36 = 1;
            sub_1000018A4(1, "%s: Found existing Data volume", "data_volume_exists");
            CFRelease(v31);
            goto LABEL_73;
          }

          v48 = Count & 0x7FFFFFFF;
          v49 = 1;
          while (v48 != v49)
          {
            v50 = CFArrayGetValueAtIndex(v31, v49++);
            if (CFStringFind(v34, v50, 0x40uLL).location != -1)
            {
              v36 = 1;
              sub_1000018A4(1, "%s: Found existing Data volume", "data_volume_exists");
              CFRelease(v31);
              if (v49 - 1 >= v48)
              {
                goto LABEL_72;
              }

              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        sub_1000018A4(1, "%s: Could not create String from f_mntfromname, bailing");
      }
    }

    else
    {
      sub_1000018A4(1, "%s: APFS Volume list is empty, bailing");
    }

    CFRelease(v31);
  }

  else
  {
    sub_1000018A4(1, "%s: Unable to find any APFS Volume in IORegistry, bailing", "data_volume_exists");
  }

LABEL_72:
  qword_10002C410 |= 0x10000uLL;
  sub_1000018A4(1, "%s: safeObliterate: Could not find Data volume, will skip deletion but drop keys before creating new volume", "safeObliterate");
  v36 = 0;
LABEL_73:
  if ((v0 & 1) == 0)
  {
    if (byte_10002C409 == 1)
    {
      sub_1000018A4(1, "%s: safeObliterate: Skipping the Disable of the watchdog timer", "safeObliterate");
    }

    else
    {
      sub_1000018A4(1, "%s: safeObliterate: Disabling the watchdog timer", "safeObliterate");
      sub_10000C578();
    }
  }

  sub_100008C0C(__s, v119);
  sub_1000018A4(1, "%s: safeObliterate: Using container device name: %s", "safeObliterate", v119);
  if (byte_10002EC6A != 1)
  {
    sub_1000018A4(1, "%s: safeObliterate: Obliterating the Data volume", "safeObliterate");
    if (sub_1000091FC(v119, __s, v36, v16, &v109))
    {
      qword_10002C410 |= 0x20000uLL;
      sub_1000018A4(1, "%s: safeObliterate: Could not obliterate the Data volume", "safeObliterate");
      if ((v109 & 1) == 0)
      {
        sub_1000018A4(1, "%s: safeObliterate: failed to wipe volume keys, failing safe obliteration", "safeObliterate");
        goto LABEL_278;
      }
    }

    sub_1000018A4(1, "%s: safeObliterate: Reformatting the Data volume in container %s", "safeObliterate", v119);
    if (sub_1000095FC(v119, 1, __s, "safeObliterate"))
    {
      sub_1000018A4(0, "%s: safeObliterate: Could not reformat the Data volume", "safeObliterate");
    }

LABEL_119:
    if (v16)
    {
      sub_1000018A4(1, "%s: safeObliterate: Reformatting the User volume in container %s", "safeObliterate", v119);
      if (sub_1000095FC(v119, 0, v114, "safeObliterate"))
      {
        sub_1000018A4(0, "%s: safeObliterate: Could not reformat the User volume", "safeObliterate");
      }
    }

    if (!__s[0])
    {
      v51 = getfsfile(v25);
      if (v51)
      {
        v52 = v51->fs_spec;
        __strlcpy_chk();
        sub_1000018A4(1, "%s: safeObliterate: Using data volume device: %s");
      }

      else
      {
        qword_10002C410 |= 0x2000000000000uLL;
        sub_1000018A4(1, "%s: safeObliterate: Failed second getfsfile, this is really bad");
      }
    }

    sub_1000018A4(1, "%s: safeObliterate: Setting up Data volume content", "safeObliterate");
    v53 = sub_100009834(0, 0);
    v107 = v53;
    if (v53)
    {
      sub_10000DBE8(v53);
    }

    else
    {
      qword_10002C410 |= 0x80000uLL;
      sub_1000018A4(1, "%s: safeObliterate: Failed to set up detault content on the new Data volume", "safeObliterate");
    }

    byte_10002EC68 = 1;
    if (qword_10002EC78 != -1)
    {
      sub_1000189F8();
    }

    sub_1000099C4(byte_10002D600);
    if (qword_10002EC78 != -1)
    {
      sub_1000189F8();
    }

    if (byte_10002EC68)
    {
      v54 = &byte_10002C600[&loc_100001800];
    }

    else
    {
      v54 = byte_10002C600;
    }

    v55 = mkpath_np(v54, 0x1EDu);
    if (v55)
    {
      v56 = v55;
      if (v55 != 17)
      {
        v57 = strerror(v55);
        sub_1000018A4(1, "%s: safeObliterate: Could not create the Data volume path %s, error %d (%s)", "safeObliterate", v54, v56, v57);
      }
    }

    sub_1000018A4(1, "%s: safeObliterate: Remounting the Data volume %s at %s", "safeObliterate", __s, v54);
    if (sub_100009AC0(__s, v54, 0))
    {
      qword_10002C410 |= 0x100000uLL;
      sub_1000018A4(1, "%s: safeObliterate: Could not remount the Data volume", "safeObliterate");
    }

    if (v16)
    {
      if (byte_10002EC6A == 1)
      {
        sub_1000018A4(1, "%s: safeRRTS: Re-setting UM/AKS of the new User volume", "safeObliterate");
        if (sub_100009BB0(v54, v114))
        {
          qword_10002C410 |= 0x100000000000000uLL;
          sub_1000018A4(0, "%s: Failed to re-set the user volume in RRTS mode");
        }
      }

      else
      {
        sub_1000018A4(1, "%s: safeObliterate: Setting up UM/AKS for the new Data volume", "safeObliterate");
        if (v0)
        {
          v58 = &v110;
        }

        else
        {
          v58 = 0;
        }

        if (sub_10000A1BC(__s, v54, v114, v58, 0))
        {
          qword_10002C410 |= 0x100000000000000uLL;
          sub_1000018A4(1, "%s: safeObliterate: Failed to set up the data and user volumes in multiuser mode");
        }
      }
    }

    if (byte_10002EC6A == 1)
    {
      sub_1000018A4(1, "%s: RRTS: skip creating overprovisioning file and mobile path", "safeObliterate");
    }

    else
    {
      sub_1000018A4(1, "%s: safeObliterate: Re-creating overprovisioning file", "safeObliterate");
      if (sub_10000AA58())
      {
        qword_10002C410 |= 0x200000uLL;
        sub_1000018A4(1, "%s: safeObliterate: Could not re-create overprovisioning file", "safeObliterate");
      }

      sub_1000018A4(1, "%s: safeObliterate: Creating mobile path", "safeObliterate");
      sub_10000DDAC();
    }

    if (qword_10002EC78 != -1)
    {
      sub_1000189F8();
    }

    v59 = 1024;
    if (byte_10002EC68)
    {
      v59 = 7168;
    }

    v60 = &byte_10002C600[v59];
    if (v16)
    {
      sub_1000018A4(1, "%s: safeObliterate: Remounting the User volume %s at %s", "safeObliterate", v114, v60);
      if (sub_100009AC0(v114, v60, 0))
      {
        qword_10002C410 |= 0x400000000000000uLL;
        sub_1000018A4(1, "%s: safeObliterate: Could not remount the User volume", "safeObliterate");
      }
    }

    if (byte_10002EC6A == 1)
    {
      sub_1000018A4(1, "%s: safeRRTS: Restoring Data volume content", "safeObliterate");
      v61 = umask(0);
      sub_1000018A4(1, "%s: safeRRTS: Old mask has value %o; New mask has value %o.", "safeObliterate", v61, 0);
      v62 = geteuid();
      v63 = getuid();
      v64 = getpid();
      v65 = getppid();
      sub_1000018A4(1, "%s: safeRRTS: EUID = %d; UID = %d; PID = %d; PPID = %d.", "safeObliterate", v62, v63, v64, v65);
      if (qword_10002EC78 != -1)
      {
        sub_1000189F8();
      }

      v66 = &unk_10002E000;
      if (sub_100019300(v107))
      {
        sub_1000018A4(1, "%s: safeRRTS: Unable to restore filesystem stuff.", "safeObliterate");
      }
    }

    else
    {
      sub_1000018A4(1, "%s: safeObliterate: Rebuilding the Data volume", "safeObliterate");
      *&v112.f_bsize = 0;
      if (sub_100001F74(1, &v112))
      {
        sub_1000018A4(1, "%s: Obtained the NVRAM Key Value and it is %ld", "safe_setup_volume", *&v112.f_bsize);
        if (*&v112.f_bsize)
        {
          HIBYTE(word_10002EC6B) = 1;
          sub_1000018A4(1, "%s: This is a ManagedDevice Wipe");
        }

        else
        {
          sub_1000018A4(1, "%s: Not a ManagedDevice Wipe");
        }
      }

      sub_1000018A4(1, "%s: Creating whitelist directories", "safe_setup_volume");
      if (qword_10002EC78 != -1)
      {
        sub_1000189F8();
      }

      v67 = aks_bootstrap_fs();
      if (v67)
      {
        sub_1000018A4(1, "%s: aksutils_bootstrap_fs failed: %d", "safe_setup_volume", v67);
      }

      sub_1000018A4(1, "%s: Restoring Data volume content", "safe_setup_volume");
      if (qword_10002EC78 != -1)
      {
        sub_1000189F8();
      }

      if (sub_100019300(v107))
      {
        sub_1000018A4(1, "%s: Unable to restore filesystem stuff.");
      }

      else
      {
        sub_1000018A4(1, "%s: Restoring Data volume content Completed");
      }

      if (HIBYTE(word_10002EC6B) == 1)
      {
        sub_10000E48C();
      }

      sub_1000018A4(1, "%s: Creating system keybag", "safe_setup_volume");
      if (qword_10002EC78 != -1)
      {
        sub_1000189F8();
      }

      System = MKBKeyBagCreateSystem();
      if (System)
      {
        sub_1000018A4(1, "%s: Unable to create keybag: %d", "safe_setup_volume", System);
      }

      sub_1000018A4(1, "%s: Creating system keybag - done", "safe_setup_volume");
      sub_1000019EC(5, "/private", "/var/db/timezone/localtime");
      if (symlink("/var/db/timezone/zoneinfo/US/Pacific", byte_10002C500) == -1)
      {
        if (*__error() == 17)
        {
          sub_1000018A4(1, "%s: Timezone symlink already exists.");
        }

        else
        {
          v70 = __error();
          strerror(*v70);
          sub_1000018A4(1, "%s: Could not symlink the timezone file '%s': %s");
        }
      }

      else if (lchmod(byte_10002C500, 0x1EDu) == -1)
      {
        v69 = __error();
        strerror(*v69);
        sub_1000018A4(1, "%s: Could not set 0755 permission on symlink: %s");
      }

      sub_1000018A4(1, "%s: done symlink of TZDIR", "safe_setup_volume");
      sub_1000019EC(0, "/root", "/.obliterated");
      v71 = open(byte_10002C500, 513, 420);
      if (v71 == -1)
      {
        v72 = __error();
        v73 = strerror(*v72);
        sub_1000018A4(1, "%s: Could not create the '.obliterated' marker file: %s", "safe_setup_volume", v73);
      }

      else
      {
        close(v71);
      }

      v66 = &unk_10002E000;
    }

    if (v16)
    {
      sub_1000018A4(1, "%s: safeObliterate: Populating USER volume with mastered content", "safeObliterate");
      if (sub_10000B31C(v60))
      {
        qword_10002C410 |= 0x800000000000000uLL;
        sub_1000018A4(0, "%s: safeObliterate: Failed to create and set up a user volume for multiuser mode", "safeObliterate");
      }
    }

    if (v0)
    {
      if (byte_10002EC69 == 1 && (sub_10000D524("epdm_skip_preboot_cleanup=1") & 1) != 0)
      {
        sub_1000018A4(1, "%s: safeObliterate: Skip Cleaning Preboot volume, epdm_skip_preboot_cleanup requested on internal build");
      }

      else
      {
        sub_1000018A4(1, "%s: safeObliterate: Cleaning Preboot volume in EpDM", "safeObliterate");
        v75 = sub_10000FBD4();
        v76 = objc_alloc_init(NSMutableDictionary);
        if (v76)
        {
          v77 = v76;
          sub_10000CFA4();
          v78 = open("/private/preboot/active", 0);
          if (v78 == -1)
          {
            v85 = __error();
            v86 = strerror(*v85);
            sub_1000018A4(1, "%s: Failed to open /private/preboot/active: %s", "epdm_fixup_preboot", v86);
            __error();
          }

          else
          {
            v79 = v78;
            v80 = lseek(v78, 0, 2);
            if (v80 != -1 && (v81 = v80, (v82 = malloc_type_malloc(v80 + 1, 0x3BBBD3F2uLL)) != 0) && (v83 = v82, v81 == pread(v79, v82, v81, 0)))
            {
              v83[v81] = 0;
              sub_1000018A4(1, "%s: Found '/private/preboot/active' to point to '%s'", "epdm_fixup_preboot", v83);
              [v77 setObject:@"remove" forKey:off_10002C2E0];
              [v77 setObject:@"keep" forKey:@"DarwinInitCache"];
              [v77 setObject:@"keep" forKey:@"active"];
              if (byte_10002EC69 == 1)
              {
                [v77 setObject:@"keep" forKey:@"kernelcore"];
              }

              if (v75)
              {
                sub_1000018A4(1, "%s: Exclaves are enabled, preserve exclave assets", "epdm_fixup_preboot");
                [v77 setObject:@"removeExcept /ExclaveOS/" forKey:@"Cryptexes"];
                v84 = @"removeExcept /(ANE|GFX|AVE|PMP|SIO|StaticTrustCache|iBootData|Ap,(ANE1|RestoreTMU|SecurePageTableMonitor|TrustedExecutionMonitor|ApplePMCFirmware|GFX1Firmware|ExclaveOSVolume|ExclaveOSIntegrityCatalog|ExclaveOSTrustCache|cL4))\\.img4/ /Ap,ExclaveOS.dmg/";
              }

              else
              {
                v84 = @"removeExcept /(ANE|GFX|AVE|PMP|SIO|StaticTrustCache|iBootData|Ap,(ANE1|RestoreTMU|SecurePageTableMonitor|TrustedExecutionMonitor|ApplePMCFirmware|GFX1Firmware))\\.img4/";
              }

              v106 = v84;
              v66 = &unk_10002E000;
              [v77 setObject:@"removeExcept /apticket.der/ /com.apple.factorydata/" forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/System/Library/Caches", v83)}];
              [v77 setObject:@"removeExcept /kernelcache/" forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/System/Library/Caches/com.apple.kernelcaches", v83)}];
              [v77 setObject:@"removeExcept /devicetree.img4/ /root_hash.img4/ /sep-firmware.img4/ /sep-patches.img4/" forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/usr/standalone/firmware", v83)}];
              [v77 setObject:v106 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/usr/standalone/firmware/FUD", v83)}];
              [+[DiskSupport sharedInstance](DiskSupport traverseFolderAndRemoveItems:"traverseFolderAndRemoveItems:exceptions:" exceptions:@"/private/preboot", v77];

              free(v83);
            }

            else
            {
              sub_1000018A4(1, "%s: Failed to read /private/preboot/active", "epdm_fixup_preboot");
              v66 = &unk_10002E000;
            }
          }
        }

        else
        {
          sub_1000018A4(1, "%s: Could not create exceptions dictionary");
        }
      }

      if (byte_10002EC69 != 1 || (sub_10000D524("epdm_skip_xart_cleanup=1") & 1) == 0)
      {
        sub_1000018A4(1, "%s: safeObliterate: Cleaning Xart volume", "safeObliterate");
        v111 = 0;
        v87 = objc_alloc_init(NSMutableDictionary);
        if (v87)
        {
          v88 = v87;
          memset(&v112, 0, 37);
          [v87 setObject:@"remove" forKey:off_10002C2E0];
          v89 = IOServiceMatching("IOPlatformExpertDevice");
          MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v89);
          if (MatchingService)
          {
            v91 = MatchingService;
            CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformUUID", kCFAllocatorDefault, 0);
            IOObjectRelease(v91);
            if (CFProperty)
            {
              CString = CFStringGetCString(CFProperty, &v112, 37, 0x8000100u);
              CFRelease(CFProperty);
              if (CString)
              {
                memset(uu, 0, sizeof(uu));
                if (uuid_parse(&v112, uu))
                {
                  sub_1000018A4(1, "%s: Invalid platform UUID %s");
                }

                else
                {
                  sub_1000018A4(1, "%s: Platform UUID is %s", "get_platform_uuid", &v112);
                  [v88 setObject:@"keep" forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.gl", &v112)}];
                  if (sub_10000B558(256, &v111))
                  {
                    v105 = +[DiskSupport sharedInstance];
                    if (qword_10002EC78 != -1)
                    {
                      sub_1000189F8();
                    }

                    [(DiskSupport *)v105 traverseFolderAndRemoveItems:[NSString exceptions:"stringWithUTF8String:" stringWithUTF8String:?], v88];
                    if (v111 == 1)
                    {
                      sub_10000C2E4(256);
                    }

                    goto LABEL_225;
                  }

                  sub_1000018A4(1, "%s: Failed to clean up the Xart Volume");
                }
              }

              else
              {
                sub_1000018A4(1, "%s: Failed to get string from %s");
              }
            }

            else
            {
              sub_1000018A4(1, "%s: Failed to get %s");
            }
          }

          else
          {
            sub_1000018A4(1, "%s: Failed to find IOPlatformExpertDevice");
          }
        }

        else
        {
          sub_1000018A4(1, "%s: Could not create exceptions dictionary", "epdm_fixup_xart");
        }

        sub_1000018A4(1, "%s: safeObliterate: Failed to clean up Xart volume");
        return 13;
      }
    }

    else if ((v66[3178] & 1) == 0)
    {
      v74 = word_10002EC71 ? "[Skip] " : "";
      sub_1000018A4(1, "%s: %sCleaning supplemental folder from preboot", "safeObliterate", v74);
      if ((word_10002EC71 & 1) == 0)
      {
        sub_10000B8C8();
      }
    }

LABEL_225:
    if (!sub_10000B558(320, &v108))
    {
      goto LABEL_253;
    }

    if (v0)
    {
      if ((v66[3178] & 1) == 0)
      {
        if (byte_10002EC69 != 1 || (sub_10000D524("epdm_skip_hwvolume_cleanup=1") & 1) == 0)
        {
          sub_1000018A4(1, "%s: safeObliterate: Cleaning Hardware volume in ephemeral mode", "safeObliterate");
          sub_10000D628();
          goto LABEL_251;
        }

        goto LABEL_250;
      }
    }

    else
    {
      memset(&v112, 0, 144);
      sub_1000019EC(2, "/.obliteration_preserved", "/");
      sub_1000018A4(1, "%s: Examining '%s' for files to recover", "copy_preserved_files_from_storage", byte_10002C500);
      if (stat(byte_10002C500, &v112) || (v112.f_iosize & 0xF000) != 0x4000)
      {
        sub_1000018A4(1, "%s: No files to recover");
      }

      else
      {
        if (qword_10002EC78 != -1)
        {
          sub_1000189F8();
        }

        if (byte_10002EC68)
        {
          v94 = &byte_10002C600[&loc_100001800];
        }

        else
        {
          v94 = byte_10002C600;
        }

        if (copyfile(byte_10002C500, v94, 0, 0x800Fu))
        {
          v95 = __error();
          strerror(*v95);
          sub_1000018A4(1, "%s: Could not copy files from temporary location '%s', error: %s");
        }

        else
        {
          sub_1000018A4(1, "%s: Successfully copied files from the temporary location '%s'");
        }
      }

      sub_10000B7BC();
      if (v66[3178] != 1)
      {
LABEL_250:
        sub_1000018A4(1, "%s: safeObliterate: Cleaning Hardware volume", "safeObliterate");
        sub_10000B9E4();
LABEL_251:
        if (v108 == 1)
        {
          sub_10000C2E4(320);
        }

LABEL_253:
        if (v0 && (byte_10002EC69 != 1 || (sub_10000D524("epdm_skip_update_cleanup=1") & 1) == 0))
        {
          sub_1000018A4(1, "%s: safeObliterate: Cleaning Update volume", "safeObliterate");
          v96 = objc_alloc_init(NSMutableDictionary);
          if (!v96)
          {
            sub_1000018A4(1, "%s: Could not create exceptions dictionary", "epdm_fixup_update_volume");
            if (!v16)
            {
              goto LABEL_273;
            }

LABEL_264:
            sub_1000018A4(1, "%s: safeObliterate: Unmounting the User volume post obliteration", "safeObliterate");
            if (sub_100008B58(1, 1))
            {
              qword_10002C410 |= 0x200000000000000uLL;
              sub_1000018A4(1, "%s: safeObliterate: Failed to unmount the User volume post obliteration", "safeObliterate");
            }

            if (v110)
            {
              v99 = v0;
            }

            else
            {
              v99 = 0;
            }

            if (v99 == 1)
            {
              *&v112.f_bsize = 0;
              [v110 uid];
              if (!AKSIdentityUnload())
              {
                v100 = [NSString stringWithFormat:@"AKSIdentityUnload failed with error: %@", *&v112.f_bsize];
                v101 = CFStringCreateWithFormat(0, 0, @"%@", v100);
                if (v101)
                {
                  v102 = v101;
                  v103 = CFStringGetCStringPtr(v101, 0x8000100u);
                  if (v103)
                  {
                    v104 = v103;
                  }

                  else
                  {
                    v104 = "<error getting string>";
                  }

                  sub_1000018A4(1, "%s: %s", "safeObliterate", v104);
                  CFRelease(v102);
                }

                else
                {
                  sub_1000018A4(1, "%s: %s", "safeObliterate", "<error getting string>");
                }

                free(v100);
                v109 = 0;
LABEL_276:
                if (v107)
                {
                  sub_10000DD2C(v107);
                }

                goto LABEL_278;
              }

              sub_1000018A4(1, "%s: AKSIdentityUnload() succeeded", "safeObliterate");

              v110 = 0;
            }

LABEL_273:
            sub_1000018A4(1, "%s: safeObliterate: Unmounting the Data volume post obliteration", "safeObliterate");
            if (sub_100008B58(0, 1))
            {
              qword_10002C410 |= 0x40000000000000uLL;
              sub_1000018A4(1, "%s: safeObliterate: Failed to unmount the Data volume post obliteration", "safeObliterate");
            }

            sub_1000018A4(1, "%s: safeObliterate: Unmounting the tmpfs volume post obliteration", "safeObliterate");
            sub_100008B58(4, 1);
            sub_1000018A4(1, "%s: safeObliterate: Clearing NVRAM Key", "safeObliterate");
            sub_1000018A4(0, "%s: Clearing Obliteration in Progress", "clearOblitNVRAMkey");
            sub_10000F94C(@"oblit-inprogress");
            goto LABEL_276;
          }

          v97 = v96;
          [v96 setObject:@"remove" forKey:off_10002C2E0];
          [v97 setObject:@"keep" forKey:@"last_update_result.plist"];
          [v97 setObject:@"removeExcept /ota_tolerated_failures.plist/" forKey:@"lastOTA"];
          LOBYTE(v112.f_bsize) = 0;
          if (sub_10000B558(192, &v112))
          {
            sub_1000018A4(1, "%s: Cleaning up the Update volume", "epdm_fixup_update_volume");
            v98 = +[DiskSupport sharedInstance];
            if (qword_10002EC78 != -1)
            {
              sub_1000189F8();
            }

            [(DiskSupport *)v98 traverseFolderAndRemoveItems:[NSString exceptions:"stringWithUTF8String:" stringWithUTF8String:?], v97];
            if (LOBYTE(v112.f_bsize) == 1)
            {
              sub_10000C2E4(192);
            }
          }
        }

        if (!v16)
        {
          goto LABEL_273;
        }

        goto LABEL_264;
      }
    }

    sub_1000018A4(1, "%s: safeRRTS: skip cleaning up the hardware volume", "safeObliterate");
    goto LABEL_251;
  }

  if (qword_10002EC78 != -1)
  {
    sub_1000189F8();
  }

  if (byte_10002EC68)
  {
    v37 = &byte_10002C600[&loc_100001800];
  }

  else
  {
    v37 = byte_10002C600;
  }

  v38 = sub_100009AC0(__s, v37, 1);
  if (v38)
  {
    v39 = "failed";
  }

  else
  {
    v39 = "succeeded";
  }

  sub_1000018A4(1, "%s: safeObliterate: mount Data volume %s", "safeObliterate", v39);
  if (!v38)
  {
    sub_100005F54(1);
    if (sub_100008B58(0, 1))
    {
      v40 = "failed";
    }

    else
    {
      v40 = "succeeded";
    }

    sub_1000018A4(1, "%s: safeObliterate: unmount Data volume %s", "safeObliterate", v40);
    if (!sub_100008D24(v119, 2, v114, "RRTS"))
    {
      *&v112.f_bsize = 0;
      sub_1000018A4(1, "%s: safeRRTS: Calling AKSVolumeUnmap() with disk:%s of the User", "safeObliterate", v114);
      CFStringCreateWithCString(kCFAllocatorDefault, v114, 0x8000100u);
      if ((AKSVolumeUnmap() & 1) == 0)
      {
        v41 = [NSString stringWithFormat:@"AKSVolumeUnmap returned %@", *&v112.f_bsize];
        v42 = CFStringCreateWithFormat(0, 0, @"%@", v41);
        if (v42)
        {
          v43 = v42;
          v44 = CFStringGetCStringPtr(v42, 0x8000100u);
          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = "<error getting string>";
          }

          sub_1000018A4(1, "%s: %s", "safeObliterate", v45);
          CFRelease(v43);
        }

        else
        {
          sub_1000018A4(1, "%s: %s", "safeObliterate", "<error getting string>");
        }

        free(v41);
      }

      if (*&v112.f_bsize)
      {
        CFRelease(*&v112.f_bsize);
      }
    }

    LOBYTE(v114[0]) = 0;
    sub_1000018A4(1, "%s: safeRRTS: skip obliterating the Data volume, deleting non-fstab volumes", "safeObliterate");
    if (sub_100008EB8())
    {
      sub_1000018A4(1, "%s: safeRRTS: Completed deletion of non fstab APFS volumes if present");
    }

    else
    {
      sub_1000018A4(1, "%s: safeRRTS: Could not delete existing non fstab APFS volumes");
    }

    v109 = 1;
    goto LABEL_119;
  }

LABEL_278:
  if (v109 != 1)
  {
    return 13;
  }

  sub_1000018A4(0, "%s: safeObliterate: all done, returning ECANCELED", "safeObliterate");
  return 89;
}

size_t sub_100004138(char *a1, char *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = sub_10000ED78(a1, 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID() && CFStringGetCString(v7, a2, a3, 0x8000100u))
      {
        v3 = strnlen(a2, a3) + 1;
      }

      else
      {
        v9 = CFGetTypeID(v7);
        if (v9 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v7);
          if (Length + 1 < a3)
          {
            v3 = Length + 1;
          }

          else
          {
            v3 = a3;
          }

          BytePtr = CFDataGetBytePtr(v7);
          memcpy(a2, BytePtr, v3);
          a2[v3 - 1] = 0;
        }

        else
        {
          v3 = 0;
        }
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_100004234(const __CFString *a1, unsigned __int8 a2, int a3)
{
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u) == 1)
  {
    v6 = strlen(buffer);
    if (v6 > 0x3FF)
    {
      goto LABEL_22;
    }

    for (i = v6; i; --i)
    {
      v8 = v23[i + 15];
      if (v8 != 13 && v8 != 10)
      {
        break;
      }
    }

    v10 = snprintf(&buffer[i], 1024 - i, " [gF: 0x%016llX]", qword_10002C410);
    v11 = i + v10 >= 0x400 ? 1024 : i + v10;
    v12 = CFStringCreateWithBytes(kCFAllocatorDefault, buffer, v11, 0x8000100u, 0);
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = @"obliteration";
      }

      else
      {
        v14 = 0;
      }

      sub_100005F30(v12, v14, a2);
      CFRelease(v13);
    }

    else
    {
LABEL_22:
      if (a3)
      {
        v16 = @"obliteration";
      }

      else
      {
        v16 = 0;
      }

      sub_100005F30(a1, v16, a2);
    }

    if ((dword_10002EC6D & 0x1000000) != 0)
    {
      *__str = 0;
      v22 = 0;
      memset(v23, 0, 11);
      Current = CFAbsoluteTimeGetCurrent();
      snprintf(__str, 0x1BuLL, "%fs ", Current - *&qword_10002EC88);
    }

    else
    {
      v20 = time(0);
      ctime_r(&v20, __str);
      strcpy(&v23[8], ": ");
    }

    if (dword_10002C2D8 != -1)
    {
      v18 = strlen(__str);
      write(dword_10002C2D8, __str, v18);
      v19 = strlen(buffer);
      write(dword_10002C2D8, buffer, v19);
      write(dword_10002C2D8, "\n", 1uLL);
    }
  }

  else
  {
    if (a3)
    {
      v15 = @"obliteration";
    }

    else
    {
      v15 = 0;
    }

    sub_100005F30(a1, v15, a2);
  }
}

const char *sub_100004470(const char *result)
{
  if (result)
  {
    v1 = result;
    v5 = 0;
    v2 = getmntinfo(&v5, 2);
    if (v2)
    {
      v3 = v2;
      for (i = v5->f_mntfromname; strcmp(v1, i); i += 2168)
      {
        v5 = (i + 1056);
        if (!--v3)
        {
          return 0;
        }
      }

      return i - 1024;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000044F8(const char *a1)
{
  if (unmount(a1, 0x80000) != -1)
  {
    return 0;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_1000018A4(1, "%s: Could not unmount %s: %s", "unmountVolume", a1, v4);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000045F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_new();
  qword_10002EA08 = result;
  return result;
}

void sub_100005B48(__CFArray *a1, _DWORD *a2)
{
  if (setfsent())
  {
    v4 = getfsent();
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5->fs_spec, 0x8000100u);
        fs_spec = v5->fs_spec;
        if (v6)
        {
          v8 = v6;
          sub_1000018A4(1, "%s: Adding fspec to the spec node array:%s", "create_fsspec_nodes_list", fs_spec);
          CFArrayAppendValue(a1, v8);
          CFRelease(v8);
        }

        else
        {
          sub_1000018A4(1, "%s: Failed to create CFStr for spec file:%s", "create_fsspec_nodes_list", fs_spec);
        }

        v9 = v5->fs_spec;
        if (APFSVolumeRole())
        {
          v10 = v5->fs_spec;
          sub_1000018A4(1, "%s: APFSVolumeRole for %s failed with %d");
        }

        v5 = getfsent();
      }

      while (v5);
    }

    endfsent();
  }

  if (a2)
  {
    *a2 = CFArrayGetCount(a1);
  }

  if (CFArrayGetCount(a1))
  {
    sub_1000018A4(1, "%s: Unable to find any FSSpec nodes in fstab", "create_fsspec_nodes_list");
  }
}

void sub_100005DFC(char *a1, const char *a2)
{
  v4 = strrchr(a1, 47);
  if (v4)
  {
    v5 = v4;
    v6 = strlen(a2);
    v7 = strlen(v5 + 1);
    if (v7 != v6 || strncmp(v5 + 1, a2, v7))
    {
      qword_10002C410 |= 0x8000000000000000;
      sub_1000018A4(1, "%s: Path %s doesn't end with %s as expected", "validatePath", a1, a2);
    }
  }
}

void sub_100005EA0(uint64_t a1, const void *a2)
{
  v3 = sub_10000E58C();
  CFDictionarySetValue(v3, @"IPCStatus", a2);
  if ((MOXPCTransportSendMessageOnConnection() & 1) == 0)
  {
    sub_1000018A4(1, "%s: Failed to not send response to the client", "send_reply_response_cf");
  }

  CFRelease(v3);
}

void sub_100005F30(const __CFString *a1, const __CFString *a2, unsigned __int8 a3)
{
  if (a1)
  {
    sub_100018A20(a1, a2, a3);
  }
}

uint64_t sub_100005F54(char a1)
{
  v2 = [qword_10002ECA0 UTF8String];
  if (v2)
  {
    v3 = v2;
    if (qword_10002EC78 != -1)
    {
      sub_1000189E4();
    }

    if (byte_10002EC68)
    {
      v4 = &byte_10002C600[&loc_100001800];
    }

    else
    {
      v4 = byte_10002C600;
    }

    v5 = open(v4, 0, 0);
    if (v5 < 0)
    {
      v8 = __error();
      v7 = *v8;
      v9 = strerror(*v8);
      sub_1000018A4(1, "%s: RRTS: Unable to open data volume directory: %s (%d)\n", "rrts_revert_data_volume_to_snapshot", v9, v7);
    }

    else
    {
      v6 = v5;
      if (a1)
      {
        sub_1000018A4(1, "%s: RRTS: setting revert-to-snapshot for '%s' on the data volume", "rrts_revert_data_volume_to_snapshot", v3);
        if (fs_snapshot_revert(v6, v3, 0) < 0)
        {
          v17 = __error();
          v18 = strerror(*v17);
          v19 = __error();
          sub_1000018A4(1, "%s: RRTS: failed to set revert to snapshot: %s (%d)\n", "rrts_revert_data_volume_to_snapshot", v18, *v19);
          v7 = *__error();
        }

        else
        {
          sub_1000018A4(1, "%s: RRTS: successfully set revert to snapshot", "rrts_revert_data_volume_to_snapshot");
          v7 = 0;
        }
      }

      else
      {
        sub_1000018A4(1, "%s: RRTS: checking if snapshot '%s' exists on the data volume", "rrts_revert_data_volume_to_snapshot", v3);
        *&v21.volattr = 0;
        *&v21.fileattr = 0;
        *&v21.bitmapcount = 5;
        v21.commonattr = -2147483647;
        v10 = fs_snapshot_list(v6, &v21, v22, 0x400uLL, 0);
        if (v10 < 1)
        {
LABEL_19:
          if (v10 < 0)
          {
            v15 = __error();
            sub_1000018A4(1, "%s: RRTS: fs_snapshot_list() failed with error %d", "verify_snapshot_exists", *v15);
          }

          sub_1000018A4(1, "%s: Unable to find snapshot '%s'", "verify_snapshot_exists", v3);
          v16 = "does not exist";
          v7 = 0xFFFFFFFFLL;
        }

        else
        {
          v11 = v22;
          while (1)
          {
            v12 = *v11;
            if (v11[1])
            {
              v13 = v11 + v11[6] + 24;
              sub_1000018A4(1, "%s: RRTS: volume has snapshot with name '%s'", "verify_snapshot_exists", v13);
              if (!strcmp(v3, v13))
              {
                break;
              }
            }

            v11 = (v11 + v12);
            if (v10-- <= 1)
            {
              v21.bitmapcount = 5;
              v21.commonattr = -2147483647;
              v11 = v22;
              v10 = fs_snapshot_list(v6, &v21, v22, 0x400uLL, 0);
              if (v10 <= 0)
              {
                goto LABEL_19;
              }
            }
          }

          v7 = 0;
          v16 = "verified to exist";
        }

        sub_1000018A4(1, "%s: RRTS: snapshot %s", "rrts_revert_data_volume_to_snapshot", v16);
      }

      close(v6);
    }
  }

  else
  {
    sub_1000018A4(1, "%s: RRTS: Failed to set convert snapshot name to cstring", "rrts_revert_data_volume_to_snapshot");
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t sub_100006270(uint64_t a1, int a2, int a3, int a4)
{
  AssertionID = 0;
  v78 = 0;
  memset(v89, 0, sizeof(v89));
  memset(v88, 0, sizeof(v88));
  v86 = 0u;
  v87 = 0u;
  *cStr = 0u;
  v85 = 0u;
  sub_1000020A0();
  sub_100008428();
  if (byte_10002EC6A == 1)
  {
    sub_1000018A4(1, "%s: RRTS: skip shared-iPad reboot stage", "obliterate");
    goto LABEL_5;
  }

  v8 = MKBUserTypeDeviceMode();
  if (!v8 || (v9 = v8, Value = CFDictionaryGetValue(v8, kMKBDeviceModeKey), v11 = CFStringCompare(Value, kMKBDeviceModeSharedIPad, 0), CFRelease(v9), v11))
  {
LABEL_5:
    v12 = 0xFFFFFFFFLL;
    v13 = sub_100008ADC();
    if (v13)
    {
      sub_1000018A4(1, "%s: Device is in multiuser mode", "obliterate");
    }

    if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"Mobile Obliteratation", &AssertionID))
    {
      sub_1000018A4(1, "%s: Cannot prevent idle sleep", "obliterate");
      if (!a3)
      {
        goto LABEL_242;
      }
    }

    if (dword_10002C2D8 != -1)
    {
      ramrod_add_log_fd(dword_10002C2D8);
    }

    ramrod_log_set_buffermsgs(0);
    ramrod_set_syslog_flush_msgs(0);
    ramrod_display_set_showprogress(byte_10002C2E8);
    sub_1000018A4(1, "%s: Posting the data eschaton notification", "obliterate");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (DarwinNotifyCenter)
    {
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobile.data_eschaton", 0, 0, 1u);
    }

    else
    {
      sub_1000018A4(1, "%s: Could not get the darwin notification center", "post_notification");
    }

    sub_1000018A4(1, "%s: Taking the device off the USB bus", "obliterate");
    values[0] = 0;
    v15 = IOUSBDeviceControllerCreate();
    if (v15)
    {
      if (v15 == -536870160)
      {
        v16 = 1;
        sub_1000018A4(1, "%s: The USB device controller could not be found. It's cool.", "getoff_bus");
LABEL_21:
        if (values[0])
        {
          CFRelease(values[0]);
        }

        if ((v16 & 1) == 0)
        {
          qword_10002C410 |= 1uLL;
          sub_1000018A4(0, "%s: Could not get off the USB bus", "obliterate");
          if (!a3)
          {
            goto LABEL_242;
          }
        }

        if (byte_10002C409 == 1)
        {
          sub_1000018A4(1, "%s: Skipping the disable of watchdog timer", "obliterate");
        }

        else
        {
          sub_1000018A4(1, "%s: Disabling the watchdog timer", "obliterate");
          sub_10000C418(@"com.apple.watchdogd");
          if (sub_10000C578())
          {
            qword_10002C410 |= 2uLL;
            sub_1000018A4(0, "%s: Could not disable the watchdog timer", "obliterate");
            if (!a3)
            {
              goto LABEL_242;
            }
          }
        }

        v76 = a4;
        sub_1000018A4(1, "%s: Grabbing framebuffer", "obliterate");
        v17 = MGCopyAnswer();
        if (!v17)
        {
          sub_1000018A4(1, "%s: Could not get device class.", "grab_framebuffer");
          goto LABEL_47;
        }

        v18 = v17;
        sub_1000018A4(1, "%s: Unloading Springboard", "grab_framebuffer");
        sub_10000C418(@"com.apple.SpringBoard");
        sub_1000018A4(1, "%s: Unloaded Springboard", "grab_framebuffer");
        sub_1000018A4(1, "%s: Unloading backbaordd", "grab_framebuffer");
        sub_10000C418(@"com.apple.backboardd");
        sub_1000018A4(1, "%s: Unloaded backboardd", "grab_framebuffer");
        if (CFEqual(v18, @"RealityDevice") == 1)
        {
          sub_1000018A4(1, "%s: Unloading wakeboardd", "grab_framebuffer");
          sub_10000C418(@"com.apple.wakeboardd");
          sub_1000018A4(1, "%s: Unloaded wakeboardd", "grab_framebuffer");
        }

        if (sub_10000DBBC(0.0))
        {
          v46 = "%s: Could not initialize progress bar to zero.";
          goto LABEL_112;
        }

        if (CFEqual(v18, @"AppleTV") || CFEqual(v18, @"RealityDevice") | byte_10002C409)
        {
          sub_1000018A4(1, "%s: Will not attempt to disable backlight for this platform", "grab_framebuffer");
          goto LABEL_45;
        }

        sub_1000018A4(1, "%s: Turning off backlight", "grab_framebuffer");
        keys = @"backlight-control";
        cf = 0;
        values[0] = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!values[0])
        {
          goto LABEL_104;
        }

        keys = @"IOPropertyMatch";
        v19 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!v19)
        {
          goto LABEL_104;
        }

        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v19);
        if (!MatchingService)
        {
          goto LABEL_104;
        }

        v21 = MatchingService;
        valuePtr = 0x8000;
        cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (!cf)
        {
          v24 = -1;
          goto LABEL_107;
        }

        v80 = @"brightness";
        v22 = CFDictionaryCreate(kCFAllocatorDefault, &v80, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v22)
        {
          v23 = v22;
          if (IORegistryEntrySetCFProperties(v21, v22))
          {
            v24 = -1;
          }

          else
          {
            v24 = 0;
          }

          CFRelease(v23);
        }

        else
        {
LABEL_104:
          v24 = -1;
        }

        if (cf)
        {
          CFRelease(cf);
        }

LABEL_107:
        if (values[0])
        {
          CFRelease(values[0]);
        }

        if (v24)
        {
          v46 = "%s: Could not turn on backlight.";
LABEL_112:
          sub_100018C3C(v46, v18);
LABEL_47:
          qword_10002C410 |= 4uLL;
          sub_1000018A4(0, "%s: Could not open framebuffer", "obliterate");
          if (!a3)
          {
LABEL_242:
            sub_1000018A4(0, "%s:  ******** Obliteration done ******** ", "obliterate");
            return v12;
          }

LABEL_48:
          sub_1000018A4(1, "%s: Begin background progress bar UI thread", "obliterate");
          v25 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
          sub_1000018A4(1, "%s: Faking from %3f to %3f expecting %d sec", "begin_fakery", 0.0, 1.0, 15);
          if (v25)
          {
            *v25 = 0x3F80000000000000;
            v25[2] = 15;
            byte_10002EAD8 = 0;
            if (pthread_create(&qword_10002EAE0, 0, sub_10000C6A0, v25))
            {
              v26 = __error();
              v27 = strerror(*v26);
              sub_1000018A4(1, "%s: could not spwawn thread: %s", "begin_fakery", v27);
            }
          }

          sub_1000018A4(1, "%s: Killing some daemons", "obliterate");
          qword_10002EC88 = CFAbsoluteTimeGetCurrent();
          if (*&qword_10002EC88 <= 0.0)
          {
            sub_1000018A4(1, "%s: Failed to get daemon unload timestamp", "obliterate");
          }

          else
          {
            HIBYTE(dword_10002EC6D) = 1;
          }

          if (sub_100008990())
          {
            qword_10002C410 |= 0x10uLL;
            sub_1000018A4(0, "%s: Could not kill daemons", "obliterate");
            if (!a3)
            {
              goto LABEL_241;
            }
          }

          if (a2)
          {
            sub_1000018A4(1, "%s: Capturing the Data volume state", "obliterate");
            v28 = sub_100018C84();
            if (!v28)
            {
              sub_1000018A4(1, "%s: Could not create FS scraper.", "capture_data_volume");
LABEL_116:
              v35 = &unk_10002E000;
              qword_10002C410 |= 0x40uLL;
              sub_1000018A4(0, "%s: Could not capture the Data volume state", "obliterate");
              if (!a3)
              {
                goto LABEL_241;
              }

              v33 = 0;
LABEL_73:
              sub_1000018A4(1, "%s: Warming Launchd pages", "obliterate");
              v77 = 0;
              if (sysctlbyname("kern.memorystatus_do_fastwake_warmup_all", 0, 0, &v77, 4uLL))
              {
                qword_10002C410 |= 0x80uLL;
                v36 = *__error();
                sub_1000018A4(1, "%s: memorystatus_do_fastwake_warmup_all failed with error: %d");
              }

              else
              {
                sub_1000018A4(1, "%s: memorystatus_do_fastwake_warmup_all success");
              }

              if (v13)
              {
                sub_1000018A4(1, "%s: Unmounting the User volume", "obliterate");
                if (sub_100008B58(1, 1))
                {
                  qword_10002C410 |= 0x4000000000000000uLL;
                  sub_1000018A4(0, "%s: Could not unmount the User volume", "obliterate");
                  if (!a3)
                  {
                    goto LABEL_239;
                  }
                }
              }

              if (v35[3178] == 1 && sub_100005F54(1) && !a3)
              {
                goto LABEL_239;
              }

              sub_1000018A4(1, "%s: Unmounting the Data volume", "obliterate");
              if (sub_100008B58(0, 1))
              {
                qword_10002C410 |= 0x100uLL;
                sub_1000018A4(0, "%s: Could not unmount the Data volume", "obliterate");
                if (!a3)
                {
                  goto LABEL_239;
                }
              }

              sub_100008C0C((a1 + 1112), v89);
              sub_1000018A4(1, "%s: Using container device name: %s", "obliterate", v89);
              if (v35[3178] == 1)
              {
                v37 = sub_100008D24(v89, 2, cStr, "RRTS");
                v38 = word_10002EC71;
                if (!v37)
                {
                  values[0] = 0;
                  if (word_10002EC71)
                  {
                    v39 = "[Skip] ";
                  }

                  else
                  {
                    v39 = "";
                  }

                  sub_1000018A4(1, "%s: RRTS: %sCalling AKSVolumeUnmap() with disk:%s of the User", "obliterate", v39, cStr);
                  if ((word_10002EC71 & 1) == 0)
                  {
                    CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
                    if ((AKSVolumeUnmap() & 1) == 0)
                    {
                      v74 = v33;
                      v40 = [NSString stringWithFormat:@"AKSVolumeUnmap returned %@", values[0]];
                      v41 = CFStringCreateWithFormat(0, 0, @"%@", v40);
                      if (v41)
                      {
                        v42 = v41;
                        CStringPtr = CFStringGetCStringPtr(v41, 0x8000100u);
                        v44 = "<error getting string>";
                        if (CStringPtr)
                        {
                          v44 = CStringPtr;
                        }

                        sub_1000018A4(1, "%s: %s", "obliterate", v44);
                        CFRelease(v42);
                      }

                      else
                      {
                        sub_1000018A4(1, "%s: %s", "obliterate", "<error getting string>");
                      }

                      free(v40);
                      v33 = v74;
                      if (values[0])
                      {
                        CFRelease(values[0]);
                      }
                    }
                  }

                  v38 = word_10002EC71;
                }

                cStr[0] = 0;
                if (v38)
                {
                  v47 = "[Skip] ";
                }

                else
                {
                  v47 = "";
                }

                sub_1000018A4(1, "%s: RRTS: not need to obliterate the Data volume, %sdeleting non-fstab volumes", "obliterate", v47);
                if ((word_10002EC71 & 1) == 0)
                {
                  if ((sub_100001504(6, "obliterate") & 1) != 0 || !sub_100008EB8())
                  {
                    sub_1000018A4(1, "%s: RRTS: Could not delete existing non fstab APFS volumes%s");
                  }

                  else
                  {
                    sub_1000018A4(1, "%s: RRTS: Completed deletion of non fstab APFS volumes if present");
                  }
                }
              }

              else
              {
                if (word_10002EC71)
                {
                  v45 = "[Skip] ";
                }

                else
                {
                  v45 = "";
                }

                sub_1000018A4(1, "%s: %sObliterating the Data volume", "obliterate", v45);
                if ((word_10002EC71 & 1) == 0 && sub_1000091FC(v89, (a1 + 1112), a2, v13, &v78 + 1))
                {
                  qword_10002C410 |= 0x200uLL;
                  sub_1000018A4(0, "%s: Could not obliterate the Data volume", "obliterate");
                  if ((a3 & 1) == 0)
                  {
                    goto LABEL_239;
                  }

LABEL_132:
                  if (word_10002EC71)
                  {
                    v48 = "[Skip] ";
                  }

                  else
                  {
                    v48 = "";
                  }

                  sub_1000018A4(1, "%s: %sBricking", "obliterate", v48);
                  if ((word_10002EC71 & 1) == 0)
                  {
                    sub_100007A20(v76);
                  }

LABEL_137:
                  if (!a2)
                  {
LABEL_220:
                    if (sub_10000B558(320, &v78))
                    {
                      sub_1000019EC(2, "/.obliteration_preserved", 0);
                      v66 = "[Skip] ";
                      if (word_10002EC71)
                      {
                        v67 = "[Skip] ";
                      }

                      else
                      {
                        v67 = "";
                      }

                      sub_1000018A4(1, "%s: %sRemoving preserved files from storage", "obliterate", v67);
                      if ((word_10002EC71 & 1) == 0)
                      {
                        sub_10000B7BC();
                      }

                      if (v35[3178] == 1)
                      {
                        sub_1000018A4(1, "%s: RRTS: skip cleaning up the hardware volume", "obliterate");
                      }

                      else
                      {
                        if (word_10002EC71)
                        {
                          v68 = "[Skip] ";
                        }

                        else
                        {
                          v68 = "";
                        }

                        sub_1000018A4(1, "%s: %sCleaning supplemental folder from preboot", "obliterate", v68);
                        if ((word_10002EC71 & 1) == 0)
                        {
                          sub_10000B8C8();
                          if ((word_10002EC71 & 1) == 0)
                          {
                            v66 = "";
                          }
                        }

                        sub_1000018A4(1, "%s: %sCleaning Hardware volume", "obliterate", v66);
                        if ((word_10002EC71 & 1) == 0)
                        {
                          sub_10000B9E4();
                        }
                      }

                      if (v78 == 1)
                      {
                        sub_10000C2E4(320);
                      }
                    }

                    sub_1000018A4(0, "%s: Clearing Obliteration in Progress", "clearOblitNVRAMkey");
                    sub_10000F94C(@"oblit-inprogress");
                    v12 = 0;
                    goto LABEL_239;
                  }

                  if (v35[3178] == 1)
                  {
                    sub_1000018A4(1, "%s: RRTS: skip reformatting the Data volume", "obliterate");
                  }

                  else
                  {
                    sub_1000018A4(1, "%s: Reformatting the Data volume in container %s", "obliterate", v89);
                    if (sub_1000095FC(v89, 1, v88, 0))
                    {
                      sub_1000018A4(0, "%s: Could not reformat the Data volume", "obliterate");
                      if (!a3)
                      {
                        goto LABEL_239;
                      }
                    }
                  }

                  if (v13)
                  {
                    if (sub_1000095FC(v89, 0, cStr, 0))
                    {
                      sub_1000018A4(0, "%s: Could not reformat the User volume", "obliterate");
                      if (!a3)
                      {
                        goto LABEL_239;
                      }
                    }
                  }

                  v33 = sub_100009834(v33, 1);
                  if (!v33)
                  {
                    qword_10002C410 |= 0x800uLL;
                    sub_1000018A4(0, "%s: Could not setup the content for Data volume", "obliterate");
                    if (!a3)
                    {
                      goto LABEL_241;
                    }
                  }

                  byte_10002EC68 = 1;
                  if (qword_10002EC78 != -1)
                  {
                    sub_1000189F8();
                  }

                  if (sub_1000099C4(byte_10002D600) && !a3)
                  {
                    goto LABEL_239;
                  }

                  if (qword_10002EC78 != -1)
                  {
                    sub_1000189F8();
                  }

                  v49 = byte_10002EC68 ? &byte_10002C600[&loc_100001800] : byte_10002C600;
                  v50 = mkpath_np(v49, 0x1EDu);
                  if (v50)
                  {
                    v51 = v50;
                    if (v50 != 17)
                    {
                      qword_10002C410 |= 0x1000uLL;
                      v52 = strerror(v50);
                      sub_1000018A4(1, "%s: Could not create the Data volume path %s, error %d (%s)", "obliterate", v49, v51, v52);
                      if (!a3)
                      {
                        goto LABEL_239;
                      }
                    }
                  }

                  if (!LOBYTE(v88[0]) && sub_100008D24(v89, 64, v88, "RRTS: rebuild") && !a3)
                  {
                    goto LABEL_239;
                  }

                  sub_1000018A4(1, "%s: Remounting the Data volume %s at %s", "obliterate", v88, v49);
                  if (sub_100009AC0(v88, v49, 0))
                  {
                    qword_10002C410 |= 0x1000uLL;
                    sub_1000018A4(0, "%s: Could not remount the Data volume", "obliterate");
                    if (!a3)
                    {
                      goto LABEL_239;
                    }
                  }

                  v75 = v33;
                  if (!v13)
                  {
                    goto LABEL_181;
                  }

                  v53 = "";
                  if (word_10002EC71)
                  {
                    v53 = "[Skip] ";
                  }

                  if (byte_10002EC6A == 1)
                  {
                    sub_1000018A4(1, "%s: RRTS: %sRe-setting UM/AKS of the new User volume", "obliterate", v53);
                    if ((word_10002EC71 & 1) == 0)
                    {
                      if (sub_100001504(7, "obliterate"))
                      {
                        v54 = " (sim-fail USER_VOLUME_SETUP_UM)";
LABEL_177:
                        qword_10002C410 |= 0x20000000000000uLL;
                        sub_1000018A4(0, "%s: Failed to re-set the user volume in RRTS mode%s", "obliterate", v54);
                        goto LABEL_244;
                      }

                      if (sub_100009BB0(v49, cStr))
                      {
                        v54 = "";
                        goto LABEL_177;
                      }
                    }

LABEL_181:
                    v35 = &unk_10002E000;
                    if (byte_10002EC6A == 1)
                    {
                      sub_1000018A4(1, "%s: RRTS: skip creating overprovisioning file and mobile path", "obliterate");
                    }

                    else
                    {
                      sub_1000018A4(1, "%s: Re-creating overprovisioning file", "obliterate");
                      if (sub_10000AA58())
                      {
                        qword_10002C410 |= 0x2000uLL;
                        sub_1000018A4(0, "%s: Could not re-create overprovisioning file", "obliterate");
                      }

                      sub_1000018A4(1, "%s: Creating mobile path", "obliterate");
                      sub_10000DDAC();
                    }

                    if (qword_10002EC78 != -1)
                    {
                      sub_1000189F8();
                    }

                    v56 = 1024;
                    if (byte_10002EC68)
                    {
                      v56 = 7168;
                    }

                    v57 = &byte_10002C600[v56];
                    if (!v13 || (sub_1000018A4(1, "%s: Remounting the User volume %s at %s", "obliterate", cStr, v57), !sub_100009AC0(cStr, v57, 0)) || (qword_10002C410 |= 0x10000000000000uLL, sub_1000018A4(0, "%s: Could not remount the User volume", "obliterate"), a3))
                    {
                      if (word_10002EC71)
                      {
                        v58 = "[Skip] ";
                      }

                      else
                      {
                        v58 = "";
                      }

                      if (byte_10002EC6A == 1)
                      {
                        sub_1000018A4(1, "%s: RRTS: %sRestoring Data volume content", "obliterate", v58);
                        v59 = umask(0);
                        sub_1000018A4(1, "%s: RRTS: Old mask has value %o; New mask has value %o.", "obliterate", v59, 0);
                        v60 = geteuid();
                        v61 = getuid();
                        v62 = getpid();
                        v63 = getppid();
                        v73 = v60;
                        v35 = &unk_10002E000;
                        sub_1000018A4(1, "%s: ERRTS: UID = %d; UID = %d; PID = %d; PPID = %d.", "obliterate", v73, v61, v62, v63);
                        v33 = v75;
                        if ((word_10002EC71 & 1) == 0)
                        {
                          if (qword_10002EC78 != -1)
                          {
                            sub_1000189F8();
                          }

                          if (sub_100019300(v75))
                          {
                            qword_10002C410 |= 0x800000000000uLL;
                            sub_1000018A4(1, "%s: RRTS: Unable to restore filesystem stuff.", "obliterate");
                            if ((a3 & 1) == 0)
                            {
                              goto LABEL_239;
                            }
                          }
                        }

                        goto LABEL_208;
                      }

                      v64 = "Shared ";
                      if (!v13)
                      {
                        v64 = "";
                      }

                      sub_1000018A4(1, "%s: %sRebuilding the %sData volume", "obliterate", v58, v64);
                      if ((word_10002EC71 & 1) != 0 || !sub_10000AFB0(v33) || (qword_10002C410 |= 0x4000uLL, sub_1000018A4(0, "%s: Could not rebuild the Data volume", "obliterate"), a3))
                      {
LABEL_208:
                        if (v13)
                        {
                          if (word_10002EC71)
                          {
                            v65 = "[Skip] ";
                          }

                          else
                          {
                            v65 = "";
                          }

                          sub_1000018A4(1, "%s: %sPopulating USER volume with mastered content", "obliterate", v65);
                          if ((word_10002EC71 & 1) == 0)
                          {
                            if (sub_10000B31C(v57))
                            {
                              qword_10002C410 |= 0x80000000000000uLL;
                              sub_1000018A4(0, "%s: Failed to create and set up a user volume for multiuser mode", "obliterate");
                              if (!a3)
                              {
                                goto LABEL_239;
                              }
                            }
                          }

                          sub_1000018A4(1, "%s: Unmounting the User volume post obliteration", "obliterate");
                          if (sub_100008B58(1, 0))
                          {
                            qword_10002C410 |= 0x200000000000000uLL;
                            sub_1000018A4(1, "%s: Failed to unmount the User volume post obliteration", "obliterate");
                          }
                        }

                        sub_1000018A4(1, "%s: Unmounting the Data volume post obliteration", "obliterate");
                        if (sub_100008B58(0, 0))
                        {
                          qword_10002C410 |= 0x40000000000000uLL;
                          sub_1000018A4(1, "%s: Failed to unmount the Data volume post obliteration", "obliterate");
                        }

                        sub_1000018A4(1, "%s: Unmounting the tmpfs volume post obliteration", "obliterate");
                        sub_100008B58(4, 0);
                        goto LABEL_220;
                      }

LABEL_239:
                      if (!v33)
                      {
LABEL_241:
                        v69 = dispatch_semaphore_create(0);
                        v70 = dispatch_queue_create("com.apple.obliterator.threadJoin", 0);
                        values[0] = _NSConcreteStackBlock;
                        values[1] = 3221225472;
                        values[2] = sub_10000D028;
                        values[3] = &unk_100028C38;
                        values[4] = v69;
                        dispatch_async(v70, values);
                        v71 = dispatch_time(0, 5000000000);
                        dispatch_semaphore_wait(v69, v71);
                        usleep(0x3D090u);
                        goto LABEL_242;
                      }

LABEL_240:
                      sub_10000DD2C(v33);
                      goto LABEL_241;
                    }

LABEL_244:
                    if (!v33)
                    {
                      goto LABEL_241;
                    }

                    goto LABEL_240;
                  }

                  sub_1000018A4(1, "%s: %sSetting up UM/AKS for the new Data volume", "obliterate", v53);
                  if (word_10002EC71)
                  {
                    goto LABEL_181;
                  }

                  if (sub_100001504(7, "obliterate"))
                  {
                    v55 = " (sim-fail USER_VOLUME_SETUP_UM)";
                  }

                  else
                  {
                    if (!sub_10000A1BC(v88, v49, cStr, 0, 1))
                    {
                      goto LABEL_181;
                    }

                    v55 = "";
                  }

                  qword_10002C410 |= 0x20000000000000uLL;
                  sub_1000018A4(0, "%s: Failed to set up the data volume in multiuser mode%s", "obliterate", v55);
                  if (!a3)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_181;
                }
              }

              if (!a3)
              {
                goto LABEL_137;
              }

              goto LABEL_132;
            }

            v29 = v28;
            if ((byte_10002EC6A & 1) == 0)
            {
              if (sub_100018E2C(v28, "/private/var/mobile/Library/Preferences/.GlobalPreferences.plist"))
              {
                qword_10002C410 |= 0x1000000uLL;
                sub_1000018A4(1, "%s: Could not add user preferences file.", "capture_data_volume");
              }

              sub_1000194A4(v29);
            }

            v30 = qword_10002EC90;
            if (qword_10002EC90)
            {
              v31 = 0;
              while (1)
              {
                if (v31 >= CFArrayGetCount(v30))
                {
                  goto LABEL_68;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(qword_10002EC90, v31);
                if (!CFStringGetCString(ValueAtIndex, values, 1025, 0x8000100u))
                {
                  break;
                }

                if (sub_100018E2C(v29, values))
                {
                  sub_1000018A4(1, "%s: Could not add item '%s' to scrapper");
                  goto LABEL_115;
                }

                ++v31;
                v30 = qword_10002EC90;
                if (!qword_10002EC90)
                {
                  goto LABEL_68;
                }
              }

              sub_1000018A4(1, "%s: Could not extract C-string for path.");
LABEL_115:
              free(v29);
              goto LABEL_116;
            }

LABEL_68:
            sub_1000018A4(1, "%s: Successfully captured Data volume info", "capture_data_volume");
            v33 = v29;
            sub_10000DBE8(v29);
          }

          else
          {
            v33 = 0;
          }

          v35 = &unk_10002E000;
          goto LABEL_73;
        }

LABEL_45:
        CFRelease(v18);
        goto LABEL_48;
      }

      sub_1000018A4(1, "%s: Could not create controller %08x");
    }

    else
    {
      v16 = 1;
      if (!IOUSBDeviceControllerForceOffBus())
      {
        goto LABEL_21;
      }

      sub_1000018A4(1, "%s: Could not force controller off USB %08x");
    }

    v16 = 0;
    goto LABEL_21;
  }

  sub_1000018A4(1, "%s: Shared Mode device, reverting to Safeboot wipe.", "obliterate");
  *__error() = 0;
  reboot(0);
  v34 = __error();
  sub_1000018A4(1, "%s: Ooops... shouldn't be here - reboot() must have failed - errno %d!", "obliterate", *v34);
  LOBYTE(dword_10002EC6D) = 1;
  if (*__error())
  {
    return *__error();
  }

  else
  {
    return 35;
  }
}

void sub_100007948(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  v6 = time(0);
  v7 = @"N/A";
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = @"N/A";
  }

  if (a3)
  {
    v7 = a3;
  }

  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ @%ld, Caller: %@, Reason: %@", a1, v6, v8, v7);
  if (v9)
  {
    v10 = v9;
    sub_100004234(v9, 0, 1);

    CFRelease(v10);
  }

  else
  {

    sub_100004234(a1, 0, 1);
  }
}

uint64_t sub_100007A20(int a1)
{
  sub_1000018A4(1, "%s: Deleting kernelcaches", "brick");
  sub_10000CFA4();
  v53 = 0;
  v2 = sub_10000ED78("boot-path", 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v2)
    {
      v3 = [(__CFString *)v2 UTF8String];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000018A4(1, "%s: boot-path was not a string!?", "kernelcachePathFromVars");
    v2 = 0;
  }

  v3 = "/System/Library/Caches/com.apple.kernelcaches/kernelcache";
LABEL_6:
  memset(&v55, 0, sizeof(v55));
  v4 = open("/private/preboot/active", 0);
  if (v4 != -1)
  {
    v5 = v4;
    v6 = lseek(v4, 0, 2);
    if (v6 == -1)
    {
      v8 = 0;
    }

    else
    {
      v7 = v6;
      v8 = malloc_type_malloc(v6 + 1, 0x22274481uLL);
      if (v8 && v7 == pread(v5, v8, v7, 0))
      {
        v8[v7] = 0;
        if (asprintf(&v53, "/private/preboot/%s%s", v8, v3) < 0)
        {
          sub_1000018A4(1, "%s: asprintf failed", "kernelcachePathFromVars");
          v53 = 0;
        }

        goto LABEL_17;
      }
    }

    sub_1000018A4(1, "%s: Failed to read /private/preboot/active", "kernelcachePathFromVars");
LABEL_17:
    close(v5);
    goto LABEL_18;
  }

  if (*__error() != 2)
  {
    v9 = __error();
    v10 = strerror(*v9);
    sub_1000018A4(1, "%s: Failed to open /private/preboot/active: %s", "kernelcachePathFromVars", v10);
  }

  v8 = 0;
LABEL_18:

  free(v8);
  v11 = v53;
  if (v53)
  {
    v12 = sub_10000D0A8(v53) == 0;
  }

  else
  {
    v12 = 0;
  }