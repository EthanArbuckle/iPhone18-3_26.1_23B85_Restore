BOOL sub_10000FC38(char *a1)
{
  if (a1)
  {
    HIDWORD(v2[0]) = 0;
    v2[1] = 0;
    return inet_pton(2, a1, v2 + 4) != 0;
  }

  else
  {
    sub_100001108();
    return 0;
  }
}

uint64_t sub_10000FCB8(unsigned int a1)
{
  LODWORD(result) = 0;
  v3 = 0;
  v4 = bswap32(a1);
  while (1)
  {
    v5 = v4 >> v3;
    if (!result)
    {
      result = v5 & 1;
      goto LABEL_6;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    result = 1;
LABEL_6:
    if (++v3 == 32)
    {
      return result;
    }
  }
}

uint64_t sub_10000FCF8(uint64_t a1, int a2)
{
  v7 = 0u;
  v8 = 0u;
  v3 = socket(2, 2, 0);
  if (v3 < 0)
  {
    v4 = *__error();
    sub_100001108();
    if (v3 == -1)
    {
      return v4;
    }
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    if (__strlcpy_chk() > 0xF || ioctl(v3, 0xC0206911uLL, &v7) < 0 || (LOWORD(v8) = v8 | a2 & ~(a2 >> 31), ioctl(v3, 0x80206910uLL, &v7) < 0))
    {
      v4 = *__error();
      v5 = __error();
      strerror(*v5);
      sub_100001108();
    }

    else
    {
      v4 = 0;
    }
  }

  close(v3);
  return v4;
}

uint64_t sub_10000FE60(char *a1)
{
  v7 = 0;
  v2 = sub_10000FCF8(a1, -1);
  v3 = v2;
  if (v2)
  {
    strerror(v2);
    sub_100001108();
  }

  sub_10000E4B4(a1, &v7 + 1, &v7);
  if (HIBYTE(v7))
  {
    v4 = sub_10000FF34(a1);
    v3 = v4;
    if (v4)
    {
      strerror(v4);
      sub_100001108();
    }
  }

  if (v7)
  {
    v5 = sub_1000100DC(a1);
    v3 = v5;
    if (v5)
    {
      strerror(v5);
      sub_100001108();
    }
  }

  return v3;
}

uint64_t sub_10000FF34(_BYTE *a1)
{
  if (!a1)
  {
    sub_100021044();
  }

  if (!*a1)
  {
    sub_100021018();
  }

  v8 = 0u;
  v9 = 0u;
  v1 = socket(2, 2, 0);
  if (v1 < 0)
  {
    v5 = __error();
    strerror(*v5);
    sub_100001108();
    v3 = *__error();
    goto LABEL_13;
  }

  v2 = v1;
  v8 = 0u;
  v9 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    v3 = *__error();
LABEL_6:
    v4 = __error();
    strerror(*v4);
    sub_100001108();
    goto LABEL_11;
  }

  if (ioctl(v2, 0xC0206950uLL, &v8) == -1 && *__error() != 17)
  {
    v3 = *__error();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  if (close(v2))
  {
    v6 = __error();
    v3 = *v6;
    strerror(*v6);
    sub_100001108();
  }

LABEL_13:
  if (!v3)
  {
    sub_100001108();
  }

  return v3;
}

uint64_t sub_1000100DC(_BYTE *a1)
{
  if (!a1)
  {
    sub_10002109C();
  }

  if (!*a1)
  {
    sub_100021070();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v1 = socket(30, 2, 0);
  if (v1 < 0)
  {
    v3 = *__error();
    goto LABEL_13;
  }

  v2 = v1;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    if (ioctl(v2, 0xC080696EuLL, &v5) != -1 || *__error() == 17)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v3 = *__error();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *__error();
  }

  sub_100001108();
LABEL_11:
  if (!close(v2))
  {
    goto LABEL_14;
  }

  v3 = *__error();
LABEL_13:
  sub_100001108();
LABEL_14:
  if (!v3)
  {
    sub_100001108();
  }

  return v3;
}

uint64_t sub_10001028C(char *a1, int a2, int a3, char a4)
{
  v19 = 0;
  v8 = sub_10000F4E4(a1);
  v9 = v8;
  if (v8)
  {
    strerror(v8);
    sub_100001108();
  }

  if ((a4 & 1) == 0)
  {
    v10 = sub_10000FCF8(a1, -1);
    v9 = v10;
    if (v10)
    {
      strerror(v10);
      sub_100001108();
    }
  }

  sub_10000E4B4(a1, &v19 + 1, &v19);
  v11 = HIBYTE(v19);
  if (HIBYTE(v19))
  {
    if ((a4 & 1) == 0)
    {
      v12 = sub_10000FF34(a1);
      v9 = v12;
      if (v12)
      {
        strerror(v12);
        sub_100001108();
      }
    }
  }

  v13 = v19;
  if (a2 && v19)
  {
    v14 = sub_100010458(a1);
    if (v14)
    {
      strerror(v14);
      sub_100001108();
    }

    v15 = sub_1000105B4(a1);
    v9 = v15;
    if (v15)
    {
      strerror(v15);
      sub_100001108();
    }

    if ((a4 & 1) == 0)
    {
      v16 = sub_1000100DC(a1);
      v9 = v16;
      if (v16)
      {
        strerror(v16);
        sub_100001108();
      }
    }
  }

  if (a3)
  {
    sub_1000106E0(a1, 1);
  }

  if (v11 || v13)
  {
    v17 = sub_10000FCF8(a1, 1);
    v9 = v17;
    if (v17)
    {
      strerror(v17);
      sub_100001108();
    }
  }

  return v9;
}

uint64_t sub_100010458(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v5 = __error();
    strerror(*v5);
    sub_100001108();
    return *__error();
  }

  else
  {
    v3 = v2;
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
    v10 = 0u;
    v9 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206984uLL, &__dst) == -1)
    {
      v4 = *__error();
      v6 = __error();
      strerror(*v6);
      sub_100001108();
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_1000105B4(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v5 = __error();
    strerror(*v5);
    sub_100001108();
    return *__error();
  }

  else
  {
    v3 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    strncpy(__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC0806982uLL, __dst) == -1)
    {
      v4 = *__error();
      v6 = __error();
      strerror(*v6);
      sub_100001108();
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_1000106E0(const char *a1, int a2)
{
  v4 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000E61C(v4, a1);
    if (!v6)
    {
      sub_100001108();
      v8 = 0xFFFFFFFFLL;
LABEL_13:
      CFRelease(v5);
      return v8;
    }

    v7 = v6;
    if (SCNetworkServiceGetEnabled(v6) != a2)
    {
      if (!SCNetworkServiceSetEnabled(v7, a2) || !SCPreferencesCommitChanges(v5) || !SCPreferencesApplyChanges(v5))
      {
        sub_100001108();
        v8 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      sub_100001108();
    }

    v8 = 0;
LABEL_12:
    CFRelease(v7);
    goto LABEL_13;
  }

  sub_100001108();
  return 0xFFFFFFFFLL;
}

uint64_t sub_100010824(char *a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    sub_1000106E0(a1, 0);
  }

  if (sub_10000F4E4(a1))
  {
    sub_100001108();
  }

  if ((a3 & 1) == 0 && sub_10001095C())
  {
    sub_100001108();
  }

  if (sub_100010AA8(a1))
  {
    sub_100001108();
  }

  if (sub_100010BE4(a1))
  {
    sub_100001108();
  }

  if ((a3 & 1) == 0 && sub_100010D20(a1))
  {
    sub_100001108();
  }

  v5 = sub_10000FCF8(a1, -1);
  if (v5)
  {
    sub_100001108();
  }

  return v5;
}

uint64_t sub_10001095C()
{
  v4 = 0u;
  v5 = 0u;
  v0 = socket(2, 2, 0);
  if (v0 < 0)
  {
    sub_100001108();
    v2 = *__error();
  }

  else
  {
    v1 = v0;
    v4 = 0u;
    v5 = 0u;
    if (__strlcpy_chk() > 0xF || ioctl(v1, 0xC0206951uLL, &v4) == -1)
    {
      v2 = *__error();
      sub_100001108();
    }

    else
    {
      v2 = 0;
    }

    if (close(v1))
    {
      v2 = *__error();
      sub_100001108();
    }
  }

  if (!v2)
  {
    sub_100001108();
  }

  return v2;
}

uint64_t sub_100010AA8(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    sub_100001108();
    return *__error();
  }

  else
  {
    v3 = v2;
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
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206985uLL, &__dst) == -1)
    {
      v4 = *__error();
      sub_100001108();
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_100010BE4(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    sub_100001108();
    return *__error();
  }

  else
  {
    v3 = v2;
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
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206983uLL, &__dst) == -1)
    {
      v4 = *__error();
      sub_100001108();
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_100010D20(_BYTE *a1)
{
  if (!a1)
  {
    sub_1000210F4();
  }

  if (!*a1)
  {
    sub_1000210C8();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v1 = socket(30, 2, 0);
  if (v1 < 0)
  {
    v3 = *__error();
LABEL_12:
    sub_100001108();
    goto LABEL_13;
  }

  v2 = v1;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  if (__strlcpy_chk() > 0xF || ioctl(v2, 0xC120696FuLL, &v5) == -1)
  {
    v3 = *__error();
    sub_100001108();
  }

  else
  {
    v3 = 0;
  }

  if (close(v2))
  {
    v3 = *__error();
    goto LABEL_12;
  }

LABEL_13:
  if (!v3)
  {
    sub_100001108();
  }

  return v3;
}

uint64_t sub_100010EC0(_BYTE *a1)
{
  if (sub_10001095C())
  {
    sub_100001108();
  }

  v2 = sub_100010D20(a1);
  if (v2)
  {
    sub_100001108();
  }

  return v2;
}

uint64_t sub_100010F44(const char *a1)
{
  v5 = 0;
  if (!a1 || !*a1)
  {
    sub_100021120();
  }

  if (getifaddrs(&v5))
  {
    sub_100001108();
  }

  else
  {
    v4 = &v5;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (!strncmp(a1, v4[1], 0x10uLL))
      {
        v2 = *(v4 + 4);
        goto LABEL_6;
      }
    }
  }

  v2 = 0;
LABEL_6:
  if (v5)
  {
    freeifaddrs(v5);
  }

  return v2;
}

uint64_t sub_100010FD8(_BYTE *a1, int a2)
{
  if (!a1)
  {
    sub_100021178();
  }

  if (!*a1)
  {
    sub_10002114C();
  }

  v9 = 0u;
  v10 = 0u;
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v6 = *__error();
    sub_100001108();
    if (!v6)
    {
      return v6;
    }

    goto LABEL_14;
  }

  v5 = v4;
  v9 = 0u;
  v10 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    LODWORD(v10) = a2;
    if (ioctl(v5, 0x80206934uLL, &v9) == -1)
    {
      v7 = *__error();
      if (sub_10001113C(a1) == a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = *__error();
    sub_100001108();
  }

  close(v5);
  if (v6)
  {
LABEL_14:
    strerror(v6);
    sub_100001108();
  }

  return v6;
}

uint64_t sub_10001113C(_BYTE *a1)
{
  if (!a1)
  {
    sub_1000211D0();
  }

  if (!*a1)
  {
    sub_1000211A4();
  }

  v4 = 0u;
  v5 = 0u;
  v1 = socket(2, 2, 0);
  if (v1 < 0)
  {
    sub_100001108();
    goto LABEL_12;
  }

  v2 = v1;
  v4 = 0u;
  v5 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    sub_100001108();
    close(v2);
LABEL_12:
    sub_100001108();
    return 1500;
  }

  if (ioctl(v2, 0xC0206933uLL, &v4) == -1)
  {
    sub_100001108();
  }

  if (close(v2))
  {
    sub_100001108();
  }

  result = v5;
  if (v5 <= 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100011290(const char *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v8 = socket(2, 2, 0);
  if (v8 < 0)
  {
    sub_100001108();
    return *__error();
  }

  else
  {
    v9 = v8;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      LOWORD(v13) = 528;
      DWORD1(v13) = *a2;
    }

    if (a3)
    {
      LOWORD(v15) = 528;
      DWORD1(v15) = *a3;
    }

    if (a4 || a2 && (a4 = a2, (sub_100010F44(a1) & 0x10) != 0))
    {
      LOWORD(v14) = 528;
      DWORD1(v14) = *a4;
    }

    if (ioctl(v9, 0x8040691AuLL, __dst) == -1)
    {
      v10 = *__error();
      sub_100001108();
    }

    else
    {
      v10 = 0;
    }

    close(v9);
  }

  return v10;
}

uint64_t sub_1000113F4(const char *a1, _OWORD *a2, __int128 *a3, int a4)
{
  v8 = socket(30, 2, 0);
  if (v8 < 0)
  {
    v11 = __error();
    strerror(*v11);
    sub_100001108();
    return *__error();
  }

  else
  {
    v9 = v8;
    v19 = 0;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    memset(&__dst[16], 0, 32);
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      *&__dst[16] = 7708;
      *&__dst[24] = *a2;
    }

    if (a3)
    {
      WORD4(v16) = 7708;
      v17 = *a3;
    }

    DWORD1(v18) = a4;
    v20 = -1;
    if (ioctl(v9, 0x8080691AuLL, __dst) == -1)
    {
      v10 = *__error();
      v12 = __error();
      strerror(*v12);
      sub_100001108();
    }

    else
    {
      v10 = 0;
    }

    close(v9);
  }

  return v10;
}

uint64_t sub_100011568(uint64_t a1)
{
  v11 = 0;
  if (getifaddrs(&v11))
  {
    v2 = *__error();
    sub_100001108();
  }

  else
  {
    v3 = v11;
    if (v11)
    {
      while (1)
      {
        ifa_addr = v3->ifa_addr;
        if (ifa_addr && ifa_addr->sa_family == 18 && ifa_addr->sa_data[4] == 6)
        {
          v5 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
          v6 = *(v5 + 2);
          v7 = *(v5 + 6);
          if (*a1 == v6 && *(a1 + 4) == v7)
          {
            break;
          }
        }

        v3 = v3->ifa_next;
        if (!v3)
        {
          v2 = 0;
          goto LABEL_13;
        }
      }

      v2 = 22;
LABEL_13:
      v9 = v11;
    }

    else
    {
      v9 = 0;
      v2 = 0;
    }

    freeifaddrs(v9);
  }

  return v2;
}

uint64_t sub_100011634(const char *a1, int *a2, int a3)
{
  v12 = 0;
  if (!a2)
  {
    sub_1000211FC();
  }

  if (getifaddrs(&v12))
  {
    sub_100001108();
    return 0;
  }

  else
  {
    v7 = v12;
    if (v12)
    {
      v8 = v12;
      while (strncmp(a1, v8->ifa_name, 0x10uLL) || (v8->ifa_flags & 0x10) == 0)
      {
        v8 = v8->ifa_next;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      if (a3)
      {
        ifa_netmask = v8->ifa_netmask;
        if (ifa_netmask)
        {
          v11 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v11 = -1;
        }

        *a2 = v11;
      }

      v6 = 1;
    }

    else
    {
LABEL_9:
      v6 = 0;
    }

    freeifaddrs(v7);
  }

  return v6;
}

uint64_t sub_100011708(uint64_t a1)
{
  v8 = 0;
  v1 = (a1 + 20);
  if (!*(a1 + 20))
  {
    sub_100021228();
  }

  if (getifaddrs(&v8))
  {
    v3 = *__error();
    sub_100001108();
  }

  else
  {
    v4 = v8;
    if (v8)
    {
      v5 = v8;
      while (1)
      {
        if (!strncmp(v1, v5->ifa_name, 0x10uLL))
        {
          ifa_addr = v5->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 30 && ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
            {
              break;
            }
          }
        }

        v5 = v5->ifa_next;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v3 = 0;
      *(a1 + 296) = *&ifa_addr->sa_data[6];
    }

    else
    {
LABEL_14:
      v3 = 6;
    }

    freeifaddrs(v4);
  }

  return v3;
}

uint64_t sub_1000117FC(const char *a1, int a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100001108();
    return *__error();
  }

  else
  {
    v5 = v4;
    v11 = 0;
    v12 = 0;
    strncpy(__dst, a1, 0x10uLL);
    LODWORD(v11) = a2;
    if (ioctl(v5, 0xC020698DuLL, __dst) == -1)
    {
      v6 = *__error();
      v8 = __error();
      strerror(*v8);
      sub_100001108();
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_100011924(const char *a1, int a2)
{
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    strerror(*v7);
    sub_100001108();
    return *__error();
  }

  else
  {
    v5 = v4;
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
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    LODWORD(v11) = a2;
    if (ioctl(v5, 0xC1206988uLL, &__dst) == -1)
    {
      v6 = *__error();
      v8 = __error();
      strerror(*v8);
      sub_100001108();
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_100011A98(uint64_t a1, int a2)
{
  v3 = socket(30, 2, 0);
  if (v3 < 0)
  {
    sub_100001108();
    return *__error();
  }

  else
  {
    v4 = v3;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    memset(v8, 0, sizeof(v8));
    __strlcpy_chk();
    if (ioctl(v4, 0xC030694CuLL, v8) < 0 || (!a2 ? (v5 = 0) : (v5 = 32), DWORD1(v9) = DWORD1(v9) & 0xFFFFFFDF | v5, v6 = 0, ioctl(v4, 0xC0486957uLL, v8) < 0))
    {
      v6 = *__error();
      sub_100001108();
    }

    close(v4);
  }

  return v6;
}

uint64_t sub_100011BDC(posix_spawnattr_t *a1, posix_spawn_file_actions_t *a2)
{
  v4 = posix_spawn_file_actions_init(a2);
  if (v4)
  {
    v5 = v4;
    strerror(v4);
LABEL_17:
    sub_100001108();
    return v5;
  }

  if (dword_100034BD0)
  {
    v6 = 0;
  }

  else
  {
    v6 = byte_100034BE8 == 0;
  }

  if (v6)
  {
    posix_spawn_file_actions_addopen(a2, 1, "/dev/null", 1, 0);
    posix_spawn_file_actions_addopen(a2, 2, "/dev/null", 1, 0);
  }

  v11 = 0;
  v7 = posix_spawnattr_init(a1);
  if (v7)
  {
    v5 = v7;
    posix_spawn_file_actions_destroy(a2);
    strerror(v5);
    goto LABEL_17;
  }

  v8 = posix_spawnattr_setflags(a1, 12);
  if (v8)
  {
    v5 = v8;
    posix_spawnattr_destroy(a1);
    posix_spawn_file_actions_destroy(a2);
    strerror(v5);
    goto LABEL_17;
  }

  v9 = posix_spawnattr_setsigmask(a1, &v11);
  if (v9)
  {
    v5 = v9;
    posix_spawnattr_destroy(a1);
    posix_spawn_file_actions_destroy(a2);
    strerror(v5);
    goto LABEL_17;
  }

  v11 = -1;
  v5 = posix_spawnattr_setsigdefault(a1, &v11);
  if (v5)
  {
    posix_spawnattr_destroy(a1);
    posix_spawn_file_actions_destroy(a2);
    strerror(v5);
    goto LABEL_17;
  }

  return v5;
}

void sub_100011D88(const __CFArray *a1, const char *a2)
{
  Count = CFArrayGetCount(a1);
  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  if (v5)
  {
    v6 = v5;
    v8.location = 0;
    v8.length = Count;
    if (!CFArrayContainsValue(a1, v8, v5))
    {
      CFArrayAppendValue(a1, v6);
    }

    CFRelease(v6);
  }
}

void sub_100011E1C(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);

    CFRelease(v6);
  }
}

void sub_100011E94(__CFDictionary *a1, const void *a2, __int16 a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t sub_100011EFC(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uid_t a3, gid_t a4, uint64_t a5, int a6)
{
  v6 = 22;
  if (propertyList && a2 && a5)
  {
    Data = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v13 = Data;
      snprintf(__str, 0x400uLL, "%s-", a2);
      if (a6 == 1)
      {
        v14 = open_dprotected_np(__str, 1537, 4, 0, a5);
      }

      else
      {
        v14 = open(__str, 1537, a5);
      }

      v15 = v14;
      if (v14 < 0)
      {
        v6 = *__error();
        CFRelease(v13);
      }

      else
      {
        Length = CFDataGetLength(v13);
        BytePtr = CFDataGetBytePtr(v13);
        if (write(v15, BytePtr, Length) == Length)
        {
          rename(__str, a2, v18);
          if (v19)
          {
            v6 = v19;
            unlink(__str);
          }

          else
          {
            v6 = chown(a2, a3, a4);
          }
        }

        else
        {
          v6 = *__error();
        }

        CFRelease(v13);
        close(v15);
      }
    }

    else
    {
      return 12;
    }
  }

  return v6;
}

size_t sub_1000120A0(const char *a1, int *a2, int a3)
{
  memset(&v17, 0, sizeof(v17));
  v6 = stat(a1, &v17);
  *a2 = v6;
  if (v6 < 0)
  {
    return 0;
  }

  st_size = v17.st_size;
  if (v17.st_size)
  {
    v8 = malloc_type_malloc(v17.st_size, 0xA89F231CuLL);
    if (v8)
    {
      v9 = v8;
      if (a3 == 1)
      {
        v10 = open_dprotected_np(a1, 0, 4, 0);
      }

      else
      {
        v10 = open(a1, 0);
      }

      v12 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        if (read(v10, v9, st_size) == st_size)
        {
          v13 = CFDataCreateWithBytesNoCopy(0, v9, st_size, kCFAllocatorNull);
          if (v13)
          {
            v14 = v13;
            st_size = CFPropertyListCreateWithData(kCFAllocatorDefault, v13, 0, 0, 0);
            if (!st_size)
            {
              *a2 = 12;
            }

            CFRelease(v14);
            goto LABEL_21;
          }

          st_size = 0;
          v15 = 12;
        }

        else
        {
          st_size = 0;
          v15 = *__error();
        }

        *a2 = v15;
LABEL_21:
        free(v9);
        close(v12);
        return st_size;
      }

      *a2 = *__error();
      free(v9);
      return 0;
    }

    st_size = 0;
    v11 = 12;
  }

  else
  {
    v11 = 22;
  }

  *a2 = v11;
  return st_size;
}

uint64_t sub_100012234(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = -32;
  while (((v1 >> v2) & 1) == 0)
  {
    if (__CFADD__(v2++, 1))
    {
      return 32;
    }
  }

  return -v2;
}

char *sub_10001225C(int a1, unsigned int a2)
{
  v12 = a1;
  v2 = bswap32(a2);
  v3 = -32;
  while (((v2 >> v3) & 1) == 0)
  {
    if (__CFADD__(v3++, 1))
    {
      byte_100034D00 = 0;
      v5 = 32;
      goto LABEL_8;
    }
  }

  byte_100034D00 = 0;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = -v3;
LABEL_8:
  v6 = (v5 + 7) >> 3;
  v7 = &v12;
  do
  {
    v9 = *v7++;
    v8 = v9;
    if (v6 == 1)
    {
      v10 = &unk_100025BF7;
    }

    else
    {
      v10 = ".";
    }

    snprintf(__str, 8uLL, "%d%s", v8, v10);
    __strlcat_chk();
    --v6;
  }

  while (v6);
LABEL_13:
  snprintf(__str, 8uLL, "/%d", v5);
  __strlcat_chk();
  return &byte_100034D00;
}

uint64_t sub_1000124AC(const char *a1, BOOL *a2)
{
  v4 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000E61C(v4, a1);
    if (v6)
    {
      v7 = v6;
      *a2 = SCNetworkServiceGetEnabled(v6) != 0;
      sub_100001108();
      CFRelease(v7);
      v8 = 0;
    }

    else
    {
      sub_100001108();
      v8 = 0xFFFFFFFFLL;
    }

    CFRelease(v5);
  }

  else
  {
    sub_100001108();
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t sub_100012594(uint64_t *a1, int a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  *a3 = 0;
  if (a2 == 2)
  {
    v6 = &dword_100034C08;
    v39 = -6;
    v7 = &qword_100034BF8;
  }

  else
  {
    if (a2 != 30)
    {
      sub_100021254();
    }

    v6 = &dword_100034C0C;
    v39 = -7;
    v7 = &qword_100034C00;
  }

  v8 = *a1;
  interface_names = nwi_state_get_interface_names();
  if (interface_names)
  {
    v10 = malloc_type_malloc(8 * interface_names, 0x10040436913F5uLL);
    if (v10)
    {
      v11 = v10;
      v12 = *a1;
      v13 = nwi_state_get_interface_names();
      if (v13 >= 1)
      {
        v35 = v6;
        v14 = 0;
        v38 = 0;
        v36 = 0;
        v37 = v4;
        v15 = v13;
        while (1)
        {
          v16 = v11[v14];
          if (v16)
          {
            if (*v16)
            {
              if (if_nametoindex(v11[v14]))
              {
                v17 = *a1;
                if (nwi_state_get_ifstate())
                {
                  flags = nwi_ifstate_get_flags();
                  if ((flags | v39) == 0xFFFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }
                }
              }
            }
          }

          sub_100001108();
LABEL_15:
          if (++v14 == v15)
          {
            goto LABEL_58;
          }
        }

        if (v4 == 30)
        {
          v34 = v3;
          v40 = 0;
          if (getifaddrs(&v40))
          {
            sub_100001108();
LABEL_29:
            v3 = v34;
LABEL_53:
            v4 = v37;
            goto LABEL_15;
          }

          v19 = v40;
          v33 = v40;
          if (!v40)
          {
            goto LABEL_29;
          }

          while (1)
          {
            ifa_addr = v19->ifa_addr;
            if (ifa_addr)
            {
              if (ifa_addr->sa_family == 30 && !strncmp(v16, v19->ifa_name, 0x10uLL) && (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80))
              {
                break;
              }
            }

            v19 = v19->ifa_next;
            if (!v19)
            {
              free(v33);
              goto LABEL_29;
            }
          }

          free(v33);
          v3 = v34;
        }

        sub_100001108();
        v21 = v7;
        while (1)
        {
          v21 = *v21;
          if (!v21)
          {
            break;
          }

          if (!strncmp(v21 + 8, v16, 0x10uLL))
          {
            goto LABEL_42;
          }
        }

        v22 = malloc_type_malloc(0x30uLL, 0x102004051B57111uLL);
        if (!v22)
        {
          v32 = __error();
          strerror(*v32);
          sub_100001108();
          free(v11);
          goto LABEL_56;
        }

        v21 = v22;
        *(v22 + 1) = 0u;
        *(v22 + 2) = 0u;
        *v22 = 0u;
        snprintf(v22 + 8, 0x10uLL, "%s", v16);
        *v21 = *v7;
        *v7 = v21;
        if (v37 == 2)
        {
          v23 = __CFADD__(dword_100034CE8++, 1);
          if (v23)
          {
            sub_1000212AC();
          }
        }

        else
        {
          v23 = __CFADD__(dword_100034CEC++, 1);
          if (v23)
          {
            sub_100021280();
          }
        }

        HIDWORD(v38) = 1;
LABEL_42:
        if (flags != v21[4])
        {
          v21[4] = flags;
        }

        v24 = sub_10001113C(v21 + 8);
        v25 = HIDWORD(v38);
        if (v24 != *(v21 + 6))
        {
          *(v21 + 6) = v24;
          v25 = 1;
        }

        if (v38 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v38;
        }

        if (v38)
        {
          v27 = v26;
        }

        else
        {
          v27 = v24;
        }

        *(v21 + 41) = 1;
        LODWORD(v38) = v27;
        HIDWORD(v38) = *(v21 + 40) ^ 1 | v25;
        *(v21 + 7) = v36;
        ++*v35;
        ++v36;
        goto LABEL_53;
      }

      v38 = 0;
LABEL_58:
      *v3 = v38;
      free(v11);
      v28 = BYTE4(v38);
    }

    else
    {
      v29 = __error();
      strerror(*v29);
      sub_100001108();
LABEL_56:
      v30 = *a1;
      nwi_state_release();
      v28 = 0;
      *a1 = 0;
    }
  }

  else
  {
    sub_100001108();
    v28 = 0;
  }

  return v28 & 1;
}

ssize_t sub_100012A04(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_get_data(*(v1 + 768));
  sub_100001108();
  bzero(v11, 0x400uLL);
  handle = dispatch_source_get_handle(*(v1 + 768));
  result = read(handle, v11, 0x400uLL);
  if (result == -1)
  {
LABEL_15:
    result = *__error();
    if (result && result != 35)
    {
      strerror(result);
      return sub_100001108();
    }
  }

  else
  {
    v4 = result;
LABEL_3:
    if (v4 >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = &v11[v5];
        v5 += *&v11[v5];
        if (v5 > v4)
        {
          sub_100001108();
LABEL_14:
          bzero(v11, 0x400uLL);
          v7 = dispatch_source_get_handle(*(v1 + 768));
          result = read(v7, v11, 0x400uLL);
          v4 = result;
          if (result != -1)
          {
            goto LABEL_3;
          }

          goto LABEL_15;
        }

        if (v6[1] == 1 && v6[2] == 1 && v6[3] == 7 && v6[5] == 1 && if_nametoindex((v1 + 20)) == v6[28])
        {
          break;
        }

        if (v5 >= v4)
        {
          goto LABEL_14;
        }
      }

      sub_100001108();
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      result = sub_100012C18(v1, v9);
      if (result)
      {
        return sub_100001108();
      }

      for (i = *(v1 + 784); i; i = *(i + 528))
      {
        result = sub_100004C7C(v1, v9);
      }
    }
  }

  return result;
}

uint64_t sub_100012C18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 464);
  v43[9] = *(a1 + 448);
  v43[10] = v4;
  v44 = *(a1 + 480);
  v5 = *(a1 + 400);
  v43[5] = *(a1 + 384);
  v43[6] = v5;
  v6 = *(a1 + 432);
  v43[7] = *(a1 + 416);
  v43[8] = v6;
  v7 = *(a1 + 336);
  v43[1] = *(a1 + 320);
  v43[2] = v7;
  v8 = *(a1 + 368);
  v43[3] = *(a1 + 352);
  v43[4] = v8;
  v9 = *(a1 + 304);
  v42 = *(a1 + 288);
  v43[0] = v9;
  v10 = (v9 | DWORD1(v9) | DWORD2(v9) | HIDWORD(v9)) == 0;
  *v45 = xmmword_1000234F0;
  __errnum = 0;
  v41 = 0;
  v11 = sub_100013188("ICMPV6CTL_ND6_DRLIST", v45, &v41, &__errnum);
  if (!v11)
  {
    v13 = __errnum;
    if (__errnum)
    {
      goto LABEL_3;
    }

    sub_100001108();
    return 0;
  }

  v12 = v41;
  v13 = __errnum;
  if (__errnum)
  {
LABEL_3:
    if (v13 != 2)
    {
      strerror(v13);
      sub_100001108();
    }

    v14 = 0;
    goto LABEL_6;
  }

  *v45 = xmmword_100023500;
  v41 = 0;
  __errnum = 0;
  v14 = sub_100013188("ICMPV6CTL_ND6_PRLIST", v45, &v41, &__errnum);
  if (!v14)
  {
    v13 = __errnum;
    if (!__errnum)
    {
      sub_100001108();
      v14 = 0;
      v13 = 2;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v39 = v41;
  v13 = __errnum;
  if (__errnum)
  {
LABEL_16:
    if (v13 != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v16 = (a1 + 20);
  v17 = if_nametoindex(v16);
  if (v17)
  {
    if (v12 < 1)
    {
      goto LABEL_64;
    }

    v18 = v17;
    v34 = a2;
    v35 = v11;
    v36 = 0;
    v37 = 0;
    v38 = v12 + v11;
    v19 = v11;
    while (v39 < 1 || v18 != *(v19 + 20))
    {
LABEL_61:
      v19 += 48;
      if (v19 >= v38)
      {
        a2 = v34;
        v11 = v35;
        v29 = v36;
        v19 = v37;
        if (v36 && v37)
        {
LABEL_69:
          memmove((a2 + 8), v29, 0x48uLL);
          v31 = *(v19 + 1);
          v30 = *(v19 + 2);
          *(a2 + 80) = *v19;
          *(a2 + 96) = v31;
          *(a2 + 112) = v30;
          *a2 = 1;
          inet_ntop(30, (a2 + 16), v45, 0x2Eu);
          v33 = *(a2 + 37);
          sub_100001108();
          v13 = 0;
        }

        else
        {
LABEL_64:
          sub_100001108();
          v13 = 2;
        }

LABEL_70:
        if (*a2 == 1)
        {
          v32 = socket(30, 2, 0);
          if (v32 < 0)
          {
            v13 = *__error();
            sub_100001108();
            if (v32 != -1)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (__strlcpy_chk() >= 0x10 || ioctl(v32, 0xC030694CuLL, a2 + 128) < 0)
            {
              v13 = *__error();
              sub_100001108();
            }

            else
            {
              v13 = 0;
            }

LABEL_79:
            close(v32);
          }

          if (v13)
          {
LABEL_17:
            strerror(v13);
            goto LABEL_18;
          }
        }

        goto LABEL_6;
      }
    }

    v20 = v14;
    while (1)
    {
      v21 = *(v20 + 33);
      if (v20[29] != 64)
      {
        goto LABEL_60;
      }

      if (v18 != *(v20 + 32) || v21 == 0)
      {
        goto LABEL_60;
      }

      v41 = 0;
      if (getifaddrs(&v41))
      {
        v23 = *__error();
        sub_100001108();
      }

      else
      {
        v27 = v41;
        if (!v41)
        {
          goto LABEL_60;
        }

        while (1)
        {
          if (!strncmp(v16, v27->ifa_name, 0x10uLL))
          {
            ifa_addr = v27->ifa_addr;
            if (ifa_addr)
            {
              if (ifa_addr->sa_family == 30 && (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80) && *&ifa_addr->sa_data[6] == *(v20 + 1))
              {
                break;
              }
            }
          }

          v27 = v27->ifa_next;
          if (!v27)
          {
            v23 = -1;
            goto LABEL_56;
          }
        }

        v23 = 0;
LABEL_56:
        if (v41)
        {
          free(v41);
        }
      }

      if (!v23)
      {
        v24 = *(v20 + 33);
        if (*(v20 + 33))
        {
          v25 = v20 + 80;
          while (*v25 != *(v19 + 1) || v25[1] != *(v19 + 2))
          {
            v25 = (v25 + 28);
            if (!--v24)
            {
              goto LABEL_60;
            }
          }

          if (v10 || (v36 = v20, v37 = v19, sub_10000E754(v43, v20 + 8, v20[29])))
          {
            v29 = v20;
            a2 = v34;
            v11 = v35;
            goto LABEL_69;
          }
        }
      }

LABEL_60:
      v20 += 28 * v21 + 72;
      if (v20 >= v39 + v14)
      {
        goto LABEL_61;
      }
    }
  }

  v13 = *__error();
  sub_100001108();
  if ((v13 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_70;
  }

LABEL_18:
  sub_100001108();
LABEL_6:
  if (v11)
  {
    free(v11);
  }

  if (v14)
  {
    free(v14);
  }

  if (v13 == 2)
  {
    return 0;
  }

  return v13;
}

void *sub_100013188(int a1, int *a2, size_t *a3, int *a4)
{
  size = 0;
  v7 = 1;
  while (1)
  {
    if (v7 != 1)
    {
      sub_100001108();
    }

    if (sysctl(a2, 4u, 0, &size, 0, 0) < 0)
    {
      v9 = *__error();
LABEL_12:
      strerror(v9);
      sub_100001108();
LABEL_14:
      v8 = 0;
      goto LABEL_17;
    }

    if (!size)
    {
      sub_100001108();
      v9 = 0;
      goto LABEL_14;
    }

    v8 = malloc_type_malloc(size, 0x3EA7C6E2uLL);
    if (!v8)
    {
      sub_100001108();
      v9 = 12;
      goto LABEL_17;
    }

    if (!sysctl(a2, 4u, v8, &size, 0, 0))
    {
      break;
    }

    free(v8);
    v9 = *__error();
    if (*__error() != 12)
    {
      goto LABEL_12;
    }

    if (++v7 == 11)
    {
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_17:
  v10 = size;
  if (!v8)
  {
    v10 = 0;
  }

  *a3 = v10;
  *a4 = v9;
  return v8;
}

void sub_100013310(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = (a3 + 20);
  v6 = "mis_dynamic_store_changed";
  sub_100001108();
  if (*(a3 + 784))
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = (a3 + 740);
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v11 = kSCEntNetIPv4;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
        if (CFStringHasSuffix(ValueAtIndex, v11))
        {
          if (!ValueAtIndex || (v13 = *(a3 + 760)) == 0)
          {
            sub_100001108();
            goto LABEL_76;
          }

          v14 = SCDynamicStoreCopyValue(v13, ValueAtIndex);
          if (v14)
          {
            v15 = v14;
            TypeID = CFDictionaryGetTypeID();
            if (CFGetTypeID(v15) != TypeID)
            {
              goto LABEL_75;
            }

            Value = CFDictionaryGetValue(v15, kSCPropNetIPv4Addresses);
            if (!Value)
            {
              goto LABEL_43;
            }

            v18 = Value;
            v19 = CFArrayGetTypeID();
            if (CFGetTypeID(v18) != v19)
            {
              goto LABEL_75;
            }

            if (CFArrayGetCount(v18))
            {
              v20 = 1;
              if ((sub_100011634(v5, &v59, 1) & 1) == 0)
              {
                v21 = CFDictionaryGetValue(v15, kSCPropNetIPv4SubnetMasks);
                if (!v21 || (v22 = v21, v56 = v10, v23 = a2, v24 = v8, v25 = v6, v26 = CFArrayGetTypeID(), CFGetTypeID(v22) != v26) || !CFArrayGetCount(v22))
                {
LABEL_75:
                  sub_100001108();
                  CFRelease(v15);
                  goto LABEL_76;
                }

                v27 = CFArrayGetValueAtIndex(v22, 0);
                CFStringGetCString(v27, buffer, 16, 0x600u);
                if (inet_pton(2, buffer, &v59) == 1)
                {
                  v20 = 1;
                }

                else
                {
                  sub_100001108();
                  v20 = 0;
                }

                v6 = v25;
                v8 = v24;
                a2 = v23;
                v10 = v56;
              }

              v48 = CFArrayGetValueAtIndex(v18, 0);
              CFStringGetCString(v48, buffer, 16, 0x600u);
              if (inet_pton(2, buffer, &v60) != 1)
              {
                goto LABEL_75;
              }

              CFRelease(v15);
              v11 = kSCEntNetIPv4;
              if ((v20 & 1) == 0)
              {
                goto LABEL_76;
              }
            }

            else
            {
LABEL_43:
              v59 = 0;
              v60 = 0;
              CFRelease(v15);
              v11 = kSCEntNetIPv4;
            }
          }

          else
          {
            v59 = 0;
            v60 = 0;
          }

          v49 = *v10;
          if (v49 != v60 || (v50 = *(a3 + 744), v50 != v59))
          {
            inet_ntop(2, v10, buffer, 0x10u);
            inet_ntop(2, &v60, v75, 0x10u);
            *v10;
            sub_100001108();
            LODWORD(v50) = v59;
            LODWORD(v49) = v60;
          }

          if (sub_100004364(a3, v49, v50))
          {
            goto LABEL_76;
          }
        }

        else if (CFStringHasSuffix(ValueAtIndex, kSCEntNetIPv6))
        {
          v58 = in6addr_any;
          if (!ValueAtIndex || (v28 = *(a3 + 760)) == 0)
          {
            sub_100001108();
            goto LABEL_62;
          }

          *v75 = 0;
          v76 = 0;
          v77 = 0;
          v29 = SCDynamicStoreCopyValue(v28, ValueAtIndex);
          if (!v29 || (v30 = CFDictionaryGetTypeID(), v31 = CFGetTypeID(v29) == v30, v11 = kSCEntNetIPv4, !v31))
          {
            sub_100001108();
            goto LABEL_46;
          }

          v32 = CFDictionaryGetValue(v29, kSCPropNetIPv6Addresses);
          if (!v32)
          {
            goto LABEL_60;
          }

          v33 = v32;
          v34 = CFArrayGetTypeID();
          if (CFGetTypeID(v33) != v34)
          {
            goto LABEL_59;
          }

          v35 = CFArrayGetCount(v33);
          v11 = kSCEntNetIPv4;
          if (!v35)
          {
            goto LABEL_60;
          }

          v55 = v35;
          v36 = CFDictionaryGetValue(v29, kSCPropNetIPv6Flags);
          if (!v36)
          {
            goto LABEL_60;
          }

          v37 = v36;
          theArraya = CFArrayGetTypeID();
          if (CFGetTypeID(v37) == theArraya)
          {
            v52 = v37;
            v38 = CFArrayGetCount(v37);
            v11 = kSCEntNetIPv4;
            if (v38 == v55)
            {
              theArray = v33;
              if (v55 >= 1)
              {
                v39 = 0;
                v57 = v10;
                while (1)
                {
                  v40 = CFArrayGetValueAtIndex(theArray, v39);
                  if (v40)
                  {
                    v41 = v40;
                    v42 = v5;
                    v43 = a2;
                    v44 = v8;
                    v45 = v6;
                    v46 = CFStringGetTypeID();
                    v31 = CFGetTypeID(v41) == v46;
                    v6 = v45;
                    v8 = v44;
                    a2 = v43;
                    v5 = v42;
                    v10 = v57;
                    if (v31)
                    {
                      CFStringGetCString(v41, buffer, 46, 0x600u);
                      if (inet_pton(30, buffer, &v76) == 1 && (v76.__u6_addr8[0] != 254 || (v76.__u6_addr8[1] & 0xC0) != 0x80))
                      {
                        valuePtr = 0;
                        v47 = CFArrayGetValueAtIndex(v52, v39);
                        if (CFNumberGetValue(v47, kCFNumberSInt32Type, &valuePtr))
                        {
                          if ((valuePtr & 0x109F) == 0)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  if (v55 == ++v39)
                  {
                    goto LABEL_41;
                  }
                }

                v58 = v76;
                sub_100001108();
                CFRelease(v29);
                inet_ntop(30, (a3 + 708), buffer, 0x2Eu);
                inet_ntop(30, &v58, v75, 0x2Eu);
                sub_100001108();
                sub_100004A70(a3, &v58);
                if (!*(a3 + 768) && sub_10000E0F8(a3))
                {
                  sub_100001108();
                }

                v11 = kSCEntNetIPv4;
                goto LABEL_56;
              }

LABEL_41:
              sub_100001108();
              v11 = kSCEntNetIPv4;
LABEL_46:
              if (!v29)
              {
LABEL_62:
                v51 = *(a3 + 768);
                if (v51)
                {
                  if (*(a3 + 288) != 1)
                  {
                    goto LABEL_65;
                  }

                  v74 = 0;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  *buffer = 0u;
                  v63 = 0u;
                  sub_100004C7C(a3, buffer);
                  v51 = *(a3 + 768);
                  if (v51)
                  {
LABEL_65:
                    dispatch_source_cancel(v51);
                    dispatch_release(*(a3 + 768));
                    *(a3 + 768) = 0;
                  }
                }

                goto LABEL_56;
              }

LABEL_61:
              CFRelease(v29);
              goto LABEL_62;
            }
          }

          else
          {
LABEL_59:
            v11 = kSCEntNetIPv4;
          }

LABEL_60:
          sub_100001108();
          goto LABEL_61;
        }

LABEL_56:
        ++v9;
      }

      while (v9 != v8);
    }
  }

  else
  {
LABEL_76:
    sub_100001108();
  }
}

void sub_100013AA4(void *a1, const char *a2, int a3)
{
  v5 = a3;
  inet_ntop(2, &v5, string, 0x10u);
  xpc_dictionary_set_string(a1, a2, string);
}

uint64_t sub_100013B38(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  memset(v7, 0, sizeof(v7));
  result = sub_100002478(a1);
  if (!result)
  {
    result = sub_10000257C(v7);
    if (!result)
    {
      *a2 = BYTE1(v7[0]);
      v6 = BYTE2(v7[0]);
      *a3 = BYTE2(v7[0]);
      if (*a2 == 1 && v6)
      {
        sub_100016070(DWORD1(v7[0]));
        sub_100001108();
        return 0;
      }

      else
      {
        return 45;
      }
    }
  }

  return result;
}

uint64_t sub_100013BF8(uint64_t a1)
{
  sub_100001108();
  v2 = dword_100034D24++;
  if (v2 > 0)
  {
    return 0;
  }

  if (*(a1 + 8) == 100)
  {
    v3 = sub_100013CB4(a1, 1);
    if (!v3)
    {
      return v3;
    }
  }

  else
  {
    sub_100001108();
    v3 = 22;
  }

  sub_100013D8C(a1);
  return v3;
}

uint64_t sub_100013CB4(uint64_t a1, int a2)
{
  if (dword_100034D24)
  {
    if (*(a1 + 794) == 1)
    {
      sub_100001108();
      return 37;
    }

    else
    {
      if (a2)
      {
        sub_10001EFFC(1, sub_1000140B0, a1);
        sub_10001F0FC();
      }

      *(a1 + 793) = 1;
      sub_100001108();
      return 0;
    }
  }

  else
  {
    sub_100001108();
    return 19;
  }
}

uint64_t sub_100013D8C(uint64_t a1)
{
  if (*(a1 + 8) != 100)
  {
    sub_1000212D8();
  }

  if (!dword_100034D24)
  {
    sub_100021304();
  }

  result = sub_100001108();
  v3 = __OFSUB__(dword_100034D24--, 1);
  if ((dword_100034D24 < 0) ^ v3 | (dword_100034D24 == 0))
  {
    sub_10000E3A8(a1);
    *(a1 + 800) = 0;
    sub_10001EFFC(0, 0, 0);
    result = sub_10001EFBC(0);
    *(a1 + 793) = 0;
    if (*(a1 + 768) || *(a1 + 760))
    {
      return sub_100001108();
    }
  }

  return result;
}

uint64_t sub_100013E58(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 8) != 100)
  {
    v8 = *(a1 + 24);
    sub_100021350();
  }

  if (!dword_100034D24)
  {
    sub_100001108();
    return 19;
  }

  v3 = *(a1 + 8);
  *(v1 + 792) = (v3 & 0x80) != 0;
  if ((v3 & 0x80) == 0)
  {
    if (*(v1 + 801) & 1) != 0 || (*(v1 + 800))
    {
      v9 = *(v1 + 801);
      v10 = *(v1 + 800);
      sub_100001108();
      return 0;
    }

    sub_100001108();
    v7 = sub_10001EFBC(1);
    if (!v7)
    {
      *(v1 + 800) = 1;
      sub_100001108();
      return 36;
    }

    v4 = v7;
    sub_100001108();
    goto LABEL_17;
  }

  memset(v11, 0, sizeof(v11));
  sub_100001108();
  v4 = sub_10000257C(v11);
  if (v4)
  {
    sub_100001108();
    sub_1000158A0(0x3FDu);
  }

  if ((v11[0] & 1) == 0)
  {
    v5 = 1020;
LABEL_15:
    sub_1000158A0(v5);
    goto LABEL_16;
  }

  if ((BYTE1(v11[0]) & 1) == 0)
  {
    v5 = 1021;
    goto LABEL_15;
  }

  sub_100015AFC();
LABEL_16:
  *(v1 + 792) = 0;
LABEL_17:
  if (v4 == 36)
  {
    return 36;
  }

  sub_1000057E8(a1, v4);
  if (v4 && v4 != 62)
  {
    sub_100001108();
  }

  return v4;
}

uint64_t sub_100014080(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 8) != 100)
  {
    sub_1000213A0();
  }

  return sub_100013D8C(v2);
}

uint64_t sub_1000140B0(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if ((a1 - 1) <= 4)
    {
      v9 = off_100030FD0[a1 - 1];
    }

    return sub_100001108();
  }

  v6 = a1 - 1;
  if (!a2 && v6 <= 1)
  {
    sub_100001108();
  }

  if (!dword_100034D24 || (*(a3 + 793) & 1) == 0)
  {
    if (v6 <= 4)
    {
      v8 = off_100030FD0[v6];
    }

    *(a3 + 793);
    return sub_100001108();
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      *(a2 + 2);
      v16 = *(a2 + 8) - 1;
      if (v16 <= 3)
      {
        v17 = off_100030FF8[v16];
      }

      *(a3 + 800);
      result = sub_100001108();
      if ((*(a3 + 800) & 1) != 0 || *(a2 + 16) && (result = strncmp((a3 + 20), (a2 + 16), 0x100uLL), result))
      {
        if (*(a2 + 2) == 1 && *(a2 + 8) == 3)
        {
          goto LABEL_41;
        }
      }

      if (*(a3 + 794) != 1 || *(a2 + 2) == 1 && *(a2 + 8) == 3)
      {
LABEL_45:
        v12 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      if (a1 != 2)
      {
LABEL_27:
        result = sub_100001108();
        v12 = 6;
        goto LABEL_46;
      }

      v10 = *a2 - 1;
      if (v10 <= 3)
      {
        v11 = off_100030FF8[v10];
      }

      *(a3 + 800);
      result = sub_100001108();
      if (*a2 == 3)
      {
        if ((*(a3 + 800) & 1) != 0 || *(a2 + 8) && (result = strncmp((a3 + 20), (a2 + 8), 0x100uLL), result))
        {
LABEL_41:
          sub_100001108();
          result = sub_1000144B0(a3);
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (*(a3 + 794) != 1)
      {
        goto LABEL_45;
      }
    }

    sub_100001108();
    result = sub_10001472C(a3);
    goto LABEL_44;
  }

  switch(a1)
  {
    case 3:
      sub_100001108();
      v12 = 45;
      v13 = a3;
      v14 = "event_connection_error";
      v15 = 45;
      break;
    case 4:
      sub_100001108();
      v12 = 36;
      v13 = a3;
      v14 = "event_xpc_connection_invalidated";
      v15 = 36;
      break;
    case 5:
      sub_100001108();
      result = sub_100013CB4(a3, 0);
LABEL_44:
      v12 = result;
      goto LABEL_46;
    default:
      goto LABEL_27;
  }

  result = sub_10001478C(v13, v14, v15);
LABEL_46:
  *(a3 + 796) = v12;
  return result;
}

uint64_t sub_1000144B0(uint64_t a1)
{
  *__s2 = 0;
  v16 = 0;
  if (sub_10001F054(__s2))
  {
    sub_100001108();
    v2 = 19;
    sub_100001108();
  }

  else
  {
    v3 = strncmp((a1 + 20), __s2, 0x100uLL);
    if (v3)
    {
      snprintf(__str, 0x10uLL, "%s", (a1 + 20));
      sub_10000E3A8(a1);
      v4 = qword_100034C38;
      if (qword_100034C38)
      {
        do
        {
          v5 = v4[3];
          if (v5 && !strncmp((a1 + 20), (v5 + 20), 0x10uLL))
          {
            sub_1000207C8(v4);
          }

          v4 = *v4;
        }

        while (v4);
      }

      sub_100001108();
    }

    snprintf((a1 + 20), 0x100uLL, "%s", __s2);
    v6 = sub_10001113C((a1 + 20));
    *(a1 + 12) = v6;
    *(a1 + 16) = v6 - 40;
    if (v3)
    {
      v7 = qword_100034C38;
      if (qword_100034C38)
      {
        v8 = 0;
        do
        {
          v9 = v7[3];
          if (v9 && !strncmp((a1 + 20), (v9 + 20), 0x10uLL))
          {
            sub_100020464();
            ++v8;
          }

          v7 = *v7;
        }

        while (v7);
        if (v8)
        {
          sub_10001BE98();
        }
      }

      sub_100001108();
      v10 = *(a1 + 12);
    }

    sub_100001108();
    v11 = sub_10000DDE4(a1);
    if (v11)
    {
      v12 = v11;
      sub_100001108();
      v2 = v12;
    }

    else
    {
      sub_100001108();
      v2 = 0;
    }
  }

  *(a1 + 800) = 0;
  *(a1 + 801) = v2 == 0;
  *(a1 + 794) = v2 == 0;
  sub_100015B3C(v2);
  for (i = *(a1 + 784); i; i = *(i + 528))
  {
    sub_1000057E8(i, v2);
  }

  return v2;
}

uint64_t sub_10001472C(_BYTE *a1)
{
  a1[801] = 0;
  a1[794] = 0;
  sub_10000E3A8(a1);
  if ((a1[795] & 1) == 0)
  {
    sub_10000E7F4(0x1388u);
    a1[795] = 1;
  }

  sub_100015B3C(36);
  a1[800] = 1;
  if (sub_10001587C() == 45)
  {
    return 45;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001478C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100001108();
  sub_10000E3A8(a1);
  *(a1 + 800) = 0;
  *(a1 + 793) = 0;
  sub_100015B3C(a3);

  return sub_1000158A0(0x3FCu);
}

uint64_t sub_100014804()
{
  byte_100034D28 = 1;
  v0 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", 0, 0);
  qword_100034D30 = v0;
  if (!v0 || !SCDynamicStoreSetDispatchQueue(v0, qword_100034BD8) || !SCDynamicStoreSetDisconnectCallBack())
  {
    v21 = SCError();
    SCErrorString(v21);
    sub_100001108();
    return 12;
  }

  v1 = CFCopyHomeDirectoryURLForUser();
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v70 = 0;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    v22 = 12;
    goto LABEL_110;
  }

  v4 = v3;
  CFStringGetCString(v3, byte_100034D38, 1024, 0x600u);
  v5 = getpwnam("mobile");
  if (!v5)
  {
    v22 = 2;
    goto LABEL_109;
  }

  dword_100035138 = v5->pw_gid;
  if (qword_100035140)
  {
    free(qword_100035140);
  }

  v6 = strlen(byte_100034D38);
  v7 = malloc_type_malloc(v6 + 59, 0x4D411E74uLL);
  qword_100035140 = v7;
  if (!v7)
  {
LABEL_98:
    v22 = 12;
    goto LABEL_109;
  }

  snprintf(v7, v6 + 59, "%s%s", byte_100034D38, "/Library/Preferences/com.apple.MobileInternetSharing.plist");
  *&dword_10003514C = 0u;
  *&dword_10003515C = 0u;
  unk_10003516C = 0u;
  unk_10003517C = 0;
  dword_100035148[0] = 3;
  qword_100035150 = vdup_n_s32(0x3FCu);
  dword_10003515C = 0;
  if (!qword_100035140)
  {
    sub_1000213F8();
  }

  v71 = 0;
  v8 = sub_1000120A0(qword_100035140, &v71, 1);
  if (!v8)
  {
    sub_100001108();
    if (!v71)
    {
      sub_1000213CC();
    }

    v25 = 0;
    v26 = dword_100035148[0];
    goto LABEL_36;
  }

  v9 = v8;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v9) != TypeID)
  {
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(v9, @"Version");
  if (!Value)
  {
    goto LABEL_29;
  }

  v12 = Value;
  v13 = CFNumberGetTypeID();
  if (CFGetTypeID(v12) != v13)
  {
    goto LABEL_29;
  }

  v14 = CFDictionaryGetValue(v9, @"State");
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = CFNumberGetTypeID();
  if (CFGetTypeID(v15) != v16 || (v17 = CFDictionaryGetValue(v9, @"UState")) == 0 || (v18 = v17, v19 = v4, v20 = CFNumberGetTypeID(), v50 = CFGetTypeID(v18) == v20, v4 = v19, !v50))
  {
LABEL_29:
    sub_100001108();
    v24 = 2;
LABEL_30:
    v71 = v24;
    goto LABEL_31;
  }

  if (!CFNumberGetValue(v12, kCFNumberIntType, dword_100035148) || !CFNumberGetValue(v15, kCFNumberIntType, &qword_100035150) || !CFNumberGetValue(v18, kCFNumberIntType, &dword_10003514C))
  {
    sub_100001108();
    v24 = 22;
    goto LABEL_30;
  }

  v71 = sub_1000174BC(v9);
LABEL_31:
  CFRelease(v9);
  v25 = v71 == 0;
  v26 = dword_100035148[0];
  if (!v71 && dword_100035148[0] == 3)
  {
    v27 = qword_100035150;
    v25 = 1;
    goto LABEL_38;
  }

LABEL_36:
  v27 = 1020;
  if (v26 != 3)
  {
    LODWORD(qword_100035150) = 1020;
  }

LABEL_38:
  if (dword_10003514C != 1023)
  {
    dword_10003514C = 1022;
  }

  v28 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", @"com.apple.radios.plist");
  qword_100035188 = v28;
  if (v28)
  {
    if (SCPreferencesSetCallback(v28, sub_10001518C, 0) && SCPreferencesSetDispatchQueue(qword_100035188, qword_100034BD8))
    {
      sub_1000151E8();
    }

    else
    {
      v29 = SCError();
      SCErrorString(v29);
      sub_100001108();
      CFRelease(qword_100035188);
      qword_100035188 = 0;
    }
  }

  else
  {
    v30 = SCError();
    SCErrorString(v30);
    sub_100001108();
  }

  sub_100001F40(0, 0, v27, 0, 0, &v70, 0);
  if (!v70)
  {
    if (qword_100035150 != v27 || !v25)
    {
      sub_1000152B0();
    }

    sub_10001536C(qword_100034D30);
  }

  v72 = 0;
  Mutable = qword_1000351A0;
  if (!qword_1000351A0)
  {
    v33 = sub_1000120A0("/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", &v72, 0);
    if (v33)
    {
      v34 = v33;
      qword_1000351A0 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v33);
      CFRelease(v34);
      Mutable = qword_1000351A0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_1000351A0 = Mutable;
    }

    if (!Mutable)
    {
      goto LABEL_97;
    }
  }

  v35 = &byte_100034D38[712];
  v36 = qword_100035190;
  if (!qword_100035190)
  {
    v37 = CFDictionaryGetValue(Mutable, @"MAC_ARRAY");
    v36 = v37 ? CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v37) : CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    qword_100035190 = v36;
    if (!v36)
    {
LABEL_97:
      sub_100001108();
      goto LABEL_98;
    }
  }

  if (!qword_100035198)
  {
    v38 = CFDictionaryGetValue(qword_1000351A0, @"MAC_IOUE_ARRAY");
    if (v38)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v38);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    qword_100035198 = MutableCopy;
    if (MutableCopy)
    {
      v36 = qword_100035190;
      goto LABEL_70;
    }

    goto LABEL_97;
  }

LABEL_70:
  v68 = v4;
  v69 = v2;
  Count = CFArrayGetCount(v36);
  if (Count >= 1)
  {
    v41 = Count;
    v42 = 0;
    v43 = 0;
    while (1)
    {
      v44 = v35;
      ValueAtIndex = CFArrayGetValueAtIndex(v35[50], v42);
      if (ValueAtIndex)
      {
        v46 = ValueAtIndex;
        v47 = CFDictionaryGetTypeID();
        if (CFGetTypeID(v46) == v47)
        {
          v48 = CFDictionaryGetValue(v46, @"MAC_USED");
          v49 = CFBooleanGetTypeID();
          if (!v48 || (CFGetTypeID(v48) == v49 ? (v50 = v48 == kCFBooleanFalse) : (v50 = 0), !v50))
          {
            v51 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v46);
            if (!v51)
            {
              sub_100001108();
              v22 = 12;
              v4 = v68;
LABEL_106:
              v2 = v69;
              goto LABEL_109;
            }

            v52 = v51;
            CFDictionarySetValue(v51, @"MAC_USED", kCFBooleanFalse);
            CFArraySetValueAtIndex(v44[50], v42, v52);
            CFRelease(v52);
            v43 = 1;
          }
        }
      }

      ++v42;
      v35 = v44;
      if (v41 == v42)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = 0;
LABEL_84:
  v53 = &byte_100034D38[712];
  v54 = CFArrayGetCount(qword_100035198);
  if (v54 < 1)
  {
    v2 = v69;
LABEL_100:
    if ((v43 & 1) == 0)
    {
      v22 = 0;
      goto LABEL_108;
    }

    CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
    CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", v53[51]);
    v65 = qword_1000351A0;
    v66 = geteuid();
    v67 = getgid();
    v72 = sub_100011EFC(v65, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v66, v67, 416, 0);
    v4 = v68;
    if (v72)
    {
      CFRelease(qword_100035190);
      CFRelease(v53[51]);
      CFRelease(qword_1000351A0);
      qword_100035190 = 0;
      v53[51] = 0;
      qword_1000351A0 = 0;
      sub_100001108();
      v22 = v72;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_106;
  }

  v55 = v54;
  v56 = 0;
  v2 = v69;
  while (1)
  {
    v57 = CFArrayGetValueAtIndex(v53[51], v56);
    if (!v57)
    {
      goto LABEL_95;
    }

    v58 = v57;
    v59 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v58) != v59)
    {
      goto LABEL_95;
    }

    v60 = CFDictionaryGetValue(v58, @"MAC_IOUE_USED");
    v61 = CFBooleanGetTypeID();
    if (v60)
    {
      if (CFGetTypeID(v60) == v61 && v60 == kCFBooleanFalse)
      {
        goto LABEL_95;
      }
    }

    v63 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v58);
    if (!v63)
    {
      break;
    }

    v64 = v63;
    CFDictionarySetValue(v63, @"MAC_IOUE_USED", kCFBooleanFalse);
    CFArraySetValueAtIndex(qword_100035198, v56, v64);
    CFRelease(v64);
    v43 = 1;
LABEL_95:
    ++v56;
    v53 = (byte_100034D38 + 712);
    if (v55 == v56)
    {
      goto LABEL_100;
    }
  }

  sub_100001108();
  v22 = 12;
LABEL_108:
  v4 = v68;
LABEL_109:
  CFRelease(v4);
LABEL_110:
  CFRelease(v2);
  return v22;
}

uint64_t sub_100015148(const __SCDynamicStore *a1)
{
  sub_100001108();

  return sub_10001536C(a1);
}

void sub_10001518C(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0 && qword_100035188)
  {
    sub_1000151E8();
    v2 = qword_100035150;
    v3 = dword_100035158;
    v4 = dword_10003515C;

    sub_100001F40(0, 0, v2, v3, v4, 0, 0);
  }
}

void sub_1000151E8()
{
  if (!qword_100035188)
  {
    sub_100021424();
  }

  Value = SCPreferencesGetValue(qword_100035188, @"AirplaneMode");
  if (Value)
  {
    v1 = Value;
    v2 = CFGetTypeID(Value);
    if (v2 == CFBooleanGetTypeID())
    {
      v3 = byte_100035180;
      v4 = CFBooleanGetValue(v1);
      if (v3 != (v4 != 0))
      {
        byte_100035180 = v4 != 0;
        sub_100001108();
      }
    }
  }

  v5 = qword_100035188;

  SCPreferencesSynchronize(v5);
}

void sub_1000152B0()
{
  if (!qword_100035140)
  {
    sub_100021450();
  }

  v0 = sub_10001764C(1);
  if (v0)
  {
    v1 = v0;
    v2 = qword_100035140;
    v3 = geteuid();
    sub_100011EFC(v1, v2, v3, dword_100035138, 384, 1);
    sub_100001108();

    CFRelease(v1);
  }
}

uint64_t sub_10001536C(const __SCDynamicStore *a1)
{
  if (!a1)
  {
    sub_10002147C();
  }

  v2 = SCDynamicStoreKeyCreate(0, @"%@", @"com.apple.MobileInternetSharing");
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v4 = sub_10001764C(0);
  if (v4)
  {
    v5 = v4;
    v34 = a1;
    v35 = v3;
    v33 = CFNumberCreate(0, kCFNumberIntType, &dword_100035158);
    CFDictionarySetValue(v5, @"Reason", v33);
    v32 = CFNumberCreate(0, kCFNumberIntType, &dword_10003515C);
    CFDictionarySetValue(v5, @"Errnum", v32);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    for (i = qword_1000351A8; i; i = *i)
    {
      v9 = CFStringCreateWithCString(0, (i + 12), 0x600u);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
      count = xpc_array_get_count(*(i + 32));
      if (count)
      {
        v11 = count;
        for (j = 0; j != v11; ++j)
        {
          string = xpc_array_get_string(*(i + 32), j);
          v14 = CFStringCreateWithCString(0, string, 0x600u);
          CFArrayAppendValue(v7, v14);
          CFRelease(v14);
        }
      }
    }

    CFDictionarySetValue(v5, @"InternalInterfaces", v7);
    CFDictionarySetValue(v5, @"ExternalInterfaces", Mutable);
    v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    cf = CFNumberCreate(0, kCFNumberIntType, &dword_100035160);
    CFDictionarySetValue(v15, @"Max", cf);
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += dword_100035148[v16 + 7];
      ++v16;
    }

    while (v16 != 7);
    valuePtr = v17;
    v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v15, @"Current", v30);
    if (!dword_100035160)
    {
      goto LABEL_15;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v19 += dword_100035148[v18 + 7];
      ++v18;
    }

    while (v18 != 7);
    if (v19 >= dword_100035160)
    {
      v20 = &kCFBooleanFalse;
    }

    else
    {
LABEL_15:
      v20 = &kCFBooleanTrue;
    }

    CFDictionarySetValue(v15, @"MoreAllowed", *v20);
    v22 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v23 = &unk_100035164;
    v24 = -2;
    v25 = 7;
    do
    {
      if (v24 <= 4)
      {
        v26 = *(&off_100031018 + v24);
        v27 = CFNumberCreate(0, kCFNumberIntType, v23);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v22, v26, v27);
          CFRelease(v28);
        }
      }

      v23 += 4;
      ++v24;
      --v25;
    }

    while (v25);
    CFDictionarySetValue(v15, @"Type", v22);
    CFDictionarySetValue(v5, @"Hosts", v15);
    if (v15)
    {
      CFRelease(v15);
    }

    v3 = v35;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v21 = SCDynamicStoreSetValue(v34, v35, v5) == 0;
    sub_100001108();
    CFRelease(v5);
  }

  else
  {
    v21 = 12;
  }

  CFRelease(v3);
  return v21;
}

void sub_1000157AC()
{
  if (byte_100034D28 == 1)
  {
    if (qword_100035140)
    {
      free(qword_100035140);
      qword_100035140 = 0;
    }

    if (qword_100035188)
    {
      CFRelease(qword_100035188);
      qword_100035188 = 0;
    }

    if (qword_100035190)
    {
      CFRelease(qword_100035190);
      qword_100035190 = 0;
    }

    if (qword_100035198)
    {
      CFRelease(qword_100035198);
      qword_100035198 = 0;
    }

    if (qword_1000351A0)
    {
      CFRelease(qword_1000351A0);
      qword_1000351A0 = 0;
    }

    if (qword_100034D30)
    {
      SCDynamicStoreSetDispatchQueue(qword_100034D30, 0);
      CFRelease(qword_100034D30);
      qword_100034D30 = 0;
    }

    byte_100034D28 = 0;
  }
}

uint64_t sub_1000158C4(unsigned int a1, int a2, int a3)
{
  v3 = qword_100035150;
  v4 = dword_100035158;
  v5 = dword_10003515C;
  if (a2)
  {
    if (a3)
    {
      sub_1000214D4();
    }

    if (a1 != 1022)
    {
      sub_1000214A8();
    }

    if (dword_10003514C <= 0x3FE)
    {
      v6 = 1022;
    }

    else
    {
      v6 = dword_10003514C;
    }

    dword_100035158 = 0;
    dword_10003515C = 0;
    if ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1)
    {
      v7 = 4;
      dword_100035158 = 4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (qword_100035150 < 0x3FE && byte_100034BB1 == 0 && a1 > 0x3FD)
    {
      v6 = 1020;
    }

    else
    {
      v6 = a1;
    }

    v7 = dword_100035158;
  }

  if ((qword_100035150 - 1020) <= 3)
  {
    v10 = (&off_100031040)[(qword_100035150 - 1020)];
  }

  if ((v6 - 1020) <= 3)
  {
    v12 = (&off_100031040)[v6 - 1020];
  }

  sub_100017498(v4);
  sub_100017498(v7);
  sub_100001108();
  LODWORD(qword_100035150) = v6;
  if (a2)
  {
    v13 = v4;
  }

  else
  {
    v13 = dword_100035158;
  }

  if (a2)
  {
    v14 = v5;
  }

  else
  {
    v14 = dword_10003515C;
  }

  return sub_100001F40(0, 0, v3, v13, v14, 0, a3);
}

void sub_100015AA8()
{
  if (qword_100035150 == 1023)
  {
    sub_1000158C4(0x3FEu, 0, 0);

    sub_1000158C4(0x3FFu, 0, 0);
  }
}

uint64_t sub_100015B3C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100017404(a1);
  if (v2 == 4 || (byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || (v3 = v2, byte_100035182 == 1))
  {
    v3 = 4;
  }

  sub_100017498(dword_100035158);
  sub_100017498(v3);
  if ((qword_100035150 - 1020) <= 3)
  {
    v4 = (&off_100031040)[(qword_100035150 - 1020)];
  }

  sub_100001108();
  if (v3 != dword_100035158 || dword_10003515C != v1)
  {
    dword_100035158 = v3;
    dword_10003515C = v1;
    sub_10001536C(qword_100034D30);
  }

  return 0;
}

uint64_t sub_100015C4C(char *__s1, const char *a2)
{
  v4 = &qword_1000351A8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strcmp(__s1, v4 + 12))
    {
      goto LABEL_8;
    }
  }

  v5 = malloc_type_malloc(0x28uLL, 0x10A00403AAC9C39uLL);
  if (!v5)
  {
    return 12;
  }

  v4 = v5;
  v5[4] = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = xpc_array_create(0, 0);
  v4[4] = v6;
  if (!v6)
  {
    free(v4);
    return 12;
  }

  snprintf(v4 + 12, 0x10uLL, "%s", __s1);
LABEL_8:
  count = xpc_array_get_count(v4[4]);
  if (count)
  {
    v8 = count;
    v9 = 0;
    while (1)
    {
      string = xpc_array_get_string(v4[4], v9);
      if (!strcmp(string, a2))
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_12;
      }
    }

    sub_100001108();
    return 22;
  }

  else
  {
LABEL_12:
    xpc_array_set_string(v4[4], 0xFFFFFFFFFFFFFFFFLL, a2);
    v11 = *(v4 + 2);
    *(v4 + 2) = v11 + 1;
    if (!v11)
    {
      *v4 = qword_1000351A8;
      qword_1000351A8 = v4;
    }

    v12 = qword_100034D30;

    return sub_10001536C(v12);
  }
}

uint64_t sub_100015DC8(char *__s1, const char *a2)
{
  v4 = &qword_1000351A8;
  v5 = &qword_1000351A8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      sub_100001108();
      return 0;
    }
  }

  while (strcmp(__s1, v5 + 12));
  v6 = v5[4];
  v7 = xpc_array_create(0, 0);
  count = xpc_array_get_count(v6);
  if (count)
  {
    v9 = count;
    v10 = 0;
    v11 = 0;
    v19 = count - 1;
LABEL_6:
    v12 = v11;
    do
    {
      string = xpc_array_get_string(v6, v12);
      if (!strcmp(string, a2))
      {
        v11 = v12 + 1;
        v10 = 1;
        if (v19 != v12)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, string);
      ++v12;
    }

    while (v9 != v12);
    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_14:
    xpc_release(v6);
    v5[4] = v7;
    sub_100001108();
    v15 = *(v5 + 2);
    if (!v15)
    {
      sub_100021500();
    }

    v16 = v15 - 1;
    *(v5 + 2) = v16;
    if (!v16)
    {
      for (i = qword_1000351A8; i != v5; i = *i)
      {
        v4 = i;
      }

      *v4 = *i;
      xpc_release(v5[4]);
      free(v5);
    }

    v18 = qword_100034D30;

    return sub_10001536C(v18);
  }

  else
  {
LABEL_19:
    xpc_release(v7);
    sub_100001108();
    return 22;
  }
}

uint64_t sub_100015FA4(__int16 a1, __int16 a2)
{
  if (dword_100034BC4)
  {
    v2 = dword_100034BC8 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v2)
  {
    v4 = word_100034BCE;
    v5 = word_100034BCC;
    word_100034BCC = a1;
    word_100034BCE = a2;
    sub_10001A6F8();
    if (v5 != word_100034BCC || v4 != word_100034BCE)
    {
      sub_1000152B0();
      sub_10001536C(qword_100034D30);
    }
  }

  return v3;
}

_WORD *sub_100016044(_WORD *result, _WORD *a2)
{
  if (result)
  {
    *result = word_100034BCC;
  }

  if (a2)
  {
    *a2 = word_100034BCE;
  }

  return result;
}

uint64_t sub_100016070(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    sub_10002152C();
  }

  v2 = dword_100035160;
  dword_100035160 = result;
  if (v2 != result)
  {
    v3 = qword_100034D30;

    return sub_10001536C(v3);
  }

  return result;
}

uint64_t sub_1000160C0(int a1, int a2)
{
  if ((a1 - 7) <= 0xFFFFFFFA)
  {
    sub_1000215B0();
  }

  if (!a2)
  {
    sub_100021584();
  }

  v2 = dword_100035148[a1 + 7] + a2;
  if (!v2)
  {
    sub_100021558();
  }

  dword_100035148[a1 + 7] = v2;
  v3 = qword_100034D30;

  return sub_10001536C(v3);
}

uint64_t sub_10001612C(int a1, unsigned int a2)
{
  if ((a1 - 7) <= 0xFFFFFFFA)
  {
    sub_1000215DC();
  }

  v2 = dword_100035148[a1 + 7];
  if (v2)
  {
    v3 = v2 >= a2;
    v4 = v2 - a2;
    if (!v3)
    {
      v4 = 0;
    }

    dword_100035148[a1 + 7] = v4;
    sub_10001536C(qword_100034D30);
  }

  return 0;
}

uint64_t sub_100016188()
{
  v0 = 0;
  LODWORD(result) = 0;
  do
  {
    result = (dword_100035148[v0 + 7] + result);
    ++v0;
  }

  while (v0 != 7);
  return result;
}

BOOL sub_1000161B4()
{
  if (!dword_100035160)
  {
    return 1;
  }

  v0 = 0;
  v1 = 0;
  do
  {
    v1 += dword_100035148[v0 + 7];
    ++v0;
  }

  while (v0 != 7);
  return v1 < dword_100035160;
}

uint64_t sub_1000161FC(char *a1)
{
  v2 = off_100034980[0];
  v3 = &qword_1000351A8;
  do
  {
    v3 = *v3;
    if (!v3)
    {
      return 6;
    }
  }

  while (!strncmp(v3 + 12, v2, 0x10uLL));
  if (!if_nametoindex(v3 + 12))
  {
    sub_100021608();
  }

  snprintf(a1, 0x10uLL, "%s", v3 + 12);
  return 0;
}

uint64_t sub_100016294(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_100021660();
  }

  if (!qword_100035198)
  {
    sub_100021634();
  }

  Count = CFArrayGetCount(qword_100035198);
  if (Count < 1)
  {
    return 22;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035198, v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        Value = CFDictionaryGetValue(v6, @"MAC_IOUE");
        if (Value)
        {
          v9 = Value;
          v10 = CFDataGetTypeID();
          if (CFGetTypeID(v9) == v10)
          {
            BytePtr = CFDataGetBytePtr(v9);
            if (BytePtr)
            {
              if (*BytePtr == *a1 && *(BytePtr + 2) == *(a1 + 4))
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      return 22;
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
  if (!MutableCopy)
  {
    v13 = 12;
LABEL_21:
    sub_100001108();
    return v13;
  }

  v16 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"MAC_IOUE_USED", kCFBooleanFalse);
  CFArraySetValueAtIndex(qword_100035198, v4, v16);
  CFRelease(v16);
  CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", qword_100035198);
  v17 = qword_1000351A0;
  LODWORD(v16) = geteuid();
  v18 = getgid();
  v13 = sub_100011EFC(v17, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v16, v18, 416, 0);
  if (v13)
  {
    goto LABEL_21;
  }

  return v13;
}

uint64_t sub_100016464(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_1000216B8();
  }

  if (!qword_100035198)
  {
    sub_10002168C();
  }

  Count = CFArrayGetCount(qword_100035198);
  if (Count < 1)
  {
LABEL_18:
    sub_100016760(bytes, 0);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v15 = Mutable;
      v16 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v15, @"MAC_IOUE", v16);
        CFRelease(v17);
        *a1 = *bytes;
        *(a1 + 4) = v28;
        CFDictionarySetValue(v15, @"MAC_IOUE_USED", kCFBooleanTrue);
        CFArrayAppendValue(qword_100035198, v15);
        v18 = v15;
        goto LABEL_21;
      }

      sub_100001108();
      CFRelease(v15);
      return 12;
    }

LABEL_23:
    sub_100001108();
    return 12;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035198, v4);
    TypeID = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == TypeID)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"MAC_IOUE_USED");
        v8 = CFBooleanGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v8 && Value != kCFBooleanTrue)
          {
            v10 = CFDictionaryGetValue(ValueAtIndex, @"MAC_IOUE");
            v11 = CFDataGetTypeID();
            if (v10)
            {
              if (CFGetTypeID(v10) == v11)
              {
                BytePtr = CFDataGetBytePtr(v10);
                if (BytePtr)
                {
                  v13 = BytePtr;
                  if (CFDataGetLength(v10) == 6 && !sub_100011568(v13))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      goto LABEL_18;
    }
  }

  v24 = *v13;
  *(a1 + 4) = *(v13 + 4);
  *a1 = v24;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, ValueAtIndex);
  if (!MutableCopy)
  {
    goto LABEL_23;
  }

  v26 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"MAC_IOUE_USED", kCFBooleanTrue);
  CFArraySetValueAtIndex(qword_100035198, v4, v26);
  v18 = v26;
LABEL_21:
  CFRelease(v18);
  CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", qword_100035198);
  v19 = qword_1000351A0;
  v20 = geteuid();
  v21 = getgid();
  v22 = sub_100011EFC(v19, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v20, v21, 416, 0);
  if (v22)
  {
    sub_100001108();
  }

  return v22;
}

uint64_t sub_100016760(unsigned __int16 *a1, const void *a2)
{
  if (!qword_100035190)
  {
    sub_100021710();
  }

  Count = CFArrayGetCount(qword_100035190);
  if (!qword_100035198)
  {
    sub_1000216E4();
  }

  v5 = CFArrayGetCount(qword_100035198);
  v6 = Count;
  v24 = Count;
  v25 = v5;
  v7 = Count;
  v8 = v5;
  do
  {
    if (a2)
    {
      CC_MD5(a2, 0x10u, md);
      *a1 = *md;
      a1[2] = v27;
      goto LABEL_6;
    }

    while (1)
    {
      while (1)
      {
        arc4random_buf(a1, 6uLL);
LABEL_6:
        *a1 = *a1 & 0xFC | 2;
        if (!sub_100011568(a1))
        {
          break;
        }

        if (a2)
        {
          return 22;
        }
      }

      LODWORD(v9) = 0;
      if (v6)
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v9);
          TypeID = CFDictionaryGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == TypeID)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"MAC_ADDRESS");
              v13 = CFDataGetTypeID();
              if (Value)
              {
                if (CFGetTypeID(Value) == v13)
                {
                  BytePtr = CFDataGetBytePtr(Value);
                  if (BytePtr)
                  {
                    if (*a1 == *BytePtr && a1[2] == *(BytePtr + 2))
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          if (v7 == ++v9)
          {
            goto LABEL_24;
          }
        }

        v6 = v24;
      }

      if (v9 == v6)
      {
        break;
      }

      v6 = v24;
      if (a2)
      {
        return 22;
      }
    }

LABEL_24:
    if (v25)
    {
      v16 = 0;
      while (1)
      {
        v17 = CFArrayGetValueAtIndex(qword_100035198, v16);
        v18 = CFDictionaryGetTypeID();
        if (v17)
        {
          if (CFGetTypeID(v17) == v18)
          {
            v19 = CFDictionaryGetValue(v17, @"MAC_IOUE");
            v20 = CFDataGetTypeID();
            if (v19)
            {
              if (CFGetTypeID(v19) == v20)
              {
                v21 = CFDataGetBytePtr(v19);
                if (v21)
                {
                  if (*a1 == *v21 && a1[2] == *(v21 + 2))
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        if (v8 == ++v16)
        {
          return 0;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    v6 = v24;
  }

  while (!a2 && v16 != v25);
  if (v16 == v25)
  {
    return 0;
  }

  return 22;
}

uint64_t sub_1000169F4(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_100021768();
  }

  if (!qword_100035190)
  {
    sub_10002173C();
  }

  Count = CFArrayGetCount(qword_100035190);
  if (Count < 1)
  {
    return 22;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        Value = CFDictionaryGetValue(v6, @"MAC_ADDRESS");
        if (Value)
        {
          v9 = Value;
          v10 = CFDataGetTypeID();
          if (CFGetTypeID(v9) == v10)
          {
            BytePtr = CFDataGetBytePtr(v9);
            if (BytePtr)
            {
              if (*BytePtr == *a1 && *(BytePtr + 2) == *(a1 + 4))
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      return 22;
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
  if (!MutableCopy)
  {
    v13 = 12;
LABEL_21:
    sub_100001108();
    return v13;
  }

  v16 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"MAC_USED", kCFBooleanFalse);
  CFArraySetValueAtIndex(qword_100035190, v4, v16);
  CFRelease(v16);
  CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
  v17 = qword_1000351A0;
  LODWORD(v16) = geteuid();
  v18 = getgid();
  v13 = sub_100011EFC(v17, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v16, v18, 416, 0);
  if (v13)
  {
    goto LABEL_21;
  }

  return v13;
}

uint64_t sub_100016BC4(const unsigned __int8 *a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  Count = CFArrayGetCount(qword_100035190);
  v5 = Count;
  if (a1 && Count)
  {
    uuid_unparse(a1, out);
    v6 = kCFAllocatorDefault;
    v7 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (v7)
    {
      v8 = v7;
      if (v5 < 1)
      {
        goto LABEL_16;
      }

      v69 = a1;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          TypeID = CFDictionaryGetTypeID();
          if (CFGetTypeID(v11) == TypeID)
          {
            Value = CFDictionaryGetValue(v11, @"UUID_MAC");
            if (Value)
            {
              v14 = Value;
              v15 = CFStringGetTypeID();
              if (CFGetTypeID(v14) == v15)
              {
                if (CFEqual(v14, v8))
                {
                  break;
                }
              }
            }
          }
        }

        if (v5 == ++v9)
        {
          a1 = v69;
          goto LABEL_16;
        }
      }

      v47 = CFDictionaryGetValue(v11, @"MAC_USED");
      v48 = CFBooleanGetTypeID();
      if (v47)
      {
        v49 = kCFBooleanTrue;
        if (CFGetTypeID(v47) == v48 && v47 == kCFBooleanTrue)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v49 = kCFBooleanTrue;
      }

      v55 = CFDictionaryGetValue(v11, @"MAC_ADDRESS");
      if (v55)
      {
        v56 = v55;
        v57 = CFDataGetTypeID();
        if (CFGetTypeID(v56) == v57)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v11);
          if (!MutableCopy)
          {
            goto LABEL_58;
          }

          v28 = MutableCopy;
          Current = CFAbsoluteTimeGetCurrent();
          v60 = CFDateCreate(kCFAllocatorDefault, Current);
          if (!v60)
          {
            goto LABEL_84;
          }

          v61 = v60;
          CFDictionarySetValue(v28, @"MAC_TIME_USED", v60);
          CFDictionarySetValue(v28, @"MAC_USED", v49);
          CFRelease(v61);
          CFArraySetValueAtIndex(qword_100035190, v9, v28);
          CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
          v62 = qword_1000351A0;
          v63 = geteuid();
          v64 = getgid();
          v65 = sub_100011EFC(v62, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v63, v64, 416, 0);
          if (v65)
          {
            v17 = v65;
            goto LABEL_72;
          }

          v17 = sub_100017318(a2, v56, v69);
LABEL_85:
          CFRelease(v8);
          v46 = v28;
          goto LABEL_86;
        }
      }

LABEL_17:
      sub_100001108();
      v17 = 22;
      goto LABEL_59;
    }

LABEL_34:
    sub_100001108();
    return 12;
  }

  if (a1)
  {
    uuid_unparse(a1, out);
    v6 = kCFAllocatorDefault;
    v16 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (v16)
    {
      v8 = v16;
LABEL_16:
      if (!sub_100016760(bytes, a1))
      {
        v26 = 0;
        goto LABEL_37;
      }

      goto LABEL_17;
    }

    goto LABEL_34;
  }

  uuid_generate(uu);
  uuid_unparse(uu, out);
  v6 = kCFAllocatorDefault;
  v18 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
  if (!v18)
  {
    goto LABEL_34;
  }

  v8 = v18;
  while (1)
  {
    if (v5 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      while (1)
      {
        v20 = CFArrayGetValueAtIndex(qword_100035190, v19);
        if (v20)
        {
          v21 = v20;
          v22 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v21) == v22)
          {
            v23 = CFDictionaryGetValue(v21, @"UUID_MAC");
            if (v23)
            {
              v24 = v23;
              v25 = CFStringGetTypeID();
              if (CFGetTypeID(v24) == v25)
              {
                if (CFEqual(v24, v8))
                {
                  break;
                }
              }
            }
          }
        }

        if (v5 == ++v19)
        {
          goto LABEL_32;
        }
      }
    }

    if (v5 != v19)
    {
      goto LABEL_33;
    }

LABEL_32:
    if (!sub_100016760(bytes, uu))
    {
      break;
    }

LABEL_33:
    CFRelease(v8);
    uuid_generate(uu);
    uuid_unparse(uu, out);
    v8 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (!v8)
    {
      goto LABEL_34;
    }
  }

  v26 = 1;
  a1 = 0;
LABEL_37:
  Mutable = CFDictionaryCreateMutable(v6, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v28 = Mutable;
    CFDictionarySetValue(Mutable, @"UUID_MAC", v8);
    v29 = CFDataCreate(v6, bytes, 6);
    if (v29)
    {
      v30 = v29;
      CFDictionarySetValue(v28, @"MAC_ADDRESS", v29);
      CFRelease(v30);
      v31 = CFAbsoluteTimeGetCurrent();
      v32 = CFDateCreate(v6, v31);
      if (v32)
      {
        v33 = v32;
        CFDictionarySetValue(v28, @"MAC_TIME_USED", v32);
        CFRelease(v33);
        CFDictionarySetValue(v28, @"MAC_USED", kCFBooleanTrue);
        if (v5 < 138)
        {
          CFArrayAppendValue(qword_100035190, v28);
          goto LABEL_71;
        }

        v67 = v26;
        v70 = a1;
        v68 = a2;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = CFArrayGetValueAtIndex(qword_100035190, v34);
          if (v37)
          {
            v38 = v37;
            v39 = CFDictionaryGetTypeID();
            if (CFGetTypeID(v38) == v39)
            {
              v40 = CFDictionaryGetValue(v38, @"MAC_USED");
              v41 = CFBooleanGetTypeID();
              if (!v40 || (CFGetTypeID(v40) == v41 ? (v42 = v40 == kCFBooleanTrue) : (v42 = 0), !v42))
              {
                v43 = CFDictionaryGetValue(v38, @"MAC_TIME_USED");
                if (!v43 || (v44 = v43, v45 = CFDateGetTypeID(), CFGetTypeID(v44) != v45))
                {
                  v35 = v34;
LABEL_67:
                  a2 = v68;
                  if (!v36 && v5 == v34)
                  {
                    sub_100001108();
                    v17 = 19;
                    goto LABEL_85;
                  }

                  CFArraySetValueAtIndex(qword_100035190, v35, v28);
                  a1 = v70;
                  v26 = v67;
LABEL_71:
                  CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
                  v50 = qword_1000351A0;
                  v51 = geteuid();
                  v52 = getgid();
                  v17 = sub_100011EFC(v50, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v51, v52, 416, 0);
                  if (v17)
                  {
LABEL_72:
                    sub_100001108();
                  }

                  else
                  {
                    v53 = CFDictionaryGetValue(v28, @"MAC_ADDRESS");
                    if (v26)
                    {
                      v54 = uu;
                    }

                    else
                    {
                      v54 = a1;
                    }

                    sub_100017318(a2, v53, v54);
                  }

                  goto LABEL_85;
                }

                if (v36)
                {
                  if (CFDateCompare(v36, v44, 0) == kCFCompareGreaterThan)
                  {
                    v36 = v44;
                    v35 = v34;
                  }
                }

                else
                {
                  v36 = v44;
                  v35 = v34;
                }
              }
            }
          }

          if (v5 == ++v34)
          {
            v34 = v5;
            goto LABEL_67;
          }
        }
      }
    }

LABEL_84:
    sub_100001108();
    v17 = 12;
    goto LABEL_85;
  }

LABEL_58:
  sub_100001108();
  v17 = 12;
LABEL_59:
  v46 = v8;
LABEL_86:
  CFRelease(v46);
  return v17;
}

uint64_t sub_100017318(void *a1, CFDataRef theData, _OWORD *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr)
  {
    snprintf(__str, 0x14uLL, "%02x:%02x:%02x:%02x:%02x:%02x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]);
    xpc_dictionary_set_string(a1, off_100034878[0], __str);
    *uuid = *a3;
    xpc_dictionary_set_uuid(a1, off_100034870[0], uuid);
    return 0;
  }

  else
  {
    sub_100001108();
    return 12;
  }
}

uint64_t sub_100017404(uint64_t result)
{
  if (result > 35)
  {
    switch(result)
    {
      case '$':
        return 2;
      case 'P':
        return 3;
      case '-':
        return 1;
    }

    goto LABEL_12;
  }

  if (!result)
  {
    return result;
  }

  if (result == 4)
  {
    return 5;
  }

  if (result != 19)
  {
LABEL_12:
    sub_100001108();
    return 6;
  }

  return 4;
}

const char *sub_100017498(unsigned int a1)
{
  if (a1 > 5)
  {
    return "UNKNOWN";
  }

  else
  {
    return (&off_100031060)[a1];
  }
}

uint64_t sub_1000174BC(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"ForwardedPorts");
  result = 0;
  if (!Value || dword_100034BC8)
  {
    return result;
  }

  v5 = CFArrayGetTypeID();
  if (CFGetTypeID(Value) != v5)
  {
    return 22;
  }

  if (CFArrayGetCount(Value) < 1)
  {
    return 22;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  if (!ValueAtIndex)
  {
    return 22;
  }

  v7 = ValueAtIndex;
  v8 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v7) != v8)
  {
    return 22;
  }

  v9 = CFDictionaryGetValue(v7, @"Low");
  v10 = CFDictionaryGetValue(v7, @"High");
  if (!v9)
  {
    return 22;
  }

  v11 = v10;
  v12 = CFNumberGetTypeID();
  v13 = CFGetTypeID(v9);
  result = 22;
  if (v13 == v12 && v11)
  {
    v14 = CFNumberGetTypeID();
    if (CFGetTypeID(v11) == v14)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v9, kCFNumberShortType, &valuePtr + 2))
      {
        if (CFNumberGetValue(v11, kCFNumberShortType, &valuePtr))
        {
          word_100034BCC = HIWORD(valuePtr);
          word_100034BCE = valuePtr;
          sub_10001A6F8();
          return 0;
        }
      }
    }

    return 22;
  }

  return result;
}

__CFDictionary *sub_10001764C(int a1)
{
  v14 = 3;
  valuePtr = 1020;
  if ((qword_100035150 & 0xFFFFFFFC) == 0x3FC)
  {
    valuePtr = qword_100035150;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1 && ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1))
    {
      valuePtr = HIDWORD(qword_100035150);
    }

    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"State", v3);
      CFRelease(v4);
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &dword_10003514C);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, @"UState", v5);
      CFRelease(v6);
    }

    v7 = CFNumberCreate(0, kCFNumberIntType, &v14);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(Mutable, @"Version", v7);
      CFRelease(v8);
    }

    if (!dword_100034BC8)
    {
      if (word_100034BCC | word_100034BCE)
      {
        v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v9)
        {
          v10 = v9;
          v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v11)
          {
            v12 = v11;
            sub_100011E94(v11, @"Low", word_100034BCC);
            sub_100011E94(v12, @"High", word_100034BCE);
            CFArrayAppendValue(v10, v12);
            CFRelease(v12);
            CFDictionarySetValue(Mutable, @"ForwardedPorts", v10);
          }

          CFRelease(v10);
        }
      }
    }
  }

  return Mutable;
}

void sub_100017870(uint64_t a1)
{
  v8 = 0;
  v1 = CFStringCreateWithCString(0, (*(a1 + 16) + 20), 0x600u);
  if (v1)
  {
    v2 = v1;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100001108();
      v6 = v2;
LABEL_14:

      CFRelease(v6);
      return;
    }

    v4 = Mutable;
    CFArrayAppendValue(Mutable, v2);
    v5 = sub_1000179B0(v4, &v8);
    if (!v5)
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v7 = sub_10000F968("/usr/libexec/bootpd");
      if (!v7 || !kill(v7, 1))
      {
        goto LABEL_13;
      }

      v5 = *__error();
    }

    strerror(v5);
    sub_100001108();
LABEL_13:
    CFRelease(v2);
    v6 = v4;
    goto LABEL_14;
  }

  sub_100001108();
}

uint64_t sub_1000179B0(const __CFArray *a1, _BYTE *a2)
{
  v35 = 0;
  Count = CFArrayGetCount(a1);
  v34 = a2;
  *a2 = 0;
  v4 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v35, 0);
  TypeID = CFDictionaryGetTypeID();
  if (!v4)
  {
    return v35;
  }

  if (CFGetTypeID(v4) != TypeID)
  {
LABEL_41:
    CFRelease(v4);
    return v35;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
  if (!MutableCopy)
  {
    sub_100001108();
    goto LABEL_41;
  }

  v7 = MutableCopy;
  v30 = v4;
  v8 = sub_100019008(MutableCopy, @"Subnets");
  v9 = sub_100019008(v7, @"dhcp_enabled");
  v10 = sub_100019008(v7, @"ignore_allow_deny");
  v11 = sub_100019008(v7, @"detect_other_dhcp_server");
  cf = v7;
  v12 = sub_100019008(v7, @"ipv6_only_preferred");
  v4 = v12;
  v13 = Count;
  if (Count >= 1)
  {
    v14 = 0;
    v31 = v11;
    v32 = v12;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
      v16 = CFStringGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v16)
      {
        v17 = v10;
        v18 = v9;
        *buffer = 0;
        v37 = 0;
        CFStringGetCString(ValueAtIndex, buffer, 16, 0x600u);
        sub_100001108();
        if (v8)
        {
          v19 = CFArrayGetCount(v8);
          if (v19 >= 1)
          {
            v20 = v19;
            v21 = 0;
            while (1)
            {
              v22 = CFArrayGetValueAtIndex(v8, v21);
              v23 = CFDictionaryGetTypeID();
              if (v22)
              {
                if (CFGetTypeID(v22) == v23)
                {
                  Value = CFDictionaryGetValue(v22, @"interface");
                  v25 = CFStringGetTypeID();
                  if (Value)
                  {
                    if (CFGetTypeID(Value) == v25 && CFEqual(ValueAtIndex, Value))
                    {
                      break;
                    }
                  }
                }
              }

              if (v20 == ++v21)
              {
                goto LABEL_17;
              }
            }

            CFArrayRemoveValueAtIndex(v8, v21);
            *v34 = 1;
          }
        }

LABEL_17:
        v9 = v18;
        if (sub_100019098(v18, ValueAtIndex))
        {
          *v34 = 1;
        }

        v10 = v17;
        v4 = v32;
        if (sub_100019098(v17, ValueAtIndex))
        {
          *v34 = 1;
        }

        v11 = v31;
        v13 = Count;
        if (sub_100019098(v31, ValueAtIndex))
        {
          *v34 = 1;
        }

        if (sub_100019098(v32, ValueAtIndex))
        {
          *v34 = 1;
        }
      }

      ++v14;
    }

    while (v14 != v13);
  }

  if (*v34 == 1)
  {
    sub_100019130(cf, @"Subnets", v8, 1);
    sub_100019130(cf, @"dhcp_enabled", v9, 0);
    sub_100019130(cf, @"ignore_allow_deny", v10, 1);
    sub_100019130(cf, @"detect_other_dhcp_server", v11, 0);
    sub_100019130(cf, @"ipv6_only_preferred", v4, 1);
    v26 = geteuid();
    v27 = getgid();
    v35 = sub_100011EFC(cf, "/Library/Preferences/SystemConfiguration/bootpd.plist", v26, v27, 420, 0);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(cf);
  CFRelease(v30);
  if (v4)
  {
    goto LABEL_41;
  }

  return v35;
}

uint64_t sub_100017DCC()
{
  if (!dword_100034A48)
  {
    return 0;
  }

  v29 = 0;
  v0 = CFStringCreateWithCString(kCFAllocatorDefault, "com.apple.MobileInternetSharing", 0x600u);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v29, 0);
    TypeID = CFDictionaryGetTypeID();
    if (v2 && CFGetTypeID(v2) == TypeID)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v2);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        v6 = sub_100019008(MutableCopy, @"Subnets");
        if (v6)
        {
          v7 = v6;
          v8 = sub_100019008(v5, @"dhcp_enabled");
          v9 = sub_100019008(v5, @"ignore_allow_deny");
          v10 = sub_100019008(v5, @"detect_other_dhcp_server");
          v11 = sub_100019008(v5, @"ipv6_only_preferred");
          Count = CFArrayGetCount(v7);
          if (Count >= 1)
          {
            v13 = Count;
            v25 = 0;
            v27 = v9;
            v28 = v8;
            v26 = v10;
            while (2)
            {
              v14 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
                v16 = CFDictionaryGetTypeID();
                if (ValueAtIndex)
                {
                  if (CFGetTypeID(ValueAtIndex) == v16)
                  {
                    Value = CFDictionaryGetValue(ValueAtIndex, @"_creator");
                    v18 = CFStringGetTypeID();
                    if (Value)
                    {
                      if (CFGetTypeID(Value) == v18 && CFEqual(Value, v1))
                      {
                        break;
                      }
                    }
                  }
                }

                if (v13 == ++v14)
                {
                  v9 = v27;
                  v8 = v28;
                  v10 = v26;
                  if ((v25 & 1) == 0)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_37;
                }
              }

              v19 = CFDictionaryGetValue(ValueAtIndex, @"interface");
              v20 = CFStringGetTypeID();
              if (v19 && CFGetTypeID(v19) == v20)
              {
                v8 = v28;
                sub_100019098(v28, v19);
                v9 = v27;
                sub_100019098(v27, v19);
                sub_100019098(v26, v19);
                sub_100019098(v11, v19);
                v21 = v14;
                v10 = v26;
                CFArrayRemoveValueAtIndex(v7, v21);
                v13 = CFArrayGetCount(v7);
                v25 = 1;
                if (v13 > 0)
                {
                  continue;
                }

LABEL_37:
                sub_100019130(v5, @"Subnets", v7, 1);
                sub_100019130(v5, @"dhcp_enabled", v8, 0);
                sub_100019130(v5, @"ignore_allow_deny", v9, 1);
                sub_100019130(v5, @"detect_other_dhcp_server", v10, 0);
                sub_100019130(v5, @"ipv6_only_preferred", v11, 1);
                v23 = geteuid();
                v24 = getgid();
                v29 = sub_100011EFC(v5, "/Library/Preferences/SystemConfiguration/bootpd.plist", v23, v24, 420, 0);
                sub_100018EC8();
                goto LABEL_38;
              }

              break;
            }

            unlink("/Library/Preferences/SystemConfiguration/bootpd.plist");
            v9 = v27;
            v8 = v28;
            v10 = v26;
          }

LABEL_38:
          CFRelease(v1);
          if (v10)
          {
            CFRelease(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(v7);
          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_100001108();
      }
    }

    else
    {
      sub_100001108();
      v5 = 0;
    }

    v11 = 0;
    v8 = v1;
LABEL_23:
    CFRelease(v8);
LABEL_24:
    if (v5)
    {
      CFRelease(v5);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_31;
  }

  sub_100001108();
LABEL_31:
  if (sub_1000181DC())
  {
    sub_1000123A8();
  }

  byte_1000351B0 = 1;
  return 0;
}

uint64_t sub_1000181DC()
{
  v11 = 0;
  v0 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v11, 0);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"bootp_enabled");
  if (Value)
  {
    v3 = Value == kCFBooleanFalse;
  }

  else
  {
    v3 = 1;
  }

  if (v3 && ((v4 = CFDictionaryGetValue(v1, @"dhcp_enabled")) == 0 || v4 == kCFBooleanFalse) && ((v5 = CFDictionaryGetValue(v1, @"netboot_enabled")) == 0 || v5 == kCFBooleanFalse) && ((v6 = CFDictionaryGetValue(v1, @"old_netboot_enabled")) == 0 || v6 == kCFBooleanFalse))
  {
    v9 = CFDictionaryGetValue(v1, @"relay_enabled");
    if (v9)
    {
      v10 = v9 == kCFBooleanFalse;
    }

    else
    {
      v10 = 1;
    }

    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v1);
  return v7;
}

void sub_1000182D0()
{
  if (byte_1000351B0 == 1)
  {
    byte_1000351B0 = 0;
  }
}

uint64_t sub_1000182E8()
{
  if (dword_1000351B4 < 0)
  {
    v1 = -1;
    v0 = 2;
    goto LABEL_5;
  }

  if (!dword_1000351B4)
  {
    if (!dword_100034A48)
    {
      return 0;
    }

    if (access("/usr/libexec/bootpd", 0))
    {
      v0 = *__error();
      sub_100001108();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (dword_100034A58 == -1)
      {
        if (notify_register_dispatch(DHCPSDisabledInterfacesNotificationKey, &dword_100034A58, qword_100034BD8, &stru_1000310B0))
        {
          sub_100001108();
          sub_100001108();
          v1 = -1;
          v0 = 12;
          goto LABEL_5;
        }
      }

      else
      {
        sub_100001108();
      }

      v3 = sub_1000123A8();
      if (!v3)
      {
        goto LABEL_3;
      }

      v0 = v3;
      sub_100001108();
    }

    v1 = -1;
    goto LABEL_5;
  }

LABEL_3:
  v0 = 0;
  v1 = dword_1000351B4 + 1;
LABEL_5:
  dword_1000351B4 = v1;
  return v0;
}

uint64_t sub_10001844C(uint64_t a1)
{
  if (dword_1000351B4 < 0 || !dword_100034A48)
  {
    sub_100001108();
    return 19;
  }

  if ((*(a1 + 8) & 4) != 0)
  {
    sub_100017870(a1);
    sub_100001108();
  }

  v2 = 3600;
  __errnum = 12;
  *valuePtr = 3600;
  v3 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", @"com.apple.InternetSharing.default.plist");
  if (v3)
  {
    v4 = v3;
    v5 = SCPreferencesGetValue(v3, @"bootpd");
    TypeID = CFDictionaryGetTypeID();
    if (v5)
    {
      if (CFGetTypeID(v5) == TypeID)
      {
        v7 = CFDictionaryGetValue(v5, @"DHCPLeaseTimeSecs");
        v8 = CFNumberGetTypeID();
        if (v7)
        {
          if (CFGetTypeID(v7) == v8)
          {
            CFNumberGetValue(v7, kCFNumberIntType, valuePtr);
          }
        }
      }
    }

    CFRelease(v4);
    v2 = *valuePtr;
  }

  v10 = *(a1 + 372) == 1 && (v9 = *(a1 + 24), *(v9 + 8) == 100) && *(v9 + 804) == 1;
  v11 = *(a1 + 392);
  v12 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &__errnum, 0);
  v13 = CFDictionaryGetTypeID();
  if (v12 && CFGetTypeID(v12) == v13)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v12);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v15 = MutableCopy;
  if (!MutableCopy)
  {
    sub_100001108();
    v18 = 0;
    if (!v12)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v83 = v2;
  v84 = v12;
  if ((v11 & 2) != 0)
  {
    v16 = 0;
    v10 = 1;
  }

  else
  {
    v16 = sub_100019008(MutableCopy, @"Subnets");
  }

  v19 = sub_100019008(v15, @"dhcp_enabled");
  v20 = sub_100019008(v15, @"ignore_allow_deny");
  v21 = sub_100019008(v15, @"detect_other_dhcp_server");
  v22 = sub_100019008(v15, @"ipv6_only_preferred");
  CFDictionaryRemoveValue(v15, @"dhcp_ignore_client_identifier");
  CFDictionarySetValue(v15, @"bootp_enabled", kCFBooleanFalse);
  v23 = v19;
  v24 = v19;
  v18 = v22;
  v25 = v20;
  sub_100011D88(v24, (*(a1 + 16) + 20));
  sub_100011D88(v20, (*(a1 + 16) + 20));
  value = v21;
  if (!v10 || (v21 = v18, !byte_100034BEA))
  {
    sub_100011D88(v21, (*(a1 + 16) + 20));
  }

  v75 = *(a1 + 16) + 20;
  sub_100001108();
  v26 = v23;
  if ((v11 & 2) != 0)
  {
    goto LABEL_46;
  }

  v81 = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    goto LABEL_52;
  }

  v28 = Mutable;
  theArray = v16;
  v29 = sub_10001225C(*(a1 + 380), *(a1 + 384));
  sub_100011E1C(v28, @"name", v29);
  v30 = *(a1 + 384) & *(a1 + 380);
  v31.s_addr = v30;
  v32 = inet_ntoa(v31);
  sub_100011E1C(v28, @"net_address", v32);
  v33 = *(a1 + 16) + 20;
  v34.s_addr = v30;
  inet_ntoa(v34);
  sub_100001108();
  v35.s_addr = *(a1 + 384);
  v36 = inet_ntoa(v35);
  sub_100011E1C(v28, @"net_mask", v36);
  v37.s_addr = *(a1 + 384);
  v76 = *(a1 + 16) + 20;
  inet_ntoa(v37);
  sub_100001108();
  if (*(a1 + 372) == 1)
  {
    v38.s_addr = *(a1 + 380);
    v39 = inet_ntoa(v38);
    sub_100011E1C(v28, @"dhcp_router", v39);
    v40.s_addr = *(a1 + 380);
    v77 = *(a1 + 16) + 20;
    inet_ntoa(v40);
    sub_100001108();
    v41 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (!v41)
    {
LABEL_39:
      CFRelease(v28);
      goto LABEL_40;
    }

    v42 = v41;
    v43.s_addr = *(a1 + 380);
    v44 = inet_ntoa(v43);
    sub_100011D88(v42, v44);
    v45.s_addr = *(a1 + 380);
    v78 = *(a1 + 16) + 20;
    inet_ntoa(v45);
    sub_100001108();
    CFDictionarySetValue(v28, @"dhcp_domain_name_server", v42);
    CFRelease(v42);
  }

  sub_100011E1C(v28, @"_creator", "com.apple.MobileInternetSharing");
  CFDictionarySetValue(v28, @"allocate", kCFBooleanTrue);
  sub_10000EEA8(v28, @"lease_min", v83);
  sub_10000EEA8(v28, @"lease_max", v83);
  v79 = *(a1 + 16) + 20;
  sub_100001108();
  v46 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!v46)
  {
    goto LABEL_39;
  }

  v47 = v46;
  v48 = *(a1 + 380);
  v49 = *(a1 + 384);
  v50 = v49 & v48;
  if (v48 == (v49 & v48))
  {
LABEL_38:
    sub_100001108();
    CFRelease(v47);
    CFRelease(v28);
    __errnum = 49;
LABEL_40:
    v16 = theArray;
    goto LABEL_52;
  }

  v51 = *(a1 + 388);
  if (!v51)
  {
    v52 = 1 << -sub_100012234(v49);
    if (v52 <= 3)
    {
      sub_10001225C(*(a1 + 380), *(a1 + 384));
      goto LABEL_38;
    }

    v51 = bswap32(bswap32(v50) + v52 - 2);
  }

  v53 = v51;
  v54 = bswap32(bswap32(v48) + 1);
  v55.s_addr = v54;
  v56 = inet_ntoa(v55);
  sub_100011D88(v47, v56);
  v57 = *(a1 + 16) + 20;
  v58.s_addr = v54;
  inet_ntoa(v58);
  sub_100001108();
  v59.s_addr = v53;
  v60 = inet_ntoa(v59);
  sub_100011D88(v47, v60);
  v61.s_addr = v53;
  v80 = *(a1 + 16) + 20;
  inet_ntoa(v61);
  sub_100001108();
  CFDictionarySetValue(v28, @"net_range", v47);
  CFRelease(v47);
  sub_100011E1C(v28, @"interface", (*(a1 + 16) + 20));
  v16 = theArray;
  CFArrayAppendValue(theArray, v28);
  CFRelease(v28);
  CFDictionarySetValue(v15, @"Subnets", theArray);
  v10 = v81;
LABEL_46:
  CFDictionarySetValue(v15, @"dhcp_enabled", v26);
  CFDictionarySetValue(v15, @"ignore_allow_deny", v25);
  if (!v10)
  {
    v62 = @"detect_other_dhcp_server";
    v63 = v15;
    v64 = value;
    goto LABEL_50;
  }

  if (CFArrayGetCount(v18))
  {
    v62 = @"ipv6_only_preferred";
    v63 = v15;
    v64 = v18;
LABEL_50:
    CFDictionarySetValue(v63, v62, v64);
  }

  v65 = geteuid();
  v66 = getgid();
  __errnum = sub_100011EFC(v15, "/Library/Preferences/SystemConfiguration/bootpd.plist", v65, v66, 420, 0);
LABEL_52:
  if (value)
  {
    CFRelease(value);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  CFRelease(v15);
  v12 = v84;
  if (!v84)
  {
    goto LABEL_62;
  }

LABEL_61:
  CFRelease(v12);
LABEL_62:
  if (v18)
  {
    CFRelease(v18);
  }

  v17 = __errnum;
  if (__errnum)
  {
    strerror(__errnum);
    sub_100001108();
  }

  else
  {
    if (*(a1 + 472))
    {
      sub_100018D60();
    }

    *(a1 + 8) |= 4u;
    v17 = sub_100018EC8();
    if (!v17)
    {
      sub_10001225C(*(a1 + 380), *(a1 + 384));
      v67 = *(a1 + 16);
      v68 = *(v67 + 12);
      if (*(a1 + 372))
      {
        v69 = *(a1 + 24);
        v70 = *(v69 + 12);
        *(v67 + 16);
        *(v69 + 16);
      }

      else
      {
        v71 = *(v67 + 16);
      }

      sub_100001108();
      if (!*(a1 + 372))
      {
        v72.s_addr = *(a1 + 380);
        v73 = inet_ntoa(v72);
        snprintf(valuePtr, 0x10uLL, "%s", v73);
        sub_100001108();
      }

      return 0;
    }
  }

  return v17;
}

uint64_t sub_100018D60()
{
  v0 = fopen("/Library/Preferences/SystemConfiguration/bootptab", "w");
  if (v0)
  {
    v1 = v0;
    v2 = qword_100034C38;
    if (qword_100034C38)
    {
      v3 = 1;
      do
      {
        v16 = v2;
        if ((*(v2 + 296) - 3) >= 0xFFFFFFFE && (v4 = *(v2 + 472)) != 0)
        {
          do
          {
            if (v3 == 1)
            {
              fprintf(v1, "%%\n");
            }

            v5 = v3 + 1;
            v6 = *(v4 + 8);
            v7 = *(v4 + 9);
            v8 = *(v4 + 10);
            v9 = *(v4 + 11);
            v10 = *(v4 + 12);
            v11 = *(v4 + 13);
            v12.s_addr = *(v4 + 4);
            v13 = inet_ntoa(v12);
            fprintf(v1, "client%llu 1 %02x:%02x:%02x:%02x:%02x:%02x %s\n", v3, v6, v7, v8, v9, v10, v11, v13);
            v4 = *v4;
            ++v3;
          }

          while (v4);
        }

        else
        {
          v5 = v3;
        }

        v2 = *v16;
        v3 = v5;
      }

      while (*v16);
    }

    return fclose(v1);
  }

  else
  {
    v15 = *__error();
    return sub_100001108();
  }
}

uint64_t sub_100018EC8()
{
  v0 = sub_10000F968("/usr/libexec/bootpd");
  if (!v0)
  {
    return 0;
  }

  v1 = kill(v0, 1);
  if (v1)
  {
    v2 = __error();
    strerror(*v2);
    sub_100001108();
  }

  return v1;
}

void sub_100018F38(uint64_t a1)
{
  if ((dword_1000351B4 & 0x80000000) == 0)
  {
    sub_100017870(a1);
    if (*(a1 + 472))
    {
      sub_100018D60();
    }

    v2 = dword_1000351B4;
    if (dword_1000351B4 == 1)
    {
      if (dword_100034A58 != -1)
      {
        sub_100001108();
        notify_cancel(dword_100034A58);
        dword_100034A58 = -1;
      }

      if (sub_1000181DC())
      {
        sub_1000123A8();
      }

      v2 = dword_1000351B4;
    }

    *(a1 + 8) ^= 4u;
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v4 < 0 == v3)
    {
      dword_1000351B4 = v4;
    }
  }
}

CFMutableArrayRef sub_100019008(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {

    return CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, Value);
  }

  else
  {

    return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }
}

const __CFArray *sub_100019098(const __CFArray *result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v8.location = 0;
    v8.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, a2);
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      v6 = FirstIndexOfValue;
      v7 = Count - 1;
      do
      {
        CFArrayRemoveValueAtIndex(v3, v6);
        v9.location = 0;
        v9.length = v7;
        v6 = CFArrayGetFirstIndexOfValue(v3, v9, a2);
        --v7;
      }

      while (v6 != -1);
      return 1;
    }
  }

  return result;
}

void sub_100019130(__CFDictionary *a1, const void *a2, CFArrayRef theArray, int a4)
{
  if (!theArray)
  {
    return;
  }

  if (CFArrayGetCount(theArray))
  {
    v8 = a1;
    v9 = a2;
    v10 = theArray;
LABEL_10:

    CFDictionarySetValue(v8, v9, v10);
    return;
  }

  if (!a4)
  {
    v10 = kCFBooleanFalse;
    v8 = a1;
    v9 = a2;
    goto LABEL_10;
  }

  CFDictionaryRemoveValue(a1, a2);
}

void sub_1000191E4(id a1, int a2)
{
  sub_100001108();
  if (dword_100034A58 == -1)
  {

    sub_100001108();
  }

  else
  {
    v2 = DHCPSCopyDisabledInterfaces();
    if (v2)
    {
      v3 = v2;
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(v3) == TypeID)
      {
        if (CFArrayGetCount(v3))
        {
          v5 = 0;
          sub_1000179B0(v3, &v5);
          if (v5 == 1)
          {
            sub_100018EC8();
          }
        }
      }

      CFRelease(v3);
    }
  }
}

void sub_1000192C8()
{
  v4 = 0;
  v14 = 0;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__dst = 0u;
  *__n = 0u;
  if (getifaddrs(&v4))
  {
    __error();
    sub_100001108();
  }

  else
  {
    v0 = socket(2, 2, 0);
    if (v0 < 0)
    {
      __error();
      sub_100001108();
    }

    else
    {
      v1 = v0;
      for (i = v4; i; i = i->ifa_next)
      {
        if (strnstr(i->ifa_name, "bridge", 0x10uLL))
        {
          v14 = 0;
          v13 = 0u;
          v11 = 0u;
          v12 = 0u;
          v9 = 0u;
          v10 = 0u;
          v7 = 0u;
          v8 = 0u;
          *__dst = 0u;
          *__n = 0u;
          strncpy(__dst, i->ifa_name, 0x10uLL);
          if (ioctl(v1, 0xC0946990uLL, __dst) != -1 && LODWORD(__n[0]) && !strncmp(__n + 4, "com.apple.MobileInternetSharing", LODWORD(__n[0])) && sub_100019760(i->ifa_name))
          {
            ifa_name = i->ifa_name;
            sub_100001108();
          }
        }
      }

      close(v1);
    }

    freeifaddrs(v4);
  }

  byte_1000351B8 = 1;
}

uint64_t sub_100019484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021794();
  }

  v2 = (v1 + 20);
  if (!if_nametoindex((v1 + 20)) || (sub_100001108(), v3 = sub_100019760(v2), !v3))
  {
    *__dst = 0u;
    *v9 = 0u;
    v5 = socket(2, 2, 0);
    if (v5 < 0)
    {
      v4 = *__error();
      sub_100001108();
      if (v5 == -1)
      {
        if (v4)
        {
          goto LABEL_10;
        }

LABEL_17:
        memset(v9, 0, sizeof(v9));
        *__dst = 0u;
        v7 = socket(2, 2, 0);
        if (v7 < 0)
        {
          v4 = *__error();
          sub_100001108();
          if (v7 == -1)
          {
            if (v4)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }

        else
        {
          strncpy(__dst, v2, 0x10uLL);
          strcpy(&v9[4], "com.apple.MobileInternetSharing");
          memset(&v9[36], 0, 96);
          *v9 = 31;
          if (ioctl(v7, 0xC094698FuLL, __dst) < 0)
          {
            v4 = *__error();
            sub_100001108();
          }

          else
          {
            v4 = 0;
          }
        }

        close(v7);
        if (v4)
        {
          goto LABEL_26;
        }

LABEL_25:
        v4 = sub_10000FCF8(v2, 1);
        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_26:
        sub_100001108();
        sub_100019AC0();
        return v4;
      }
    }

    else
    {
      *__dst = 0u;
      *v9 = 0u;
      if (__strlcpy_chk() > 0xF || ioctl(v5, 0xC020697AuLL, __dst) < 0)
      {
        v4 = *__error();
        sub_100001108();
      }

      else
      {
        v4 = 0;
      }
    }

    close(v5);
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v4 = v3;
LABEL_10:
  sub_100001108();
LABEL_11:
  sub_100001108();
  return v4;
}

uint64_t sub_100019760(char *a1)
{
  if (!a1)
  {
    sub_1000217EC();
  }

  if (!*a1)
  {
    sub_1000217C0();
  }

  memset(v12, 0, 12);
  if (!if_nametoindex(a1))
  {
    v6 = 0;
    goto LABEL_24;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v6 = *__error();
    sub_100001108();
    v5 = 0;
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v3 = malloc_type_realloc(0, 0x2000uLL, 0x27C9CF9DuLL);
    if (!v3)
    {
      sub_100001108();
      v5 = 0;
      v6 = 12;
LABEL_18:
      close(v2);
      goto LABEL_19;
    }

    v4 = 0x2000;
    while (1)
    {
      v5 = v3;
      bzero(v3, v4);
      LODWORD(v12[0]) = v4;
      *(v12 + 4) = v5;
      if (__strlcpy_chk() >= 0x10 || (v14 = xmmword_100023520, v15 = v12, ioctl(v2, 0xC028697BuLL, &v13) < 0))
      {
        v6 = *__error();
        sub_100001108();
        goto LABEL_17;
      }

      if (LODWORD(v12[0]) + 80 < v4)
      {
        break;
      }

      v15 = 0;
      v4 = (2 * v4);
      v13 = 0u;
      v14 = 0u;
      v3 = malloc_type_realloc(v5, v4, 0x27C9CF9DuLL);
      if (!v3)
      {
        sub_100001108();
        free(v5);
        v5 = 0;
        v6 = 12;
        goto LABEL_17;
      }
    }

    v6 = 0;
  }

LABEL_17:
  if (v2 != -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v5 && v6)
  {
    free(v5);
    *(v12 + 4) = 0;
LABEL_23:
    sub_100001108();
    goto LABEL_24;
  }

  if (v6)
  {
    goto LABEL_23;
  }

  if (LODWORD(v12[0]) >= 0x50)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v12 + 4) + v8;
      if ((*(v12 + 4))[v8])
      {
        sub_100001108();
        sub_100011914(v10);
        sub_100011A90(v10);
        sub_10000FE60(v10);
        v11 = sub_10001A2D4(a1);
        sub_10001028C(v10, 1, 1, 1);
        if (v11)
        {
          sub_100001108();
        }
      }

      ++v9;
      v8 += 80;
    }

    while (v9 < LODWORD(v12[0]) / 0x50uLL);
  }

  sub_100011914(a1);
  sub_100011A90(a1);
  sub_100010824(a1, 0, 0);
  v6 = sub_100019AC0();
LABEL_24:
  if (*(v12 + 4))
  {
    free(*(v12 + 4));
    *(v12 + 4) = 0;
  }

  if (v6)
  {
    sub_100001108();
  }

  return v6;
}

uint64_t sub_100019AC0()
{
  v3 = 0u;
  v4 = 0u;
  v0 = socket(2, 2, 0);
  if (v0 < 0)
  {
    v1 = *__error();
    sub_100001108();
    if (v0 == -1)
    {
      return v1;
    }

    goto LABEL_10;
  }

  v3 = 0u;
  v4 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    v1 = *__error();
LABEL_9:
    sub_100001108();
    goto LABEL_10;
  }

  if (ioctl(v0, 0x80206979uLL, &v3) < 0)
  {
    v1 = *__error();
    goto LABEL_9;
  }

  sub_100001108();
  v1 = 0;
LABEL_10:
  close(v0);
  return v1;
}

uint64_t sub_100019BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021818();
  }

  if (sub_10000FCF8(v1 + 20, -1))
  {
    sub_100001108();
  }

  v2 = sub_100019AC0();
  if (v2)
  {
    sub_100001108();
  }

  return v2;
}

uint64_t sub_100019C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021844();
  }

  if (*(a1 + 372) != 2)
  {
    sub_100021870();
  }

  v2 = *(a1 + 24);
  v3 = sub_100019D40(v2 + 20, v1 + 20);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if ((*(v2 + 776) & 1) == 0)
    {
      return 0;
    }

    v4 = sub_100019E38(v2 + 20, v1 + 20, 0x8000);
    if (!v4)
    {
      return v4;
    }
  }

  sub_100001108();
  return v4;
}

uint64_t sub_100019D40(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  if (__strlcpy_chk() >= 0x10 || (v3 = socket(2, 2, 0), v3 < 0))
  {
    v5 = *__error();
    sub_100001108();
  }

  else
  {
    v4 = v3;
    v5 = sub_10001A578(a2, v3, 0, "BRDGADD", v7, 1);
    close(v4);
  }

  return v5;
}

uint64_t sub_100019E38(uint64_t a1, uint64_t a2, int a3)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (__strlcpy_chk() >= 0x10 || (v5 = socket(2, 2, 0), v5 < 0))
  {
    v7 = *__error();
    sub_100001108();
  }

  else
  {
    v6 = v5;
    v7 = sub_10001A578(a2, v5, 2, "BRDGGIFFLGS", &v9, 0);
    if (!v7)
    {
      LODWORD(v10) = v10 | a3;
      v7 = sub_10001A578(a2, v6, 3, "BRDGSIFFLGS", &v9, 1);
    }

    close(v6);
  }

  return v7;
}

uint64_t sub_100019F70(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 16) + 8) != 104)
  {
    sub_10002189C();
  }

  v2 = sub_100019FE0(a1, a2);
  if (v2)
  {
    sub_100001108();
  }

  return v2;
}

uint64_t sub_100019FE0(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v2 = *(a1 + 16);
  if (*(v2 + 8) != 104)
  {
    sub_1000218C8();
  }

  v5 = (a2 + 20);
  if (sub_1000124AC((a2 + 20), &v17))
  {
    sub_100001108();
  }

  v6 = sub_100010824(v5, v17, 0);
  if (v6)
  {
    v7 = v6;
    sub_100001108();
LABEL_27:
    sub_100001108();
    return v7;
  }

  v8 = sub_1000117F4(v5);
  if (v8)
  {
    v7 = v8;
    sub_100001108();
LABEL_26:
    sub_10001028C(v5, 1, v17, 0);
    goto LABEL_27;
  }

  v9 = sub_100019D40(v5, v2 + 20);
  if (v9)
  {
    v7 = v9;
    sub_100001108();
LABEL_25:
    sub_100011914(v5);
    goto LABEL_26;
  }

  v10 = sub_100010EC0(v5);
  if (v10)
  {
    v7 = v10;
LABEL_24:
    sub_100001108();
    sub_10001A2D4(v5);
    goto LABEL_25;
  }

  v11 = sub_10000FCF8(v5, 1);
  if (v11)
  {
    v7 = v11;
    goto LABEL_24;
  }

  v12 = *(a2 + 312);
  v13 = (v12 << 10) & 0x800;
  if ((v12 & 4) != 0)
  {
    v14 = v13 | 0x20000;
  }

  else if (v12)
  {
    v14 = v13 | 0x10000;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = 2048;
  }

  v15 = sub_100019E38(v5, v2 + 20, v14);
  if (v15)
  {
    v7 = v15;
    goto LABEL_24;
  }

LABEL_22:
  if ((*(a1 + 392) & 6) == 0)
  {
    return 0;
  }

  v7 = sub_10001191C(v5);
  if (v7)
  {
    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_10001A200(uint64_t a1)
{
  if (*(*(a1 + 16) + 8) != 104)
  {
    sub_1000218F4();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    while (1)
    {
      v3 = sub_100019FE0(a1, v2);
      if (v3)
      {
        break;
      }

      v2 = *(v2 + 280);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v4 = v3;
    goto LABEL_10;
  }

LABEL_5:
  if (*(a1 + 372) != 2)
  {
    return 0;
  }

  v4 = sub_100019C80(a1);
  if (v4)
  {
LABEL_10:
    sub_100001108();
    sub_100001108();
  }

  return v4;
}

uint64_t sub_10001A2D4(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  if (__strlcpy_chk() >= 0x10 || (v2 = socket(2, 2, 0), v2 < 0))
  {
    v4 = *__error();
    sub_100001108();
  }

  else
  {
    v3 = v2;
    v4 = sub_10001A578(a1, v2, 1, "BRDGDEL", v6, 1);
    close(v3);
  }

  return v4;
}

uint64_t sub_10001A3C8(char *__str)
{
  if (!__str)
  {
    sub_100021920();
  }

  v2 = 100;
  while (1)
  {
    snprintf(__str, 0x10uLL, "%s%d", "bridge", v2);
    if (!if_nametoindex(__str))
    {
      break;
    }

    if (++v2 == 0x7FFFFFFF)
    {
      return 22;
    }
  }

  sub_100001108();
  return 0;
}

void sub_10001A46C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 104)
  {
    sub_10002194C();
  }

  if (sub_100011A90((a2 + 20)))
  {
    sub_100001108();
  }

  if (sub_100011914((a2 + 20)))
  {
    sub_100001108();
  }

  if (sub_10000FE60((a2 + 20)))
  {
    sub_100001108();
  }

  if (sub_10001A2D4(a1 + 20) || sub_10001028C((a2 + 20), 1, 1, 1))
  {
    sub_100001108();
  }

  sub_10000669C(a2);
}

uint64_t sub_10001A578(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    v10 = __error();
    v11 = *v10;
    strerror(*v10);
LABEL_9:
    sub_100001108();
    return v11;
  }

  *&v16 = a3;
  *(&v16 + 1) = 80;
  v17 = a5;
  if (a6)
  {
    v12 = ioctl(a2, 0x8028697BuLL, &v15);
  }

  else
  {
    v12 = ioctl(a2, 0xC028697BuLL, &v15);
  }

  if (v12 < 0)
  {
    v13 = __error();
    v11 = *v13;
    strerror(*v13);
    goto LABEL_9;
  }

  sub_100001108();
  return 0;
}

void sub_10001A6F8()
{
  v0 = word_100034BCC;
  if (word_100034BCC <= word_100034BCE)
  {
    if (word_100034BCC)
    {
      v1 = 1;
    }

    else
    {
      v1 = word_100034BCE == 0;
    }

    if (!v1)
    {
      word_100034BCC = word_100034BCE;
    }
  }

  else
  {
    if (word_100034BCE)
    {
      word_100034BCC = word_100034BCE;
    }

    word_100034BCE = v0;
  }
}

uint64_t sub_10001A73C()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C38;
    if (qword_100034C38)
    {
      v4 = 1;
      do
      {
        if ((*(v3 + 296) - 1) <= 1 && *(v3 + 372) == 1 && (*(v3 + 392) & 8) != 0)
        {
          v5 = sub_10001A938((*(v3 + 16) + 20), v1, v2);
          if (v5)
          {
            v9 = v5;
            sub_100001108();
            goto LABEL_15;
          }

          v6 = *(v3 + 24);
          if (*(v6 + 754) == 1)
          {
            v7 = sub_10001AAB0((v6 + 20), (*(v3 + 16) + 20), v1, v2, (v6 + 304), *(v6 + 325));
            if (v7)
            {
              v9 = v7;
              goto LABEL_23;
            }
          }

          v8 = sub_10001AD54((*(v3 + 16) + 20), v1, v2);
          if (v8)
          {
            v9 = v8;
LABEL_23:
            sub_100001108();
            goto LABEL_15;
          }

          v4 = 0;
        }

        v3 = *v3;
      }

      while (v3);
      if (v4)
      {
        goto LABEL_14;
      }

      PFUserCommitRules();
      v9 = 0;
    }

    else
    {
LABEL_14:
      v9 = 0;
LABEL_15:
      PFUserClearRules();
      PFUserDeleteRules();
    }

    PFUserRelease();
  }

  else
  {
    sub_100001108();
    return 12;
  }

  return v9;
}

uint64_t sub_10001A938(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      xpc_dictionary_set_uint64(v7, kPFAction, 1uLL);
      xpc_dictionary_set_uint64(v7, kPFDirection, 1uLL);
      xpc_dictionary_set_string(v7, kPFInterface, a1);
      xpc_dictionary_set_uint64(v7, kPFFamily, 0x1EuLL);
      xpc_dictionary_set_uint64(v9, kPFSubReturnType, 8uLL);
      xpc_dictionary_set_value(v7, kPFReturnOptions, v9);
      xpc_release(v9);
      if (sub_10001B868(a2, a3, v7))
      {
        v10 = 0;
      }

      else
      {
        sub_100001108();
        v10 = 22;
      }
    }

    else
    {
      sub_100001108();
      v10 = 12;
    }

    xpc_release(v7);
  }

  else
  {
    sub_100001108();
    return 12;
  }

  return v10;
}

uint64_t sub_10001AAB0(const char *a1, const char *a2, uint64_t a3, uint64_t a4, const void *a5, int a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    xpc_dictionary_set_uint64(v12, kPFAction, 0);
    xpc_dictionary_set_uint64(v13, kPFDirection, 1uLL);
    xpc_dictionary_set_string(v13, kPFInterface, a2);
    xpc_dictionary_set_uint64(v13, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_uint64(v13, kPFKeepState, 1uLL);
    v14 = if_nametoindex(a1);
    if (v14)
    {
      xpc_dictionary_set_uint64(v13, kPFRTableID, v14);
      v15 = xpc_dictionary_create(0, 0, 0);
      if (v15)
      {
        v16 = v15;
        inet_ntop(30, a5, v22, 0x2Eu);
        snprintf(__str, 0x36uLL, "%s/%d", v22, a6);
        xpc_dictionary_set_string(v16, kPFSubAddress, __str);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          v18 = v17;
          xpc_dictionary_set_string(v17, kPFSubAddressLabel, kPFAny);
          xpc_dictionary_set_value(v13, kPFFrom, v16);
          xpc_dictionary_set_value(v13, kPFTo, v18);
          if (sub_10001B868(a3, a4, v13))
          {
            v19 = 0;
          }

          else
          {
            sub_100001108();
            v19 = 22;
          }

          xpc_release(v16);
          xpc_release(v18);
          goto LABEL_14;
        }

        sub_100001108();
        xpc_release(v16);
      }

      else
      {
        sub_100001108();
      }

      v19 = 12;
    }

    else
    {
      sub_100001108();
      v19 = 6;
    }

LABEL_14:
    xpc_release(v13);
    return v19;
  }

  sub_100001108();
  return 12;
}

uint64_t sub_10001AD54(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
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
    *string = 0u;
    v15 = 0u;
    xpc_dictionary_set_uint64(v6, kPFAction, 0);
    xpc_dictionary_set_uint64(v7, kPFDirection, 1uLL);
    xpc_dictionary_set_string(v7, kPFInterface, a1);
    xpc_dictionary_set_uint64(v7, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_uint64(v7, kPFKeepState, 1uLL);
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      strcpy(string, "fe80::/10");
      xpc_dictionary_set_string(v8, kPFSubAddress, string);
      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        xpc_dictionary_set_string(v10, kPFSubAddressLabel, kPFAny);
        xpc_dictionary_set_value(v7, kPFFrom, v9);
        xpc_dictionary_set_value(v7, kPFTo, v11);
        if (sub_10001B868(a2, a3, v7))
        {
          v12 = 0;
        }

        else
        {
          sub_100001108();
          v12 = 22;
        }

        xpc_release(v9);
        xpc_release(v11);
        goto LABEL_12;
      }

      sub_100001108();
      xpc_release(v9);
    }

    else
    {
      sub_100001108();
    }

    v12 = 12;
LABEL_12:
    xpc_release(v7);
    return v12;
  }

  sub_100001108();
  return 12;
}

uint64_t sub_10001AFB0()
{
  v0 = PFUserCreate();
  if (!v0)
  {
    sub_100001108();
    return 12;
  }

  v1 = v0;
  v2 = PFUserBeginRules();
  v3 = qword_100034C38;
  if (!qword_100034C38)
  {
    v10 = 0;
    goto LABEL_29;
  }

  v4 = 1;
  while (1)
  {
    if ((*(v3 + 296) - 1) > 1 || *(v3 + 372) != 1 || (*(v3 + 392) & 2) == 0)
    {
      goto LABEL_18;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    if (!v5)
    {
      sub_100001108();
      goto LABEL_25;
    }

    v6 = v5;
    v7 = xpc_dictionary_create(0, 0, 0);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      inet_ntop(2, (*(v3 + 24) + 740), string, 0x10u);
      inet_ntop(30, (v3 + 416), v14, 0x2Eu);
      sub_100001108();
      snprintf(__str, 0x32uLL, "%s/%u", v14, *(v3 + 432));
      xpc_dictionary_set_uint64(v6, kPFAction, 0xDuLL);
      xpc_dictionary_set_uint64(v6, kPFFamily, 0x1EuLL);
      xpc_dictionary_set_string(v8, kPFSubAddress, __str);
      xpc_dictionary_set_value(v6, kPFTo, v8);
      xpc_dictionary_set_string(v9, kPFSubAddress, string);
      xpc_dictionary_set_uint64(v9, kPFSubLowPort, 0x8000uLL);
      xpc_dictionary_set_uint64(v9, kPFSubHighPort, 0xBFFFuLL);
      xpc_dictionary_set_uint64(v9, kPFSubPortOperator, 0);
      xpc_dictionary_set_value(v6, kPFNATRDRAddress, v9);
      if (sub_10001B868(v1, v2, v6))
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        sub_100001108();
        v11 = 0;
        v10 = 22;
      }
    }

    else
    {
      sub_100001108();
      v11 = 0;
      v10 = 12;
    }

    xpc_release(v6);
    xpc_release(v8);
    if (v9)
    {
      xpc_release(v9);
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_26;
    }

    v4 = 0;
LABEL_18:
    v3 = *v3;
    if (!v3)
    {
      v10 = 0;
      if (v4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  sub_100001108();
  xpc_release(v6);
LABEL_25:
  v10 = 12;
LABEL_26:
  sub_100001108();
  if (v4)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v10)
  {
    PFUserCommitRules();
    goto LABEL_30;
  }

LABEL_29:
  PFUserClearRules();
  PFUserDeleteRules();
LABEL_30:
  PFUserRelease();
  return v10;
}

uint64_t sub_10001B368()
{
  v0 = PFUserCreate();
  v1 = PFUserBeginRules();
  if (sub_10001B614(v0, v1, 2u) && sub_10001B614(v0, v1, 0x1Eu))
  {
    v2 = &qword_100034C38;
    do
    {
      v2 = *v2;
      if (!v2)
      {
        PFUserDeleteRules();
        goto LABEL_15;
      }
    }

    while ((*(v2 + 74) - 1) > 1 || *(v2 + 93) == 2 || (*(v2 + 9) & 1) == 0);
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, kPFAction, 1uLL);
    xpc_dictionary_set_BOOL(v3, kPFQuick, 1);
    xpc_dictionary_set_uint64(v3, kPFFamily, 2uLL);
    xpc_dictionary_set_string(v4, kPFSubTable, "network_isolation_table_v4");
    xpc_dictionary_set_value(v3, kPFFrom, v4);
    xpc_dictionary_set_value(v3, kPFTo, v4);
    if (!sub_10001B868(v0, v1, v3))
    {
      goto LABEL_11;
    }

    xpc_release(v3);
    xpc_release(v4);
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, kPFAction, 1uLL);
    xpc_dictionary_set_BOOL(v5, kPFQuick, 1);
    xpc_dictionary_set_uint64(v5, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_string(v6, kPFSubTable, "network_isolation_table_v6");
    xpc_dictionary_set_value(v5, kPFFrom, v6);
    xpc_dictionary_set_value(v5, kPFTo, v6);
    if (!sub_10001B868(v0, v1, v5))
    {
      goto LABEL_11;
    }

    xpc_release(v5);
    xpc_release(v6);
    if ((PFUserCommitRules() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v7 = 1;
    if (v0)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
    if (v0)
    {
LABEL_12:
      PFUserRelease();
    }
  }

  return v7;
}

uint64_t sub_10001B614(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = qword_100034C38;
  if (!qword_100034C38)
  {
    return 1;
  }

  v7 = a3;
  while (1)
  {
    if (*(v3 + 296) - 1) <= 1 && *(v3 + 372) != 2 && (*(v3 + 9))
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v8, kPFAction, 0);
      xpc_dictionary_set_string(v8, kPFInterface, (*(v3 + 16) + 20));
      xpc_dictionary_set_BOOL(v8, kPFQuick, 1);
      xpc_dictionary_set_uint64(v8, kPFFamily, v7);
      xpc_dictionary_set_uint64(v8, kPFKeepState, 1uLL);
      v9 = xpc_dictionary_create(0, 0, 0);
      if (a3 == 30)
      {
        inet_ntop(30, (v3 + 396), __s, 0x32u);
        v11 = strlen(__s);
        snprintf(&__s[v11], 50 - v11, "/%u", *(v3 + 412));
      }

      else
      {
        if (a3 != 2)
        {
          sub_100021998();
        }

        v10 = sub_100012234(*(v3 + 384));
        inet_net_ntop(2, (v3 + 380), v10, __s, 0x13uLL);
      }

      xpc_dictionary_set_string(v9, kPFSubAddress, __s);
      xpc_dictionary_set_value(v8, kPFFrom, v9);
      xpc_dictionary_set_value(v8, kPFTo, v9);
      if (v9)
      {
        xpc_release(v9);
      }

      v12 = sub_10001B868(a1, a2, v8);
      xpc_release(v8);
      if (!v12)
      {
        break;
      }
    }

    v3 = *v3;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10001B868(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if (byte_100034BED)
  {
    v6 = qword_1000351D0;
    if (!qword_1000351D0)
    {
      qword_1000351D0 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(qword_1000351D0, kPFSubLogFlags, 1uLL);
      v6 = qword_1000351D0;
    }

    xpc_dictionary_set_value(xdict, kPFLog, v6);
  }

  return _PFUserAddRule(a1, a2, xdict);
}

uint64_t sub_10001B90C(int a1)
{
  v2 = PFUserCreate();
  v3 = PFTableCreate();
  v4 = PFTableCreate();
  PFTableBegin();
  PFTableBegin();
  v5 = qword_100034C38;
  if (!qword_100034C38)
  {
LABEL_24:
    PFTableDelete();
    PFTableDelete();
    goto LABEL_25;
  }

  v6 = 0;
  do
  {
    while ((*(v5 + 296) - 1) <= 1 && *(v5 + 372) != 2 && (*(v5 + 9) & 1) != 0)
    {
      switch(a1)
      {
        case 0:
          goto LABEL_11;
        case 30:
          goto LABEL_12;
        case 2:
LABEL_11:
          v7 = sub_100012234(*(v5 + 384));
          inet_net_ntop(2, (v5 + 380), v7, string, 0x32uLL);
          v8 = xpc_string_create(string);
          PFTableAddAddress();
          xpc_release(v8);
          if (!a1)
          {
LABEL_12:
            inet_net_ntop(30, (v5 + 396), *(v5 + 412), string, 0x32uLL);
            v9 = xpc_string_create(string);
            PFTableAddAddress();
            xpc_release(v9);
          }

          break;
      }

      v5 = *v5;
      v6 = 1;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    v5 = *v5;
  }

  while (v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  switch(a1)
  {
    case 0:
LABEL_19:
      if (!PFTableCommit())
      {
        goto LABEL_22;
      }

      if (a1)
      {
        break;
      }

LABEL_21:
      if (PFTableCommit())
      {
        break;
      }

LABEL_22:
      v10 = 0;
      if (v3)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    case 30:
      goto LABEL_21;
    case 2:
      goto LABEL_19;
  }

LABEL_25:
  v10 = 1;
  if (v3)
  {
LABEL_26:
    CFRelease(v3);
  }

LABEL_27:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    PFUserRelease();
  }

  return v10;
}

uint64_t sub_10001BB78()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C38;
    if (qword_100034C38)
    {
      v4 = 1;
      while (1)
      {
        if ((*(v3 + 296) - 1) <= 1 && *(v3 + 372) == 1)
        {
          v5 = *(v3 + 480);
          if (v5)
          {
            break;
          }
        }

LABEL_10:
        v3 = *v3;
        if (!v3)
        {
          goto LABEL_14;
        }
      }

      while (1)
      {
        v6 = sub_10001BD40(v3, v5, v1, v2);
        if (v6)
        {
          break;
        }

        v5 = *v5;
        if (!v5)
        {
          v4 = 0;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = 1;
LABEL_14:
      v8 = qword_100034C18;
      if (!qword_100034C18)
      {
LABEL_24:
        if ((v4 & 1) == 0)
        {
          PFUserCommitRules();
          v7 = 0;
          goto LABEL_28;
        }

        v7 = 0;
LABEL_27:
        PFUserClearRules();
        PFUserDeleteRules();
LABEL_28:
        PFUserRelease();
        return v7;
      }

      while (1)
      {
        v9 = v8[5];
        if (v9)
        {
          v10 = *(v9 + 288);
          if (v10)
          {
            if ((*(v10 + 296) - 1) <= 1 && *(v10 + 372) == 1)
            {
              v11 = v8[3];
              if (v11)
              {
                break;
              }
            }
          }
        }

LABEL_23:
        v8 = *v8;
        if (!v8)
        {
          goto LABEL_24;
        }
      }

      while (1)
      {
        v6 = sub_10001BD40(*(v8[5] + 288), v11, v1, v2);
        if (v6)
        {
          break;
        }

        v11 = *v11;
        if (!v11)
        {
          v4 = 0;
          goto LABEL_23;
        }
      }
    }

    v7 = v6;
    goto LABEL_27;
  }

  sub_100001108();
  return 12;
}

uint64_t sub_10001BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  if ((*(v7 + 776) & 2) != 0)
  {
    if (*(a2 + 9) == 30)
    {
      v9 = &qword_100034C00;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        v10 = sub_10001DD2C(v9 + 8, *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
        if (v10)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v11 = &qword_100034BF8;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        v10 = sub_10001DD2C(v11 + 8, *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
        if (v10)
        {
LABEL_12:
          v8 = v10;
          goto LABEL_13;
        }
      }
    }

    return 0;
  }

  else
  {
    v8 = sub_10001DD2C((v7 + 20), *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
    if (v8)
    {
LABEL_13:
      sub_100001108();
    }
  }

  return v8;
}

uint64_t sub_10001BE98()
{
  v0 = PFUserCreate();
  if (!v0)
  {
    sub_100001108();
    return 12;
  }

  v1 = v0;
  v2 = PFUserBeginRules();
  v3 = qword_100034C30;
  if (qword_100034C30)
  {
    v4 = 1;
    do
    {
      v5 = *(v3 + 784);
      if (v5)
      {
        while ((*(v3 + 776) & 2) != 0 || (*(v5 + 296) - 1) > 1 || *(v5 + 372) != 1 || (*(v5 + 376) & 2) == 0)
        {
          v5 = *(v5 + 528);
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        v6 = sub_10001C678((v3 + 20), 0, 0, v1, v2);
        v4 = 0;
        if (v6)
        {
          v7 = v6;
          goto LABEL_98;
        }
      }

LABEL_10:
      v3 = *(v3 + 280);
    }

    while (v3);
  }

  else
  {
    v4 = 1;
  }

  v8 = &qword_100034BA8;
  v9 = qword_100034BF8;
  if (qword_100034BA8)
  {
    v10 = qword_100034BF8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    do
    {
      if (*(v9 + 41) == 1)
      {
        v11 = sub_10001C678((v9 + 8), 0, 0, v1, v2);
        v4 = 0;
        if (v11)
        {
          v7 = v11;
          goto LABEL_98;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  for (i = qword_100034C38; i; i = *i)
  {
    if ((*(i + 296) - 1) <= 1 && *(i + 372) == 1 && (*(i + 376) & 2) != 0)
    {
      v13 = *(i + 16);
      if (*(v13 + 16) >= *(*(i + 24) + 16))
      {
        v14 = *(*(i + 24) + 16);
      }

      else
      {
        v14 = *(v13 + 16);
      }

      v15 = sub_10001C678((v13 + 20), 0, v14, v1, v2);
      if (v15)
      {
        v7 = v15;
        goto LABEL_98;
      }

      v16 = sub_10001C678((*(i + 16) + 20), 0x32u, 0, v1, v2);
      if (v16)
      {
        v7 = v16;
        goto LABEL_98;
      }

      if (!inet_ntop(2, (i + 380), v54, 0x10u))
      {
        v7 = 22;
        goto LABEL_104;
      }

      v17 = *(i + 24);
      if ((*(v17 + 776) & 2) != 0)
      {
        for (j = qword_100034BF8; j; j = *j)
        {
          if (*(j + 41) == 1)
          {
            v21 = bswap32(*(i + 384));
            if ((v21 & 0x80000000) != 0)
            {
              v23 = 0;
              do
              {
                v24 = v23-- + 30;
              }

              while (((v21 >> v24) & 1) != 0);
              v22 = -v23;
            }

            else
            {
              v22 = 0;
            }

            v25 = sub_10001C7F4((j + 8), 2u, v54, v22, v1, v2);
            if (v25)
            {
              v7 = v25;
LABEL_104:
              sub_100001108();
              if (v4)
              {
                goto LABEL_107;
              }

LABEL_105:
              if (v7)
              {
                goto LABEL_107;
              }

              PFUserCommitRules();
              goto LABEL_108;
            }

            v26 = sub_10001CC20((j + 8), 2, v1, v2);
            if (v26)
            {
              v7 = v26;
              goto LABEL_104;
            }
          }
        }
      }

      else
      {
        v18 = bswap32(*(i + 384));
        if ((v18 & 0x80000000) != 0)
        {
          v27 = 0;
          do
          {
            v28 = v27-- + 30;
          }

          while (((v18 >> v28) & 1) != 0);
          v19 = -v27;
        }

        else
        {
          v19 = 0;
        }

        v29 = sub_10001C7F4((v17 + 20), 2u, v54, v19, v1, v2);
        if (v29)
        {
          v7 = v29;
          goto LABEL_104;
        }

        v30 = sub_10001CAD0((*(i + 24) + 20), (*(i + 16) + 20), v1, v2);
        if (v30)
        {
          v7 = v30;
          goto LABEL_104;
        }
      }

      v31 = *(i + 16);
      v32 = *(i + 384);
      v53 = *(i + 380);
      v33 = xpc_dictionary_create(0, 0, 0);
      if (!v33)
      {
        sub_100001108();
LABEL_103:
        v7 = 12;
        goto LABEL_104;
      }

      v34 = v33;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *__str = 0u;
      v57 = 0u;
      xpc_dictionary_set_uint64(v33, kPFAction, 5uLL);
      xpc_dictionary_set_string(v34, kPFInterface, (v31 + 20));
      xpc_dictionary_set_uint64(v34, kPFFamily, 2uLL);
      v35 = xpc_dictionary_create(0, 0, 0);
      if (!v35)
      {
        sub_100001108();
LABEL_102:
        xpc_release(v34);
        goto LABEL_103;
      }

      v36 = v35;
      v37 = v8;
      inet_ntop(2, &v53, string, 0x10u);
      xpc_dictionary_set_string(v36, kPFSubAddress, string);
      v38 = xpc_dictionary_create(0, 0, 0);
      if (!v38)
      {
        sub_100001108();
        xpc_release(v36);
        goto LABEL_102;
      }

      v39 = v38;
      v40 = bswap32(v32);
      if ((v40 & 0x80000000) != 0)
      {
        v42 = 0;
        do
        {
          v43 = v42-- + 30;
        }

        while (((v40 >> v43) & 1) != 0);
        v41 = -v42;
      }

      else
      {
        v41 = 0;
      }

      snprintf(__str, 0x100uLL, "%s/%d", string, v41);
      xpc_dictionary_set_string(v39, kPFSubAddress, __str);
      xpc_dictionary_set_value(v34, kPFFrom, v36);
      xpc_dictionary_set_value(v34, kPFTo, v39);
      v44 = sub_10001B868(v1, v2, v34);
      if (v44)
      {
        v7 = 0;
      }

      else
      {
        sub_100001108();
        v7 = 22;
      }

      xpc_release(v36);
      xpc_release(v39);
      xpc_release(v34);
      if (!v44)
      {
        goto LABEL_104;
      }

      if (byte_1000351C4 == 1 && (*(*(i + 24) + 776) & 2) == 0)
      {
        v45 = sub_10001CCAC((*(i + 16) + 20), *(i + 380), *(i + 384), v1, v2);
        if (v45)
        {
          v7 = v45;
          goto LABEL_104;
        }
      }

      v4 = 0;
      v8 = v37;
    }
  }

  v46 = qword_100034C30;
  if (!qword_100034C30)
  {
LABEL_80:
    v49 = qword_100034BF8;
    if (*v8)
    {
      v50 = qword_100034BF8 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      do
      {
        if (*(v49 + 41) == 1)
        {
          v51 = sub_10001D00C((v49 + 8), v1, v2, 2u);
          if (v51)
          {
            v7 = v51;
            goto LABEL_98;
          }

          v4 = 0;
        }

        v49 = *v49;
      }

      while (v49);
    }

    v7 = 0;
    if (v4)
    {
      goto LABEL_107;
    }

    goto LABEL_105;
  }

  while (1)
  {
    v47 = *(v46 + 784);
    if (v47)
    {
      break;
    }

LABEL_76:
    v46 = *(v46 + 280);
    if (!v46)
    {
      goto LABEL_80;
    }
  }

  while ((*(v46 + 776) & 2) != 0 || (*(v47 + 296) - 1) > 1 || *(v47 + 372) != 1 || (*(v47 + 376) & 2) == 0)
  {
    v47 = *(v47 + 528);
    if (!v47)
    {
      goto LABEL_76;
    }
  }

  v48 = sub_10001D00C((v46 + 20), v1, v2, 2u);
  if (!v48)
  {
    v4 = 0;
    goto LABEL_76;
  }

  v7 = v48;
LABEL_98:
  sub_100001108();
LABEL_107:
  PFUserClearRules();
  PFUserDeleteRules();
LABEL_108:
  PFUserRelease();
  return v7;
}

uint64_t sub_10001C678(const char *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    sub_100001108();
    return 12;
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, kPFAction, 2uLL);
  xpc_dictionary_set_uint64(v11, kPFProtocol, a2);
  xpc_dictionary_set_string(v11, kPFInterface, a1);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    sub_100001108();
    xpc_release(v11);
    return 12;
  }

  v13 = v12;
  xpc_dictionary_set_uint64(v12, kPFSubScrubMaxMSS, a3);
  xpc_dictionary_set_uint64(v13, kPFSubScrubFlags, 0x100uLL);
  xpc_dictionary_set_value(v11, kPFScrubOptions, v13);
  if (sub_10001B868(a4, a5, v11))
  {
    v14 = 0;
  }

  else
  {
    sub_100001108();
    v14 = 22;
  }

  xpc_release(v13);
  xpc_release(v11);
  return v14;
}

uint64_t sub_10001C7F4(const char *a1, unsigned int a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    sub_100001108();
    return 12;
  }

  v13 = v12;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
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
  *__str = 0u;
  v21 = 0u;
  snprintf(__str, 0x100uLL, "%s:0", a1);
  xpc_dictionary_set_string(v13, kPFSubDynInterface, __str);
  xpc_dictionary_set_uint64(v13, kPFSubLowPort, 0x8000uLL);
  xpc_dictionary_set_uint64(v13, kPFSubHighPort, 0xBFFFuLL);
  xpc_dictionary_set_uint64(v13, kPFSubPortOperator, 0);
  v14 = xpc_dictionary_create(0, 0, 0);
  if (!v14)
  {
    sub_100001108();
    xpc_release(v13);
    return 12;
  }

  v15 = v14;
  xpc_dictionary_set_uint64(v14, kPFAction, 4uLL);
  xpc_dictionary_set_string(v15, kPFInterface, a1);
  xpc_dictionary_set_uint64(v15, kPFFamily, a2);
  xpc_dictionary_set_uint64(v15, kPFExtFilter, 3uLL);
  xpc_dictionary_set_uint64(v15, kPFExtMap, 3uLL);
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v17 = v16;
    snprintf(__str, 0x100uLL, "%s/%d", a3, a4);
    xpc_dictionary_set_string(v17, kPFSubAddress, __str);
    xpc_dictionary_set_value(v15, kPFFrom, v17);
    xpc_dictionary_set_value(v15, kPFNATRDRAddress, v13);
    if (sub_10001B868(a5, a6, v15))
    {
      v18 = 0;
    }

    else
    {
      sub_100001108();
      v18 = 22;
    }

    xpc_release(v13);
  }

  else
  {
    sub_100001108();
    v18 = 12;
    v17 = v13;
  }

  xpc_release(v17);
  xpc_release(v15);
  return v18;
}

uint64_t sub_10001CAD0(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = if_nametoindex(a1);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, kPFAction, 0);
      xpc_dictionary_set_string(v10, kPFInterface, a2);
      xpc_dictionary_set_uint64(v10, kPFRTableID, v8);
      xpc_dictionary_set_uint64(v10, kPFKeepState, 1uLL);
      xpc_dictionary_set_uint64(v10, kPFExtFilter, 1uLL);
      if (sub_10001B868(a3, a4, v10))
      {
        v11 = 0;
      }

      else
      {
        sub_100001108();
        v11 = 22;
      }

      xpc_release(v10);
    }

    else
    {
      sub_100001108();
      return 12;
    }
  }

  else
  {
    sub_100001108();
    return 6;
  }

  return v11;
}

uint64_t sub_10001CC20(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v7 = &unk_100034A60;
  }

  else
  {
    v7 = &unk_100034A70;
  }

  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    result = sub_10001DD2C(a1, *(v7 + 44), *(v7 + 21), *(v7 + 21), *(v7 + 20), *(v7 + 20), *(v7 + 45), v7 + 3, a3, a4);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10001CCAC(const char *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v9 = xpc_dictionary_create(0, 0, 0);
  if (!v9)
  {
    sub_100001108();
    return 12;
  }

  v10 = v9;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  xpc_dictionary_set_string(v9, kPFSubAddress, "127.0.0.1");
  xpc_dictionary_set_uint64(v10, kPFSubLowPort, 0x1F55uLL);
  xpc_dictionary_set_uint64(v10, kPFSubPortOperator, 0);
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11 && (xpc_dictionary_set_uint64(v11, kPFAction, 8uLL), xpc_dictionary_set_uint64(v12, kPFProtocol, 6uLL), xpc_dictionary_set_string(v12, kPFInterface, a1), xpc_dictionary_set_uint64(v12, kPFFamily, 2uLL), (v13 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v14 = v13;
    inet_ntop(2, &v23, v24, 0x10u);
    v15 = bswap32(a3);
    if ((v15 & 0x80000000) != 0)
    {
      v19 = 0;
      do
      {
        v20 = v19-- + 30;
      }

      while (((v15 >> v20) & 1) != 0);
      v16 = -v19;
    }

    else
    {
      v16 = 0;
    }

    snprintf(__str, 0x100uLL, "%s/%d", v24, v16);
    xpc_dictionary_set_string(v14, kPFSubAddress, __str);
    v21 = xpc_dictionary_create(0, 0, 0);
    v18 = v21;
    if (v21)
    {
      xpc_dictionary_set_string(v21, kPFSubAddressLabel, kPFAny);
      xpc_dictionary_set_uint64(v18, kPFSubLowPort, 0x15uLL);
      xpc_dictionary_set_uint64(v18, kPFSubPortOperator, 2uLL);
      xpc_dictionary_set_value(v12, kPFFrom, v14);
      xpc_dictionary_set_value(v12, kPFTo, v18);
      xpc_dictionary_set_value(v12, kPFNATRDRAddress, v10);
      if (sub_10001B868(a4, a5, v12))
      {
        v17 = 0;
      }

      else
      {
        sub_100001108();
        v17 = 22;
      }
    }

    else
    {
      sub_100001108();
      v17 = 12;
    }

    xpc_release(v10);
    xpc_release(v14);
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_100001108();
    v17 = 12;
    v18 = v10;
  }

  xpc_release(v18);
LABEL_18:
  if (v12)
  {
    xpc_release(v12);
  }

  return v17;
}

uint64_t sub_10001D00C(const char *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    sub_100001108();
    return 12;
  }

  v9 = v8;
  xpc_dictionary_set_uint64(v8, kPFAction, 0);
  xpc_dictionary_set_uint64(v9, kPFFamily, a4);
  xpc_dictionary_set_string(v9, kPFInterface, a1);
  xpc_dictionary_set_uint64(v9, kPFKeepState, 1uLL);
  xpc_dictionary_set_uint64(v9, kPFExtFilter, 1uLL);
  if ((sub_10001B868(a2, a3, v9) & 1) == 0)
  {
    sub_100001108();
    v12 = 22;
LABEL_9:
    v13 = v9;
LABEL_19:
    xpc_release(v13);
    return v12;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    sub_100001108();
    v12 = 12;
    goto LABEL_9;
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, kPFAction, 0);
  xpc_dictionary_set_uint64(v11, kPFFamily, a4);
  xpc_dictionary_set_string(v11, kPFInterface, a1);
  xpc_dictionary_set_uint64(v11, kPFProtocol, 0x32uLL);
  if (sub_10001B868(a2, a3, v11))
  {
    v12 = 0;
  }

  else
  {
    sub_100001108();
    v12 = 22;
  }

  if (a4 == 2)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      xpc_dictionary_set_uint64(v14, kPFAction, 0);
      xpc_dictionary_set_uint64(v15, kPFFamily, 2uLL);
      xpc_dictionary_set_uint64(v15, kPFProtocol, 2uLL);
      xpc_dictionary_set_uint64(v15, kPFKeepState, 1uLL);
      xpc_dictionary_set_BOOL(v15, kPFAllowOpts, 1);
      if ((sub_10001B868(a2, a3, v15) & 1) == 0)
      {
        sub_100001108();
        v12 = 22;
      }
    }

    else
    {
      sub_100001108();
      v12 = 12;
    }
  }

  else
  {
    v15 = 0;
  }

  xpc_release(v9);
  xpc_release(v11);
  if (v15)
  {
    v13 = v15;
    goto LABEL_19;
  }

  return v12;
}

uint64_t sub_10001D2DC()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C30;
    if (qword_100034C30)
    {
      v4 = 1;
      do
      {
        v5 = *(v3 + 784);
        if (v5)
        {
          while ((*(v3 + 776) & 2) != 0 || (*(v5 + 296) - 1) > 1 || *(v5 + 372) != 1 || (*(v5 + 392) & 4) == 0)
          {
            v5 = *(v5 + 528);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          v6 = sub_10001C678((v3 + 20), 0, 0, v1, v2);
          v4 = 0;
          if (v6)
          {
            v7 = v6;
            goto LABEL_77;
          }
        }

LABEL_10:
        v3 = *(v3 + 280);
      }

      while (v3);
    }

    else
    {
      v4 = 1;
    }

    v8 = qword_100034C00;
    if (qword_100034BA8)
    {
      v9 = qword_100034C00 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      do
      {
        if (*(v8 + 41) == 1)
        {
          v10 = sub_10001C678((v8 + 8), 0, 0, v1, v2);
          v4 = 0;
          if (v10)
          {
            v7 = v10;
            goto LABEL_77;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }

    for (i = qword_100034C38; i; i = *i)
    {
      if ((*(i + 296) - 1) <= 1 && *(i + 372) == 1 && (*(i + 392) & 4) != 0)
      {
        v12 = *(i + 16);
        if (*(v12 + 16) >= *(*(i + 24) + 16))
        {
          v13 = *(*(i + 24) + 16);
        }

        else
        {
          v13 = *(v12 + 16);
        }

        v14 = sub_10001C678((v12 + 20), 0, v13, v1, v2);
        if (v14)
        {
          v7 = v14;
          goto LABEL_77;
        }

        v15 = sub_10001C678((*(i + 16) + 20), 0x32u, 0, v1, v2);
        if (v15)
        {
          v7 = v15;
          goto LABEL_77;
        }

        if (!inet_ntop(30, (i + 396), v30, 0x2Eu))
        {
          sub_100001108();
          v7 = 22;
          goto LABEL_78;
        }

        v16 = *(i + 24);
        if ((*(v16 + 776) & 2) != 0)
        {
          for (j = qword_100034C00; j; j = *j)
          {
            if (*(j + 41) == 1)
            {
              v20 = sub_10001C7F4((j + 8), 0x1Eu, v30, *(i + 412), v1, v2);
              if (v20)
              {
                v7 = v20;
                goto LABEL_77;
              }

              v21 = sub_10001CC20((j + 8), 30, v1, v2);
              if (v21)
              {
                v7 = v21;
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
          v17 = sub_10001C7F4((v16 + 20), 0x1Eu, v30, *(i + 412), v1, v2);
          if (v17)
          {
            v7 = v17;
LABEL_77:
            sub_100001108();
LABEL_78:
            PFUserClearRules();
            PFUserDeleteRules();
            goto LABEL_79;
          }

          v18 = sub_10001CAD0((*(i + 24) + 20), (*(i + 16) + 20), v1, v2);
          if (v18)
          {
            v7 = v18;
            goto LABEL_77;
          }
        }

        v22 = sub_10001AD54((*(i + 16) + 20), v1, v2);
        if (v22)
        {
          v7 = v22;
          goto LABEL_77;
        }

        v4 = 0;
      }
    }

    for (k = qword_100034C30; k; k = *(k + 280))
    {
      v24 = *(k + 784);
      if (v24)
      {
        while ((*(k + 776) & 2) != 0 || (*(v24 + 296) - 1) > 1 || *(v24 + 372) != 1 || (*(v24 + 392) & 4) == 0)
        {
          v24 = *(v24 + 528);
          if (!v24)
          {
            goto LABEL_52;
          }
        }

        v25 = sub_10001D00C((k + 20), v1, v2, 0x1Eu);
        if (v25)
        {
          v7 = v25;
          goto LABEL_77;
        }

        v4 = 0;
      }

LABEL_52:
      ;
    }

    v26 = qword_100034C00;
    if (qword_100034BA8)
    {
      v27 = qword_100034C00 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      do
      {
        if (*(v26 + 41) == 1)
        {
          v28 = sub_10001D00C((v26 + 8), v1, v2, 0x1Eu);
          if (v28)
          {
            v7 = v28;
            goto LABEL_77;
          }

          v4 = 0;
        }

        v26 = *v26;
      }

      while (v26);
    }

    if (v4)
    {
      v7 = 0;
      goto LABEL_78;
    }

    PFUserCommitRules();
    v7 = 0;
LABEL_79:
    PFUserRelease();
  }

  else
  {
    sub_100001108();
    return 12;
  }

  return v7;
}

uint64_t sub_10001D840(int a1)
{
  v5 = a1;
  *v6 = xmmword_1000235C0;
  v1 = dword_1000351C8;
  if (a1)
  {
    ++dword_1000351C8;
    if (v1 > 0)
    {
      return 0;
    }
  }

  else
  {
    --dword_1000351C8;
    if (v1 != 1)
    {
      return 0;
    }
  }

  v3 = sysctl(v6, 4u, 0, 0, &v5, 4uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v2 = *__error();
  }

  else
  {
    v2 = v3;
  }

  sub_100001108();
  return v2;
}

uint64_t sub_10001D934(int a1)
{
  v5 = a1;
  *v6 = xmmword_1000235D0;
  v1 = dword_1000351CC;
  if (a1)
  {
    ++dword_1000351CC;
    if (v1 > 0)
    {
      return 0;
    }
  }

  else
  {
    --dword_1000351CC;
    if (v1 != 1)
    {
      return 0;
    }
  }

  v3 = sysctl(v6, 4u, 0, 0, &v5, 4uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v2 = *__error();
  }

  else
  {
    v2 = v3;
  }

  sub_100001108();
  return v2;
}

void sub_10001DA28()
{
  if (PFUserCreate())
  {
    PFUserDeleteRules();
    PFUserRelease();
    if (PFUserCreate())
    {
      PFUserDeleteRules();
      PFUserRelease();
      if (PFUserCreate())
      {
        PFUserDeleteRules();
        PFUserRelease();
        if (PFUserCreate())
        {
          PFUserDeleteRules();
          PFUserRelease();
          if (PFUserCreate())
          {
            PFUserDeleteRules();
            PFUserRelease();
            if (PFUserCreate())
            {
              PFUserDeleteRules();
              PFUserRelease();
              if (PFUserCreate())
              {
                PFUserDeleteRules();
                PFUserRelease();
                if (PFUserCreate())
                {
                  PFUserDeleteRules();
                  PFUserRelease();
                }
              }
            }
          }
        }
      }
    }
  }

  if (!access("/usr/libexec/ftp-proxy", 0))
  {
    SMJobSetEnabled();
    byte_1000351C4 = 1;
  }

  byte_1000351C0 = 1;
}

uint64_t sub_10001DD2C(const char *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, const void *a8, uint64_t a9, uint64_t a10)
{
  v18 = xpc_dictionary_create(0, 0, 0);
  if (!v18)
  {
    sub_100001108();
    return 12;
  }

  v19 = v18;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *__str = 0u;
  v31 = 0u;
  inet_ntop(a7, a8, string, 0x2Eu);
  xpc_dictionary_set_string(v19, kPFSubAddress, string);
  v20 = xpc_dictionary_create(0, 0, 0);
  if (!v20)
  {
    sub_100001108();
    xpc_release(v19);
    return 12;
  }

  v21 = v20;
  xpc_dictionary_set_uint64(v20, kPFAction, 8uLL);
  xpc_dictionary_set_uint64(v21, kPFProtocol, a2);
  xpc_dictionary_set_string(v21, kPFInterface, a1);
  xpc_dictionary_set_uint64(v21, kPFFamily, a7);
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22)
  {
    v23 = v22;
    snprintf(__str, 0x100uLL, "%s:0", a1);
    xpc_dictionary_set_string(v23, kPFSubDynInterface, __str);
    xpc_dictionary_set_uint64(v23, kPFSubLowPort, a3);
    if (a3 == a4)
    {
      v24 = 2;
    }

    else
    {
      xpc_dictionary_set_uint64(v23, kPFSubHighPort, a4);
      v24 = 9;
    }

    xpc_dictionary_set_uint64(v23, kPFSubPortOperator, v24);
    v26 = &kPFSubLowPort;
    if (a5 == a6)
    {
      v27 = 2;
      v28 = a5;
    }

    else
    {
      xpc_dictionary_set_uint64(v19, kPFSubLowPort, a5);
      v26 = &kPFSubHighPort;
      v27 = 9;
      v28 = a6;
    }

    xpc_dictionary_set_uint64(v19, *v26, v28);
    xpc_dictionary_set_uint64(v19, kPFSubPortOperator, v27);
    xpc_dictionary_set_value(v21, kPFTo, v23);
    xpc_dictionary_set_value(v21, kPFNATRDRAddress, v19);
    if (sub_10001B868(a9, a10, v21))
    {
      sub_100001108();
      v25 = 0;
    }

    else
    {
      sub_100001108();
      v25 = 22;
    }

    xpc_release(v19);
  }

  else
  {
    sub_100001108();
    v25 = 12;
    v23 = v19;
  }

  xpc_release(v23);
  xpc_release(v21);
  return v25;
}

id sub_10001E0DC(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1000351E0 = result;
  return result;
}

id sub_10001E680(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "description")];
  sub_100001108();
  v3 = *(a1 + 32);

  return [v3 activateTethering:0];
}

id sub_10001EFBC(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 activateTethering:a1];
}

id sub_10001EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v6 registerCellularDataStatusNotification:a1 callback:a2 callbackArg:a3];
}

uint64_t sub_10001F054(uint64_t a1)
{
  v1 = [+[misCTClientSharedInstance sharedInstance](misCTClientSharedInstance getTetheringInterfaceName:"getTetheringInterfaceName:", a1];
  sub_100001108();
  return v1;
}

id sub_10001F0CC()
{
  v0 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v0 isDualSim];
}

id sub_10001F0FC()
{
  v0 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v0 _updateDualSimStatus];
}

uint64_t sub_10001F12C()
{
  if (!dword_100034A4C)
  {
    return 0;
  }

  if (qword_1000351E8 || (qword_1000351E8 = dispatch_semaphore_create(0)) != 0)
  {
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    result = 0;
    byte_1000351F0 = 1;
  }

  else
  {
    sub_100001108();
    return 12;
  }

  return result;
}

void sub_10001F1BC()
{
  if (byte_1000351F0 == 1)
  {
    if (qword_1000351E8)
    {
      dispatch_release(qword_1000351E8);
      qword_1000351E8 = 0;
    }

    byte_1000351F0 = 0;
  }
}

uint64_t sub_10001F200()
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (dword_1000351F4 < 0 || !dword_100034A4C)
  {
    goto LABEL_72;
  }

  if (dword_1000351F8)
  {
    if (!qword_100035200)
    {
      sub_1000219F0();
    }

    sub_10001FD00();
  }

  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  strcpy(__filename, "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
  v0 = fopen(__filename, "w");
  if (!v0)
  {
    v16 = *__error();
    sub_100001108();
    if (v16)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  v1 = v0;
  v2 = qword_100034C38;
  if (!qword_100034C38)
  {
LABEL_75:
    v16 = 0;
    goto LABEL_76;
  }

  while (1)
  {
    if ((*(v2 + 296) - 1) > 1 || (*(v2 + 392) & 0x10) != 0)
    {
      goto LABEL_66;
    }

    if (*(v2 + 372) == 2)
    {
      sub_100001108();
      goto LABEL_65;
    }

    v3 = fseek(v1, 0, 2);
    if (v3)
    {
      break;
    }

    if (!*(v2 + 372))
    {
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      if (!inet_ntop(30, (v2 + 396), &v45, 0x2Eu))
      {
        goto LABEL_59;
      }

      fprintf(v1, "%s:\\\n", (*(v2 + 16) + 20));
      fprintf(v1, "\t:maxinterval#%u", 135);
      fprintf(v1, ":mininterval#%u:\\\n", 45);
      fprintf(v1, "\t:raflags#%u", 64);
      fprintf(v1, ":rltime#%u:\\\n", 0);
      fprintf(v1, "\t:addr=%s:prefixlen#%u:pinfoflags#%u:\\\n", &v45, *(v2 + 412), 192);
      v6 = 1500;
      goto LABEL_64;
    }

    fprintf(v1, "%s:\\\n", (*(v2 + 16) + 20));
    fprintf(v1, "\t:maxinterval#%u", 135);
    fprintf(v1, ":mininterval#%u:\\\n", 45);
    v4 = *(v2 + 392);
    if ((v4 & 8) != 0)
    {
      v7 = *(v2 + 24);
      v5 = v7 + 288;
      fputc(9, v1);
      fprintf(v1, ":chlim#%u", *(v7 + 460));
    }

    else
    {
      fputc(9, v1);
      v5 = 0;
    }

    if (!sub_100011708(*(v2 + 16)))
    {
      v13 = *(v2 + 24);
      if (v13)
      {
        if (((*(v13 + 776) & 2) == 0 || dword_100034C0C) && (*(v2 + 392) & 2) == 0)
        {
          fprintf(v1, ":raflags#%u", 64);
        }
      }
    }

    if ((v4 & 8) != 0)
    {
      v10 = *(v5 + 110);
      if (v10 >= 0x2328)
      {
        v10 = 9000;
      }

      fprintf(v1, ":rltime#%u", v10);
      fprintf(v1, ":rtime#%u", 1000 * *(v5 + 156));
      fprintf(v1, ":retrans#%u:\\\n", *(v5 + 160));
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      if (!inet_ntop(30, (v5 + 16), &v45, 0x2Eu))
      {
LABEL_59:
        v16 = *__error();
        sub_100001108();
        if (v16)
        {
          goto LABEL_98;
        }

        goto LABEL_65;
      }

      fprintf(v1, "\t:addr0=%s:prefixlen0#%u:pinfoflags0#%u", &v45, *(v5 + 37), 192);
      fprintf(v1, ":vltime0#%lu", *(v5 + 40));
      fwrite(":vltimedecr0#true", 0x11uLL, 1uLL, v1);
      fprintf(v1, ":pltime0#%lu", *(v5 + 48));
      fwrite(":pltimedecr0#true:\\\n", 0x14uLL, 1uLL, v1);
      v11 = *(v2 + 24);
      if (*(v11 + 488) == 1)
      {
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        if (!inet_ntop(30, (v11 + 504), &v45, 0x2Eu))
        {
          v16 = *__error();
          sub_100001108();
          if (v16)
          {
            goto LABEL_98;
          }

          goto LABEL_65;
        }

        fprintf(v1, "\t:addr1=%s:prefixlen1#%u:pinfoflags1#%u", &v45, *(*(v2 + 24) + 525), 192);
        fwrite(":vltime1#0", 0xAuLL, 1uLL, v1);
        fwrite(":pltime1#0:\\\n", 0xDuLL, 1uLL, v1);
        v11 = *(v2 + 24);
      }

      if (*(v11 + 804) == 1 && !byte_100034BEB)
      {
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        if (!inet_ntop(30, (v11 + 688), &v45, 0x2Eu))
        {
          goto LABEL_59;
        }

        v12 = 8 * *(*(v2 + 24) + 704);
LABEL_49:
        fprintf(v1, "\t:pref64addr=%s:pref64len#%u:pref64lifetime#%u:\\\n", &v45, v12, 65528);
      }
    }

    else
    {
      v8 = *(v2 + 24);
      if (v8 && (*(v8 + 776) & 2) != 0)
      {
        if (dword_100034C0C)
        {
          v9 = 9000;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 9000;
      }

      fprintf(v1, ":rltime#%u:\\\n", v9);
      if ((*(v2 + 392) & 6) != 0)
      {
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        if (!inet_ntop(30, (v2 + 396), &v45, 0x2Eu))
        {
          goto LABEL_59;
        }

        fprintf(v1, "\t:addr=%s:prefixlen#%u:pinfoflags#%u:\\\n", &v45, *(v2 + 412), 192);
        if ((*(v2 + 392) & 2) != 0 && !byte_100034BEB)
        {
          v45 = 0u;
          memset(v46, 0, sizeof(v46));
          if (!inet_ntop(30, (v2 + 416), &v45, 0x2Eu))
          {
            goto LABEL_59;
          }

          v12 = *(v2 + 432);
          goto LABEL_49;
        }
      }
    }

    v14 = *(v2 + 16);
    if (v14[74] || v14[75] || v14[76] || v14[77])
    {
      fwrite("\t:rdnssaddrs#1:\\\n", 0x11uLL, 1uLL, v1);
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      if (!inet_ntop(30, (*(v2 + 16) + 296), &v45, 0x2Eu))
      {
        goto LABEL_59;
      }

      fprintf(v1, "\t:rdnssaddr0=%s:\\\n", &v45);
    }

    if ((v4 & 8) != 0)
    {
      v6 = *(v5 + 144);
      goto LABEL_62;
    }

    v15 = *(v2 + 24);
    if (v15)
    {
      v6 = *(v15 + 12);
LABEL_62:
      if (v6 >= *(*(v2 + 16) + 12))
      {
        v6 = *(*(v2 + 16) + 12);
      }

LABEL_64:
      fprintf(v1, "\t:mtu#%u\n", v6);
    }

LABEL_65:
    sub_100001108();
LABEL_66:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_75;
    }
  }

  v16 = v3;
  sub_100001108();
LABEL_98:
  sub_100001108();
  sub_100001108();
LABEL_76:
  fclose(v1);
  if (v16)
  {
LABEL_77:
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    goto LABEL_81;
  }

LABEL_79:
  rename("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp", "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf", v17);
  if (!v18)
  {
    v20 = qword_100034C38;
    if (qword_100034C38)
    {
      v21 = 0;
      do
      {
        if ((*(v20 + 296) - 1) <= 1)
        {
          v21 += ((*(v20 + 392) >> 4) & 1) == 0;
        }

        v20 = *v20;
      }

      while (v20);
      if (v21)
      {
        v22 = malloc_type_malloc(8 * (v21 + 6), 0x10040436913F5uLL);
        v23 = v22;
        *v22 = "rtadvd";
        v22[1] = "-c";
        v22[2] = "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf";
        v22[3] = "-f";
        v22[4] = "-s";
        v24 = qword_100034C38;
        if (qword_100034C38)
        {
          v25 = 5;
          do
          {
            if ((*(v24 + 296) - 1) <= 1 && (*(v24 + 392) & 0x10) == 0)
            {
              v22[v25++] = (*(v24 + 16) + 20);
            }

            v24 = *v24;
          }

          while (v24);
          v26 = v25;
        }

        else
        {
          v26 = 5;
        }

        v22[v26] = 0;
        v27 = sub_100011BDC(&v30, &v31);
        if (v27)
        {
          v16 = v27;
          sub_100001108();
        }

        else
        {
          v28 = posix_spawn(&v29, "/usr/sbin/rtadvd", &v31, &v30, v23, environ);
          v16 = v28;
          if (v28)
          {
            strerror(v28);
            sub_100001108();
          }

          else
          {
            sub_100001108();
            dword_1000351F8 = v29;
            if (sub_10001FE04(v29, qword_100034BD8))
            {
              sub_100001108();
              sub_10001FD00();
            }
          }

          posix_spawnattr_destroy(&v30);
          posix_spawn_file_actions_destroy(&v31);
        }

        free(v23);
        if (v16)
        {
          return v16;
        }

LABEL_73:
        if (dword_1000351F8)
        {
          sub_100001108();
          return 0;
        }

        return v16;
      }
    }

    sub_10001FD00();
LABEL_72:
    sub_100001108();
    v16 = 0;
    goto LABEL_73;
  }

  v16 = v18;
  sub_100001108();
LABEL_81:
  sub_100001108();
  return v16;
}

void sub_10001FD00()
{
  v0 = dword_1000351F8;
  if (dword_1000351F8 && kill(dword_1000351F8, 0) != 3)
  {
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    if (sub_10001FE04(v0, qword_100034BE0))
    {

      sub_100001108();
    }

    else
    {
      if (qword_100035200)
      {
        dispatch_source_cancel(qword_100035200);
        dispatch_release(qword_100035200);
        qword_100035200 = 0;
      }

      sub_100001108();
      kill(v0, 15);
      dispatch_semaphore_wait(qword_1000351E8, 0xFFFFFFFFFFFFFFFFLL);
      dword_1000351F8 = 0;
    }
  }
}

uint64_t sub_10001FE04(int a1, dispatch_queue_t queue)
{
  v3 = qword_100034BE0;
  v4 = dispatch_source_create(&_dispatch_source_type_proc, a1, 0x80000000uLL, queue);
  v5 = v4;
  if (v3 == queue)
  {
    if (v4)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10001FEF4;
      handler[3] = &unk_100031518;
      handler[4] = v4;
      dispatch_source_set_event_handler(v4, handler);
      v6 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    qword_100035200 = v4;
    if (v4)
    {
      dispatch_source_set_event_handler(v4, &stru_100031558);
      v6 = qword_100035200;
LABEL_6:
      dispatch_resume(v6);
      return 0;
    }
  }

  return 12;
}

intptr_t sub_10001FEF4(uint64_t a1)
{
  v4 = 0;
  data = dispatch_source_get_data(*(a1 + 32));
  waitpid(data, &v4, 1);
  sub_100001108();
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  return dispatch_semaphore_signal(qword_1000351E8);
}

void sub_10001FF6C(id a1)
{
  v2 = 0;
  data = dispatch_source_get_data(qword_100035200);
  waitpid(data, &v2, 1);
  sub_100001108();
  if (dword_1000351F8)
  {
    dword_1000351F8 = 0;
    dispatch_source_cancel(qword_100035200);
    dispatch_release(qword_100035200);
    qword_100035200 = 0;
  }
}

uint64_t sub_10001FFEC()
{
  if (dword_100034A50)
  {
    sub_1000123A8();
    byte_10003520C = 0;
    unlink("/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist");
  }

  return 0;
}

uint64_t sub_100020044()
{
  if ((dword_100035208 & 0x80000000) == 0 && dword_100034A50)
  {
    keys = 0;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    values = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    for (i = qword_100034C38; i; i = *i)
    {
      if ((*(i + 296) - 1) <= 1 && *(i + 372) == 1)
      {
        v2 = *(i + 16);
        if (*(v2 + 296) || *(v2 + 300) || *(v2 + 304) || *(v2 + 308) || (v3 = sub_100011708(v2), v2 = *(i + 16), !v3))
        {
          sub_100011D88(Mutable, (v2 + 20));
          inet_ntop(30, (*(i + 16) + 296), v15, 0x2Eu);
          sub_100011D88(values, v15);
        }

        else
        {
          sub_100001108();
        }
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      v4 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v4, @"enabled_interfaces", Mutable);
      CFRelease(Mutable);
      keys = @"dhcp_dns_servers";
      v5 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRelease(values);
      CFDictionarySetValue(v4, @"options", v5);
      CFRelease(v5);
      if (byte_100034BE8)
      {
        CFDictionarySetValue(v4, @"verbose", kCFBooleanTrue);
      }

      v6 = geteuid();
      v7 = getgid();
      v8 = sub_100011EFC(v4, "/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist", v6, v7, 420, 0);
      CFRelease(v4);
      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_100001108();
      CFRelease(Mutable);
      CFRelease(values);
    }

    if (byte_10003520C != 1)
    {
      v8 = sub_1000123A8();
      if (!v8)
      {
        byte_10003520C = 1;
        sub_100001108();
        return v8;
      }

      goto LABEL_27;
    }

    v9 = sub_10000F968("/usr/libexec/dhcp6d");
    if (v9)
    {
      v10 = kill(v9, 1);
      if (v10)
      {
        v8 = v10;
        v11 = __error();
        strerror(*v11);
        sub_100001108();
        strerror(v8);
LABEL_27:
        sub_100001108();
        sub_1000123A8();
        byte_10003520C = 0;
        unlink("/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist");
        return v8;
      }
    }
  }

  sub_100001108();
  return 0;
}

void sub_10002042C()
{
  if (dword_100034A44)
  {
    byte_100035210 = 1;
  }
}

void sub_10002044C()
{
  if (byte_100035210 == 1)
  {
    byte_100035210 = 0;
  }
}

uint64_t sub_100020464()
{
  if (dword_100034A44)
  {
    v0 = mrc_dns_proxy_parameters_create();
    sub_100001108();
    v1 = 22;
    if (v0)
    {
      mrc_release();
    }
  }

  else
  {
    sub_100001108();
    return 0;
  }

  return v1;
}

uint64_t sub_1000206D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2 == -1)
  {
    sub_100001108();
    mrc_release();
  }

  return sub_100001108();
}

uint64_t sub_1000207C8(uint64_t a1)
{
  result = *(a1 + 520);
  if (result)
  {
    result = mrc_dns_proxy_invalidate();
    *(a1 + 520) = 0;
  }

  return result;
}

void sub_10002092C(uint64_t *a1)
{
  sub_100001108();
  for (i = *a1; i; i = *(i + 280))
  {
    v3 = *(i + 4);
    v4 = *(i + 8);
    sub_100001108();
  }

  __assert_rtn("mis_network_start_continued", "mis_network.c", 2036, "int_if->mi_name[0] != '\\0'");
}

void sub_100020A80(BOOL *a1)
{
  *v2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create os log object", v2, 2u);
  *a1 = qword_100034CB8 != 0;
}