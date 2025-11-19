uint64_t sub_10000E308(int a1, char *const *a2)
{
  v22 = off_100024400;
  v23 = unk_100024410;
  v24 = xmmword_100024420;
  v25 = unk_100024430;
  v21 = off_1000243E0;
  v4 = getopt_long(a1, a2, "t:d:", &v21, 0) << 24;
  if (v4 == -16777216)
  {
    if (optind != a1 - 1)
    {
LABEL_19:
      fflush(__stderrp);
      fputs("Usage: redirect create [ OPTIONS ] <interface>\n\t-t, --type <typename>        Supported: ethernet, cellular\n\t-d, --delegate <interface>   Delegate interface\n", __stderrp);
      return 64;
    }

LABEL_3:
    fwrite("type required\n", 0xEuLL, 1uLL, __stderrp);
    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v4 >> 24;
    if (v7 == 100)
    {
      v5 = optarg;
    }

    else
    {
      if (v7 != 116)
      {
        fprintf(__stderrp, "unknown option %s\n");
        goto LABEL_19;
      }

      v8 = optarg;
      if (!strcmp(optarg, "ethernet"))
      {
        v6 = 2;
      }

      else
      {
        if (strcmp(v8, "cellular"))
        {
          fprintf(__stderrp, "invalid redirect type: %s\n");
          goto LABEL_19;
        }

        v6 = 15;
      }
    }

    v4 = getopt_long(a1, a2, "t:d:", &v21, 0) << 24;
  }

  while (v4 != -16777216);
  if (optind != a1 - 1)
  {
    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_3;
  }

  v9 = a2[optind];
  printf("redirect_create: ifname %s, type %d, delegate %s\n", v9, v6, v5);
  v20 = 0;
  v19 = 535847;
  v10 = sub_10000EA60(&v20);
  if (v10)
  {
    v11 = v10;
    v12 = __stderrp;
    v13 = strerror(v10);
    fprintf(v12, "inet_dgram_socket failed: %s\n", v13);
    return v11;
  }

  v26 = 0u;
  v27 = 0u;
  __strlcpy_chk();
  HIDWORD(v19) = v6;
  *&v27 = &v19;
  v15 = v20;
  if (ioctl(v20, 0xC020697AuLL, &v26) < 0)
  {
    v16 = __error();
    v11 = *v16;
    v17 = __stderrp;
    v18 = strerror(*v16);
    fprintf(v17, "SIOCIFCREATE2 failed: %s\n", v18);
    close(v15);
    if (v11)
    {
      return v11;
    }
  }

  else
  {
    close(v15);
  }

  if (!v5)
  {
    return 0;
  }

  v11 = sub_10000E7F8(v9, v5);
  if (v11)
  {
    sub_10000E964();
  }

  return v11;
}

uint64_t sub_10000E60C(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    printf("redirect_destroy: ifname %s\n", *(a2 + 8));
    sub_10000E964();
    return 0;
  }

  else
  {
    fflush(__stderrp);
    fputs("Usage: redirect destroy <interface>\n", __stderrp);
    return 64;
  }
}

uint64_t sub_10000E680(int a1, char **a2)
{
  v4 = 0;
  v8 = off_100024440;
  v9 = xmmword_100024460;
  v10 = unk_100024470;
  while (1)
  {
    v5 = getopt_long(a1, a2, "d:", &v8, 0);
    if (v5 != 100)
    {
      break;
    }

    v4 = optarg;
  }

  if (v5 != 255)
  {
    fprintf(__stderrp, "unknown option %s\n", optarg);
    goto LABEL_11;
  }

  if (optind != a1 - 1)
  {
LABEL_11:
    fflush(__stderrp);
    fputs("Usage: redirect set [ OPTIONS ] <interface>\n\t-d, --delegate <interface>   Delegate interface\n", __stderrp);
    return 64;
  }

  if (!v4)
  {
    fwrite("delegate required\n", 0x12uLL, 1uLL, __stderrp);
    goto LABEL_11;
  }

  v6 = a2[optind];
  if (!strcmp(v4, "none"))
  {
    v4 = 0;
  }

  printf("redirect set: ifname %s, delegate %s\n", v6, v4);
  return sub_10000E7F8(v6, v4);
}

uint64_t sub_10000E7F8(uint64_t a1, const char *a2)
{
  v12 = 0;
  v3 = sub_10000EA60(&v12);
  if (v3)
  {
    v4 = v3;
    v5 = __stderrp;
    v6 = strerror(v3);
    fprintf(v5, "inet_dgram_socket failed: %s\n", v6);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    memset(v13, 0, sizeof(v13));
    __strlcpy_chk();
    v15 = xmmword_10001E5E0;
    v16 = v13;
    if (a2)
    {
      __strlcpy_chk();
    }

    v7 = v12;
    if (ioctl(v12, 0x8028697BuLL, &v14) < 0)
    {
      v8 = __error();
      v4 = *v8;
      v9 = __stderrp;
      v10 = strerror(*v8);
      fprintf(v9, "SIOCSDRVSPEC set delegate failed: %s, delegate %s\n", v10, a2);
    }

    else
    {
      v4 = 0;
    }

    close(v7);
  }

  return v4;
}

uint64_t sub_10000E964()
{
  v8 = 0;
  v0 = sub_10000EA60(&v8);
  if (v0)
  {
    v1 = __stderrp;
    v2 = strerror(v0);
    return fprintf(v1, "inet_dgram_socket failed: %s\n", v2);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    __strlcpy_chk();
    v4 = v8;
    if (ioctl(v8, 0x80206979uLL, v9) < 0)
    {
      v5 = __error();
      v6 = __stderrp;
      v7 = strerror(*v5);
      fprintf(v6, "SIOCIFDESTROY failed: %s\n", v7);
    }

    return close(v4);
  }
}

uint64_t sub_10000EA60(int *a1)
{
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    return *__error();
  }

  v3 = v2;
  result = 0;
  *a1 = v3;
  return result;
}

void sub_10000EAD8(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 1, 0xE3E4EB8CuLL);
  if (v5)
  {
    v6 = v5;
    memcpy(v5, __s, v4 + 1);
    v7 = malloc_type_realloc(*(a1 + 8), 8 * *a1 + 8, 0x10040436913F5uLL);
    if (v7)
    {
      v8 = (*a1)++;
      *(a1 + 8) = v7;
      v7[v8] = v6;
    }

    else
    {

      free(v6);
    }
  }
}

uint64_t sub_10000EB8C()
{
  puts("Linenoise key codes debugging mode.\nPress keys to see scan codes. Type 'quit' at any time to exit.");
  result = sub_10000ECCC();
  if (result != -1)
  {
    *&v5[1] = 538976288;
    while (1)
    {
      do
      {
        v5[0] = 0;
        result = read(0, v5, 1uLL);
      }

      while (!result);
      v1 = *&v5[2];
      v5[3] = v5[4];
      *&v5[1] = v1;
      v2 = v5[0];
      v5[4] = v5[0];
      if (*&v5[1] == 1953068401)
      {
        break;
      }

      if ((v5[0] & 0x80000000) != 0)
      {
        v3 = __maskrune(v5[0], 0x40000uLL);
      }

      else
      {
        v3 = _DefaultRuneLocale.__runetype[v5[0]] & 0x40000;
      }

      if (v3)
      {
        v4 = v2;
      }

      else
      {
        v4 = 63;
      }

      printf("'%c' %02x (%d) (type quit to exit)\n", v4, v2, v2);
      putchar(13);
      fflush(__stdoutp);
    }

    if (byte_1000286B0 == 1)
    {
      result = tcsetattr(0, 2, &xmmword_100028668);
      if (result != -1)
      {
        byte_1000286B0 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000ECCC()
{
  memset(&v2, 0, sizeof(v2));
  if (!isatty(0))
  {
    goto LABEL_7;
  }

  if ((byte_100028664 & 1) == 0)
  {
    atexit(sub_10000FAC4);
    byte_100028664 = 1;
  }

  if (tcgetattr(0, &xmmword_100028668) == -1)
  {
    goto LABEL_7;
  }

  *v2.c_cc = xmmword_100028688;
  *&v2.c_cc[16] = unk_100028698;
  v0.i64[1] = *(&xmmword_100028668 + 1);
  v0.i64[0] = 768;
  v0.i64[0] = vorrq_s8(unk_100028678, v0).u64[0];
  v2.c_ospeed = qword_1000286A8;
  v0.i64[1] = vandq_s8(unk_100028678, vdupq_n_s64(0xFFFFFFFFFFFFFA77)).i64[1];
  *&v2.c_iflag = vandq_s8(xmmword_100028668, xmmword_10001E630);
  *&v2.c_cflag = v0;
  *&v2.c_cc[16] = 1;
  if (tcsetattr(0, 2, &v2) < 0)
  {
LABEL_7:
    *__error() = 25;
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    byte_1000286B0 = 1;
  }

  return result;
}

char *sub_10000EE00()
{
  v0 = __chkstk_darwin();
  v1 = getenv("TERM");
  if (v1)
  {
    v2 = v1;
    for (i = 0; i != 3; ++i)
    {
      if (!strcasecmp(v2, off_1000245A8[i]))
      {
        printf("%s", v0);
        fflush(__stdoutp);
        result = fgets(__s, 4096, __stdinp);
        if (result)
        {
          for (j = strlen(__s); j; --j)
          {
            v11 = __s[j - 1];
            if (v11 != 13 && v11 != 10)
            {
              break;
            }

            __s[j - 1] = 0;
          }

          return strdup(__s);
        }

        return result;
      }
    }
  }

  if (!isatty(0))
  {
    result = fgets(__s, 4096, __stdinp);
    if (result)
    {
      v13 = strlen(__s);
      if (v13)
      {
        v14 = v13;
        if (__s[v13 - 1] != 10)
        {
          goto LABEL_132;
        }

        __s[v13 - 1] = 0;
      }

      return strdup(__s);
    }

    return result;
  }

  if (sub_10000ECCC() == -1)
  {
    return 0;
  }

  __fd[0] = 0;
  v48 = 0;
  v47 = 0u;
  __fd[1] = 1;
  *&__fd[2] = __s;
  v43 = 4096;
  v44 = v0;
  __nbyte[0] = strlen(v0);
  __nbyte[1] = 0;
  v46 = 0uLL;
  v49 = 0;
  if (ioctl(1, 0x40087468uLL, &v49) == -1 || (v4 = WORD1(v49), !WORD1(v49)))
  {
    v5 = sub_1000100D4();
    if (v5 == -1 || (v6 = v5, write(1, "\x1B[999C", 6uLL) != 6) || (v7 = sub_1000100D4(), v7 == -1))
    {
      v4 = 80;
    }

    else
    {
      v4 = v7;
      if (v7 > v6)
      {
        snprintf(&__str, 0x20uLL, "\x1B[%dD", v7 - v6);
        v8 = strlen(&__str);
        write(1, &__str, v8);
      }
    }
  }

  v47 = v4;
  LODWORD(v48) = 0;
  **&__fd[2] = 0;
  --v43;
  sub_10000F748("");
  if (write(__fd[1], v0, __nbyte[0]) == -1)
  {
    goto LABEL_127;
  }

  v41 = 0;
  if (!read(__fd[0], &v41, 1uLL))
  {
    goto LABEL_120;
  }

  do
  {
    v15 = v41;
    if (v41 != 9 || off_100028650 == 0)
    {
LABEL_51:
      switch(v15)
      {
        case 1:
          goto LABEL_52;
        case 2:
          goto LABEL_113;
        case 3:
          *__error() = 35;
          break;
        case 4:
          if (*(&v46 + 1))
          {
            goto LABEL_77;
          }

          v40 = --dword_100028660;
          free(*(qword_100028658 + 8 * v40));
          break;
        case 5:
          goto LABEL_101;
        case 6:
          goto LABEL_107;
        case 7:
        case 9:
        case 10:
        case 15:
        case 17:
        case 18:
        case 19:
        case 22:
        case 24:
        case 25:
        case 26:
          goto LABEL_58;
        case 8:
          goto LABEL_55;
        case 11:
          v26 = __nbyte[1];
          __s[__nbyte[1]] = 0;
          goto LABEL_95;
        case 12:
          write(1, "\x1B[H\x1B[2J", 7uLL);
          goto LABEL_116;
        case 13:
          v38 = --dword_100028660;
          free(*(qword_100028658 + 8 * v38));
          v39 = DWORD2(v46);
          if (dword_100028648 && __nbyte[1] != *(&v46 + 1))
          {
            __nbyte[1] = *(&v46 + 1);
            sub_10000FBEC(__fd);
            v39 = DWORD2(v46);
          }

          v14 = v39;
          goto LABEL_128;
        case 14:
          goto LABEL_110;
        case 16:
          goto LABEL_109;
        case 20:
          v27 = __nbyte[1];
          v28 = *(&v46 + 1);
          if (__nbyte[1])
          {
            v29 = __nbyte[1] >= *(&v46 + 1);
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            goto LABEL_117;
          }

          v30 = &__s[__nbyte[1]];
          v31 = __s[__nbyte[1] - 1];
          *(v30 - 1) = __s[__nbyte[1]];
          *v30 = v31;
          if (v27 == v28 - 1)
          {
            goto LABEL_116;
          }

          goto LABEL_108;
        case 21:
          __s[0] = 0;
          *(&v46 + 1) = 0;
          goto LABEL_65;
        case 23:
          v32 = __nbyte[1];
          if (__nbyte[1])
          {
            v33 = *&__fd[2] - 1;
            v34 = __nbyte[1];
            while (*(v33 + v34) == 32)
            {
              __nbyte[1] = --v34;
              if (!v34)
              {
                goto LABEL_94;
              }
            }

            do
            {
              if (*(v33 + v34) == 32)
              {
                break;
              }

              __nbyte[1] = --v34;
            }

            while (v34);
          }

          else
          {
            v34 = 0;
          }

LABEL_94:
          v35 = v34 - v32;
          memmove((*&__fd[2] + v34), (*&__fd[2] + v32), *(&v46 + 1) - v32 + 1);
          v26 = v35 + *(&v46 + 1);
LABEL_95:
          *(&v46 + 1) = v26;
          goto LABEL_116;
        case 27:
          if (read(__fd[0], &v49, 1uLL) == -1 || read(__fd[0], &v49 + 1, 1uLL) == -1)
          {
            goto LABEL_117;
          }

          if (v49 == 79)
          {
            v25 = BYTE1(v49);
          }

          else
          {
            if (v49 != 91)
            {
              goto LABEL_117;
            }

            v25 = BYTE1(v49);
            if (BYTE1(v49) - 48 <= 9)
            {
              if (read(__fd[0], &v49 + 2, 1uLL) != -1 && BYTE2(v49) == 126 && BYTE1(v49) == 51)
              {
LABEL_77:
                sub_10000FB6C(__fd);
              }

              goto LABEL_117;
            }

            if (BYTE1(v49) <= 0x43u)
            {
              switch(BYTE1(v49))
              {
                case 'A':
LABEL_109:
                  v37 = 1;
                  break;
                case 'B':
LABEL_110:
                  v37 = 0;
                  break;
                case 'C':
LABEL_107:
                  v27 = __nbyte[1];
                  if (__nbyte[1] == *(&v46 + 1))
                  {
                    goto LABEL_117;
                  }

LABEL_108:
                  v36 = v27 + 1;
                  goto LABEL_115;
                default:
                  goto LABEL_117;
              }

              sub_10000FFE4(__fd, v37);
              goto LABEL_117;
            }

            if (BYTE1(v49) == 68)
            {
LABEL_113:
              if (!__nbyte[1])
              {
                goto LABEL_117;
              }

              v36 = __nbyte[1] - 1;
LABEL_115:
              __nbyte[1] = v36;
              goto LABEL_116;
            }
          }

          if (v25 != 70)
          {
            if (v25 != 72)
            {
              goto LABEL_117;
            }

LABEL_52:
            if (!__nbyte[1])
            {
              goto LABEL_117;
            }

LABEL_65:
            __nbyte[1] = 0;
            goto LABEL_116;
          }

LABEL_101:
          v36 = *(&v46 + 1);
          if (__nbyte[1] == *(&v46 + 1))
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        default:
          if (v15 == 127)
          {
LABEL_55:
            if (!__nbyte[1] || !*(&v46 + 1))
            {
              goto LABEL_117;
            }

            memmove((*&__fd[2] + __nbyte[1] - 1), (*&__fd[2] + __nbyte[1]), *(&v46 + 1) - __nbyte[1]);
            --__nbyte[1];
            --*(&v46 + 1);
            *(*&__fd[2] + *(&v46 + 1)) = 0;
LABEL_116:
            sub_10000FBEC(__fd);
            goto LABEL_117;
          }

LABEL_58:
          LOBYTE(__str) = v15;
          if (*(&v46 + 1) >= v43)
          {
            goto LABEL_117;
          }

          if (*(&v46 + 1) != __nbyte[1])
          {
            memmove((*&__fd[2] + __nbyte[1] + 1), (*&__fd[2] + __nbyte[1]), *(&v46 + 1) - __nbyte[1]);
            *(*&__fd[2] + __nbyte[1]) = v15;
            ++*(&v46 + 1);
            ++__nbyte[1];
            *(*&__fd[2] + *(&v46 + 1)) = 0;
            goto LABEL_116;
          }

          *(*&__fd[2] + *(&v46 + 1)) = v15;
          ++__nbyte[1];
          ++*(&v46 + 1);
          *(*&__fd[2] + *(&v46 + 1)) = 0;
          if (dword_100028648 || *(&v46 + 1) + __nbyte[0] >= v47)
          {
            goto LABEL_116;
          }

          if (write(__fd[1], &__str, 1uLL) != -1)
          {
            goto LABEL_117;
          }

          break;
      }

LABEL_127:
      v14 = -1;
      goto LABEL_128;
    }

    __str = 0;
    v53 = 0;
    v50 = 0;
    (off_100028650)(*&__fd[2], &__str);
    v17 = __str;
    if (!__str)
    {
      fputc(7, __stderrp);
      fflush(__stderrp);
      goto LABEL_49;
    }

    v18 = 0;
    while (1)
    {
      if (v18 >= v17)
      {
        sub_10000FBEC(__fd);
      }

      else
      {
        v19 = *&__fd[2];
        v20 = __nbyte[1];
        v21 = *(&v46 + 1);
        v22 = *(v53 + 8 * v18);
        *(&v46 + 1) = strlen(v22);
        __nbyte[1] = *(&v46 + 1);
        *&__fd[2] = v22;
        sub_10000FBEC(__fd);
        *(&v46 + 1) = v21;
        __nbyte[1] = v20;
        *&__fd[2] = v19;
      }

      if (!read(__fd[0], &v50, 1uLL))
      {
        sub_1000101D4(&__str);
        goto LABEL_120;
      }

      if (v50 != 9)
      {
        break;
      }

      v23 = __str;
      v18 = (v18 + 1) % (__str + 1);
      v17 = __str;
      if (v18 == __str)
      {
        fputc(7, __stderrp);
        fflush(__stderrp);
        v17 = __str;
        v18 = v23;
      }
    }

    if (v50 == 27)
    {
      if (v18 < __str)
      {
        sub_10000FBEC(__fd);
      }
    }

    else if (v18 < __str)
    {
      v24 = snprintf(*&__fd[2], v43, "%s", *(v53 + 8 * v18));
      __nbyte[1] = v24;
      *(&v46 + 1) = v24;
    }

LABEL_49:
    sub_1000101D4(&__str);
    v41 = v50;
    if (v50 < 0)
    {
      break;
    }

    v15 = v50;
    if (v50)
    {
      goto LABEL_51;
    }

LABEL_117:
    v41 = 0;
  }

  while (read(__fd[0], &v41, 1uLL));
LABEL_120:
  v14 = *(&v46 + 1);
LABEL_128:
  if (byte_1000286B0 == 1 && tcsetattr(0, 2, &xmmword_100028668) != -1)
  {
    byte_1000286B0 = 0;
  }

  putchar(10);
LABEL_132:
  if (v14 != -1)
  {
    return strdup(__s);
  }

  return 0;
}

uint64_t sub_10000F748(char *__s1)
{
  v2 = qword_100028658;
  if (!qword_100028658)
  {
    result = malloc_type_malloc(8 * dword_100028478, 0x10040436913F5uLL);
    qword_100028658 = result;
    if (!result)
    {
      return result;
    }

    v2 = result;
    bzero(result, 8 * dword_100028478);
  }

  v4 = dword_100028660;
  if (!dword_100028660 || (result = strcmp(v2[dword_100028660 - 1], __s1), result))
  {
    result = strdup(__s1);
    if (result)
    {
      v5 = result;
      if (v4 == dword_100028478)
      {
        free(*v2);
        memmove(v2, v2 + 1, 8 * (v4 - 1));
        v4 = dword_100028660 - 1;
        v2 = qword_100028658;
      }

      v2[v4] = v5;
      dword_100028660 = v4 + 1;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000F83C(int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v2 = dword_100028660;
  if (qword_100028658)
  {
    result = malloc_type_malloc(8 * a1, 0x10040436913F5uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = v2 - a1;
    if (v2 <= a1)
    {
      v6 = qword_100028658;
    }

    else
    {
      v6 = qword_100028658;
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = 8 * v5;
        do
        {
          free(*&v6[v7]);
          v7 += 8;
        }

        while (v8 != v7);
      }

      v2 = a1;
    }

    bzero(v4, 8 * a1);
    v9 = dword_100028660;
    memcpy(v4, &v6[8 * (dword_100028660 - v2)], 8 * v2);
    free(v6);
    qword_100028658 = v4;
    v2 = v9;
  }

  dword_100028478 = a1;
  if (v2 > a1)
  {
    dword_100028660 = a1;
  }

  return 1;
}

uint64_t sub_10000F948(const char *a1)
{
  v1 = fopen(a1, "w");
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  if (dword_100028660 >= 1)
  {
    v3 = 0;
    do
    {
      fprintf(v2, "%s\n", *(qword_100028658 + 8 * v3++));
    }

    while (v3 < dword_100028660);
  }

  fclose(v2);
  return 0;
}

uint64_t sub_10000F9EC()
{
  v0 = __chkstk_darwin();
  v1 = fopen(v0, "r");
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  while (fgets(__s, 4096, v2))
  {
    v3 = strchr(__s, 13);
    if (v3 || (v3 = strchr(__s, 10)) != 0)
    {
      *v3 = 0;
    }

    sub_10000F748(__s);
  }

  fclose(v2);
  return 0;
}

void sub_10000FAC4()
{
  if (byte_1000286B0 == 1 && tcsetattr(0, 2, &xmmword_100028668) != -1)
  {
    byte_1000286B0 = 0;
  }

  v0 = qword_100028658;
  if (qword_100028658)
  {
    v1 = dword_100028660;
    if (dword_100028660 >= 1)
    {
      v2 = qword_100028658;
      do
      {
        v3 = *v2++;
        free(v3);
        --v1;
      }

      while (v1);
    }

    free(v0);
  }
}

void sub_10000FB6C(void *a1)
{
  v1 = a1[7];
  if (v1)
  {
    v3 = a1[5];
    if (v3 < v1)
    {
      memmove((a1[1] + v3), (a1[1] + v3 + 1), v1 + ~v3);
      v4 = a1[7] - 1;
      a1[7] = v4;
      *(a1[1] + v4) = 0;

      sub_10000FBEC(a1);
    }
  }
}

void sub_10000FBEC(uint64_t a1)
{
  if (dword_100028648)
  {
    v2 = strlen(*(a1 + 24));
    v3 = *(a1 + 64);
    v4 = (v3 + v2 + *(a1 + 56) - 1) / v3;
    v5 = *(a1 + 72);
    v6 = (*(a1 + 48) + v3 + v2) / v3;
    if (v4 > v5)
    {
      *(a1 + 72) = v4;
    }

    v7 = *(a1 + 4);
    v8 = v5 - v6;
    __buf = 0;
    __nbyte = 0;
    if (v8 >= 1)
    {
      snprintf(__str, 0x40uLL, "\x1B[%dB", v8);
      v9 = strlen(__str);
      sub_100010240(&__buf, __str, v9);
    }

    v10 = __OFSUB__(v5, 1);
    v11 = v5 - 1;
    if (!((v11 < 0) ^ v10 | (v11 == 0)))
    {
      do
      {
        strcpy(__str, "\r\x1B[0K\x1B[1A");
        v12 = strlen(__str);
        sub_100010240(&__buf, __str, v12);
        --v11;
      }

      while (v11);
    }

    strcpy(__str, "\r\x1B[0K");
    v13 = strlen(__str);
    sub_100010240(&__buf, __str, v13);
    v14 = strlen(*(a1 + 24));
    sub_100010240(&__buf, *(a1 + 24), v14);
    sub_100010240(&__buf, *(a1 + 8), *(a1 + 56));
    v15 = *(a1 + 40);
    if (v15 && v15 == *(a1 + 56) && !((v15 + v2) % *(a1 + 64)))
    {
      v36 = __nbyte;
      v37 = malloc_type_realloc(__buf, __nbyte + 1, 0xC8666DF0uLL);
      if (v37)
      {
        v37[v36] = 10;
        __buf = v37;
        LODWORD(__nbyte) = v36 + 1;
      }

      strcpy(__str, "\r");
      v38 = strlen(__str);
      sub_100010240(&__buf, __str, v38);
      v16 = v4 + 1;
      if (v4 >= *(a1 + 72))
      {
        *(a1 + 72) = v16;
      }
    }

    else
    {
      v16 = v4;
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 64);
    v19 = v16 - (v17 + v2 + v18) / v18;
    if (v19 >= 1)
    {
      snprintf(__str, 0x40uLL, "\x1B[%dA", v19);
      v20 = strlen(__str);
      sub_100010240(&__buf, __str, v20);
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
    }

    v21 = (v2 + v17) % v18;
    if (v21)
    {
      snprintf(__str, 0x40uLL, "\r\x1B[%dC", v21);
    }

    else
    {
      strcpy(__str, "\r");
    }

    v34 = strlen(__str);
    sub_100010240(&__buf, __str, v34);
    *(a1 + 48) = *(a1 + 40);
  }

  else
  {
    v22 = strlen(*(a1 + 24));
    v7 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);
    for (i = *(a1 + 40) + v22; i >= v24; --i)
    {
      ++v23;
      --v25;
    }

    v27 = v25 + v22;
    if (v24 >= v27)
    {
      v24 = v27;
    }

    v28 = v24 - v22;
    __buf = 0;
    __nbyte = 0;
    strcpy(__str, "\r");
    v29 = strlen(__str);
    sub_100010240(&__buf, __str, v29);
    v30 = *(a1 + 24);
    v31 = strlen(v30);
    sub_100010240(&__buf, v30, v31);
    sub_100010240(&__buf, v23, v28);
    strcpy(__str, "\x1B[0K");
    v32 = strlen(__str);
    sub_100010240(&__buf, __str, v32);
    snprintf(__str, 0x40uLL, "\r\x1B[%dC", i);
    v33 = strlen(__str);
    sub_100010240(&__buf, __str, v33);
  }

  v35 = __buf;
  write(v7, __buf, __nbyte);
  free(v35);
}

void sub_10000FFE4(uint64_t a1, int a2)
{
  v2 = dword_100028660;
  if (dword_100028660 >= 2)
  {
    v5 = qword_100028658;
    free(*(qword_100028658 + 8 * (dword_100028660 + ~*(a1 + 80))));
    v6 = strdup(*(a1 + 8));
    v7 = *(a1 + 80);
    *(v5 + 8 * (v2 + ~v7)) = v6;
    if (a2 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    v9 = v7 + v8;
    *(a1 + 80) = v9;
    if (v9 < 0)
    {
      *(a1 + 80) = 0;
    }

    else if (v9 >= v2)
    {
      *(a1 + 80) = v2 - 1;
    }

    else
    {
      strncpy(*(a1 + 8), *(v5 + 8 * (v2 + ~v9)), *(a1 + 16));
      *(*(a1 + 8) + *(a1 + 16) - 1) = 0;
      v10 = strlen(*(a1 + 8));
      *(a1 + 40) = v10;
      *(a1 + 56) = v10;

      sub_10000FBEC(a1);
    }
  }
}

uint64_t sub_1000100D4()
{
  if (write(1, "\x1B[6n", 4uLL) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v0 = 0;
  v2 = 0;
  do
  {
    if (read(0, &v3[v0], 1uLL) != 1)
    {
      break;
    }

    if (v3[v0] == 82)
    {
      break;
    }

    ++v0;
  }

  while (v0 != 31);
  v3[v0] = 0;
  result = 0xFFFFFFFFLL;
  if (v3[0] == 27 && v3[1] == 91)
  {
    if (sscanf(v4, "%d;%d", &v2, &v2 + 4) == 2)
    {
      return HIDWORD(v2);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1000101D4(unint64_t *a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
      free(*(a1[1] + 8 * v2++));
    }

    while (v2 < *a1);
  }

  v3 = a1[1];
  if (v3)
  {

    free(v3);
  }
}

char *sub_100010240(uint64_t a1, const void *a2, size_t a3)
{
  result = malloc_type_realloc(*a1, *(a1 + 8) + a3, 0xC8666DF0uLL);
  if (result)
  {
    v7 = result;
    result = memcpy(&result[*(a1 + 8)], a2, a3);
    *a1 = v7;
    *(a1 + 8) += a3;
  }

  return result;
}

uint64_t sub_1000102B4(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v2 = sub_100010BCC("kern.skywalk.nexus_channel_list", &v19, &v18);
  v3 = v18;
  v4 = v19;
  if (v19)
  {
    v5 = v18 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && v2 == 0;
  v7 = v6;
  if (v6)
  {
    while (v3 > 0x17)
    {
      v8 = (v4 + 6);
      v18 = v3 - 24;
      ++*(a1 + 8);
      if (v4[4])
      {
        v9 = 0;
        while (1)
        {
          v10 = 144 * (*(v8 + 36) + *(v8 + 32)) + 48;
          if (v18 < v10)
          {
            break;
          }

          v11 = (v8 + v10);
          v18 -= v10;
          sub_10001044C(&v17, &v16, &v16 + 1, v4, v8);
          ++v9;
          v8 = v11;
          if (v9 >= v4[4])
          {
            goto LABEL_19;
          }
        }

        v13 = __stderrp;
        v14 = "Error, mismatching nexus_channel_entry_t\n";
        v15 = 41;
LABEL_26:
        fwrite(v14, v15, 1uLL, v13);
        exit(71);
      }

      sub_10001044C(&v17, &v16, &v16 + 1, v4, 0);
      v11 = (v4 + 6);
LABEL_19:
      v3 = v18;
      v4 = v11;
      if (!v18)
      {
        *(a1 + 16) = v17;
        *(a1 + 12) = HIDWORD(v16);
        *a1 = v19;
        return v7;
      }
    }

    v13 = __stderrp;
    v14 = "Error, mismatching nexus_channel_info_t\n";
    v15 = 40;
    goto LABEL_26;
  }

  if (v19)
  {
    free(v19);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return v7;
}

char *sub_10001044C(void **a1, int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v10 = *a2;
  result = *a1;
  if (v9 >= *a2)
  {
    if (result)
    {
      v14 = 2 * v10;
      result = reallocf(result, 16 * (2 * v10));
    }

    else
    {
      result = malloc_type_malloc(0xA0uLL, 0x20040A4A59CD2uLL);
      v14 = 10;
    }

    *a1 = result;
    *a2 = v14;
    v12 = *a3;
  }

  else
  {
    v12 = *a3;
  }

  v15 = &result[16 * v9];
  *v15 = a4;
  *(v15 + 1) = a5;
  *a3 = v12 + 1;
  return result;
}

uint64_t sub_1000104FC(uint64_t a1, unsigned __int8 *uu1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    do
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        if (!uuid_compare(uu1, v7))
        {
          return v6;
        }

        v2 = *(a1 + 12);
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < v2);
  }

  return 0;
}

uint64_t sub_100010568(uint64_t a1, unsigned __int8 *uu1, int a3)
{
  if (!*(a1 + 12))
  {
    return 0;
  }

  v6 = 0;
  for (i = *(a1 + 16); !*(i + 8) || uuid_compare(uu1, *i) || *(*(i + 8) + 28) != a3; i += 16)
  {
    if (++v6 >= *(a1 + 12))
    {
      return 0;
    }
  }

  return i;
}

uint64_t sub_1000105F4(int a1)
{
  v7 = a1;
  result = sysctlbyname("kern.skywalk.ring_stat_enable", 0, 0, &v7, 4uLL);
  if (result)
  {
    v3 = __stderrp;
    if (a1)
    {
      v4 = "enable";
    }

    else
    {
      v4 = "disable";
    }

    v5 = __error();
    v6 = strerror(*v5);
    fprintf(v3, "failed to %s channel stat, %s\n", v4, v6);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100010688(BOOL *a1)
{
  v7 = 0;
  v6 = 4;
  result = sysctlbyname("kern.skywalk.ring_stat_enable", &v7, &v6, 0, 0);
  if (result)
  {
    v3 = __stderrp;
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v3, "failed to get channel stat, %s\n", v5);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *a1 = v7 == 1;
  }

  return result;
}

void *sub_100010720(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x8EA93A26uLL);
  if (!v2)
  {
    fwrite("malloc failed", 0xDuLL, 1uLL, __stderrp);
    exit(-1);
  }

  v3 = v2;
  bzero(v2, a1);
  return v3;
}

void *sub_100010788(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0xC2C7D9A2uLL);
  if (!result)
  {
    fwrite("realloc failed", 0xEuLL, 1uLL, __stderrp);
    exit(-1);
  }

  return result;
}

const char *sub_1000107D4(int a1)
{
  switch(a1)
  {
    case 6:
      return "tcp";
    case 253:
      return "quic";
    case 17:
      return "udp";
  }

  v1 = byte_1000286B4;
  snprintf(byte_1000286B4, 5uLL, "%d", a1);
  return v1;
}

const char *sub_100010858(unsigned int a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_100024618[a1];
  }
}

char *sub_10001087C(int a1, char *a2, size_t a3, int a4)
{
  buffer = 0u;
  memset(v10, 0, sizeof(v10));
  if (proc_pidinfo(a1, 13, 0, &buffer, 64) <= 0)
  {
    snprintf(a2, a3, "<unknown>.%d");
  }

  else
  {
    v7 = strlcpy(a2, v10, a3);
    if (a4 && v7 + 1 < a3)
    {
      snprintf(&a2[v7], a3 - v7, ".%d");
    }
  }

  return a2;
}

uint64_t sub_10001096C(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a1)
  {
    if (a3 && *a3 == 8)
    {
      printf("%s=%o");
    }

    else
    {
      printf("%s=%x");
    }
  }

  putchar(60);
  LOBYTE(v5) = a3[1];
  if (v5)
  {
    v6 = 0;
    v7 = a3 + 2;
    do
    {
      if ((a2 >> (v5 - 1)))
      {
        if (v6)
        {
          putchar(44);
        }

        v5 = *v7;
        if (v5 >= 33)
        {
          do
          {
            putchar(v5);
            v8 = *++v7;
            v5 = v8;
          }

          while (v8 > 32);
        }

        v6 = 1;
      }

      else
      {
        --v7;
        do
        {
          v9 = *++v7;
          v5 = v9;
        }

        while (v9 > 32);
      }

      ++v7;
    }

    while (v5);
  }

  return putchar(62);
}

const char *sub_100010A54(const char *a1, const char *a2)
{
  v4 = fileno(__stdoutp);
  if (isatty(v4))
  {
    v6 = a1;
    a1 = byte_1000286B9;
    snprintf(byte_1000286B9, 0x400uLL, "%s%s%s", a2, v6, "\x1B[0m");
  }

  return a1;
}

uint64_t sub_100010AC8(char *a1, void **a2, size_t *a3, void *a4, size_t a5)
{
  *a2 = 0;
  v10 = 10;
  while (1)
  {
    if (sysctlbyname(a1, 0, a3, a4, a5))
    {
      perror("sysctlbyname for buffer length failed");
      goto LABEL_8;
    }

    if (!*a3)
    {
      *a2 = 0;
      return 0;
    }

    v11 = malloc_type_malloc(*a3, 0x9233E447uLL);
    *a2 = v11;
    if (!v11)
    {
      warn("sysctl malloc failed");
      return 0;
    }

    if (!sysctlbyname(a1, v11, a3, a4, a5))
    {
      return 0;
    }

    if (*__error() != 12)
    {
      break;
    }

    free(*a2);
    *a2 = 0;
LABEL_8:
    if (!--v10)
    {
      return 0;
    }
  }

  warn("sysctlbyname with buffer for data failed");
  return 0;
}

uint64_t sub_100010BF0(const char *a1, void *a2)
{
  v4 = 4;
  v2 = sysctlbyname(a1, a2, &v4, 0, 0);
  if (v2)
  {
    perror("sysctlbyname failed");
  }

  return v2;
}

uint64_t sub_100010C48(const char *a1, int a2)
{
  v4 = a2;
  v2 = sysctlbyname(a1, 0, 0, &v4, 4uLL);
  if (v2)
  {
    perror("sysctlbyname failed");
  }

  return v2;
}

char *sub_100010CA0(in_addr_t *a1, char a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v4.s_addr = *a1;
  if (!v4.s_addr)
  {
LABEL_12:
    __strlcpy_chk();
    return byte_100028AB9;
  }

  v5 = inet_netof(v4);
  v6.s_addr = *a1;
  if (inet_lnaof(v6) || (v8 = getnetbyaddr(v5, 2)) == 0 || (h_name = v8->n_name) == 0)
  {
    v7 = gethostbyaddr(a1, 4u, 2);
    if (!v7)
    {
LABEL_2:
      h_name = 0;
      goto LABEL_9;
    }

    h_name = v7->h_name;
  }

LABEL_9:
  if (!*a1)
  {
    goto LABEL_12;
  }

  if (h_name)
  {
    strncpy(byte_100028AB9, h_name, 0xFFuLL)[255] = 0;
  }

  else
  {
    v9 = bswap32(*a1);
    *a1 = v9;
    snprintf(byte_100028AB9, 0x100uLL, "%u.%u.%u.%u", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9);
  }

  return byte_100028AB9;
}

char *sub_100010DA8(in_addr_t *a1, int a2, const char *a3, int a4)
{
  sub_100010CA0(a1, a4);
  v7 = 33;
  if (a4)
  {
    v7 = 37;
  }

  snprintf(byte_100028BB9, 0x50uLL, "%.*s.", v7, byte_100028AB9);
  v8 = index(byte_100028BB9, 0);
  v9 = 0;
  if (a2 && (a4 & 1) == 0)
  {
    v9 = getservbyport(a2, a3);
  }

  v10 = (byte_100028BB9 - v8);
  if (!a2 || v9)
  {
    if (v9)
    {
      s_name = v9->s_name;
    }

    snprintf(v8, (v10 + 80), "%.15s");
  }

  else
  {
    snprintf(v8, (v10 + 80), "%d");
  }

  return byte_100028BB9;
}

void *sub_100010EA8(_DWORD *a1, char a2)
{
  if ((byte_100028D3C & 1) == 0 && (a2 & 1) == 0)
  {
    byte_100028D3C = 1;
    if (!gethostname(&byte_100028C3B, 0x100uLL))
    {
      v9 = index(&byte_100028C3B, 46);
      if (v9)
      {
        strlen(v9 + 1);
        __memmove_chk();
        if (a2)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }
    }

    byte_100028C3B = 0;
  }

  if (a2)
  {
LABEL_17:
    h_name = 0;
    goto LABEL_18;
  }

LABEL_6:
  if (!*a1 && !a1[1] && !a1[2] && !a1[3])
  {
    goto LABEL_17;
  }

  v4 = gethostbyaddr(a1, 0x10u, 30);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = index(v4->h_name, 46);
  if (v6)
  {
    v7 = v6;
    if (!strcmp(v6 + 1, &byte_100028C3B))
    {
      *v7 = 0;
    }
  }

  h_name = v5->h_name;
LABEL_18:
  v10 = *a1;
  if ((*a1 || a1[1] || a1[2] || a1[3]) && !h_name)
  {
    *&v12[8] = 0uLL;
    v13 = 0;
    *v12 = 7708;
    *&v12[8] = *a1;
    if (v10 == 255)
    {
      if ((BYTE1(v10) & 0xF) != 1 && ((v10 & 0xF000) == 0x3000 || (v10 & 0xF00) != 0x200))
      {
LABEL_31:
        if (getnameinfo(v12, 0x1Cu, v14, 0x401u, 0, 0, 2))
        {
          __strlcpy_chk();
        }

        goto LABEL_33;
      }
    }

    else if (v10 != 254 || (BYTE1(v10) & 0xC0) != 0x80)
    {
      goto LABEL_31;
    }

    v13 = bswap32(v10);
    *&v12[10] = 0;
    goto LABEL_31;
  }

LABEL_33:
  __strlcpy_chk();
  return &unk_100028C09;
}

char *sub_100011108(_DWORD *a1, int a2, const char *a3, char a4)
{
  sub_100010EA8(a1, a4);
  snprintf(byte_100028D3D, 0x50uLL, "%.*s.", 39, byte_100028C09);
  v7 = index(byte_100028D3D, 0);
  v8 = 0;
  if (a2 && (a4 & 1) == 0)
  {
    if (!strcmp(a3, "tcp6"))
    {
      v10 = "tcp";
    }

    else
    {
      if (strcmp(a3, "udp6"))
      {
        v9 = a2;
        v10 = a3;
LABEL_9:
        v8 = getservbyport(v9, v10);
        goto LABEL_10;
      }

      v10 = "udp";
    }

    v9 = a2;
    goto LABEL_9;
  }

LABEL_10:
  v11 = (byte_100028D3D - v7);
  if (!a2 || v8)
  {
    if (v8)
    {
      s_name = v8->s_name;
    }

    snprintf(v7, (v11 + 80), "%.15s");
  }

  else
  {
    snprintf(v7, (v11 + 80), "%d");
  }

  return byte_100028D3D;
}

const char *sub_100011240(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100024638[a1];
  }
}

const char *sub_100011264(int a1)
{
  if (a1 > 2621727)
  {
    if (a1 <= 3670271)
    {
      if (a1 == 2621728)
      {
        return "AV";
      }

      if (a1 == 3146000)
      {
        return "RV";
      }
    }

    else
    {
      switch(a1)
      {
        case 3670272:
          return "VI";
        case 4194688:
          return "VO";
        case 4718992:
          return "CTL";
      }
    }
  }

  else if (a1 <= 1048703)
  {
    if (!a1)
    {
      return "BE";
    }

    if (a1 == 524432)
    {
      return "BKS";
    }
  }

  else
  {
    switch(a1)
    {
      case 1048704:
        return "BK";
      case 1572880:
        return "RD";
      case 2097184:
        return "OAM";
    }
  }

  return "UNK";
}

char *sub_1000113A8(int a1)
{
  if ((a1 & 0x80) != 0)
  {
    v1 = 79;
  }

  else
  {
    v1 = 95;
  }

  v2 = 83;
  v3 = 45;
  if ((a1 & 0x4000) == 0)
  {
    v2 = 45;
  }

  v4 = 67;
  if ((a1 & 0x20000000) == 0)
  {
    v4 = 45;
  }

  v31 = v2;
  v30 = v4;
  v5 = 80;
  if ((a1 & 0x10000000) == 0)
  {
    v5 = 45;
  }

  v6 = 76;
  if ((a1 & 0x800) == 0)
  {
    v6 = 45;
  }

  v28 = v6;
  v29 = v5;
  v7 = 82;
  if (a1 >= 0)
  {
    v7 = 45;
  }

  v8 = 68;
  if ((a1 & 0x40000000) == 0)
  {
    v8 = 45;
  }

  v26 = v8;
  v27 = v7;
  v9 = 84;
  if ((a1 & 0x8000000) == 0)
  {
    v9 = 45;
  }

  v10 = 87;
  if ((a1 & 0x4000000) == 0)
  {
    v10 = 45;
  }

  v24 = v10;
  v25 = v9;
  v11 = 78;
  if ((a1 & 0x2000000) == 0)
  {
    v11 = 45;
  }

  v12 = 65;
  if ((a1 & 0x1000000) == 0)
  {
    v12 = 45;
  }

  v22 = v12;
  v23 = v11;
  v13 = 101;
  if ((a1 & 0x2000) == 0)
  {
    v13 = 45;
  }

  v14 = 119;
  if ((a1 & 0x1000) == 0)
  {
    v14 = 45;
  }

  v20 = v14;
  v21 = v13;
  v15 = 113;
  if ((a1 & 0x100) == 0)
  {
    v15 = 45;
  }

  v16 = 108;
  if ((a1 & 0x40) == 0)
  {
    v16 = 45;
  }

  v19 = v15;
  v17 = 99;
  if ((a1 & 0x20) == 0)
  {
    v17 = 45;
  }

  if ((a1 & 0x10) != 0)
  {
    v3 = 116;
  }

  snprintf(byte_100028D8D, 0x20uLL, "%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c ", v3, v17, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v1);
  return byte_100028D8D;
}

char *sub_1000114F4(char *__str, int a2, unsigned int a3, uint64_t a4, double a5)
{
  v6 = a3;
  if (a3 <= a5)
  {
    v8 = 0;
    do
    {
      a5 = a5 / v6;
      v7 = v8 + 1;
    }

    while (a5 >= v6 && v8++ < 3);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(a4 + 8 * v7);
  if (a3 == 1000)
  {
    snprintf(__str, a2, "%.2f%s");
  }

  else
  {
    snprintf(__str, a2, "%g%s");
  }

  return __str;
}

uint64_t sub_100011590(const char **a1, char *a2, size_t *a3)
{
  v28 = 0;
  *v29 = -1;
  if (pipe(v29))
  {
    v6 = __stderrp;
    v7 = *a1;
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v6, "pipe failed while preparing to execute %s: %s", v7, v9);
  }

  v27 = 0;
  posix_spawn_file_actions_init(&v27);
  posix_spawn_file_actions_adddup2(&v27, v29[1], 1);
  posix_spawn_file_actions_addclose(&v27, v29[0]);
  v10 = posix_spawn(&v28, *a1, &v27, 0, a1, 0);
  if (v10)
  {
    v11 = v10;
    v12 = __stderrp;
    v13 = *a1;
    v14 = strerror(v10);
    fprintf(v12, "posix_spawn %s failed: %s", v13, v14);
    close(v29[0]);
    goto LABEL_5;
  }

  v16 = v29[0];
  close(v29[1]);
  v29[1] = -1;
  if (a2 && a3)
  {
    v17 = *a3;
    v18 = read(v16, a2, *a3);
    if (v18 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      do
      {
        a2 += v18;
        v19 += v18;
        v17 -= v18;
        v18 = read(v16, a2, v17);
      }

      while (v18 > 0);
    }

    *a3 = v19;
  }

  v26 = 0;
  if (waitpid(v28, &v26, 0) == -1)
  {
    v11 = *__error();
    v20 = __stderrp;
    v21 = *a1;
    v22 = __error();
    v23 = strerror(*v22);
    fprintf(v20, "waitpid failed for %s: %s", v21, v23);
  }

  else
  {
    if ((v26 & 0x7F) == 0x7F)
    {
      v24 = *a1;
      fprintf(__stderrp, "%s was stopped by signal %d");
    }

    else
    {
      if ((v26 & 0x7F) == 0)
      {
        v11 = BYTE1(v26);
        goto LABEL_5;
      }

      v25 = *a1;
      fprintf(__stderrp, "%s terminated by signal %d");
    }

    v11 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawn_file_actions_destroy(&v27);
  if (v29[1] != -1)
  {
    close(v29[1]);
  }

  return v11;
}

uint64_t sub_1000117EC(_DWORD *a1, char *a2)
{
  v6 = 0;
  v3 = sub_100011868(&v6, a2);
  if (v3)
  {
    v4 = v6;
    if (v6 >= &_mh_execute_header)
    {
      fwrite("The value provided was out of range\n", 0x24uLL, 1uLL, __stderrp);
    }

    *a1 = v4;
  }

  return v3;
}

uint64_t sub_100011868(uint64_t *a1, char *__str)
{
  __endptr = 0;
  v4 = strtoll(__str, &__endptr, 0);
  if (__endptr == __str)
  {
    return 0;
  }

  v5 = v4;
  if (v4)
  {
    if ((v4 - 0x7FFFFFFFFFFFFFFFLL) <= 1 && *__error() == 34)
    {
      fwrite("The value provided was out of range\n", 0x24uLL, 1uLL, __stderrp);
      return 0;
    }
  }

  else if (*__error() == 22)
  {
    return 0;
  }

  *a1 = v5;
  return 1;
}

uint64_t sub_100011928(void *a1, char *a2)
{
  v4 = 0;
  result = sub_100011868(&v4, a2);
  if (result)
  {
    *a1 = v4;
  }

  return result;
}

void *sub_100011968(size_t *a1, _DWORD *a2)
{
  v3 = 0;
  *a2 = sub_100010BCC("kern.skywalk.stats.netns", &v3, a1);
  return v3;
}

void *sub_1000119C4(const void *a1, unsigned int a2, int a3, int *a4)
{
  v19 = 0;
  __s1 = 0;
  *a4 = 0;
  v8 = sub_100010BCC("kern.skywalk.stats.netns", &__s1, &v19);
  *a4 = v8;
  v9 = __s1;
  if (v8)
  {
    if (v8 != 12 || __s1 == 0)
    {
      v11 = 0;
      goto LABEL_18;
    }
  }

  else if (!__s1)
  {
    return 0;
  }

  v12 = v19;
  if (v19)
  {
    *a4 = 0;
    if (v12 < 1)
    {
LABEL_16:
      v11 = 0;
      v15 = 2;
    }

    else
    {
      v13 = &v9[v12];
      v14 = v9;
      while (v14[17] != a3 || v14[16] != a2 || memcmp(v14, a1, a2))
      {
        v14 += 32 * *(v14 + 5) + 32;
        if (v14 >= v13)
        {
          goto LABEL_16;
        }
      }

      v17 = 32 * *(v14 + 5);
      v18 = malloc_type_malloc(v17 + 32, 0x99B73167uLL);
      v11 = v18;
      if (v18)
      {
        memcpy(v18, v14, v17 + 32);
LABEL_18:
        if (!v9)
        {
          return v11;
        }

        goto LABEL_21;
      }

      v15 = 12;
    }

    *a4 = v15;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_21:
  free(v9);
  return v11;
}

void *sub_100011B4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_1000119C4(v5, 0x10u, a3, a4);
}