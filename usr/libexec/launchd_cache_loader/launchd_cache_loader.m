uint64_t start(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  init_port_set = 0;
  init_port_setCnt = 0;
  v5 = mach_ports_lookup(mach_task_self_, &init_port_set, &init_port_setCnt);
  if (v5)
  {
    sub_1000015AC(v5);
  }

  if (!init_port_setCnt)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = qword_100008038;
  do
  {
    if (v7 || (v7 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v7) != 0))
    {
      fprintf(v7, "%d Found valid port: %d Valid: %d\n", v6, init_port_set[v6], init_port_set[v6] - 1 < 0xFFFFFFFE);
      fprintf(__stderrp, "%d Found valid port: %d Valid: %d\n", v6, init_port_set[v6], init_port_set[v6] - 1 < 0xFFFFFFFE);
      v7 = qword_100008038;
    }

    ++v6;
  }

  while (v6 < init_port_setCnt);
  if (!init_port_setCnt)
  {
LABEL_17:
    sub_100001698();
  }

  dword_100008040 = *init_port_set;
  if (a1 == 3)
  {
    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
  }

  else
  {
    if (a1 != 1)
    {
      sub_100001624();
    }

    v8 = qword_100008038;
    if (qword_100008038 || (v8 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v8) != 0))
    {
      fwrite("Using default cache paths\n", 0x1AuLL, 1uLL, v8);
      fwrite("Using default cache paths\n", 0x1AuLL, 1uLL, __stderrp);
    }

    v9 = "/System/Library/xpc/launchd.plist";
    v10 = "/System/Library/xpc/launchd.plist.sig";
  }

  sub_100000A98(v9, v10);
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t sub_100000A98(const char *a1, const char *a2)
{
  v4 = qword_100008038;
  if (qword_100008038 || (v4 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v4) != 0))
  {
    fprintf(v4, "Code: %s Sig: %s\n", a1, a2);
    fprintf(__stderrp, "Code: %s Sig: %s\n", a1, a2);
  }

  v31 = 0;
  if (sub_1000012C4("kern.bootargs", &v31) && v31)
  {
    if (sub_100001454(v31, "launchd_unsecure_cache=", 0))
    {
      v5 = qword_100008038;
      if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
      {
        fprintf(v5, "Using unsecure cache: %s\n", a1);
        fprintf(__stderrp, "Using unsecure cache: %s\n", a1);
      }

      return sub_100000F68(a1);
    }
  }

  else
  {
    v6 = qword_100008038;
    if (qword_100008038 || (v6 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v6) != 0))
    {
      fwrite("No boot-args\n", 0xDuLL, 1uLL, v6);
      fwrite("No boot-args\n", 0xDuLL, 1uLL, __stderrp);
    }
  }

  v7 = [NSURL fileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
  v8 = [NSURL fileURLWithFileSystemRepresentation:a2 isDirectory:0 relativeToURL:0];
  staticCode = 0;
  v9 = SecStaticCodeCreateWithPath(v7, 0, &staticCode);
  if (v9)
  {
    v11 = sub_1000016B4(input, v9);
    goto LABEL_36;
  }

  v10 = [NSData dataWithContentsOfURL:v8];
  v11 = SecCodeSetDetachedSignature();
  if (v11)
  {
LABEL_36:
    v14 = sub_100001730(input, v11);
LABEL_37:
    sub_1000017AC(input, v14);
    goto LABEL_38;
  }

  v12 = SecStaticCodeCheckValidity(staticCode, 6u, 0);
  if (v12 != -66996)
  {
    v13 = v12;
    if (v12)
    {
      goto LABEL_42;
    }
  }

  information = 0;
  v14 = SecCodeCopySigningInformation(staticCode, 0, &information);
  if (v14)
  {
    goto LABEL_37;
  }

  v15 = information;
  v16 = [(__CFDictionary *)information objectForKeyedSubscript:kSecCodeInfoUnique];
  v17 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v17);
  if (!MatchingService)
  {
LABEL_38:
    sub_100001A3C();
    goto LABEL_39;
  }

  v19 = MatchingService;
  connect = 0;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
LABEL_39:
    v29 = sub_100001828();
    goto LABEL_40;
  }

  input[0] = 1;
  v20 = IOConnectCallMethod(connect, 6u, input, 1u, [v16 bytes], objc_msgSend(v16, "length"), 0, 0, 0, 0);
  if (!v20)
  {
    v21 = qword_100008038;
    if (qword_100008038 || (v21 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v21) != 0))
    {
      v22 = [v16 description];
      fprintf(v21, "cdhash: %s is trusted\n", [v22 UTF8String]);

      v23 = __stderrp;
      v24 = [v16 description];
      fprintf(v23, "cdhash: %s is trusted\n", [v24 UTF8String]);
    }

    if (!connect)
    {
      sub_100001698();
    }

    IOServiceClose(connect);
    IOObjectRelease(v19);

    v25 = staticCode;
    if (!v25)
    {
      sub_100001698();
    }

    v7 = SecCodeMapMemory(v25, 0);
    CFRelease(v25);
    if (!v7)
    {
      v26 = qword_100008038;
      if (qword_100008038 || (v26 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v26) != 0))
      {
        fwrite("Attached signature to file, checking ...\n", 0x29uLL, 1uLL, v26);
        fwrite("Attached signature to file, checking ...\n", 0x29uLL, 1uLL, __stderrp);
      }

      return sub_100000F68(a1);
    }

    goto LABEL_41;
  }

  v28 = v20;
  v29 = v16;
  if (v28 == -536870160)
  {
    sub_10000189C(v16);
  }

LABEL_40:
  sub_1000019A8(v29, v28);
LABEL_41:
  sub_10000192C(input, v7);
LABEL_42:
  v30 = sub_100001AB0(input, v13);
  return sub_100000F68(v30);
}

uint64_t sub_100000F68(const char *a1)
{
  v1 = open(a1, 0);
  if (v1 == -1)
  {
    sub_100001D50();
  }

  v2 = v1;
  memset(&v14, 0, sizeof(v14));
  if (fstat(v1, &v14))
  {
    sub_100001B2C();
LABEL_25:
    sub_100001CC4();
  }

  v3 = mmap(0, v14.st_size, 1, 2, v2, 0);
  if (v3 == -1)
  {
    goto LABEL_25;
  }

  v4 = dword_100008040;
  if ((dword_100008040 - 1) >= 0xFFFFFFFE)
  {
    v7 = sub_100001BB8();
    goto LABEL_27;
  }

  v5 = v3;
  v6 = qword_100008038;
  if (!qword_100008038)
  {
    v6 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w");
    qword_100008038 = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    v4 = dword_100008040;
  }

  fprintf(v6, "Trying to send bytes to launchd: %d %lu\n", v4, vm_page_size);
  fprintf(__stderrp, "Trying to send bytes to launchd: %d %lu\n", dword_100008040, vm_page_size);
LABEL_9:
  __dst = 0;
  v7 = sub_1000014C4(dword_100008040, (v14.st_size + vm_page_size - 1) & -vm_page_size, &__dst, 1);
  if (v7)
  {
LABEL_27:
    v11 = sub_100001C2C(v7);
    return sub_1000011BC(v11, v12);
  }

  v8 = qword_100008038;
  if (qword_100008038 || (v8 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v8) != 0))
  {
    fwrite("Sending validated cache to launchd\n", 0x23uLL, 1uLL, v8);
    fwrite("Sending validated cache to launchd\n", 0x23uLL, 1uLL, __stderrp);
  }

  memcpy(__dst, v5, v14.st_size);
  v9 = qword_100008038;
  if (qword_100008038 || (v9 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v9) != 0))
  {
    fwrite("Cache sent to launchd successfully\n", 0x23uLL, 1uLL, v9);
    fwrite("Cache sent to launchd successfully\n", 0x23uLL, 1uLL, __stderrp);
  }

  if (!v5)
  {
    sub_100001698();
  }

  if (munmap(v5, v14.st_size) == -1)
  {
    sub_100001CA4();
  }

  result = close(v2);
  if (result == -1)
  {
    return sub_100001CA4();
  }

  return result;
}

uint64_t sub_1000011BC(_OWORD *a1, uint64_t a2)
{
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;

  return _DebugGetErrorString(a2, a1, 128);
}

uint64_t sub_1000011F4()
{

  return _abort_with_reason(7, 1, v0, 0);
}

uint64_t sub_100001214(FILE *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{

  return fprintf(a1, v9);
}

char *sub_100001250(char *a1, ...)
{
  va_start(va, a1);
  v3 = 0;
  while (1)
  {
    vasprintf(&v3, a1, va);
    result = v3;
    if (v3)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_100001DDC();
      }
    }

    sub_100001230();
  }

  return result;
}

size_t sub_1000012C4(const char *a1, char **a2)
{
  *__error() = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__s1 = 0u;
  v12 = 0u;
  size = 128;
  v4 = sysctlbyname(a1, __s1, &size, 0, 0);
  v5 = v4;
  if (size)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    size = 128;
    *__error() = 12;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (*__error() != 12)
  {
    return 0;
  }

LABEL_6:
  if (size != 128 || *__error() != 12)
  {
    v7 = 0;
    v8 = __s1;
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_16:
    *a2 = strdup(v8);
    goto LABEL_17;
  }

  if (sysctlbyname(a1, 0, &size, 0, 0))
  {
    return 0;
  }

  if (size < 0x81)
  {
    v7 = 0;
    v8 = __s1;
    goto LABEL_16;
  }

  v8 = sub_10000153C(size, 0xDA5AEC60uLL);
  v9 = sysctlbyname(a1, v8, &size, 0, 0);
  v7 = v8;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  size = 0;
LABEL_17:
  free(v7);
  return size;
}

unint64_t sub_100001454(char *a1, const char *a2, uint64_t a3)
{
  v5 = strstr(a1, a2);
  if (v5)
  {
    __endptr = 0;
    v6 = &v5[strlen(a2)];
    v7 = strtoul(v6, &__endptr, 10);
    if (v6 != __endptr)
    {
      return v7;
    }
  }

  return a3;
}

uint64_t sub_1000014C4(mem_entry_name_port_t object, mach_vm_size_t size, mach_vm_address_t *a3, int a4)
{
  address = 0;
  result = mach_vm_map(mach_task_self_, &address, size, 0, 1, object, 0, a4 ^ 1, 67, 67, 2u);
  if (!result)
  {
    *a3 = address;
  }

  return result;
}

void *sub_10000153C(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      sub_100001DDC();
    }
  }

  while (sub_100001230());
  return v4;
}

void sub_1000015AC(int a1)
{
  v1 = sub_100001250("Unable to get stashed ports: %d", a1);
  v2 = qword_100008038;
  if (qword_100008038 || (v2 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v2) != 0))
  {
    fprintf(v2, "abort: %s\n", v1);
    sub_100001214(__stderrp, v3, v4, v5, v6, v7, v8, v9, v11);
  }

  v10 = sub_1000011F4();
  sub_100001624(v10);
}

void sub_100001624()
{
  v0 = sub_100001250("Invalid Args");
  v1 = qword_100008038;
  if (qword_100008038 || (v1 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v1) != 0))
  {
    fprintf(v1, "abort: %s\n", v0);
    sub_100001214(__stderrp, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_1000011F4();
  sub_100001698();
}

void sub_100001698()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_1000016B4(_OWORD *a1, uint64_t a2)
{
  sub_1000011BC(a1, a2);
  v4 = sub_100001250("Failed to create SecStaticCodeRef [%d|%s]", v2, v3);
  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v15);
  }

  v13 = sub_1000011F4();
  return sub_100001730(v13);
}

uint64_t sub_100001730(_OWORD *a1, uint64_t a2)
{
  sub_1000011BC(a1, a2);
  v4 = sub_100001250("Failed to create set detatched signature [%d|%s]", v2, v3);
  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v15);
  }

  v13 = sub_1000011F4();
  return sub_1000017AC(v13);
}

uint64_t sub_1000017AC(_OWORD *a1, uint64_t a2)
{
  sub_1000011BC(a1, a2);
  v4 = sub_100001250("Failed to get information [%d|%s]", v2, v3);
  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v15);
  }

  v13 = sub_1000011F4();
  return sub_100001828(v13);
}

uint64_t sub_100001828()
{
  v0 = sub_100001250("Unable to connect to AMFI");
  v1 = qword_100008038;
  if (qword_100008038 || (v1 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v1) != 0))
  {
    fprintf(v1, "abort: %s\n", v0);
    sub_100001214(__stderrp, v2, v3, v4, v5, v6, v7, v8, v11);
  }

  v9 = sub_1000011F4();
  return sub_10000189C(v9);
}

uint64_t sub_10000189C(void *a1)
{
  v1 = [a1 description];
  v2 = sub_100001250("cdhash: %s is not in trust cache", [v1 UTF8String]);

  v3 = qword_100008038;
  if (qword_100008038 || (v3 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v3) != 0))
  {
    fprintf(v3, "abort: %s\n", v2);
    sub_100001214(__stderrp, v4, v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = sub_1000011F4();
  return sub_10000192C(v11);
}

uint64_t sub_10000192C(_OWORD *a1, uint64_t a2)
{
  sub_1000011BC(a1, a2);
  v4 = sub_100001250("Failed to push signature to kernel [%d|%s]", v2, v3);
  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v15);
  }

  v13 = sub_1000011F4();
  return sub_1000019A8(v13);
}

uint64_t sub_1000019A8(void *a1, int a2)
{
  v3 = [a1 description];
  v4 = sub_100001250("Unknown error (%d) checking cdhash %s", a2, [v3 UTF8String]);

  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v15);
  }

  v13 = sub_1000011F4();
  return sub_100001A3C(v13);
}

uint64_t sub_100001A3C()
{
  v0 = sub_100001250("Unable to find AMFI");
  v1 = qword_100008038;
  if (qword_100008038 || (v1 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v1) != 0))
  {
    fprintf(v1, "abort: %s\n", v0);
    sub_100001214(__stderrp, v2, v3, v4, v5, v6, v7, v8, v11);
  }

  v9 = sub_1000011F4();
  return sub_100001AB0(v9);
}

uint64_t sub_100001AB0(_OWORD *a1, uint64_t a2)
{
  sub_1000011BC(a1, a2);
  v4 = sub_100001250("Failed to verify codedirectory [%d|%s]", v2, v3);
  v5 = qword_100008038;
  if (qword_100008038 || (v5 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v5) != 0))
  {
    fprintf(v5, "abort: %s\n", v4);
    sub_100001214(__stderrp, v6, v7, v8, v9, v10, v11, v12, v14);
  }

  sub_1000011F4();
  return sub_100001B2C();
}

uint64_t sub_100001B2C()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = sub_100001250("failed to stat fd [%d|%s]", v0, v2);
  v4 = qword_100008038;
  if (qword_100008038 || (v4 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v4) != 0))
  {
    fprintf(v4, "abort: %s\n", v3);
    sub_100001214(__stderrp, v5, v6, v7, v8, v9, v10, v11, v14);
  }

  v12 = sub_1000011F4();
  return sub_100001BB8(v12);
}

uint64_t sub_100001BB8()
{
  v0 = sub_100001250("launchd port not valid");
  v1 = qword_100008038;
  if (qword_100008038 || (v1 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v1) != 0))
  {
    fprintf(v1, "abort: %s\n", v0);
    sub_100001214(__stderrp, v2, v3, v4, v5, v6, v7, v8, v11);
  }

  v9 = sub_1000011F4();
  return sub_100001C2C(v9);
}

uint64_t sub_100001C2C(int a1)
{
  v1 = sub_100001250("Unable to map launchd memory: %d", a1);
  v2 = qword_100008038;
  if (qword_100008038 || (v2 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v2) != 0))
  {
    fprintf(v2, "abort: %s\n", v1);
    sub_100001214(__stderrp, v3, v4, v5, v6, v7, v8, v9, v12);
  }

  v10 = sub_1000011F4();
  return sub_100001CA4(v10);
}

void sub_100001CC4()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = sub_100001250("failed mmap [%d|%s]", v0, v2);
  v4 = qword_100008038;
  if (qword_100008038 || (v4 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v4) != 0))
  {
    fprintf(v4, "abort: %s\n", v3);
    sub_100001214(__stderrp, v5, v6, v7, v8, v9, v10, v11, v13);
  }

  v12 = sub_1000011F4();
  sub_100001D50(v12);
}

void sub_100001D50()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = sub_100001250("Failed to open fd [%d|%s]", v0, v2);
  v4 = qword_100008038;
  if (qword_100008038 || (v4 = fopen("/var/log/com.apple.xpc.launchd/launchd_cache_loader.log", "w"), (qword_100008038 = v4) != 0))
  {
    fprintf(v4, "abort: %s\n", v3);
    sub_100001214(__stderrp, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  sub_1000011F4();
  sub_100001DDC();
}

void sub_100001DDC()
{
  _os_assert_log();
  v0 = _os_crash();
  __break(1u);
  CFRelease(v0);
}