uint64_t sub_100000920(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 65) >= 6)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1 - 55;
  }

  if ((a1 - 97) <= 5)
  {
    v3 = a1 - 87;
  }

  else
  {
    v3 = v2;
  }

  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100000950(char *a1, _BYTE *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = 1;
    while (1)
    {
      v4 = *a1;
      v5 = v4 - 48;
      if ((v4 - 48) <= 9)
      {
        goto LABEL_6;
      }

      if ((v4 - 97) <= 5)
      {
        break;
      }

      if ((v4 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v5) = v4 - 55;
      if (v4 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_7:
      v6 = a1[1];
      v7 = v6 - 48;
      if ((v6 - 48) <= 9)
      {
        goto LABEL_10;
      }

      if ((v6 - 97) <= 5)
      {
        v7 = v6 - 87;
LABEL_10:
        if (v7 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_11;
      }

      if ((v6 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v7) = v6 - 55;
      if (v6 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_11:
      *a2++ = v7 | (16 * v5);
      a1 += 2;
      v8 = v3++;
      if (v8 >= a3)
      {
        return 0;
      }
    }

    v5 = v4 - 87;
LABEL_6:
    if (v5 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  return 0;
}

char *sub_1000009FC(char *__s1)
{
  if (*__s1 == 47)
  {

    return strdup(__s1);
  }

  else
  {
    v3 = malloc_type_malloc(0x80uLL, 0x1CB5DA7EuLL);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = 128;
    while (1)
    {
      v6 = getcwd(v4, v5);
      if (v6)
      {
        break;
      }

      free(v4);
      if (*__error() == 34)
      {
        v5 *= 2;
        v4 = malloc_type_malloc(v5, 0x1CB5DA7EuLL);
        if (v4)
        {
          continue;
        }
      }

      return 0;
    }

    v8 = v6;
    v9 = strlen(v6);
    v10 = strlen(__s1);
    v11 = malloc_type_malloc(v9 + v10 + 2, 0xBA63DDAAuLL);
    v7 = v11;
    if (v11)
    {
      memcpy(v11, v8, v9);
      v7[v9] = 47;
      memcpy(&v7[v9 + 1], __s1, v10);
      v7[v9 + 1 + v10] = 0;
    }

    free(v4);
    return v7;
  }
}

uint64_t sub_100000B4C(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (dword_100020000 <= result)
  {
    v8 = &v10[__sprintf_chk(v10, 0, 0x400uLL, "%s - hexdump(len=%lu):\n", a2, a4)];
    if (a5)
    {
      if (a4)
      {
        v9 = 0;
        do
        {
          v8 += sprintf(v8, "%02x ", *(a3 + v9++));
          if ((v9 & 0xF) == 0)
          {
            *v8 = 10;
          }
        }

        while (a4 != v9);
      }
    }

    else
    {
      strcpy(v8, " [REMOVED]");
    }

    return asl_log(0, 0, 5, "%s\n", v10);
  }

  return result;
}

uint64_t sub_100000C90(uint64_t result, const char *a2, char *a3, unint64_t a4, int a5)
{
  if (dword_100020000 > result)
  {
    return result;
  }

  if (dword_10002010C)
  {
    v25.tv_sec = 0;
    *&v25.tv_usec = 0;
    gettimeofday(&v25, 0);
    v9 = localtime(&v25.tv_sec);
    if (!strftime(__str, 0x10uLL, "%b %d %H:%M:%S", v9))
    {
      snprintf(__str, 0x10uLL, "%u", LODWORD(v25.tv_sec));
    }

    v10 = __sprintf_chk(v26, 0, 0x400uLL, "%s.%06u: ", __str, v25.tv_usec);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v26[v10];
  if (!a5)
  {
    sprintf(&v26[v10], "%s - hexdump_ascii(len=%lu): [REMOVED]\n", a2, a4);
    return asl_log(0, 0, 5, "%s\n", v26);
  }

  result = sprintf(&v26[v10], "%s - hexdump_ascii(len=%lu):\n", a2, a4);
  if (!a4)
  {
    return result;
  }

  v12 = &v11[result];
  do
  {
    if (a4 >= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = a4;
    }

    strcpy(v12, "    ");
    v14 = v12 + 4;
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = v15;
    v24 = a3;
    do
    {
      v17 = *a3++;
      v14 += sprintf(v14, " %02x", v17);
      --v16;
    }

    while (v16);
    if (a4 <= 0xF)
    {
      v18 = v13 - 16;
      do
      {
        *v14 = 2105376;
        v14 += 3;
        v19 = __CFADD__(v18++, 1);
      }

      while (!v19);
    }

    *v14 = 2105376;
    v12 = v14 + 3;
    v20 = v24;
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v22 < 0)
      {
        if (__maskrune(v21, 0x40000uLL))
        {
LABEL_25:
          *v12 = v21;
          v12[1] = 0;
          goto LABEL_28;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v21] & 0x40000) != 0)
      {
        goto LABEL_25;
      }

      *v12 = 95;
LABEL_28:
      ++v12;
      --v15;
    }

    while (v15);
    if (a4 <= 0xF)
    {
      v23 = v13 - 16;
      do
      {
        *v12++ = 32;
        v19 = __CFADD__(v23++, 1);
      }

      while (!v19);
    }

    result = asl_log(0, 0, 5, "%s\n", v26);
    a3 = &v24[v13];
    a4 -= v13;
  }

  while (a4);
  return result;
}

uint64_t sub_100000F28(int a1, char *__filename, uint64_t a3)
{
  v5 = fopen(__filename, "r");
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  if (!feof(v5))
  {
    v8 = "\t";
    if (a1 == 32)
    {
      v8 = " ";
    }

    if (a1 == 61)
    {
      v9 = "=";
    }

    else
    {
      v9 = v8;
    }

    do
    {
      fgets(v21, 255, v6);
      if (feof(v6))
      {
        break;
      }

      v10 = strchr(v21, 10);
      if (v10)
      {
        *v10 = 0;
      }

      if (v21[0] != 35)
      {
        v11 = strstr(v21, "setenv ");
        if (v11)
        {
          v12 = v11 + 7;
        }

        else
        {
          v12 = v21;
        }

        v13 = strstr(v12, v9);
        if (v13)
        {
          v14 = v13;
          v15 = (a3 + 16 * v7);
          *v13 = 0;
          v16 = strlen(v12);
          v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
          *v15 = v17;
          if (v17)
          {
            v18 = strlen(v14 + 1);
            v19 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
            v15[1] = v19;
            if (v19)
            {
              strcpy(*v15, v12);
              strcpy(v15[1], v14 + 1);
              v7 = (v7 + 1);
            }
          }
        }
      }
    }

    while (!feof(v6));
  }

  fclose(v6);
  return v7;
}

const char *sub_1000010F0(const char *a1, char a2)
{
  v4 = strlen(a1);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (a1[v5] == a2)
    {
      if ((v4 & 0x7FFFFFFF) == ++v5)
      {
        LODWORD(v5) = v4;
        break;
      }
    }

    v5 = v5;
    while (a1[v4 - 1] == a2)
    {
      v6 = __OFSUB__(v4--, 1);
      if ((v4 < 0) ^ v6 | (v4 == 0))
      {
        v4 = 0;
        break;
      }
    }
  }

  a1[v4] = 0;
  return &a1[v5];
}

char *sub_100001178(char *__s2, char *a2, uint64_t a3, int a4)
{
  memset(v11, 0, sizeof(v11));
  if (a4 < 1)
  {
    return 0;
  }

  v6 = a4;
  for (i = (a3 + 8); strcmp(*(i - 1), __s2); i += 2)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  v8 = *i;
  __strcpy_chk();
  v9 = sub_1000010F0(v11, 34);
  strcpy(a2, v9);
  return a2;
}

uint64_t sub_100001264(char *a1, int a2, _BYTE *a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    while (1)
    {
      v4 = *a1;
      v5 = v4 - 48;
      if ((v4 - 48) <= 9)
      {
        goto LABEL_6;
      }

      if ((v4 - 97) <= 5)
      {
        break;
      }

      if ((v4 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v5) = v4 - 55;
      if (v4 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_7:
      v6 = a1[1];
      v7 = v6 - 48;
      if ((v6 - 48) <= 9)
      {
        goto LABEL_10;
      }

      if ((v6 - 97) <= 5)
      {
        v7 = v6 - 87;
LABEL_10:
        if (v7 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_11;
      }

      if ((v6 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v7) = v6 - 55;
      if (v6 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_11:
      *a3++ = v7 + 16 * v5;
      a1 += 2;
      if (!--v3)
      {
        return 0;
      }
    }

    v5 = v4 - 87;
LABEL_6:
    if (v5 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  return 0;
}

void *sub_10000130C(int a1)
{
  v1 = a1;
  v2 = malloc_type_malloc(a1, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, v1);
  }

  return v3;
}

uint64_t sub_10000135C(void *a1, int a2)
{
  if (a1)
  {
    bzero(a1, a2);
    free(a1);
  }

  return 0;
}

uint64_t sub_100001398(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = (a1 + 8);
    do
    {
      free(*(v3 - 1));
      v4 = *v3;
      v3 += 2;
      free(v4);
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000013E4(int a1, const std::__fs::filesystem::path *__filename, const char *a3, const char *a4, const char *a5)
{
  result = fopen(__filename, "r");
  if (result)
  {
    v11 = result;
    __strcpy_chk();
    __strcat_chk();
    result = fopen(__filenamea, "w");
    if (result)
    {
      v12 = result;
      if (a1 == 32)
      {
        v13 = 32;
      }

      else
      {
        v13 = 9;
      }

      if (a1 == 61)
      {
        v14 = 61;
      }

      else
      {
        v14 = v13;
      }

      if (feof(v11))
      {
        goto LABEL_10;
      }

      v15 = 0;
      do
      {
        fgets(__s1, 1024, v11);
        __strcpy_chk();
        __strcat_chk();
        v16 = strlen(__s);
        if (!strncmp(__s1, __s, v16))
        {
          puts("finding");
          if (!feof(v11))
          {
            fprintf(v12, "%s%s%c%s\n", a3, a4, v14, a5);
          }

          v15 = 1;
        }

        else if (!feof(v11))
        {
          fputs(__s1, v12);
        }
      }

      while (!feof(v11));
      if (!v15)
      {
LABEL_10:
        fprintf(v12, "%s%s%c%s\n", a3, a4, v14, a5);
      }

      fclose(v11);
      fclose(v12);
      unlink(__filename);
      rename(__filenamea, __filename, v17);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000015DC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  asl_log(0, 0, 5, "Reading configuration file '%s'\n", v0);
  v6 = sub_100000F28(61, v5, v32);
  if (v6)
  {
    v7 = v6;
    v8 = &v4[v2];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
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
    sub_100001178("SSID", &v16, v32, v6);
    v9 = snprintf(v4, v2, "SSID=%s\n", &v16);
    v16 = 0u;
    v17 = 0u;
    v10 = &v4[v9];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
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
    sub_100001178("WAI", &v16, v32, v7);
    v11 = snprintf(v10, v2 - v9, "WAI=%s\n", &v16);
    v16 = 0u;
    v17 = 0u;
    v12 = &v10[v11];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
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
    sub_100001178("WPI", &v16, v32, v7);
    v13 = snprintf(v12, v8 - v12, "WPI=%s\n", &v16);
    v16 = 0u;
    v17 = 0u;
    v14 = &v12[v13];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
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
    sub_100001178("PSK_KEY_TYPE", &v16, v32, v7);
    LODWORD(v14) = v14 + snprintf(v14, v8 - v14, "PSK_KEY_TYPE=%s\n", &v16);
    sub_100001398(v32, v7);
    return (v14 - v4);
  }

  else
  {
    asl_log(0, 0, 5, "no keys and values pair in configuration file '%s'\n", v5);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001848(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v6 = __rev16(*(a2 + 2));
  switch(v6)
  {
    case 3u:
      sub_100000B44(1, "STATUS Req", a2, a3);
      v8 = lib_get_wapi_state() - 1;
      if (v8 > 9)
      {
        v9 = 0;
      }

      else
      {
        v9 = byte_100018040[v8];
      }

      *(a2 + 8) = v9;
      *(a2 + 9) = 0;
      *(a2 + 6) = 512;
      v7 = 10;
      sub_100000B44(1, "STATUS Res", a2, 10);
      break;
    case 0x214u:
      asl_log(0, 0, 5, "certificate verify result: %d\n\n", 0);
      *(a2 + 2) = 5378;
      *(a2 + 6) = 512;
      v7 = 10;
      break;
    case 0x212u:
      sub_100003788(a1);
      *(a2 + 2) = 4866;
      *(a2 + 6) = 0;
      usleep(0x7D0u);
      v7 = 8;
      break;
    default:
      v7 = 0;
      break;
  }

  *a4 = v6;
  return v7;
}

uint64_t sub_100001968(uint64_t a1)
{
  *(a1 + 204) = -1;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    perror("socket(PF_INET)");
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  *&v5.sa_len = 512;
  *&v5.sa_data[6] = 0;
  *&v5.sa_data[2] = inet_addr("127.0.0.1");
  *v5.sa_data = 10787;
  if (bind(v3, &v5, 0x10u) < 0)
  {
    perror("bind(AF_INET)");
    close(v3);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 204) = v3;
  sub_100001CA4(v3, sub_100001A70, a1, 0);
  return 0;
}

void sub_100001A70(int a1, uint64_t a2)
{
  *&v9.sa_len = 0;
  *&v9.sa_data[6] = 0;
  v8 = 16;
  v4 = recvfrom(a1, v10, 0x7CFuLL, 0, &v9, &v8);
  v5 = v4;
  if (v4 < 0)
  {
    perror("recvfrom(ctrl_iface)");
  }

  else
  {
    sub_100000B44(1, "From CGI", v10, v4 & 0x7FFFFFFF);
    v6 = sub_100001848(a2, v10, v5, &v7);
    if (v6)
    {
      sendto(a1, v10, v6, 0, &v9, v8);
    }
  }
}

uint64_t sub_100001B5C(uint64_t a1)
{
  result = *(a1 + 200);
  if ((result & 0x80000000) == 0)
  {
    sub_100001E64(result);
    result = close(*(a1 + 200));
    *(a1 + 200) = -1;
  }

  return result;
}

uint64_t sub_100001B98(uint64_t a1)
{
  result = *(a1 + 204);
  if ((result & 0x80000000) == 0)
  {
    sub_100001E64(result);
    result = close(*(a1 + 204));
    *(a1 + 204) = -1;
  }

  return result;
}

double sub_100001BD4(uint64_t a1)
{
  qword_100020248 = 0;
  result = 0.0;
  unk_100020208 = 0u;
  unk_1000201F8 = 0u;
  unk_1000201E8 = 0u;
  unk_1000201D8 = 0u;
  unk_1000201C8 = 0u;
  unk_1000201B8 = 0u;
  unk_1000201A8 = 0u;
  unk_100020198 = 0u;
  unk_100020188 = 0u;
  unk_100020178 = 0u;
  unk_100020168 = 0u;
  unk_100020158 = 0u;
  *&byte_100020148 = 0u;
  unk_100020138 = 0u;
  unk_100020128 = 0u;
  qword_100020110 = a1;
  xmmword_100020118 = 0u;
  xmmword_100020228 = 0u;
  unk_100020238 = 0u;
  xmmword_100020218 = 0u;
  return result;
}

uint64_t sub_100001C34(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  asl_log(0, 0, 5, "%s\n", "runloopReadSockCallback");
  Native = CFSocketGetNative(a1);
  v8 = *(a5 + 8);
  v9 = *(a5 + 16);
  v10 = *a5;

  return v10(Native, v8, v9);
}

uint64_t sub_100001CA4(CFSocketNativeHandle a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = a1;
  Current = CFRunLoopGetCurrent();
  asl_log(0, 0, 5, "%s, %p\n", "eloop_register_read_sock", Current);
  v9 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v9;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = CFSocketCreateWithNative(kCFAllocatorDefault, a1, 1uLL, sub_100001C34, &context);
  if (!v10)
  {
    asl_log(0, 0, 5, "%s, CFSocketCreateWithNative failed!\n\n", "eloop_register_read_sock");
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, v10, 0);
  if (!RunLoopSource)
  {
    asl_log(0, 0, 5, "%s, CFSocketCreateRunLoopSource failed!\n\n", "eloop_register_read_sock");
    CFRelease(v11);
    return 0xFFFFFFFFLL;
  }

  v13 = RunLoopSource;
  v14 = CFRunLoopGetCurrent();
  CFRunLoopAddSource(v14, v13, kCFRunLoopDefaultMode);
  CFRelease(v13);
  if (qword_100020750 || (qword_100020750 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
  {
    v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v15)
    {
      v16 = v15;
      CFDictionaryAddValue(qword_100020750, v15, v11);
      CFRelease(v16);
    }
  }

  CFRelease(v11);
  return 0;
}

void sub_100001E64(int a1)
{
  valuePtr = a1;
  if (qword_100020750)
  {
    v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(qword_100020750, v1);
      if (Value)
      {
        v4 = Value;
        CFSocketInvalidate(Value);
        CFDictionaryRemoveValue(qword_100020750, v4);
      }

      CFRelease(v2);
    }
  }
}

uint64_t sub_100001EF8(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v19.version = 0;
  memset(&v19.retain, 0, 24);
  v19.info = v10;
  *v10 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v11 = malloc_type_malloc(0x18uLL, 0x100004077774924uLL);
  *v11 = a3;
  *(v11 + 1) = a4;
  *(v11 + 2) = a5;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = CFRunLoopTimerCreate(kCFAllocatorDefault, a2 / 1000000.0 + Current + a1, 0.0, 0, 0, sub_100001EEC, &v19);
  if (v13)
  {
    v14 = v13;
    v15 = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(v15, v14, kCFRunLoopDefaultMode);
    if (qword_100020758 || (qword_100020758 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
    {
      v16 = CFDataCreate(kCFAllocatorDefault, v11, 24);
      if (v16)
      {
        v17 = v16;
        CFDictionaryAddValue(qword_100020758, v16, v14);
        CFRelease(v17);
      }
    }

    CFRelease(v14);
  }

  free(v11);
  return 0;
}

CFIndex sub_10000207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == -1)
  {
    asl_log(0, 0, 5, "cancel ELOOP_ALL_CTX requested\n");
    Count = CFDictionaryGetCount(qword_100020758);
    v12 = __chkstk_darwin();
    v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFF0));
    if (((8 * v12) & 0x7FFFFFE00) != 0)
    {
      v15 = 512;
    }

    else
    {
      v15 = v13;
    }

    bzero(&v18 - ((v13 + 15) & 0xFFFFFFFF0), v15);
    CFDictionaryGetKeysAndValues(qword_100020758, 0, v14);
    if (Count >= 1)
    {
      v16 = Count & 0x7FFFFFFF;
      do
      {
        if (*v14)
        {
          asl_log(0, 0, 5, "cancelling timer %p\n", *v14);
          CFRunLoopTimerInvalidate(*v14);
        }

        ++v14;
        --v16;
      }

      while (v16);
    }

    CFDictionaryRemoveAllValues(qword_100020758);
  }

  else
  {
    v6 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
    *v6 = a1;
    v6[1] = a2;
    v6[2] = a3;
    v7 = malloc_type_malloc(0x18uLL, 0x100004077774924uLL);
    *v7 = a1;
    *(v7 + 1) = a2;
    *(v7 + 2) = a3;
    if (qword_100020758 && (v8 = CFDataCreate(kCFAllocatorDefault, v7, 24)) != 0)
    {
      v9 = v8;
      Value = CFDictionaryGetValue(qword_100020758, v8);
      Count = Value;
      if (Value)
      {
        CFRunLoopTimerInvalidate(Value);
        CFDictionaryRemoveValue(qword_100020750, Count);
        Count = 1;
      }

      CFRelease(v9);
    }

    else
    {
      Count = 0;
    }

    free(v7);
    free(v6);
  }

  return Count;
}

void sub_100002298(int a1)
{
  v4 = a1;
  asl_log(0, 0, 5, "%s, signal = %d\n", "eloop_handle_signals", a1);
  Current = CFRunLoopGetCurrent();
  if (a1 == 1)
  {
    asl_log(0, 0, 5, "%s, stopping the run loop %p\n", "eloop_handle_signals", Current);
    v3 = CFRunLoopGetCurrent();
    CFRunLoopStop(v3);
    pthread_exit(&v4);
  }

  CFRunLoopStop(Current);
}

uint64_t sub_100002330(int a1)
{
  asl_log(0, 0, 5, "%s, signal = %d\n", "eloop_register_signal", a1);
  signal(a1, sub_100002298);
  return 0;
}

uint64_t sub_100002398()
{
  Current = CFRunLoopGetCurrent();
  asl_log(0, 0, 5, "eloop_run %p\n", Current);
  CFRunLoopRun();
  return asl_log(0, 0, 5, "eloop_run done\n");
}

uint64_t sub_100002420()
{
  wapi_state = lib_get_wapi_state();
  result = asl_log(0, 0, 5, "%s: wapi state = %d\n", "wapi_supplicant_watchdog", wapi_state);
  if (wapi_state <= 6)
  {
    exit(0);
  }

  return result;
}

uint64_t start(int a1, char *const *a2)
{
  sp = 0;
  v4 = bootstrap_check_in(bootstrap_port, "com.apple.wapi.client", &sp);
  if (!v4)
  {
    asl_log(0, 0, 5, "%s started..\n", *a2);
    v18 = mach_msg_server(sub_10000881C, 0x9Cu, sp, 0);
    v19 = v18;
    if (v18)
    {
      v20 = mach_error_string(v18);
      asl_log(0, 0, 5, "mach_msg_server(mp): %s\n", v20);
    }

    exit(v19);
  }

  printf("Not invoked via launchd (%d);\n", v4);
  v5 = sub_10000321C();
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  sub_100001BD4(v5);
  v7 = getopt(a1, a2, "Bc:D:dehi:KLNqtvw");
  if (v7 < 0)
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
LABEL_27:
    if (!WIFI_lib_init())
    {
      if (sub_100003378(v6, v10, 0, v9))
      {
        return 0xFFFFFFFFLL;
      }

      if (!sub_10000354C(v6, v8))
      {
        sub_100003960(v6, 0, 0x186A0u, v12, v13, v14, v15, v16);
        sub_100002330(2);
        sub_100002330(15);
        sub_100002330(1);
        sub_100002398();
        sub_100003C38(v6);
      }
    }

    sub_100003274(v6);
    free(v6);
    WIFI_lib_exit();
    sub_100002400();
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v7 <= 104)
    {
      if (v7 <= 98)
      {
        if (v7 != 66)
        {
          if (v7 != 75)
          {
            goto LABEL_32;
          }

          ++dword_100020108;
        }

        goto LABEL_24;
      }

      if (v7 == 99)
      {
        v10 = optarg;
        goto LABEL_24;
      }

      if (v7 != 100)
      {
        goto LABEL_32;
      }

      v11 = dword_100020000 - 1;
LABEL_20:
      dword_100020000 = v11;
      goto LABEL_24;
    }

    if (v7 <= 115)
    {
      if (v7 == 105)
      {
        v9 = optarg;
        goto LABEL_24;
      }

      if (v7 != 113)
      {
        goto LABEL_32;
      }

      v11 = dword_100020000 + 1;
      goto LABEL_20;
    }

    if (v7 == 116)
    {
      ++dword_10002010C;
      goto LABEL_24;
    }

    if (v7 != 119)
    {
      break;
    }

    ++v8;
LABEL_24:
    v7 = getopt(a1, a2, "Bc:D:dehi:KLNqtvw");
    if (v7 < 0)
    {
      goto LABEL_27;
    }
  }

  if (v7 == 118)
  {
    sub_100003210();
  }

  else
  {
LABEL_32:
    sub_100003174();
  }

  return 0xFFFFFFFFLL;
}

void sub_100002784(int a1, uint64_t a2)
{
  asl_log(0, 0, 5, "Signal %d received - reconfiguring\n", a1);
  if ((sub_100003788(a2) & 0x80000000) != 0)
  {

    sub_1000023F0();
  }
}

char *sub_1000027F4()
{
  v0 = __chkstk_darwin();
  asl_log(0, 0, 5, "%s\n", "wapi_config_init");
  v1 = malloc_type_malloc(0x68uLL, 0x1010040FC24F789uLL);
  v2 = v1;
  if (v1)
  {
    memset(v34, 0, 512);
    *(v1 + 12) = 0;
    *(v1 + 4) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    asl_log(0, 0, 5, "Parsing configuration file dictionary\n");
    Count = CFDictionaryGetCount(v0);
    asl_log(0, 0, 5, "%s; prop_count %d\n", "wapi_config_init", Count);
    if (!Count)
    {
      asl_log(0, 0, 5, "no keys and values pair in configuration dictionary\n");
      goto LABEL_51;
    }

    *(v2 + 23) = 0;
    v4 = *(v2 + 12);
    if (v4)
    {
      free(v4);
      *(v2 + 12) = 0;
    }

    Value = CFDictionaryGetValue(v0, @"PRIVATE_MAC_ADDRESS");
    if (Value)
    {
      v6 = Value;
      asl_log(0, 0, 5, "%s WFMacRandomisation : Parsing Private MAC dictionary\n", "wapi_config_init");
      v7 = CFDictionaryGetValue(v6, @"PRIVATE_MAC_ADDRESS_VALID");
      if (v7)
      {
        if (v7 == kCFBooleanTrue)
        {
          v8 = CFDictionaryGetValue(v6, @"PRIVATE_MAC_ADDRESS_VALUE");
          if (v8)
          {
            v9 = v8;
            if (CFDataGetLength(v8) == 6)
            {
              *(v2 + 23) = 1;
              v10 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
              *(v2 + 12) = v10;
              BytePtr = CFDataGetBytePtr(v9);
              v12 = *BytePtr;
              v10[2] = *(BytePtr + 2);
              *v10 = v12;
              v13 = *(v2 + 12);
              asl_log(0, 0, 5, "%s WFMacRandomisation : Private MAC address being configured :  %02x:%02x:%02x:%02x:%02x:%02x\n \n", "wapi_config_init", *v13, v13[1], v13[2], v13[3], v13[4], v13[5]);
            }
          }
        }
      }
    }

    v14 = CFDictionaryGetValue(v0, @"WAPI");
    if (v14)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v14, kCFNumberIntType, &valuePtr))
      {
        *(v2 + 13) = valuePtr;
      }
    }

    asl_log(0, 0, 5, "%s; config->wapi_policy %x\n", "wapi_config_init", *(v2 + 13));
    v15 = *(v2 + 13);
    if ((v15 & 8) != 0)
    {
      v16 = 1;
    }

    else
    {
      if ((v15 & 4) == 0)
      {
        v16 = 0;
        LODWORD(v34[0]) = 0;
        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v16 = 2;
    }

    LODWORD(v34[0]) = v16;
LABEL_22:
    *(v2 + 60) = 0x1000000010;
LABEL_23:
    v17 = CFDictionaryGetValue(v0, @"SSID_STR");
    if (v17)
    {
      v18 = v17;
      *(v2 + 1) = CFStringGetLength(v17);
      v19 = malloc_type_malloc(0x20uLL, 0x5E91F8FBuLL);
      if (CFStringGetCString(v18, v19, 32, 0x8000100u))
      {
        v20 = strdup(v19);
        *v2 = v20;
      }

      else
      {
        v20 = *v2;
      }

      asl_log(0, 0, 5, "%s: SSID=%s (%d)\n", "wapi_config_init", v20, *(v2 + 1));
      free(v19);
    }

    v21 = CFDictionaryGetValue(v0, @"PSK_KEY_TYPE");
    if (v21)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v21, kCFNumberIntType, &valuePtr))
      {
        v22 = valuePtr;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    asl_log(0, 0, 5, "PSK_KEY_TYPE '%d'\n", v22);
    if (v16 != 1)
    {
LABEL_45:
      if (v16 == 1)
      {
LABEL_50:
        WAI_CNTAPPARA_SET(v34);
        return v2;
      }

      if (v16 != 2)
      {
        goto LABEL_51;
      }

LABEL_47:
      v30 = CFDictionaryGetValue(v0, @"PSK");
      if (v30)
      {
        v31 = v30;
        DWORD1(v34[0]) = v22;
        DWORD2(v34[0]) = CFStringGetLength(v30);
        if (!CFStringGetCString(v31, (v34 | 0xC), 128, 0x8000100u))
        {
          asl_log(0, 0, 5, "unable to get PSK '%s'\n");
          goto LABEL_51;
        }

        sub_100000F1C(1, "PSK ", (v34 | 0xC), DWORD2(v34[0]));
      }

      goto LABEL_50;
    }

    LOWORD(qword_100020248) = 1;
    v23 = CFDictionaryGetValue(v0, @"CERT");
    if (v23)
    {
      v24 = v23;
      Length = CFStringGetLength(v23);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v27 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding >= 1)
      {
        v28 = malloc_type_malloc(MaximumSizeForEncoding & 0x7FFFFFFF, 0x100004077774924uLL);
        bzero(v28, v27 & 0x7FFFFFFF);
        if (!CFStringGetCString(v24, v28, v27 & 0x7FFFFFFF, 0x8000100u))
        {
          asl_log(0, 0, 5, "Could not decode cert from string!\n");
          goto LABEL_42;
        }

        v29 = strlen(v28);
        if (sub_1000052C8(v28, v29, v35, 2048, v34 + 4, 2048))
        {
          asl_log(0, 0, 5, "Could not parse cert data!\n");
LABEL_42:
          free(v28);
          goto LABEL_51;
        }

        sub_100000B44(4, "User cert: ", v35, 128);
        free(v28);
      }

      v16 = v34[0];
      goto LABEL_45;
    }

    asl_log(0, 0, 5, "WAPI Certificate mode but there is no certificate!\n");
    if ((v2[52] & 4) != 0)
    {
      asl_log(0, 0, 5, "Trying PSK\n");
      LODWORD(v34[0]) = 2;
      goto LABEL_47;
    }

LABEL_51:
    free(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_100002DD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pthread_self();
  asl_log(0, 0, 5, "%s thread %p\n", "run_wapi_thread", v3);
  if (v2)
  {
    sub_100001BD4(v2);
    asl_log(0, 0, 5, "%s ifname=%s\n", "run_wapi_thread", (a1 + 4));
    if (WIFI_lib_init())
    {
      asl_log(0, 0, 5, "%s wapic already initialized..reconfiguring\n", "run_wapi_thread");
LABEL_4:
      v4 = *(a1 + 24);
      v5 = sub_1000027F4();
      v2[16] = v5;
      if (v5 && !sub_10000354C(v2, 1))
      {
        v6 = getpwnam("mobile");
        if (v6)
        {
          if (setuid(v6->pw_uid))
          {
            asl_log(0, 0, 5, "%s ERROR: unabled to switch to mobile user\n");
          }
        }

        else
        {
          asl_log(0, 0, 5, "%s ERROR:to getpwnam() \n");
        }

        if (*(a1 + 24))
        {
          asl_log(0, 0, 5, "%s calling  wpa_drv_set_scan_result wpa_s = %p\n", "run_wapi_thread", v2);
          v12 = *(v2[23] + 120);
          if (v12)
          {
            v12(v2[20], *(a1 + 24));
          }
        }

        else
        {
          sub_100003960(v2, 0, 0x186A0u, v7, v8, v9, v10, v11);
        }

        sub_100002330(2);
        sub_100002330(15);
        sub_100001EF8(0x10u, 0, sub_100002420, *(a1 + 32), 0);
        sub_100002330(1);
        sub_100002398();
        asl_log(0, 0, 5, "%s done...\n", "run_wapi_thread");
      }

      dword_100020100 = -1;
      free(a1);
      free(v2);
      WIFI_lib_exit();
      sub_100002400();
    }

    if (!sub_100003378(v2, 0, 0, (a1 + 4)))
    {
      goto LABEL_4;
    }

    asl_log(0, 0, 5, "%s wapi_asue_init failed\n", "run_wapi_thread");
  }

  return -1;
}

uint64_t sub_100003084(uint64_t a1)
{
  if (a1)
  {
    sub_10000135C(*a1, *(a1 + 12));
    sub_10000135C(a1, 24);
  }

  return 0;
}

void sub_1000030C8(uint64_t a1)
{
  *(a1 + 250) = 0;
  v2 = *(a1 + 256);
  if (v2)
  {
    free(v2);
    *(a1 + 256) = 0;
  }
}

void *sub_1000030FC(uint64_t a1, const void *a2, int a3)
{
  v6 = *(a1 + 256);
  if (v6)
  {
    free(v6);
    *(a1 + 256) = 0;
  }

  result = malloc_type_malloc(a3, 0xD2698177uLL);
  *(a1 + 256) = result;
  if (result)
  {
    bzero(result, a3);
    result = memcpy(*(a1 + 256), a2, a3);
    *(a1 + 250) = a3;
  }

  return result;
}

uint64_t sub_100003174()
{
  printf("%s\n\nusage:\n  %s [-BddehqqvwW] [-P<pid file>] [-g<global ctrl>] \\\n        -i<ifname> -c<config file> [-C<ctrl>]\ndrivers:\n", "wapi_ASUE v1.1.0\nCopyright (c) 2006-2008, Iwncomm Ltd.", "wapic");
  v0 = off_100020008;
  if (off_100020008)
  {
    v1 = &qword_100020010;
    do
    {
      printf("  %s = %s\n", *v0, v0[1]);
      v2 = *v1++;
      v0 = v2;
    }

    while (v2);
  }

  puts("options:\n  -B = run daemon in the background\n  -c = Configuration file\n  -C = ctrl_interface parameter (only used if -c is not)\n  -i = interface name\n  -d = increase debugging verbosity (-dd even more)\n  -K = include keys (passwords, etc.) in debug output\n  -t = include timestamp in debug messages\n  -h = show this help text\n  -p = driver parameters\n  -P = PID file\n  -q = decrease debugging verbosity (-qq even less)\n  -v = show version\n  -w = wait for interface to be added, if needed\n  -W = wait for a control interface monitor before starting");

  return puts("example:\n  wapic -i wlan0 -c /etc/wapi.conf");
}

void *sub_10000321C()
{
  result = qword_100020760;
  if (!qword_100020760)
  {
    result = malloc_type_malloc(0x310uLL, 0x10B004078D88A19uLL);
    qword_100020760 = result;
    if (result)
    {
      v1 = result;
      bzero(result, 0x310uLL);
      return v1;
    }
  }

  return result;
}

uint64_t sub_100003274(uint64_t a1)
{
  if (*(a1 + 160))
  {
    v2 = *(*(a1 + 184) + 56);
    if (!v2 || (v3 = v2(), asl_log(0, 0, 5, "WPA: in %s:%d,ret=%d\n", "wpa_drv_set_wpa", 54, v3), v3 < 0))
    {
      fwrite("Failed to disable WPA in the driver.\n", 0x25uLL, 1uLL, __stderrp);
    }

    v4 = *(*(a1 + 184) + 80);
    if (v4)
    {
      v4(*(a1 + 160));
    }
  }

  sub_1000059FC(*a1);
  *a1 = 0;
  sub_100001B98(a1);
  v5 = *(a1 + 128);
  if (v5)
  {
    sub_100004B78(v5);
    *(a1 + 128) = 0;
  }

  free(*(a1 + 120));
  *(a1 + 120) = 0;
  v6 = *(a1 + 168);
  if (v6)
  {
    free(v6);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  sub_1000030C8(a1);
  result = sub_100003084(*(a1 + 216));
  *(a1 + 216) = result;
  return result;
}

uint64_t sub_100003378(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v8 = "default";
  if (a3)
  {
    v8 = a3;
  }

  asl_log(0, 0, 5, "Initializing interface '%s' conf '%s' driver '%s'\n", a4, a2, v8);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = off_100020008;
  if (!off_100020008)
  {
    v12 = "No driver interfaces build into wpa_supplicant.\n";
LABEL_14:
    asl_log(0, 0, 5, v12, v20);
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v10 = &qword_100020010;
    while (strcmp(a3, *v9))
    {
      v11 = *v10++;
      v9 = v11;
      if (!v11)
      {
        v20 = a3;
        v12 = "Unsupported driver '%s'.\n\n";
        goto LABEL_14;
      }
    }
  }

  *(a1 + 184) = v9;
  if (a4)
  {
    if (strlen(a4) < 0x64)
    {
      strncpy((a1 + 20), a4, 0x64uLL);
      v13 = v9[9];
      if (v13)
      {
        v14 = (v13)(a1, a1 + 20);
        *(a1 + 160) = v14;
        if (v14)
        {
          if (a2)
          {
            v15 = sub_1000009FC(a2);
            *(a1 + 120) = v15;
            if (!v15)
            {
              asl_log(0, 0, 5, "Failed to get absolute path for configuration file '%s'.\n");
              return 0xFFFFFFFFLL;
            }

            asl_log(0, 0, 5, "Configuration file '%s' -> '%s'\n", a2, v15);
            v16 = *(a1 + 120);
            v17 = sub_100004C4C();
            *(a1 + 128) = v17;
            if (!v17)
            {
              v19 = *(a1 + 120);
              printf("Failed to read configuration file '%s'.\n");
              return 0xFFFFFFFFLL;
            }
          }

          return 0;
        }
      }

      else
      {
        *(a1 + 160) = 0;
      }

      fwrite("Failed to initialize driver interface\n", 0x26uLL, 1uLL, __stderrp);
    }

    else
    {
      printf("Too long interface name '%s'.\n");
    }
  }

  else
  {
    sub_100003174();
    puts("\nInterface name is required.");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000354C(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 184) + 216);
  if (v4)
  {
    v5 = v4(*(a1 + 160));
    if (v5)
    {
      v6 = v5;
      if (strcmp(v5, (a1 + 20)))
      {
        asl_log(0, 0, 5, "Driver interface replaced interface name with '%s'\n", v6);
        strncpy((a1 + 20), v6, 0x64uLL);
      }
    }
  }

  if (!*a1)
  {
    while (1)
    {
      v11 = *(*(a1 + 184) + 224);
      v12 = v11 ? v11(*(a1 + 160)) : 0;
      v13 = sub_1000056CC((a1 + 20), v12, 34996, sub_1000047E4, a1, 0);
      *a1 = v13;
      if (v13)
      {
        break;
      }

      if (!a2)
      {
        return 0xFFFFFFFFLL;
      }

      puts("Waiting for interface..");
      sleep(5u);
    }

    if (sub_1000055A8(v13, (a1 + 8)))
    {
      v14 = __stderrp;
      v15 = "Failed to get own L2 address\n";
      v16 = 29;
      goto LABEL_20;
    }
  }

  asl_log(0, 0, 5, "Own MAC address: %02x:%02x:%02x:%02x:%02x:%02x\n", *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13));
  asl_log(0, 0, 5, "conf %p\n", *(a1 + 128));
  v7 = *(a1 + 128);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  asl_log(0, 0, 5, "wapi_policy %x\n", *(v7 + 52));
  v8 = *(*(a1 + 184) + 56);
  if (!v8 || (v9 = v8(*(a1 + 160), *(*(a1 + 128) + 52)), asl_log(0, 0, 5, "WPA: in %s:%d,ret=%d\n", "wpa_drv_set_wpa", 54, v9), v9 < 0))
  {
    v14 = __stderrp;
    v15 = "Failed to enable WPA in the driver.\n";
    v16 = 36;
LABEL_20:
    fwrite(v15, v16, 1uLL, v14);
    return 0xFFFFFFFFLL;
  }

  result = sub_100001968(a1);
  if (result)
  {
    puts("Failed to initialize control interface UI.\nYou may have another wpa_supplicant process already running or the file was\nleft by an unclean termination of wpa_supplicant in which case you will need\nto manually remove this file before starting wpa_supplicant again.");
    return 0;
  }

  return result;
}

uint64_t sub_100003788(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = sub_100004C4C();
    if (v2)
    {
      v9 = v2;
      sub_100004B78(*(a1 + 128));
      *(a1 + 128) = v9;
      *(a1 + 148) = *(v9 + 60);
      sub_100003878(v10, v11, "Reconfiguration completed", v12, v13, v14, v15, v16, v20);
      v17 = *(*(a1 + 184) + 56);
      if (v17)
      {
        v18 = v17(*(a1 + 160), *(*(a1 + 128) + 52));
        asl_log(0, 0, 5, "WPA: in %s:%d,ret=%d\n", "wpa_drv_set_wpa", 54, v18);
        if ((v18 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      fwrite("Failed to enable WPA in the driver.\n", 0x24uLL, 1uLL, __stderrp);
    }

    else
    {
      sub_100003878(0, v3, "Failed to parse the configuration file '%s' - exiting", v4, v5, v6, v7, v8, *(a1 + 120));
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_100003878(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = malloc_type_malloc(0x800uLL, 0x5813E8C9uLL);
  if (v10)
  {
    v11 = v10;
    vsnprintf(v10, 0x800uLL, a3, &a9);
    asl_log(0, 0, 5, "%s\n", v11);
    free(v11);
  }

  else
  {
    puts("Failed to allocate message buffer for:");
    vprintf(a3, &a9);
    putchar(10);
  }
}

void sub_100003924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003878(a1, a2, "Signal %d received - terminating", a4, a5, a6, a7, a8, a1);

  sub_1000023F0();
}

uint64_t sub_100003960(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  sub_100003878(a1, a2, "Setting scan request: %d sec %d usec", a4, a5, a6, a7, a8, a2);
  sub_10000207C(sub_1000039EC, a1, 0);

  return sub_100001EF8(v9, a3, sub_1000039EC, a1, 0);
}

uint64_t sub_1000039EC(uint64_t result)
{
  if (!*(result + 140))
  {
    v1 = result;
    v2 = *(result + 128);
    if (*(v2 + 22))
    {
      result = asl_log(0, 0, 5, "No enabled networks - do not scan\n");
      *(v1 + 228) = 1;
    }

    else
    {
      v3 = *v2;
      if (*(result + 228) <= 1u)
      {
        *(result + 228) = 2;
      }

      v4 = "specific";
      if (!v3)
      {
        v4 = "broadcast";
      }

      asl_log(0, 0, 5, "Starting AP scan (%s SSID)\n", v4);
      if (v3)
      {
        v5 = *(*(v1 + 128) + 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(*(v1 + 184) + 104);
      if (!v6 || (result = v6(*(v1 + 160), v3, v5), result))
      {
        asl_log(0, 0, 5, "Failed to initiate AP scan.\n");

        return sub_100003960(v1, 10, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100003B08(uint64_t a1)
{
  v2 = malloc_type_malloc(0x8C00uLL, 0x100004049EB3C7BuLL);
  if (!v2)
  {
    sub_100003878(0, v3, "Failed to allocate memory for scan results", v4, v5, v6, v7, v8, v29);
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = *(*(a1 + 184) + 112);
  if (!v10)
  {
    sub_100003878(v2, v3, "Scan results: %d", v4, v5, v6, v7, v8, -1);
    goto LABEL_14;
  }

  v11 = v10(*(a1 + 160), v2, 128);
  v12 = v11;
  sub_100003878(v11, v13, "Scan results: %d", v14, v15, v16, v17, v18, v11);
  if ((v12 & 0x80000000) != 0)
  {
LABEL_14:
    asl_log(0, 0, 5, "Failed to get scan results\n");
    free(v9);
    return 0xFFFFFFFFLL;
  }

  if (v12 >= 0x81)
  {
    sub_100003878(v19, v20, "Not enough room for all APs (%d < %d)", v21, v22, v23, v24, v25, v12);
    v12 = 128;
  }

  v26 = malloc_type_realloc(v9, 280 * v12, 0x100004049EB3C7BuLL);
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v12 == 0;
  }

  if (v27)
  {
    v9 = v26;
  }

  free(*(a1 + 168));
  result = 0;
  *(a1 + 168) = v9;
  *(a1 + 176) = v12;
  return result;
}

uint64_t sub_100003C38(uint64_t result)
{
  v1 = *(result + 14);
  *(result + 228) = 0;
  if (v1 | *(result + 18))
  {
    v2 = *(*(result + 184) + 144);
    if (v2)
    {
      return v2(*(result + 160));
    }
  }

  return result;
}

char *sub_100003C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    v2 = 32;
  }

  else
  {
    v2 = a2;
  }

  __memcpy_chk();
  byte_100020768[v2] = 0;
  v3 = byte_100020768[0];
  if (byte_100020768[0])
  {
    v4 = &byte_100020769;
    do
    {
      if ((v3 - 127) <= 0xFFFFFFA0)
      {
        *(v4 - 1) = 95;
      }

      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return byte_100020768;
}

const char *sub_100003CEC(unsigned int a1)
{
  if (a1 > 2)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10001C5B8[a1];
  }
}

const char *sub_100003D10(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10001C5D0[a1];
  }
}

uint64_t sub_100003D4C(uint64_t result)
{
  v1 = *(result + 14);
  *(result + 228) = 0;
  if (v1 | *(result + 18))
  {
    v2 = *(*(result + 184) + 152);
    if (v2)
    {
      return v2(*(result + 160));
    }
  }

  return result;
}

uint64_t sub_100003D80(uint64_t a1, char *a2, int a3)
{
  v5 = a3;
  result = sub_100000C88(1, "Current ssid:", a2, a3);
  v26[0] = 0;
  v28 = 0u;
  v29 = 0u;
  v26[1] = a2;
  v27 = v5;
  v30 = 2;
  v7 = *(a1 + 176);
  if (v7 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 168) + 144;
    while (1)
    {
      result = memcmp(a2, (v9 - 128), *(v9 - 136));
      if (!result)
      {
        break;
      }

      ++v8;
      v9 += 280;
      if (v7 == v8)
      {
        goto LABEL_16;
      }
    }

    v10 = *v9;
    *(a1 + 776) = *v9;
    if (v10)
    {
      memcpy((a1 + 520), (v9 + 8), v10);
      v11 = *v9;
    }

    else
    {
      v11 = 0;
    }

    result = asl_log(0, 0, 5, "wpa_supplicant_associate, ie len=%d\n\n", v11);
    v12 = *(a1 + 777);
    *&v28 = a1 + 264;
    *(&v28 + 1) = v12;
    LODWORD(v12) = *(v9 - 144);
    v25 = *(v9 - 140);
    v24 = v12;
    v26[0] = &v24;
    DWORD2(v27) = *(v9 + 108);
    *(a1 + 228) = 4;
    if (!(*(a1 + 14) | *(a1 + 18)))
    {
      asl_log(0, 0, 5, "call wpa_drv_associate\n\n");
      sub_100003F50(a1, 10, 0, v13, v14, v15, v16, v17);
      v18 = *(*(a1 + 184) + 160);
      if (!v18 || (result = v18(*(a1 + 160), v26), result))
      {
        result = puts("wpa_supplicant_associate failed");
      }

      *(a1 + 228) = 0;
    }

    LODWORD(v7) = v8;
  }

LABEL_16:
  if (v7 == *(a1 + 176))
  {
    asl_log(0, 0, 5, "No suitable AP found.\n");
    return sub_100003960(a1, 5, 0, v19, v20, v21, v22, v23);
  }

  return result;
}

uint64_t sub_100003F50(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  sub_100003878(a1, a2, "Setting authentication timeout: %d sec %d usec", a4, a5, a6, a7, a8, a2);
  sub_10000207C(sub_100003FDC, a1, 0);

  return sub_100001EF8(v9, a3, sub_100003FDC, a1, 0);
}

uint64_t sub_100003FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(a1 + 18);
  v19 = *(a1 + 19);
  v16 = *(a1 + 16);
  v17 = *(a1 + 17);
  v15 = *(a1 + 15);
  sub_100003878(a1, a2, "Authentication with %02x:%02x:%02x:%02x:%02x:%02x timed out.", a4, a5, a6, a7, a8, *(a1 + 14));
  sub_100003D4C(a1);
  *(a1 + 136) = 1;

  return sub_100003960(a1, 5, 0, v9, v10, v11, v12, v13);
}

uint64_t sub_100004064(uint64_t a1, char *a2, unsigned int a3, u_char *a4, size_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    sub_10001385C();
  }

  v9 = a3;
  v11 = sub_1000055D4(v6, a2, a3, a4, a5);
  if (!v11 && *(a1 + 228) <= 0xAu)
  {
    sub_1000047F0(a1, a2, v9, a4, a5);
  }

  return v11;
}

CFIndex sub_1000040E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003878(a1, a2, "Cancelling authentication timeout", a4, a5, a6, a7, a8, v10);

  return sub_10000207C(sub_100003FDC, a1, 0);
}

uint64_t sub_100004138(uint64_t result, int a2)
{
  v2 = result;
  *(result + 232) = 0;
  if (a2 > 2)
  {
    if ((a2 - 4) < 2)
    {
      return result;
    }

    if (a2 != 3)
    {
      return asl_log(0, 0, 5, "Unknown event %d\n", a2);
    }

    asl_log(0, 0, 5, "Received EVENT_SCAN_RESULTS\n");
    result = sub_100003B08(v2);
    if (*(v2 + 228) != 4)
    {
      v3 = *(v2 + 128);
      v4 = *v3;
      v5 = *(v3 + 8);

      return sub_100003D80(v2, v4, v5);
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return result;
      }

      return asl_log(0, 0, 5, "Unknown event %d\n", a2);
    }

    asl_log(0, 0, 5, "Disconnect event \n");
    v25 = 0;
    v26[1] = v30;
    v10 = v30;
    v26[0] = v29;
    *(v2 + 14) = v29;
    *(v2 + 18) = v10;
    WORD2(v25) = *(v2 + 12);
    LODWORD(v25) = *(v2 + 8);
    v11 = WAI_Msg_Input(1, v26, &v25, 0, 0);
    asl_log(0, 0, 5, "WAI_Msg_Input  success\n", v11);
    *(v2 + 228) = 0;
    return sub_100003960(v2, 5, 0x186A0u, v12, v13, v14, v15, v16);
  }

  else
  {
    asl_log(0, 0, 5, "EVENT_ASSOC\n");
    v6 = *(*(v2 + 184) + 32);
    if (v6)
    {
      v6(*(v2 + 160), &v29);
    }

    v27 = 0;
    v28 = v29;
    v8 = *(v2 + 8);
    WORD2(v28) = v30;
    v7 = v30;
    *(v2 + 14) = v29;
    *(v2 + 18) = v7;
    LODWORD(v27) = v8;
    WORD2(v27) = *(v2 + 12);
    sub_100000B44(1, "bssid", &v29, 6);
    sub_100000B44(1, "own mac", v2 + 8, 6);
    if (*(v2 + 776))
    {
      v9 = (v2 + 520);
    }

    else
    {
      v9 = 0;
    }

    WAI_Msg_Input(0, &v28, &v27, v9, *(v2 + 776));
    sub_100003878(v17, v18, "Cancelling authentication timeout", v19, v20, v21, v22, v23, v24);
    result = sub_10000207C(sub_100003FDC, v2, 0);
    *(v2 + 228) = 4;
  }

  return result;
}

uint64_t sub_100004400(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = qword_100020110;
  v8 = a2;
  sub_100000B44(1, "WIFI_group_key_set:", a1, a2);
  v9 = *(*(v7 + 184) + 64);
  if (v9 && (v9(*(v7 + 160), 4, "\xFF\xFF\xFF\xFF\xFF\xFF", a3, 1, a4, 16, a1, v8) & 0x80000000) == 0)
  {
    return 0;
  }

  asl_log(0, 0, 5, "WPA: Failed to set MSK to the driver.\n");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000044C8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100020110;
  v9[0] = 0;
  v9[1] = 0;
  asl_log(0, 0, 5, "WIFI_unicast_key_set: Installing USK to the driver.\n");
  sub_100000B44(1, "WIFI_unicast_key_set:", a1, a2);
  v7 = *(*(v6 + 184) + 64);
  if (v7 && (v7(*(v6 + 160), 4, v6 + 14, a3, 1, v9, 16, a1, 32) & 0x80000000) == 0)
  {
    return 0;
  }

  asl_log(0, 0, 5, "WIFI_unicast_key_set: Failed to set PTK to the driver\n");
  return 0xFFFFFFFFLL;
}

void (__cdecl *sub_1000045CC(unsigned int a1, unsigned int a2, void (__cdecl *a3)(CFRunLoopTimerRef, void *)))(CFRunLoopTimerRef, void *)
{
  result = 0;
  if (((a2 | a1) & 0x80000000) == 0 && a3)
  {
    v7 = (1000 * (a1 % 0x3E8)) / 1000000.0 + CFAbsoluteTimeGetCurrent() + (a1 / 0x3E8);
    if (qword_100020790)
    {
      CFRunLoopTimerInvalidate(qword_100020790);
    }

    qword_100020790 = CFRunLoopTimerCreate(kCFAllocatorDefault, v7, (a2 / 0x3E8), 0, 0, a3, 0);
    if (qword_100020790)
    {
      asl_log(0, 0, 5, "OS_timer_setup rescheduling timer\n");
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(Current, qword_100020790, kCFRunLoopDefaultMode);
      CFRelease(qword_100020790);
      qword_100020790 = 0;
    }

    return a3;
  }

  return result;
}

void sub_1000046E8()
{
  if (qword_100020790)
  {
    CFRunLoopTimerInvalidate(qword_100020790);
    CFRelease(qword_100020790);
    qword_100020790 = 0;
  }
}

uint64_t sub_100004720(const void *a1, int a2)
{
  v4 = qword_100020110;
  asl_log(0, 0, 5, " wpa_s = '%p \n", qword_100020110);
  asl_log(0, 0, 5, " wpa_driver_set_wpa_ie entry \n");
  v5 = *(*(v4 + 184) + 24);
  if (v5)
  {
    v5(*(v4 + 160), a1, a2);
  }

  asl_log(0, 0, 5, " wpa_driver_set_wpa_ie end \n");
  *(v4 + 777) = a2;
  memcpy((v4 + 264), a1, a2);
  return 0;
}

uint64_t sub_1000047F0(uint64_t a1, uint64_t a2, __int16 a3, unsigned __int8 *a4, size_t a5)
{
  v9 = *(a1 + 192);
  sub_10000207C(sub_100004AB8, a1, v9);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  memcpy(*(v9 + 32), a4, a5);
  *(v9 + 40) = a5;
  *(v9 + 24) = a1;
  *v9 = *(a1 + 228);
  *(v9 + 48) = a3;
  *(v9 + 16) = 1;
  *(v9 + 56) = sub_1000048DC;
  v15 = a4[2];
  if (v15 == 4)
  {
    v16 = 31;
  }

  else
  {
    v16 = v15 == 12 || v15 == 9;
  }

  return sub_10000497C(a1, v9, v16, v10, v11, v12, v13, v14);
}

uint64_t sub_1000048DC(uint64_t a1, _BYTE *a2)
{
  v4 = a2 + 42;
  v3 = a2[42];
  v5 = a2[16] + 1;
  a2[16] = v5;
  asl_log(0, 0, 5, "Timeout. resend to(%02x:%02x:%02x:%02x:%02x:%02x), send_count=%d\n", v3, a2[43], a2[44], a2[45], a2[46], a2[47], v5);
  v6 = *(v4 + 3);
  v7 = *(v4 - 10);
  v8 = *(v4 - 1);

  return sub_1000055D4(a1, v4, v6, v7, v8);
}

uint64_t sub_10000497C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003878(a1, 1, "Setting retry request: %d sec %d usec", a4, a5, a6, a7, a8, a3);
  sub_10000207C(sub_100004AB8, a1, a2);

  return sub_100001EF8(a3, 0, sub_100004AB8, a1, a2);
}

CFIndex sub_100004A0C(uint64_t a1, int a2)
{
  v4 = *(a1 + 192);
  v5 = *(v4 + 32);
  result = asl_log(0, 0, 5, "WPA: in %s:%d\n", "wpa_cancle_retry", 106);
  if (*(v5 + 3) == a2)
  {

    return sub_10000207C(sub_100004AB8, a1, v4);
  }

  return result;
}

uint64_t sub_100004AB8(void *a1, uint64_t a2)
{
  (*(a2 + 56))(*a1);
  if (*(a2 + 16) > 2u)
  {
    asl_log(0, 0, 5, "resend counter is bigger than 3, then deauthenation with AP\n");

    return sub_100003C38(a1);
  }

  else
  {
    v4 = *(*(a2 + 32) + 2);
    if (v4 == 4)
    {
      v7 = 31;
    }

    else
    {
      v7 = v4 == 12 || v4 == 9;
    }

    return sub_10000497C(a1, a2, v7);
  }
}

void sub_100004B78(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = a1[10];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[12];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

BOOL sub_100004BD8(const std::__fs::filesystem::path *__filename, const char *a2)
{
  v3 = sub_1000013E4(61, __filename, &unk_10001588D, "CERT_STATUS", a2);
  if (!v3)
  {
    asl_log(0, 0, 5, "open file %s error\n\n", __filename);
  }

  return v3 == 0;
}

char **sub_100004C4C()
{
  v0 = __chkstk_darwin();
  v1 = malloc_type_malloc(0x68uLL, 0x1010040FC24F789uLL);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  memset(v12, 0, 512);
  v1[12] = 0;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  asl_log(0, 0, 5, "Reading configuration file '%s'\n", v0);
  v3 = sub_100000F28(61, v0, v13);
  if (!v3)
  {
    asl_log(0, 0, 5, "no keys and values pair in configuration file '%s'\n", v0);
    free(v2);
    return 0;
  }

  v4 = v3;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  sub_100001178("WAPI", &v14, v13, v3);
  v5 = atoi(&v14);
  *(v2 + 13) = v5;
  asl_log(0, 0, 5, "wapi_policy '%d'\n", v5);
  v6 = *(v2 + 13);
  if ((v6 & 8) != 0)
  {
    v7 = 1;
LABEL_9:
    LODWORD(v12[0]) = v7;
    goto LABEL_10;
  }

  if ((v6 & 4) != 0)
  {
    v7 = 2;
    goto LABEL_9;
  }

  LODWORD(v12[0]) = 0;
LABEL_10:
  asl_log(0, 0, 5, "WAPI '%d'\n", v6);
  if (*(v2 + 13))
  {
    *(v2 + 60) = 0x1000000010;
  }

  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  sub_100001178("SSID", &v14, v13, v4);
  v8 = strlen(&v14);
  v2[1] = v8;
  v9 = strdup(&v14);
  *v2 = v9;
  sub_100000C88(1, " SSID:", v9, v8);
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  sub_100001178("CERT_INDEX", &v14, v13, v4);
  LOBYTE(qword_100020248) = atoi(&v14);
  LOWORD(qword_100020248) = qword_100020248;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  sub_100001178("CERT_NAME", &byte_100020148, v13, v4);
  asl_log(0, 0, 5, "CERT_NAME '%s'\n", &byte_100020148);
  if ((*(v2 + 52) & 8) != 0 && byte_100020148)
  {
    sub_1000051BC();
  }

  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  sub_100001178("PSK_KEY_TYPE", &v14, v13, v4);
  v10 = atoi(&v14);
  asl_log(0, 0, 5, "PSK_KEY_TYPE '%d'\n", v10);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  sub_100001178("PSK", &v14, v13, v4);
  asl_log(0, 0, 5, "PSK'%s'\n", &v14);
  if ((*(v2 + 52) & 4) != 0)
  {
    DWORD1(v12[0]) = v10;
    DWORD2(v12[0]) = strlen(&v14);
    __memcpy_chk();
  }

  WAI_CNTAPPARA_SET(v12);
  sub_100001398(v13, v4);
  return v2;
}

uint64_t sub_1000051BC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  bzero(__ptr, 0x2000uLL);
  if (v9 && (v10 = fopen(v9, "rb")) != 0 && (v11 = v10, v12 = fread(__ptr, 1uLL, 0x2000uLL, v10), fclose(v11), v12 >= 1))
  {
    return sub_1000052C8(__ptr, v12, v8, v6, v4, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000052C8(char *a1, int a2, uint64_t a3, int a4, char *a5, int a6)
{
  result = 0xFFFFFFFFLL;
  if (a6 >= 1 && a4 >= 1)
  {
    if (a1)
    {
      if (a3)
      {
        if (a5)
        {
          v13 = sub_1000054DC(a1, a2, "-----BEGIN ASU CERTIFICATE-----");
          v14 = sub_1000054DC(a1, a2, "-----END ASU CERTIFICATE-----");
          result = 0xFFFFFFFFLL;
          if (v13)
          {
            if (v13 < v14)
            {
              v15 = v14 - v13;
              if (v14 - v13 + 21 <= a6)
              {
                qmemcpy(a5, "-----BEGIN CERTIFICATE-----", 27);
                v16 = a5 + 27;
                memcpy(v16, v13 + 31, v15 - 31);
                qmemcpy(&v16[v15 - 31], "-----END CERTIFICATE-----", 25);
                qmemcpy(v25, "CERTIFICATE----------END CERTIFICERTIFICATE----------BEGIN CERTI", sizeof(v25));
                v17 = sub_1000054DC(a1, a2, "-----BEGIN USER CERTIFICATE-----");
                v18 = sub_1000054DC(a1, a2, "-----END USER CERTIFICATE-----");
                result = 0xFFFFFFFFLL;
                if (v17)
                {
                  if (v17 < v18)
                  {
                    v19 = v18 - v17;
                    if (v18 - v17 + 20 <= a4)
                    {
                      *a3 = v25[3];
                      *(a3 + 11) = v25[2];
                      memcpy((a3 + 27), v17 + 32, v19 - 32);
                      v20 = a3 + 27 + v19;
                      *(v20 - 32) = v25[1];
                      *(v20 - 23) = v25[0];
                      v21 = sub_1000054DC(a1, a2, "-----BEGIN EC PRIVATE KEY-----");
                      v22 = sub_1000054DC(a1, a2, "-----END EC PRIVATE KEY-----");
                      result = 0xFFFFFFFFLL;
                      if (v21)
                      {
                        if (v21 < v22)
                        {
                          v23 = strlen(a3);
                          v24 = v22 - v21 + 28;
                          if (a4 - v23 >= v24)
                          {
                            memcpy((v20 - 7), v21, v24);
                            return 0;
                          }

                          else
                          {
                            return 0xFFFFFFFFLL;
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
      }
    }
  }

  return result;
}

char *sub_1000054DC(char *a1, int a2, char *__s)
{
  v6 = strlen(__s);
  result = 0;
  if (v6 <= a2 && __s && ((v6 | a2) & 0x80000000) == 0)
  {
    v8 = &a1[a2 - v6];
    if (v8 < a1)
    {
      return 0;
    }

    else
    {
      v9 = v6;
      while (memcmp(a1, __s, v9))
      {
        if (++a1 > v8)
        {
          return 0;
        }
      }

      return a1;
    }
  }

  return result;
}

uint64_t sub_100005570(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  *(result + 228) = v2;
  v3 = *(result + 184);
  if (v3)
  {
    v4 = *(v3 + 128);
    if (v4)
    {
      return v4(*(result + 160), result + 14, a2);
    }
  }

  return result;
}

uint64_t sub_1000055D4(uint64_t a1, char *a2, unsigned int a3, u_char *a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 136))
  {
    v12 = sub_1000061BC(a5 + 14);
    if (v12)
    {
      v13 = v12;
      sub_1000061CC(v12, a2, 6);
      sub_1000061CC(v13 + 6, (a1 + 112), 6);
      *(v13 + 6) = __rev16(a3);
      sub_1000061CC(v13 + 14, a4, a5);
      v14 = pcap_sendpacket(*a1, v13, a5 + 14);
      j__free(v13);
      return v14;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *a1;

  return pcap_sendpacket(v8, a4, a5);
}

uint64_t sub_1000056CC(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100006294(0x90uLL);
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  sub_100006448(v12 + 12, a1, 100);
  *(v13 + 120) = a4;
  *(v13 + 128) = a5;
  *(v13 + 136) = a6;
  if (a2)
  {
    sub_1000061CC((v13 + 112), a2, 6);
  }

  v50.bf_insns = 0;
  *v51 = 0;
  *&v50.bf_len = 0;
  pcap_lookupnet((v13 + 12), v51, &v51[1], v52);
  v14 = pcap_open_live((v13 + 12), 2500, 0, 10, v52);
  *v13 = v14;
  if (!v14)
  {
    fprintf(__stderrp, "2. pcap_open_live: %s\n", v52);
    fprintf(__stderrp, "ifname='%s'\n");
LABEL_19:
    j__free(v13);
    return 0;
  }

  if (pcap_datalink(v14) != 1 && pcap_set_datalink(*v13, 1) < 0)
  {
    v27 = __stderrp;
    v30 = pcap_geterr(*v13);
    v28 = "pcap_set_datalink(DLT_EN10MB): %s\n";
    goto LABEL_18;
  }

  if (pcap_setnonblock(*v13, 1, v52) < 0)
  {
    v20 = __stderrp;
    v21 = pcap_geterr(*v13);
    fprintf(v20, "pcap_setnonblock: %s\n", v21);
  }

  v47 = 3;
  v48 = a3;
  v45 = 0;
  v46 = 0;
  v44 = 194;
  v42 = 1;
  v43 = 128;
  v40 = *(v13 + 116);
  v41 = *(v13 + 117);
  v38 = *(v13 + 114);
  v39 = *(v13 + 115);
  v36 = *(v13 + 112);
  v37 = *(v13 + 113);
  v34 = v40;
  v35 = v41;
  v32 = v38;
  v33 = v39;
  v31 = v37;
  sub_1000064E0(v53, 0xC8uLL, "not ether src %02x:%02x:%02x:%02x:%02x:%02x and(ether dst %02x:%02x:%02x:%02x:%02x:%02x or ether dst %02x:%02x:%02x:%02x:%02x:%02x) and ether proto 0x%x", v15, v16, v17, v18, v19, *(v13 + 112));
  if (pcap_compile(*v13, &v50, v53, 1, v51[0]) < 0)
  {
    v27 = __stderrp;
    v30 = pcap_geterr(*v13);
    v28 = "pcap_compile: %s\n";
LABEL_18:
    fprintf(v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    goto LABEL_19;
  }

  if (pcap_setfilter(*v13, &v50) < 0)
  {
    v27 = __stderrp;
    v30 = pcap_geterr(*v13);
    v28 = "pcap_setfilter: %s\n";
    goto LABEL_18;
  }

  pcap_freecode(&v50);
  v49 = 1;
  v22 = pcap_fileno(*v13);
  if (ioctl(v22, 0x80044270uLL, &v49) < 0)
  {
    v23 = __stderrp;
    v24 = __error();
    v25 = strerror(*v24);
    fprintf(v23, "%s: cannot enable immediate mode on interface %s: %s\n", "l2_packet_init_libpcap", (v13 + 12), v25);
  }

  selectable_fd = pcap_get_selectable_fd(*v13);
  sub_100001CA4(selectable_fd, sub_100005C94, v13, *v13);
  return v13;
}

void sub_1000059FC(uint64_t *a1)
{
  if (a1)
  {
    sub_10000207C(sub_100005A60, a1, *a1);
    if (*a1)
    {
      pcap_close(*a1);
    }

    j__free(a1);
  }
}

uint64_t sub_100005A60(uint64_t a1, pcap_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = v4 - 1;
    v5 = 20000;
  }

  else
  {
    v5 = 100000;
  }

  sub_100001EF8(0, v5, sub_100005A60, a1, a2);

  return pcap_dispatch(a2, 10, sub_100005D5C, a1);
}

uint64_t sub_100005AF0(uint64_t a1, char *a2, size_t a3)
{
  v19 = 0;
  if (pcap_findalldevs(&v19, v20) < 0)
  {
    asl_log(0, 0, 5, "pcap_findalldevs: %s\n\n", v20);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v19;
    if (v19)
    {
      while (1)
      {
        if (!sub_100006374(v6->name, (a1 + 12)))
        {
          addresses = v6->addresses;
          if (addresses)
          {
            break;
          }
        }

LABEL_4:
        v6 = v6->next;
        if (!v6)
        {
          v17 = 0xFFFFFFFFLL;
          goto LABEL_14;
        }
      }

      while (1)
      {
        addr = addresses->addr;
        if (addr)
        {
          if (addr->sa_family == 2)
          {
            break;
          }
        }

        addresses = addresses->next;
        if (!addresses)
        {
          goto LABEL_4;
        }
      }

      v9.s_addr = *&addr->sa_data[2];
      v10 = inet_ntoa(v9);
      sub_1000064E0(a2, a3, "%s", v11, v12, v13, v14, v15, v10);
      v17 = 0;
LABEL_14:
      v16 = v19;
    }

    else
    {
      v16 = 0;
      v17 = 0xFFFFFFFFLL;
    }

    pcap_freealldevs(v16);
  }

  return v17;
}

uint64_t sub_100005C28(uint64_t a1)
{
  *(a1 + 8) = 150;
  sub_10000207C(sub_100005A60, a1, *a1);
  v2 = *a1;

  return sub_100001EF8(0, 0x2710u, sub_100005A60, a1, v2);
}

const u_char *sub_100005C94(int a1, uint64_t a2, pcap_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  result = pcap_next(a3, &v7);
  if (result && v7.caplen >= 0xE)
  {
    v5 = 14;
    if (*(a2 + 136))
    {
      v5 = 0;
      caplen = v7.caplen;
    }

    else
    {
      caplen = v7.caplen - 14;
    }

    return (*(a2 + 120))(*(a2 + 128), result + 6, &result[v5], caplen);
  }

  return result;
}

uint64_t sub_100005D5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a2 + 16);
    if (v3 >= 0xE)
    {
      v4 = result;
      v5 = 14;
      if (*(result + 136))
      {
        v5 = 0;
        v6 = *(a2 + 16);
      }

      else
      {
        v6 = v3 - 14;
      }

      result = (*(result + 120))(*(result + 128), a3 + 6, a3 + v5, v6);
      *(v4 + 8) = 150;
    }
  }

  return result;
}

uint64_t sub_100005DC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sleep(result);
  }

  if (a2)
  {

    return usleep(a2);
  }

  return result;
}

uint64_t sub_100005E0C(__darwin_time_t *a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  result = gettimeofday(&v4, 0);
  tv_usec = v4.tv_usec;
  *a1 = v4.tv_sec;
  a1[1] = tv_usec;
  return result;
}

uint64_t sub_100005E50(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, time_t *a7)
{
  result = 0xFFFFFFFFLL;
  if (a6 <= 0x3C && a5 <= 0x3B && a4 <= 0x17 && a1 >= 1970 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1)
  {
    v14 = v7;
    v15 = v8;
    memset(&v13.tm_wday, 0, 32);
    v13.tm_mon = a2 - 1;
    v13.tm_year = a1 - 1900;
    v13.tm_hour = a4;
    v13.tm_mday = a3;
    v13.tm_sec = a6;
    v13.tm_min = a5;
    v12 = mktime(&v13);
    result = 0;
    *a7 = v12;
  }

  return result;
}

void *sub_100005EEC(void *__b, int __c, size_t __len)
{
  if (__len)
  {
    return memset(__b, __c, __len);
  }

  return __b;
}

uint64_t sub_100005EF8(const char *a1)
{
  if (a1)
  {
    v1 = fopen(a1, "w");
    if (v1)
    {
      v2 = v1;
      v3 = getpid();
      fprintf(v2, "%u\n", v3);
      fclose(v2);
    }
  }

  return 0;
}

const char *sub_100005F5C(const char *result)
{
  if (result)
  {
    return unlink(result);
  }

  return result;
}

uint64_t sub_100005F68(void *a1, size_t a2)
{
  v4 = fopen("/dev/urandom", "rb");
  if (v4)
  {
    v5 = v4;
    v6 = fread(a1, 1uLL, a2, v4);
    fclose(v5);
    if (v6 == a2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    puts("Could not open /dev/urandom.");
    return 0xFFFFFFFFLL;
  }
}

_BYTE *sub_100005FF0(char *a1)
{
  v1 = a1;
  if (*a1 == 47)
  {

    return sub_100006150(a1);
  }

  else
  {
    v3 = malloc_type_malloc(0x80uLL, 0x699E303uLL);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = 128;
    while (1)
    {
      v6 = getcwd(v4, v5);
      if (v6)
      {
        break;
      }

      free(v4);
      if (*__error() == 34)
      {
        v5 *= 2;
        v4 = malloc_type_malloc(v5, 0x699E303uLL);
        if (v4)
        {
          continue;
        }
      }

      return 0;
    }

    v8 = v6;
    v9 = strlen(v6);
    v10 = strlen(v1);
    v11 = v9 + v10;
    v12 = malloc_type_malloc(v9 + v10 + 2, 0x699E303uLL);
    v7 = v12;
    if (v12)
    {
      if (v9)
      {
        v13 = v12;
        v14 = v9;
        do
        {
          v15 = *v8++;
          *v13++ = v15;
          --v14;
        }

        while (v14);
      }

      v12[v9] = 47;
      if (v10)
      {
        v16 = &v12[v9 + 1];
        do
        {
          v17 = *v1++;
          *v16++ = v17;
          --v10;
        }

        while (v10);
      }

      v12[v11 + 1] = 0;
    }

    free(v4);
    return v7;
  }
}

_BYTE *sub_100006150(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
      ;
    }

    result = malloc_type_malloc(v2, 0x699E303uLL);
    if (result)
    {
      if (v2)
      {
        v4 = 0;
        v5 = -v2;
        do
        {
          result[v4] = v1[v4];
          ++v4;
        }

        while (!__CFADD__(v5++, 1));
      }
    }
  }

  return result;
}

_BYTE *sub_1000061CC(_BYTE *result, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    do
    {
      v4 = *a2++;
      *v3++ = v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *sub_1000061F0(const char *a1, size_t *a2)
{
  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  fseek(v3, 0, 2);
  *a2 = ftell(v4);
  fseek(v4, 0, 0);
  v5 = malloc_type_malloc(*a2, 0x699E303uLL);
  v6 = v5;
  if (v5)
  {
    fread(v5, 1uLL, *a2, v4);
  }

  fclose(v4);
  return v6;
}

void *sub_100006294(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x699E303uLL);
  v3 = v2;
  if (a1 && v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

char *sub_1000062E8(char *result, char *a2, uint64_t a3)
{
  if (result >= a2)
  {
    for (; a3; --a3)
    {
      result[a3 - 1] = a2[a3 - 1];
    }
  }

  else if (a3)
  {
    v3 = result;
    do
    {
      v4 = *a2++;
      *v3++ = v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_10000632C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1 - *a2;
    if (v3)
    {
      break;
    }

    ++a1;
    ++a2;
    if (!--a3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10000635C(uint64_t a1)
{
  v1 = 0;
    ;
  }

  return v1 - 1;
}

uint64_t sub_100006374(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = a2 + 1;
    v6 = a1 + 1;
    do
    {
      v7 = *v6++;
      v2 = v7;
      v8 = *v5++;
      v3 = v8;
      if (v2)
      {
        v9 = v2 == v3;
      }

      else
      {
        v9 = 0;
      }
    }

    while (v9);
  }

  return (v2 - v3);
}

uint64_t sub_1000063B0(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1;
    v4 = *a2;
    if (!*a1 || v3 != v4)
    {
      break;
    }

    ++a1;
    ++a2;
    if (!--a3)
    {
      return 0;
    }
  }

  return (v3 - v4);
}

char *sub_1000063F0(char *result, int a2)
{
  v2 = *result;
  if (!*result)
  {
    return 0;
  }

  while (a2 != v2)
  {
    v3 = *++result;
    v2 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100006410(unint64_t a1, int a2)
{
  v2 = (a1 - 2);
  do
  {
    v3 = v2[2];
    ++v2;
  }

  while (v3);
  do
  {
    if (v2 < a1)
    {
      return 0;
    }

    v4 = *v2--;
  }

  while (v4 != a2);
  return v2 + 1;
}

_BYTE *sub_100006448(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 - 1;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      if (v5)
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }

      --v3;
    }

    while (!v6);
  }

  return result;
}

_BYTE *sub_100006470(_BYTE *result, unsigned __int8 *a2)
{
  v2 = 1;
  v3 = a2;
  do
  {
    v4 = *v3++;
    --v2;
  }

  while (v4);
  if (!*result)
  {
    return 0;
  }

  v5 = result;
  while (2)
  {
    if (v2)
    {
      v6 = 0;
      v7 = v2;
      while (1)
      {
        v8 = v5[v6];
        v9 = a2[v6];
        if (!v5[v6] || v8 != v9)
        {
          break;
        }

        ++v6;
        if (__CFADD__(v7++, 1))
        {
          return v5;
        }
      }

      if (v8 == v9)
      {
        return v5;
      }

      if (*++v5)
      {
        continue;
      }

      return 0;
    }

    break;
  }

  return result;
}

uint64_t sub_1000064E0(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = vsnprintf(a1, a2, a3, &a9);
  if (a2)
  {
    a1[a2 - 1] = 0;
  }

  return result;
}

uint64_t sub_100006528(uint64_t a1, _BYTE *a2)
{
  *(a1 + 88) = 9;
  *(a1 + 96) = 6;
  *(a1 + 104) = a2;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v4 = *(a1 + 8);
  if ((Apple80211RawGet() & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (v6 && (Value = CFDictionaryGetValue(v6, @"BSSID")) != 0)
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
    CStringPtr = CFStringGetCStringPtr(Value, 0);
    sscanf(CStringPtr, "%x:%x:%x:%x:%x:%x", &v15 + 4, &v15, &v14 + 4, &v14, &v13 + 4, &v13);
    v5 = 0;
    v9 = v15;
    *a2 = BYTE4(v15);
    a2[1] = v9;
    v10 = v14;
    a2[2] = BYTE4(v14);
    a2[3] = v10;
    v11 = v13;
    a2[4] = BYTE4(v13);
    a2[5] = v11;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
    asl_log(0, 0, 5, "%s: APPLE80211_IOC_BSSID failed (%d)\n", "wpa_driver_apple80211_get_bssid", -1);
  }

  return v5;
}

uint64_t sub_100006640(void *a1)
{
  v2 = *(*a1 + 128);
  v3 = a1[7];
  if (v3)
  {
    free(v3);
    a1[7] = 0;
  }

  if (*(v2 + 92) == 1)
  {
    v4 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
    a1[7] = v4;
    v5 = *(v2 + 96);
    v6 = *v5;
    v4[2] = *(v5 + 2);
    *v4 = v6;
    v7 = a1[7];
    asl_log(0, 0, 5, "WFMacRandomisation : %s Private MAC address used :  %02x:%02x:%02x:%02x:%02x:%02x\n \n", "wpa_driver_apple80211_get_macaddr", *v7, v7[1], v7[2], v7[3], v7[4], v7[5]);
  }

  else
  {
    asl_log(0, 0, 5, " %s WFMacRandomisation : Physical MAC used\n \n", "wpa_driver_apple80211_get_macaddr");
    v8 = SCNetworkInterfaceCopyAll();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = 0;
        v12 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
          InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
          if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
          {
            HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
            if (HardwareAddress)
            {
              v16 = HardwareAddress;
              if (CFDataGetLength(HardwareAddress) == 6)
              {
                break;
              }
            }
          }

          if (v12 == ++v11)
          {
            goto LABEL_12;
          }
        }

        v18 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
        a1[7] = v18;
        if (v18)
        {
          v19 = v18;
          BytePtr = CFDataGetBytePtr(v16);
          v21 = *(BytePtr + 2);
          *v19 = *BytePtr;
          v19[2] = v21;
        }
      }

LABEL_12:
      CFRelease(v9);
    }
  }

  return a1[7];
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v3 = *(a1 + 8);
  if ((Apple80211RawGet() & 0x80000000) == 0)
  {
    return *(a1 + 96);
  }

  v5 = __error();
  asl_log(0, 0, 5, "%s: Unable to retrieve SSID (%d)\n\n", "wpa_driver_apple80211_get_ssid", *v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000688C(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 88) = 1;
  *(a1 + 96) = a3;
  *(a1 + 104) = a2;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v4 = *(a1 + 8);

  return Apple80211RawSet();
}

uint64_t sub_1000068E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = Apple80211CopyValue();
  asl_log(0, 0, 5, "Failed to get SSID\n");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4294963394;
  }

  asl_log(0, 0, 5, "%s = %d\n", "wpa_driver_check_status", v3);
  return v3;
}

_DWORD *sub_1000069FC(uint64_t a1, const char *a2)
{
  v4 = malloc_type_malloc(0x78uLL, 0x10F00406C3E8C6CuLL);
  if (!v4)
  {
    asl_log(0, 0, 5, "%s: Unable to allocate memory for darwin WAPI driver data.\n", "wpa_driver_apple80211_init");
    asl_log(0, 0, 5, "%s: Failed to init (%d)! \n", "wpa_driver_apple80211_init", -3902);
    return 0;
  }

  v5 = v4;
  *(v4 + 8) = 0u;
  v6 = (v4 + 8);
  *(v4 + 104) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *v4 = a1;
  strncpy(v4 + 36, a2, 0x11uLL);
  v7 = Apple80211Open();
  if (v7)
  {
    v15 = v7;
    sub_100013A28(v7, v8, v9);
  }

  else
  {
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    if (v10)
    {
      v11 = v10;
      v12 = *v6;
      v13 = Apple80211BindToInterface();
      if (v13)
      {
        v14 = v13;
        asl_log(0, 0, 5, "%s: Apple80211BindToInterface() failed (%s, %d)  ! \n", "wpa_driver_apple80211_init", a2, v13);
        CFRelease(v11);
        v15 = v14;
      }

      else
      {
        CFRelease(v11);
        if (*v6)
        {
          v19 = Apple80211EventMonitoringInit2();
          if (v19)
          {
            v15 = v19;
            sub_100013888(v19, v20, v21);
          }

          else
          {
            v22 = *v6;
            started = Apple80211StartMonitoringEvent();
            if (started)
            {
              v15 = started;
              sub_1000138BC(started, v24, v25);
            }

            else
            {
              v26 = *v6;
              v27 = Apple80211StartMonitoringEvent();
              if (v27)
              {
                v15 = v27;
                sub_1000138F0(v27, v28, v29);
              }

              else
              {
                v30 = *v6;
                v31 = Apple80211StartMonitoringEvent();
                if (v31)
                {
                  v15 = v31;
                  sub_100013924(v31, v32, v33);
                }

                else
                {
                  v34 = *v6;
                  v35 = Apple80211StartMonitoringEvent();
                  if (v35)
                  {
                    v15 = v35;
                    sub_100013958(v35, v36, v37);
                  }

                  else
                  {
                    v38 = *v6;
                    v39 = Apple80211StartMonitoringEvent();
                    if (v39)
                    {
                      v15 = v39;
                      sub_10001398C(v39, v40, v41);
                    }

                    else
                    {
                      v42 = *v6;
                      v43 = Apple80211StartMonitoringEvent();
                      if (!v43)
                      {
                        v46 = socket(2, 2, 0);
                        v5[8] = v46;
                        if ((v46 & 0x80000000) == 0)
                        {
                          asl_log(0, 0, 5, "%s: success  ! \n", "wpa_driver_apple80211_init");
                          return v5;
                        }

                        perror("socket(PF_INET,SOCK_DGRAM)");
                        goto LABEL_10;
                      }

                      v15 = v43;
                      sub_1000139C0(v43, v44, v45);
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          sub_1000139F4(0, v17, v18);
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = -3901;
    }
  }

  asl_log(0, 0, 5, "%s: Failed to init (%d)! \n", "wpa_driver_apple80211_init", v15);
  v16 = v5[8];
  if (v16)
  {
    close(v16);
  }

  if (*v6)
  {
    Apple80211Close();
  }

LABEL_10:
  free(v5);
  return 0;
}

void sub_100006CDC(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  Current = CFRunLoopGetCurrent();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100007C74;
  block[3] = &unk_10001C630;
  v15 = a1;
  v16 = a3;
  block[4] = a2;
  block[5] = a4;
  v17 = a5;
  block[6] = a6;
  CFRunLoopPerformBlock(Current, kCFRunLoopDefaultMode, block);
  v13 = CFRunLoopGetCurrent();
  CFRunLoopWakeUp(v13);
}

void sub_100006D9C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    close(v4);
  }

  if (a1[1])
  {
    Apple80211EventMonitoringHalt();
    v5 = a1[1];
    Apple80211Close();
  }

  v6 = a1[7];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

uint64_t sub_100006E58(uint64_t a1, const char *a2)
{
  if (*(a1 + 24))
  {
    asl_log(0, 0, 5, "%s: have external scan result, omitting extra scan..\n\n", "wpa_driver_apple80211_scan");
    sub_100004138(*a1, 3);
    return 0;
  }

  else
  {
    valuePtr = 1;
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    v14 = 30;
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v14);
    v13 = 3;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v13);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"SCAN_MERGE", kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, @"SCAN_TYPE", v7);
    CFDictionaryAddValue(Mutable, @"SCAN_NUM_SCANS", v5);
    CFDictionaryAddValue(Mutable, @"SCAN_PHY_MODE", v6);
    CFRelease(v5);
    CFRelease(v6);
    CFRelease(v7);
    if (a2)
    {
      v9 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      if (v9)
      {
        v10 = v9;
        CFDictionaryAddValue(Mutable, @"SSID_STR", v9);
        CFRelease(v10);
      }
    }

    v11 = *(a1 + 8);
    v12 = Apple80211ScanAsync();
    CFRelease(Mutable);
    if (v12)
    {
      asl_log(0, 0, 5, "%s: Apple80211ScanAsync error %d\n", "wpa_driver_apple80211_scan", v12);
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100007050(uint64_t a1, void *a2)
{
  values = a2;
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 16) = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    *(a1 + 24) = 1;
    sub_100004138(*a1, 3);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return 0;
}

unint64_t sub_1000070D4(uint64_t a1, char *a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count < a3)
  {
    a3 = Count;
  }

  sub_100005EEC(a2, 0, 280 * a3);
  asl_log(0, 0, 5, "%s: %d scan results..\n\n", "wpa_driver_apple80211_get_scan_results", a3);
  if (a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = &a2[280 * v8];
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
      valuePtr = 0;
      Value = CFDictionaryGetValue(ValueAtIndex, @"SSID");
      if (Value)
      {
        v12 = Value;
        Length = CFDataGetLength(Value);
        v14 = 32;
        if (Length < 0x20)
        {
          v14 = Length;
        }

        *(v9 + 1) = v14;
        BytePtr = CFDataGetBytePtr(v12);
        sub_1000061CC(v9 + 16, BytePtr, *(v9 + 1));
      }

      asl_log(0, 0, 5, "%s: %s\n\n", "wpa_driver_apple80211_get_scan_results", v9 + 16);
      v16 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
      if (v16)
      {
        v41 = 0;
        v39 = 0;
        v40 = 0;
        v38 = 0;
        CStringPtr = CFStringGetCStringPtr(v16, 0);
        sscanf(CStringPtr, "%x:%x:%x:%x:%x:%x", &v41, &v40 + 4, &v40, &v39 + 4, &v39, &v38);
        v18 = BYTE4(v40);
        *v9 = v41;
        v9[1] = v18;
        v19 = BYTE4(v39);
        v9[2] = v40;
        v9[3] = v19;
        v20 = v38;
        v9[4] = v39;
        v9[5] = v20;
      }

      v21 = CFDictionaryGetValue(ValueAtIndex, @"CAPABILITIES");
      if (v21 && CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr))
      {
        *(v9 + 64) = valuePtr;
      }

      v22 = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
      if (v22 && CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr))
      {
        *(v9 + 63) = 5 * valuePtr + 2407;
      }

      v23 = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
      if (v23 && CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr))
      {
        *(v9 + 67) = valuePtr;
      }

      v24 = CFDictionaryGetValue(ValueAtIndex, @"NOISE");
      if (v24 && CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr))
      {
        *(v9 + 66) = valuePtr;
      }

      v25 = CFDictionaryGetValue(ValueAtIndex, @"IE");
      if (v25)
      {
        v26 = v25;
        v27 = CFDataGetBytePtr(v25);
        v28 = CFDataGetLength(v26);
        if (v28 >= 3)
        {
          break;
        }
      }

LABEL_47:
      if (++v8 == a3)
      {
        return a3;
      }
    }

    v29 = &v27[v28];
    v30 = v27 + 2;
    while (1)
    {
      v31 = v27[1];
      if (&v30[v31] > v29)
      {
        asl_log(0, 0, 5, "%s: invalid Information Element\n", "wpa_driver_apple80211_get_scan_results");
        goto LABEL_47;
      }

      v32 = *v27;
      if (v31 <= 0x28 && v32 == 48)
      {
        sub_1000061CC(v9 + 104, v27, v31 + 2);
        v33 = v27[1] + 2;
        *(v9 + 12) = v33;
        sub_100000B44(1, " getscanresults RSN IE:", (v9 + 104), v33);
        v32 = *v27;
        LODWORD(v31) = v27[1];
      }

      if (v32 != 221)
      {
        goto LABEL_38;
      }

      if (v31 >= 5 && !*v30 && v27[3] == 80 && v27[4] == 242 && v27[5] == 1)
      {
        break;
      }

LABEL_42:
      v27 = &v30[v31];
      v30 = v27 + 2;
      if ((v27 + 2) >= v29)
      {
        goto LABEL_47;
      }
    }

    sub_1000061CC(v9 + 56, v27, v31 + 2);
    v34 = v27[1] + 2;
    *(v9 + 6) = v34;
    sub_100000B44(1, " getscanresults WPA IE:", (v9 + 56), v34);
    v32 = *v27;
    LODWORD(v31) = v27[1];
LABEL_38:
    v35 = v32 == 68 && v31 >= 5;
    if (v35 && *v30 == 1)
    {
      v36 = v31 + 2;
      *(v9 + 18) = v36;
      sub_1000061CC(v9 + 152, v27, v36);
      sub_100000B44(1, " getscanresults WAPI IE:", (v9 + 152), *(v9 + 18));
      LODWORD(v31) = v27[1];
    }

    goto LABEL_42;
  }

  return a3;
}

uint64_t sub_1000074E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  if (a3 < 0x801)
  {
    sub_100000B44(1, "setting WAPI IE:", a2, a3);
    v7 = 0x400000001;
    v8 = 1;
    v9 = v3;
    v10 = v3;
    __memcpy_chk();
    *(a1 + 88) = 85;
    *(a1 + 96) = 2068;
    *(a1 + 104) = &v7;
    strncpy((a1 + 72), (a1 + 36), 0x10uLL);
    v6 = *(a1 + 8);
    if (Apple80211RawSet())
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
    asl_log(0, 0, 5, "%s: Information Element too large (%d) \n\n", "wpa_driver_apple80211_set_gen_ie", a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100007678(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a7;
  v11 = a4;
  asl_log(0, 0, 5, "%s: alg=%d key_idx=%d set_tx=%d seq_len=%lu key_len=%lu\n", "wpa_driver_apple80211_set_key", a2, a4, a5, a7, a9);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  if (a2)
  {
    if (a2 != 4)
    {
      asl_log(0, 0, 5, "%s: Unknown algorithm %d\n", "wpa_driver_apple80211_set_key", a2);
      return 0xFFFFFFFFLL;
    }

    LODWORD(v18) = 8;
  }

  v17[0] = 1;
  v17[1] = a9;
  WORD3(v18) = v11;
  __memcpy_chk();
  DWORD2(v22) = v9;
  __memcpy_chk();
  DWORD1(v23) = *a3;
  WORD4(v23) = *(a3 + 4);
  if (a5)
  {
    WORD2(v18) = 4;
  }

  *(a1 + 88) = 3;
  *(a1 + 96) = 148;
  *(a1 + 104) = v17;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v15 = *(a1 + 8);
  if (Apple80211RawSet())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000782C(uint64_t a1, uint64_t a2, int a3)
{
  v6[0] = 1;
  v6[1] = a3;
  v6[2] = *a2;
  v7 = 0;
  LOWORD(v7) = *(a2 + 4);
  *(a1 + 88) = 29;
  *(a1 + 96) = 16;
  *(a1 + 104) = v6;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v4 = *(a1 + 8);
  if (Apple80211RawSet())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000078A8(uint64_t a1)
{
  *(a1 + 88) = 22;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  strncpy((a1 + 72), (a1 + 36), 0x10uLL);
  v2 = *(a1 + 8);
  if (Apple80211RawSet())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000078FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[2];
  if (!v7)
  {
    asl_log(0, 0, 5, "No scan results - cannot associate\n");
    return 0xFFFFFFFFLL;
  }

  if (!*(v4 + 777))
  {
    asl_log(0, 0, 5, "Could not find WAPI IE!\n");
    return 0xFFFFFFFFLL;
  }

  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v9 = 0;
    v10 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v9);
      Value = CFDictionaryGetValue(ValueAtIndex, @"SSID");
      if (Value)
      {
        v13 = Value;
        Length = CFDataGetLength(Value);
        if (Length == *(a2 + 16))
        {
          v15 = Length;
          BytePtr = CFDataGetBytePtr(v13);
          if (!sub_10000632C(BytePtr, *(a2 + 8), v15))
          {
            break;
          }
        }
      }

      if (v10 == ++v9)
      {
        goto LABEL_16;
      }
    }

    a1[8] = ValueAtIndex;
    CFRetain(ValueAtIndex);
  }

LABEL_16:
  if (!a1[8])
  {
    asl_log(0, 0, 5, "Could not find SSID from scan results! \n");
  }

  asl_log(0, 0, 5, "Trying to associate with a BSS found from scan results\n");
  bzero(v27, 0x388uLL);
  v26 = 1;
  sub_100000C88(1, " bssid =", *a2, 6uLL);
  v18 = *a2;
  if (*a2)
  {
    v19 = *v18;
    v31 = *(v18 + 2);
    v30 = v19;
  }

  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  __memcpy_chk();
  v29 = v21;
  v32 = 1;
  v34 = 8;
  v28 = 0x20000000001;
  v27[0] = 2;
  v35 = *(v4 + 777);
  __memcpy_chk();
  if (*(v5 + 92))
  {
    asl_log(0, 0, 5, "%s WFMacRandomisation : Private MAC address enabled\n", "wpa_driver_apple80211_associate");
    v22 = *(v5 + 96);
    if ((*v22 & 3) == 2)
    {
      v36 |= 8u;
      v23 = *(v22 + 2);
      v37 = *v22;
      v38 = v23;
      asl_log(0, 0, 5, "%s WFMacRandomisation : Valid Private MAC address found. Will be used for association :  %02x:%02x:%02x:%02x:%02x:%02x\n \n", "wpa_driver_apple80211_associate", v37, BYTE1(v37), BYTE2(v37), HIBYTE(v37), v23, HIBYTE(v23));
      v24 = a1[7];
      asl_log(0, 0, 5, "%s WFMacRandomisation : Sanity Check. Mac Address with WAPI : %02x:%02x:%02x:%02x:%02x:%02x\n \n", "wpa_driver_apple80211_associate", *v24, v24[1], v24[2], v24[3], v24[4], v24[5]);
    }
  }

  asl_log(0, 0, 5, "ad.ad_auth_lower = %d ad.ad_auth_upper = %d ad.ad_key.key_len = %d ad.ad_key.key_cipher_type = %d\n\n", v28, HIDWORD(v28), v33, v34);
  *(a1 + 22) = 20;
  *(a1 + 24) = 908;
  a1[13] = &v26;
  strncpy(a1 + 72, a1 + 36, 0x10uLL);
  v25 = a1[1];
  if (!Apple80211RawSet())
  {
    return 0;
  }

  sub_100013A5C();
  return 0xFFFFFFFFLL;
}

uint64_t sub_100007C74(uint64_t a1)
{
  v2 = *(a1 + 60);
  v1 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v12 = time(0);
  v5 = localtime(&v12);
  v6 = asctime(v5);
  v6[strlen(v6) - 6] = 0;
  v7 = "APPLE80211_M_BSSID_CHANGED";
  switch(v2)
  {
    case 1:
      asl_log(0, 0, 5, "%s [%s] %s\n\n", "darwin_wireless_event_receive", v6, "APPLE80211_M_POWER_CHANGED");
      return raise(15);
    case 2:
      return asl_log(0, 0, 5, "%s [%s] %s\n\n");
    case 3:
      goto LABEL_33;
    case 4:
      result = asl_log(0, 0, 5, "%s [%s] %s\n\n", "darwin_wireless_event_receive", v6, "APPLE80211_M_LINK_CHANGED");
      if (v3 && v1 == 8)
      {
        if (*v3)
        {
          return asl_log(0, 0, 5, "state = up\n\n");
        }

        else
        {
          sub_100008014(v3[1]);
          return asl_log(0, 0, 5, "state = down, reason = %u (%s)\n\n");
        }
      }

      return result;
    case 5:
      v7 = "APPLE80211_M_MIC_ERROR_UCAST";
      goto LABEL_33;
    case 6:
      v7 = "APPLE80211_M_MIC_ERROR_MCAST";
      goto LABEL_33;
    case 7:
      v7 = "APPLE80211_M_INT_MIT_CHANGED";
      goto LABEL_33;
    case 8:
      v7 = "APPLE80211_M_MODE_CHANGED";
      goto LABEL_33;
    case 9:
      asl_log(0, 0, 5, "%s [%s] %s\n\n", "darwin_wireless_event_receive", v6, "APPLE80211_M_ASSOC_DONE");
      if (sub_1000068E4(v4))
      {
        raise(15);
      }

      asl_log(0, 0, 5, "Associated successfully; starting WAI..\n");
      v10 = *v4;
      v11 = 0;
      return sub_100004138(v10, v11);
    case 10:
      asl_log(0, 0, 5, "%s [%s] %s\n\n", "darwin_wireless_event_receive", v6, "APPLE80211_M_SCAN_DONE");
      if (v3 && v1)
      {
        v9 = v4[2];
        if (v9)
        {
          CFRelease(v9);
        }

        v4[2] = CFRetain(v3);
      }

      v10 = *v4;
      v11 = 3;
      return sub_100004138(v10, v11);
    case 11:
      v7 = "APPLE80211_M_COUNTRY_CODE_CHANGED";
      goto LABEL_33;
    case 12:
      v7 = "APPLE80211_M_STA_ARRIVE";
      goto LABEL_33;
    case 13:
      v7 = "APPLE80211_M_STA_LEAVE";
      goto LABEL_33;
    case 15:
      v7 = "APPLE80211_M_SCAN_CACHE_UPDATED";
      goto LABEL_33;
    case 16:
      v7 = "APPLE80211_M_INTERNAL_SCAN_DONE";
      goto LABEL_33;
    case 17:
      v7 = "APPLE80211_M_LINK_QUALITY";
      goto LABEL_33;
    case 18:
      v7 = "APPLE80211_M_IBSS_PEER_ARRIVED";
      goto LABEL_33;
    case 19:
      v7 = "APPLE80211_M_IBSS_PEER_LEFT";
      goto LABEL_33;
    case 20:
      v7 = "APPLE80211_M_RSN_HANDSHAKE_DONE";
      goto LABEL_33;
    case 21:
      v7 = "APPLE80211_M_BT_COEX_CHANGED";
      goto LABEL_33;
    default:
      v7 = "UNKNOWN";
LABEL_33:
      asl_log(0, 0, 5, "%s [%s] %s\n\n", "darwin_wireless_event_receive", v6, v7);
      return sub_100000C88(4, "Unrecognized Event:", v3, v1);
  }
}

uint64_t sub_100007FF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return asl_log(0, 0, 5, a4);
}

const char *sub_100008014(int a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return "unknown reason";
  }

  else
  {
    return off_10001C650[a1 - 1];
  }
}

uint64_t sub_10000803C(uint64_t a1, unsigned int a2)
{
  puts("DATA:");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    if (a2 >= 0x1000)
    {
      v6 = 4096;
    }

    else
    {
      v6 = a2;
    }

    while (1)
    {
      if (!v4)
      {
        goto LABEL_8;
      }

      HIDWORD(v7) = -858993459 * v4 - 858993459;
      LODWORD(v7) = HIDWORD(v7);
      if ((v7 >> 1) <= 0x19999999)
      {
        break;
      }

LABEL_9:
      printf("0x%02x ", *(a1 + v4++));
      if (v6 == v4)
      {
        goto LABEL_10;
      }
    }

    putchar(10);
LABEL_8:
    printf("%u ", v5);
    v5 += 10;
    goto LABEL_9;
  }

LABEL_10:

  return putchar(10);
}

uint64_t sub_100008124(int a1, const char *a2, const UInt8 *a3, unsigned int a4)
{
  asl_log(0, 0, 5, "%s; parameters %s\n", "_WCXwapic_start", a2);
  if (a3 && a4 && (v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a3, a4, kCFAllocatorNull)) != 0 && (v9 = v8, v10 = CFPropertyListCreateWithData(kCFAllocatorDefault, v8, 1uLL, 0, 0), CFRelease(v9), v10))
  {
    v11 = 0;
  }

  else
  {
    asl_log(0, 0, 5, "_SCUnserialize failed\n");
    v10 = 0;
    v11 = 1;
  }

  if (!a2 || (v12 = strlen(a2), v12 - 16 < 0xFFFFFFFFFFFFFFF1))
  {
    v34 = 5;
    goto LABEL_37;
  }

  if (v11)
  {
    sub_100013B10(v12, v13, v14);
    v34 = 4294963396;
  }

  else
  {
    v15 = malloc_type_malloc(0x28uLL, 0x10E00408EA3E82FuLL);
    *(v15 + 20) = 0u;
    *(v15 + 9) = 0;
    *(v15 + 4) = 0u;
    *v15 = a1;
    strncpy(v15 + 4, a2, 0x10uLL);
    v15[3] = CFDictionaryCreateCopy(kCFAllocatorDefault, v10);
    memset(&v39, 0, sizeof(v39));
    pthread_attr_init(&v39);
    pthread_attr_setdetachstate(&v39, 2);
    v16 = qword_100020798;
    if (qword_100020798)
    {
      v17 = pthread_self();
      asl_log(0, 0, 5, "%s; signaling wapi thread to stop %p (self=%p)\n", "_WCXwapic_start", v16, v17);
      pthread_kill(qword_100020798, 1);
      pthread_join(qword_100020798, 0);
      asl_log(0, 0, 5, "%s; wapi thread joined\n", "_WCXwapic_start");
    }

    else
    {
      v18 = sub_10000321C();
      v15[4] = v18;
      if (!v18)
      {
        sub_100013ADC(0, v19, v20);
        v34 = 6;
        goto LABEL_37;
      }

      sub_100001BD4(v18);
    }

    dword_100020100 = 1;
    v21 = pthread_create(&qword_100020798, &v39, sub_100002DD8, v15);
    if (v21)
    {
      v34 = v21;
      sub_100013AA8();
    }

    else
    {
      v38 = -1;
      pthread_sigmask(1, &v38, 0);
      Value = CFDictionaryGetValue(v10, @"WAPI");
      size = a4;
      if (Value && (valuePtr = 0, CFNumberGetValue(Value, kCFNumberIntType, &valuePtr)) && (valuePtr & 0xC) == 4)
      {
        v23 = 4;
        v24 = 4294963372;
        v25 = 2;
      }

      else
      {
        v23 = 3;
        v24 = 4294963394;
        v25 = 8;
      }

      Current = CFAbsoluteTimeGetCurrent();
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 1u);
      wapi_state = lib_get_wapi_state();
      asl_log(0, 0, 5, "lib_get_wapi_state = %d\n", wapi_state);
      if (wapi_state >= v23)
      {
        v32 = 0;
      }

      else
      {
        v28 = 0;
        v29 = Current + v25;
        do
        {
          if (v28)
          {
            v30 = CFAbsoluteTimeGetCurrent();
            v31 = v28 - 1;
            if (v30 >= v29)
            {
              v31 = v28;
            }
          }

          else
          {
            v31 = 0;
          }

          v28 = v31 + 1;
          v32 = (v31 + 1);
          if (v25 <= v32)
          {
            break;
          }

          CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 1u);
          wapi_state = lib_get_wapi_state();
          asl_log(0, 0, 5, "lib_get_wapi_state = %d\n", wapi_state);
        }

        while (wapi_state < v23);
      }

      v33 = 0;
      if (v25 <= v32 && wapi_state <= 3)
      {
        if (wapi_state <= 1)
        {
          asl_log(0, 0, 5, "we never got past assoc state (auth not in progress), bailing.\n");
          sub_100003274(v15[4]);
          WIFI_lib_exit();
          sub_100001EF8(0, 1u, sub_100002420, 0, 0);
        }

        v33 = v24;
      }

      asl_log(0, 0, 5, "%s; run_wapi_thread %d\n", "_WCXwapic_start", v33);
      pthread_attr_destroy(&v39);
      v34 = v33;
      if (!v33)
      {
        vm_deallocate(mach_task_self_, a3, size);
        return v34;
      }
    }
  }

LABEL_37:
  asl_log(0, 0, 5, "%s: returned %d\n", "_WCXwapic_start", v34);
  return v34;
}

void sub_1000085E8(uint64_t a1, const char *a2)
{
  dword_100020100 = -1;
  asl_log(0, 0, 5, "%s; parameters %s\n", "_WCXwapic_stop", a2);
  exit(0);
}

uint64_t sub_100008630(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = dword_100020100;
  *a3 = dword_100020100;
  if (v3 != 1)
  {
    exit(0);
  }

  return 0;
}

uint64_t sub_100008660(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 57415052) >= 0xFFFFFFFD)
  {
    return *(&off_10001C7B8 + 5 * (v1 - 57415049) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000086A0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 88)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 84)))
    {
      result = sub_100008124(*(a1 + 12), (a1 + 52), *(a1 + 28), v3);
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

uint64_t sub_100008734(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && *(result + 4) == 64)
  {
    sub_1000085E8(*(result + 12), (result + 32));
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100008798(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 64)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100008630(result[3], (result + 8), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_10000881C(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 57415052) >= 0xFFFFFFFD && (v5 = *(&off_10001C7B8 + 5 * (v4 - 57415049) + 5)) != 0)
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

uint64_t SMS4Crypt(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  v3 = bswap32(*a1);
  v4 = bswap32(a1[1]);
  v5 = bswap32(a1[2]);
  v6 = bswap32(a1[3]);
  v7 = (a3 + 8);
  v8 = -4;
  do
  {
    v9 = v5 ^ v6 ^ v4 ^ *(v7 - 2);
    LODWORD(v9) = (Sbox[v9 >> 24] << 24) | (Sbox[BYTE2(v9)] << 16) | (Sbox[BYTE1(v9)] << 8) | Sbox[(v5 ^ v6 ^ v4 ^ *(v7 - 8))];
    v3 ^= __ROR4__(v9, 22) ^ __ROR4__(v9, 30) ^ __ROR4__(v9, 14) ^ __ROR4__(v9, 8) ^ v9;
    v10 = v5 ^ v6 ^ *(v7 - 1) ^ v3;
    HIDWORD(v11) = (Sbox[v10 >> 24] << 24) | (Sbox[BYTE2(v10)] << 16) | (Sbox[BYTE1(v10)] << 8) | Sbox[(v5 ^ v6 ^ *(v7 - 4) ^ v3)];
    LODWORD(v11) = HIDWORD(v11);
    v4 ^= (v11 >> 22) ^ __ROR4__(HIDWORD(v11), 30) ^ __ROR4__(HIDWORD(v11), 14) ^ __ROR4__(HIDWORD(v11), 8) ^ HIDWORD(v11);
    LODWORD(v10) = *v7;
    LODWORD(v9) = v7[1];
    v7 += 4;
    v12 = v6 ^ v10 ^ v3 ^ v4;
    result = Sbox[BYTE1(v12)];
    HIDWORD(v11) = (Sbox[v12 >> 24] << 24) | (Sbox[BYTE2(v12)] << 16) | (result << 8) | Sbox[v12];
    LODWORD(v11) = HIDWORD(v11);
    v5 ^= (v11 >> 22) ^ __ROR4__(HIDWORD(v11), 30) ^ __ROR4__(HIDWORD(v11), 14) ^ __ROR4__(HIDWORD(v11), 8) ^ HIDWORD(v11);
    HIDWORD(v11) = (Sbox[(v3 ^ v9 ^ v4 ^ v5) >> 24] << 24) | (Sbox[((v3 ^ v9 ^ v4 ^ v5) >> 16)] << 16) | (Sbox[(v3 ^ v9 ^ v4 ^ v5) >> 8] << 8) | Sbox[(v3 ^ v9 ^ v4 ^ v5)];
    LODWORD(v11) = HIDWORD(v11);
    v6 ^= (v11 >> 22) ^ __ROR4__(HIDWORD(v11), 30) ^ __ROR4__(HIDWORD(v11), 14) ^ __ROR4__(HIDWORD(v11), 8) ^ HIDWORD(v11);
    v8 += 4;
  }

  while (v8 < 0x1C);
  *a2 = bswap32(v6);
  a2[1] = bswap32(v5);
  a2[2] = bswap32(v4);
  a2[3] = bswap32(v3);
  return result;
}

uint64_t SMS4KeyExt(_DWORD *a1, uint64_t a2)
{
  v2 = bswap32(*a1 ^ 0xC6BAB1A3);
  v3 = bswap32(a1[1] ^ 0x5033AA56);
  v4 = bswap32(a1[2] ^ 0x97917D67);
  v5 = bswap32(a1[3] ^ 0xDC2270B2);
  v6 = (a2 + 8);
  v7 = -4;
  v8 = &dword_100018180;
  do
  {
    v9 = v4 ^ v5 ^ v3 ^ *(v8 - 2);
    LODWORD(v9) = (Sbox[v9 >> 24] << 24) | (Sbox[BYTE2(v9)] << 16) | (Sbox[BYTE1(v9)] << 8) | Sbox[(v4 ^ v5 ^ v3 ^ *(v8 - 8))];
    v2 ^= __ROR4__(v9, 9) ^ __ROR4__(v9, 19) ^ v9;
    *(v6 - 2) = v2;
    v10 = v4 ^ v5 ^ *(v8 - 1) ^ v2;
    HIDWORD(v11) = (Sbox[v10 >> 24] << 24) | (Sbox[BYTE2(v10)] << 16) | (Sbox[BYTE1(v10)] << 8) | Sbox[(v4 ^ v5 ^ *(v8 - 4) ^ v2)];
    LODWORD(v11) = HIDWORD(v11);
    v3 ^= (v11 >> 9) ^ __ROR4__(HIDWORD(v11), 19) ^ HIDWORD(v11);
    *(v6 - 1) = v3;
    v12 = v5 ^ *v8 ^ v2 ^ v3;
    HIDWORD(v11) = (Sbox[v12 >> 24] << 24) | (Sbox[BYTE2(v12)] << 16) | (Sbox[BYTE1(v12)] << 8) | Sbox[(v5 ^ *v8 ^ v2 ^ v3)];
    LODWORD(v11) = HIDWORD(v11);
    v4 ^= (v11 >> 9) ^ __ROR4__(HIDWORD(v11), 19) ^ HIDWORD(v11);
    *v6 = v4;
    v13 = v2 ^ v8[1] ^ v3 ^ v4;
    result = Sbox[BYTE1(v13)];
    HIDWORD(v11) = (Sbox[v13 >> 24] << 24) | (Sbox[BYTE2(v13)] << 16) | (result << 8) | Sbox[(v2 ^ *(v8 + 4) ^ v3 ^ v4)];
    LODWORD(v11) = HIDWORD(v11);
    v5 ^= (v11 >> 9) ^ __ROR4__(HIDWORD(v11), 19) ^ HIDWORD(v11);
    v6[1] = v5;
    v7 += 4;
    v8 += 4;
    v6 += 4;
  }

  while (v7 < 0x1C);
  return result;
}

uint64_t wpi_encrypt(unsigned int *a1, _DWORD *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (!a3)
  {
    return 1;
  }

  SMS4KeyExt(a4, v18);
  v9 = a3 & 0xF;
  SMS4Crypt(a1, v19, v18);
  if (a3 >= 0x10)
  {
    v10 = a3 >> 4;
    do
    {
      v11 = v19[1];
      *a5 = v19[0] ^ *a2;
      a5[1] = v11 ^ a2[1];
      v12 = v19[3];
      a5[2] = v19[2] ^ a2[2];
      a5[3] = v12 ^ a2[3];
      SMS4Crypt(v19, v19, v18);
      a2 += 4;
      a5 += 4;
      --v10;
    }

    while (v10);
  }

  if (v9)
  {
    v13 = v19;
    do
    {
      v15 = *a2;
      a2 = (a2 + 1);
      v14 = v15;
      v16 = *v13;
      v13 = (v13 + 1);
      *a5 = v16 ^ v14;
      a5 = (a5 + 1);
      --v9;
    }

    while (v9);
  }

  return 0;
}

double wpi_pmac(unsigned int *a1, int8x16_t *a2, int a3, _DWORD *a4, int8x16_t *a5)
{
  if ((a3 - 4097) >= 0xFFFFF000)
  {
    v6 = a3;
    SMS4KeyExt(a4, v11);
    SMS4Crypt(a1, &v12, v11);
    do
    {
      v9 = *a2++;
      v12 = veorq_s8(v12, v9);
      SMS4Crypt(&v12, &v12, v11);
      --v6;
    }

    while (v6);
    result = *v12.i64;
    *a5 = v12;
  }

  return result;
}

uint64_t unpack_private_key(_BYTE *a1, _BYTE *a2, unsigned int a3)
{
  *a1 = a2[2];
  v3 = a2[3];
  a1[1] = v3;
  if (v3 + 4 > a3)
  {
    return -1;
  }

  memcpy(a1 + 2, a2 + 4, v3);
  a1[4] = a2[v3 + 4];
  v7 = a2[v3 + 5];
  a1[5] = v7;
  v8 = v3 + 6;
  if (v7 + v8 > a3)
  {
    return -1;
  }

  memcpy(a1 + 8, &a2[v8], v7);
  v9 = (v8 + v7);
  a1[264] = a2[v9];
  a1[265] = a2[v9 + 1];
  a1[266] = a2[v9 + 2];
  v10 = a2[v9 + 3];
  a1[267] = v10;
  v11 = v9 + 4;
  if (v10 + v9 + 4 > a3)
  {
    return -1;
  }

  memcpy(a1 + 268, &a2[v11], v10);
  v12 = (v11 + v10);
  a1[524] = a2[v12];
  a1[525] = a2[v12 + 1];
  a1[526] = a2[v12 + 2];
  v13 = a2[v12 + 3];
  a1[527] = v13;
  v14 = v12 + 4;
  if (v13 + v12 + 4 <= a3)
  {
    memcpy(a1 + 528, &a2[v14], v13);
    return (v14 + v13);
  }

  else
  {
    return -1;
  }
}

uint64_t ParsePubKey(unsigned __int8 **a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = *a1;
  v21 = 0;
  v25 = 0;
  memset(__dst, 0, sizeof(__dst));
  sub_100009150(&v23, a2, 0);
  sub_100009150(&v23, a2, &v22);
  v22 = 100;
  if (sub_1000091CC(&v23, a2, __dst, &v22, &v21))
  {
    return 1;
  }

  v9 = v23;
  v10 = v21;
  v8 = 1;
  if (!sub_100009300(__dst, v22, v23, v21, 1))
  {
    v11 = &v9[v10];
    v23 = &v9[v10];
    if ((v9[v10] & 0x1F) == 3)
    {
      v12 = v11[1];
      if (v11[1] < 0)
      {
        v14 = v12 & 0x7F;
        v15 = (v12 & 0x7F) == 0 || (v11 + 2) >= a2;
        if (v15)
        {
          return v8;
        }

        v12 = 0;
        v17 = &v9[v10 + 3];
        v18 = v14 - 1;
        do
        {
          v12 = *(v17 - 1) | (v12 << 8);
          v15 = v18-- != 0;
          if (!v15)
          {
            break;
          }

          v15 = v17++ >= a2;
        }

        while (!v15);
      }

      v22 = v12;
      if (v12 != 50)
      {
        return 1;
      }

      if (!a3 || *a4 < 0x31)
      {
        v13 = 50;
LABEL_10:
        v8 = 0;
        *a4 = v13;
        return v8;
      }

      if (sub_1000093C4(&v23, a2, __dst, &v22))
      {
        return 1;
      }

      v8 = 1;
      if (BYTE1(__dst[0]) == 4 && !LOBYTE(__dst[0]))
      {
        v19 = *(&__dst[1] + 1);
        *a3 = *(__dst + 1);
        *(a3 + 16) = v19;
        *(a3 + 32) = *(&__dst[2] + 1);
        *(a3 + 48) = BYTE1(__dst[3]);
        v20 = v22;
        *a1 = v23;
        v13 = v20 - 1;
        goto LABEL_10;
      }
    }
  }

  return v8;
}

void *sub_100009150(void *result, unint64_t a2, unint64_t *a3)
{
  v3 = (*result + 1);
  if ((~**result & 0x1F) == 0)
  {
    do
    {
      v4 = *v3++;
    }

    while (v4 < 0 && v3 < a2);
  }

  v5 = *v3;
  if (*v3 < 0)
  {
    v7 = v5 & 0x7F;
    v6 = (v3 + 1);
    v8 = (v5 & 0x7F) == 0;
    v5 = 0;
    v9 = v8 || v6 >= a2;
    if (!v9)
    {
      v10 = v7 - 1;
      do
      {
        v11 = *v6++;
        v5 = v11 | (v5 << 8);
        v9 = v10-- != 0;
      }

      while (v9 && v6 < a2);
    }
  }

  else
  {
    v6 = (v3 + 1);
  }

  *result = v6;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_1000091CC(void *a1, unint64_t a2, void *__dst, size_t *a4, uint64_t *a5)
{
  v5 = *a1;
  if (**a1 != 6)
  {
    return 1;
  }

  v7 = v5[1];
  if (v5[1] < 0)
  {
    v10 = v7 & 0x7F;
    v8 = v5 + 2;
    v11 = (v7 & 0x7F) == 0;
    v7 = 0;
    v12 = v11 || v8 >= a2;
    if (!v12)
    {
      v13 = v10 - 1;
      do
      {
        v14 = *v8++;
        v7 = v14 | (v7 << 8);
        v12 = v13-- != 0;
      }

      while (v12 && v8 < a2);
    }
  }

  else
  {
    v8 = v5 + 2;
  }

  v15 = *a4;
  *a4 = v7;
  if (a5)
  {
    v16 = &v8[v7];
    if (v8[v7] == 5)
    {
      v17 = 2;
    }

    else
    {
      v18 = v16[1];
      if (v16[1] < 0)
      {
        v20 = v18 & 0x7F;
        v19 = v16 + 2;
        v11 = (v18 & 0x7F) == 0;
        v18 = 0;
        if (!v11 && v19 < a2)
        {
          v22 = v20 - 1;
          do
          {
            v23 = *v19++;
            v18 = v23 | (v18 << 8);
            v12 = v22-- != 0;
          }

          while (v12 && v19 < a2);
        }
      }

      else
      {
        v19 = v16 + 2;
      }

      v17 = v19 - &v8[v7] + v18;
    }

    *a5 = v17;
  }

  if (!__dst)
  {
    return 0;
  }

  if (v7 < v15)
  {
    v15 = v7;
  }

  memcpy(__dst, v8, v15);
  result = 0;
  *a1 = &v8[v7];
  return result;
}

BOOL sub_100009300(unint64_t __s2, size_t __n, unint64_t a3, uint64_t a4, int a5)
{
  if (!(__s2 | a3))
  {
    return 1;
  }

  if (__s2)
  {
    v10 = 7;
    if (!a5)
    {
      v10 = 8;
    }

    if (v10 != __n)
    {
      return 0;
    }

    v11 = a5 ? &asc_10001C858[2] : &asc_10001CC68[2];
    if (memcmp(v11, __s2, __n))
    {
      return 0;
    }
  }

  if (!a3)
  {
    return 1;
  }

  if (a4 != 11)
  {
    return 0;
  }

  v12 = &unk_10001CA5C;
  if (!a5)
  {
    v12 = &unk_10001CE6C;
  }

  v13 = *v12;
  v14 = *(v12 + 3);
  return v13 == *a3 && v14 == *(a3 + 3);
}

uint64_t sub_1000093C4(unsigned __int8 **a1, unint64_t a2, void *__dst, size_t *a4)
{
  v6 = *a1;
  v7 = (*a1)[1];
  if ((*a1)[1] < 0)
  {
    v9 = v7 & 0x7F;
    v8 = v6 + 2;
    v10 = (v7 & 0x7F) == 0;
    v7 = 0;
    v11 = v10 || v8 >= a2;
    if (!v11)
    {
      v12 = v9 - 1;
      do
      {
        v13 = *v8++;
        v7 = v13 | (v7 << 8);
        v11 = v12-- != 0;
      }

      while (v11 && v8 < a2);
    }
  }

  else
  {
    v8 = v6 + 2;
  }

  if (__dst && *a4 >= v7)
  {
    v15 = *v6;
    result = 1;
    if (v15 <= 0x1E && ((1 << v15) & 0x50081018) != 0)
    {
      memcpy(__dst, v8, v7);
      result = 0;
      *a4 = v7;
      *a1 = &v8[v7];
    }
  }

  else
  {
    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t Base64Dec(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if ((a3 & 3) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v6 = a3 + 4;
    do
    {
      v7 = (a1 + v3);
      v8 = sub_100009594(*a2);
      v9 = sub_100009594(a2[1]);
      v10 = sub_100009594(a2[2]);
      v11 = sub_100009594(a2[3]);
      *v7 = (v9 >> 4) | (4 * v8);
      v7[1] = (v10 >> 2) | (16 * v9);
      v7[2] = v11 | (v10 << 6);
      a2 += 4;
      v3 += 3;
      v6 -= 4;
    }

    while (v6 > 4);
  }

  if (*a1 == 48)
  {
    v12 = *(a1 + 1);
    if (v12 == 130)
    {
      return __rev16(*(a1 + 2)) + 4;
    }

    else
    {
      return (v12 + 2);
    }
  }

  return v3;
}

uint64_t sub_100009594(int a1)
{
  v1 = a1 - 65;
  if (a1 == 47)
  {
    v2 = 63;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 61)
  {
    v2 = 0;
  }

  if (a1 == 43)
  {
    v3 = 62;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 - 48) <= 9)
  {
    v4 = a1 + 4;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 - 97) <= 0x19)
  {
    v5 = a1 - 71;
  }

  else
  {
    v5 = v4;
  }

  if (v1 >= 0x1A)
  {
    LOBYTE(v1) = v5;
  }

  return v1;
}

uint64_t get_realinfo_from_cert(uint64_t a1, char *a2, int a3, char *__s, char *a5)
{
  v10 = strlen(__s);
  v11 = 0;
  if (a2)
  {
    if (__s)
    {
      if (a5)
      {
        v12 = v10;
        v13 = strlen(a5);
        v14 = sub_1000096EC(a2, a3, __s, v12);
        v15 = sub_1000096EC(a2, a3, a5, v13);
        v11 = 0;
        if (v14)
        {
          if (v14 < v15)
          {
            v16 = &v14[v12];
            if (v16 < v15)
            {
              v17 = 0;
              do
              {
                v18 = *v16;
                v19 = (v18 - 47) >= 0xB && (v18 & 0xFFFFFFDF) - 65 >= 0x1A;
                if (!v19 || v18 == 61 || v18 == 43)
                {
                  *(a1 + v17++) = v18;
                }

                ++v16;
              }

              while (v16 < v15);
            }

            return a1;
          }
        }
      }
    }
  }

  return v11;
}

char *sub_1000096EC(char *__s1, int a2, void *__s2, size_t __n)
{
  result = 0;
  if (a2 >= __n && ((__n | a2) & 0x80000000) == 0)
  {
    v6 = &__s1[a2 - __n];
    if (v6 < __s1)
    {
      return 0;
    }

    else
    {
      v8 = __n;
      while (memcmp(__s1, __s2, v8))
      {
        if (++__s1 > v6)
        {
          return 0;
        }
      }

      return __s1;
    }
  }

  return result;
}

uint64_t iwn_x509_get_pubkey(uint64_t a1)
{
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = a1 + 4;
  v8 = (a1 + 4);
  v2 = *(a1 + 2);
  buffer = iwn_get_buffer(2052);
  if (buffer)
  {
    v4 = v1 + v2;
    v10 = 0;
    sub_100009150(&v8, v4, 0);
    sub_100009150(&v8, v4, 0);
    sub_100009150(&v8, v4, 0);
    sub_100009150(&v8, v4, &v10);
    if (*v8 == 2)
    {
      v8 += v10;
      v5 = v8;
      sub_100009150(&v8, v4, &v10);
      v8 += v10;
      if ((v8 - v5) <= 0xFF)
      {
        sub_100009150(&v8, v4, 0);
        v10 = 100;
        if (!sub_1000091CC(&v8, v4, __dst, &v10, &v9) && &v8[v9] <= v4 && (v10 != 8 || __dst[0] != 0xD7001C0081002ALL))
        {
          v8 += v9;
          sub_1000099D4(&v8, v4, 0, &v10);
          if (!sub_100009A5C(&v8, v4))
          {
            sub_1000099D4(&v8, v4, 0, &v10);
            v10 = 2048;
            if (!ParsePubKey(&v8, v4, (buffer + 2), &v10))
            {
              v7 = v10;
              *buffer = v10;
              asl_log(0, 0, 5, "iwn_x509_get_pubkey: tmp = '%ld', '%s', '%d' \n", v7, "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 672);
              iwn_wpa_hexdump(2, "get_x509_cert value", (buffer + 2), *buffer);
              return buffer;
            }

            asl_log(0, 0, 5, "iwn_x509_get_pubkey: '%s', '%d' \n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 666);
          }
        }
      }
    }

    return iwn_free_buffer(buffer, 2052);
  }

  return buffer;
}

void *sub_1000099D4(const void **a1, unint64_t a2, void *a3, size_t *a4)
{
  v7 = *a1;
  v11 = 0;
  v12 = v7;
  result = sub_100009150(&v12, a2, &v11);
  v9 = &v12[v11];
  if (&v12[v11] - v7 >= *a4)
  {
    v10 = *a4;
  }

  else
  {
    v10 = &v12[v11] - v7;
  }

  if (a3)
  {
    result = memcpy(a3, v7, v10);
  }

  *a1 = v9;
  *a4 = v10;
  return result;
}

uint64_t sub_100009A5C(unsigned __int8 **a1, unint64_t a2)
{
  v4 = *a1;
  v6 = 0;
  v7 = v4;
  sub_100009150(&v7, a2, 0);
  if (*v7 - 23 > 1)
  {
    return 1;
  }

  sub_100009150(&v7, a2, &v6);
  v7 += v6;
  if (*v7 - 23 > 1)
  {
    return 1;
  }

  sub_100009150(&v7, a2, &v6);
  result = 0;
  *a1 = &v7[v6];
  return result;
}

uint64_t iwn_x509_get_subject_name(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = a1 + 4;
  v7 = (a1 + 4);
  v2 = *(a1 + 2);
  buffer = iwn_get_buffer(260);
  if (buffer)
  {
    v4 = v1 + v2;
    v9 = 0;
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, &v9);
    if (*v7 != 2)
    {
      return iwn_free_buffer(buffer, 260);
    }

    v7 += v9;
    v5 = v7;
    sub_100009150(&v7, v4, &v9);
    v7 += v9;
    if ((v7 - v5) > 0xFF)
    {
      return iwn_free_buffer(buffer, 260);
    }

    sub_100009150(&v7, v4, 0);
    v9 = 100;
    if (sub_1000091CC(&v7, v4, __dst, &v9, &v8) || &v7[v8] > v4 || v9 == 8 && __dst[0] == 0xD7001C0081002ALL)
    {
      return iwn_free_buffer(buffer, 260);
    }

    v7 += v8;
    v9 = 256;
    sub_1000099D4(&v7, v4, 0, &v9);
    if (sub_100009A5C(&v7, v4))
    {
      return iwn_free_buffer(buffer, 260);
    }

    else
    {
      v9 = 256;
      sub_1000099D4(&v7, v4, buffer + 4, &v9);
      *buffer = v9;
    }
  }

  return buffer;
}

uint64_t iwn_x509_get_serial_number(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1 + 4;
  v7 = (a1 + 4);
  v2 = *(a1 + 2);
  buffer = iwn_get_buffer(260);
  if (buffer)
  {
    v8 = 0;
    sub_100009150(&v7, v1 + v2, 0);
    sub_100009150(&v7, v1 + v2, 0);
    sub_100009150(&v7, v1 + v2, 0);
    sub_100009150(&v7, v1 + v2, &v8);
    if (*v7 == 2 && (v7 += v8, v4 = v7, sub_100009150(&v7, v1 + v2, &v8), v5 = &v7[v8] - v4, v5 <= 0xFF))
    {
      memcpy(buffer + 4, v4, &v7[v8] - v4);
      *buffer = v5;
    }

    else
    {
      return iwn_free_buffer(buffer, 260);
    }
  }

  return buffer;
}

uint64_t iwn_x509_get_issuer_name(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = a1 + 4;
  v7 = (a1 + 4);
  v2 = *(a1 + 2);
  buffer = iwn_get_buffer(260);
  if (buffer)
  {
    v4 = v1 + v2;
    v9 = 0;
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, 0);
    sub_100009150(&v7, v4, &v9);
    if (*v7 != 2)
    {
      return iwn_free_buffer(buffer, 260);
    }

    v7 += v9;
    v5 = v7;
    sub_100009150(&v7, v4, &v9);
    v7 += v9;
    if ((v7 - v5) > 0xFF)
    {
      return iwn_free_buffer(buffer, 260);
    }

    sub_100009150(&v7, v4, 0);
    v9 = 100;
    if (sub_1000091CC(&v7, v4, __dst, &v9, &v8) || &v7[v8] > v4 || v9 == 8 && __dst[0] == 0xD7001C0081002ALL)
    {
      return iwn_free_buffer(buffer, 260);
    }

    else
    {
      v7 += v8;
      v9 = 256;
      sub_1000099D4(&v7, v4, buffer + 4, &v9);
      *buffer = v9;
    }
  }

  return buffer;
}

uint64_t iwn_x509_get_sign(uint64_t a1, void *a2, int a3)
{
  v20 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2 && a3 >= 48)
  {
    v6 = a1 + 4;
    __src = (a1 + 4);
    v7 = *(a1 + 2);
    sub_100009150(&__src, a1 + 4 + v7, 0);
    sub_100009150(&__src, v6 + v7, &v20);
    v8 = __src + v20;
    v20 = 0;
    __src = v8;
    sub_100009150(&__src, v6 + v7, &v20);
    v9 = __src + v20;
    v20 = 0;
    __src = v9;
    sub_100009150(&__src, v6 + v7, 0);
    __src = __src + 1;
    sub_100009150(&__src, v6 + v7, 0);
    sub_100009150(&__src, v6 + v7, &v20);
    v10 = v20;
    if (v20 < 0x19)
    {
      v11 = __src;
      if (v20 == 23)
      {
        v12 = *(__src + 15);
        v11 = __src - 1;
        *a2 = *(__src - 1);
        a2[2] = v12;
        *a2 = 0;
        v13 = 24;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = __src;
      if (!*__src)
      {
        v11 = __src + 1;
        v10 = v20 - 1;
      }
    }

    memcpy(a2, v11, v10);
    v13 = v10;
LABEL_10:
    v14 = v13;
    v20 = 0;
    __src = &v11[v13];
    sub_100009150(&__src, v6 + v7, &v20);
    if (v20 < 0x19)
    {
      v15 = __src;
      if (v20 == 23)
      {
        v18 = a2 + v14;
        v19 = *(__src + 15);
        *v18 = *(__src - 1);
        *(v18 + 2) = v19;
        *v18 = 0;
LABEL_17:
        iwn_wpa_hexdump(2, "iwn_x509_get_sign", a2, 48);
        return 0;
      }
    }

    else
    {
      v15 = __src;
      if (!*__src)
      {
        v16 = v20 - 1;
        v17 = a2 + v14;
        v15 = __src + 1;
LABEL_16:
        memcpy(v17, v15, v16);
        goto LABEL_17;
      }
    }

    v17 = a2 + v14;
    v16 = v14;
    goto LABEL_16;
  }

  return result;
}

uint64_t iwn_x509_get_sign_inlen(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1 + 4;
  v6 = 0;
  v7 = a1 + 4;
  v2 = *(a1 + 2);
  sub_100009150(&v7, a1 + 4 + v2, 0);
  v3 = v7;
  sub_100009150(&v7, v1 + v2, &v6);
  v4 = v6 - v3 + v7;
  asl_log(0, 0, 5, "iwn_x509_get_sign_inlen: '%d'\n", v6 - v3 + v7);
  return v4;
}

void *cert_obj_register(void *a1)
{
  v2 = *a1;
  if (v2 < 3)
  {
    v4 = qword_1000207A0[v2];
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      result = iwn_get_buffer(16);
      a1[6] = result;
      if (result)
      {
        result = iwn_get_buffer(16);
        a1[7] = result;
        if (result)
        {
          v6 = *a1;
          qword_1000207A0[v6] = a1;
          word_100020358 = v6;
        }
      }
    }

    else
    {
      v7 = a1[1];
      return asl_log(0, 0, 5, "%s: certificate object %s registered with a different template\n\n");
    }
  }

  else
  {
    v8 = a1[1];
    return asl_log(0, 0, 5, "%s: certificate %s has an invalid cert_index %u\n\n");
  }

  return result;
}

uint64_t cert_obj_unregister(void *a1)
{
  v2 = *a1;
  if (v2 < 4)
  {
    v5 = qword_1000207A0[v2];
    if (v5)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      iwn_free_buffer(v5[6], 16);
      result = iwn_free_buffer(*(qword_1000207A0[*a1] + 56), 16);
      qword_1000207A0[v2] = 0;
    }

    else
    {
      asl_log(0, 0, 5, "cert_obj address \t%p\n\n", a1);
      asl_log(0, 0, 5, "obj address \t\t%p\n\n", qword_1000207A0[*a1]);
      v7 = a1[1];
      return asl_log(0, 0, 5, "%s: certificate object %s registered with a different template\n\n");
    }
  }

  else
  {
    v3 = a1[1];
    return asl_log(0, 0, 5, "%s: certificate %s has an invalid cert_index %u\n\n");
  }

  return result;
}

uint64_t get_cert_obj(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1000207A0[a1];
  }
}

uint64_t x509_verify_cert(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  if ((iwn_x509_get_sign(v2, v14, 49) & 0x80000000) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    if ((iwn_x509_get_sign(v4, v12, 49) & 0x80000000) == 0)
    {
      v5 = a1[14];
      v6 = *v3;
      sign_inlen = iwn_x509_get_sign_inlen(v2);
      if (v5(v3 + 2, v6, v2 + 8, sign_inlen, v14, 48) < 1)
      {
        asl_log(0, 0, 5, "in %s X509_verify(asu_cert) failure\n\n");
      }

      else
      {
        v8 = a1[14];
        v9 = *v3;
        v10 = iwn_x509_get_sign_inlen(v4);
        if (v8(v3 + 2, v9, v4 + 8, v10, v12, 48) > 0)
        {
          return 0;
        }

        asl_log(0, 0, 5, "in %s X509_verify(user_cert) failure\n\n");
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t x509_free_obj_data(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    asl_log(0, 0, 5, "in %s:%d free asu_cert_st\n\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1292);
    result = iwn_free_buffer(*(v1 + 16), 0);
    *(v1 + 16) = 0;
  }

  if (*(v1 + 32))
  {
    asl_log(0, 0, 5, "in %s:%d free user_cert_st\n\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1298);
    result = iwn_free_buffer(*(v1 + 32), 0);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 24))
  {
    asl_log(0, 0, 5, "in %s:%d free asu_pubkey\n\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1304);
    result = iwn_free_buffer(*(v1 + 24), 8);
    *(v1 + 24) = 0;
  }

  if (*(v1 + 40))
  {
    asl_log(0, 0, 5, "in %s:%d free private_key\n\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1310);
    result = iwn_free_buffer(*(v1 + 40), 8);
    *(v1 + 40) = 0;
  }

  if (*(*(v1 + 48) + 8))
  {
    asl_log(0, 0, 5, "in %s:%d free cert_bin->data\n\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1316);
    bzero(*(*(v1 + 48) + 8), **(v1 + 48));
    result = iwn_free_buffer(*(*(v1 + 48) + 8), 0);
    *(*(v1 + 48) + 8) = 0;
  }

  return result;
}

uint64_t get_x509_cert(uint64_t a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    asl_log(0, 0, 5, "get_x509_cert: '%s', '%d' \n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1339);
    bzero(byte_100020FB8, 0x800uLL);
    v5 = strlen((a1 + 2052));
    if (get_realinfo_from_cert(byte_100020FB8, (a1 + 2052), v5, "-----BEGIN EC PRIVATE KEY-----", "-----END EC PRIVATE KEY-----"))
    {
      v6 = strlen(byte_100020FB8);
      bzero(byte_1000207B8, 0x800uLL);
      v7 = Base64Dec(byte_1000207B8, byte_100020FB8, v6);
      if (v7 < 0)
      {
        asl_log(0, 0, 5, "Base64 decode prikey error\n\n");
      }

      else
      {
        unpack_private_key(byte_1000217B8, byte_1000207B8, v7);
        buffer = iwn_get_buffer(2052);
        *(a2 + 40) = buffer;
        if (buffer)
        {
          memcpy(buffer + 4, &unk_1000217C0, byte_1000217BD);
          **(a2 + 40) = byte_1000217BD;
          bzero(byte_100020FB8, 0x800uLL);
          v9 = strlen((a1 + 2052));
          if (get_realinfo_from_cert(byte_100020FB8, (a1 + 2052), v9, "-----BEGIN CERTIFICATE-----", "-----END CERTIFICATE-----"))
          {
            v10 = strlen(byte_100020FB8);
            bzero(byte_1000207B8, 0x800uLL);
            v11 = Base64Dec(byte_1000207B8, byte_100020FB8, v10);
            if ((v11 & 0x80000000) != 0)
            {
              asl_log(0, 0, 5, "Base64 decode user cert error\n\n");
            }

            else
            {
              v12 = v11;
              asl_log(0, 0, 5, "user cert infor (user_cert)  '%d'\n\n", v11);
              iwn_wpa_hexdump(2, "user cert infor", byte_1000207B8, v12);
              *(a2 + 32) = iwn_get_buffer(2052);
              v13 = iwn_get_buffer(v12 + 1);
              *(*(a2 + 48) + 8) = v13;
              v14 = *(a2 + 32);
              if (v14 && v13)
              {
                memcpy((v14 + 4), byte_1000207B8, v12);
                *(*(a2 + 32) + 2) = v12;
                memcpy(*(*(a2 + 48) + 8), byte_1000207B8, v12);
                **(a2 + 48) = v12;
                bzero(byte_100020FB8, 0x800uLL);
                v15 = strlen((a1 + 4));
                if (get_realinfo_from_cert(byte_100020FB8, (a1 + 4), v15, "-----BEGIN CERTIFICATE-----", "-----END CERTIFICATE-----"))
                {
                  v16 = strlen(byte_100020FB8);
                  bzero(byte_1000207B8, 0x800uLL);
                  v17 = Base64Dec(byte_1000207B8, byte_100020FB8, v16);
                  if ((v17 & 0x80000000) != 0)
                  {
                    asl_log(0, 0, 5, "Base64 decode asu cert error\n\n");
                  }

                  else
                  {
                    v18 = v17;
                    asl_log(0, 0, 5, "asu cert infor (asu_cert)  '%d'\n\n", v17);
                    iwn_wpa_hexdump(2, "asu cert infor", byte_1000207B8, v18);
                    v19 = iwn_get_buffer(2052);
                    *(a2 + 16) = v19;
                    if (v19)
                    {
                      memcpy(v19 + 4, byte_1000207B8, v18);
                      *(*(a2 + 16) + 2) = v18;
                      v20 = (*(a2 + 64))();
                      *(a2 + 24) = v20;
                      if (v20)
                      {
                        asl_log(0, 0, 5, "get_x509_cert public:  '%d' \n", byte_1000219C7);
                        asl_log(0, 0, 5, "get_x509_cert private: '%d' \n", byte_1000217BD);
                        if ((*(a2 + 96))(&unk_1000219C9, byte_1000219C7 - 1, &unk_1000217C0, byte_1000217BD))
                        {
                          if (x509_verify_cert(a2))
                          {
                            v2 = 0xFFFFFFFFLL;
                          }

                          else
                          {
                            v2 = 0;
                          }

                          goto LABEL_23;
                        }

                        asl_log(0, 0, 5, "verify_key the public_private_key fail. \n\n");
                      }

                      else
                      {
                        asl_log(0, 0, 5, "get asu public key fial. \n\n");
                      }
                    }

                    else
                    {
                      asl_log(0, 0, 5, "malloc asu cert error. \n\n");
                    }
                  }
                }

                else
                {
                  asl_log(0, 0, 5, "get asu cert error. \n\n");
                }
              }

              else
              {
                asl_log(0, 0, 5, "malloc user cert error. \n\n");
              }
            }
          }

          else
          {
            asl_log(0, 0, 5, "get user cert error. \n\n");
          }
        }

        else
        {
          asl_log(0, 0, 5, "malloc prikey fail \n\n");
        }
      }
    }

    else
    {
      asl_log(0, 0, 5, "get prikey error. \n\n");
    }

    v2 = 0xFFFFFFFFLL;
  }

LABEL_23:
  asl_log(0, 0, 5, "get_x509_cert over\n\n");
  return v2;
}

uint64_t init_cert(uint64_t a1)
{
  v2 = word_100020358;
  x509_free_obj_data(qword_1000207A0[word_100020358]);
  x509_cert = get_x509_cert(a1, qword_1000207A0[v2]);
  if (!x509_cert)
  {
    iwn_eloop = qword_1000207A0[v2];
    asl_log(0, 0, 5, "WPA: in %s:%d,length=%d\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/cert.c", 1506, **(iwn_eloop + 48));
    iwn_wai_fixdata_id_by_ident(*(iwn_eloop + 32), &word_100020360, word_100020358);
    dword_10002074C = 1;
  }

  return x509_cert;
}

uint64_t X509_init()
{
  dword_100021AC8 = 1;
  qword_100021AD0 = "x509v3";
  xmmword_100021AD8 = 0u;
  unk_100021AE8 = 0u;
  qword_100021AF8 = 0;
  qword_100021B08 = j__iwn_x509_get_pubkey;
  qword_100021B10 = j__iwn_x509_get_subject_name;
  qword_100021B18 = j__iwn_x509_get_issuer_name;
  qword_100021B20 = j__iwn_x509_get_serial_number;
  qword_100021B28 = x509_ecc_verify_key;
  qword_100021B30 = x509_ecc_sign;
  qword_100021B38 = x509_ecc_verify;
  cert_obj_register(&dword_100021AC8);
  return 0;
}

_BYTE *get_random(_BYTE *a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = a1;
    do
    {
      *v5++ = sub_100004394();
      --v4;
    }

    while (v4);
  }

  v7[0] = xmmword_1000181F8;
  v7[1] = unk_100018208;
  return KD_hmac_sha256(a1, a2, v7, 0x20u, a1, a2);
}

uint64_t iwn_wpa_hexdump(uint64_t result, const char *a2, uint64_t a3, int a4)
{
  if (result >= 2)
  {
    return print_buf(a2, a3, a4);
  }

  return result;
}

uint64_t print_buf(const char *a1, uint64_t a2, int a3)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__s = 0u;
  v22 = 0u;
  __sprintf_chk(__s, 0, 0x104uLL, "%s(len=%d,0x%X)\n", a1, a3, a3);
  asl_log(0, 0, 5, "%s\n", __s);
  if (a3 >= -14)
  {
    v5 = 0;
    v6 = a3 - 1;
    if (a3 < 1)
    {
      v6 = a3 + 14;
    }

    v7 = (v6 >> 4);
    if (a3 <= 0)
    {
      v8 = -(-a3 & 0xF);
    }

    else
    {
      v8 = a3 & 0xF;
    }

    v19 = v8;
    v20 = v7;
    v18 = (v7 + 1);
    while (1)
    {
      v9 = v5 != v20 || v19 == 0;
      v10 = v9;
      v11 = v9 ? 16 : v19;
      __sprintf_chk(__s, 0, 0x104uLL, "%.4X  ", 16 * v5);
      if (v11 >= 1)
      {
        break;
      }

LABEL_30:
      asl_log(0, 0, 5, "%s\n", __s);
      ++v5;
      a2 += 16;
      if (v5 == v18)
      {
        return asl_log(0, 0, 5, "\n\n");
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = strlen(__s);
      sprintf(&__s[v13], "%.2X", *(a2 + v12));
      if (v11 - 1 == v12)
      {
        break;
      }

      if ((~v12 & 3) == 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      if (v11 == ++v12)
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = *(a2 + i);
          __strcat_chk();
        }

        goto LABEL_30;
      }
    }

    if (!v10)
    {
      v14 = strlen(__s);
      if (v14 <= 42)
      {
        memset(&__s[v14], 32, (42 - v14) + 1);
        v14 = 43;
      }

      __s[v14] = 0;
      goto LABEL_27;
    }

LABEL_23:
    __strcat_chk();
    goto LABEL_27;
  }

  return asl_log(0, 0, 5, "\n\n");
}

BOOL x509_ecc_verify(uint64_t a1, int a2, char *a3, signed int a4, uint64_t a5, int a6)
{
  result = 0;
  if (a1 && a2 >= 1 && a3 && a4 >= 1 && a5 && a6 >= 1)
  {
    return ecc192_verify(a1, a3, a4, a5, a6) > 0;
  }

  return result;
}

uint64_t x509_ecc_sign(uint64_t a1, uint64_t a2, char *a3, signed int a4, uint64_t a5)
{
  if (a1 && a3 && a4 >= 1 && a5)
  {
    return ecc192_sign(a1, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

BOOL x509_ecc_verify_key(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = 0;
  strcpy(&__s, "123456abcd");
  if (a2 >= 1 && a3 && a4 >= 1)
  {
    LOBYTE(v13) = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v7 = strlen(&__s);
    v8 = ecc192_sign(a3, &__s, v7, &v10);
    if (v8 == 48)
    {
      v9 = strlen(&__s);
      result = ecc192_verify(a1, &__s, v9, &v10, 48);
      if (result > 0)
      {
        return result;
      }

      iwn_wpa_printf(result, "ecc192_verify call fail \n", v10, v11, v12, v13, __s);
    }

    else
    {
      iwn_wpa_printf(v8, "ecc192_sign call fail \n", v10, v11, v12, v13, __s);
    }

    return 0;
  }

  return result;
}

uint64_t hash_sha256(uint64_t a1, unsigned int a2, uint64_t a3)
{
  memset(v23, 0, sizeof(v23));
  v21[0] = xmmword_100018218;
  v21[1] = unk_100018228;
  v22 = 0;
  v24 = 0;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = a1 + 16 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (!v5)
      {
        break;
      }

      v11 = 64 - v5;
      v12 = v23 + v5;
      v5 = v10 - v11;
      if (v10 >= v11)
      {
        memcpy(v12, *v8, v11);
        sub_10000B760(v21, v23);
        v9 += v11;
        goto LABEL_8;
      }

      memcpy(v12, *v8, *(v8 + 8));
      v5 = v24 + v10;
LABEL_11:
      v24 = v5;
      if (++v6 == v7)
      {
        *(v23 + v5) = 0x80;
        v13 = v5 + 1;
        if (((v5 + 1) & 3) != 0)
        {
          v14 = v5;
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    v5 = *(v8 + 8);
LABEL_8:
    if (v5 >= 0x40)
    {
      do
      {
        sub_10000B760(v21, v9);
        v9 += 64;
        v5 -= 64;
      }

      while (v5 > 0x3F);
    }

    __memcpy_chk();
    goto LABEL_11;
  }

  v14 = 0;
  v5 = 0;
  LOBYTE(v23[0]) = 0x80;
LABEL_15:
  v15 = (2 - v5) & 3;
  bzero(v23 + v14 + 1, (v15 + 1));
  v13 = v5 + v15 + 2;
LABEL_16:
  v16 = v13 >> 2;
  if (v13 >> 2 < 1)
  {
LABEL_24:
    if (v16 <= 13)
    {
      v18 = 13;
    }

    else
    {
      v18 = v13 >> 2;
    }

    bzero(v25 + 4 * v16, 4 * (v18 - v16) + 4);
    goto LABEL_28;
  }

  v17 = 0;
  do
  {
    *(v25 + v17) = bswap32(*(v23 + v17));
    v17 += 4;
  }

  while (4 * (v13 >> 2) != v17);
  if (v16 <= 14)
  {
    if (v13 == 56)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v13 == 60)
  {
    v28 = 0;
  }

  sub_10000B890(v21, v25);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
LABEL_28:
  v27 = v22 >> 23;
  v28 = (8 * v24) | (v22 << 9);
  sub_10000B890(v21, v25);
  if (!a3)
  {
    return 0;
  }

  for (i = 0; i != 8; ++i)
  {
    *(a3 + i * 4) = bswap32(v21[0].u32[i]);
  }

  return 8;
}

_BYTE *KD_hmac_sha256(_BYTE *result, int a2, __int128 *a3, unsigned int a4, char *a5, uint64_t a6)
{
  v6 = a6;
  if (a6 >= 0x20)
  {
    v11 = ((a6 - 32) >> 5) + 1;
    v12 = v11;
    v13 = a5;
    do
    {
      v14 = v13;
      hmac_sha256_0(result, a2, a3, a4, v13, 32);
      v6 = (v6 - 32);
      v13 = v14 + 32;
      result = v14;
      a2 = 32;
      --v12;
    }

    while (v12);
    v10 = 32 * v11;
    result = v14;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    if (!a6)
    {
      return result;
    }
  }

  return hmac_sha256_0(result, a2, a3, a4, &a5[v10], v6);
}

uint64_t hmac_sha256_0(_BYTE *a1, int a2, __int128 *a3, unsigned int a4, void *a5, uint64_t a6)
{
  if (a6 > 0x20)
  {
    return 0;
  }

  v6 = a6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (a4 < 0x41)
  {
    __memcpy_chk();
    __memcpy_chk();
  }

  else
  {
    v14 = a3;
    v15 = a4;
    hash_sha256(&v14, 1u, &v24);
    v20 = v24;
    v21 = v25;
  }

  v10 = 0;
  v11.i64[0] = 0x3636363636363636;
  v11.i64[1] = 0x3636363636363636;
  v12.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v12.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *(&v24 + v10) = veorq_s8(*(&v24 + v10), v11);
    *(&v20 + v10) = veorq_s8(*(&v20 + v10), v12);
    v10 += 16;
  }

  while (v10 != 64);
  v14 = &v24;
  v15 = 64;
  v16 = a1;
  v17 = a2;
  hash_sha256(&v14, 2u, v19);
  v14 = &v20;
  v15 = 64;
  v16 = v19;
  v17 = 32;
  hash_sha256(&v14, 2u, __src);
  memcpy(a5, __src, v6);
  return v6;
}

uint64_t mhash_sha256(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return hash_sha256(v4, 1u, a3);
}

double sub_10000B760(int32x4_t *a1, const char *a2)
{
  v2 = a1[2].i32[0];
  a1[2].i32[0] = v2 + 1;
  if (v2 == -1)
  {
    ++a1[2].i32[1];
  }

  v20 = vld4q_s8(a2);
  _Q4 = vmovl_high_u8(v20.val[0]);
  _Q5 = vmovl_u8(*v20.val[0].i8);
  v5 = vmovl_high_u8(v20.val[1]);
  v6 = vmovl_u8(*v20.val[1].i8);
  v7 = vmovl_high_u16(v6);
  v8 = vshll_n_s16(*_Q5.i8, 0x10uLL);
  __asm { SHLL2           V5.4S, V5.8H, #0x10 }

  v13 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V4.8H, #0x10 }

  v14 = vmovl_high_u8(v20.val[2]);
  v15 = vmovl_u8(*v20.val[2].i8);
  v16 = vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_u16(*v6.i8), 8uLL), vorrq_s8(v8, vmovl_u16(*v15.i8))), 8uLL);
  v17 = vmovl_high_u8(v20.val[3]);
  v20.val[0] = vmovl_u8(*v20.val[3].i8);
  v19[3] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v5), 8uLL), vorrq_s8(_Q4, vmovl_high_u16(v14))), 8uLL), vmovl_high_u16(v17));
  v19[2] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_u16(*v5.i8), 8uLL), vorrq_s8(v13, vmovl_u16(*v14.i8))), 8uLL), vmovl_u16(*v17.i8));
  v19[1] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(v7, 8uLL), vorrq_s8(_Q5, vmovl_high_u16(v15))), 8uLL), vmovl_high_u16(v20.val[0]));
  v19[0] = vorrq_s8(v16, vmovl_u16(*v20.val[0].i8));
  *&result = sub_10000B890(a1, v19).u64[0];
  return result;
}

int32x4_t sub_10000B890(int32x4_t *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = a1->i32[0];
  v4 = a1->i32[1];
  v5 = a1->i32[2];
  v6 = a1->i32[3];
  v8 = a1[1].i32[0];
  v7 = a1[1].i32[1];
  v9 = 1;
  v10 = a1[1].i32[2];
  v11 = a1[1].i32[3];
  do
  {
    HIDWORD(v12) = v8;
    LODWORD(v12) = v8;
    v13 = (v12 >> 6) ^ __ROR4__(v8, 11);
    v14 = __PAIR64__(v3, __ROR4__(v8, 25));
    v15 = (v7 & v8 | v10 & ~v8) + v11 + (v13 ^ v14) + *(&unk_100018238 + v2 * 4) + a2[v2];
    LODWORD(v14) = v3;
    v16 = ((v14 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + ((v3 ^ v4) & v5 ^ v3 & v4);
    v17 = v15 + v6;
    HIDWORD(v14) = v15 + v6;
    LODWORD(v14) = v15 + v6;
    v18 = v16 + v15;
    v19 = (v14 >> 6) ^ __ROR4__(v15 + v6, 11);
    v20 = __PAIR64__(v18, __ROR4__(v17, 25));
    v21 = *(&unk_100018238 + v2 * 4 + 4) + v10 + a2[v2 + 1] + (v8 & v17 | v7 & ~v17) + (v19 ^ v20);
    LODWORD(v20) = v18;
    v22 = v21 + v5;
    v23 = ((v20 >> 2) ^ __ROR4__(v18, 13) ^ __ROR4__(v18, 22)) + ((v18 ^ v3) & v4 ^ v18 & v3) + v21;
    HIDWORD(v20) = v21 + v5;
    LODWORD(v20) = v21 + v5;
    v24 = (v20 >> 6) ^ __ROR4__(v21 + v5, 11);
    v25 = __PAIR64__(v23, __ROR4__(v22, 25));
    v26 = *(&unk_100018238 + v2 * 4 + 8) + v7 + a2[v2 + 2] + (v17 & v22 | v8 & ~v22) + (v24 ^ v25);
    LODWORD(v25) = v23;
    v27 = ((v25 >> 2) ^ __ROR4__(v23, 13) ^ __ROR4__(v23, 22)) + ((v23 ^ v18) & v3 ^ v23 & v18);
    v28 = v26 + v4;
    HIDWORD(v25) = v26 + v4;
    LODWORD(v25) = v26 + v4;
    v29 = v27 + v26;
    v30 = (v25 >> 6) ^ __ROR4__(v26 + v4, 11);
    v31 = __PAIR64__(v29, __ROR4__(v28, 25));
    v32 = *(&unk_100018238 + v2 * 4 + 12) + v8 + a2[v2 + 3] + (v22 & v28 | v17 & ~v28) + (v30 ^ v31);
    LODWORD(v31) = v29;
    v33 = v32 + v3;
    v34 = ((v31 >> 2) ^ __ROR4__(v29, 13) ^ __ROR4__(v29, 22)) + ((v29 ^ v23) & v18 ^ v29 & v23) + v32;
    HIDWORD(v31) = v33;
    LODWORD(v31) = v33;
    v35 = (v31 >> 6) ^ __ROR4__(v33, 11);
    v36 = __PAIR64__(v34, __ROR4__(v33, 25));
    v37 = *(&unk_100018238 + v2 * 4 + 16) + a2[v2 + 4] + v17 + (v28 & v33 | v22 & ~v33) + (v35 ^ v36);
    LODWORD(v36) = v34;
    LOBYTE(v17) = v9;
    v11 = v37 + v18;
    v6 = ((v36 >> 2) ^ __ROR4__(v34, 13) ^ __ROR4__(v34, 22)) + ((v34 ^ v29) & v23 ^ v34 & v29) + v37;
    HIDWORD(v36) = v37 + v18;
    LODWORD(v36) = v37 + v18;
    v38 = (v36 >> 6) ^ __ROR4__(v37 + v18, 11);
    v40 = __PAIR64__(v6, __ROR4__(v11, 25));
    v39 = v38 ^ v40;
    LODWORD(v40) = v6;
    v41 = v22 + *(&unk_100018238 + v2 * 4 + 20) + a2[v2 + 5] + (v33 & v11 | v28 & ~v11) + v39;
    v10 = v41 + v23;
    v5 = ((v40 >> 2) ^ __ROR4__(v6, 13) ^ __ROR4__(v6, 22)) + ((v6 ^ v34) & v29 ^ v6 & v34) + v41;
    HIDWORD(v40) = v41 + v23;
    LODWORD(v40) = v41 + v23;
    v42 = (v40 >> 6) ^ __ROR4__(v41 + v23, 11);
    v43 = __PAIR64__(v5, __ROR4__(v10, 25));
    v44 = a2[v2 + 6] + *(&unk_100018238 + v2 * 4 + 24) + v28 + (v11 & v10 | v33 & ~v10) + (v42 ^ v43);
    LODWORD(v43) = v5;
    v7 = v44 + v29;
    v4 = ((v43 >> 2) ^ __ROR4__(v5, 13) ^ __ROR4__(v5, 22)) + ((v5 ^ v6) & v34 ^ v5 & v6) + v44;
    HIDWORD(v43) = v44 + v29;
    LODWORD(v43) = v44 + v29;
    v45 = (v43 >> 6) ^ __ROR4__(v44 + v29, 11);
    v47 = __PAIR64__(v4, __ROR4__(v7, 25));
    v46 = v45 ^ v47;
    LODWORD(v47) = v4;
    v48 = a2[v2 + 7] + *(&unk_100018238 + v2 * 4 + 28) + v33 + (v10 & v7 | v11 & ~v7) + v46;
    v8 = v48 + v34;
    v3 = ((v47 >> 2) ^ __ROR4__(v4, 13) ^ __ROR4__(v4, 22)) + ((v4 ^ v5) & v6 ^ v4 & v5) + v48;
    v2 += 8;
    v9 = 0;
  }

  while ((v17 & 1) != 0);
  v49 = 0;
  v51 = *a2;
  v50 = a2[1];
  v52 = a2[14];
  v53 = a2[15];
  v54 = a2[10];
  v55 = a2[11];
  v56 = a2[2];
  v57 = a2[3];
  v58 = a2[12];
  v59 = a2[13];
  v60 = a2[4];
  v61 = a2[5];
  v62 = a2[6];
  v63 = a2[7];
  v65 = a2[8];
  v64 = a2[9];
  do
  {
    v251 = v49;
    v66 = (&unk_100018238 + 4 * v49);
    HIDWORD(v67) = v8;
    LODWORD(v67) = v8;
    v68 = (v67 >> 6) ^ __ROR4__(v8, 11);
    v70 = __PAIR64__(v52, __ROR4__(v8, 25));
    v69 = v68 ^ v70;
    LODWORD(v70) = v52;
    v71 = v70 >> 17;
    v72 = __PAIR64__(v50, __ROR4__(v52, 19));
    v73 = (v71 ^ v72 ^ (v52 >> 10)) + v64 + v51;
    LODWORD(v72) = v50;
    v74 = v72 >> 7;
    v75 = __PAIR64__(v3, __ROR4__(v50, 18));
    v51 = v73 + (v74 ^ v75 ^ (v50 >> 3));
    v76 = v66[16];
    *a2 = v51;
    v77 = (v7 & v8 | v10 & ~v8) + v11 + v69 + v76 + v51;
    LODWORD(v75) = v3;
    v78 = v77 + v6;
    v79 = ((v75 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + ((v3 ^ v4) & v5 ^ v3 & v4) + v77;
    HIDWORD(v75) = v78;
    LODWORD(v75) = v78;
    v80 = (v75 >> 6) ^ __ROR4__(v78, 11);
    v82 = __PAIR64__(v53, __ROR4__(v78, 25));
    v81 = v80 ^ v82;
    LODWORD(v82) = v53;
    v83 = v82 >> 17;
    v84 = __PAIR64__(v56, __ROR4__(v53, 19));
    v85 = v54 + v50 + (v83 ^ v84 ^ (v53 >> 10));
    LODWORD(v84) = v56;
    v86 = v84 >> 7;
    v87 = __PAIR64__(v79, __ROR4__(v56, 18));
    v88 = v85 + (v86 ^ v87 ^ (v56 >> 3));
    v89 = v66[17];
    a2[1] = v88;
    v90 = v89 + v10 + (v8 & v78 | v7 & ~v78) + v88 + v81;
    LODWORD(v87) = v79;
    v91 = v90 + v5;
    v92 = ((v87 >> 2) ^ __ROR4__(v79, 13) ^ __ROR4__(v79, 22)) + ((v79 ^ v3) & v4 ^ v79 & v3) + v90;
    HIDWORD(v87) = v91;
    LODWORD(v87) = v91;
    v93 = (v87 >> 6) ^ __ROR4__(v91, 11);
    v95 = __PAIR64__(v57, __ROR4__(v91, 25));
    v94 = v93 ^ v95;
    LODWORD(v95) = v57;
    v96 = v95 >> 7;
    v97 = __PAIR64__(v51, __ROR4__(v57, 18));
    v98 = v56 + v55 + (v96 ^ v97 ^ (v57 >> 3));
    LODWORD(v97) = v51;
    v99 = v97 >> 17;
    v100 = __PAIR64__(v92, __ROR4__(v51, 19));
    v56 = (v99 ^ v100 ^ (v51 >> 10)) + v98;
    v101 = v66[18];
    a2[2] = v56;
    v102 = v101 + v7 + v56 + (v78 & v91 | v8 & ~v91) + v94;
    LODWORD(v100) = v92;
    v103 = ((v100 >> 2) ^ __ROR4__(v92, 13) ^ __ROR4__(v92, 22)) + ((v92 ^ v79) & v3 ^ v92 & v79);
    v104 = v102 + v4;
    HIDWORD(v100) = v104;
    LODWORD(v100) = v102 + v4;
    v105 = v103 + v102;
    v106 = (v100 >> 6) ^ __ROR4__(v104, 11);
    v108 = __PAIR64__(v60, __ROR4__(v104, 25));
    v107 = v106 ^ v108;
    LODWORD(v108) = v60;
    v109 = v108 >> 7;
    v110 = __PAIR64__(v88, __ROR4__(v60, 18));
    v111 = v58 + v57 + (v109 ^ v110 ^ (v60 >> 3));
    LODWORD(v110) = v88;
    v112 = v110 >> 17;
    v113 = __PAIR64__(v105, __ROR4__(v88, 19));
    v250 = v88;
    v57 = v111 + (v112 ^ v113 ^ (v88 >> 10));
    v114 = v66[19];
    a2[3] = v57;
    LODWORD(v113) = v105;
    v115 = v114 + v8 + v57 + (v91 & v104 | v78 & ~v104) + v107;
    v116 = v115 + v3;
    v117 = ((v113 >> 2) ^ __ROR4__(v105, 13) ^ __ROR4__(v105, 22)) + ((v105 ^ v92) & v79 ^ v105 & v92) + v115;
    HIDWORD(v113) = v116;
    LODWORD(v113) = v116;
    v118 = v113 >> 6;
    v120 = __PAIR64__(v61, __ROR4__(v116, 11));
    v119 = v118 ^ v120;
    LODWORD(v120) = v61;
    v121 = v120 >> 7;
    v122 = __PAIR64__(v56, __ROR4__(v61, 18));
    v123 = v59 + v60 + (v121 ^ v122 ^ (v61 >> 3));
    LODWORD(v122) = v56;
    v124 = v122 >> 17;
    v125 = __PAIR64__(v117, __ROR4__(v56, 19));
    v60 = v123 + (v124 ^ v125 ^ (v56 >> 10));
    v126 = v66[20];
    a2[4] = v60;
    v127 = v126 + v78 + v60 + (v104 & v116 | v91 & ~v116) + (v119 ^ __ROR4__(v116, 25));
    LODWORD(v125) = v117;
    v128 = v127 + v79;
    v129 = ((v125 >> 2) ^ __ROR4__(v117, 13) ^ __ROR4__(v117, 22)) + ((v117 ^ v105) & v92 ^ v117 & v105) + v127;
    HIDWORD(v125) = v127 + v79;
    LODWORD(v125) = v127 + v79;
    v130 = (v125 >> 6) ^ __ROR4__(v127 + v79, 11);
    v132 = __PAIR64__(v62, __ROR4__(v128, 25));
    v131 = v130 ^ v132;
    LODWORD(v132) = v62;
    v133 = v132 >> 7;
    v134 = __PAIR64__(v57, __ROR4__(v62, 18));
    v135 = v61 + v52 + (v133 ^ v134 ^ (v62 >> 3));
    LODWORD(v134) = v57;
    v136 = v134 >> 17;
    v137 = __PAIR64__(v129, __ROR4__(v57, 19));
    v61 = v135 + (v136 ^ v137 ^ (v57 >> 10));
    v138 = v66[21];
    a2[5] = v61;
    v139 = v138 + v91 + v61 + (v116 & v128 | v104 & ~v128) + v131;
    LODWORD(v137) = v129;
    v140 = v139 + v92;
    v141 = ((v137 >> 2) ^ __ROR4__(v129, 13) ^ __ROR4__(v129, 22)) + ((v129 ^ v117) & v105 ^ v129 & v117) + v139;
    HIDWORD(v137) = v139 + v92;
    LODWORD(v137) = v139 + v92;
    v142 = (v137 >> 6) ^ __ROR4__(v139 + v92, 11);
    v144 = __PAIR64__(v63, __ROR4__(v140, 25));
    v143 = v142 ^ v144;
    LODWORD(v144) = v63;
    v145 = v144 >> 7;
    v146 = __PAIR64__(v60, __ROR4__(v63, 18));
    v147 = v62 + v53 + (v145 ^ v146 ^ (v63 >> 3));
    LODWORD(v146) = v60;
    v148 = v146 >> 17;
    v149 = __PAIR64__(v141, __ROR4__(v60, 19));
    v62 = v147 + (v148 ^ v149 ^ (v60 >> 10));
    v150 = v66[22];
    a2[6] = v62;
    v151 = v150 + v104 + v62 + (v128 & v140 | v116 & ~v140) + v143;
    LODWORD(v149) = v141;
    v152 = v151 + v105;
    v153 = ((v149 >> 2) ^ __ROR4__(v141, 13) ^ __ROR4__(v141, 22)) + ((v141 ^ v129) & v117 ^ v141 & v129) + v151;
    HIDWORD(v149) = v152;
    LODWORD(v149) = v152;
    v154 = (v149 >> 6) ^ __ROR4__(v152, 11);
    v156 = __PAIR64__(v65, __ROR4__(v152, 25));
    v155 = v154 ^ v156;
    LODWORD(v156) = v65;
    v157 = v156 >> 7;
    v158 = __PAIR64__(v61, __ROR4__(v65, 18));
    v159 = v63 + v51 + (v157 ^ v158 ^ (v65 >> 3));
    LODWORD(v158) = v61;
    v160 = v158 >> 17;
    v161 = __PAIR64__(v153, __ROR4__(v61, 19));
    v63 = v159 + (v160 ^ v161 ^ (v61 >> 10));
    v162 = v66[23];
    a2[7] = v63;
    v163 = v116 + v162 + v63 + (v140 & v152 | v128 & ~v152) + v155;
    LODWORD(v161) = v153;
    v164 = v163 + v117;
    v165 = ((v161 >> 2) ^ __ROR4__(v153, 13) ^ __ROR4__(v153, 22)) + ((v153 ^ v141) & v129 ^ v153 & v141) + v163;
    HIDWORD(v161) = v163 + v117;
    LODWORD(v161) = v163 + v117;
    v166 = (v161 >> 6) ^ __ROR4__(v163 + v117, 11);
    v168 = __PAIR64__(v64, __ROR4__(v164, 25));
    v167 = v166 ^ v168;
    LODWORD(v168) = v64;
    v169 = v168 >> 7;
    v170 = __PAIR64__(v62, __ROR4__(v64, 18));
    v171 = (v169 ^ v170 ^ (v64 >> 3)) + v65;
    LODWORD(v170) = v62;
    v172 = v170 >> 17;
    v173 = __PAIR64__(v165, __ROR4__(v62, 19));
    v65 = v88 + v171 + (v172 ^ v173 ^ (v62 >> 10));
    v174 = v66[24];
    a2[8] = v65;
    v175 = v65 + v174 + v128 + (v152 & v164 | v140 & ~v164) + v167;
    LODWORD(v173) = v165;
    v176 = ((v173 >> 2) ^ __ROR4__(v165, 13) ^ __ROR4__(v165, 22)) + ((v165 ^ v153) & v141 ^ v165 & v153);
    v177 = v175 + v129;
    HIDWORD(v173) = v175 + v129;
    LODWORD(v173) = v175 + v129;
    v178 = v173 >> 6;
    v179 = v176 + v175;
    HIDWORD(v173) = v54;
    LODWORD(v173) = v54;
    v180 = v173 >> 7;
    v181 = __PAIR64__(v63, __ROR4__(v54, 18));
    v182 = (v180 ^ v181 ^ (v54 >> 3)) + v64;
    LODWORD(v181) = v63;
    v183 = v181 >> 17;
    v184 = __PAIR64__(v179, __ROR4__(v63, 19));
    v64 = v182 + v56 + (v183 ^ v184 ^ (v63 >> 10));
    v185 = v66[25];
    a2[9] = v64;
    LODWORD(v184) = v179;
    v186 = v64 + v185 + v140 + (v164 & v177 | v152 & ~v177) + (v178 ^ __ROR4__(v177, 11) ^ __ROR4__(v177, 25));
    v187 = v186 + v141;
    v188 = ((v184 >> 2) ^ __ROR4__(v179, 13) ^ __ROR4__(v179, 22)) + ((v179 ^ v165) & v153 ^ v179 & v165) + v186;
    HIDWORD(v184) = v187;
    LODWORD(v184) = v187;
    v189 = v184 >> 6;
    v191 = __PAIR64__(v55, __ROR4__(v187, 11));
    v190 = v189 ^ v191;
    LODWORD(v191) = v55;
    v192 = v191 >> 7;
    v193 = __PAIR64__(v65, __ROR4__(v55, 18));
    v194 = (v192 ^ v193 ^ (v55 >> 3)) + v54;
    LODWORD(v193) = v65;
    v195 = v193 >> 17;
    v196 = __PAIR64__(v188, __ROR4__(v65, 19));
    v54 = v194 + v57 + (v195 ^ v196 ^ (v65 >> 10));
    v197 = v66[26];
    a2[10] = v54;
    v198 = v54 + v197 + v152 + (v177 & v187 | v164 & ~v187) + (v190 ^ __ROR4__(v187, 25));
    LODWORD(v196) = v188;
    v199 = v198 + v153;
    v200 = ((v196 >> 2) ^ __ROR4__(v188, 13) ^ __ROR4__(v188, 22)) + ((v188 ^ v179) & v165 ^ v188 & v179) + v198;
    HIDWORD(v196) = v199;
    LODWORD(v196) = v199;
    v201 = (v196 >> 6) ^ __ROR4__(v199, 11);
    v203 = __PAIR64__(v58, __ROR4__(v199, 25));
    v202 = v201 ^ v203;
    LODWORD(v203) = v58;
    v204 = v203 >> 7;
    v205 = __PAIR64__(v64, __ROR4__(v58, 18));
    v206 = (v204 ^ v205 ^ (v58 >> 3)) + v55;
    LODWORD(v205) = v64;
    v207 = v205 >> 17;
    v208 = __PAIR64__(v200, __ROR4__(v64, 19));
    v55 = v206 + v60 + (v207 ^ v208 ^ (v64 >> 10));
    v209 = v66[27];
    a2[11] = v55;
    v210 = v55 + v209 + v164 + (v187 & v199 | v177 & ~v199) + v202;
    LODWORD(v208) = v200;
    v211 = v210 + v165;
    v212 = ((v208 >> 2) ^ __ROR4__(v200, 13) ^ __ROR4__(v200, 22)) + ((v200 ^ v188) & v179 ^ v200 & v188) + v210;
    HIDWORD(v208) = v211;
    LODWORD(v208) = v211;
    v213 = (v208 >> 6) ^ __ROR4__(v211, 11);
    v215 = __PAIR64__(v59, __ROR4__(v211, 25));
    v214 = v213 ^ v215;
    LODWORD(v215) = v59;
    v216 = v215 >> 7;
    v217 = __PAIR64__(v54, __ROR4__(v59, 18));
    v218 = (v216 ^ v217 ^ (v59 >> 3)) + v58;
    LODWORD(v217) = v54;
    v219 = v217 >> 17;
    v220 = __PAIR64__(v212, __ROR4__(v54, 19));
    v58 = v218 + v61 + (v219 ^ v220 ^ (v54 >> 10));
    v221 = v66[28];
    a2[12] = v58;
    v222 = v58 + v221 + v177 + (v199 & v211 | v187 & ~v211) + v214;
    LODWORD(v220) = v212;
    v223 = (v220 >> 2) ^ __ROR4__(v212, 13);
    v225 = __PAIR64__(v55, __ROR4__(v212, 22));
    v224 = v223 ^ v225;
    LODWORD(v225) = v55;
    v226 = v225 >> 17;
    v227 = v224 + ((v212 ^ v200) & v188 ^ v212 & v200);
    HIDWORD(v225) = v52;
    LODWORD(v225) = v52;
    v228 = v59 + ((v225 >> 7) ^ __ROR4__(v52, 18) ^ (v52 >> 3));
    v229 = v66[29];
    v230 = __PAIR64__(v53, __ROR4__(v55, 19));
    v59 = v228 + v62 + (v226 ^ v230 ^ (v55 >> 10));
    a2[13] = v59;
    v231 = v59 + v229 + v187;
    v232 = v66[30];
    LODWORD(v230) = v53;
    v233 = v230 >> 7;
    v234 = __PAIR64__(v58, __ROR4__(v53, 18));
    v235 = (v233 ^ v234 ^ (v53 >> 3)) + v52;
    LODWORD(v234) = v58;
    v236 = v234 >> 17;
    v237 = __PAIR64__(v51, __ROR4__(v58, 19));
    v52 = v235 + v63 + (v236 ^ v237 ^ (v58 >> 10));
    a2[14] = v52;
    v238 = v52 + v232 + v199;
    LODWORD(v237) = v51;
    v239 = v237 >> 7;
    v240 = __PAIR64__(v59, __ROR4__(v51, 18));
    v241 = (v239 ^ v240 ^ (v51 >> 3)) + v53 + v65;
    LODWORD(v240) = v59;
    v53 = v241 + ((v240 >> 17) ^ __ROR4__(v59, 19) ^ (v59 >> 10));
    v11 = v222 + v179;
    HIDWORD(v240) = v222 + v179;
    LODWORD(v240) = v222 + v179;
    v242 = v231 + (v211 & v11 | v199 & ~v11) + ((v240 >> 6) ^ __ROR4__(v11, 11) ^ __ROR4__(v11, 25));
    v10 = v242 + v188;
    HIDWORD(v240) = v242 + v188;
    LODWORD(v240) = v242 + v188;
    v243 = v238 + ((v222 + v179) & v10 | v211 & ~v10) + ((v240 >> 6) ^ __ROR4__(v10, 11) ^ __ROR4__(v10, 25));
    v7 = v243 + v200;
    HIDWORD(v240) = v243 + v200;
    LODWORD(v240) = v243 + v200;
    v244 = v53 + v66[31] + v211 + (v10 & v7 | (v222 + v179) & ~v7) + ((v240 >> 6) ^ __ROR4__(v7, 11) ^ __ROR4__(v7, 25));
    v6 = v227 + v222;
    HIDWORD(v240) = v6;
    LODWORD(v240) = v6;
    v5 = ((v240 >> 2) ^ __ROR4__(v6, 13) ^ __ROR4__(v6, 22)) + ((v6 ^ v212) & v200 ^ v6 & v212) + v242;
    HIDWORD(v240) = v5;
    LODWORD(v240) = v5;
    v4 = ((v240 >> 2) ^ __ROR4__(v5, 13) ^ __ROR4__(v5, 22)) + ((v5 ^ v6) & v212 ^ v5 & v6) + v243;
    HIDWORD(v240) = v4;
    LODWORD(v240) = v4;
    v50 = v250;
    v8 = v244 + v212;
    v3 = ((v240 >> 2) ^ __ROR4__(v4, 13) ^ __ROR4__(v4, 22)) + ((v4 ^ v5) & v6 ^ v4 & v5) + v244;
    a2[15] = v53;
    v49 = v251 + 16;
  }

  while ((v251 + 16) < 0x30);
  v245.i64[0] = __PAIR64__(v4, v3);
  v245.i64[1] = __PAIR64__(v6, v5);
  v246.i32[0] = v244 + v212;
  v246.i32[1] = v7;
  v246.i64[1] = __PAIR64__(v11, v10);
  result = vaddq_s32(*a1, v245);
  v248 = vaddq_s32(a1[1], v246);
  *a1 = result;
  a1[1] = v248;
  return result;
}

void wlan_deauth_for_otherc()
{
  v0 = *(qword_100021B40 + 8608);
  sub_10000C424();
  sub_10000C474();
  *(v0 + 8) = 0;
}

uint64_t sub_10000C424()
{
  v0 = qword_100021B40;
  **(qword_100021B40 + 40) = 1;
  v2 = *(v0 + 8);
  v1 = v0 + 8;
  *(v1 + 60) = 0;
  if (v2 | *(v1 + 4))
  {
    result = sub_1000043B0();
    *(v1 + 4) = 0;
    *v1 = 0;
  }

  return result;
}

void sub_10000C474()
{
  v0 = qword_100021B40;
  if (**(qword_100021B40 + 8608))
  {
    sub_1000046E8();
    **(v0 + 8608) = 0;
    *(*(qword_100021B40 + 8608) + 8) = 0;
  }
}

void *timer_set(int a1, const void *a2, int a3)
{
  v3 = *(qword_100021B40 + 8608);
  v3[4] = 0;
  v3[5] = a3;
  v3[2] = a1;
  v3[3] = 0;
  return memcpy(v3 + 6, a2, a3);
}

void timer_resend()
{
  v0 = *(qword_100021B40 + 8608);
  if ((*(v0 + 8) - 1) <= 1)
  {
    v1 = *(v0 + 16);
    *(v0 + 16) = v1 + 1;
    if (v1 < 2)
    {
      sub_1000043C4((v0 + 24), *(v0 + 20));
      *(v0 + 12) = 0;
    }

    else
    {
      sub_10000C424();
      sub_10000C474();
      *(v0 + 8) = 0;
    }
  }
}

void *iwn_get_buffer(int a1)
{
  v1 = a1;
  v2 = malloc_type_malloc(a1, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, v1);
  }

  return v3;
}

uint64_t iwn_free_buffer(void *a1, int a2)
{
  if (a1)
  {
    bzero(a1, a2);
    free(a1);
  }

  return 0;
}

_BYTE *iwn_getshort(_BYTE *result, _BYTE *a2)
{
  if (byte_100021B48 == 1)
  {
    *a2 = result[1];
    a2[1] = *result;
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t lib_get_wapi_state()
{
  if (!qword_100021B40)
  {
    return 0;
  }

  result = *(qword_100021B40 + 68);
  if (!*(qword_100021B40 + 72))
  {
    return result;
  }

  v1 = *(qword_100021B40 + 17808);
  if (v1 == 2)
  {
    if ((result - 1) < 4)
    {
      return 9;
    }
  }

  else
  {
    if (v1 != 1)
    {
      return result;
    }

    if ((result - 1) < 4)
    {
      return 8;
    }
  }

  if (result == 5)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t WAI_CNTAPPARA_SET(_DWORD *a1)
{
  v1 = 0xFFFFFFFFLL;
  if (a1 && byte_100021B4C)
  {
    v3 = qword_100021B40;
    v4 = *a1;
    *(qword_100021B40 + 17808) = *a1;
    if (!v4)
    {
      return 0;
    }

    v18 = xmmword_100018340;
    v19 = unk_100018350;
    v20 = xmmword_100018360;
    v21 = unk_100018370;
    if (v4 == 2)
    {
      BYTE9(v18) = 2;
    }

    sub_100004720(&v18, 24);
    v5 = BYTE1(v18);
    memcpy((*(v3 + 40) + 460), &v18, BYTE1(v18) + 2);
    *(*(v3 + 40) + 973) = v5 + 2;
    if (*a1 == 2)
    {
      if (a1[1])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = a1[2];
        if (v7)
        {
          return 0xFFFFFFFFLL;
        }

        if (v7 <= 1)
        {
          v10 = v7 >> 1;
        }

        else
        {
          v8 = (a1 + 3);
          v9 = v7 >> 1;
          v10 = v9;
          v11 = &v18;
          do
          {
            v12 = *v8;
            v13 = v12 - 48;
            if ((v12 - 48) > 9)
            {
              if ((v12 - 97) > 5)
              {
                if ((v12 - 65) > 5)
                {
                  break;
                }

                v13 = v12 - 55;
              }

              else
              {
                v13 = v12 - 87;
              }
            }

            if (v13 < 0)
            {
              break;
            }

            v14 = v8[1];
            v15 = v14 - 48;
            if ((v14 - 48) > 9)
            {
              if ((v14 - 97) > 5)
              {
                if ((v14 - 65) > 5)
                {
                  break;
                }

                v15 = v14 - 55;
              }

              else
              {
                v15 = v14 - 87;
              }
            }

            if (v15 < 0)
            {
              break;
            }

            *v11 = v15 + 16 * v13;
            v11 = (v11 + 1);
            v8 += 2;
            --v9;
          }

          while (v9);
        }

        v16 = &v18;
        v17 = (v3 + 17812);
      }

      else
      {
        v10 = a1[2];
        v16 = (a1 + 3);
        v17 = (v3 + 17812);
      }

      v1 = sub_10000C8CC(v16, v10, v17);
      iwn_wpa_hexdump(2, "WAI: ", v3 + 17812, 16);
      return v1;
    }

    if (*a1 == 1)
    {
      return init_cert(a1);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_10000C8CC(__int128 *a1, unsigned int a2, char *a3)
{
  strcpy(v8, "preshared key expansion for authentication and key negotiation");
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (a3)
    {
      v7 = strlen(v8);
      KD_hmac_sha256(v8, v7, a1, a2, a3, 16);
      return 0;
    }
  }

  return result;
}

double WAI_Msg_Input(int a1, int *a2, int *a3, void *__src, size_t __n)
{
  if (a3)
  {
    if (a2)
    {
      if (byte_100021B4C)
      {
        v5 = __n;
        v7 = qword_100021B40;
        if ((!__src || __n) && (__src || !__n))
        {
          if (a1 == 1)
          {
            *(qword_100021B40 + 68) = 0;
            *(v7 + 72) = 0;
            sub_10000C474();
            *(v7 + 4) = 0;
            *v7 = 0;
            *(v7 + 8) = 0;
            *(v7 + 12) = 0;
            *(v7 + 76) = 0;
            *(v7 + 80) = 0;
            *(v7 + 84) = 0u;
            *(v7 + 100) = 0u;
            *(v7 + 116) = 0u;
            *(v7 + 132) = 0u;
            *(v7 + 148) = 0u;
            *(v7 + 164) = 0u;
            bzero((v7 + 2232), 0x804uLL);
            *(v7 + 7546) = 0u;
            *(v7 + 7536) = 0u;
            *(v7 + 7520) = 0u;
            *(v7 + 7504) = 0u;
            *(v7 + 7488) = 0u;
            *(v7 + 7472) = 0u;
            *(v7 + 7456) = 0u;
            *(v7 + 7440) = 0u;
            *(v7 + 7424) = 0u;
            *(v7 + 7408) = 0u;
            *(v7 + 7392) = 0u;
            *(v7 + 7376) = 0u;
            *(v7 + 7360) = 0u;
            *(v7 + 7344) = 0u;
            *(v7 + 7328) = 0u;
            *(v7 + 7312) = 0u;
            *(v7 + 8078) = 0;
            *(v7 + 8046) = 0u;
            *(v7 + 8062) = 0u;
            *(v7 + 8014) = 0u;
            *(v7 + 8030) = 0u;
            *(v7 + 7982) = 0u;
            *(v7 + 7998) = 0u;
            *(v7 + 7950) = 0u;
            *(v7 + 7966) = 0u;
            *(v7 + 7918) = 0u;
            *(v7 + 7934) = 0u;
            *(v7 + 7886) = 0u;
            *(v7 + 7902) = 0u;
            *(v7 + 7854) = 0u;
            *(v7 + 7870) = 0u;
            *(v7 + 7822) = 0u;
            *(v7 + 7838) = 0u;
            *(v7 + 8338) = 0;
            *(v7 + 8306) = 0u;
            *(v7 + 8322) = 0u;
            *(v7 + 8274) = 0u;
            *(v7 + 8290) = 0u;
            *(v7 + 8242) = 0u;
            *(v7 + 8258) = 0u;
            *(v7 + 8210) = 0u;
            *(v7 + 8226) = 0u;
            *(v7 + 8178) = 0u;
            *(v7 + 8194) = 0u;
            *(v7 + 8146) = 0u;
            *(v7 + 8162) = 0u;
            *(v7 + 8114) = 0u;
            *(v7 + 8130) = 0u;
            *(v7 + 8082) = 0u;
            *(v7 + 8098) = 0u;
            *(v7 + 8596) = 0;
            *(v7 + 8566) = 0u;
            *(v7 + 8582) = 0u;
            *(v7 + 8534) = 0u;
            *(v7 + 8550) = 0u;
            *(v7 + 8502) = 0u;
            *(v7 + 8518) = 0u;
            *(v7 + 8470) = 0u;
            *(v7 + 8486) = 0u;
            *(v7 + 8438) = 0u;
            *(v7 + 8454) = 0u;
            *(v7 + 8406) = 0u;
            *(v7 + 8422) = 0u;
            *(v7 + 8374) = 0u;
            *(v7 + 8390) = 0u;
            *(v7 + 8342) = 0u;
            *(v7 + 8358) = 0u;
            *(v7 + 7296) = 0u;
            bzero((v7 + 4284), 0x3ECuLL);
            bzero((v7 + 5288), 0x3ECuLL);
            v18 = *(v7 + 40);
            result = 0.0;
            v18[15] = 0u;
            v18[16] = 0u;
            v18[13] = 0u;
            v18[14] = 0u;
            v18[11] = 0u;
            v18[12] = 0u;
            v18[9] = 0u;
            v18[10] = 0u;
            v18[7] = 0u;
            v18[8] = 0u;
            v18[5] = 0u;
            v18[6] = 0u;
            v18[3] = 0u;
            v18[4] = 0u;
            v18[1] = 0u;
            v18[2] = 0u;
            *v18 = 0u;
            v19 = *(v7 + 40);
            v19[19] = 0u;
            v19[20] = 0u;
            v19[17] = 0u;
            v19[18] = 0u;
            v20 = *(v7 + 40);
            *(v20 + 416) = 0;
            *(v20 + 384) = 0u;
            *(v20 + 400) = 0u;
            *(v20 + 352) = 0u;
            *(v20 + 368) = 0u;
            *(v20 + 336) = 0u;
            v21 = *(v7 + 40);
            *v21 = 1;
            *(v21 + 273) = 1;
            *(v21 + 400) = 16;
            v21 += 716;
            *v21 = 0u;
            *(v21 + 16) = 0u;
            *(v21 + 32) = 0u;
            *(v21 + 48) = 0u;
            *(v21 + 64) = 0u;
            *(v21 + 80) = 0u;
            *(v21 + 96) = 0u;
            *(v21 + 112) = 0u;
            *(v21 + 128) = 0u;
            *(v21 + 144) = 0u;
            *(v21 + 160) = 0u;
            *(v21 + 176) = 0u;
            *(v21 + 192) = 0u;
            *(v21 + 208) = 0u;
            *(v21 + 224) = 0u;
            *(v21 + 240) = 0u;
            *(*(v7 + 40) + 972) = 0;
          }

          else if (!a1)
          {
            v8 = *a3;
            *(qword_100021B40 + 4) = *(a3 + 2);
            *v7 = v8;
            v9 = (v7 + 8);
            v10 = *(v7 + 8);
            *(v7 + 68) = 1;
            if (v10 != *a2 || *(v7 + 12) != *(a2 + 2))
            {
              v12 = *a2;
              *(v7 + 12) = *(a2 + 2);
              *v9 = v12;
              *(*(v7 + 40) + 308) = *"\\6\\6\\6\\6\\6\\6\\6\\5";
              v13 = *(v7 + 17808);
              if (v13 == 2)
              {
                *v22 = 0uLL;
                v23 = *v9;
                v24 = *(v7 + 12);
                v14 = *(v7 + 4);
                v25 = *v7;
                v26 = v14;
                KD_hmac_sha256(&v23, 12, (v7 + 17812), 0x10u, v22, 16);
                *(*(v7 + 40) + 352) = *(v7 + 17812);
                *(*(v7 + 40) + 336) = *v22;
                v13 = *(v7 + 17808);
              }

              if (v13)
              {
                v15 = (*(v7 + 40) + 716);
                v15[14] = 0u;
                v15[15] = 0u;
                v15[12] = 0u;
                v15[13] = 0u;
                v15[10] = 0u;
                v15[11] = 0u;
                v15[8] = 0u;
                v15[9] = 0u;
                v15[6] = 0u;
                v15[7] = 0u;
                v15[4] = 0u;
                v15[5] = 0u;
                v15[2] = 0u;
                v15[3] = 0u;
                *v15 = 0u;
                v15[1] = 0u;
                memcpy((*(v7 + 40) + 716), __src, v5);
                *(*(v7 + 40) + 972) = v5;
              }
            }

            *(v7 + 64) = 0x10000;
            v16 = qword_100021B40;
            **(v16 + 8608) = sub_1000045CC(0x1F4u, 0x1F4u, sub_10000CED4);
            *(*(qword_100021B40 + 8608) + 8) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t WAI_RX_packets_indication(uint64_t a1, unsigned int a2)
{
  v2 = qword_100021B40;
  if ((*(qword_100021B40 + 17808) - 3) >= 0xFFFFFFFE)
  {
    v5[0] = a1;
    v5[1] = a2;
    v3 = iwn_wpa_defrag(qword_100021B40, v5);
    if (v3)
    {
      iwn_wapi_sm_rx_wai(v2, v2 + 8, *v3, v3[2]);
    }
  }

  return 0;
}

uint64_t WIFI_lib_init()
{
  if ((byte_100021B4C & 1) == 0)
  {
    byte_100021B48 = 1;
    v0 = malloc_type_malloc(0x45A8uLL, 0x100004077774924uLL);
    if (v0)
    {
      v1 = v0;
      v2 = (v0 + 1024);
      bzero(v0, 0x45A8uLL);
      qword_100021B40 = v1;
      ECC_Init();
      v1[1076] = v1 + 1199;
      v1[5] = v2 + 424;
      v2[424] = 1;
      v2[697] = 1;
      v1[1127] = 16;
      X509_init();
      result = 0;
      byte_100021B4C = 1;
      return result;
    }

    qword_100021B40 = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t WIFI_lib_exit()
{
  sub_10000C474();
  cleanup_cert();
  X509_exit();
  v0 = qword_100021B40;
  if (qword_100021B40)
  {
    bzero(qword_100021B40, 0x45A8uLL);
    free(v0);
  }

  qword_100021B40 = 0;
  byte_100021B4C = 0;
  return 0;
}

void sub_10000CED4()
{
  v0 = *(qword_100021B40 + 8608);
  v1 = *(v0 + 8);
  if ((v1 - 4) >= 0xFFFFFFFD)
  {
    v2 = *(v0 + 12) + 1;
    *(v0 + 12) = v2;
    if (v2 >= 4 * *&a66666665[4 * v1 + 16])
    {
      v3 = *(v0 + 16);
      *(v0 + 16) = v3 + 1;
      if (v3 < 2)
      {
        sub_1000043C4((v0 + 24), *(v0 + 20));
        *(v0 + 12) = 0;
      }

      else
      {
        if (v1 != 3)
        {
          sub_10000C424();
        }

        sub_10000C474();
        *(v0 + 8) = 0;
      }
    }
  }
}

int *iwn_wpa_defrag(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[2];
  v5 = *(*a2 + 11);
  v6 = *(*a2 + 10);
  v7 = *(a1 + 56);
  if (*(*a2 + 10))
  {
    if (!v7)
    {
      v11 = 0;
LABEL_12:
      if (!v6)
      {
        buffer = iwn_get_buffer(16);
        if (!buffer)
        {
          *(a1 + 56) = 0;
          if (v5)
          {
            return 0;
          }

          return *(a1 + 56);
        }

        v13 = buffer;
        buffer[3] = 4096;
        v14 = iwn_get_buffer(4096);
        *v13 = v14;
        if (!v14)
        {
          v13 = iwn_free_buffer(v13, 16);
        }

        *(a1 + 56) = v13;
        if (v5 && v13)
        {
          memcpy((*v13 + v13[2]), v3, v4);
          v15 = v13[2] + v4;
          v13[2] = v15;
          *(*v13 + 6) = BYTE1(v15);
          *(*v13 + 7) = v15;
          iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 133);
          return 0;
        }

LABEL_21:
        if (v5)
        {
          return 0;
        }

        return *(a1 + 56);
      }

LABEL_19:
      if (v11)
      {
        v16 = *v11;
        v17 = v4 - 12;
        memcpy((*v11 + v11[2]), (v3 + 12), v17);
        v18 = v11[2] + v17;
        v11[2] = v18;
        *(*v11 + 6) = BYTE1(v18);
        *(*v11 + 7) = v18;
        *(v16 + 8) = *(v3 + 8);
        *(v16 + 10) = *(v3 + 10);
      }

      goto LABEL_21;
    }

LABEL_5:
    v9 = __rev16(*(*a2 + 8));
    iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 107);
    v10 = *(a1 + 56);
    if (v9 != bswap32(*(*v10 + 8)) >> 16 || *(*v10 + 10) + 1 != v6 || v10[3] - v10[2] < v4)
    {
      sub_10000D1A0(v10);
      *(a1 + 56) = 0;
    }

    iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 124);
    v11 = *(a1 + 56);
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = a2;
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 91);
  return v8;
}

uint64_t sub_10000D1A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    iwn_free_buffer(*result, *(result + 12));

    return iwn_free_buffer(v1, 16);
  }

  return result;
}

uint64_t iwn_wai_fixdata_id_by_ident(uint64_t a1, _WORD *a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    *a2 = a3;
    v6 = a2 + 2;
    cert_obj = get_cert_obj(a3);
    if (cert_obj && (v8 = cert_obj, cert_obj[8]) && cert_obj[9] && cert_obj[10] && cert_obj[11] && cert_obj[12] && cert_obj[13] && cert_obj[14])
    {
      iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 344);
      v9 = v8[9](a1);
      v10 = v8[10](a1);
      v11 = v8[11](a1);
      iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 349);
      result = 4294967294;
      if (v9 && v10)
      {
        if (v11)
        {
          iwn_wpa_hexdump(2, "AE ID subject: ", (v9 + 4), *v9);
          iwn_wpa_hexdump(2, "AE ID: issure", (v10 + 4), *v10);
          iwn_wpa_hexdump(2, "AE ID: Number", (v11 + 4), *v11);
          memcpy(a2 + 2, v9 + 4, *v9);
          v12 = v6 + *v9;
          memcpy(v12, v10 + 4, *v10);
          v13 = &v12[*v10];
          memcpy(v13, v11 + 4, *v11);
          a2[1] = v13 + *v11 - v6;
          iwn_free_buffer(v9, 260);
          iwn_free_buffer(v10, 260);
          iwn_free_buffer(v11, 260);
          return 0;
        }
      }
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t iwn_wapi_sm_rx_wai(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  if (*(a1 + 68))
  {
    v5 = *(a1 + 17808);
    if (v5 != 1 || dword_10002074C != 0)
    {
      if (a4 <= 0xB)
      {
        iwn_wpa_printf(2, "WPA: WAI frame too short, len %d");
LABEL_22:
        v7 = "WPA: WAI frame is wrong";
        goto LABEL_23;
      }

      if (__rev16(*a3) != 1)
      {
        iwn_wpa_printf(2, "WPA: WAI frame Version(%u) is wrong");
        goto LABEL_22;
      }

      if (*(a3 + 2) != 1)
      {
        v17 = *(a3 + 2);
        iwn_wpa_printf(2, "WPA: WAI frame type(%u) is wrong");
        goto LABEL_22;
      }

      v9 = *(a3 + 3);
      if (v5 == 2)
      {
        if (v9 >= 8)
        {
          goto LABEL_14;
        }
      }

      else if (v9 > 2)
      {
LABEL_14:
        v10 = *(a3 + 6);
        v11 = *(a3 + 7);
        if ((v11 | (v10 << 8)) != a4)
        {
          iwn_wpa_printf(2, "WPA: WAI frame length(%u) is wrong");
          goto LABEL_22;
        }

        if (__rev16(a3[4]) < *(a1 + 64))
        {
          iwn_wpa_printf(2, "WPA: WAI frame packets_sc(%u) is wrong");
          goto LABEL_22;
        }

        v13 = v11 | (v10 << 8);
        v14 = v13 - 12;
        iwn_wpa_printf(5, "iwn_wapi_sm_rx_wai  plen = %d, hdr->length = %d hdr->stype = %u \n", v13 - 12, v13, v9);
        v15 = *(a3 + 3);
        if (v15 > 5)
        {
          if (*(a3 + 3) <= 9u)
          {
            if (v15 - 6 >= 2)
            {
              if (v15 == 8)
              {
                sub_10000DF84(a1, (a3 + 6), v14);
                goto LABEL_48;
              }

              if (v15 != 9)
              {
                return iwn_wpa_printf(2, "WPA: receive unknown frame stype %u", *(a3 + 3));
              }
            }

            goto LABEL_47;
          }

          if (v15 != 10)
          {
            if (v15 == 11)
            {
              sub_10000E604(a1, (a3 + 6), v14);
              goto LABEL_48;
            }

            if (v15 != 12)
            {
              return iwn_wpa_printf(2, "WPA: receive unknown frame stype %u", *(a3 + 3));
            }

            goto LABEL_47;
          }

          if (sub_10000E3B0(a1, (a3 + 6), v14))
          {
LABEL_52:
            timer_resend();
            goto LABEL_48;
          }

          goto LABEL_55;
        }

        if (*(a3 + 3) <= 2u)
        {
          if (v15 == 1)
          {
LABEL_47:
            v19 = *(a3 + 3);
            iwn_wpa_printf(2, "WPA: receive error frame stype %u");
            goto LABEL_48;
          }

          if (v15 == 2)
          {
            iwn_wpa_printf(2, "WPA: receive ignore frame stype %u");
            goto LABEL_48;
          }
        }

        else
        {
          switch(v15)
          {
            case 3u:
              sub_10000D6B8(a1, (a3 + 6), v14);
              goto LABEL_48;
            case 4u:
              goto LABEL_47;
            case 5u:
              v16 = sub_10000D9E0(a1, a3 + 12, v14);
              switch(v16)
              {
                case -2:
                  wlan_deauth_for_otherc();
                  break;
                case -1:
                  goto LABEL_52;
                case 0:
LABEL_55:
                  timer_reset();
                  break;
              }

LABEL_48:
              result = sub_10000D1A0(*(a1 + 56));
              *(a1 + 56) = 0;
              return result;
          }
        }

        return iwn_wpa_printf(2, "WPA: receive unknown frame stype %u", *(a3 + 3));
      }

      v18 = *(a3 + 3);
      iwn_wpa_printf(2, "WPA: WAI frame stype(%u) is wrong ");
      goto LABEL_22;
    }

    v7 = "No cert";
  }

  else
  {
    v7 = "wpa_s->wapi_state <WAPISM_AL_ASSOC";
  }

LABEL_23:

  return iwn_wpa_printf(2, v7);
}

uint64_t sub_10000D6B8(uint64_t a1, uint64_t a2, int a3)
{
  result = iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 721);
  if (a3 > 43)
  {
    if (*(a1 + 17808) != 1)
    {
      return result;
    }

    if (*a2)
    {
      v8 = 7;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 68);
    if (v9 == v8)
    {
      if ((*a2 & 1) == 0)
      {
        v10 = *(a2 + 1);
        *(a1 + 100) = *(a2 + 17);
        *(a1 + 84) = v10;
LABEL_27:
        v14 = a3 - 44;
        *(a1 + 4284) = bswap32(*(a2 + 33)) >> 16;
        v15 = *(a2 + 35);
        v16 = __rev16(v15);
        *(a1 + 4286) = v16;
        if (v14 >= bswap32(v15) >> 16)
        {
          v17 = (a2 + 37);
          v18 = v16 >= 0x3E8 ? 1000 : v16;
          memcpy((a1 + 4288), v17, v18);
          v19 = &v17[v16];
          v20 = bswap32(*&v17[v16]);
          v21 = HIWORD(v20);
          *(a1 + 2232) = HIWORD(v20);
          v22 = v19[2];
          v23 = v19[3] | (v22 << 8);
          *(a1 + 2234) = _byteswap_ushort(*(v19 + 1));
          v24 = v14 - v16 - v23;
          if ((v14 - v16) >= v23)
          {
            v25 = v19 + 4;
            v26 = v22 >= 8 ? 2048 : v23;
            memcpy((a1 + 2236), v25, v26);
            iwn_wai_fixdata_id_by_ident(a1 + 2232, (a1 + 5288), v21);
            iwn_wpa_hexdump(2, "AE ID: ", a1 + 5292, *(a1 + 5290));
            v27 = &v25[*(a1 + 2234)];
            *(a1 + 8342) = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v29 | (v28 << 8);
            *(a1 + 8344) = v29 | (v28 << 8);
            if (v24 >= v30)
            {
              if (v28)
              {
                v31 = 256;
              }

              else
              {
                v31 = v29;
              }

              memcpy((a1 + 8347), v27 + 3, v31);
              if (v24 == v30)
              {
                *(a1 + 7536) = 0u;
                *(a1 + 7520) = 0u;
                *(a1 + 7504) = 0u;
                *(a1 + 7488) = 0u;
                *(a1 + 7472) = 0u;
                *(a1 + 7456) = 0u;
                *(a1 + 7440) = 0u;
                *(a1 + 7424) = 0u;
                *(a1 + 7408) = 0u;
                *(a1 + 7392) = 0u;
                *(a1 + 7376) = 0u;
                *(a1 + 7360) = 0u;
                *(a1 + 7344) = 0u;
                *(a1 + 7328) = 0u;
                *(a1 + 7312) = 0u;
                *(a1 + 7296) = 0u;
                *(a1 + 7546) = 0u;
                *(a1 + 7296) = 16;
                *(a1 + 7298) = 257;
                *(a1 + 7300) = 1;
                *(a1 + 7302) = 11;
                *(a1 + 7305) = 0x163D71C812A0906;
                *(a1 + 7312) = 16908545;
                result = sub_10000EA10(a1);
                if (result == -1)
                {
                  return result;
                }

                get_random((a1 + 116), 32);
                result = sub_10000EAC0(a1);
                if (!result)
                {
                  return result;
                }

                v32 = 833;
              }

              else
              {
                v32 = 820;
              }

              return iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", v32);
            }
          }
        }

        goto LABEL_2;
      }
    }

    else if ((*a2 & 1) == 0 || v9 != 5 || !*(a1 + 72))
    {
      return result;
    }

    if (*(a2 + 1) != *(a1 + 84) || *(a2 + 9) != *(a1 + 92) || *(a2 + 17) != *(a1 + 100) || *(a2 + 25) != *(a1 + 108))
    {
      v7 = "WPA: ae_auth_flag not same!\n";
      goto LABEL_3;
    }

    goto LABEL_27;
  }

LABEL_2:
  v7 = "WPA: WAI frame payload too short";
LABEL_3:

  return iwn_wpa_printf(5, v7);
}

uint64_t sub_10000D9E0(uint64_t a1, unsigned __int8 *a2, int a3)
{
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 994);
  if (*(a1 + 68) != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a2;
  iwn_wpa_printf(2, "WPA: in %s:%d,flag=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1003, v6);
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->flag=%d,(flag & BIT(0))=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1004, v6, v6 & 1);
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->flag=%d,(flag & BIT(0))=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1005, v6, *(a1 + 82) & 1);
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->flag=%d,(flag & BIT(1))=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1006, v6, v6 & 2);
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->flag=%d,(flag & BIT(1))=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1007, v6, *(a1 + 82) & 2);
  if ((v6 & 3) != (*(a1 + 82) & 3))
  {
    iwn_wpa_printf(5, "WPA: not same flag bit 0,1!\n", v36, v39, v42, v45);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) != *(a1 + 116) || *(a2 + 9) != *(a1 + 124) || *(a2 + 17) != *(a1 + 132) || *(a2 + 25) != *(a1 + 140))
  {
    iwn_wpa_printf(5, "WPA: not same Nasue!\n", v36, v39, v42, v45);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 33);
  *(a1 + 164) = *(a2 + 49);
  *(a1 + 148) = v11;
  if (a2[65])
  {
    return 4294967294;
  }

  v12 = a2[66];
  v13 = *(a1 + 7562);
  if (v12 != v13 || memcmp(a2 + 67, (a1 + 7566), a2[66]))
  {
    iwn_wpa_printf(5, "WPA: not same asue key data!,asue_len =%d,wpa_s->asue_key_data.length=%d\n");
    return 0xFFFFFFFFLL;
  }

  v14 = &a2[v12 + 66];
  v15 = *++v14;
  memcpy((a1 + 8086), v14 + 1, v15);
  v16 = *v14;
  *(a1 + 8082) = v16;
  v17 = &v14[v16 + 1];
  v18 = *(a1 + 5290);
  if (sub_10000EECC(v17, (a1 + 5288), *(a1 + 5290)))
  {
    iwn_wpa_printf(5, "WPA: not same ae id!\n");
    iwn_wpa_hexdump(5, "ae_id", v17, *(a1 + 5290) + 4);
    iwn_wpa_hexdump(5, "wpa_s->ae_id", a1 + 5288, *(a1 + 5290) + 4);
    return 0xFFFFFFFFLL;
  }

  v19 = v13 + v16 + v18 + 72;
  iwn_wpa_printf(2, "WPA: in %s:%d,request_len=%d,wpa_s->ae_id.id_len=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1056, v19, v18);
  v20 = (v17 + *(a1 + 5290) + 4);
  v21 = word_100020362;
  if (sub_10000EECC(v20, &word_100020360, word_100020362))
  {
    iwn_wpa_printf(5, "WPA: not same asue id!\n", v37, v40, v43, v46);
    return 0xFFFFFFFFLL;
  }

  v22 = (v19 + v21 + 4);
  iwn_wpa_printf(2, "WPA: in %s:%d,request_len=%d,wpa_s->asue_id.id_len=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1065, v19 + v21 + 4, v21);
  if ((v6 & 8) != 0)
  {
    iwn_wpa_printf(2, "WPA: in %s:%d,iwn_eloop.asue_id.id_len=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1073, word_100020362);
    v25 = v20 + word_100020362;
    if (v25[4] != 2)
    {
      iwn_wpa_printf(5, "cert result flag is not 2!\n", v38, v41, v44, v47);
      return 0xFFFFFFFFLL;
    }

    v26 = &v25[__rev16(*(v25 + 37)) + 74];
    if (*(v26 + 2))
    {
      iwn_wpa_printf(5, "cert result  is not ok!\n");
      return 4294967294;
    }

    v28 = v26 + 2 + __rev16(*(v26 + 5));
    v29 = __rev16(*(v28 + 6));
    v30 = (v25 + 4);
    iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1092);
    v31 = __rev16(*(v25 + 5));
    cert_obj = get_cert_obj(word_100020358);
    v33 = *(cert_obj + 24);
    v34 = v31 + 3;
    v35 = v28 + v29 - 40;
    if (!(*(cert_obj + 112))(v33 + 2, *v33, v30, v34, v35, 48))
    {
      iwn_wpa_hexdump(5, "pubkey->data", (v33 + 2), *v33);
      iwn_wpa_hexdump(5, "cert_res", v30, v34);
      iwn_wpa_hexdump(5, "asu_sign", v35, 48);
      v27 = "ASU sign error!!!";
      goto LABEL_34;
    }

    v22 = (v22 + v29 + v34 + 3);
    iwn_wpa_printf(2, "WPA: in %s:%d,request_len=%d,len=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1109, v22, a3);
  }

  v23 = get_cert_obj(*(a1 + 2232));
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->ae_cert.len=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1119, *(a1 + 2234));
  v24 = (*(v23 + 64))(a1 + 2232);
  if (!(*(v23 + 112))(v24 + 2, *v24, a2, v22, &a2[a3 - 48], 48))
  {
    iwn_free_buffer(v24, 2052);
    v27 = "AE sign error!!!";
LABEL_34:
    puts(v27);
    return 0xFFFFFFFFLL;
  }

  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1131);
  iwn_free_buffer(v24, 2052);
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1133);
  if (v22 + (bswap32(*&a2[v22 + 1]) >> 16) + 3 != a3)
  {
    iwn_wpa_printf(2, "WPA: in %s:%d,request_len=%d,len=%d");
    return 0xFFFFFFFFLL;
  }

  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1143);
  sub_10000EF2C(a1);
  result = 0;
  *(a1 + 68) = 3;
  return result;
}

uint64_t sub_10000DF84(uint64_t a1, __int128 *a2, int a3)
{
  v6 = *(a1 + 40);
  result = iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1447);
  if (a3 <= 61)
  {
    return iwn_wpa_printf(5, "WPA: WAI frame payload too short, len(%u)", a3);
  }

  if ((*a2 & 0x10) != 0)
  {
    v8 = 7;
  }

  else if (*(a1 + 17808) == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(a2 + 17);
  v10 = *(a1 + 68);
  if (v10 == v8 || (*a2 & 0x10) != 0 && *(a1 + 72) && v10 <= 7 && ((1 << v10) & 0xA8) != 0)
  {
    if (*(a2 + 1) != *(v6 + 42) || *(a2 + 9) != *(v6 + 43))
    {
      iwn_wpa_printf(2, "WPA: BKID is wrong");
      iwn_wpa_hexdump(5, "AE BKID", a2 + 1, 16);
      iwn_wpa_hexdump(5, "ASUE BKID", (v6 + 336), 16);
      v12 = "ASUE BK";
      v13 = (v6 + 352);
      v14 = 16;
LABEL_19:

      return iwn_wpa_hexdump(5, v12, v13, v14);
    }

    if ((*a2 & 0x10) != 0)
    {
      if (v9 != (*v6 == 0))
      {
        v31 = "WPA: USKID  is not invalid";
        v32 = 5;
LABEL_31:

        return iwn_wpa_printf(v32, v31);
      }

      if (sub_10000F1D0(&v6[128 * *v6 + 68], (a2 + 30)))
      {
        v12 = "ae_challenge";
        v13 = a2 + 30;
        v14 = 32;
        goto LABEL_19;
      }
    }

    *v6 = v9;
    buffer = iwn_get_buffer(140);
    if (buffer)
    {
      v16 = buffer;
      v17 = &v6[128 * v9];
      get_random(v17 + 100, 32);
      v18 = *(a2 + 18);
      *(v16 + 2) = *(a2 + 26);
      *v16 = v18;
      v19 = *(a2 + 30);
      *(v16 + 28) = *(a2 + 46);
      *(v16 + 12) = v19;
      iwn_wpa_hexdump(2, "asue_challenge", (v17 + 100), 32);
      iwn_wpa_hexdump(2, "ae_challenge", a2 + 30, 32);
      v20 = *(v17 + 100);
      *(v16 + 60) = *(v17 + 116);
      *(v16 + 44) = v20;
      qmemcpy(v16 + 76, "pairwise key expansion for unicast and additional keys and nonce", 64);
      KD_hmac_sha256(v16, 140, v6 + 22, *(v6 + 100), v17 + 4, 96);
      mhash_sha256((v17 + 68), 0x20u, (v17 + 68));
      iwn_free_buffer(v16, 140);
      v21 = *(a1 + 40);
      v22 = *v21;
      v23 = v21[973];
      iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1547);
      result = iwn_get_buffer(v23 + 126);
      if (result)
      {
        v24 = result;
        v25 = &v21[128 * v22];
        v26 = *(a1 + 66) + 1;
        *(a1 + 66) = v26;
        *result = 151060736;
        *(result + 8) = HIBYTE(v26);
        *(result + 9) = v26;
        *(result + 10) = 0;
        v27 = *a2;
        *(result + 26) = *(a2 + 14);
        *(result + 12) = v27;
        v28 = *(v25 + 100);
        *(result + 58) = *(v25 + 116);
        *(result + 42) = v28;
        iwn_wpa_hexdump(2, "asue_challenge", (v25 + 100), 32);
        v29 = *(a2 + 30);
        *(v24 + 90) = *(a2 + 46);
        *(v24 + 74) = v29;
        iwn_wpa_hexdump(2, "WPA: tbuf", v24, v23 + 126);
        v30 = v21[973];
        memcpy((v24 + 106), v21 + 460, v30);
        hmac_sha256((v24 + 12), v23 + 94, (v25 + 36), 0x10u, (v24 + 106 + v30), 20);
        *(v24 + 6) = bswap32(v30 + 126) >> 16;
        iwn_wpa_ether_send(v24, v23 + 126);
        timer_set(2, v24, v23 + 126);
        result = iwn_free_buffer(v24, v23 + 126);
        *(a1 + 68) = 4;
      }

      return result;
    }

    v31 = "WPA: malloc failure";
    v32 = 2;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10000E3B0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  v7 = *v6;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1586);
  if (*(a1 + 68) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = &v6[128 * v7];
  v9 = v8 + 4;
  if (sub_10000F1D0(v8 + 100, (a2 + 30)))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (a2 + a3 - 20);
  hmac_sha256(a2, a3 - 20, v9 + 2, 0x10u, &v22, 20);
  if (v22 != *v10 || v23 != *(a2 + a3 - 12) || v24 != *(a2 + a3 - 4))
  {
    iwn_wpa_hexdump(2, "receive ap's mic", v10, 20);
    v13 = "own mic";
    v14 = &v22;
    v15 = 2;
    v16 = 20;
LABEL_11:
    iwn_wpa_hexdump(v15, v13, v14, v16);
    return 0xFFFFFFFFLL;
  }

  v18 = (*(a2 + 63) + 2);
  iwn_wpa_hexdump(2, "AE's IE ", a2 + 62, (*(a2 + 63) + 2));
  if ((*a2 & 0x10) == 0 && (v18 != v6[972] || memcmp((a2 + 62), v6 + 716, v18)))
  {
    iwn_wpa_hexdump(5, "AE's IE ", a2 + 62, v18);
    v16 = v6[972];
    v13 = "ASUE's IE ";
    v14 = (v6 + 716);
    v15 = 5;
    goto LABEL_11;
  }

  *v6 = *(a2 + 17);
  v19 = *(a1 + 40);
  v20 = *v19;
  v21 = &v19[128 * v20];
  iwn_wpa_hexdump(2, "wapi_install_usk:", (v21 + 4), 32);
  if (sub_1000044C8((v21 + 4), 32, v20))
  {
    iwn_wpa_printf(4, "WPA: Failed to set PTK to the driver");
    iwn_wpa_printf(5, "in %s install usk failure\n", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 68) = 5;
  if (*(a1 + 72) || (*a2 & 0x10) == 0)
  {
    return 0;
  }

  result = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_10000E604(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 5);
  result = iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1648);
  if ((*(a1 + 17) | 2) != 7)
  {
    return result;
  }

  if ((*a2 & 0x20) != 0)
  {
    v10 = "WPA: STAKEY_NEG  is not supptable by ASUE";
    goto LABEL_14;
  }

  v6[273] = *(a2 + 1);
  v8 = *(a1 + 2) == *(a2 + 3) && *(a1 + 6) == *(a2 + 7);
  if (!v8 || (*a1 == *(a2 + 9) ? (v9 = *(a1 + 2) == *(a2 + 13)) : (v9 = 0), !v9))
  {
    iwn_wpa_hexdump(5, "addid", a2 + 3, 12);
    iwn_wpa_printf(5, "bssid=%02x:%02x:%02x:%02x:%02x:%02x; ownaddr%02x:%02x:%02x:%02x:%02x:%02x", a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
    v10 = "WPA: ADDID  is wrong";
LABEL_14:

    return iwn_wpa_printf(2, v10);
  }

  v11 = bswap64(*(a2 + 31));
  v12 = bswap64(*(v6 + 308));
  if (v11 == v12 && (v11 = bswap64(*(a2 + 39)), v12 = bswap64(*(v6 + 316)), v11 == v12))
  {
    v13 = 0;
  }

  else if (v11 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v13 <= 0)
  {
    iwn_wpa_printf(2, "WPA: Key annoucement identfier is wrong");
    iwn_wpa_hexdump(2, "WPA: msk_ann_id", (v6 + 308), 16);

    return iwn_wpa_hexdump(2, "rx WPA: Key_an_id", a2 + 31, 16);
  }

  else
  {
    *(v6 + 308) = *(a2 + 31);
    v14 = *(a2 + 2);
    if (*v6 != v14)
    {
      v10 = "WPA: Key annoucement uskid  is wrong";
      goto LABEL_14;
    }

    v15 = &v6[128 * v14];
    v16 = v15 + 4;
    hmac_sha256(a2, a3 - 20, (v15 + 36), 0x10u, &v26, 20);
    v17 = a2 + a3;
    v18 = *(v17 - 20);
    v19 = *(v17 - 12);
    v20 = *(v17 - 4);
    if (v26 == v18 && v27 == v19 && v28 == v20)
    {
      v25 = *(a2 + 48);
      v24 = *(a2 + 31);
      iwn_wpa_hexdump(2, "ct_msk", a2 + 48, 16);
      iwn_wpa_hexdump(2, "kek", (v16 + 48), 16);
      iwn_wpa_hexdump(2, "iv", &v24, 16);
      v23 = *(a2 + 48);
      wpi_encrypt(&v24, &v23, 0x10u, v16 + 12, &v25);
      iwn_wpa_hexdump(2, "outmkey", &v25, 16);
      KD_hmac_sha256("multicast or station key expansion for station unicast and multicast and broadcast", 82, &v25, *(a2 + 47), v6 + 276, 32);
      iwn_wpa_hexdump(2, "msk", (v6 + 276), 32);
      return sub_10000F254(a1, a2);
    }

    else
    {
      return iwn_wpa_printf(2, "WPA: Multicast  announcement packet mic  is wrong");
    }
  }
}

uint64_t sub_10000EA10(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = a1 + 4096;
  *(a1 + 7822) = 0;
  *(a1 + 7826) = 0u;
  *(a1 + 7842) = 0u;
  *(a1 + 7858) = 0u;
  *(a1 + 7874) = 0u;
  *(a1 + 7890) = 0u;
  *(a1 + 7906) = 0u;
  *(a1 + 7922) = 0u;
  *(a1 + 7938) = 0u;
  *(a1 + 7954) = 0u;
  *(a1 + 7970) = 0u;
  *(a1 + 7986) = 0u;
  *(a1 + 8002) = 0u;
  *(a1 + 8018) = 0u;
  *(a1 + 8034) = 0u;
  *(a1 + 8050) = 0u;
  *(a1 + 8066) = 0u;
  *(a1 + 7562) = 0;
  *(a1 + 7790) = 0u;
  *(a1 + 7806) = 0u;
  *(a1 + 7758) = 0u;
  *(a1 + 7774) = 0u;
  *(a1 + 7726) = 0u;
  *(a1 + 7742) = 0u;
  *(a1 + 7694) = 0u;
  *(a1 + 7710) = 0u;
  *(a1 + 7662) = 0u;
  *(a1 + 7678) = 0u;
  *(a1 + 7630) = 0u;
  *(a1 + 7646) = 0u;
  *(a1 + 7598) = 0u;
  *(a1 + 7614) = 0u;
  *(a1 + 7566) = 0u;
  *(a1 + 7582) = 0u;
  result = ecc192_genkey(a1 + 7826, (a1 + 7566));
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(v1 + 3726) = 24;
  *(v1 + 3466) = 49;
  return result;
}

uint64_t sub_10000EAC0(uint64_t a1)
{
  v2 = (a1 + 7298);
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 851);
  bzero(byte_100022B56, 0x800uLL);
  bzero(&word_100021B4E, 0x804uLL);
  bzero(&unk_100022352, 0x804uLL);
  v3 = *(a1 + 66) + 1;
  *(a1 + 66) = v3;
  *&byte_100022B56[1] = 257;
  byte_100022B59 = 4;
  byte_100022B5B = 0;
  byte_100022B5E = HIBYTE(v3);
  byte_100022B5F = v3;
  byte_100022B61 = 0;
  v4 = *(a1 + 82) | 4;
  *(a1 + 82) |= 4u;
  iwn_wpa_printf(2, "WPA: in %s:%d,wpa_s->flag=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 860, v4);
  byte_100022B62 = *(a1 + 82);
  unk_100022B63 = *(a1 + 84);
  unk_100022B73 = *(a1 + 100);
  unk_100022B83 = *(a1 + 116);
  unk_100022B93 = *(a1 + 132);
  byte_100022BA3 = v2[264];
  v5 = byte_100022BA3;
  __memcpy_chk();
  v6 = &unk_100022BA4 + v5;
  *v6 = *(a1 + 5289);
  v6[1] = *(a1 + 5288);
  v6[2] = *(a1 + 5291);
  v6[3] = *(a1 + 5290);
  v7 = &unk_100022BA4 + v5 + 4;
  v8 = *(a1 + 5290);
  memcpy(v7, (a1 + 5292), v8);
  v9 = &v7[v8];
  *v9 = bswap32(word_100020358) >> 16;
  v10 = iwn_eloop;
  v9[2] = *(*(iwn_eloop + 48) + 1);
  v9[3] = **(v10 + 48);
  v11 = &v7[v8 + 4];
  v12 = *(v10 + 48);
  v13 = *v12;
  memcpy(v11, v12[1], v13);
  v14 = &v11[v13];
  iwn_wpa_hexdump(2, "cert_bin->data", *(*(v10 + 48) + 8), **(v10 + 48));
  *v14 = v2[1044];
  v14[1] = v2[1047];
  v14[2] = v2[1046];
  v14 += 3;
  v15 = *(v2 + 523);
  memcpy(v14, (a1 + 8347), v15);
  v16 = &v14[v15];
  word_100021B4E = v16 - byte_100022B56 - 12;
  __memcpy_chk();
  cert_obj = get_cert_obj(word_100020358);
  iwn_wpa_printf(2, "WPA: in %s:%d,used_cert=%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 911, word_100020358);
  if ((*(cert_obj + 104))(*(cert_obj + 40) + 4, **(cert_obj + 40), &unk_100021B52, word_100021B4E, &xmmword_100022356))
  {
    *v16 = 1;
    iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 925);
    *(v16 + 3) = bswap32(word_100020360) >> 16;
    v18 = word_100020362;
    *(v16 + 5) = __rev16(word_100020362);
    memcpy(v16 + 7, &unk_100020364, v18);
    v19 = &v16[v18 + 7];
    *v19 = *(a1 + 7297);
    v19[1] = *(a1 + 7296);
    v19[2] = *v2;
    v19[3] = v2[1];
    v19[4] = v2[2];
    v19[5] = *(a1 + 7303);
    v19[6] = *(a1 + 7302);
    v20 = v19 + 7;
    v21 = *(a1 + 7302);
    memcpy(v19 + 7, (a1 + 7305), v21);
    v22 = &v20[v21];
    *v22 = 12288;
    v24 = xmmword_100022366;
    v23 = unk_100022376;
    *(v22 + 2) = xmmword_100022356;
    *(v22 + 18) = v24;
    *(v22 + 34) = v23;
    v25 = &v20[v21 + 50];
    *(v16 + 1) = bswap32(v25 - (v16 + 1) - 2) >> 16;
    v26 = v25 - byte_100022B56;
    byte_100022B5C = (v25 - byte_100022B56) >> 8;
    byte_100022B5D = v25 - byte_100022B56;
    iwn_wpa_ether_send(byte_100022B56, v25 - byte_100022B56);
    timer_set(1, byte_100022B56, v26);
    result = 0;
    *(a1 + 68) = 2;
  }

  else
  {
    iwn_wpa_printf(5, "fail to sign data and will exit !!\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10000EECC(unsigned __int16 *a1, unsigned __int16 *a2, size_t __n)
{
  v5 = *a1;
  v4 = a1 + 2;
  if (*a2 != bswap32(v5) >> 16 || a2[1] != bswap32(a1[1]) >> 16)
  {
    return 0xFFFFFFFFLL;
  }

  if (!memcmp(v4, a2 + 2, __n))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000EF2C(uint64_t a1)
{
  v2 = a1 + 4096;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v6 = 0uLL;
  v7 = 0;
  iwn_wpa_hexdump(2, "asue_eck", a1 + 7826, *(a1 + 7822));
  iwn_wpa_hexdump(2, "ae_key_data", a1 + 8086, *(v2 + 3986));
  if (!ecc192_ecdh(a1 + 7826, a1 + 8086, &v6))
  {
    return iwn_wpa_printf(2, "asue_certauthbk_derivation ECHD fail : in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 417);
  }

  iwn_wpa_hexdump(2, "ecdhkey", &v6, 24);
  v3 = *(a1 + 164);
  v10[0] = *(a1 + 148);
  v10[1] = v3;
  v4 = *(a1 + 132);
  v10[2] = *(a1 + 116);
  v10[3] = v4;
  memset(&v10[6] + 15, 0, 145);
  qmemcpy(&v10[4], "base key expansion for key and additional nonce", 47);
  KD_hmac_sha256(v10, 111, &v6, 0x18u, &v8, 48);
  iwn_wpa_hexdump(2, "text", v10, 111);
  iwn_wpa_hexdump(2, "temp_out", &v8, 48);
  *(*(a1 + 40) + 352) = v8;
  LODWORD(v10[0]) = *(a1 + 8);
  WORD2(v10[0]) = *(a1 + 12);
  memset(v10 + 12, 0, 244);
  WORD5(v10[0]) = *(a1 + 4);
  *(v10 + 6) = *a1;
  iwn_wpa_hexdump(2, "text1", v10, 111);
  KD_hmac_sha256(v10, 12, (*(a1 + 40) + 352), 0x10u, (*(a1 + 40) + 336), 16);
  mhash_sha256(v9, 0x20u, a1 + 84);
  iwn_wpa_hexdump(5, "bk", *(a1 + 40) + 352, 16);
  return iwn_wpa_hexdump(5, "bkid", *(a1 + 40) + 336, 16);
}

uint64_t sub_10000F1D0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 0;
  }

  iwn_wpa_hexdump(2, "challenge_a", a1, 32);
  iwn_wpa_hexdump(2, "challenge_b", a2, 32);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000F254(uint64_t a1, uint64_t *a2)
{
  iwn_wpa_printf(2, "WPA: in %s:%d", "/Library/Caches/com.apple.xbs/Sources/WAPI/libiwnwai_asue/wapi.c", 1732);
  v4 = *(a1 + 40);
  v5 = *(a2 + 2);
  v7 = *v4;
  v6 = v4 + 4;
  if (v7 != v5)
  {
    iwn_wpa_printf(2, "WPA: Key annoucement uskid  is wrong");
    return 0xFFFFFFFFLL;
  }

  buffer = iwn_get_buffer(63);
  if (!buffer)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = buffer;
  v10 = *(a1 + 66) + 1;
  *(a1 + 66) = v10;
  *buffer = 201392384;
  buffer[8] = HIBYTE(v10);
  buffer[9] = v10;
  *(buffer + 5) = 0;
  v11 = *a2;
  *(buffer + 19) = *(a2 + 7);
  *(buffer + 12) = v11;
  v12 = buffer + 12;
  *(buffer + 27) = *(a2 + 31);
  v13 = &v6[128 * v5];
  iwn_wpa_hexdump(2, "WPA: mak", (v13 + 32), 16);
  iwn_wpa_hexdump(2, "WPA: tbuf", v12, 31);
  hmac_sha256(v12, 31, v13 + 2, 0x10u, v9 + 43, 20);
  *(v9 + 3) = 16128;
  iwn_wpa_ether_send(v9, 0x3Fu);
  timer_set(3, v9, 63);
  iwn_free_buffer(v9, 63);
  *(a1 + 68) = 6;
  v14 = *(a1 + 40);
  v15 = *(v14 + 273);
  iwn_wpa_hexdump(2, "wapi_install_msk:", v14 + 276, 32);
  iwn_wpa_hexdump(2, "WPA: KEYSC", a2 + 15, 16);
  result = sub_100004400(v14 + 276, 32, v15, a2 + 15);
  if (result)
  {
    iwn_wpa_printf(4, "WPA: Failed to set MSK to the driver.");
    iwn_wpa_printf(5, "in %s install msk failure\n");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 68) = 7;
  return result;
}

uint64_t FpMinus(int *a1, unsigned int *a2, void *a3)
{
  if (*a1 == 1 && !a1[1])
  {
    v4 = 1;
    *a3 = 1;
    do
    {
      *(a3 + v4) = a1[v4];
    }

    while (v4++ < *a1);
  }

  else
  {
    sub_10000F4A8(a2, a1, a3);
  }

  return 0;
}

double sub_10000F4A8(unsigned int *a1, int *a2, void *a3)
{
  v4 = a2;
  v6 = sub_10001011C(a1, a2);
  if (v6 <= 0)
  {
    if (!v6)
    {
      *&result = 1;
      *a3 = 1;
      return result;
    }

    v8 = v4;
    v4 = a1;
  }

  else
  {
    v8 = a1;
  }

  v9 = *v4;
  if (*v4 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v4[v11];
      v13 = v8[v11];
      v14 = v13 - (v12 + v10);
      v15 = __CFADD__(v12, v10);
      v16 = v12 + v10;
      v17 = v15;
      if (!v15)
      {
        v13 = v14;
      }

      v18 = __CFADD__(v16, v14);
      v10 = (v17 | v18) & 1;
      *(a3 + v11) = v13;
      v19 = v11++ < *v4;
    }

    while (v19);
    v9 = *v4;
  }

  LODWORD(v20) = *v8;
  if (v9 < *v8)
  {
    v21 = v9 + 1;
    do
    {
      v22 = v8[v21] - v10;
      v10 = __CFADD__(v10, v22);
      *(a3 + v21) = v22;
      v20 = *v8;
      v19 = v21++ < v20;
    }

    while (v19);
  }

  v23 = v20;
  v24 = v20 + 1;
  v25 = v20 & (v20 >> 31);
  while (v23 >= 1)
  {
    v26 = *(a3 + v23--);
    --v24;
    if (v26)
    {
      goto LABEL_29;
    }
  }

  v24 = v25;
LABEL_29:
  *a3 = v24;
  return result;
}

uint64_t PubKeyToOctetString(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  memset(v18, 0, 60);
  v8 = *a1;
  v9 = 6;
  v10 = 24;
  while (!v8[v9 - 1])
  {
    v10 -= 4;
    if (!--v9)
    {
      LODWORD(v18[0]) = 0;
      goto LABEL_7;
    }
  }

  LODWORD(v18[0]) = v9;
  if (v9 - 1 >= 0)
  {
    memcpy(v18 + 4, v8, v10);
  }

LABEL_7:
  memset(v17, 0, 60);
  v11 = *(a1 + 8);
  v12 = 6;
  v13 = 24;
  while (!v11[v12 - 1])
  {
    v13 -= 4;
    if (!--v12)
    {
      LODWORD(v17[0]) = 0;
      goto LABEL_13;
    }
  }

  LODWORD(v17[0]) = v12;
  if (v12 - 1 >= 0)
  {
    memcpy(v17 + 4, v11, v13);
  }

LABEL_13:
  v16 = 0;
  sub_10000F704(v18, 24, a2, &v16, a4);
  v14 = v16;
  sub_10000F704(v17, 24, a2, a3, a4 + v16);
  *a3 += v14;
  return 0;
}

uint64_t sub_10000F704(_DWORD *a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v14 = 0;
  result = sub_10000F840(a1, a3, &v14, a5);
  if (!result)
  {
    v9 = (a2 - v14);
    if (v9 < 1)
    {
      if ((v9 & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v10 = a2 - 1;
      if (a2 - 1 >= v9)
      {
        v11 = v14 - 1;
        do
        {
          *(a5 + v10--) = *(a5 + v11--);
        }

        while (v10 >= v9);
      }

      v12 = v9 + 1;
      v13 = v9 - 1;
      do
      {
        *(a5 + v13) = 0;
        --v12;
        --v13;
      }

      while (v12 > 1);
    }

    *a4 = a2;
  }

  return result;
}

uint64_t PriKeyToOctetString(void *__src, int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (a2 >= 1)
  {
    memcpy(v11, __src, 4 * a2);
  }

  v10 = a2;
  sub_10000F840(&v10, a3, a4, a5);
  return 0;
}

uint64_t sub_10000F840(_DWORD *a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 + 1;
    v7 = a2;
    v8 = (4 * v4) | 1;
    while (1)
    {
      v9 = v4--;
      if (v9 != *a1)
      {
        break;
      }

      v10 = 5;
      v11 = 24;
      v12 = v8;
      do
      {
        --v10;
        --v12;
        if (v10 < 2)
        {
          break;
        }

        v13 = v6[v4] >> v11;
        v11 -= 8;
      }

      while (!v13);
      if (v12 > v7)
      {
        return 5;
      }

      if (v10 >= 1)
      {
        goto LABEL_11;
      }

LABEL_13:
      v8 -= 4;
      if (v9 < 2)
      {
        goto LABEL_16;
      }
    }

    v10 = 4;
LABEL_11:
    v14 = (a4 + v5);
    v15 = v10 + 1;
    v16 = 8 * v10 - 8;
    v5 += v10;
    do
    {
      *v14++ = v6[v4] >> v16;
      --v15;
      v16 -= 8;
    }

    while (v15 > 1);
    goto LABEL_13;
  }

  v5 = 0;
LABEL_16:
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t OctetStringToPriKey(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  memset(v8, 0, 60);
  sub_10000F984(a1, a2, v8);
  v6 = v8[0];
  if (SLODWORD(v8[0]) >= 1)
  {
    memcpy(a3, v8 + 4, 4 * LODWORD(v8[0]));
  }

  *a4 = v6;
  return 0;
}

uint64_t sub_10000F984(uint64_t result, int a2, _DWORD *a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = result + a2;
    v5 = a2;
    do
    {
      v6 = 0;
      v7 = 0;
      if (v5 >= 4)
      {
        v8 = 4;
      }

      else
      {
        v8 = v5;
      }

      v9 = v4 - v8;
      if (v5 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v5;
      }

      do
      {
        result = *(v9 + v6);
        v7 = result | (v7 << 8);
        ++v6;
      }

      while (v6 < v10);
      a3[++v3] = v7;
      v4 -= 4;
      v11 = v5 <= 4;
      v5 -= 4;
    }

    while (!v11);
  }

  v12 = (a2 + 3) >> 2;
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    if (a3[v12--])
    {
      v15 = v13 + 1;
      goto LABEL_17;
    }
  }

  v15 = 0;
LABEL_17:
  *a3 = v15;
  return result;
}