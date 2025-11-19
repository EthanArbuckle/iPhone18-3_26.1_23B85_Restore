void sub_1002B5460()
{
  if (xmmword_100B66100)
  {
    sub_10028E908(xmmword_100B66100);
  }

  v0 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v1 = v0[10];
      v2 = v0[6];
      if (v2)
      {
        sub_10000C1E8(v2);
      }

      if (off_100B660F8)
      {
        off_100B660F8(v0);
      }

      sub_10000C1E8(v0);
      v0 = v1;
    }

    while (v1);
  }

  sub_1002DB960(off_100AE9CB0);
  sub_1002CE3E4(off_100AE9CC8);
  qword_100B66120 = 0;
  xmmword_100B66100 = 0u;
  unk_100B66110 = 0u;
  if (qword_100B66138)
  {
    sub_1000BBDD0(qword_100B66138);
  }

  off_100B66140 = 0;
  dword_100B66128 = 0;
  qword_100B66130 = 0;
}

uint64_t sub_1002B5528(void *a1)
{
  if (off_100B66140)
  {
    return 119;
  }

  result = 0;
  off_100B66140 = a1;
  return result;
}

uint64_t sub_1002B554C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B66118)
  {
    return 119;
  }

  result = 0;
  off_100B66118 = a1;
  qword_100B66120 = a2;
  return result;
}

void *sub_1002B5584(void *result)
{
  if (off_100B66118 == result)
  {
    off_100B66118 = 0;
    qword_100B66120 = 0;
  }

  return result;
}

uint64_t (*sub_1002B55A8(void *a1))(void)
{
  v1 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    return 0;
  }

  v2 = *(&xmmword_100B66100 + 1);
  while (v2 != a1)
  {
    v2 = v2[10];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2[10];
  v4 = v2[11];
  if (v4)
  {
    *(v4 + 80) = v3;
  }

  if (v3)
  {
    *(v3 + 88) = v4;
  }

  if (v1 == a1)
  {
    *(&xmmword_100B66100 + 1) = v3;
  }

  v5 = v2[6];
  if (v5)
  {
    sub_10000C1E8(v5);
  }

  v6 = *(v2 + 15);
  if (v6)
  {
    sub_10002242C(v6);
  }

  if (off_100B660F8)
  {
    off_100B660F8(v2);
  }

  v7 = sub_1000B47B8(qword_100B66138);
  for (ptr = v7; ptr; v7 = ptr)
  {
    while (1)
    {
      v8 = sub_1000BC720(v7);
      if (v8)
      {
        break;
      }

LABEL_25:
      sub_1000BC77C(qword_100B66138, ptr, 1);
      v7 = sub_1000B47B8(qword_100B66138);
      ptr = v7;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    if (*v2 == *v8)
    {
      if ((*(v8 + 16) & 1) == 0)
      {
        sub_1002B5738();
      }

      goto LABEL_25;
    }

    sub_1000BC828(&ptr);
  }

LABEL_26:
  if (*v2 != qword_100B66130)
  {
LABEL_29:
    sub_10000C1E8(v2);
    return 0;
  }

  v21 = 0;
  v9 = sub_1000ABC7C(4u, &v21);
  if (!v9)
  {
    v10 = v21;
    *(v21 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_1002B57A4();
    goto LABEL_29;
  }

  v12 = v9;
  if (sub_10000C240())
  {
    sub_10000AF54("_LE_ATT_RemoveATTSession %!", v13, v14, v15, v16, v17, v18, v19, v12);
    v20 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_1000C52F4(v12);
  return sub_1002B5738();
}

uint64_t (*sub_1002B5738())(void)
{
  v0 = dword_100B66128;
  if (dword_100B66128 <= 0)
  {
    sub_1000D660C();
    v0 = dword_100B66128;
  }

  dword_100B66128 = v0 - 1;
  result = off_100B66140;
  if (v0 == 1 && off_100B66140 != 0)
  {

    return result();
  }

  return result;
}

void sub_1002B57A4()
{
  qword_100B66130 = 0;
  do
  {
    v0 = sub_1000BB054(qword_100B66138, 0);
    if (!v0)
    {
      break;
    }

    v1 = v0;
    if (!*v0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ATT_WriteCfm - Packet handle NULL", v2, v3, v4, v5, v6, v7, v8, v20);
        v9 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1008145E4(&v23, &v24);
        }
      }
    }

    v10 = sub_1002B5FE0(*v1, v1[1]);
    v11 = v10;
    if (v10 != 412)
    {
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ATT_WriteCfm - Write Failed:%!", v12, v13, v14, v15, v16, v17, v18, v11);
          v19 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1008145E4(&v21, &v22);
          }
        }
      }

      else
      {
        qword_100B66130 = *v1;
      }
    }

    if ((v1[2] & 1) == 0)
    {
      sub_1002B5738();
    }

    sub_1000BC14C(v1[1]);
    sub_10000C1E8(v1);
  }

  while (v11);
  if (!qword_100B66130)
  {
    sub_1002BA53C();
  }
}

uint64_t sub_1002B5934(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a1;
  *a1 = a2;
  *(a1 + 18) = a3;
  *(a1 + 64) = 0;
  v4 = sub_1002B9F00(a2, a3);
  *(v3 + 72) = v4;
  if (!v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate ATT DB Session", v5, v6, v7, v8, v9, v10, v11, v14);
      v12 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v3;
}

_BYTE *sub_1002B59BC(uint64_t a1, char a2)
{
  if (sub_1002B5AD4(a1))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Already have a session ATT", v4, v5, v6, v7, v8, v9, v10, v25);
    v11 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_4;
  }

  result = sub_1001BBBD8(0x68uLL, 0x10B004046EF2F03uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Failed to allocate the bearer", v17, v18, v19, v20, v21, v22, v23, v25);
    v24 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_4:
    sub_1000E09C0();
    return 0;
  }

  result[66] = a2;
  v13 = *a1;
  v14 = *(a1 + 4);
  *(result + 10) = 0;
  *(result + 6) = v14;
  *(result + 2) = v13;
  v15 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v16 = v15;
      v15 = *(v15 + 80);
    }

    while (v15);
    *(result + 11) = v16;
    *(v16 + 80) = result;
  }

  else
  {
    *(&xmmword_100B66100 + 1) = result;
    *(result + 10) = 0;
    *(result + 11) = 0;
  }

  return result;
}

uint64_t sub_1002B5AD4(int *a1)
{
  result = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    do
    {
      if (*(result + 8) == v3 && *(result + 12) == v4)
      {
        break;
      }

      result = *(result + 80);
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B5B0C(uint64_t a1, char a2)
{
  v4 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (*v4 != a1)
    {
      v4 = v4[10];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Already have a session ATT", v9, v10, v11, v12, v13, v14, v15, v26);
    v16 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_13:
    sub_1000E09C0();
    return 0;
  }

LABEL_4:
  sub_1000CD5B8(a1);
  sub_1002BE5CC(a1);
  v5 = sub_1001BBBD8(0x68uLL, 0x10B004046EF2F03uLL);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Failed to allocate the bearer", v17, v18, v19, v20, v21, v22, v23, v26);
    v24 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_13;
  }

  v5[66] = a2;
  v6 = *(a1 + 49);
  *(v5 + 6) = *(a1 + 53);
  *(v5 + 2) = v6;
  LOBYTE(v6) = *(a1 + 48);
  *(v5 + 10) = 0;
  v5[14] = v6;
  v7 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 80);
    }

    while (v7);
    *(v5 + 11) = v8;
    *(v8 + 80) = v5;
  }

  else
  {
    *(&xmmword_100B66100 + 1) = v5;
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
  }

  return sub_1002B5934(v5, a1, 23);
}

void *sub_1002B5C7C(uint64_t a1)
{
  result = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      if (*result == a1)
      {
        break;
      }

      result = result[10];
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B5CA4(unsigned __int16 *a1)
{
  v1 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    return 149;
  }

  while (1)
  {
    v3 = *v1;
    if (*v1 == a1)
    {
      break;
    }

    v1 = v1[10];
    if (!v1)
    {
      return 149;
    }
  }

  if (v1[9])
  {
    sub_1002BA214(a1);
    v3 = *v1;
  }

  if (!v3)
  {
    sub_1000D660C();
    v3 = *v1;
  }

  if (sub_1000ABD24(v3))
  {
    sub_1002BE6B0(*v1);
  }

  sub_1002B55A8(v1);
  return 0;
}

uint64_t sub_1002B5D28(int a1)
{
  for (result = *(&xmmword_100B66100 + 1); result; result = *(result + 80))
  {
    if (*(result + 16) == a1)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1002B5D50(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 18);
    }
  }

  return v1;
}

uint64_t sub_1002B5D88(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != result)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return result;
        }
      }

      *(result + 18) = a2;
    }
  }

  return result;
}

uint64_t sub_1002B5DB4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 72);
    }
  }

  return v1;
}

uint64_t sub_1002B5DEC(__int128 *a1, uint64_t a2, char a3, BOOL *a4)
{
  if (!qword_100B66130)
  {
    v9 = sub_1002B5FE0(a1, a2);
    if (v9 != 412)
    {
      v8 = v9;
      if (!v9)
      {
        qword_100B66130 = a1;
        if (!a4)
        {
          return v8;
        }

        goto LABEL_28;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Wrote ATT MBUF - Write Failed:%! reliable:%d _queuedNonReliablePackets:%d", v21, v22, v23, v24, v25, v26, v27, v8);
        v28 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
          if (!a4)
          {
            return v8;
          }

          goto LABEL_28;
        }
      }

      goto LABEL_27;
    }

    if (qword_100B66130)
    {
      sub_1000D660C();
    }

LABEL_26:
    v8 = 0;
LABEL_27:
    if (!a4)
    {
      return v8;
    }

LABEL_28:
    *a4 = qword_100B66130 == 0;
    return v8;
  }

  if ((a3 & 1) == 0 && dword_100B66128 > 31)
  {
    v8 = 4001;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v10 = sub_100007618(0x18uLL, 0x1020040A95220FAuLL);
  if (!v10)
  {
    v8 = 106;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v11 = v10;
  *v10 = a1;
  *(v10 + 16) = a3;
  v12 = sub_1000B8BE0(v10 + 1, a2, 0);
  if (!v12)
  {
    sub_1000B8B8C(qword_100B66138, v11, 8);
    if ((a3 & 1) == 0)
    {
      v8 = 0;
      ++dword_100B66128;
      if (!a4)
      {
        return v8;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v8 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("Wrote ATT MBUF - OI_MBUF_Copy Failed:%!", v13, v14, v15, v16, v17, v18, v19, v8);
    v20 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_10000C1E8(v11);
  if (a4)
  {
    goto LABEL_28;
  }

  return v8;
}

uint64_t sub_1002B5FE0(__int128 *a1, uint64_t a2)
{
  if (sub_1000B8B5C(a1))
  {
    v4 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (*v4 != a1)
      {
        v4 = *(v4 + 80);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      v15 = *(v4 + 16);
      if (!*(v4 + 16))
      {
        sub_1000D660C();
      }

      v13 = v15;
      goto LABEL_14;
    }

LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Can not find classic session in ATT WriteBuf", v5, v6, v7, v8, v9, v10, v11, v16);
      v12 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 4202;
  }

  if (!sub_1000ABD24(a1))
  {
    return 4202;
  }

  v13 = 4;
LABEL_14:

  return sub_1000B7EDC(sub_1002B8FBC, v13, a1, a2, 1);
}

uint64_t sub_1002B60E8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  v7 = a3;
  if (a3 < 0x17)
  {
    return 101;
  }

  if (*(a1 + 18) != 23)
  {
    return 146;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 3;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
LABEL_12:
    result = 142;
    goto LABEL_13;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = sub_1001BBBD8(3uLL, 0x100004077774924uLL);
  *(a1 + 48) = v9;
  if (!v9)
  {
    result = 106;
    goto LABEL_13;
  }

  *v9 = 2;
  *(*(a1 + 48) + 1) = v7;
  result = sub_1002B6254(a1);
  if (result)
  {
LABEL_13:
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return result;
  }

  v10 = sub_1002B92E4(*a1);
  if (v10)
  {
    sub_1002B986C(v10, 1, 0);
    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Couldn't find server session for connection 0x%08x - can't change MTU!", v11, v12, v13, v14, v15, v16, v17, *a1);
    v18 = sub_10000C050(0x44u);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002B6254(uint64_t a1)
{
  v25 = a1;
  if (!a1)
  {
    return 4002;
  }

  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  memset(v24, 0, sizeof(v24));
  if (*(v2 + 2) != 4)
  {
    goto LABEL_7;
  }

  if (!sub_1000ABD24(v2))
  {
    if (!sub_10000C240())
    {
      return 4003;
    }

    sub_10000AF54("Not valid LE connection handle", v5, v6, v7, v8, v9, v10, v11, v23[0]);
    v12 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 4003;
    }

    goto LABEL_19;
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_7:
    if (*(v2 + 2) || sub_1000B8B5C(v2))
    {
      goto LABEL_8;
    }

    if (!sub_10000C240())
    {
      return 4003;
    }

    sub_10000AF54("Not valid ACL connection handle", v13, v14, v15, v16, v17, v18, v19, v23[0]);
    v20 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return 4003;
    }

LABEL_19:
    sub_1000E09C0();
    return 4003;
  }

LABEL_8:
  v3 = sub_10001FF10(v24, 1u);
  if (v3 || (v3 = sub_10001F968(v24, *(a1 + 48), *(a1 + 40), 2u), v3))
  {
    v4 = v3;
  }

  else
  {
    v22 = sub_1002B5DEC(*a1, v24, *(a1 + 56), 0);
    if (v22 == 412 || (v4 = v22, !v22))
    {
      if (*(a1 + 56) == 1)
      {
        v23[1] = &v25;
        v23[0] = 8;
        sub_10002195C(sub_1002B8FC0, v23, dword_100B53E28, (a1 + 60));
      }

      v4 = 0;
    }
  }

  sub_1000B7B40(v24);
  return v4;
}

uint64_t sub_1002B640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (*(a3 + 3) <= (*(a3 + 1) - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 5;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) >= 5u)
  {
    v11 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_13:
    v6 = 142;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    sub_10000C1E8(v10);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B651C(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, unsigned int a5, const void *a6, unsigned int a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v9 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  v11 = a5;
  if (a5 <= (a4 - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a8;
  *(a1 + 40) = a7 + 7;
  v16 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (v16 != a1)
    {
      v16 = *(v16 + 80);
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v16) = *(a1 + 18);
  }

LABEL_13:
  if (v16 >= (a7 + 7))
  {
    v18 = sub_1001BBBD8((a7 + 7), 0x100004077774924uLL);
    *(a1 + 48) = v18;
    if (v18)
    {
      *v18 = 6;
      *(v18 + 1) = a4;
      *(v18 + 3) = v11;
      *(v18 + 5) = a3;
      memmove((*(a1 + 48) + 7), a6, a7);
      v10 = sub_1002B6254(a1);
      if (!v10)
      {
        return v10;
      }
    }

    else
    {
      v10 = 106;
    }
  }

  else
  {
    v10 = 142;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    sub_10000C1E8(v19);
  }

  *(a1 + 48) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  return v10;
}

uint64_t sub_1002B6660(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (*(a3 + 3) <= (*(a3 + 1) - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v8 = (a3 + 5);
  v9 = *(a3 + 5) + 5;
  *(a1 + 40) = v9;
  v10 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v10 != a1)
  {
    v10 = *(v10 + 80);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) >= v9)
  {
    v13 = sub_1001BBBD8(v9, 0x100004077774924uLL);
    *(a1 + 48) = v13;
    if (v13)
    {
      v14 = *a3;
      v13[4] = *(a3 + 4);
      *v13 = v14;
      v15 = *v8;
      v16 = *(a3 + 21);
      sub_10007A978((*(a1 + 48) + 5), &v15, 1);
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_13:
    v6 = 142;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_10000C1E8(v12);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 3;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_12;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 18) >= 3u)
  {
    v11 = sub_1001BBBD8(3uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_12:
    v6 = 142;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B68D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 5;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_12;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 18) >= 5u)
  {
    v11 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_12:
    v6 = 142;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B69D0(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = a2 != 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v9 = *(a3 + 3);
  if (v9 > 0xFFFC)
  {
    goto LABEL_13;
  }

  v10 = v9 + 3;
  *(a1 + 40) = v9 + 3;
  v11 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v11 != a1)
  {
    v11 = *(v11 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) < v10)
  {
LABEL_13:
    v6 = 142;
    goto LABEL_14;
  }

  v14 = sub_1001BBBD8(v10, 0x100004077774924uLL);
  *(a1 + 48) = v14;
  if (!v14)
  {
    v6 = 106;
    goto LABEL_14;
  }

  v15 = *a3;
  v14[2] = *(a3 + 2);
  *v14 = v15;
  memmove((*(a1 + 48) + 3), *(a3 + 5), *(a3 + 3));
  v6 = sub_1002B6254(a1);
  if (v6)
  {
LABEL_14:
    v12 = *(a1 + 48);
    if (v12)
    {
      sub_10000C1E8(v12);
    }

    *(a1 + 48) = 0;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return v6;
  }

  if (a2)
  {
    return 0;
  }

  if (!dword_100B66128 && off_100B66140)
  {
    off_100B66140();
  }

  sub_10000C1E8(*(a1 + 48));
  v6 = 0;
  *(a1 + 48) = 0;
  return v6;
}

uint64_t sub_1002B6B34(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v8 = *(a3 + 5) + 5;
  *(a1 + 40) = v8;
  v9 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (v9 != a1)
    {
      v9 = *(v9 + 80);
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v9) = *(a1 + 18);
  }

LABEL_12:
  if (v9 >= v8)
  {
    v10 = sub_1001BBBD8(v8, 0x100004077774924uLL);
    *(a1 + 48) = v10;
    if (v10)
    {
      v11 = *a3;
      v10[4] = *(a3 + 4);
      *v10 = v11;
      memmove((*(a1 + 48) + 5), *(a3 + 7), *(a3 + 5));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
    v6 = 142;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_10000C1E8(v12);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B6C50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1 + 24;
    if (!*(a1 + 24))
    {
      *(a1 + 56) = 1;
      *(a1 + 24) = a2;
      *(a1 + 32) = a4;
      *(a1 + 40) = 2;
      v8 = sub_1001BBBD8(2uLL, 0x100004077774924uLL);
      *(a1 + 48) = v8;
      if (v8)
      {
        *v8 = 24;
        *(*(a1 + 48) + 1) = a3;
        v6 = sub_1002B6254(a1);
        if (!v6)
        {
          return v6;
        }

        v9 = *(a1 + 48);
        if (v9)
        {
          sub_10000C1E8(v9);
        }

        *(a1 + 48) = 0;
        *v5 = 0;
        *(v5 + 8) = 0;
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = 106;
      }

      *(v5 + 16) = 0;
      return v6;
    }

    return 118;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

void sub_1002B6D1C(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 2);
  if (v8 == 4)
  {
    if (!sub_1000ABD24(a1))
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 2);
  }

  if (!v8 && !sub_1000B8B5C(a1))
  {
LABEL_15:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("ATT error : not transport handle", v11, v12, v13, v14, v15, v16, v17, v324);
    v18 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_177:
    sub_1000E09C0();
    return;
  }

  if (!a2 || !a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packet size.", v19, v20, v21, v22, v23, v24, v25, v324);
    v26 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_177;
  }

  if (!sub_1002B92E4(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle, there is no active session associated with the handle.", v27, v28, v29, v30, v31, v32, v33, v324);
      v34 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        sub_1000E09C0();
      }
    }

    return;
  }

  v9 = *a2;
  switch(*a2)
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
    case 9u:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x11u:
    case 0x13u:
    case 0x17u:
    case 0x19u:
      v10 = *(&xmmword_100B66100 + 1);
      if (!*(&xmmword_100B66100 + 1))
      {
        return;
      }

      break;
    case 2u:
    case 4u:
    case 6u:
    case 8u:
    case 0xAu:
    case 0xCu:
    case 0xEu:
    case 0x10u:
    case 0x12u:
    case 0x16u:
    case 0x18u:
      goto LABEL_39;
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x1Cu:
      goto LABEL_53;
    case 0x1Bu:
      if ((a3 - 1) >= 2u)
      {
        v72 = off_100B66118;
        if (off_100B66118)
        {
          v73 = *(a2 + 1);
          v74 = qword_100B66120;

          v72(a1, v73, a2 + 3, (a3 - 3), a4, v74);
        }
      }

      return;
    case 0x1Du:

      sub_1002B8018(a1, (a2 + 1), (a3 - 1), a4);
      return;
    case 0x1Eu:

      sub_1002BA980(a1);
      return;
    default:
      if (v9 == 82 || v9 == 210)
      {
LABEL_39:

        sub_1002BA9F0(a1, a2, a3, a4);
      }

      else
      {
LABEL_53:
        if (sub_10000C240())
        {
          sub_10000AF54("Received unknown opcode 0x%x", v64, v65, v66, v67, v68, v69, v70, v9);
          v71 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002B80E4(a1, v9);
      }

      return;
  }

  while (*v10 != a1)
  {
    v10 = *(v10 + 80);
    if (!v10)
    {
      return;
    }
  }

  if (*a2 > 0xCu)
  {
    if (*a2 <= 0x12u)
    {
      switch(v9)
      {
        case 0xD:
          v95 = *(v10 + 48);
          if (!v95 || *v95 != 12)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.", v96, v97, v98, v99, v100, v101, v102, v324);
              v103 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          break;
        case 0xF:
          v140 = *(v10 + 48);
          if (!v140 || *v140 != 14)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.", v208, v209, v210, v211, v212, v213, v214, v324);
              v215 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          break;
        case 0x11:
          v50 = *(v10 + 48);
          if (!v50 || *v50 != 16)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.", v176, v177, v178, v179, v180, v181, v182, v324);
              v183 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          v51 = *(v10 + 24);
          sub_10002242C(*(v10 + 60));
          *(v10 + 60) = 0;
          sub_10000C1E8(*(v10 + 48));
          *(v10 + 48) = 0;
          *(v10 + 24) = 0;
          v52 = (a3 - 1);
          if (v52 <= 4)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid read by group type payload size %d.", v53, v54, v55, v56, v57, v58, v59, v52);
              v60 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v61 = *(v10 + 32);
            v62 = v10;
            v63 = 4010;
            goto LABEL_208;
          }

          v252 = a2 + 1;
          v253 = a2[1];
          if (v253 < 4 || (v254 = (v52 - 1) / v253, (v52 - 1) % v253))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid read by group type payload size %d.", v255, v256, v257, v258, v259, v260, v261, v52);
              v262 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v61 = *(v10 + 32);
            v62 = v10;
            v63 = 4011;
            goto LABEL_208;
          }

          v312 = sub_100007618(16 * ((v52 - 1) / v253), 0x101004082113244uLL);
          v313 = v312;
          if (v312)
          {
            if (v254)
            {
              v314 = 0;
              v315 = v312;
              do
              {
                v316 = &v252[(v314 * v253 + 1)];
                v317 = v316[1];
                *v315 = v317 << 8;
                *v315 = *v316 | (v317 << 8);
                v318 = v316[3];
                v315[1] = v318 << 8;
                v315[1] = v316[2] | (v318 << 8);
                *(v315 + 1) = v316 + 4;
                ++v314;
                v315 += 8;
              }

              while (v314 < v254);
            }

            goto LABEL_241;
          }

          goto LABEL_240;
        default:
          goto LABEL_148;
      }

LABEL_129:
      v327 = *(v10 + 24);
      sub_10002242C(*(v10 + 60));
      *(v10 + 60) = 0;
      sub_10000C1E8(*(v10 + 48));
      v110 = v327;
      *(v10 + 48) = 0;
      *(v10 + 24) = 0;
      if (!v327)
      {
        return;
      }

      v106 = *(v10 + 32);
      v108 = a2 + 1;
      v107 = (a3 - 1);
      v109 = v10;
      goto LABEL_131;
    }

    switch(v9)
    {
      case 0x13:
        v111 = *(v10 + 48);
        if (!v111 || ((v112 = *v111, v112 != 210) ? (v113 = v112 == 18) : (v113 = 1), !v113))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("No read blob request matching this response. Ignoring.", v232, v233, v234, v235, v236, v237, v238, v324);
            v239 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_177;
            }
          }

          return;
        }

        v114 = a3 - 1;
        v86 = *(v10 + 24);
        sub_10002242C(*(v10 + 60));
        *(v10 + 60) = 0;
        sub_10000C1E8(*(v10 + 48));
        *(v10 + 48) = 0;
        *(v10 + 24) = 0;
        if (v114)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid Write response length %d.", v115, v116, v117, v118, v119, v120, v121, v114);
            v122 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
              if (!v86)
              {
                return;
              }

LABEL_109:
              v86(v10, 0, *(v10 + 32));
              return;
            }
          }
        }

        break;
      case 0x17:
        v151 = *(v10 + 48);
        if (v151 && *v151 == 22)
        {
          v328 = *(v10 + 24);
          sub_10002242C(*(v10 + 60));
          *(v10 + 60) = 0;
          sub_10000C1E8(*(v10 + 48));
          *(v10 + 48) = 0;
          *(v10 + 24) = 0;
          if ((a3 - 1) > 3u)
          {
            if (v328)
            {
              if ((a3 - 1) == 4)
              {
                v292 = 0;
              }

              else
              {
                v292 = a2 + 5;
              }

              v293 = *(a2 + 3);
              v294 = *(a2 + 1);
              v295 = *(v10 + 32);

              v328(v10, 0, v294, v293, v292, (a3 - 5), v295);
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid prepare write response length %d.", v152, v153, v154, v155, v156, v157, v158, (a3 - 1));
              v159 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v328(v10, 4012, 0, 0, 0, 0, *(v10 + 32));
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("No read blob request matching this response. Ignoring.", v224, v225, v226, v227, v228, v229, v230, v324);
          v231 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_177;
          }
        }

        return;
      case 0x19:
        v84 = *(v10 + 48);
        if (!v84 || *v84 != 24)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("No read blob request matching this response. Ignoring.", v184, v185, v186, v187, v188, v189, v190, v324);
            v191 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_177;
            }
          }

          return;
        }

        v85 = a3 - 1;
        v86 = *(v10 + 24);
        sub_10002242C(*(v10 + 60));
        *(v10 + 60) = 0;
        sub_10000C1E8(*(v10 + 48));
        *(v10 + 48) = 0;
        *(v10 + 24) = 0;
        if (v85)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid execute write response length %d.", v87, v88, v89, v90, v91, v92, v93, v85);
            v94 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
              if (!v86)
              {
                return;
              }

              goto LABEL_109;
            }
          }
        }

        break;
      default:
        goto LABEL_148;
    }

    if (!v86)
    {
      return;
    }

    goto LABEL_109;
  }

  if (*a2 > 6u)
  {
    if (v9 == 7)
    {
      v104 = *(v10 + 48);
      if (!v104 || *v104 != 6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No Find by type value request matching this response. Ignoring.", v192, v193, v194, v195, v196, v197, v198, v324);
          v199 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_177;
          }
        }

        return;
      }

      v105 = a3 - 1;
      v326 = *(v10 + 24);
      sub_10002242C(*(v10 + 60));
      *(v10 + 60) = 0;
      sub_10000C1E8(*(v10 + 48));
      *(v10 + 48) = 0;
      *(v10 + 24) = 0;
      if (v105 < 4u || (v105 & 3) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid find by type value payload size %d.", v263, v264, v265, v266, v267, v268, v269, v105);
          v270 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v326(v10, 4022, 0, 0, *(v10 + 32));
        return;
      }

      v106 = *(v10 + 32);
      v107 = v105 >> 2;
      v108 = a2 + 1;
      v109 = v10;
      v110 = v326;
LABEL_131:

      v110(v109, 0, v108, v107, v106);
      return;
    }

    if (v9 != 9)
    {
      if (v9 != 11)
      {
        goto LABEL_148;
      }

      v75 = *(v10 + 48);
      if (!v75 || *v75 != 10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No read request matching this response. Ignoring.", v76, v77, v78, v79, v80, v81, v82, v324);
          v83 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }

        return;
      }

      goto LABEL_129;
    }

    v141 = *(v10 + 48);
    if (!v141 || *v141 != 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No read by type request matching this response. Ignoring.", v216, v217, v218, v219, v220, v221, v222, v324);
        v223 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      return;
    }

    v51 = *(v10 + 24);
    sub_10002242C(*(v10 + 60));
    *(v10 + 60) = 0;
    sub_10000C1E8(*(v10 + 48));
    *(v10 + 48) = 0;
    *(v10 + 24) = 0;
    v142 = (a3 - 1);
    if (v142 <= 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid read by type payload size %d.", v143, v144, v145, v146, v147, v148, v149, v142);
        v150 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v61 = *(v10 + 32);
      v62 = v10;
      v63 = 4008;
LABEL_208:
      v51(v62, v63, 0, 0, 0, v61);
      return;
    }

    v283 = a2 + 1;
    v253 = a2[1];
    if (v253 < 2 || (v254 = (v142 - 1) / v253, (v142 - 1) % v253))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid read by type payload size %d.", v284, v285, v286, v287, v288, v289, v290, v142);
        v291 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v61 = *(v10 + 32);
      v62 = v10;
      v63 = 4009;
      goto LABEL_208;
    }

    v319 = sub_100007618(16 * ((v142 - 1) / v253), 0x1010040749D3347uLL);
    v313 = v319;
    if (v319)
    {
      if (v254)
      {
        v320 = 0;
        v321 = v319;
        do
        {
          v322 = &v283[(v320 * v253 + 1)];
          v323 = v322[1];
          *v321 = v323 << 8;
          *v321 = *v322 | (v323 << 8);
          v321[1] = v322 + 2;
          ++v320;
          v321 += 2;
        }

        while (v320 < v254);
      }

      goto LABEL_241;
    }

LABEL_240:
    LOWORD(v254) = 0;
    v253 = 0;
LABEL_241:
    if (v51)
    {
      v51(v10, 0, v313, v254, v253, *(v10 + 32));
    }

    sub_10000C1E8(v313);
    return;
  }

  if (v9 == 1)
  {

    sub_1002B84EC(v10, a2 + 1, (a3 - 1));
    return;
  }

  if (v9 != 3)
  {
    if (v9 == 5)
    {
      v35 = *(v10 + 48);
      if (v35 && *v35 == 4)
      {
        v36 = a3 - 1;
        v37 = *(v10 + 24);
        sub_10002242C(*(v10 + 60));
        *(v10 + 60) = 0;
        sub_10000C1E8(*(v10 + 48));
        *(v10 + 48) = 0;
        *(v10 + 24) = 0;
        v38 = v36;
        if (v36 <= 4u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid find information payload size %d.", v39, v40, v41, v42, v43, v44, v45, v36);
            v46 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v47 = *(v10 + 32);
          v48 = v10;
          v49 = 4006;
LABEL_187:
          v37(v48, v49, 0, 0, v47);
          return;
        }

        v329 = a2 + 1;
        v240 = a2[1];
        if (v240 == 1)
        {
          v241 = 2;
        }

        else
        {
          v241 = 16 * (v240 == 2);
        }

        if (!v241 || (v242 = (v241 + 2), v243 = (v38 - 1) / v242, (v38 - 1) % v242))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid find information payload size %d (uuidSize == %u).", v244, v245, v246, v247, v248, v249, v250, v38);
            v251 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v47 = *(v10 + 32);
          v48 = v10;
          v49 = 4007;
          goto LABEL_187;
        }

        v305 = ((v38 - 1) / v242);
        ptr = sub_100007618(8 * (2 * v305 + v243), 0x1000040923A060DuLL);
        if (ptr)
        {
          if (v305)
          {
            v306 = 0;
            v307 = a2 + 3;
            v308 = ptr;
            do
            {
              v309 = v306 & 0xFFFE | 1;
              v310 = v329[v309 + 1];
              *v308 = v310 << 8;
              *v308 = v329[v309] | (v310 << 8);
              sub_10006A0FC(&v307[v309], v241, 1, &v330);
              v311 = v330;
              *(v308 + 5) = v331;
              *(v308 + 4) = v311;
              v308 += 24;
              v306 += (v241 + 2);
              --v305;
            }

            while (v305);
          }
        }

        else
        {
          LOWORD(v243) = 0;
        }

        if (v37)
        {
          v37(v10, 0, ptr, v243, *(v10 + 32));
        }

        sub_10000C1E8(ptr);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("No Find information request matching this response. Ignoring.", v168, v169, v170, v171, v172, v173, v174, v324);
        v175 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      return;
    }

LABEL_148:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown opcode 0x%x", v160, v161, v162, v163, v164, v165, v166, v9);
      v167 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_177;
      }
    }

    return;
  }

  v123 = *(v10 + 48);
  if (v123 && *v123 == 2)
  {
    v124 = a3 - 1;
    v125 = *(v10 + 24);
    v126 = v123[1];
    v127 = v123[2];
    sub_10002242C(*(v10 + 60));
    *(v10 + 60) = 0;
    sub_10000C1E8(*(v10 + 48));
    *(v10 + 48) = 0;
    *(v10 + 24) = 0;
    if (v124 == 2)
    {
      v128 = *(a2 + 1);
      if (v128 <= 0x17)
      {
        v128 = 23;
      }

      if ((v126 | (v127 << 8)) >= v128)
      {
        v129 = v128;
      }

      else
      {
        v129 = v126 | (v127 << 8);
      }

      LOWORD(v330) = v129;
      v130 = *(v10 + 18);
      if (v130 != 23 && v129 != v130)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("The negotiated MTU is different from a previously negotiated one: %u != %u", v131, v132, v133, v134, v135, v136, v137, *(v10 + 18));
          v138 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v139 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (v139 != v10)
        {
          v139 = *(v139 + 80);
          if (!v139)
          {
            goto LABEL_217;
          }
        }

        *(v10 + 18) = v129;
      }

LABEL_217:
      v296 = sub_1002B92E4(*v10);
      if (v296)
      {
        sub_1002B986C(v296, 0, &v330);
        if (!v125)
        {
          return;
        }
      }

      else if (sub_10000C240() && (sub_10000AF54("Couldn't find server session for connection 0x%08x - can't change MTU!", v297, v298, v299, v300, v301, v302, v303, *v10), v304 = sub_10000C050(0x44u), os_log_type_enabled(v304, OS_LOG_TYPE_ERROR)))
      {
        sub_1000E09C0();
        if (!v125)
        {
          return;
        }
      }

      else if (!v125)
      {
        return;
      }

      v282 = v330;
      v279 = *(v10 + 32);
      v280 = v10;
      v281 = 0;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid MTU payload size %d.", v271, v272, v273, v274, v275, v276, v277, v124);
        v278 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v279 = *(v10 + 32);
      v280 = v10;
      v281 = 4005;
      v282 = 0;
    }

    v125(v280, v281, v282, v279);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No MTU request matching this response. Ignoring.", v200, v201, v202, v203, v204, v205, v206, v324);
    v207 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_177;
    }
  }
}

void sub_1002B8018(__int128 *a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4)
{
  if (a2 && a3 >= 2)
  {
    v9 = v4;
    v10 = v5;
    if (off_100B66118)
    {
      off_100B66118(a1, *a2, a2 + 1, (a3 - 2), a4, qword_100B66120);
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    if (!sub_10001FF10(v7, 1u))
    {
      v8 = 30;
      if (!sub_10001F968(v7, &v8, 1uLL, 0))
      {
        sub_1002B5DEC(a1, v7, 1, 0);
      }
    }

    sub_1000B7B40(v7);
  }
}

void sub_1002B80E4(uint64_t a1, char a2)
{
  __src[0] = 1;
  __src[1] = a2;
  v6 = 0;
  v7 = 6;
  v2 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (*v2 != a1)
    {
      v2 = *(v2 + 80);
      if (!v2)
      {
        return;
      }
    }

    *(v2 + 24) = 0;
    *(v2 + 56) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 5;
    v3 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(v2 + 48) = v3;
    if (v3)
    {
      memmove(v3, __src, *(v2 + 40));
      if (!sub_1002B6254(v2))
      {
        return;
      }

      v4 = *(v2 + 48);
      if (v4)
      {
        sub_10000C1E8(v4);
      }
    }

    *(v2 + 48) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
  }
}

uint64_t sub_1002B81AC(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    if (*(a1 + 86))
    {
      v2 = 625 * *(a1 + 86);
    }

    else
    {
      v2 = 7500;
    }

    if (*(a1 + 70))
    {
      v3 = 527;
    }

    else
    {
      v12 = sub_1002C0F90(*(a1 + 108), *(a1 + 104), v2, *(a1 + 144), *(a1 + 148));
      if (v12)
      {
        v13 = v12 - 4;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Calculated MTU is zero for rx %d, tx %d, and CE %d us, probe %d", v14, v15, v16, v17, v18, v19, v20, *(a1 + 108));
          v21 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v13 = 527;
      }

      if (v13 >= 0x20Fu)
      {
        v3 = 527;
      }

      else
      {
        v3 = v13;
      }
    }

    if (sub_10000C240())
    {
      v29 = "peripheral";
      if (!*(a1 + 70))
      {
        v29 = "central";
      }

      sub_10000AF54("ATT %s MTU %d (calculated %d): for rx %d bytes, tx %d bytes, ce %d us, probestate %d", v22, v23, v24, v25, v26, v27, v28, v29);
      v30 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v34 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid LE Handle", v4, v5, v6, v7, v8, v9, v10, v32);
      v11 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v3;
}

__n128 sub_1002B83C8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result.n128_u64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&qword_100B660E0), vceqzq_s64(*&off_100B660F0))));
  result.n128_u16[0] = vmaxv_u16(result.n128_u64[0]);
  if (result.n128_u8[0])
  {
    sub_1000D660C();
  }

  if (a1)
  {
    result = *a1;
    v3 = *(a1 + 16);
    *&qword_100B660E0 = *a1;
    *&off_100B660F0 = v3;
  }

  return result;
}

double sub_1002B842C()
{
  result = 0.0;
  *&qword_100B660E0 = 0u;
  *&off_100B660F0 = 0u;
  return result;
}

void sub_1002B8444(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1002B5AD4((a1 + 1));
  if (v4)
  {
    *(v4 + 65) = 1;
    if (*(v4 + 64) == 1)
    {
      *(v4 + 64) = 0;
      v5 = *(v4 + 48);
      if (v5)
      {
        if (*(v4 + 40))
        {
          if (a3 != 4832 && a3)
          {
            v6 = 251658240;
            LOBYTE(v6) = *v5;
            sub_1002B84EC(v4, &v6, 4);
          }

          else
          {

            sub_1002B6254(v4);
          }
        }
      }
    }
  }
}

void sub_1002B84EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  if (a3 != 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid error payload size %d.", v10, v11, v12, v13, v14, v15, v16, a3);
      v17 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v6 = a2[3];
  v7 = *(a1 + 48);
  if (!v7)
  {
    return;
  }

  v8 = *a2;
  if (*v7 != v8)
  {
    return;
  }

  if (((v6 < 0x10) & (0x9120u >> v6)) != 0 && (*(a1 + 65) & 1) == 0)
  {
    if (sub_1002DC0C8(*a1))
    {
      if ((sub_1000CB318(*a1) & 1) == 0)
      {
        if (v6 != 15)
        {
          if (v6 == 8)
          {
            if (!sub_10000C240())
            {
              goto LABEL_71;
            }

            sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION", v49, v50, v51, v52, v53, v54, v55, v63);
            v34 = sub_10000C050(0x44u);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }

          if (v6 != 5)
          {
            goto LABEL_7;
          }
        }

        v26 = sub_1002DBE90(*a1);
LABEL_72:
        if (v26 == 4804 || !v26)
        {
          *(a1 + 64) = 1;
          sub_10002242C(*(a1 + 60));
          return;
        }

        goto LABEL_7;
      }

      if (sub_1002DBFE8(*a1))
      {
        if (v6 != 12)
        {
          goto LABEL_7;
        }

        goto LABEL_64;
      }

      switch(v6)
      {
        case 0xC:
LABEL_64:
          v26 = sub_1002B8A34(a1);
          goto LABEL_72;
        case 8:
          if (!sub_10000C240())
          {
            goto LABEL_71;
          }

          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION", v56, v57, v58, v59, v60, v61, v62, v63);
          v34 = sub_10000C050(0x44u);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_71;
          }

          break;
        case 5:
          if (!sub_10000C240())
          {
            goto LABEL_71;
          }

          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHENTICATION", v35, v36, v37, v38, v39, v40, v41, v63);
          v34 = sub_10000C050(0x44u);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_71;
          }

          break;
        default:
          goto LABEL_7;
      }

LABEL_70:
      *buf = 136446210;
      v65 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
LABEL_71:
      v26 = sub_1002E73A0(*a1, 1);
      goto LABEL_72;
    }

    switch(v6)
    {
      case 0xF:
        if (sub_10000C240())
        {
          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_ENCRYPTION startAutoPairing=%d", v42, v43, v44, v45, v46, v47, v48, *(a1 + 67));
          v25 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
LABEL_61:
            *buf = 136446210;
            v65 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        break;
      case 8:
        if (!sub_10000C240())
        {
          goto LABEL_71;
        }

        sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION", v27, v28, v29, v30, v31, v32, v33, v63);
        v34 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      case 5:
        if (sub_10000C240())
        {
          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHENTICATION startAutoPairing=%d", v18, v19, v20, v21, v22, v23, v24, *(a1 + 67));
          v25 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_61;
          }
        }

        break;
      default:
        goto LABEL_7;
    }

    if (*(a1 + 67) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_7:
  sub_10002242C(*(a1 + 60));
  *(a1 + 60) = 0;
  *(a1 + 24) = 0;
  v9 = *(a1 + 48);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(a1 + 48) = 0;
  if (v8 <= 13)
  {
    if (v8 <= 7)
    {
      if (v8 == 2)
      {
        v3(a1, v6, 0, *(a1 + 32));
        return;
      }

      if (v8 != 4 && v8 != 6)
      {
        return;
      }

LABEL_32:
      (v3)(a1, v6, 0, 0, *(a1 + 32));
      return;
    }

    if (v8 != 8)
    {
      if (v8 != 10 && v8 != 12)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_37:
    (v3)(a1, v6, 0, 0, 0, *(a1 + 32));
    return;
  }

  if (v8 <= 21)
  {
    if (v8 == 14)
    {
      goto LABEL_32;
    }

    if (v8 == 16)
    {
      goto LABEL_37;
    }

    if (v8 != 18)
    {
      return;
    }

LABEL_36:
    (v3)(a1, v6, *(a1 + 32));
    return;
  }

  if (v8 == 22)
  {
    (v3)(a1, v6, 0, 0, 0, 0, *(a1 + 32));
    return;
  }

  if (v8 == 24 || v8 == 210)
  {
    goto LABEL_36;
  }
}

uint64_t sub_1002B8A34(uint64_t *a1)
{
  v31 = 0;
  v2 = sub_1002DC14C(*a1, &v31);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to retrieve LTK size : %!.", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (v31 == 16)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Already using max key size. Erroring out.", v12, v13, v14, v15, v16, v17, v18, v30);
      v19 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1424;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("GATT is Asking to pair due to short encryption link", v20, v21, v22, v23, v24, v25, v26, v30);
      v27 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10000C0FC();
        *buf = 136446210;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_1002E73A0(*a1, 1);
  }

  return v3;
}

void sub_1002B8BB8(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (a3 != 702)
  {
    if (a3 || !sub_1000ABD24(a2))
    {
      if (sub_10000C240())
      {
        v15 = a2 ? *a2 : 0;
        sub_10000AF54("GATT connection notification from lmHandle 0x%x (%x) with status %!", v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      v4 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (*v4 != a2)
        {
          v4 = v4[10];
          if (!v4)
          {
            goto LABEL_7;
          }
        }

        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("ATT already has a bearer for this !", v17, v18, v19, v20, v21, v22, v23, v33);
        v24 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_1000E09C0();
LABEL_24:
        sub_1000D660C();
        return;
      }

LABEL_7:
      v5 = sub_1000BE280(a2);
      v6 = sub_1002B5B0C(a2, !v5);
      if (!v6)
      {
        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("ATT failed to create session", v25, v26, v27, v28, v29, v30, v31, v33);
        v32 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v7 = qword_100B660E0;
      if (qword_100B660E0)
      {

        (v7)(a2, v6, 0);
      }
    }
  }
}

void sub_1002B8D48(unsigned __int16 *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_1002B5CA4(a1);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v6, v7, v8, v9, v10, v11, v12, v5);
        v13 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    if (off_100B660E8)
    {
      off_100B660E8(a1, a2);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("_GATT_LE_DisconnectedCB lmhandle 0x%x (0x%x) is not valid with reason %!", v14, v15, v16, v17, v18, v19, v20, 0);
    v21 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002B8E34(unsigned __int16 *a1, int a2)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (a2)
  {
    if (sub_10000C240())
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        v11 = 0;
      }

      sub_10000AF54("GATT ready notification from lmHandle 0x%x (%x) with error %!", v4, v5, v6, v7, v8, v9, v10, v11);
      v13 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (a1)
    {
      sub_1002BA624(a1);
    }

    if (off_100B660F0)
    {
      v12 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (*v12 != a1)
        {
          v12 = *(v12 + 80);
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v14 = *(v12 + 66);
        v15 = sub_1002B81AC(a1);
        v16 = off_100B660F0;
        if (off_100B660F0)
        {

          (v16)(a1, v14, v15, 0);
        }
      }

      else
      {
LABEL_13:

        sub_1000D660C();
      }
    }
  }
}

void sub_1002B8F74(void *ptr)
{
  if (ptr)
  {
    v2 = ptr[1];
    if (v2)
    {
      sub_1000BC14C(v2);
    }

    sub_10000C1E8(ptr);
  }
}

void sub_1002B8FC0(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = *(&xmmword_100B66100 + 1);
  if (v1)
  {
    v3 = *(&xmmword_100B66100 + 1) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Bearer is not valid", v4, v5, v6, v7, v8, v9, v10, v33);
    v11 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_9;
  }

  while (v2 != v1)
  {
    v2 = v2[10];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v12 = *v1;
  v13 = sub_10000C240();
  if (!v12)
  {
    if (!v13)
    {
      return;
    }

    sub_10000AF54("Bearer handle is not valid", v14, v15, v16, v17, v18, v19, v20, v33);
    v23 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_9:
    sub_1000E09C0();
    return;
  }

  if (v13)
  {
    sub_10000AF54("Timeout waiting for ATT response, forcing a disconnect.", v14, v15, v16, v17, v18, v19, v20, v33);
    v21 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v35 = *(v1 + 2);
  v36 = *(v1 + 6);
  v34 = *(v1 + 14);
  if (*v1)
  {
    if (*(*v1 + 2))
    {
      if (*(*v1 + 2) != 4)
      {
        return;
      }

      v22 = sub_1002D1EAC(&v34);
    }

    else
    {
      v22 = sub_1001BCD64((*(v1 + 8) << 40) | (*(v1 + 9) << 32) | (*(v1 + 10) << 24) | (*(v1 + 11) << 16) | (*(v1 + 12) << 8) | *(v1 + 13));
    }

    v24 = v22;
    if (v22)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT disconnect timedout with status %!", v25, v26, v27, v28, v29, v30, v31, v24);
        v32 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_1002B9188()
{
  v0 = sub_1001BBBD8(0x10uLL, 0x10200408CB94CA5uLL);
  *(&xmmword_100B66170 + 1) = v0;
  if (v0)
  {
    v1 = v0;
    result = 0;
    *v1 = 1;
    word_100B66180 = 1;
    LOBYTE(xmmword_100B66160) = 1;
    LOBYTE(xmmword_100B66170) = 1;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate zero-index handle!", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4013;
  }

  return result;
}

double sub_1002B9234()
{
  result = 0.0;
  xmmword_100B66190 = 0u;
  *&qword_100B661A0 = 0u;
  xmmword_100B66170 = 0u;
  *&word_100B66180 = 0u;
  xmmword_100B66160 = 0u;
  xmmword_100B661C0 = 0u;
  xmmword_100B661D0 = 0u;
  xmmword_100B661E0 = 0u;
  off_100B661F0 = 0;
  dword_100B661F8 = 0;
  return result;
}

__n128 sub_1002B926C(uint64_t a1)
{
  result.n128_u64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(xmmword_100B661C0), vceqzq_s64(xmmword_100B661D0))));
  result.n128_u16[0] = vmaxv_u16(result.n128_u64[0]);
  if ((result.n128_u8[0] & 1) == 0 && *a1 && *(a1 + 8) && *(a1 + 16))
  {
    if (*(a1 + 24))
    {
      result = *a1;
      v2 = *(a1 + 16);
      v3 = *(a1 + 32);
      off_100B661F0 = *(a1 + 48);
      xmmword_100B661D0 = v2;
      xmmword_100B661E0 = v3;
      xmmword_100B661C0 = result;
    }
  }

  return result;
}

void *sub_1002B92E4(uint64_t a1)
{
  result = *(&xmmword_100B66160 + 1);
  if (*(&xmmword_100B66160 + 1))
  {
    do
    {
      if (*result == a1)
      {
        break;
      }

      result = result[3];
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 32))
  {
    sub_1000D660C();
  }

  if (a3 >= 0x201)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Number of requested handles (%d) exceeds maximum allowed (%d)", v6, v7, v8, v9, v10, v11, v12, a3);
      v13 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4016;
  }

  if (a1)
  {
    v15 = *(*(*(&xmmword_100B66170 + 1) + 16 * a1 + 8) + 24);
  }

  else
  {
    v15 = 0xFFFF;
  }

  v16 = word_100B66180;
  v17 = a1 + 1;
  if (a1 + 1 < word_100B66180 && v15 > a1)
  {
    v19 = *(&xmmword_100B66170 + 1);
    do
    {
      v20 = (*(&xmmword_100B66170 + 1) + 16 * v17);
      v21 = *v20;
      if (v21 == 2)
      {
        v22 = *(*(v20 + 1) + 24);
      }

      else if (*v20)
      {
        v22 = v17;
      }

      else
      {
        if (a3 && v17 < word_100B66180)
        {
          v22 = v17;
          if (v17 <= v15)
          {
            v21 = 0;
            v23 = v17;
            v24 = (*(&xmmword_100B66170 + 1) + 16 * v17);
            while (1)
            {
              v25 = *v24;
              v24 += 16;
              if (v25)
              {
                break;
              }

              ++v21;
              v22 = v23 + 1;
              if (v23 + 1 < word_100B66180 && v23 < v15)
              {
                ++v23;
                if (v21 < a3)
                {
                  continue;
                }
              }

              goto LABEL_32;
            }

            v22 = v23;
          }
        }

        else
        {
          v22 = v17;
        }

LABEL_32:
        if (v21 == a3)
        {
          *v20 = 2;
          v16 = v17;
          goto LABEL_45;
        }
      }

      v17 = v22 + 1;
    }

    while (v22 + 1 < word_100B66180 && v22 < v15);
  }

  if (a1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_49;
    }

    sub_10000AF54("No room for %d attributes in group [0x%04x -> 0x%04x]", v26, v27, v28, v29, v30, v31, v32, (a3 + 1));
    v33 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v34 = sub_1001BBBD8(16 * (word_100B66180 + a3) + 16, 0x10200408CB94CA5uLL);
  if (v34)
  {
    v19 = v34;
    v35 = *(&xmmword_100B66170 + 1);
    if (!*(&xmmword_100B66170 + 1))
    {
      sub_1000D660C();
      v35 = *(&xmmword_100B66170 + 1);
    }

    memmove(v19, v35, 16 * word_100B66180);
    sub_10000C1E8(*(&xmmword_100B66170 + 1));
    *(&xmmword_100B66170 + 1) = v19;
    word_100B66180 += a3 + 1;
    *(v19 + 16 * v16) = 2;
    LOWORD(v17) = v16;
    if (v16)
    {
LABEL_45:
      result = 0;
      *(v19 + 2 * v16 + 1) = a2;
      *a2 = v17;
      *(a2 + 24) = v17 + a3;
      return result;
    }

    goto LABEL_49;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate new handle map of size %d", v36, v37, v38, v39, v40, v41, v42, a3 + word_100B66180 + 1);
    v43 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
LABEL_48:
      sub_1000E09C0();
    }
  }

LABEL_49:
  if (sub_10000C240())
  {
    sub_10000AF54("Can't add attribute to parent handle 0x%04x, with 0x%04x extra handles", v44, v45, v46, v47, v48, v49, v50, a1);
    v51 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4017;
}

void sub_1002B9630(unsigned int a1, int a2)
{
  v2 = *(&xmmword_100B66170 + 1);
  v3 = *(&xmmword_100B66170 + 1) + 16 * a1;
  if (*v3 == 2)
  {
    v4 = *(v3 + 8);
    v5 = v4[12];
    v6 = *v4;
    if (v6 <= v5)
    {
      v8 = 16 * v6;
      v9 = v5 - v6 + 1;
      do
      {
        *(v2 + v8) = 3;
        if (a2)
        {
          v10 = *(v2 + v8 + 8);
          if (v10)
          {
            sub_10000C1E8(v10);
            v2 = *(&xmmword_100B66170 + 1);
          }
        }

        *(v2 + v8 + 8) = 0;
        v8 += 16;
        --v9;
      }

      while (v9);
    }

    if (word_100B66180 - 1 == v5)
    {

      sub_1002B9704();
    }
  }
}

void sub_1002B9704()
{
  v0 = word_100B66180;
  if (word_100B66180)
  {
    v1 = word_100B66180 - 1;
    if (word_100B66180 == 1)
    {
LABEL_10:
      v6 = 0;
      v0 = 1;
    }

    else
    {
      v2 = word_100B66180 - 1;
      v3 = (*(&xmmword_100B66170 + 1) + 16 * v1);
      while (1)
      {
        v5 = *v3;
        v3 -= 16;
        v4 = v5;
        v6 = v2;
        if (v5 != 3 && v4 != 0)
        {
          break;
        }

        --v2;
        v0 = v6;
        if (!v2)
        {
          goto LABEL_10;
        }
      }
    }

    if (v1 > v6)
    {
      v8 = sub_1001BBBD8(16 * v0, 0x10200408CB94CA5uLL);
      if (v8)
      {
        v9 = v8;
        memmove(v8, *(&xmmword_100B66170 + 1), 16 * v0);
        sub_10000C1E8(*(&xmmword_100B66170 + 1));
        *(&xmmword_100B66170 + 1) = v9;
        word_100B66180 = v0;
        if (v6)
        {
          v10 = v9 + 24;
          v11 = v6;
          do
          {
            if (*(v10 - 8) == 2)
            {
              v12 = *v10;
              if (*v10)
              {
                if (*(v12 + 24) > v6)
                {
                  *(v12 + 24) = v6;
                }
              }
            }

            v10 += 2;
            --v11;
          }

          while (v11);
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Failed to allocate new handle map of size %d", v13, v14, v15, v16, v17, v18, v19, v0);
        v20 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

void sub_1002B986C(uint64_t a1, int a2, _WORD *a3)
{
  v5 = &xmmword_100B66160 + 1;
  do
  {
    v6 = *v5;
    v5 = (*v5 + 24);
  }

  while (v6 != a1 && v6 != 0);
  if (v6)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        sub_1000D660C();
      }

      *(a1 + 16) = 1;
    }

    else
    {
      if (!a3)
      {
        sub_1000D660C();
      }

      *(a1 + 16) = 0;
      *(a1 + 8) = *a3;
      v16 = *(&xmmword_100B661D0 + 1);

      v16(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Couldn't find active session %p!", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002B995C(uint64_t a1, __int16 a2, int a3, const void *a4, int a5)
{
  v53 = 0;
  v10 = &xmmword_100B66160 + 1;
  do
  {
    v11 = *v10;
    v10 = (*v10 + 24);
  }

  while (v11 != a1 && v11 != 0);
  if (v11)
  {
    if (xmmword_100B66170 == 1)
    {
      if (*(a1 + 16))
      {
        return 146;
      }

      else
      {
        v23 = sub_1001BBBD8(*(a1 + 8), 0x100004077774924uLL);
        if (v23)
        {
          v24 = v23;
          if (a3)
          {
            v25 = 27;
          }

          else
          {
            v25 = 29;
          }

          *v23 = v25;
          *(v23 + 1) = a2;
          if (*(a1 + 8) - 3 < a5)
          {
            LOWORD(a5) = *(a1 + 8) - 3;
          }

          memmove(v23 + 3, a4, a5);
          if ((a3 & 1) == 0 && *(a1 + 12) && (sub_1000D660C(), *(a1 + 12)))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Session 0x%x already has an outstanding indication!", v26, v27, v28, v29, v30, v31, v32, a1);
              v33 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            sub_10000C1E8(v24);
            return 4020;
          }

          else
          {
            v13 = sub_1002B9C28(*a1, v24, (a5 + 3), &v53);
            sub_10000C1E8(v24);
            if (v13)
            {
              if (sub_10000C240())
              {
                v41 = "indication";
                if (a3)
                {
                  v41 = "notification";
                }

                sub_10000AF54("Failed to send %s for session 0x%x with result %!", v34, v35, v36, v37, v38, v39, v40, v41);
                v42 = sub_10000C050(0x44u);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }
            }

            else
            {
              LOBYTE(xmmword_100B66170) = v53;
              if ((a3 & 1) == 0)
              {
                v52[1] = a1;
                v52[0] = 8;
                sub_10002195C(sub_1002B9CD8, v52, dword_100B53E28, (a1 + 12));
              }

              return 0;
            }
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to allocate memory for update", v43, v44, v45, v46, v47, v48, v49, v51);
            v50 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 4019;
        }
      }
    }

    else
    {
      return 410;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't find active session %p!", v14, v15, v16, v17, v18, v19, v20, a1);
      v21 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4018;
  }

  return v13;
}

uint64_t sub_1002B9C28(__int128 *a1, char *a2, size_t a3, BOOL *a4)
{
  memset(v12, 0, sizeof(v12));
  v8 = sub_10001FF10(v12, 1u);
  if (v8 || (v8 = sub_10001F968(v12, a2, a3, 2u), v8))
  {
    v9 = v8;
  }

  else
  {
    v11 = sub_1002B5DEC(a1, v12, 1, a4);
    if (v11 == 412)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11;
    }
  }

  sub_1000B7B40(v12);
  return v9;
}

void sub_1002B9CD8(uint64_t a1)
{
  v1 = *(&xmmword_100B66160 + 1);
  if (!*(&xmmword_100B66160 + 1))
  {
    return;
  }

  v2 = **(a1 + 8);
  while (1)
  {
    v3 = *v1;
    if (*v1 == v2)
    {
      break;
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return;
    }
  }

  if (!sub_10000C240() || (sub_10000AF54("Timed out waiting for indication response - disconnecting!", v4, v5, v6, v7, v8, v9, v10, v32), v11 = sub_10000C050(0x44u), !os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    if (v2)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (sub_10000C240())
    {
      v30 = 0;
LABEL_24:
      sub_10000AF54("Invalid transport %d in Indication Response Timeout Handler", v23, v24, v25, v26, v27, v28, v29, v30);
      v31 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_26:
    sub_1000D660C();
    return;
  }

  sub_1000E09C0();
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (!v3[2])
  {
    v14 = sub_1001BCD64((v3[48] << 40) | (v3[49] << 32) | (v3[50] << 24) | (v3[51] << 16) | (v3[52] << 8) | v3[53]);
    goto LABEL_14;
  }

  if (v3[2] != 4)
  {
    if (sub_10000C240())
    {
      v30 = v3[2] == 4;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  *(v33 + 3) = 0;
  v33[0] = 0;
  v12 = sub_1002D0158(v3, v33, 0);
  v13 = 0;
  if (!v12)
  {
    *(v2 + 132) = 6;
    *(v2 + 140) = 4541;
    v14 = sub_1002D1EAC(v33);
LABEL_14:
    v13 = v14;
  }

  if (v13 && sub_10000C240())
  {
    sub_10000AF54("ATT disconnect failure during Indication response with status %!", v15, v16, v17, v18, v19, v20, v21, v13);
    v22 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002B9EB0()
{
  v0 = word_100B66180;
  if (word_100B66180 >= 0x100uLL)
  {
    LOBYTE(result) = 0;
    v2 = *(&xmmword_100B66170 + 1);
    do
    {
      v4 = *v2;
      v2 += 16;
      v3 = v4;
      if (result)
      {
        result = 1;
        if (v3 == 2)
        {
          return result;
        }
      }

      else
      {
        if (v3)
        {
          v5 = v3 == 3;
        }

        else
        {
          v5 = 1;
        }

        LOBYTE(result) = v5;
      }

      --v0;
    }

    while (v0);
  }

  return 0;
}

_WORD *sub_1002B9F00(uint64_t a1, __int16 a2)
{
  v4 = sub_1001BBBD8(0x28uLL, 0x102004033BF8BFCuLL);
  v5 = v4;
  if (v4)
  {
    v6 = *(&xmmword_100B66160 + 1);
    *v4 = a1;
    v4[4] = a2;
    sub_1000CD5B8(a1);
    while (v6)
    {
      v7 = v6;
      v6 = *(v6 + 24);
      if (!v6)
      {
        *(v7 + 24) = v5;
        *(v5 + 4) = v7;
        goto LABEL_10;
      }
    }

    *(&xmmword_100B66160 + 1) = v5;
LABEL_10:
    sub_1002B9FDC(a1, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate new DB session!", v8, v9, v10, v11, v12, v13, v14, v17);
    v15 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v5;
}

void sub_1002B9FDC(uint64_t a1, int a2)
{
  v2 = word_100B661A8;
  if (word_100B661A8)
  {
    v3 = *(&xmmword_100B66190 + 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = 0;
    v7 = qword_100B661A0;
    v8 = 1;
    v9 = word_100B661A8;
    do
    {
      v10 = (v7 + v6);
      if (!a1 || *v10 == a1)
      {
        if (a2)
        {
          sub_1002BA9F0(*(v7 + v6), *(v7 + v6 + 8), *(v7 + v6 + 16), 0);
        }

        sub_10000C1E8(*(v7 + v6 + 8));
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        --v9;
        v2 = word_100B661A8;
        v7 = qword_100B661A0;
        v11 = *(&xmmword_100B66190 + 1) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v8 >= v2)
      {
        break;
      }

      v6 += 24;
      ++v8;
    }

    while (v11);
    if (v9 != v2)
    {
      if (!v9)
      {
        v13 = 0;
        v15 = qword_100B661A0;
        goto LABEL_26;
      }

      v12 = sub_1001BBBD8(24 * v9, 0x1030040118C0280uLL);
      if (v12)
      {
        v13 = v12;
        v14 = word_100B661A8;
        v15 = qword_100B661A0;
        if (word_100B661A8)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = &v15[v16];
            if (*&v15[v16])
            {
              if (v18 >= v9)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Not enough allocation to update stalled request", v31, v32, v33, v34, v35, v36, v37, v39);
                  v38 = sub_10000C050(0x44u);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_10000C1E8(v13);
                return;
              }

              v20 = v18++;
              v21 = &v13[24 * v20];
              v22 = *v19;
              *(v21 + 2) = *(v19 + 2);
              *v21 = v22;
              v15 = qword_100B661A0;
              v14 = word_100B661A8;
            }

            ++v17;
            v16 += 24;
          }

          while (v17 < v14);
        }

LABEL_26:
        sub_10000C1E8(v15);
        qword_100B661A0 = v13;
        word_100B661A8 = v9;
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to allocate room for updated stall queue", v23, v24, v25, v26, v27, v28, v29, v39);
        v30 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

void sub_1002BA214(unsigned __int16 *a1)
{
  v2 = *(&xmmword_100B66160 + 1);
  v3 = sub_1002BCE9C(a1, 1);
  for (i = 0; v3; v3 = sub_1002BCE9C(a1, 1))
  {
    sub_1002BA3E8(v3);
    i = (i + 1);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE_ATT_DB_DestroySession dequeue count: %d", v5, v6, v7, v8, v9, v10, v11, i);
    v12 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v2)
  {
    while (*v2 != a1)
    {
      v2 = v2[3];
      if (!v2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to find the DB session to destroy!", v13, v14, v15, v16, v17, v18, v19, v25);
      v20 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
    v2 = 0;
  }

  v21 = *(v2 + 3);
  if (v21)
  {
    sub_10002242C(v21);
    xmmword_100B661D0(v2);
  }

  if (xmmword_100B661E0)
  {
    xmmword_100B661E0(0, v2, 0, 0, 0);
  }

  sub_1002B9FDC(a1, 0);
  v23 = v2[3];
  v22 = v2[4];
  v24 = (v22 + 12);
  if (!v22)
  {
    v24 = &xmmword_100B66160 + 1;
  }

  *v24 = v23;
  if (v23)
  {
    *(v23 + 4) = v22;
  }

  sub_10000C1E8(v2);
}

void sub_1002BA3E8(uint64_t a1)
{
  if (xmmword_100B66190)
  {
    v2 = 0;
    v3 = 72 * (xmmword_100B66190 - 1);
    for (i = 72; ; i += 72)
    {
      v5 = (qword_100B66188 + i - 72);
      if (v5 == a1 && *a1 == *v5)
      {
        break;
      }

      ++v2;
      v3 -= 72;
      if (xmmword_100B66190 == v2)
      {
        return;
      }
    }

    v6 = xmmword_100B66190 - 1;
    if (xmmword_100B66190 == 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = sub_1001BBBD8(72 * (xmmword_100B66190 - 1), 0x10B0040592477A1uLL);
      v8 = v7;
      if (v2)
      {
        memmove(v7, qword_100B66188, i - 72);
      }

      if (v6 > v2)
      {
        memmove((v8 + i - 72), (qword_100B66188 + i), v3);
      }
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      sub_10000C1E8(v9);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      sub_10000C1E8(v10);
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      sub_10002242C(v11);
    }

    sub_10000C1E8(qword_100B66188);
    qword_100B66188 = v8;
    LOWORD(xmmword_100B66190) = v6;
  }
}

void sub_1002BA558(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Overriding ATT MTU to %d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  word_100B661FC = a1;
}

uint64_t sub_1002BA624(uint64_t a1)
{
  v59[2] = 0;
  *v59 = 3;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (!a1 && sub_10000C240() && (sub_10000AF54("LE ATT DB Handle MTU Change Request null hci handle", v3, v4, v5, v6, v7, v8, v9, v58), v10 = sub_10000C050(0x44u), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (i)
    {
      goto LABEL_12;
    }
  }

  else if (i)
  {
    goto LABEL_12;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE ATT DB Handle MTU Change Request session not found", v11, v12, v13, v14, v15, v16, v17, v58);
    v18 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_1000D660C();
LABEL_12:
  v19 = *(i + 18);
  if (!*(i + 18))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No pending ATT MTU requests", v21, v22, v23, v24, v25, v26, v27, v58);
      v28 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v61 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  *(i + 18) = 0;
  if (a1 && !*(a1 + 2))
  {
    v20 = *(i + 8);
  }

  else
  {
    v20 = word_100B661FC;
    if (!word_100B661FC)
    {
      v20 = sub_1002B81AC(a1);
    }
  }

  if (v19 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v19;
  }

  v30 = *(i + 8);
  if (v30 != 23 && v29 != v30)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("The negotiated MTU is different from a previously negotiated one: %u != %u", v31, v32, v33, v34, v35, v36, v37, *(i + 8));
      v38 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  *&v59[1] = v29;
  if (sub_10000C240())
  {
    sub_10000AF54("MTU response: desiredMTU %d, remoteMTU %d", v39, v40, v41, v42, v43, v44, v45, v20);
    v46 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v61 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1002B9C28(a1, v59, 3uLL, 0))
  {
    *buf = 513;
    LOBYTE(v61) = 17;
    return sub_1002B9C28(a1, buf, 5uLL, 0);
  }

  *(i + 8) = v29;
  v48 = sub_1002D4758(a1, v29);
  if (!v48)
  {
    if (off_100B661F0)
    {
      off_100B661F0(i, v29);
    }

    return 0;
  }

  v47 = v48;
  if (sub_10000C240())
  {
    sub_10000AF54("ATT DB failed to set GATT MTU", v49, v50, v51, v52, v53, v54, v55, v58);
    v56 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v47;
}

uint64_t sub_1002BA980(uint64_t a1)
{
  v1 = *(&xmmword_100B66160 + 1);
  if (!*(&xmmword_100B66160 + 1))
  {
    return 4202;
  }

  while (*v1 != a1)
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 4202;
    }
  }

  v3 = *(v1 + 12);
  if (!v3)
  {
    return 4203;
  }

  sub_10002242C(v3);
  *(v1 + 12) = 0;
  xmmword_100B661D0(v1);
  return 0;
}

void sub_1002BA9F0(__int128 *a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  if (!sub_1000ABD24(a1) && !sub_1000B8B5C(a1) || !a2 || !a3)
  {
    return;
  }

  if ((xmmword_100B66160 & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring request as ATT database is not initialized!", v17, v18, v19, v20, v21, v22, v23, v76);
      v24 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    return;
  }

  if ((*a2 | 0x80) == 0xD2 || !sub_1002BCE9C(a1, 0))
  {
    v8 = *(&xmmword_100B66160 + 1);
    if (*(&xmmword_100B66160 + 1))
    {
      while (*v8 != a1)
      {
        v8 = v8[3];
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (sub_10000C240())
      {
        v16 = a1 ? *a1 : 0;
        sub_10000AF54("Couldn't find active session for ATT Request lmHandle 0x%x request %d", v9, v10, v11, v12, v13, v14, v15, v16);
        v33 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000D660C();
    }

    v34 = *a2;
    if (*(&xmmword_100B66190 + 1))
    {
      if ((v34 | 0x80) == 0xD2)
      {
        return;
      }

      v35 = word_100B661A8;
      if (word_100B661A8)
      {
        v36 = qword_100B661A0;
        while (*v36 != a1)
        {
          v36 += 3;
          if (!--v35)
          {
            goto LABEL_30;
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Ignoring request as connection 0x%x already has one in the stall queue", v43, v44, v45, v46, v47, v48, v49, a1);
          v50 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }
        }

        return;
      }

LABEL_30:
      v37 = sub_100007618(a3, 0x100004077774924uLL);
      if (v37)
      {
        v38 = v37;
        memmove(v37, a2, a3);
        v39 = sub_1001BBBD8(24 * word_100B661A8 + 24, 0x1030040118C0280uLL);
        if (v39)
        {
          v40 = v39;
          v41 = &v39[24 * word_100B661A8];
          *v41 = a1;
          *(v41 + 1) = v38;
          *(v41 + 8) = a3;
          *(v41 + 18) = 0;
          *(v41 + 11) = 0;
          if (qword_100B661A0)
          {
            memmove(v39, qword_100B661A0, 24 * word_100B661A8);
            sub_10000C1E8(qword_100B661A0);
          }

          qword_100B661A0 = v40;
          ++word_100B661A8;
          return;
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Failed to add new request to stall queue", v59, v60, v61, v62, v63, v64, v65, v76);
        v66 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Failed to backup stalled request", v51, v52, v53, v54, v55, v56, v57, v76);
        v58 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

LABEL_79:
      sub_1000E09C0();
      return;
    }

    if (*a2 <= 0xDu)
    {
      if (*a2 <= 7u)
      {
        switch(v34)
        {
          case 2:
            v42 = sub_1002BAF18(a1, a2, a3);
            break;
          case 4:
            v42 = sub_1002BB160(a1, a2, a3);
            break;
          case 6:
            v42 = sub_1002BB4C8(a1, a2, a3, a4);
            break;
          default:
            goto LABEL_77;
        }

        goto LABEL_71;
      }

      if (v34 != 8)
      {
        if (v34 != 10 && v34 != 12)
        {
          goto LABEL_77;
        }

        v42 = sub_1002BBD14(a1, a2, a3, a4);
        goto LABEL_71;
      }
    }

    else
    {
      if (*a2 > 0x15u)
      {
        if (*a2 <= 0x1Du)
        {
          if (v34 != 22)
          {
            if (v34 == 24)
            {
              v42 = sub_1002BCBBC(a1, a2, a3);
              goto LABEL_71;
            }

LABEL_77:
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("LE_ATT_DB_ProcessClientRequest opcode 0x%x failed with %!", v68, v69, v70, v71, v72, v73, v74, *a2);
            v75 = sub_10000C050(0x44u);
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_79;
          }

          goto LABEL_59;
        }

        if (v34 != 30)
        {
          if (v34 != 82)
          {
            goto LABEL_77;
          }

          goto LABEL_59;
        }

        v42 = sub_1002BA980(a1);
LABEL_71:
        if (v42 > 4309)
        {
          if (v42 == 4310)
          {
            return;
          }

          v67 = 4540;
        }

        else
        {
          if (!v42)
          {
            return;
          }

          v67 = 4300;
        }

        if (v42 == v67)
        {
          return;
        }

        goto LABEL_77;
      }

      if (v34 == 14)
      {
        v42 = sub_1002BC0AC(a1, a2, a3, a4);
        goto LABEL_71;
      }

      if (v34 != 16)
      {
        if (v34 != 18)
        {
          goto LABEL_77;
        }

LABEL_59:
        v42 = sub_1002BC4DC(a1, a2, a3);
        goto LABEL_71;
      }
    }

    v42 = sub_1002BB820(a1, a2, a3, a4);
    goto LABEL_71;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Ignoring request [%@] as connection 0x%x is already pending transaction %d", v25, v26, v27, v28, v29, v30, v31, a2);
    v32 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }
  }
}

uint64_t sub_1002BAF18(uint64_t a1, uint64_t a2, int a3)
{
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (a1)
  {
    if (!i)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE ATT DB Handle MTU Change Request session not found", v7, v8, v9, v10, v11, v12, v13, v42);
        v14 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000D660C();
    }

    if (a3 != 3)
    {
      *buf = 513;
      v24 = 4;
LABEL_21:
      LOBYTE(v44) = v24;
      return sub_1002B9C28(a1, buf, 5uLL, 0);
    }

    v15 = *(a2 + 1);
    *(i + 18) = v15;
    if (v15 <= 0x16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid requested MTU %d", v16, v17, v18, v19, v20, v21, v22, *(i + 18));
        v23 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *buf = 513;
      v24 = 17;
      goto LABEL_21;
    }

    if (*(a1 + 132) == 7)
    {
      return sub_1002BA624(a1);
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Peer asked for MTU:%d while link is not ready, waiting for link to be ready", v34, v35, v36, v37, v38, v39, v40, *(i + 18));
        v41 = sub_10000C050(0x44u);
        result = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          *buf = 136446210;
          v44 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          return 0;
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE ATT DB Handle MTU Change Request null hci handle", v25, v26, v27, v28, v29, v30, v31, v42);
      v32 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 414;
  }

  return result;
}

uint64_t sub_1002BB160(__int128 *a1, char *a2, unsigned int a3)
{
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (a3 <= 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Find Information Request", v5, v6, v7, v8, v9, v10, v11, v48);
      v12 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v50 = 1025;
    v13 = 4;
    goto LABEL_33;
  }

  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = *(a2 + 3);
  if (v16 <= (v15 - 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Find Information Request", v30, v31, v32, v33, v34, v35, v36, v15);
      v37 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v13 = 1;
    LOBYTE(v50) = 1;
    BYTE1(v50) = v14;
    HIWORD(v50) = v15;
    goto LABEL_33;
  }

  v17 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  if (!v17)
  {
    LOBYTE(v50) = 1;
    BYTE1(v50) = v14;
    HIWORD(v50) = v15;
    v13 = 17;
    goto LABEL_33;
  }

  v18 = v17;
  v49 = v14;
  v19 = *(i + 8);
  *v17 = 5;
  if (v15 > v16 || (v20 = word_100B66180, v15 >= word_100B66180))
  {
LABEL_27:
    sub_10000C1E8(v18);
    LOBYTE(v50) = 1;
    BYTE1(v50) = v49;
    HIWORD(v50) = v15;
    v13 = 10;
LABEL_33:
    v51 = v13;
    return sub_1002B9C28(a1, &v50, 5uLL, 0);
  }

  v21 = 0;
  v22 = *(&xmmword_100B66170 + 1);
  v23 = 16 * v15;
  v24 = v15;
  v25 = 1;
  do
  {
    if (*(v22 + v23) == 2)
    {
      v26 = *(*(v22 + v23 + 8) + 4);
      if (v21)
      {
        if (v21 != v26)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v26 == 2)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        v28 = v25++;
        *(v18 + v28) = v27;
        v21 = v26;
      }

      if (v19 - v25 < v21 + 2)
      {
        goto LABEL_35;
      }

      *(v18 + v25) = v24;
      v29 = v25 + 2;
      *(v18 + (v25 + 1)) = BYTE1(v24);
      sub_10007A978(v18 + (v25 + 2), (*(*(&xmmword_100B66170 + 1) + v23 + 8) + 4), 1);
      v25 = v29 + v21;
      v20 = word_100B66180;
      v22 = *(&xmmword_100B66170 + 1);
    }

    if (v24 >= v16)
    {
      break;
    }

    ++v24;
    v23 += 16;
  }

  while (v24 < v20);
  if (v25 == 1)
  {
    goto LABEL_27;
  }

LABEL_35:
  if (!sub_1002B9C28(a1, v18, v25, 0))
  {
    sub_10000C1E8(v18);
    return 0;
  }

  LOBYTE(v50) = 1;
  BYTE1(v50) = v49;
  HIWORD(v50) = v15;
  v51 = 17;
  v39 = sub_1002B9C28(a1, &v50, 5uLL, 0);
  sub_10000C1E8(v18);
  result = 0;
  if (v39)
  {
    if (v39 != 412)
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("ATT Send status %!", v40, v41, v42, v43, v44, v45, v46, v39);
        v47 = sub_10000C050(0x44u);
        result = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10080F604();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BB4C8(__int128 *a1, _DWORD *a2, unsigned int a3, char a4)
{
  v52 = 0;
  v51 = 0;
  v49 = 0;
  *ptr = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  LODWORD(v45) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v46 + 1) = i;
  if (a3 <= 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Find By Type Value Request", v9, v10, v11, v12, v13, v14, v15, v42);
      v16 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LODWORD(v43[0]) = 1537;
    v17 = 4;
    goto LABEL_9;
  }

  *v50 = *a2;
  *&v50[3] = *(a2 + 3);
  v18 = *&v50[1];
  if (*&v50[3] <= (*&v50[1] - 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Find By Type Value Request", v23, v24, v25, v26, v27, v28, v29, *&v50[1]);
      v30 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v43[0]) = 1;
    BYTE1(v43[0]) = v50[0];
    WORD1(v43[0]) = *&v50[1];
    BYTE4(v43[0]) = 1;
    return sub_1002B9C28(a1, v43, 5uLL, 0);
  }

  if (a3 != 7)
  {
    v51 = a2 + 7;
    v52 = a3 - 7;
  }

  v19 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v19;
  if (!v19)
  {
    LOBYTE(v43[0]) = 1;
    BYTE1(v43[0]) = v50[0];
    WORD1(v43[0]) = *&v50[1];
    v17 = 17;
LABEL_9:
    BYTE4(v43[0]) = v17;
    return sub_1002B9C28(a1, v43, 5uLL, 0);
  }

  LOWORD(v48) = *(i + 8);
  WORD1(v48) = 1;
  *v19 = 7;
  v20 = sub_1002BD07C(v50, &v45, a4);
  v21 = v20;
  if (v20 == 240)
  {
    *(&v45 + 1) = sub_1002BD2BC;
    v32 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v48 + 1) = v32;
    LOWORD(v49) = a3;
    if (v32)
    {
      memmove(v32, a2, a3);
      v43[2] = *ptr;
      v43[3] = v48;
      v44 = v49;
      v43[0] = v45;
      v43[1] = v46;
      sub_1002BD518(v43);
      return 4540;
    }

    goto LABEL_26;
  }

  if (v20)
  {
    LOBYTE(v43[0]) = 1;
    BYTE1(v43[0]) = v50[0];
    WORD1(v43[0]) = v18;
    BYTE4(v43[0]) = v20;
    goto LABEL_28;
  }

  v22 = ptr[1];
  if (sub_1002B9C28(a1, ptr[1], WORD1(v48), 0))
  {
LABEL_26:
    LOBYTE(v43[0]) = 1;
    BYTE1(v43[0]) = v50[0];
    WORD1(v43[0]) = v18;
    BYTE4(v43[0]) = 17;
LABEL_28:
    v33 = sub_1002B9C28(a1, v43, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    if (v33)
    {
      if (v33 != 412)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("ATT Send status %!", v34, v35, v36, v37, v38, v39, v40, v33);
          v41 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    goto LABEL_33;
  }

  sub_10000C1E8(v22);
LABEL_33:
  if (v21)
  {
    return (v21 + 4300);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BB820(__int128 *a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v7 = *a2;
  v70 = 0;
  *ptr = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  LODWORD(v66) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v67 + 1) = i;
  if (a3 != 7 && a3 != 21)
  {
    if (sub_10000C240())
    {
      v35 = "Type";
      if (v7 == 16)
      {
        v35 = "Group Type";
      }

      sub_10000AF54("Could not unpack Read By %s Request", v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v37 = *a2;
    v71[0] = 1;
    v71[1] = v37;
    *&v71[2] = 0;
    v27 = 4;
    goto LABEL_50;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  sub_10006A0FC((a2 + 5), (a3 - 5), 1, v71);
  v11 = *v71;
  v12 = *&v71[4];
  v78[0] = *&v71[6];
  *(v78 + 6) = *&v71[12];
  if (v10 <= (v9 - 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Read By %s Request", v19, v20, v21, v22, v23, v24, v25, v9);
      v26 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v27 = 1;
    v71[0] = 1;
    v71[1] = v7;
    *&v71[2] = v9;
    goto LABEL_50;
  }

  if (v7 == 16)
  {
    v13 = xmmword_100B661C0;
    if (!xmmword_100B661C0)
    {
      sub_1000D660C();
      v13 = xmmword_100B661C0;
    }

    *v71 = v11;
    *&v71[4] = v12;
    *&v71[6] = v78[0];
    *&v71[12] = *(v78 + 6);
    if ((v13(v71) & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid grouping type 0x%x for Read By Group Type Request", v46, v47, v48, v49, v50, v51, v52, v12);
        v53 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      *v71 = 4097;
      *&v71[2] = v9;
      v27 = 16;
      goto LABEL_50;
    }
  }

  if (!i)
  {
    if (sub_10000C240())
    {
      v45 = a1 ? *a1 : 0;
      sub_10000AF54("Couldn't find active session for lmHandle 0x%x, Read By Type Request failed", v38, v39, v40, v41, v42, v43, v44, v45);
      v64 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v71[0] = 1;
    v71[1] = v7;
    *&v71[2] = v9;
    v27 = 14;
    goto LABEL_50;
  }

  LOWORD(ptr[0]) = v9;
  v14 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v14;
  if (!v14)
  {
    v71[0] = 1;
    v71[1] = v7;
    *&v71[2] = v9;
    v27 = 17;
LABEL_50:
    v71[4] = v27;
    return sub_1002B9C28(a1, v71, 5uLL, 0);
  }

  LOWORD(v69) = *(i + 8);
  if (v7 == 16)
  {
    v15 = 17;
  }

  else
  {
    v15 = 9;
  }

  WORD1(v69) = 1;
  *v14 = v15;
  v75 = v11;
  v76 = v12;
  *v77 = v78[0];
  *&v77[6] = *(v78 + 6);
  v16 = sub_1002BD724(v7, v9, v10, &v75, 0, &v66, a4);
  if (v16 == 240)
  {
    *(&v66 + 1) = sub_1002BD95C;
    v17 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v69 + 1) = v17;
    LOWORD(v70) = a3;
    if (v17)
    {
      memmove(v17, a2, a3);
      v72 = *ptr;
      v73 = v69;
      v74 = v70;
      *v71 = v66;
      *&v71[16] = v67;
      sub_1002BD518(v71);
      return 4540;
    }

    v71[0] = 1;
    v71[1] = v7;
    *&v71[2] = ptr[0];
    v71[4] = 17;
    v55 = sub_1002B9C28(a1, v71, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    result = 4540;
    if (v55 && v55 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v56, v57, v58, v59, v60, v61, v62, v55);
        v63 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4540;
    }
  }

  else
  {
    v54 = sub_1002BDC1C(*a2, &v66, v16);
    sub_10000C1E8(ptr[1]);
    if (v54)
    {
      return v54 + 4300;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002BBD14(__int128 *a1, char *a2, unsigned int a3, char a4)
{
  v8 = *a2;
  memset(v52, 0, 5);
  v51 = 0;
  *ptr = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  LODWORD(v47) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v48 + 1) = i;
  if (v8 == 12)
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  if (v10 != a3)
  {
    if (sub_10000C240())
    {
      v27 = "Read";
      if (v8 == 12)
      {
        v27 = "Read Blob";
      }

      sub_10000AF54("Could not unpack %s Request", v20, v21, v22, v23, v24, v25, v26, v27);
      v28 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v29 = *a2;
    LOBYTE(v45[0]) = 1;
    BYTE1(v45[0]) = v29;
    WORD1(v45[0]) = 0;
    v19 = 4;
    goto LABEL_20;
  }

  __memmove_chk();
  if (v8 == 12 && *(v52 + 3) >= 0x201u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid offset (%u) for Read By Group Type Request", v11, v12, v13, v14, v15, v16, v17, *(v52 + 3));
      v18 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v45[0]) = 1;
    BYTE1(v45[0]) = v52[0];
    WORD1(v45[0]) = *(v52 + 1);
    v19 = 7;
    goto LABEL_20;
  }

  v31 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v31;
  if (!v31)
  {
    LOBYTE(v45[0]) = 1;
    BYTE1(v45[0]) = v52[0];
    WORD1(v45[0]) = *(v52 + 1);
    v19 = 17;
LABEL_20:
    BYTE4(v45[0]) = v19;
    return sub_1002B9C28(a1, v45, 5uLL, 0);
  }

  LOWORD(v50) = *(i + 8);
  if (v8 == 12)
  {
    v32 = 13;
  }

  else
  {
    v32 = 11;
  }

  WORD1(v50) = 1;
  *v31 = v32;
  v33 = sub_1002BD724(LOBYTE(v52[0]), *(v52 + 1), *(v52 + 1), 0, *(v52 + 3), &v47, a4);
  if (v33 == 240)
  {
    *(&v47 + 1) = sub_1002BD95C;
    v34 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v50 + 1) = v34;
    LOWORD(v51) = a3;
    if (v34)
    {
      memmove(v34, a2, a3);
      v45[2] = *ptr;
      v45[3] = v50;
      v46 = v51;
      v45[0] = v47;
      v45[1] = v48;
      sub_1002BD518(v45);
      return 4540;
    }

    LOBYTE(v45[0]) = 1;
    BYTE1(v45[0]) = v52[0];
    WORD1(v45[0]) = *(v52 + 1);
    BYTE4(v45[0]) = 17;
    v36 = sub_1002B9C28(a1, v45, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    result = 4540;
    if (v36 && v36 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v37, v38, v39, v40, v41, v42, v43, v36);
        v44 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4540;
    }
  }

  else
  {
    v35 = sub_1002BDC1C(*a2, &v47, v33);
    sub_10000C1E8(ptr[1]);
    if (v35)
    {
      return v35 + 4300;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002BC0AC(__int128 *a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v5 = a2;
  v69 = 0;
  *ptr = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  LODWORD(v65) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v66 + 1) = i;
  if (a3 < 5 || (v8 = a3 - 1, ((a3 - 1) & 1) != 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Read Multiple Request", v16, v17, v18, v19, v20, v21, v22, v60);
      v23 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LODWORD(v63[0]) = 3585;
    v24 = 4;
  }

  else
  {
    v10 = a2 + 1;
    v9 = *a2;
    if ((v8 & 0x1FFFE) != 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = *&v10[2 * v11];
        if (v12 >= word_100B66180)
        {
          break;
        }

        v13 = *(&xmmword_100B66170 + 1) + 16 * v12;
        if (*v13 != 2)
        {
          break;
        }

        v14 = sub_1002BDD34(a1, *(*(v13 + 8) + 26), 1);
        if (v14)
        {
          v40 = v14;
          if (sub_10000C240())
          {
            sub_10000AF54("Handle 0x%04x does not have read permissions!", v41, v42, v43, v44, v45, v46, v47, v12);
            v48 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          LOBYTE(v63[0]) = 1;
          BYTE1(v63[0]) = v9;
          WORD1(v63[0]) = v12;
          BYTE4(v63[0]) = v40;
          return sub_1002B9C28(a1, v63, 5uLL, 0);
        }

        if (++v11 >= (v8 >> 1))
        {
          v15 = 0;
          v5 = a2;
          goto LABEL_21;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Handle 0x%04x is invalid!", v32, v33, v34, v35, v36, v37, v38, v12);
        v39 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v24 = 1;
      LOBYTE(v63[0]) = 1;
      BYTE1(v63[0]) = v9;
      WORD1(v63[0]) = v12;
    }

    else
    {
      v15 = 14;
LABEL_21:
      v26 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
      ptr[1] = v26;
      if (v26)
      {
        v27 = v26;
        LOWORD(v68) = *(i + 8);
        WORD1(v68) = 1;
        *v26 = 15;
        if ((v8 & 0x1FFFE) != 0)
        {
          v28 = v5;
          v29 = 0;
          v30 = (v8 >> 1);
          while (1)
          {
            LOWORD(ptr[0]) = *&v10[2 * v29];
            v31 = sub_1002BD724(v9, LOWORD(ptr[0]), LOWORD(ptr[0]), 0, 0, &v65, a4);
            v15 = v31;
            if (v31)
            {
              break;
            }

            if (++v29 >= v30)
            {
              goto LABEL_40;
            }
          }

          if (v31 == 240)
          {
            *(&v65 + 1) = sub_1002BD95C;
            v49 = sub_100007618(a3, 0x100004077774924uLL);
            *(&v68 + 1) = v49;
            LOWORD(v69) = a3;
            if (v49)
            {
              memmove(v49, v28, a3);
              v63[2] = *ptr;
              v63[3] = v68;
              v64 = v69;
              v63[0] = v65;
              v63[1] = v66;
              sub_1002BD518(v63);
            }

            else
            {
              LOBYTE(v63[0]) = 1;
              BYTE1(v63[0]) = v9;
              WORD1(v63[0]) = ptr[0];
              BYTE4(v63[0]) = 17;
              v51 = sub_1002B9C28(a1, v63, 5uLL, 0);
              sub_10000C1E8(ptr[1]);
              result = 4540;
              if (!v51 || v51 == 412)
              {
                return result;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("ATT Send status %!", v52, v53, v54, v55, v56, v57, v58, v51);
                v59 = sub_10000C050(0x44u);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }
            }

            return 4540;
          }

LABEL_40:
          v27 = ptr[1];
          v5 = v28;
        }

        v50 = sub_1002BDC1C(*v5, &v65, v15);
        sub_10000C1E8(v27);
        if (v50)
        {
          return v50 + 4300;
        }

        else
        {
          return 0;
        }
      }

      LOBYTE(v63[0]) = 1;
      BYTE1(v63[0]) = v9;
      WORD1(v63[0]) = 0;
      v24 = 17;
    }
  }

  BYTE4(v63[0]) = v24;
  return sub_1002B9C28(a1, v63, 5uLL, 0);
}

uint64_t sub_1002BC4DC(__int128 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = *a2;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  v8 = dword_100B661F8;
  if (v6 == 82)
  {
    v11 = 0;
    v10 = "Write Command";
  }

  else
  {
    v9 = "Prepare Write Request";
    if (v6 == 18)
    {
      v9 = "Write Request";
    }

    if (v6 == 210)
    {
      v10 = "Signed Write Command";
    }

    else
    {
      v10 = v9;
    }

    v11 = v6 == 210;
    if (a3 <= 0xE && v6 == 210)
    {
      goto LABEL_31;
    }
  }

  v13 = a3 < 5 && v6 == 22;
  if (a3 < 3 || v13)
  {
LABEL_31:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack %s", v27, v28, v29, v30, v31, v32, v33, v10);
      v34 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if ((v6 | 4) != 0x16)
    {
      return 4021;
    }

    LODWORD(v95[0]) = 1;
    v26 = 4;
LABEL_38:
    BYTE4(v95[0]) = v26;
    return sub_1002B9C28(a1, v95, 5uLL, 0);
  }

  v14 = *(a2 + 1);
  if (v6 == 22)
  {
    v15 = 5;
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v15 = 3;
  if (v11)
  {
LABEL_37:
    LOBYTE(v95[0]) = 1;
    BYTE1(v95[0]) = v6;
    WORD1(v95[0]) = v14;
    v26 = 6;
    goto LABEL_38;
  }

LABEL_24:
  if (!*(a2 + 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle (0x%04x) for %s", v36, v37, v38, v39, v40, v41, v42, 0);
      v43 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if ((v6 | 4) == 0x16)
    {
      v26 = 1;
      LOBYTE(v95[0]) = 1;
      BYTE1(v95[0]) = v6;
      WORD1(v95[0]) = 0;
      goto LABEL_38;
    }

    return 4021;
  }

  v94 = a3 - v15;
  if (v6 == 22)
  {
    v16 = *(a2 + 1);
    v17 = *(i + 8);
    if ((v17 - 5) < (a3 - v15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Prepare Write sent with ValueLength=%d which is larger than allowed (ATT_MTU-5=%d)", v18, v19, v20, v21, v22, v23, v24, v94);
        v25 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOWORD(v95[0]) = 5633;
      WORD1(v95[0]) = v16;
      v26 = 13;
      goto LABEL_38;
    }
  }

  else
  {
    if (v6 != 18)
    {
      v48 = 0;
      v46 = 0;
      v45 = 0;
      v59 = 0;
      goto LABEL_60;
    }

    v16 = *(a2 + 1);
    v17 = *(i + 8);
  }

  v44 = sub_1001BBBD8(v17, 0x100004077774924uLL);
  if (!v44)
  {
    LOBYTE(v95[0]) = 1;
    BYTE1(v95[0]) = v6;
    WORD1(v95[0]) = v16;
    v26 = 17;
    goto LABEL_38;
  }

  v45 = v44;
  v46 = *(i + 8);
  if (*a2 == 18)
  {
    v47 = 19;
  }

  else
  {
    v47 = 23;
  }

  *v44 = v47;
  v8 = dword_100B661F8;
  v48 = 1;
  if (v6 == 22 && !xmmword_100B661E0)
  {
    v49 = v44;
    if (sub_10000C240())
    {
      sub_10000AF54("No callback provided to handle Prepare Writes!", v50, v51, v52, v53, v54, v55, v56, v86);
      v57 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v58 = 6;
    LOWORD(v14) = v16;
LABEL_83:
    LOBYTE(v95[0]) = 1;
    BYTE1(v95[0]) = v6;
    WORD1(v95[0]) = v14;
    BYTE4(v95[0]) = v58;
    v73 = sub_1002B9C28(a1, v95, 5uLL, 0);
    v45 = v49;
    goto LABEL_87;
  }

  v14 = v16;
  v59 = v16;
LABEL_60:
  if (v14 >= word_100B66180)
  {
    v68 = 1;
    goto LABEL_74;
  }

  v60 = v14;
  v61 = *(&xmmword_100B66170 + 1) + 16 * v14;
  if (*v61 != 2 || (v62 = *(v61 + 8)) == 0)
  {
    v68 = 1;
    goto LABEL_73;
  }

  v87 = v59;
  v88 = v48;
  v90 = v46;
  ptr = v45;
  if (*(&xmmword_100B661E0 + 1))
  {
    v63 = *(v61 + 8);
    v64 = sub_10004E15C((v62 + 4), &xmmword_1008A4A80);
    v62 = v63;
    if (!v64)
    {
      v65 = sub_10004E15C((v63 + 4), &xmmword_1008A4A94);
      v62 = v63;
      if (!v65)
      {
        v66 = sub_10004E15C((v63 + 4), &xmmword_1008A4AA8);
        v62 = v63;
        if (!v66)
        {
          (*(&xmmword_100B661E0 + 1))(v63, i);
          v62 = v63;
        }
      }
    }
  }

  v67 = v62;
  v68 = sub_1002BDD34(*i, *(v62 + 26), 0);
  LOWORD(v14) = v60;
  v45 = ptr;
  v48 = v88;
  v46 = v90;
  v59 = v87;
  if (!v68)
  {
    v69 = *(v67 + 40);
    if (v69)
    {
      v68 = v69(v67);
      v59 = v87;
      v48 = v88;
      v46 = v90;
      v45 = ptr;
LABEL_73:
      LOWORD(v14) = v60;
      goto LABEL_74;
    }

    v68 = 3;
  }

LABEL_74:
  if ((v6 | 4) == 0x16)
  {
    if (v68 != 240)
    {
      v58 = v68;
      if (!v68)
      {
        v70 = v14;
        v71 = v45;
        v58 = sub_1002B9C28(a1, v45, v48, 0);
        if (v58)
        {
          LOBYTE(v95[0]) = 1;
          BYTE1(v95[0]) = v6;
          WORD1(v95[0]) = v70;
          BYTE4(v95[0]) = 17;
          v72 = sub_1002B9C28(a1, v95, 5uLL, 0);
          v73 = 0;
          v58 = v72;
        }

        else
        {
          v73 = 0;
        }

        v45 = v71;
        goto LABEL_87;
      }

      v49 = v45;
      goto LABEL_83;
    }

    v74 = v59;
    v89 = v48;
    v91 = v46;
    ptra = v45;
    v75 = v14;
    v76 = sub_100007618(a3, 0x100004077774924uLL);
    if (v76)
    {
      v77 = v76;
      memmove(v76, a2, a3);
      v95[0] = v8;
      v95[1] = sub_1002BE04C;
      v95[2] = 0;
      v95[3] = i;
      v96 = v74;
      v97 = 0;
      v98 = 0;
      v99 = ptra;
      v100 = v91;
      v101 = v89;
      v102 = 0;
      v103 = v77;
      v104 = a3;
      v105 = 0;
      v106 = 0;
      sub_1002BD518(v95);
      return 4540;
    }

    LOBYTE(v95[0]) = 1;
    BYTE1(v95[0]) = v6;
    WORD1(v95[0]) = v75;
    BYTE4(v95[0]) = 17;
    v73 = sub_1002B9C28(a1, v95, 5uLL, 0);
    v58 = 240;
    v45 = ptra;
  }

  else
  {
    v73 = 0;
    v58 = v68;
  }

LABEL_87:
  if (v45)
  {
    sub_10000C1E8(v45);
  }

  if (v73)
  {
    if (v73 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v78, v79, v80, v81, v82, v83, v84, v73);
        v85 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  if (v58)
  {
    return (v58 + 4300);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BCBBC(__int128 *a1, char *a2, int a3)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  LODWORD(v49) = dword_100B661F8;
  v5 = *(&xmmword_100B66160 + 1);
  if (*(&xmmword_100B66160 + 1))
  {
    do
    {
      if (*v5 == a1)
      {
        break;
      }

      v5 = v5[3];
    }

    while (v5);
  }

  *(&v50 + 1) = v5;
  if (a3 != 2)
  {
    LODWORD(v48[0]) = 6145;
    BYTE4(v48[0]) = 4;
    return sub_1002B9C28(a1, v48, 5uLL, 0);
  }

  if (xmmword_100B661E0)
  {
    xmmword_100B661E0();
    v48[0] = 0;
    if (*(&xmmword_100B66190 + 1))
    {
      sub_1000D660C();
    }

    v6 = sub_100007618(0x48uLL, 0x10B0040592477A1uLL);
    *(&xmmword_100B66190 + 1) = v6;
    if (!v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to backup Execute Write Request", v39, v40, v41, v42, v43, v44, v45, v47);
        v46 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 17;
    }

    *v6 = v49;
    v7 = v50;
    v8 = v51;
    v9 = v52;
    v6[8] = v53;
    *(v6 + 2) = v8;
    *(v6 + 3) = v9;
    *(v6 + 1) = v7;
    v48[1] = &v49;
    LOWORD(v48[0]) = 4;
    v10 = sub_10002195C(sub_1002BE298, v48, 100, (*(&xmmword_100B66190 + 1) + 16));
    v11 = v10;
    if (v10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to create dispatch timer for execute write with result %!", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_10000C1E8(*(&xmmword_100B66190 + 1));
      *(&xmmword_100B66190 + 1) = 0;
      return 17;
    }

    result = 0;
    ++dword_100B661F8;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No callback provided to handle Execute Writes", v21, v22, v23, v24, v25, v26, v27, v47);
      v28 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v29 = *a2;
    LOBYTE(v48[0]) = 1;
    BYTE1(v48[0]) = v29;
    WORD1(v48[0]) = 0;
    BYTE4(v48[0]) = 6;
    v30 = sub_1002B9C28(a1, v48, 5uLL, 0);
    result = 4306;
    if (v30 && v30 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v31, v32, v33, v34, v35, v36, v37, v30);
        v38 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4306;
    }
  }

  return result;
}

uint64_t sub_1002BCE9C(unsigned __int16 *a1, uint64_t a2)
{
  if (sub_1000ABD24(a1) || sub_1000B8B5C(a1))
  {
    v4 = 0;
  }

  else
  {
    if (sub_10000C240() && (sub_10000AF54("Invalid Handle, allow %d", v8, v9, v10, v11, v12, v13, v14, a2), v15 = sub_10000C050(0x44u), os_log_type_enabled(v15, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (!a2)
      {
        return 0;
      }
    }

    else if (!a2)
    {
      return 0;
    }

    v4 = 1;
  }

  v5 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    result = qword_100B66188;
    if (qword_100B66188)
    {
      while (1)
      {
        v7 = *(result + 24);
        if (!v7)
        {
          break;
        }

        if (*v7 == a1)
        {
          return result;
        }

        result += 72;
        if (!--v5)
        {
          return 0;
        }
      }

      v25 = sub_10000C240();
      if (v4)
      {
        if (!v25)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle session is NULL, lmHandle invalid", v26, v27, v28, v29, v30, v31, v32, v36);
        v33 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        if (!v25)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle session is NULL lmHandle=%d", v26, v27, v28, v29, v30, v31, v32, *a1);
        v35 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }
    }

    else
    {
      v16 = sub_10000C240();
      if (v4)
      {
        if (!v16)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle response is NULL, lmHandle invalid", v17, v18, v19, v20, v21, v22, v23, v36);
        v24 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        if (!v16)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle response is NULL lmHandle=%d", v17, v18, v19, v20, v21, v22, v23, *a1);
        v34 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }
    }

    sub_1000E09C0();
  }

  return 0;
}

uint64_t sub_1002BD07C(uint64_t a1, unsigned int *a2, char a3)
{
  __n_2[1] = 0;
  v31 = 0;
  __n_2[0] = 2;
  WORD2(__n_2[0]) = *(a1 + 5);
  v4 = *(a1 + 1);
  if (*(a1 + 1))
  {
    v6 = v4 > *(a1 + 3) || v4 >= word_100B66180;
    if (!v6)
    {
      v8 = 16 * v4;
      do
      {
        if (*(*(&xmmword_100B66170 + 1) + v8) == 2)
        {
          if (*(a2 + 24) - *(a2 + 25) < 4)
          {
            return 0;
          }

          v9 = *(*(&xmmword_100B66170 + 1) + v8 + 8);
          if (sub_10004E15C(v9 + 4, __n_2))
          {
            *(a2 + 16) = v4;
            if (!*(a1 + 7))
            {
              goto LABEL_17;
            }

            v10 = sub_100007618(0x200uLL, 0x89DF7909uLL);
            __n = 0;
            if (!v10)
            {
              return 17;
            }

            v11 = v10;
            LOBYTE(v28) = a3;
            v12 = (*(v9 + 4))(v9, 0, v10, 512, &__n, *a2, *(a2 + 3), sub_1002BD2BC, v28);
            if (v12)
            {
              v26 = v12;
              sub_10000C1E8(v11);
              return v26;
            }

            if (__n == *(a1 + 15) && !memcmp(v11, *(a1 + 7), __n))
            {
              sub_10000C1E8(v11);
LABEL_17:
              v13 = *v9;
              v14 = *(a2 + 5);
              v15 = *(a2 + 25);
              *(a2 + 25) = v15 + 1;
              *(v14 + v15) = v13;
              v16 = v9[1];
              v17 = *(a2 + 5);
              v18 = *(a2 + 25);
              *(a2 + 25) = v18 + 1;
              *(v17 + v18) = v16;
              v19 = v9[24];
              v20 = *(a2 + 5);
              v21 = *(a2 + 25);
              *(a2 + 25) = v21 + 1;
              *(v20 + v21) = v19;
              v22 = v9[25];
              v23 = *(a2 + 5);
              v24 = *(a2 + 25);
              *(a2 + 25) = v24 + 1;
              *(v23 + v24) = v22;
              goto LABEL_18;
            }

            sub_10000C1E8(v11);
          }
        }

LABEL_18:
        v6 = v4++ >= *(a1 + 3);
        v8 += 16;
      }

      while (!v6 && v4 < word_100B66180);
    }
  }

  if (*(a2 + 25) == 1)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

void sub_1002BD2BC(int a1, int a2, void *__s1, size_t __n)
{
  v4 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    v5 = __n;
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v4)
      {
        return;
      }
    }

    v9 = *(i + 56);
    if (!v9 || (v10 = *(i + 64), v10 <= 7))
    {
      sub_1000D660C();
      v9 = *(i + 56);
      LOWORD(v10) = *(i + 64);
    }

    *v35 = *v9;
    *&v35[3] = *(v9 + 3);
    v36 = v9 + 7;
    v37 = v10 - 7;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to read value at attribute handle 0x%04x with result %d", v11, v12, v13, v14, v15, v16, v17, *(i + 32));
        v18 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v19 = **(i + 24);
      v38 = 1;
      v39 = v35[0];
      v40 = *&v35[1];
      v41 = a2;
      goto LABEL_14;
    }

    if (v5 == (v10 - 7) && !memcmp(__s1, v9 + 7, v5))
    {
      v20 = *(*(&xmmword_100B66170 + 1) + 16 * *(i + 32) + 8);
      v21 = *v20;
      v22 = *(i + 40);
      v23 = *(i + 50);
      *(i + 50) = v23 + 1;
      *(v22 + v23) = v21;
      v24 = v20[1];
      v25 = *(i + 40);
      v26 = *(i + 50);
      *(i + 50) = v26 + 1;
      *(v25 + v26) = v24;
      v27 = v20[24];
      v28 = *(i + 40);
      v29 = *(i + 50);
      *(i + 50) = v29 + 1;
      *(v28 + v29) = v27;
      LOBYTE(v20) = v20[25];
      v30 = *(i + 40);
      v31 = *(i + 50);
      *(i + 50) = v31 + 1;
      *(v30 + v31) = v20;
    }

    v32 = *(i + 32) + 1;
    *&v35[1] = v32;
    v33 = sub_1002BD07C(v35, i, 0);
    if (v33 != 240)
    {
      if (v33)
      {
        v34 = **(i + 24);
        v38 = 1;
        v39 = v35[0];
        v40 = v32;
        v41 = v33;
        v19 = v34;
      }

      else
      {
        if (!sub_1002B9C28(**(i + 24), *(i + 40), *(i + 50), 0))
        {
          goto LABEL_15;
        }

        v19 = **(i + 24);
        v38 = 1;
        v39 = v35[0];
        v40 = v32;
        v41 = 17;
      }

LABEL_14:
      sub_1002B9C28(v19, &v38, 5uLL, 0);
LABEL_15:
      sub_1002BA3E8(i);
    }
  }
}

void sub_1002BD518(void *a1)
{
  v2 = sub_1001BBBD8(72 * xmmword_100B66190 + 72, 0x10B0040592477A1uLL);
  if (v2)
  {
    v3 = v2;
    v18[0] = 0;
    v4 = &v2[72 * xmmword_100B66190];
    *v4 = *a1;
    v5 = a1[8];
    v7 = *(a1 + 2);
    v6 = *(a1 + 3);
    *(v4 + 1) = *(a1 + 1);
    *(v4 + 2) = v7;
    *(v4 + 3) = v6;
    *(v4 + 8) = v5;
    v18[1] = a1;
    LOWORD(v18[0]) = 4;
    v8 = sub_10002195C(sub_1002BD684, v18, 100, &v2[72 * xmmword_100B66190 + 16]);
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to create dispatch timer for async response with result %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_10000C1E8(v3);
    }

    else
    {
      if (qword_100B66188)
      {
        memmove(v3, qword_100B66188, 72 * xmmword_100B66190);
        sub_10000C1E8(qword_100B66188);
      }

      qword_100B66188 = v3;
      LOWORD(xmmword_100B66190) = xmmword_100B66190 + 1;
      ++dword_100B661F8;
    }
  }
}

uint64_t sub_1002BD684(uint64_t result)
{
  v1 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    result = **(result + 8);
    for (i = qword_100B66188; *i != result; i += 18)
    {
      if (!--v1)
      {
        return result;
      }
    }

    i[4] = 0;
    v3 = *(&xmmword_100B661C0 + 1);
    if (!*(&xmmword_100B661C0 + 1))
    {
      sub_1000D660C();
      v3 = *(&xmmword_100B661C0 + 1);
      result = *i;
    }

    v3(result);
    v4 = *(i + 1);
    v5 = *i;

    return v4(v5, 241, 0, 0);
  }

  return result;
}

uint64_t sub_1002BD724(int a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, unsigned int *a6, char a7)
{
  v9 = &dword_100B653A0[792];
  if (a1 == 8 || a1 == 16 || (v10 = 1, a2) && word_100B66180 > a2 && *(*(&xmmword_100B66170 + 1) + 16 * a2) == 2)
  {
    v10 = 0;
    if (a2 - 1 < a3 && word_100B66180 > a2)
    {
      v11 = 16 * a2;
      v12 = a2;
      v13 = a3;
      while (1)
      {
        *(a6 + 16) = v12;
        if (*(*(&xmmword_100B66170 + 1) + v11) == 2)
        {
          v14 = *(*(&xmmword_100B66170 + 1) + v11 + 8);
          v25 = 0;
          if (!a4 || sub_10004E15C((v14 + 4), a4))
          {
            if (*(&xmmword_100B661E0 + 1) && !sub_10004E15C((v14 + 4), &xmmword_1008A4A80) && !sub_10004E15C((v14 + 4), &xmmword_1008A4A94) && !sub_10004E15C((v14 + 4), &xmmword_1008A4AA8))
            {
              (*(&xmmword_100B661E0 + 1))(v14, *(a6 + 3));
            }

            v15 = sub_1002BDD34(**(a6 + 3), *(v14 + 26), 1);
            if (v15)
            {
              return v15;
            }

            v16 = v9;
            v17 = sub_100007618(0x200uLL, 0x4D14EDFFuLL);
            if (!v17)
            {
              return 17;
            }

            v18 = v17;
            LOBYTE(v21) = a7;
            v19 = (*(v14 + 32))(v14, a5, v17, 512, &v25, *a6, *(a6 + 3), sub_1002BD95C, v21);
            if (v19 || (v19 = sub_1002BDE98(a1, v14, v18, v25, a6), v19))
            {
              v10 = v19;
              sub_10000C1E8(v18);
              return v10;
            }

            sub_10000C1E8(v18);
            v9 = v16;
          }
        }

        v10 = 0;
        if (v12 < v13)
        {
          ++v12;
          v11 += 16;
          if (v12 < *(v9 + 192))
          {
            continue;
          }
        }

        return v10;
      }
    }
  }

  return v10;
}

void sub_1002BD95C(int a1, int a2, void *a3, int a4)
{
  v4 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v4)
      {
        return;
      }
    }

    v6 = **(i + 56);
    v7 = *(i + 32);
    if (v7 >= word_100B66180 || (v8 = *(*(&xmmword_100B66170 + 1) + 16 * v7 + 8)) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Attribute handle 0x%04x is no longer available for transaction ID %d", v9, v10, v11, v12, v13, v14, v15, *(i + 32));
        v16 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOBYTE(a2) = 14;
      goto LABEL_18;
    }

    if (a2 || (LOBYTE(a2) = sub_1002BDE98(**(i + 56), v8, a3, a4, i), a2))
    {
LABEL_18:
      sub_1002BDC1C(v6, i, a2);
      sub_1002BA3E8(i);
      return;
    }

    LOBYTE(a2) = 0;
    if (v6 > 11)
    {
      if (v6 == 12)
      {
        goto LABEL_18;
      }

      if (v6 != 16)
      {
LABEL_28:
        v20 = *(i + 56);
        if (!v20 || (v21 = *(i + 64), v21 <= 1))
        {
          sub_1000D660C();
          v21 = *(i + 64);
          v20 = *(i + 56);
        }

        v22 = (v21 - 1) / 2;
        v23 = v20 + 1;
        if (v21 >= 3)
        {
          v25 = 0;
          do
          {
            if (*(v23 + 2 * v25) == *(i + 32))
            {
              break;
            }

            ++v25;
          }

          while (v25 < v22);
          v24 = v25 + 1;
        }

        else
        {
          v24 = 1;
        }

        if (v22 <= v24)
        {
          LOBYTE(a2) = 0;
          goto LABEL_18;
        }

        while (1)
        {
          v26 = *(v23 + 2 * v24);
          *(i + 32) = v26;
          a2 = sub_1002BD724(v6, v26, v26, 0, 0, i, 0);
          if (a2)
          {
            goto LABEL_26;
          }

          if (v22 <= ++v24)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else if (v6 != 8)
    {
      if (v6 == 10)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    v17 = *(i + 56);
    if (!v17 || (v18 = *(i + 64), v18 <= 5))
    {
      sub_1000D660C();
      v17 = *(i + 56);
      LOBYTE(v18) = *(i + 64);
    }

    v29 = 0uLL;
    v30 = 0;
    v19 = *(v17 + 3);
    sub_10006A0FC((v17 + 5), (v18 - 5), 1, &v29);
    v27 = v29;
    v28 = v30;
    a2 = sub_1002BD724(v6, (*(i + 32) + 1), v19, &v27, 0, i, 0);
LABEL_26:
    if (a2 == 240)
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_1002BDC1C(int a1, uint64_t a2, int a3)
{
  v4 = a1;
  if ((a1 == 16 || a1 == 8) && a3 == 0)
  {
    if (*(a2 + 50) == 1)
    {
      a3 = 10;
    }

    else
    {
      a3 = 0;
    }
  }

  v7 = *(a2 + 24);
  v8 = &xmmword_100B66160 + 1;
  do
  {
    v9 = *v8;
    v8 = (*v8 + 3);
  }

  while (v9 != v7 && v9 != 0);
  if (v9)
  {
    if (a3 && a3 != 243 && (a1 != 16 && a1 != 8 || *(a2 + 50) < 2u))
    {
      v15 = *(a2 + 32);
      v13 = *v7;
      v19[0] = 1;
      v19[1] = v4;
      v20 = v15;
      v21 = a3;
      v14 = v19;
      goto LABEL_28;
    }

    LOBYTE(result) = sub_1002B9C28(*v7, *(a2 + 40), *(a2 + 50), 0);
    if (result)
    {
      v12 = *(a2 + 32);
      v13 = **(a2 + 24);
      v16[0] = 1;
      v16[1] = v4;
      v17 = v12;
      v18 = 17;
      v14 = v16;
LABEL_28:
      LOBYTE(result) = sub_1002B9C28(v13, v14, 5uLL, 0);
    }
  }

  else
  {
    LOBYTE(result) = 6;
  }

  return result;
}

uint64_t sub_1002BDD34(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  v18 = 0;
  if (a2 & 0x15) == 0 && (a3)
  {
    return 2;
  }

  if ((a2 & 0x2A) == 0 && !a3)
  {
    return 3;
  }

  if (a3)
  {
    v6 = 20;
  }

  else
  {
    v6 = 40;
  }

  if ((v6 & a2) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_33;
  }

  if (*(a1 + 2) == 4)
  {
    v7 = sub_1002DC0C8(a1);
    v8 = sub_1000CB318(a1);
    v18 = sub_1002DBFE8(a1);
    goto LABEL_20;
  }

  if (*(a1 + 2))
  {
LABEL_33:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid physical link at permission check", v9, v10, v11, v12, v13, v14, v15, v17);
      v16 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = sub_1002FCF64(a1, &v18);
    v8 = sub_1002FCEB8(a1);
  }

LABEL_20:
  if ((v3 & 0x3C) != 0 && (v8 & 1) == 0 && !v7)
  {
    return 5;
  }

  if (v8)
  {
    if ((v3 & 0xC) != 0 && (v18 & 1) == 0)
    {
      return 5;
    }
  }

  else if ((v3 & 0x3C) != 0)
  {
    return 15;
  }

  return 0;
}

uint64_t sub_1002BDE98(int a1, char *a2, void *__src, int a4, uint64_t a5)
{
  if (a1 <= 11)
  {
    if (a1 == 8)
    {
      v6 = 2;
      v7 = 253;
      v8 = -4;
      goto LABEL_9;
    }

LABEL_5:
    if (*(a5 + 48) - *(a5 + 50) >= a4)
    {
      LOWORD(v9) = a4;
    }

    else
    {
      LOWORD(v9) = *(a5 + 48) - *(a5 + 50);
    }

    goto LABEL_23;
  }

  if (a1 != 16)
  {
    goto LABEL_5;
  }

  v6 = 4;
  v7 = 251;
  v8 = -6;
LABEL_9:
  v10 = *(a5 + 48);
  v11 = v10 + v8;
  if (v10 < 0x101)
  {
    v7 = v11;
  }

  if (a4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a4;
  }

  v12 = *(a5 + 50);
  v13 = v6 + v9;
  if (*(a5 + 48) - v12 < v6 + v9)
  {
    return -13;
  }

  v15 = *(a5 + 40);
  if (v12 >= 2 && *(v15 + 1))
  {
    if (v13 != *(v15 + 1))
    {
      return 13;
    }
  }

  else
  {
    *(a5 + 50) = v12 + 1;
    *(v15 + v12) = v13;
    v15 = *(a5 + 40);
    LODWORD(v12) = *(a5 + 50);
  }

  v16 = *a2;
  *(a5 + 50) = v12 + 1;
  *(v15 + v12) = v16;
  v17 = a2[1];
  v18 = *(a5 + 40);
  v19 = *(a5 + 50);
  *(a5 + 50) = v19 + 1;
  *(v18 + v19) = v17;
  if (a1 == 16)
  {
    v20 = a2[24];
    v21 = *(a5 + 40);
    v22 = *(a5 + 50);
    *(a5 + 50) = v22 + 1;
    *(v21 + v22) = v20;
    v23 = a2[25];
    v24 = *(a5 + 40);
    v25 = *(a5 + 50);
    *(a5 + 50) = v25 + 1;
    *(v24 + v25) = v23;
  }

LABEL_23:
  memmove((*(a5 + 40) + *(a5 + 50)), __src, v9);
  v26 = *(a5 + 50) + v9;
  *(a5 + 50) = v26;
  if (*(a5 + 48) == v26)
  {
    return -13;
  }

  else
  {
    return 0;
  }
}

void sub_1002BE04C(int a1, int a2)
{
  v2 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v2)
      {
        return;
      }
    }

    v5 = *(i + 56);
    v6 = *v5;
    v7 = &xmmword_100B66160 + 1;
    do
    {
      v8 = *v7;
      v7 = (*v7 + 24);
    }

    while (v8 != *(i + 24) && v8 != 0);
    if (!v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid session detected in buildWriteResponseAsync()", v20, v21, v22, v23, v24, v25, v26, v40);
        v27 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_29;
    }

    if (v6 == 22)
    {
      v10 = *(i + 64) - 1;
      v11 = *(i + 50);
      if (v10 > *(i + 48) - v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write rejected: response->responseBuffer buffer space (%d) is too small for response->context (%d).", v12, v13, v14, v15, v16, v17, v18, *(*(i + 24) + 8) - *(i + 50));
          v19 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        LOBYTE(a2) = -11;
        goto LABEL_24;
      }

      memmove((*(i + 40) + v11), v5 + 1, v10);
      *(i + 50) = *(i + 64) + *(i + 50) - 1;
    }

    if (!a2)
    {
      if (!sub_1002B9C28(**(i + 24), *(i + 40), *(i + 50), 0))
      {
        goto LABEL_29;
      }

      v39 = *(i + 32);
      v37 = **(i + 24);
      v41[0] = 1;
      v41[1] = v6;
      v42 = v39;
      v43 = 17;
      v38 = v41;
LABEL_28:
      sub_1002B9C28(v37, v38, 5uLL, 0);
LABEL_29:
      sub_1002BA3E8(i);
      return;
    }

LABEL_24:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to write value to attribute handle 0x%04x with result %d", v28, v29, v30, v31, v32, v33, v34, *(i + 32));
      v35 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v36 = *(i + 32);
    v37 = **(i + 24);
    v44[0] = 1;
    v44[1] = v6;
    v45 = v36;
    v46 = a2;
    v38 = v44;
    goto LABEL_28;
  }
}

uint64_t sub_1002BE298(uint64_t result)
{
  v1 = *(&xmmword_100B66190 + 1);
  if (*(&xmmword_100B66190 + 1))
  {
    result = **(result + 8);
    if (**(&xmmword_100B66190 + 1) == result)
    {
      *(*(&xmmword_100B66190 + 1) + 16) = 0;
      v2 = *(&xmmword_100B661C0 + 1);
      if (!*(&xmmword_100B661C0 + 1))
      {
        sub_1000D660C();
        v2 = *(&xmmword_100B661C0 + 1);
        result = *v1;
      }

      v2(result);
      v3 = *v1;

      return sub_1002BE31C(v3, 241, 0);
    }
  }

  return result;
}

uint64_t sub_1002BE31C(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(&xmmword_100B66190 + 1);
  if (*(&xmmword_100B66190 + 1) && **(&xmmword_100B66190 + 1) == result)
  {
    v4 = a2;
    if (a2)
    {
      if (word_100B66180)
      {
        v5 = 0;
        v6 = (*(&xmmword_100B66170 + 1) + 8);
        while (*(v6 - 8) != 2 || *v6 != a3)
        {
          ++v5;
          v6 += 2;
          if (word_100B66180 == v5)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        LOWORD(v5) = 0;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Execute write failed at attribute handle 0x%04x with result %d", v7, v8, v9, v10, v11, v12, v13, *(v3 + 32));
        v14 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v15 = **(v3 + 24);
      v20[0] = 6145;
      v20[1] = v5;
      v21 = v4;
      v16 = v20;
    }

    else
    {
      v17 = 25;
      if (!sub_1002B9C28(**(*(&xmmword_100B66190 + 1) + 24), &v17, 1uLL, 0))
      {
LABEL_17:
        sub_10000C1E8(*(&xmmword_100B66190 + 1));
        *(&xmmword_100B66190 + 1) = 0;
        return sub_1002B9FDC(0, 1);
      }

      v15 = **(v3 + 24);
      v18 = 6145;
      v19 = 17;
      v16 = &v18;
    }

    sub_1002B9C28(v15, v16, 5uLL, 0);
    goto LABEL_17;
  }

  return result;
}

const char *sub_1002BE488(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return off_100AE9CF8[a1];
  }
}

void sub_1002BE4AC()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Resetting LE_Connection state", v0, v1, v2, v3, v4, v5, v6, *v8);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 136446210;
      *&v8[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", v8, 0xCu);
    }
  }

  byte_100B66200 = 0;
  byte_100B66224 = 0;
  byte_100B66201 = 0;
  byte_100B66228 = 0;
  qword_100B66214 = 0;
  *&word_100B6621C = 0;
  qword_100B6620C = 0;
}

void sub_1002BE598()
{
  byte_100B66200 = 0;
  byte_100B66224 = 0;
  byte_100B66201 = 0;
  byte_100B66228 = 0;
  qword_100B66214 = 0;
  *&word_100B6621C = 0;
  qword_100B6620C = 0;
}

void sub_1002BE5CC(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 236) < 255)
    {
      atomic_fetch_add_explicit((a1 + 236), 1u, memory_order_relaxed);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Reached max connection retain count. Not incrementing ref count", v2, v3, v4, v5, v6, v7, v8, v18);
        v9 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      if (*(a1 + 148) <= 254)
      {
        sub_1000D660C();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.", v10, v11, v12, v13, v14, v15, v16, v18);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002BE6B0(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (sub_1000ABD24(a1))
  {
    v2 = *(a1 + 236);
    if (v2 < 255)
    {
      if (v2 <= 0)
      {
        sub_1000D660C();
      }

      atomic_fetch_add_explicit((a1 + 236), 0xFFFFFFFF, memory_order_relaxed);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Reached max connection retain count. Not decrementing ref count", v3, v4, v5, v6, v7, v8, v9, v19);
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      if (*(a1 + 148) <= 254)
      {
        sub_1000D660C();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE connection is invalid, can't decrement", v11, v12, v13, v14, v15, v16, v17, v19);
    v18 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002BE7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (byte_100B66200 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending attempt already in progress.", v9, v10, v11, v12, v13, v14, v15, v136);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1309;
  }

  if (byte_100B66201 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending cancel connection already in progress.", v18, v19, v20, v21, v22, v23, v24, v136);
      v25 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1319;
  }

  if (a9 & a8) == 0xFF || (byte_100B66202)
  {
    if (sub_1000E5EA8(a1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Already connected to this address.", v34, v35, v36, v37, v38, v39, v40, v136);
        v41 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 133;
    }

    if ((a8 - 240) <= 0xE)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid advertising handle %x", v42, v43, v44, v45, v46, v47, v48, a8);
      v49 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (a9 <= -2)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid subevent %x", v58, v59, v60, v61, v62, v63, v64, a9);
      v65 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a2 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan interval %d", v66, v67, v68, v69, v70, v71, v72, a2);
      v73 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a3 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan window %d", v74, v75, v76, v77, v78, v79, v80, a3);
      v81 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (a5 >= 0x1F5)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection latency %d", v82, v83, v84, v85, v86, v87, v88, a5);
      v89 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    v90 = (a4 / 1.25);
    if ((v90 - 3201) <= 0xF384u)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection interval %dms", v91, v92, v93, v94, v95, v96, v97, a4);
      v98 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (v90 - 8 <= 8)
    {
      v99 = 8;
    }

    else
    {
      v99 = (v90 - 8);
    }

    v100 = (3 * a5 + 3) * v90;
    if (v100 >= 0x259)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Connection latency (%d) and connection interval (%d ms) are in a range taht will cause issues", v101, v102, v103, v104, v105, v106, v107, a5);
      v108 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a7 - 8) <= 0xFFFFFFF8)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid initPHYs %x", v109, v110, v111, v112, v113, v114, v115, a7);
      v116 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

LABEL_56:
      sub_1000E09C0();
      return 101;
    }

    v138 = v99;
    if (v100 <= (104858 * ((5 * (v90 * 1.25)) & 0x7FFFu)) >> 19)
    {
      LOWORD(v100) = ((104858 * ((5 * (v90 * 1.25)) & 0x7FFFu)) >> 16) >> 3;
    }

    if (v100 >= 0x258u)
    {
      LOWORD(v100) = 600;
    }

    v139 = v100;
    sub_1000841FC(&dword_100B66203);
    if (sub_10000C240())
    {
      sub_10000AF54("Connecting with interval:%dms-%dms, latency=%d, timeout=%dms, initPHYs=%x connectingAddress=%s:%:, advHandle=%x subevent=%x", v118, v119, v120, v121, v122, v123, v124, (v138 * 1.25));
      log = sub_10000C050(0x42u);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v141 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *buf = a2;
    *&buf[2] = a2;
    LOWORD(v141) = a2;
    if (byte_100B66202 == 1)
    {
      v125 = sub_1000D6178(0x101u, v118, v119, v120, v121, v122, v123, v124, a8);
    }

    else if (byte_100B6620A == 1)
    {
      v125 = sub_1000D6178(0xD9u, v118, v119, v120, v121, v122, v123, v124, 0);
    }

    else
    {
      v125 = sub_1000D6178(0xADu, v118, v119, v120, v121, v122, v123, v124, a2);
    }

    v17 = v125;
    if (v125)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not connect to device %!", v126, v127, v128, v129, v130, v131, v132, v17);
        v133 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      byte_100B66200 = 1;
      LOBYTE(qword_100B6620C) = 1;
      v134 = *(a1 + 4);
      v135 = *(a1 + 6);
      *(&qword_100B6620C + 3) = *a1;
      BYTE1(qword_100B66214) = v135;
      *(&qword_100B6620C + 7) = v134;
      WORD1(qword_100B66214) = a2;
      WORD2(qword_100B66214) = a3;
      HIWORD(qword_100B66214) = a4;
      word_100B6621C = a5;
      word_100B6621E = v139;
      word_100B66220 = a6;
      byte_100B66222 = a7;
      BYTE1(qword_100B6620C) = a8;
      BYTE2(qword_100B6620C) = a9;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, V2 command not supported.", v50, v51, v52, v53, v54, v55, v56, v136);
      v57 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 152;
  }

  return v17;
}

uint64_t sub_1002BEFAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v163 = 0;
  v162[1] = 0;
  if (byte_100B66200 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending attempt already in progress.", v10, v11, v12, v13, v14, v15, v16, v159);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1309;
  }

  if (byte_100B66201 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending cancel connection already in progress.", v19, v20, v21, v22, v23, v24, v25, v159);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1319;
  }

  if ((a10 & a9) != 0xFF && (byte_100B66202 & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, V2 command not supported.", v52, v53, v54, v55, v56, v57, v58, v159);
      v59 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 152;
  }

  v162[0] = 0;
  v33 = sub_1002E996C(v162);
  if (!v162[0])
  {
LABEL_17:
    if (a9 - 240 <= 0xE)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid advertising handle %x", v36, v37, v38, v39, v40, v41, v42, a9);
      v43 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a10 <= -2)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid subevent %x", v44, v45, v46, v47, v48, v49, v50, a10);
      v51 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if ((a1 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan interval %d", v68, v69, v70, v71, v72, v73, v74, a1);
      v75 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if ((a2 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan window %d", v76, v77, v78, v79, v80, v81, v82, a2);
      v83 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a5 >= 0x1F5)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection latency %d", v84, v85, v86, v87, v88, v89, v90, a5);
      v91 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a4 <= (a3 - 1))
    {
      if (!a3 || a4 != a3 && a4)
      {
        if (!sub_10000C240())
        {
          return 101;
        }

        sub_10000AF54("Invalid min/max connection interval %d/%d", v102, v103, v104, v105, v106, v107, v108, a3);
        v109 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          return 101;
        }

        goto LABEL_72;
      }

      v110 = a3 / 1.25;
      v111 = v110;
      if ((v110 - 6) >= 0xC7B)
      {
        if (!sub_10000C240())
        {
          return 101;
        }

        sub_10000AF54("Invalid connection interval %dms", v112, v113, v114, v115, v116, v117, v118, a3);
        v119 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          return 101;
        }

        goto LABEL_72;
      }

      if (v111 < 0xC78)
      {
        if (v111 > 0xE)
        {
          LOWORD(a4) = v111 + 8;
          v92 = a3;
          LOWORD(v111) = v111 - 8;
        }

        else
        {
          LOWORD(a4) = v111 | 0x10;
          v92 = a3;
        }

        LOWORD(a3) = v111;
      }

      else
      {
        v92 = a3;
        a4 = v110;
        LOWORD(a3) = v111 - 16;
      }
    }

    else
    {
      v92 = (a4 + a3) >> 1;
      if (sub_10000C240())
      {
        sub_10000AF54("overriding min/max connection intervals to %d-%dms (%dms)", v93, v94, v95, v96, v97, v98, v99, a3);
        v100 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          v101 = sub_10000C0FC();
          *buf = 136446210;
          v165 = v101;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v120 = (3 * a5 + 3) * a4;
    if (v120 < 0x259)
    {
      if ((a7 - 8) > 0xFFFFFFF8)
      {
        v160 = v92;
        if (v120 <= (104858 * ((5 * (v92 * 1.25)) & 0x7FFFu)) >> 19)
        {
          LOWORD(v120) = ((104858 * ((5 * (v92 * 1.25)) & 0x7FFFu)) >> 16) >> 3;
        }

        if (v120 >= 0x258u)
        {
          v138 = 600;
        }

        else
        {
          v138 = v120;
        }

        sub_1000841FC(&dword_100B66203);
        if (sub_10000C240())
        {
          sub_10000AF54("Connecting with interval:%dms-%dms, latency=%d, timeout=%dms, initPHYs=%x connectingAddress=%s:%:, advHandle=%x subevent=%x", v139, v140, v141, v142, v143, v144, v145, (a3 * 1.25));
          v146 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            v147 = sub_10000C0FC();
            *buf = 136446210;
            v165 = v147;
            _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *buf = a1;
        *&buf[2] = a1;
        LOWORD(v165) = a1;
        v148 = v138;
        if (byte_100B66202 == 1)
        {
          v149 = a9;
          v150 = sub_1000D6178(0x101u, v139, v140, v141, v142, v143, v144, v145, a9);
        }

        else
        {
          v149 = a9;
          if (byte_100B6620A == 1)
          {
            v150 = sub_1000D6178(0xD9u, v139, v140, v141, v142, v143, v144, v145, 1);
          }

          else
          {
            v150 = sub_1000D6178(0xADu, v139, v140, v141, v142, v143, v144, v145, a1);
          }
        }

        v18 = v150;
        if (v150)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not start auto-connect : %!", v151, v152, v153, v154, v155, v156, v157, v18);
            v158 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else
        {
          byte_100B66200 = 1;
          LOBYTE(qword_100B6620C) = 0;
          WORD1(qword_100B66214) = a1;
          WORD2(qword_100B66214) = a2;
          HIWORD(qword_100B66214) = v160;
          word_100B6621C = a5;
          word_100B6621E = v148;
          word_100B66220 = a6;
          byte_100B66222 = a7;
          BYTE1(qword_100B6620C) = v149;
          BYTE2(qword_100B6620C) = a10;
        }

        return v18;
      }

      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid initPHYs %x", v129, v130, v131, v132, v133, v134, v135, a7);
      v136 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Connection latency (%d) and connection interval (%d ms) are in a range taht will cause issues", v121, v122, v123, v124, v125, v126, v127, a5);
      v128 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }
    }

LABEL_72:
    sub_1000E09C0();
    return 101;
  }

  v34 = v33;
  v35 = 0;
  while (!sub_1000E5EA8(v34))
  {
    ++v35;
    v34 = (v34 + 7);
    if (v35 >= v162[0])
    {
      goto LABEL_17;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Already connected to this address.", v60, v61, v62, v63, v64, v65, v66, v159);
    v67 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 133;
}

BOOL sub_1002BF904(int a1, unsigned __int16 a2)
{
  if (byte_100B66200 != 1)
  {
    return 0;
  }

  return WORD1(qword_100B66214) == a1 && WORD2(qword_100B66214) == a2;
}

uint64_t sub_1002BF944(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 124) == 7)
    {
      return 0;
    }

    else
    {
      v18 = sub_1000D6178(5u, v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_1000D6410(a1, v18);
      if (v9)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not disconnect LE device %!", v20, v21, v22, v23, v24, v25, v26, v9);
          v27 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(a1 + 124) = 7;
      }

      sub_100256830(a1, v19);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v10, v11, v12, v13, v14, v15, v16, v29);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return v9;
}

uint64_t sub_1002BFA54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B66200)
  {
    if (byte_100B66201 != 1 || (a1 & 1) != 0)
    {
      byte_100B66224 = a1;
      v8 = sub_100018960(174, sub_1002BFB50, a3, a4, a5, a6, a7, a8, v18);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to cancel a connection : %!", v9, v10, v11, v12, v13, v14, v15, v8);
          v16 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        byte_100B66201 = 1;
      }
    }

    else
    {
      v8 = 0;
      byte_100B66224 = 0;
    }
  }

  else
  {
    v19 = 0;
    while (sub_1000C08D0(&v19))
    {
      if (*(v19 + 132) != 7)
      {
        return 1302;
      }
    }

    return 1301;
  }

  return v8;
}

void sub_1002BFB50(uint64_t a1)
{
  v1 = a1;
  v19 = a1;
  v2 = byte_100B66224;
  if (sub_10000C240())
  {
    sub_10000AF54("connectionCancelCb lConnectionInProgress %d, lRestartConnectionInProgress %d, lCancelConnectionInProgress %d lCancelConnectionDeferInProgress %d - %!", v3, v4, v5, v6, v7, v8, v9, byte_100B66200);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
    }
  }

  if (v1 == 712)
  {
    if (byte_100B66201 == 1 && (byte_100B66228 & 1) == 0)
    {
      *(&buf + 1) = &v19;
      *&buf = 4;
      byte_100B66228 = 1;
      sub_10002195C(sub_1002C43C0, &buf, 1, 0);
      return;
    }

    byte_100B66201 = 0;
    byte_100B66228 = 0;
    byte_100B66200 = 0;
    v1 = 712;
  }

  else
  {
    byte_100B66201 = 0;
    byte_100B66228 = 0;
    if (v1 == 702)
    {
      if ((byte_100B66200 & 1) == 0)
      {
        sub_1000D660C();
      }

      byte_100B66200 = 0;
      if (byte_100B66224 == 1)
      {
        if (qword_100B6620C)
        {
          sub_1002BE7A0(&qword_100B6620C + 3, WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), word_100B6621C, word_100B66220, byte_100B66222, BYTE1(qword_100B6620C), BYTE2(qword_100B6620C));
        }

        else
        {
          sub_1002BEFAC(WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), 0, word_100B6621C, word_100B66220, byte_100B66222, 0, BYTE1(qword_100B6620C), BYTE2(qword_100B6620C));
        }
      }

      else if (qword_100B6620C)
      {
        v1 = 0;
        LOBYTE(qword_100B6620C) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      if (v1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected error code %! for connection cancel.", v11, v12, v13, v14, v15, v16, v17, v1);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        goto LABEL_25;
      }

      if ((byte_100B66200 & 1) == 0)
      {
        sub_1000D660C();
      }
    }

    v1 = 0;
  }

LABEL_25:
  byte_100B66224 = 0;
  if ((v2 & 1) == 0)
  {
    sub_1002CF444(v1);
  }
}

uint64_t sub_1002BFDEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 & 1) != 0 || byte_100B66200 != 1 || (byte_100B66224)
  {
    return 0;
  }

  else
  {
    return sub_1002BFA54(1, a2, a3, a4, a5, a6, a7, a8);
  }
}

BOOL sub_1002BFE1C(unsigned int a1)
{
  v13 = 0;
  for (result = sub_1000C08D0(&v13); result; result = sub_1000C08D0(&v13))
  {
    if (v13[52] > 0x1Bu || v13[54] >= 0x1Cu)
    {
      v3 = sub_1002BFF20(v13, a1);
      if (v3)
      {
        v4 = v3;
        if (v3 != 4000)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("ClassicSynchronousConfigChanged LE scaling completed with error %!", v5, v6, v7, v8, v9, v10, v11, v4);
            v12 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_1008145E4(&v14, &v15);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BFF20(unsigned __int16 *a1, unsigned int a2)
{
  v156 = a1[54];
  v3 = a1[43];
  if (sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177)
  {
    return 4000;
  }

  v155 = 0;
  if (sub_1000E4F48(&v155))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v155 + 60);
      if (*(v155 + 60) && !*(v155 + 56))
      {
        if (v7 <= 6)
        {
          v8 = 2500;
        }

        else
        {
          v8 = 625 * v7 - 1250;
        }

        if (v7 <= 0xC)
        {
          if (sub_10000C240())
          {
            v9 = *a1;
            sub_1002415B0();
            sub_10000AF54("LE_ScaleDataLength lmHandle 0x%x SCO found voicelmHandle 0x%x _ceClassicAllowance %d interval %d piconets %d", v10, v11, v12, v13, v14, v15, v16, v9);
            v17 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = sub_10000C0FC();
              *buf = 136446210;
              v158 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }

            v6 = 1;
          }

          else
          {
            v6 = 1;
          }
        }

        v19 = sub_1002415B0();
        v20 = v8 - 625;
        if (v19 <= 1)
        {
          v20 = v8;
        }

        if (v5 <= v20)
        {
          v5 = v20;
        }
      }
    }

    while (sub_1000E4F48(&v155));
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v21 = 625 * v3;
  v154 = 0;
  v23 = 0;
  while (sub_1000C08D0(&v154))
  {
    if (*(v154 + 124) != 7 && *(v154 + 128) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ScaleDataLength lmHandle 0x%x LEA streaming found voicelmHandle 0x%x", v24, v25, v26, v27, v28, v29, v30, *a1);
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = sub_10000C0FC();
          *buf = 136446210;
          v158 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v23 = 1;
    }
  }

  v33 = 625 * v3;
  if (v5 < v21)
  {
    v33 = v5;
  }

  if (v5)
  {
    v34 = v33;
  }

  else
  {
    v34 = 625 * v3;
  }

  v35 = *(a1 + 36);
  v36 = *(a1 + 37);
  if (v36 == 2)
  {
    v37 = 360;
    v38 = 2;
  }

  else if (v36 == 3)
  {
    v37 = 1276;
    v38 = 6;
  }

  else
  {
    v37 = 412;
    v38 = 3;
  }

  v39 = a1[54];
  if (v35 == 2)
  {
    v40 = 60;
    v41 = 2;
  }

  else if (v35 == 3)
  {
    v40 = 976;
    v41 = 6;
  }

  else
  {
    v40 = 112;
    v41 = 3;
  }

  if (v37 + v40 + (a1[52] << v38) + (v39 << v41) > v34 || (*(a1 + 297) & 1) != 0 || (a1[149] & 1) != 0)
  {
    if (a1[56] <= v39)
    {
      v42 = a1[54];
    }

    else
    {
      v42 = a1[56];
    }

    LOWORD(v22) = a1[40];
    v43 = sub_1002C0CE0(v42, &v156, v34, (v22 * 1.25), 1, v35, v36);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("lmHandle 0x%x CE %d is larger than calculated symmetric pair, do not scale", v82, v83, v84, v85, v86, v87, v88, *a1);
      v89 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v90;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v43 = a1[52];
    v156 = a1[54];
  }

  if (*(a1 + 70) == 1 && a1[57] == v5 && (v43 > a1[52] || v156 > a1[54]))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Peripheral optimal[tx %d, rx %d] is larger than connection[tx %d, rx %d], scaling down lmHandle 0x%x ", v44, v45, v46, v47, v48, v49, v50, v43);
      v51 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v43 >= a1[52])
    {
      LODWORD(v43) = a1[52];
    }

    v53 = v156;
    if (v156 >= a1[54])
    {
      v53 = a1[54];
    }

    v156 = v53;
  }

  a1[57] = v5;
  if (word_100B66226)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("EDL: Tx length override to %d", v54, v55, v56, v57, v58, v59, v60, word_100B66226);
      v61 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    LODWORD(v43) = word_100B66226;
    v63 = word_100B66226 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = *(a1 + 36);
  v65 = 4 * v43 + 60;
  if (v43 <= 0x42)
  {
    v65 = 328;
  }

  if (v43 <= 0x1A)
  {
    v66 = 328;
  }

  else
  {
    v66 = 8 * v43 + 112;
  }

  if (v64 != 1)
  {
    v66 = (v43 << 6) + 976;
  }

  if (v64 == 2)
  {
    v67 = v65;
  }

  else
  {
    v67 = v66;
  }

  if (v23)
  {
    LOBYTE(v68) = 28;
  }

  else
  {
    LOBYTE(v68) = byte_100B53E18;
  }

  if (v23)
  {
    v69 = 63;
  }

  else
  {
    v69 = byte_100B53E19;
  }

  if (!v63 || !((v5 != 0) & v6 | v23 & 1) || *(a1 + 32) != 1)
  {
    goto LABEL_120;
  }

  if (v64 == 2)
  {
    if (v69 <= 0x42u)
    {
      v91 = 328;
    }

    else
    {
      v91 = 4 * v69 + 60;
    }

    if (v91 >= v67 && v43 <= v69)
    {
LABEL_120:
      v81 = 0;
      goto LABEL_121;
    }

    v150 = v69;
    v152 = v69;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ScaleDataLength Capping Tx with 2M for lmHandle 0x%x ceClassicAllowance %d txTime %d >= %d optimalTxBytes %d Cap txTime and optimalTxBytes rxPhy %d", v93, v94, v95, v96, v97, v98, v99, *a1);
      v100 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v69 = v152;
    LODWORD(v43) = v150;
    v81 = 1;
  }

  else
  {
    if (v64 != 1)
    {
      goto LABEL_120;
    }

    v70 = 8 * v68 + 112;
    if (v68 <= 0x1Au)
    {
      v70 = 328;
    }

    if (v70 >= v67 && v43 <= v68)
    {
      goto LABEL_120;
    }

    v151 = v69;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ScaleDataLength Capping Tx with 1M for lmHandle 0x%x ceClassicAllowance %d txTime %d >= %d optimalTxBytes %d Cap txTime and optimalTxBytes rxPhy %d", v72, v73, v74, v75, v76, v77, v78, *a1);
      v79 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v80;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v81 = 1;
    LODWORD(v43) = v68;
    v69 = v151;
  }

LABEL_121:
  *(a1 + 298) = v81;
  v102 = *(a1 + 37);
  if (v102 == 2)
  {
    v103 = 4 * v156 + 60;
    v104 = v156 > 0x42u;
  }

  else
  {
    if (v102 != 1)
    {
      v105 = (v156 << 6) + 976;
      goto LABEL_129;
    }

    v103 = 8 * v156 + 112;
    v104 = v156 > 0x1Au;
  }

  if (v104)
  {
    v105 = v103;
  }

  else
  {
    v105 = 328;
  }

LABEL_129:
  if ((v5 != 0) & v6 | v23 & 1 && *(a1 + 32) == 1)
  {
    if (v102 == 2)
    {
      v68 = v69;
      if (v69 <= 0x42u)
      {
        v117 = 328;
      }

      else
      {
        v117 = 4 * v69 + 60;
      }

      if (v117 < v105 || v156 > v69)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ScaleDataLength Capping Rx with 2M for lmHandle 0x%x ceClassicAllowance %d rxTime %d >= %d optimalRxBytes %d Cap rxTime and optimalRxBytes txPhy %d", v140, v141, v142, v143, v144, v145, v146, *a1);
          v147 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = sub_10000C0FC();
            *buf = 136446210;
            v158 = v148;
            _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v156 = v68;
        v116 = 1;
        goto LABEL_148;
      }
    }

    else if (v102 == 1)
    {
      v68 = v68;
      v106 = v68 <= 0x1Au ? 328 : 8 * v68 + 112;
      if (v106 < v105 || v156 > v68)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ScaleDataLength Capping Rx with 1M for lmHandle 0x%x ceClassicAllowance %d rxTime %d >= %d optimalRxBytes %d Cap rxTime and optimalRxBytes txPhy %d", v107, v108, v109, v110, v111, v112, v113, *a1);
          v114 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = sub_10000C0FC();
            *buf = 136446210;
            v158 = v115;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v156 = v68;
        v116 = 1;
        goto LABEL_148;
      }
    }
  }

  v116 = 0;
  v68 = v156;
LABEL_148:
  *(a1 + 297) = v116;
  v118 = a1[40];
  v119 = 8 * sub_1002C0F90(v68, v43, v34, *(a1 + 36), *(a1 + 37));
  if (v119)
  {
    v119 = v119 * (0x3E8u / (v118 * 1.25)) / 0x3E8;
  }

  *(a1 + 61) = v119;
  *(a1 + 62) = sub_1002C0F90(v156, v43, v21, *(a1 + 36), *(a1 + 37));
  sub_100194E7C(a1);
  if (v43 == a1[52] && v156 == a1[54])
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Tx length is already at best-fit, exiting", v120, v121, v122, v123, v124, v125, v126, v149);
      v127 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v128 = sub_10000C0FC();
        *buf = 136446210;
        v158 = v128;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v4 = 4000;
  }

  else
  {
    v4 = sub_1002A0D10(a1);
  }

  if (sub_10000C240())
  {
    if (a2 > 7)
    {
      v129 = "UNKNOWN";
    }

    else
    {
      v129 = off_100AE9D38[a2];
    }

    sub_1002415B0();
    sub_10000AF54("Reason %s Selected %d with optimal [tx %d, rx %d], all-time rx %d,  CE %d, calc-CE %d, tput %d, classic-alw [%d -> %d], probe: %s, piconets %d, status %!. Current: tx[%d, %d] rx[%d, %d] lmHandle 0x%x ", v130, v131, v132, v133, v134, v135, v136, v129);
    v137 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138 = sub_10000C0FC();
      *buf = 136446210;
      v158 = v138;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v4;
}

void sub_1002C0B70(unsigned __int16 *a1, uint64_t a2)
{
  if ((a2 - 5) >= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_LEAConfigChanged Unexpected reason %d", v14, v15, v16, v17, v18, v19, v20, a2);
      v21 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v22 = 0;
    while (sub_1000C08D0(&v22))
    {
      if ((v22[52] > 0x1Bu || v22[54] >= 0x1Cu) && v22 != a1 && (*(v22 + 127) & 1) == 0)
      {
        v4 = sub_1002BFF20(v22, a2);
        if (v4)
        {
          v5 = v4;
          if (v4 != 4000)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("LE_LEAConfigChanged LE scaling completed with error %!", v6, v7, v8, v9, v10, v11, v12, v5);
              v13 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                sub_1008145E4(&v23, &v24);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002C0CE0(unsigned int a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  if (sub_10000C240())
  {
    v17 = "dynamic";
    if (a5)
    {
      v17 = "static";
    }

    sub_10000AF54("Finding bestfit for %s-rx %d, ce %d, interval %d", v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v44 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v19 = 0;
  v20 = 251;
  v21 = 23;
  v22 = a1;
  v23 = 251;
  do
  {
    if (a1 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = a1;
    }

    v25 = a5;
    if (a5)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }

    v27 = 8 * sub_1002C0F90(v26, v20, a3, a6, a7);
    if (v27)
    {
      v27 = v27 * (0x3E8 / a4) / 0x3E8;
    }

    if (v27 > v19)
    {
      v23 = v20;
      v22 = v26;
      v19 = v27;
    }

    if (v20 == 251)
    {
      v20 = 240;
    }

    else
    {
      v20 -= 10;
    }

    --v21;
    a5 = v25;
  }

  while (v21);
  if (a2)
  {
    *a2 = v22;
  }

  if (v22 <= a1)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 1) == 0 && v25)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Optimal length is [tx %d, rx %d] yielding %d kbps", v29, v30, v31, v32, v33, v34, v35, v23);
    v36 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = sub_10000C0FC();
      *buf = 136446210;
      v44 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v23;
}

unint64_t sub_1002C0F2C(int a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v7 = 8 * sub_1002C0F90(a1, a2, a3, a5, a6);
  if (v7)
  {
    return v7 * (0x3E8 / a4) / 0x3E8uLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C0F90(int a1, int a2, unsigned int a3, int a4, int a5)
{
  if (a5 == 3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 3;
  }

  if (a5 == 3)
  {
    v6 = 976;
  }

  else
  {
    v6 = 112;
  }

  if (a5 == 2)
  {
    v5 = 2;
    v7 = 60;
  }

  else
  {
    v7 = v6;
  }

  v8 = (a2 << v5) + v7;
  if (a4 == 3)
  {
    v9 = 720;
  }

  else
  {
    v9 = 80;
  }

  if (a4 == 3)
  {
    v10 = 6;
  }

  else
  {
    v10 = 3;
  }

  if (a4 == 3)
  {
    v11 = 976;
  }

  else
  {
    v11 = 112;
  }

  if (a4 == 2)
  {
    v12 = 44;
  }

  else
  {
    v12 = v9;
  }

  if (a4 == 2)
  {
    v10 = 2;
    v13 = 60;
  }

  else
  {
    v13 = v11;
  }

  if (v8 + (a1 << v10) + v13 + 300 <= a3)
  {
    if (a1 == 27 && a2 == 27)
    {
      v23 = a3 / (v8 + (a1 << v10) + v13 + 300);
    }

    else
    {
      v23 = a3 / (v8 + v12 + 300);
    }

    return v23 * a2;
  }

  else
  {
    if (!sub_10000C240())
    {
      return 27;
    }

    v21 = 27;
    sub_10000AF54("CE length is smaller than one pair of max Tx/Rx. BytesPerInterval %d: # pkts %d, asym %d us, sym %d us, totalTime %d, remainder %d. Input: tx %d, ce %d", v14, v15, v16, v17, v18, v19, v20, 27);
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      return 27;
    }
  }

  return v21;
}

void sub_1002C1134(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_setTxDataLengthExtendedCB %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Set data length extended error status %!", v10, v11, v12, v13, v14, v15, v16, a1);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C1240(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9, char a10)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (!a3)
    {
      return sub_100018960(193, sub_1002C1700, v17, v18, v19, v20, v21, v22, a1);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("new connection parameters interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", v23, v24, v25, v26, v27, v28, v29, (a4 * 1.25));
      v30 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v73 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (sub_10000C240())
    {
      LOWORD(v38) = *(a1 + 90);
      sub_10000AF54("current connection params interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", v31, v32, v33, v34, v35, v36, v37, (v38 * 1.25));
      v39 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = sub_10000C0FC();
        *buf = 136446210;
        v73 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(a1 + 88) != a8 || *(a1 + 86) != a9 || *(a1 + 92) != a5 || *(a1 + 90) != a4 || *(a1 + 84) != a7 || *(a1 + 82) != a6)
    {
      goto LABEL_20;
    }

    v41 = sub_10000C240();
    if (a10)
    {
      LOWORD(a5) = a4;
      if (v41)
      {
        sub_10000AF54("Duplicate request so set max interval to min interval", v42, v43, v44, v45, v46, v47, v48, v71);
        v49 = sub_10000C050(0x42u);
        LOWORD(a5) = a4;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = sub_10000C0FC();
          *buf = 136446210;
          v73 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          LOWORD(a5) = a4;
        }
      }

LABEL_20:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending parameters to controller", v51, v52, v53, v54, v55, v56, v57, v71);
        v58 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = sub_10000C0FC();
          *buf = 136446210;
          v73 = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      result = sub_100018960(192, sub_1002C168C, v52, v53, v54, v55, v56, v57, a1);
      if (!result)
      {
        if (*(a1 + 86) != a9)
        {
          *(a1 + 96) = a9;
        }

        result = 0;
        *(a1 + 98) = a8;
        *(a1 + 100) = a5;
        *(a1 + 102) = a4;
        *(a1 + 154) = 1;
      }

      return result;
    }

    if (v41)
    {
      sub_10000AF54("Ignoring request to update parameters since we are already configured for the same values", v42, v43, v44, v45, v46, v47, v48, v71);
      v69 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = sub_10000C0FC();
        *buf = 136446210;
        v73 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 4170;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid.", v61, v62, v63, v64, v65, v66, v67, v71);
      v68 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}