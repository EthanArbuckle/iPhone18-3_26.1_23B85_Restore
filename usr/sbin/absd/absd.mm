uint64_t sub_100000940(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 1204) >= 0xFFFFFFFC)
  {
    return *(&off_100298140 + 5 * (v1 - 1200) + 5);
  }

  else
  {
    return 0;
  }
}

void sub_100000974(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 56))
    {
      v15 = v2;
      v16 = v3;
      if (*(a1 + 60) || *(a1 + 64) <= 0x1Fu)
      {
        *(a2 + 32) = -309;
        *(a2 + 24) = NDR_record;
      }

      else
      {
        *(a2 + 60) = 0;
        *(a2 + 36) = *(a2 + 36) | 0x1000100;
        v5 = *(a1 + 12);
        v6 = *(a1 + 52);
        v7 = *(a1 + 28);
        v8 = *(a1 + 40);
        v9 = *(a1 + 96);
        v13[0] = *(a1 + 80);
        v13[1] = v9;
        sub_10000232C(v5, v13, v6, v7, v8);
        v12 = v11;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        if (v12)
        {
          *(a2 + 32) = v12;
          *(a2 + 24) = NDR_record;
        }

        else
        {
          *(a2 + 36) = v14;
          *(a2 + 40) = *(a2 + 60);
          *(a2 + 44) = NDR_record;
          *a2 |= 0x80000000;
          *(a2 + 4) = 64;
          *(a2 + 24) = 1;
        }
      }
    }

    else
    {
      *(a2 + 32) = -300;
      *(a2 + 24) = NDR_record;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }
}

void sub_100000B34(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 68)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 64)))
    {
      if (*(a1 + 68) || *(a1 + 72) <= 0x1Fu)
      {
        *(a2 + 32) = -309;
        *(a2 + 24) = NDR_record;
      }

      else
      {
        v13 = v2;
        v14 = v3;
        v5 = *(a1 + 12);
        v6 = *(a1 + 52);
        v7 = *(a1 + 56);
        v8 = *(a1 + 28);
        v9 = *(a1 + 104);
        v12[0] = *(a1 + 88);
        v12[1] = v9;
        *(a2 + 32) = sub_100001450(v5, v12, v6, v7, v8, v4);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        *(a2 + 24) = NDR_record;
      }
    }

    else
    {
      *(a2 + 32) = -300;
      *(a2 + 24) = NDR_record;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }
}

void sub_100000C60(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 68)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 64))
    {
      v16 = v2;
      v17 = v3;
      if (*(a1 + 68) || *(a1 + 72) <= 0x1Fu)
      {
        *(a2 + 32) = -309;
        *(a2 + 24) = NDR_record;
      }

      else
      {
        *(a2 + 52) = 0;
        *(a2 + 36) = *(a2 + 36) | 0x1000100;
        v5 = *(a1 + 12);
        v6 = *(a1 + 52);
        v7 = *(a1 + 56);
        v8 = *(a1 + 28);
        v9 = *(a1 + 40);
        v10 = *(a1 + 104);
        v14[0] = *(a1 + 88);
        v14[1] = v10;
        sub_100001750(v5, v14, v6, v7, v8, v9);
        v13 = v12;
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        if (v13)
        {
          *(a2 + 32) = v13;
          *(a2 + 24) = NDR_record;
        }

        else
        {
          *(a2 + 36) = v15;
          *(a2 + 40) = *(a2 + 52);
          *(a2 + 44) = NDR_record;
          *a2 |= 0x80000000;
          *(a2 + 4) = 56;
          *(a2 + 24) = 1;
        }
      }
    }

    else
    {
      *(a2 + 32) = -300;
      *(a2 + 24) = NDR_record;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }
}

void sub_100000E20(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else if (*(a1 + 44) || *(a1 + 48) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v4 = *(a1 + 12);
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 80);
    v10[0] = *(a1 + 64);
    v10[1] = v7;
    sub_10015D2C0(v4, v10, v5, v6);
    *(a2 + 32) = v9;
    *(a2 + 24) = NDR_record;
  }
}

uint64_t sub_100000EEC(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 1204) >= 0xFFFFFFFC && (v5 = *(&off_100298140 + 5 * (v4 - 1200) + 5)) != 0)
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

uint64_t sub_100000F7C(_OWORD *a1, const char *a2, _DWORD *a3)
{
  error = 0;
  v5 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x600u, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v7;
    v8 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    if (!v8)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v9 = v8;
    v10 = SecTaskCopyValueForEntitlement(v8, v6, &error);
    if (!v10)
    {
      v12 = 0;
      v13 = error;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v11 = v10;
    if (error)
    {
      v12 = 0;
      goto LABEL_6;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      v12 = 0;
      if (CFNumberGetValue(v11, kCFNumberSInt32Type, &token))
      {
        LODWORD(v16) = token.val[0];
        if ((token.val[0] & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v17 = CFStringGetTypeID();
      if (v17 != CFGetTypeID(v11) || !CFStringGetCString(v11, &token, 32, 0x600u) || (v16 = strtol(&token, &v18, 10), !v18))
      {
        v12 = 0;
        CFRelease(v11);
        v13 = error;
        if (!error)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v12 = 0;
      if (!*v18 && (v16 & 0x8000000000000000) == 0)
      {
LABEL_18:
        *a3 = v16;
        v12 = 1;
        CFRelease(v11);
        v13 = error;
        if (!error)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

LABEL_6:
    CFRelease(v11);
    v13 = error;
    if (!error)
    {
LABEL_8:
      CFRelease(v9);
LABEL_11:
      CFRelease(v6);
      return v12;
    }

LABEL_7:
    CFRelease(v13);
    goto LABEL_8;
  }

  return 0;
}

void *sub_100001160(char *path, const char *a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = IORegistryEntryFromPath(kIOMainPortDefault, path);
  if (v5)
  {
    v6 = v5;
    SystemEncoding = CFStringGetSystemEncoding();
    v8 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, SystemEncoding, kCFAllocatorNull);
    if (!v8)
    {
      v16 = 0;
LABEL_18:
      IOObjectRelease(v6);
      return v16;
    }

    v9 = v8;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v8, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      v16 = 0;
LABEL_17:
      CFRelease(v9);
      goto LABEL_18;
    }

    v11 = CFProperty;
    v12 = CFGetTypeID(CFProperty);
    if (v12 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v11);
      v14 = CFStringGetSystemEncoding();
      v15 = CFStringGetMaximumSizeForEncoding(Length, v14) + 1;
      v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
      if (v16)
      {
        v17 = CFStringGetSystemEncoding();
        if (!CFStringGetCString(v11, v16, v15, v17))
        {
          free(v16);
LABEL_15:
          v16 = 0;
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = CFGetTypeID(v11);
      if (v18 != CFDataGetTypeID())
      {
        goto LABEL_15;
      }

      LODWORD(v15) = CFDataGetLength(v11);
      v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
      if (v16)
      {
        v20.location = 0;
        v20.length = v15;
        CFDataGetBytes(v11, v20, v16);
LABEL_14:
        *a3 = v15;
      }
    }

LABEL_16:
    CFRelease(v11);
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_100001350(uint64_t a1, char **a2, _DWORD *a3)
{
  v5 = MGCopyAnswer();
  if (!v5)
  {
    return 4294923290;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFStringGetTypeID())
  {
    goto LABEL_9;
  }

  Length = CFStringGetLength(v6);
  v9 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v9)
  {
    v11 = 4294923268;
    goto LABEL_10;
  }

  v10 = v9;
  if (!CFStringGetCString(v6, v9, Length + 1, 0x8000100u))
  {
    free(v10);
LABEL_9:
    v11 = 4294923290;
    goto LABEL_10;
  }

  v11 = 0;
  *a2 = v10;
  *a3 = Length;
LABEL_10:
  CFRelease(v6);
  return v11;
}

uint64_t sub_100001450(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0030) ^ 0x9A)) ^ byte_100261700[byte_1002591D0[(-73 * ((dword_1002B00C0 - dword_1002B0030) ^ 0x9A))] ^ 0x45]) - 198);
  v9 = -73 * ((dword_1002B00C0 - *v8) ^ 0x9A);
  v10 = *(&off_1002A2080 + (byte_100261704[(byte_1002591D4[v9 - 4] ^ 0x77) - 4] ^ v9) - 101);
  v11 = (*(v10 - 4) ^ *v8) - &v19;
  *v8 = 1938036407 * v11 - 0x3EC1FB4DA917549ALL;
  *(v10 - 4) = 1938036407 * (v11 ^ 0x3EC1FB4DA917549ALL);
  v17[0] = a4;
  v17[1] = a5;
  v18 = a6;
  LOBYTE(v11) = -73 * (*v8 ^ 0x9A ^ *(v10 - 4));
  v12 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0030) ^ 0x9A)) ^ byte_100270300[aVpU[(-73 * ((dword_1002B00C0 - dword_1002B0030) ^ 0x9A))] ^ 0xE3]) - 135);
  (*(v12 + 8 * ((byte_100258FD4[(byte_10027010C[v11 - 12] ^ 1) - 4] ^ v11) + 4501)))(a2, v16, 32);
  v13 = 1204021799 * (((v20 | 0xA4E11CDF) - v20 + (v20 & 0x5B1EE320)) ^ 0x44DE307F);
  v21 = v16;
  v24 = v13 + 1863511479;
  v22 = a3 - ((2 * a3) & 0x884DBF96) - v13 - 1004085301;
  v20[0] = v13 ^ 0x1F8;
  v20[1] = v13 ^ (a1 - ((2 * a1) & 0x9BC2E192) + 1306620105);
  v25 = v17;
  v14 = -73 * (*v8 ^ 0x9A ^ *(v10 - 4));
  (*(v12 + 8 * ((byte_100268944[(byte_100261808[v14 - 8] ^ 0xBA) - 4] ^ v14) + 4506)))(v20);
  return v23 ^ 0xED6C9507;
}

void sub_100001750(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(&off_1002A2080 + ((-73 * (dword_1002B01E8 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100270400[byte_100268B40[(-73 * (dword_1002B01E8 ^ 0x9A ^ dword_1002B00C0))]]) - 75);
  v9 = *(&off_1002A2080 + (byte_100268940[byte_100261800[(-73 * (*v8 ^ dword_1002B00C0 ^ 0x9A))] ^ 0x97] ^ (-73 * (*v8 ^ dword_1002B00C0 ^ 0x9A))) - 87);
  v10 = &v17[*(v9 - 4) - *v8];
  *v8 = 1938036407 * v10 + 0x3EC1FB4DA917549ALL;
  *(v9 - 4) = 1938036407 * (v10 ^ 0x3EC1FB4DA917549ALL);
  v15[0] = a4;
  v15[1] = a5;
  v16 = a6;
  v11 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B01E8) ^ 0x9A)) ^ byte_1002590D0[byte_100270200[(-73 * ((dword_1002B00C0 + dword_1002B01E8) ^ 0x9A))] ^ 0xE6]) - 132);
  (*(v11 + 8 * (((-73 * ((*(v9 - 4) - *v8) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((*(v9 - 4) - *v8) ^ 0x9A))] ^ 0xBA]) + 4507)))(a2, v14, 32);
  v12 = 1204021799 * (((v18 | 0x4701E7A8) - (v18 & 0x4701E7A8)) ^ 0xA73ECB08);
  v19 = v14;
  v23 = v15;
  v20 = a3 - ((2 * a3) & 0x884DBF96) - v12 - 1004085301;
  v22 = v12 + 1863511480;
  v18[0] = v12 ^ 0x1F8;
  v18[1] = v12 ^ (a1 - ((2 * a1) & 0x9BC2E192) + 1306620105);
  v13 = -73 * ((*(v9 - 4) + *v8) ^ 0x9A);
  (*(v11 + 8 * ((byte_100258FD4[(byte_10027010C[v13 - 12] ^ 0x93) - 4] ^ v13) + 4503)))(v18);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100001A30@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 16);
  *v5 = v7;
  *v6 = v8;
  *v3 = v9;
  return a1 ^ v1;
}

uint64_t sub_100001A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0040) ^ 0x9A)) ^ byte_100261700[byte_1002591D0[(-73 * ((dword_1002B00C0 - dword_1002B0040) ^ 0x9A))] ^ 0x45]) - 213);
  v3 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - *v2) ^ 0x9A)) ^ byte_100258FD0[byte_100270100[(-73 * ((dword_1002B00C0 - *v2) ^ 0x9A))] ^ 0x93]) - 92);
  v4 = &v9[*v2 + *(v3 - 4)];
  *v2 = (1938036407 * v4) ^ 0x3EC1FB4DA917549ALL;
  *(v3 - 4) = 1938036407 * (v4 ^ 0x3EC1FB4DA917549ALL);
  v5 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B0040) ^ 0x9A)) ^ byte_100261700[byte_1002591D0[(-73 * ((dword_1002B00C0 + dword_1002B0040) ^ 0x9A))] ^ 0x77]) - 137);
  v6 = *(v5 + 3184);
  v7 = 15981013 * ((~&v10 & 0x73025A3E92E23FBBLL | &v10 & 0x8CFDA5C16D1DC044) ^ 0x8F97CD09FFB38701);
  v14 = -1229068008 - v7;
  v10 = a1;
  v12 = v6 - v7;
  v13 = a2;
  (*(v5 + 8 * ((byte_100270400[byte_100268B4C[(-73 * ((*(v3 - 4) - *v2) ^ 0x9A)) - 12]] ^ (-73 * ((*(v3 - 4) - *v2) ^ 0x9A))) + 4519)))(&v10);
  return v11;
}

void sub_100001C94(id a1)
{
  v1 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B01D8) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 + dword_1002B01D8) ^ 0x9A))] ^ 0xC]) - 60);
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - *v1) ^ 0x9A)) ^ byte_100258FD0[byte_100270100[(-73 * ((dword_1002B00C0 - *v1) ^ 0x9A))] ^ 1]) - 95);
  v3 = &v7[1] + *v1 + *(v2 - 4);
  *v1 = 1938036407 * (v3 - 0x3EC1FB4DA917549ALL);
  *(v2 - 4) = 1938036407 * (v3 ^ 0x3EC1FB4DA917549ALL);
  v7[0] = 0;
  v6 = 4;
  LODWORD(v1) = *v1;
  LODWORD(v2) = *(v2 - 4);
  v4 = *(&off_1002A2080 + ((-73 * (dword_1002B01D8 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100268940[byte_100261800[(-73 * (dword_1002B01D8 ^ 0x9A ^ dword_1002B00C0))] ^ 0xB4]) - 136);
  v5 = *(v4 + 8 * ((3614 * ((*(v4 + 8 * ((byte_100268944[(byte_100261808[(-73 * ((v2 + v1) ^ 0x9A)) - 8] ^ 0xB4) - 4] ^ (-73 * ((v2 + v1) ^ 0x9A))) + 4348)))(*(&off_1002A2080 + (byte_100261704[(byte_1002591D4[(-73 * ((v2 - v1) ^ 0x9A)) - 4] ^ 0x45) - 4] ^ (-73 * ((v2 - v1) ^ 0x9A))) - 139) - 4, v7, &v6, 0, 0) == 0)) ^ 0x619u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100001ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0170) ^ 0x9A)) ^ byte_100270300[aVpU[(-73 * ((dword_1002B00C0 - dword_1002B0170) ^ 0x9A))] ^ 0xE3]) - 160);
  v3 = *(&off_1002A2080 + (byte_100270400[byte_100268B40[(-73 * ((dword_1002B00C0 + *v2) ^ 0x9A))] ^ 0x2D] ^ (-73 * ((dword_1002B00C0 + *v2) ^ 0x9A))) - 90);
  v4 = 1938036407 * (&v9[*(v3 - 4) - *v2] ^ 0x3EC1FB4DA917549ALL);
  *v2 = v4;
  *(v3 - 4) = v4;
  v5 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0170) ^ 0x9A)) ^ byte_100270400[byte_100268B40[(-73 * ((dword_1002B00C0 - dword_1002B0170) ^ 0x9A))]]) - 134);
  v6 = 15981013 * (&v10 ^ 0xFC9597376D51B8BALL);
  v7 = *(v5 + 3576) - v6;
  v14 = -1229068008 - v6;
  v12 = v7;
  v13 = a2;
  v10 = a1;
  (*(v5 + 8 * (((-73 * (*v2 ^ 0x9A ^ *(v3 - 4))) ^ byte_100270400[byte_100268B40[(-73 * (*v2 ^ 0x9A ^ *(v3 - 4)))]]) + 4519)))(&v10);
  return v11;
}

void sub_1000020B0(id a1)
{
  v1 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B0158) ^ 0x9A)) ^ byte_100258FD0[byte_100270100[(-73 * ((dword_1002B00C0 + dword_1002B0158) ^ 0x9A))] ^ 0x93]) - 191);
  v2 = -73 * (*v1 ^ dword_1002B00C0 ^ 0x9A);
  v3 = *(&off_1002A2080 + (byte_100268944[(byte_100261808[v2 - 8] ^ 0xC) - 4] ^ v2) - 94);
  v4 = *v1 ^ &v9 ^ *(v3 - 4);
  *v1 = (1938036407 * v4) ^ 0x3EC1FB4DA917549ALL;
  *(v3 - 4) = 1938036407 * (v4 ^ 0x3EC1FB4DA917549ALL);
  v5 = *(&off_1002A2080 + ((-73 * (dword_1002B0158 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100268940[byte_100261800[(-73 * (dword_1002B0158 ^ 0x9A ^ dword_1002B00C0))] ^ 0xBA]) - 125);
  v6 = 737412167 * (((&v10 ^ 0x5EBC46CA0957E822 | 0x21DBE0EAF9EA1273) - (&v10 ^ 0x5EBC46CA0957E822) + ((&v10 ^ 0x5EBC46CA0957E822) & 0xDE241F150615ED88)) ^ 0xEA714F9577442AFLL);
  v12 = *(v5 + 3904) - v6;
  v10 = v6 ^ 0xDE863D77;
  v7 = -73 * ((*(v3 - 4) + *v1) ^ 0x9A);
  v11 = *(&off_1002A2080 + (byte_100270400[byte_100268B4C[v7 - 12] ^ 0x2D] ^ v7) - 158) - 4;
  v8 = -73 * (*v1 ^ 0x9A ^ *(v3 - 4));
  (*(v5 + 8 * ((byte_100261704[(byte_1002591D4[v8 - 4] ^ 0x45) - 4] ^ v8) + 4498)))(&v10);
}

void sub_10000232C(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = *(&off_1002A2080 + (byte_100270400[byte_100268B4C[(-73 * (dword_1002B0148 ^ 0x9A ^ dword_1002B00C0)) - 12] ^ 0x2D] ^ (-73 * (dword_1002B0148 ^ 0x9A ^ dword_1002B00C0))) - 173);
  v8 = *(v7 - 4);
  v9 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + v8) ^ 0x9A)) ^ byte_100258FD0[byte_100270100[(-73 * ((dword_1002B00C0 + v8) ^ 0x9A))] ^ 1]) - 95);
  v10 = &v16[v8 + 32 + *(v9 - 4)];
  *(v7 - 4) = 1938036407 * v10 - 0x3EC1FB4DA917549ALL;
  *(v9 - 4) = 1938036407 * (v10 ^ 0x3EC1FB4DA917549ALL);
  v14 = a4;
  v15 = a5;
  LOBYTE(v10) = -73 * ((*(v9 - 4) - *(v7 - 4)) ^ 0x9A);
  v11 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0148) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 - dword_1002B0148) ^ 0x9A))] ^ 0x79]) - 129);
  (*(v11 + 8 * ((byte_100258FD4[(byte_10027010C[v10 - 12] ^ 0xEF) - 4] ^ v10) + 4493)))(a2, v16, 32);
  v12 = 1204021799 * ((((v17 | 0x1AE7C136) ^ 0xFFFFFFFE) - (~v17 | 0xE5183EC9)) ^ 0x5271269);
  v22 = &v14;
  v19 = a3 - ((2 * a3) & 0x884DBF96) - v12 - 1004085301;
  v21 = v12 + 1863511478;
  v17[0] = v12 ^ 0x1F8;
  v17[1] = v12 ^ (a1 - ((2 * a1) & 0x9BC2E192) + 1306620105);
  v18 = v16;
  v13 = -73 * (*(v7 - 4) ^ 0x9A ^ *(v9 - 4));
  (*(v11 + 8 * ((byte_100261704[(byte_1002591D4[v13 - 4] ^ 0x77) - 4] ^ v13) + 4494)))(v17);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100002614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24)
{
  v28 = *(v27 + 16);
  *v24 = a13;
  *a9 = a14;
  *a10 = a15;
  *v28 = a16;
  v29 = *(v26 + 3272);
  v30 = 737412167 * ((2 * (v25 & 0x530FD03A136F13C0) - v25 - 0x530FD03A136F13C1) ^ 0xDD309D1C4B5954C1);
  a22 = v30 ^ 0xDE863D77;
  a23 = qword_1002B0540;
  a24 = v29 - v30;
  v31 = (*(v26 + 37784))(&a22);
  return (*(v26 + 8 * ((16 * (dword_1002B0F80 != 0)) | 0x463u)))(v31);
}

uint64_t sub_1000026F0@<X0>(int a1@<W8>)
{
  *v5 = a1 + 1;
  v8 = *v2;
  v9 = *(v6 + 3704);
  v10 = ((~&v12 & 0xEF0F7DCAC7F10A84 | &v12 & 0x10F08235380EF57BLL) ^ 0x9ECFCF136038B27ALL) * v1;
  v12 = (v3 + 463) ^ v10;
  v13 = v8;
  v14 = v9 - v10;
  (*(v6 + 37784))(&v12);
  return v4 ^ v7;
}

void sub_1000027F0(uint64_t a1)
{
  v1 = 934376741 * ((((2 * a1) | 0xEEDB98F0) - a1 - 2003684472) ^ 0xFC63C41B);
  if (*a1 | *(a1 + 16))
  {
    v2 = *(a1 + 64) + v1 == 1998589820;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100002930@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[9])
  {
    v3 = (a1[5] | a1[7]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((253 * (((a2 ^ v4) ^ (a2 - 1)) & 1)) ^ a2)))();
}

uint64_t sub_10000297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = *(a1 + 48);
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * (477 * ((a6 - 810) ^ 0x94F) - 226)) ^ (a6 - 810))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1000029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = *(v21 + 8 * (v23 + 476));
  *(v24 - 136) = (v23 - 572126612) ^ (737412167 * ((((v24 - 144) | 0xE2A13E1B) - ((v24 - 144) | 0x1D5EC1E4) + 492749284) ^ 0x456886E5));
  *(v24 - 144) = &a21;
  *(v24 - 128) = v25 ^ (737412167 * ((((v24 - 144) | 0x7C202286E2A13E1BLL) - ((v24 - 144) | 0x83DFDD791D5EC1E4) - 0x7C202286E2A13E1CLL) ^ 0xDE0905F456886E5));
  *(v24 - 120) = (737412167 * ((((v24 - 144) | 0xE2A13E1B) - ((v24 - 144) | 0x1D5EC1E4) + 492749284) ^ 0x456886E5)) ^ 0x5F42C469;
  v26 = (*(v21 + 8 * ((v23 + 476) ^ 0x13BB)))(v24 - 144);
  return (*(v21 + 8 * ((((((((v23 + 1026) | 0x192) - 1047) | 0x54) + 8) ^ ((((v23 + 1026) | 0x192) - 1239) | 0x111)) * (v22 == 0)) ^ ((v23 + 1026) | 0x192))))(v26, 934376741);
}

uint64_t sub_100002AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  v34 = v27 + 1072;
  v35 = *(v29 + 8 * v27);
  *(v33 - 120) = ((((v33 - 144) | 0xA834F8BF) - ((v33 - 144) | 0x57CB0740) + 1472923456) ^ 0x233AF0DC) * a2 + v30 + ((v27 + 1072) ^ 0xFCC0BD1C);
  *(v33 - 144) = v32;
  *(v33 - 128) = v35 ^ (((((v33 - 144) | 0x2AB3600EA834F8BFLL) - ((v33 - 144) | 0xD54C9FF157CB0740) - 0x2AB3600EA834F8C0) ^ 0x126FDD47233AF0DCLL) * a2);
  *(v33 - 104) = (v27 + v26) ^ (((((v33 - 144) | 0xA834F8BF) - ((v33 - 144) | 0x57CB0740) + 1472923456) ^ 0x233AF0DC) * a2);
  *(v33 - 112) = &a14;
  v36 = v28 != 0;
  (*(v29 + 8 * (v27 ^ 0x1377)))(v33 - 144);
  a16 = &a26;
  a17 = &a23;
  *(v33 - 136) = &a16;
  *(v33 - 128) = v31;
  *(v33 - 144) = v34 + 15981013 * ((((v33 - 144) | 0xB19C1D65) - (v33 - 144) + ((v33 - 144) & 0x4E63E298)) ^ 0xDCCDA5DF) + 2609;
  (*(v29 + 8 * (v34 ^ 0x149B)))(v33 - 144);
  *(v33 - 112) = (v34 - 1216) ^ (100608829 * (((v33 - 144) & 0x84C07E6A | ~((v33 - 144) | 0x84C07E6A)) ^ 0x236786A3));
  *(v33 - 128) = &a14;
  *(v33 - 120) = &a19;
  *(v33 - 104) = a11;
  *(v33 - 144) = v31;
  *(v33 - 136) = &a16;
  v37 = (*(v29 + 8 * (v34 + 3266)))(v33 - 144);
  return (*(v29 + 8 * ((v36 * ((109 * (v34 ^ 0x607)) ^ 0x166)) | v34)))(v37);
}

uint64_t sub_100002D50()
{
  v6 = 4 * (v1 ^ 0x670);
  v7 = *(v0 + 8 * v6);
  v8 = 1815485821 * (((~v4 | 0x8D68D8DC1B77BB1ELL) + (v4 | 0x72972723E48844E1)) ^ 0x75267D598FB2D784);
  *(v5 - 144) = 2139164447 - v8 + v6;
  *(v5 - 112) = v10;
  *(v5 - 120) = (v2 + 194 * (v6 ^ 0x1DB) - 1261090322) ^ v8;
  *(v5 - 136) = v3;
  *(v5 - 128) = v7 + v8;
  (*(v0 + 8 * (v6 ^ 0x13B6)))(v5 - 144);
  result = v13;
  *v12 = v11;
  *(v13 + 8) = -311651065;
  return result;
}

uint64_t sub_100002EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B01F8) ^ 0x9A)) ^ byte_100261700[byte_1002591D0[(-73 * ((dword_1002B00C0 - dword_1002B01F8) ^ 0x9A))] ^ 0x76]) - 199);
  v3 = -73 * ((dword_1002B00C0 - *v2) ^ 0x9A);
  v4 = *(&off_1002A2080 + (byte_100270308[(byte_100268A48[v3 - 8] ^ 0xE3) - 8] ^ v3) - 99);
  v5 = *(v4 - 4) - *v2 - &v11;
  *v2 = 1938036407 * v5 + 0x3EC1FB4DA917549ALL;
  *(v4 - 4) = 1938036407 * (v5 ^ 0x3EC1FB4DA917549ALL);
  v6 = *(&off_1002A2080 + ((-73 * (dword_1002B01F8 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100268940[byte_100261800[(-73 * (dword_1002B01F8 ^ 0x9A ^ dword_1002B00C0))] ^ 0xC]) - 130);
  v7 = *(v6 + 3624);
  v8 = 15981013 * (((&v12 | 0xDE1EE0D108F0B0CFLL) - &v12 + (&v12 & 0x21E11F2EF70F4F30)) ^ 0x228B77E665A10875);
  v16 = -1229068008 - v8;
  v12 = a1;
  v14 = v7 - v8;
  v15 = a2;
  v9 = -73 * ((*(v4 - 4) + *v2) ^ 0x9A);
  (*(v6 + 8 * ((byte_100270400[byte_100268B4C[v9 - 12] ^ 0x2D] ^ v9) + 4527)))(&v12);
  return v13;
}

uint64_t sub_1000031C4@<X0>(int a1@<W8>)
{
  v4 = (a1 - v1 + 10) ^ 0xCF;
  v5 = a1 - 142797972;
  v6 = *(*(&off_1002A2080 + (a1 ^ (v1 + 470))) - 4);
  v7 = *(v2 + 8 * (a1 - 142797661));
  v8 = 737412167 * ((v3 - 160 - 2 * ((v3 - 160) & 0xFA44434FBEB65F4CLL) - 0x5BBBCB04149A0B4) ^ 0x8B84F196197FE7B2);
  *(v3 - 160) = (a1 - 704425855) ^ v8;
  v9 = v3 - 184;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7 - v8;
  v10 = (*(v2 + 8 * (a1 - 142793347)))(v3 - 160);
  return (*(v2 + 8 * ((121 * ((v4 ^ (**(&off_1002A2080 + v5 + 148) == 0)) & 1)) ^ (v5 + 4179))))(v10);
}

uint64_t sub_1000032BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34)
{
  v38 = a34 + v36 + 2466 - 2930;
  *v34 = v38;
  return (*(v35 + 8 * (v37 ^ 0xB6F ^ (30 * (((v38 - v37) | (v37 - v38)) >> 31)))))();
}

uint64_t sub_100003300@<X0>(int a1@<W8>)
{
  v6 = a1 - 2466;
  (*(v3 + 8 * (a1 ^ 0x19EF)))(*(*(&off_1002A2080 + a1 - 2797) - 4));
  v7 = (((v4 | 0x1E28567C3A3F9F93) - (v4 & 0x1E28567C3A3F9F93)) ^ 0x6FE8E4A59DF6276DLL) * v2;
  v8 = *(v3 + 8 * v6) - v7;
  v9 = v5 - 184;
  *(v9 + 32) = *v1;
  *(v9 + 40) = v8;
  *(v5 - 160) = (v6 - 561628248) ^ v7;
  return (*(v3 + 8 * (v6 + 4260)))(v5 - 160);
}

uint64_t sub_10000453C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B00E0) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 + dword_1002B00E0) ^ 0x9A))] ^ 0xBA]) - 52);
  v3 = -73 * ((dword_1002B00C0 + *v2) ^ 0x9A);
  v4 = *(&off_1002A2080 + (byte_100270400[byte_100268B4C[v3 - 12] ^ 0x2D] ^ v3) - 90);
  v5 = 1938036407 * ((*(v4 - 4) + *v2) ^ &v11 ^ 0x3EC1FB4DA917549ALL);
  *v2 = v5;
  *(v4 - 4) = v5;
  v6 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B00E0) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 - dword_1002B00E0) ^ 0x9A))] ^ 0xC]) - 130);
  v7 = *(v6 + 3560);
  v8 = 15981013 * ((&v12 - 2 * (&v12 & 0x5066CBFC2201F405) + 0x5066CBFC2201F405) ^ 0xACF35CCB4F504CBFLL);
  v16 = -1229068008 - v8;
  v12 = a1;
  v14 = v7 - v8;
  v15 = a2;
  v9 = -73 * ((*(v4 - 4) + *v2) ^ 0x9A);
  (*(v6 + 8 * ((byte_100270308[(byte_100268A48[v9 - 8] ^ 0xE3) - 8] ^ v9) + 4518)))(&v12);
  return v13;
}

uint64_t sub_1000047F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(v4 + 8 * (v6 ^ 0xB6BDFBA9));
  v9 = v7(**(a2 + 8 * (v6 ^ (v5 + 269))), v2, v3);
  result = a1;
  if (v9)
  {
    v11 = 857837753;
  }

  else
  {
    v11 = 857882054;
  }

  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_100005DF4(uint64_t a1)
{
  v2 = *(a1 + 4) - 25056313 * ((2 * (a1 & 0x3462779) - a1 + 2092554374) ^ 0xFD84010E);
  v5 = v2 + 88543034 - 957051079 * ((2 * (v4 & 0x4D301D8) - v4 + 2066546213) ^ 0x9C82521D) + 2640;
  result = (*(*(&off_1002A2080 + v2 + 88543034) + v2 + 88547694))(v4);
  *a1 = v4[0];
  return result;
}

uint64_t sub_1000061AC(uint64_t a1)
{
  *(v3 + 4) = v4;
  v5 = ((v2 - 218) | 0x488) - 647;
  v6 = v5 + v4 - 1998376850;
  v8 = v6 + 2401;
  v7 = v6 + 2401 < 0;
  v9 = -2401 - v6;
  if (!v7)
  {
    v9 = v8;
  }

  return (*(v1 + 8 * ((((v9 ^ 0x779FF1FF) - 8597541 + ((2 * v9) & 0xEF3FE3FE) - 1998373339 < 0x7FFFFFFF) * (v5 + 1913)) ^ v5)))(a1, (v5 + 1494));
}

uint64_t sub_1000067E4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B0200) ^ 0x9A)) ^ byte_100270300[aVpU[(-73 * ((dword_1002B00C0 + dword_1002B0200) ^ 0x9A))] ^ 0xE3]) - 96);
  v3 = -73 * (*v2 ^ dword_1002B00C0 ^ 0x9A);
  v4 = *(&off_1002A2080 + (byte_100270308[(byte_100268A48[v3 - 8] ^ 0xE3) - 8] ^ v3) - 99);
  v5 = &v11[*v2 + *(v4 - 4)];
  *v2 = 1938036407 * (v5 - 0x3EC1FB4DA917549ALL);
  *(v4 - 4) = 1938036407 * (v5 ^ 0x3EC1FB4DA917549ALL);
  v6 = *(&off_1002A2080 + ((-73 * (dword_1002B0200 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100258FD0[byte_100270100[(-73 * (dword_1002B0200 ^ 0x9A ^ dword_1002B00C0))] ^ 0xC4]) - 133);
  v7 = *(v6 + 3616);
  v8 = 15981013 * ((2 * (&v12 & 0x54BB6DA7B63341D0) - &v12 - 0x54BB6DA7B63341D2) ^ 0x57D1056F249D0694);
  v16 = -1229068008 - v8;
  v14 = v7 - v8;
  v15 = a2;
  v12 = a1;
  v9 = -73 * ((*(v4 - 4) - *v2) ^ 0x9A);
  (*(v6 + 8 * ((byte_100268944[(byte_100261808[v9 - 8] ^ 0xBA) - 4] ^ v9) + 4528)))(&v12);
  return v13;
}

int *sub_100006A20@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if (*(a2 + 28))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 24;
  if (!v7)
  {
    v8 = 8;
  }

  *result = *(a2 + v8) ^ *(a2 + 12);
  return result;
}

void sub_100006B04(uint64_t a1)
{
  v1 = *(a1 + 16) + 100608829 * ((((2 * a1) | 0x7373B99A) - a1 + 1179001651) ^ 0xE1E1DBFB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100006C0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  STACK[0x220] = v34;
  STACK[0x228] = a1;
  v36 = *(v32 + 8 * (v35 ^ 0x3F1));
  LODWORD(STACK[0x30C]) = v33;
  STACK[0x330] = v32;
  v37 = v36(16, 0x20040A4A59CD2);
  return (*(STACK[0x330] + 8 * (((v37 != 0) * (((v35 - 4280) | 0x60) ^ (v35 - 4232))) ^ v35)))(v37, v38, v39, v40, LODWORD(STACK[0x30C]), STACK[0x330], v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100006C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  STACK[0x340] = a1 + v8;
  v9 = STACK[0x340];
  STACK[0x280] = *(a6 + 8 * v7);
  v10 = *(a6 + 8 * (((v9 == v8) * ((v7 + 1908) ^ 0x8FB)) ^ (v7 + 2544)));
  STACK[0x2B0] = v6;
  return v10();
}

uint64_t sub_100006E90@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x288] = *(a1 + 8 * (a2 ^ 0x9FB));
  STACK[0x218] = v2;
  return (*(a1 + 8 * (((v2 == v3) * ((((a2 ^ 0xB75) + 1363) ^ 0xFFFFF033) + 2 * (a2 ^ 0xB75))) ^ a2 ^ 0xFCF)))();
}

uint64_t sub_100006FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x2D0] = v7;
  LODWORD(STACK[0x250]) = a7;
  v9 = (*(a6 + 8 * (v8 + 3888)))(32, 0x103004054B5FA7DLL);
  v10 = STACK[0x330];
  STACK[0x268] = 0;
  return (*(v10 + 8 * (((v9 != 0) * (((v8 - 717) | 0xE49) ^ 0xF86)) ^ v8)))();
}

uint64_t sub_100007038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = (((v7 ^ 0x31104706) - 823150342) ^ ((v7 ^ 0x9B00BD4F) + 1694450353) ^ ((v7 ^ 0x929F95D8) + 1835035176)) + 948924315;
  v9 = (*(a6 + 8 * (v6 ^ 0x1C4C)))();
  v10 = STACK[0x330];
  STACK[0x268] = a1;
  *(a1 + 24) = v9;
  return (*(v10 + 8 * ((21 * (v9 == 0)) ^ v6)))();
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  STACK[0x2A0] = v52;
  STACK[0x2E8] = v54;
  v55 = (v49 - 3343);
  STACK[0x2C0] = (((v50 ^ 0x4751D362727778A9) + (v53 ^ 0xB8AE2C9D8D8882F5)) ^ ((v53 ^ 0xCBA2E8967F9DEE8CLL) + 0x345D176980621174) ^ (((v55 + 0x730CC40BCA9A028ALL) ^ v53) - 0x730CC40BCA9A03E8)) + 0x494C91AE806DDED0;
  LODWORD(STACK[0x2F0]) = (2 * (v55 ^ 0x528)) ^ 0x388F6779;
  LODWORD(STACK[0x310]) = v51 ^ 0xB;
  v56 = STACK[0x250];
  v57 = STACK[0x330];
  v58 = *(STACK[0x268] + 24);
  v59 = __ROR8__(v58 & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = v59 - ((2 * v59 - 0x732D46FC5C86CC62) & 0xCF9AED5203BA2C78) - 0x51C92CD52C664FF5;
  v61 = __ROR8__(v60 ^ 0xF57A3BCB9F37FE1FLL, 8);
  v60 ^= 0xC630DFC512D33061;
  v62 = __ROR8__((((2 * (v61 + v60)) & 0x3CA81B6960D76F0CLL) - (v61 + v60) + 0x61ABF24B4F944879) ^ 0x839D4E1EC3071768, 8);
  v63 = (((2 * (v61 + v60)) & 0x3CA81B6960D76F0CLL) - (v61 + v60) + 0x61ABF24B4F944879) ^ 0x839D4E1EC3071768 ^ __ROR8__(v60, 61);
  v64 = (v62 + v63) ^ 0xFA1BAB80AA95DBA1;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (0xBE22C874915952ELL - ((v66 + v65) | 0xBE22C874915952ELL) + ((v66 + v65) | 0xF41DD378B6EA6AD1)) ^ 0xDC7D6B435275D18;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = *(STACK[0x330] + 8 * v55);
  v70 = (__ROR8__(v67, 8) + v68) ^ 0xED3234253CD25FFLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x3823320ED5F211D2) - (v72 + v71) - 0x1C1199076AF908EALL) ^ 0x2AE45AA571751270;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x2F982D6B10712B03;
  *v58 = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61))) ^ 0x183E9C62172C411CuLL) >> (8 * (v58 & 7u))) ^ HIBYTE(LODWORD(STACK[0x250])) ^ 0x38;
  v76 = __ROR8__((v58 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((v76 - 0x3996A37E2E436631) | 0x80E4E245375554ALL) - ((v76 - 0x3996A37E2E436631) | 0xF7F1B1DBAC8AAAB5) - 0x80E4E245375554BLL;
  v78 = __ROR8__(v77 ^ 0x1AB90346CD9FBD69, 8);
  v77 ^= 0x29F3E748407B7317uLL;
  v79 = (v78 + v77) ^ 0xE236BC558C935F11;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xFA1BAB80AA95DBA1;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xF9DA05CC83CD37C9;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xED3234253CD25FFLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xC90A3C5DE473E566;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x2F982D6B10712B03;
  v90 = __ROR8__(v89, 8);
  v91 = __ROR8__(v88, 61);
  *(v58 + 1) = (((v90 + (v89 ^ v91) - ((2 * (v90 + (v89 ^ v91))) & 0x28E29885DAC9F9BALL) - 0x6B8EB3BD129B0323) ^ 0x8C4FD020FA48BDC1) >> (8 * ((v58 + 1) & 7))) ^ BYTE2(v56) ^ 0x8F;
  v92 = __ROR8__((v58 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = (v92 - 0x3996A37E2E436631) ^ 0x21FDA96C130E265DLL;
  v94 = (__ROR8__((v92 - 0x3996A37E2E436631) ^ 0x12B74D629EEAE823, 8) + v93) ^ 0xE236BC558C935F11;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (((2 * (v95 + v96)) & 0x3A7638E514625E7CLL) - (v95 + v96) - 0x1D3B1C728A312F3FLL) ^ 0x18DF480DDF5B0B60;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xF9DA05CC83CD37C9;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xED3234253CD25FFLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xC90A3C5DE473E566;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (0x899D3CCD07DE81E2 - ((v105 + v104) | 0x899D3CCD07DE81E2) + ((v105 + v104) | 0x7662C332F8217E1DLL)) ^ 0x59FAEE59E850551ELL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  *(v58 + 2) = (((((2 * ((v108 + v107) ^ 0xD21E60DEA2BC5818)) & 0x2C3084951B432FB0) - ((v108 + v107) ^ 0xD21E60DEA2BC5818) - 0x1618424A8DA197D9) ^ 0x23C74109C7CE7123) >> (8 * ((v58 + 2) & 7))) ^ BYTE1(v56) ^ 0x6F;
  v109 = __ROR8__((v58 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v110 = (v109 - 0x3996A37E2E436631) ^ 0x21FDA96C130E265DLL;
  v111 = __ROR8__((v109 - 0x3996A37E2E436631) ^ 0x12B74D629EEAE823, 8);
  v112 = (0x254F484FAB04FACCLL - ((v111 + v110) | 0x254F484FAB04FACCLL) + ((v111 + v110) | 0xDAB0B7B054FB0533)) ^ 0x38860BE5D8685A22;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0xFA1BAB80AA95DBA1;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xF9DA05CC83CD37C9;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xED3234253CD25FFLL;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xC90A3C5DE473E566;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = __ROR8__((0xE158BA9AE6C280ABLL - ((v122 + v121) | 0xE158BA9AE6C280ABLL) + ((v122 + v121) | 0x1EA74565193D7F54)) ^ 0x313F680E094C5457, 8) + ((0xE158BA9AE6C280ABLL - ((v122 + v121) | 0xE158BA9AE6C280ABLL) + ((v122 + v121) | 0x1EA74565193D7F54)) ^ 0x313F680E094C5457 ^ __ROR8__(v121, 61));
  *(v58 + 3) = v56 ^ 0x91 ^ (((((2 * v123) | 0x69C618DFE935F36CLL) - v123 - 0x34E30C6FF49AF9B6) ^ 0x2CDD900DE3B6B8AALL) >> (8 * ((v58 + 3) & 7)));
  return v69(0xFA1BAB80AA95DBA1, 0xC90A3C5DE473E566, 0x254F484FAB04FACCLL, 0xBE22C874915952ELL, a5, v57, 0xC6695C81D1BC99CFLL, 0x21FDA96C130E265DLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100007E64@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 ^ 0xB76u;
  v3 = *(STACK[0x268] + 24);
  v4 = STACK[0x2D0];
  v5 = __ROR8__((v3 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x3996A37E2E436630 - v5) & 0x917D5E7504DB6C89 | (v5 + 0x46695C81D1BC99CFLL) & 0x6882A18AFB249376;
  v7 = v2 ^ 0x85CA13179A318C46 ^ v6;
  v6 ^= 0xB680F71917D54AD4;
  v8 = (__ROR8__(v7, 8) + v6) ^ 0xE236BC558C935F11;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xFA1BAB80AA95DBA1;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((2 * (v12 + v11)) & 0xC8B62451AAC550D0) - (v12 + v11) + 0x1BA4EDD72A9D5797) ^ 0xE27EE81BA950605ELL, 8);
  v14 = (((2 * (v12 + v11)) & 0xC8B62451AAC550D0) - (v12 + v11) + 0x1BA4EDD72A9D5797) ^ 0xE27EE81BA950605ELL ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0xED3234253CD25FFLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xB30ABAF55028CF9ALL) + 0x59855D7AA81467CDLL) ^ 0x908F61274C6782ABLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x2F982D6B10712B03;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v3[10] = (((v22 + v21 - ((2 * (v22 + v21)) & 0x9983F0E120DD120) + 0x4CC1F870906E890) ^ 0x1CF283E51E2AA98CuLL) >> (8 * ((v3 + 10) & 7u))) ^ HIBYTE(STACK[0x2D0]) ^ 0xA8;
  v23 = __ROR8__((v3 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = -2 - (((0x3996A37E2E436630 - v23) | 0x99F5FE116ACB1FD0) + ((v23 - 0x3996A37E2E436631) | 0x660A01EE9534E02FLL));
  v25 = v24 ^ 0x8B42B373F421F7F3;
  v24 ^= 0xB808577D79C5398DLL;
  v26 = __ROR8__(v25, 8);
  v27 = __ROR8__((v26 + v24 - ((2 * (v26 + v24)) & 0x161F88539DFD381ELL) + 0xB0FC429CEFE9C0FLL) ^ 0xE939787C426DC31ELL, 8);
  v28 = (v26 + v24 - ((2 * (v26 + v24)) & 0x161F88539DFD381ELL) + 0xB0FC429CEFE9C0FLL) ^ 0xE939787C426DC31ELL ^ __ROR8__(v24, 61);
  v29 = (v27 + v28) ^ 0xFA1BAB80AA95DBA1;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xF9DA05CC83CD37C9;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xED3234253CD25FFLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0xD0F9610663733B83) - ((v35 + v34) | 0x2F069EF99C8CC47CLL) + 0x2F069EF99C8CC47CLL) ^ 0x19F35D5B8700DEE5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x2F982D6B10712B03;
  v3[11] = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0x183E9C62172C411CuLL) >> (8 * ((v3 + 11) & 7u))) ^ BYTE6(v4) ^ 0x54;
  v39 = __ROR8__((v3 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (v39 - 0x3996A37E2E436631) ^ 0x21FDA96C130E265DLL;
  v41 = __ROR8__((v39 - 0x3996A37E2E436631) ^ 0x12B74D629EEAE823, 8);
  v42 = (((v41 + v40) & 0x8049AD55216D57E9 ^ 0x8008A141202D0061) + ((v41 + v40) ^ 0x23F71C1E9DD2DF88) - (((v41 + v40) ^ 0x23F71C1E9DD2DF88) & 0x8049AD55216D57E9)) ^ 0x41880D1E302CD770;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((v44 + v43) & 0xBFF5B34859F6BBEFLL ^ 0x9575830000020360) + ((v44 + v43) & 0x400A4CB7A6094410 ^ 0x808B224014011) - 1) ^ 0x6F6620328E9698D1;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xF9DA05CC83CD37C9;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((v49 + v48) | 0x244EA3FB6ADF79B8) - ((v49 + v48) | 0xDBB15C0495208647) - 0x244EA3FB6ADF79B9) ^ 0x2A9D80B939125C47;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xC90A3C5DE473E566;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x2F982D6B10712B03;
  v55 = __ROR8__(v54, 8);
  v56 = __ROR8__(v53, 61);
  v3[12] = (((((2 * (v55 + (v54 ^ v56))) & 0xCC4B2758CE473CD4) - (v55 + (v54 ^ v56)) - 0x662593AC67239E6BLL) ^ 0x81E4F0318FF02089) >> (8 * ((v3 + 12) & 7u))) ^ BYTE5(v4) ^ 0xF4;
  v57 = (__ROR8__((v3 + 13) & 0xFFFFFFFFFFFFFFF8, 8) - 0x3996A37E2E436631) & 0xF9FFFFFFFFFFFFFFLL;
  v58 = v57 ^ 0x14B74D629EEAE823;
  v57 ^= 0x27FDA96C130E265DuLL;
  v59 = __ROR8__(v58, 8);
  v60 = (((v59 + v57) | 0xB36155D007058AEALL) - ((v59 + v57) | 0x4C9EAA2FF8FA7515) + 0x4C9EAA2FF8FA7515) ^ 0x5157E9858B96D5FBLL;
  v61 = v60 ^ __ROR8__(v57, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xFA1BAB80AA95DBA1;
  v63 = __ROR8__(v62, 8);
  v64 = v62 ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) & 0x4632267F2A60F162) - (v63 + v64) + 0x5CE6ECC06ACF874ELL) ^ 0xA53CE90CE902B087;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0x1B290DA5B747D210) - 0x726B792D245C16F8) ^ 0x8347A590886ECCF7;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0x833C3840A02BA15) - ((v70 + v69) | 0xF7CC3C7BF5FD45EALL) - 0x833C3840A02BA16) ^ 0xC139FFD9EE715F73;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v73 + v72)) & 0x4D3E031BCB62370) - (v73 + v72) + 0x7D960FE721A4EE47) ^ 0x520E228C31D5C544;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v3[13] = (((((v76 + v75) | 0x1DC5EF4DAF1E1FABLL) - ((v76 + v75) | 0xE23A10B250E1E054) - 0x1DC5EF4DAF1E1FACLL) ^ 0x5FB732FB8325EB7) >> (8 * ((v3 + 13) & 7u))) ^ BYTE4(v4) ^ 0x46;
  v77 = __ROR8__((v3 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = ((2 * v77 - 0x732D46FC5C86CC62) & 0x8455D9E087534B06) - v77 - 0x894497215663F53;
  v79 = v78 ^ 0xAF625E6D22BCB25FLL;
  v78 ^= 0x9C28BA63AF587C21;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xE236BC558C935F11;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xFA1BAB80AA95DBA1;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) | 0x7BAE4FEDDDC9C43CLL) - (v84 + v83) + 0x4228D809111B1DE2) ^ 0x440D223A6D29D5D7;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) | 0x8ED1972928F38B6CLL) - ((v87 + v86) | 0x712E68D6D70C7493) + 0x712E68D6D70C7493) ^ 0x8002B46B7B3EAE93;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xC90A3C5DE473E566;
  v91 = __ROR8__(v90, 8);
  v92 = v90 ^ __ROR8__(v89, 61);
  v93 = (v91 + v92 - ((2 * (v91 + v92)) & 0xA755A1B140250DA2) + 0x53AAD0D8A01286D1) ^ 0x7C32FDB3B063ADD2;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v3[14] = (((v95 + v94 - ((2 * (v95 + v94)) & 0x4E12C4AA18D31722) + 0x270962550C698B91) ^ 0x3F37FE371B45CA8DLL) >> (8 * ((v3 + 14) & 7u))) ^ BYTE3(v4) ^ 0x80;
  v96 = __ROR8__((v3 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((0x3996A37E2E436630 - v96) & 0xE90D2C3A3E7443E1) + v96 - 0x3996A37E2E436631 - ((v96 - 0x3996A37E2E436631) & 0xEF0D2C3A3E7443E1);
  v98 = __ROR8__(v97 ^ 0xFDBA6158A09EABC2, 8);
  v97 ^= 0xCEF085562D7A65BCLL;
  v99 = (v98 + v97) ^ 0xE236BC558C935F11;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xFA1BAB80AA95DBA1;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (v103 + v102 - ((2 * (v103 + v102)) & 0x6C4D6A0A1C57E606) - 0x49D94AFAF1D40CFDLL) ^ 0x4FFCB0C98DE6C4CALL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0xED3234253CD25FFLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((v108 + v107) | 0x4C08C7DF4C23AF35) - ((v108 + v107) | 0xB3F73820B3DC50CALL) - 0x4C08C7DF4C23AF36) ^ 0x8502FB82A8504A53;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x2F982D6B10712B03;
  v112 = __ROR8__((v3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v3[15] = (((__ROR8__(v111, 8) + (v111 ^ __ROR8__(v110, 61))) ^ 0x183E9C62172C411CuLL) >> (8 * ((v3 + 15) & 7u))) ^ BYTE2(v4) ^ 0xFC;
  v113 = (0x96A37E2E436630 - v112) & 0xD683569F141DB4 | (v112 - 0x3996A37E2E436631) & 0xFF297CA960EBE24BLL;
  v114 = v113 ^ 0x1261CE3401FEF597;
  v113 ^= 0x212B2A3A8C1A3BE9uLL;
  v115 = (__ROR8__(v114, 8) + v113) ^ 0xE236BC558C935F11;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xFA1BAB80AA95DBA1;
  v118 = __ROR8__(v117, 8);
  v119 = v117 ^ __ROR8__(v116, 61);
  v120 = (((2 * (v118 + v119)) & 0xCF3BC7DE6EA0FDBCLL) - (v118 + v119) - 0x679DE3EF37507EDFLL) ^ 0x61B819DC4B62B6E8;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xED3234253CD25FFLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xC90A3C5DE473E566;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((2 * (v126 + v125)) | 0x4B758E4CD1E012D0) - (v126 + v125) - 0x25BAC72668F00968) ^ 0xA22EA4D7881226BLL;
  v3[16] = (((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v125, 61))) ^ 0x183E9C62172C411CuLL) >> (8 * ((v3 + 16) & 7u))) ^ BYTE1(v4) ^ 0x9C;
  v128 = __ROR8__((v3 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * v128 - 0x732D46FC5C86CC62) & 0xEE34558CD84B5BC6) - v128 - 0x3D8387483DE247B3;
  v130 = v129 ^ 0x9A52985B0D30BA3FLL;
  v129 ^= 0xA9187C5580D47441;
  v131 = (__ROR8__(v130, 8) + v129) ^ 0xE236BC558C935F11;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = __ROR8__((((2 * (v133 + v132)) | 0x57432278861AC032) - (v133 + v132) + 0x545E6EC3BCF29FE7) ^ 0x51BA3ABCE998BBB8, 8);
  v135 = (((2 * (v133 + v132)) | 0x57432278861AC032) - (v133 + v132) + 0x545E6EC3BCF29FE7) ^ 0x51BA3ABCE998BBB8 ^ __ROR8__(v132, 61);
  v136 = (((v134 + v135) | 0x74178F9B3A9322CALL) - ((v134 + v135) | 0x8BE87064C56CDD35) - 0x74178F9B3A9322CBLL) ^ 0x8DCD8A57B95E1503;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xED3234253CD25FFLL;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x7300EF3BF15B2C1ELL) - (v140 + v139) - 0x3980779DF8AD9610) ^ 0xF75B43FE3218C96;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((2 * (v143 + v142)) & 0xAF9554232F6B1C1ELL) - (v143 + v142) + 0x283555EE684A71F0) ^ 0x7AD7885783B5AF3;
  v3[17] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v142, 61))) ^ 0x183E9C62172C411CLL) >> (8 * ((v3 + 17) & 7u))) ^ v4 ^ 0x87;
  LODWORD(v125) = v2 - 2267;
  STACK[0x368] = 0;
  STACK[0x230] = &STACK[0x368];
  v145 = *(a1 + 8 * (((STACK[0x218] != 0x6DDC5E19E8475889) * (((v2 - 740) | 0x181) ^ 0x7E8)) ^ (v2 + 2377)));
  STACK[0x200] = *(a1 + 8 * v125);
  return v145();
}

uint64_t sub_10000D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x248] = v7;
  v9 = STACK[0x260];
  v10 = STACK[0x300];
  v11 = STACK[0x300] + 4;
  v12 = (__ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8) + a7) & 0xF9FFFFFFFFFFFFFFLL;
  v13 = v12 ^ 0x14B74D629EEAE823;
  v12 ^= 0x27FDA96C130E265DuLL;
  v14 = __ROR8__(v13, 8);
  v15 = __ROR8__((((2 * (v14 + v12)) & 0xA25A0AB597C7D512) - (v14 + v12) - 0x512D055ACBE3EA8ALL) ^ 0x4CE446F0B88F4A67, 8);
  v16 = (((2 * (v14 + v12)) & 0xA25A0AB597C7D512) - (v14 + v12) - 0x512D055ACBE3EA8ALL) ^ 0x4CE446F0B88F4A67 ^ __ROR8__(v12, 61);
  v17 = (v15 + v16) ^ a1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF9DA05CC83CD37C9;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xED3234253CD25FFLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xAD57F09833F80586) - (v23 + v22) - 0x56ABF84C19FC02C4) ^ 0x605E3BEE0270185ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x318784724F09E6ACLL) - (v26 + v25) + 0x673C3DC6D87B0CAALL) ^ 0xB75BEF5237F5D855;
  STACK[0x310] = v11;
  STACK[0x2F0] = ((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ 0x183E9C62172C411CLL) >> (8 * (v11 & 7u));
  v28 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (v28 + a7) ^ 0x21FDA96C130E265DLL;
  v30 = __ROR8__((v28 + a7) ^ 0x12B74D629EEAE823, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x685725A9D6EDB2ACLL) - 0x4BD46D2B148926AALL) ^ 0x561D2E8167E58647;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((((2 * (v33 + v32)) | 0xE7ECFDB8795F8696) - (v33 + v32) - 0x73F67EDC3CAFC34BLL) ^ 0x89EDD55C963A18EALL, 8);
  v35 = (((2 * (v33 + v32)) | 0xE7ECFDB8795F8696) - (v33 + v32) - 0x73F67EDC3CAFC34BLL) ^ 0x89EDD55C963A18EALL ^ __ROR8__(v32, 61);
  v36 = (v34 + v35 - ((2 * (v34 + v35)) & 0x83AE16280BC676AALL) - 0x3E28F4EBFA1CC4ABLL) ^ 0x380D0ED8862E0C9CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0x85437C2CD7BACD88) - (v38 + v37) + 0x3D5E41E99422993CLL) ^ 0xCC729D543810433BLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x8D112498F7CA04F6 - ((v41 + v40) | 0x8D112498F7CA04F6) + ((v41 + v40) | 0x72EEDB670835FB09)) ^ 0xBBE4E73AEC461E6FLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (0x70EBEF8E27F50C15 - ((v44 + v43) | 0x70EBEF8E27F50C15) + ((v44 + v43) | 0x8F141071D80AF3EALL)) ^ 0xA08C3D1AC87BD8E9;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  STACK[0x2D0] = v10 + 5;
  STACK[0x2C0] = ((((2 * (v47 + v46)) & 0x702B9B39C022F7D8) - (v47 + v46) - 0x3815CD9CE0117BEDLL) ^ 0xDFD4AE0108C2C50FLL) >> (8 * ((v10 + 5) & 7));
  STACK[0x260] = v9;
  return (*(STACK[0x330] + 8 * v8))();
}

uint64_t sub_10000E3D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * ((((4 * (((v6 - 1162) | 0x8A8) ^ 0xAD7)) ^ 0x63A) * (a2 == 1377790634)) ^ (v6 + 395)));
  LODWORD(STACK[0x32C]) = 30204;
  return v7();
}

uint64_t sub_10000E4E8@<X0>(unint64_t a1@<X1>, uint64_t a2@<X5>, unsigned int a3@<W8>)
{
  v4 = ((*(v3 + 16) << ((a3 + 101) & 0xFE ^ 0xED)) & 0x1F272FFFELL) + (*(v3 + 16) ^ ((a3 - 1032) | 0x86C) ^ 0xFD9FDFFFF9397713);
  STACK[0x260] = v4 + 0x7E6C7677FFEFBEFELL;
  v5 = *(a2 + 8 * ((3684 * (v4 + 0x260200006C67FF7 < 0xFFFFFFFFFFFFFFF6)) ^ a3));
  STACK[0x300] = a1;
  return v5();
}

uint64_t sub_10000E65C()
{
  STACK[0x248] = v0;
  *STACK[0x230] = v0;
  return v1();
}

uint64_t sub_10000E6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(v8 + a7) = v7;
  *(v8 - 0x6DDC5E19E8475889) = v7;
  return sub_10000F0A4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000E778@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x368];
  v3 = *(STACK[0x368] + 8);
  v4 = STACK[0x268];
  v4[1] = v3;
  *v4 = *v2;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 ^ 0xE65) + 3792) ^ 0x250 ^ (803 * (a2 ^ 0xE65)))) | a2)))();
}

uint64_t sub_10000E958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 + 1557)))();
  v9 = STACK[0x330];
  *(v7 + 24) = 0;
  return sub_10000F070(v8, v10, v11, v12, v13, v9);
}

uint64_t sub_10000EA44()
{
  *STACK[0x240] = (((v0 - 1054) ^ 0xC22) + 948922021) ^ v1;
  LODWORD(STACK[0x32C]) = 30204;
  return (STACK[0x298])();
}

uint64_t sub_10000EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = STACK[0x2AC];
  STACK[0x2D0] = v8;
  LODWORD(STACK[0x2C0]) = v11;
  LODWORD(STACK[0x294]) = v6;
  STACK[0x2E8] = v10;
  LODWORD(STACK[0x2F0]) = a5 - 1900;
  return (*(a6 + 8 * (((STACK[0x358] == v9) * ((63 * ((v7 - 607434142) & 0x2434BCFC ^ 0x8C3)) ^ 0xBCA)) ^ (((v7 - 607434142) & 0x2434BCFC) + 557))))();
}

uint64_t sub_10000ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 8 * (v8 + 1831)))(v7 - 0x6DDC5E19E8475889);
  *STACK[0x310] = 0x6DDC5E19E8475889;
  return v6(v9);
}

uint64_t sub_10000EE20@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = (*(a1 + 8 * (a2 ^ v2)))();
  v5 = STACK[0x330];
  *(v3 + 24) = 0;
  return sub_10000EDA4(v4, v6, v7, v8, v9, v5);
}

uint64_t sub_10000EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, int a3@<W8>)
{
  (*(a2 + 8 * (a3 ^ 0x1A9D)))(v3);
  result = a1;
  *(a1 + 20) = v4;
  return result;
}

void sub_10000EEE8(uint64_t a1@<X8>)
{
  *v1 = v2;
  *(v2 + 8) = *(v3 + a1);
  JUMPOUT(0x10000EF0CLL);
}

uint64_t sub_10000F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 - 1708812854)))(v7);
  STACK[0x368] = 0;
  return sub_10000F0A4(v8);
}

uint64_t sub_10000F19C()
{
  v1 = STACK[0x280];
  STACK[0x2B0] = v0;
  return v1();
}

void sub_10000F1B0(uint64_t a1)
{
  v1 = 737412167 * ((2 * (a1 & 0x1508C834) - a1 - 352897077) ^ 0x4D3E8F35);
  __asm { BRAA            X9, X17 }
}

void sub_10000F2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *(v5 + 9);
  v11 = *(v5 + 13);
  v12 = v5[15];
  *(v7 - 128) = v8;
  *(v7 - 127) = v9;
  *(v7 - 119) = v10;
  *(v7 - 115) = v11;
  *(v7 - 113) = v12;
  if (v16)
  {
    v13 = *(a2 + 48) == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = v13 || *(a2 + 8) == 0;
  __asm { BRAA            X0, X17 }
}

uint64_t sub_10000F3B0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = ((((*(a6 + 32) + v30) ^ 0x66555BDF) - 1716870111) ^ (((*(a6 + 32) + v30) ^ 0x351783E1) - 890733537) ^ (((v32 - 1584806362) ^ (*(a6 + 32) + v30)) + ((227 * (v31 ^ 0xA1B)) ^ 0x5E763846))) + 426916324;
  v34 = (2 * (v33 & 0xD958D6B1)) & (v33 ^ 0xF5D5FFB8) ^ v33 & 0xD958D6B1 ^ ((2 * (v33 & 0xD958D6B1)) & 0x20812900 | 0x80000);
  v35 = (2 * (v33 ^ 0xF5D5FFB8)) & 0x2C8D2908 ^ 0x24852909 ^ ((2 * (v33 ^ 0xF5D5FFB8)) ^ 0x591A5212) & (v33 ^ 0xF5D5FFB8);
  v36 = (4 * v34) & 0x2C8D2908 ^ v34 ^ ((4 * v34) ^ 0x200000) & v35;
  v37 = (4 * v35) & 0x2C8D2908 ^ 0xC890909 ^ ((4 * v35) ^ 0xB234A424) & v35;
  v38 = (16 * v36) & 0x2C8D2900 ^ v36 ^ ((16 * v36) ^ 0x800000) & v37;
  v39 = (16 * v37) & 0x2C8D2900 ^ 0x240D2909 ^ ((16 * v37) ^ 0xC8D29090) & v37;
  v40 = v38 ^ (v38 << 8) & 0x2C8D2900 ^ ((v38 << 8) ^ 0x88000000) & v39 ^ 0x24052909;
  v41 = (v40 << 16) & 0x2C8D0000;
  v42 = v33 ^ (2 * (v41 ^ v40 ^ ((v40 << 16) ^ 0x29090000) & ((v39 << 8) & 0x2C8D0000 ^ 0x20840000 ^ ((v39 << 8) ^ 0xD290000) & v39)));
  return (*(a1 + 8 * (a5 ^ 0xD0508ED7 ^ (218 * ((v42 & 0xF) != 3 || ((((v42 - a5) | (a5 - v42)) >> (((v29 + a5 - 53) | 0x10) + 12)) & 1) == 0)))))(v41, 747438080, 688455680, 604317961, a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_10000F648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned __int8 *a38, _BYTE *a39, uint64_t a40)
{
  v45 = v41 - 1105;
  v46 = *(&off_1002A2080 + ((v41 - 1105) ^ 0xA6D)) - 8;
  v47 = (v46[v42[4] ^ 0x1ALL] ^ 0x3E) << 24;
  v48 = *(&off_1002A2080 + v41 - 3681) - 4;
  v49 = v48[v42[3] ^ 0x4DLL];
  v50 = v48[v42[15] ^ 0x9FLL];
  v51 = (((v46[*v42 ^ 0x97] ^ 0xCF) << (v45 + 86)) ^ 0x1554D6D7) & (v49 ^ 0xFFDDF6E0) | v49 & 0x28;
  v52 = *(&off_1002A2080 + (v45 ^ 0xAAD)) - 12;
  v53 = v52[v42[2] ^ 0x2ALL] + (((v42[2] ^ 0x49) + 33) ^ ((v42[2] ^ 0xF2) - 100) ^ ((v42[2] ^ 0x52) + 60)) - 99;
  v54 = v53 & 0x1B ^ 0xA7;
  v55 = (v53 ^ (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * (((2 * v53) & 0x3A ^ 0x46) & (v53 ^ 0x5C) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)));
  v56 = v55 >> 4;
  v57 = ((v55 << 8) ^ 0xFFC606FF) & (v51 ^ 0x8492D9AA);
  LOBYTE(v51) = v52[v42[6] ^ 0xDFLL] + (((v42[6] ^ 0x35) - 63) ^ ((v42[6] ^ 0x4D) - 71) ^ ((v42[6] ^ 0x64) - 110)) + 35;
  v58 = v51 & 0x64 ^ 0x4F;
  v59 = (((v51 ^ (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * ((v51 ^ 0x6E) & (2 * (((2 * (v58 ^ v51 & 0xA)) ^ 0x14) & (v51 ^ 0x6E) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) << 8) ^ 0xA9208A0C) & (v47 ^ 0xFDB2FF4E) | v47 & 0x56000000;
  v60 = v52[v42[10] ^ 0xDELL] + (((v42[10] ^ 0xC9) - 36) ^ ((v42[10] ^ 0x90) - 125) ^ ((v42[10] ^ 0x44) + 87)) + 90;
  v61 = v60 & 0xB7 ^ 0x13;
  v62 = v48[v42[11] ^ 0xDCLL];
  v63 = v48[v42[7] ^ 0xF8];
  v64 = (((v60 ^ (2 * ((v60 ^ 0x10) & (2 * ((v60 ^ 0x10) & (2 * ((v60 ^ 0x10) & (2 * ((v60 ^ 0x10) & (2 * ((v60 ^ 0x10) & (2 * (v60 & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) << 8) ^ 0x1D252EA0) & (v62 ^ 0x5DE7FFDE) | v62 & 0x5F;
  v65 = (v59 ^ 0x246FF071) & (v63 ^ 0xFFFFFF9F);
  v66 = *(&off_1002A2080 + (v45 ^ 0xA1B));
  LODWORD(v48) = *(v66 + (v42[1] ^ 0xD9)) << 16;
  v67 = v48 & 0xCCCCCCCC ^ 0xD670FD07 ^ ((((v56 & 0xF) << 12) | 0x6CF5024A) ^ v57) & (v48 ^ 0xFF63FFFF);
  v68 = *(v66 + (v42[13] ^ 3));
  v69 = v46[v42[12] ^ 0x6ELL];
  v70 = v63 & 0x82 | v65;
  v71 = *(v66 + (v42[5] ^ 0x75)) << 16;
  LODWORD(v66) = *(v66 + (v42[9] ^ 0x47));
  v72 = (v64 & 0x1D05E9F2 ^ 0x182D7C66 ^ (v64 ^ 0xE258040D) & ((v46[v42[8] ^ 0x24] << 24) ^ 0x4078160D)) & ((v66 << 16) ^ 0xFF05FFFF) ^ (v66 << 16) & 0xAF0000;
  v73 = v52[v42[14] ^ 0x7FLL] + (((v42[14] ^ 2) - 124) ^ ((v42[14] ^ 0xAA) + 44) ^ ((v42[14] ^ 0x14) - 106));
  LOBYTE(v52) = v73 + 54;
  v74 = (v73 - 74) & 0x87 | 0x60;
  LOBYTE(v46) = v74 ^ v52 & 0xC0;
  v75 = v52 ^ (2 * ((v52 ^ 6) & (2 * ((v52 ^ 6) & (2 * ((v52 ^ 6) & (2 * ((v52 ^ 6) & (2 * ((v52 ^ 6) & (2 * ((v52 ^ 6) & (2 * v74) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LODWORD(v46) = ((((v75 << 8) ^ 0xFFFFBFFF) & ((v69 << 24) ^ 0xAB85D5FD) | (v75 << 8) & 0x2A00) ^ 0xDD04828F) & ((((v68 << 16) ^ 0xEE8AB774) & (v50 ^ 0xFEFFB796) | v50 & 0x8B) ^ 0x11624808) ^ (((v68 << 16) ^ 0xEE8AB774) & (v50 ^ 0xFEFFB796) & 0xEC7E808D | v50 & 0x89);
  v76 = *(&off_1002A2080 + (v45 ^ 0xA02)) - 12;
  v77 = *(&off_1002A2080 + v45 - 2641) - 12;
  v78 = *(&off_1002A2080 + (v45 ^ 0xA97)) - 8;
  v79 = *&v76[4 * (v75 ^ 0x15)] ^ *&v77[4 * (v68 ^ 0x95)] ^ *&v78[4 * (v50 ^ 0x9D)];
  LODWORD(v68) = v46 ^ 0xDD0CFC66;
  LODWORD(v50) = v46 >> 24;
  LODWORD(v617) = (v70 ^ 0x5D76FA86) & (v71 ^ 0xFF76FFFF) ^ v71 & 0xC60000;
  HIDWORD(v617) = v67;
  v80 = v79 ^ v67 ^ (v46 >> 24) ^ 0xFED5655D;
  v81 = *(&off_1002A2080 + v45 - 2565);
  v82 = *(v81 + 4 * (v50 ^ 0x16)) ^ v80;
  v83 = v617 ^ 0x952B0FB0 ^ v82;
  v84 = v83 ^ v72;
  LODWORD(v616) = v68;
  LODWORD(v68) = v83 ^ v72 ^ v68;
  v85 = v68 ^ 0xAB2477AF;
  v86 = v68 ^ 0x263EA15B;
  v87 = *&v76[4 * (((v68 ^ 0x77AF) >> 8) ^ 0x68)] ^ *&v78[4 * (v68 ^ 0x84)];
  v88 = *&v77[4 * (BYTE2(v85) ^ 0x7D)];
  v89 = ((v88 ^ 0x8708882D) + 2029483987) ^ ((v88 ^ 0x44711F8E) - 1148264334) ^ ((v88 ^ 0xC48F986F) + 997222289);
  if ((v88 & 0x800000) != 0)
  {
    v90 = 2121937154;
  }

  else
  {
    v90 = 2105159938;
  }

  v91 = v89 + v90;
  v92 = (v91 ^ 0xCDF3DE89) & (2 * (v91 & 0x89FBDECA)) ^ v91 & 0x89FBDECA;
  v93 = ((2 * (v91 ^ 0xCFC3D78D)) ^ 0x8C70128E) & (v91 ^ 0xCFC3D78D) ^ (2 * (v91 ^ 0xCFC3D78D)) & 0x46380946;
  v94 = (v93 ^ 0x4300000) & (4 * v92) ^ v92;
  v95 = ((4 * (v93 ^ 0x42080941)) ^ 0x18E0251C) & (v93 ^ 0x42080941) ^ (4 * (v93 ^ 0x42080941)) & 0x46380944;
  v96 = (v95 ^ 0x200100) & (16 * v94) ^ v94;
  v97 = ((16 * (v95 ^ 0x46180843)) ^ 0x63809470) & (v95 ^ 0x46180843) ^ (16 * (v95 ^ 0x46180843)) & 0x46380940;
  v98 = v96 ^ 0x46380947 ^ (v97 ^ 0x42000000) & (v96 << 8);
  LODWORD(v615) = v617 ^ 0x952B0FB0 ^ v82;
  HIDWORD(v615) = v82;
  LODWORD(v614) = v87 ^ *(v81 + 4 * (HIBYTE(v85) ^ 0x6A)) ^ v82 ^ v91 ^ (2 * ((v98 << 16) & 0x46380000 ^ v98 ^ ((v98 << 16) ^ 0x9470000) & (((v97 ^ 0x4380907) << 8) & 0x46380000 ^ 0x46300000 ^ (((v97 ^ 0x4380907) << 8) ^ 0x38090000) & (v97 ^ 0x4380907)))) ^ HIBYTE(v85);
  HIDWORD(v614) = v86;
  LODWORD(v613) = v614 ^ 0x3DAC8E7 ^ v83;
  HIDWORD(v612) = v613 ^ 0x851ED98E ^ v84 ^ 0x8E7C2762;
  v99 = *&v77[4 * (((HIDWORD(v612) ^ v86) >> 16) ^ 0xD1)] ^ *(v81 + 4 * (((HIDWORD(v612) ^ v86) >> 24) ^ 0x32)) ^ v614 ^ 0x3DAC8E7 ^ ((HIDWORD(v612) ^ v86) >> 24);
  v100 = ((v99 ^ 0x8AF66FE) - 445422287) ^ ((v99 ^ 0x77FB3903) - 1708705074) ^ ((v99 ^ 0x6572F04F) - 2001800318);
  v101 = *&v76[4 * (((WORD2(v612) ^ v86) >> 8) ^ 0xE9)];
  v102 = 2 * ((v99 ^ 0x161F7BEE) & (v101 ^ 0x3D38718) ^ v101 & 0xC39D45C);
  v103 = (((v101 ^ 0x628D5079) - 1653428345) ^ ((v101 ^ 0x786715CE) - 2020021710) ^ ((v101 ^ 0x1939C2AF) - 423215791)) + v100 - (((v102 ^ 0xFCEB396F) + 922762236) ^ ((v102 ^ 0xED0D7E89) + 652639262) ^ ((v102 ^ 0x11C54FD6) - 634499773)) + 1168518164;
  v104 = (v103 ^ 0x55F2B509) & (2 * (v103 & 0x91FAB92C)) ^ v103 & 0x91FAB92C;
  v105 = ((2 * (v103 ^ 0x7612C701)) ^ 0xCFD0FC5A) & (v103 ^ 0x7612C701) ^ (2 * (v103 ^ 0x7612C701)) & 0xE7E87E2C;
  v106 = (v105 ^ 0xC7C06C00) & (4 * v104) ^ v104;
  v107 = ((4 * (v105 ^ 0x20280225)) ^ 0x9FA1F8B4) & (v105 ^ 0x20280225) ^ (4 * (v105 ^ 0x20280225)) & 0xE7E87E2C;
  v108 = (v107 ^ 0x87A07820) & (16 * v106) ^ v106;
  v109 = ((16 * (v107 ^ 0x60480609)) ^ 0x7E87E2D0) & (v107 ^ 0x60480609) ^ (16 * (v107 ^ 0x60480609)) & 0xE7E87E20;
  v110 = v108 ^ 0xE7E87E2D ^ (v109 ^ 0x66806200) & (v108 << 8);
  v111 = *&v78[4 * ((BYTE4(v612) ^ v86) ^ 0x20)] ^ v103 ^ (2 * ((v110 << 16) & 0x67E80000 ^ v110 ^ ((v110 << 16) ^ 0x7E2D0000) & (((v109 ^ 0x81681C2D) << 8) & 0x67E80000 ^ (((v109 ^ 0x81681C2D) << 8) ^ 0x687E0000) & (v109 ^ 0x81681C2D) ^ 0x7800000))) ^ 0xF78871AB;
  HIDWORD(v613) = v84 ^ 0x8E7C2762;
  LODWORD(v612) = HIDWORD(v612) ^ v86;
  v112 = v111 ^ v84 ^ 0x8E7C2762 ^ HIDWORD(v612) ^ v86;
  LODWORD(v611) = v111 ^ v84 ^ 0x8E7C2762;
  HIDWORD(v611) = v111;
  v113 = v111 ^ v613 ^ 0x851ED98E;
  LODWORD(v610) = *&v78[4 * ((v111 ^ v84 ^ 0x62 ^ BYTE4(v612) ^ v86) ^ 0xA)] ^ *&v77[4 * (BYTE2(v112) ^ 0xCB)] ^ *(v81 + 4 * (HIBYTE(v112) ^ 0xD2)) ^ *&v76[4 * (BYTE1(v112) ^ 0xD1)] ^ v111 ^ HIBYTE(v112);
  HIDWORD(v610) = v112;
  LODWORD(v609) = v610 ^ 0x70D59D93 ^ v113;
  v114 = v611 ^ 0xB1178EB8 ^ v609;
  v115 = v114 ^ v112;
  v116 = ((v114 ^ v112) >> 24) ^ 0x230992C0;
  v117 = *&v76[4 * (BYTE1(v115) ^ 0xD8)] ^ *&v77[4 * (BYTE2(v115) ^ 0xFC)] ^ *&v78[4 * ((v114 ^ v112) ^ 0x1C)] ^ v116 ^ *(v81 + 4 * ((((HIBYTE(v115) ^ 0x4E5B112C) - 1834124268) ^ ((HIBYTE(v115) ^ 0x2D8ABC93) - 243478099) ^ ((HIBYTE(v115) ^ 0x63D1AD5D) - 1087913885)) - ((((2 * v116) & 0x13E ^ 0x76E04734) + 1754717538) ^ (((2 * v116) & 0x13E ^ 0x3CB47C5E) + 583198220) ^ (((2 * v116) & 0x13E ^ 0x4A543B6E) + 1411555644)) + 1098919187));
  v620 = v117 ^ v610 ^ 0x70D59D93;
  HIDWORD(v609) = v113;
  *(v44 - 232) = v117 ^ v113;
  v118 = v117 ^ v113 ^ 0x17ABAE4F;
  HIDWORD(v608) = v114;
  *(v44 - 256) = v118 ^ v114;
  v119 = v118 ^ v114 ^ 0xF7DE70B0;
  v120 = (v119 ^ v114 ^ v112) >> 24;
  LODWORD(v608) = v119 ^ v114 ^ v112;
  v621 = *&v76[4 * (((v118 ^ v114 ^ 0x70B0 ^ v114 ^ v112) >> 8) ^ 0xC1)] ^ *&v77[4 * (((v119 ^ v115) >> 16) ^ 0x74)] ^ *(v81 + 4 * (v120 ^ 0x91)) ^ *&v78[4 * ((v118 ^ v114) ^ 0xB0 ^ (v114 ^ v112) ^ 0xAE)] ^ v620 ^ ((v120 & 0xE0 ^ 0x7A694E28) & (((v119 ^ v115) >> 24) & 0x1F ^ 0xFFEF5FF7) | v120 & 0x17);
  v121 = v621 ^ 0xA43BB8F6 ^ v118;
  v122 = v121 ^ 0xF48EBD21;
  v123 = *&v76[4 * (((v621 ^ 0xB8F6 ^ v118 ^ 0xBD21 ^ v115) >> 8) ^ 0xB1)] ^ *(v81 + 4 * (((v122 ^ v115) >> 24) ^ 0x84)) ^ *&v78[4 * (v621 ^ 0xF6 ^ v118 ^ 0x21 ^ v115 ^ 0x82)] ^ *&v77[4 * (((v122 ^ v115) >> 16) ^ 0xDE)] ^ v621 ^ 0xA43BB8F6 ^ ((v122 ^ v115) >> 24);
  HIDWORD(v607) = v121 ^ 0xF48EBD21 ^ v115;
  v124 = HIDWORD(v607) ^ 0x8C03C0ED;
  v125 = v123 ^ 0x15551022 ^ v119;
  v126 = v125 ^ 0x5EE1B968 ^ HIDWORD(v607) ^ 0x8C03C0ED;
  LODWORD(v607) = v126;
  LODWORD(v606) = v123 ^ 0x15551022 ^ v121 ^ 0xF48EBD21;
  HIDWORD(v606) = *&v76[4 * (BYTE1(v126) ^ 0x46)] ^ *&v77[4 * (BYTE2(v126) ^ 0x43)] ^ *&v78[4 * ((v76[4 * (((v621 ^ 0xB8F6 ^ v118 ^ 0xBD21 ^ v115) >> 8) ^ 0xB1)] ^ *(v81 + 4 * (((v122 ^ v115) >> 24) ^ 0x84)) ^ v78[4 * (v621 ^ 0xF6 ^ v118 ^ 0x21 ^ v115 ^ 0x82)] ^ v77[4 * (((v122 ^ v115) >> 16) ^ 0xDE)] ^ v621 ^ 0xF6 ^ ((v122 ^ v115) >> 24)) ^ 0x22 ^ v119 ^ 0x68 ^ BYTE4(v607) ^ 0xED ^ 0x8B)] ^ *(v81 + 4 * (HIBYTE(v126) ^ 0xF0)) ^ v123 ^ 0x15551022 ^ HIBYTE(v126);
  v127 = HIDWORD(v606) ^ 0x7323CFC6 ^ v606;
  v128 = v127 ^ 0x483DA674 ^ v125 ^ 0x5EE1B968;
  v129 = v127 ^ 0x483DA674 ^ HIDWORD(v607) ^ 0x8C03C0ED;
  v130 = *&v78[4 * (v129 ^ 0x80)] ^ *&v77[4 * (BYTE2(v129) ^ 0x8E)] ^ *(v81 + 4 * (HIBYTE(v129) ^ 0xBD)) ^ *&v76[4 * (BYTE1(v129) ^ 0x42)] ^ HIDWORD(v606) ^ 0x7323CFC6 ^ HIBYTE(v129);
  HIDWORD(v605) = v127 ^ 0xAB177C05 ^ v130 ^ 0x9A7B1165;
  v131 = HIDWORD(v605) ^ v128 ^ 0x5ED522B1;
  LODWORD(v605) = v131 ^ v129 ^ 0x41937ECE;
  v132 = *&v77[4 * (((v131 ^ v127 ^ 0x483DA674 ^ v124) >> 16) ^ 0x40)] ^ *&v78[4 * (BYTE4(v605) ^ BYTE4(v606) ^ 0xC6 ^ v606 ^ 0x74 ^ v123 ^ 0x22 ^ v119 ^ 0x68 ^ 0xB1 ^ BYTE4(v606) ^ 0xC6 ^ v606 ^ 0x74 ^ v124 ^ 0x74)] ^ *(v81 + 4 * (((v131 ^ v129) >> 24) ^ 0xD0)) ^ *&v76[4 * (((WORD2(v605) ^ v127 ^ 0xA674 ^ v123 ^ 0x1022 ^ v119 ^ 0xB968 ^ 0x22B1 ^ v127 ^ 0xA674 ^ v124) >> 8) ^ 0xC4)] ^ v130 ^ 0x9A7B1165 ^ ((v131 ^ v129) >> 24);
  HIDWORD(v616) = v72;
  v133 = (((v72 ^ 0xEC48E649) + 784000776) ^ ((v72 ^ 0x634CBB35) - 1581335940) ^ ((v72 ^ 0xE4E6608E) + 638869953)) + 2013969007 + (((v121 ^ 0x4DA8D02E) - 263202735) ^ ((v121 ^ 0xD4DF6695) + 1765306092) ^ ((v121 ^ 0x667E2C52) - 610720723));
  v134 = (2 * (v133 & 0x9BF6763C)) & (v133 ^ 0x1AA32217) ^ v133 & 0x9BF6763C ^ ((2 * (v133 & 0x9BF6763C)) & 0x1444428 | 2);
  v135 = (2 * (v133 ^ 0x1AA32217)) & 0x8155542A ^ 0x81555429 ^ ((2 * (v133 ^ 0x1AA32217)) ^ 0x2AAA856) & (v133 ^ 0x1AA32217);
  v136 = (4 * v134) & 0x81555428 ^ v134 ^ ((4 * v134) ^ 8) & v135;
  v137 = (4 * v135) & 0x81555428 ^ 0x80000403 ^ ((4 * v135) ^ 0x55550AC) & v135;
  v138 = v136 ^ 0x81555401 ^ (16 * v136) & 0x81555420 ^ ((16 * v136) ^ 0xA0) & v137;
  v139 = (16 * v137) & 0x81555420 ^ 0x8000140B ^ ((16 * v137) ^ 0x155542B0) & v137;
  v140 = (v138 << 8) & 0x81555400 ^ v138 ^ ((v138 << 8) ^ 0x55542B00) & v139;
  LODWORD(v604) = v133 ^ (2 * ((v140 << 16) & 0x1550000 ^ v140 ^ ((v140 << 16) ^ 0x542B0000) & ((v139 << 8) & 0x1550000 ^ ((v139 << 8) ^ 0x55540000) & v139 ^ 0x10000))) ^ 0x4E62E532;
  HIDWORD(v604) = v132;
  HIDWORD(v603) = v132 ^ 0xA389E2A1;
  LODWORD(v603) = v132 ^ 0xA389E2A1 ^ v128 ^ 0x5ED522B1;
  LODWORD(v141) = __ROR4__(v603 ^ v133 ^ (2 * ((v140 << 16) & 0x1550000 ^ v140 ^ ((v140 << 16) ^ 0x542B0000) & ((v139 << 8) & 0x1550000 ^ ((v139 << 8) ^ 0x55540000) & v139 ^ 0x10000))) ^ 0xE083D606, 25);
  v142 = *(&off_1002A2080 + (v45 ^ 0xA07)) - 12;
  v143 = *(&off_1002A2080 + v45 - 2611) - 8;
  v144 = v143[v40[4] ^ 0x65] << 24;
  v145 = (((v142[v40[6] ^ 0xC0] ^ v40[6]) << 8) ^ 0x70094408) & (v144 ^ 0xBE5BFF88) | v144 & 0x8FFFFFFF;
  v146 = *(&off_1002A2080 + v45 - 2612) - 4;
  v147 = v146[v40[5] ^ 0xDCLL] << 16;
  v148 = *(&off_1002A2080 + (v45 ^ 0xA40)) - 8;
  v149 = v148[v40[3] ^ 0x50] ^ v40[3];
  v150 = (v149 ^ 0xFFA4FB04) & ((v143[*v40 ^ 0x8ELL] << 24) ^ 0x22A4FB2D) | v149 & 0xD2;
  v151 = v148[v40[11] ^ 0x2ALL] ^ v40[11];
  v152 = v146[v40[9] ^ 0x57] << 16;
  v153 = (((((v142[v40[10] ^ 0x1DLL] ^ v40[10]) << 8) ^ 0x79966B8A) & (v152 ^ 0x7F50FFAE) | v152 & 0x690000) ^ 0x945BC6C4) & (v151 ^ 0xFFFFFFF0) | v151 & 0xB1;
  v154 = v148[v40[7] ^ 0xCALL] ^ v40[7];
  v155 = (v154 ^ 0xFFFFFF60) & (v147 & 0x9C0000 ^ 0x21AFC528 ^ (v147 ^ 0xFF73FFE1) & (v145 ^ 0xD76A9AE9));
  v156 = (((v143[v40[8] ^ 6] ^ 0xA2) << 24) ^ 0xC8815DBA) & (v153 ^ 0x12274A45);
  v157 = v153 & 0x967EA245;
  v158 = (v142[v40[2] ^ 0x6DLL] ^ v40[2]) << 8;
  v159 = ((((v146[v40[1] ^ 0xA9] << 16) ^ 0x3D79A8EC) & (v150 ^ 0xB45B0213) | v150 & 0xC2005113) ^ 0xA86D8D90) & (v158 ^ 0xFFFF89FF);
  v599 = v148;
  v160 = v148[v40[15] ^ 0x56] ^ v40[15];
  v601 = v143;
  v602 = v142;
  v161 = ((v143[v40[12] ^ 0xA4] << 24) ^ 0x7B44E70D) & (v160 ^ 0xFF6EE7B3) | v160 & 0xF2;
  v162 = (v142[v40[14] ^ 0xBBLL] ^ v40[14]) << 8;
  v600 = v146;
  v163 = v146[v40[13] ^ 0x10] << 16;
  *(v44 - 244) = v163 & 0x400000 ^ 0x8CFBB6F0 ^ ((v162 & 0x6400 | (v161 ^ 0xB66A7C73) & (v162 ^ 0xFF6E65FF)) ^ 0x2D91C020) & (v163 ^ 0xFF5CFFFF);
  *(v44 - 236) = v157 ^ 0x9519278A ^ v156;
  *(v44 - 240) = v154 & 0x36 ^ 0xC09B8250 ^ v155;
  *(v44 - 248) = v158 & 0x8B00 ^ 0x18E5A8E7 ^ v159;
  *(v44 - 228) = (((v43 ^ 0xEA7109C4) + 53911635) ^ ((v43 ^ 0x9DF0F797) + 1958174210) ^ ((v43 ^ 0xA7D17AF0) + 1318507367)) - 910298115;
  HIDWORD(v598) = v115 ^ 0x8D0266CC;
  LODWORD(v598) = v620 ^ 0x2DBFAE7E;
  HIDWORD(v597) = *(v44 - 256) ^ 0xBE2308CF;
  LODWORD(v597) = *(v44 - 232) ^ 0xDC28D90B;
  HIDWORD(v596) = v621 ^ 0x36A0FBFA;
  LODWORD(v596) = v121 ^ 0xEFAAF114;
  HIDWORD(v595) = v121 ^ 0xF48EBD21 ^ v119;
  LODWORD(v595) = v125 ^ 0x71ECEDEF;
  HIDWORD(v594) = v123 ^ 0x701B91D6;
  LODWORD(v594) = v129 ^ 0xE98C316D;
  HIDWORD(v593) = v128 ^ 0x8133A57D;
  LODWORD(v593) = v127 ^ 0x86E66749;
  HIDWORD(v592) = v130 ^ 0x7D605ACC;
  LODWORD(v592) = v131 ^ 0xE19A5897;
  LODWORD(v141) = v141 ^ 0xA81DCDEB;
  HIDWORD(v141) = v141;
  HIDWORD(a10) = v141 >> 7;
  HIDWORD(a40) = 0;
  LODWORD(v619) = v45;
  *(v44 - 232) = 0;
  v166 = v45 - 184;
  LOBYTE(v154) = (a38 << (v45 ^ 0xC1u)) - 16 * a38 + 24;
  LOBYTE(v131) = v154 & 0x38;
  v167 = __ROR8__(&a38[-((2 * a38) & 0x577094B98DC79AD8) - 0x5447B5A3391C3294] & 0xFFFFFFFFFFFFFFF8 ^ 0xC4B63CCC9443712DLL, 8);
  v168 = (((v167 ^ 0xEA39723195243605) + 0x2D0A31E2949A1B3CLL) ^ ((v167 ^ 0x77D4F06D112DF6EDLL) - 0x4F184C41EF6C242CLL) ^ ((v167 ^ 0xD8828C2A145B6054) + 0x1FB1CFF915E54D6BLL)) + 0x35BF4C49DC949754;
  v169 = (v168 ^ 0xA7DFACE9DD712F91) & (2 * (v168 & 0x881F808999418F98)) ^ v168 & 0x881F808999418F98;
  v170 = ((2 * (v168 ^ 0xB7C7ADEADDF131B1)) ^ 0x7FB05AC689617C52) & (v168 ^ 0xB7C7ADEADDF131B1) ^ (2 * (v168 ^ 0xB7C7ADEADDF131B1)) & 0x3FD82D6344B0BE28;
  v171 = v170 ^ 0x48252144908229;
  v172 = (v170 ^ 0x2090004200003C00) & (4 * v169) ^ v169;
  v173 = ((4 * v171) ^ 0xFF60B58D12C2F8A4) & v171 ^ (4 * v171) & 0x3FD82D6344B0BE28;
  v174 = (v173 ^ 0x3F4025010080B820) & (16 * v172) ^ v172;
  v175 = ((16 * (v173 ^ 0x98086244300609)) ^ 0xFD82D6344B0BE290) & (v173 ^ 0x98086244300609) ^ (16 * (v173 ^ 0x98086244300609)) & 0x3FD82D6344B0BE20;
  v176 = (v175 ^ 0x3D8004204000A200) & (v174 << 8) ^ v174;
  v177 = (((v175 ^ 0x258294304B01C29) << 8) ^ 0xD82D6344B0BE2900) & (v175 ^ 0x258294304B01C29) ^ ((v175 ^ 0x258294304B01C29) << 8) & 0x3FD82D6344B0BE00;
  v178 = v176 ^ 0x3FD82D6344B0BE29 ^ (v177 ^ 0x1808214000B00000) & (v176 << 16);
  v179 = v168 ^ (2 * ((v178 << 32) & 0x3FD82D6300000000 ^ v178 ^ ((v178 << 32) ^ 0x44B0BE2900000000) & (((v177 ^ 0x27D00C2344009629) << 16) & 0x3FD82D6300000000 ^ 0x1298294300000000 ^ (((v177 ^ 0x27D00C2344009629) << 16) ^ 0x2D6344B000000000) & (v177 ^ 0x27D00C2344009629))));
  v180 = __ROR8__(v179 ^ 0x9ABDCA11804E87A2, 8);
  v181 = v179 ^ 0x83A81F1F42DCC9F0;
  v182 = (((v179 ^ 0x566263168EF93FABLL) + 0x2A3583F633DA09A5) ^ ((v179 ^ 0xA5CAB78084F5F8C6) - 0x2662A89FC6293136) ^ ((v179 ^ 0xBAC319F23B8E798FLL) - 0x396B06ED7952B07FLL)) + 0x6F1D1EE96715ACC8 + (((v180 ^ 0x3B0A212555E22470) + 0x78A8E30F3909C58FLL) ^ ((v180 ^ 0xA83479A332E34612) - 0x14694476A1F75813) ^ ((v180 ^ 0xA9EC5652DA8EBBF8) - 0x15B16B87499AA5F9));
  v183 = ((v182 ^ 0x5AE94642ED7913F3) - 0x47235F2E28627DE8) ^ v182 ^ ((v182 ^ 0x84458045A5C0249ELL) + 0x667066D69F24B57BLL) ^ ((v182 ^ 0xFCB5A488F75CCECBLL) + 0x1E80421BCDB85F30) ^ ((v182 ^ 0x3FD37BE37AFE97BDLL) - 0x2219628FBFE5F9A6);
  v184 = v183 ^ __ROR8__(v181, 61);
  v185 = (((v184 ^ 0x23A2B19EF71A1D30) + 0x21B05CE001660086) ^ ((v184 ^ 0xECAC02BDAE2A2FDBLL) - 0x1141103CA7A9CD91) ^ ((v184 ^ 0x3E0269978B587917) + 0x3C1084E97D2464A3)) + ((((v183 >> 8) ^ 0x52ADF692FC1BF9EELL) + 0x60EAFD40BB1B9C67) ^ (((v183 >> 8) ^ 0x200C6E9E9A97CB48) + 0x124B654CDD97AEC1) ^ (((v183 >> 8) ^ 0x72068A4509C4A955) + 0x404181974EC4CCDELL)) + ((((v183 << 56) ^ 0x241AF937574DB9A6) + 0x5B5A5A7234C5ADA9) ^ (((v183 << 56) ^ 0x601CF1D6235F45C0) + 0x1F5C529340D751CFLL) ^ (((v183 << 56) ^ 0x2E0608E17412FC66) + 0x5146ABA4179AE869)) + 0xF12C65662E9AD6;
  v186 = v185 ^ ((v185 ^ 0xAC837CE68805ED20) + 0x6F4CA20961EE1175) ^ ((v185 ^ 0x35237222B4C7FF63) - 0x9135332A2D3FCC8) ^ ((v185 ^ 0x6E70B1535529E51FLL) - 0x52409043433DE6B4) ^ ((v185 ^ 0xCBE09E877FFFF4F7) + 0x82F4068961408A4) ^ 0x63E9FE81FA3AD050;
  v187 = v186 ^ __ROR8__(v184 ^ 0xFDED12810983E24ALL, 61);
  v188 = __ROR8__(v186, 8);
  v189 = (((v187 ^ 0x7A9D24A1C6FDF536) - 0x16C592BA1ED5F57ELL) ^ ((v187 ^ 0x9E40E5EA190C08E9) + 0xDE7AC0E3EDBF75FLL) ^ ((v187 ^ 0x942B53D018765578) + 0x78C1A343FA1AAD0)) + (((v188 ^ 0x2C75F4B87680C655) - 0x1F1A067C6BC2FB42) ^ ((v188 ^ 0xB9455A371AA9DC8DLL) + 0x75D5570CF8141E66) ^ ((v188 ^ 0x8227565C5931C03DLL) + 0x4EB75B67BB8C02D6)) + 0x471EEF5836E11B86;
  v190 = ((v189 ^ 0x2316502CA1B272DELL) - 0x26EE90EC4F64F87BLL) ^ v189 ^ ((v189 ^ 0x3510ECE0EBA2759ALL) - 0x30E82C200574FF3FLL) ^ ((v189 ^ 0xE503C3F03311F05FLL) + 0x1F04FCCF22388506) ^ ((v189 ^ 0xF6FDBFFC97D77DBELL) + 0xCFA80C386FE08E5);
  v191 = v190 ^ __ROR8__(v187 ^ 0x6C58B61BD8280048, 61);
  v192 = __ROR8__(v190 ^ 0xCE22EA9D1262FB3CLL, 8);
  v193 = v191 ^ 0xBEF917531546D967;
  v194 = (((v191 ^ 0x705274885CA463DCLL) + 0x31549C24B61D4545) ^ ((v191 ^ 0x7E556ACD7EC6BC4ALL) + 0x3F538261947F9AD3) ^ ((v191 ^ 0x6396F933BE582E2) + 0x473F873FD15CA47BLL)) + 0x73B476311482C9C8 + (((v192 ^ 0x34C99B79E9037E52) - 0x55BC59B1570AB1ACLL) ^ ((v192 ^ 0xF698745B968FE480) + 0x6812496CD779D482) ^ ((v192 ^ 0xF272829D347A0233) + 0x6CF8BFAA758C3233));
  v195 = v194 ^ ((v194 ^ 0xB70E3D0B024AD17BLL) + 0x2367A2C0EC74C013) ^ ((v194 ^ 0x5DDA311A6471F993) - 0x364C512E75B01705) ^ ((v194 ^ 0xDEBD53AC187CB9C1) + 0x4AD4CC67F642A8A9) ^ ((v194 ^ 0x5FFF3F896F867FBFLL) - 0x34695FBD7E479129) ^ 0x79B3EF5743997CB7;
  v196 = v195 ^ __ROR8__(v193, 61);
  v197 = v196 ^ 0xABFE42F20A3583D4;
  v198 = __ROR8__(v195, 8);
  v199 = (((v198 ^ 0xF6EC56886C6D9013) - 0x774EF81CAF6D4CD0) ^ ((v198 ^ 0xDE8F2CAF18742659) - 0x5F2D823BDB74FA9ALL) ^ ((v198 ^ 0x95808255A1215040) - 0x14222CC162218C83)) + (((v196 ^ 0x2EAE888A39EBF6B9) + 0x7AAF3587CC218A93) ^ ((v196 ^ 0x7E76B4DABAFEC443) + 0x2A7709D74F34B869) ^ ((v196 ^ 0x51B7AADDDFF18DALL) + 0x511AC7A0283564F2)) + 0x434430EC3F08E99ALL;
  v200 = (v199 ^ 0xE73A0085AA2CF31ALL) & (2 * (v199 & 0xF73A2A092C0EFB23)) ^ v199 & 0xF73A2A092C0EFB23;
  v201 = ((2 * (v199 ^ 0x90A5485A235E35CLL)) ^ 0xFC60FD191C7630FELL) & (v199 ^ 0x90A5485A235E35CLL) ^ (2 * (v199 ^ 0x90A5485A235E35CLL)) & 0xFE307E8C8E3B187ELL;
  v202 = v201 ^ 0x210028482090801;
  v203 = (v201 ^ 0xFC2078080032101CLL) & (4 * v200) ^ v200;
  v204 = ((4 * v202) ^ 0xF8C1FA3238EC61FCLL) & v202 ^ (4 * v202) & 0xFE307E8C8E3B187CLL;
  v205 = (v204 ^ 0xF8007A0008280070) & (16 * v203) ^ v203;
  v206 = ((16 * (v204 ^ 0x630048C86131803)) ^ 0xE307E8C8E3B187F0) & (v204 ^ 0x630048C86131803) ^ (16 * (v204 ^ 0x630048C86131803)) & 0xFE307E8C8E3B1870;
  v207 = (v206 ^ 0xE200688882310000) & (v205 << 8) ^ v205;
  v208 = (((v206 ^ 0x1C3016040C0A180FLL) << 8) ^ 0x307E8C8E3B187F00) & (v206 ^ 0x1C3016040C0A180FLL) ^ ((v206 ^ 0x1C3016040C0A180FLL) << 8) & 0xFE307E8C8E3B1800;
  v209 = v207 ^ 0xFE307E8C8E3B187FLL ^ (v208 ^ 0x30300C8C0A180000) & (v207 << 16);
  v210 = v199 ^ (2 * ((v209 << 32) & 0x7E307E8C00000000 ^ v209 ^ ((v209 << 32) ^ 0xE3B187F00000000) & (((v208 ^ 0xCE0072008423007FLL) << 16) & 0x7E307E8C00000000 ^ 0x30708400000000 ^ (((v208 ^ 0xCE0072008423007FLL) << 16) ^ 0x7E8C8E3B00000000) & (v208 ^ 0xCE0072008423007FLL))));
  v211 = v210 ^ __ROR8__(v197, 61);
  v212 = __ROR8__(v210 ^ 0x9412A96C87C4A3DBLL, 8);
  v213 = (((v211 ^ 0x9C1F93B22BA48EDFLL) + 0x7BC055F274023E13) ^ ((v211 ^ 0x45B88F2F81E04FA0) - 0x5D98B69021B90092) ^ ((v211 ^ 0x7408695719CFF35FLL) - 0x6C2850E8B996BC6DLL)) + 0x20662286B3D9B96CLL + (((v212 ^ 0x28E065061ABCBCCLL) - 0x5B85C23AFEA6444ELL) ^ ((v212 ^ 0x750CE6C9B395B12CLL) - 0x2C0722A32C983EAELL) ^ ((v212 ^ 0x2B4AB5650EACC83ELL) - 0x7241710F91A147BCLL));
  v214 = (v213 ^ 0x92EE33423BDA503BLL) & (2 * (v213 & 0x9AECBB84A3980102)) ^ v213 & 0x9AECBB84A3980102;
  v215 = ((2 * (v213 ^ 0xA237574A3EDA503FLL)) ^ 0x71B7D99D3A84A27ALL) & (v213 ^ 0xA237574A3EDA503FLL) ^ (2 * (v213 ^ 0xA237574A3EDA503FLL)) & 0x38DBECCE9D42513CLL;
  v216 = v215 ^ 0x848244285425105;
  v217 = (v215 ^ 0x3093C80418000018) & (4 * v214) ^ v214;
  v218 = ((4 * v216) ^ 0xE36FB33A750944F4) & v216 ^ (4 * v216) & 0x38DBECCE9D42513CLL;
  v219 = (v218 ^ 0x204BA00A15004020) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0x18904CC488421109)) ^ 0x8DBECCE9D42513D0) & (v218 ^ 0x18904CC488421109) ^ (16 * (v218 ^ 0x18904CC488421109)) & 0x38DBECCE9D425130;
  v221 = (v220 ^ 0x89ACCC894001100) & (v219 << 8) ^ v219;
  v222 = (((v220 ^ 0x304120060942402DLL) << 8) ^ 0xDBECCE9D42513D00) & (v220 ^ 0x304120060942402DLL) ^ ((v220 ^ 0x304120060942402DLL) << 8) & 0x38DBECCE9D425100;
  v223 = v221 ^ 0x38DBECCE9D42513DLL ^ (v222 ^ 0x18C8CC8C00400000) & (v221 << 16);
  v224 = v213 ^ (2 * ((v223 << 32) & 0x38DBECCE00000000 ^ v223 ^ ((v223 << 32) ^ 0x1D42513D00000000) & (((v222 ^ 0x201320429D02403DLL) << 16) & 0x38DBECCE00000000 ^ 0x1011608C00000000 ^ (((v222 ^ 0x201320429D02403DLL) << 16) ^ 0x6CCE9D4200000000) & (v222 ^ 0x201320429D02403DLL))));
  v225 = v224 ^ __ROR8__(v211, 61);
  v226 = __ROR8__(v224 ^ 0xE473F4B989DA4A44, 8);
  v227 = (((v225 ^ 0x15E31F11A68C2D78) - 0x78C40081674EB8C2) ^ ((v225 ^ 0x7AE67EB50667A5E5) - 0x17C16125C7A5305FLL) ^ ((v225 ^ 0x8B0FFD26BDA4B8FBLL) + 0x19D71D498399D2BFLL)) - 0x6CD3FB7396E1E4B4 + (((v226 ^ 0xA67035E94D87B7B3) - 0x5B06728BCE0FD985) ^ ((v226 ^ 0x75E22EE10057855ALL) + 0x776B967C7C201494) ^ ((v226 ^ 0xF4FF19CE23D8FE02) - 0x9895EACA0509034));
  v228 = (v227 ^ 0xDE5EE20356FF2C6CLL) & (2 * (v227 & 0xD01CC42B60F02D6DLL)) ^ v227 & 0xD01CC42B60F02D6DLL;
  v229 = ((2 * (v227 ^ 0xDE7EE25557DF3CF4)) ^ 0x1CC44CFC6E5E2332) & (v227 ^ 0xDE7EE25557DF3CF4) ^ (2 * (v227 ^ 0xDE7EE25557DF3CF4)) & 0xE62267E372F1198;
  v230 = v229 ^ 0x222220211211089;
  v231 = (v229 ^ 0x40007C06000110) & (4 * v228) ^ v228;
  v232 = ((4 * v230) ^ 0x398899F8DCBC4664) & v230 ^ (4 * v230) & 0xE62267E372F1198;
  v233 = (v232 ^ 0x8000078142C0000) & (16 * v231) ^ v231;
  v234 = ((16 * (v232 ^ 0x662260623031199)) ^ 0xE62267E372F11990) & (v232 ^ 0x662260623031199) ^ (16 * (v232 ^ 0x662260623031199)) & 0xE62267E372F1190;
  v235 = (v234 ^ 0x622266232211100) & (v233 << 8) ^ v233;
  v236 = (((v234 ^ 0x840001C050E0009) << 8) ^ 0x62267E372F119900) & (v234 ^ 0x840001C050E0009) ^ ((v234 ^ 0x840001C050E0009) << 8) & 0xE62267E372F1100;
  v237 = v235 ^ 0xE62267E372F1199 ^ (v236 ^ 0x222263627010000) & (v235 << 16);
  v238 = &a38[-((2 * (a38 + 8)) & 0x17EBCF51B7B2035ALL) - 0x740A18572426FE4BLL];
  v239 = (v227 ^ (2 * ((v237 << 32) & 0xE62267E00000000 ^ v237 ^ ((v237 << 32) ^ 0x372F119900000000) & (((v236 ^ 0xC400048102E0099) << 16) & 0xE62267E00000000 ^ 0x800005000000000 ^ (((v236 ^ 0xC400048102E0099) << 16) ^ 0x267E372F00000000) & (v236 ^ 0xC400048102E0099)))) ^ 0x4E521A4CE1C49F48) >> (~v154 & 0x10) >> (v154 & 0x28 ^ 8u);
  v240 = ((v238 >> 3 << 59) ^ 0xC601D0CFD6A6BA04) & ((v238 >> 8) ^ 0xFED02708567C6266) | (v238 >> 8) & 0xFE2F30295945FBLL;
  v241 = (((v240 ^ 0x7D8735F81A6A9ABELL) - 0x1FBA148BB3A073BDLL) ^ ((v240 ^ 0xDEF285B21B2201E9) + 0x43305B3E4D171716) ^ ((v240 ^ 0xCDFE45A5FFB76052) + 0x503C9B29A98276AFLL)) + 0x5BFEBF54FEB836CALL;
  v242 = ((v241 ^ 0xCB55F7F12F7A287) - 0x3B98F408D37D2D2) ^ v241 ^ ((v241 ^ 0x7CD76F008EAFDDF0) - 0x73DBBF3F116FADA5) ^ ((v241 ^ 0x879147A7D617D8CDLL) + 0x77626867B6285768) ^ ((v241 ^ 0xF8FFA7E7D58FD7EFLL) + 0x80C8827B5B05846);
  v243 = v242 ^ 0xA01D32B153FDE0CDLL;
  v244 = __ROR8__(v242 ^ 0x9AB571F451CFF3E9, 8);
  v245 = (((v242 ^ 0xAED224413699092ELL) - 0xECF16F06564E9E3) ^ ((v242 ^ 0x495995E0BB9755E5) + 0x16BB58AE17954AD8) ^ ((v242 ^ 0x5F632EF7336C61B6) + 0x81E3B99F6E7E85)) + 0x6FB1F7C24F5D8047 + (((v244 ^ 0xFEFA91C6A33D1F4) + 0x1A7D51D3A86E7B95) ^ ((v244 ^ 0xCA2B947DADCBB78CLL) - 0x2046934D9069E213) ^ ((v244 ^ 0x2BE7B85CAD29DE15) + 0x3E7540936F747476));
  v246 = ((v245 ^ 0x513DD3628B6BAD49) - 0x35014AF812219ECLL) ^ v245 ^ ((v245 ^ 0xC977508367CB9CEBLL) + 0x64E568B1927DD7B2) ^ ((v245 ^ 0xACA8A35729563AA8) + 0x13A9B65DCE071F3) ^ ((v245 ^ 0x668FE77BCFBFBFAFLL) - 0x34E220B6C5F60B0ALL);
  v247 = v246 ^ __ROR8__(v243, 61);
  v248 = __ROR8__(v246 ^ 0x9AD96B1EEDF9A803, 8);
  v249 = (((v247 ^ 0x57620359A5CFC68BLL) - 0x50D1448F4B096810) ^ ((v247 ^ 0x381D135E67A83A61) - 0x3FAE5488896E94FALL) ^ ((v247 ^ 0x4067E8F6295038BELL) - 0x47D4AF20C7969625)) + 0x1144808C79A3E3DLL + (((v248 ^ 0x22942094A2CEC7F7) - 0x616849F6BFC90340) ^ ((v248 ^ 0xD25BEFB543525B00) + 0x6E587928A1AA6049) ^ ((v248 ^ 0x27BDA3DD31F6AC76) - 0x6441CABF2CF168C1));
  v250 = v249 ^ ((v249 ^ 0xEFA16C1DA8F79BDBLL) + 0x538410A0A332BB1DLL) ^ ((v249 ^ 0xC8B9C894ABF4E943) + 0x749CB429A031C985) ^ ((v249 ^ 0x9819DC142E6E7A54) + 0x243CA0A925AB5A94) ^ ((v249 ^ 0xFCDBFBDFD957D7F4) + 0x40FE8762D292F734) ^ 0x3AE962586F27F297;
  v251 = v250 ^ __ROR8__(v247, 61);
  v252 = v251 ^ 0x90B052E2790A7040;
  v253 = __ROR8__(v250, 8);
  v254 = (((v251 ^ 0xC538E01BE1A6FEA6) - 0x5588B2F998AC8EE6) ^ ((v251 ^ 0x69865401F1E0DBA6) + 0x6C9F91C7715541ALL) ^ ((v251 ^ 0xE56B9E2B26111CE2) - 0x75DBCCC95F1B6CA2)) + (((v253 ^ 0xA734D59CEFB188ADLL) + 0x70184CA03E2BEE86) ^ ((v253 ^ 0xC433094693030F89) + 0x131F907A429969A2) ^ ((v253 ^ 0x2036CE37C2DD6E3FLL) - 0x8E5A8F4ECB8F7E8)) + 0x7F51CE37BBB70148;
  v255 = (v254 ^ 0x95F41EE22B34B916) & (2 * (v254 & 0xC5F61ECA23B0B926)) ^ v254 & 0xC5F61ECA23B0B926;
  v256 = ((2 * (v254 ^ 0x1FF816622D75895ELL)) ^ 0xB41C11501D8A60F0) & (v254 ^ 0x1FF816622D75895ELL) ^ (2 * (v254 ^ 0x1FF816622D75895ELL)) & 0xDA0E08A80EC53078;
  v257 = v256 ^ 0x4A0208A802451008;
  v258 = (v256 ^ 0x100800000C802030) & (4 * v255) ^ v255;
  v259 = ((4 * v257) ^ 0x683822A03B14C1E0) & v257 ^ (4 * v257) & 0xDA0E08A80EC53078;
  v260 = (v259 ^ 0x480800A00A040060) & (16 * v258) ^ v258;
  v261 = ((16 * (v259 ^ 0x9206080804C13018)) ^ 0xA0E08A80EC530780) & (v259 ^ 0x9206080804C13018) ^ (16 * (v259 ^ 0x9206080804C13018)) & 0xDA0E08A80EC53070;
  v262 = (v261 ^ 0x800008800C410000) & (v260 << 8) ^ v260;
  v263 = (((v261 ^ 0x5A0E002802843078) << 8) ^ 0xE08A80EC5307800) & (v261 ^ 0x5A0E002802843078) ^ ((v261 ^ 0x5A0E002802843078) << 8) & 0xDA0E08A80EC53000;
  v264 = v262 ^ 0xDA0E08A80EC53078 ^ (v263 ^ 0xA08080804000000) & (v262 << 16);
  v265 = v254 ^ (2 * ((v264 << 32) & 0x5A0E08A800000000 ^ v264 ^ ((v264 << 32) ^ 0xEC5307800000000) & (((v263 ^ 0xD00600A00AC50078) << 16) & 0x5A0E08A800000000 ^ 0x5206002800000000 ^ (((v263 ^ 0xD00600A00AC50078) << 16) ^ 0x8A80EC500000000) & (v263 ^ 0xD00600A00AC50078))));
  v266 = v265 ^ __ROR8__(v252, 61);
  v267 = __ROR8__(v265 ^ 0xDBF02DCB59A2FEA3, 8);
  v268 = v266 ^ 0xB9820537DCD68A37;
  v269 = (((v266 ^ 0xD0ECC181CCA4F227) - 0x696EC4B610727810) ^ ((v266 ^ 0x1E37C1D110E62B6) + 0x479E86D53227177FLL) ^ ((v266 ^ 0x9771E1DA935694F8) - 0x2EF3E4ED4F801ECFLL)) + 0x474AAD5288892E6 + (((v267 ^ 0x1E657F13A1F46EE3) - 0x5FD23D32479B60BELL) ^ ((v267 ^ 0x44FD2D71FDDEF2A8) - 0x54A6F501BB1FCF5) ^ ((v267 ^ 0x86CEF7D54B4728FCLL) + 0x38864A0B52D7D95FLL));
  v270 = (v269 ^ 0x9865942B5236B778) & (2 * (v269 & 0x996996335AA4B662)) ^ v269 & 0x996996335AA4B662;
  v271 = ((2 * (v269 ^ 0xBA359C0D763EDFB8)) ^ 0x46B8147C5934D3B4) & (v269 ^ 0xBA359C0D763EDFB8) ^ (2 * (v269 ^ 0xBA359C0D763EDFB8)) & 0x235C0A3E2C9A69DALL;
  v272 = v271 ^ 0x21440A02248A284ALL;
  v273 = (v271 ^ 0x208001C08104190) & (4 * v270) ^ v270;
  v274 = ((4 * v272) ^ 0x8D7028F8B269A768) & v272 ^ (4 * v272) & 0x235C0A3E2C9A69D8;
  v275 = (v274 ^ 0x150083820082140) & (16 * v273) ^ v273;
  v276 = ((16 * (v274 ^ 0x220C02060C924892)) ^ 0x35C0A3E2C9A69DA0) & (v274 ^ 0x220C02060C924892) ^ (16 * (v274 ^ 0x220C02060C924892)) & 0x235C0A3E2C9A69D0;
  v277 = (v276 ^ 0x2140022208820900) & (v275 << 8) ^ v275;
  v278 = (((v276 ^ 0x21C081C2418605ALL) << 8) ^ 0x5C0A3E2C9A69DA00) & (v276 ^ 0x21C081C2418605ALL) ^ ((v276 ^ 0x21C081C2418605ALL) << 8) & 0x235C0A3E2C9A6900;
  v279 = v277 ^ 0x235C0A3E2C9A69DALL ^ (v278 ^ 0x80A2C08080000) & (v277 << 16);
  v280 = v269 ^ (2 * ((v279 << 32) & 0x235C0A3E00000000 ^ v279 ^ ((v279 << 32) ^ 0x2C9A69DA00000000) & (((v278 ^ 0x23540012249221DALL) << 16) & 0x235C0A3E00000000 ^ 0x2140022400000000 ^ (((v278 ^ 0x23540012249221DALL) << 16) ^ 0xA3E2C9A00000000) & (v278 ^ 0x23540012249221DALL)))) ^ 0x64173EDE6203C45FLL;
  v281 = v280 ^ __ROR8__(v268, 61);
  v282 = v281 ^ 0xAEF0BCA1145F24C6;
  v283 = __ROR8__(v280, 8);
  v284 = (((v281 ^ 0xF8464933FE2D3436) - 0x56B6F592EA7210F0) ^ ((v281 ^ 0xA7A4E227895DF4C8) - 0x9545E869D02D00ELL) ^ ((v281 ^ 0xAA2B318BED098B1CLL) - 0x4DB8D2AF956AFDALL)) + (((v283 ^ 0xDCA16B4DC64ACA35) - 0x41F0DBC57200986DLL) ^ ((v283 ^ 0x5A4E5C0537538975) + 0x38E013727CE624D3) ^ ((v283 ^ 0x93E51C19E2126E79) - 0xEB4AC9156583C21)) + 0x21F8586E72333184;
  v285 = ((v284 ^ 0x2BEF78A75D2A2061) - 0x158CEEF161E1629ELL) ^ v284 ^ ((v284 ^ 0xBDC0BA6DFDC1821BLL) + 0x7C5CD3C43EF53F1CLL) ^ ((v284 ^ 0xF711E863F2D959FALL) + 0x368D81CA31EDE4FBLL) ^ ((v284 ^ 0x5F5DBCFF6EF9B97FLL) - 0x613E2AA95232FB80);
  v286 = v285 ^ __ROR8__(v282, 61);
  v287 = v286 ^ 0x8DFA228A03468FB9;
  v288 = __ROR8__(v285 ^ 0xC00E51BCE66B82FBLL, 8);
  v289 = (((v286 ^ 0x796039F5E1D10E50) + 0xB65E4801D687E17) ^ ((v286 ^ 0x5958B8FC7E5852DFLL) + 0x2B5D658982E1229ALL) ^ ((v286 ^ 0x8CEF9413F77FD108) - 0x115B699F4395EB1)) - 0x8084B2AC1C7F20ALL + (((v288 ^ 0x7B945464FA63831BLL) + 0x627189618663861DLL) ^ ((v288 ^ 0x25B5D82DE336336) + 0x1BBE8087A2336632) ^ ((v288 ^ 0x277A199376AF4E5BLL) + 0x3E9FC4960AAF4B5DLL));
  v290 = v289 ^ ((v289 ^ 0xDDABCECAAAEF087CLL) + 0x3C4F7B80549740AALL) ^ ((v289 ^ 0x7AC37965ECCEA0D9) - 0x64D833D0ED4917F3) ^ ((v289 ^ 0x570843A4B076E030) - 0x49130911B1F1571ALL) ^ ((v289 ^ 0xEE7BBEBEF7D0FFBFLL) + 0xF9F0BF409A8B76BLL) ^ 0x126AAD5C79D1D95DLL;
  v291 = __ROR8__(v290, 8);
  v292 = __ROR8__(v287, 61);
  v293 = (((v290 ^ v292 ^ 0x9EDFE34D13A59ABCLL) + 0x3830077E2F00BD5CLL) ^ ((v290 ^ v292 ^ 0x5B5A59A72B954032) - 0x24A426BE8CF982ALL) ^ ((v290 ^ v292 ^ 0x9233315605ECA713) + 0x34DCD565394980F5)) + (((v291 ^ 0x93FC7126F2F24C81) - 0x3B533D8FCF7F5D16) ^ ((v291 ^ 0xB013C32AD4D4FALL) + 0x57E0A095E8A63A93) ^ ((v291 ^ 0xFF12BDD2E746C417) - 0x57BDF17BDACBD580)) + 0xBB399E0F9B6F5;
  v294 = ((v293 ^ 0x3DFCFCA5BBAA4370) - 0x118F732F642F8005) ^ v293 ^ ((v293 ^ 0x3401DF73876348C5) - 0x187250F958E68BB0) ^ ((v293 ^ 0x822BE1C164A37637) + 0x51A791B444D94ABELL) ^ ((v293 ^ 0xA7A54D9D87EFBEF7) + 0x74293DE8A795827ELL);
  LOBYTE(v291) = 38 - (((v131 ^ 0x5C) + 6) ^ ((v131 ^ 0x6E) + 56) ^ ((v131 ^ 0x2A) + 116));
  LOBYTE(v278) = (v291 ^ 0x13) & (2 * (v291 & 0x58)) ^ v291 & 0x58;
  LOBYTE(v287) = ((2 * (v291 ^ 0x23)) ^ 0xF6) & (v291 ^ 0x23) ^ (2 * (v291 ^ 0x23)) & 0x7A;
  LOBYTE(v272) = v291 ^ (2 * ((((4 * (v287 ^ 9)) ^ 0xEC) & (v287 ^ 9) ^ (4 * (v287 ^ 9)) & 0x78 ^ 0x60) & (16 * ((v287 ^ 0x7F) & (4 * v278) ^ v278)) ^ (v287 ^ 0x7F) & (4 * v278) ^ v278 ^ 0x7B)) ^ 0x1E;
  v295 = (v294 ^ 0xA2BD1D2130EF5262) >> (v131 ^ 0x18u);
  v296 = 16 * ((v294 ^ 0x2BD1D2130EF5262) << (v272 & 0xEB ^ 0xA0) << (v272 & 0x14 ^ 0x10));
  v297 = (((v296 ^ 0xAF501AA038CCB994) + 0x7499538DECED1149) ^ ((v296 ^ 0xE642F8B9243C86BCLL) + 0x3D8BB194F01D2E61) ^ ((v296 ^ 0x4912E2191CF03F28) - 0x6D2454CB372E680BLL)) - 0x15D1BD7ADD2DA99 + (((v239 ^ 0x1975BC611553A9A8) + 0x374FFD3AA0B67775) ^ ((v239 ^ 0x1A58F3BF18F50008) + 0x3462B2E4AD10DED5) ^ ((v239 ^ 0x32D4FDE0DA6A9A0) + 0x2D170E85B843777DLL));
  v298 = ((v297 ^ 0x364C4DD4CBCB9EFBLL) - 0x3EEA236517FF33DALL) ^ v297 ^ ((v297 ^ 0x3C173214D8D79A7CLL) - 0x34B15CA504E3375DLL) ^ ((v297 ^ 0xEC8A8E8E39D5565DLL) + 0x1BD31FC01A1E0484) ^ ((v297 ^ 0xEE779FFFF6FDFFFBLL) + 0x192E0EB1D536AD26);
  v299 = *a38;
  v300 = &a38[-((2 * (a38 + 16)) & 0xA8984A66ABACE776) + 0x544C253355D673CBLL];
  v301 = ((v300 << 56) | 0xFFFFFFFFFFFFFFLL) & ((v300 >> 8) ^ 0x28038C835549AF1ELL) | (v300 << 56) & 0xD000000000000000;
  v302 = (((v301 ^ 0x77A30F9421AAF0C4) - 0x1BD648C3D208F8E9) ^ ((v301 ^ 0x65D87A2AC7CEDE2CLL) - 0x9AD3D7D346CD601) ^ ((v301 ^ 0xAA2CB51880785785) + 0x39A60DB08C25A058)) - 0x72ABC7F506D8BC92;
  v303 = ((v302 ^ 0x2D0DC9013D6157F7) - 0x55FB5CA166C74A48) ^ v302 ^ ((v302 ^ 0xBE351A4A2AE97A5ALL) + 0x393C70158EB0981BLL) ^ ((v302 ^ 0xD531B1F1D7756BD3) + 0x5238DBAE732C8994) ^ ((v302 ^ 0x3EFFF71A9B5B5BC1) - 0x460962BAC0FD467ELL);
  v304 = __ROR8__(v303 ^ 0x1865EBFD358F0D51, 8);
  v305 = v303 ^ 0xCB05E1C467A7656DLL;
  v306 = (((v303 ^ 0x996F7E2F4384845CLL) - 0x526A9FEB2423E131) ^ ((v303 ^ 0x8658D82B25830588) - 0x4D5D39EF422460E5) ^ ((v303 ^ 0xD0257CCD1C03D143) - 0x1B209D097BA4B42ELL)) - 0x33F965499BEBB2C2 + (((v304 ^ 0xA70AA9F79C33E6) - 0x7EADBC328C846879) ^ ((v304 ^ 0x2DE19C900612CF34) - 0x53EB2A0B7D0A94ABLL) ^ ((v304 ^ 0x919039DB0DFF622CLL) + 0x106570BF8918C64DLL));
  v307 = (v306 ^ 0xF2EAB19E2AF08F19) & (2 * (v306 & 0xFAECB9D040F8AE1DLL)) ^ v306 & 0xFAECB9D040F8AE1DLL;
  v308 = ((2 * (v306 ^ 0x72E3D21EAB01D713)) ^ 0x101ED79DD7F2F21CLL) & (v306 ^ 0x72E3D21EAB01D713) ^ (2 * (v306 ^ 0x72E3D21EAB01D713)) & 0x880F6BCEEBF9790ELL;
  v309 = v308 ^ 0x8801284228090902;
  v310 = (v308 ^ 0x6438003E0700CLL) & (4 * v307) ^ v307;
  v311 = ((4 * v309) ^ 0x203DAF3BAFE5E438) & v309 ^ (4 * v309) & 0x880F6BCEEBF9790CLL;
  v312 = (v311 ^ 0xD2B0AABE16000) & (16 * v310) ^ v310;
  v313 = ((16 * (v311 ^ 0x880240C440181906)) ^ 0x80F6BCEEBF9790E0) & (v311 ^ 0x880240C440181906) ^ (16 * (v311 ^ 0x880240C440181906)) & 0x880F6BCEEBF97900;
  v314 = (v313 ^ 0x800628CEAB911000) & (v312 << 8) ^ v312;
  v315 = (((v313 ^ 0x80943004068690ELL) << 8) ^ 0xF6BCEEBF9790E00) & (v313 ^ 0x80943004068690ELL) ^ ((v313 ^ 0x80943004068690ELL) << 8) & 0x880F6BCEEBF97900;
  v316 = v314 ^ 0x880F6BCEEBF9790ELL ^ (v315 ^ 0x80B4ACAE9790000) & (v314 << 16);
  v317 = v306 ^ (2 * ((v316 << 32) & 0x80F6BCE00000000 ^ v316 ^ ((v316 << 32) ^ 0x6BF9790E00000000) & (((v315 ^ 0x800421040280710ELL) << 16) & 0x80F6BCE00000000 ^ 0x1000600000000 ^ (((v315 ^ 0x800421040280710ELL) << 16) ^ 0x6BCEEBF900000000) & (v315 ^ 0x800421040280710ELL))));
  v318 = v317 ^ __ROR8__(v305, 61);
  v319 = __ROR8__(v317 ^ 0x284B6AFD4EBE7931, 8);
  v320 = v318 ^ 0x4F4BBBE67CAE1165;
  v321 = (((v318 ^ 0xDB7F4E5E8E342F00) + 0x6BCB0A470D65C19BLL) ^ ((v318 ^ 0x73C54B933DC4BF8) - 0x4877EF5F4F725A9DLL) ^ ((v318 ^ 0xBCC22EDD4A7B0A58) + 0xC766AC4C92AE4C3)) - 0xC61F51079D996ALL + (((v319 ^ 0xF86F740928D61F76) + 0x2D659AC32E8EA5B4) ^ ((v319 ^ 0x899B81D9C7C2187FLL) + 0x5C916F13C19AA2BBLL) ^ ((v319 ^ 0x309C8656404033B1) - 0x1A699763B9E7768BLL));
  v322 = (v321 ^ 0x9F8E1DFEC9ACCAB9) & (2 * (v321 & 0x9C2E11E0E9CE8AB1)) ^ v321 & 0x9C2E11E0E9CE8AB1;
  v323 = ((2 * (v321 ^ 0x97DA1F7F1AB1CB99)) ^ 0x17E81D3FE6FE8250) & (v321 ^ 0x97DA1F7F1AB1CB99) ^ (2 * (v321 ^ 0x97DA1F7F1AB1CB99)) & 0xBF40E9FF37F4128;
  v324 = v323 ^ 0x814028011014128;
  v325 = (v323 ^ 0x1E00C07E27E0000) & (4 * v322) ^ v322;
  v326 = ((4 * v324) ^ 0x2FD03A7FCDFD04A0) & v324 ^ (4 * v324) & 0xBF40E9FF37F4128;
  v327 = (v326 ^ 0xBD00A1FC17D0020) & (16 * v325) ^ v325;
  v328 = ((16 * (v326 ^ 0x24048032024108)) ^ 0xBF40E9FF37F41280) & (v326 ^ 0x24048032024108) ^ (16 * (v326 ^ 0x24048032024108)) & 0xBF40E9FF37F4120;
  v329 = (v328 ^ 0xB40089F33740000) & (v327 << 8) ^ v327;
  v330 = (((v328 ^ 0xB40600C00B4128) << 8) ^ 0xF40E9FF37F412800) & (v328 ^ 0xB40600C00B4128) ^ ((v328 ^ 0xB40600C00B4128) << 8) & 0xBF40E9FF37F4100;
  v331 = v329 ^ 0xBF40E9FF37F4128 ^ (v330 ^ 0x40E9373410000) & (v329 << 16);
  v332 = v321 ^ (2 * ((v331 << 32) & 0xBF40E9F00000000 ^ v331 ^ ((v331 << 32) ^ 0x737F412800000000) & (((v330 ^ 0xBF0000C803E4128) << 16) & 0xBF40E9F00000000 ^ 0x1600C8000000000 ^ (((v330 ^ 0xBF0000C803E4128) << 16) ^ 0xE9FF37F00000000) & (v330 ^ 0xBF0000C803E4128)))) ^ 0x42356DCAD40B367;
  v333 = v332 ^ __ROR8__(v320, 61);
  v334 = __ROR8__(v332, 8);
  v335 = v333 ^ 0xA82C18F429C08B52;
  v336 = (((v333 ^ 0xF654BD896A9FA69CLL) - 0x5E78A57D435F2DCELL) ^ ((v333 ^ 0x2033B759F8F4388) + 0x55D0DC7E49B03726) ^ ((v333 ^ 0x4B2FAEAFFA7F9657) + 0x1CFC49A42C40E2FBLL)) + (((v334 ^ 0x76EF12B5951389D2) - 0x7E7D1E394AE6C8AELL) ^ ((v334 ^ 0x15EBC7C13D218F32) - 0x1D79CB4DE2D4CE4ELL) ^ ((v334 ^ 0x9C5F9221F64826DLL) - 0x157F5AEC091C311)) - 0x3DAA53048A11D72ELL;
  v337 = ((v336 ^ 0x952CBE8A924D6A8FLL) + 0x227D1A0C8B28FFA1) ^ v336 ^ ((v336 ^ 0xC9D990D7FE6F98C1) + 0x7E883451E70A0DEFLL) ^ ((v336 ^ 0xE3A48B5BF18721B5) + 0x54F52FDDE8E2B49BLL) ^ ((v336 ^ 0xF7FFFE7F7B3FB92BLL) + 0x40AE5AF9625A2C05);
  v338 = v337 ^ __ROR8__(v335, 61);
  v339 = __ROR8__(v337 ^ 0xF2593EC1D8943DD0, 8);
  v340 = (((v338 ^ 0x35D7D13E1D7507CLL) - 0xC63BB051ABD7A80) ^ ((v338 ^ 0xA68A547411E35BF6) + 0x564B6D9D15768EF6) ^ ((v338 ^ 0xBF6F623129FD317BLL) + 0x4FAE5BD82D68E479)) - 0x6C927A3B7DB27D5ALL + (((v339 ^ 0x9A983D5917F80022) - 0x7006EC445F4A2C3ELL) ^ ((v339 ^ 0xAC41F015BA0C445ALL) - 0x46DF2108F2BE6846) ^ ((v339 ^ 0x9F8B8DBC03C066BFLL) - 0x75155CA14B724AA3));
  v341 = v340 ^ ((v340 ^ 0xB3C4EC74EC7A2C8DLL) + 0x7621751D6AA1B0CDLL) ^ ((v340 ^ 0x2BCDDBA278C53362) - 0x11D7BD3401E150DCLL) ^ ((v340 ^ 0x5D0E6EB95AC48BA6) - 0x6714082F23E0E818) ^ ((v340 ^ 0xFF1D3FF9B75FF7F7) + 0x3AF8A69031846BB7) ^ 0x4FD00C321EAA963CLL;
  v342 = v341 ^ __ROR8__(v338, 61);
  v343 = __ROR8__(v341, 8);
  v344 = (((v342 ^ 0xB5CB6828E28653E3) + 0x4D19723505DB4B39) ^ ((v342 ^ 0x13EC3F529AA945AELL) - 0x14C1DAB0820BA28ALL) ^ ((v342 ^ 0xF7F29ADEBB56ACDBLL) + 0xF2080C35C0BB401)) + (((v343 ^ 0x4E84360C8AA444ABLL) + 0x7DF4A2A238F05152) ^ ((v343 ^ 0x6EBBB8CF137F2CA6) + 0x5DCB2C61A12B395DLL) ^ ((v343 ^ 0x3EBB99548BD65860) + 0xDCB0DFA39824D9BLL)) - 0x6EA28E5197ACC41DLL;
  v345 = v344 ^ ((v344 ^ 0x7CBE258F77D1A120) - 0x14E7E92E5B00A2E9) ^ ((v344 ^ 0x50BF43CED1040C51) - 0x38E68F6FFDD50F98) ^ ((v344 ^ 0x736F115F653361E5) - 0x1B36DDFE49E2622CLL) ^ ((v344 ^ 0x3737BBBFEF37CF5DLL) - 0x5F6E771EC3E6CC94) ^ 0x8ACB4B6094D2CFDDLL;
  v346 = __ROR8__(v345, 8);
  v347 = v345 ^ __ROR8__(v342, 61);
  v348 = (((v346 ^ 0xC020DEAC94F758FALL) + 0x21244C1B2E631BA0) ^ ((v346 ^ 0xF0ED88B911C2EEA3) + 0x11E91A0EAB56ADC7) ^ ((v346 ^ 0x7E64B920FCA8BB23) - 0x609FD468B9C307B9)) + (((v347 ^ 0x7E1049C424169D9BLL) - 0x669D409A208BD5A0) ^ ((v347 ^ 0xA3467DB7546B5F0DLL) + 0x44348B16AF09E8CALL) ^ ((v347 ^ 0xFA176C2CF6BD6C6ALL) + 0x1D659A8D0DDFDBAFLL)) - 0x5D223CE045FD9E0BLL;
  v349 = (v348 ^ 0xED69DD5FF04BB439) & (2 * (v348 & 0xED41105F055236B2)) ^ v348 & 0xED41105F055236B2;
  v350 = ((2 * (v348 ^ 0x27E9DD6BFA4BD97DLL)) ^ 0x95519A69FE33DF9ELL) & (v348 ^ 0x27E9DD6BFA4BD97DLL) ^ (2 * (v348 ^ 0x27E9DD6BFA4BD97DLL)) & 0xCAA8CD34FF19EFCELL;
  v351 = v350 ^ 0x4AA8451401082041;
  v352 = (v350 ^ 0x800080203E11CF88) & (4 * v349) ^ v349;
  v353 = ((4 * v351) ^ 0x2AA334D3FC67BF3CLL) & v351 ^ (4 * v351) & 0xCAA8CD34FF19EFCCLL;
  v354 = (v353 ^ 0xAA00410FC01AF00) & (16 * v352) ^ v352;
  v355 = ((16 * (v353 ^ 0xC008C924031840C3)) ^ 0xAA8CD34FF19EFCF0) & (v353 ^ 0xC008C924031840C3) ^ (16 * (v353 ^ 0xC008C924031840C3)) & 0xCAA8CD34FF19EFC0;
  v356 = (v355 ^ 0x8A88C104F118EC00) & (v354 << 8) ^ v354;
  v357 = (((v355 ^ 0x40200C300E01030FLL) << 8) ^ 0xA8CD34FF19EFCF00) & (v355 ^ 0x40200C300E01030FLL) ^ ((v355 ^ 0x40200C300E01030FLL) << 8) & 0xCAA8CD34FF19EF00;
  v358 = v356 ^ 0xCAA8CD34FF19EFCFLL ^ (v357 ^ 0x8888043419090000) & (v356 << 16);
  v359 = v348 ^ (2 * ((v358 << 32) & 0x4AA8CD3400000000 ^ v358 ^ ((v358 << 32) ^ 0x7F19EFCF00000000) & (((v357 ^ 0x4220C900E61020CFLL) << 16) & 0x4AA8CD3400000000 ^ 0x288002400000000 ^ (((v357 ^ 0x4220C900E61020CFLL) << 16) ^ 0x4D34FF1900000000) & (v357 ^ 0x4220C900E61020CFLL))));
  v360 = v359 ^ __ROR8__(v347, 61);
  v361 = __ROR8__(v359 ^ 0x8F7BFA97DFCFAA48, 8);
  v362 = (((v360 ^ 0xF2D615D37466428BLL) - 0x48771280F999C75ELL) ^ ((v360 ^ 0x51127751DDF3EB5FLL) + 0x144C8FFDAFF39176) ^ ((v360 ^ 0x776160967CFB3502) + 0x323F983A0EFB4F29)) - 0x7E253910943E0FLL + (((v361 ^ 0xEEA46DFFDCCB2E84) + 0x35EE0017218F4C72) ^ ((v361 ^ 0x4D8A9DFC629488) - 0x24F8188AFED90982) ^ ((v361 ^ 0x91D833585F951E4DLL) + 0x4A925EB0A2D17CB9));
  v363 = (v362 ^ 0x83F46A2DC40CDE1CLL) & (2 * (v362 & 0xCA0670ADE6AC905DLL)) ^ v362 & 0xCA0670ADE6AC905DLL;
  v364 = ((2 * (v362 ^ 0x17F02A674D44FE0CLL)) ^ 0xBBECB59557D0DCA2) & (v362 ^ 0x17F02A674D44FE0CLL) ^ (2 * (v362 ^ 0x17F02A674D44FE0CLL)) & 0xDDF65ACAABE86E50;
  v365 = v364 ^ 0x44124A4AA8282251;
  v366 = (v364 ^ 0x1820008003C04000) & (4 * v363) ^ v363;
  v367 = ((4 * v365) ^ 0x77D96B2AAFA1B944) & v365 ^ (4 * v365) & 0xDDF65ACAABE86E50;
  v368 = (v367 ^ 0x55D04A0AABA02840) & (16 * v366) ^ v366;
  v369 = ((16 * (v367 ^ 0x882610C000484611)) ^ 0xDF65ACAABE86E510) & (v367 ^ 0x882610C000484611) ^ (16 * (v367 ^ 0x882610C000484611)) & 0xDDF65ACAABE86E50;
  v370 = (v369 ^ 0xDD64088AAA806400) & (v368 << 8) ^ v368;
  v371 = (((v369 ^ 0x92524001680A41) << 8) ^ 0xF65ACAABE86E5100) & (v369 ^ 0x92524001680A41) ^ ((v369 ^ 0x92524001680A41) << 8) & 0xDDF65ACAABE86E00;
  v372 = v370 ^ 0xDDF65ACAABE86E51 ^ (v371 ^ 0xD4524A8AA8680000) & (v370 << 16);
  v373 = 16 * ((v362 ^ (2 * ((v372 << 32) & 0x5DF65ACA00000000 ^ v372 ^ ((v372 << 32) ^ 0x2BE86E5100000000) & (((v371 ^ 0x9A4104003802E51) << 16) & 0x5DF65ACA00000000 ^ 0x534500200000000 ^ (((v371 ^ 0x9A4104003802E51) << 16) ^ 0x5ACAABE800000000) & (v371 ^ 0x9A4104003802E51)))) ^ 0xCE4C3135E16DDE8) << (v272 & 0xCF ^ 0x80) << (v272 & 0x30 ^ 0x30));
  v374 = (((v295 ^ 0x5BDA2C241574277DLL) + 0x3B41DBFF6B96D8EALL) ^ ((v295 ^ 0x8353F541247EF12ELL) - 0x1C37FD65A563F145) ^ ((v295 ^ 0xD889D965310AD653) - 0x47EDD141B017D638)) + 0x12C908BA0B637635 + (((v373 ^ 0xC5A1617BD2FF9E53) + 0x5DA0210410D8E695) ^ ((v373 ^ 0x68DD6C5504E99C0) - 0x617369456D961EF8) ^ ((v373 ^ 0xC32CB7BE82B10793) + 0x5B2DF7C140967F55));
  v375 = (v374 ^ 0xE459BECAA308144ELL) & (2 * (v374 & 0xF499BEEAB392116ELL)) ^ v374 & 0xF499BEEAB392116ELL;
  v376 = ((2 * (v374 ^ 0xCD4B8B9FE42834DALL)) ^ 0x73A46AEAAF744B68) & (v374 ^ 0xCD4B8B9FE42834DALL) ^ (2 * (v374 ^ 0xCD4B8B9FE42834DALL)) & 0x39D2357557BA25B4;
  v377 = v376 ^ 0x8521515508A2494;
  v378 = (v376 ^ 0x3080206006100120) & (4 * v375) ^ v375;
  v379 = ((4 * v377) ^ 0xE748D5D55EE896D0) & v377 ^ (4 * v377) & 0x39D2357557BA25B4;
  v380 = (v379 ^ 0x2140155556A80480) & (16 * v378) ^ v378;
  v381 = ((16 * (v379 ^ 0x1892202001122124)) ^ 0x9D2357557BA25B40) & (v379 ^ 0x1892202001122124) ^ (16 * (v379 ^ 0x1892202001122124)) & 0x39D2357557BA25B0;
  v382 = (v381 ^ 0x1902155553A20100) & (v380 << 8) ^ v380;
  v383 = (((v381 ^ 0x20D02020041824B4) << 8) ^ 0xD2357557BA25B400) & (v381 ^ 0x20D02020041824B4) ^ ((v381 ^ 0x20D02020041824B4) << 8) & 0x39D2357557BA2500;
  v384 = v382 ^ 0x39D2357557BA25B4 ^ (v383 ^ 0x1010355512200000) & (v382 << 16);
  v385 = v374 ^ (2 * ((v384 << 32) & 0x39D2357500000000 ^ v384 ^ ((v384 << 32) ^ 0x57BA25B400000000) & (((v383 ^ 0x29C20020459A01B4) << 16) & 0x39D2357500000000 ^ 0x882204500000000 ^ (((v383 ^ 0x29C20020459A01B4) << 16) ^ 0x357557BA00000000) & (v383 ^ 0x29C20020459A01B4))));
  v386 = HIBYTE(v298);
  v387 = HIBYTE(v385);
  LODWORD(v239) = v143[v239 ^ 0x3ALL] << 24;
  LODWORD(v239) = ((v600[BYTE1(v298) ^ 0xC5] << 16) ^ 0xC6B1FA8E) & (v239 ^ 0x19FFFACF) | v239 & 0x39000000;
  LOBYTE(v383) = BYTE3(v298) ^ v148[BYTE3(v298) ^ 0x25];
  LODWORD(v298) = (((((BYTE2(v298) ^ v602[BYTE2(v298) ^ 0x3ELL]) << 8) ^ 0x47AD8566) & (v239 ^ 0x85805E8) | v239 & 0xB8520000) ^ 0x610F1EA0) & (v383 ^ 0xFFFFFFF5);
  LODWORD(v239) = v600[BYTE5(v298) ^ 0x2BLL] << 16;
  LODWORD(v372) = (BYTE6(v298) ^ v602[BYTE6(v298) ^ 0x4BLL]) << 8;
  LODWORD(v386) = v386 ^ v148[v386 ^ 0x9C];
  LODWORD(v239) = ((v372 & 0x1400 | (((v239 ^ 0xFFE0FFFF) & ((v143[BYTE4(v298) ^ 0x7CLL] << 24) ^ 0xA823ED6A) | v239 & 0xDC0000) ^ 0x2A7A0612) & ~v372) ^ 0x94B9750) & (v386 ^ 0xFFFFFF96);
  LODWORD(v372) = v143[v295 ^ 0x2ALL] ^ 0x75;
  LODWORD(v371) = (BYTE2(v385) ^ v602[BYTE2(v385) ^ 0x10]) << 8;
  LOBYTE(v119) = BYTE3(v385) ^ v148[BYTE3(v385) ^ 0x6DLL];
  LODWORD(v148) = ((v371 & 0x8A00 | (v371 ^ 0xFFFF21CB) & ((((v600[BYTE1(v385) ^ 0x27] << 16) ^ 0x344EE302) & ((v372 << 24) ^ 0xD7FFFFDA) | (v372 << 24) & 0xCB000000) ^ 0xBC0F96C9)) ^ 0x2D5B4F22) & (v119 ^ 0xFFFFFFB8);
  LODWORD(v295) = v143[BYTE4(v385) ^ 0x3DLL] << 24;
  LODWORD(v385) = (BYTE6(v385) ^ v602[BYTE6(v385) ^ 0xC2]) << 8;
  LODWORD(v385) = (v385 & 0xFFFFC7FF | (v385 ^ 0xFFFF105C) & ((((v600[BYTE5(v385) ^ 0x9ELL] << 16) ^ 0xD33BF849) & (v295 ^ 0x76FFFE4D) | v295 & 0x2C000000) ^ 0xB650C015)) ^ 0xB3A9EAA3;
  v388 = a38[3];
  LODWORD(v371) = v599[v388 ^ 0x9E];
  v389 = v385 & (v387 ^ 0xFFFFFF9D ^ v599[v387 ^ 0x87]);
  *(v44 - 256) = 15;
  LODWORD(v387) = v371 ^ v388;
  LODWORD(v385) = v599[a38[15] ^ 0x87] ^ a38[15];
  LODWORD(v388) = v602[a38[10] ^ 0xD5] ^ a38[10];
  LODWORD(v371) = ((v388 << 8) ^ 0xFFFFE3FF) & ((v143[a38[8] ^ 0x93] << 24) ^ 0xC0F3BEA3) ^ ((v388 << 8) & 0x4100 | 0x20C005C);
  v390 = (v143[a38[12] ^ 0xA5] ^ 6) << 24;
  v391 = (v390 ^ 0x24FFDCFF) & ((((v600[a38[13] ^ 0x75] << 16) ^ 0xB001ACB8) & (v385 ^ 0xFCFFECCE) | v385 & 0x47) ^ 0xC48C709E);
  LODWORD(v385) = v599[a38[7] ^ 0x54] ^ a38[7];
  v392 = (v385 ^ 0xAB2FFF28) & (((v602[a38[6] ^ 0xA7] ^ a38[6]) << 8) ^ 0xAB2FBA6F) | v385 & 0x90;
  v393 = a38[11];
  v394 = v393 + 705010979 - ((2 * v393) & 0x46);
  LOBYTE(v385) = v599[v394 ^ 0x2A059D61] ^ v393;
  v395 = v600[a38[5] ^ 0xB7] << 16;
  v396 = (v395 ^ 0xFF2DFFFF) & (v392 & 0x220F12D3 ^ 0x3B0E83E5 ^ ((v143[a38[4] ^ 0xF9] << 24) ^ 0x6A30ED2C) & (v392 ^ 0x545DDD03));
  v397 = v390 & 0x8B000000 ^ 0xC73996CB ^ v391;
  v398 = (v602[a38[14] ^ 0x7DLL] ^ a38[14]) << 8;
  v399 = v602[a38[2] ^ 0xB8] ^ a38[2];
  v400 = v600[a38[1] ^ 0xC1] << 16;
  v401 = *(v44 - 244) ^ v616 ^ v398 & 0xB500 ^ (v398 ^ 0xFFFF88FF) & v397 ^ v389;
  v402 = *(v44 - 248) ^ HIDWORD(v617) ^ v400 & 0xFF87FFFF ^ (((((v399 >> 7) & 1) << 15) | 0x74E22826) ^ ((v399 << 8) ^ 0xFF9A41FF) & (((((v143[v299 ^ 0xEBLL] ^ 0x44444444) << 24) ^ 0x7306BC4E) & (v387 ^ 0xFFCEFC83) | v387 & 0xB1) ^ 0xE19CC3A7)) & (v400 ^ 0xFF61FFFF) ^ v383 & 0x39 ^ v298;
  LODWORD(v383) = v395 & 0xCE0000;
  v403 = *(v44 - 236) ^ HIDWORD(v616) ^ v385 & 0x9D ^ (v385 & 0xFE ^ 0xFFFFFF1F) & (v371 & 0xB2322B00 ^ 0x64086CE2 ^ ((v600[a38[9] ^ 0xB4] << 16) ^ 0x4D48D480) & (v371 ^ 0x62006A6B)) ^ (v119 & 0x16 | 0x98100300) ^ v148;
  LODWORD(v385) = *(v44 - 240) ^ v617 ^ v383 ^ v396 ^ v386 & 0xD7 ^ v239;
  v404 = BYTE2(v385) ^ 0x90;
  v405 = *(&off_1002A2080 + (v166 - 2430)) - 8;
  v406 = *(&off_1002A2080 + (v166 - 2323)) - 4;
  HIDWORD(v619) = v166;
  v407 = *(&off_1002A2080 + (v166 - 2444));
  v408 = *(&off_1002A2080 + (v166 - 2513)) - 4;
  v409 = *&v406[4 * (BYTE2(v403) ^ 0x9F)] ^ v615 ^ *&v405[4 * (BYTE1(v401) ^ 0x8A)] ^ *(v407 + 4 * (v402 ^ 0x8Fu)) ^ *&v408[4 * (BYTE3(v385) ^ 0xB1)];
  v410 = *&v406[4 * (BYTE2(v401) ^ 0x34)] ^ HIDWORD(v613) ^ *(v407 + 4 * (v385 ^ 0xF8u)) ^ *&v408[4 * (HIBYTE(v403) ^ 0x48)] ^ *&v405[4 * (BYTE1(v402) ^ 0xA8)];
  v411 = *&v406[4 * (BYTE2(v402) ^ 0xD3)] ^ HIDWORD(v614) ^ *&v405[4 * (((v385 ^ 0x8099) >> 8) ^ 0xE9)] ^ *&v408[4 * (HIBYTE(v401) ^ 0x9A)] ^ *(v407 + 4 * (v403 ^ 0xAFu));
  v412 = *&v405[4 * (BYTE1(v403) ^ 0x64)] ^ HIDWORD(v615) ^ *(v407 + 4 * (v401 ^ 0xFBu)) ^ *&v408[4 * (HIBYTE(v402) ^ 0xC4)] ^ *&v406[4 * (((v385 ^ 0xAD908099) >> 16) ^ 0x18)];
  v413 = ((HIBYTE(v410) ^ 0x3068DE2E) + 121502570) ^ ((HIBYTE(v410) ^ 0x9AFEE7F7) - 1381252431) ^ ((HIBYTE(v410) ^ 0xAA963967) - 1648157663);
  LOBYTE(v371) = (((HIBYTE(v410) ^ 0x2E) + 106) ^ ((HIBYTE(v410) ^ 0xF7) - 79) ^ ((HIBYTE(v410) ^ 0x67) + 33)) + 67;
  LODWORD(v385) = ((109 - (((HIBYTE(v410) ^ 0x2E) + 106) ^ ((HIBYTE(v410) ^ 0xF7) - 79) ^ ((HIBYTE(v410) ^ 0x67) + 33))) ^ ((((HIBYTE(v410) ^ 0x2E) + 106) ^ ((HIBYTE(v410) ^ 0xF7) - 79) ^ ((HIBYTE(v410) ^ 0x67) + 33)) - 109) ^ v371 ^ ((v371 ^ 0xE7) - 87) ^ ((v371 ^ 0xA8) - 24));
  *(v44 - 236) = *(v44 - 228) < 0x2D52133u;
  if ((((v385 ^ 0xF4E68FA) + 405211500) ^ ((v385 ^ 0xF7E644AA) - 527489732) ^ ((v385 ^ 0xF8A82CE0) - 272544398)) - v413 == -535545048)
  {
    v414 = v394;
  }

  else
  {
    v414 = BYTE2(v411) ^ 0x2A059D86;
  }

  v415 = *&v405[4 * (BYTE1(v410) ^ 0xB8)];
  v416 = ((v415 ^ 0x9F7DCEBB) + 1619145029) ^ ((v415 ^ 0xBCF573F5) + 1124764683) ^ ((v415 ^ 0xCB3F8A) - 13320074);
  if ((v415 & 0x10000) != 0)
  {
    v417 = 1507409652;
  }

  else
  {
    v417 = 1507278580;
  }

  v418 = v416 + v417;
  v419 = (v418 ^ 0xC86B13D7) & (2 * (v418 & 0xC96B43D0)) ^ v418 & 0xC96B43D0;
  v420 = (2 * (v418 ^ 0xC8E910D7)) & 0x1825306 ^ 0x825101 ^ ((2 * (v418 ^ 0xC8E910D7)) ^ 0x304A60E) & (v418 ^ 0xC8E910D7);
  v421 = (4 * v419) & v420 ^ v419 ^ ((4 * v419) & 0x1821300 | 0x4004);
  v422 = (4 * v420) & 0x1825304 ^ 0x1821303 ^ ((4 * v420) ^ 0x6094C1C) & v420;
  v423 = (16 * v421) & 0x1825300 ^ v421 ^ ((16 * v421) ^ 0x40040) & v422;
  v424 = (16 * v422) & 0x1825300 ^ 0x1824307 ^ ((16 * v422) ^ 0x18253070) & v422;
  v425 = v423 ^ 0x1821303 ^ (v423 << 8) & 0x1825300 ^ ((v423 << 8) ^ 0x400400) & v424;
  v426 = *&v405[4 * (BYTE1(v411) ^ 0x97)] ^ v613 ^ *&v408[4 * (HIBYTE(v409) ^ 0x82)] ^ *(v407 + 4 * ((v412 ^ v404) ^ 0x3Au)) ^ *&v406[4 * (BYTE2(v410) ^ 0x65)];
  v427 = *(v407 + 4 * ((v409 ^ BYTE2(v403)) ^ 0xF3u)) ^ HIDWORD(v612) ^ *&v405[4 * (BYTE1(v412) ^ 0x97)] ^ *&v408[4 * v413 - 3713308648] ^ v414 ^ *&v406[4 * (v414 ^ 0x2A059D27)];
  v428 = *&v406[4 * (BYTE2(v409) ^ 0x89)] ^ v614 ^ *&v408[4 * (HIBYTE(v412) ^ 0xAE)] ^ *(v407 + 4 * ((v411 ^ BYTE2(v402)) ^ 0x9Eu)) ^ v418 ^ (2 * ((v425 << 16) & 0x1820000 ^ v425 ^ ((v425 << 16) ^ 0x53070000) & ((v424 << 8) & 0x1820000 ^ ((v424 << 8) ^ 0x2530000) & v424 ^ 0x1800000)));
  v429 = *&v406[4 * (BYTE2(v412) ^ 0x5F)] ^ v612 ^ *&v408[4 * (HIBYTE(v411) ^ 0x38)] ^ *&v405[4 * (BYTE1(v409) ^ 0x67)] ^ *(v407 + 4 * ((v410 ^ BYTE2(v401)) ^ 0x7Cu));
  v430 = *&v405[4 * BYTE1(v428)] ^ v611 ^ *&v408[4 * (HIBYTE(v427) ^ 0xC5)] ^ *(v407 + 4 * ((v426 ^ BYTE2(v410)) ^ 0x5Cu)) ^ *&v406[4 * (BYTE2(v429) ^ 0x17)];
  v431 = *&v406[4 * (BYTE2(v427) ^ 0xE0)] ^ HIDWORD(v609) ^ *&v405[4 * (BYTE1(v429) ^ 0xC0)] ^ *&v408[4 * (HIBYTE(v426) ^ 0xEE)] ^ *(v407 + 4 * ((v428 ^ BYTE2(v409)) ^ 0x60u));
  v432 = *&v406[4 * (BYTE2(v426) ^ 0xCD)] ^ HIDWORD(v611) ^ *&v405[4 * ((((BYTE1(v427) ^ 0x3D341E15) - 1532402578) ^ ((BYTE1(v427) ^ 0x3BEA6E80) - 1569254151) ^ ((BYTE1(v427) ^ 0x6DE703F) - 1622996408)) - ((((v427 >> 7) & 0x13C ^ 0x7649753C) + 162930054) ^ (((v427 >> 7) & 0x13C ^ 0x120F055F) + 1844473319) ^ (((v427 >> 7) & 0x13C ^ 0x64467177) + 465115599))) - 1719157276] ^ *(v407 + 4 * ((v429 ^ BYTE2(v412)) ^ 0xEDu)) ^ *&v408[4 * (HIBYTE(v428) ^ 0xBE)];
  v433 = *&v406[4 * (BYTE2(v428) ^ 0xE4)] ^ HIDWORD(v610) ^ *&v405[4 * (BYTE1(v426) ^ 0x36)] ^ *(v407 + 4 * (v427 ^ 0x99u)) ^ *&v408[4 * (HIBYTE(v429) ^ 0xED)];
  v434 = *&v405[4 * (BYTE1(v433) ^ 0xF8)] ^ *&v406[4 * (BYTE2(v430) ^ 0x49)] ^ *(v407 + 4 * ((BYTE2(v426) ^ v432) ^ 0xAFu)) ^ BYTE2(v430) ^ 0xC2BBBB13;
  v435 = BYTE2(v432) ^ 0xAE03CFF1 ^ *&v406[4 * (BYTE2(v432) ^ 0x7F)];
  v436 = (v435 + 1341912592 - ((2 * v435) & 0x9FF7EC20)) ^ *(v407 + 4 * ((v430 ^ BYTE2(v429)) ^ 0x7Cu));
  v437 = (v436 - 1476719144 - ((2 * v436) & 0x4FF61BB0)) ^ *&v408[4 * (HIBYTE(v433) ^ 0xD)];
  v438 = *&v408[4 * (HIBYTE(v430) ^ 0xDA)] ^ 0xE800FBC8 ^ ((BYTE2(v433) ^ 9) - 1375481974 - 2 * ((BYTE2(v433) ^ 9) & 0x9E ^ HIWORD(v433) & 0x14)) ^ *&v406[4 * (BYTE2(v433) ^ 0xD)] ^ *(v407 + 4 * ((v431 ^ BYTE2(v427)) ^ 0x74u));
  v439 = (v434 - 1476719144 - ((2 * v434) & 0x4FF61BB0)) ^ *&v408[4 * (HIBYTE(v431) ^ 0xF)];
  v440 = *&v405[4 * (BYTE1(v430) ^ 0xC6)] ^ *&v408[4 * (HIBYTE(v432) ^ 0x5E)] ^ *(v407 + 4 * ((BYTE2(v428) ^ v433) ^ 0x7Cu)) ^ *&v406[4 * (BYTE2(v431) ^ 0xFF)] ^ ((BYTE2(v431) ^ 0xFB) - 1375481974 - ((2 * (BYTE2(v431) ^ 0xFB)) & 0x114)) ^ 0xCB43790C;
  v441 = (v440 - ((2 * v440) & 0x1910AD74) - 1937221958) ^ v610;
  v442 = (v438 + 591626948 - ((2 * v438) & 0x46870588)) ^ *&v405[4 * (BYTE1(v432) ^ 0x80)];
  v443 = (v437 + 591626948 - ((2 * v437) & 0x46870588)) ^ *&v405[4 * (BYTE1(v431) ^ 0x91)];
  v444 = (v439 - ((2 * v439) & 0x1F5B91E2) + 263047409) ^ v609;
  v445 = ((v441 ^ 0x68DC53E1u) >> 16);
  v446 = *&v406[4 * (v445 ^ 4)] ^ 0x8D404D4E ^ *&v405[4 * ((((v439 - ((2 * v439) & 0x91E2) - 14095) ^ v609) >> 8) ^ 0x3F)];
  v447 = (v442 - ((2 * v442) & 0x58406DE6) - 1407174925) ^ HIDWORD(v608);
  BYTE1(v431) = (((v442 - ((2 * v442) & 0x6DE6) + 14067) ^ WORD2(v608)) >> 8) ^ 0x77;
  v448 = (v446 + 1341912592 - ((2 * v446) & 0x9FF7EC20)) ^ *(v407 + 4 * (v447 ^ 0x26u));
  v449 = HIDWORD(v598) ^ (v443 - ((2 * v443) & 0x94F84380) + 1249649088);
  v450 = (v448 - 1476719144 - ((2 * v448) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v449)] ^ v445;
  v451 = (BYTE2(v449) - 1375481974 - ((v449 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v449) ^ 4)];
  v452 = (v451 + 1341912592 - ((2 * v451) & 0x9FF7EC20)) ^ *(v407 + 4 * (v444 ^ 0xB6u));
  v453 = (v452 - 1476719144 - ((2 * v452) & 0x4FF61BB0)) ^ *&v408[4 * ((v447 ^ 0x5C007726) >> 24)];
  v454 = v444 ^ 0xAE80A1EC;
  v455 = *&v405[4 * BYTE1(v449)] ^ *&v408[4 * ((v444 ^ 0xAE80A1EC) >> 24)] ^ 0x84B88F1C ^ (BYTE2(v447) - 1375481974 - ((v447 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v447) ^ 4)];
  v456 = (v453 + 591626948 - ((2 * v453) & 0x46870588)) ^ *&v405[4 * ((v441 ^ 0x53E1) >> 8)];
  v457 = *&v408[4 * ((v441 ^ 0x68DC53E1u) >> 24)] ^ 0x84B88F1C ^ *&v405[4 * BYTE1(v431)] ^ *&v406[4 * (BYTE2(v454) ^ 4)] ^ (BYTE2(v454) - 1375481974 - ((v454 >> 15) & 0x114));
  v458 = (v455 + 1341912592 - ((2 * v455) & 0x9FF7EC20)) ^ *(v407 + 4 * (v441 ^ 0xBBu));
  v459 = v458 - ((2 * v458) & 0x41EABF26) + 552951699;
  v460 = (v457 + 1341912592 - ((2 * v457) & 0x9FF7EC20)) ^ *(v407 + 4 * v449);
  v461 = v450 - ((2 * v450) & 0x256D5F0C);
  v462 = v598 ^ (v460 - ((2 * v460) & 0x5EB12EC4) + 794335074);
  v463 = v597 ^ v459;
  v464 = (BYTE2(v462) - 1375481974 - ((v462 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v462) ^ 4)];
  v465 = ((v597 ^ v459) >> 16);
  v466 = v465 - 1375481974 - (((v597 ^ v459) >> 15) & 0x114);
  v467 = *&v406[4 * (v465 ^ 4)];
  v468 = HIDWORD(v597) ^ (v456 - ((2 * v456) & 0xF4C4521C) - 94230258);
  v469 = v466 ^ v467;
  v470 = (BYTE2(v468) - 1375481974 - ((v468 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v468) ^ 4)];
  v471 = v608 ^ (v461 - 1833521274);
  LOWORD(v467) = v471 ^ 0xF138;
  v472 = (v464 - 1476719144 - ((2 * v464) & 0x4FF61BB0)) ^ *&v408[4 * ((v471 ^ 0xB940F138) >> 24)];
  v473 = *(v407 + 4 * v463) ^ *&v406[4 * (((v471 ^ 0xB940F138) >> 16) ^ 4)] ^ (((v471 ^ 0xB940F138) >> 16) - 1375481974 - ((v471 >> 15) & 0x114)) ^ *&v408[4 * HIBYTE(v468)];
  v474 = (v470 + 591626948 - ((2 * v470) & 0x46870588)) ^ *&v405[4 * BYTE1(v467)];
  v475 = (v474 + 1341912592 - ((2 * v474) & 0x9FF7EC20)) ^ *(v407 + 4 * v462);
  v476 = ((v473 ^ 0xE800FBC8) + 591626948 - 2 * ((v473 ^ 0xE800FBC8) & 0x234382D4 ^ v473 & 0x10)) ^ *&v405[4 * BYTE1(v462)];
  v477 = (v472 + 591626948 - ((2 * v472) & 0x46870588)) ^ *&v405[4 * BYTE1(v463)];
  v478 = (v477 + 1341912592 - ((2 * v477) & 0x9FF7EC20)) ^ *(v407 + 4 * v468);
  v479 = (v475 - 1476719144 - ((2 * v475) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v463)];
  v480 = (v469 + 1341912592 - ((2 * v469) & 0x9FF7EC20)) ^ *(v407 + 4 * v467);
  v481 = (v480 + 591626948 - ((2 * v480) & 0x46870588)) ^ *&v405[4 * BYTE1(v468)];
  v482 = (v481 - 1476719144 - ((2 * v481) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v462)];
  v483 = v482 - ((2 * v482) & 0xE8837EC8);
  v484 = (v478 - ((2 * v478) & 0xB49934D4) + 1514969706) ^ HIDWORD(v607);
  v485 = v596 ^ (v479 - ((2 * v479) & 0x7A22DAD0) - 1122931352);
  v486 = HIDWORD(v595) ^ (v476 - ((2 * v476) & 0x87AEA94A) - 1009298267);
  v487 = (BYTE2(v485) - 1375481974 - ((v485 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v485) ^ 4)];
  v488 = (v487 + 1341912592 - ((2 * v487) & 0x9FF7EC20)) ^ *(v407 + 4 * (v484 ^ 0xF8u));
  v489 = v486 ^ 0x896AF24A;
  v490 = *&v408[4 * HIBYTE(v485)] ^ *&v405[4 * (BYTE1(v484) ^ 0xB4)] ^ 0x84B88F1C ^ *&v406[4 * (((v486 ^ 0x896AF24A) >> 16) ^ 4)] ^ (((v486 ^ 0x896AF24A) >> 16) - 1375481974 - (((v486 ^ 0x896AF24A) >> 15) & 0x114));
  v491 = *&v405[4 * BYTE1(v485)];
  v492 = (v488 + 591626948 - ((2 * v488) & 0x46870588)) ^ *&v405[4 * (BYTE1(v486) ^ 0x6C)];
  v493 = (-591626948 - (((v491 ^ 0xB8846512) + 1199282926) ^ ((v491 ^ 0x248C59B3) - 613177779) ^ ((v491 ^ 0xBF4BBE65) + 1085555099))) ^ (368654121 - (v491 ^ 0x36BAB5ED));
  v494 = HIDWORD(v596) ^ (v483 + 1950465892);
  v495 = *&v408[4 * ((v484 ^ 0x64102AF8) >> 24)] ^ BYTE2(v494) ^ *&v406[4 * (BYTE2(v494) ^ 4)] ^ 0x9F8C252 ^ (((v493 + 591626948 - ((2 * v493) & 0x46870588)) ^ v491) + 368654121);
  v496 = (v490 + 1341912592 - ((2 * v490) & 0x9FF7EC20)) ^ *(v407 + 4 * v494);
  v497 = (v495 + 1341912592 - ((2 * v495) & 0x9FF7EC20)) ^ *(v407 + 4 * v489);
  v498 = *&v408[4 * HIBYTE(v489)] ^ *&v405[4 * BYTE1(v494)] ^ *&v406[4 * (((v484 ^ 0x64102AF8) >> 16) ^ 4)] ^ (((v484 ^ 0x64102AF8) >> 16) - 1375481974 - ((v484 >> 15) & 0x114)) ^ 0x53BE0797;
  v499 = v498 & 0x10000000;
  v500 = *(v407 + 4 * v485);
  v501 = (v492 - 1476719144 - ((2 * v492) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v494)];
  v502 = v500 ^ 0x6E7C6D69;
  v503 = v496 - ((2 * v496) & 0x7BA4D9EE) - 1110283017;
  v504 = v501 - ((2 * v501) & 0xE15CBC12) + 1890475529;
  v505 = v498 & 0xEFFFFFFF;
  if ((v499 & v500) != 0)
  {
    v506 = -v499;
  }

  else
  {
    v506 = v499;
  }

  v507 = v606 ^ v503;
  v508 = v507 ^ 0x5110DA94;
  v509 = v595 ^ (((v506 + v502) ^ v505) - ((2 * ((v506 + v502) ^ v505)) & 0xFC0A70A4) + 2114271314);
  v510 = ((v507 ^ 0x5110DA94) >> 16);
  v511 = *&v406[4 * (v510 ^ 4)];
  v512 = (((v510 - 1375481974 - ((v507 >> 15) & 0x114)) ^ v511) - 1476719144 - ((2 * ((v510 - 1375481974 - ((v507 >> 15) & 0x114)) ^ v511)) & 0x4FF61BB0)) ^ *&v408[4 * ((HIDWORD(v594) ^ v504) >> 24)];
  v513 = (v497 - ((2 * v497) & 0xFAD20A90) + 2104034632) ^ v607;
  v514 = *&v406[4 * (BYTE2(v509) ^ 4)] ^ 0x8D404D4E ^ *&v405[4 * (BYTE1(v513) ^ 0xEB)];
  v515 = (((HIDWORD(v594) ^ v504) >> 16) - 1375481974 - (((HIDWORD(v594) ^ v504) >> 15) & 0x114)) ^ *&v406[4 * (((HIDWORD(v594) ^ v504) >> 16) ^ 4)];
  v516 = (v515 + 591626948 - ((2 * v515) & 0x46870588)) ^ *&v405[4 * BYTE1(v508)];
  v517 = *(v407 + 4 * (BYTE4(v594) ^ v504)) ^ (v514 + 1341912592 - ((2 * v514) & 0x9FF7EC20));
  v518 = *(v407 + 4 * v508) ^ *&v408[4 * HIBYTE(v509)] ^ 0xE800FBC8 ^ (((v513 ^ 0x225175A0) >> 16) - 1375481974 - ((v513 >> 15) & 0x114)) ^ *&v406[4 * (((v513 ^ 0x225175A0) >> 16) ^ 4)];
  v519 = (v516 + 1341912592 - ((2 * v516) & 0x9FF7EC20)) ^ *(v407 + 4 * v509);
  v520 = (v517 - 1476719144 - ((2 * v517) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v508)] ^ BYTE2(v509);
  v521 = (v519 - 1476719144 - ((2 * v519) & 0x4FF61BB0)) ^ *&v408[4 * ((v513 ^ 0x225175A0) >> 24)];
  v522 = (v512 + 591626948 - ((2 * v512) & 0x46870588)) ^ *&v405[4 * BYTE1(v509)];
  v523 = (v522 + 1341912592 - ((2 * v522) & 0x9FF7EC20)) ^ *(v407 + 4 * (v513 ^ 0xFAu));
  v524 = v523 - ((2 * v523) & 0x5DF54666);
  v525 = v594 ^ (v521 - ((2 * v521) & 0xDD01D9FA) - 293540611);
  v526 = (v518 + 591626948 - ((2 * v518) & 0x46870588)) ^ *&v405[4 * ((WORD2(v594) ^ v504) >> 8)];
  v527 = HIDWORD(v593) ^ (v526 - ((2 * v526) & 0x27D3D36A) - 1813386827);
  v528 = v593 ^ (v520 - ((2 * v520) & 0x493F7422) + 614447633);
  v529 = (BYTE2(v525) - 1375481974 - ((v525 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v525) ^ 4)];
  v530 = *(v407 + 4 * v527) ^ *&v408[4 * HIBYTE(v525)];
  v531 = (BYTE2(v528) - 1375481974 - ((v528 >> 15) & 0x114)) ^ *&v406[4 * (BYTE2(v528) ^ 4)];
  v532 = ((v530 ^ 0xE800FBC8) + 591626948 - 2 * ((v530 ^ 0xE800FBC8) & 0x234382D6 ^ v530 & 0x12)) ^ *&v405[4 * BYTE1(v528)];
  v533 = (v524 - 1359305933) ^ HIDWORD(v606);
  v534 = (v529 + 591626948 - ((2 * v529) & 0x46870588)) ^ *&v405[4 * (((v533 ^ 0xCDF) >> 8) ^ 0x43)];
  v535 = *(v407 + 4 * (v533 ^ 0xDu)) ^ *&v406[4 * (BYTE2(v527) ^ 4)] ^ (BYTE2(v527) - 1375481974 - ((v527 >> 15) & 0x114)) ^ 0x6CB874D4 ^ *&v405[4 * BYTE1(v525)];
  v533 ^= 0xCC75D157;
  v536 = (v531 - 1476719144 - ((2 * v531) & 0x4FF61BB0)) ^ *&v408[4 * HIBYTE(v533)];
  v537 = (v536 + 1341912592 - ((2 * v536) & 0x9FF7EC20)) ^ *(v407 + 4 * v525);
  v538 = (v537 + 591626948 - ((2 * v537) & 0x46870588)) ^ *&v405[4 * BYTE1(v527)];
  v539 = (v532 - 1375481974 - ((2 * v532) & 0x5C079F14)) ^ *&v406[4 * (BYTE2(v533) ^ 4)] ^ BYTE2(v533);
  v540 = (v534 + 1341912592 - ((2 * v534) & 0x9FF7EC20)) ^ *(v407 + 4 * v528);
  v541 = *&v408[4 * HIBYTE(v527)];
  v542 = (v541 ^ 0xA7FB0DD8) + (v540 ^ 0xF68113F2) + ((2 * ((v540 ^ 0x768113F2) & (v541 ^ 0x3B53A198) ^ v540 & 0x1CA8AC40)) ^ 0xD6FFFF7F);
  v543 = *&v408[4 * HIBYTE(v528)];
  v544 = v542 + 1;
  v545 = (v535 - 1476719144 - ((2 * v535) & 0x4FF61BB0)) ^ v543;
  v546 = (v545 - 705306713 - ((2 * v545) & 0xABEBBF4E)) ^ HIDWORD(v605);
  v547 = (v539 - 1025698617 - ((2 * v539) & 0x85BA298E)) ^ v605;
  v548 = HIDWORD(v592) ^ (v538 - ((2 * v538) & 0x25186C72) + 311178809);
  v549 = v544 - ((2 * v544) & 0x4FDBF3A2) - 1477576239;
  v550 = v546 ^ 0x761B4B6C;
  v551 = *(&off_1002A2080 + (v166 ^ 0xA6F)) - 8;
  v552 = *(&off_1002A2080 + (v166 - 2270)) - 12;
  v553 = *&v551[4 * ((v547 ^ 0x6BA3ECEEu) >> 16)] ^ *&v552[4 * (v546 ^ 0xA9)] ^ 0x67D7D68B;
  v554 = *(&off_1002A2080 + (v166 - 2471)) - 8;
  v555 = *&v554[4 * ((v547 ^ 0x6BA3ECEEu) >> 24)];
  v556 = *&v554[4 * HIBYTE(v548)];
  v557 = *&v554[4 * ((v592 ^ v549) >> 24)];
  v558 = *&v554[4 * HIBYTE(v550)];
  LODWORD(v554) = *&v552[4 * v548];
  v559 = *&v552[4 * (v547 ^ 0xEE)];
  LODWORD(v552) = *&v552[4 * (v592 ^ v549)];
  v560 = *&v551[4 * BYTE2(v550)];
  v561 = *&v551[4 * ((v592 ^ v549) >> 16)];
  LODWORD(v551) = *&v551[4 * BYTE2(v548)];
  v562 = *(&off_1002A2080 + (v166 ^ 0xB14));
  v563 = *(v562 + 4 * ((v592 ^ v549) >> 8));
  v564 = *(v562 + 4 * BYTE1(v550));
  v565 = *(v562 + 4 * (BYTE1(v547) ^ 0x4Du));
  v566 = HIDWORD(a10) ^ ((v553 ^ (v557 + 1570415306)) - ((2 * (v553 ^ (v557 + 1570415306))) & 0x114B78B8) - 2002404260) ^ __ROR4__(*(v562 + 4 * BYTE1(v548)), 8) ^ 0x36F30D99;
  v567 = (v566 - ((2 * v566) & 0x348DFF78) - 1706623044) ^ v604;
  v568 = *(&off_1002A2080 + (v166 - 2351)) - 4;
  a39[11] = (v568[v567 ^ 0xFLL] + 118) ^ 0xE0;
  v569 = *(&off_1002A2080 + (v166 ^ 0xB1D)) - 12;
  a39[10] = v569[BYTE1(v567) ^ 0x30] ^ 0x50;
  v570 = v560 ^ (v563 << 24) ^ (v563 >> 8) ^ (v556 - ((2 * v556 + 993346964) & 0x38CA1458) - 100684554) ^ 0xD8642235;
  HIDWORD(v571) = v564 ^ 0xD8;
  LODWORD(v571) = v564 ^ 0x64223500;
  v572 = (v571 >> 8) ^ (v555 + 1570415306);
  HIDWORD(v571) = v565 ^ 0xD8;
  LODWORD(v571) = v565 ^ 0x64223500;
  v573 = v554 ^ 0x67D7D68B ^ (v571 >> 8) ^ (v558 + 1570415306) ^ v561;
  v574 = (v570 - 72164185 - ((2 * v570) & 0xF765B94E)) ^ v559;
  v575 = (v572 - 72164185 - ((2 * v572) & 0xF765B94E)) ^ v552;
  v576 = (v575 - ((2 * v575) & 0x38CA1458) - 1671099860) ^ v551;
  v577 = (v573 - 705306713 - ((2 * v573) & 0xABEBBF4E)) ^ HIDWORD(v605);
  v578 = *(v44 - 232);
  v579 = (v577 - ((2 * v577) & 0x417E4A9E) - 1598085809) ^ HIDWORD(v603);
  a39[7] = (v568[v579 ^ 0xEBLL] + 118) ^ 0x11;
  v580 = (v574 - ((2 * v574) & 0x8BDE21F6) + 1173295355) ^ HIDWORD(v604);
  v581 = (v576 - 1025698617 - ((2 * v576) & 0x85BA298E)) ^ v605;
  v582 = v581 - ((2 * v581) & 0xA54E0672);
  a39[3] = (v568[((v574 - ((2 * v574) & 0xF6) - 5) ^ BYTE4(v604)) ^ 0x73] + 118) ^ 0xF8;
  v583 = *(&off_1002A2080 + (v166 - 2363)) - 4;
  a39[5] = (v583[BYTE2(v579) ^ 0x47] - 24) ^ 0x62;
  a39[9] = (v583[BYTE2(v567) ^ 0xCFLL] - 24) ^ 0x96;
  a39[1] = (v583[((v580 ^ 0x46D9D7D9) >> 16) ^ 0x48] - 24) ^ 0x55;
  v584 = *(&off_1002A2080 + (v166 - 2510)) - 4;
  a39[4] = (HIBYTE(v579) + ((v579 >> 23) & 0x80) - 64) ^ 0xF6 ^ v584[HIBYTE(v579) ^ 0x71];
  a39[8] = (HIBYTE(v567) + ((v567 >> 23) & 0x80) - 64) ^ 0x9B ^ v584[HIBYTE(v567) ^ 0x6DLL];
  v585 = (v582 - 760806599) ^ v603;
  *a39 = (((v580 ^ 0x46D9D7D9) >> 24) + (((v580 ^ 0x46D9D7D9) >> 23) & 0x80) - 64) ^ 0x27 ^ v584[((v580 ^ 0x46D9D7D9) >> 24) ^ 0x1FLL];
  v586 = BYTE3(v585);
  v587 = v584[v586 ^ 0xE1];
  v588 = (v585 >> 23) & 0x80;
  v589 = (v586 + v588 - 64) ^ v587 ^ 0x20;
  a39[12] = v589;
  a39[2] = v569[(((v574 - ((2 * v574) & 0x21F6) + 4347) ^ WORD2(v604) ^ 0xD7D9) >> 8) ^ 0x82] ^ 0x8F;
  a39[13] = (v583[BYTE2(v585) ^ 0xD7] - 24) ^ 0x1F;
  a39[*(v44 - 256)] = (v568[v585 ^ 0x98] + 118) ^ 0x53;
  a39[6] = v569[BYTE1(v579) ^ 0xC1] ^ 0xE7;
  a39[14] = v569[BYTE1(v585) ^ 0x68] ^ 0x3A;
  v590 = (v578 + 47522115) < *(v44 - 228);
  if (*(v44 - 236) != (v578 + 47522115) < 0x2D52133)
  {
    v590 = *(v44 - 236);
  }

  return (*(a5 + 8 * ((1356 * v590) ^ v166)))(HIDWORD(v605), v589, v578, v585, v587, v588, v166, ((v580 ^ 0x46D9D7D9) >> 23) & 0x80, a9, a10, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617, a5, a38, a39, a40, v619, 11, 1, 0, 5, 10, 7, 2);
}

void sub_100017350(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  *(v37 - 236) = a2 ^ 0xCAFF30C2;
  *(v37 - 244) = a1 ^ 0xFDE99AE;
  *(v37 - 240) = (a35 - 402852080) ^ v35;
  *(v37 - 248) = v36 ^ 0xCFBE0467;
  JUMPOUT(0x100010CD4);
}

void sub_1000173A8(uint64_t a1)
{
  v1 = *(a1 + 4) + 957051079 * (a1 ^ 0xE7AEAC38);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100017618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = ((((v15 + 267073928) ^ 0x4A5BF814) - 1435339550) ^ (v15 + 267073928) ^ (((v15 + 267073928) ^ 0x7F9B7FFF) - 1615662325) ^ (((v15 + 267073928) ^ 0x90275471) + (v13 ^ 0xE7E) + 1880020055) ^ (((v15 + 267073928) ^ 0xBA31A4BE ^ ((v13 - 2638) | 0x42C)) + 1511533670)) & 0xFFFFFFFC;
  v17 = (((v16 ^ 0x213C8C7C) - 640571152) ^ ((v16 ^ 0xDA02A6C) - 179499264) ^ ((v16 ^ 0x334AD518) - 878186100)) - a13 != -682615273;
  return (*(v14 + 8 * (((16 * v17) | (32 * v17)) ^ v13)))();
}

uint64_t sub_100017738@<X0>(int a1@<W8>)
{
  v5 = v1 - v4 + 1165278669;
  v7 = v2 == 1498636708 || v5 != ((a1 - 1524814900) & 0x5AE2DFEF) - 1882600198;
  return (*(v3 + 8 * ((69 * v7) ^ a1)))();
}

uint64_t sub_100017894@<X0>(int a1@<W8>)
{
  v4 = (a1 ^ 0x906) + 751 + v1 - 508205728;
  v5 = ((v3 + 738891125) < 0x3BF5CEFA) ^ (v4 < 0x3BF5CEFA);
  v6 = v4 < v3 + 738891125;
  if (v5)
  {
    v6 = (v3 + 738891125) < 0x3BF5CEFA;
  }

  return (*(v2 + 8 * ((28 * !v6) ^ a1)))();
}

uint64_t sub_100017A2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v11 = *(v10 + 48 * v8 + 36);
  v13 = v11 != a5 && v11 + a4 < a7 + ((v7 - 2186) | 0x843u) - 2123;
  return (*(v9 + 8 * ((44 * (((v7 + 107) ^ v13) & 1)) | v7)))();
}

uint64_t sub_100017A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = v8 & 0xFFFEDD3F;
  if (v9 >= v10)
  {
    v13 = -44018;
  }

  else
  {
    v13 = 0;
  }

  return (*(v11 + 8 * (((v13 == 0) * ((v12 - a6 - 3621) ^ 0x32C)) ^ (v12 + a8))))();
}

uint64_t sub_100018B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B0160) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 + dword_1002B0160) ^ 0x9A))] ^ 0x79]) - 88);
  v3 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + *v2) ^ 0x9A)) ^ byte_100258FD0[byte_100270100[(-73 * ((dword_1002B00C0 + *v2) ^ 0x9A))] ^ 0xEF]) - 103);
  v4 = (*(v3 - 4) - *v2) ^ &v10;
  *v2 = (1938036407 * v4) ^ 0x3EC1FB4DA917549ALL;
  *(v3 - 4) = 1938036407 * (v4 ^ 0x3EC1FB4DA917549ALL);
  v5 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0160) ^ 0x9A)) ^ byte_100268940[byte_100261800[(-73 * ((dword_1002B00C0 - dword_1002B0160) ^ 0x9A))] ^ 0xB4]) - 136);
  v6 = 15981013 * (((&v11 | 0xA2D89516CB6F9C9FLL) - (&v11 | 0x5D276AE934906360) + 0x5D276AE934906360) ^ 0x5E4D0221A63E2425);
  v7 = *(v5 + 3016) - v6;
  v11 = a1;
  v13 = v7;
  v14 = a2;
  v15 = -1229068008 - v6;
  v8 = -73 * ((*(v3 - 4) + *v2) ^ 0x9A);
  (*(v5 + 8 * ((byte_100268944[(byte_100261808[v8 - 8] ^ 0x97) - 4] ^ v8) + 4530)))(&v11);
  return v12;
}

void sub_100018DA0(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (100608829 * ((1223336216 - (a1 ^ 0xCAA743C1 | 0x48EAA118) + (a1 ^ 0xCAA743C1 | 0xB7155EE7)) ^ 0x25EA1A10));
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = (v1 + 1763155342) & 0x96E86D7F;
  v14[0] = 0x771CC1DA00000082;
  v14[1] = &v16;
  v15[0] = 0x771CC1DA00000082;
  v15[1] = &v17;
  v7 = v3[1];
  v22 = v3;
  v23 = v14;
  LODWORD(v20) = v1 - 957051079 * ((1013218189 - (&v18 | 0x3C647B8D) + (&v18 | 0xC39B8472)) ^ 0x2435284A) + 1113;
  v18 = v5;
  v19 = v7;
  v21 = v2;
  v8 = *(&off_1002A2080 + (v1 ^ 0x126));
  (*(v8 + 8 * (v1 + 4472)))(&v18);
  v9 = *v3;
  v10 = *(v8 + 8 * v1);
  v11 = 934376741 * ((~&v18 & 0xF6D6FFF3DC6FE0F7 | &v18 & 0x929000C23901F08) ^ 0xCE0A42BA5761E894);
  LODWORD(v18) = v1 - v11 + 2091604647;
  v20 = v15;
  v21 = v10 - v11;
  v19 = v9;
  (*(v8 + 8 * (v1 + 4409)))(&v18);
  v12 = *(v8 + 8 * (v1 ^ 0x9CLL));
  v13 = 737412167 * (((&v18 | 0x2C79AFEB071A2E69) - (&v18 & 0x2C79AFEB071A2E69)) ^ 0x5DB91D32A0D39697);
  LODWORD(v18) = v13 ^ (v1 - 561628109);
  v19 = v4;
  v20 = (v12 - v13);
  (*(v8 + 8 * (v1 + 4399)))(&v18);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 128) = v18 - 336319128 - 957051079 * ((~((v19 - 144) | 0x3A284988) + ((v19 - 144) & 0x3A284988)) ^ 0x22791A4F);
  *(v19 - 112) = v17;
  *(v19 - 104) = &a13;
  *(v19 - 144) = v16;
  *(v19 - 136) = &a13;
  *(v19 - 120) = &a11;
  v20 = (*(v14 + 8 * (v18 - 336315769)))(v19 - 144);
  v21 = v15 - 1395905780 < ((3 * ((v18 - v13) ^ 0xC3E)) ^ 0x7FFFFF0Bu) + v18 - v13 - 2722;
  return (*(v14 + 8 * ((v21 | (8 * v21)) ^ (v18 - v13))))(v20);
}

uint64_t sub_10001915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v21 = v19 ^ (v13 + 3490);
  *(v20 - 112) = 25056313 * (v17 ^ 0x813DD988) + 1998373338 + v19 - 432;
  *(v20 - 144) = v18;
  *(v20 - 136) = &a13;
  *(v20 - 128) = &a13;
  *(v20 - 120) = v16;
  (*(v14 + 8 * (v19 ^ 0x130F)))(v20 - 144);
  v22 = 957051079 * ((0xB25176CB1F75F446 - (v17 | 0xB25176CB1F75F446) + (v17 | 0x4DAE8934E08A0BB9)) ^ 0xF6875D750724A781);
  v23 = *(v14 + 8 * v19) - v22;
  *(v20 - 136) = a10;
  *(v20 - 128) = v23;
  *(v20 - 120) = v19 - v22 + 271581695;
  *(v20 - 116) = ((v15 - 1) ^ (((v15 - 1) ^ 0xA198DC00) + 223672078) ^ (((v15 - 1) ^ 0xD85299E4) + 1956557546) ^ (((v15 - 1) ^ (v21 - 486988140)) + 1539888581) ^ 0xB487C12C ^ (((38 * (v19 ^ 0x1E3)) ^ (v15 - 1) ^ 0xDDFD638D) + 1899054291)) + v22;
  v24 = (*(v14 + 8 * (v19 + 4308)))(v20 - 144);
  return (*(v14 + 8 * ((7 * (*(v20 - 144) == -930420947)) ^ (v19 + 755))))(v24);
}

uint64_t sub_10001936C()
{
  v6 = *(v11 + 24);
  v7 = 737412167 * (((v2 | 0x305AB9869D64A357) - (v2 & 0x305AB9869D64A357)) ^ 0x419A0B5F3AAD1BA9);
  *(v5 - 128) = *(v0 + 8 * (v4 + 155)) ^ v7;
  *(v5 - 120) = v7 ^ 0x5F41C469;
  *(v5 - 136) = (v4 - 572126933) ^ v7;
  *(v5 - 144) = v12;
  (*(v0 + 8 * (v4 + 4384)))(v5 - 144);
  *(v5 - 120) = v12;
  *(v5 - 112) = v3;
  *(v5 - 128) = v4 - 957051079 * ((v2 + 1983300066 - 2 * (v2 & 0x7636C1E2)) ^ 0x91986DDA) + 1113;
  *(v5 - 104) = v13;
  *(v5 - 144) = v1;
  *(v5 - 136) = v13;
  (*(v0 + 8 * (v4 + 4472)))(v5 - 144);
  v8 = 934376741 * (((v2 | 0xEF356C17F38AB069) - v2 + (v2 & 0x10CA93E80C754F90)) ^ 0xD7E9D15E7884B80ALL);
  v9 = *(v0 + 8 * v4) - v8;
  *(v5 - 128) = v6;
  *(v5 - 120) = v9;
  *(v5 - 144) = 2091604647 - v8 + v4;
  *(v5 - 136) = v13;
  return (*(v0 + 8 * (v4 ^ 0x1339)))(v5 - 144);
}

uint64_t sub_100019530(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 - dword_1002B0020) ^ 0x9A)) ^ byte_100270400[byte_100268B40[(-73 * ((dword_1002B00C0 - dword_1002B0020) ^ 0x9A))]]) + 23);
  v3 = *(v2 - 4);
  v4 = *(&off_1002A2080 + (byte_100270308[(byte_100268A48[(-73 * ((dword_1002B00C0 + v3) ^ 0x9A)) - 8] ^ 0xE3) - 8] ^ (-73 * ((dword_1002B00C0 + v3) ^ 0x9A))) - 99);
  v5 = 1938036407 * ((*(v4 - 4) + v3) ^ &v10 ^ 0x3EC1FB4DA917549ALL);
  *(v2 - 4) = v5;
  *(v4 - 4) = v5;
  v6 = *(&off_1002A2080 + ((-73 * (dword_1002B0020 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100268940[byte_100261800[(-73 * (dword_1002B0020 ^ 0x9A ^ dword_1002B00C0))] ^ 0xC]) - 130);
  v7 = *(v6 + 3304);
  v8 = 15981013 * (((&v11 | 0x2DD2E3FD0D5D27DALL) - &v11 + (&v11 & 0xD22D1C02F2A2D820)) ^ 0xD14774CA600C9F60);
  v15 = -1229068008 - v8;
  v11 = a1;
  v13 = v7 - v8;
  v14 = a2;
  LODWORD(v2) = *(v4 - 4) - *(v2 - 4);
  (*(v6 + 8 * ((byte_100270400[byte_100268B4C[(-73 * (v2 ^ 0x9A)) - 12]] ^ (-73 * (v2 ^ 0x9A))) + 4519)))(&v11);
  return v12;
}

void sub_100019740()
{
  v0 = __chkstk_darwin();
  v1 = 1204021799 * ((v0 - 2 * (v0 & 0xA234672F) - 1573624017) ^ 0x420B4B8F);
  v2 = *(v0 + 4);
  v3 = *v0 ^ v1;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16) + v1;
  v6 = (v3 + 1439810999) & 0xAA2E3D57;
  v9 = 80;
  v7 = *(&off_1002A2080 + (v3 ^ 0x19A));
  (*(v7 + 8 * (v3 ^ 0x1382)))(v4, v8, 32);
  v10[0] = *(v7 + 8 * v3);
  v10[1] = v8;
  v11 = v1 ^ v2 ^ 0x79569790;
  v12 = (((v5 ^ 0xE10722B5) + 519626059) ^ ((v5 ^ 0xF9A0253B) + 106945221) ^ ((v6 ^ v5 ^ 0xDC81DD42) + 595470267)) - 68545622;
  v10[2] = &STACK[0x33CE2976AB96F8BC];
  v15 = v3 + 1151317067 * ((((2 * &v13) | 0x5ECEE736) - &v13 - 795308955) ^ 0x579ED15) - 468009104;
  v13 = v10;
  (*(v7 + 8 * (v3 + 4213)))(&v13);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100019A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, char a40)
{
  v44 = 62 * (v41 ^ 0x1F8);
  v45 = (*v40 ^ 0x7FD37D7C08EB67F6) + ((v44 + 3171) ^ 0xF4FDFB8FFFFFF3D3) + ((*v40 << ((62 * (v41 ^ 0xF8) + 8) ^ 0xF9u)) & 0xFFA6FAF811D6CFECLL);
  STACK[0x4F0] = *(a1 + 8 * v44);
  STACK[0x4F8] = a39;
  LOBYTE(STACK[0x530]) = 9;
  STACK[0x528] = v45;
  STACK[0x500] = &a40;
  *(v43 - 216) = &STACK[0x4F0];
  *(v43 - 204) = 1151317067 * ((2 * ((v43 - 216) & 0x45756490) - (v43 - 216) + 982162284) ^ 0x109405E2) - 468009096 + v44;
  v46 = (*(a1 + 8 * (v44 + 4221)))(v43 - 216);
  return (*(a31 + 8 * ((4088 * (*(v43 - 208) == v42)) ^ (v44 - 257))))(v46);
}

uint64_t sub_100019BF8@<X0>(int a1@<W8>)
{
  STACK[0x3F0] = *(v1 + 8 * (a1 - 265));
  STACK[0x3E0] = 0;
  MEMORY[0] = -1809786895;
  return (*(v1 + 8 * ((51 * (MEMORY[0x228] != 0)) ^ (a1 + 3750))))();
}

uint64_t sub_10001AFA8()
{
  LODWORD(STACK[0x274]) = 0;
  STACK[0x210] = v0 + 600;
  STACK[0x368] = *(v4 + 8 * v1);
  STACK[0x4C0] = v0 + 600;
  LODWORD(STACK[0x4CC]) = 0;
  v5 = *(v0 + 604) == 66;
  LOBYTE(STACK[0x4D2]) = v5;
  if (v5)
  {
    v6 = v2 - 7;
  }

  else
  {
    v6 = v3;
  }

  if (v5)
  {
    v7 = 3;
  }

  else
  {
    v7 = 6;
  }

  LOBYTE(STACK[0x4D3]) = v7;
  LODWORD(STACK[0x40C]) = v6;
  return (*(v4 + 8 * ((50 * ((((((v1 + 2557) ^ 0xAE9) + 1026) ^ v5) & 1) == 0)) ^ (v1 + 2557))))(0);
}

uint64_t sub_10001AFE0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v34 = 21 * (((v25 - 4181) | 0x840) ^ 0x8F8u);
  *v31 = *(v26 + 24 * ((v34 + 4294966791) & a2) + 20);
  v35 = 21 * (((v25 - 4181) | 0x840) ^ 0x8F8);
  (*(a1 + 8 * (v34 + 4209)))();
  *(v29 + 600) = *v31;
  *(v29 + 608) = 0;
  *(v29 + 616) = 0;
  STACK[0x438] = v28;
  *(v29 + 664) = 0;
  STACK[0x440] = v30;
  *(v29 + 672) = 0;
  STACK[0x448] = v27;
  STACK[0x450] = v29 + 644;
  v36 = (*(a25 + 8 * (v35 ^ 0x13B4)))(v29 + 608, v29 + 616);
  v37 = *(*(v32 + 8 * (v35 ^ 0x10C)) - 4);
  *v33 = *v37 - 44;
  v33[1] = v37[1] - 44;
  v33[2] = ((v35 + 92) | 3) + v37[2] + 125;
  v33[3] = v37[3] - 44;
  v33[4] = v37[4] - 44;
  v33[5] = v37[5] - 44;
  v33[6] = v37[6] - 44;
  v33[7] = v37[7] - 44;
  v33[8] = v37[8] - 44;
  v33[9] = v37[9] - 44;
  v33[10] = v37[10] - 44;
  v33[11] = v37[11] - 44;
  v33[12] = v37[12] - 44;
  v33[13] = v37[13] - 44;
  v33[14] = v37[14] - 44;
  v33[15] = v37[15] - 44;
  v33[16] = v37[16] - 44;
  v33[17] = v37[17] - 44;
  v33[18] = v37[18] - 44;
  v33[19] = v37[19] - 44;
  return (*(a25 + 8 * ((5459 * (v36 - 311651065 - ((2 * v36) & 0xDAD92A0E) == -311651065)) ^ (v35 + 1375))))();
}

uint64_t sub_10001B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = STACK[0x448];
  *v35 = v31 + 12;
  *(v35 + 4) = 0x50C5C50D7F6B58AFLL;
  v36 = (*(v34 + 8 * (v33 ^ 0x1B23)))(STACK[0x2A0], v32);
  return (*(a31 + 8 * ((973 * (((v36 << ((v33 ^ 0xC2) - 37)) & 0xEBC7C6FC) + (v36 ^ 0x75E3E37E) != 51 * (v33 ^ 0x9C2) + 1977867245)) ^ v33)))(v36);
}

uint64_t sub_10001B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43)
{
  *(v44 + 13) = a43 - ((a43 << (v48 + 66)) & 0x9E) - 49;
  v49 = (*(v43 + 8 * (v48 + 1544)))(STACK[0x2A0] + 4, v46);
  return (*(a31 + 8 * ((110 * (((((v48 + 994) | 8) ^ (v47 + 3929)) & (2 * v49)) + (v49 ^ v45) == v45 + 1)) ^ v48)))(v49);
}

uint64_t sub_10001B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43)
{
  v49 = 5 * (v48 ^ 0xFEA);
  *(v44 + 14) = a43 - ((a43 << ((5 * (v48 ^ 0xEA)) ^ 0xA8)) & 0x9E) - 49;
  v50 = (*(v43 + 8 * (v49 + 542)))(STACK[0x2A0] + 6, v46);
  return (*(a31 + 8 * ((((v47 & (2 * v50)) + (v50 ^ v45) == v45 + 1) * (((v49 + 2054179156) & 0x858FA7FA) + 196)) ^ v49)))(v50);
}

uint64_t sub_10001B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43)
{
  v48 = (v46 + 350472533) & 0xEB1C27F9;
  *(v43 + 15) = a43 + ((v46 + 85) & 0xF9) - ((2 * a43) & 0x9F) - 41;
  v49 = (*(v47 + 8 * (v48 ^ 0x133F)))(STACK[0x2A0] + 9, v44);
  return (*(a31 + 8 * (((((2 * v49) & 0xFFD5FBFE) + (v49 ^ (v45 + 2293)) == (v48 ^ 0x90E) + v45) * (v48 - 452)) ^ (v48 + 2205))))(v49);
}

uint64_t sub_10001BA8C@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  STACK[0x220] = *(v61 + 8 * v58);
  STACK[0x4B0] = a1;
  a58 = 0;
  STACK[0x2F8] = 4;
  v62 = (*(v61 + 8 * (v59 ^ 0x101E)))(v60 - 244, &a58, &STACK[0x2F8], 0, 0);
  v71 = ((2 * v62) & 0xFD0B5DFC) + (v62 ^ 0xFE85AEFE) != -24793346 || a58 != 1;
  return (*(a24 + 8 * ((220 * ((((67 * (v59 ^ 0x1F6) - 832768486) ^ v71) & 1) == 0)) ^ (v59 + 2177))))(v62, v63, v64, v65, v66, v67, v68, v69, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_10001BBB4()
{
  STACK[0x2B8] = 0;
  v4 = &STACK[0x5A0] + STACK[0x330];
  STACK[0x330] += 4096;
  LODWORD(STACK[0x358]) = 4096;
  v5 = (*(v3 + 8 * (v0 + 3848)))(0x80000000, 16787221, v4, &STACK[0x358]);
  v6 = v5 + v2 - ((((2 * v0) ^ 0xB60) - 623305254) & (2 * v5));
  LODWORD(STACK[0x4BC]) = v6;
  return (*(v3 + 8 * ((186 * (((((2 * v0) ^ 0x60) + 23) ^ (v6 < ((2 * v0) ^ 0x41F ^ (v1 + 3210)))) & 1)) ^ (2 * v0) ^ 0xB60)))();
}

uint64_t sub_10001BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (*(v32 + 8 * (v31 ^ 0x115D)))(LODWORD(STACK[0x358]), 0x100004077774924);
  STACK[0x278] = v33;
  return (*(a31 + 8 * ((183 * ((((157 * (v31 ^ 0x371)) ^ 0xD07 ^ (v33 == 0)) & 1) == 0)) ^ v31)))();
}

uint64_t sub_10001BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  *STACK[0x438] = (*(v69 + 8 * (v67 + 1684)))(STACK[0x440]);
  a64 = 0;
  a67 = 4;
  v70 = (*(a31 + 8 * (v67 + 1441)))(v68 - 244, &a64, &a67, 0, 0);
  v79 = ((((v67 - 2730) | 0x20) + 1811408631) & (2 * v70)) + (v70 ^ 0x35FBF459) != 905704537 || a64 != 1;
  return (*(a31 + 8 * ((v79 * (v67 ^ 0xC66)) ^ v67)))(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10001BF6C()
{
  STACK[0x280] = 0;
  LODWORD(STACK[0x31C]) = 716714811;
  return (*(v1 + 8 * (((LODWORD(STACK[0x434]) > (((v0 ^ 0xB12) + 447) | 0x480u) - 3477) * ((((v0 ^ 0xB12) - 349085535) & 0x14CE99FF) + 1920)) ^ v0 ^ 0xB12)))();
}

uint64_t sub_10001C0F8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 + 1);
  LODWORD(STACK[0x458]) = (v5 ^ 0x7ABCB7FF) + 2 * v5 - 1342473412;
  return (*(v4 + 8 * (((v5 != 2) * (((a3 ^ 0xC91) + 495133717) & 0xE27CDFF7 ^ ((a3 ^ 0xC91) + 1056))) ^ a3 ^ 0xC91)))(a1, a2, (a3 ^ 0xC91u) - 2929);
}

uint64_t sub_10001C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (*(v32 + 8 * (v31 + 171)))(32, 0x101004082113244);
  STACK[0x2E8] = v33;
  return (*(a31 + 8 * (((v33 != 0) * (((v31 - 488) ^ 0xE76) - 310)) ^ v31)))();
}

uint64_t sub_10001C1FC(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x460]) = 0;
  LODWORD(STACK[0x45C]) = v4;
  v6 = a3 + 3660 + v3 - 1857646337;
  v7 = v6 < 0xBBFED47E;
  if (v6 >= 0xBBFED47E)
  {
    v7 = v6 > 0xBBFED47E;
  }

  return (*(v5 + 8 * ((27 * !v7) ^ (a3 + 2126))))();
}

void sub_10001C4A4()
{
  STACK[0x280] = v1;
  LODWORD(STACK[0x31C]) = v0;
  JUMPOUT(0x10001C4ACLL);
}

uint64_t sub_10001C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v41 = (*(v32 + 8 * (v31 + 1532)))(1512, 0x101004031BA66D4);
  STACK[0x258] = v41;
  return (*(a31 + 8 * (((((v41 == 0) ^ (13 * (v31 ^ 0x18))) & 1) * (((v31 ^ 0xD18) + 1562) ^ 0x7F6)) ^ v31)))(v41, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_10001C574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = STACK[0x330];
  v40 = &STACK[0x5A0] + STACK[0x330];
  STACK[0x3C8] = v40;
  STACK[0x308] = (v40 + 1512);
  STACK[0x330] = (((v37 ^ 0x11E1u) + 3139) ^ 0x5EBLL) + v39;
  STACK[0x328] = 0;
  STACK[0x380] = 0;
  return (*(v38 + 8 * (v37 | (2 * (v36 != 0)) | (4 * (v36 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_10001C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = (*(v33 + 8 * (v31 + 998)))(1512, v32);
  STACK[0x380] = v34;
  return (*(a31 + 8 * ((((((v31 - 2131) ^ (v34 == 0)) & 1) == 0) * (12 * (v31 ^ 0xE08) - 428)) ^ v31)))();
}

uint64_t sub_10001C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45)
{
  v49 = 1424120303 * ((((v47 - 216) | 0xB641B84F) + (~(v47 - 216) | 0x49BE47B0)) ^ 0xF7052598);
  *(v47 - 188) = (v45 + 474) ^ v49;
  *(v47 - 184) = v49 ^ 0x4EC68835;
  *(v47 - 208) = &STACK[0x328];
  *(v47 - 200) = &a45;
  *(v47 - 216) = 0;
  v50 = (*(v48 + 8 * (v45 + 4119)))(v47 - 216);
  return (*(a31 + 8 * (((*(v47 - 192) == v46) * (((v45 - 2648685) & 0x28687B) + 3239)) | v45)))(v50);
}

uint64_t sub_10001C71C()
{
  v3 = (v1 + 4);
  LODWORD(STACK[0x464]) = v3;
  return (*(v2 + 8 * ((28 * ((((LODWORD(STACK[0x434]) ^ ((v0 ^ 0x1B78u) - 2877)) + v3) >> (v0 - 36)) & 1)) ^ v0)))();
}

uint64_t sub_10001C768@<X0>(unsigned int a1@<W8>)
{
  v5 = (STACK[0x428] + v2);
  v6 = (*v5 << 24) | (v5[1] << 16) | (v5[2] << 8);
  LODWORD(v5) = v5[3] + 1120229094 - ((2 * v5[3]) & 0x1CC);
  LODWORD(v5) = ((v6 + 64015238 - ((v6 << ((-69 * (v1 ^ 0x3E)) ^ 0x77)) & 0x7A19600)) ^ 0xF778EDDC) & (v5 ^ 0xBD3AA919) ^ v5 & 0x4441A5;
  LODWORD(v5) = (((v5 ^ 0x9A535887) - 644244239) ^ ((v5 ^ 0x148293BD) + 1464358859) ^ ((v5 ^ 0x7A3DADC4) + 972515764)) + 1489278715;
  STACK[0x468] = a1;
  *(v3 + 16 * a1) = v5;
  v7 = LODWORD(STACK[0x464]) + 1438487752 + v5;
  v8 = v7 < 0x65A8CE4D;
  v9 = v7 > LODWORD(STACK[0x434]) + 1705561677;
  if (LODWORD(STACK[0x434]) > 0x9A5731B2 != v8)
  {
    v9 = v8;
  }

  return (*(v4 + 8 * ((127 * !v9) ^ v1)))();
}

uint64_t sub_10001C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = 16 * STACK[0x468];
  v36 = (*(v34 + 8 * (v31 ^ 0x1157)))(*(v32 + v35) + (v31 ^ 0xF014C50D), 0x100004077774924);
  *(v33 + v35 + 8) = v36;
  return (*(a31 + 8 * (((v36 == 0) * (v31 ^ 0x37E)) | v31)))();
}

uint64_t sub_10001CA9C()
{
  v3 = STACK[0x45C];
  v4 = STACK[0x2E8];
  ++LODWORD(STACK[0x460]);
  LODWORD(STACK[0x45C]) = v3;
  return (*(v2 + 8 * ((((((((v0 + 226) ^ 0xD53) + 629) ^ (v3 == v1)) & 1) == 0) * (((((v0 + 226) ^ 0xD53) - 3641) | 0xA8) - 485)) ^ (v0 + 226) ^ 0xD53)))(v4);
}

uint64_t sub_10001CBE0@<X0>(int a1@<W8>)
{
  STACK[0x330] = ((a1 - 951605213) & 0x38B85CF1) + STACK[0x330] - 3201;
  STACK[0x2C0] = v1;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * (a1 + 2051)) ^ a1)))();
}

uint64_t sub_10001CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = &STACK[0x5A0] + v8;
  *v11 = 1692299898;
  *(v11 + 1) = 0;
  *(v11 + 4) = 1226647151;
  *(v11 + 6) = a7;
  *(&STACK[0x5A0] + v8 + 40) = a7;
  *(v11 + 4) = 0;
  STACK[0x348] = &STACK[0x5A0] + v8 + 40;
  *(&STACK[0x5A0] + v8 + 48) = 0;
  STACK[0x378] = &STACK[0x5A0] + v8 + 48;
  *(&STACK[0x5A0] + v8 + 56) = a7;
  STACK[0x370] = &STACK[0x5A0] + v8 + 56;
  *(&STACK[0x5A0] + v8 + 64) = 0;
  *(v11 + 18) = a7;
  *(v11 + 10) = 0;
  v11[88] = 22;
  *v9 = 1692299898;
  *(v9 + 4) = 0u;
  *(v9 + 20) = 0;
  *(v9 + 24) = a7;
  *(v9 + 436) = 0u;
  *(v9 + 452) = 0u;
  *(v9 + 468) = 0;
  *(v9 + 28) = 0;
  *(v9 + 232) = 0;
  *(v9 + 1096) = 3486502863;
  *(v9 + 1080) = 0xCFCFCFCFCFCFCFCFLL;
  *(v9 + 1088) = 0xCFCFCFCFCFCFCFCFLL;
  *(v9 + 1104) = 0u;
  *(v9 + 1120) = 0u;
  *(v9 + 1136) = 0u;
  return (*(v10 + 8 * v7))(a1, a2, a3, 3894624724, 4027893371);
}

uint64_t sub_10001CD7C(__n128 a1)
{
  v6 = (v4 + v2);
  v6[70] = a1;
  v6[71] = a1;
  return (*(v5 + 8 * (((v2 == 224) * v3) ^ v1)))();
}

uint64_t sub_10001CDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v43 + 1376) = 0;
  *(v43 + 1384) = v40;
  *(v43 + 1392) = v40;
  *(v43 + 1400) = 3486502863;
  *(v43 + 1408) = 0;
  *(v43 + 1416) = 0;
  *(v43 + 1424) = 0;
  *(v43 + 1432) = 0;
  *(v43 + 1440) = 0;
  *(v43 + 1448) = 0;
  *(v43 + 1456) = 0;
  *(v43 + 1464) = 0xCFCFCFCF00000000;
  *(v43 + 1472) = v40;
  *(v43 + 1480) = v40;
  *(v43 + 1504) = 0;
  *(v41 + 96) = v43;
  *(v43 + 476) = 1;
  v51 = v41;
  v52 = v41;
  v45 = (a9 + 1418333974) & 0xAB75F7FB ^ 0x5B;
  STACK[0x208] = *(v44 + 8 * a9);
  v46 = STACK[0x330];
  v47 = (&STACK[0x5A0] + STACK[0x330]);
  STACK[0x200] = v47;
  STACK[0x330] = v46 + 432;
  HIDWORD(a28) = v42;
  LODWORD(STACK[0x3A4]) = a7;
  STACK[0x2A8] = 0;
  LODWORD(STACK[0x364]) = 2061060848;
  LODWORD(STACK[0x2F4]) = 1413262625;
  *v47 = 34413258;
  LODWORD(a27) = 2045054540;
  LODWORD(a29) = 687999696;
  LODWORD(a30) = -2079025035;
  LODWORD(a26) = -1064802592;
  v49 = *v47 != 34413258 || LODWORD(STACK[0x2F4]) != 1413262624;
  LODWORD(a25) = v45 + 351966407;
  HIDWORD(a21) = v39 - 437;
  return (*(v44 + 8 * ((v49 * (((v45 + 861602519) & 0xCCA4F7FF) + 2888)) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v51, a21, a22, a23, v52, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10001D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *v44 = v38 - 1;
  v46 = &v44[6 * (v38 + v42)];
  v47 = v46[2];
  LODWORD(STACK[0x364]) = v46[6];
  LODWORD(v46) = *(v40 + (v47 - 1413262625) * v41 + 36);
  LODWORD(STACK[0x2F4]) = v46;
  return (*(v45 + 8 * ((1697 * (v46 == v43 + ((v39 + 1465987773) & 0xA89ECCF7) - 2243)) | v39)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10001D170()
{
  v3 = LODWORD(STACK[0x364]) + (v1 ^ 0x96EC2804);
  v4 = ((v0 + 31076914) < 0x11C56BB7) ^ (v3 < 0x11C56BB7);
  v5 = v3 < v0 + 31076914;
  if (v4)
  {
    v5 = (v0 + 31076914) < 0x11C56BB7;
  }

  return (*(v2 + 8 * (((4 * !v5) | (8 * !v5)) ^ v1)))();
}

uint64_t sub_10001E3D4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2F4]) = a1;
  STACK[0x330] -= 432;
  return (STACK[0x208])();
}

uint64_t sub_10001E570()
{
  v2 = STACK[0x3C8];
  v3 = STACK[0x308];
  STACK[0x310] = *(v1 + 8 * (v0 - 171));
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * (((v0 + 1932804551) & 0x8CCBBE77) - 506)) ^ (v0 + 4044))))();
}

uint64_t sub_10001E76C(uint64_t a1, uint64_t a2, char a3, char a4, int a5, uint64_t a6, unsigned __int8 a7)
{
  v12 = (v8 ^ v9) * v10;
  v14 = v7 == 199 || a7 == (((v12 ^ a3) - 85) ^ a4);
  return (*(v11 + 8 * ((v14 * a5) ^ v12)))();
}

uint64_t sub_10001E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 + 1380);
  STACK[0x330] += 256;
  return (*(v34 + 8 * ((62 * (v35 > 19)) ^ (a4 - 572141490) & 0x221A367Eu)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_10001EA44()
{
  v5 = v2 + 15;
  v6 = (v0 ^ 0x62FABC96) & (2 * (v0 & v1)) ^ v0 & v1;
  v7 = ((2 * (v0 ^ 0x72BCC52A ^ (v2 + 21) ^ 0x3C2)) ^ 0xF4BFF5E8) & (v0 ^ 0x72BCC52A ^ (v2 + 21) ^ 0x3C2) ^ (2 * (v0 ^ 0x72BCC52A ^ (v2 + 21) ^ 0x3C2)) & 0xFA5FFAF4;
  v8 = (v7 ^ 0x685DF2A4) & (4 * v6) ^ v6;
  v9 = ((4 * (v7 ^ 0xA400A14)) ^ 0xE97FEBD0) & (v7 ^ 0xA400A14) ^ (4 * (v7 ^ 0xA400A14)) & 0xFA5FFAF4;
  v10 = (v9 ^ 0xE85FEAC0) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x12001024)) ^ 0xA5FFAF40) & (v9 ^ 0x12001024) ^ (16 * (v9 ^ 0x12001024)) & 0xFA5FFAF0;
  v12 = v10 ^ 0xFA5FFAF4 ^ (v11 ^ 0xA05FAA00) & (v10 << 8);
  return (*(v4 + 8 * ((4743 * ((v3 ^ (4 * v0) ^ (8 * ((v12 << 16) & 0x1A5F0000 ^ v12 ^ ((v12 << 16) ^ 0x1AF40000) & (((v11 ^ 0x5A0050B4) << 8) & 0x1A5F0000 ^ 0x50000 ^ (((v11 ^ 0x5A0050B4) << 8) ^ 0x1FFA0000) & (v11 ^ 0x5A0050B4))))) == 601042744)) ^ v5)))();
}

uint64_t sub_10001EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v40 = ((v34 ^ 0x499) + 812) | 0x281;
  v41 = (v34 ^ 0x499) + 60;
  v42 = 934376741 * ((((v38 - 216) | 0x24A78B3F) + (~(v38 - 216) | 0xDB5874C0)) ^ 0xAFA9835D);
  *(v38 - 152) = (v36 ^ 0x77F60FFF) - v42 + ((2 * v36) & 0xEFEC1FFE) - 14024835;
  *(v38 - 184) = v33;
  *(v38 - 176) = 0;
  *(v38 - 144) = &STACK[0x3C4];
  *(v38 - 216) = 0;
  *(v38 - 200) = v31;
  *(v38 - 192) = v42 + (v34 ^ 0x499) + 1630;
  *(v38 - 168) = v32;
  *(v38 - 160) = v35;
  v43 = (*(v39 + 8 * (v34 ^ 0x17C3)))(v38 - 216);
  return (*(a31 + 8 * ((5105 * (*(v38 - 208) == (v40 ^ (v37 - 613)))) ^ v41)))(v43);
}

uint64_t sub_10001EF3C@<X0>(unsigned int a1@<W8>)
{
  v6 = v3 < a1;
  v7 = v2 + 1;
  if (v6 == v7 > v1 + 2)
  {
    LOBYTE(v6) = v7 + a1 < v3;
  }

  return (*(v5 + 8 * ((14 * (((v4 + 58) ^ v6) & 1)) ^ v4)))();
}

uint64_t sub_10001F278@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = 126 * (a1 ^ 0x1BA);
  v28 = STACK[0x380];
  v29 = *(v26 + 8 * a1);
  v30 = 934376741 * ((((v25 - 216) | 0xC8F1F9D08477504ALL) - (v25 - 216) + ((v25 - 216) & 0x370E062F7B88AFB0)) ^ 0xF02D44990F795829);
  *(v25 - 216) = a1 - v30 + 2091604533;
  *(v25 - 208) = v24;
  *(v25 - 200) = v28;
  *(v25 - 192) = v29 - v30;
  (*(v26 + 8 * (a1 + 4295)))(v25 - 216);
  return (*(a24 + 8 * (((STACK[0x328] != 0) * (((v27 - 1384) | 0x178) + 517)) ^ v27)))();
}

uint64_t sub_10001F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v32 + 8 * (v31 ^ 0x1391)))();
  STACK[0x328] = 0;
  return (*(a31 + 8 * ((76 * (STACK[0x380] != 0)) ^ (v31 + 2754))))();
}

uint64_t sub_10001F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v34 + 8 * (v32 + 4209)))();
  STACK[0x330] -= 3024;
  return (*(a31 + 8 * ((98 * ((((v32 - 246) ^ (v31 == v33)) & 1) == 0)) ^ (v32 + 1089))))(STACK[0x258]);
}

uint64_t sub_10001F42C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = a2 | 0xB4;
  v30 = *(v28 + 8 * v29);
  *(v27 - 216) = v29 - 934376741 * ((((2 * ((v27 - 216) ^ 0xE1D00841)) | 0x8C1E8C94) - ((v27 - 216) ^ 0xE1D00841) + 972077494) ^ 0xACD14668) + 2091604533;
  *(v27 - 200) = a1;
  *(v27 - 192) = v30 - 934376741 * ((((2 * ((v27 - 216) ^ 0x469C9769E1D00841)) | 0x1FD8D1B18C1E8C94) - ((v27 - 216) ^ 0x469C9769E1D00841) - 0xFEC68D8C60F464ALL) ^ 0x71AC42F8ACD14668);
  *(v27 - 208) = a27;
  (*(v28 + 8 * (v29 + 4295)))(v27 - 216);
  return sub_10001F4F4(a1);
}

uint64_t sub_10001F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v34 + 8 * (v32 + 4209)))();
  v35 = STACK[0x280];
  (*(a31 + 8 * (v32 ^ 0x1391)))(*(STACK[0x280] + 8));
  (*(a31 + 8 * ((v32 ^ 0x6AF) + 2834)))(*(v35 + 24));
  v36 = (*(a31 + 8 * (v32 ^ 0x1391)))(v35);
  STACK[0x280] = 0;
  return (*(a31 + 8 * ((3767 * (v31 == v33 + 168 * (v32 ^ 0x1FB) - 504)) ^ v32 ^ 0x6AF)))(v36);
}

uint64_t sub_10001F5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x3D8];
  *(v3 + 8) = 64;
  *(v3 + 16) = v3 + 24;
  *(v3 + 12) = *(a1 + 484);
  return (*(v2 + 8 * ((124 * (v3 - a1 - 472 >= (v1 + 60) - 957)) ^ v1)))();
}

uint64_t sub_10001F658()
{
  v5 = v1 + 4 * v2;
  v6 = *(v5 + 32);
  v7 = v0 + 4 * v2;
  *(v7 + 24) = *(v5 + 16);
  *(v7 + 40) = v6;
  return (*(v4 + 8 * (((v2 == 56) * (((v3 + 892786648) & 0xCAC927FF) + 1803)) ^ v3)))();
}

uint64_t sub_10001F6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 + 280) = 64;
  *(v3 + 288) = v3 + 296;
  *(v3 + 284) = *(a3 + 756);
  return (*(v6 + 8 * ((98 * ((((v4 + v3 - 472) < 0x20) ^ (v5 + 34)) & 1)) ^ v5)))(a1, a2, 3469127039, 4112333968);
}

uint64_t sub_10001F76C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + 4 * v2;
  v6 = *(v5 + 784);
  v7 = (v1 + 4 * v2 + 296);
  *v7 = *(v5 + 768);
  v7[1] = v6;
  return (*(v4 + 8 * (((v2 == 56) * ((v3 - 660) ^ 0x648)) ^ v3)))();
}

uint64_t sub_10001F7F0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = STACK[0x3F8] + 16;
  v6 = *(a2 + 24);
  STACK[0x418] = a2 + 24;
  v7 = (v6 | ((v6 < v3) << 32)) + 0x59BB61BB3B34E7F4;
  STACK[0x410] = *(v4 + 8 * v2);
  return (*(v4 + 8 * ((58 * (((((252 * ((((v2 + 97524388) & 0xFA2FEDDF) - 1282) ^ 0x4C7) + 1550) | 8) ^ 0xFFFFF7F1) & (v7 ^ ((v7 ^ (((v2 + 97524388) & 0xFA2FEDDF) + 0x44DFE957214115FBLL)) - 0x1D6488EC6A613EBBLL) ^ ((v7 ^ 0x849322AD55FE5AA8) + 0x22D7BCE9E121842FLL) ^ ((v7 ^ 0x76884EBED5449BACLL) - 0x2F332F059E64BAD5) ^ ((v7 ^ 0xEF7FE4FFEADBFFBFLL) + 0x493B7ABB5E04213ALL) ^ 0x79B8316185E68C06)) == a1)) ^ (((v2 + 97524388) & 0xFA2FEDDF) - 1282))))(v5, 1255);
}

uint64_t sub_10001F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = STACK[0x3F8];
  *(v47 + 36) = ((99 * (v45 ^ 0xFA)) ^ 0xBD) + *STACK[0x418];
  v48 = STACK[0x3D8];
  v49 = STACK[0x330];
  STACK[0x2B0] = &STACK[0x5A0] + STACK[0x330];
  STACK[0x330] = v49 + 304;
  STACK[0x320] = v48 + 280;
  STACK[0x388] = v48 + 8;
  *v47 = 1;
  *(v47 + 8) = v48;
  STACK[0x3E8] = *(v46 + 8 * (v45 - 388));
  LODWORD(a19) = v45 + 4239;
  HIDWORD(a20) = (v45 - 1788924411) & 0x6AA0DBFF;
  LODWORD(a29) = v45 ^ 0xFFFFFC6A;
  HIDWORD(a17) = v45 + 4615;
  v50 = STACK[0x330];
  v51 = &STACK[0x5A0] + STACK[0x330];
  STACK[0x3B8] = v51;
  STACK[0x330] = v50 + 64;
  STACK[0x298] = (16 * v51 + 48) & 0x20;
  return (*(v46 + 8 * (((v48 != -580) * (((503 * ((355 * (v45 ^ 0x1FA)) ^ 0x2C4) - 26) ^ 0x22C) + 1522)) ^ (503 * ((355 * (v45 ^ 0x1FA)) ^ 0x2C4)))))(v48 + 580, 4619, 3096, 95, 3142, 1197, 164, 1104, a9, a10, a11, a12, a13, a14, a15, a16, a17, (HIDWORD(a20) - 1044765728) & 0x3E45D3BA, a19, a20, v51, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_10001FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  STACK[0x298] += 16;
  *(v36 - 224) = 0x9908B0DF00000000;
  v38 = **(v35 + 8 * (v32 & 0xF8CC26F1));
  STACK[0x538] = *(v37 + 8 * ((v32 + 1622628948) ^ 0x60B75DBF));
  STACK[0x548] = 0;
  STACK[0x558] = v38;
  LODWORD(STACK[0x540]) = v32 + 1622628948;
  LODWORD(STACK[0x544]) = v32 + 1622629355;
  LODWORD(STACK[0x550]) = v32 + 1622628990;
  LODWORD(STACK[0x554]) = 0;
  *(v36 - 208) = v33;
  *(v36 - 212) = 801562768 - 934376741 * ((~(v31 | 0x86D92C40) + (v31 & 0x86D92C40)) ^ 0xF228DBDC) + v32;
  v39 = (*(v37 + 8 * (v32 ^ v34)))(v36 - 216);
  return (*(a31 + 8 * *(v36 - 216)))(v39);
}

uint64_t sub_10001FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = (*(a2 + 8 * a19))();
  *v33 = v34;
  v33[1] = 1812433253 * (v34 ^ (v34 >> 30)) + 1;
  return (*(a33 + 8 * ((1991 * ((a18 ^ 0x399) == 623)) ^ a22)))();
}

uint64_t sub_10001FD44(uint64_t a1, uint64_t a2)
{
  v5 = (v3 + 1577) | 0x408;
  v6 = v4[568 * (v5 ^ 0xC2C) - 2839];
  v7 = v4[398] ^ ((v4[2] & 0x7FFFFFFE | v6 & 0x80000000) >> 1) ^ *(v2 + 4 * (v4[2] & 1));
  *v4 = v4[397] ^ ((v6 & 0x7FFFFFFE | *v4 & 0x80000000) >> 1) ^ *(v2 + 4 * (v6 & 1));
  v4[1] = v7;
  return (*(a2 + 8 * v5))();
}

uint64_t sub_100020324(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = (v10 + 4 * v6);
  v12 = v6 + 1;
  *v11 = *(v7 + 4 * (*(v10 + 4 * v12) & 1)) ^ v11[397] ^ ((*(v10 + 4 * v12) & (v4 ^ a4 ^ v9) | v5 & 0x80000000) >> 1);
  return (*(a2 + 8 * (((v12 != 227) * v8) ^ v4)))();
}

uint64_t sub_1000203DC@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, unsigned int *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29[623] = *(v26 + 4 * (*v29 & 1)) ^ v29[396] ^ ((*v29 & 0x7FFFFFFE | v29[623] & 0x80000000) >> 1);
  if (v27 <= 0x26F)
  {
    v31 = v27;
  }

  else
  {
    v31 = 0;
  }

  *a19 = v31 + 1;
  v32 = *a22;
  STACK[0x538] = *(a1 + 8 * (a2 - 47));
  LODWORD(STACK[0x540]) = a2 - 1936968835;
  LODWORD(STACK[0x544]) = a2 - 1936969010;
  STACK[0x548] = v32;
  LODWORD(STACK[0x550]) = a2 - 1936968799;
  LODWORD(STACK[0x554]) = 1;
  STACK[0x558] = 5119;
  *(v30 - 208) = v28;
  *(v30 - 212) = 801562768 - 934376741 * (v25 ^ 0x8B0E0863) + a2;
  v33 = (*(a1 + 8 * (a2 ^ 0x1389)))(v30 - 216);
  return (*(a25 + 8 * *(v30 - 216)))(v33);
}

uint64_t sub_1000204C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  *a29 = 0;
  v33 = ((v29 ^ (v29 >> 11)) << 7) & 0x9D2C5680 ^ v29 ^ (v29 >> 11);
  STACK[0x298] = a27 - (v31 ^ 0x1F9u) + ((((a18 ^ v30) & v30) >> (__clz(a18 ^ v30 | 1) ^ 0x1F)) & (v31 ^ 0x1F9)) - 16;
  return (*(v32 + 8 * ((95 * ((((((v31 ^ 0xF9) + 5) | 0x28) - 43) ^ (((((v33 << 15) & 0xEFC60000 ^ v33) >> ((((v31 ^ 0xF9) + 5) | 0x28) - 28)) ^ v33) == 0)) & 1)) ^ (((v31 ^ 0x1F9) + 2565) | 0x28))))(a24, 4619, 3096);
}

uint64_t sub_1000206BC()
{
  v0 = STACK[0x3E8];
  STACK[0x330] -= 64;
  return v0();
}

uint64_t sub_100020794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(STACK[0x388] + 4) - 1998373338;
  if (v56 < 0)
  {
    v56 = 1998373338 - *(STACK[0x388] + 4);
  }

  v63 = 4 * v56;
  v57 = STACK[0x3F8];
  v58 = STACK[0x2B0];
  v59 = STACK[0x2B0];
  v58[15] = *(STACK[0x3F8] + 331);
  v58[14] = v57[330];
  v58[13] = v57[329];
  v58[12] = v57[328];
  v58[11] = v57[327];
  v58[10] = v57[326];
  v58[9] = v57[325];
  v58[8] = v57[324];
  v58[7] = v57[323];
  v58[6] = v57[322];
  v58[5] = v57[321];
  v58[4] = v57[320];
  v58[3] = v57[319];
  v58[2] = v57[318];
  v58[1] = v57[317];
  *v58 = v57[316];
  v58[35] = v57[351];
  v58[34] = v57[350];
  v58[33] = v57[349];
  v58[32] = v57[348];
  v58[31] = v57[347];
  v58[30] = v57[346];
  v58[29] = v57[345];
  v58[28] = v57[344];
  v58[27] = v57[343];
  v58[26] = v57[342];
  v58[25] = v57[341];
  v58[24] = v57[340];
  v58[23] = v57[339];
  v58[22] = v57[338];
  v58[21] = v57[337];
  v58[20] = v57[336];
  v58[19] = v57[335];
  v58[18] = v57[334];
  v58[17] = v57[333];
  v58[16] = v57[332];
  v60 = 1815485821 * ((v54 - 216 - 2 * ((v54 - 216) & 0xD45C7B6E) - 732136594) ^ 0xBF66E80A);
  *(v54 - 192) = 77 - 125 * ((v54 + 40 - 2 * ((v54 + 40) & 0x6E) + 110) ^ 0xA);
  *(v54 - 184) = a53;
  *(v54 - 176) = 0;
  *(v54 - 200) = v59;
  *(v54 - 168) = (v53 + 2413) ^ v60;
  *(v54 - 208) = v60 ^ 0x23318302;
  *(v54 - 216) = v60 + ((v53 - 2103298689) & 0x7D5DCFDF ^ 0x5FEB7828 ^ v63) + ((2 * v63) & (((v53 - 2103298689) ^ 0x6FCEA270) - 764777993)) - 161504768;
  v61 = (*(v55 + 8 * (v53 ^ 0x1375)))(v54 - 216);
  return (*(a31 + 8 * ((46 * (*(v54 - 212) == -311651065)) ^ (v53 + 3028))))(v61);
}

uint64_t sub_100020A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = STACK[0x3F8] + 37;
  v39 = STACK[0x320];
  v40 = STACK[0x388];
  v41 = 934376741 * ((v36 + 452516075 - 2 * ((v36 - 216) & 0x1AF8D9C3)) ^ 0x91F6D1A0);
  *(v36 - 144) = STACK[0x3F8] + 296;
  *(v36 - 168) = v39;
  *(v36 - 160) = 0;
  *(v36 - 184) = v40;
  *(v36 - 176) = v38;
  *(v36 - 216) = v32;
  *(v36 - 200) = 0;
  *(v36 - 192) = v31 + 311651064 + v41 + 2135;
  *(v36 - 152) = (v33 ^ 0xFFEC3FFF) - v41 + (v34 & 0xFFD87FFE) + 1999884157;
  v42 = (*(v37 + 8 * (v31 + 311655835)))(v36 - 216);
  v43 = *(v36 - 208);
  STACK[0x330] += (v31 - v35 + 504) ^ ((v31 + 311651851) | 0x825u) ^ 0xFFFFFFFFFFFFF41FLL;
  return (*(a31 + 8 * (v31 ^ (v35 - 695) ^ (5471 * (((v43 - v31) | (v31 - v43)) >= 0)))))(v42);
}

uint64_t sub_100020B34@<X0>(uint64_t a1@<X8>)
{
  STACK[0x230] = &STACK[0x5A0] + a1;
  STACK[0x330] = (v3 ^ 0xFFFFFFFFFFFFF4B7) + v1;
  LODWORD(STACK[0x3B4]) = 0;
  LODWORD(STACK[0x408]) = 544758356;
  STACK[0x2E0] = 0;
  return (*(v4 + 8 * ((((v3 - 548936445) & 0x20B81FF7 ^ 0x1056) * (v2 == 0)) ^ v3)))();
}

uint64_t sub_100020BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x398];
  v73 = STACK[0x300];
  *(v72 + 15) = *(STACK[0x300] + 15);
  *(v72 + 14) = v73[14];
  *(v72 + 13) = v73[13];
  *(v72 + 12) = v73[12];
  *(v72 + 11) = v73[11];
  *(v72 + 10) = v73[10];
  *(v72 + 9) = v73[9];
  *(v72 + 8) = v73[8];
  *(v72 + 7) = v73[7];
  *(v72 + 6) = v73[6];
  *(v72 + 5) = v73[5];
  *(v72 + 4) = v73[4];
  *(v72 + 3) = v73[3];
  *(v72 + 2) = v73[2];
  *(v72 + 1) = v73[1];
  *v72 = *v73;
  v74 = *(a65 + 552);
  LODWORD(v72) = *(a65 + 560);
  STACK[0x4F0] = *(v71 + 8 * (v69 - 75));
  STACK[0x4F8] = v74;
  LODWORD(STACK[0x510]) = v72 ^ ((v72 ^ 0x8A00B8) - 856893368) ^ (((v69 + 2744) | 0x100) - 1383880590 + (v72 ^ 0x61E56EDE)) ^ ((v72 ^ 0x250B9699) + ((2 * v69) ^ 0xE96D4D97)) ^ ((v72 ^ 0x77FDDFFF) - 1147468031) ^ 0x670876B0;
  STACK[0x500] = v73;
  STACK[0x508] = a57;
  LODWORD(STACK[0x520]) = (a52 ^ 0xFB5E25FF) + 2008547048 + ((2 * a52) & 0xF6BC4BFE);
  STACK[0x518] = a69;
  *(v70 - 216) = &STACK[0x4F0];
  *(v70 - 204) = 1151317067 * (((~(v70 - 216) & 0xF578183A) - (~(v70 - 216) | 0xF578183B)) ^ 0xDF6686B5) - 468009096 + v69 - 8;
  v75 = (*(v71 + 8 * (v69 + 4213)))(v70 - 216);
  v76 = *(v70 - 208);
  STACK[0x330] -= 16;
  return (*(a31 + 8 * ((v69 - 75) ^ 0x677 ^ (53 * (v76 != -311651065)))))(v75);
}

uint64_t sub_100020DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  STACK[0x490] = v52;
  LODWORD(STACK[0x49C]) = v53;
  if (a52)
  {
    v56 = v52 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  return (*(v55 + 8 * ((v57 * (((v54 - 3370) ^ 0x11E8) - 4460)) ^ v54)))();
}

uint64_t sub_100020E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  LODWORD(STACK[0x254]) = ((v32 + 1236033081) & 0xB65390DE ^ 0xA3) + v31;
  v35 = (*(v34 + 8 * (v32 ^ 0x34F)))();
  STACK[0x4A0] = v35;
  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 311673091;
  }

  LODWORD(STACK[0x4AC]) = v36;
  return (*(a31 + 8 * (((v35 != 0) * ((v32 - 4175) ^ 0x1E4)) ^ v32)))();
}

void sub_100020EE4(_BYTE *a1)
{
  *a1 = 2;
  a1[16] = v2[15] ^ 0xCF;
  a1[15] = (v1 - 64) & 0xE7 ^ v2[14] ^ 8;
  a1[14] = v2[13] ^ 0xCF;
  a1[13] = v2[12] ^ 0xCF;
  a1[12] = v2[11] ^ 0xCF;
  a1[11] = v2[10] ^ 0xCF;
  a1[10] = v2[9] ^ 0xCF;
  a1[9] = v2[8] ^ 0xCF;
  a1[8] = v2[7] ^ 0xCF;
  a1[7] = v2[6] ^ 0xCF;
  a1[6] = v2[5] ^ 0xCF;
  a1[5] = v2[4] ^ 0xCF;
  a1[4] = v2[3] ^ 0xCF;
  a1[3] = v2[2] ^ 0xCF;
  a1[2] = v2[1] ^ 0xCF;
  a1[1] = *v2 ^ 0xCF;
  STACK[0x410] = *(v3 + 8 * v1);
  JUMPOUT(0x100020FE4);
}

uint64_t sub_100021024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = *(v33 + 36);
  LODWORD(STACK[0x408]) = v31 + 32;
  LODWORD(STACK[0x3B4]) = (v35 ^ (v32 + 1862264695)) + ((2 * v35) & 0x152) - 1862268511;
  v36 = (*(v34 + 8 * (v32 + 495)))();
  STACK[0x400] = v36;
  return (*(a31 + 8 * ((90 * (((v32 ^ (v36 == 0)) & 1) == 0)) ^ v32)))();
}

uint64_t sub_1000210B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = (*(v33 + 8 * (v31 ^ 0x213u)))(32, v32);
  STACK[0x2E0] = v34;
  return (*(a31 + 8 * (((v34 == 0) * ((((v31 ^ 0x18B4) - 2173) ^ 0x1F1) + (((v31 ^ 0x18B4) - 2173) | 0x22) - 508)) ^ v31 ^ 0x18B4)))();
}

uint64_t sub_100021598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v4 + a2 - 1 - 31);
  v7 = a1 + a2 - 1;
  *(v7 - 15) = *(v4 + a2 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * (((((4 * v2) ^ 0x474u) - 884 == (a2 & 0xFFFFFFE0)) * v3) ^ (v2 - 3))))();
}

uint64_t sub_100021674(uint64_t a1)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(v3 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v4) ^ (v1 + 1808))))();
}

uint64_t sub_10002172C(uint64_t a1, int a2)
{
  v9 = v3 < v6;
  *(v4 + v2) = 0;
  v10 = v2 + 1;
  if (v9 == v10 > v5)
  {
    v9 = v10 + v6 < v3;
  }

  return (*(v8 + 8 * ((!v9 * ((5 * (v7 ^ a2)) ^ 0xC0)) ^ v7)))();
}

void sub_100021780(int a1@<W8>)
{
  v2 = STACK[0x3F8];
  v3 = STACK[0x400];
  *v3 = *STACK[0x3F8];
  v3[1] = *(v2 + 36);
  STACK[0x410] = *(v1 + 8 * a1);
  JUMPOUT(0x10002137CLL);
}

uint64_t sub_100022488@<X0>(int a1@<W8>)
{
  v2 = (a1 + 2467) | 0x214u;
  (*(v1 + 8 * (a1 + 4044)))();
  STACK[0x330] = v2 + STACK[0x330] - 7764;
  return sub_1000227D8();
}

uint64_t sub_1000224C4(unint64_t a1)
{
  STACK[0x2B8] = a1;
  v3 = STACK[0x358];
  STACK[0x330] -= 3984;
  return (*(v2 + 8 * ((19 * (v3 < (((v1 - 1136) | 2) ^ 0x16F ^ (223 * (v1 ^ 0x867u))))) ^ v1)))();
}

uint64_t sub_1000225CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v37 = v32 - 2915;
  v38 = (v31 + v32 - 99 + 91);
  v39 = (v32 - 2805) | 0x88;
  v40 = 957051079 * ((v34 - 216 - 2 * ((v34 - 216) & 0xAF7DA72C812D18BCLL) - 0x508258D37ED2E744) ^ 0x1454736D6683B484);
  v41 = *(v35 + 8 * (v32 - 2879)) - v40;
  *(v34 - 192) = v32 - 2915 - v40 + 271581704;
  *(v34 - 188) = v40 - 1264946327;
  *(v34 - 208) = v33;
  *(v34 - 200) = v41;
  (*(v35 + 8 * (v32 + 1402)))(v34 - 216);
  v42 = *(a31 + 8 * (v37 + 48));
  *(v34 - 184) = a1;
  *(v34 - 208) = v33;
  *(v34 - 200) = v42 + 1815485821 * ((((2 * (v34 - 216)) | 0x74843F19B9C323C4) - (v34 - 216) - 0x3A421F8CDCE191E2) ^ 0x3DF345F6B7DB0286);
  *(v34 - 216) = v37 - 1815485821 * ((((2 * (v34 - 216)) | 0xB9C323C4) - (v34 - 216) + 589196830) ^ 0xB7DB0286) + 2139164488;
  *(v34 - 192) = ((v38 ^ 0xF9BFEE1C) + 1744829940 + ((v39 - 209725029) & (2 * v38))) ^ (1815485821 * ((((2 * (v34 - 216)) | 0xB9C323C4) - (v34 - 216) + 589196830) ^ 0xB7DB0286));
  (*(a31 + 8 * (v37 ^ 0x13C1)))(v34 - 216);
  v43 = STACK[0x4B0];
  v44 = 15981013 * ((v34 - 216) ^ 0xFC9597376D51B8BALL);
  v45 = *(a31 + 8 * v37);
  *(v34 - 184) = v37 - v44 - 1229068431;
  *(v34 - 192) = v43;
  *(v34 - 216) = v33;
  *(v34 - 200) = v45 - v44;
  v46 = (*(a31 + 8 * (v37 ^ 0x1328)))(v34 - 216);
  STACK[0x330] += (4 * v39) ^ 0xFFFFFFFFFFFFF5E4;
  return sub_1000227D8(v46);
}

uint64_t sub_10002290C()
{
  v2 = LODWORD(STACK[0x3C0]) + *STACK[0x3D0];
  LODWORD(STACK[0x3C0]) = v2;
  v3 = ((LODWORD(STACK[0x360]) - v2) ^ 0xA6EBFFFD) + 1509846832 + (((v0 ^ 0xE7E) + 1305997428) & (2 * (LODWORD(STACK[0x360]) - v2)));
  return (*(v1 + 8 * ((v0 + 129) ^ (4 * ((v3 | ((v3 < 0xEA6F2D) << 32)) == 15363885)))))();
}

uint64_t sub_100022A04(unint64_t a1)
{
  v6 = v4 < a1;
  *(v3 + v1) = 0;
  v7 = v1 + 1;
  if (v6 == v7 > 0xFFFFFFFF2297A480)
  {
    v6 = v7 + a1 < v4;
  }

  return (*(v5 + 8 * ((!v6 * ((2 * v2) ^ 0x4F6)) ^ v2)))();
}

uint64_t sub_100022A68()
{
  v2 = STACK[0x2CC];
  *(STACK[0x248] + 576) = STACK[0x2CC];
  v3 = v2 + LODWORD(STACK[0x48C]) + 26605990;
  v4 = (LODWORD(STACK[0x47C]) > ((1217 * (v0 ^ 0x1FB) + 1609022907) & 0xA01836F9) - 1786442463) ^ (v3 < 0x6A7AEFE6);
  v5 = v3 < LODWORD(STACK[0x47C]) + 1786441702;
  if (v4)
  {
    v5 = LODWORD(STACK[0x47C]) > ((1217 * (v0 ^ 0x1FB) + 1609022907) & 0xA01836F9) - 1786442463;
  }

  return (*(v1 + 8 * ((3480 * v5) ^ (v0 + 241))))();
}

uint64_t sub_100022B98(unsigned int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v11 = *(v8 + ((a5 - 1852064100) & 0x6E643E63 ^ (v6 + 3774)) + a3) + a3 - 288240899;
  v12 = v11 < v7;
  v13 = v11 > v9;
  if (v5 > a1 != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v10 + 8 * (((8 * v14) | (16 * v14)) ^ a5)))();
}

uint64_t sub_100022C58@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X7>, int a4@<W8>)
{
  *(a3 + 604) = 67;
  v9 = v5 > v7;
  v10 = a2 + 1877;
  v11 = (a2 + 1610) | 0x601;
  v12 = a2 + 241;
  v13 = a4 + a1 + 2;
  v14 = v9 ^ (v13 < (v10 ^ (v4 - 2363)));
  v15 = v13 < v6;
  if (!v14)
  {
    v9 = v15;
  }

  return (*(v8 + 8 * ((v9 * (v11 - 3634)) ^ v12)))();
}

uint64_t sub_100022D20(uint64_t a1, int a2)
{
  v4 = STACK[0x488];
  LODWORD(STACK[0x344]) = STACK[0x488];
  return (*(v3 + 8 * ((63 * (v4 == v2 + a2 - 3515 + a2 - 1115 - 2672)) ^ a2)))();
}

void sub_100022E18()
{
  v0 = STACK[0x3F8];
  v1 = (STACK[0x400] + (LODWORD(STACK[0x424]) - 639151604));
  v1[15] = *(STACK[0x3F8] + 315) ^ 0xCF;
  v1[14] = v0[314] ^ 0xCF;
  v1[13] = v0[313] ^ 0xCF;
  v1[12] = v0[312] ^ 0xCF;
  v1[11] = v0[311] ^ 0xCF;
  v1[10] = v0[310] ^ 0xCF;
  v1[9] = v0[309] ^ 0xCF;
  v1[8] = v0[308] ^ 0xCF;
  v1[7] = v0[307] ^ 0xCF;
  v1[6] = v0[306] ^ 0xCF;
  v1[5] = v0[305] ^ 0xCF;
  v1[4] = v0[304] ^ 0xCF;
  v1[3] = v0[303] ^ 0xCF;
  v1[2] = v0[302] ^ 0xCF;
  v1[1] = v0[301] ^ 0xCF;
  *v1 = v0[300] ^ 0xCF;
  JUMPOUT(0x10002449CLL);
}

void sub_100022F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  LODWORD(STACK[0x344]) = a28;
  STACK[0x218] = *(v29 + 8 * (v28 ^ 0xA2F47648));
  JUMPOUT(0x100023DF0);
}

uint64_t sub_1000230F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = STACK[0x2E0] + 5;
  STACK[0x410] = *(v21 + 8 * (v20 - 187));
  return (*(v21 + 8 * ((58 * (((((252 * ((((v20 - 306) | 0x901) - 1282) ^ 0x4C7) + 1550) | 8u) ^ 0xFFFFF7F1) & 0x200350DACEC6AD6FLL) == 3469127039)) ^ (((v20 - 306) | 0x901) - 1282))))(v22, 1255, 3469127039, 4112333968, 1223, 252, 1550, 58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100023138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = v32 - 112;
  v36 = v32;
  v37 = STACK[0x400] + ((((v32 - 505914492) & 0x1E27A3F7) - 639149238) ^ (v32 + 1002810854) & 0xC43A5EBF) + LODWORD(STACK[0x424]);
  v38 = STACK[0x3F8] + 316;
  v39 = STACK[0x3F8] + 300;
  v40 = STACK[0x2E0];
  v41 = STACK[0x408];
  v42 = *(v34 + 8 * v35);
  *(v33 - 184) = (v36 + 1968906254) ^ (1815485821 * ((((v33 - 216) ^ 0xDC995B6D) - 2 * (((v33 - 216) ^ 0xDC995B6D) & 0xE8B1F048) - 390991800) ^ 0x5F123841));
  *(v33 - 200) = v38;
  *(v33 - 192) = v40;
  *(v33 - 212) = (v41 - 110322212) ^ (1815485821 * ((((v33 - 216) ^ 0xDC995B6D) - 2 * (((v33 - 216) ^ 0xDC995B6D) & 0xE8B1F048) - 390991800) ^ 0x5F123841));
  *(v33 - 176) = v39;
  *(v33 - 168) = v42 ^ (1815485821 * ((((v33 - 216) ^ 0x4E886ABCDC995B6DLL) - 2 * (((v33 - 216) ^ 0x4E886ABCDC995B6DLL) & 0x350A4657E8B1F048) + 0x350A4657E8B1F048) ^ 0x7C3376915F123841));
  *(v33 - 208) = v37;
  v43 = (*(v34 + 8 * (v36 + 4220)))(v33 - 216);
  return (*(a31 + 8 * ((3214 * (*(v33 - 216) == v31)) ^ (v36 + 845))))(v43);
}

uint64_t sub_100023280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v39 = (v32 - 13513078) & 0xCE3E9F;
  v40 = STACK[0x230];
  v41 = 1151317067 * ((v37 - 216) ^ 0x2A1E9E8E);
  *(v37 - 200) = -19381 * ((v37 - 216) ^ 0x9E8E) + 27121;
  *(v37 - 192) = v36 + 332;
  *(v37 - 196) = v41 + 1392085986;
  *(v37 - 208) = v40;
  *(v37 - 216) = v32 - v41 + 3269;
  (*(v38 + 8 * (v32 ^ 0x13E4)))(v37 - 216);
  v42 = *(a31 + 8 * (v32 + 102));
  v43 = 1151317067 * ((((v37 - 216) | 0xD95746AE2EB5D071) - ((v37 - 216) & 0xD95746AE2EB5D071)) ^ 0xEAF929A304AB4EFFLL);
  *(v37 - 192) = v34;
  *(v37 - 184) = v40;
  *(v37 - 208) = v42 ^ v43;
  *(v37 - 200) = v31 - v43 + 1060982445;
  *(v37 - 216) = v43 + v32 - 1768975272;
  (*(a31 + 8 * (v32 ^ 0x13FD)))(v37 - 216);
  v44 = *(a31 + 8 * v32);
  *(v37 - 216) = 2091604533 - 934376741 * ((2 * ((v37 - 216) & 0x183AFD28) - (v37 - 216) - 406519086) ^ 0x6CCB0AB1) + v32 + 66;
  *(v37 - 200) = v40;
  *(v37 - 192) = v44 - 934376741 * ((2 * ((v37 - 216) & 0x78FAB3FD183AFD28) - (v37 - 216) + 0x7054C02E7C502D2) ^ 0x3FD9F14B6CCB0AB1);
  *(v37 - 208) = v33 + (v35 + v31 + v39 - 1183913682);
  v45 = (*(a31 + 8 * (v32 + 4361)))(v37 - 216);
  STACK[0x390] = v33;
  LODWORD(STACK[0x22C]) = STACK[0x3B4];
  return (*(a31 + 8 * (((((4 * v39) ^ 0x3A14) + ((v39 - 3238) ^ 0xFFFFFE43)) * (a19 != 0)) ^ v39)))(v45);
}

uint64_t sub_1000234F8()
{
  if (v0)
  {
    v5 = v1 == (((v2 - 440) | 0x21) ^ (v3 + 95));
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((v6 * ((v2 + 1375) ^ 0x4BB)) ^ (v2 + 4098))))();
}

void sub_100023508()
{
  (*(v1 + 8 * (v0 ^ 0x1391)))(STACK[0x2E0]);
  STACK[0x2E0] = 0;
  JUMPOUT(0x100023534);
}

uint64_t sub_100023710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = 0;
  v41 = STACK[0x3D8];
  *v41 = 1865820579;
  v42 = *(*a13 + (*a12 & 0xEA9F4BC8));
  STACK[0x560] = 0;
  v43 = 16777619 * ((-358659127 * v42 + 7) ^ (-358659127 * v42)) % 7;
  v44 = 16777619 * ((-358659127 * v42 + 6) ^ (-358659127 * v42)) % 6;
  v45 = 16777619 * ((-358659127 * v42 + 5) ^ (-358659127 * v42)) % 5;
  v46 = *(&STACK[0x560] | v43);
  *(&STACK[0x560] | v43) = STACK[0x567];
  v47 = *(&STACK[0x560] | v44);
  *(&STACK[0x560] | v44) = STACK[0x566];
  v48 = *(&STACK[0x560] | v45);
  *(&STACK[0x560] | v45) = STACK[0x565];
  STACK[0x568] = v41;
  v49 = 16777619 * ((-358659127 * v42 + 3) ^ (-358659127 * v42)) % 3;
  v50 = vdup_n_s32(-358659127 * v42);
  v51.i32[0] = v50.i32[0];
  v51.i32[1] = -358659127 * v42 + 1;
  LOBYTE(STACK[0x567]) = v46;
  v52 = v38 + 267;
  v53 = veor_s8(vmul_s32(v51, v50), v50);
  LOBYTE(STACK[0x566]) = v47;
  LOBYTE(STACK[0x565]) = v48;
  v54 = STACK[0x560];
  LOBYTE(STACK[0x560]) = STACK[0x564];
  LOBYTE(STACK[0x564]) = v54;
  v55 = *(&STACK[0x560] | v49);
  *(&STACK[0x560] | v49) = STACK[0x563];
  LOBYTE(STACK[0x563]) = v55;
  v56 = STACK[0x561];
  LOBYTE(STACK[0x562]) = STACK[0x560];
  LOWORD(STACK[0x560]) = v56;
  STACK[0x560] = vmla_s32(v53, STACK[0x560], vdup_n_s32(0x1000193u));
  v57 = STACK[0x568];
  v58 = (-358659127 * STACK[0x568]) ^ v42;
  v59 = vdupq_n_s32(v58);
  v60 = xmmword_100268C40;
  v61 = xmmword_100268C50;
  v62 = xmmword_100268C60;
  v63 = xmmword_100268C70;
  v64.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v65.i64[0] = 0x9393939393939393;
  v65.i64[1] = 0x9393939393939393;
  v66.i64[0] = 0x1000000010;
  v66.i64[1] = 0x1000000010;
  do
  {
    v67 = *(v57 + v40);
    v88.val[1] = veorq_s8(vqtbl1q_s8(v67, xmmword_100268CE0), veorq_s8(v59, vmulq_s32(vaddq_s32(v62, v59), vsubq_s32(v62, v59))));
    v88.val[0] = veorq_s8(vqtbl1q_s8(v67, xmmword_100268CF0), veorq_s8(v59, vmulq_s32(vaddq_s32(v63, v59), vsubq_s32(v63, v59))));
    v88.val[2] = veorq_s8(vqtbl1q_s8(v67, xmmword_100268D00), veorq_s8(v59, vmulq_s32(vaddq_s32(v61, v59), vsubq_s32(v61, v59))));
    v88.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v67, xmmword_100268D10), v59), vmulq_s32(vaddq_s32(v60, v59), vsubq_s32(v60, v59)));
    *(v57 + v40) = vmulq_s8(vqtbl4q_s8(v88, xmmword_100268C80), v65);
    v40 += 16;
    v63 = vaddq_s32(v63, v66);
    v62 = vaddq_s32(v62, v66);
    v61 = vaddq_s32(v61, v66);
    v60 = vaddq_s32(v60, v66);
  }

  while (v40 != 672);
  v68 = 0;
  v69 = xmmword_100268C90;
  v70 = vdupq_n_s32(v58);
  v71 = xmmword_100268CA0;
  v72 = v57 + 672;
  v73.i64[0] = 0x800000008;
  v73.i64[1] = 0x800000008;
  do
  {
    v64.i64[0] = *(v72 + v68);
    v87.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v64, xmmword_100268CE0), v70), vmulq_s32(vaddq_s32(v69, v70), vsubq_s32(v69, v70)));
    v87.val[0] = veorq_s8(vqtbl1q_s8(v64, xmmword_100268CF0), veorq_s8(v70, vmulq_s32(vaddq_s32(v71, v70), vsubq_s32(v71, v70))));
    v64 = vqtbl2q_s8(v87, xmmword_100268CB0);
    *(v72 + v68) = vmul_s8(*v64.i8, 0x9393939393939393);
    v71 = vaddq_s32(v71, v73);
    v69 = vaddq_s32(v69, v73);
    v68 += 8;
  }

  while (v68 != 8);
  v74 = 84;
  do
  {
    v75 = 16777619 * ((v58 + v74) ^ v58) % v74;
    v76 = *(v57 + 8 * v75) ^ *(v57 + 8 * v74);
    *(v57 + 8 * v74) = v76;
    v77 = *(v57 + 8 * v75);
    v78 = v77 ^ v76;
    *(v57 + 8 * v75) = v78;
    *(v57 + 8 * v74) ^= v78;
    v79 = v74-- + 1;
  }

  while (v79 > 2);
  v80 = *(&STACK[0x568] + v43);
  *(&STACK[0x568] + v43) = STACK[0x56F];
  v81 = *(&STACK[0x568] + v44);
  *(&STACK[0x568] + v44) = STACK[0x56E];
  LOBYTE(STACK[0x56F]) = v80;
  v82 = *(&STACK[0x568] + v45);
  *(&STACK[0x568] + v45) = STACK[0x56D];
  LOBYTE(STACK[0x56E]) = v81;
  LOBYTE(STACK[0x56D]) = v82;
  v83 = STACK[0x568];
  LOBYTE(STACK[0x568]) = STACK[0x56C];
  LOBYTE(STACK[0x56C]) = v83;
  v84 = *(&STACK[0x568] + v49);
  *(&STACK[0x568] + v49) = STACK[0x56B];
  LOBYTE(STACK[0x56B]) = v84;
  v85 = STACK[0x569];
  LOBYTE(STACK[0x56A]) = STACK[0x568];
  LOWORD(STACK[0x568]) = v85;
  STACK[0x568] = vmla_s32(v53, STACK[0x568], vdup_n_s32(0x1000193u));
  STACK[0x3A8] = STACK[0x568] ^ STACK[0x560];
  return (*(v39 + 8 * ((3015 * (13 * (v52 ^ 0x1DE) == 494)) ^ (v52 + 783))))(v78, v77, &STACK[0x560], &STACK[0x560] | v45, v46, v47, v48, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_100023B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, unint64_t a39)
{
  v42 = a39;
  v43 = STACK[0x3A8];
  STACK[0x4F0] = *(v41 + 8 * v39);
  STACK[0x4F8] = v42;
  STACK[0x500] = v43;
  STACK[0x508] = &a36;
  *(v40 - 204) = 1151317067 * ((v40 - 1877094644 - 2 * ((v40 - 216) & 0x901DCFE4)) ^ 0xBA03516A) - 468009096 + v39 + 2;
  *(v40 - 216) = &STACK[0x4F0];
  v44 = (*(v41 + 8 * (v39 + 4223)))(v40 - 216);
  v45 = *(v40 - 208) == (((v39 ^ 0x464) - 203321513) ^ 0x1E8D01E6);
  return (*(a31 + 8 * (v39 ^ 0x1097 ^ (v45 | (2 * v45)))))(v44);
}

void sub_100023CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v42 = 60 * (v37 ^ 0x5CEu);
  (*(v36 + 8 * (v37 ^ 0x17FC)))(STACK[0x268], v38, v39, -1);
  v43 = STACK[0x268];
  *(v41 + 16) = v42 ^ a36 ^ 0xEEE4B589EE3EC153;
  *(v41 + 24) = v43;
  *(v41 + 32) = v39;
  *(v41 + 36) = v40;
  (*(a31 + 8 * (v42 + 633)))(v38);
  sub_100024EC0();
}

void sub_100023D7C()
{
  v2 = STACK[0x248];
  (*(v1 + 8 * (v0 ^ 0x1391)))(*(STACK[0x248] + 552));
  *(v2 + 552) = 0;
  JUMPOUT(0x100023DA8);
}

void sub_100023E68()
{
  v3 = 0;
  v4 = *(*v1 + (*v2 & 0xEA9F4BC8)) ^ (-358659127 * v0);
  v5 = vdupq_n_s32(v4);
  v6 = xmmword_100268C40;
  v7 = xmmword_100268C50;
  v8 = xmmword_100268C60;
  v9 = xmmword_100268C70;
  v10.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v11.i64[0] = 0x9393939393939393;
  v11.i64[1] = 0x9393939393939393;
  v12.i64[0] = 0x1000000010;
  v12.i64[1] = 0x1000000010;
  do
  {
    v13 = *(v0 + v3);
    v26.val[1] = veorq_s8(vqtbl1q_s8(v13, xmmword_100268CE0), veorq_s8(v5, vmulq_s32(vaddq_s32(v8, v5), vsubq_s32(v8, v5))));
    v26.val[0] = veorq_s8(vqtbl1q_s8(v13, xmmword_100268CF0), veorq_s8(v5, vmulq_s32(vaddq_s32(v9, v5), vsubq_s32(v9, v5))));
    v26.val[2] = veorq_s8(vqtbl1q_s8(v13, xmmword_100268D00), veorq_s8(v5, vmulq_s32(vaddq_s32(v7, v5), vsubq_s32(v7, v5))));
    v26.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v13, xmmword_100268D10), v5), vmulq_s32(vaddq_s32(v6, v5), vsubq_s32(v6, v5)));
    *(v0 + v3) = vmulq_s8(vqtbl4q_s8(v26, xmmword_100268C80), v11);
    v3 += 16;
    v9 = vaddq_s32(v9, v12);
    v8 = vaddq_s32(v8, v12);
    v7 = vaddq_s32(v7, v12);
    v6 = vaddq_s32(v6, v12);
  }

  while (v3 != 672);
  v14 = 0;
  v15 = xmmword_100268C90;
  v16 = vdupq_n_s32(v4);
  v17 = xmmword_100268CA0;
  v18 = v0 + 672;
  v19.i64[0] = 0x800000008;
  v19.i64[1] = 0x800000008;
  do
  {
    v10.i64[0] = *(v18 + v14);
    v25.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v10, xmmword_100268CE0), v16), vmulq_s32(vaddq_s32(v15, v16), vsubq_s32(v15, v16)));
    v25.val[0] = veorq_s8(vqtbl1q_s8(v10, xmmword_100268CF0), veorq_s8(v16, vmulq_s32(vaddq_s32(v17, v16), vsubq_s32(v17, v16))));
    v10 = vqtbl2q_s8(v25, xmmword_100268CB0);
    *(v18 + v14) = vmul_s8(*v10.i8, 0x9393939393939393);
    v17 = vaddq_s32(v17, v19);
    v15 = vaddq_s32(v15, v19);
    v14 += 8;
  }

  while (v14 != 8);
  v20 = 84;
  do
  {
    v21 = 16777619 * ((v4 + v20) ^ v4) % v20;
    v22 = *(v0 + 8 * v21) ^ *(v0 + 8 * v20);
    *(v0 + 8 * v20) = v22;
    v23 = *(v0 + 8 * v21) ^ v22;
    *(v0 + 8 * v21) = v23;
    *(v0 + 8 * v20) ^= v23;
    v24 = v20-- + 1;
  }

  while (v24 > 2);
  sub_100024EC0();
}

uint64_t sub_10002404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x274];
  STACK[0x3D0] = a69 + 576;
  return (*(v70 + 8 * ((v69 + 280) ^ (4 * (((v71 + a55 + *(a69 + 576) + 8) & 0xF) == (((((2 * v69) ^ 0x12AE) - 4426) | 0x300) ^ 0x314))))))();
}

uint64_t sub_1000240AC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = 247 * (a1 ^ 0x306);
  v59 = (((v56 & 0xFFFFFFF0 ^ 0x2E141CCE) + 1214493586) ^ ((v56 & 0xFFFFFFF0 ^ 0xAA310215) - 867783349) ^ (((v58 - 2077946499) ^ v56 & 0xFFFFFFF0) - 497897083)) - 1719119696;
  LODWORD(STACK[0x360]) = v59;
  v60 = (*(v57 + 8 * (v58 + 195)))(v59, 0x100004077774924);
  return (*(a24 + 8 * (((v60 == 0) * (((v58 - 1569018399) & 0x5D8545EF) - 1264)) ^ v58)))(v60, v61, v62, v63, v64, v65, v66, v67, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

void sub_10002492C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{
  STACK[0x398] = a28;
  v29 = STACK[0x330];
  STACK[0x300] = &STACK[0x5A0] + STACK[0x330];
  STACK[0x330] = v29 + (((a1 + 417) | 0x82u) ^ 0x2D6);
  STACK[0x3E8] = *(v28 + 8 * a1);
  JUMPOUT(0x10001F9A4);
}

uint64_t sub_1000249D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, void *a13)
{
  v18 = 0;
  v19 = *(*a13 + (*a12 & 0xEA9F4BC8)) ^ (-358659127 * v13);
  v20 = vdupq_n_s32(v19);
  v21 = xmmword_100268C40;
  v22 = xmmword_100268C50;
  v23 = xmmword_100268C60;
  v24 = xmmword_100268C70;
  v25.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v26.i64[0] = 0x9393939393939393;
  v26.i64[1] = 0x9393939393939393;
  v27.i64[0] = 0x1000000010;
  v27.i64[1] = 0x1000000010;
  do
  {
    v28 = *(v13 + v18);
    v42.val[1] = veorq_s8(vqtbl1q_s8(v28, xmmword_100268CE0), veorq_s8(v20, vmulq_s32(vaddq_s32(v23, v20), vsubq_s32(v23, v20))));
    v42.val[0] = veorq_s8(vqtbl1q_s8(v28, xmmword_100268CF0), veorq_s8(v20, vmulq_s32(vaddq_s32(v24, v20), vsubq_s32(v24, v20))));
    v42.val[2] = veorq_s8(vqtbl1q_s8(v28, xmmword_100268D00), veorq_s8(v20, vmulq_s32(vaddq_s32(v22, v20), vsubq_s32(v22, v20))));
    v42.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v28, xmmword_100268D10), v20), vmulq_s32(vaddq_s32(v21, v20), vsubq_s32(v21, v20)));
    *(v13 + v18) = vmulq_s8(vqtbl4q_s8(v42, xmmword_100268C80), v26);
    v18 += 16;
    v24 = vaddq_s32(v24, v27);
    v23 = vaddq_s32(v23, v27);
    v22 = vaddq_s32(v22, v27);
    v21 = vaddq_s32(v21, v27);
  }

  while (v18 != 672);
  v29 = 0;
  v30 = xmmword_100268C90;
  v31 = vdupq_n_s32(v19);
  v32 = xmmword_100268CA0;
  v33 = v13 + 672;
  v34.i64[0] = 0x800000008;
  v34.i64[1] = 0x800000008;
  do
  {
    v25.i64[0] = *(v33 + v29);
    v41.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v25, xmmword_100268CE0), v31), vmulq_s32(vaddq_s32(v30, v31), vsubq_s32(v30, v31)));
    v41.val[0] = veorq_s8(vqtbl1q_s8(v25, xmmword_100268CF0), veorq_s8(v31, vmulq_s32(vaddq_s32(v32, v31), vsubq_s32(v32, v31))));
    v25 = vqtbl2q_s8(v41, xmmword_100268CB0);
    *(v33 + v29) = vmul_s8(*v25.i8, 0x9393939393939393);
    v32 = vaddq_s32(v32, v34);
    v30 = vaddq_s32(v30, v34);
    v29 += 8;
  }

  while (v29 != 8);
  v35 = 84;
  do
  {
    v36 = 16777619 * ((v19 + v35) ^ v19) % v35;
    v37 = *(v13 + 8 * v36) ^ *(v13 + 8 * v35);
    *(v13 + 8 * v35) = v37;
    v38 = *(v13 + 8 * v36) ^ v37;
    *(v13 + 8 * v36) = v38;
    *(v13 + 8 * v35) ^= v38;
    v39 = v35-- + 1;
  }

  while (v39 > 2);
  return (*(v17 + 8 * (((v14 == ((42 * (v15 ^ 0x217)) ^ (v16 - 8))) * ((937 * (v15 ^ 0x219)) ^ 0x1AB3)) ^ v15 ^ 0xECE)))(xmmword_100268CE0, xmmword_100268CF0, v30);
}

uint64_t sub_100024E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = STACK[0x260];
  v54 = v48;
  (*(v48 + 8 * (v51 ^ 0x1EA3)))(a48, STACK[0x260], v49, -1);
  v55 = (*(v54 + 8 * (v51 ^ 0x1EBC)))(v53);
  *(v52 + 24) = a48;
  *(v52 + 32) = v49;
  *(v52 + 36) = v50;
  return sub_100024EC0(v55);
}

void sub_100025028()
{
  *(v1 + 664) = 0;
  STACK[0x218] = *(v2 + 8 * (v0 - 373));
  JUMPOUT(0x10002510CLL);
}

uint64_t sub_100025384()
{
  v2 = v0 - 500;
  v3 = ((LOBYTE(STACK[0x4D3]) << ((((v0 + 6) & 0xCF) - 98) ^ 0x6D)) & 0x1BE) + (LOBYTE(STACK[0x4D3]) ^ 0xFEB7E0DF);
  LODWORD(STACK[0x4D4]) = v3 + 2080366392;
  return (*(v1 + 8 * ((2079 * ((~(v3 + 21503774) + v2) >> 32)) ^ (v2 + 2019))))();
}

uint64_t sub_10002541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v55 = *(STACK[0x4C0] + 16) + *(*(v53 + 8 * (v50 ^ 0x19F5E908u)) + 4 * v52 - 4);
  LODWORD(STACK[0x4D8]) = ((v51 | 0x224) ^ 0xBE3) - 1943 + v55 + 519124304;
  LODWORD(STACK[0x4DC]) = v55 + 1367192334;
  v56 = a50 == 0;
  LOBYTE(STACK[0x4E3]) = v56;
  return (*(v54 + 8 * ((25 * v56) ^ (v51 | 0x224))))();
}

uint64_t sub_1000255D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = a50 == 0;
  LOBYTE(STACK[0x4EF]) = v52;
  return (*(v51 + 8 * ((v52 * (v50 ^ 0x13C)) ^ (v50 + 2668))))();
}

uint64_t sub_1000256A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32)
{
  v34 = v32 - 2728;
  v35 = *a32;
  v36 = LODWORD(STACK[0x4E8]) - 1536193535 + (((v35 ^ 0xB185385) + 1516569891) ^ ((v35 ^ 0x64CE1C7) + 1462876001) ^ ((v35 ^ (v32 - 223657699)) - 1546249445));
  v37 = (v36 ^ 0x67) & (2 * (v36 & 0x76)) ^ v36 & 0x76;
  v38 = ((2 * (v36 ^ 0xEF)) ^ 0x32) & (v36 ^ 0xEF) ^ (2 * (v36 ^ 0xEF)) & 0x98;
  *(a1 + v35) = v36 ^ (2 * (((4 * (v38 ^ 0x89)) ^ 0x60) & (v38 ^ 0x89) & (16 * ((v38 ^ 0x10) & (4 * v37) ^ v37)) ^ (v38 ^ 0x10) & (4 * v37) ^ v37)) ^ 0x76;
  v39 = ((*a32 - LODWORD(STACK[0x4E8]) - 1860862157) ^ 0x6BC1CFD) & (2 * ((*a32 - LODWORD(STACK[0x4E8]) - 1860862157) & 0x94C040FD)) ^ (*a32 - LODWORD(STACK[0x4E8]) - 1860862157) & 0x94C040FD;
  v40 = ((2 * ((*a32 - LOBYTE(STACK[0x4E8]) + 51) ^ 0x75)) ^ 0x10) & ((*a32 - LOBYTE(STACK[0x4E8]) + 51) ^ 0x75) ^ (2 * ((*a32 - LOBYTE(STACK[0x4E8]) + 51) ^ 0x75)) & (((v34 - 17) & 0xBF) - 31);
  *a32 = (((*a32 - LOBYTE(STACK[0x4E8]) + 51) ^ (2 * ((v40 ^ 0x88) & (16 * (v40 & (4 * v39) ^ v39)) & ((4 * (v40 ^ 0x88)) ^ 0x20) ^ v40 & (4 * v39) ^ v39))) & 0x7F ^ 0x7D) + LODWORD(STACK[0x4E8]) - 634765360;
  return (*(v33 + 8 * ((486 * ((STACK[0x4EF] & 1) == 0)) ^ (v34 + 757))))();
}

uint64_t sub_1000266C0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = *(v4 + 8 * v3);
  v6 = a2 - 1780155664;
  *(a1 + v6) = HIBYTE(v2) ^ 0x8B;
  *(a1 + v6 + 1) = BYTE2(v2) ^ 0xEA;
  *(a1 + v6 + 2) = BYTE1(v2) ^ 0xF8;
  *(a1 + v6 + 3) = v2 ^ 0x53;
  return v5();
}

uint64_t sub_100026744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = (-2 - ((~(v52 - 216) | 0x1FA48209635DB907) + ((v52 - 216) | 0xE05B7DF69CA246F8))) ^ 0xE331153E0E0C01BDLL;
  v55 = *(v53 + 8 * (a31 - 50));
  *(v52 - 192) = (a31 - 1747073329) ^ (15981013 * v54);
  *(v52 - 184) = a51 + 9;
  *(v52 - 208) = *(&off_1002A2080 + a31 - 473) - 4;
  *(v52 - 200) = a51 + 9;
  *(v52 - 216) = v55 + 15981013 * v54;
  v56 = (*(v53 + 8 * (a31 + 4279)))(v52 - 216);
  return (*(a32 + 8 * ((3680 * (*v51 > 0x89u)) ^ (((a31 - 231101417) ^ 0xF239AD79) + a31 - 50))))(v56);
}

void sub_100026850(_DWORD *a1)
{
  v1 = (*a1 - 15981013 * ((2 * (a1 & 0x5FD7ABEC) - a1 - 1607969773) ^ 0xCD79ECA9) + 1485415882) & 0xA7764E9D;
  __asm { BRAA            X7, X17 }
}

uint64_t sub_100026B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(a13 + 16) = -v19;
  v24 = *(v20 + 8 * (v22 + 155));
  v25 = v23 - 136;
  v26 = (v23 - 136) | 0x7C1D9246EF27ECABLL;
  *(v23 - 136) = a16;
  *(v23 - 128) = (v22 - 572126933) ^ (737412167 * ((((v23 - 136) | 0x10D81354) - v26 - 282596181) ^ 0xB711ABAA));
  *(v23 - 120) = v24 ^ (737412167 * ((((v23 - 136) | 0x83E26DB910D81354) - v26 + 0x7C1D9246EF27ECABLL) ^ 0xF222DF60B711ABAALL));
  *(v23 - 112) = (737412167 * ((((v23 - 136) | 0x10D81354) - v26 - 282596181) ^ 0xB711ABAA)) ^ 0x5F41C469;
  (*(v20 + 8 * (v22 ^ 0x1320)))(v23 - 136);
  v27 = *(v20 + 8 * (v22 + 125));
  v28 = 737412167 * (((v25 | 0x2AEBC1E6851EF597) - v25 + (v25 & 0xD5143E197AE10A68)) ^ 0x5B2B733F22D74D69);
  *(v23 - 112) = (((((32 * v21) ^ 0xA2EE337D) + 304054473) ^ (((32 * v21) ^ 0x6813FB27) - 656258925) ^ (((9 * (v22 ^ 0x89) - 889341915) ^ (32 * v21)) + 2047638512)) - 1486647185) ^ v28;
  *(v23 - 120) = v27 ^ v28;
  *(v23 - 136) = a16;
  *(v23 - 128) = (v22 - 572126933) ^ v28;
  (*(v20 + 8 * (v22 ^ 0x1320)))(v23 - 136);
  v29 = *(v20 + 8 * v22);
  v30 = 934376741 * (((v25 ^ 0x2904B6E57DD54D2BLL | 0x64753EFA384887CALL) - (v25 ^ 0x2904B6E57DD54D2BLL | 0x9B8AC105C7B77835) - 0x64753EFA384887CBLL) ^ 0x75AD3556CE93C282);
  *(v23 - 128) = a18;
  *(v23 - 120) = &a19;
  *(v23 - 136) = v22 - v30 + 2091604647;
  *(v23 - 112) = v29 - v30;
  (*(v20 + 8 * (v22 ^ 0x1339)))(v23 - 136);
  v31 = *(v20 + 8 * (v22 ^ 0xEALL));
  *(v23 - 104) = -1229068438 - 15981013 * ((((2 * (v23 - 136)) | 0x74F441A) - (v23 - 136) - 61317645) ^ 0x6EF61AB7) + v22 + 106;
  *(v23 - 120) = v31 - 15981013 * ((((2 * (v23 - 136)) | 0x665FF816074F441ALL) - (v23 - 136) + 0x4CD003F4FC585DF3) ^ 0x4FBA6B3C6EF61AB7);
  *(v23 - 112) = a18;
  *(v23 - 136) = a16;
  v32 = (*(v20 + 8 * (v22 ^ 0x13CB)))(v23 - 136);
  return (*(v20 + 8 * ((1993 * (*(v23 - 128) > 0x27791D9Du)) ^ (v22 + 2734))))(v32);
}

uint64_t sub_100026E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v24 = *(v21 + 8 * (v22 - 3719)) - ((2 * (v19 & 0x785B2424C5318D48) - v19 - 0x785B2424C5318D4BLL) ^ 0x7B314CEC579FCA0FLL) * v20;
  *(v23 - 104) = v22 - 3719 + -1229068438 - ((2 * (v19 & 0xC5318D48) - v19 + 986608309) ^ 0x579FCA0F) * v20;
  *(v23 - 120) = v24;
  *(v23 - 112) = &a19;
  *(v23 - 136) = a16;
  v25 = (*(v21 + 8 * (v22 ^ 0x2BA)))(v23 - 136);
  return (*(v21 + 8 * (((*(v23 - 128) <= ((v22 + 1171469690) & 0xBA2CBBFE) + 662248431) * (((v22 + 1119272392) & 0xBD4933FE) - 495)) ^ (v22 - 2208))))(v25);
}

uint64_t sub_100026FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a21 = *(v27 + 8 * v26);
  a22 = v29;
  a25 = a16;
  *(v30 - 136) = &a21;
  *(v30 - 128) = (v26 - 193652704) ^ (1424120303 * (((v25 | 0xA319EE38) - (v25 & 0xA319EE38)) ^ 0xE25D73EE));
  v31 = (*(v27 + 8 * (v26 + 4210)))(v30 - 136);
  return (*(v27 + 8 * ((((v26 - 59) ^ 0x1613 ^ (5 * (v26 ^ 0x1AA))) * (v28 == 1)) ^ (v26 + 1436))))(v31);
}

uint64_t sub_1000270B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = ((0x291B934ED08F06A1 - (v18 | 0x291B934ED08F06A1) + a11) ^ 0x2A71FB86422141E4) * v22;
  v25 = *(v20 + 8 * v19) - v24;
  *(v23 - 136) = v21;
  *(v23 - 120) = v25;
  *(v23 - 112) = a18;
  *(v23 - 104) = -1229068438 - v24 + v19;
  v26 = (*(v20 + 8 * (v19 + 4321)))(v23 - 136);
  return (*(v20 + 8 * ((((*(v23 - 128) - 662248863) < 0xE43F54BB) * (v19 ^ 0x1B4)) ^ (v19 + 3836))))(v26);
}

uint64_t sub_100027178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = *(v21 + 8 * v19);
  *(v24 - 136) = v22;
  *(v24 - 128) = (v19 - 572127058) ^ v23;
  *(v24 - 120) = v25 ^ v23;
  *(v24 - 112) = ((v20 ^ 0xFCDF6465) + ((2 * v20) & 0xF9BEC8CA) + (v19 ^ 0x5B75DE01)) ^ v23;
  (*(v21 + 8 * (v19 ^ 0x13A5)))(v24 - 136);
  v26 = *(v21 + 8 * (v19 ^ 0x6F));
  v27 = 15981013 * ((~(v18 | 0x81EA656D3E63633ALL) + (v18 & 0x81EA656D3E63633ALL)) ^ 0x82800DA5ACCD247FLL);
  *(v24 - 104) = -1229068438 - v27 + (v19 ^ 0x6F);
  *(v24 - 136) = a16;
  *(v24 - 120) = v26 - v27;
  *(v24 - 112) = a18;
  v28 = (*(v21 + 8 * (v19 ^ 0x134E)))(v24 - 136);
  return (*(v21 + 8 * (v19 ^ 0xA33 ^ ((*(v24 - 128) > 0x27791D9Du) * ((v19 ^ 0x11F4) - 2590)))))(v28);
}

uint64_t sub_1000272D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = (v20 - 960214668) & 0x393BBDD7;
  *(v21 - 112) = *(v19 + 8 * v20) - 934376741 * ((v18 - 2 * (v18 & 0xCDE16D7A410F6451) - 0x321E9285BEF09BAFLL) ^ 0xF53DD033CA016C32);
  *(v21 - 128) = a17;
  *(v21 - 120) = a18;
  *(v21 - 136) = 2091604647 - 934376741 * ((v18 - 2 * (v18 & 0x410F6451) + 1091527761) ^ 0xCA016C32) + v20;
  v23 = (*(v19 + 8 * (v20 + 4409)))(v21 - 136);
  v24 = (((a13 ^ 0xFD469BDE) + 1303849068) ^ ((a13 ^ 0xA762F031) + 395527045) ^ ((a13 ^ 0x5A246BEF) - 355086389 + v22)) + 2119211969;
  v25 = v24 >= -1354608777 && v24 < 792874872;
  return (*(v19 + 8 * ((v25 * (((v22 - 1872) | 4) ^ 0x661)) | v22)))(v23);
}

uint64_t sub_10002743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = *(v20 + 8 * v19);
  v23 = 934376741 * ((2 * ((v21 - 136) & 0x64A99029FF9D1460) - (v21 - 136) + 0x1B566FD60062EB99) ^ 0x238AD29F8B6CE3FALL);
  *(v21 - 136) = 2091604647 - v23 + v19;
  *(v21 - 112) = v22 - v23;
  *(v21 - 128) = a18;
  *(v21 - 120) = &a19;
  (*(v20 + 8 * (v19 + 4409)))(v21 - 136);
  v24 = *(v20 + 8 * (((((v19 - 291) | 0x1014) ^ 0xFFFFE318) + ((v19 + 282242613) & 0xEF2D5DDE)) ^ v19));
  v25 = 737412167 * ((v21 - 136) ^ 0x71C0B2D9A7C9B8FELL);
  *(v21 - 128) = (v19 - 572126933) ^ v25;
  *(v21 - 120) = v24 ^ v25;
  *(v21 - 136) = a17;
  *(v21 - 112) = v25 ^ 0x58554426;
  (*(v20 + 8 * (v19 + 4384)))(v21 - 136);
  v26 = *(v20 + 8 * (v19 ^ 0xEALL));
  v27 = 15981013 * ((((v21 - 136) ^ 0x80260129501301AALL) & 0xD12781295C13A1AELL | ((v21 - 136) ^ 0x22504EC400480A01) & 0x2ED87ED6A3EC5E51) ^ 0x5EE3D8DA3D0AB311);
  *(v21 - 104) = -1229068438 - v27 + v19 + 106;
  *(v21 - 136) = a17;
  *(v21 - 120) = v26 - v27;
  *(v21 - 112) = a18;
  v28 = (*(v20 + 8 * (v19 + 4427)))(v21 - 136);
  return (*(v20 + 8 * ((228 * (*(v21 - 128) > 0x27791D9Du)) ^ (v19 + 1327))))(v28);
}

uint64_t sub_10002765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = *(v19 + 8 * (v20 - 3719));
  v23 = 15981013 * ((0x8F962C0953D4D5A2 - ((v21 - 136) | 0x8F962C0953D4D5A2) + ((v21 - 136) | 0x7069D3F6AC2B2A5DLL)) ^ 0x8CFC44C1C17A92E7);
  *(v21 - 104) = v20 - 3719 + -1229068438 - v23;
  *(v21 - 136) = a17;
  *(v21 - 120) = v22 - v23;
  *(v21 - 112) = &a19;
  v24 = (*(v19 + 8 * (v20 + 602)))(v21 - 136);
  return (*(v19 + 8 * (((*(v21 - 128) > (v20 + 662244712)) * (((v20 - 3757) | 0x26) + 1889)) ^ (v20 - 2355))))(v24);
}

uint64_t sub_100027844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a21 = *(v27 + 8 * v26);
  a22 = v28;
  a25 = a17;
  *(v29 - 128) = (v26 - 193652704) ^ (1424120303 * ((-2076494419 - ((v29 - 136) | 0x843B35AD) + ((v29 - 136) | 0x7BC4CA52)) ^ 0x3A805784));
  *(v29 - 136) = &a21;
  v30 = (*(v27 + 8 * (v26 + 4210)))(v29 - 136);
  return (*(v27 + 8 * ((7 * (v25 == 1)) ^ v26 ^ 0x73F ^ (215 * (v26 ^ 0x1FE)) ^ 0x6F)))(v30);
}

uint64_t sub_100027918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = *(v18 + 8 * v19);
  *(v21 - 104) = -1229068438 - a11 + v19;
  *(v21 - 136) = v20;
  *(v21 - 120) = v22 - a11;
  *(v21 - 112) = a18;
  v23 = (*(v18 + 8 * (v19 ^ 0x1321)))(v21 - 136);
  return (*(v18 + 8 * (v19 ^ 0x34E ^ (4034 * (*(v21 - 128) == v19 + 662248433)))))(v23);
}

uint64_t sub_1000279A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = (v19 - 321) | 0x12E;
  v26 = *(v21 + 8 * v19);
  *(v24 - 136) = v23;
  *(v24 - 120) = v26 ^ v22;
  *(v24 - 128) = (v19 - 572127058) ^ v22;
  *(v24 - 112) = (v25 + (v20 ^ 0xDCFF6C37) + ((2 * v20) & 0xB9FED86E) + 2069222976) ^ v22;
  (*(v21 + 8 * (v19 ^ 0x13A5)))(v24 - 136);
  v27 = *(v21 + 8 * v25) - a16;
  *(v24 - 104) = a15 + v25;
  *(v24 - 120) = v27;
  *(v24 - 112) = a19;
  *(v24 - 136) = a18;
  v28 = (*(v21 + 8 * (v25 ^ 0x1321)))(v24 - 136);
  return (*(v21 + 8 * (v25 ^ 0x7E7 ^ ((*(v24 - 128) <= (v25 + 662248431)) * (((v25 + 618) | 0x940) - 3358)))))(v28);
}

uint64_t sub_100027B04@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (a1 ^ 0x32) + 61;
  v16 = -24 * (a1 ^ 0x32);
  v17 = a1 - 3287;
  *(v14 - 104) = a1 + 25056313 * ((~((v14 - 136) | 0xE6F09EA) + ((v14 - 136) & 0xE6F09EA)) ^ 0x70AD2F9D) + 1998369189;
  *(v14 - 136) = a7;
  *(v14 - 128) = a11;
  *(v14 - 120) = a11;
  *(v14 - 112) = a12;
  v18 = (*(v12 + 8 * (a1 | 0x28A)))(v14 - 136);
  return (*(v12 + 8 * ((253 * (((v13 >> 1 >> (v15 ^ 0x1D ^ v16)) & a6) != 0)) ^ v17)))(v18);
}

uint64_t sub_100027CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = 737412167 * ((0x2A590820EBEF281ALL - (v23 | 0x2A590820EBEF281ALL) + a11) ^ 0xA4664506B3D96F1BLL);
  *(v25 - 120) = *(v21 + 8 * (v20 + 125)) ^ v26;
  *(v25 - 112) = v26 ^ 0x58554426;
  *(v25 - 136) = v22;
  *(v25 - 128) = (v20 - 572126933) ^ v26;
  (*(v21 + 8 * (v20 + 4384)))(v25 - 136);
  v27 = *(v21 + 8 * v20);
  *(v25 - 136) = 2091604647 - a10 + v20;
  *(v25 - 112) = v27 - a10;
  *(v25 - 128) = a18;
  *(v25 - 120) = &a19;
  (*(v21 + 8 * (v20 + 4409)))(v25 - 136);
  v28 = *(v21 + 8 * (v20 + 106));
  v29 = ((0x7104CE1C9BFF63E8 - (v23 | 0x7104CE1C9BFF63E8) + a9) ^ 0x726EA6D4095124ADLL) * v19;
  *(v25 - 104) = v24 - v29 + v20 + 106;
  *(v25 - 120) = v28 - v29;
  *(v25 - 112) = a18;
  *(v25 - 136) = v22;
  v30 = (*(v21 + 8 * (v20 + 4427)))(v25 - 136);
  return (*(v21 + 8 * (((*(v25 - 128) > 0x27791D9Du) * ((v20 ^ 0xEA) - 233)) ^ (v20 | 0x21A))))(v30);
}

uint64_t sub_100027E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = (v19 - 63) | 0x2C;
  v25 = *(v20 + 8 * v19);
  v26 = 737412167 * (((v21 | 0x8B6B065F007641BDLL) - (v21 & 0x8B6B065F007641BDLL)) ^ 0xFAABB486A7BFF943);
  *(v23 - 136) = v22;
  *(v23 - 112) = ((v24 ^ 0x78F5FCC8) + (v18 ^ 0xDF5F46BF) + ((2 * v18) & 0xBEBE8D7E)) ^ v26;
  *(v23 - 128) = (v19 - 572127058) ^ v26;
  *(v23 - 120) = v25 ^ v26;
  (*(v20 + 8 * (v19 ^ 0x13A5)))(v23 - 136);
  v27 = 15981013 * (((v21 | 0x6F3683C3EB6C2295) - (v21 & 0x6F3683C3EB6C2295)) ^ 0x93A314F4863D9A2FLL);
  *(v23 - 120) = *(v20 + 8 * v24) - v27;
  *(v23 - 112) = a18;
  *(v23 - 136) = a17;
  *(v23 - 104) = -1229068438 - v27 + v24;
  v28 = (*(v20 + 8 * (v24 ^ 0x1321)))(v23 - 136);
  return (*(v20 + 8 * (((*(v23 - 128) > 0x27791D9Du) * ((v24 + 2986) ^ 0xD9D)) ^ (v24 + 432))))(v28);
}

uint64_t sub_10002800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = (((v23 | 0x29D05053937972FLL) - (v23 & 0x29D05053937972FLL)) ^ 0xFE08923254662F95) * v19;
  *(v25 - 120) = *(v20 + 8 * v22) - v26;
  *(v25 - 136) = v21;
  *(v25 - 112) = &a19;
  *(v25 - 104) = v24 - v26 + v22;
  v27 = (*(v20 + 8 * (v22 + 4321)))(v25 - 136);
  v28 = *(v25 - 128) > (((v22 - 110) | 0xBC) ^ 0x27791C61u);
  return (*(v20 + 8 * (v22 ^ 0x691 ^ ((16 * v28) | (v28 << 6)))))(v27);
}

uint64_t sub_1000280D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a21 = *(v26 + 8 * v25);
  a22 = v30;
  a25 = v27;
  *(v31 - 136) = &a21;
  *(v31 - 128) = (v25 - 193652704) ^ (1424120303 * ((~(v28 | 0x150D76CA) + (v28 & 0x150D76CA)) ^ 0xABB614E3));
  v32 = (*(v26 + 8 * (v25 + 4210)))(v31 - 136);
  return (*(v26 + 8 * (((v25 + 1848) * (v29 == 1)) ^ (v25 + v25 - 59 + 898))))(v32);
}

uint64_t sub_100028188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = *(v19 + 8 * v20);
  *(v22 - 104) = v18 - a16 + v20;
  *(v22 - 120) = v23 - a16;
  *(v22 - 112) = a18;
  *(v22 - 136) = v21;
  v24 = (*(v19 + 8 * (v20 + 4321)))(v22 - 136);
  return (*(v19 + 8 * (v20 ^ 0x94D ^ (1802 * (*(v22 - 128) == ((v20 + 19) ^ 0x27791C5E))))))(v24);
}

uint64_t sub_100028248(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1002A2080 + ((-73 * (dword_1002B0028 ^ 0x9A ^ dword_1002B00C0)) ^ byte_100258FD0[byte_100270100[(-73 * (dword_1002B0028 ^ 0x9A ^ dword_1002B00C0))] ^ 0xEF]) + 38);
  v3 = *(v2 - 4);
  v4 = *(&off_1002A2080 + (byte_100261704[(byte_1002591D4[(-73 * ((dword_1002B00C0 - v3) ^ 0x9A)) - 4] ^ 0x76) - 4] ^ (-73 * ((dword_1002B00C0 - v3) ^ 0x9A))) - 88);
  v5 = v3 - &v9 + *(v4 - 4);
  *(v2 - 4) = 1938036407 * v5 - 0x3EC1FB4DA917549ALL;
  *(v4 - 4) = 1938036407 * (v5 ^ 0x3EC1FB4DA917549ALL);
  v6 = *(&off_1002A2080 + ((-73 * ((dword_1002B00C0 + dword_1002B0028) ^ 0x9A)) ^ byte_1002590D0[byte_100270200[(-73 * ((dword_1002B00C0 + dword_1002B0028) ^ 0x9A))] ^ 0x41]) - 138);
  v7 = 15981013 * (((&v10 | 0x97BB4C356DAC3C6DLL) - (&v10 & 0x97BB4C356DAC3C6DLL)) ^ 0x6B2EDB0200FD84D7);
  v12 = *(v6 + 3608) - v7;
  v13 = a2;
  v14 = -1229068008 - v7;
  v10 = a1;
  (*(v6 + 8 * ((byte_1002590D4[(byte_100270200[(-73 * (*(v2 - 4) ^ 0x9A ^ *(v4 - 4)))] ^ 0xE6) - 4] ^ (-73 * (*(v2 - 4) ^ 0x9A ^ *(v4 - 4)))) + 4521)))(&v10);
  return v11;
}

uint64_t sub_100028514()
{
  v7 = v6 - 144;
  *(v6 - 136) = v6 - 164;
  *(v6 - 128) = v0;
  *(v6 - 144) = v5 - 1424120303 * (((v6 - 144) & 0x6AFAEFA0 | ~((v6 - 144) | 0x6AFAEFA0)) ^ 0xD4418D89) + v4 + 2461;
  (*(v1 + 8 * (v4 - 2091600239)))(v6 - 144);
  v8 = *(v1 + 8 * (v5 + v4 + 717));
  v9 = 957051079 * ((v6 - 144) ^ 0xBB29D441E7AEAC38);
  v10 = v9 + *(v0 + 96) - ((2 * *(v0 + 96)) & 0x6934E6D6) - 1264946325;
  *(v6 - 120) = v4 - v9 - 1820022844;
  *(v6 - 116) = v10;
  *(v6 - 136) = v0;
  *(v6 - 128) = v8 - v9;
  (*(v1 + 8 * (v4 ^ (v2 - 30))))(v6 - 144);
  v11 = v5 + v4 + 724;
  v12 = *(v1 + 8 * v11);
  v13 = 1815485821 * ((v7 - 2 * (v7 & 0xF00C14E4C4907E3FLL) - 0xFF3EB1B3B6F81C1) ^ 0xF7BD4E9EAFAAED5BLL);
  *(v6 - 144) = v4 + 47559940 - v13;
  *(v6 - 112) = v0 + 100;
  *(v6 - 120) = v13 ^ 0x896B812;
  *(v6 - 136) = v0;
  *(v6 - 128) = v12 + v13;
  (*(v1 + 8 * (v4 ^ v2)))(v6 - 144);
  v14 = (*(v0 + 92) ^ 0x38BEFFFA) - 807946280 + ((2 * *(v0 + 92)) & 0x717DFFF4);
  v15 = 1815485821 * ((2 * (v7 & 0x241F7BD27933EBE0) - v7 - 0x241F7BD27933EBE2) ^ 0xDC51DE57EDF6877ALL);
  v16 = *(v1 + 8 * v11) + v15;
  *(v6 - 136) = v0;
  *(v6 - 128) = v16;
  *(v6 - 112) = v6 - 164;
  *(v6 - 120) = v14 ^ v15;
  *(v6 - 144) = v4 + 47559940 - v15;
  (*(v1 + 8 * (v4 ^ v2)))(v6 - 144);
  v17 = 15981013 * ((v7 - 2 * (v7 & 0x8E6AB691616E321) + 0x8E6AB691616E321) ^ 0xF4733C5E7B475B9BLL);
  *(v6 - 128) = *(v1 + 8 * (v5 + v4 + 681)) - v17;
  *(v6 - 120) = v3;
  *(v6 - 144) = v0;
  *(v6 - 112) = v4 - v17 + 974294317;
  return (*(v1 + 8 * (v4 ^ (v2 - 41))))(v6 - 144);
}

uint64_t sub_100029BDC()
{
  result = (*(v2 + 8 * (v4 ^ (v3 - 30))))(v1);
  *(v0 + 24) = -311651065;
  return result;
}

void sub_10002A74C(uint64_t a1)
{
  v1 = *(a1 + 16) + 957051079 * (a1 ^ 0xE7AEAC38);
  __asm { BRAA            X12, X17 }
}

void sub_10002C04C(_DWORD *a1)
{
  v1 = *a1 + 1151317067 * ((-2 - ((a1 | 0x96EE8521) + (~a1 | 0x69117ADE))) ^ 0x430FE450);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10002C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(a1 + 8);
  if (v23)
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  return (*(v24 + 8 * ((v27 * ((((v22 ^ 0x17D) + 1392472011) & 0xAD008ECF) - 1540)) ^ v22 ^ 0x17D)))(a1, v25, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10002C164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = *(a1 + 8);
  if (v47)
  {
    v50 = v49 == 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = !v50;
  LODWORD(a31) = -42900;
  return (*(v48 + 8 * ((v51 * (((((2 * (v46 ^ 0x543)) ^ 0x1E9) + 1392472011) & 0xAD008ECF) - 1540)) ^ (2 * (v46 ^ 0x543)) ^ 0x1E9)))(a1, v49, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10002C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = ((((v23 + v22) ^ 0x21016173) - 553738611) ^ (((v23 + v22) ^ 0xB01136FE) + 1341049090) ^ (((v23 + v22) ^ 0x122D505C) - 304959580)) - 205611265;
  v27 = ((v26 ^ 0x40F68CB9) - 813112215) ^ v26 ^ ((v26 ^ 0x55EE1619) - 628064567) ^ ((v26 ^ 0x1A66F269) - 1793549639) ^ ((v26 ^ 0x7FFFFFE7) - 259942601);
  v29 = (v27 & 0xF) == 0xE && v27 != ((v24 - 1711422594) & 0x660237FD ^ 0x708190D3);
  return (*(v25 + 8 * ((v29 * (((v24 - 3187) | 0x600) - 1512)) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10002C31C@<X0>(_BYTE *a1@<X1>, _BYTE *a2@<X8>)
{
  v20 = a2[11];
  v22 = v3;
  v4 = a1[8] ^ a2[8];
  v5 = a1[12] ^ a2[12];
  v6 = a1[13] ^ a2[13];
  v7 = a1[10] ^ a2[10];
  v8 = a1[14] ^ a2[14];
  v9 = a1[15] ^ a2[15];
  v10 = a1[9] ^ a2[9];
  v11 = *(&off_1002A2080 + ((v2 - 495) ^ 0x707)) - 4;
  v12 = a1[11] ^ v20;
  v13 = *&v11[8 * ((a1[8] ^ a2[8]) ^ 0x1A6)];
  v19 = a1[7] ^ a2[7];
  v14 = v5 ^ v19 ^ v8 ^ v12 ^ v10 ^ (v19 - ((2 * v19) & 0xFFFFFFF3) + 121) ^ v4 ^ v6 ^ v9 ^ 0x79 ^ *&v11[8 * ((a1[1] ^ a2[1]) ^ 0xA7)] ^ *&v11[8 * (((v2 + 3) | 0xA6u) ^ 0x902 ^ (a1[2] ^ a2[2]))] ^ *&v11[8 * (*a1 ^ *a2 ^ (83 * ((v2 + 17) ^ 0xC)))] ^ *&v11[8 * ((a1[3] ^ a2[3]) ^ 0xA5)] ^ *&v11[8 * ((a1[4] ^ a2[4]) ^ 0xA2)] ^ *&v11[8 * ((a1[5] ^ a2[5]) ^ 0xA3)] ^ *&v11[8 * ((a1[6] ^ a2[6]) ^ 0xA0)] ^ *&v11[8 * (v19 ^ 0x1A1)];
  v15 = v7 ^ v5 ^ v8 ^ v12 ^ v10 ^ v6 ^ v9 ^ *&v11[8 * (v7 ^ 0x1A4)] ^ *&v11[8 * (v10 ^ 0xA7)] ^ *&v11[8 * ((a1[11] ^ v20) ^ 0x1A5)] ^ *&v11[8 * (v5 ^ 0xA2)] ^ *&v11[8 * (v6 ^ 0x1A3)] ^ *&v11[8 * (v8 ^ 0xA0)] ^ *&v11[8 * (v9 ^ 0x1A1)] ^ ((-v14 ^ ((v4 ^ v13 ^ 4) - (v14 ^ v4 ^ v13 ^ 4)) ^ 0x32 ^ (v14 - ((2 * v14) & 0x64) + 50)) + (v4 ^ v13 ^ 4));
  v21 = *(&off_1002A2080 + v2 - 1987) - 4;
  v16 = (v21[(v15 ^ v7) ^ 0xBFLL] + 29);
  v17 = ((v16 << 8) ^ 0xB790A0F39A2FCE4ALL) & (v16 ^ 0xF7B7F6F7BBFFFF7DLL) | (v21[(v15 ^ v7) ^ 0xBFLL] + 29) & 0xB5;
  return (*(v22 + 8 * (v2 + 1493)))((((v17 << 16) ^ 0x9BCBEBEDBB944481) & (v17 ^ 0x486F5F0C65D01E68) ^ v17 & 0x48080311824BB7ELL) & 0x6FBEF2D2BBC66E9DLL);
}

uint64_t sub_10002C808@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v48 + 276;
  v51 = ~a3 & 0x20;
  if ((v51 & a20) != ((v48 + 20) ^ 0xBA))
  {
    v51 = -v51;
  }

  LODWORD(a23) = *(a44 + (a3 & 0xDF ^ 0xFAu ^ (v51 + a20) ^ 0x30)) + 29;
  LODWORD(a25) = *(a44 + ((a12 ^ a3) ^ 7)) + 29;
  LODWORD(a27) = *(a44 + ((a9 ^ a3) ^ 0xA9));
  LODWORD(a28) = *(a44 + ((a8 ^ a3) ^ 0x1FLL)) + 29;
  v52 = ((*(a44 + (a32 ^ 0xBBLL)) + 29) ^ (*(a44 + ((a19 ^ a3) ^ 0x1ALL)) + 29));
  v53 = (((*(a44 + (a24 ^ 0xBBLL)) + 29) ^ (*(a44 + ((a16 ^ a3) ^ 0x68)) + 29)) << 24) & 0x19000000;
  v54 = (*(a44 + ((a13 ^ v47) ^ 0x80)) << 24) + 486539264;
  v55 = ((((*(a44 + (a34 ^ 0xBBLL)) + 29) ^ (*(a44 + ((a15 ^ a3) ^ 0x8ELL)) + 29)) << 8) ^ 0x699A7A95) & (v54 & 0xBFFFFFFF ^ 0xFCDEFF97) | v54 & 0x96000000;
  v56 = ((*(a44 + (a2 ^ 0xBBLL)) + 29) ^ a25);
  v57 = ((((*(a44 + (a26 ^ 0xBBLL)) + 29) ^ (*(a44 + ((a14 ^ a3) ^ 0xAALL)) + 29)) ^ 0xEC5CE5F5) & (~v54 | 0xBFFFFFFF) ^ 0x6A7FEA7C) & (v55 ^ 0x131456A) ^ v55 & 0x7998F014;
  v58 = v57 ^ 0x448000;
  v59 = v57 & 0xDAA8366E;
  v60 = a29 & 7 ^ 0x840874EA;
  v61 = v46 ^ a1 ^ 0xD0D86885A29D22FBLL;
  v62 = (((1 << ((v50 ^ 0xC9) - 112)) ^ 0x848C75FF) & v60 | 0x28608000) ^ ((1 << ((v50 ^ 0xC9) - 112)) ^ 0x848C75FF) & 0x840112;
  v63 = v61 ^ (v60 & 0x848C75FF | 0x28608000) ^ 0xAC68F4ED ^ *(v49 + 8 * ((v60 & 0x848C75FF | 0x28608000) ^ 0xAC68F54B));
  v64 = v61 ^ v62 ^ 0xACECF5FF;
  v65 = v64 ^ *(v49 + 8 * (v62 ^ 0xACECF459));
  *(v45 + 8 * (((a29 & 0xF8) >> 3) ^ 0x12u)) = v63;
  *(v45 + 8 * (((a29 & 0xF8) >> 3) ^ 0x13u)) = v65;
  return (*(a45 + 8 * v50))(v63, v61, v52, v58, v59, v53, v56, v64, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_10002CF8C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, int a44, int a45, int a46, unsigned __int8 a47, int a48, _BYTE *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(a31) = 0;
  v60 = (((((v59 + 894543556) ^ (a3 << 8)) & v56 | v57) ^ 0x53674C78) & v58 | a6) ^ 0xCB4348B2;
  v61 = a5 ^ 0xBFDF7D93 ^ ((a7 << ((v59 - 101) ^ 0x1E)) ^ 0x2553C991) & a4;
  v62 = a43 ^ 0x439C0633 ^ a45 & ((a41 << 24) ^ 0x21F40C85u);
  v63 = *(a11 + BYTE2(v62));
  v64 = *(a11 + BYTE2(v60));
  v65 = *(a11 + (v62 >> 24));
  v66 = *(a11 + (v60 >> 24));
  v67 = *(&off_1002A2080 + v59 - 1902) - 12;
  v68 = (*&v67[8 * (*(a11 + v55) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(a11 + (a43 ^ 0x33 ^ a45 & 0x85u)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + BYTE1(v61)) ^ 0xDLL)] >> 16);
  v69 = (*&v67[8 * (*(a11 + BYTE1(v60)) ^ 0xDLL)] >> 16) ^ ((*&v67[8 * (v63 ^ 0xD)] ^ ((v63 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + (v61 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(a11 + BYTE2(v55)) ^ 0xDLL) + 4] ^ 0xD548737;
  v70 = (*&v67[8 * (*(a11 + (a5 ^ 0x93 ^ ((a7 << ((v59 - 101) ^ 0x1E)) ^ 0x91u) & a4)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(a11 + (v55 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v65 ^ 0xD) + 4] ^ 0x6741A85F ^ ((*&v67[8 * (v64 ^ 0xD)] ^ ((v64 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v71 = v68 ^ 0x66279A1E ^ ((*&v67[8 * (v66 ^ 0xD)] ^ ((v66 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v72 = *(a11 + ((WORD1(*&v67[8 * (*(a11 + v61) ^ 0xDLL)]) ^ (*&v67[8 * (*(a11 + (v55 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v65 ^ 0xD) + 4] ^ 0xA85F ^ ((*&v67[8 * (v64 ^ 0xD)] ^ ((v64 ^ 0x60) - 1945587024)) >> 8)) >> 8));
  v73 = *(a11 + BYTE2(v70));
  v74 = (*&v67[8 * (*(a11 + ((a43 ^ 0x633 ^ a45 & 0xC85) >> 8)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (*(a11 + BYTE1(v55)) ^ 0xDLL)] >> 16) ^ ((*&v67[8 * (*(a11 + BYTE2(v61)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v61)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0xD7AD0D77 ^ *&v67[8 * (*(a11 + v60) ^ 0xDLL) + 4];
  v75 = *(a11 + BYTE2(v74));
  v76 = *(a11 + (v74 >> 24));
  v77 = *(a11 + (BYTE3(*&v67[8 * (*(a11 + ((a43 ^ 0x633 ^ a45 & 0xC85) >> 8)) ^ 0xDLL)]) ^ BYTE2(*&v67[8 * (*(a11 + BYTE1(v55)) ^ 0xDLL)]) ^ ((*&v67[8 * (*(a11 + BYTE2(v61)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v61)) ^ 0x60) - 19792)) >> 8) ^ 0x77 ^ v67[8 * (*(a11 + v60) ^ 0xDLL) + 4]));
  v78 = *(a11 + (((*&v67[8 * (*(a11 + ((a43 ^ 0x633 ^ a45 & 0xC85) >> 8)) ^ 0xDLL)] >> 24) ^ WORD1(*&v67[8 * (*(a11 + BYTE1(v55)) ^ 0xDLL)]) ^ ((*&v67[8 * (*(a11 + BYTE2(v61)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v61)) ^ 0x60u) - 1945587024)) >> 8) ^ 0xD77 ^ *&v67[8 * (*(a11 + v60) ^ 0xDLL) + 4]) >> 8));
  v79 = *(a11 + v70);
  v80 = ((*&v67[8 * (v77 ^ 0xD)] ^ ((v77 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(a11 + (((*&v67[8 * (*(a11 + v55) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(a11 + (a43 ^ 0x33 ^ a45 & 0x85u)) ^ 0xDLL) + 4] ^ WORD1(*&v67[8 * (*(a11 + BYTE1(v61)) ^ 0xDLL)]) ^ 0x9A1E ^ ((*&v67[8 * (v66 ^ 0xD)] ^ ((v66 ^ 0x60) - 1945587024)) >> 8)) >> 8)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + v69) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(a11 + (v70 >> 24)) ^ 0xDLL)] >> 24);
  LODWORD(v70) = ((*&v67[8 * (v78 ^ 0xD)] ^ ((v78 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + BYTE1(v69)) ^ 0xDLL)] >> 16);
  LODWORD(v79) = (*&v67[8 * (v79 ^ 0xD)] >> 24) ^ *&v67[8 * (*(a11 + BYTE2(v71)) ^ 0xDLL) + 4];
  v81 = (*&v67[8 * (v72 ^ 0xD)] >> 16) ^ ((*&v67[8 * (*(a11 + BYTE2(v69)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v69)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + (v71 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v75 ^ 0xD) + 4] ^ 0xEE8C9A42;
  v82 = *&v67[8 * (*(a11 + (v68 ^ 0x1Eu ^ ((*&v67[8 * (v66 ^ 0xD)] ^ ((v66 ^ 0x60) - 19792)) >> 8))) ^ 0xDLL) + 4] ^ (*&v67[8 * (v73 ^ 0xD)] >> 24) ^ ((*&v67[8 * (v76 ^ 0xD)] ^ ((v76 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + (v69 >> 24)) ^ 0xDLL)] >> 16) ^ 0xE77FC5C1;
  v83 = v80 ^ 0xB6332C08;
  v84 = v70 ^ v79 ^ 0x1517AEE2;
  v85 = *(a11 + (v84 >> 24));
  v86 = *(a11 + ((v70 ^ v79) ^ 0xE2u));
  v87 = *(a11 + BYTE1(v82));
  v88 = *(a11 + BYTE1(v84));
  v89 = *&v67[8 * (*(a11 + BYTE2(v81)) ^ 0xDLL)];
  LODWORD(v84) = ((*&v67[8 * (*(a11 + BYTE1(v81)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v81)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(a11 + BYTE2(v84)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + BYTE2(v82)) ^ 0xDLL)] >> 16);
  v90 = *&v67[8 * (*(a11 + (v82 >> 24)) ^ 0xDLL) + 4] ^ (v89 >> 24) ^ ((*&v67[8 * (*(a11 + BYTE1(v83)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v83)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v85 ^ 0xD)] >> 16) ^ 0x74A5C453;
  v91 = ((*&v67[8 * (*(a11 + BYTE2(v83)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v83)) ^ 0xFA24541E5DLL) + 0xA967B49475 + ((2 * *(a11 + BYTE2(v83))) & 0x76 ^ 0x44uLL))) >> 8) ^ *&v67[8 * (*(a11 + v82) ^ 0xDLL) + 4] ^ (*&v67[8 * (v86 ^ 0xD)] >> 16) ^ (*&v67[8 * (*(a11 + (v81 >> 24)) ^ 0xDLL)] >> 24) ^ 0x413A3C0D;
  v92 = *(v54 + (v67[8 * (*(a11 + (v82 >> 24)) ^ 0xDLL) + 4] ^ BYTE3(v89) ^ ((*&v67[8 * (*(a11 + BYTE1(v83)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v83)) ^ 0x60) - 19792)) >> 8) ^ WORD1(*&v67[8 * (v85 ^ 0xD)]) ^ 0x53));
  v93 = ((*&v67[8 * (v88 ^ 0xD)] ^ ((v88 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(a11 + (v83 >> 24)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + v81) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (v87 ^ 0xD)] >> 24) ^ 0x1B1F04C0;
  v94 = v84 ^ (*&v67[8 * (*(a11 + (v80 ^ 8u)) ^ 0xDLL)] >> 24) ^ 0x241F4259;
  v95 = *(v54 + v94);
  v96 = *(v54 + (v91 >> 24));
  v97 = *(v54 + BYTE1(v94));
  v98 = *(v54 + BYTE2(v93));
  v99 = *(v54 + BYTE1(v90));
  v100 = *(v54 + BYTE2(v94));
  LODWORD(v92) = (*&v67[8 * (*(v54 + BYTE2(v91)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (v92 ^ 0xD)] >> 16);
  v101 = ((2 * *&v67[8 * (v95 ^ 0xD)]) & 0xB5155E1A706AC7F4 ^ 0x4AFAE3FFDFD5B9AFLL) + 0x55113D8D8FD29F28 + (((*&v67[8 * (v95 ^ 0xD)] ^ 0x6013F9EE3CDC66DDLL) - 0x6013F9EE3CDC66DDLL) ^ ((*&v67[8 * (v95 ^ 0xD)] ^ 0x49FC19CB1BC0325FLL) - 0x49FC19CB1BC0325FLL) ^ ((*&v67[8 * (v95 ^ 0xD)] ^ 0xD3696EA570816FAFLL) + 0x2C96915A8F7E9051));
  LODWORD(v88) = *&v67[8 * (*(v54 + v91) ^ 0xDLL) + 4];
  LODWORD(v94) = *&v67[8 * (*(v54 + (v94 >> 24)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE1(v91)) ^ 0xDLL)] >> 16);
  v102 = ((*&v67[8 * (v96 ^ 0xD)] ^ ((v96 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v98 ^ 0xD)] >> 16) ^ (*&v67[8 * (v97 ^ 0xD)] >> 24) ^ *&v67[8 * (v99 ^ 0xD) + 4] ^ 0x588AFDE6;
  v103 = *(v54 + ((((*&v67[8 * (v96 ^ 0xD)] ^ ((v96 ^ 0x60) - 1945587024)) >> 8) ^ WORD1(*&v67[8 * (v98 ^ 0xD)]) ^ (*&v67[8 * (v97 ^ 0xD)] >> 24) ^ *&v67[8 * (v99 ^ 0xD) + 4] ^ 0xFDE6) >> 8));
  v104 = v92 ^ *&v67[8 * (*(v54 + BYTE1(v93)) ^ 0xDLL) + 4] ^ 0x42E3BFDB ^ ((v101 + (v95 ^ 0x66) + 0x71FD69A38C08B2B0 - 2 * (v101 & ((v95 ^ 0x66) + 0x71FD69A38C08B2B0))) >> 8);
  v105 = ((*&v67[8 * (*(v54 + (v90 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v90 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ v94 ^ (*&v67[8 * (*(v54 + v93) ^ 0xDLL)] >> 24) ^ 0x9E11568;
  v106 = (*&v67[8 * (v100 ^ 0xD)] >> 16) ^ (*&v67[8 * (*(v54 + BYTE2(v90)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (*(v54 + (v93 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v93 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ v88 ^ 0x4ADE7D2D;
  v107 = *(v54 + (WORD1(*&v67[8 * (v100 ^ 0xD)]) ^ BYTE3(*&v67[8 * (*(v54 + BYTE2(v90)) ^ 0xDLL)]) ^ ((*&v67[8 * (*(v54 + (v93 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v93 >> 24)) ^ 0x60) - 19792)) >> 8) ^ v88 ^ 0x2D));
  v108 = *(v54 + BYTE1(v105));
  v109 = *(v54 + v105);
  v110 = *(v54 + BYTE2(v104));
  v111 = *(v54 + BYTE2(v105));
  v112 = *(v54 + BYTE2(v106));
  v113 = *(v54 + (v105 >> 24));
  v114 = *(v54 + (v106 >> 24));
  LODWORD(v97) = *&v67[8 * (*(v54 + BYTE1(v106)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE2(v102)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (v108 ^ 0xD)] ^ ((v108 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v115 = (((*&v67[8 * (v111 ^ 0xD)] >> 23) & 0xFFFFFE00 ^ 0x792C9BAD) & ((*&v67[8 * (v111 ^ 0xD)] >> 55) ^ 0xFFFFFE1ELL) | (*&v67[8 * (v111 ^ 0xD)] >> 55) & 0x52) ^ (((*&v67[8 * (v112 ^ 0xD)] >> 15) & 0xFFFFFE00 ^ 0x9C8A08EE) & ((*&v67[8 * (v112 ^ 0xD)] >> 47) & 0x1FFLL ^ 0xFFFFFE1DLL) | (*&v67[8 * (v112 ^ 0xD)] >> 47) & 0x111);
  LODWORD(v108) = (v115 << 23) ^ 0xC4000000 | (v115 >> 9) ^ 0x1DEA89;
  LODWORD(v106) = ((*&v67[8 * (v113 ^ 0xD)] ^ ((v113 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + v102) ^ 0xDLL)] >> 24);
  v116 = v97 ^ 0x981879AA ^ (*&v67[8 * (v110 ^ 0xD)] >> 16);
  v117 = *(v54 + (v116 >> 24));
  v118 = (*&v67[8 * (v103 ^ 0xD)] >> 24) ^ *&v67[8 * (v107 ^ 0xD) + 4] ^ ((*&v67[8 * (v109 ^ 0xD)] ^ ((v109 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0xEC8E7C27 ^ (*&v67[8 * (*(v54 + BYTE1(v104)) ^ 0xDLL)] >> 16);
  v119 = v106 ^ *&v67[8 * (v114 ^ 0xD) + 4] ^ 0xBC520663 ^ (*&v67[8 * (*(v54 + v104) ^ 0xDLL)] >> 16);
  v120 = ((*&v67[8 * (*(v54 + (v104 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v104 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + (v102 >> 24)) ^ 0xDLL)] >> 16) ^ v108 ^ 0x470EF831;
  v121 = *(v54 + (v97 ^ 0xAAu ^ BYTE2(*&v67[8 * (v110 ^ 0xD)])));
  v122 = *(v54 + v119);
  v123 = *(v54 + ((((*&v67[8 * (*(v54 + (v104 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v104 >> 24)) ^ 0x60) - 19792)) >> 8) ^ WORD1(*&v67[8 * (*(v54 + (v102 >> 24)) ^ 0xDLL)]) ^ v108) ^ 0x31u));
  v124 = *(v54 + BYTE2(v118));
  v125 = *(v54 + BYTE2(v116));
  LODWORD(v88) = ((*&v67[8 * (*(v54 + BYTE1(v119)) ^ 0xDLL)] ^ ((*(v54 + BYTE1(v119)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + (v118 >> 24)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + ((v97 ^ 0x79AA ^ WORD1(*&v67[8 * (v110 ^ 0xD)])) >> 8)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v123 ^ 0xD) + 4];
  v126 = (*&v67[8 * (*(v54 + (v120 >> 24)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (v121 ^ 0xD)] >> 16) ^ *&v67[8 * (v122 ^ 0xD) + 4] ^ ((*&v67[8 * (v124 ^ 0xD)] ^ ((v124 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0x679C1078;
  v127 = *(v54 + (BYTE3(*&v67[8 * (*(v54 + (v120 >> 24)) ^ 0xDLL)]) ^ (WORD1(*&v67[8 * (v121 ^ 0xD)]) ^ v67[8 * (v122 ^ 0xD) + 4] ^ ((*&v67[8 * (v124 ^ 0xD)] ^ ((v124 ^ 0x60) - 19792)) >> 8)) ^ 0x78));
  v128 = (*&v67[8 * (v117 ^ 0xD)] >> 16) ^ ((*&v67[8 * (*(v54 + BYTE1(v118)) ^ 0xDLL)] ^ ((*(v54 + BYTE1(v118)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + (v119 >> 24)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE2(v120)) ^ 0xDLL)] >> 24) ^ 0x5AC1D3BE;
  v129 = v88 ^ 0x4417AC81;
  v130 = *&v67[8 * (*(v54 + v118) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE2(v119)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (v125 ^ 0xD)] ^ ((v125 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0x85253B04 ^ (*&v67[8 * (*(v54 + BYTE1(v120)) ^ 0xDLL)] >> 16);
  v131 = *(v54 + BYTE2(v129));
  v132 = *(v54 + BYTE1(v130));
  v133 = *(v54 + BYTE1(v126));
  v134 = *(v54 + BYTE2(v130));
  v135 = *(v54 + (v128 >> 24));
  v136 = *(v54 + (v130 >> 24));
  v137 = *(v54 + (v129 >> 24));
  v138 = *(v54 + BYTE2(v126));
  v139 = *(v54 + v130);
  v140 = *(v54 + v129);
  v141 = *&v67[8 * (v127 ^ 0xD)] >> 16;
  v142 = *&v67[8 * (*(v54 + BYTE1(v129)) ^ 0xDLL)];
  v143 = v132 ^ 0xD;
  v144 = v142 >> 24;
  LODWORD(v142) = *&v67[8 * v143 + 4];
  v145 = ((*&v67[8 * (v133 ^ 0xD)] ^ ((v133 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v131 ^ 0xD)] >> 16) ^ (*&v67[8 * (v134 ^ 0xD)] >> 24) ^ *&v67[8 * (v135 ^ 0xD) + 4] ^ 0x97BC7860;
  LODWORD(v140) = *&v67[8 * (*(v54 + BYTE1(v128)) ^ 0xDLL) + 4] ^ (*&v67[8 * (v139 ^ 0xD)] >> 24) ^ ((*&v67[8 * (*(v54 + (v126 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v126 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v140 ^ 0xD)] >> 16);
  v146 = ((*&v67[8 * (*(v54 + BYTE2(v128)) ^ 0xDLL)] ^ ((*(v54 + BYTE2(v128)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ v141 ^ v144 ^ v142 ^ 0x51132196;
  LODWORD(v144) = *(v54 + ((((*&v67[8 * (v133 ^ 0xD)] ^ ((v133 ^ 0x60) - 1945587024)) >> 8) ^ WORD1(*&v67[8 * (v131 ^ 0xD)]) ^ (*&v67[8 * (v134 ^ 0xD)] >> 24) ^ *&v67[8 * (v135 ^ 0xD) + 4] ^ 0x7860) >> 8));
  v147 = *&v67[8 * (v136 ^ 0xD) + 4] ^ (*&v67[8 * (v137 ^ 0xD)] >> 24) ^ ((*&v67[8 * (*(v54 + v128) ^ 0xDLL)] ^ ((*(v54 + v128) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v138 ^ 0xD)] >> 16) ^ 0x1B9812C;
  v148 = v140 ^ 0xB5A5AEC8;
  v149 = *(v54 + BYTE1(v148));
  LODWORD(v139) = ((*&v67[8 * (*(v54 + (v148 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v148 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + v147) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + v146) ^ 0xDLL)] >> 16);
  v150 = *&v67[8 * (*(v54 + v148) ^ 0xDLL)] ^ ((*(v54 + v148) ^ 0x66) - ((2 * (*(v54 + v148) ^ 0x66u) + 352) & 0x25ALL) - 0x748418DC246A7623);
  v151 = ((*&v67[8 * (*(v54 + (v147 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v147 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + BYTE2(v145)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE2(v148)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + (v146 >> 24)) ^ 0xDLL)] >> 24) ^ 0xE854AB5D;
  LODWORD(v148) = (*&v67[8 * (*(v54 + ((((*&v67[8 * (v133 ^ 0xD)] ^ ((v133 ^ 0x60) - 19792)) >> 8) ^ WORD1(*&v67[8 * (v131 ^ 0xD)]) ^ BYTE3(*&v67[8 * (v134 ^ 0xD)]) ^ v67[8 * (v135 ^ 0xD) + 4]) ^ 0x60u)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + BYTE1(v147)) ^ 0xDLL)] >> 24);
  v152 = (*&v67[8 * (-(v144 ^ 0x66) ^ 0x85F01CF ^ (107 - (v144 ^ 0xD)) ^ ((v144 ^ 0x66) + 140444111 - ((2 * (v144 ^ 0x66)) & 0xFFFFFF9F))) + 856] >> 24) ^ (*&v67[8 * (*(v54 + BYTE2(v146)) ^ 0xDLL)] >> 16) ^ *&v67[8 * (*(v54 + BYTE2(v147)) ^ 0xDLL) + 4] ^ ((*&v67[8 * (v149 ^ 0xD)] ^ ((v149 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0x9F22B319;
  v153 = v139 ^ (*&v67[8 * (*(v54 + (v145 >> 24)) ^ 0xDLL)] >> 24) ^ 0x2D3E5CD0;
  v154 = v148 ^ ((*&v67[8 * (*(v54 + BYTE1(v146)) ^ 0xDLL)] ^ ((*(v54 + BYTE1(v146)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0x3EED4DE0 ^ (((-v150 ^ 0x22DF7649513E9034 ^ (0x5A8AAF0D383563FALL - (v150 ^ 0x5A8AAF0D383563FALL)) ^ (v150 + 0x22DF7649513E9034 - ((2 * v150) & 0x45BEEC92A27D2068uLL))) + 0x5A8AAF0D383563FALL) >> 32);
  v155 = *(v54 + BYTE1(v154));
  v156 = *(v54 + (v154 >> 24));
  v157 = *&v67[8 * (*(v54 + (v152 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v152 >> 24)) ^ 0x66) - ((2 * (*(v54 + (v152 >> 24)) ^ 0x66) - 0x1C052CB8E7EE9AA0) & 0xE10811000810665ALL) + 0x6C83F823E3A5EDDDLL);
  v158 = ((*&v67[8 * (*(v54 + BYTE2(v151)) ^ 0xDLL)] ^ ((*(v54 + BYTE2(v151)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + BYTE1(v153)) ^ 0xDLL)] >> 16) ^ *&v67[8 * (*(v54 + BYTE1(v152)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + v154) ^ 0xDLL)] >> 24) ^ 0x46EBD823;
  v159 = ((*&v67[8 * (*(v54 + BYTE2(v154)) ^ 0xDLL)] ^ ((*(v54 + BYTE2(v154)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + (v153 >> 24)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + v151) ^ 0xDLL)] >> 24) ^ 0xE41AF518 ^ ((v157 - ((2 * v157) & 0x5E1A706AC7F4) + 0xAF0D383563FALL) >> 16);
  v160 = (*&v67[8 * (*(v54 + BYTE2(v153)) ^ 0xDLL)] >> 16) ^ ((*&v67[8 * (*(v54 + (v151 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v151 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + BYTE2(v152)) ^ 0xDLL) + 4] ^ (*&v67[8 * (v155 ^ 0xD)] >> 24) ^ 0x767331FB;
  v161 = *(v54 + ((WORD1(*&v67[8 * (*(v54 + BYTE2(v153)) ^ 0xDLL)]) ^ ((*&v67[8 * (*(v54 + (v151 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v151 >> 24)) ^ 0x60u) - 1945587024)) >> 8) ^ *&v67[8 * (*(v54 + BYTE2(v152)) ^ 0xDLL) + 4] ^ (*&v67[8 * (v155 ^ 0xD)] >> 24) ^ 0x31FB) >> 8));
  v162 = ((*&v67[8 * (v156 ^ 0xD)] ^ ((v156 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + v152) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + BYTE1(v151)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(v54 + v153) ^ 0xDLL) + 4] ^ 0x12801BE7;
  v163 = *(v54 + BYTE1(v159));
  LODWORD(v133) = *(v54 + (v162 >> 24));
  v164 = *(v54 + BYTE2(v160));
  v165 = *(v54 + v162);
  v166 = *(v54 + BYTE2(v159));
  v167 = *(v54 + BYTE1(v162));
  v168 = *(v54 + (v160 >> 24));
  v169 = *(v54 + (v159 >> 24));
  LODWORD(v156) = *(v54 + v160);
  v170 = *(v54 + BYTE2(v162));
  v171 = *(v54 + v159);
  v172 = (*&v67[8 * (v161 ^ 0xD)] ^ ((v161 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8;
  v173 = ((v133 - (v133 ^ 0x66)) ^ 0xFFFFFFFC) + v133;
  LODWORD(v167) = ((*&v67[8 * (v167 ^ 0xD)] ^ ((v167 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + BYTE1(v158)) ^ 0xDLL)] >> 16) ^ *&v67[8 * (v169 ^ 0xD) + 4];
  v174 = v172 ^ *&v67[8 * (*(v54 + (v158 >> 24)) ^ 0xDLL) + 4] ^ (*&v67[8 * (v163 ^ 0xD)] >> 16) ^ 0xF82FC6F2 ^ ((*&v67[8 * (v173 ^ 0x6B)] ^ (v173 + 0xFD69A38C08B2B0)) >> 24);
  v175 = *&v67[8 * (v166 ^ 0xD) + 4] ^ (*&v67[8 * (v164 ^ 0xD)] >> 24) ^ ((*&v67[8 * (v165 ^ 0xD)] ^ ((v165 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + v158) ^ 0xDLL)] >> 16) ^ 0xDF78E4DF;
  v176 = (*&v67[8 * (*(v54 + BYTE2(v158)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (v170 ^ 0xD)] >> 16) ^ *&v67[8 * ((v156 ^ 0x66) - ((2 * (v156 ^ 0x66)) & 0xD6)) + 860] ^ ((*&v67[8 * (v171 ^ 0xD)] ^ (((2 * v171) & 0x160 ^ 0x40) + (v171 ^ 0xA38C08B2C0uLL))) >> 8) ^ 0x26EE08D9;
  v177 = *(v54 + (v174 >> 24));
  v178 = v167 ^ (*&v67[8 * (v168 ^ 0xD)] >> 24) ^ 0x599EC7CC;
  v179 = *(v54 + v174);
  v180 = *(v54 + (v176 >> 24));
  v181 = *(v54 + BYTE2(v174));
  v182 = *&v67[8 * (*(v54 + BYTE1(v174)) ^ 0xDLL)] >> 24;
  LODWORD(v174) = *&v67[8 * (*(v54 + BYTE1(v175)) ^ 0xDLL) + 4];
  v183 = (*&v67[8 * (*(v54 + (v175 >> 24)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + BYTE1(v178)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(v54 + BYTE2(v176)) ^ 0xDLL) + 4] ^ 0xCDDF1E39 ^ ((*&v67[8 * (v177 ^ 0xD)] ^ ((v177 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v184 = *&v67[8 * (*(v54 + BYTE2(v178)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + v175) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (v179 ^ 0xD)] >> 16) ^ 0x49E42EDE ^ ((*&v67[8 * ((v180 ^ 0x66) - ((2 * (v180 ^ 0x66)) & 0xD6)) + 856] ^ ((v180 ^ 0x66uLL) + 0xA38C08B2B0)) >> 8);
  v185 = ((*&v67[8 * (*(v54 + (v178 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v178 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + v176) ^ 0xDLL)] >> 16) ^ v182 ^ v174 ^ 0x3F30878B;
  v186 = *(v54 + (((*&v67[8 * (*(v54 + (v178 >> 24)) ^ 0xDLL)] ^ ((*(v54 + (v178 >> 24)) ^ 0x60) - 19792)) >> 8) ^ WORD1(*&v67[8 * (*(v54 + v176) ^ 0xDLL)]) ^ v182 ^ v174 ^ 0x8B));
  v187 = (*&v67[8 * (v181 ^ 0xD)] >> 24) ^ (*&v67[8 * (*(v54 + BYTE1(v176)) ^ 0xDLL)] >> 16) ^ *&v67[8 * (*(v54 + BYTE2(v175)) ^ 0xDLL) + 4] ^ ((*&v67[8 * (*(v54 + v178) ^ 0xDLL)] ^ ((*(v54 + v178) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0xD5EB7810;
  v188 = *(v54 + BYTE2(v187));
  v189 = *(v54 + ((v67[8 * (*(v54 + BYTE2(v178)) ^ 0xDLL) + 4] ^ BYTE3(*&v67[8 * (*(v54 + v175) ^ 0xDLL)]) ^ WORD1(*&v67[8 * (v179 ^ 0xD)])) ^ 0xDEu ^ ((*&v67[8 * ((v180 ^ 0x66) - ((2 * (v180 ^ 0x66)) & 0xD6)) + 856] ^ ((v180 ^ 0x66) - 19792)) >> 8)));
  v190 = *(v54 + (v187 >> 24));
  v191 = *(v54 + v187);
  v192 = *(v54 + (v183 >> 24));
  v193 = *(v54 + BYTE1(v187));
  v194 = *(v54 + (v185 >> 24));
  LODWORD(v179) = (*&v67[8 * (*(v54 + BYTE1(v185)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (v190 ^ 0xD)] >> 24);
  v195 = *(v54 + BYTE2(v185)) - ((2 * *(v54 + BYTE2(v185))) & 0xCCu) + 102;
  LODWORD(v178) = (*&v67[8 * (v191 ^ 0xD)] >> 24) ^ *&v67[8 * (*(v54 + v183) ^ 0xDLL) + 4] ^ ((*&v67[8 * (*(v54 + BYTE1(v184)) ^ 0xDLL)] ^ ((*(v54 + BYTE1(v184)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ ((*&v67[8 * (v195 ^ 0x6B)] ^ (v195 + 0x69A38C08B2B0)) >> 16);
  LODWORD(v193) = (*&v67[8 * (*(v54 + BYTE1(v183)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (v193 ^ 0xD)] >> 16);
  v196 = *&v67[8 * (v194 ^ 0xD)];
  v197 = (*&v67[8 * (*(v54 + (v184 >> 24)) ^ 0xDLL)] >> 16) ^ ((*&v67[8 * (*(v54 + BYTE2(v183)) ^ 0xDLL)] ^ ((*(v54 + BYTE2(v183)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v186 ^ 0xD)] >> 24) ^ *&v67[8 * (v188 ^ 0xD) + 4] ^ 0x25BE9122;
  v198 = (v194 ^ 0x60) + 0xA38C08B2B0;
  v199 = v178 ^ 0x7DA7A3DC;
  v200 = (v196 ^ v198) >> 8;
  v201 = v179 ^ *&v67[8 * (v192 ^ 0xD) + 4] ^ 0x72F3E662 ^ ((*&v67[8 * (v189 ^ 0xD)] ^ ((v189 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v202 = *(v54 + ((v179 ^ *&v67[8 * (v192 ^ 0xD) + 4] ^ 0xE662 ^ ((*&v67[8 * (v189 ^ 0xD)] ^ ((v189 ^ 0x60) - 1945587024)) >> 8)) >> 8));
  v203 = *(v54 + (v178 ^ 0xDCu));
  v204 = *(v54 + (v197 >> 24));
  v205 = *(v54 + BYTE2(v201));
  v206 = v193 ^ v200 ^ 0xA46172EB ^ *&v67[8 * (*(v54 + BYTE2(v184)) ^ 0xDLL) + 4];
  v207 = *(v54 + (v201 >> 24));
  v208 = (v179 ^ v67[8 * (v192 ^ 0xD) + 4]) ^ 0x62u ^ ((*&v67[8 * (v189 ^ 0xD)] ^ ((v189 ^ 0x60) - 19792)) >> 8);
  v209 = *&v67[8 * (*(v54 + v197) ^ 0xDLL)] ^ ((*(v54 + v197) ^ 0x66) + 0x71FD69A38C08B2B0);
  v210 = ((*&v67[8 * (v202 ^ 0xD)] ^ ((v202 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ *&v67[8 * (*(v54 + BYTE2(v197)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + (v199 >> 24)) ^ 0xDLL)] >> 16) ^ (*&v67[8 * (*(v54 + BYTE2(v206)) ^ 0xDLL)] >> 24) ^ 0x1C70749E;
  LODWORD(v197) = *&v67[8 * (*(v54 + BYTE1(v197)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(v54 + BYTE1(v206)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (*(v54 + v208) ^ 0xDLL)] ^ ((*(v54 + v208) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + BYTE2(v199)) ^ 0xDLL)] >> 16);
  v211 = ((*&v67[8 * (*(v54 + v206) ^ 0xDLL)] ^ ((*(v54 + v206) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (v207 ^ 0xD)] >> 24) ^ *&v67[8 * (*(v54 + BYTE1(v199)) ^ 0xDLL) + 4] ^ 0xEFAB687D ^ ((v209 ^ 0xA00C218D6FA858D7) >> (v209 & 0x10 ^ 0x10) >> (v209 & 0x10));
  v212 = (*&v67[8 * (v203 ^ 0xD)] >> 16) ^ ((*&v67[8 * (v205 ^ 0xD)] ^ ((v205 ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(v54 + (v206 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v204 ^ 0xD) + 4] ^ 0xE3A1A578;
  v213 = v197 ^ 0x55A674EC;
  v295 = v211;
  v296 = v197 ^ 0xEC;
  v292 = v210;
  v214 = (WORD1(*&v67[8 * (v203 ^ 0xD)]) ^ ((*&v67[8 * (v205 ^ 0xD)] ^ ((v205 ^ 0x60) - 19792)) >> 8) ^ BYTE3(*&v67[8 * (*(v54 + (v206 >> 24)) ^ 0xDLL)]) ^ v67[8 * (v204 ^ 0xD) + 4] ^ 0x78);
  LODWORD(v204) = (*&v67[8 * (*(a11 + ((WORD1(*&v67[8 * (v203 ^ 0xD)]) ^ ((*&v67[8 * (v205 ^ 0xD)] ^ ((v205 ^ 0x60) - 1945587024)) >> 8) ^ (*&v67[8 * (*(v54 + (v206 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (v204 ^ 0xD) + 4] ^ 0xA578) >> 8)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (*(a11 + (v210 >> 24)) ^ 0xDLL)] >> 16) ^ *&v67[8 * (*(a11 + BYTE1(v211)) ^ 0xDLL) + 4];
  LODWORD(v207) = *&v67[8 * (*(a11 + BYTE2(v211)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + BYTE2(v212)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (*(a11 + BYTE2(v213)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v213)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + v210) ^ 0xDLL)] >> 16) ^ 0x7B21F366;
  v215 = (*&v67[8 * (*(a11 + (v212 >> 24)) ^ 0xDLL)] ^ ((*(a11 + (v212 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8;
  v291 = &v67[8 * (*(a11 + v214) ^ 0xDLL)];
  v216 = v204 ^ ((*&v67[8 * (*(a11 + BYTE1(v213)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v213)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0xE7686122;
  v299 = ((v207 & 0xC658FE03 ^ 0x31D6763B) & (v207 & 0x39A701FC ^ 0xEF7EFFAF) | v207 & 0x82101C4) ^ 0x42788B3E;
  v290 = (*&v67[8 * (*(a11 + (v213 >> 24)) ^ 0xDLL)] >> 24) ^ *&v67[8 * (*(a11 + BYTE1(v210)) ^ 0xDLL) + 4] ^ (*&v67[8 * (*(a11 + (v211 >> 24)) ^ 0xDLL)] >> 16) ^ v215 ^ 0x1CCADAF5;
  v288 = &v67[8 * (*(a11 + (v299 >> 24)) ^ 0xDLL)];
  v293 = &v67[8 * (*(a11 + (BYTE3(*&v67[8 * (*(a11 + (v213 >> 24)) ^ 0xDLL)]) ^ v67[8 * (*(a11 + BYTE1(v210)) ^ 0xDLL) + 4] ^ BYTE2(*&v67[8 * (*(a11 + (v211 >> 24)) ^ 0xDLL)]) ^ v215 ^ 0xF5)) ^ 0xDLL)];
  v294 = &v67[8 * (*(a11 + (v216 >> 24)) ^ 0xDLL)];
  v298 = &v67[8 * (*(a11 + (v204 ^ ((*&v67[8 * (*(a11 + BYTE1(v213)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v213)) ^ 0x60) - 19792)) >> 8) ^ 0x22)) ^ 0xDLL)];
  v217 = ((&a49[-((2 * a49) & 0x547CAB0137A513E0) - 0x55C1AA7F642D7610] >> 8) ^ 0xAA3E55809BD289) - 0x7E580B5093754338 + ((&a49[-((2 * a49) & 0x547CAB0137A513E0) - 0x55C1AA7F642D7610] << 56) & 0xF800000000000000 ^ 0xF000000000000000);
  v218 = __ROR8__(v217 ^ 0x355E84F76D7E25BALL, 8);
  v217 ^= 0x3861218C092BC3FEuLL;
  v219 = (v218 + v217) ^ 0xE1B380815A7B7136;
  v220 = v219 ^ __ROR8__(v217, 61);
  v221 = (v220 + __ROR8__(v219, 8)) ^ 0xC562CC2247777224;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = v222 + __ROR8__(v221, 8);
  v224 = v223 ^ 0x723DABF84BB78E3BLL ^ __ROR8__(v222, 61);
  v225 = __ROR8__(((v223 - (v223 ^ 0x723DABF84BB78E3BLL)) ^ 0xFFFFFFFFFFFFFFFELL) + v223, 8) + v224;
  v226 = __ROR8__(v224, 61);
  *(&v227 + 1) = v225 ^ v226 ^ 0x1E7B88016B9BEB82;
  *&v227 = v225 ^ v226;
  v228 = (*(&v227 + 1) + ((v225 << 56) ^ 0x8200000000000000) + ((v225 >> 8) ^ 0x1E7B88016B9BEBLL)) ^ 0x8BD75ED2720D4F08;
  v229 = v228 ^ (v227 >> 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0xFAF59F62DB56595ALL;
  v231 = __ROR8__(v230, 8);
  v232 = &a49[-((2 * (a49 + 8)) & 0x2730E50D5F675F14) + 0x13987286AFB3AF92];
  v233 = ((((v232 >> 8) ^ 0x14CE5404C7A5EE48) & (~(v232 << 56) | 0xEFFFFFFFFFFFFFFFLL) | (v232 << 56) & 0xE800000000000000) ^ 0x9CDDCC76410A5DE7) - 0x7E580B5093754338;
  *&v227 = __ROR8__(v233 ^ 0x355E84F76D7E25BALL, 8);
  v233 ^= 0x3861218C092BC3FEuLL;
  v234 = (v227 + v233) ^ 0xE1B380815A7B7136;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0xC562CC2247777224;
  v237 = v236 ^ __ROR8__(v235, 61);
  v238 = (__ROR8__(v236, 8) + v237) ^ 0x723DABF84BB78E3BLL;
  v239 = v238 ^ __ROR8__(v237, 61);
  v240 = __ROR8__(v238, 8) + v239;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = __ROR8__(v240 ^ 0x1E7B88016B9BEB82, 8);
  *(&v227 + 1) = v241 ^ 0x1E7B88016B9BEB82;
  *&v227 = v241;
  v243 = v230 ^ __ROR8__(v229, 61);
  v244 = (v227 >> 61) ^ 0x5BD30E4BF094960CLL ^ (((v242 + (v241 ^ 0x1E7B88016B9BEB82)) ^ 0x8BD75ED2720D4F08) + 0x5BD30E4BF094960CLL - 2 * (((v242 + (v241 ^ 0x1E7B88016B9BEB82)) ^ 0x8BD75ED2720D4F08) & 0x5BD30E4BF094960DLL ^ (v242 + (v241 ^ 0x1E7B88016B9BEB82)) & 1));
  v245 = (v244 + __ROR8__((v242 + (v241 ^ 0x1E7B88016B9BEB82)) ^ 0x8BD75ED2720D4F08, 8)) ^ 0xFAF59F62DB56595ALL;
  LOBYTE(v241) = (8 * (a49 + 2 - ((2 * a49) & 2)) + 56) & 0x38;
  v289 = ((v245 ^ __ROR8__(v244, 61)) + __ROR8__(v245, 8)) ^ 0xCE3515DA16135FAALL;
  v246 = 16 * ((v289 << (v241 ^ 0x34u)) - ((2 * (v289 << (v241 ^ 0x34u))) & 0x9ABF06862F7060)) - 0x7B2A07CBCE847CF0;
  v247 = __ROR8__(&a49[-((2 * (a49 + 16)) & 0x63008FA77BB21664) - 0x4E7FB82C4226F4BELL] & 0xFFFFFFFFFFFFFFF8 ^ 0xB18047D3BDD90B30, 8) - 0x7E580B5093754338;
  *&v227 = __ROR8__(v247 ^ 0x355E84F76D7E25BALL, 8);
  v247 ^= 0x3861218C092BC3FEuLL;
  v248 = (v227 + v247) ^ 0xE1B380815A7B7136;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0xC562CC2247777224;
  v251 = v250 ^ __ROR8__(v249, 61);
  v252 = (v251 + __ROR8__(v250, 8)) ^ 0x723DABF84BB78E3BLL;
  v253 = v252 ^ __ROR8__(v251, 61);
  v254 = v253 + __ROR8__(v252, 8);
  *&v227 = __ROR8__(v253, 61);
  *(&v227 + 1) = v254 ^ v227 ^ 0x1E7B88016B9BEB82;
  *&v227 = v254 ^ v227;
  v255 = (*(&v227 + 1) + ((v254 << 56) ^ 0x8200000000000000) + ((v254 >> 8) ^ 0x1E7B88016B9BEBLL)) ^ 0x8BD75ED2720D4F08;
  v256 = (v227 >> 61) ^ 0x1788B52A3D2D3E9FLL ^ (v255 + 0x1788B52A3D2D3E9FLL - ((2 * v255) & 0x2F116A547A5A7D3ELL));
  v257 = (v256 + __ROR8__(v255, 8)) ^ 0xFAF59F62DB56595ALL;
  v258 = (((v257 ^ __ROR8__(v256, 61)) + __ROR8__(v257, 8)) ^ 0xE3515DA16135FAALL) << (v241 ^ 0x34u);
  LOBYTE(v241) = v241 ^ 8;
  v259 = ((v243 + v231) ^ 0xCE3515DA16135FAALL) >> v241;
  v260 = (v246 ^ 0x84D5F834317B8310) + v259;
  v286 = v260 >> 8;
  LOBYTE(v246) = *(a53 + (BYTE1(v260) ^ a47 ^ 0x65u));
  LOBYTE(v256) = v246 & 0x23 ^ 0xB1;
  LOBYTE(v243) = (4 * (v246 & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * v256) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ (2 * v246);
  LOBYTE(v256) = v246 & 0xE5 | 0x12;
  v261 = v246 ^ (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * ((v246 ^ 0x40) & (2 * v256) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256));
  v262 = (*&v67[8 * (*(a11 + BYTE2(v210)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (*(a11 + v296) ^ 0xDLL)] >> 16) ^ *(v291 + 1) ^ ((*&v67[8 * (*(a11 + v211) ^ 0xDLL)] ^ ((*(a11 + v211) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ 0x290CB21C;
  v263 = *(v288 + 1) ^ (*&v67[8 * (*(a11 + BYTE1(v216)) ^ 0xDLL)] >> 24) ^ ((*&v67[8 * (*(a11 + (v290 >> 24)) ^ 0xDLL)] ^ ((*(a11 + (v290 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + BYTE2(v262)) ^ 0xDLL)] >> 16) ^ 0x5F2D840E;
  v287 = v259;
  v264 = *(&off_1002A2080 + v59 - 1731) - 4;
  LODWORD(v210) = v264[*(a11 + (v288[4] ^ BYTE3(*&v67[8 * (*(a11 + BYTE1(v216)) ^ 0xDLL)]) ^ ((*&v67[8 * (*(a11 + (v290 >> 24)) ^ 0xDLL)] ^ ((*(a11 + (v290 >> 24)) ^ 0x60) - 19792)) >> 8) ^ WORD1(*&v67[8 * (*(a11 + BYTE2(v262)) ^ 0xDLL)]) ^ 0xE)) ^ (*(a53 + (v259 ^ a47 ^ 0x95)) + 29) ^ 0xA4];
  v297 = (v210 >> 7) | (2 * v210);
  v265 = *(v293 + 1) ^ ((*&v67[8 * (*(a11 + (v262 >> 24)) ^ 0xDLL)] ^ ((*(a11 + (v262 >> 24)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8) ^ (*&v67[8 * (*(a11 + BYTE2(v216)) ^ 0xDLL)] >> 16) ^ 0xC8A5320F ^ (*&v67[8 * (*(a11 + v299) ^ 0xDLL)] >> 24);
  LODWORD(v175) = v264[(*(a11 + (v265 >> 24)) ^ ((v261 ^ 0xB9) + (v243 & 0xB8))) ^ 4];
  LODWORD(v216) = (v175 >> 7) | (2 * v175);
  v285 = v260 >> 16;
  v266 = (*&v67[8 * (*(a11 + v262) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (*(a11 + BYTE1(v290)) ^ 0xDLL)] >> 16) ^ *(v294 + 1) ^ 0x2A027375 ^ ((*&v67[8 * (*(a11 + BYTE1(v299)) ^ 0xDLL)] ^ ((*(a11 + BYTE1(v299)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  LODWORD(v175) = v264[(*(a11 + (v266 >> 24)) ^ (*(a53 + (BYTE2(v260) ^ a47 ^ 0x5Cu)) + 29)) ^ 0xBF];
  v267 = (v175 >> 7) | (2 * v175);
  v268 = *(v298 + 1) ^ (*&v67[8 * (*(a11 + BYTE1(v262)) ^ 0xDLL)] >> 24) ^ (*&v67[8 * (*(a11 + BYTE2(v290)) ^ 0xDLL)] >> 16) ^ 0xB44A417B ^ ((*&v67[8 * (*(a11 + BYTE2(v299)) ^ 0xDLL)] ^ ((*(a11 + BYTE2(v299)) ^ 0x60uLL) + 0xA38C08B2B0)) >> 8);
  v284 = v260 >> 24;
  LODWORD(v215) = v264[*(a11 + BYTE1(v268)) ^ (*(a53 + (BYTE3(v260) ^ a47 ^ 0xD4u)) + 29) ^ 0xDB];
  v281 = HIDWORD(v260);
  v269 = v258 - ((2 * v258) & 0xE807BCFA616A3E0);
  v283 = v260 >> 40;
  v282 = HIWORD(v260);
  LOBYTE(v67) = *(a11 + BYTE2(v268)) ^ (*(a53 + (BYTE6(v260) ^ a47 ^ 0x39u)) + 29);
  v280 = HIBYTE(v260);
  LOBYTE(v258) = *(a11 + BYTE1(v266)) ^ (*(a53 + ((v289 >> v241) ^ a47 ^ 0x95)) + 29) ^ 0xA4;
  v270 = ((16 * v269 + 0x7403DE7D30B51F40) ^ 0x7403DE7D30B51F40) + (v289 >> v241);
  v279 = v289 >> v241;
  LOBYTE(v241) = *(a11 + (v268 >> 24)) ^ (*(a53 + (BYTE1(v270) ^ a47 ^ 0x4Du)) + 29);
  LOBYTE(v257) = *(a11 + BYTE2(v263)) ^ (*(a53 + (BYTE2(v270) ^ a47 ^ 0x89u)) + 29) ^ 0x2F;
  LOBYTE(v269) = *(a11 + BYTE1(v265)) ^ (*(a53 + ((BYTE3(v270) ^ a47) ^ 0xE3u)) + 29) ^ 0x49;
  LOBYTE(v211) = *(a11 + v268) ^ (*(a53 + (BYTE4(v270) ^ a47 ^ 0xA9u)) + 29) ^ 0xC8;
  LODWORD(v268) = v264[(*(a11 + v265) ^ (*(a53 + (BYTE4(v260) ^ a47 ^ 0xABu)) + 29)) ^ 0xC3];
  LODWORD(v175) = (v268 >> 7) | (2 * v268);
  LOBYTE(v268) = *(a11 + BYTE2(v265)) ^ (*(a53 + (BYTE6(v270) ^ a47 ^ 0x24u)) + 29) ^ 0x35;
  LODWORD(v259) = v264[(*(a11 + v266) ^ (*(a53 + (BYTE5(v260) ^ a47 ^ 0xF6u)) + 29)) ^ 0xF7];
  LODWORD(v67) = v264[v67 ^ 0x7C];
  v271 = v264[(*(a11 + BYTE1(v263)) ^ (*(a53 + ((HIBYTE(v260) ^ a47) ^ 8u)) + 29)) ^ 0x22];
  LODWORD(v265) = v264[v241 ^ 0xF];
  LODWORD(v263) = v264[*(a11 + (v263 >> 24)) ^ (*(a53 + (BYTE5(v270) ^ a47 ^ 0x17u)) + 29) ^ 0xA9];
  LODWORD(v268) = v264[v268];
  LODWORD(v266) = v264[*(a11 + BYTE2(v266)) ^ (*(a53 + (HIBYTE(v270) ^ a47 ^ 0x62u)) + 29) ^ 0x5B];
  v272 = (v67 >> 7) | (2 * v67);
  LODWORD(v256) = (v264[v258] >> 7) | (2 * v264[v258]);
  v273 = (v265 >> 7) | (2 * v265);
  v274 = (v264[v257] >> 7) | (2 * v264[v257]);
  v275 = (v264[v269] >> 7) | (2 * v264[v269]);
  LODWORD(v211) = (v264[v211] >> 7) | (2 * v264[v211]);
  a49[1] = v216 ^ 0x39;
  *a49 = v297 ^ 0x39;
  a49[2] = v267 ^ 0x39;
  a49[5] = ((v259 >> 7) | (2 * v259)) ^ 0x39;
  a49[3] = ((v215 >> 7) | (2 * v215)) ^ 0x39;
  a49[4] = v175 ^ 0x39;
  a49[6] = v272 ^ 0x39;
  a49[7] = ((v271 >> 7) | (2 * v271)) ^ 0x39;
  a49[8] = v256 ^ 0x39;
  a49[9] = v273 ^ 0x39;
  a49[10] = v274 ^ 0x39;
  v276 = ((v263 >> 7) | (2 * v263)) ^ 0x39;
  a49[13] = ((v263 >> 7) | (2 * v263)) ^ 0x39;
  a49[14] = ((v268 >> 7) | (2 * v268)) ^ 0x39;
  a49[11] = v275 ^ 0x39;
  a49[15] = ((v266 >> 7) | (2 * v266)) ^ 0x39;
  a49[12] = v211 ^ 0x39;
  if (HIDWORD(a10) < 0x83E17591 != (a48 - 2082376287) < 0x83E17591)
  {
    v277 = HIDWORD(a10) < 0x83E17591;
  }

  else
  {
    v277 = (a48 - 2082376287) < HIDWORD(a10);
  }

  return (*(a54 + 8 * (v59 ^ (3035 * v277))))(v275 ^ 0x39u, a50, ((v271 >> 7) | (2 * v271)) ^ 0x39, v272 ^ 0x39, v267 ^ 0x39u, v297 ^ 0x39u, v273 ^ 0x39u, v276, a9, a10, a11, a12, a13, HIWORD(v270), v270 >> 40, HIDWORD(v270), v270 >> 24, v270 >> 16, v270 >> 8, v279, v280, v281, v282, v283, v284, v285, v286, v287, a29, a30, a31, a49 + 16, v288, v289, v290, v291, v292, v293, v294, v295);
}

uint64_t sub_1000306BC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t *a62, int a63)
{
  v68 = v65 - 359;
  v85 = v65 + 1538611415;
  v69 = v65 - 1768975665;
  v84 = 1151317067 * ((-2 - ((~(v67 - 136) | 0x41AA3C9E0FBBF839) + ((v67 - 136) | 0xBE55C361F04407C6))) ^ 0x7204539325A566B7);
  v83 = v65 + 3968;
  v82 = v65 - 193652961;
  v81 = v65 + 3953;
  v80 = v65 + 3980;
  v70 = a1 + 64;
  v71 = (v65 - 359) ^ 0x5ALL;
  v72 = 1151317067 * ((0x9310EAB8C3D8F011 - ((v67 - 136) | 0x9310EAB8C3D8F011) + ((v67 - 136) | 0x6CEF15473C270FEELL)) ^ 0x5F417A4A16399160);
  *(v67 - 128) = *(v66 + 8 * v71) ^ v72;
  *(v67 - 136) = v69 + v72;
  *(v67 - 120) = 836339580 - v72;
  *(v67 - 112) = v67 - 216;
  *(v67 - 104) = a1 + 64;
  (*(v66 + 8 * (v68 ^ 0x131F)))(v67 - 136);
  *(v67 - 128) = *(v66 + 8 * (v68 + 54)) ^ v84;
  *(v67 - 112) = v67 - 152;
  *(v67 - 104) = a17;
  *(v67 - 120) = 836339532 - v84;
  *(v67 - 136) = v69 + v84;
  (*(v66 + 8 * (v68 ^ 0x131F)))(v67 - 136);
  v73 = *(v66 + 8 * v68);
  v74 = 934376741 * ((0x87D4A83A47BFFC9 - ((v67 - 136) | 0x87D4A83A47BFFC9) + ((v67 - 136) | 0xF782B57C5B840036)) ^ 0xCF5E0835D08A0855);
  *(v67 - 128) = v67 - 216;
  *(v67 - 120) = &STACK[0x288];
  *(v67 - 112) = v73 - v74;
  *(v67 - 136) = v68 - v74 + 2091604565;
  (*(v66 + 8 * v83))(v67 - 136);
  a61 = *(v66 + 8 * ((v85 - 1538612103) ^ v68));
  a62 = &STACK[0x288];
  a65 = a22;
  STACK[0x200] = v67 - 216;
  a63 = 191756449;
  *(v67 - 136) = &a61;
  *(v67 - 128) = v82 ^ (1424120303 * ((~((v67 - 136) | 0xE1B15CCA) + ((v67 - 136) & 0xE1B15CCA)) ^ 0x5F0A3EE3));
  (*(v66 + 8 * v81))(v67 - 136);
  v75 = *(v66 + 8 * v71);
  *(v67 - 112) = a22;
  *(v67 - 104) = v70;
  *(v67 - 136) = v69 + 1151317067 * ((((2 * (v67 - 136)) | 0xBE45FDF0) - (v67 - 136) + 551354632) ^ 0xF53C6076);
  *(v67 - 120) = 836339580 - 1151317067 * ((((2 * (v67 - 136)) | 0xBE45FDF0) - (v67 - 136) + 551354632) ^ 0xF53C6076);
  *(v67 - 128) = v75 ^ (1151317067 * ((((2 * (v67 - 136)) | 0x2CBAA871BE45FDF0) - (v67 - 136) - 0x165D5438DF22FEF8) ^ 0x25F33B35F53C6076));
  (*(v66 + 8 * (v68 ^ 0x131F)))(v67 - 136);
  v76 = *(v66 + 8 * (v68 + 54));
  v77 = 1151317067 * ((((v67 - 136) | 0xDAD30D9E5C3284D6) - ((v67 - 136) & 0xDAD30D9E5C3284D6)) ^ 0xE97D6293762C1A58);
  *(v67 - 120) = 836339580 - v77;
  *(v67 - 128) = v76 ^ v77;
  *(v67 - 136) = v69 + v77;
  *(v67 - 112) = v70;
  *(v67 - 104) = v67 - 216;
  v78 = (*(v66 + 8 * v80))(v67 - 136);
  return (*(v66 + 8 * ((v68 + 266) | 0x5D)))(v78);
}

uint64_t sub_100030B04@<X0>(int a1@<W8>)
{
  v6 = a1 - v4 - 1194;
  v7 = a1 + 1747073301;
  v8 = *(v2 + 4) - 1998373338;
  if (v8 < 0)
  {
    v8 = 1998373338 - *(v2 + 4);
  }

  v15 = v8;
  v9 = *(v3 + 4) + ((a1 - v4) ^ 0x88E331D2);
  if (v9 < 0)
  {
    v9 = -v9;
  }

  v16 = v9;
  v10 = *(v1 + 8 * v7);
  v11 = 737412167 * ((((v5 - 136) ^ 0xC6A3FC9AA6FEC0E9) - 2 * (((v5 - 136) ^ 0xC6A3FC9AA6FEC0E9) & 0x853B8E819A45261BLL) - 0x7AC4717E65BAD9E5) ^ 0x3258C0C29B725E0CLL);
  *(v5 - 136) = (a1 + 1185445040) ^ v11;
  *(v5 - 128) = v2;
  *(v5 - 120) = v10 - v11;
  v12 = (*(v1 + 8 * (a1 ^ 0x97DDDAB4)))(v5 - 136);
  v13 = v15;
  if (v15 >= v16)
  {
    v13 = v16;
  }

  return (*(v1 + 8 * (v7 ^ 0xB88 ^ (207 * (v13 == (v6 ^ 0xB4A))))))(v12);
}

uint64_t sub_1000311CC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54, int a55, unsigned int a56)
{
  v58 = (a1 + 1513880460) & 0xA5C407BF;
  v59 = *(*(v57 + 8) + 4 * a56);
  v60 = a53 - 777038544 + (((v59 ^ 0xA02C70A2) + 1607700318) ^ ((v59 ^ 0x6D613489) - 1835086985) ^ ((v59 ^ 0x739C81D7) - 1939636695));
  *(*(a17 + 8) + 4 * a56) = ((v58 ^ 0x79209DC0 ^ v60) - 1811748057) ^ v60 ^ ((v60 ^ 0x32DCD7B2) - 536959110) ^ ((v60 ^ 0x66572492) - 1955244966) ^ ((v60 ^ 0x3F76E7F9) - 766208205) ^ 0xAC0C4AC8;
  return (*(v56 + 8 * ((30 * (a56 + 1 < a44)) ^ v58)))(0xEE69C9DC929ECB77, 0x56A4A1F7739C81D7, 0xA95B5E088C637E29, 0x44C478FFD1AF5530);
}

uint64_t sub_100031418@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, unsigned int a60)
{
  v62 = *(*(v61 + 8) + 4 * a60);
  v63 = a55 - 1371782747 + (((v62 ^ 0xD4DBC7DF) + ((2 * a1) ^ 0x2B242B51)) ^ ((v62 ^ 0x617467FB) - 1635018747) ^ ((v62 ^ 0xB7E65D8) - 192832984));
  v64 = (v63 ^ 0xEC53556) & (2 * (v63 & 0x10958457)) ^ v63 & 0x10958457;
  v65 = ((2 * (v63 ^ 0xEE63D5C)) ^ 0x3CE77216) & (v63 ^ 0xEE63D5C) ^ (2 * (v63 ^ 0xEE63D5C)) & 0x1E73B90A;
  v66 = v65 ^ 0x2108909;
  v67 = (v65 ^ 0x4623000) & (4 * v64) ^ v64;
  v68 = ((4 * v66) ^ 0x79CEE42C) & v66 ^ (4 * v66) & 0x1E73B908;
  v69 = (v68 ^ 0x1842A000) & (16 * v67) ^ v67;
  v70 = ((16 * (v68 ^ 0x6311903)) ^ 0xE73B90B0) & (v68 ^ 0x6311903) ^ (16 * (v68 ^ 0x6311903)) & 0x1E73B900;
  *(*(a17 + 8) + 4 * a60) = v63 ^ (2 * ((v70 ^ 0x6339000) & (v69 << 8) ^ v69 ^ 0x1E73B90B ^ ((((v70 ^ 0x1840290B) << 8) ^ 0x73B90B00) & (v70 ^ 0x1840290B) ^ ((v70 ^ 0x1840290B) << 8) & 0x1E73B900 ^ 0x12310000) & (((v70 ^ 0x6339000) & (v69 << 8) ^ v69) << 16))) ^ 0x92A333BD;
  return (*(v60 + 8 * ((956 * (a60 + 1 >= a44)) ^ a1)))(0x26A91E7300000000, 0x2678A6A900000000, 0x50A08800000000, 0x1E73B90B00000000, 2460169149, 3459082420);
}

uint64_t sub_100031794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  HIDWORD(a49) = v59;
  HIDWORD(a27) = v59;
  LODWORD(a50) = v59;
  return (*(v60 + 8 * (((a8 == 0) * ((((a25 + 280) | 0x21) ^ 0xC68A8E53) + 963999761)) ^ ((a25 + 280) | 0x21))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v59, a27, a8, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a8, a57, a58, a59);
}

void sub_100031ED0()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 40) - 1854164083 * ((v0 - 2 * (v0 & 0x52411295) + 1379996309) ^ 0x48F6391C);
  v2 = *(v0 + 24);
  v3 = *v0 + 1854164083 * ((v0 - 2 * (v0 & 0x52411295) + 1379996309) ^ 0x48F6391C);
  v4 = *(&off_1002A2080 + (v1 ^ 0x80E));
  (*(v4 + 8 * (v1 + 2535)))(v16, 0, 296);
  v5 = (((v3 ^ 0xE9E203ED) + 371063827) ^ ((v3 ^ 0xC250774D) + 1034913971) ^ ((v3 ^ 0xF7FDF91A) + 134350566)) + 1530337992;
  v6 = (v5 ^ 0x4957AE0) & (2 * (v5 & 0x811872F2)) ^ v5 & 0x811872F2;
  v7 = ((2 * (v5 ^ 0x6B55BC4)) ^ 0xF5A526C) & (v5 ^ 0x6B55BC4) ^ (2 * (v5 ^ 0x6B55BC4)) & 0x87AD2936;
  v8 = v7 ^ 0x80A52912;
  v9 = (v7 ^ 0x4000000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x1EB4A4D8) & v8 ^ (4 * v8) & 0x87AD2934;
  v11 = (v10 ^ 0x6A42000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x81090926)) ^ 0x7AD29360) & (v10 ^ 0x81090926) ^ (16 * (v10 ^ 0x81090926)) & 0x87AD2930;
  v13 = v11 ^ 0x87AD2936 ^ (v12 ^ 0x2800116) & (v11 << 8);
  if (v2)
  {
    v14 = (v5 ^ (2 * ((v13 << 16) & 0x7AD0000 ^ v13 ^ ((v13 << 16) ^ 0x29360000) & (((v12 ^ 0x852D2816) << 8) & 0x7AD0000 ^ 0x2840000 ^ (((v12 ^ 0x852D2816) << 8) ^ 0x2D290000) & (v12 ^ 0x852D2816))))) == -1945493314;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100032168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = ((v6 - 1512) | 0x429) ^ (v5 + 1397);
  LODWORD(STACK[0x5D8]) = v9;
  v10 = *(v7 + 8 * (((v4 == v9) * (v6 ^ 0x865)) ^ (v6 + 41)));
  STACK[0x5B8] = v7;
  STACK[0x3A8] = v8;
  LODWORD(STACK[0x5C4]) = v4;
  return v10(a1, a2, a3, a4, 485064763);
}

uint64_t sub_1000321DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5D4]) = 485064763;
  STACK[0x578] = v7 + 976;
  *(&STACK[0x710] + ((((a7 ^ 0x56F) - 2168) | 0x810) ^ 0xFF1Du) % 0x3C3) = -10;
  LOBYTE(STACK[0x969]) = -9;
  return (*(v8 + 8 * (a7 ^ 0x56F)))(963);
}

uint64_t sub_10003265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = STACK[0x9D6];
  v10 = ((v7 - 2373) * (v8 & 0xFu) + 62342) % 0x3C3;
  LOBYTE(STACK[0x9D6]) = *(&STACK[0x710] + v10);
  *(&STACK[0x710] + v10) = v9;
  v11 = STACK[0x969];
  v12 = 854 * (a5 % 0xF) + 63196 - 963 * ((4459987 * (854 * (a5 % 0xF) + 63196)) >> 32);
  v13 = v5 % 0xE + 75;
  LOBYTE(STACK[0x969]) = *(&STACK[0x710] + v12);
  *(&STACK[0x710] + v12) = v11;
  v14 = (((v5 % 0xE + 2) | (1021 - v5 % 0xE)) & 0x356) * v13;
  v15 = STACK[0x8FC];
  v16 = ((948 - v5 % 0xE) & 0x316 ^ v13 & 0x56) * v13;
  LOBYTE(STACK[0x8FC]) = *(&STACK[0x710] + (v14 - 963 * ((4459987 * v14) >> 32)));
  *(&STACK[0x710] + (v16 - 963 * ((4459987 * v16) >> 32))) = v15;
  v17 = 854 * (v6 % 0xD) + 64904 - 963 * ((4459987 * (854 * (v6 % 0xD) + 64904)) >> 32);
  v18 = v5 - 936787429;
  v19 = a5 ^ 0xD34E9751 ^ (v8 + 690166869);
  v20 = STACK[0x88F];
  LOBYTE(STACK[0x88F]) = *(&STACK[0x710] + v17);
  *(&STACK[0x710] + v17) = v20;
  v21 = v18 + (a5 ^ v6);
  v22 = 854 * (v19 % 0xC) + 65758 - 963 * ((4459987 * (854 * (v19 % 0xC) + 65758)) >> 32);
  v23 = STACK[0x822];
  LOBYTE(STACK[0x822]) = *(&STACK[0x710] + v22);
  *(&STACK[0x710] + v22) = v23;
  v24 = STACK[0x7B5];
  v25 = v18 ^ 0xE7F379DB;
  v26 = 854 * ((a5 ^ 0xD34E9751) % 0xB) + 66612 - 963 * ((4459987 * (854 * ((a5 ^ 0xD34E9751) % 0xB) + 66612)) >> 32);
  LOBYTE(STACK[0x7B5]) = *(&STACK[0x710] + v26);
  *(&STACK[0x710] + v26) = v24;
  LOBYTE(v26) = v25 + v19;
  v27 = 854 * (v25 % 0xA) + 67466 - 963 * ((4459987 * (854 * (v25 % 0xA) + 67466)) >> 32);
  v28 = v21 - v25;
  LOBYTE(v13) = STACK[0x748];
  LOBYTE(STACK[0x748]) = *(&STACK[0x710] + v27);
  *(&STACK[0x710] + v27) = v13;
  v29 = 854 * (v21 % 9) + 68320 - 963 * ((4459987 * (854 * (v21 % 9) + 68320)) >> 32);
  v30 = STACK[0xA9E];
  LOBYTE(STACK[0xA9E]) = *(&STACK[0x710] + v29);
  *(&STACK[0x710] + v29) = v30;
  v31 = v28 ^ 0x64A615BD;
  LOBYTE(v13) = v26 + (v28 ^ 0xBD);
  v32 = v13 & ((v29 & 8) + (v29 & 8 ^ 8) - 1);
  v33 = (a5 ^ 0xD34E9751) - v28 - 2001365616;
  v34 = 854 * v32 + 69174 - 963 * ((4459987 * (854 * v32 + 69174)) >> 32);
  LOBYTE(v27) = STACK[0xA31];
  LOBYTE(STACK[0xA31]) = *(&STACK[0x710] + v34);
  v35 = v25 - 164611911;
  *(&STACK[0x710] + v34) = v27;
  v36 = 854 * (v33 % 7);
  LOBYTE(v27) = STACK[0x9C4];
  LOBYTE(STACK[0x9C4]) = *(&STACK[0x710] + (v36 + 70028 - 963 * ((4459987 * (v36 + 70028)) >> 32)));
  *(&STACK[0x710] + (v36 + 70028) % (((627 - v36) & 0x3C3) + ((v36 + 70028) & 0x3C2))) = v27;
  v37 = v33 ^ (v25 - 164611911) ^ 0xE62B9B65;
  v38 = 854 * (((v25 - 164611911) ^ 0xE62B9B65) % 6) + 70882;
  v39 = 854 * (v31 % 5) + 71736 - 963 * ((4459987 * (854 * (v31 % 5) + 71736)) >> 32);
  LOBYTE(v25) = STACK[0x957];
  LOBYTE(STACK[0x957]) = *(&STACK[0x710] + v38 % (((v32 + 8) | (1015 - v32)) & 0xFFFFFFC3));
  *(&STACK[0x710] + (v38 - 963 * ((4459987 * v38) >> 32))) = v25;
  v40 = v31 % 5 + (((~(2 * v39) + v39) ^ v39) & 0x49);
  v41 = (v35 ^ 0x92414B41) - v31;
  LOBYTE(v31) = STACK[0x8EA];
  LOBYTE(STACK[0x8EA]) = *(&STACK[0x710] + v39);
  v42 = v7 - 8;
  v41 += 1743174123;
  *(&STACK[0x710] + (854 * v40 + 9394 - 963 * ((4459987 * (854 * v40 + 9394)) >> 32))) = v31;
  v43 = 854 * ((v13 + (v35 ^ 0x41) - v37) & 3) + 72590 - 963 * ((4459987 * (854 * ((v13 + (v35 ^ 0x41) - v37) & 3u) + 72590)) >> 32);
  LOBYTE(v31) = STACK[0x87D];
  LOBYTE(STACK[0x87D]) = *(&STACK[0x710] + v43);
  *(&STACK[0x710] + v43) = v31;
  v44 = 854 * ((v37 + v41) % 3) + 73444 - 963 * ((4459987 * (854 * ((v37 + v41) % 3) + 73444)) >> 32);
  LOBYTE(v39) = STACK[0x810];
  LOBYTE(STACK[0x810]) = *(&STACK[0x710] + v44);
  *(&STACK[0x710] + v44) = v39;
  v45 = STACK[0x7A3];
  v46 = 147;
  if (v41)
  {
    v46 = 38;
  }

  LOBYTE(STACK[0x7A3]) = *(&STACK[0x710] + v46);
  *(&STACK[0x710] + v46) = v45;
  v47 = STACK[0x5B8];
  v48 = *(&STACK[0x710] + (67671 - (116 * (v42 ^ 0xC84) - 2595) * (116 * (v42 ^ 0xC84u) - 2595)) % 0x3C3);
  *(&STACK[0x710] + (854 * (((v48 ^ 0x643EFBAB) + 465634389) ^ ((v48 ^ 0x77CF7873) - 2010085491) ^ ((v48 ^ 0x13F1832Eu) + 1812888786)) + 1010282) % 0x3C3) = -10;
  return (*(v47 + 8 * (v42 ^ 8)))();
}

uint64_t sub_100032C00()
{
  *(&STACK[0x710] + (854 * v2 + 62342) % 0x3C3u) = v2 - ((v2 << ((v1 ^ 0x40) - 43)) & 0xC) - 10;
  *(&STACK[0x710] + (854 * v2 + 63196) % 0x3C3u) = v2 - ((2 * v2) & 0xC) - 9;
  return (*(v0 + 8 * ((25 * (v2 == 14)) ^ v1)))();
}

uint64_t sub_100032C98@<X0>(int a1@<W4>, int a2@<W5>, unsigned int a3@<W6>, int a4@<W7>, unsigned int a5@<W8>)
{
  v14 = STACK[0x9D6];
  v15 = v12 + ((v6 & 0xF) + 500) * ((v6 & 0xF) + 500) - ((v6 & 0xF) + 73) * ((v6 & 0xF) + 73);
  v16 = STACK[0x5D4];
  LOBYTE(STACK[0x9D6]) = *(v9 + v15 - (((v15 * a3) >> 32) >> 8) * a4);
  *(v9 + (a2 + (v6 & 0xF) * a1 - ((4459987 * (a2 + (v6 & 0xFu) * a1)) >> 32) * a4)) = v14;
  v17 = STACK[0x969];
  v18 = v13 + v16 % (v11 ^ 0x323u) * a1 - ((((v13 + v16 % (v11 ^ 0x323u) * a1) * a3) >> 32) >> 8) * a4;
  LOBYTE(STACK[0x969]) = *(v9 + v18);
  *(v9 + v18) = v17;
  v19 = v5 % 0xE * a1 + 64050;
  v20 = v19 - 1926 * ((2229994 * v19) >> 32);
  if (v20 >= 0x3C3)
  {
    v20 -= 963;
  }

  v21 = v5 - 936787429;
  v22 = STACK[0x8FC];
  LOBYTE(STACK[0x8FC]) = *(v9 + v20);
  *(v9 + (v19 - ((4459987 * v19) >> 32) * a4)) = v22;
  v23 = STACK[0x88F];
  v24 = v16 ^ 0xD34E9751;
  v25 = a5 % 0xD * a1 + 64904 - ((4459987 * (a5 % 0xD * a1 + 64904)) >> 32) * a4;
  v26 = (v16 ^ 0xD34E9751) % 0xB;
  v27 = v16 ^ a5;
  LOBYTE(STACK[0x88F]) = *(v9 + v25);
  v28 = (v6 + 690166869) ^ v16 ^ 0xD34E9751;
  v29 = v21 + v27;
  *(v9 + v25) = v23;
  v30 = v28 % 0xC * a1 + 65758 - ((((v28 % 0xC * a1 + 65758) * a3) >> 32) >> 8) * a4;
  v31 = STACK[0x822];
  LOBYTE(STACK[0x822]) = *(v9 + v30);
  v32 = 945 - v26;
  v26 += 78;
  v33 = v21 ^ 0xE7F379DB;
  *(v9 + v30) = v31;
  LOBYTE(v21) = STACK[0x7B5];
  LOBYTE(STACK[0x7B5]) = *(v9 + ((v32 & 0x316 ^ v26 & 0x56) * v26 - ((4459987 * ((v32 & 0x316 ^ v26 & 0x56) * v26)) >> 32) * a4));
  *(v9 + (v26 * a1 - ((4459987 * (v26 * a1)) >> 32) * a4)) = v21;
  v34 = STACK[0x748];
  v35 = v33 % 0xA * a1 + 67466 - ((((v33 % 0xA * a1 + 67466) * a3) >> 32) >> 8) * a4;
  LOBYTE(STACK[0x748]) = *(v9 + v35);
  *(v9 + v35) = v34;
  v36 = v29 % 9 * a1 + 68320 - ((4459987 * (v29 % 9 * a1 + 68320)) >> 32) * a4;
  v37 = v29 - v33;
  v38 = v28 + v33;
  v39 = v33 - 164611911;
  LOBYTE(v33) = STACK[0xA9E];
  v40 = v37 ^ 0x64A615BD;
  v41 = v24 - v37 - 2001365616;
  v42 = v38 + (v37 ^ 0x64A615BD);
  LOBYTE(STACK[0xA9E]) = *(v9 + v36);
  *(v9 + v36) = v33;
  v43 = (v42 | 0x7FFFFFF8) * a1 + 76006 - (((((v42 | 0x7FFFFFF8) * a1 + 76006) * a3) >> 32) >> 8) * a4;
  v44 = STACK[0xA31];
  LOBYTE(STACK[0xA31]) = *(v9 + v43);
  *(v9 + v43) = v44;
  v45 = v41 % 7 * a1 + 70028 - ((4459987 * (v41 % 7 * a1 + 70028)) >> 32) * a4;
  v46 = STACK[0x9C4];
  LOBYTE(STACK[0x9C4]) = *(v9 + v45);
  *(v9 + v45) = v46;
  v47 = v41 ^ v39 ^ 0xE62B9B65;
  v48 = (v39 ^ 0xE62B9B65) % 6 * a1 + 70882 - ((4459987 * ((v39 ^ 0xE62B9B65) % 6 * a1 + 70882)) >> 32) * a4;
  LOBYTE(v41) = STACK[0x957];
  v49 = v40 % 5 * a1 + 71736 - ((4459987 * (v40 % 5 * a1 + 71736)) >> 32) * a4;
  v50 = (v39 ^ v10) - v40 + v8;
  LOBYTE(STACK[0x957]) = *(v9 + v48);
  *(v9 + v48) = v41;
  LOBYTE(v48) = STACK[0x8EA];
  LOBYTE(STACK[0x8EA]) = *(v9 + v49);
  *(v9 + v49) = v48;
  v51 = ((v42 + (v39 ^ v10) - v47) & 3) * a1 + 72590;
  v52 = v51 - ((4459987 * v51) >> 32) * a4;
  LOBYTE(v49) = STACK[0x87D];
  LOBYTE(STACK[0x87D]) = *(v9 + v52);
  *(v9 + v52) = v49;
  v53 = ((v47 + v50) % (-916909703 - (v52 & 0x20A) + (v52 | 0x36A6E1F5) + 3221)) * a1 + 73444;
  v54 = v53 - ((4459987 * v53) >> 32) * a4;
  LOBYTE(v47) = STACK[0x810];
  LOBYTE(STACK[0x810]) = *(v9 + v54);
  *(v9 + v54) = v47;
  v55 = 147;
  if (v50)
  {
    v55 = 38;
  }

  v56 = STACK[0x7A3];
  LOBYTE(STACK[0x7A3]) = *(v9 + v55);
  *(v9 + v55) = v56;
  v57 = 631 * (*(v9 + (800198 - 830 * a4)) ^ 0x87 ^ (16 * (*(v9 + 800198 - (((800198 * a3) >> 32) >> 8) * a4) & 0xF))) + 373552;
  LOBYTE(v57) = *(*(&off_1002A2080 + (v11 ^ 0x22C) - 55) + (v57 - 944 * ((4549754 * v57) >> 32)) - 12);
  v58 = a2 + ((-37 * (((v57 ^ 0xF9) + 7) ^ ((v57 ^ 0x91) + 111) ^ ((v57 ^ 0xAD) + 83)) - 121) ^ 0x22) * a1;
  *(v9 + 580720 - (((580720 * a3) >> 32) >> 8) * a4) = *(v9 + (v58 - ((4459987 * v58) >> 32) * a4));
  return (*(v7 + 8 * (v11 ^ (1405 * (((1 - (v11 ^ 0x22C)) | ((v11 ^ 0x22C) - 1)) >= 0)))))();
}

uint64_t sub_100033268@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x710] + (854 * (((v1 & 0xF ^ 0x2BCDAC15) + 1590617850) ^ ((v1 & 0xF ^ 0x4139923A) - 1271211817) ^ (3 * (a1 ^ 0x267) + (v1 & 0xF ^ 0x6AF43E2F) - 1611175902)) - 1492106456) % 0x3C3) ^ (16 * (*(&STACK[0x710] + (854 * ((((v1 >> 4) ^ 0xFA12D5B8) - 1518372999) ^ (((v1 >> 4) ^ 0x3F3EE7C9) - 531413750) ^ (((v1 >> 4) ^ 0x452C3271) + 440504498)) - 1471199760) % 0x3C3) & 0xF));
  v6 = *(v3 + (631 * (((v5 ^ 0x55A8B654) - 1437120058) ^ ((v5 ^ 0x22DA21D8) - 584720822) ^ ((v5 ^ 0x7772976Cu) - 2003998466)) + 277640) % 0x3B0) >> 4;
  *(&STACK[0x710] + (v4 + 854 * v1) % 0x3C3) = (16 * *(&STACK[0x710] + (854 * ((((v6 ^ 0xE4) + 116) ^ ((v6 ^ 0xA9) + 63) ^ ((v6 ^ 0x43) - 43)) - 2) - 67466) % 0x3C3)) ^ 0x96;
  return (*(v2 + 8 * ((5766 * (v1 == 255)) ^ a1)))();
}

uint64_t sub_100033488(int a1, int a2)
{
  v11 = (*(v7 + v9 + (((2 * v3) ^ 0x194B) & v2) * v4 - ((((v9 + (((2 * v3) ^ 0x194B) & v2) * v4) * v5) >> 32) >> 8) * v6) ^ ((16 * (*(v7 + v9 + (v2 >> 4) * v4 - ((((v9 + (v2 >> 4) * v4) * v5) >> 32) >> 8) * v6) & 0xF)) | 5) ^ 0x9D) * a1;
  v12 = *(v10 + (v11 - ((4549754 * v11) >> 32) * a2));
  v13 = (((v12 ^ 0x29D647C) + 2103614293) ^ ((v12 ^ 0x38064A11) - 939936454) ^ ((v12 ^ 0x3A9B2E80) + 1164235177)) * v4 + 111874;
  *(v7 + v2 * v4 + 135786 - ((((v2 * v4 + 135786) * v5) >> 32) >> 8) * v6) = *(v7 + v13 - (((v13 * v5) >> 32) >> 8) * v6);
  return (*(v8 + 8 * (((v2 == 255) | (8 * (v2 == 255))) ^ v3)))();
}

uint64_t sub_100033668(int a1, int a2)
{
  v12 = *(v11 + (v6 ^ 0x500 ^ ((a2 - 2112) | 0x500)) * v7 + 542029 - (((((v6 ^ 0x500 ^ ((a2 - 2112) | 0x500u)) * v7 + 542029) * v8) >> 32) >> 7) * a1);
  v13 = ((-119 * (((v12 ^ 0x7F) - 127) ^ ((v12 ^ 0x8D) + 115) ^ ((v12 ^ 0x37) - 55)) + 109) ^ 0x44) * v2 + 62342;
  *(v5 + v10 + v6 * v2 - ((((v10 + v6 * v2) * v3) >> 32) >> 8) * v4) = *(v5 + (v13 - ((4459987 * v13) >> 32) * v4));
  return (*(v9 + 8 * ((23 * (v6 != 15)) ^ a2)))();
}

uint64_t sub_100033730@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x5C4]) != LODWORD(STACK[0x5D8]);
  LODWORD(STACK[0x5D4]) = 421747395;
  v4 = *(v1 + 8 * ((((((a1 + 1787) | 0x52) ^ 0xFFFFF863) + ((a1 + 787834802) & 0xD10A9F44)) * v3) ^ a1));
  STACK[0x3A0] = v2;
  return v4();
}

uint64_t sub_1000337B8(int a1)
{
  v6 = v1 ^ 0x21B;
  v7 = (((a1 ^ 0xCCE0A59A) - 22388578) ^ ((a1 ^ 0x9BB92CE7) - 1443632671) ^ ((a1 ^ v6 ^ 0xDB53A7A2) - 384209691)) + 1171748958;
  v8 = v7 < 0x4185DF8;
  v9 = ((v5 ^ 0x19235AC3 ^ (-257 * ((v2 - 713865777 * ((*STACK[0x3A8] ^ 0x659FB36D) + ((v6 - 1102) ^ (v3 + 3898)) + ((2 * *STACK[0x3A8]) & 0xDAu)) - 941210028) / 0x101))) + 693890915) ^ 0xF6908DE4;
  v10 = ((v5 ^ 0x19235AC3 ^ (-257 * ((v2 - 713865777 * ((*STACK[0x3A8] ^ 0x659FB36D) + ((v6 - 1102) ^ (v3 + 3898)) + ((2 * *STACK[0x3A8]) & 0xDAu)) - 941210028) / 0x101))) + 693890915) ^ 0xEFB3D727;
  v11 = v9 + 693890915;
  v12 = v9 + v5;
  HIDWORD(v13) = v9;
  LODWORD(v13) = v9;
  v14 = ((((v13 >> 29) ^ v10) - (v9 + v5) + 2 * ((v13 >> 29) & v10)) ^ (v9 + 693890915)) + 694638239;
  v15 = v14 ^ v10;
  HIDWORD(v13) = v14;
  LODWORD(v13) = v14;
  v16 = v14 ^ v12;
  v17 = v14 + v11;
  v18 = ((v13 >> 28) - v15 + v16) ^ 0xC758AADF;
  HIDWORD(v13) = v18 ^ v17;
  LODWORD(v13) = v18 ^ v17;
  v19 = (v18 ^ v17) + v15;
  v20 = (v13 >> 31) - ((v18 ^ v17) + v16 + v19);
  v21 = v18 & 4;
  if ((v20 & v18 & 4) != 0)
  {
    v21 = -v21;
  }

  v22 = (v21 + v20) ^ v18 & 0xFFFFFFFB;
  if (v7 >= 0x4185DF8)
  {
    v8 = v7 > 0x4185DF9;
  }

  return (*(v4 + 8 * ((37 * !v8) ^ v6)))(218, 3353757268, (v22 - 68708502) ^ v19, 4278255361);
}

uint64_t sub_1000339BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  LODWORD(STACK[0x20C]) = 0;
  v54 = (v51 - 695209991) & 0x29700E7F;
  LODWORD(STACK[0x218]) = 0;
  LODWORD(STACK[0x214]) = 41944387;
  LODWORD(STACK[0x210]) = 1886845664;
  LODWORD(STACK[0x3B8]) = -134348809;
  LODWORD(STACK[0x3B4]) = -469238066;
  LODWORD(STACK[0x224]) = 52;
  LODWORD(STACK[0x21C]) = (((a1 ^ 0x1C4CA537) + 772169777) ^ ((a1 ^ 0x460BB64E) + 1950446410) ^ ((a1 ^ 0xD64D33E7) - 469240095)) - 1961551241;
  v55 = (v53 ^ 0xF407939A) + 421747395;
  v56 = v55 + (v53 ^ 0xF407939A);
  v57 = ((2 * ((v55 ^ 0x2F8B3772) - 599060614)) & 0xB40D4978) + (((v55 ^ 0x2F8B3772) - 599060614) ^ ((v54 ^ 0xEC3) + 1510383614));
  v58 = v57 + (((v55 ^ 0x80B0A55B) - 1510207506) ^ ((v55 ^ 0x122B4BBC) + 929554699) ^ ((v55 ^ 0xA2E35B47) - 2018512398)) + 243323247;
  v59 = *(v52 + 8 * (v54 ^ 0xCD));
  return v59(v57 + 599060614, v56 - v58 - 820694304, v57 + 250294501 + (((v58 ^ (v57 + 599060614) ^ (-316356263 - v56) ^ 0x53C7EBB3) - 607515681) ^ ((v58 ^ (v57 + 599060614) ^ (-316356263 - v56) ^ 0x5EA36A31) - 693204387) ^ ((v58 ^ (v57 + 599060614) ^ (-316356263 - v56) ^ 0xD648182) - 2056691216)), v59, 797652850, 1510383614, 3474272992, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, 0xEE092666F730D80BLL, 0x42C632D66F4C0916, 0xF25A34AA39D6B4E3, 0xADF0AB5B543B3073, 0x94E0035476E4773, 0x61D0FFB3C601C02, 0xC6EC5F411567429FLL, 0xBBEFD6C7FE3EED3BLL, 0xD31D5A1521DF319DLL, 0x693EEDAC1CDF312ALL, 0xAA9E1E27486DBC3ELL, 0x4F4974D94522FE2FLL);
}

uint64_t sub_1000373F0@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, char a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  LODWORD(STACK[0x234]) = v7 ^ 0xDA317F60;
  LODWORD(STACK[0x5A0]) = ((a3 - 1716142205 - ((2 * a3) & 0x336B7F06)) ^ a2) + v6 + 1276212698;
  v9 = (v8 ^ LODWORD(STACK[0x5C8])) + a1 + 638460580 - ((2 * ((v8 ^ LODWORD(STACK[0x5C8])) + a1)) & 0x4C1C4548);
  v10 = LODWORD(STACK[0x5D8]) - 1426190885;
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x5D8]) - 178171637 + (((v9 ^ 0x87A75E14) + 2019074540) ^ ((v9 ^ 0xAF918E58) + 1349415336) ^ ((v9 ^ 0xE38F2E8) - 238613224));
  LODWORD(STACK[0x228]) = v6 + ((((a4 ^ 5) - 69) ^ ((a4 ^ 0xFC) + 68) ^ ((a4 ^ 0x4F) - 15)) - ((((v6 - ((2 * v6) & 0x76) - 69) ^ 0x3F) - 63) ^ (((v6 - ((2 * v6) & 0x76) - 69) ^ 0xFB) + 5) ^ (((v6 - ((2 * v6) & 0x76) - 69) ^ 0x7F) - 127)) + 59);
  LODWORD(STACK[0x5C8]) = (v10 ^ v8) + 2 * (v10 & v8) - 986806869 - ((2 * ((v10 ^ v8) + 2 * (v10 & v8) + 1319812813)) & 0xED078DBC);
  LODWORD(STACK[0x5A8]) = 75152;
  LODWORD(STACK[0x5B0]) = 11102;
  LODWORD(STACK[0x5C4]) = 1011;
  return (*(a5 + 8 * ((a6 + 1521) ^ 0x27)))();
}

void sub_100037820(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15 = (v11 - 2405) * v9;
  v16 = v8;
  v17 = &STACK[0x710];
  v18 = *(&STACK[0x710] + v15 % 0x3C3);
  LODWORD(STACK[0x5D8]) = v9;
  LODWORD(STACK[0x560]) = v15 + 854;
  v19 = ((v18 ^ 0x14) << 24) | ((*(&STACK[0x710] + (v15 + 854) % 0x3C3) ^ 0x14) << 16);
  LODWORD(STACK[0x568]) = v15 + 2562;
  v20 = ((*(&STACK[0x710] + (v15 + 2562) % 0x3C3) ^ 0x1D84D270) & ~v19 | v19 & 0xE27B0000) ^ 0x1D84D286;
  v21 = v20 + ((*(&STACK[0x710] + (v15 + 1708) % 0x3C3) ^ 0x14) << 8);
  v22 = 88 * v7;
  v23 = 88 * v7 + 25216;
  LODWORD(STACK[0x590]) = v7;
  v24 = v10;
  LODWORD(STACK[0x580]) = v12;
  v25 = (v21 + 1502808696 - 2 * (v21 & 0x59930A7D ^ v20 & 5)) ^ v13;
  v26 = STACK[0x578];
  *(STACK[0x578] + 4 * (v23 - 263 * ((v23 & 0xFFF8u) / 0x107))) = v25 ^ 0x3E11F03;
  v27 = (*(v17 + (v15 + 62342) % 0x3C3) << 24) | ((*(v17 + (v15 + 63196) % 0x3C3) ^ 0xF6) << 16);
  v28 = *(&STACK[0x710] + (v15 + 64050) % 0x3C3) ^ 0xF6;
  LODWORD(STACK[0x598]) = v14;
  v29 = ((v27 | (v28 << 8)) ^ 0x1FFFFFF) & (*(&STACK[0x710] + (v15 + 64904) % 0x3C3) ^ 0xA222FED4) | (v27 | (v28 << 8)) & 0x5DDD0100;
  v30 = STACK[0x5C8];
  v31 = (LODWORD(STACK[0x5C8]) ^ 0xE2 ^ (v25 + 1988347614 - ((2 * v25) & 0xED078DBC))) - (LODWORD(STACK[0x5C8]) ^ 0x7683C6DE);
  v32 = (v16 ^ 0xE2 ^ (v25 + 638460580 - ((2 * v25) & 0x4C1C4548))) - (v16 ^ 0x260E22A4);
  v33 = STACK[0x5A0];
  v34 = 2 * LODWORD(STACK[0x5A0]);
  LODWORD(STACK[0x588]) = a6;
  LODWORD(STACK[0x570]) = v11;
  v35 = (a7 ^ 0xFF30D1F5) & (2 * (a7 & 0xFE2111E6)) ^ a7 & 0xFE2111E6;
  v36 = ((2 * (a7 ^ 0x2F30F1BD)) ^ 0xA223C0B6) & (a7 ^ 0x2F30F1BD) ^ (2 * (a7 ^ 0x2F30F1BD)) & 0xD111E05A;
  v37 = ((4 * (v36 ^ 0x51102049)) ^ 0x4447816C) & (v36 ^ 0x51102049) ^ (4 * (v36 ^ 0x51102049)) & 0xD111E058;
  v38 = (v37 ^ 0x40018050) & (16 * ((v36 ^ 0x8010E050) & (4 * v35) ^ v35)) ^ (v36 ^ 0x8010E050) & (4 * v35) ^ v35;
  v39 = ((16 * (v37 ^ 0x91106013)) ^ 0x111E05B0) & (v37 ^ 0x91106013) ^ (16 * (v37 ^ 0x91106013)) & 0xD111E050;
  v40 = v38 ^ 0xD111E05B ^ (v39 ^ 0x11100000) & (v38 << 8);
  v41 = ((v40 << 16) ^ 0x605B0000) & (((v39 ^ 0xC001E04B) << 8) & 0x51110000 ^ 0x40110000 ^ (((v39 ^ 0xC001E04B) << 8) ^ 0x11E00000) & (v39 ^ 0xC001E04B));
  v42 = v29 ^ v30;
  v43 = v29 ^ v30 ^ 0xAF29944;
  v44 = (v33 + 1435996091 - ((v34 - 133625210) & 0xB32614F0)) ^ v13;
  *(v26 + 4 * (v22 + 13776 - 263 * (((v22 + 13776) & 0xFFF8u) / 0x107))) = v43;
  LODWORD(STACK[0x558]) = a7 ^ a3 ^ (2 * ((v40 << 16) & 0x51110000 ^ v40 ^ v41));
  v45 = v43 ^ (v33 - 2041043427 - ((v34 + 403245702) & 0x14A74370) + 222);
  v46 = ((v42 ^ 0x29847DE7) - 594994339) ^ ((v42 ^ 0xCD86591D) + 948649895) ^ ((v42 ^ 0x64A31C06) - 1850836290);
  v47 = (LODWORD(STACK[0x5D4]) ^ 0x9B02DF61) & (2 * (STACK[0x5D4] & 0xDBAADF74)) ^ STACK[0x5D4] & 0xDBAADF74;
  v48 = ((2 * (LODWORD(STACK[0x5D4]) ^ 0x3D565D29)) ^ 0xCDF904BA) & (LODWORD(STACK[0x5D4]) ^ 0x3D565D29) ^ (2 * (LODWORD(STACK[0x5D4]) ^ 0x3D565D29)) & 0xE6FC825C;
  v49 = v48 ^ 0x22048245;
  v50 = (v48 ^ 0xC4F80014) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0x9BF20974) & v49 ^ (4 * v49) & 0xE6FC825C;
  v52 = v50 ^ 0xE6FC825D ^ (v51 ^ 0x82F00040) & (16 * v50);
  v53 = (16 * (v51 ^ 0x640C8209)) & 0xE6FC8250 ^ 0x8034820D ^ ((16 * (v51 ^ 0x640C8209)) ^ 0x6FC825D0) & (v51 ^ 0x640C8209);
  v54 = (v52 << 8) & 0xE6FC8200 ^ v52 ^ ((v52 << 8) ^ 0xFC825D00) & v53;
  v55 = LODWORD(STACK[0x5D4]) ^ v24 ^ (2 * ((v54 << 16) & 0x66FC0000 ^ v54 ^ ((v54 << 16) ^ 0x25D0000) & ((v53 << 8) & 0x66FC0000 ^ 0x27C0000 ^ ((v53 << 8) ^ 0x7C820000) & v53))) ^ 0x1B5BEAF3;
  v56 = a7 - 31387162 - v44;
  v57 = v56 ^ ((((v13 ^ 0x1E059C31) - 503684145) ^ ((v13 ^ 0x19D4BC0D) - 433372173) ^ ((v13 ^ 0x5E422A44) - 1581394500)) + 1269007678);
  v58 = v32 ^ v31 ^ ((v21 ^ 0xE2 ^ v45) - ((v45 + 1502808696 - ((2 * v45) & 0xB32614F0)) ^ v13));
  v59 = a7 + 1868525433 + v46;
  v60 = (v59 ^ 0xF0C9E557) & (2 * (v59 & 0xF411F567)) ^ v59 & 0xF411F567;
  v61 = ((2 * (v59 ^ 0xF0CBC797)) ^ 0x9B465E0) & (v59 ^ 0xF0CBC797) ^ (2 * (v59 ^ 0xF0CBC797)) & 0x4DA32F0;
  v62 = v61 ^ 0x44A1210;
  v63 = (v61 ^ 0x8020A0) & (4 * v60) ^ v60;
  v64 = ((4 * v62) ^ 0x1368CBC0) & v62 ^ (4 * v62) & 0x4DA32F0;
  v65 = (v64 ^ 0x4802C0) & (16 * v63) ^ v63;
  v66 = ((16 * (v64 ^ 0x4923030)) ^ 0x4DA32F00) & (v64 ^ 0x4923030) ^ (16 * (v64 ^ 0x4923030)) & 0x4DA32F0;
  v67 = v65 ^ 0x4DA32F0 ^ (v66 ^ 0x48222F0) & (v65 << 8);
  v68 = v59 ^ (2 * ((v67 << 16) & 0x4DA0000 ^ v67 ^ ((v67 << 16) ^ 0x32F00000) & (((v66 ^ 0x5810F0) << 8) & 0x4DA0000 ^ 0x4C80000 ^ (((v66 ^ 0x5810F0) << 8) ^ 0x5A320000) & (v66 ^ 0x5810F0)))) ^ 0x7656313F;
  v69 = v30 ^ v16;
  v70 = v30 ^ v16 ^ 0xAF721B85;
  v71 = v58 - LODWORD(STACK[0x5D4]) + 1482289806;
  v72 = (v71 ^ 0x8D783BDF) & (2 * (v71 & 0xC07C3BDF)) ^ v71 & 0xC07C3BDF;
  v73 = ((2 * (v71 ^ 0x8DA079FF)) ^ 0x9BB88440) & (v71 ^ 0x8DA079FF) ^ (2 * (v71 ^ 0x8DA079FF)) & 0x4DDC4220;
  v74 = v73 ^ 0x44444220;
  v75 = (v73 ^ 0x1900000) & (4 * v72) ^ v72;
  v76 = ((4 * v74) ^ 0x37710880) & v74 ^ (4 * v74) & 0x4DDC4220;
  v77 = v75 ^ 0x4DDC4220 ^ (v76 ^ 0x5500000) & (16 * v75);
  v78 = (16 * (v76 ^ 0x488C4220)) & 0x4DDC4220 ^ 0x184020 ^ ((16 * (v76 ^ 0x488C4220)) ^ 0xDDC42200) & (v76 ^ 0x488C4220);
  v79 = (v77 << 8) & 0x4DDC4200 ^ v77 ^ ((v77 << 8) ^ 0xDC422000) & v78;
  v80 = v71 ^ (2 * ((v79 << 16) & 0x4DDC0000 ^ v79 ^ ((v79 << 16) ^ 0x42200000) & ((v78 << 8) & 0x4DDC0000 ^ 0x19C0000 ^ ((v78 << 8) ^ 0xDC420000) & v78))) ^ 0xC9171E27;
  v81 = (((v30 ^ 0x8F23859E) + 1893497442) ^ ((v30 ^ 0xD83BC6B2) + 667171150) ^ ((v30 ^ 0x219B85F2) - 563840498)) + 1754546596;
  v82 = v70 + LODWORD(STACK[0x5D4]);
  v83 = v81 + v82 - 609558667 - 2 * (v81 & (v82 - 609558667));
  v84 = v26;
  *(v26 + 4 * (v22 + 31200 - 263 * (((v22 + 31200) & 0xFFF8u) / 0x107))) = v68;
  *(v26 + 4 * (v22 + 19496 - 263 * (((v22 + 19496) & 0xFFF8u) / 0x107))) = v80;
  LOBYTE(v81) = *(&STACK[0x710] + (v15 + 4270) % 0x3C3);
  v85 = (v44 ^ 0x39D451B0) - (v44 & 0x23B4F086 ^ 0x220A006 | (v44 ^ 0x39D451B0) & 0x23B4F086) + 599060614;
  LOBYTE(v62) = (v81 & 0xE2) + (((v81 & 0xE2 ^ 0x2D) + 25) ^ ((v81 & 0xE2) + 70) ^ ((v81 & 0xE2 ^ 0xD3) - 25)) + 75;
  LOBYTE(v68) = v62 & 0xEF ^ 9;
  v86 = ((*(v17 + (v15 + 3416) % 0x3C3) ^ 0x14) << 24) | (((v81 ^ v62 ^ (2 * ((v62 ^ 0x5C) & (2 * ((v62 ^ 0x5C) & (2 * ((v62 ^ 0x5C) & (2 * ((v62 ^ 0x5C) & (2 * ((v62 ^ 0x5C) & (2 * (((2 * v62) & 0x3A ^ 0x32) & v62 ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) ^ 0x19) << 16) | ((*(v17 + (v15 + 5124) % 0x3C3) ^ 0x14) << 8);
  v87 = ((*(&STACK[0x710] + (v15 + 5978) % 0x3C3) ^ 0x19937020) & ~v86 | v86 & 0xE66C8F00) ^ 0x199370D6;
  *(v26 + 4 * (v22 + 25304 - 263 * (((v22 + 25304) & 0xFFF8u) / 0x107))) = v87 ^ v85 ^ 0x3E11F03;
  v88 = (*(v17 + (v15 + 65758) % 0x3C3) << 24) | ((*(v17 + (v15 + 66612) % ((971 - v15) & 0x3C3 ^ (v15 + 66612) & 0x3C0)) ^ 0xF6) << 16) | ((*(v17 + (v15 + 67466) % 0x3C3) ^ 0xF6) << 8);
  v89 = v87 ^ v85 ^ 0xE2;
  v90 = ((v88 ^ 0x1FFFFFF) & (*(&STACK[0x710] + (v15 + 68320) % 0x3C3) ^ 0xE2C6BE99) | v88 & 0x1D394100) ^ v69;
  v91 = (v55 + v83) ^ v69 ^ 0x6959B5CA;
  LODWORD(STACK[0x5D4]) = v91;
  v92 = v56 + 125441228 + (v90 ^ 0x9F9F0BA5);
  v93 = v90 ^ 0x15CCAA1D;
  v94 = v90 ^ 0x15CCAA1D ^ (v57 - 1974230600 - ((2 * v57) & 0x14A74370));
  v82 -= 1617770235;
  v95 = ((LODWORD(STACK[0x558]) ^ 0xE6AA6BC6) + v57) ^ v85;
  v96 = (v94 ^ 0xE2 ^ v87) - (v94 ^ v85);
  v97 = v91 ^ v83;
  v98 = ((v89 ^ v83) - v83) ^ v96 ^ ((v89 ^ v69 ^ 0x6959B5CA) - (v69 ^ 0x6959B5CA));
  *(v26 + 4 * (v22 + 13864 - 263 * (((v22 + 13864) & 0xFFF8u) / 0x107))) = v93;
  v99 = (v97 ^ v82) + 1460456745;
  v100 = v95 ^ v57 ^ (v56 - 1008211568);
  v101 = (v95 ^ v57) - (v100 + 1460456745);
  LODWORD(STACK[0x5C8]) = v100 + 1460456745;
  *(v26 + 4 * (v22 + 31288 - 263 * (((v22 + 31288) & 0xFFF8u) / 0x107))) = v92 ^ ((v92 ^ 0x4C1885AC) - 613284950) ^ ((v92 ^ 0xE6ED51D4) + 1904728018) ^ ((v92 ^ 0xBF8F537C) + 686151034) ^ ((v92 ^ 0x7DEFFEFE) - 360351492) ^ 0xE2C6D842;
  v102 = v98 - v82 + 929824912;
  v103 = (v102 ^ 0x3910090C) & (2 * (v102 & 0xBD150D51)) ^ v102 & 0xBD150D51;
  v104 = ((2 * (v102 ^ 0x2910132C)) ^ 0x280A3CFA) & (v102 ^ 0x2910132C) ^ (2 * (v102 ^ 0x2910132C)) & 0x94051E7C;
  v105 = v104 ^ 0x94050205;
  v106 = (v104 ^ 0x11C49) & (4 * v103) ^ v103;
  v107 = ((4 * v105) ^ 0x501479F4) & v105 ^ (4 * v105) & 0x94051E7C;
  v108 = (v107 ^ 0x10041879) & (16 * v106) ^ v106;
  v109 = ((16 * (v107 ^ 0x84010609)) ^ 0x4051E7D0) & (v107 ^ 0x84010609) ^ (16 * (v107 ^ 0x84010609)) & 0x94051E70;
  v110 = v109 ^ 0x9404182D;
  v111 = v108 ^ 0x94051E7D ^ (v109 ^ 0x1062D) & (v108 << 8);
  v112 = v97 - v99;
  v113 = v97 - v99 + (v69 ^ 0x3B8D041);
  *(v26 + 4 * (v22 + 19584 - 263 * (((v22 + 19584) & 0xFFF8u) / 0x107))) = v102 ^ (2 * ((v111 << 16) & 0x14050000 ^ v111 ^ ((v111 << 16) ^ 0x1E7D0000) & ((v110 << 8) & 0x94050000 ^ 0x10010000 ^ ((v110 << 8) ^ 0x51E0000) & v110))) ^ 0x37469013;
  v114 = ((*(v17 + (v15 + 7686) % 0x3C3) ^ 0x14) << 16) | ((*(v17 + (v15 + 8540) % 0x3C3) ^ 0x14) << 8) | ((*(v17 + (v15 + 6832) % 0x3C3) ^ 0x14) << 24);
  v115 = *(&STACK[0x710] + (v15 + 9394) % 0x3C3) ^ (v100 + 1460456745) ^ (v114 + 234934281 - ((2 * v114) & 0x1C01A000) + 20);
  *(v26 + 4 * (v22 + 25392 - 263 * (((v22 + 25392) & 0xFFF8u) / 0x107))) = v115 ^ 0xDE1CFE8;
  v116 = *(&STACK[0x710] + (v15 + 70028) % 0x3C3) ^ 0xF6;
  v117 = LODWORD(STACK[0x5D8]) + 84;
  v118 = STACK[0x5C4];
  v119 = LODWORD(STACK[0x5C4]) - 587;
  LODWORD(STACK[0x5C4]) = STACK[0x5C4];
  v120 = ((v117 | v119) & 0x144 | 0x212) * v117;
  v121 = v101 + (v85 ^ 0x6AE1658B);
  v122 = *(&STACK[0x710] + (LODWORD(STACK[0x560]) + 70028) % 0x3C3u) ^ 0xF6;
  v123 = (*(&STACK[0x710] + (v15 + 69174) % 0x3C3) << 24) | (v116 << 16);
  v124 = ((v123 | (v122 << 8)) ^ 0x9F0A1FF) & (*(&STACK[0x710] + v120 % 0x3C3) ^ 0x1BF0A1CE) | (v123 | (v122 << 8)) & 0xE40F5E00;
  LODWORD(STACK[0x5A0]) = v99;
  v125 = v124 ^ v99;
  v126 = v121 ^ v101;
  v127 = v125 ^ 0x75A30080 ^ (v112 - 1974230600 - ((2 * v112) & 0x14A74370));
  *(v26 + 4 * (v22 + 13952 - 263 * (((v22 + 13952) & 0xFFF8u) / 0x107))) = v125 ^ 0x75A30080;
  v128 = (((v125 ^ 0x75A30080 ^ (v113 - 1974230600 - ((2 * v113) & 0x14A74370))) - v113) ^ (v127 - v112) ^ ((v125 ^ 0x75A30062 ^ ((v115 ^ v126 ^ 0xE00D0EB) - 1974230600 - ((2 * (v115 ^ v126 ^ 0xE00D0EB)) & 0x14A74370))) - (v115 ^ v126 ^ 0xE00D009))) - v99 - 172431459;
  v129 = (v128 ^ 0xF173A5A4) & (2 * (v128 & 0xE543C9A5)) ^ v128 & 0xE543C9A5;
  v130 = ((2 * (v128 ^ 0x3B7737AE)) ^ 0xBC69FC16) & (v128 ^ 0x3B7737AE) ^ (2 * (v128 ^ 0x3B7737AE)) & 0xDE34FE0A;
  v131 = v130 ^ 0x42140209;
  v132 = (v130 ^ 0x9C006C00) & (4 * v129) ^ v129;
  v133 = ((4 * v131) ^ 0x78D3F82C) & v131 ^ (4 * v131) & 0xDE34FE08;
  v134 = (v133 ^ 0x5810F800) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0x86240603)) ^ 0xE34FE0B0) & (v133 ^ 0x86240603) ^ (16 * (v133 ^ 0x86240603)) & 0xDE34FE00;
  v136 = v134 ^ 0xDE34FE0B ^ (v135 ^ 0xC204E000) & (v134 << 8);
  v137 = STACK[0x598];
  v138 = v128 ^ (2 * ((v136 << 16) & 0x5E340000 ^ v136 ^ ((v136 << 16) ^ 0x7E0B0000) & (((v135 ^ 0x1C301E0B) << 8) & 0x5E340000 ^ 0x4A000000 ^ (((v135 ^ 0x1C301E0B) << 8) ^ 0x34FE0000) & (v135 ^ 0x1C301E0B))));
  v139 = v100 + 1541470706 + (v115 ^ 0xE00D009);
  v140 = (v139 ^ 0xCFAAC95C) & (2 * (v139 & 0xEFACE118)) ^ v139 & 0xEFACE118;
  v141 = ((2 * (v139 ^ 0x5BBB4B6C)) ^ 0x682F54E8) & (v139 ^ 0x5BBB4B6C) ^ (2 * (v139 ^ 0x5BBB4B6C)) & 0xB417AA74;
  v142 = v141 ^ 0x9410AA14;
  v143 = (v141 ^ 0x20070060) & (4 * v140) ^ v140;
  v144 = ((4 * v142) ^ 0xD05EA9D0) & v142 ^ (4 * v142) & 0xB417AA74;
  v145 = (v144 ^ 0x9016A840) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x24010224)) ^ 0x417AA740) & (v144 ^ 0x24010224) ^ (16 * (v144 ^ 0x24010224)) & 0xB417AA70;
  v147 = v145 ^ 0xB417AA74 ^ (v146 ^ 0x12A200) & (v145 << 8);
  *(v26 + 4 * (v22 + 31376 - 263 * (((v22 + 31376) & 0xFFF8u) / 0x107))) = v138 ^ 0x6F79940B;
  *(v26 + 4 * (v22 + 19672 - 263 * (((v22 + 19672) & 0xFFF8u) / 0x107))) = v139 ^ (2 * ((v147 << 16) & 0x34170000 ^ v147 ^ ((v147 << 16) ^ 0x2A740000) & (((v146 ^ 0xB4050834) << 8) & 0x34170000 ^ 0x20150000 ^ (((v146 ^ 0xB4050834) << 8) ^ 0x17AA0000) & (v146 ^ 0xB4050834)))) ^ 0x4DF81448;
  v148 = STACK[0x5B0];
  v149 = (v95 - 1556323093) ^ 0xAB5AA00B;
  v150 = ((*(v17 + (v15 + 10248) % 0x3C3) ^ 0x14) << 24) | ((*(v17 + LODWORD(STACK[0x5B0]) % (((v127 | 0x444F2A5E) - (v127 & 0xBBB0D5A1) - 866312855) & 0xA753B3E3)) ^ 0x14) << 16) | ((*(v17 + (v15 + 11956) % 0x3C3) ^ 0x14) << 8);
  v151 = ((*(&STACK[0x710] + (v15 + 12810) % 0x3C3) ^ 0x99D02AC2) & ~v150 | v150 & 0x662FD500) ^ (v149 - 913785332);
  v152 = (LODWORD(STACK[0x568]) + 70028) % ((v118 | LODWORD(STACK[0x5D8])) & 0x3C3u);
  v153 = v151 ^ 0x99D02AD6;
  *(v26 + 4 * (v22 + 25480 - 263 * (((v22 + 25480) & 0xFFF8u) / 0x107))) = v151 ^ 0x9A313537;
  v154 = STACK[0x5A8];
  v155 = LODWORD(STACK[0x5C8]) ^ 0x15131E3;
  LODWORD(v26) = (LODWORD(STACK[0x5D4]) - 1556323093) ^ 0xAB5AA00B;
  v156 = STACK[0x588];
  v157 = (v113 ^ v112) + v26;
  v158 = v121 + 1917490270 + v126 + v149;
  v159 = v113 + 1917490270 + v157;
  v160 = (*(v17 + v152) << 24) | ((*(v17 + (854 * (LODWORD(STACK[0x5D8]) + (v152 | 0x48) - (v152 & 0x3B7)) + 11956) % 0x3C3) ^ 0xF6) << 16);
  v161 = *(&STACK[0x710] + (v15 + 74298) % 0x3C3);
  v162 = STACK[0x580];
  v163 = (((v160 | ((v161 ^ 0xF6) << 8)) ^ 0x86508FF) & (*(&STACK[0x710] + LODWORD(STACK[0x5A8]) % 0x3C3) ^ 0x5E65084D) | (v160 | ((v161 ^ 0xF6) << 8)) & 0xA19AF700) ^ (v26 - 913785332);
  v164 = v126 + v149 - 1974230600 - ((2 * (v126 + v149)) & 0x14A74370);
  *(v84 + 4 * ((88 * (v137 + 3)) % 0x107u)) = v163 ^ 0x7436A903;
  v165 = ((v153 ^ v159) - v159) ^ ((v153 ^ v157) - v157) ^ ((v164 ^ v158 ^ v163 ^ 0x7436A903 ^ v153) - (v164 ^ v158 ^ v163 ^ 0x7436A903));
  v166 = v149 + v155 + 977085678 + (v163 ^ 0xFE6508BB);
  v167 = LODWORD(STACK[0x5A0]) ^ 0x15131E3;
  v168 = v167 + v26;
  *(v84 + 4 * ((((v156 & 0x66 | (v137 + 201) & 0xE7) ^ 0xBF) * (v137 + 201)) % 0x107u)) = v166 ^ ((v166 ^ 0xAC6B3ABF) + 215267053) ^ ((v166 ^ 0xCC383BC5) + 1820833687) ^ ((v166 ^ 0xC2EE8D21) + 1649475955) ^ ((v166 ^ 0xFDFDFFF7) + 1564636069) ^ 0xD513D214;
  LODWORD(v26) = v26 + 292532108;
  v167 -= 292532108;
  v169 = (v157 ^ v26) - v167;
  *(v84 + 4 * ((88 * ((v162 & 0x82) + ((v137 + 3) ^ 0x41))) % 0x107u)) = (v165 - v168 + 666139055) ^ (((v165 - v168 + 666139055) ^ 0x46009F1) - 928211519) ^ (((v165 - v168 + 666139055) ^ 0x530D087D) - 1614701491) ^ (((v165 - v168 + 666139055) ^ 0x9BA197AC) + 1466762142) ^ (((v165 - v168 + 666139055) ^ 0xFFFFFDEE) + 859007456) ^ 0xB960CA76;
  v170 = v159 ^ v26 ^ v169;
  LODWORD(STACK[0x5D4]) = (v167 ^ 0x283B331) - v169 - 1697061014 + (((v170 ^ 0x83B7C70) - 185211998) ^ ((v170 ^ 0x4156A1FC) - 1114096082) ^ ((v170 ^ 0x3CDF7B7C) - 1072569170));
  LODWORD(STACK[0x5A0]) = (v158 ^ (v149 + 292532108) ^ 0x10A82D47) + 66812605;
  LODWORD(STACK[0x5C8]) = v170 ^ 0x331602E;
  LODWORD(STACK[0x5A8]) = v154 + 13664;
  LODWORD(STACK[0x5B0]) = v148 + 13664;
  LODWORD(STACK[0x5C4]) -= 16;
  JUMPOUT(0x100037750);
}

uint64_t sub_100039370(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5B0]) = a7;
  LODWORD(STACK[0x5C4]) = 0;
  LODWORD(STACK[0x4F0]) = 16 * LOBYTE(STACK[0xA9C]);
  LODWORD(STACK[0x5A8]) = 12848;
  v10 = STACK[0x5A0];
  LODWORD(STACK[0x4F8]) = a1;
  LODWORD(STACK[0x5D8]) = -17;
  LODWORD(STACK[0x540]) = 7128;
  STACK[0x560] = 27;
  LODWORD(STACK[0x538]) = 6512;
  STACK[0x558] = 24;
  LODWORD(STACK[0x530]) = 5720;
  STACK[0x550] = 21;
  LODWORD(STACK[0x528]) = 18832;
  LODWORD(STACK[0x520]) = 18216;
  LODWORD(STACK[0x518]) = 17424;
  LODWORD(STACK[0x510]) = 1232;
  LODWORD(STACK[0x508]) = 12672;
  LODWORD(STACK[0x500]) = 88;
  LODWORD(STACK[0x4E8]) = a1 + 1280;
  v11 = (4 * (((a1 + 1280) ^ 0x32EF0C60) & 0x42 ^ 0x21)) & 0xFFFF3F8C ^ ((a1 + 1280) ^ 0x32EF0C60) & 0x42 ^ 0x21;
  v12 = (16 * v11) & 0xFFFFFE00 ^ v11 ^ 0xCF12E1AC ^ (((16 * v11) & 0xFFFFFE00 ^ v11) << 8) & 0xFFFFE080;
  LODWORD(STACK[0x548]) = 1857976553;
  v13 = (2 * ((v12 << 16) & 0x4F120000 ^ v12 ^ ((v12 << 16) ^ 0x61AC0000) & 0x30F20000)) ^ 0x6EBE78E9;
  LODWORD(STACK[0x570]) = v13;
  v14 = STACK[0x578];
  v15 = STACK[0x5C4];
  v16 = *(STACK[0x578] + 4 * (LODWORD(STACK[0x5C4]) + 88));
  v17 = *(STACK[0x578] + 4 * ((88 * ((v13 ^ 0x16182D9B ^ ((((~v13 & 0xE) - 1) & (~v13 & 0x31 ^ 0xFFFFFFE1)) - ((2 * (((~v13 & 0xE) - 1) & (~v13 & 0x31 ^ 0xFFFFFFE1))) & 0x16F8D3C0) - 1149474332)) + 2 * (((~v13 & 0xE) - 1) & ~v13 & 0x31)) + 11440) % 0x107)) ^ 0x3E11FE1;
  v18 = (v17 >> 3) ^ __ROR4__(v17, 7) ^ __ROR4__(v17, 18);
  HIDWORD(v20) = v16 ^ 0x38;
  LODWORD(v20) = v16 ^ 0x8A53A180;
  v19 = v20 >> 7;
  HIDWORD(v20) = v16 ^ 0x3A1B8;
  LODWORD(v20) = v16 ^ 0x8A500000;
  v21 = v19 ^ (v16 >> 3) ^ (v20 >> 18) ^ 0x114A7437;
  v22 = *(STACK[0x578] + 4 * (LODWORD(STACK[0x5C4]) + 180));
  HIDWORD(v20) = *(STACK[0x578] + 4 * (LODWORD(STACK[0x5C4]) + 48)) ^ 0x3E11FE1;
  LODWORD(v20) = HIDWORD(v20);
  v23 = (v20 >> 17) ^ (HIDWORD(v20) >> 10) ^ __ROR4__(HIDWORD(v20), 19);
  v24 = (v18 + 638460580 - ((2 * v18) & 0x4C1C4548)) ^ v7;
  v25 = LODWORD(STACK[0x5C8]) ^ 0x7683C6DE;
  HIDWORD(v20) = v22 ^ 0x3A1B8;
  LODWORD(v20) = v22 ^ 0x8A500000;
  v26 = (v10 + 1435996091 - ((2 * v10 - 133625210) & 0xB32614F0)) ^ v9 ^ v21;
  v27 = (((v18 + 1988347614 - ((2 * v18) & 0xED078DBC)) ^ LODWORD(STACK[0x5C8])) - v25) ^ ((v26 ^ v18) - v26);
  v28 = (2 * a3) & 0xE4F6EA66 ^ 0x64146024;
  v29 = (v22 << 15) ^ (v22 >> 10) ^ (v22 >> 17) ^ (v20 >> 19) ^ 0xD0FED1C1;
  v30 = STACK[0x5B0];
  v31 = (((a3 ^ 0x9F63477) - 167130231) ^ ((a3 ^ 0x5317CF0A) - 1394069258) ^ ((a3 ^ 0x606B41EB) - 1617641963)) + LODWORD(STACK[0x5B0]) + 950783100;
  v32 = v27 ^ (v24 - (v7 ^ 0x260E22A4));
  v33 = v10 - (((a3 ^ 0x6121BF57) - 1629601623) ^ ((a3 ^ 0x62E003B2) - 1658848178) ^ ((a3 ^ 0x394B0673) - 961218163));
  v34 = a3 ^ 0x48F1CFA5;
  v35 = STACK[0x5D4];
  v36 = LODWORD(STACK[0x5D4]) - 1671753551 + (((v8 ^ 0x583DAB7E) - 1480436606) ^ ((v8 ^ 0x547C21BF) - 1417421247) ^ ((v8 ^ 0xCCF1BBFC) + 856572932));
  v37 = v28 + v34;
  v38 = (((v7 ^ 0xE230FEB5) + 500105547) ^ ((v7 ^ 0xEBEC565A) + 336832934) ^ ((v7 ^ 0x2FD28A4B) - 802327115)) - (((v8 ^ 0xD36A6DEF) + 747999761) ^ ((v8 ^ 0xE91E439E) + 383892578) ^ ((v8 ^ 0xFAC41F4C) + 87810228));
  v39 = (v31 + (v9 ^ 0x59930A78)) ^ v31;
  v40 = v31 - v33;
  v41 = v33;
  LODWORD(STACK[0x580]) = v33;
  v42 = v31 - v33 + 1048982867;
  v43 = v37 + v42;
  v44 = (v36 + v25) ^ v36;
  LODWORD(STACK[0x5A0]) = v43 + v42;
  LODWORD(STACK[0x598]) = v38;
  v45 = v36 - v38 - 1700655463;
  LODWORD(v20) = __ROR4__(__ROR4__(v39 ^ (v33 + 780364742) ^ v29, 19) ^ 0xCBB391FC, 13);
  v46 = (((v8 ^ 0x2E8E4371) - 781075313) ^ ((v8 ^ 0x6F2CAC68) - 1865198696) ^ ((v8 ^ 0x8112DE24) + 2129469916)) + 858498672 + v45;
  v47 = ((v23 ^ (v38 - 764964224)) - (v38 - 764964224)) ^ ((v23 ^ v44) - v44) ^ ((v20 ^ 0x8FE65D9C ^ v23) - (v20 ^ 0x8FE65D9C));
  v48 = *(v14 + 4 * (v15 + 66));
  v49 = v47 - v45;
  LODWORD(STACK[0x590]) = v39 + v41 - 1223284419;
  LODWORD(STACK[0x588]) = v46 + v45;
  v50 = v43 + v41 - 1223284419 + (v29 & 0x776D4289) + (v29 & 0x776D4289 ^ 0x776D4289);
  v51 = *(v14 + 4 * (v15 + 69));
  LODWORD(STACK[0x5C8]) = v44 + v38 - 764964224;
  v52 = v46 + v38 - 764964224;
  LODWORD(STACK[0x568]) = v52;
  v53 = v40 - v35 + (((v48 ^ 0xD0B6947B) + 793340805) ^ ((v48 ^ 0xECB96857) + 323393449) ^ ((v48 ^ 0xB65C5D94) + 1235460716)) + (((v51 ^ 0x2F405E9C) - 792747676) ^ ((v51 ^ 0xADC17C5A) + 1379828646) ^ ((v51 ^ 0x8D2837E) - 148013950)) + v29 + v32;
  v54 = ((v53 + 133306960) ^ 0xC4038939) & (2 * ((v53 + 133306960) & 0x9493CDBD)) ^ (v53 + 133306960) & 0x9493CDBD;
  v55 = ((2 * ((v53 + 133306960) ^ 0xC4008231)) ^ 0xA1269F18) & ((v53 + 133306960) ^ 0xC4008231) ^ (2 * ((v53 + 133306960) ^ 0xC4008231)) & 0x50934F8C;
  v56 = v55 ^ 0x50914084;
  v57 = (v55 ^ 0x20F08) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0x424D3E30) & v56 ^ (4 * v56) & 0x50934F8C;
  v59 = (v58 ^ 0x40010E0C) & (16 * v57) ^ v57;
  v60 = ((16 * (v58 ^ 0x1092418C)) ^ 0x934F8C0) & (v58 ^ 0x1092418C) ^ (16 * (v58 ^ 0x1092418C)) & 0x50934F80;
  v61 = v59 ^ 0x50934F8C ^ (v60 ^ 0x10480C) & (v59 << 8);
  *(v14 + 4 * (v15 + 159)) = (v53 + 133306960) ^ (2 * ((v61 << 16) & 0x50930000 ^ v61 ^ ((v61 << 16) ^ 0x4F8C0000) & (((v60 ^ 0x5083070C) << 8) & 0x50930000 ^ 0x40900000 ^ (((v60 ^ 0x5083070C) << 8) ^ 0x134F0000) & (v60 ^ 0x5083070C)))) ^ 0x3EE6F31D;
  v62 = *(v14 + 4 * (v15 - 263 * STACK[0x550] + 5720));
  v63 = v53 + v50 - 1047972149;
  v64 = v30 + (*(v14 + 4 * (v15 - 263 * STACK[0x558] + 6512)) ^ 0x8A53A1B8) + (((v62 ^ 0x9EAFC91B) + 1632646885) ^ ((v62 ^ 0x5AB41E52) - 1521753682) ^ ((v62 ^ 0x4E4876F1) - 1313371889)) + v21 + v49;
  v65 = ((v64 - 209942940) ^ 0x8F67DE59) & (2 * ((v64 - 209942940) & 0xA0771F59)) ^ (v64 - 209942940) & 0xA0771F59;
  v66 = ((2 * ((v64 - 209942940) ^ 0xCF05CEE9)) ^ 0xDEE5A360) & ((v64 - 209942940) ^ 0xCF05CEE9) ^ (2 * ((v64 - 209942940) ^ 0xCF05CEE9)) & 0x6F72D1B0;
  v67 = v66 ^ 0x21125090;
  v68 = (v66 ^ 0x2608120) & (4 * v65) ^ v65;
  v69 = ((4 * v67) ^ 0xBDCB46C0) & v67 ^ (4 * v67) & 0x6F72D1B0;
  v70 = (v69 ^ 0x2D424080) & (16 * v68) ^ v68;
  v71 = ((16 * (v69 ^ 0x42309130)) ^ 0xF72D1B00) & (v69 ^ 0x42309130) ^ (16 * (v69 ^ 0x42309130)) & 0x6F72D1B0;
  v72 = v70 ^ 0x6F72D1B0 ^ (v71 ^ 0x67201100) & (v70 << 8);
  *(v14 + 4 * (v15 - 263 * STACK[0x560] + 7128)) = (v64 - 209942940) ^ (2 * ((v72 << 16) & 0x6F720000 ^ v72 ^ ((v72 << 16) ^ 0x51B00000) & (((v71 ^ 0x852C0B0) << 8) & 0x6F720000 ^ 0xD220000 ^ (((v71 ^ 0x852C0B0) << 8) ^ 0x72D10000) & (v71 ^ 0x852C0B0)))) ^ 0x76A11D81;
  v73 = v64 - v52 - 1619879972;
  v74 = 854 * ((v63 >> 20) & 0xF) + 800198 - 1926 * ((2229994 * (854 * ((v63 >> 20) & 0xF) + 800198)) >> 32);
  if (v74 >= 0x3C3)
  {
    v74 -= 963;
  }

  v75 = *(&STACK[0x710] + (854 * ((STACK[0x5D8] & 0x3BA7CB3F) + ((2 * ((v12 << 16) & 0x4F120000 ^ v12 ^ ((v12 << 16) ^ 0x61AC0000) & 0x30F20000)) ^ 0x63DA3C96) + (HIWORD(v63) & 0xF)) - 28560996) % 0x3C3);
  v76 = *(&STACK[0x710] + (854 * ((v53 + v50 + 14027) >> 12) + 800198 - 963 * ((4459987 * (854 * ((v53 + v50 + 14027) >> 12) + 800198)) >> 32)));
  v77 = *(&STACK[0x710] + (854 * ((v63 >> 8) & 0xF) + 800198 - 963 * ((4459987 * (854 * ((v63 >> 8) & 0xF) + 800198)) >> 32)));
  v78 = *(&STACK[0x710] + (854 * (v63 >> 4) + 800198 - 963 * ((4459987 * (854 * (v63 >> 4) + 800198)) >> 32)));
  v79 = *(&STACK[0x710] + (854 * (v63 & 0xF) + 800198 - 963 * ((4459987 * (854 * (v63 & 0xF) + 800198)) >> 32)));
  v80 = (*(&STACK[0x710] + v74) << 12) ^ (((v75 ^ 0x8FFF09) & ((*(&STACK[0x710] + (854 * (v63 >> 28) + 800198 - 963 * ((4459987 * (854 * (v63 >> 28) + 800198)) >> 32))) << 12) ^ (*(&STACK[0x710] + (854 * (HIBYTE(v63) & 0xF) + 800198 - 963 * ((4459987 * (854 * (HIBYTE(v63) & 0xF) + 800198)) >> 32))) << 8) ^ 0x83C7DD) ^ (v75 & 0x22222222 | 0x400)) << 8) ^ 0xB31D56;
  LODWORD(STACK[0x560]) = 16777096;
  v81 = ((v80 & (v77 ^ 0xFFFF88) | v77 & 0xA9) << 8) ^ 0xE982F600;
  v82 = v81 ^ (v76 << 12);
  v83 = ((v82 ^ 0x3BD98912) & (v79 ^ 0xFFFFFF6C) | v79 & 0xED) ^ (16 * v78) ^ 0x3BD6E696;
  v84 = *(&STACK[0x710] + (854 * (HIWORD(v73) & 0xF) + 800198 - 963 * ((4459987 * (854 * (HIWORD(v73) & 0xF) + 800198)) >> 32)));
  v85 = *(&STACK[0x710] + (854 * ((v73 >> 8) & 0xF) + 800198 - 963 * ((4459987 * (854 * ((v73 >> 8) & 0xF) + 800198)) >> 32)));
  v86 = v79 & 0xF;
  v87 = *(&STACK[0x710] + (854 * (v73 >> 4) + 800198 - 963 * ((4459987 * (854 * (v73 >> 4) + 800198)) >> 32)));
  v88 = ((((*(&STACK[0x710] + (854 * ((v73 >> 20) & 0xF) + 800198 - 963 * ((4459987 * (854 * ((v73 >> 20) & 0xF) + 800198)) >> 32))) << 12) ^ (((v84 ^ 0xDFFF09) & ((*(&STACK[0x710] + (854 * (v73 >> 28) + 800198 - 963 * ((4459987 * (854 * (v73 >> 28) + 800198)) >> 32))) << 12) ^ (*(&STACK[0x710] + (854 * (HIBYTE(v73) & 0xF) + 800198 - 963 * ((4459987 * (854 * (HIBYTE(v73) & 0xF) + 800198)) >> 32))) << 8) ^ 0xD58C5F) ^ (v84 & 0xA0 | 0x2100)) << 8) ^ 0x78D284) & (v85 ^ 0xFFFF30) | v85 & 0x7B) << 8) ^ 0x4C4DF600;
  v89 = v88 ^ (*(&STACK[0x710] + (854 * (v73 >> 12) + 800198 - 963 * ((4459987 * (854 * (v73 >> 12) + 800198)) >> 32))) << 12);
  LOBYTE(v80) = *(&STACK[0x710] + (854 * (v73 & 0xF) + 800198 - 963 * ((4459987 * (854 * (v73 & 0xF) + 800198)) >> 32)));
  v90 = (v89 ^ 0x11408710) & (v80 | 0xFFFFFF00) | v80 & 0xE0;
  v91 = (v80 & 0xF ^ 6u) << ((v63 & 0xDD) + (v63 & 0xDD ^ 0xDD) + 39);
  LODWORD(v91) = 854 * (v86 ^ (v91 - 1858273984 - ((2 * v91) & 0x2279FA80)) ^ 0x913CFD46);
  v92 = v87 ^ (v90 >> 4);
  v93 = *(&STACK[0x710] + (v91 + 580720) % 0x3C3u) ^ LODWORD(STACK[0x4F0]);
  v94 = 854 * (((v93 ^ 0x5093D350) - 249537236) ^ ((v93 ^ 0x90D3560B) + 828430449) ^ ((v93 ^ 0xC0408ACD) + 1643316407));
  v95 = *(&STACK[0x710] + (v94 - 1825215364) % 0x3C3);
  LODWORD(v91) = *(&STACK[0x710] + (v91 + 360388) % 0x3C3u) ^ (*(&STACK[0x710] + (v94 - 1825435696) % 0x3C3) >> 4);
  LODWORD(v91) = 854 * (((v91 ^ 0x525D21FB) - 1381835145) ^ ((v91 ^ 0x17A4E14A) - 396681528) ^ ((v91 ^ 0x45F9C048) - 1173995578)) + 699426;
  v96 = 854 * (((v83 >> 4) | (16 * (v92 & 0xF))) ^ 0x90);
  v97 = (*(&STACK[0x710] + v91 % 0x3C3) ^ 0xF6u) << (((v91 % 0x3C3) | 0xE0) - ((v91 % 0x3C3) & 0x1F) + 36);
  LODWORD(v97) = (v97 - ((2 * v97) & 0x3A2280E) + 30479367) ^ *(&STACK[0x710] + (v96 + 580720 - 963 * ((4459987 * (v96 + 580720)) >> 32)));
  v98 = 854 * (((v97 ^ 0x159DAAE9) + 685528564) ^ ((v97 ^ 0x2A796FC6) + 389583069) ^ ((v97 ^ 0x3E35D1DE) + 57945797));
  v99 = v98 - 191506648;
  if ((v98 - 191506648) >= 0x3C3)
  {
    v99 = (v98 - 191507611) % 0x3C3u;
  }

  v100 = *(&STACK[0x710] + (v96 + 360388 - 963 * ((4459987 * (v96 + 360388)) >> 32))) ^ (*(&STACK[0x710] + (v98 - 191726980) % 0x3C3u) >> 4);
  v101 = 854 * ((v92 & 0xF0 | (v83 >> 8) & 0xF) ^ 0x80);
  v102 = *(&STACK[0x710] + (v101 + 580720 - 963 * ((4459987 * (v101 + 580720)) >> 32))) ^ (16 * *(&STACK[0x710] + (854 * (((v100 ^ 0x30F9572B) + 1325836297) ^ ((v100 ^ 0x5C000671) - 1543505581) ^ ((v100 ^ 0x6CF951A3u) + 319204993)) + 612318) % 0x3C3));
  v103 = 854 * (((v102 ^ 0x6C9EF563) - 1426806505) ^ ((v102 ^ 0x5D818D69) + 468439325) ^ ((v102 ^ 0x311F779C) - 143315990));
  v104 = (v103 + 425001432) % 0x3C3u;
  v105 = *(&STACK[0x710] + (v101 + 360388 - 963 * ((4459987 * (v101 + 360388)) >> 32))) ^ (*(&STACK[0x710] + (v103 + 424781100) % 0x3C3u) >> 4);
  v106 = v95 ^ 0xBF2808E2;
  v107 = v95 ^ 0xBF2808E2 ^ (16 * *(&STACK[0x710] + v99));
  v108 = (854 * (((v105 ^ 0xDBA8D1F) + 1917154035) ^ ((v105 ^ 0x7FF20ADF) - 2146568909) ^ ((v105 ^ 0x72488739u) + 230127829)) + 781410) % 0x3C3;
  v109 = *(&STACK[0x710] + v108);
  v110 = v83 >> 8 >> ((v108 & 4 ^ 4) + (v108 & 4));
  v111 = 854 * ((v110 & 0xF | (16 * (v89 >> 12))) ^ 0x60);
  v112 = *(&STACK[0x710] + (v111 + 580720 - 963 * ((4459987 * (v111 + 580720)) >> 32))) ^ (16 * v109);
  v113 = 854 * (((v112 ^ 0x18A4FAA9) + 1197276554) ^ ((v112 ^ 0x357FED8) - 592446983) ^ ((v112 ^ 0x1BF30BE7) - 1005908792));
  v114 = (v89 >> 12) & 0xF0;
  v115 = *(&STACK[0x710] + (v113 - 627324426) % 0x3C3u) << 12;
  v116 = *(&STACK[0x710] + (v111 + 360388 - 963 * ((4459987 * (v111 + 360388)) >> 32))) ^ (*(&STACK[0x710] + (v113 - 627544758) % 0x3C3u) >> 4);
  v117 = 854 * ((v114 & 0xFFFFFFF0 | (v110 >> 4)) ^ 0xF0);
  v118 = *(&STACK[0x710] + (v117 + 580720 - 963 * ((4459987 * (v117 + 580720)) >> 32))) ^ (16 * *(&STACK[0x710] + (854 * (((v116 ^ 0x24B2DDF4) + 1531781633) ^ ((v116 ^ 0x5BA7C501) + 609762038) ^ ((v116 ^ 0x7F15180Cu) - 2132088839)) + 787388) % 0x3C3));
  v119 = 854 * (((v118 ^ 0x496BDAE7) + 713804507) ^ ((v118 ^ 0x34BBBACD) - 681858319) ^ ((v118 ^ 0x7DD06FBC) + 506494850));
  v120 = *(&STACK[0x710] + (v119 - 765512536) % 0x3C3u);
  v121 = *(&STACK[0x710] + (v117 + 360388 - 963 * ((4459987 * (v117 + 360388)) >> 32))) ^ (*(&STACK[0x710] + (v119 - 765732868) % 0x3C3u) >> 4);
  v122 = 854 * (HIWORD(v88) & 0xF0 | (v110 >> 8) & 0xF);
  v123 = v115 ^ (v120 << 16) ^ 0xF96000;
  v124 = *(&STACK[0x710] + (v122 + 580720 - 963 * ((4459987 * (v122 + 580720)) >> 32))) ^ (16 * *(&STACK[0x710] + (854 * (((v121 ^ 0x22D22C66) - 584199322) ^ ((v121 ^ 0x3B7F3781) - 998193021) ^ ((v121 ^ 0x19AD1B1Eu) - 430775266)) + 584990) % 0x3C3)) ^ 0xF96;
  v125 = 854 * v124 + 580720 - 963 * ((4459987 * (854 * v124 + 580720)) >> 32);
  v126 = *(&STACK[0x710] + (v122 + 360388 - 963 * ((4459987 * (v122 + 360388)) >> 32))) ^ (*(&STACK[0x710] + ((((601 - v124) | (v124 + 422)) & 0x356) - (((v107 & 0x18 ^ 0x10) + (v107 & 0x18 ^ 8)) & 0x20)) * (v124 + 422) % 0x3C3) >> 4);
  v127 = 854 * ((v88 >> 20) & 0xF0 | (v110 >> 12));
  v128 = *(&STACK[0x710] + (v127 + 580720 - 963 * ((4459987 * (v127 + 580720)) >> 32))) ^ (16 * *(&STACK[0x710] + (854 * (((v126 ^ 0x12BCB5E0) - 314357009) ^ ((v126 ^ 0x6623454A) - 1713587643) ^ ((v126 ^ 0x749FF053u) - 1956638882)) + 587552) % 0x3C3));
  v129 = 854 * (((v128 ^ 0x351BC82A) - 28846165) ^ ((v128 ^ 0x470FEDD1) - 1940655534) ^ ((v128 ^ 0x72142A6D) + 961033710));
  v130 = (v129 - 1695862858) % 0x3C3u;
  v131 = *(&STACK[0x710] + (v127 + 360388 - 963 * ((4459987 * (v127 + 360388)) >> 32))) ^ (*(&STACK[0x710] + (v129 - 1696083190) % 0x3C3u) >> 4);
  v132 = 854 * (HIBYTE(v88) & 0xF0 | HIWORD(v110) & 0xF) + 580720;
  v133 = *(&STACK[0x710] + (v132 - 963 * ((4459987 * v132) >> 32))) ^ (16 * *(&STACK[0x710] + (854 * (((v131 ^ 0x74F2B1C2) - 1962062196) ^ ((v131 ^ 0x5DBAFC09) + 574948161) ^ ((v131 ^ 0x29484D32u) + 1454879356)) + 648186) % 0x3C3));
  v134 = (854 * (((v133 ^ 0x225A7564) - 1415069520) ^ ((v133 ^ 0x35958F37) - 1134019843) ^ ((v133 ^ 0x17CFF5C5u) - 1640873969)) - 1415764260) % 0x3C3;
  v135 = v107 ^ (*(&STACK[0x710] + v104) << 8) ^ 0xBF28F174;
  v136 = (v123 - ((2 * v123) & 0xAEC000) - 1621659921) ^ (*(&STACK[0x710] + v125) << 20) ^ 0x90376EEF;
  v137 = 854 * ((v107 & 0xF0 | (v83 >> 4)) ^ 0x70) + 135786;
  v138 = v137 - 963 * ((4459987 * v137) >> 32);
  v139 = v136 ^ v135;
  v140 = v136 ^ v135 ^ (*(&STACK[0x710] + v130) << 24);
  v141 = *(&STACK[0x710] + (854 * (((16 * v106) & 0xF0 ^ 0x40 ^ -((16 * v106) & 0xF0 ^ 0x40) ^ ((v86 ^ 6) - (((v86 ^ 0x693FC085) & ~((16 * v106) & 0xF0) | (16 * v106) & 0x70) ^ 0x693FC0C3))) + (v86 ^ 6)) + 135786) % 0x3C3);
  v142 = (v135 >> 4) & 0xF0 | (v83 >> 8) & 0xF;
  v143 = v141 ^ (16 * *(&STACK[0x710] + v138));
  v144 = v143 ^ 0xFD44E8DC ^ (*(&STACK[0x710] + (854 * v142 + 135786 - 963 * ((4459987 * (854 * v142 + 135786)) >> 32))) << 8) ^ 0xFD44114A;
  v145 = (v123 >> 12) & 0xF0;
  v146 = 854 * (((v139 >> 8) & 0xF0 | (v82 >> 12)) ^ 6) + 135786;
  v147 = 854 * ((v145 & 0xFFFFFFF0 | HIWORD(v82) & 0xF) ^ 0xF) + 135786;
  v140 ^= 0x96000000;
  v148 = 854 * (HIWORD(v136) & 0xF0 | (v81 >> 20) & 0xF) + 135786;
  v149 = 854 * ((v140 >> 20) & 0xF0 | HIBYTE(v81) & 0xF) + 135786;
  v150 = (v144 - 1460606287 + ~(2 * (v144 & 0xF297 ^ (v143 ^ 0xFD44E8DC) & 0x11)) + 2006) ^ (*(&STACK[0x710] + (v146 - 963 * ((4459987 * v146) >> 32))) << 12) ^ 0xA8FF9286;
  v151 = (*(&STACK[0x710] + (v147 - 963 * ((4459987 * v147) >> 32))) << 16) ^ (*(&STACK[0x710] + (v148 - 963 * ((4459987 * v148) >> 32))) << 20) ^ 0xF960000 ^ v150;
  v152 = 854 * (((v140 ^ (*(&STACK[0x710] + v134) << 28)) >> 24) & 0xF0 | (v81 >> 28)) + 135786;
  v153 = ((*(&STACK[0x710] + (v149 - 963 * ((4459987 * v149) >> 32))) ^ 0x1B) << 24) ^ 0xFD000000 ^ ((*(&STACK[0x710] + (v152 - 963 * ((4459987 * v152) >> 32))) ^ 7) << 28) ^ v151;
  v154 = v153 >> 28;
  v155 = *(&STACK[0x710] + (854 * (HIBYTE(v153) & 0xF) + 121268 - 963 * ((4459987 * (854 * (HIBYTE(v153) & 0xF) + 121268)) >> 32))) ^ 0xF6;
  v156 = ((v155 << 8) - ((v155 << 9) & 0x14C00) + 1468376589) ^ (*(&STACK[0x710] + (854 * v154 + 121268 - 963 * ((4459987 * (854 * v154 + 121268)) >> 32))) << 12);
  v157 = 854 * (v150 >> 12) + 121268 - 963 * ((4459987 * (854 * (v150 >> 12) + 121268)) >> 32);
  v158 = 854 * (((-98 - (v141 & 0xF)) ^ (126 - (v141 & 0xF)) ^ ((v141 & 0xF ^ 0x76) + 24)) + 38);
  v159 = 854 * ((v143 >> 4) ^ 9) + 121268;
  v160 = ((((v156 ^ 0x5420F2) & (*(&STACK[0x710] + (854 * (HIWORD(v151) & 0xF) + 121268 - 963 * ((4459987 * (854 * (HIWORD(v151) & 0xF) + 121268)) >> 32))) ^ 0xD4A009)) + (v156 & 0xB5F00)) << 8) ^ (*(&STACK[0x710] + (854 * ((v151 >> 20) & 0xF) + 120305) % 0x3C3) << 12);
  v161 = STACK[0x5A8];
  v162 = LODWORD(STACK[0x568]) ^ (LODWORD(STACK[0x598]) - 1407799164);
  v163 = LODWORD(STACK[0x588]) + v162;
  v164 = *(&STACK[0x710] + (v159 - 963 * ((4459987 * v159) >> 32))) ^ 0xF6;
  v165 = ((((v160 ^ 0x400FF) & (*(&STACK[0x710] + (854 * ((v144 >> 8) & 0xF) + 121268 - 963 * ((4459987 * (854 * ((v144 >> 8) & 0xF) + 121268)) >> 32))) ^ 0x41501)) + (v160 & 0xFBEA00)) << 8) ^ (*(&STACK[0x710] + v157) << 12);
  v166 = (v165 ^ 0x124660FF) & (*(&STACK[0x710] + (v158 - 963 * ((4459987 * v158) >> 32))) ^ 0xBED66241) | v165 & 0x41299D00;
  v167 = v50 ^ (LODWORD(STACK[0x580]) + 137529802) ^ 0x8A53A1B8 ^ v63;
  v168 = ((LODWORD(STACK[0x570]) ^ 0xD534B5D) + 615815482) ^ ((LODWORD(STACK[0x570]) ^ 0x340CE3B) + 178723936) ^ ((LODWORD(STACK[0x570]) ^ 0x377C119) + 1787827070);
  LODWORD(STACK[0x5B0]) = ((((LODWORD(STACK[0x590]) - 1044684449) ^ 0x6BE7A3ED) + LODWORD(STACK[0x5A0]) - LODWORD(STACK[0x590]) + 782029118) ^ 0xFDDEFF7B) + 67104415 + ((2 * (((LODWORD(STACK[0x590]) - 1044684449) ^ 0x6BE7A3ED) + LODWORD(STACK[0x5A0]) - LODWORD(STACK[0x590]) + 782029118)) & 0xFBBDFEF6);
  v169 = LODWORD(STACK[0x5C8]) + 1246633686;
  v170 = LODWORD(STACK[0x5C8]) + 1509289018 + v162;
  *(v14 + 4 * (v15 - 263 * (v161 / 0x107) + 12848)) = v162 ^ (16 * v164) ^ 0xFC37E856 ^ v166;
  v171 = STACK[0x4F8];
  LODWORD(STACK[0x5D4]) = (((v169 ^ 0x6BE7A3ED) - v170 + v163 + 1) ^ 0x267FB3DD) - 36344657 + ((2 * ((v169 ^ 0x6BE7A3ED) - v170 + v163 + 1)) & 0x4CFF67BA);
  LODWORD(STACK[0x5C8]) = v169 ^ 0xE29B9ACC;
  *(v14 + 4 * ((88 * v168 + 1925473888) % 0x107u)) = v167;
  return (*(STACK[0x5B8] + 8 * ((7239 * (LODWORD(STACK[0x5D8]) == -64)) ^ v171)))();
}

void sub_10003B474()
{
  LODWORD(STACK[0x5A8]) = v0 + 88;
  LODWORD(STACK[0x5C4]) += 88;
  JUMPOUT(0x1000393C4);
}

void sub_10006616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  LODWORD(STACK[0x4E0]) = v8;
  LODWORD(STACK[0x4F8]) = a6;
  LODWORD(STACK[0x528]) = a5;
  LODWORD(STACK[0x530]) = v7;
  ++LODWORD(STACK[0x570]);
  --LODWORD(STACK[0x568]);
  LODWORD(STACK[0x520]) = v6 - 1;
  LODWORD(STACK[0x560]) += 88;
  LODWORD(STACK[0x558]) += 88;
  LODWORD(STACK[0x5A8]) = STACK[0x588];
  LODWORD(STACK[0x5B0]) = STACK[0x590];
  LODWORD(STACK[0x590]) = STACK[0x598];
  LODWORD(STACK[0x5D8]) = STACK[0x550];
  LODWORD(STACK[0x588]) = STACK[0x580];
  LODWORD(STACK[0x580]) = STACK[0x4E8];
  LODWORD(STACK[0x598]) = STACK[0x4F0];
  JUMPOUT(0x100058604);
}

uint64_t sub_1000661FC@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  LODWORD(STACK[0x37C]) += a4;
  LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x364]) + LODWORD(STACK[0x5A0]);
  v17 = LODWORD(STACK[0x3BC]) - 34;
  LODWORD(STACK[0x560]) = v17;
  v18 = a2 ^ a3 ^ (v14 + 839363335) ^ (((v14 + 839363335) ^ 0x5D5E8F7A) - 1107032696) ^ (((v14 + 839363335) ^ 0x19D27E46) - 91687748) ^ (((v14 + 839363335) ^ 0xFFFFEF5F) + 480601507) ^ (((v14 + 839363335) ^ v17 ^ 0xA7D66C0A) + 1150083485);
  v19 = (v8 ^ 0xE4702693) & (2 * (v8 & 0xF175361B)) ^ v8 & 0xF175361B;
  v20 = ((2 * (v8 ^ 0x64F00293)) ^ 0x2B0A6910) & (v8 ^ 0x64F00293) ^ (2 * (v8 ^ 0x64F00293)) & 0x95853488;
  v21 = (v20 ^ 0x1002000) & (4 * v19) ^ v19;
  v22 = ((4 * (v20 ^ 0x94851488)) ^ 0x5614D220) & (v20 ^ 0x94851488) ^ (4 * (v20 ^ 0x94851488)) & 0x95853488;
  v23 = v21 ^ 0x95853488 ^ (v22 ^ 0x14041000) & (16 * v21);
  v24 = (16 * (v22 ^ 0x81812488)) & 0x95853480 ^ 0x85843408 ^ ((16 * (v22 ^ 0x81812488)) ^ 0x58534880) & (v22 ^ 0x81812488);
  v25 = (v23 << 8) & 0x95853400 ^ v23 ^ ((v23 << 8) ^ 0x85348800) & v24;
  v26 = v8 ^ v10 ^ (2 * ((v25 << 16) & 0x15850000 ^ v25 ^ ((v25 << 16) ^ 0x34880000) & ((v24 << 8) & 0x15850000 ^ 0x10810000 ^ ((v24 << 8) ^ 0x5340000) & v24)));
  v27 = (((v14 + 839363335) ^ 0xC580155) - 285045847) ^ (v14 + 839363335) ^ (((v14 + 839363335) ^ 0x3169D1E6) - 768386276) ^ (((v14 + 839363335) ^ 0x566B5244) - 1255024454) ^ (((v14 + 839363335) ^ 0x77FFF7F5) - 1801093879);
  LODWORD(STACK[0x5C8]) = ((v9 ^ 0xF30F998F) - 638609276) ^ ((v9 ^ 0x8ECE1674) - 1540483207) ^ ((v9 ^ 0xF65EB96F) - 591480732);
  v28 = (a1 ^ 0xEE0318C2) & (2 * (a1 & 0x8E9382C3)) ^ a1 & 0x8E9382C3;
  v29 = ((2 * (a1 ^ 0xEB201C42)) ^ 0xCB673D02) & (a1 ^ 0xEB201C42) ^ (2 * (a1 ^ 0xEB201C42)) & 0x65B39E80;
  v30 = (v29 ^ 0x40029C80) & (4 * v28) ^ v28;
  v31 = ((4 * (v29 ^ 0x24908281)) ^ 0x96CE7A04) & (v29 ^ 0x24908281) ^ (4 * (v29 ^ 0x24908281)) & 0x65B39E80;
  v32 = (v31 ^ 0x4821A01) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x61318481)) ^ 0x5B39E810) & (v31 ^ 0x61318481) ^ (16 * (v31 ^ 0x61318481)) & 0x65B39E80;
  v34 = v32 ^ 0x65B39E81 ^ (v33 ^ 0x41318800) & (v32 << 8);
  v35 = a1 ^ v10 ^ (2 * ((v34 << 16) & 0x65B30000 ^ v34 ^ ((v34 << 16) ^ 0x1E810000) & (((v33 ^ 0x24821681) << 8) & 0x65B30000 ^ 0x44210000 ^ (((v33 ^ 0x24821681) << 8) ^ 0x339E0000) & (v33 ^ 0x24821681))));
  v36 = (((a5 - v16 - 1776747054) ^ 0x6357CB6F) - 1127854202) ^ (a5 - v16 - 1776747054) ^ (((a5 - v16 - 1776747054) ^ 0x3535F862) - 358318967) ^ (((a5 - v16 - 1776747054) ^ 0x89B5B6E6) + 1445212685) ^ (((a5 - v16 - 1776747054) ^ 0xFFB9FEFE) + 539523605);
  v37 = (((v35 ^ 0x598805C5) - 1118889935) ^ ((v35 ^ 0x5DD1E438) - 1189676594) ^ ((v35 ^ 0xF9ADC553) + 493541543)) - a1 - 1112293188;
  v38 = v37 & 0x9A858325 ^ 0x98D00304 ^ v37 & 0x9CA21188 ^ ((2 * (v37 & 0x9A858325 ^ 0x98D00304)) ^ 0xAD021780) & (v37 ^ 0x9AD58321);
  v39 = ((2 * v37) ^ 0xA9A917C2) & (v37 ^ 0x9A858325) ^ v37 & 0x9CA21188;
  LODWORD(STACK[0x5C4]) = a5;
  v40 = v38 ^ v39 & 0x9CA21188 ^ ((4 * v38) ^ 0x9DE21998) & (v39 ^ 0x98800100);
  v41 = ((4 * v39) ^ 0xFEA21588) & (v39 ^ 0x98800100) ^ v39 & 0x9CA21188;
  v42 = v40 ^ v41 & 0x9CA21188 ^ ((16 * v40) ^ 0x11A221C8) & (v41 ^ 0x98800104);
  v43 = ((16 * v41) ^ 0x14A20188) & (v41 ^ 0x98800104) ^ v41 & 0x9CA21188;
  v44 = v42 ^ v43 & 0x9CA21188 ^ ((v42 << 8) ^ 0xCCA01588) & (v43 ^ 0x98800104);
  v45 = ((v43 << 8) ^ 0x1CA31188) & (v43 ^ 0x98800104) ^ v43 & 0x9CA21188;
  v46 = (((v26 ^ 0xF115AE51) - 1490695071) ^ ((v26 ^ 0x5556F65B) + 57054315) ^ ((v26 ^ 0xEC369C6E) - 1173946784)) - v8 + 194892699;
  v47 = (((v18 ^ v10 ^ 0x37E6400B) - 797240329) ^ ((v18 ^ v10 ^ 0xE5C99B23) + 39110879) ^ ((v18 ^ v10 ^ 0xD4A9891C) + 859101922)) - (((v18 ^ 0xDD281B99) + 984959077) ^ ((v18 ^ 0xB77AE575) + 1357362825) ^ ((v18 ^ 0xDDD637B7) + 978019403)) - 1047435926;
  v48 = v37 ^ v46 ^ ((v46 ^ 0x1BC42A35) - 10263097) ^ ((v46 ^ 0x48C989B3) - 1402026431) ^ ((v46 ^ 0x17A6EC65) - 217996393) ^ ((v46 ^ 0x5FF3FFEF) - 1152077795) ^ (2 * (v44 ^ v45 & 0x1CA21188 ^ ((v44 << 16) ^ 0x9FA61188) & (v45 ^ 0x500000) ^ ((v44 << 16) ^ 0x9FA61188) & 0x18D00100)) ^ v47 ^ ((v47 ^ 0x3CFE2232) - 1852632767) ^ ((v47 ^ 0xF073F6C5) + 1562297784) ^ ((v47 ^ 0x63E577A5) - 829930280) ^ ((v47 ^ 0xFDFA6FDF) + 1352096942);
  LODWORD(STACK[0x5B0]) = ((v48 ^ 0x2FF15B54) + 852743073) ^ ((v48 ^ 0x93F869C1) - 1898258122) ^ ((v48 ^ 0x6FE6C939) + 1925464526);
  v49 = v12 - v13 - 114185720;
  v50 = (v49 ^ 0x2B6755CE) & (2 * (v49 & 0xB07759EE)) ^ v49 & 0xB07759EE;
  v51 = ((2 * (v49 ^ 0xBA3D602)) ^ 0x77A91FD8) & (v49 ^ 0xBA3D602) ^ (2 * (v49 ^ 0xBA3D602)) & 0xBBD48FEC;
  v52 = (v51 ^ 0xB800FCC) & (4 * v50) ^ v50;
  v53 = ((4 * (v51 ^ 0x88548024)) ^ 0xEF523FB0) & (v51 ^ 0x88548024) ^ (4 * (v51 ^ 0x88548024)) & 0xBBD48FEC;
  v54 = (v53 ^ 0xAB500FA0) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0x1084804C)) ^ 0xBD48FEC0) & (v53 ^ 0x1084804C) ^ (16 * (v53 ^ 0x1084804C)) & 0xBBD48FE0;
  v56 = v54 ^ 0xBBD48FEC ^ (v55 ^ 0xB9408E00) & (v54 << 8);
  v57 = v49 ^ (2 * ((v56 << 16) & 0x3BD40000 ^ v56 ^ ((v56 << 16) ^ 0xFEC0000) & (((v55 ^ 0x294012C) << 8) & 0x3BD40000 ^ 0x2B500000 ^ (((v55 ^ 0x294012C) << 8) ^ 0x548F0000) & (v55 ^ 0x294012C))));
  v58 = v13 - a1 - 1718706796;
  v59 = (v58 ^ 0xE8FD75E8) & (2 * (v58 & 0xF2FE45C9)) ^ v58 & 0xF2FE45C9;
  v60 = ((2 * (v58 ^ 0x8D397C6A)) ^ 0xFF8E7346) & (v58 ^ 0x8D397C6A) ^ (2 * (v58 ^ 0x8D397C6A)) & 0x7FC739A2;
  v61 = (v60 ^ 0x5F823100) & (4 * v59) ^ v59;
  v62 = ((4 * (v60 ^ 0x4108A1)) ^ 0xFF1CE68C) & (v60 ^ 0x4108A1) ^ (4 * (v60 ^ 0x4108A1)) & 0x7FC739A0;
  v63 = (v62 ^ 0x7F042083) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0xC31923)) ^ 0xFC739A30) & (v62 ^ 0xC31923) ^ (16 * (v62 ^ 0xC31923)) & 0x7FC739A0;
  v65 = v63 ^ 0x7FC739A3 ^ (v64 ^ 0x7C431800) & (v63 << 8);
  v66 = v58 ^ (2 * ((v65 << 16) & 0xFFC7FFFF ^ v65 ^ ((v65 << 16) ^ 0x39A30000) & (((v64 ^ 0x3842183) << 8) & 0x7FC70000 ^ 0x38C60000 ^ (((v64 ^ 0x3842183) << 8) ^ 0xC7390000) & (v64 ^ 0x3842183))));
  v67 = ((v7 ^ 0xD60D220B) + 1530302878) ^ ((v7 ^ 0x94863E7D) + 431853036) ^ ((v7 ^ 0xC5EE2421) + 1221957560);
  v68 = ((v6 - 1531266051) ^ 0x9DA6F1D4) & (2 * ((v6 - 1531266051) & 0x1D270586)) ^ (v6 - 1531266051) & 0x1D270586;
  v69 = ((2 * ((v6 - 1531266051) ^ 0x9FA2FADC)) ^ 0x50BFEB4) & ((v6 - 1531266051) ^ 0x9FA2FADC) ^ (2 * ((v6 - 1531266051) ^ 0x9FA2FADC)) & 0x8285FF5A;
  v70 = (v69 ^ 0x3E10) & (4 * v68) ^ v68;
  v71 = ((4 * (v69 ^ 0x8284014A)) ^ 0xA17FD68) & (v69 ^ 0x8284014A) ^ (4 * (v69 ^ 0x8284014A)) & 0x8285FF58;
  v72 = (v71 ^ 0x205FD40) & (16 * v70) ^ v70;
  v73 = ((16 * (v71 ^ 0x80800212)) ^ 0x285FF5A0) & (v71 ^ 0x80800212) ^ (16 * (v71 ^ 0x80800212)) & 0x8285FF50;
  v74 = v72 ^ 0x8285FF5A ^ (v73 ^ 0x5F55A) & (v72 << 8);
  v75 = (v6 - 1531266051) ^ (2 * ((v74 << 16) & 0x2850000 ^ v74 ^ ((v74 << 16) ^ 0x7F5A0000) & (((v73 ^ 0x82800A5A) << 8) & 0x82850000 ^ (((v73 ^ 0x82800A5A) << 8) ^ 0x5FF0000) & (v73 ^ 0x82800A5A) ^ 0x2000000)));
  v76 = (((v7 ^ 0x4427B8FC) - 920908949) ^ ((v7 ^ 0x6D7CFCEA) - 532197507) ^ ((v7 ^ 0xAE3E7C41) + 587583448)) + 669502641;
  v77 = (v76 ^ 0xFB0FF3C9) & (2 * (v76 & 0xF84FF3D1)) ^ v76 & 0xF84FF3D1;
  v78 = ((2 * (v76 ^ 0x6B82B0E9)) ^ 0x279A8670) & (v76 ^ 0x6B82B0E9) ^ (2 * (v76 ^ 0x6B82B0E9)) & 0x93CD4338;
  v79 = (v78 ^ 0x13080200) & (4 * v77) ^ v77;
  v80 = ((4 * (v78 ^ 0x90454108)) ^ 0x4F350CE0) & (v78 ^ 0x90454108) ^ (4 * (v78 ^ 0x90454108)) & 0x93CD4338;
  v81 = v79 ^ 0x93CD4338 ^ (v80 ^ 0x3050020) & (16 * v79);
  v82 = (16 * (v80 ^ 0x90C84318)) & 0x93CD4330 ^ 0x83094038 ^ ((16 * (v80 ^ 0x90C84318)) ^ 0x3CD43380) & (v80 ^ 0x90C84318);
  v83 = (v81 << 8) & 0x93CD4300 ^ v81 ^ ((v81 << 8) ^ 0xCD433800) & v82;
  v84 = v76 ^ (2 * ((v83 << 16) & 0x13CD0000 ^ v83 ^ ((v83 << 16) ^ 0x43380000) & ((v82 << 8) & 0x13CD0000 ^ 0x128C0000 ^ ((v82 << 8) ^ 0x4D430000) & v82)));
  v85 = (((v16 - v67 - 777190769) ^ 0x65814328) - 2137287967) ^ (v16 - v67 - 777190769) ^ (((v16 - v67 - 777190769) ^ 0x59C0E18D) - 1126551482) ^ (((v16 - v67 - 777190769) ^ 0x694B737D) - 1940806986) ^ (((v16 - v67 - 777190769) ^ 0x4FEFFFEF) - 1426772440);
  v86 = ((v27 ^ 0x54EF50D0) - 7530118) ^ ((v27 ^ 0xF0202C05) + 1531078061) ^ ((v27 ^ 0xF052CA83) + 1529905963);
  v87 = ((v8 ^ 0x77004E1A) - 2039121919) ^ v8 ^ ((v8 ^ 0x51F852A0) - 1601346373) ^ ((v8 ^ 0xD78D2FA4) + 653793727) ^ ((v8 ^ 0xFFFFFAFB) + 243977442);
  v88 = ((v87 ^ 0xF55379CE) - 388754182) ^ ((v87 ^ 0x6C27DC8) + 457511168) ^ ((v87 ^ 0xB5230EB7) - 1465621631);
  v89 = ((v66 ^ 0x1F387823) - 288597499) ^ ((v66 ^ 0x71C30A41) - 2143868825) ^ ((v66 ^ 0x24569A1A) - 710756290);
  v90 = ((v85 ^ 0xC9F0FC72) + 1415626701) ^ ((v85 ^ 0x51DBDFE0) - 867460001) ^ ((v85 ^ 0xB615D352) + 730173677);
  v91 = v86 - v90 + 821685448;
  v92 = (2 * (v91 & 0x82B4C6B7)) & (v91 ^ 0x3FB38FAD) ^ v91 & 0x82B4C6B7 ^ ((2 * (v91 & 0x82B4C6B7)) & 0x501090A | 0x30000000);
  v93 = (2 * (v91 ^ 0x3FB38FAD)) & 0xBD07491A ^ 0x8501490A ^ ((2 * (v91 ^ 0x3FB38FAD)) ^ 0x7A0E9234) & (v91 ^ 0x3FB38FAD);
  v94 = (4 * v92) & 0xBD074918 ^ v92 ^ ((4 * v92) ^ 0xC0000000) & v93;
  v95 = ((4 * v93) ^ 0xF41D2468) & v93 ^ (4 * v93) & 0xBD074918;
  v96 = v95 ^ 0x9024912;
  v97 = (v95 ^ 0xB4050002) & (16 * v94) ^ v94;
  v98 = ((16 * v96) ^ 0xD07491A0) & v96 ^ (16 * v96) & 0xBD074910;
  v99 = v97 ^ 0xD07491A ^ (v98 ^ 0x9004011A) & (v97 << 8);
  v100 = v91 ^ LODWORD(STACK[0x4E8]) ^ v84 ^ 0x1AD425FB ^ (2 * ((v99 << 16) & 0x3D070000 ^ v99 ^ ((v99 << 16) ^ 0x491A0000) & (((v98 ^ 0x2D03481A) << 8) & 0x3D070000 ^ 0x38060000 ^ (((v98 ^ 0x2D03481A) << 8) ^ 0x7490000) & (v98 ^ 0x2D03481A))));
  LODWORD(STACK[0x5A8]) = ((LODWORD(STACK[0x4E8]) ^ 0xCAC2070D) + 893253875) ^ ((LODWORD(STACK[0x4E8]) ^ 0x371EFFF9) - 924778489) ^ ((LODWORD(STACK[0x4E8]) ^ 0xA35C3093) + 1554239341);
  LODWORD(STACK[0x5A0]) = ((v84 ^ 0x1AD425FB ^ v36 ^ 0x4C78635 ^ 0x2D80315A) - 763375962) ^ ((v84 ^ 0x1AD425FB ^ v36 ^ 0x4C78635 ^ 0xCF44C4E) - 217336910) ^ ((v84 ^ 0x1AD425FB ^ v36 ^ 0x4C78635 ^ 0xC44ED06E) + 1001467794);
  v101 = v75 ^ 0xCC4D373B;
  v102 = (((v75 ^ 0xCC4D373B ^ LODWORD(STACK[0x4F0]) ^ 0x2B54F022) - 726986786) ^ ((v75 ^ 0xCC4D373B ^ LODWORD(STACK[0x4F0]) ^ 0x5CDC55D2) - 1557943762) ^ ((v75 ^ 0xCC4D373B ^ LODWORD(STACK[0x4F0]) ^ 0x16EBF296) - 384561814)) - (((v75 ^ 0x3D8F00D2) + 238929943) ^ ((v75 ^ 0x230BEE16) + 280569555) ^ ((v75 ^ 0x2A815F6) + 823844147)) - 1188874931;
  v103 = (v102 ^ 0x879D46D8) & (2 * (v102 & 0xD7DE5610)) ^ v102 & 0xD7DE5610;
  v104 = ((2 * (v102 ^ 0xA20D6EF8)) ^ 0xEBA671D0) & (v102 ^ 0xA20D6EF8) ^ (2 * (v102 ^ 0xA20D6EF8)) & 0x75D338E8;
  v105 = (v104 ^ 0x618230C0) & (4 * v103) ^ v103;
  v106 = ((4 * (v104 ^ 0x14510828)) ^ 0xD74CE3A0) & (v104 ^ 0x14510828) ^ (4 * (v104 ^ 0x14510828)) & 0x75D338E8;
  v107 = (v106 ^ 0x554020A0) & (16 * v105) ^ v105;
  v108 = ((16 * (v106 ^ 0x20931848)) ^ 0x5D338E80) & (v106 ^ 0x20931848) ^ (16 * (v106 ^ 0x20931848)) & 0x75D338E0;
  v109 = v107 ^ 0x75D338E8 ^ (v108 ^ 0x55130868) & (v107 << 8);
  v110 = (v109 << 16) & 0x75D30000 ^ v109 ^ ((v109 << 16) ^ 0x38E80000) & (((v108 ^ 0x20C03068) << 8) & 0x75D30000 ^ 0x24C30000 ^ (((v108 ^ 0x20C03068) << 8) ^ 0x53380000) & (v108 ^ 0x20C03068));
  v111 = v88 - v89;
  v112 = (v88 - v89 - 629508506) ^ LODWORD(STACK[0x4F0]) ^ (((v88 - v89 - 629508506) ^ 0x22636FB) - 2020615542) ^ (((v88 - v89 - 629508506) ^ 0xDE2DE7EE) + 1535380381) ^ (((v88 - v89 - 629508506) ^ 0x5BA23567) - 569648874) ^ (((v88 - v89 - 629508506) ^ 0xFDFFF7FF) + 2018909070);
  v113 = (((v112 ^ 0xED9FC9D8) + 39421249) ^ ((v112 ^ 0xCEBA2194) + 561802509) ^ ((v112 ^ 0xE87160AE) + 129444919)) - (v88 - v89) - 351470695;
  v114 = (v113 ^ 0x88BB998B) & (2 * (v113 & 0x903BDD13)) ^ v113 & 0x903BDD13;
  v115 = ((2 * (v113 ^ 0xA89BA38F)) ^ 0x7140FD38) & (v113 ^ 0xA89BA38F) ^ (2 * (v113 ^ 0xA89BA38F)) & 0x38A07E9C;
  v116 = (v115 ^ 0x8007E18) & (4 * v114) ^ v114;
  v117 = ((4 * (v115 ^ 0x8A00284)) ^ 0xE281FA70) & (v115 ^ 0x8A00284) ^ (4 * (v115 ^ 0x8A00284)) & 0x38A07E9C;
  v118 = (v117 ^ 0x20807A10) & (16 * v116) ^ v116;
  v119 = ((16 * (v117 ^ 0x1820048C)) ^ 0x8A07E9C0) & (v117 ^ 0x1820048C) ^ (16 * (v117 ^ 0x1820048C)) & 0x38A07E90;
  v120 = v118 ^ 0x38A07E9C ^ (v119 ^ 0x8006800) & (v118 << 8);
  v121 = v113 ^ v102 ^ (2 * v110);
  v122 = (((v100 ^ LODWORD(STACK[0x4F0]) ^ 0x98E566CE) - 1622045475) ^ ((v100 ^ LODWORD(STACK[0x4F0]) ^ 0x3FC5126A) + 946993273) ^ ((v100 ^ LODWORD(STACK[0x4F0]) ^ 0x638F2375) + 1681639784)) - (((v100 ^ 0x4FD6DAEF) + 1214394622) ^ ((v100 ^ 0x16E0799F) + 290755470) ^ ((v100 ^ 0x2C9B6FCE) + 724534749)) - 305375162;
  v123 = v121 ^ v122 ^ ((v122 ^ 0x73CCBA8A) - 1291998679) ^ ((v122 ^ 0x54964B2D) - 1784194160) ^ ((v122 ^ 0x664B6301) - 1485147228) ^ ((v122 ^ 0x7FDF7DFB) - 1091670694) ^ (2 * ((v120 << 16) & 0x38A00000 ^ v120 ^ ((v120 << 16) ^ 0x7E9C0000) & (((v119 ^ 0x30A0161C) << 8) & 0x38A00000 ^ 0x18800000 ^ (((v119 ^ 0x30A0161C) << 8) ^ 0x207E0000) & (v119 ^ 0x30A0161C))));
  v124 = (v86 - v90 + 1467787107) ^ v36 ^ 0x4C78635 ^ (((v86 - v90 + 1467787107) ^ 0xF98D2F1E) - 52125068) ^ (((v86 - v90 + 1467787107) ^ 0xD504CFFE) - 798145900) ^ (((v86 - v90 + 1467787107) ^ 0xA9C02DCD) - 1398169439) ^ (((v86 - v90 + 1467787107) ^ 0x7FDFBFBF) + 2058760915);
  LODWORD(STACK[0x570]) = ((v123 ^ 0x73519A5A) + 897878917) ^ ((v123 ^ 0xCA81E3B2) - 1940589971) ^ ((v123 ^ 0x4A9D915E) + 206078081);
  LODWORD(STACK[0x568]) = ((v101 ^ v57 ^ 0x629597F9 ^ 0xB5F0AEC) - 190778092) ^ ((v101 ^ v57 ^ 0x629597F9 ^ 0xA6370332) + 1506344142) ^ ((v101 ^ v57 ^ 0x629597F9 ^ 0xCFCA1418) + 808840168);
  v125 = (((v124 ^ 0xD9103736) - 846068687) ^ ((v124 ^ 0x80DE5A2D) - 1805883092) ^ ((v124 ^ 0x87F1E2A9) - 1821126224)) + 469528453;
  v126 = (v125 ^ 0xE1D8FA38) & (2 * (v125 & 0xF590E340)) ^ v125 & 0xF590E340;
  v127 = ((2 * (v125 ^ 0x2BF93A38)) ^ 0xBCD3B2F0) & (v125 ^ 0x2BF93A38) ^ (2 * (v125 ^ 0x2BF93A38)) & 0xDE69D978;
  v128 = (v127 ^ 0x9C419000) & (4 * v126) ^ v126;
  v129 = ((4 * (v127 ^ 0x42284908)) ^ 0x79A765E0) & (v127 ^ 0x42284908) ^ (4 * (v127 ^ 0x42284908)) & 0xDE69D978;
  v130 = (v129 ^ 0x58214160) & (16 * v128) ^ v128;
  v131 = ((16 * (v129 ^ 0x86489818)) ^ 0xE69D9780) & (v129 ^ 0x86489818) ^ (16 * (v129 ^ 0x86489818)) & 0xDE69D970;
  v132 = v130 ^ 0xDE69D978 ^ (v131 ^ 0xC6099100) & (v130 << 8);
  v133 = v125 ^ (2 * ((v132 << 16) & 0x5E690000 ^ v132 ^ ((v132 << 16) ^ 0x59780000) & (((v131 ^ 0x18604878) << 8) & 0x5E690000 ^ 0x16200000 ^ (((v131 ^ 0x18604878) << 8) ^ 0x69D90000) & (v131 ^ 0x18604878))));
  v134 = v90 + 2108365095 + (((v84 ^ 0xCD1BDB75) + 674234738) ^ ((v84 ^ 0x5858F802) - 1116528121) ^ ((v84 ^ 0x4E0456D6) - 1422947117));
  v135 = v6 + v88 - v111;
  v136 = (v111 - 33027259) ^ v57 ^ 0x629597F9 ^ (((v111 - 33027259) ^ 0x5C3E0E85) + 1466816097) ^ (((v111 - 33027259) ^ 0xEF0DA32C) - 463569974) ^ (((v111 - 33027259) ^ 0xB870554C) - 1289515606) ^ (((v111 - 33027259) ^ 0xFFEFDFFF) - 189004005);
  v137 = ((v136 ^ 0x3C20C82E) - 1619492045) ^ ((v136 ^ 0x318EF226) - 1831421637) ^ ((v136 ^ 0x4BC1CCDD) - 392591422);
  v138 = v135 + 33251760;
  v139 = ((v135 + 33251760) ^ 0x9E4D6A4) & (2 * ((v135 + 33251760) & 0xADC416C5)) ^ (v135 + 33251760) & 0xADC416C5;
  v140 = ((2 * ((v135 + 33251760) ^ 0x50E4D324)) ^ 0xFA418BC2) & ((v135 + 33251760) ^ 0x50E4D324) ^ (2 * ((v135 + 33251760) ^ 0x50E4D324)) & 0xFD20C5E0;
  v141 = (v140 ^ 0xF8008100) & (4 * v139) ^ v139;
  v142 = ((4 * (v140 ^ 0x5204421)) ^ 0xF4831784) & (v140 ^ 0x5204421) ^ (4 * (v140 ^ 0x5204421)) & 0xFD20C5E0;
  v143 = (v142 ^ 0xF4000580) & (16 * v141) ^ v141;
  v144 = ((16 * (v142 ^ 0x920C061)) ^ 0xD20C5E10) & (v142 ^ 0x920C061) ^ (16 * (v142 ^ 0x920C061)) & 0xFD20C5E0;
  v145 = v143 ^ 0xFD20C5E1 ^ (v144 ^ 0xD0004400) & (v143 << 8);
  v146 = STACK[0x598];
  v147 = (v135 + 33251760) ^ LODWORD(STACK[0x598]) ^ (2 * ((v145 << 16) & 0x7D200000 ^ v145 ^ ((v145 << 16) ^ 0x45E10000) & (((v144 ^ 0x2D2081E1) << 8) & 0x7D200000 ^ 0x5D200000 ^ (((v144 ^ 0x2D2081E1) << 8) ^ 0x20C50000) & (v144 ^ 0x2D2081E1))));
  v148 = ((v57 ^ 0x6475EF90) - 115374185) ^ ((v57 ^ 0x6D23AE96) - 263600495) ^ ((v57 ^ 0xD9000730) + 1147825975);
  v149 = ((v36 ^ 0x849A9AF9) + 2141381428) ^ ((v36 ^ 0x97833CB1) + 1824212348) ^ ((v36 ^ 0x3377DD5D) - 934304616);
  LODWORD(STACK[0x558]) = v149;
  v150 = (((v147 ^ 0x2E6C7F97) + 731226535) ^ ((v147 ^ 0x6312D41F) + 1726679599) ^ ((v147 ^ 0x21B9ADE0) + 608203730)) - v135;
  v151 = v137 - 1725274451;
  v152 = (v137 - 1725274451) ^ v146 ^ (((v137 - 1725274451) ^ 0x13C1B441) - 1839435830) ^ (((v137 - 1725274451) ^ 0xDEDAABB5) + 1598517310) ^ (((v137 - 1725274451) ^ 0xDC16C466) + 1569398767) ^ (((v137 - 1725274451) ^ 0x6F6FFFE5) - 286120850);
  v153 = (2 * (v134 & 0x39710506)) & (v134 ^ 0x28FB61AE) ^ v134 & 0x39710506 ^ ((2 * (v134 & 0x39710506)) & 0x10820008 | 0x4000);
  v154 = (2 * (v134 ^ 0x28FB61AE)) & 0x118A64A8 ^ 0x108A24A8 ^ ((2 * (v134 ^ 0x28FB61AE)) ^ 0x2314C950) & (v134 ^ 0x28FB61AE);
  v155 = (4 * v153) & 0x118A64A8 ^ v153 ^ ((4 * v153) ^ 0x10000) & v154;
  v156 = (4 * v154) & 0x118A64A8 ^ 0x11826408 ^ ((4 * v154) ^ 0x462992A0) & v154;
  v157 = (16 * v155) & 0x118A64A0 ^ v155 ^ ((16 * v155) ^ 0x40000) & v156;
  v158 = (16 * v156) & 0x118A64A0 ^ 0x1082428 ^ ((16 * v156) ^ 0x18A64A80) & v156;
  v159 = v157 ^ (v157 << 8) & 0x118A6400 ^ ((v157 << 8) ^ 0x400000) & v158;
  v160 = (((v152 ^ 0x259933E1) + 1398636116) ^ ((v152 ^ 0x6769E2E9) + 296595292) ^ ((v152 ^ 0x8D906E10) - 78371933)) - v137;
  v161 = v134 ^ LODWORD(STACK[0x580]) ^ v124 ^ (2 * (((v159 ^ 0x118A24A8) << 16) & 0x118A0000 ^ v159 ^ 0x118A24A8 ^ (((v159 ^ 0x118A24A8) << 16) ^ 0x64A80000) & ((v158 << 8) & 0x118A0000 ^ 0x118A0000 ^ ((v158 << 8) ^ 0x8A640000) & v158)));
  LODWORD(STACK[0x598]) = ((LODWORD(STACK[0x580]) ^ 0x3344872D) - 860129069) ^ ((LODWORD(STACK[0x580]) ^ 0x59DF6CA9) - 1507814569) ^ ((LODWORD(STACK[0x580]) ^ 0x341B23E3) - 874193891);
  v162 = (((v161 ^ v146 ^ 0x80C72F34) - 1890262947) ^ ((v161 ^ v146 ^ 0x97A78635) - 1741403810) ^ ((v161 ^ v146 ^ 0x3DA8B9ED) + 842757766)) - (((v161 ^ 0xDA2F8AF3) - 709081700) ^ ((v161 ^ 0x208A76AA) + 790215107) ^ ((v161 ^ 0x616F77DA) + 1862056115)) - 1884516033;
  v163 = (((v150 + 293552319) ^ 0xFBB46781) + 775293425) ^ (v150 + 293552319) ^ (((v150 + 293552319) ^ 0xEBF10980) + 1047750642) ^ (((v150 + 293552319) ^ 0x7DC70864) - 1471846890) ^ (((v150 + 293552319) ^ 0x47FFF7EB) - 1837262437) ^ v162 ^ ((v162 ^ 0xE0C8C8E7) + 1066933441) ^ ((v162 ^ 0x11B7B2D2) - 823695626) ^ ((v162 ^ 0xAA27AE12) + 1970764342) ^ ((v162 ^ 0x7BF7FFFF) - 1532548135);
  v164 = ((v160 - 1901210145) ^ 0x18E2E51D) & (2 * ((v160 - 1901210145) & 0x9CE4F540)) ^ (v160 - 1901210145) & 0x9CE4F540;
  v165 = ((2 * ((v160 - 1901210145) ^ 0x386A459D)) ^ 0x491D61BA) & ((v160 - 1901210145) ^ 0x386A459D) ^ (2 * ((v160 - 1901210145) ^ 0x386A459D)) & 0xA48EB0DC;
  v166 = (v165 ^ 0x42045) & (4 * v164) ^ v164;
  v167 = ((4 * (v165 ^ 0xA4829045)) ^ 0x923AC374) & (v165 ^ 0xA4829045) ^ (4 * (v165 ^ 0xA4829045)) & 0xA48EB0DC;
  v168 = (v167 ^ 0x800A8040) & (16 * v166) ^ v166;
  v169 = ((16 * (v167 ^ 0x24843089)) ^ 0x48EB0DD0) & (v167 ^ 0x24843089) ^ (16 * (v167 ^ 0x24843089)) & 0xA48EB0D0;
  v170 = v168 ^ 0xA48EB0DD ^ (v169 ^ 0x8A0000) & (v168 << 8);
  v171 = (v160 - 1901210145) ^ (2 * ((v170 << 16) & 0x248E0000 ^ v170 ^ ((v170 << 16) ^ 0x30DD0000) & (((v169 ^ 0xA404B00D) << 8) & 0x248E0000 ^ 0x200E0000 ^ (((v169 ^ 0xA404B00D) << 8) ^ 0xEB00000) & (v169 ^ 0xA404B00D))));
  v172 = (v171 ^ 0x14E194FA) & (v163 ^ 0x774961DD) ^ v171 & 0x7D9BDB8B;
  LODWORD(STACK[0x580]) = v160 - v148 + (((v163 ^ 0x520F0AAA) - 1997960779) ^ ((v163 ^ 0x76160F1) - 578296848) ^ ((v163 ^ 0x5FBCD00D) - 2057678060)) - ((((2 * v172) ^ 0xB1537E9C) - 31134333) ^ (((2 * v172) ^ 0xA8E123E2) - 409554691) ^ (((2 * v172) ^ 0x30B17C6A) + 2143743861));
  v173 = (((v124 ^ 0xE6A54EB7) - 232292942) ^ ((v124 ^ 0x10065521) + 75785768) ^ ((v124 ^ 0x289C9424) + 1008641827)) - v86;
  v174 = v134 + v173 + (((v133 ^ 0xE1F1C015) + 1350050578) ^ ((v133 ^ 0xFDFC8E90) + 1282764181) ^ ((v133 ^ 0xC62AEFB3) + 2007174328)) + 411757807 + ((((2 * v133) & 0x4769E10C ^ 0x9840CC1E) - 1711098531) ^ (((2 * v133) & 0x4769E10C ^ 0xDFFD15) + 43877464) ^ (((2 * v133) & 0x4769E10C ^ 0xDBBF900B) - 637671094));
  v175 = ((v174 ^ 0x9FA6CC8D) + 1752142456) ^ v174 ^ ((v174 ^ 0xFE9073FD) + 156839176) ^ ((v174 ^ 0x9467E10A) + 1672396785) ^ ((v174 ^ 0xFD67FF7F) + 179216774);
  v176 = v151 + v138;
  v177 = v88 - 944696079;
  v178 = v151 - (v88 - 944696079);
  v179 = (((v176 + v178) ^ 0x9AC85802) - 1202704288) ^ (v176 + v178) ^ (((v176 + v178) ^ 0x91A041AF) - 1288164877) ^ (((v176 + v178) ^ 0x2DB071D0) + 254286222) ^ (((v176 + v178) ^ 0xFBBFFFDF) - 651716733);
  v180 = 2 * (((v178 ^ 0x3D809006) + 1320609290) ^ v178 ^ ((v178 ^ 0x520A5703) + 557588749) ^ ((v178 ^ 0x1EACB10E) + 1838860034) ^ ((v178 ^ 0x7DEFFFFB) + 249137653));
  v181 = v148 - 1469810271 + (((v180 ^ 0xF012DB69) - 2000958835) ^ ((v180 ^ 0xF65FF134) - 1896423214) ^ ((v180 ^ 0x1FDE39BD) + 1735862361));
  v182 = (((v178 + 344061372) ^ 0xD030D620) + 912013888) ^ (v178 + 344061372) ^ (((v178 + 344061372) ^ 0xD6C3E9A9) + 816776631) ^ (((v178 + 344061372) ^ 0x49DFD296) - 1347207542) ^ (((v178 + 344061372) ^ 0x56BFFEFF) - 1328344351);
  v183 = (((v173 + 187675030) ^ 0x5D2F7C8F) - 581802239) ^ (v173 + 187675030) ^ (((v173 + 187675030) ^ 0x49D341EC) - 911320476) ^ (((v173 + 187675030) ^ 0x5C4506EC) - 600302236) ^ (((v173 + 187675030) ^ 0x373BDFFF) - 1220098959) ^ v175;
  v184 = ((v175 ^ 0x75DE3FCC) + 1356345548) ^ ((v175 ^ 0x637DFB2F) + 1182528553) ^ ((v175 ^ 0x1E9565E6) + 999516898);
  v173 -= 1011493998;
  v185 = (v173 ^ 0xE03E29C2) & (2 * (v173 & 0xC03E8DC8)) ^ v173 & 0xC03E8DC8;
  v186 = ((2 * (v173 ^ 0xE06333C2)) ^ 0x40BB7C14) & (v173 ^ 0xE06333C2) ^ (2 * (v173 ^ 0xE06333C2)) & 0x205DBE0A;
  v187 = (v186 ^ 0x183C00) & (4 * v185) ^ v185;
  v188 = ((4 * (v186 ^ 0x2044820A)) ^ 0x8176F828) & (v186 ^ 0x2044820A) ^ (4 * (v186 ^ 0x2044820A)) & 0x205DBE08;
  v189 = (v188 ^ 0x54B800) & (16 * v187) ^ v187;
  v190 = ((16 * (v188 ^ 0x20090602)) ^ 0x5DBE0A0) & (v188 ^ 0x20090602) ^ (16 * (v188 ^ 0x20090602)) & 0x205DBE00;
  v191 = v189 ^ 0x205DBE0A ^ (v190 ^ 0x59A000) & (v189 << 8);
  v192 = (4 * (((v191 << 16) ^ 0x3E0A0000) & (((v190 ^ 0x20041E0A) << 8) & 0x205D0000 ^ 0x20410000 ^ (((v190 ^ 0x20041E0A) << 8) ^ 0x5DBE0000) & (v190 ^ 0x20041E0A)) ^ v191 ^ ((v191 << 16) & 0x205D0000 | 0x3808))) ^ (2 * v173);
  v193 = v149 - 1794908475 + (((v192 ^ 0x268C810B) + 2128560680) ^ ((v192 ^ 0xED390B02) - 1251293137) ^ ((v192 ^ 0x4A9E8991) + 315443902));
  v86 += 185787257;
  v194 = (v86 ^ 0x15B2FE72) & (2 * (v86 & 0xA63AFE78)) ^ v86 & 0xA63AFE78;
  v195 = ((2 * (v86 ^ 0x19D35292)) ^ 0x7FD359D4) & (v86 ^ 0x19D35292) ^ (2 * (v86 ^ 0x19D35292)) & 0xBFE9ACEA;
  v196 = (v195 ^ 0x39C108C0) & (4 * v194) ^ v194;
  v197 = ((4 * (v195 ^ 0x8028A42A)) ^ 0xFFA6B3A8) & (v195 ^ 0x8028A42A) ^ (4 * (v195 ^ 0x8028A42A)) & 0xBFE9ACE8;
  v198 = (v197 ^ 0xBFA0A0A0) & (16 * v196) ^ v196;
  v199 = ((16 * (v197 ^ 0x490C42)) ^ 0xFE9ACEA0) & (v197 ^ 0x490C42) ^ (16 * (v197 ^ 0x490C42)) & 0xBFE9ACE0;
  v200 = v198 ^ 0xBFE9ACEA ^ (v199 ^ 0xBE888C00) & (v198 << 8);
  v201 = v86 ^ (2 * ((v200 << 16) & 0x3FE90000 ^ v200 ^ ((v200 << 16) ^ 0x2CEA0000) & (((v199 ^ 0x161204A) << 8) & 0x3FE90000 ^ 0x16410000 ^ (((v199 ^ 0x161204A) << 8) ^ 0x69AC0000) & (v199 ^ 0x161204A))));
  v202 = v182 ^ 0x132071FF;
  v203 = STACK[0x590];
  v204 = (((v182 ^ 0x132071FF ^ LODWORD(STACK[0x590]) ^ 0x5CC880BF) - 1556644031) ^ ((v182 ^ 0x132071FF ^ LODWORD(STACK[0x590]) ^ 0x5C49D421) - 1548342305) ^ ((v182 ^ 0x132071FF ^ LODWORD(STACK[0x590]) ^ 0xBB30ADEE) + 1154437650)) - (((v182 ^ 0xF8C1A0F7) + 337522424) ^ ((v182 ^ 0x8FBB918C) + 1667506061) ^ ((v182 ^ 0x6EE9229B) - 2110346084)) - 1231690347;
  v205 = (v204 ^ 0xF260BD3D) & (2 * (v204 & 0xFA68B1BC)) ^ v204 & 0xFA68B1BC;
  v206 = ((2 * (v204 ^ 0x76B1BD0D)) ^ 0x19B21962) & (v204 ^ 0x76B1BD0D) ^ (2 * (v204 ^ 0x76B1BD0D)) & 0x8CD90CB0;
  v207 = (v206 ^ 0x8800820) & (4 * v205) ^ v205;
  v208 = ((4 * (v206 ^ 0x84490491)) ^ 0x336432C4) & (v206 ^ 0x84490491) ^ (4 * (v206 ^ 0x84490491)) & 0x8CD90CB0;
  v209 = v207 ^ 0x8CD90CB1 ^ (v208 ^ 0x400091) & (16 * v207);
  v210 = (16 * (v208 ^ 0x8C990C31)) & 0x8CD90CB0 ^ 0x4904A1 ^ ((16 * (v208 ^ 0x8C990C31)) ^ 0xCD90CB10) & (v208 ^ 0x8C990C31);
  v211 = (v209 << 8) & 0x8CD90C00 ^ v209 ^ ((v209 << 8) ^ 0xD90CB100) & v210;
  v212 = (v211 << 16) & 0xCD90000 ^ v211 ^ ((v211 << 16) ^ 0xCB10000) & ((v210 << 8) & 0x8CD90000 ^ 0x4D10000 ^ ((v210 << 8) ^ 0x590C0000) & v210);
  v213 = (((v201 ^ 0xD5DDEE02) + 909185659) ^ ((v201 ^ 0x78145271) - 1678201334) ^ ((v201 ^ 0x8F86808D) + 1818918134)) + 1560404913 + v193;
  v214 = v213 - 602927444 + (((v183 ^ 0xF8774A77) - 921382323) ^ ((v183 ^ 0x10A08604) + 566435392) ^ ((v183 ^ 0x9F638906) - 1375727298));
  v215 = (v214 ^ 0xD197C180) & (2 * (v214 & 0x81C7D112)) ^ v214 & 0x81C7D112;
  v216 = ((2 * (v214 ^ 0xD11261A0)) ^ 0xA1AB6164) & (v214 ^ 0xD11261A0) ^ (2 * (v214 ^ 0xD11261A0)) & 0x50D5B0B2;
  v217 = (v216 ^ 0x10000) & (4 * v215) ^ v215;
  v218 = ((4 * (v216 ^ 0x50549092)) ^ 0x4356C2C8) & (v216 ^ 0x50549092) ^ (4 * (v216 ^ 0x50549092)) & 0x50D5B0B0;
  v219 = (v218 ^ 0x40548092) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0x10813032)) ^ 0xD5B0B20) & (v218 ^ 0x10813032) ^ (16 * (v218 ^ 0x10813032)) & 0x50D5B0B0;
  v221 = v219 ^ 0x50D5B0B2 ^ (v220 ^ 0x510000) & (v219 << 8);
  v222 = v214 ^ (2 * ((v221 << 16) & 0x50D50000 ^ v221 ^ ((v221 << 16) ^ 0x30B20000) & (((v220 ^ 0x5084B092) << 8) & 0x50D50000 ^ 0x450000 ^ (((v220 ^ 0x5084B092) << 8) ^ 0xD5B00000) & (v220 ^ 0x5084B092))));
  v223 = (((v179 ^ 0x541255D1 ^ LODWORD(STACK[0x590]) ^ 0x259AEE6B) - 630910571) ^ ((v179 ^ 0x541255D1 ^ LODWORD(STACK[0x590]) ^ 0xCAD9F1E8) + 891686424) ^ ((v179 ^ 0x541255D1 ^ LODWORD(STACK[0x590]) ^ 0xD734469F) + 684439905)) - (((v179 ^ 0x1AC32823) - 1322352114) ^ ((v179 ^ 0xA2BD068) - 1580828089) ^ ((v179 ^ 0xCD8F6FE9) + 1717749192));
  v224 = (v184 - v213 + 753750627) ^ (((v184 - v213 + 753750627) ^ 0x810C5D64) + 1830554402) ^ (((v184 - v213 + 753750627) ^ 0x333A2069) - 550865363) ^ (((v184 - v213 + 753750627) ^ 0x4E66234A) - 1569295088) ^ (((v184 - v213 + 753750627) ^ 0xEFBFF7FD) + 61841849) ^ 0xB73C55A7;
  v225 = v183 ^ LODWORD(STACK[0x588]);
  LODWORD(STACK[0x588]) = ((LODWORD(STACK[0x588]) ^ 0x72A1EDE4) - 1923214820) ^ ((LODWORD(STACK[0x588]) ^ 0x4ABE2E2) - 78373602) ^ ((LODWORD(STACK[0x588]) ^ 0x288AC761) - 680183649);
  v226 = ((v177 ^ 0xEF2CFDB6) + 1632344271) ^ v177 ^ ((v177 ^ 0xB2BA2893) + 1021136364) ^ ((v177 ^ 0x5BF1B01C) - 711535259) ^ ((v177 ^ 0x77FFFFBE) - 107439417);
  v227 = (((v225 ^ v203 ^ 0x9F3804EC) - 1369727784) ^ ((v225 ^ v203 ^ 0xE4344A7B) - 715664831) ^ ((v225 ^ v203 ^ 0xE33A58EA) - 765869870)) - (((v225 ^ 0xBE25961A) - 1891234270) ^ ((v225 ^ 0x5C936F0F) + 1844508469) ^ ((v225 ^ 0xCB827407) - 85857219)) - 2016109362;
  v228 = (v223 - 370399370) ^ v204 ^ (((v223 - 370399370) ^ 0xE7F0B96B) + 585487962) ^ (((v223 - 370399370) ^ 0xE208177) - 885658042) ^ (((v223 - 370399370) ^ 0xACC55626) + 1775253781) ^ (((v223 - 370399370) ^ 0x7FFFFEF7) - 1159032378) ^ (2 * v212) ^ v227 ^ ((v227 ^ 0xF62BAB0) - 397520731) ^ ((v227 ^ 0x7A9430FA) - 1648829713) ^ ((v227 ^ 0x909A649E) + 2008452747) ^ ((v227 ^ 0xFDBFFB3F) + 445845804);
  v229 = (((v226 ^ 0x30C0A24F) - 7630290) ^ ((v226 ^ 0x36AC87C) - 870189025) ^ ((v226 ^ 0xE0446BE6) + 789535621)) + 257600348 + v181;
  v230 = (((v202 ^ v179 ^ 0x541255D1 ^ 0x7B4A6925) - 2068474149) ^ ((v202 ^ v179 ^ 0x541255D1 ^ 0xBD4E3735) + 1118947531) ^ ((v202 ^ v179 ^ 0x541255D1 ^ 0x45C2FE7C) - 1170407036)) + v229 + 488442530;
  v231 = ((v230 ^ 0xF10C5995) + 33246186) ^ v230 ^ ((v230 ^ 0x88B0D529) + 2017970006) ^ ((v230 ^ 0x897B9EF0) + 2039254157) ^ ((v230 ^ 0xFFCFFFCF) + 255389108);
  v232 = ((v228 ^ 0xDBEE0806) + 814528454) ^ ((v228 ^ 0x5308FE8C) - 1200996016) ^ ((v228 ^ 0x4037DB72) - 1420467022);
  v233 = (((v222 ^ 0x1B6C8A21) + 1608621153) ^ ((v222 ^ 0xFAC8FB7) + 1260493303) ^ ((v222 ^ 0x158CB5E0) + 1359061922)) - 115911587;
  v234 = ((v233 ^ 0x5D7E01E3) - 1072950008) ^ v233 ^ ((v233 ^ 0x9B5AA5AF) + 103330124) ^ ((v233 ^ 0x7F54B089) - 500784018) ^ ((v233 ^ 0xDBFDFFDE) + 1183836987);
  v235 = v224 ^ v222 ^ 0xBB72E9BE ^ a6;
  v236 = v231 ^ 0xDC165F8E;
  v237 = (((v235 ^ v15 ^ 0xFD9E25C) - 265937500) ^ ((v235 ^ v15 ^ 0x1117059D) - 286721437) ^ ((v235 ^ v15 ^ 0x5D61D585) - 1566692741)) - (((v235 ^ 0x7C764514) - 2088125716) ^ ((v235 ^ 0x57F55830) - 1475696688) ^ ((v235 ^ 0x54EDEB6A) - 1424878442)) + 651131126;
  v238 = (v237 ^ 0xDC6AC2B1) & (2 * (v237 & 0x9D70C300)) ^ v237 & 0x9D70C300;
  v239 = ((2 * (v237 ^ 0xD46BC4B1)) ^ 0x92360F62) & (v237 ^ 0xD46BC4B1) ^ (2 * (v237 ^ 0xD46BC4B1)) & 0x491B07B0;
  v240 = (v239 ^ 0x20400) & (4 * v238) ^ v238;
  v241 = ((4 * (v239 ^ 0x49090091)) ^ 0x246C1EC4) & (v239 ^ 0x49090091) ^ (4 * (v239 ^ 0x49090091)) & 0x491B07B0;
  v242 = (v241 ^ 0x80691) & (16 * v240) ^ v240;
  v243 = ((16 * (v241 ^ 0x49130131)) ^ 0x91B07B10) & (v241 ^ 0x49130131) ^ (16 * (v241 ^ 0x49130131)) & 0x491B07B0;
  v244 = v242 ^ 0x491B07B1 ^ (v243 ^ 0x1100300) & (v242 << 8);
  v245 = (v244 << 16) & 0x491B0000 ^ v244 ^ ((v244 << 16) ^ 0x7B10000) & (((v243 ^ 0x480B04A1) << 8) & 0x491B0000 ^ 0x40180000 ^ (((v243 ^ 0x480B04A1) << 8) ^ 0x1B070000) & (v243 ^ 0x480B04A1));
  v246 = v193 + 1342918773 + v213;
  v247 = (((v11 ^ 0xEB4BA796) + 1609819457) ^ ((v11 ^ 0x268A6418) - 1842207025) ^ ((v11 ^ 0xE7052D3C) + 1404923883)) + v246 - 1155198390;
  v248 = (((v179 & 0x8F8982D7 ^ 0xDB15C973) - 1745258186) ^ ((v179 & 0x8F8982D7 ^ 0x805D7B13) - 860763306) ^ ((v179 & 0x8F8982D7 ^ 0xA63F4DCA) - 355205747)) + (((v179 & 0x70767D28 ^ 0xFD9D3A06) + 844904895) ^ ((v179 & 0x70767D28 ^ 0x54EBF119) - 1691684190) ^ ((v179 & 0x70767D28 ^ 0xF910DE3F) + 919723400)) - v229 - 702023050;
  v249 = ((v248 ^ 0xC061881C) + 147730686) ^ v248 ^ ((v248 ^ 0x8FFB00E0) + 1196734466) ^ ((v248 ^ 0xF333019) - 946042631) ^ ((v248 ^ 0x77F9FFFB) - 1084864741);
  v250 = v249 ^ 0x25D92B73;
  v251 = (((v231 ^ 0xDC165F8E ^ v15 ^ 0x5DFE688B) - 1576953995) ^ ((v231 ^ 0xDC165F8E ^ v15 ^ 0x832FB928) + 2094024408) ^ ((v231 ^ 0xDC165F8E ^ v15 ^ 0x310EA7A4) - 823044004)) - (((v231 ^ 0x85F33447) - 1508207561) ^ ((v231 ^ 0x49D87442) + 1781650484) ^ ((v231 ^ 0xC323AD86) - 523629064)) + 1193791247;
  v252 = (((v249 ^ 0x25D92B73 ^ v15 ^ 0x32D515E) - 53301598) ^ ((v249 ^ 0x25D92B73 ^ v15 ^ 0x631F515F) - 1662996831) ^ ((v249 ^ 0x25D92B73 ^ v15 ^ 0x4E7AA866) - 1316661350)) - (((v249 ^ 0x46EF1C54) - 1664497447) ^ ((v249 ^ 0xDA5A853D) + 8147378) ^ ((v249 ^ 0xABE5DE77) + 1908607740)) + 1327462848;
  v253 = v252 ^ v251 ^ ((v251 ^ 0xF7795796) + 585212797) ^ ((v251 ^ 0x38C137DC) - 312884425) ^ ((v251 ^ 0x9A2095A6) + 1337483597) ^ ((v251 ^ 0x7FFFFEF9) - 1436087788) ^ ((v252 ^ 0x79AC9A1A) - 1254926300) ^ ((v252 ^ 0x3D756C2D) - 236278251) ^ ((v252 ^ 0x846241F) - 992352729) ^ ((v252 ^ 0x7FFFEFEE) - 1285542440) ^ v237 ^ (2 * v245);
  v254 = ((v250 ^ v236 ^ 0x3DF20454) - 1039270996) ^ ((v250 ^ v236 ^ 0x18431969) - 407050601) ^ ((v250 ^ v236 ^ 0xE426C35D) + 467221667);
  v255 = ((v253 ^ 0xC128C72A) - 1592032299) ^ ((v253 ^ 0x3BCC12F4) + 1543460363) ^ ((v253 ^ 0xEE872F6F) - 1900778606);
  LODWORD(STACK[0x590]) = v232 - v181;
  v256 = v181 + 176506581 + v229;
  v257 = (((v229 - v254 + 1542131787) ^ 0x7F3706B8) - 1923747377) ^ (v229 - v254 + 1542131787) ^ (((v229 - v254 + 1542131787) ^ 0x5AC61BFA) - 1465586547) ^ (((v229 - v254 + 1542131787) ^ 0xD593FA34) + 670108995) ^ (((v229 - v254 + 1542131787) ^ 0xFDFFEFFF) + 261953674);
  v258 = (((v234 ^ 0x73A374B5) - 1868024056) ^ ((v234 ^ 0xC18805D2) + 579028577) ^ ((v234 ^ 0xF3126AFA) + 270084425)) - 1525199298 + ((((2 * v234) & 0x4769E10C ^ 0x9B343757) - 979280834) ^ (((2 * v234) & 0x4769E10C ^ 0x1D595386) + 1137457389) ^ (((2 * v234) & 0x4769E10C ^ 0xC364A4D5) - 1645097024)) + 3464;
  v259 = (v258 ^ 0xDD19949A) & (2 * (v258 & 0x9D19A09B)) ^ v258 & 0x9D19A09B;
  v260 = ((2 * (v258 ^ 0xED1AD49A)) ^ 0xE006E802) & (v258 ^ 0xED1AD49A) ^ (2 * (v258 ^ 0xED1AD49A)) & 0x70037400;
  v261 = (v260 ^ 0x60020000) & (4 * v259) ^ v259;
  v262 = ((4 * (v260 ^ 0x10011401)) ^ 0xC00DD004) & (v260 ^ 0x10011401) ^ (4 * (v260 ^ 0x10011401)) & 0x70037400;
  v263 = v261 ^ 0x70037401 ^ (v262 ^ 0x40015001) & (16 * v261);
  v264 = (16 * (v262 ^ 0x30022401)) & 0x70037400 ^ 0x70003401 ^ ((16 * (v262 ^ 0x30022401)) ^ 0x374010) & (v262 ^ 0x30022401);
  v265 = (v263 << 8) & 0x70037400 ^ v263 ^ ((v263 << 8) ^ 0x3740100) & v264;
  v266 = v258 ^ v224 ^ (2 * ((v265 << 16) & 0xF003FFFF ^ v265 ^ ((v265 << 16) ^ 0x74010000) & ((v264 << 8) & 0x70030000 ^ 0x70030000 ^ ((v264 << 8) ^ 0x3740000) & v264)));
  v267 = (v246 ^ 0x983A206) & (2 * (v246 & 0x49938454)) ^ v246 & 0x49938454;
  v268 = ((2 * (v246 ^ 0xBA2A28E)) ^ 0x84624DB4) & (v246 ^ 0xBA2A28E) ^ (2 * (v246 ^ 0xBA2A28E)) & 0x423126DA;
  v269 = (v268 ^ 0x1009A) & (4 * v267) ^ v267;
  v270 = ((4 * (v268 ^ 0x4211224A)) ^ 0x8C49B68) & (v268 ^ 0x4211224A) ^ (4 * (v268 ^ 0x4211224A)) & 0x423126D8;
  v271 = (v270 ^ 0x240) & (16 * v269) ^ v269;
  v272 = ((16 * (v270 ^ 0x42312492)) ^ 0x23126DA0) & (v270 ^ 0x42312492) ^ (16 * (v270 ^ 0x42312492)) & 0x423126D0;
  v273 = v271 ^ 0x423126DA ^ (v272 ^ 0x2102400) & (v271 << 8);
  v274 = v246 ^ (2 * ((v273 << 16) & 0x42310000 ^ v273 ^ ((v273 << 16) ^ 0x26DA0000) & (((v272 ^ 0x4021025A) << 8) & 0x42310000 ^ 0x42110000 ^ (((v272 ^ 0x4021025A) << 8) ^ 0x31260000) & (v272 ^ 0x4021025A))));
  v275 = (v256 ^ 0x678E241D) & (2 * (v256 & 0x67AF461C)) ^ v256 & 0x67AF461C;
  v276 = ((2 * (v256 ^ 0x6E80AC3D)) ^ 0x125FD442) & (v256 ^ 0x6E80AC3D) ^ (2 * (v256 ^ 0x6E80AC3D)) & 0x92FEA20;
  v277 = (v276 ^ 0xF0201) & (4 * v275) ^ v275;
  v278 = ((4 * (v276 ^ 0x9202A21)) ^ 0x24BFA884) & (v276 ^ 0x9202A21) ^ (4 * (v276 ^ 0x9202A21)) & 0x92FEA20;
  v279 = (v278 ^ 0x2FA800) & (16 * v277) ^ v277;
  v280 = ((16 * (v278 ^ 0x9004221)) ^ 0x92FEA210) & (v278 ^ 0x9004221) ^ (16 * (v278 ^ 0x9004221)) & 0x92FEA20;
  v281 = v279 ^ 0x92FEA21 ^ (v280 ^ 0x2EA200) & (v279 << 8);
  v282 = v256 ^ (2 * ((v281 << 16) & 0x92F0000 ^ v281 ^ ((v281 << 16) ^ 0x6A210000) & (((v280 ^ 0x9014821) << 8) & 0x92F0000 ^ 0x50000 ^ (((v280 ^ 0x9014821) << 8) ^ 0x2FEA0000) & (v280 ^ 0x9014821))));
  v283 = (((v282 ^ 0x61598EB4) + 943612567) ^ ((v282 ^ 0x2EA8FA8D) + 2010060464) ^ ((v282 ^ 0x772F9B00) + 776501027)) - v254;
  v284 = v254 - (((v257 ^ 0x724DFD45) + 955665399) ^ ((v257 ^ 0x737BCD99) + 968915755) ^ ((v257 ^ 0x7D030823) + 934854289)) + 1508234431;
  v285 = (v284 ^ 0xDC7ED7CD) & (2 * (v284 & 0x9E4097EE)) ^ v284 & 0x9E4097EE;
  v286 = ((2 * (v284 ^ 0xC87FDD01)) ^ 0xAC7E95DE) & (v284 ^ 0xC87FDD01) ^ (2 * (v284 ^ 0xC87FDD01)) & 0x563F4AEE;
  v287 = (v286 ^ 0x600C8) & (4 * v285) ^ v285;
  v288 = ((4 * (v286 ^ 0x52014A21)) ^ 0x58FD2BBC) & (v286 ^ 0x52014A21) ^ (4 * (v286 ^ 0x52014A21)) & 0x563F4AEC;
  v289 = (v288 ^ 0x503D0AA0) & (16 * v287) ^ v287;
  v290 = ((16 * (v288 ^ 0x6024043)) ^ 0x63F4AEF0) & (v288 ^ 0x6024043) ^ (16 * (v288 ^ 0x6024043)) & 0x563F4AE0;
  v291 = v289 ^ 0x563F4AEF ^ (v290 ^ 0x42340A00) & (v289 << 8);
  v292 = v284 ^ (2 * ((v291 << 16) & 0x563F0000 ^ v291 ^ ((v291 << 16) ^ 0x4AEF0000) & (((v290 ^ 0x140B400F) << 8) & 0x563F0000 ^ 0x40350000 ^ (((v290 ^ 0x140B400F) << 8) ^ 0x3F4A0000) & (v290 ^ 0x140B400F))));
  v293 = (((v274 ^ 0xD6DBD16) - 1666149513) ^ ((v274 ^ 0xA718CA49) + 918938666) ^ ((v274 ^ 0x3EC8C3D8) - 1357517383)) - (((v266 ^ 0xCEE100D8) + 2065055750) ^ ((v266 ^ 0x8C0CDDC5) + 972791065) ^ ((v266 ^ 0x7B236999) - 824956603));
  v294 = v292 ^ 0x712F2C03 ^ v236;
  v295 = LODWORD(STACK[0x518]) ^ 0x70F97ABE;
  v296 = (((v294 ^ v295 ^ 0x464564DA) + 1057451861) ^ ((v294 ^ v295 ^ 0x6D713A8A) + 338899205) ^ ((v294 ^ v295 ^ 0x48704989) + 825377288)) - (((v294 ^ 0xDDD4E419) + 223851148) ^ ((v294 ^ 0x5C0B422C) - 1937238849) ^ ((v294 ^ 0xAEA30F58) + 2116049355)) + 985276720;
  v297 = (v296 ^ 0xA3BFC072) & (2 * (v296 & 0xAB3FC278)) ^ v296 & 0xAB3FC278;
  v298 = ((2 * (v296 ^ 0xF7EE40B2)) ^ 0xB9A30594) & (v296 ^ 0xF7EE40B2) ^ (2 * (v296 ^ 0xF7EE40B2)) & 0x5CD182CA;
  v299 = (v298 ^ 0x18810080) & (4 * v297) ^ v297;
  v300 = ((4 * (v298 ^ 0x4450824A)) ^ 0x73460B28) & (v298 ^ 0x4450824A) ^ (4 * (v298 ^ 0x4450824A)) & 0x5CD182C8;
  v301 = (v300 ^ 0x50400200) & (16 * v299) ^ v299;
  v302 = ((16 * (v300 ^ 0xC9180C2)) ^ 0xCD182CA0) & (v300 ^ 0xC9180C2) ^ (16 * (v300 ^ 0xC9180C2)) & 0x5CD182C0;
  v303 = v301 ^ 0x5CD182CA ^ (v302 ^ 0x4C100000) & (v301 << 8);
  v304 = (v303 << 16) & 0x5CD10000 ^ v303 ^ ((v303 << 16) ^ 0x2CA0000) & (((v302 ^ 0x10C1824A) << 8) & 0x5CD10000 ^ 0xC510000 ^ (((v302 ^ 0x10C1824A) << 8) ^ 0x51820000) & (v302 ^ 0x10C1824A));
  LODWORD(v306) = __ROR4__(LODWORD(STACK[0x538]) ^ 0x8EC39014 ^ v222 ^ 0xBB72E9BE, 29) ^ 0x46FB02FA;
  HIDWORD(v306) = v306;
  v305 = v306 >> 3;
  v307 = (((v305 ^ v295 ^ 0xF84898BC) + 1001908151) ^ ((v305 ^ v295 ^ 0xBE8C5835) + 2104698688) ^ ((v305 ^ v295 ^ 0x2C70B176) - 275788163)) - (((v305 ^ 0x768484F2) - 1485973263) ^ ((v305 ^ 0x33416318) - 492290277) ^ ((v305 ^ 0x634928A1) - 1298107228));
  v308 = ((v293 - 1287468230) ^ 0x83D6CEB7) & (2 * ((v293 - 1287468230) & 0xD3968E38)) ^ (v293 - 1287468230) & 0xD3968E38;
  v309 = ((2 * ((v293 - 1287468230) ^ 0x3F6D697)) ^ 0xA0C0B15E) & ((v293 - 1287468230) ^ 0x3F6D697) ^ (2 * ((v293 - 1287468230) ^ 0x3F6D697)) & 0xD06058AE;
  v310 = (v309 ^ 0x80401000) & (4 * v308) ^ v308;
  v311 = ((4 * (v309 ^ 0x502048A1)) ^ 0x418162BC) & (v309 ^ 0x502048A1) ^ (4 * (v309 ^ 0x502048A1)) & 0xD06058AC;
  v312 = (v311 ^ 0x400040A0) & (16 * v310) ^ v310;
  v313 = ((16 * (v311 ^ 0x90601803)) ^ 0x6058AF0) & (v311 ^ 0x90601803) ^ (16 * (v311 ^ 0x90601803)) & 0xD06058A0;
  v314 = v312 ^ 0xD06058AF ^ (v313 ^ 0x800) & (v312 << 8);
  v315 = (v293 - 1287468230) ^ (2 * ((v314 << 16) & 0x50600000 ^ v314 ^ ((v314 << 16) ^ 0x58AF0000) & (((v313 ^ 0xD060500F) << 8) & 0x50600000 ^ 0x10200000 ^ (((v313 ^ 0xD060500F) << 8) ^ 0x60580000) & (v313 ^ 0xD060500F))));
  v316 = (((v292 ^ 0x712F2C03 ^ LODWORD(STACK[0x518]) ^ 0x6643BB96) - 1715714966) ^ ((v292 ^ 0x712F2C03 ^ LODWORD(STACK[0x518]) ^ 0x8C9714F3) + 1936255757) ^ ((v292 ^ 0x712F2C03 ^ LODWORD(STACK[0x518]) ^ 0x115A455C) - 291128668)) - (((v292 ^ 0xC26E4C15) + 1287561194) ^ ((v292 ^ 0x74821C11) - 95236114) ^ ((v292 ^ 0x8C5234) - 1906540087)) - 1837381634;
  v307 -= 1648043410;
  v317 = v296 ^ v316 ^ ((v316 ^ 0x496CC045) - 391171005) ^ v307 ^ ((v316 ^ 0x97DA6DDA) + 907647454) ^ ((v316 ^ 0xDE351998) + 2146889120) ^ ((v316 ^ 0x5EBFBFFF) - 8631303) ^ ((v307 ^ 0xC431EE12) + 1952729080) ^ ((v307 ^ 0xB025A13D) + 7342297) ^ ((v307 ^ 0x445E6CA) - 1273999568) ^ ((v307 ^ 0x3FFBFFFF) - 1884400101) ^ (2 * v304);
  v318 = ((LODWORD(STACK[0x550]) ^ 0xC74D1BF3) + 951247885) ^ ((LODWORD(STACK[0x550]) ^ 0xDD35F573) + 583666317) ^ ((LODWORD(STACK[0x550]) ^ 0x7BFBBD1B) - 2080095515);
  LODWORD(STACK[0x378]) += LODWORD(STACK[0x588]) + 567683500 + v193;
  LODWORD(STACK[0x39C]) = LODWORD(STACK[0x39C]) - v283 + 1032085693 + (((v317 ^ 0xB7302D5B) + 1349924844) ^ ((v317 ^ 0xBB94C87F) + 1557320400) ^ ((v317 ^ 0xE2E7F2A) - 379034213));
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x390]) + LODWORD(STACK[0x598]) - 1873622746 + LODWORD(STACK[0x558]);
  LODWORD(STACK[0x38C]) = LODWORD(STACK[0x38C]) - LODWORD(STACK[0x568]) - 406525743 + LODWORD(STACK[0x570]);
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x380]) - v256 + 603978644 + v255;
  LODWORD(STACK[0x388]) += v318 + 178439445 + (((v315 ^ 0x63114EDE) - 2119603168) ^ ((v315 ^ 0xBA29CBD7) + 1485957399) ^ ((v315 ^ 0x27E4E504) - 983775290));
  v319 = v247 + LODWORD(STACK[0x398]);
  LODWORD(STACK[0x384]) += LODWORD(STACK[0x5C4]) + 1605530733 + LODWORD(STACK[0x5C8]);
  return (*(STACK[0x5B8] + 8 * ((28 * (SLODWORD(STACK[0x224]) >= ((LODWORD(STACK[0x560]) - 1738) | 0x446) - 1169)) ^ LODWORD(STACK[0x560]))))(v319);
}

uint64_t sub_10006C6AC()
{
  v10 = v1 + 770346817;
  v11 = ((((v10 ^ v5) + 14) ^ v10 ^ ((v10 ^ 8) + 3)) ^ (((v10 ^ 4) - 1) ^ ((v10 ^ 0xE) + 5))) & 0xF;
  *(&STACK[0x710] + (854 * v10 + v4) % 0x3C3u) ^= *(STACK[0x3A8] + (LODWORD(STACK[0x394]) - 1617615637 + v10));
  *(&STACK[0x710] + (854 * (v1 + 770346817) + 1535777656) % 0x3C3u) ^= v11 ^ 0xEC ^ *(STACK[0x3A0] + (631 * (((v11 ^ v6) + v7) ^ ((v11 ^ v8) + v9) ^ ((v11 ^ 0xFA696B35) + 971963920)) + 215073438) % 0x3B0);
  v12 = v1 + 383104062 < v2;
  if (v2 < v3 != v1 + 383104062 < v3)
  {
    v12 = v2 < v3;
  }

  return (*(STACK[0x5B8] + 8 * ((500 * v12) ^ (v0 - 1525))))();
}

void sub_10006C8E0(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  LODWORD(STACK[0x238]) = a4;
  LODWORD(STACK[0x398]) = a1 - 269367899;
  LODWORD(STACK[0x36C]) = v8 - 415294859;
  LODWORD(STACK[0x364]) = v6 - 778663509;
  LODWORD(STACK[0x360]) += a6 + (((a3 - 1059) | 0x231) ^ 0xA6E5FD18);
  LODWORD(STACK[0x368]) = v7 + a2 - 40227948;
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x35C]) + v11 - 1390099416;
  LODWORD(STACK[0x370]) = v10 - 120201831;
  LODWORD(STACK[0x374]) = v9 - 244041198;
  LODWORD(STACK[0x394]) = a5 + 64;
  JUMPOUT(0x100035B78);
}

uint64_t sub_10006C9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v64 = (v59 - 1610241630) & 0x5FFA5DEF;
  v65 = (((v64 - 3055) | 0xA68) - 1865) ^ (v64 + 2073320409) & 0x846B9B3F;
  HIDWORD(a58) = v61 + 1315673391;
  HIDWORD(a59) = v62 - 1586882006;
  LODWORD(a57) = v60 - 885804445;
  LODWORD(v67) = STACK[0x38C];
  LODWORD(v68) = STACK[0x378];
  HIDWORD(v67) = STACK[0x384];
  HIDWORD(v68) = STACK[0x390];
  LODWORD(a52) = STACK[0x388];
  return (*(v63 + 8 * ((v65 * (STACK[0x20C] & 1)) | v64)))(a1, v65, a3, a4, a5, a6, 3474272992, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v67, v68, a56, a57, a58, a59);
}

uint64_t sub_10006CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = ((a2 ^ 0x95) - 934733910) & 0x37B6EFE7;
  v65 = (((v64 - 3055) | 0xA68) - 1865) ^ (v64 + 2073320409) & 0x846B9B3F;
  LODWORD(a59) = v61 - 885804445;
  HIDWORD(a57) = v62 + 1315673391;
  LODWORD(v68) = STACK[0x390];
  HIDWORD(v68) = STACK[0x380];
  LODWORD(a58) = STACK[0x378];
  HIDWORD(v67) = STACK[0x384];
  LODWORD(v67) = STACK[0x38C];
  LODWORD(a60) = STACK[0x39C];
  HIDWORD(a52) = STACK[0x388];
  return (*(v63 + 8 * ((v65 * (STACK[0x20C] & 1)) | v64)))(v65, a2, a3, a4, a5, a6, 3474272992, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, v67, a54, a55, v68, a57, a58, a59, a60, a61);
}

uint64_t sub_10006CC48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  STACK[0x6FC] = 0x86C9CC62C1E07F02;
  STACK[0x704] = 0x8E5D8D0A837E3FD3;
  v78 = (a45 ^ 0x92B7F5AF) + 1663319554;
  STACK[0x6CC] = 0x21CE384C84C1CCEFLL;
  STACK[0x66C] = 0x64D123892FD37B59;
  STACK[0x6B4] = 0x4FB9C7184F158B73;
  STACK[0x6C4] = 0xB8349643A061A8A5;
  LODWORD(STACK[0x6F8]) = 280540373;
  LODWORD(STACK[0x70C]) = 144988754;
  STACK[0x6F0] = 0xEF3992AED13886D8;
  LODWORD(STACK[0x5E8]) = -2009212831 * (a58 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x5EC]) = (((308 * (a1 ^ 0x31A) - 874) | 0x208) ^ 0x883DDF6B) * (a55 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x64C]) = -2009212831 * (a47 ^ 0xB2480A6) - 75026750;
  LODWORD(STACK[0x648]) = -2009212831 * (a48 ^ 0xB2480A6) - 75026750;
  LODWORD(STACK[0x628]) = -2009212831 * (a56 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x62C]) = -2009212831 * (a59 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (a50 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x60C]) = -2009212831 * (a49 - ((2 * a49) & 0x256FEB5E)) + 1295642129;
  LODWORD(STACK[0x610]) = -2009212831 * (a52 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x614]) = -2009212831 * (a51 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x5F0]) = -2009212831 * (a60 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x5F4]) = -2009212831 * (a64 ^ 0x6168D760) - 75026750;
  v79 = (a54 ^ 0xB2480A6) + 1663319554;
  LODWORD(STACK[0x650]) = -2009212831 * (a53 ^ 0xB2480A6) - 75026750;
  LODWORD(STACK[0x654]) = -2009212831 * (a57 ^ 0xB2480A6) - 75026750;
  LODWORD(STACK[0x630]) = -2009212831 * (a65 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x634]) = -2009212831 * (a70 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x5F8]) = -2009212831 * (a69 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x5FC]) = -2009212831 * (a71 ^ 0x41C8EB6A ^ (v79 | (484164093 - (a54 ^ 0xB2480A6))) & 0x20A03C0A) - 75026750;
  LODWORD(STACK[0x618]) = -2009212831 * (a63 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x61C]) = -2009212831 * (a62 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x658]) = -2009212831 * v79;
  LODWORD(STACK[0x65C]) = -2009212831 * (a61 ^ 0xB2480A6) - 75026750;
  LODWORD(STACK[0x638]) = -2009212831 * (a75 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x63C]) = -2009212831 * (a76 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x668]) = 1496559502;
  LODWORD(STACK[0x674]) = -2024423776;
  LODWORD(STACK[0x6E8]) = -1671187998;
  LODWORD(STACK[0x640]) = -2009212831 * (a72 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x644]) = -2009212831 * (a68 ^ 0xC328D558) - 75026750;
  LODWORD(STACK[0x600]) = -2009212831 * (a74 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x604]) = -2009212831 * (a73 ^ 0x6168D760) - 75026750;
  LODWORD(STACK[0x6EC]) = 1295642129;
  LODWORD(STACK[0x6A8]) = 1765839668;
  LODWORD(STACK[0x6AC]) = 229583098;
  LODWORD(STACK[0x660]) = -2009212831 * ((a46 ^ 0xB2480A6) - 805993545 * ((((484164093 - (a45 ^ 0x92B7F5AF)) & 0x6BE7C7EF) + (v78 & 0x6BE7C7EF)) & 0xEDE54E1E));
  LODWORD(STACK[0x664]) = -2009212831 * (a66 ^ 0xB2480A6) - 75026750;
  STACK[0x678] = 0x3812CE1487D97BAALL;
  LODWORD(STACK[0x620]) = -2009212831 * v78;
  LODWORD(STACK[0x624]) = -2009212831 * (a67 ^ 0x92B7F5AF) - 75026750;
  LODWORD(STACK[0x690]) = -700360074;
  v80 = *(a77 + 48);
  LODWORD(STACK[0x694]) = -1615483476;
  LODWORD(STACK[0x688]) = 546709825;
  LODWORD(STACK[0x68C]) = -1010746620;
  LODWORD(STACK[0x6DC]) = -296432435;
  LODWORD(STACK[0x6D8]) = -1407435410;
  LODWORD(STACK[0x6C0]) = 1911930061;
  LODWORD(STACK[0x6D4]) = 1447238279;
  LODWORD(STACK[0x6A4]) = -2091032416;
  LODWORD(STACK[0x6A0]) = -1566225496;
  LODWORD(STACK[0x680]) = 1343964855;
  LODWORD(STACK[0x684]) = 80846158;
  LODWORD(STACK[0x6E0]) = 1297517338;
  LODWORD(STACK[0x6E4]) = 1591568755;
  LODWORD(STACK[0x6BC]) = 1334223871;
  LODWORD(STACK[0x6B0]) = 408855547;
  LODWORD(STACK[0x698]) = 1237031252;
  LODWORD(STACK[0x69C]) = 867400550;
  v81 = *(v80 - 0x6DDC5E19E8475889) == 0;
  STACK[0x5E0] -= 2032;
  v82 = *(v77 + 8 * ((43 * v81) ^ a1));
  LODWORD(STACK[0x40C]) = -738813334;
  return v82();
}

uint64_t sub_10006D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = *(a5 + 24);
  v78 = __ROR8__(v77 & 0xFFFFFFFFFFFFFFF8, 8);
  v79 = v78 - ((2 * v78 - 0x732D46FC5C86CC62) & (((v67 - 1030) | 0x19u) ^ 0xBA530B89204B7A35)) - 0x5C6D1DB99E1DA99DLL;
  v80 = v79 ^ 0xCF9EC8A60ECF54B7;
  v79 ^= 0xFCD42CA8832B9AC9;
  v81 = __ROR8__(v80, 8);
  v82 = __ROR8__((v81 + v79 - ((2 * (v81 + v79)) & 0x23ADCDC00C479622) + 0x11D6E6E00623CB11) ^ 0xF3E05AB58AB09400, 8);
  v83 = (v81 + v79 - ((2 * (v81 + v79)) & 0x23ADCDC00C479622) + 0x11D6E6E00623CB11) ^ 0xF3E05AB58AB09400 ^ __ROR8__(v79, 61);
  v84 = (v82 + v83) ^ a4;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a8;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v71 - ((v88 + v87) | v71) + ((v88 + v87) | 0x7236384C6120241CLL)) ^ 0x7CE51B0E32ED01E3;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (v72 - ((v91 + v90) | v72) + ((v91 + v90) | 0x7A7424B296B7A9A2)) ^ 0xB37E18EF72C44CC4;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (v94 + v93 - ((2 * (v94 + v93)) & 0x2BE44329D4FA9DF4) + 0x15F22194EA7D4EFALL) ^ 0x3A6A0CFFFA0C65F9;
  v96 = __ROR8__((v77 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = (((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v93, 61))) ^ v75) >> (8 * (v77 & 7u))) ^ *v77;
  v98 = -2 - (((a3 - v96) | 0x152734F85913D3EFLL) + ((v96 + a6) | 0xEAD8CB07A6EC2C10));
  v99 = v98 ^ 0x790799AC7F93BCCLL;
  v98 ^= 0x34DA9D944A1DF5B2uLL;
  v100 = (__ROR8__(v99, 8) + v98) ^ v68;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (a2 - ((v102 + v101) | a2) + ((v102 + v101) | 0xAF2C419809E46BACLL)) ^ 0x5537EA18A371B00DLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ a8;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ v76;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v69;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ v73;
  v112 = (((((__ROR8__(v111, 8) + (v111 ^ __ROR8__(v110, 61))) ^ v75) >> (8 * ((v77 + 1) & 7))) ^ *(v77 + 1)) << 16) | (v97 << 24);
  v113 = __ROR8__((v77 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v114 = (a3 - v113) & 0xD0FC111B3A2DECEFLL | (v113 + a6) & 0x2903EEE4C5D21310;
  v115 = __ROR8__(v114 ^ 0xC44B5C79A4C704CCLL, 8);
  v114 ^= 0xF701B8772923CAB2;
  v116 = (((v115 + v114) & 0x376A4C6891141ECDLL ^ 0x1462480800140EC0) + ((v115 + v114) & 0xC895B3976EEBE132 ^ 0x13872AC3A013) - 1) ^ 0xF654E7DAA644F1C3;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ a4;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ a8;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (v122 + v121 - ((2 * (v122 + v121)) & 0x652BBD656234A318) - 0x4D6A214D4EE5AE74) ^ 0xBC46FDF0E2D77473;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = __ROR8__((a7 - ((v125 + v124) | a7) + ((v125 + v124) | 0x181002EF61D0430FLL)) ^ 0xD11A3EB285A3A669, 8);
  v127 = (a7 - ((v125 + v124) | a7) + ((v125 + v124) | 0x181002EF61D0430FLL)) ^ 0xD11A3EB285A3A669 ^ __ROR8__(v124, 61);
  v128 = (((v126 + v127) & 0xE50A65664601FE15 ^ 0xA00A242004018415) + ((v126 + v127) & 0x1AF59A99B9FE01EALL ^ 0x1AF41818A14E00C1) - 1) ^ 0x95661153B53EAFD6;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = v112 | (((((((v130 + v129) ^ 0xB593D7B1DB2FC2E0) - ((2 * ((v130 + v129) ^ 0xB593D7B1DB2FC2E0)) & 0xD3C09C1C2C39426ELL) - 0x161FB1F1E9E35EC9) ^ 0x444D05DDDA1F22CBLL) >> (8 * ((v77 + 2) & 7))) ^ *(v77 + 2)) << 8);
  v132 = *(v77 + 3);
  v77 += 3;
  v133 = __ROR8__(v77 & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = ((2 * (v133 + v70)) | 0x161984551B80BA1ALL) - (v133 + v70) - 0xB0CC22A8DC05D0DLL;
  v135 = v134 ^ 0x19BB8F48132AB52ELL;
  v134 ^= 0x2AF16B469ECE7B50uLL;
  v136 = (__ROR8__(v135, 8) + v134) ^ v68;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (v138 + v137 - ((2 * (v138 + v137)) & 0x22D848C56C2EAB16) - 0x6E93DB9D49E8AA75) ^ 0x6B778FE21C828E2ALL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (v141 + v140 - ((2 * (v141 + v140)) & 0xF7D803A054F94D42) - 0x413FE2FD583595FLL) ^ 0x236041CA9B19168;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ v76;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = __ROR8__((((2 * (v146 + v145)) & 0x3D8940B68EE7DDDELL) - (v146 + v145) - 0x1EC4A05B4773EEF0) ^ 0x283163F95CFFF476, 8);
  v148 = (((2 * (v146 + v145)) & 0x3D8940B68EE7DDDELL) - (v146 + v145) - 0x1EC4A05B4773EEF0) ^ 0x283163F95CFFF476 ^ __ROR8__(v145, 61);
  v149 = (v147 + v148 - ((2 * (v147 + v148)) & 0x845AB9EE2D7EF7F2) + 0x422D5CF716BF7BF9) ^ 0x6DB5719C06CE50FALL;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  LODWORD(v77) = (((v151 + v150 - ((2 * (v151 + v150)) & 0x3C0BEFC4B665A2CCLL) + 0x1E05F7E25B32D166) ^ 0x63B6B804C1E907ALL) >> (8 * (v77 & 7u))) ^ v132;
  LODWORD(v77) = ((v131 - ((2 * v131) & 0xA9947000) + 1422538904) ^ 0x6D55236) & ~v77 | v77 & 0x51;
  return (*(v74 + 8 * ((42 * (a66 - *(a67 + 36) + (((v77 ^ 0x49DDB3C9) - 592295670) ^ ((v77 ^ 0x66AEA408) - 205431095) ^ ((v77 ^ 0x7D6C7D6F) - 402421840)) == 1521682030)) ^ v67)))();
}

uint64_t sub_10006DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 24);
  v8 = STACK[0x5E0];
  STACK[0x2C8] = STACK[0x5E0];
  STACK[0x5E0] = v8 + 2096;
  return (*(v6 + 8 * ((222 * (v7 != 0)) ^ (v5 + 363))))();
}

uint64_t sub_10006DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x2B8] = a5;
  v8 = (v6 + 923731809) & 0xC8F0FFE9;
  return (*(v7 + 8 * ((31 * (((((v5 - 1047479182 - ((2 * v5) & 0x832178E4)) ^ (((v6 + 650109194) & 0xD9401EEC) + 1429592611)) + (v8 ^ 0xAACA12B1)) ^ (((v5 - 1047479182 - ((2 * v5) & 0x832178E4)) ^ 0xC2C103FC) + 1027537924) ^ (((v5 - 1047479182 - ((2 * v5) & 0x832178E4)) ^ 0x56645D01) - 1449417985)) != ((v8 - 1468064963) & 0x5780DD6E) + ((v8 - 1464) ^ 0x3E6F312A))) ^ v8)))(3486689787);
}

uint64_t sub_10006DC80@<X0>(int a1@<W0>, int a2@<W2>, unsigned __int8 *a3@<X8>)
{
  v13 = (v12 - 1699226974) < 0xD9271E30;
  v14 = ((a2 - v8 - 82) ^ 0xBDDE657E) + v5 + ((*a3 ^ 0xEFCF8DB6) - 149500760 + ((2 * *a3) & 0x16C)) * v9;
  v15 = v6 - v4 + v3 + ((v14 % 0x101 + v14) ^ a1);
  v16 = v15 ^ v4;
  v17 = v15 ^ v3;
  v18 = v15 + a1;
  HIDWORD(v19) = v15;
  LODWORD(v19) = v15;
  v20 = (((v19 >> 29) - (v18 + v17)) ^ v16) + v7;
  v21 = v20 ^ v18;
  v22 = v17 - v20;
  v23 = v20 + v16;
  LODWORD(v19) = __ROR4__(__ROR4__(((4 * v20 - v21 + (v20 >> 30)) ^ v22) + v23, 10) ^ 0x14B8DB5E, 22);
  v24 = (v19 ^ 0x6D896E64) + v23;
  v25 = v19 ^ 0x6D896E64 ^ v21;
  v26 = v19 ^ 0x6D896E64 ^ v22;
  v27 = v25 + 16 * (v19 ^ 0x6D896E64) + ((v19 ^ 0x6D896E64) >> 28);
  if ((v12 - 1699226974) >= 0xD9271E30)
  {
    v13 = (v12 - 1699226974) > 0xD9271E31;
  }

  return (*(v11 + 8 * ((a2 + 86) ^ (4 * !v13))))((v24 + v10 + (v27 ^ v26)) ^ v25);
}

uint64_t sub_10006DDDC(uint64_t a1, int a2)
{
  v6 = v5 - 653076188 < v2;
  if (v6 == v2 + 1 < v2)
  {
    v6 = v2 + 1 < v5 - 653076188;
  }

  return (*(v4 + 8 * (v6 ^ (a2 + v3))))();
}

uint64_t sub_10006DF44(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x2C8];
  v5 = &STACK[0x710] + STACK[0x2C8];
  STACK[0x5C8] = (v5 + 960);
  v6 = &STACK[0x710] + v4 + 485211;
  v5[v2 % 0x3BC] = -120;
  *(v6 - 484692) = -119;
  return (*(v3 + 8 * a2))(a1, a2, 0, v6, 956, 2300233531, 485211, (a2 - 2433) | 0x420u);
}

uint64_t sub_10006E028(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x408]) = v14;
  v15 = a8 - 38;
  v16 = v12[654];
  v17 = v11 + 821 * (v10 & 0xF) - ((4492644 * (v11 + 821 * (v10 & 0xF))) >> 32) * a5;
  v12[654] = v12[v17];
  v12[v17] = v16;
  v18 = v11 + ((a8 - 38) ^ 0x7B4) * (a1 % 0xF) + 821;
  v19 = v18 - (((v18 * a6) >> 32) >> 9) * a5;
  v20 = v12[519];
  v12[519] = v12[v19];
  v12[v19] = v20;
  v21 = v11 + 821 * (v8 % 0xE) + 1642 - ((4492644 * (v11 + 821 * (v8 % 0xE) + 1642)) >> 32) * a5;
  LOBYTE(v18) = v12[384];
  v12[384] = v12[v21];
  v12[v21] = v18;
  v22 = v11 + 821 * (v9 % 0xD) + 2463 - ((4492644 * (v11 + 821 * (v9 % 0xD) + 2463)) >> 32) * a5;
  v23 = v12[249];
  v12[249] = v12[v22];
  v12[v22] = v23;
  v24 = v12[114];
  v25 = a1 - 926419601 - v10;
  v26 = v11 + 821 * (v10 % 0xC) + 3284 - ((4492644 * (v11 + 821 * (v10 % 0xC) + 3284)) >> 32) * a5;
  v12[114] = v12[v26];
  v12[v26] = v24;
  v27 = 821 * (v25 % 0xB) + 488495 - ((4492644 * (821 * (v25 % 0xB) + 488495)) >> 32) * a5;
  v28 = v12[935];
  v12[935] = v12[v27];
  v12[v27] = v28;
  v29 = v25 ^ v10;
  v30 = v12[800];
  v31 = 821 * ((v8 - 1117078215) % 0xA) + 489316 - ((4492644 * (821 * ((v8 - 1117078215) % 0xA) + 489316)) >> 32) * a5;
  v12[800] = v12[v31];
  v12[v31] = v30;
  v32 = v29 + 2028851623;
  LOBYTE(v31) = v12[665];
  v33 = 821 * ((v9 + 190658614) % 9) + 490137 - ((4492644 * (821 * ((v9 + 190658614) % 9) + 490137)) >> 32) * a5;
  v34 = (v8 - 1117078215) ^ 0x3A1FC8E;
  v12[665] = v12[v33];
  v12[v33] = v31;
  v35 = v25 ^ 0x6A010844;
  v36 = (v25 ^ 0x6A010844) + 1742877332;
  LOBYTE(v31) = v12[530];
  v37 = 821 * ((v29 + 2028851623) & 7) + 490958 - ((4492644 * (821 * ((v29 + 2028851623) & 7u) + 490958)) >> 32) * a5;
  v38 = v8 + 1339696072 + v9 - v29;
  v39 = (v29 + 2028851623 + v34) % 6u;
  v12[530] = v12[v37];
  v12[v37] = v31;
  LOBYTE(v31) = v12[395];
  v40 = 821 * (v36 % 7) + 491779 - ((4492644 * (821 * (v36 % 7) + 491779)) >> 32) * a5;
  v12[395] = v12[v40];
  v35 -= 1152708789;
  v12[v40] = v31;
  v41 = 821 * v39 + 492600 - ((4492644 * (821 * v39 + 492600)) >> 32) * a5;
  LOBYTE(v40) = v12[260];
  v12[260] = v12[v41];
  v12[v41] = v40;
  v42 = v36 + v32;
  LOBYTE(v32) = (v36 + v32) ^ v35;
  v43 = 821 * (v38 % 5) + 493421 - ((4492644 * (821 * (v38 % 5) + 493421)) >> 32) * a5;
  v44 = v34 - v36;
  LOBYTE(v36) = v12[125];
  v45 = v38 - v42;
  v12[125] = v12[v43];
  v12[v43] = v36;
  v46 = 821 * (v32 & 3) + 494242 - ((4492644 * (821 * (v32 & 3u) + 494242)) >> 32) * a5;
  v47 = v45 ^ v44;
  LOBYTE(v22) = v12[946];
  v12[946] = v12[v46];
  v12[v46] = v22;
  v48 = 821 * ((v47 ^ v35) % 3) + 495063 - ((4492644 * (821 * ((v47 ^ v35) % 3) + 495063)) >> 32) * a5;
  LOBYTE(v32) = v12[811];
  v12[811] = v12[v48];
  v12[v48] = v32;
  v49 = v12[676];
  v50 = (v47 & 1) == 0;
  v51 = 676;
  if (!v50)
  {
    v51 = 541;
  }

  v12[676] = v12[v51];
  v12[v51] = v49;
  v52 = v12[((v15 + 1933) ^ 0x76828u) % 0x3BC];
  v12[(821 * (((v52 ^ 0x9DFC8DA) - 165660890) ^ ((v52 ^ 0xB5B5B519) + 1246382823) ^ ((v52 ^ 0xBC6A7D4B) + 1133871797)) + 666652) % 0x3BC] = -120;
  return (*(v13 + 8 * (v15 | 0x26)))();
}

uint64_t sub_10006E518(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v12 + a8 + (v8 ^ 0xF3B) * v9 - ((((a8 + (v8 ^ 0xF3Bu) * v9) * v10) >> 32) >> 9) * a1) = v9 - ((2 * v9) & 0x10) - 120;
  v13 = ((2 * (v9 + 1904590808)) & 0x52) + ((v9 + 1904590808) ^ 0x8E7A4029) < 0x10;
  return (*(v11 + 8 * (((8 * v13) | (16 * v13)) ^ v8)))();
}

uint64_t sub_10006E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = a8 + 821 * (v10 & 0xF) - 956 * ((4492644 * (a8 + 821 * (v10 & 0xF))) >> 32);
  v17 = v13[654];
  v18 = v11 % 0xF + 591;
  v13[654] = v13[v16];
  v13[v16] = v17;
  v19 = v13[519];
  v13[519] = v13[(((1073741232 - v11 % 0xF) & 0x324019A6 | v18 & 0x206) - 843061361) * v18 % 0x3BC];
  v13[(821 * v18 - 956 * ((4492644 * (821 * v18)) >> 32))] = v19;
  v20 = a8 + 821 * (v8 % 0xE) + 1642 - 956 * ((4492644 * (a8 + 821 * (v8 % 0xE) + 1642)) >> 32);
  v21 = v13[384];
  v13[384] = v13[v20];
  v13[v20] = v21;
  v22 = v13[249];
  v23 = a8 + 821 * (v9 % 0xD) + 2463 - 956 * ((4492644 * (a8 + 821 * (v9 % 0xD) + 2463)) >> 32);
  v13[249] = v13[v23];
  v13[v23] = v22;
  LOBYTE(v18) = v13[114];
  v24 = a8 + 821 * (v10 % 0xC) + 3284 - 956 * ((4492644 * (a8 + 821 * (v10 % 0xC) + 3284)) >> 32);
  v13[114] = v13[v24];
  v25 = v11 - v10 - 926419601;
  v13[v24] = v18;
  LOBYTE(v24) = v13[935];
  v26 = 821 * (v25 % 0xB) + 488495 - 956 * ((4492644 * (821 * (v25 % 0xB) + 488495)) >> 32);
  v13[935] = v13[v26];
  v13[v26] = v24;
  v27 = 821 * ((v8 - 1117078215) % 0xA) + 489316 - 956 * ((4492644 * (821 * ((v8 - 1117078215) % 0xA) + 489316)) >> 32);
  LOBYTE(v26) = v13[800];
  v28 = v25 ^ v10;
  v13[800] = v13[v27];
  v13[v27] = v26;
  v29 = 821 * ((v9 + v15) % 9) + 490137 - 956 * ((4492644 * (821 * ((v9 + v15) % 9) + 490137)) >> 32);
  LOBYTE(v26) = v13[665];
  v13[665] = v13[v29];
  v13[v29] = v26;
  v30 = 821 * ((v28 + 2028851623) & 7) + 490958 - 956 * ((4492644 * (821 * ((v28 + 2028851623) & 7u) + 490958)) >> 32);
  LOBYTE(v26) = v13[530];
  v31 = (v8 - 1117078215) ^ 0x3A1FC8E;
  v32 = v8 + 1339696072 + v9 - (v25 ^ v10);
  v33 = v25 ^ 0x6A010844;
  v34 = (v25 ^ v10) + 2028851623 + v31;
  v13[530] = v13[v30];
  v13[v30] = v26;
  v35 = (v25 ^ 0x6A010844) + 1742877332;
  v36 = 821 * (v35 % 7) + 491779 - 956 * ((4492644 * (821 * (v35 % 7) + 491779)) >> 32);
  v37 = v13[395];
  v13[395] = v13[v36];
  v13[v36] = v37;
  v38 = v28 + 2028851623 + v35;
  v39 = 821 * (v34 % 6) + 492600 - 956 * ((4492644 * (821 * (v34 % 6) + 492600)) >> 32);
  v40 = v34 - v38;
  LOBYTE(v36) = v13[260];
  v41 = v32 % 5;
  v33 -= 1152708789;
  v13[260] = v13[v39];
  v42 = v32 - v38;
  v13[v39] = v36;
  v43 = 821 * v41 + 493421 - 956 * ((4492644 * (821 * v41 + 493421)) >> 32);
  LOBYTE(v39) = v13[125];
  v13[125] = v13[v43];
  v13[v43] = v39;
  v44 = (v38 ^ v33) & 3;
  v45 = v40 ^ v42;
  v46 = (((v44 + 602) & 5 ^ 0x125) + ((v44 + 602) & 0x215)) * (v44 + 602);
  LOBYTE(v40) = v13[946];
  v13[946] = v13[(v46 - 956 * ((4492644 * v46) >> 32))];
  v47 = 821 * ((v45 ^ v33) % 3);
  v13[(821 * v44 + 494242 - 956 * ((4492644 * (821 * v44 + 494242)) >> 32))] = v40;
  LOBYTE(v44) = v13[811];
  v13[811] = v13[(v47 + 495063) % (((552 - v47) | (v47 + 495063)) & 0x3BC)];
  v13[(v47 + 495063 - 956 * ((4492644 * (v47 + 495063)) >> 32))] = v44;
  v48 = (v45 & 1) == 0;
  v49 = 676;
  if (!v48)
  {
    v49 = 541;
  }

  v50 = v13[676];
  v13[676] = v13[v49];
  v13[v49] = v50;
  v51 = 879 * (v13[516] ^ ((16 * (v13[516] & 0xF)) | 9) ^ 0x63) + 247878;
  v52 = 821 * (*(*(&off_1002A2080 + (v12 ^ 0xC2F)) + (v51 - 928 * ((4628198 * v51) >> 32))) ^ 0x6B) + 484390;
  v13[549] = v13[(v52 - 956 * ((4492644 * v52) >> 32))];
  return (*(v14 + 8 * (v12 ^ 0x708)))();
}

uint64_t sub_10006EB04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v14 = (*(v12 + (v10 + (a4 & 0xF) * (v9 - 2462)) % 0x3BC) ^ 0xD3 ^ (16 * (*(v12 + (v10 + 821 * (a4 >> 4)) % 0x3BC) & 0xF))) * a6;
  v15 = v13 + 821 * ((*(v8 + (v14 - ((v14 * a7) >> 32) * a8)) >> 3) & 0xF ^ 5);
  *(v12 + (821 * a4 + 215102) % 0x3BC) = (16 * *(v12 + (v15 - 956 * ((4492644 * v15) >> 32)))) | 8;
  return (*(v11 + 8 * ((49 * (2 * (a4 & 1) + (a4 ^ 1) > 0xFF)) ^ v9)))();
}

uint64_t sub_10006EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v15 = v11 + (v10 ^ 0xB67) + (v6 & 0xF) * v9 - 1925;
  v16 = *(v13 + v15 - (((v15 * v7) >> 32) >> 9) * v8) ^ (16 * *(v13 + v11 + (v6 >> 4) * v9 - ((((v11 + (v6 >> 4) * v9) * v7) >> 32) >> 9) * v8));
  v17 = ((v16 ^ 0x2E943308) - 781464402) ^ ((v16 ^ 0x661B8719) - 1713080131) ^ ((v16 ^ 0x488FB419) - 1217377347);
  v18 = v14 + (*(v5 + (879 * ((((v17 + 82 - (v16 ^ 0xD2)) ^ 0xFFFFFFFC) + v17 + 82) ^ 0x96) + 499272) % 0x3A0) ^ 0xF4) * v9;
  *(v13 + v6 * v9 - (((v6 * v9 * v7) >> 32) >> 9) * v8) = *(v13 + (v18 - ((v18 * a5) >> 32) * v8));
  return (*(v12 + 8 * ((722 * (v6 == 255)) ^ v10)))();
}

uint64_t sub_10006ED34(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v10 + (821 * a6 - 1707487271) % 0x3BCu);
  v13 = (((v12 ^ 0x5C392B43) - 1547250577) ^ ((v12 ^ v8 ^ 0x142AEE40) - 338357824) ^ ((v12 ^ 0x4813C55C) - 1209255310)) * a1 + 558165;
  v14 = *(v6 + v13 - (((v13 * a2) >> 32) >> 9) * a3);
  v15 = (((v14 ^ 0x42) - 66) ^ ((v14 ^ 0x5E) - 94) ^ ((v14 ^ 0x72) - 114)) + 63;
  *(v10 + (((v7 - 1669) | 0x686u) - 1707506438 + 821 * a6) % 0x3BC) = v15 ^ (2 * ((v15 ^ 0x60) & (2 * ((v15 ^ 0x60) & (2 * ((v15 ^ 0x60) & (2 * ((v15 ^ 0x60) & (2 * ((v15 ^ 0x60) & (2 * ((v15 ^ 0x60) & (2 * (v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ v15 ^ 0x8F)) ^ 0x62;
  return (*(v11 + 8 * (((a6 + 1 == v9 + 16) | (2 * (a6 + 1 == v9 + 16))) ^ v7)))();
}

uint64_t sub_10006EEAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v14 = *(v5 + (v9 ^ 0x105) * ((a4 ^ 0xA7Au) - 2701) % 0x3A0);
  v15 = v13 + ((v14 ^ (v14 >> 1) & 0x2A) ^ 0x1F) * v6;
  *(v12 + a5 * v6 - 1507416853 - ((((a5 * v6 - 1507416853) * v7) >> 32) >> 9) * v8) = *(v12 + (v15 - ((4492644 * v15) >> 32) * v8));
  return (*(v10 + 8 * ((5659 * (a5 + 1 == v11 + 16)) ^ a4)))();
}

uint64_t sub_10006EF60()
{
  STACK[0x5D8] = v3;
  v4 = v1 ^ 0x321u;
  v5 = *(v2 + 8 * (((v4 - 4938 + ((v1 - 1713037438) & 0x661ADAED)) * (LODWORD(STACK[0x408]) == v0)) ^ v1));
  LODWORD(STACK[0x488]) = -13853588;
  LODWORD(STACK[0x480]) = 1696345225;
  LODWORD(STACK[0x5D4]) = 946093168;
  return v5(2672990035, v4, 670079603, 2672990035, 3923355354, 3437971854, 3405820223, 3294239241);
}

uint64_t sub_1000745EC(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x4C8]) = v7;
  LODWORD(STACK[0x5D4]) = a4;
  LODWORD(STACK[0x4B8]) = a5;
  LODWORD(STACK[0x4E8]) = a2;
  LODWORD(STACK[0x4C0]) = v6 - 959946756;
  v9 = STACK[0x2C0] >= (v5 ^ 0xFFFFFB5F) + (v5 ^ 0x4E3);
  LODWORD(STACK[0x410]) = 64 - STACK[0x2C0];
  return (*(v8 + 8 * ((103 * v9) ^ v5)))();
}

uint64_t sub_1000746D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 + (821 * v20 + 431025) % 0x3BCu) ^= *(a14 - 0x5F2E04143183B6B9);
  v22 = (821 * v20 + ((a6 + 735253009) & 0xD42CE2BE ^ (v14 + 482))) % 0x3BC;
  v23 = *(v19 + v22);
  v24 = a14 - 0x21B34ED976CE4E91 + (~(2 * (a14 - 0x5F2E04143183B6B9)) | 0x850A958A8A952FABLL) + 3;
  v25 = (((v23 & 8 ^ 0x6E) + 89) ^ ((v23 & 8 ^ 0x3C) + 11) ^ ((v23 & 8 ^ 0x5A) + 109)) + (((v23 & 8 ^ 0xCB) + 86) ^ ((v23 & 8) - 33) ^ ((v23 & 8 ^ 0xED) + 116)) + 34;
  v26 = (v24 & 0xFFFFFFFFFFFFFFF8 ^ 0x3D7AB53ABAB56828) >> ((v25 - ((2 * v25) & 0x70) + 56) ^ 0x38u);
  v27 = (((v24 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0x2800000000000000) + 0x6B1281A48DFB3BB1 + (((v26 ^ 0xBFCA32488734DD6CLL) - 0x1B63176A3B0A7C8ELL) ^ ((v26 ^ 0xE59AB3FA7D7D6E44) - 0x413396D8C143CFA6) ^ ((v26 ^ 0x5A5081B2FA49B328) + 0x1065B6FB988ED36));
  v28 = v27 ^ v15;
  v29 = (__ROR8__(v27 ^ v16, 8) + (v27 ^ v15)) ^ a3;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = v31 + v30;
  v33 = v32 ^ (8 * v31 - ((16 * v31) & 0x4B7BC7E6830B9D30) - 0x5A421C0CBE7A3167) ^ 0x5FA64873EB101538 ^ (v31 >> (((8 * v31) & 0x38 ^ 0x3D) + ((8 * v31) & 0x38)));
  v34 = (v33 + __ROR8__(v32 ^ a1, 8)) ^ a2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8) + v35;
  v37 = __ROR8__(v35, 61);
  *(&v38 + 1) = v36 ^ v37 ^ v17;
  *&v38 = v36 ^ v37;
  v39 = (__ROR8__(v36 ^ v17, 8) + *(&v38 + 1)) ^ a4;
  v40 = __ROR8__(v39, 8);
  *(v19 + v22) = (((__ROR8__(((v39 ^ (v38 >> 61)) + v40) ^ a5, 8) + (((v39 ^ (v38 >> 61)) + v40) ^ a5 ^ __ROR8__(v39 ^ (v38 >> 61), 61))) ^ v21) >> ((8 * ((a14 + 111 + (~(2 * (a14 + 71)) | 0xAB) + 3) & 7)) ^ 0x10)) ^ v23;
  return (*(v18 + 8 * ((7411 * (v20 == 63)) ^ a6)))();
}

uint64_t sub_1000749DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v9 = v7 - 1904474624 < a6;
  if (v9 == a6 + 1 < a6)
  {
    v9 = a6 + 1 < v7 - 1904474624;
  }

  return (*(v8 + 8 * (v9 | (v6 + 438))))();
}

uint64_t sub_100074B7C@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W6>, unsigned __int8 *a4@<X8>)
{
  LODWORD(STACK[0x480]) = a1;
  v14 = ((v4 ^ 0xFD2) - 1795807183) & 0x6B09DB3F;
  LODWORD(STACK[0x488]) = v5 - 959946756;
  v15 = v12 - 323679540 < (v14 ^ v9);
  v16 = ((*a4 ^ 0xF76FDFEF) + ((2 * *a4) & 0xFFDF) - 2118115165) * a3 + 1696345225;
  v17 = ((((v16 + 1932500697) % (v14 - 2606)) ^ 0x7F7D7DBF) + 1726896867 + ((2 * ((v16 + 1932500697) % (v14 - 2606))) & 0x37E) - v16 + 223535976) ^ 0x27F09A73;
  v18 = -1621977261 - (v17 + v7);
  HIDWORD(v19) = v17 + v7;
  LODWORD(v19) = v17 + v7;
  v20 = v11 ^ 0x38643C70 ^ (v17 + v7);
  v21 = (((v19 >> 31) + v11 - (v8 & (2 * (v19 >> 31)))) ^ v20) + v10;
  v22 = v18 - (v17 + 670079603) - 1598088221 + v21;
  v23 = (v22 + v11 - (v8 & (2 * v22))) ^ v20;
  v24 = v21 + v18;
  HIDWORD(v19) = v22;
  LODWORD(v19) = v22;
  v25 = v22 ^ v18;
  v26 = (((v19 >> 30) - v25 + v23) ^ v24) + a2;
  v27 = v26 ^ v24;
  v28 = v26 + v25;
  v29 = v23 - v26;
  v30 = ((__ROR4__(v26, 31) ^ 0xCFF310F ^ v28 ^ (v29 + 218050831 - ((2 * v29) & 0x19FE621E))) + v27) ^ v6;
  LODWORD(STACK[0x5D4]) = v29 - v30;
  if (v15 == v9 + 2278 < v9 + 2277)
  {
    v15 = v9 + 2278 < v12 - 323679540;
  }

  return (*(v13 + 8 * ((102 * !v15) ^ v14)))((v28 - v30), (v14 + 942), v30 ^ v27);
}

uint64_t sub_100074D74(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x410]) = 0;
  LODWORD(STACK[0x3EC]) = 0;
  v11 = STACK[0x4D8];
  LODWORD(STACK[0x5D4]) = a6;
  LODWORD(STACK[0x5C4]) = a6 - 802;
  v12 = (a6 - 802) ^ 0xC0D;
  v13 = v11 + a2 + 1782565026;
  v14 = v7 + 1782565026;
  v15 = a4 + v7 + 1782565026;
  v16 = (v13 ^ v6) + 700620090;
  v17 = (v15 ^ v9) + 700620090;
  v18 = a2 + 1782565026 - v16;
  LODWORD(STACK[0x478]) = v12;
  v13 -= 1003989863;
  v19 = ((a2 + 1782565026) ^ (v12 + 876956421) ^ v8 ^ (v18 + 876956421 - ((2 * v18) & 0x688AA686) + 2110)) + v13;
  v20 = v14 - v17;
  v21 = v16 - v19;
  v15 -= 1003989863;
  v22 = (a5 ^ 0xEAEEE89F ^ v14 ^ (v14 - v17 - 353441633 - ((2 * (v14 - v17)) & 0xD5DDD13E))) + v15;
  v19 ^= 0x4E1ED304u;
  v23 = v13 - v21;
  v24 = v17 - v22;
  v25 = v15 - v24;
  v26 = (v19 - 2009937158) ^ v23;
  v27 = v25 + (v20 ^ 0xB3650EA8);
  v28 = v21 - v19;
  v29 = v22 ^ 0x4E1ED304;
  v30 = v18 ^ 0xB3650EA8;
  v31 = v26 ^ 0x508CE9C5;
  v32 = (v24 - v29) ^ 0x903E3E56 ^ v27;
  v33 = (v23 + v30) ^ v26;
  v34 = v33 ^ 0x757993B4 ^ (v28 - ((2 * v28) & 0x4BEAF4E2) + 636844657);
  v35 = v23 ^ 0x508CE9C5 ^ v34;
  v36 = v35 - v34;
  v37 = v25 ^ (v29 - 2009937158);
  v38 = v37 ^ 0x508CE9C5;
  v39 = ((v37 ^ 0x508CE9C5) - 1874969002 - ((2 * (v37 ^ 0x508CE9C5)) & 0x207C7CAC)) ^ v32;
  v40 = v33 ^ 0xB549F777 ^ (v35 - v34);
  v41 = (v29 + 410061137 + ~((2 * (v29 - 2009937158)) & 0x207C7CAC)) ^ v32;
  v42 = v41 - v39;
  v43 = v40 + v35;
  v44 = v37 ^ 0xB549F777 ^ v27 ^ (v41 - v39);
  v45 = v34 + v31 + v40;
  v46 = (v36 ^ 0xC9591179) + 698254201;
  v47 = v44 + v41;
  v48 = (v42 ^ 0xC9591179) + 698254201;
  v49 = v46 - v43 + (v45 ^ v40);
  v50 = ((v46 + v43) ^ 0x22270B0C) - v49;
  v51 = v48 - v47 + ((v39 + v38 + v44) ^ v44);
  v52 = (v40 - 894585772 + v43 - 2 * v46) ^ 0xB31D8075;
  v53 = v49 ^ (1700172150 - v43);
  v54 = v50 ^ v49;
  v55 = (((v47 + v48) ^ 0x22270B0C) - v51) ^ v51;
  v56 = v51 ^ (1700172150 - v47);
  v57 = v52 ^ (-679402605 - v43);
  v58 = v53 - v57;
  v59 = -679402605 - v47;
  v60 = 1608029112 - v57 + v58;
  v61 = v54 + 2042696398 + v58;
  v62 = (v44 - 894585772 + v47 - 2 * v48) ^ 0xB31D8075;
  v57 -= 1479652187;
  v63 = v62 ^ v59;
  v64 = v56 - (v62 ^ v59);
  v65 = v55 + 2042696398 + v64;
  v66 = (v61 + v52) ^ v57;
  v67 = v61 ^ v57;
  v68 = (v65 + v62) ^ ((v62 ^ v59) - 1479652187);
  v69 = v65 ^ (v63 - 1479652187);
  v70 = 1608029112 - v63 + v64;
  v71 = v66 + v61;
  v72 = v66 + v67;
  v73 = v68 + v65;
  v74 = v68 + v69;
  v75 = v71 ^ v72;
  v76 = v74 ^ v73;
  v77 = v75 + v72;
  v78 = v76 + v74;
  v70 ^= 0x1A6A67ADu;
  v79 = v69 - 1262218981 - v70 + v78;
  v80 = ((2 * (v77 + 1594769674)) & 0x2266C9F4) + ((v77 + 1594769674) ^ 0x113364FA);
  v81 = (v78 ^ v70) - v78;
  v82 = 921648477 - v77 + (v77 ^ v60 ^ 0x1A6A67AD);
  v83 = (-1262218981 - (v60 ^ 0x1A6A67AD) + v67 + v77) ^ (v77 - 1740250866);
  v84 = (v81 + 921648477) ^ (v76 + 1099921892);
  v85 = v79 ^ (v78 - 1740250866);
  v86 = v83 + (v82 ^ (v75 + 1099921892));
  v87 = v83 - (v80 + 959946756);
  v88 = v82 - (v80 + 959946756) + v87;
  v89 = v85 - (v78 - 1451670008);
  v90 = v87 ^ (v80 + 959946756);
  v91 = v80 - v90 - 1509502695;
  v92 = v81 - v78 + v89;
  v93 = v89 ^ (v78 - 1451670008);
  v94 = v86 + v88 + v91;
  v95 = v94 ^ (v90 + v88);
  v96 = v95 ^ v91;
  v97 = v78 - v93 + 373847837;
  v98 = v90 - 705034079 - v95;
  v92 -= 1921648811;
  v99 = v94 - v96;
  v100 = v96 - v99;
  v101 = v92 + v85 + v84 + v97;
  v102 = v101 ^ (v92 + v93);
  v103 = v102 ^ v97;
  v104 = v101 - v103;
  v105 = v103 - v104;
  v106 = v93 - v102 - 705034079;
  v107 = (v104 ^ 0x64E5A65) - v105;
  v108 = v105 - v107;
  v109 = (v99 ^ 0x64E5A65) - v100;
  v110 = v100 + 1772389246 - v109;
  if (((v108 + 1772389246) & 0x4000000) != 0)
  {
    v111 = 1705280382;
  }

  else
  {
    v111 = 1839498110;
  }

  v112 = v98 ^ v95;
  v113 = (v112 ^ 0xED3BF24B) - v109;
  v114 = v106 ^ v102;
  v115 = (v98 ^ 0xF91A3C45) - 1051291052 - v110 - v113;
  LODWORD(v116) = __ROR4__((v111 + v108) ^ 0xB11FADB9, 8) ^ 0xB9B51FAD;
  HIDWORD(v116) = v116;
  v117 = (v114 ^ 0xED3BF24B) - v107;
  v118 = (v106 ^ 0xF91A3C45) - 1051291052 - v117 - (v116 >> 24);
  v119 = (v115 ^ v112 ^ 0xED3BF24B) + (v115 ^ v110);
  v120 = (v118 ^ v114 ^ 0xED3BF24B) + (v118 ^ (v108 + 1772389246));
  v121 = v113 + 1903312324 - (v115 ^ 0xB813A65C) + v119;
  v122 = v117 + 1903312324 - (v118 ^ 0xB813A65C) + v120;
  v123 = v121 ^ ((v115 ^ 0xB813A65C) + 254371427);
  v124 = v115 ^ 0x7842F78A ^ v119;
  v125 = (v118 ^ 0xB813A65C) + 254371427;
  v126 = v118 ^ 0x7842F78A ^ v120;
  v127 = v122 ^ v125;
  v128 = (v114 ^ 0x5F87E3F ^ v120) - 614582330 - 2 * (v122 ^ v125);
  v129 = v122 + 2 * v126;
  v10[384] = v129 - 69 - ((2 * (v129 - 69)) & 0x10) - 120;
  v130 = (v112 ^ 0x5F87E3F ^ v119) - 614582330 - 2 * v123;
  v127 -= 1200181632;
  v131 = v124 + 1196631839 + v130;
  v132 = v126 + 1196631839 + v128;
  v10[825] = (v123 - ((2 * v123) & 0x3E) - 97) ^ 0xC9;
  v10[654] = v127 - ((2 * v127) & 0x10) - 120;
  v10[690] = v131 ^ 0xD6;
  v133 = v121 + 2 * v124;
  v10[555] = (v133 - 69) ^ 0xD6;
  v10[519] = v132 - ((2 * v132) & 0x10) - 120;
  v134 = v133 + 1961071955 + v130;
  v135 = v132 - v127;
  v10[420] = v130 ^ 0xD6;
  v10[933573909 * ((v123 + 2106830026) & 0x7F1A1D55 ^ 0x7F1A1D55) + 933573909 * ((v123 + 2106830026) & 0x7F1A1D55)] = v128 - ((2 * v128) & 0x10) - 120;
  LOBYTE(v128) = v128 + v129 - 69;
  v136 = v133 - 2062070169 + v134;
  LOBYTE(v120) = v128 + v127;
  v137 = v136 ^ (v123 + 864933864 + v134);
  v138 = v133 - v123 + v131;
  LOBYTE(v114) = v128 + v129 - 1;
  LOBYTE(v128) = v114 ^ (v128 + v127);
  v10[114] = (v114 ^ v120) - ((2 * (v114 ^ v120)) & 0x10) - 120;
  v133 -= 2017967932;
  LOWORD(v131) = v138 - 11805;
  v10[285] = (v137 - ((2 * v137) & 0xD0) - 24) ^ 0x3E;
  v139 = v135 + v129 + 167781631;
  LOBYTE(v135) = v137 - 69;
  v140 = v137 + v133;
  v10[935] = v139 - ((2 * v139) & 0x10) - 120;
  v10[150] = (v138 + 127) ^ 0xD6;
  v10[15] = v133 ^ 0xD6;
  v141 = (v137 + 318627259) ^ 0x25369513;
  v142 = v140 - 125225428;
  v138 -= 649786905;
  v10[(v139 & 0x3E9C824E) - 1050443566 + (v139 & 0x3E9C824E ^ 0x3E9C824E)] = v129 - ((2 * v129 + 8) & 0x10) + 76;
  v10[836] = (v136 - ((2 * v136) & 0x2E) + 23) ^ 0xC1;
  LOBYTE(v127) = v128 - 69;
  v143 = v131 & 0x212;
  LOBYTE(v131) = v139 + 104;
  v144 = v138 + v136 - v141;
  v10[665] = v114 - ((2 * v114) & 0x10) - 120;
  v10[701] = (v135 + (~(2 * v135) | 0x39) - 28) ^ 0x26;
  LOBYTE(v139) = v114 + v139 - ((((v128 - 69) ^ 0x64) + 51) ^ (((v128 - 69) ^ 0xFB) - 82) ^ (((v128 - 69) ^ 0x8C) - 37)) - 82;
  v10[(v143 ^ 0x212) + v143] = (v128 - 69) ^ 0x9B;
  v145 = v144 ^ v138 ^ 0xCCB2C33E ^ (v140 - 2 * ((v140 - 125225428) & 0x4CB2C33F ^ v140 & 1) - 985925270);
  v10[566] = v144 ^ v138 ^ 0xD6;
  v10[431] = (v142 - ((2 * v142) & 0xD4) - 22) ^ 0x3C;
  LOBYTE(v128) = v129 - 16 + v128;
  v146 = v142 ^ v138;
  v10[125] = v139 - ((2 * v139) & 0x10) - 120;
  v10[395] = v139 ^ v131 ^ 0x88;
  LOBYTE(v138) = v139 ^ v131 ^ v128;
  v147 = v145 ^ v141;
  LOBYTE(v141) = v131 ^ v128;
  LOBYTE(v127) = ((v138 ^ v127 ^ 0x3B) - 76) ^ ((v138 ^ v127 ^ 0x30) - 71) ^ ((v138 ^ v127 ^ 0x18) - 111);
  v148 = v142 - v146;
  v10[260] = v128 - ((2 * v128) & 0x10) - 120;
  LOBYTE(v138) = (((v138 ^ 0x7B) + 91) ^ ((v138 ^ 0x90) - 78) ^ ((v138 ^ 0xEB) - 53)) - v127;
  LODWORD(v143) = v142 - v146 + 2040183692;
  LOBYTE(v127) = v127 + 37;
  v10[296] = (v144 - ((2 * v144) & 0xC) - 122) ^ 0x50;
  LOBYTE(v142) = ((v147 - ((2 * v147) & 0xD0) + 104) ^ 0x68) - 30;
  v149 = v142 & 0xD5 ^ 0x8F;
  v150 = v145 - v147;
  v10[161] = v142 ^ (2 * ((v142 ^ 0x5E) & (2 * ((v142 ^ 0x5E) & (2 * ((v142 ^ 0x5E) & (2 * ((v142 ^ 0x5E) & (2 * ((v142 ^ 0x5E) & (2 * (((2 * (v142 & 0x1F)) ^ 0xA) & (v142 ^ 0x1E) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ 3;
  v10[26] = (v145 - v147) ^ 0xD6;
  v10[946] = v127 - ((2 * v127) & 0x10) - 120;
  v151 = v128 - (v131 ^ v128) - 116;
  LOBYTE(v128) = (v143 - ((2 * v143) & 0x46) - 93) ^ 0x75;
  v10[811] = v138 - ((2 * v138 + 20) & 0x10) + 2;
  LODWORD(v143) = v143 ^ 0x4D0AE3B2;
  v10[847] = v128;
  v152 = v143 - v148 + 1727087669 + v147;
  LOBYTE(v148) = ((((v146 - ((2 * v146) & 0x83) - 63) ^ 0x35) - 53) ^ (((v146 - ((2 * v146) & 0x83) - 63) ^ 0xAD) + 83) ^ (((v146 - ((2 * v146) & 0x83) - 63) ^ 0x59) - 89)) - 93;
  v153 = v148 & 0x5F ^ 0x4C;
  LOBYTE(v148) = v148 ^ (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 6) & (2 * ((v148 ^ 6) & (2 * v148) & 0xE ^ v153)) ^ v153)) ^ v153)) ^ v153)) ^ v153)) ^ v153)) ^ 0x89;
  v154 = v127 - v151;
  v10[712] = v148;
  v155 = v150 - v146 - v152;
  LOBYTE(v150) = v155 + 115;
  LOBYTE(v127) = ((v141 ^ 0x64) - 51) ^ ((v141 ^ 0x52) - 5) ^ ((v141 ^ 0x36) - 97);
  v156 = v127 + 64;
  LOBYTE(v127) = ((v127 & 0xC0) - 52) ^ v127 & 0x18;
  v10[541] = v156 ^ (2 * ((v156 ^ 0x40) & (2 * ((v156 ^ 0x40) & (2 * ((v156 ^ 0x40) & (2 * ((v156 ^ 0x40) & (2 * v127) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ 0x50;
  v157 = v155 - 1216979601;
  v10[676] = v151 + (~(2 * v151) | 0xEF) - 119;
  v158 = ((v141 ^ 0x53) + 46) ^ ((v141 ^ 0x12) + 109) ^ ((v141 ^ 0x41) + 64);
  v151 ^= 0xB2u;
  v159 = v146 - v143 - 115;
  LOBYTE(v143) = v143 - 115;
  LOBYTE(v141) = v154 + v151;
  v160 = 1216980624 - v155;
  LOBYTE(v155) = v158 - v151 + 14;
  v161 = v138 - v158 - (v154 + v151) + 108;
  v162 = v151 - 115;
  LOBYTE(v138) = v150 + v159;
  *(STACK[0x5D8] + ((v157 ^ v160) & 0x241)) = v152 ^ 0xD6;
  *(STACK[0x5D8] + 1) = v155 - ((2 * v155) & 0x10) - 120;
  *(STACK[0x5D8] + 271) = v161 - ((2 * v161) & 0x10) - 120;
  *(STACK[0x5D8] + 442) = v150 ^ 0xD6;
  *(STACK[0x5D8] + 406) = v141 - ((2 * v141) & 0x10) - 120;
  *(STACK[0x5D8] + 307) = v143 ^ 0xD6;
  v163 = (v150 + v159) ^ 0x17;
  *(STACK[0x5D8] + 136) = v162 - ((2 * v162) & 0x10) - 120;
  LOBYTE(v160) = v161 + v155;
  *(STACK[0x5D8] + 172) = (v159 - ((2 * v159) & 0x83) + 65) ^ 0x97;
  LOBYTE(v150) = ((v152 + 127) ^ v159) - v163;
  v164 = ((((v141 + 127) ^ v155 ^ 0xC2) - 119) ^ (((v141 + 127) ^ v155 ^ 0x20) + 107) ^ (((v141 + 127) ^ v155 ^ 0xE2) - 87)) - (((v160 ^ 0xF4) + 0x80) ^ ((v160 ^ 0x9D) + 23) ^ ((v160 ^ 0x7E) - 10)) + 82;
  v165 = v150 + v152 + 127;
  LOBYTE(v155) = v152 + v143;
  LOBYTE(v157) = v164 + v141 + 127;
  *(STACK[0x5D8] + 37) = (v165 - ((2 * v165) & 0xA4) + 82) ^ 0x84;
  *(STACK[0x5D8] + 822) = v157 - ((2 * v157) & 0x10) - 120;
  *(STACK[0x5D8] + 858) = (v138 - ((2 * v138) & 0x40) - 96) ^ 0x61;
  *(STACK[0x5D8] + 417) = v164 - ((2 * v164) & 0x10) - 120;
  v166 = v141 + v162 - 2 * ((v160 ^ 0x17) & (v141 + v162)) + (((v160 ^ 0xB6) + 62) ^ ((v160 ^ 0x70) - 4) ^ ((v160 ^ 0xD1) + 91)) + 99;
  *(STACK[0x5D8] + 687) = v160 ^ 0x9F;
  *(STACK[0x5D8] + 723) = v138 ^ (v152 + v143) ^ 0xC1;
  *(STACK[0x5D8] + 552) = v166 + (~(2 * v166) | 0xEF) - 119;
  LOBYTE(v138) = (v165 ^ 0x1C) - (v152 + v143);
  v167 = (v166 ^ v160 ^ 0x17) - 99;
  v152 = -1903572607 - v152;
  v168 = v160 ^ (-127 - v141);
  *(STACK[0x5D8] + 588) = v150 ^ 0xD6;
  LOBYTE(v150) = v163 ^ v152;
  LODWORD(v116) = __ROR4__(v152, 10) ^ 0x39279FC6;
  HIDWORD(v116) = v116;
  v169 = v116 >> 22;
  v170 = (v157 ^ 0x1C) - v167 - 99;
  LOBYTE(v157) = (((v168 ^ 0x31) - 112) ^ ((v168 ^ 0xB8) + 7) ^ ((v168 ^ 0x9E) + 33)) + 35;
  *(STACK[0x5D8] + 453) = v138 ^ 0xD6;
  LOBYTE(v155) = v155 - (v169 ^ 0x7D);
  v171 = v150 + (~(2 * v150) | 0x13) + 119;
  v172 = ((v171 ^ 0xA4) + 92) ^ ((v171 ^ 0x12) - 18) ^ ((v171 ^ 0xC0) + 64);
  v173 = v172 - 77;
  v174 = ((v172 + 51) & 0x90 | 0x45) ^ (v172 - 77) & 0x8A;
  *(STACK[0x5D8] + 147) = v157 - ((2 * v157) & 0x10) - 120;
  *(STACK[0x5D8] + 318) = v173 ^ (2 * ((v173 ^ 0x10) & (2 * ((v173 ^ 0x10) & (2 * ((v173 ^ 0x10) & (2 * ((v173 ^ 0x10) & (2 * ((v173 ^ 0x10) & (2 * ((v173 ^ 0x10) & (2 * v174) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ 0xCC;
  v175 = v167 - ((((-127 - v141) ^ 0x65) + 47) ^ (((-127 - v141) ^ 0xE5) - 81) ^ (((-127 - v141) ^ 0x19) + 83)) + 54;
  *(STACK[0x5D8] + 12) = v175 - ((2 * v175) & 0x10) - 120;
  *(STACK[0x5D8] + 282) = v170 - ((2 * v170) & 0x10) - 120;
  v176 = v150 - v138 - 115;
  LOBYTE(v157) = v157 - v170;
  v177 = v175 - v157;
  *(STACK[0x5D8] + 183) = v155 ^ 0xD6;
  *(STACK[0x5D8] + 833) = (-127 - v141) ^ 0x11;
  LOBYTE(v155) = v155 - v176 - 64;
  v178 = (v175 - v157) ^ (-127 - v141);
  v179 = v155 ^ v169;
  LOBYTE(v150) = v155 ^ v169 ^ 0x7B;
  LOBYTE(v155) = v155 - v150;
  v180 = v176 - v155 + 64;
  LOBYTE(v138) = v155 ^ v138;
  LOBYTE(v143) = v169 ^ 0xAB;
  LOBYTE(v169) = v138 ^ 7;
  *(STACK[0x5D8] + 48) = v143;
  *(STACK[0x5D8] + 293) = v178 ^ 0x17;
  *(STACK[0x5D8] + 869) = v138 ^ 0xD1;
  LOBYTE(v138) = v177 - (v178 ^ 0x9F);
  *(STACK[0x5D8] + 734) = (v180 - ((2 * v180) & 0x4A) - 91) ^ 0x73;
  v181 = v138 ^ v170;
  LOBYTE(v143) = v180 ^ v150;
  *(STACK[0x5D8] + 698) = v138 ^ v170 ^ 0x8F;
  *(STACK[0x5D8] + 428) = v138 - ((2 * v138) & 0x10) - 120;
  *(STACK[0x5D8] + 464) = v179 ^ 0xAD;
  v182 = v157 - v138;
  *(STACK[0x5D8] + 563) = v157 - v138 - ((2 * (v157 - v138)) & 0x10) - 120;
  LOBYTE(v169) = v169 + 74 - (v180 ^ v150);
  *(STACK[0x5D8] + 599) = (v155 + (~(2 * v155) | 0x3B) - 29) ^ 0x34;
  v183 = v180 ^ v155;
  LOBYTE(v157) = (((v157 - v138) ^ v178 ^ 0xF2) + 31) ^ (((v157 - v138) ^ v178 ^ 0xD8) + 53) ^ (((v157 - v138) ^ v178 ^ 0xB5) + 90);
  LOBYTE(v155) = (v169 - 74) ^ v150;
  LOBYTE(v150) = v182 ^ v138;
  v184 = (((v181 ^ 0xC) - 94) ^ ((v181 ^ 0xB2) + 32) ^ ((v181 ^ 0xB9) + 21)) - v157;
  LOBYTE(v155) = v155 - v183;
  v185 = ((((v184 - 55) ^ v178 ^ 0xA0) - 74) ^ (((v184 - 55) ^ v178 ^ 0xD7) - 61) ^ (((v184 - 55) ^ v178 ^ 0xE8) - 2)) - (((v150 ^ 0xFB) - 108) ^ ((v150 ^ 0x3D) + 86) ^ ((v150 ^ 0xC6) - 81));
  v186 = (v169 - 67) & 0x2B ^ 0x2C;
  LOBYTE(v148) = (v169 - 67) ^ 0x52;
  v187 = v185 - 34;
  LOBYTE(v143) = v143 - v155;
  *(STACK[0x5D8] + 329) = (v169 - 67) ^ (2 * (v148 & (2 * (v148 & (2 * (v148 & (2 * (v148 & (2 * (v148 & (2 * (v148 & (2 * v186) ^ v186)) ^ v186)) ^ v186)) ^ v186)) ^ v186)) ^ v186)) ^ 0xFD;
  *(STACK[0x5D8] + 709) = v185 - 34 - ((2 * (v185 - 34)) & 0x10) - 120;
  LOBYTE(v148) = v157 - v185;
  v184 -= 93;
  v188 = v169 - 112;
  v189 = v155 ^ (v169 - 112);
  LOBYTE(v169) = v187 ^ v184;
  *(STACK[0x5D8] + 23) = v148 - ((2 * v148 + 28) & 0x10) + 54;
  *(STACK[0x5D8] + 158) = v184 - ((2 * v184) & 0x10) - 120;
  *(STACK[0x5D8] + 59) = v183 ^ 0xD6;
  v190 = v184 - v150;
  LOBYTE(v131) = (v143 - 107) ^ (v188 - v183);
  *(STACK[0x5D8] + 194) = v143 ^ 0xD6;
  *(STACK[0x5D8] + 880) = (v155 - ((2 * v155) & 0x68) + 52) ^ 0xE2;
  *(STACK[0x5D8] + 844) = v150 ^ 0x88;
  *(STACK[0x5D8] + 745) = v131 ^ 0xD6;
  v191 = (v143 - ((2 * (v143 - 107)) & 0xEA) - 118) ^ v183;
  v192 = (v143 - 6) & 0xBD ^ 0xE0;
  LOBYTE(v155) = (v143 - 6) ^ 0x7C;
  v193 = (v148 + 67) ^ v190;
  *(STACK[0x5D8] + 610) = (v143 - 6) ^ (2 * (v155 & (2 * (v155 & (2 * (v155 & (2 * (v155 & (2 * (v155 & (2 * ((v143 - 6) & (2 * (v143 - 6)) & 0x7A ^ v192)) ^ v192)) ^ v192)) ^ v192)) ^ v192)) ^ v192)) ^ 0x6B;
  LOBYTE(v150) = (v148 + 67) ^ v150;
  *(STACK[0x5D8] + 574) = v193 - ((2 * v193) & 0x10) - 120;
  v194 = (v191 ^ 0xF5) - ((2 * (v191 ^ 0xF5)) & 0xA) - 123;
  *(STACK[0x5D8] + 475) = v194 - ((2 * v194) & 0x10) - 120;
  *(STACK[0x5D8] + 439) = v148 - ((2 * v148 + 10) & 0x10) + 45;
  *(STACK[0x5D8] + 304) = v150 ^ 0x53;
  LOBYTE(v139) = ((v150 ^ 0x36) - 82) ^ ((v150 ^ 0xCF) + 85) ^ ((v150 ^ 0x22) - 70);
  *(STACK[0x5D8] + 169) = v169 - v193 + (~(2 * (v169 - v193)) | 0xEF) - 119;
  v195 = ((v150 ^ 0xE2) + 122) ^ ((v150 ^ 0xD5) + 79) ^ ((v150 ^ 0xEC) + 120);
  v196 = v189 - v131 + 35;
  LOBYTE(v150) = (((v131 ^ 0xF) + 53) ^ ((v131 ^ 6) + 62) ^ ((v131 ^ 9) + 51)) + 102;
  LOBYTE(v157) = (v191 ^ 0x2E) + v189 - v131 + (((v131 ^ 0x71) + 75) ^ ((v131 ^ 0xCE) - 10) ^ ((v131 ^ 0xBF) - 123));
  v197 = v143 + (v191 ^ 0x2E) - 9;
  *(STACK[0x5D8] + 340) = (v189 - v131) ^ 0xD6;
  LOBYTE(v143) = v169 + 35 + v195;
  LOBYTE(v131) = (((v131 ^ 0x50) + 104) ^ ((v131 ^ 0x1C) + 44) ^ ((v131 ^ 0x4C) + 124)) - 67;
  v198 = v131 & 0xB3 ^ 0x83;
  LOBYTE(v155) = v157 - 60;
  v199 = v197 + v157 - 60;
  *(STACK[0x5D8] + 205) = v131 ^ (2 * ((v131 ^ 0x2C) & (2 * ((v131 ^ 0x2C) & (2 * ((v131 ^ 0x2C) & (2 * ((v131 ^ 0x2C) & (2 * ((v131 ^ 0x2C) & (2 * (((2 * v131) & 0x5A ^ 0x1E) & v131 ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ 0x65;
  v200 = v199 ^ (v157 - 60);
  LOBYTE(v139) = v148 + v139 + v143;
  *(STACK[0x5D8] + 70) = (v199 + (~(2 * v199) | 0xD3) + 23) ^ 0xC0;
  *(STACK[0x5D8] + 34) = v193 - 94 + (~(2 * (v193 - 94)) | 0xEF) - 119;
  LOBYTE(v148) = v157 - 34;
  *(STACK[0x5D8] + 720) = v143 - 100 - ((2 * (v143 - 100)) & 0x10) - 120;
  LOBYTE(v131) = (v150 ^ v196) - v199;
  *(STACK[0x5D8] + 585) = (v169 - v193 + 35) ^ (v193 - 94) ^ 0x88;
  LOBYTE(v127) = ((v169 - v193 + 35) ^ (v193 - 94)) - v139;
  *(STACK[0x5D8] + 855) = v139 - ((2 * v139) & 0x10) - 120;
  LOBYTE(v157) = ((v139 ^ (v143 - 100) ^ 0x5D) - 107) ^ ((v139 ^ (v143 - 100) ^ 0x12) - 36) ^ ((v139 ^ (v143 - 100) ^ 0x4F) - 121);
  *(STACK[0x5D8] + 891) = v155 ^ 0xD6;
  LOBYTE(v139) = (v150 - v200) ^ v148;
  v201 = v193 - v157 + 108;
  v202 = v143 - 74;
  *(STACK[0x5D8] + 756) = v150 ^ v196 ^ 0xD6;
  *(STACK[0x5D8] + 621) = v139 ^ 0x9F;
  LOBYTE(v150) = v201 ^ (v143 - 74);
  v203 = v200 + (v148 ^ 0x49);
  *(STACK[0x5D8] + 486) = v203 ^ 0xD6;
  v204 = v131 - (v139 ^ 0x49);
  LOBYTE(v155) = v127 - (v150 ^ 0x49);
  LOBYTE(v143) = (v148 - ((2 * v148) & 0xEA) - 11) ^ 0x6A;
  LOBYTE(v148) = (v148 ^ 0x49) - v204;
  *(STACK[0x5D8] + 351) = v143;
  *(STACK[0x5D8] + 180) = v202 ^ 0xC1;
  LOBYTE(v169) = (((v202 ^ 6) - 18) ^ ((v202 ^ 0xCA) + 34) ^ ((v202 ^ 0x85) + 111)) - 109 + v157;
  *(STACK[0x5D8] + 315) = v169 - ((2 * v169) & 0x10) - 120;
  *(STACK[0x5D8] + 450) = v150 ^ 0xC1;
  *(STACK[0x5D8] + 216) = v204 ^ 0xD6;
  *(STACK[0x5D8] + 45) = v155 - ((2 * v155) & 0x10) - 120;
  LOBYTE(v143) = v148 ^ v139 ^ 0x2A;
  v205 = (v202 ^ 0x49) - v155;
  LOBYTE(v169) = v169 - (((v150 ^ 0x5A) - 124) ^ ((v150 ^ 0xDA) + 4) ^ ((v150 ^ 0xC9) + 17)) - (((v150 ^ 0x81) - 85) ^ ((v150 ^ 0xC7) - 19) ^ ((v150 ^ 0x11) + 59)) + 14;
  *(STACK[0x5D8] + 81) = v148 ^ v139 ^ 0xFC;
  v206 = v203 + (v139 ^ 0xB6) + (v139 ^ 0xA8) + 2;
  LOBYTE(v150) = v150 ^ 0x2A ^ v205;
  *(STACK[0x5D8] + 866) = v150 - ((2 * v150) & 0x10) - 120;
  LOBYTE(v139) = ((v131 + 36) & 0xA4 | 0x51) ^ (v131 + 36) & 0xE2;
  LOBYTE(v157) = (v131 + 36) ^ 0x24;
  *(STACK[0x5D8] + 632) = (v131 + 36) ^ (2 * (v157 & (2 * (v157 & (2 * (v157 & (2 * (v157 & (2 * (v157 & (2 * ((v131 + 36) & (2 * v139) ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ v139)) ^ 0x90;
  LOBYTE(v157) = (v127 + 1) & 0x7B ^ 0xDA;
  v207 = (v127 + 1) ^ 0x46;
  *(STACK[0x5D8] + 461) = (v127 + 1) ^ (2 * (v207 & (2 * (v207 & (2 * (v207 & (2 * (v207 & (2 * (v207 & (2 * (((v127 + 1) ^ 6) & (2 * (v127 + 1)) & 0xE ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ 0xF3;
  *(STACK[0x5D8] + 767) = (v148 - ((2 * v148) & 0xB8) + 92) ^ 0xF7;
  *(STACK[0x5D8] + 596) = v205 ^ 0xF5;
  v208 = v206 ^ 0x61;
  LOBYTE(v157) = (v206 - ((2 * v206) & 0xC3) - 31) ^ 0x37;
  v209 = (v206 ^ 0x61) + v131 - 124;
  *(STACK[0x5D8] + 731) = v169 - ((2 * v169) & 0x10) - 120;
  *(STACK[0x5D8] + 902) = v157;
  LOBYTE(v157) = ((v169 ^ 0x23) - 24) ^ ((v169 ^ 0xB9) + 126) ^ ((v169 ^ 0xFB) + 64);
  LOBYTE(v148) = (v148 ^ 0x7D) - (v131 - 124) + v208;
  v210 = v150 - 50;
  LOBYTE(v150) = (((v205 ^ 0xA2) - 63) ^ ((v205 ^ 0xCB) - 86) ^ ((v205 ^ 0x14) + 119)) + 59 + v157 + 15;
  v211 = v148 + v209;
  v212 = v210 ^ (v127 - 124);
  v213 = (v143 - 50) ^ (v131 - 124);
  LOBYTE(v143) = v150 - v127 + 108;
  LOBYTE(v155) = v131 + 120;
  *(STACK[0x5D8] + 56) = v143 - ((2 * v143) & 0x10) - 120;
  LOBYTE(v131) = v127 + v157;
  LOBYTE(v127) = v127 + 120;
  *(STACK[0x5D8] + 326) = v212 ^ 0x88;
  *(STACK[0x5D8] + 497) = v213 ^ 0xD6;
  *(STACK[0x5D8] + 362) = v209 ^ 0xD6;
  *(STACK[0x5D8] + 191) = v131 - 34 - ((2 * (v131 - 34)) & 0x10) - 120;
  LOBYTE(v150) = v150 + v157 + 15;
  *(STACK[0x5D8] + 877) = v127 - ((2 * v127) & 0x10) - 120;
  LOBYTE(v169) = v148 + v209 + v155;
  *(STACK[0x5D8] + 227) = v148 ^ 0xD6;
  LOBYTE(v157) = (((v213 ^ 0x38) + 49) ^ ((v213 ^ 0x53) + 92) ^ ((v213 ^ 0x6B) + 100)) - v169;
  LOBYTE(v127) = v150 + 59 + v127;
  *(STACK[0x5D8] + 92) = v155 ^ 0xD6;
  v214 = (((v212 ^ 0x70) + 102) ^ ((v212 ^ 0x56) + 68) ^ ((v212 ^ 0x26) + 52)) - v127 - 4;
  *(STACK[0x5D8] + 742) = v214 - ((2 * v214) & 0x10) - 120;
  LOBYTE(v155) = v157 + 9;
  v215 = v157 + 65 - ((2 * (v157 + 65)) & 0x1C) + 14;
  v216 = (((v215 ^ 0xF1) + 15) ^ ((v215 ^ 0x44) - 68) ^ ((v215 ^ 0xBB) + 69)) - 23;
  v217 = STACK[0x5D8];
  v218 = v216 ^ (2 * ((v216 ^ 0x6C) & (2 * ((v216 ^ 0x6C) & (2 * ((v216 ^ 0x6C) & (2 * ((v216 ^ 0x6C) & (2 * ((v216 ^ 0x6C) & (2 * ((v216 ^ 0x6C) & (2 * v216) ^ (v216 | 0x36))) ^ (v216 | 0x36))) ^ (v216 | 0x36))) ^ (v216 | 0x36))) ^ (v216 | 0x36))) ^ (v216 | 0x36)));
  v217[913] = v218 ^ 0x1F;
  LOBYTE(v157) = v211 ^ 0xF8;
  LOBYTE(v148) = v148 + 57 + v211;
  v219 = v150 + 116 + v143;
  v217[472] = v219 - ((2 * v219) & 0x10) - 120;
  v220 = v157 + (~(((((v213 ^ 0x38) + 49) ^ ((v213 ^ 0x53) + 92) ^ ((v213 ^ 0x6B) + 100)) - v169 + 65) ^ v218) & 4) - 4;
  v217[337] = v127 ^ 0xD0;
  v217[778] = (v220 - ((2 * v220) & 0x50) - 88) ^ 0x7E;
  v217[643] = v148 ^ 0xD6;
  LOBYTE(v144) = v155 ^ v157;
  v217[607] = (v150 + 59) ^ 0x70;
  v221 = v214 ^ (v150 + 59);
  LOBYTE(v150) = v155 ^ v169;
  LOBYTE(v155) = v155 ^ v169 ^ 0x58;
  LOBYTE(v157) = v155 + v148;
  LOBYTE(v131) = v155 + v148 + (v169 ^ 0x58);
  LOBYTE(v148) = (((v221 ^ 0xA6) + 76) ^ ((v221 ^ 0xAD) + 65) ^ ((v221 ^ 0xF3) + 31)) + 88;
  v217[508] = (v169 - ((2 * v169) & 0x90) - 56) ^ 0x46;
  LOBYTE(v169) = (v214 ^ v127 ^ 0x58) + v219;
  v222 = (v155 + 0x80 - 2 * (v155 & 0x83 ^ v150 & 3)) ^ v131 ^ v157 ^ 0x80;
  v217[67] = v148 - ((2 * v148) & 0x10) - 120;
  v217[373] = v222 ^ 0xD6;
  v223 = LODWORD(STACK[0x410]) - 1137618455;
  v224 = LODWORD(STACK[0x408]) + 2109869595;
  v225 = v223 < 0xBC3151A9;
  v226 = v223 > v224;
  LOBYTE(v223) = (((v144 - ((2 * v144) & 0xAC) + 86) ^ 0x29) - 41) ^ (((v144 - ((2 * v144) & 0xAC) + 86) ^ 0xA4) + 92) ^ (((v144 - ((2 * v144) & 0xAC) + 86) ^ 0xDB) + 37);
  LOBYTE(v152) = (-25 - v223) & 0xAC | 0x13;
  LOBYTE(v223) = v223 + 24;
  LOBYTE(v146) = v152 ^ v223 & 0x36;
  v217[202] = (v169 + (v127 ^ 0x58)) ^ v169 ^ v214 ^ v127 ^ 0xD0;
  v217[238] = v223 ^ (2 * ((v223 ^ 0x2C) & (2 * ((v223 ^ 0x2C) & (2 * ((v223 ^ 0x2C) & (2 * ((v223 ^ 0x2C) & (2 * ((v223 ^ 0x2C) & (2 * ((v223 ^ 0x2C) & (2 * v152) ^ v146)) ^ v146)) ^ v146)) ^ v146)) ^ v146)) ^ v146)) ^ 0x4C;
  v217[103] = v131 ^ v157 ^ 0xD6;
  v217[753] = (v169 + (v127 ^ 0x58)) ^ 0x81;
  v217[888] = (v169 + (v127 ^ 0x58)) ^ v169 ^ 0x88;
  v217[924] = (((v222 + 74) & 0x57) + ((53 - v222) & 0x57)) ^ v131 ^ 0x88;
  v227 = v226;
  if (v224 < 0xBC3151A9 != v225)
  {
    v228 = v225;
  }

  else
  {
    v228 = v227;
  }

  return (*(STACK[0x5B8] + 8 * ((14 * (v228 ^ 1)) ^ LODWORD(STACK[0x5D4]))))();
}

uint64_t sub_100074D8C()
{
  LODWORD(STACK[0x3EC]) = v3;
  LODWORD(STACK[0x5C4]) = 0;
  LODWORD(STACK[0x5B0]) = 0;
  LODWORD(STACK[0x4D0]) = v0 ^ 0x3DF;
  LODWORD(STACK[0x4E0]) = v1 + 1159528010 + (v0 ^ 0x3DF) - 497;
  STACK[0x478] = &STACK[0x710] + STACK[0x2C8];
  STACK[0x5A8] = 434309;
  STACK[0x5A0] = 435130;
  STACK[0x598] = 436772;
  STACK[0x590] = 437593;
  STACK[0x588] = 438414;
  STACK[0x580] = 439235;
  STACK[0x578] = 440877;
  STACK[0x570] = 441698;
  STACK[0x568] = 442519;
  STACK[0x560] = 443340;
  STACK[0x558] = 486853;
  STACK[0x550] = 487674;
  STACK[0x548] = 489316;
  STACK[0x540] = 490958;
  STACK[0x538] = 491779;
  STACK[0x530] = 493421;
  STACK[0x528] = 494242;
  STACK[0x520] = 495063;
  STACK[0x518] = 495884;
  STACK[0x510] = 435951;
  STACK[0x508] = 488495;
  STACK[0x500] = 440056;
  STACK[0x4F8] = 492600;
  STACK[0x4F0] = 496705;
  v5 = STACK[0x4C0];
  v6 = STACK[0x4B8];
  v7 = STACK[0x4D8];
  v8 = STACK[0x478];
  STACK[0x490] = 490137;
  STACK[0x498] = 486032;
  STACK[0x480] = 485211;
  STACK[0x4A0] = 484390;
  STACK[0x4A8] = 433488;
  STACK[0x4B0] = 432667;
  STACK[0x488] = 431846;
  v10 = LODWORD(STACK[0x4D0]) + 1659;
  LODWORD(STACK[0x4D8]) = v10;
  STACK[0x4B8] = 0;
  v11 = (((v8[555] << 8) & 0x9C00 | ((((v8[690] << 16) ^ 0xFF284630) & ((*(v4 + (v10 ^ 0x69BDDu) % 0x3BC) << 24) ^ 0x5C6E4630) | (v8[690] << 16) & 0x910000) ^ 0xE9E82593) & ((v8[555] << 8) ^ 0xFFFFA9FB)) ^ 0x1405749C) & (v8[420] ^ 0xFFFFFF29) ^ (v8[420] | 0x9283BF3F);
  v12 = STACK[0x5B0];
  v13 = 25 * v12;
  v14 = v11 ^ (v1 - ((2 * v1) & 0xCB207980) - 443532096);
  v15 = STACK[0x5C8];
  *(STACK[0x5C8] + 4 * ((25 * v12 + 1700) % 0x11Au)) = v14 ^ 0xEC991FB8;
  v16 = ((v8[519] << 16) ^ 0xFF7FFFFF) & ((v8[654] << 24) ^ 0xB79699BA) | (v8[519] << 16) & 0x690000;
  v17 = &v8[488495 - 956 * (STACK[0x548] / 0x3BC)];
  v18 = ((-(v16 ^ 0x3F9E99BA) ^ 0x13CE2F96 ^ ((v16 ^ 0x3F9E99BA) + 332279702 - ((2 * (v16 ^ 0x3F9E99BA)) & 0x279C0000)) ^ (((v8[384] << 8) ^ 0x8800) - (((v16 ^ 0x40406604) & ((v8[384] << 8) ^ 0x61D04EA4) | v16 & 0x9E2F0000) ^ 0x7FDEC6A4))) + ((v8[384] << 8) ^ 0x8800)) ^ v8[485211 - 956 * (STACK[0x558] / 0x3BC) + 1642];
  v19 = (v6 - 1021217976 - ((2 * v6) & 0x8642E690)) ^ 0xC32173C0 ^ v18;
  v20 = v11 ^ (v5 - ((2 * v5 + 1919893512) & 0xCB207980) + 516414660);
  *(v15 + 4 * ((25 * v12 + 3525) % 0x11Au)) = v19;
  v21 = (v19 ^ v20) - v20;
  v22 = 488495 - 956 * (STACK[0x508] / 0x3BC);
  v23 = v21 ^ 0x98C4252B ^ ((v19 ^ v2) - v2);
  v24 = STACK[0x598] / 0x3BC;
  v25 = STACK[0x5D4];
  v26 = 423526404 - LODWORD(STACK[0x5D4]) + (v23 ^ ((v18 ^ 0x88) - v6 - 1731975893 - ((2 * ((v18 ^ 0x88) - v6)) & 0x31884A56)));
  v27 = STACK[0x5C4];
  v28 = LODWORD(STACK[0x5C4]) - 282;
  if (v12 < 0xC)
  {
    v28 = STACK[0x5C4];
  }

  *(v15 + 4 * v28) = v26;
  v29 = 435951 - 956 * v24;
  v30 = &v8[431846 - 956 * (STACK[0x5A0] / 0x3BC)];
  *(v15 + 4 * ((v13 + 5325) % 0x11Au)) = v7 - 338252592 + v14;
  v31 = (v5 + 259948635) ^ (v1 - v7);
  v32 = v8[431846 - 956 * (STACK[0x5A8] / 0x3BC) + 2463] << 24;
  v33 = v8[435951 - 956 * (STACK[0x510] / 0x3BC)];
  LODWORD(v30) = ((((((v30[3284] << 16) ^ 0x7A5A6738) & (v32 ^ 0x2DFF6FB8) | v32 & 0x85000000) ^ 0xC3795801) & ((v33 << 8) ^ 0xFFFF69F9) & 0xFFFF3FFF | (v33 >> 6 << 14)) ^ 0x97D6DF89) & (v8[v29 + 821] ^ 0xFFFFFF71) ^ v8[v29 + 821] & 0x4F;
  LODWORD(v29) = v30 ^ (v31 - ((2 * v31) & 0xB4C61CA) - 2052706075);
  *(v15 + 4 * ((v13 + 1725) % 0x11Au)) = v29 ^ 0xC31C0FBB;
  v34 = (v2 - 699998121) ^ (v6 - v25);
  v35 = v8[485211 - 956 * (STACK[0x550] / 0x3BC) + 2463] << 24;
  v36 = ((v8[v22] << 16) ^ 0x959C923) & (v35 ^ 0xF7FFFD63) | v35 & 0xF6000000;
  v37 = (v36 ^ 0x222A369C) & ((v17[821] << 8) ^ 0x2A2ADD9E) | v36 & 0xD5D50000;
  v38 = v29 ^ 0x2F851003;
  v9 = &v8[488495 - 956 * (((0x1DEA6 * 0x448D639D74C0CDA9uLL) >> 64) >> 6)];
  v39 = (v37 ^ 0x2E5E15CC) & (v9[1642] ^ 0xFFFFFF77) ^ v9[1642] & 0xAD;
  STACK[0x4C0] = &v8[440056 - 956 * (STACK[0x560] / 0x3BC)];
  v40 = (v34 - 904517894 - ((2 * v34) & 0x942C4DF4)) ^ 0x4FB36620 ^ v39;
  *(v15 + 4 * ((v13 + 3550) % 0x11Au)) = v40;
  v41 = 440056 - 956 * (STACK[0x500] / 0x3BC);
  v42 = v6;
  v43 = LODWORD(STACK[0x4E8]) ^ 0x7204DBD7;
  v44 = v43 + v7;
  v45 = v43 + v1;
  v46 = LODWORD(STACK[0x4E0]) + v43;
  v47 = v45 + v43;
  v48 = (v30 ^ v45 ^ 0xAA2320E6 ^ v40) - (v30 ^ v45 ^ 0xAA2320E6);
  v49 = (v39 ^ 0x85A540DA) - v34 - 2051190514 - ((2 * ((v39 ^ 0x85A540DA) - v34)) & 0xB7AA21C);
  v50 = &v8[435951 - 956 * (STACK[0x580] / 0x3BC)];
  v51 = LODWORD(STACK[0x4C8]) ^ 0x7204DBD7;
  v52 = v42 + v51;
  LODWORD(STACK[0x4E8]) = v12 < 0xC;
  v53 = v51 + v25;
  v54 = (v48 ^ 0x85BD510E ^ ((v40 ^ v52) - v52) ^ v49) - (v51 + v25) - 720909199;
  v55 = v12;
  if (v12 >= 0xB)
  {
    v56 = -257;
  }

  else
  {
    v56 = 25;
  }

  v57 = &v8[435951 - 956 * (STACK[0x588] / 0x3BC)];
  *(v15 + 4 * (v56 + v27)) = v54;
  v58 = v46 - 1006621636;
  v59 = v44 + 806183011 + v38;
  v60 = &v8[435951 - 956 * (STACK[0x590] / 0x3BC)];
  v61 = v52 + v51;
  v62 = v31 - v47;
  v63 = v47 ^ 0xE1EDE87C;
  *(v15 + 4 * ((v13 + 5350) % 0x11Au)) = v59;
  v64 = (v47 ^ 0xE1EDE87C) + 99000818;
  v65 = (v44 + 1144435603 + (v47 ^ 0xE1EDE87C)) ^ v64;
  LODWORD(v57) = v57[2463];
  v66 = (((v60[1642] ^ 4) << 24) ^ 0x99EFE2B2) & ((v57 << 16) ^ 0xFF39E2B2);
  v67 = v8[v41];
  v68 = (((v66 & 0xFFEFFFFF | (((v57 >> 4) & 1) << 20) | 0x1D4C) & ((v50[3284] << 8) ^ 0x485F636C) | v66 & 0xB7A00082) ^ 0xC1370B05) & (v67 ^ 0xFFFFFF77);
  v69 = &v8[488495 - 956 * (STACK[0x538] / 0x3BC)];
  LODWORD(v57) = v67 & 0x14 ^ (v65 - ((2 * v65) & 0xEBE955C4) + 1978968802);
  v70 = &v8[488495 - 956 * (STACK[0x540] / 0x3BC)];
  LODWORD(v60) = v34 - v61;
  v71 = v64 ^ v58;
  v72 = v61 ^ 0xE1EDE87C;
  v73 = v57 ^ v68;
  *(v15 + 4 * ((v13 + 1750) % 0x11Au)) = v73 ^ 0x13A50BEF;
  v74 = (v72 + 99000818) ^ (v53 + 1144435603 + v72);
  v75 = (v69[3284] ^ 0x88u) << (((v71 + 10) & 0x10 ^ 0x10) + ((v71 + 10) & 0x10u));
  v76 = v75 - ((2 * v75) & 0xBE0026) + 1381983251;
  v77 = v60 + 1496657825;
  v78 = ((v61 ^ 0xE1EDE87C) + 99000818) ^ (v52 + 152906374);
  v79 = v62 + 1496657825;
  v80 = (v74 - ((2 * v74) & 0x77717E12) + 1001963273) ^ ((v70[2463] ^ 0xF5) << 24) ^ (v8[492600 - 956 * (STACK[0x4F8] / 0x3BC)] << 8) ^ v8[492600 - 956 * (STACK[0x530] / 0x3BC) + 821] ^ v76 ^ 0x14E75392;
  LODWORD(v69) = v73 ^ 0xFF3C1457;
  v81 = ((v73 ^ 0xFF3C1457 ^ v71 ^ v79 ^ v80) - (v73 ^ 0xFF3C1457 ^ v71 ^ v79)) ^ ((v80 ^ v78) - v78) ^ 0xA75F7EA4 ^ ((v80 ^ v77) - v77 - 1486913884 - ((2 * ((v80 ^ v77) - v77)) & 0x4EBEFD48));
  v82 = &v8[440056 - 956 * (STACK[0x568] / 0x3BC)];
  *(v15 + 4 * ((v13 + 3575) % 0x11Au)) = v80;
  v83 = v65 + 423526404 + v69;
  if (v55 >= 0xA)
  {
    v84 = -232;
  }

  else
  {
    v84 = 50;
  }

  v85 = &v8[440056 - 956 * (STACK[0x570] / 0x3BC)];
  *(v15 + 4 * (v84 + v27)) = v83;
  v86 = &v8[440056 - 956 * (STACK[0x578] / 0x3BC)];
  *(v15 + 4 * ((v13 + 5375) % 0x11Au)) = -338252592 - v74 + v81;
  v87 = *(STACK[0x4C0] + 3284);
  v88 = (((v82[2463] << 8) & 0x1B00 | (((((v86[821] ^ 0x26) << 24) ^ 0x6D7C2C8D) & ((v85[1642] << 16) ^ 0xFFAAECCD) | (v85[1642] << 16) & 0xFF83FFFF) ^ 0xE753C801) & ((v82[2463] << 8) ^ 0xFFFF3BCD)) ^ 0x945FDD21) & (v87 ^ 0xFFFFFF77);
  v89 = v87 & 0x52;
  v90 = 496705 - 956 * (STACK[0x4F0] / 0x3BC);
  v91 = 492600 - 956 * (STACK[0x518] / 0x3BC);
  v92 = v89 ^ (v63 + 1020316038 + (~(2 * (v63 + 812603657)) | 0xE73D1F07)) ^ v88;
  *(v15 + 4 * ((v13 + 1775) % 0x11Au)) = v92 ^ 0xE0A4437;
  v93 = v79 ^ (v63 + 392465833);
  LODWORD(v86) = v8[492600 - 956 * (STACK[0x528] / 0x3BC) + 1642] ^ 0xCCCCCCCC;
  v94 = v92 ^ 0xE2935B8F;
  v95 = (v72 - ((2 * (v72 + 812603657)) & 0x173A9888) + 1007461709) ^ v8[v90] & 0xAB ^ 0x3F08B798 ^ (((v8[v91 + 3284] << 8) & 0x2500 | ((((v8[492600 - 956 * (STACK[0x520] / 0x3BC) + 2463] << 16) ^ 0x7ABD124) & ((v86 << 24) ^ 0xB3FFFDAF) & 0x7FFFFFF | ((v86 >> 3) << 27)) ^ 0x3E5B0B81) & ((v8[v91 + 3284] << 8) ^ 0xFFFF73BF)) ^ 0x4DED21F1) & (v8[v90] ^ 0xFFFFFF77);
  *(v15 + 4 * ((v13 + 3600) % 0x11Au)) = v95;
  if (v55 >= 9)
  {
    v96 = -207;
  }

  else
  {
    v96 = 75;
  }

  *(v15 + 4 * (v96 + v27)) = (v65 ^ 0x629B8876) - v93 + 423526404 + v94;
  v97 = v77 ^ (v72 + 392465833);
  v98 = (v78 + v72 + 99000818) ^ v97;
  v99 = (v74 ^ 0x629B8876) - v97;
  v97 += 1716816933;
  v100 = (v93 + 1716816933) ^ 0x13457446 ^ v93 ^ (v71 + v64) ^ (v94 + 323318854 - ((2 * v94) & 0x268AE88C));
  *(v15 + 4 * ((v13 + 5400) % 0x11Au)) = -338252592 - v99 + (((v95 ^ v98) - v98) ^ 0x461A39BA ^ ((v95 ^ v97) - v97 + 1176123834 - ((2 * ((v95 ^ v97) - v97)) & 0x8C347374)) ^ ((v100 ^ v95) - v100));
  LODWORD(STACK[0x5D4]) = v99 - (v98 + v72 + 812603657) - ((v99 - (v98 + v72 + 812603657)) ^ v97) + 1583966936;
  return (*(STACK[0x5B8] + 8 * ((991 * LODWORD(STACK[0x4E8])) ^ LODWORD(STACK[0x4D0]))))();
}

void sub_100075E38(uint64_t a1, int a2)
{
  LODWORD(STACK[0x4E8]) = v3;
  LODWORD(STACK[0x4C8]) = v2;
  LODWORD(STACK[0x4E0]) = a2;
  STACK[0x4F0] += 13136;
  STACK[0x518] += 13136;
  STACK[0x520] += 13136;
  STACK[0x528] += 13136;
  STACK[0x560] += 13136;
  STACK[0x568] += 13136;
  STACK[0x570] += 13136;
  STACK[0x578] += 13136;
  STACK[0x530] += 13136;
  STACK[0x4F8] += 13136;
  STACK[0x538] += 13136;
  STACK[0x540] += 13136;
  STACK[0x500] += 13136;
  STACK[0x580] += 13136;
  STACK[0x588] += 13136;
  STACK[0x590] += 13136;
  STACK[0x548] += 13136;
  STACK[0x508] += 13136;
  STACK[0x550] += 13136;
  STACK[0x598] += 13136;
  STACK[0x510] += 13136;
  STACK[0x5A0] += 13136;
  STACK[0x5A8] += 13136;
  STACK[0x558] += 13136;
  LODWORD(STACK[0x5B0]) += 4;
  LODWORD(STACK[0x5C4]) += 100;
  JUMPOUT(0x100074F04);
}

uint64_t sub_100075FD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v12 = STACK[0x4D8];
  LODWORD(STACK[0x5A8]) = 32;
  LODWORD(STACK[0x5B0]) = 16;
  LODWORD(STACK[0x560]) = 225;
  LODWORD(STACK[0x570]) = 225;
  LODWORD(STACK[0x568]) = 0;
  v13 = STACK[0x5C8];
  v14 = *(STACK[0x5C8] + 132);
  LODWORD(STACK[0x5C4]) = v12 ^ 0xA5;
  HIDWORD(v15) = v14 ^ ((v12 ^ 0xA5) + 809993588);
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 7) ^ (v14 >> 3) ^ __ROR4__(HIDWORD(v15), 18);
  v17 = v16 ^ 0xB24BE9E3;
  v18 = __ROR4__(*(v13 + 664), 7) ^ 0x3AFE53BC ^ (*(v13 + 664) >> 3) ^ __ROR4__(*(v13 + 664), 18);
  v19 = *(v13 + 836);
  v20 = (*(v13 + 304) >> 10) ^ __ROR4__(*(v13 + 304) ^ 0x32F623EB, 17) ^ __ROR4__(*(v13 + 304) ^ 0x32F623EB, 19) ^ 0x7998B2BD;
  v21 = a2 - 1159528010;
  v22 = v21 ^ (a8 - ((2 * (a8 + 959946756)) & 0x889E3E54) + 2105982766) ^ 0xF604F6C9 ^ v16;
  v23 = (v18 ^ (a7 + 989746108 - ((2 * a7) & 0x75FCA778))) - a7;
  v24 = ((v18 ^ (v8 + 989746108 - ((2 * v8) & 0x75FCA778))) - v8) ^ 0xC4D9A924 ^ (v23 - 992368348 - ((2 * v23) & 0x89B35248)) ^ (((v22 + 989746108 - ((2 * v22) & 0x75FCA778)) ^ v18) - v22);
  v25 = (a8 + 959946756) ^ 0xCA5ECD1A;
  v26 = v9 - 182329088 + v11;
  LODWORD(STACK[0x588]) = v26;
  v27 = (v19 >> 10) ^ 0x70698F28 ^ __ROR4__(v19, 17) ^ __ROR4__(v19, 19);
  v28 = STACK[0x5D4];
  v29 = v24 - LODWORD(STACK[0x5D4]);
  v30 = a7 ^ 0xCA5ECD1A;
  v31 = a7 ^ 0xCA5ECD1A ^ v8;
  v32 = v25 + v9;
  v33 = v25 - 22837076;
  v34 = (a7 ^ 0xCA5ECD1A) + LODWORD(STACK[0x5D4]);
  v35 = v31 - v30;
  v36 = (v25 ^ v21) - v25;
  LODWORD(STACK[0x5A0]) = v36;
  v37 = v28 - 182329088 + v10;
  v38 = v30 - 22837076;
  LODWORD(STACK[0x598]) = v31 - v30;
  v39 = v27 ^ (v31 - v30 + 1885966120 - ((2 * (v31 - v30)) & 0xE0D31E50));
  v40 = v27 ^ (v30 - ((2 * (v30 - 22837076)) & 0xE0D31E50) + 1863129044);
  v32 ^= 0x4D525BC2u;
  LODWORD(STACK[0x590]) = v33;
  v41 = v33 ^ 0xA0C1B026 ^ v36 ^ (v20 - 1597919194 - ((2 * v20) & 0x4183604C));
  v34 ^= 0x4D525BC2u;
  v42 = (v39 - v35) ^ 0x43E93EA5 ^ (v40 - v38 + 1139359397 - ((2 * (v40 - v38)) & 0x87D27D4A)) ^ (((v41 + 1885966120 - ((2 * v41) & 0xE0D31E50)) ^ v27) - v41);
  LODWORD(STACK[0x5D4]) = v32 + v33;
  v43 = v13;
  LODWORD(v13) = *v13;
  v44 = (v32 + v33 + v26) ^ (v32 + v33 - 1942079222);
  LODWORD(STACK[0x578]) = v38 ^ v37;
  v45 = v43[LODWORD(STACK[0x570])];
  LODWORD(STACK[0x580]) = v34 + v38;
  v46 = v13 + v32 + v45 + v20 + (v29 ^ 0xFFBFFBFE) + ((2 * v29) & 0xFF7FF7FC);
  v43[118] = v46 - 419331074;
  v47 = v9 + 338252592 + v43[249] + v43[192] + v17 + v42 - v34;
  v48 = v44 + 338252592 + v47;
  LODWORD(v13) = v46 - ((v34 + v38 - 1942079222) ^ (v34 + v38 + v37)) - 842857478;
  v43[85] = v47;
  v49 = *(STACK[0x5D8] + (821 * (HIWORD(v48) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v48) & 0xF) + 554996)) >> 32)));
  v50 = ((*(STACK[0x5D8] + (821 * (v48 >> 28) + 554996 - 956 * ((4492644 * (821 * (v48 >> 28) + 554996)) >> 32))) << 12) ^ (*(STACK[0x5D8] + (821 * (HIBYTE(v48) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v48) & 0xF) + 554996)) >> 32))) << 8) ^ 0xE63E40) & ~v49 | v49 & 0xFFFFFFBF;
  v51 = *(STACK[0x5D8] + (821 * ((v48 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v48 >> 8) & 0xF) + 554996)) >> 32)));
  v52 = ((*(STACK[0x5D8] + (821 * ((v48 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v48 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (v50 << 8) ^ 0xDD68EF) & (v51 ^ 0xFFFF67) ^ (v51 & 0x10 | 0x149200);
  v53 = v52 << 8;
  v54 = (v52 << 8) ^ (*(STACK[0x5D8] + (821 * (v48 >> 12) + 554996 - 956 * ((4492644 * (821 * (v48 >> 12) + 554996)) >> 32))) << 12);
  v55 = *(STACK[0x5D8] + (821 * (v48 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v48 & 0xF) + 554996)) >> 32)));
  v56 = v54 ^ 0xDE7569B8;
  v57 = 821 * ((v13 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v13 >> 20) & 0xF) + 554996)) >> 32);
  v58 = *(STACK[0x5D8] + (821 * (WORD1(v13) & 0xF) + 554996 - 956 * ((4492644 * (821 * (WORD1(v13) & 0xF) + 554996)) >> 32)));
  v59 = (*(STACK[0x5D8] + (821 * (v13 >> 28) + 554996 - 956 * ((4492644 * (821 * (v13 >> 28) + 554996)) >> 32))) << 12) ^ (*(STACK[0x5D8] + (821 * (BYTE3(v13) & 0xF) + 554996 - 956 * ((4492644 * (821 * (BYTE3(v13) & 0xF) + 554996)) >> 32))) << 8) ^ 0x536EB1;
  v60 = (v58 ^ 0xFFFFFF7F) & v59 | v58 & 0x4E;
  v61 = ((v54 ^ 0x2BFA24E2) & (v55 ^ 0xFFFFFF7E) | v55 & 0x1D) ^ (16 * *(STACK[0x5D8] + (821 * (v48 >> 4) + 554996 - 956 * ((4492644 * (821 * (v48 >> 4) + 554996)) >> 32))));
  v62 = 821 * (v13 >> 4) + 554996 - 956 * ((4492644 * (821 * (v13 >> 4) + 554996)) >> 32);
  v63 = 821 * (v13 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v13 & 0xF) + 554996)) >> 32);
  LODWORD(v13) = *(STACK[0x5D8] + (821 * ((v13 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v13 >> 8) & 0xF) + 554996)) >> 32))) ^ (16 * *(STACK[0x5D8] + (821 * (v13 >> 12) + 554996 - 956 * ((4492644 * (821 * (v13 >> 12) + 554996)) >> 32))));
  v64 = *(STACK[0x5D8] + v57);
  v65 = *(STACK[0x5D8] + v63);
  v66 = ((v64 << 20) | (v13 << 8)) ^ (v60 << 16);
  v67 = (v66 ^ 0x936D7840) & (v65 ^ 0xFFFFFF40) | v65 & 0xB0;
  v68 = *(STACK[0x5D8] + v62);
  LOBYTE(v62) = v68 ^ ~(v67 >> 4);
  LOBYTE(v67) = v68 ^ (v67 >> 4);
  v69 = 821 * (((16 * (v65 & 0xF)) ^ 0xA8759B8) & (v55 | 0xDFF7D9F0) ^ (v55 & 7 | 0xA875938));
  v70 = *(STACK[0x5D8] + (v69 + 572237) % 0x3BC) ^ (16 * *(STACK[0x5D8] + 516));
  v71 = 821 * (((v70 ^ 0xB9FF200B) - 687944377) ^ ((v70 ^ 0xA6135666) - 921519316) ^ ((v70 ^ 0x1FEC7E65) + 1894617897));
  v72 = *(STACK[0x5D8] + (v69 + 215102) % 0x3BC);
  v73 = (v71 - 17534513) % 0x3BC;
  v74 = v72 ^ (*(STACK[0x5D8] + (v71 - 17891648) % 0x3BC) >> 4);
  v75 = 821 * (((16 * (v67 & 0xF)) ^ 0x846B391F) & ((v61 >> 4) ^ 0xFF7FBFF9) ^ 0x846B395F);
  v76 = *(STACK[0x5D8] + (v75 + 572237) % 0x3BC) ^ (16 * *(STACK[0x5D8] + (821 * (((v74 ^ 0xEF41ABDC) + 280908913) ^ ((v74 ^ 0xF6183DB) - 258048904) ^ ((v74 ^ 0xE0202887) + 534763308)) + 745468) % 0x3BC));
  v77 = 821 * (((v76 ^ 0xCE44A9AE) - 1793148525) ^ ((v76 ^ 0xEAB961AE) - 1310494317) ^ ((v76 ^ 0x24FDC008) + 2141704245));
  v78 = (v77 + 135862612) % 0x3BC;
  v79 = *(STACK[0x5D8] + (v75 + 215102) % 0x3BC) ^ (*(STACK[0x5D8] + (v77 + 135505477) % 0x3BC) >> 4);
  v80 = v62 | 0xFFFFFF0F;
  v81 = (v61 >> 8) & 0xF;
  v82 = 821 * ((v80 & (v81 ^ 0x5681338) | v67 & 0xC0) ^ 0x56813BB);
  v83 = *(STACK[0x5D8] + (v82 + 572237) % 0x3BCu) ^ (16 * *(STACK[0x5D8] + (821 * (((v79 ^ 0x86BB14C) - 141275620) ^ ((v79 ^ 0x80D78D25) + 2133357171) ^ ((v79 ^ 0x88BC3CE9) + 2000929727)) + 605077) % 0x3BC));
  v84 = (v82 + 215102) % 0x3BCu;
  v85 = *(STACK[0x5D8] + v73) ^ 0x385D3893;
  v86 = 821 * (((v83 ^ 0x3331E3F5) - 534627451) ^ ((v83 ^ 0x934117C6) + 1079168952) ^ ((v83 ^ 0xA070FC3B) + 1935877195));
  v87 = (v86 + 293413899) % 0x3BC;
  v88 = *(STACK[0x5D8] + v84) ^ (*(STACK[0x5D8] + (v86 + 293056764) % 0x3BC) >> 4);
  LODWORD(v13) = 821 * (((v13 & 0xF0 ^ 0xF1F7D7FF) & ((v56 >> 12) ^ 0xF0164778) | v13 & 0x80) ^ 0xF0164778);
  v89 = *(STACK[0x5D8] + (v13 + 572237) % 0x3BCu) ^ (16 * *(STACK[0x5D8] + (821 * (((v88 ^ 0x6EA31D31) - 1856183639) ^ ((v88 ^ 0xE5709340) + 445607130) ^ ((v88 ^ 0x8BD38EF1) + 1949069673)) + 761067) % 0x3BC));
  v90 = 821 * (((v89 ^ 0xEF3E9F4C) + 890162466) ^ ((v89 ^ 0xF85DA23D) + 577630289) ^ ((v89 ^ 0x17633579) - 850172139));
  v91 = *(STACK[0x5D8] + (v13 + 215102) % 0x3BCu);
  LODWORD(v13) = (*(STACK[0x5D8] + (v90 + 1123471919) % 0x3BC) << 12) ^ (*(STACK[0x5D8] + v87) << 8);
  v92 = v91 ^ (*(STACK[0x5D8] + (v90 + 1123114784) % 0x3BC) >> 4);
  v93 = 821 * (((v66 >> 12) & 0xF0 | HIWORD(v56) & 0xF) ^ 0x1F);
  v94 = *(STACK[0x5D8] + (v93 + 572237 - 956 * ((4492644 * (v93 + 572237)) >> 32))) ^ (16 * *(STACK[0x5D8] + (821 * (((v92 ^ 0xB15C2D8) - 185975372) ^ ((v92 ^ 0x9928EFF4) + 1725370528) ^ ((v92 ^ 0x923D2DAC) + 1841484488)) + 588657) % 0x3BC));
  v95 = 821 * (((v94 ^ 0x8CE12CF9) - 436946518) ^ ((v94 ^ 0xCEBAF171) - 1481677790) ^ ((v94 ^ 0x425BD580) + 726548689));
  v96 = (v95 - 38331168) % 0x3BC;
  v97 = *(STACK[0x5D8] + (v93 + 215102 - 956 * ((4492644 * (v93 + 215102)) >> 32))) ^ (*(STACK[0x5D8] + (v95 - 38688303) % 0x3BC) >> 4);
  v98 = 821 * (((HIWORD(v66) & 0x70 ^ 0xB3165F4F) & ((v52 >> 12) ^ 0xB3165F71) | HIWORD(v66) & 0x80) ^ 0xB3165F7A);
  v99 = *(STACK[0x5D8] + (v98 + 572237) % 0x3BC) ^ (16 * *(STACK[0x5D8] + (821 * (((v97 ^ 0x877F0451) + 2021718891) ^ ((v97 ^ 0xC023E7E2) + 1071388890) ^ ((v97 ^ 0x475CE333) - 1197270007)) + 628065) % 0x3BC));
  v100 = 821 * (((v99 ^ 0x687D39E9) + 2008580090) ^ ((v99 ^ 0x6DE7C278) + 1914864745) ^ ((v99 ^ 0x59AF399) + 442480010));
  v101 = (*(STACK[0x5D8] + (v100 + 474301728) % 0x3BCu) << 20) ^ (*(STACK[0x5D8] + v96) << 16);
  v102 = *(STACK[0x5D8] + (v98 + 215102) % 0x3BC) ^ (*(STACK[0x5D8] + (v100 + 473944593) % 0x3BCu) >> 4);
  v103 = (v66 >> 20) & 0xF0;
  v104 = HIWORD(v52) & 0xF;
  v105 = 821 * ((v103 ^ 0x1EB351F) & (v104 ^ 0x1EB35F1) ^ 0x1EB35F6);
  v106 = *(STACK[0x5D8] + (v105 + 572237) % 0x3BCu) ^ (16 * *(STACK[0x5D8] + (821 * (((v102 ^ 0xC065FB54) + 1067058239) ^ ((v102 ^ 0xA340B2FF) + 1556041110) ^ ((v102 ^ 0x6325492B) - 1663388094)) + 589478) % 0x3BC));
  v107 = v105 + 215102;
  v108 = 821 * (((v106 ^ 0x318F217A) - 1859101358) ^ ((v106 ^ 0x208DAA4F) - 2144151963) ^ ((v106 ^ 0x1102833D) - 1312948457));
  v109 = v108 + 2047427545;
  v110 = *(STACK[0x5D8] + v107 % 0x3BC) ^ (*(STACK[0x5D8] + (v108 + 2047070410) % 0x3BCu) >> 4);
  v111 = *(STACK[0x5D8] + (821 * ((((v59 >> 8) & 0xF0 ^ 0x4B6EA3A3) & ((v52 >> 20) ^ 0x4B6EA3F4) | (v52 >> 20) & 0xC) ^ 0x4B6EA3CF) + 572237) % 0x3BC) ^ (16 * *(STACK[0x5D8] + (821 * (((v110 ^ 0x80BDBB8F) + 2135049271) ^ ((v110 ^ 0x83A2DAE0) + 2086479194) ^ ((v110 ^ 0x31F61EF) - 52388265)) + 734795) % 0x3BC));
  v112 = v85 ^ (16 * *(STACK[0x5D8] + v78));
  v113 = v13 ^ v112 ^ 0x51C84861 ^ v101;
  v114 = v113 ^ ((*(STACK[0x5D8] + v109 % 0x3BC) ^ 0xE) << 24) ^ (*(STACK[0x5D8] + (821 * (((v111 ^ 0x8DBFF5A1) - 1731266140) ^ ((v111 ^ 0xB8CE24B2) - 1379981135) ^ ((v111 ^ 0x3571D91B) + 536925466)) + 1016513542) % 0x3BC) << 28);
  v115 = 821 * ((((16 * (v85 & 0xF)) ^ 0x461BD2FD) & (v55 & 0xF ^ 0xCE7FF6F7) | v55 & 2) ^ 0x461BD24D) % 0x3BC;
  v116 = 821 * (v112 & 0xF0 ^ ((v115 & 0xF ^ 0xF) + (v115 & 0xF)) & 0x55555555 ^ ((v115 & 0xF ^ 0xF) + (v115 & 0xF)) & ((v61 >> 4) ^ 3) ^ 0x90);
  v117 = 821 * (((((v13 ^ v112) >> 4) & 0xF0 ^ 0x9C38285) & (v81 ^ 0x7FDB8BFE) | (v61 >> 8) & 0xA) ^ 0x9C38207);
  v118 = *(STACK[0x5D8] + v115) ^ (16 * *(STACK[0x5D8] + (v116 - 956 * ((4492644 * v116) >> 32))));
  LODWORD(v13) = 821 * ((v13 >> 8) & 0xF0 | (v56 >> 12));
  v119 = v13 - 956 * ((4492644 * v13) >> 32);
  LODWORD(v13) = v118 ^ (*(STACK[0x5D8] + v117 % 0x3BC) << 8);
  v120 = *(STACK[0x5D8] + v119);
  LOBYTE(v118) = (v120 & 0x64 ^ 0x64) + (((v120 & 0x64 ^ 0xD6) + 98) ^ ((v120 & 0x64 ^ 0x42) - 10) ^ ((v120 & 0x64 ^ 0x94) + 36)) + 72;
  LOBYTE(v118) = ((123 * v118) & 0xFC) - ((-10 * v118) & 0xB0) + 89;
  LODWORD(v13) = v13 ^ ((v120 ^ 0x88u) << (v118 & 0x84) << (v118 & 0x78 ^ 0x58u));
  v121 = HIWORD(v101) & 0xF0 | (v52 >> 12);
  v122 = v13 ^ (*(STACK[0x5D8] + 821 * ((((v113 >> 12) & 0xF0 ^ 0x65210F59) & (HIWORD(v56) & 0xF ^ 0x6FF91FF2) | HIWORD(v56) & 6) ^ 0x65210F0F) % 0x3BC) << 16) ^ 0x9A139FF7;
  v123 = 821 * (v121 ^ 0xB) - 956 * ((4492644 * (821 * (v121 ^ 0xBu))) >> 32);
  v124 = HIBYTE(v114);
  v125 = 821 * ((((16 * HIBYTE(v114)) | 0x7EB5060F) & (v104 ^ 0x7EB5062A) | (16 * HIBYTE(v114)) & 0xD0) ^ 0x7EB5067D);
  v114 >>= 28;
  HIDWORD(v15) = v114 ^ 6;
  LODWORD(v15) = ~v53;
  v126 = v122 ^ (*(STACK[0x5D8] + v123) << 20);
  v127 = v126 ^ (*(STACK[0x5D8] + v125 % 0x3BC) << 24) ^ 0x1B92F769;
  v128 = v124 & 0x58;
  v129 = STACK[0x5A8];
  v130 = (v114 | 0x56) - (v114 & 0xFFFFFFF9) + (v128 ^ 0x318);
  v131 = STACK[0x5B0];
  v132 = 821 * ((((v127 ^ (*(STACK[0x5D8] + (821 * (v15 >> 28) - 956 * ((4492644 * (821 * (v15 >> 28))) >> 32))) << 28)) >> 28) ^ 8) + ((v130 + (v128 ^ 0xC7) + 890) & 0x2DF));
  v133 = v132 - 956 * ((4492644 * v132) >> 32);
  v134 = 821 * (HIBYTE(v127) & 0xF ^ 1) + 537755;
  v135 = v134 - 956 * ((4492644 * v134) >> 32);
  v136 = 821 * ((v126 >> 20) & 0xF ^ 1) + 537755;
  v137 = 821 * (HIWORD(v122) & 0xF ^ 0xB) + 537755;
  v138 = 821 * ((v13 >> 12) ^ 8) + 537755;
  v139 = *(STACK[0x5D8] + (v137 - 956 * ((4492644 * v137) >> 32)));
  v140 = (v139 ^ 0x9FFF41) & ((*(STACK[0x5D8] + v133) << 12) ^ (*(STACK[0x5D8] + v135) << 8) ^ 0x9B0C49) | v139 & 0xB6;
  v141 = 821 * (v13 >> 4) + 537755 - 956 * ((4492644 * (821 * (v13 >> 4) + 537755)) >> 32);
  v142 = (*(STACK[0x5D8] + (v136 - 956 * ((4492644 * v136) >> 32))) << 12) ^ (v140 << 8) ^ 0x4D212F;
  v143 = *(STACK[0x5D8] + (821 * ((v13 >> 8) & 0xF) + 537755 - 956 * ((4492644 * (821 * ((v13 >> 8) & 0xF) + 537755)) >> 32)));
  LODWORD(v13) = *(STACK[0x5D8] + (821 * (v13 & 0xF ^ 8) + 537755 - 956 * ((4492644 * (821 * (v13 & 0xF ^ 8) + 537755)) >> 32)));
  v144 = STACK[0x4D8];
  v43[126] = (LODWORD(STACK[0x578]) - ((2 * (LODWORD(STACK[0x578]) - 1160618120)) & 0x6CB2D01A) - 248789115) ^ (16 * *(STACK[0x5D8] + v141)) ^ 0x16FB0AAC ^ (((*(STACK[0x5D8] + (v138 - 956 * ((4492644 * v138) >> 32))) << 12) ^ ((v142 & (v143 ^ 0xFFFF37) | v143 & 0xD0) << 8) ^ 0x8D5B5A91) & (v13 ^ 0xFFFFFF71) | v13 & 0x6E);
  v145 = LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x588]);
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x598]) + 296374443 + LODWORD(STACK[0x580]);
  v43[(25 * ((v129 & 0x1A) + (v131 ^ 0x8D))) % 0x11Au] = v48 ^ (v145 - 1160618120);
  LODWORD(STACK[0x5A0]) = (v145 - v44 - 1160618120) ^ 0xC612E4A2;
  return (*(STACK[0x5B8] + 8 * ((127 * (v131 == 63)) ^ (v144 + 1868))))();
}

uint64_t sub_10007785C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = LODWORD(STACK[0x3B4]) + v12;
  LODWORD(STACK[0x560]) = 0;
  v14 = v13 - 1820727841;
  v15 = 821 * (((v14 >> 27) & 8) + ((v14 >> 28) ^ 0x2A4));
  v16 = 821 * (((v13 - 1820727841) >> 24) & 0xF) + 554996;
  v17 = LODWORD(STACK[0x398]) - v10 + 345097956;
  v18 = *(v11 + (821 * (HIWORD(v14) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v14) & 0xF) + 554996)) >> 32)));
  v19 = *(v11 + (821 * (HIWORD(v17) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v17) & 0xF) + 554996)) >> 32)));
  v20 = (*(v11 + (821 * ((v14 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v14 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (((v18 ^ 0x6FFF10) & ((*(v11 + (v15 - 956 * ((4492644 * v15) >> 32))) << 12) ^ (*(v11 + (v16 - 956 * ((4492644 * v16) >> 32))) << 8) ^ 0x619F90) | v18 & 0x6F) << 8) ^ 0x49B9B3;
  v21 = (*(v11 + (821 * ((v17 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v17 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ ((((*(v11 + (821 * (v17 >> 28) + 554996 - 956 * ((4492644 * (821 * (v17 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v17) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v17) & 0xF) + 554996)) >> 32))) << 8) ^ 0x4AFB61) & ~v19 | v19 & 0x9E) << 8) ^ 0xB6247E;
  v22 = *(v11 + (821 * ((v17 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v17 >> 8) & 0xF) + 554996)) >> 32)));
  LODWORD(STACK[0x490]) = 16777078;
  v23 = v21 & (v22 ^ 0xFFFF76) ^ (v22 & 0xFF5FFF81 | 0xA00000);
  LODWORD(STACK[0x5B0]) = v20;
  LODWORD(STACK[0x590]) = a7;
  v24 = 821 * (((v23 >> 8) & 0xF0 | (v20 >> 12)) ^ 0x4A);
  LODWORD(STACK[0x580]) = (v24 + 215102) % (((v23 >> 8) & 0xB0 ^ 0x3BC) + ((v23 >> 8) & 0xB0));
  LODWORD(STACK[0x5A8]) = v14;
  v25 = *(v11 + (821 * ((v14 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v14 >> 8) & 0xF) + 554996)) >> 32)));
  v26 = *(v11 + (821 * (v14 >> 12) + 554996 - 956 * ((4492644 * (821 * (v14 >> 12) + 554996)) >> 32)));
  LODWORD(STACK[0x588]) = v20 & (v25 ^ 0xFFFF3B);
  v27 = ((v20 & (v25 ^ 0xFFFF3B) | v25 & 0x4C) << 8) ^ (v26 << 12);
  v28 = *(v11 + (821 * (v14 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v14 & 0xF) + 554996)) >> 32)));
  LODWORD(STACK[0x4E0]) = a2;
  v29 = ((v27 ^ 0x311AE0D7) & (v28 ^ 0xFFFFFF7F) | v28 & 0x28) ^ (16 * *(v11 + (821 * (v14 >> 4) + 554996 - 956 * ((4492644 * (821 * (v14 >> 4) + 554996)) >> 32))));
  v30 = (v23 << 8) ^ (*(v11 + (821 * (v17 >> 12) + 554996 - 956 * ((4492644 * (821 * (v17 >> 12) + 554996)) >> 32))) << 12);
  v27 ^= 0x62FADEB1u;
  v31 = 821 * (v17 >> 4) + 554996 - 956 * ((4492644 * (821 * (v17 >> 4) + 554996)) >> 32);
  v32 = v30 ^ 0x727F1CE3;
  v33 = *(v11 + (821 * (v17 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v17 & 0xF) + 554996)) >> 32)));
  LODWORD(STACK[0x4B8]) = v8;
  LODWORD(STACK[0x4C0]) = a8;
  LOBYTE(v30) = *(v11 + v31) ^ (((v30 ^ 0xB588F4F0) & (v33 ^ 0xFFFFFF70)) >> 4);
  v34 = 821 * (((16 * v33) & 0xB0 ^ 0xB07B6A3F) & (v28 & 0xF ^ 0xB07B6AB3) ^ (((16 * v33) & 0x40) - 1334089029));
  v35 = (v34 + 215102) % 0x3BC;
  v36 = 16 * *(v11 + 516);
  LODWORD(STACK[0x598]) = v36;
  v37 = v36 ^ *(v11 + (v34 + 572237) % 0x3BC);
  LODWORD(STACK[0x4D8]) = v9;
  v38 = 821 * (((v37 ^ 0xC28BD6FD) + 1727829283) ^ ((v37 ^ 0xCEFD3AE4) + 1787459900) ^ ((v37 ^ 0xC76E411) - 1476286513));
  v39 = (v38 - 1921876075) % 0x3BC;
  LODWORD(STACK[0x4E8]) = v12;
  v40 = v29 >> 4;
  v41 = *(v11 + v35) ^ (*(v11 + (v38 - 1922233210) % 0x3BC) >> 4);
  v42 = (((16 * (v30 & 0xF)) ^ 0x37D920D6) & (v40 ^ 0xFFFDA1FA) | (v29 >> 4) & 9) ^ 0x37D920A7;
  v43 = (821 * v42 + 215102) % 0x3BC;
  v44 = *(v11 + ((((v42 + 697) & 0x220) + 1363253655) ^ ((6 - v42) & 0x20 | 0x51419882)) * (v42 + 697) % 0x3BC) ^ (16 * *(v11 + (821 * (((v41 ^ 0x643BC8DF) - 1681639447) ^ ((v41 ^ 0xE27E4D0E) + 495039034) ^ ((v41 ^ 0x86458551) + 2042264167)) + 631349) % 0x3BC));
  v45 = 821 * (((v44 ^ 0x72C34AE2) - 1616764612) ^ ((v44 ^ 0x1484560C) - 102416938) ^ ((v44 ^ 0x664714E6) - 1960411328));
  v46 = (v45 - 1229743405) % 0x3BCu;
  v47 = *(v11 + v43) ^ (*(v11 + (v45 - 1230100540) % 0x3BCu) >> 4);
  v48 = (821 * (((v47 ^ 0x33162531) - 857089370) ^ ((v47 ^ 0x4EDDF78D) - 1323169766) ^ ((v47 ^ 0x7DCBD23Cu) - 2110509655)) + 765172) % 0x3BC;
  v49 = (v29 >> 8) & 0xF;
  v50 = 821 * (((v30 & 0xF0 ^ 0xEF9FA8C4) & (v49 ^ 0xEF9FFAFD) | (v29 >> 8) & 0xB) ^ 0xEF9FA8E7);
  v51 = *(v11 + (v50 + 572237) % 0x3BC) ^ (16 * *(v11 + v48));
  v52 = 821 * (((v51 ^ 0x49DBB239) - 1544704222) ^ ((v51 ^ 0x4B39D286) - 1592799329) ^ ((v51 ^ 0x2E268B7) - 388729424));
  v53 = (v52 - 526963768) % 0x3BCu;
  v54 = *(v11 + v39) ^ 0xB31B6B31;
  v55 = *(v11 + (v50 + 215102) % 0x3BC) ^ (*(v11 + (v52 - 527320903) % 0x3BCu) >> 4);
  v56 = 821 * (((v32 >> 8) & 0xF0 | (v27 >> 12)) ^ 0x6E);
  v739 = 821 * (((v55 ^ 0x2FB5DB74) - 800447442) ^ ((v55 ^ 0x554EB0BD) - 1431220251) ^ ((v55 ^ 0x7AFB6B49) - 2063297519)) + 603435;
  v57 = *(v11 + (v56 + 572237 - 956 * ((4492644 * (v56 + 572237)) >> 32))) ^ (16 * *(v11 + v739 % 0x3BC));
  v58 = v56 + 215102 - 956 * ((4492644 * (v56 + 215102)) >> 32);
  v59 = 821 * (((v57 ^ 0xB2FFBDE3) - 831380477) ^ ((v57 ^ 0xC94B733) + 1880698579) ^ ((v57 ^ 0xBE6B02D8) - 1025074374));
  v60 = (v59 - 1912712944) % 0x3BC;
  v61 = (*(v11 + (v59 - 1912354853) % 0x3BC) << 12) ^ (*(v11 + v53) << 8);
  v62 = *(v11 + v58) ^ (*(v11 + v60) >> 4);
  v63 = 821 * ((((v32 >> 12) & 0xF0 ^ 0x54B076F2) & (HIWORD(v27) & 0xF ^ 0x54B076F4) | HIWORD(v27) & 0xD) ^ 0x54B07653);
  v64 = *(v11 + (v63 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v62 ^ 0x909B32D5) + 1868877254) ^ ((v62 ^ 0x581CDFCA) - 1478287141) ^ ((v62 ^ 0xC887ED9F) + 930615952)) + 663368) % 0x3BC));
  v65 = 821 * (((v64 ^ 0x5A72AF8F) + 1213859559) ^ ((v64 ^ 0x84E1D1EE) - 1765181304) ^ ((v64 ^ 0xDE937669) - 860102911));
  v66 = *(v11 + (v63 + 215102) % 0x3BCu);
  v67 = (v65 - 1011143677) % 0x3BC;
  v68 = v66 ^ (*(v11 + (v65 - 1011500812) % 0x3BC) >> 4);
  v69 = *(v11 + (v24 + 572237 - 956 * ((4492644 * (v24 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v68 ^ 0x490757A3) - 1225217802) ^ ((v68 ^ 0x189986ED) - 412714564) ^ ((v68 ^ 0x519ED1CEu) - 1369362791)) + 605898) % 0x3BC));
  v70 = 821 * (((v69 ^ 0x6B3637AE) + 1677116364) ^ ((v69 ^ 0x7984CF72) + 1900296984) ^ ((v69 ^ 0x12B2F0D4) + 443679922));
  v71 = (v70 - 316723577) % 0x3BCu;
  v72 = *(v11 + LODWORD(STACK[0x580])) ^ (*(v11 + (v70 - 317080712) % 0x3BCu) >> 4);
  v73 = 821 * ((((v21 >> 12) & 0xF0 ^ 0xA4AFE091) & (HIWORD(LODWORD(STACK[0x588])) & 0xF ^ 0xF7FFE4F5) | HIWORD(LODWORD(STACK[0x588])) & 0xE) ^ 0xA4AFE047);
  v74 = *(v11 + (v73 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v72 ^ 0x25B77F91) - 632782634) ^ ((v72 ^ 0x8F3C90F9) + 1891856318) ^ ((v72 ^ 0xAA8BEFE8) + 1433669805)) + 620676) % 0x3BC));
  v75 = 821 * (((v74 ^ 0xA99D4B9E) - 1056814713) ^ ((v74 ^ 0x9032BABD) - 122832730) ^ ((v74 ^ 0x39AFF92B) + 1362164532));
  v76 = v75 + 2046653128;
  v77 = *(v11 + (v73 + 215102) % 0x3BC) ^ (*(v11 + (v75 + 2046295993) % 0x3BC) >> 4);
  v78 = *(v11 + (821 * ((HIWORD(v23) & 0xF0 ^ 0xDB73D41F) & ((LODWORD(STACK[0x5B0]) >> 20) & 0xF ^ 0xDB73D4FE) ^ 0xDB73D4F3) + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v77 ^ 0x54E38966) - 1424197960) ^ ((v77 ^ 0xC39CCCD3) + 1013134083) ^ ((v77 ^ 0x977F4535) + 1753266917)) + 715091) % 0x3BC));
  v79 = v54 ^ (16 * *(v11 + v46));
  v80 = 821 * (((16 * (v54 & 0xF)) ^ 0xA08F388C) & (v28 & 0xF ^ 0xA5BF7EF4) ^ (v28 & 3 | 0xA08F381C));
  v81 = v79 ^ 0x63ED1382 ^ v61;
  v82 = v81 ^ (*(v11 + v67) << 16);
  v83 = *(v11 + v80 % 0x3BC) ^ (16 * *(v11 + 821 * (((v79 & 0xF0 ^ 0x9D93A75) & (v40 ^ 0xBDB3AFA) | (v29 >> 4) & 0xA) ^ 0x9D93A45) % 0x3BC)) ^ (*(v11 + 821 * ((((v81 >> 4) & 0xF0 ^ 0xE675254C) & (v49 ^ 0xE67525FC) | (v29 >> 8) & 3) ^ 0xE67525CF) % 0x3BC) << 8) ^ 0x28F263C698ADC57ALL;
  v84 = 821 * ((((v61 >> 8) & 0xF0 ^ 0xE3928B43) & ((v27 >> 12) ^ 0xEFFA9FFD) | (v27 >> 12) & 0xC) ^ 0xE3928B4F);
  v85 = v82 ^ (*(v11 + v71) << 20);
  v86 = 821 * (((v82 >> 12) & 0xF0 | HIWORD(v27) & 0xF) ^ 0x63);
  v87 = v83 ^ (*(v11 + v84 % 0x3BC) << 12);
  v88 = (((v83 & 0x1FF) << 23) ^ 0xAA621AF4CC53911ELL) & ((v87 >> 9) ^ 0xEAFB26C71C93ABDCLL) ^ (v87 >> 9) & 0x146101820C46E1;
  LODWORD(v83) = (*(v11 + (v86 - 956 * ((4492644 * v86) >> 32))) << 16) ^ (v88 << 9) ^ 0x3D8AD200;
  v89 = (v88 >> 23) ^ 0xEAFD;
  LODWORD(v88) = v85 ^ (*(v11 + v76 % 0x3BC) << 24);
  v90 = 821 * ((HIWORD(v85) & 0xF0 | (LODWORD(STACK[0x5B0]) >> 12)) ^ 0xFA);
  v91 = v88 ^ ((*(v11 + (821 * (((v78 ^ 0xD4ED7E7) - 1597440620) ^ ((v78 ^ 0x2DE0787F) - 2140777972) ^ ((v78 ^ 0x20AEA790u) - 1926722075)) - 2133057428) % 0x3BC) ^ 4) << 28);
  LODWORD(v88) = 821 * (((v88 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x5B0])) & 0xF) ^ 6);
  v92 = v89 + v83;
  LODWORD(v83) = (v89 + v83) ^ (*(v11 + (v90 - 956 * ((4492644 * v90) >> 32))) << 20);
  LODWORD(v88) = v83 ^ (*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 24);
  v93 = 821 * (((v88 ^ (*(v11 + 821 * ((((16 * (v91 >> 28)) ^ 0x6A881685) & ((LODWORD(STACK[0x588]) >> 20) | 0x7AAB16F0) | (LODWORD(STACK[0x588]) >> 20) & 0xAAAAAAAA) ^ 0x6A88161D) % 0x3BC) << 28)) >> 28) ^ 8) + 537755;
  LODWORD(v88) = 821 * (BYTE3(v88) & 0xF ^ 2) + 537755;
  LODWORD(v83) = 821 * ((v83 >> 20) & 0xF ^ 2) + 537755;
  v94 = 821 * (HIWORD(v92) & 0xF ^ 5) + 537755;
  v95 = 821 * ((v92 >> 12) ^ 2) + 537755;
  LODWORD(v88) = (*(v11 + (v93 - 956 * ((4492644 * v93) >> 32))) << 12) ^ (*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 8) ^ 0xB9F4B0;
  v96 = *(v11 + (v94 - 956 * ((4492644 * v94) >> 32)));
  LODWORD(v88) = (v96 ^ 0xBFFF30) & v88 | v96 & 0x4F;
  v97 = 821 * (~(v92 >> 8) & 0xF) + 537755;
  v98 = 821 * ((v89 >> 4) ^ 1) + 537755;
  v99 = *(v11 + (v97 - 956 * ((4492644 * v97) >> 32)));
  v100 = *(v11 + (821 * (v89 & 0xF ^ 3) + 537755 - 956 * ((4492644 * (821 * (v89 & 0xF ^ 3u) + 537755)) >> 32)));
  v101 = ((*(v11 + (v95 - 956 * ((4492644 * v95) >> 32))) << 12) ^ ((((*(v11 + (v83 - 956 * ((4492644 * v83) >> 32))) << 12) ^ (v88 << 8) ^ 0x7FDB7B) & (v99 ^ 0xFFFFF7) | v99 & 0x84) << 8) ^ 0xC394AF5F) & (v100 ^ 0xFFFFFF57);
  v102 = *(v11 + (v98 - 956 * ((4492644 * v98) >> 32)));
  LODWORD(v83) = LODWORD(STACK[0x4C0]) + LODWORD(STACK[0x4E8]);
  LODWORD(STACK[0x580]) = v83;
  v103 = STACK[0x590];
  v104 = LODWORD(STACK[0x590]) ^ (16 * v102) ^ (v100 & 0xA0 | 0x32802200) ^ v101;
  LODWORD(STACK[0x588]) = v104;
  v105 = v10 + v103;
  v106 = LODWORD(STACK[0x3BC]) - (v10 + v103) + 1285665212;
  v107 = v83 - 786113720;
  v108 = LODWORD(STACK[0x3A0]) - 92264138 + v83 - 786113720;
  v109 = 821 * ((HIWORD(v108) & 0xF ^ 0x2A4) + ((v108 >> 15) & 8));
  v110 = *(v11 + (v109 - 956 * ((4492644 * v109) >> 32)));
  v111 = ((*(v11 + (821 * (v108 >> 28) + 554996 - 956 * ((4492644 * (821 * (v108 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v108) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v108) & 0xF) + 554996)) >> 32))) << 8) ^ 0x8A25) & ~v110 | v110 & 0xDA;
  v112 = ((v104 & 0x335 ^ 0x120) + (v104 & 0x335 ^ 0x215)) * (((LOWORD(STACK[0x3A0]) + 10550 + v83 - 9400) >> 12) + 676);
  v113 = ((*(v11 + (821 * ((v108 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v108 >> 20) & 0xF) + 554996)) >> 32))) << 12) | (16 * *(v11 + (v112 - 956 * ((4492644 * v112) >> 32))))) ^ *(v11 + (821 * ((v108 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v108 >> 8) & 0xF) + 554996)) >> 32)));
  LODWORD(STACK[0x4D0]) = v113;
  v114 = (v113 << 8) ^ (v111 << 16);
  LODWORD(v83) = *(v11 + (821 * (v108 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v108 & 0xF) + 554996)) >> 32)));
  v115 = v83;
  v116 = (v114 ^ 0xE2BDB190) & (v83 ^ 0xFFFFFF70) | v83 & 0x60;
  v117 = *(v11 + (821 * (HIWORD(v106) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v106) & 0xF) + 554996)) >> 32)));
  v118 = ((((*(v11 + (821 * (v106 >> 28) + 554996 - 956 * ((4492644 * (821 * (v106 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v106) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v106) & 0xF) + 554996)) >> 32))) << 8) ^ 0xA157B7E2C12002) & ~v117 | v117 & 0xFFFFFFFFFFFFFFFDLL) << 8) ^ (*(v11 + (821 * ((v106 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v106 >> 20) & 0xF) + 554996)) >> 32))) << 12);
  LODWORD(v117) = *(v11 + (821 * ((v106 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v106 >> 8) & 0xF) + 554996)) >> 32)));
  v119 = (v118 >> 14) & 0x121554BA ^ (*(v11 + (821 * (v106 >> 12) + 554996 - 956 * ((4492644 * (821 * (v106 >> 12) + 554996)) >> 32))) << 22) ^ ((((v118 ^ 0x3B16) & (v117 ^ 0xFFFFFFBF) | v117 & 0xE9) << 18) ^ 0x2B92AB45) & ((v118 >> 14) & 0xFFFEAB45 ^ 0x20748B45);
  LODWORD(v118) = 821 * (v106 >> 4) + 554996 - 956 * ((4492644 * (821 * (v106 >> 4) + 554996)) >> 32);
  v120 = (v119 << 14) ^ 0x66460DC4;
  v119 >>= 18;
  LODWORD(v83) = v120 & (v119 ^ 0xFFFFD01F);
  LODWORD(STACK[0x4A8]) = v83;
  LODWORD(v83) = v83 | v119 & 0x323B;
  v121 = *(v11 + (821 * (v106 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v106 & 0xF) + 554996)) >> 32)));
  LOBYTE(v78) = v83;
  v743 = v83;
  v122 = ((v83 << 8) ^ 0x87411240) & (v121 ^ 0xFFFFFF60) | v121 & 0xB0;
  LODWORD(STACK[0x4C8]) = v115;
  LODWORD(STACK[0x4C0]) = v115 & 0xF;
  v123 = 821 * (((16 * (v121 & 0xF)) ^ 0x6B1C878D) & (v115 & 0xF ^ 0x6B1D97F5) ^ (v115 & 2 | 0x6B1C870D));
  v124 = (v123 + 215102) % 0x3BCu;
  v125 = LODWORD(STACK[0x598]) ^ 0x63F812FF;
  v126 = *(v11 + (v123 + 572237) % 0x3BCu) ^ v125;
  v127 = ((v126 ^ 0x3EC66706) + 2082713279) ^ ((v126 ^ 0xC65D515F) - 2068277016) ^ ((v126 ^ 0x9B632CAE) - 645470953);
  v128 = *(v11 + v118) ^ (v122 >> 4);
  LODWORD(v118) = *(v11 + v124);
  v129 = *(v11 + (821 * (v108 >> 4) + 554996 - 956 * ((4492644 * (821 * (v108 >> 4) + 554996)) >> 32))) ^ (v116 >> 4);
  LODWORD(STACK[0x418]) = 821 * v127;
  v130 = v118 ^ (*(v11 + (821 * v127 - 883124050) % 0x3BC) >> 4);
  LODWORD(STACK[0x4B0]) = v129 & 0xF;
  LODWORD(v118) = 821 * ((((16 * (v128 & 0xF)) ^ 0x532B9B48) & (v129 & 0xF ^ 0x7FFFFFFE) | v129 & 7) ^ 0x532B9B09);
  v131 = *(v11 + (v118 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v130 ^ 0x10FF0CFB) - 285150350) ^ ((v130 ^ 0xC06E23B4) + 1066523711) ^ ((v130 ^ 0xD0912FCF) + 795791430)) + 773382) % 0x3BC));
  LODWORD(v83) = 821 * (((v131 ^ 0x3587809E) - 145371233) ^ ((v131 ^ 0xE8442E06) + 714498311) ^ ((v131 ^ 0xDDC3A690) + 521267601));
  LODWORD(STACK[0x414]) = v83;
  v132 = *(v11 + (v118 + 215102) % 0x3BCu) ^ (*(v11 + (v83 + 866482273) % 0x3BCu) >> 4);
  LODWORD(v83) = v129 >> 4;
  LODWORD(STACK[0x4A0]) = v83;
  v133 = 821 * ((v128 | 0xFDBC790F) & (v83 ^ 0xFDBC79FE) ^ 0xFDBC794F);
  v134 = *(v11 + (v133 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v132 ^ 0x44AD5639) - 1152210519) ^ ((v132 ^ 0xB922FAB) - 194129861) ^ ((v132 ^ 0x4F3F7912u) - 1329559932)) + 767635) % 0x3BC));
  v729 = 821 * (((v134 ^ 0xCAC159DE) + 1186863548) ^ ((v134 ^ 0x5F3D693D) - 750638759) ^ ((v134 ^ 0x95FC38EB) + 428046479));
  v135 = *(v11 + (v133 + 215102) % 0x3BCu) ^ (*(v11 + (v729 + 1808793464) % 0x3BC) >> 4);
  v136 = 821 * (((2 * v135) & 0x172 ^ 0x100) + (v135 ^ 0x239));
  v741 = v114;
  v727 = 821 * (((v78 & 0xF0 ^ 0xA63E68A4) & ((v114 >> 12) ^ 0xB7FFE9F5) | (v114 >> 12) & 0xB) ^ 0xA63E68D4);
  v137 = *(v11 + (v727 + 572237) % 0x3BC) ^ (16 * *(v11 + (v136 - 956 * ((4492644 * v136) >> 32))));
  v725 = 821 * (((v137 ^ 0xF807E518) + 610170645) ^ ((v137 ^ 0xDD2F2D07) + 24559372) ^ ((v137 ^ 0x2528C017) - 110013924));
  LODWORD(STACK[0x41C]) = (v725 + 1420675396) % (((v725 + 1420675396) & 0x3BC) + ((699 - v725) & 0x3BC));
  v138 = STACK[0x4B8];
  v139 = LODWORD(STACK[0x5D4]) - LODWORD(STACK[0x4B8]);
  v140 = (v139 + 1723064420) ^ (v10 + v103 - 1746060476);
  v141 = (v139 - 2 * ((v139 + 1723064420) & 0x46B7BFD6 ^ v139 & 2) + 762028088) ^ 0xA34E270;
  LODWORD(STACK[0x558]) = v103 + 1017512771;
  LODWORD(STACK[0x424]) = v140;
  v142 = (((v103 + 1017512771) ^ 0x686BD070) - v141) ^ v140;
  v143 = v142 + v141;
  LODWORD(STACK[0x4F0]) = v142;
  v144 = v143 ^ (v140 - 1779582359);
  v145 = LODWORD(STACK[0x39C]) - v144 - 1306969075;
  LODWORD(v118) = (LODWORD(STACK[0x5A0]) + 1017512771) ^ 0x686BD070;
  LODWORD(STACK[0x570]) = v108 ^ v118;
  v146 = (821 * (HIBYTE(v145) & 0xF) + 554996) % (((v108 ^ v118) & 0x3BC ^ 0x3BC) + ((v108 ^ v118) & 0x3BC));
  v147 = STACK[0x4E0];
  v148 = LODWORD(STACK[0x4D8]) - LODWORD(STACK[0x4E0]) - 1412374866;
  v149 = v148 ^ v107;
  v148 ^= 0xCC835DA4;
  v150 = (v118 - v148) ^ v149;
  v149 -= 1779582359;
  LODWORD(STACK[0x498]) = v149;
  v151 = v150 + v148;
  LODWORD(STACK[0x4F8]) = v150;
  v152 = ((v150 + v148) ^ v149) - 771412034;
  v153 = LODWORD(STACK[0x3D0]) - 203638620 + v152;
  v154 = v153;
  v155 = *(v11 + (821 * (HIWORD(v153) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v153) & 0xF) + 554996)) >> 32)));
  LODWORD(v118) = (v155 ^ 0x5FFF12) & ((*(v11 + (821 * (v153 >> 28) + 554996 - 956 * ((4492644 * (821 * (v153 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v153) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v153) & 0xF) + 554996)) >> 32))) << 8) ^ 0x543D1A) | v155 & 0xE5;
  LOBYTE(v60) = LOBYTE(STACK[0x3D0]) - 92 + v152;
  LODWORD(STACK[0x550]) = v153;
  LODWORD(v119) = (*(v11 + (821 * ((v153 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v153 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (v118 << 8) ^ 0xD19F31;
  LODWORD(STACK[0x460]) = v119;
  LODWORD(v118) = *(v11 + (821 * (v154 >> 12) + 554996 - 956 * ((4492644 * (821 * (v154 >> 12) + 554996)) >> 32)));
  v156 = *(v11 + (821 * ((v154 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v154 >> 8) & 0xF) + 554996)) >> 32)));
  LODWORD(v119) = v119 & (v156 ^ 0xFFFFF7);
  LODWORD(STACK[0x488]) = v119;
  LODWORD(v119) = ((v119 | v156 & 0xCE) << 8) ^ (v118 << 12);
  LODWORD(STACK[0x430]) = v119;
  LODWORD(v118) = *(v11 + (821 * (v60 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v60 & 0xF) + 554996)) >> 32)));
  v157 = ((v119 ^ 0xB6EE8E7D) & (v118 ^ 0xFFFFFF77) | v118 & 0x82) ^ (16 * *(v11 + (821 * (v154 >> 4) + 554996 - 956 * ((4492644 * (821 * (v154 >> 4) + 554996)) >> 32))));
  v158 = *(v11 + (821 * (HIWORD(v145) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v145) & 0xF) + 554996)) >> 32)));
  LODWORD(v119) = ((((*(v11 + (821 * (v145 >> 28) + 554996 - 956 * ((4492644 * (821 * (v145 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + v146) << 8) ^ 0x1E4031) & ~v158 | v158 & 0xCE) << 8) ^ (*(v11 + (821 * ((v145 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v145 >> 20) & 0xF) + 554996)) >> 32))) << 12);
  LODWORD(STACK[0x438]) = v119;
  v159 = *(v11 + (821 * ((v145 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v145 >> 8) & 0xF) + 554996)) >> 32)));
  LODWORD(v119) = v119 ^ 0x6C0CCE;
  LODWORD(STACK[0x458]) = v119;
  LODWORD(STACK[0x4E8]) = 16777047;
  LODWORD(v119) = ((v119 & (v159 ^ 0xFFFF57) | v159 & 0x31) << 8) ^ (*(v11 + (821 * (v145 >> 12) + 554996 - 956 * ((4492644 * (821 * (v145 >> 12) + 554996)) >> 32))) << 12);
  LODWORD(STACK[0x420]) = v119;
  v160 = *(v11 + (821 * (v145 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v145 & 0xF) + 554996)) >> 32)));
  v161 = *(v11 + (821 * (v145 >> 4) + 554996 - 956 * ((4492644 * (821 * (v145 >> 4) + 554996)) >> 32))) ^ (((v119 ^ 0xD8622BD0) & (v160 ^ 0xFFFFFF70) | v160 & 0x20) >> 4);
  LODWORD(v119) = 821 * (((v161 & 0xB0 ^ 0xCB53AC2F) & ((v157 >> 8) & 0xF ^ 0xCB53ACB1) | v161 & 0x40) ^ 0xCB53ACFE);
  LODWORD(STACK[0x428]) = v119;
  LODWORD(STACK[0x42C]) = (v119 + 215102) % (((65 - v144) ^ (v144 - 771412034)) & 0x3BCu);
  LODWORD(STACK[0x470]) = v118 & 0xF;
  v162 = 821 * (((16 * (v160 & 0xF)) ^ 0x645C037F) & (v118 & 0xF ^ 0x645C03FA) ^ 0x645C03F2);
  LODWORD(v118) = *(v11 + (v162 + 572237) % 0x3BCu);
  LODWORD(STACK[0x5B0]) = v125;
  LODWORD(v118) = 821 * (((v118 ^ v125 ^ 0x35D6DB0D) - 558316559) ^ ((v118 ^ v125 ^ 0x287E6905) - 1022332423) ^ ((v118 ^ v125 ^ 0x7E50A8FF) - 1791053821));
  v163 = *(v11 + (v118 - 151769594) % 0x3BCu) ^ 0xEE1B2B7;
  LODWORD(STACK[0x440]) = v163;
  v164 = *(v11 + (v162 + 215102) % 0x3BCu) ^ (*(v11 + (v118 - 152126729) % 0x3BCu) >> 4);
  LODWORD(v118) = v157 >> 4;
  LODWORD(STACK[0x450]) = v157;
  v733 = 821 * ((((16 * (v161 & 0xF)) ^ 0x17365DB8) & (v118 ^ 0x17365DFC) | (v157 >> 4) & 7) ^ 0x17365DEF);
  v165 = *(v11 + (v733 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v164 ^ 0x3AC99EB) - 61643155) ^ ((v164 ^ 0x79423B74) - 2034383628) ^ ((v164 ^ 0x7AEEA21Fu) - 2062459495)) + 775845) % 0x3BC));
  v731 = 821 * (((v165 ^ 0xDFEE61ED) + 979402123) ^ ((v165 ^ 0x1E7A6DAA) - 67866162) ^ ((v165 ^ 0xC194044F) + 605689897));
  v166 = *(v11 + (v731 - 815714275) % 0x3BC);
  LODWORD(STACK[0x448]) = v166;
  LODWORD(STACK[0x468]) = 821 * ((((v163 ^ (16 * v166)) & 0xF0 ^ 0x7ABF9145) & (v118 ^ 0x7ABF91F2) | (v157 >> 4) & 0xA) ^ 0x7ABF91F7) % ((v152 & 0x957930E6) + 1787220694 + (v152 & 0x957930E6 ^ 0x957930E6));
  v167 = v105 + v138 + v143 + v144 - 1049483722;
  v735 = LODWORD(STACK[0x580]) + v147;
  v737 = LOWORD(STACK[0x580]) + v147 - 26574;
  LODWORD(STACK[0x518]) = (v151 ^ v150) + 931739370;
  LODWORD(v83) = (v735 - 1041557873) ^ 0xB37C3632;
  LODWORD(STACK[0x540]) = v83;
  LODWORD(v118) = (v151 + v735 - 477652942 + v152) ^ ((v151 ^ v150) + 931739370);
  v168 = v118 + v152;
  v169 = v168 - v83 - 1173262699;
  LODWORD(STACK[0x480]) = v169;
  v170 = (v168 ^ ((v151 ^ v150) + 931739370)) + 961026634;
  LODWORD(STACK[0x578]) = v170;
  LODWORD(v83) = v118 ^ 0xAE91642D ^ v169;
  LODWORD(STACK[0x548]) = v83;
  LODWORD(v118) = LODWORD(STACK[0x3CC]) - 1950805661;
  LODWORD(STACK[0x530]) = v170 ^ v169;
  LODWORD(v83) = (v170 ^ v169) - v83;
  LODWORD(STACK[0x590]) = v83;
  LODWORD(v83) = v118 + v83;
  v171 = v143 ^ v142;
  LODWORD(STACK[0x508]) = v171;
  v172 = v171 + 931739370;
  LODWORD(STACK[0x500]) = v171 + 931739370;
  v173 = v167 ^ (v171 + 931739370);
  LODWORD(v88) = v173 + v144 - 771412034;
  v174 = (v88 ^ v172) + 961026634;
  LODWORD(STACK[0x568]) = v174;
  v175 = ((v105 + v138 - 841976619) ^ 0xB37C3632) + 1173262699;
  LODWORD(STACK[0x528]) = v175;
  v176 = v88 - v175;
  LODWORD(STACK[0x478]) = v176;
  LODWORD(v88) = v173 ^ 0xAE91642D ^ v176;
  LODWORD(STACK[0x538]) = v88;
  LODWORD(STACK[0x520]) = v174 ^ v176;
  v177 = (v174 ^ v176) - v88;
  LODWORD(STACK[0x580]) = v177;
  LODWORD(v88) = LODWORD(STACK[0x390]) - v177 + 669436949;
  v178 = *(v11 + (821 * (WORD1(v83) & 0xF) + 554996 - 956 * ((4492644 * (821 * (WORD1(v83) & 0xF) + 554996)) >> 32)));
  v179 = (v178 ^ 0xBFFF55) & ((*(v11 + (821 * (v83 >> 28) + 554996 - 956 * ((4492644 * (821 * (v83 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (BYTE3(v83) & 0xF) + 554996 - 956 * ((4492644 * (821 * (BYTE3(v83) & 0xF) + 554996)) >> 32))) << 8) ^ 0xB77BD5) | v178 & 0x2A;
  LODWORD(STACK[0x510]) = v83;
  v180 = v88 >> (v739 & 0x18) >> (v739 & 0x18 ^ 0x18);
  v181 = (*(v11 + (821 * ((v83 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v83 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (v179 << 8) ^ 0x7CF80D;
  v182 = *(v11 + (821 * ((v83 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v83 >> 8) & 0xF) + 554996)) >> 32)));
  v183 = *(v11 + (821 * (v83 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v83 & 0xF) + 554996)) >> 32)));
  LODWORD(v118) = v181 & (v182 ^ 0xFFFF15);
  LODWORD(v119) = ((v118 | v182 & 0xF2) << 8) ^ (*(v11 + (821 * (v83 >> 12) + 554996 - 956 * ((4492644 * (821 * (v83 >> 12) + 554996)) >> 32))) << 12);
  v184 = ((v119 ^ 0xD9227671) & (v183 ^ 0xFFFFFFF9) | v183 & 0x8E) ^ (16 * *(v11 + (821 * (v83 >> 4) + 554996 - 956 * ((4492644 * (821 * (v83 >> 4) + 554996)) >> 32))));
  v185 = *(v11 + (821 * (WORD1(v88) & 0xF) + 554996 - 956 * ((4492644 * (821 * (WORD1(v88) & 0xF) + 554996)) >> 32)));
  v186 = 821 * ((v88 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v88 >> 8) & 0xF) + 554996)) >> 32);
  v187 = 821 * (v88 >> 4) + 554996 - 956 * ((4492644 * (821 * (v88 >> 4) + 554996)) >> 32);
  v188 = (*(v11 + (821 * ((v88 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v88 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ ((((*(v11 + (821 * (v180 >> 4) + 554996 - 956 * ((4492644 * (821 * (v180 >> 4) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (v180 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v180 & 0xF) + 554996)) >> 32))) << 8) ^ 0x5B0F03) & ~v185 | v185 & 0xFC) << 8) ^ 0xADF102;
  v189 = ((v188 & (*(v11 + v186) ^ 0xFFFF06) | *(v11 + v186) & 0xFD) << 8) ^ (*(v11 + (821 * (v88 >> 12) + 554996 - 956 * ((4492644 * (821 * (v88 >> 12) + 554996)) >> 32))) << 12);
  LODWORD(v88) = *(v11 + (821 * (v88 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v88 & 0xF) + 554996)) >> 32)));
  v190 = *(v11 + v187) ^ (((v189 ^ 0x739EEE70) & (v88 ^ 0xFFFFFF70) ^ (v88 & 0x80 | 0x24811300)) >> 4);
  v191 = v183 & 0xF;
  LODWORD(v88) = 821 * ((((16 * (v88 & 0xF)) | 0x3510400C) & (v191 ^ 0xFF97D8F6) | v183 & 3) ^ 0x3510408C);
  v192 = *(v11 + (v88 + 572237) % 0x3BCu) ^ v125;
  v193 = *(v11 + (v88 + 215102) % 0x3BCu);
  LODWORD(v88) = 821 * (((v192 ^ 0x5915E3FC) - 437807278) ^ ((v192 ^ 0xAA79D635) + 378249881) ^ ((v192 ^ 0x90942F3E) + 744905620));
  v194 = v193 ^ (*(v11 + (v88 - 1282449817) % 0x3BCu) >> 4);
  v195 = v184 >> 4;
  v196 = 821 * ((((16 * (v190 & 0xF)) ^ 0x65C61DFB) & (v195 ^ 0x65FE1FFC) | (v184 >> 4) & 4) ^ 0x65C61D8F);
  v197 = *(v11 + (v196 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v194 ^ 0xE1A8CF14) + 509030548) ^ ((v194 ^ 0x57AB255) - 91927085) ^ ((v194 ^ 0xE4D27DC1) + 455967303)) + 775845) % 0x3BC));
  v198 = 821 * (((v197 ^ 0x58BCAC9) + 922176216) ^ ((v197 ^ 0x72D418C8) + 1101568215) ^ ((v197 ^ 0x775FDA09) + 1143167512));
  v199 = *(v11 + (v196 + 215102) % 0x3BCu) ^ (*(v11 + (v198 - 509421957) % 0x3BCu) >> 4);
  v200 = (v184 >> 8) & 0xF;
  v201 = 821 * (((v190 | 0xE63E9D0F) & (v200 ^ 0xE63E9D58) | v190 & 0xA0) ^ 0xE63E9DFB);
  v202 = *(v11 + (v201 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v199 ^ 0x5054B715) - 1347729340) ^ ((v199 ^ 0x7BB0A9E3) - 2075175242) ^ ((v199 ^ 0x2BE41E76u) - 736370399)) + 605898) % 0x3BC));
  v203 = 821 * (((v202 ^ 0x1E3699ED) + 1397582171) ^ ((v202 ^ 0xB1AF0D1B) - 53150291) ^ ((v202 ^ 0xAF999CFE) - 488477622));
  v204 = v189 ^ 0x9EA3C5AB;
  v205 = *(v11 + (v201 + 215102) % 0x3BC) ^ (*(v11 + (v203 - 2123462530) % 0x3BC) >> 4);
  v206 = (v119 ^ 0x5785) >> 12;
  v207 = 821 * ((((v204 >> 8) | 0x9F11EA0F) & (v206 ^ 0x9F11EAC3) | (v204 >> 8) & 0x30) ^ 0x9F11EAC6);
  v208 = *(v11 + (v207 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v205 ^ 0x7C83BE26) - 2089008791) ^ ((v205 ^ 0xCD00F85C) + 855574291) ^ ((v205 ^ 0xB18346FA) + 1316796853)) + 612466) % 0x3BC));
  v209 = 821 * (((v208 ^ 0xA4DA2127) + 1481415843) ^ ((v208 ^ 0x1EB6C17D) - 501187335) ^ ((v208 ^ 0xBA6CE852) + 1190811096));
  v210 = *(v11 + (v198 - 509064822) % 0x3BCu) ^ 0xCF83BFA3;
  LOBYTE(v208) = *(v11 + (v88 - 1282092682) % 0x3BCu) ^ 0x62;
  v211 = *(v11 + (v203 - 2123105395) % 0x3BC) ^ 0x56084EF;
  v212 = *(v11 + (v209 - 256607513) % (((v209 - 256607513) & 0x3BC ^ 0x3BC) + ((v209 - 256607513) & 0x3BC))) ^ 0xDCD1EE4;
  LODWORD(v88) = *(v11 + (v207 + 215102) % 0x3BC) ^ (*(v11 + (v209 - 256964648) % 0x3BC) >> 4);
  v213 = 821 * ((((v204 >> 12) & 0xF0 ^ 0x496E0AD7) & (((v119 ^ 0x6D905785) >> 16) & 0xF ^ 0xEDFE5AFA) | ((v119 ^ 0x6D905785) >> 16) & 8) ^ 0x496E0ACF);
  LODWORD(v88) = *(v11 + (v213 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v88 ^ 0x91D057B1) + 1848616961) ^ ((v88 ^ 0x8B6021CD) + 1956634237) ^ ((v88 ^ 0x1AB076FC) - 447772338)) + 741363) % 0x3BC));
  LODWORD(v88) = 821 * (((v88 ^ 0x6DE87CE6) + 224245010) ^ ((v88 ^ 0x63E3251C) + 56028396) ^ ((v88 ^ 0xE0B51F2) + 1857984518));
  v214 = (v88 - 652111539) % 0x3BCu;
  LODWORD(v88) = *(v11 + (v213 + 215102) % 0x3BC) ^ (*(v11 + (v88 - 652468674) % 0x3BCu) >> 4);
  v215 = 821 * (((v188 >> 8) & 0xF0 | (v181 >> 12)) ^ 0xFA);
  LODWORD(v88) = *(v11 + (v215 + 572237 - 956 * ((4492644 * (v215 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v88 ^ 0x5221D139) - 1377947914) ^ ((v88 ^ 0xB7E7B0D2) + 1209552671) ^ ((v88 ^ 0xE5C6616B) + 439983784)) + 719196) % 0x3BC));
  v216 = 821 * (((2 * v88) & 0x572 ^ 0x10) + (v88 ^ 0xAB1));
  LODWORD(v88) = *(v11 + (v215 + 215102 - 956 * ((4492644 * (v215 + 215102)) >> 32))) ^ (*(v11 + (821 * (((v88 ^ 0xFF6AF151) + 29232845) ^ ((v88 ^ 0x5AB9F6D9) - 1536358075) ^ ((v88 ^ 0xA5D30F80) + 1527246878)) - 1090173904) % 0x3BC) >> 4);
  v217 = ((v88 ^ 0x5C099315) - 1544131374) ^ ((v88 ^ 0xB780F3BE) + 1216285819) ^ ((v88 ^ 0xEB89602B) + 343318512);
  LODWORD(v88) = *(v11 + (v216 - 956 * ((4492644 * v216) >> 32))) ^ 0x23584BB8;
  v218 = 821 * ((((v188 >> 12) & 0xF0 ^ 0x9BCFB83B) & (HIWORD(v181) & 0xF ^ 0x9BEFBEF8) | HIWORD(v181) & 4) ^ 0x9BCFB81F);
  v219 = *(v11 + (v218 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * v217 + 725764) % 0x3BCu));
  v220 = 821 * (((v219 ^ 0xEA64B229) - 823732644) ^ ((v219 ^ 0x8D77AAC6) - 1443508555) ^ ((v219 ^ 0x671310E7) + 1133606038));
  v221 = *(v11 + (v220 - 373107498) % 0x3BC) ^ 0xBEC7031E;
  v222 = *(v11 + (v218 + 215102) % 0x3BC) ^ (*(v11 + (v220 - 373464633) % 0x3BC) >> 4);
  LODWORD(v118) = v118 >> 20;
  v223 = 821 * ((HIWORD(v188) & 0xF0 | v118) ^ 0xA0) + 572237;
  v224 = *(v11 + (v223 - 956 * ((4492644 * v223) >> 32))) ^ (16 * *(v11 + (821 * (((v222 ^ 0x93E79AD0) + 1813538066) ^ ((v222 ^ 0x6D82211) - 114827823) ^ ((v222 ^ 0x953FB841) + 1790986113)) + 728227) % 0x3BC));
  v225 = (821 * (((v224 ^ 0x9D85105F) + 438455831) ^ ((v224 ^ 0xBAD3CE59) + 1031049233) ^ ((v224 ^ 0x2756D60E) - 1594783672)) - 194963037) % 0x3BC;
  v226 = 821 * ((v191 & 0xFFFFFF0F | (16 * (v208 & 0xF))) ^ 0xA8);
  v227 = 821 * ((((v208 ^ (16 * v210)) & 0xF0 ^ 0x25F430FE) & (v195 ^ 0x2FF6F3F8) | (v184 >> 4) & 1) ^ 0x25F430AF);
  v228 = (*(v11 + v214) << 16) ^ (v212 << 12);
  LODWORD(v83) = *(v11 + (v226 - 956 * ((4492644 * v226) >> 32)));
  LODWORD(STACK[0x5D4]) = v83;
  v229 = (((v211 ^ (16 * v212)) & 0x70 ^ 0xED7C5A5F) & (v206 ^ 0xED7C5A74) | (v211 ^ (16 * v212)) & 0x80) ^ 0xED7C5AF1;
  v230 = v83 ^ (16 * *(v11 + v227 % 0x3BC));
  v231 = v230 ^ (*(v11 + 821 * ((((v210 ^ (16 * v211)) & 0x60 ^ 0x195B022F) & (v200 ^ 0x195B0269) | (v210 ^ (16 * v211)) & 0x90) ^ 0x195B027A) % 0x3BC) << 8) ^ 0x2917772F;
  v232 = v231 ^ (*(v11 + 821 * v229 % 0x3BC) << 12);
  v233 = v232 ^ (*(v11 + 821 * ((((v228 >> 12) | 0x9B13B70F) & (WORD1(v119) & 0xF ^ 0x9B13B726) | (v228 >> 12) & 0xD0) ^ 0x9B13B7EB) % 0x3BC) << 16) ^ 0x7E42D702;
  v234 = 821 * (((((v228 ^ (v88 << 20)) >> 16) & 0xC0 ^ 0x7441C08F) & ((v181 >> 12) ^ 0x7441C0C1) | ((v228 ^ (v88 << 20)) >> 16) & 0x30) ^ 0x7441C0EB);
  LODWORD(v88) = 821 * (((v88 ^ (16 * v221)) & 0xF0 | HIWORD(v181) & 0xF) ^ 0x57);
  v235 = v233 ^ (*(v11 + v234 % 0x3BC) << 20);
  LODWORD(v88) = v235 ^ ((*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) ^ 0x15) << 24);
  LODWORD(v118) = 821 * (((v88 ^ (*(v11 + 821 * ((v221 ^ (16 * *(v11 + v225))) & 0xD0 ^ 0x20000936 ^ (v221 ^ ~(16 * *(v11 + v225)) | 0xFFFFFFDF) & (v118 ^ 0x20000926)) % 0x3BC) << 28)) >> 28) ^ 4) + 537755;
  LODWORD(v88) = 821 * (BYTE3(v88) & 0xF ^ 2) + 537755;
  v236 = 821 * ((v235 >> 20) & 0xF ^ 5) + 537755;
  v237 = 821 * (HIWORD(v233) & 0xF ^ 5) + 537755;
  LODWORD(v88) = (*(v11 + (v118 - 956 * ((4492644 * v118) >> 32))) << 12) ^ 0x5549DB ^ (*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 8);
  LODWORD(v118) = *(v11 + (v237 - 956 * ((4492644 * v237) >> 32)));
  v238 = 821 * ((v232 >> 12) ^ 7) + 537755;
  v239 = 821 * ((v231 >> 8) & 0xF ^ 7) + 537755;
  v240 = *(v11 + (v239 - 956 * ((4492644 * v239) >> 32)));
  LODWORD(v118) = ((((*(v11 + (v236 - 956 * ((4492644 * v236) >> 32))) << 12) ^ ((((v118 ^ 0x5FFF53) & v88) + (v118 & 0x24)) << 8) ^ 0xABB4D9) & (v240 ^ LODWORD(STACK[0x4E8])) | v240 & 0x26) << 8) ^ (*(v11 + (v238 - 956 * ((4492644 * v238) >> 32))) << 12);
  LODWORD(STACK[0x4E8]) = v118;
  LODWORD(STACK[0x4E0]) = (821 * (v230 >> 4) + 537755) % (((v118 & 0x80464100 ^ 0x98FEFBFC ^ (v118 & 0x98D6C300 ^ 0xA838CA) & (v118 & 0x98D6C300 ^ 0x5D38BACE)) - 427084313) ^ 0x7F61FAA1);
  LOBYTE(v237) = *(v11 + (LODWORD(STACK[0x414]) + 866839408) % 0x3BCu) ^ 0x3E;
  LOBYTE(v240) = *(v11 + (LODWORD(STACK[0x418]) - 882766915) % 0x3BCu) ^ 0xC2;
  LOBYTE(v88) = *(v11 + (v729 + 1809150599) % 0x3BC) ^ 0xFA;
  v241 = *(v11 + (v727 + 215102) % 0x3BC) ^ (*(v11 + (v725 + 1420318261) % 0x3BC) >> 4);
  v242 = ((v241 ^ 0x9822E410) + 1742543867) ^ ((v241 ^ 0xE1F28354) + 504200383) ^ ((v241 ^ 0x79D067C4) - 2043701201);
  v243 = HIWORD(v741) & 0xF;
  LODWORD(v118) = 821 * ((((v743 >> 4) | 0x69A6FA0F) & (v243 ^ 0x69A6FA67) | (v743 >> 4) & 0x90) ^ 0x69A6FA72);
  v244 = (v118 + 215102) % 0x3BCu;
  v245 = *(v11 + (v118 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * v242 + 694566) % 0x3BC));
  v246 = 821 * (((v245 ^ 0x6559F421) - 370571410) ^ ((v245 ^ 0x12330466) - 1635551445) ^ ((v245 ^ 0x776AF84F) - 69563644));
  LOBYTE(v118) = *(v11 + (v246 - 837982460) % 0x3BCu) ^ 0x6A;
  v247 = *(v11 + v244) ^ (*(v11 + (v246 - 838339595) % 0x3BCu) >> 4);
  v248 = 821 * (((v743 >> 8) & 0xF0 | (v741 >> 20) & 0xF) ^ 0x72);
  v249 = *(v11 + (v248 + 572237 - 956 * ((4492644 * (v248 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v247 ^ 0xBB8ABB8C) + 1148536055) ^ ((v247 ^ 0xDD2337D1) + 584894636) ^ ((v247 ^ 0x66A98CDD) - 1722387544)) + 576342) % 0x3BC));
  v250 = 821 * (((v249 ^ 0xDC2513F9) + 1038231579) ^ ((v249 ^ 0xF81FD720) + 433646788) ^ ((v249 ^ 0x243ACCD1) - 973211853));
  v251 = (v250 - 332807070) % 0x3BC;
  LOBYTE(v250) = *(v11 + (v250 - 332449935) % 0x3BC) ^ 0xEA;
  v252 = *(v11 + (v248 + 215102 - 956 * ((4492644 * (v248 + 215102)) >> 32))) ^ (*(v11 + v251) >> 4);
  LODWORD(v119) = HIBYTE(v741) & 0xF;
  v253 = 821 * (((LODWORD(STACK[0x4A8]) >> 12) & 0xF0 ^ 0x79BAC98F) & (v119 ^ 0x79BAC9F7) ^ 0x79BAC9FD);
  v254 = *(v11 + (v253 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v252 ^ 0x371BD3C0) - 924570550) ^ ((v252 ^ 0x6F2A3C8A) - 1865039100) ^ ((v252 ^ 0x5831EFCAu) - 1479667644)) + 774203) % 0x3BC));
  v255 = 821 * (((v254 ^ 0xE22D1923) - 343464097) ^ ((v254 ^ 0x687378E7) + 1641629339) ^ ((v254 ^ 0x8A5E69CC) - 2081138766));
  v256 = (v255 + 19403487) % 0x3BC;
  v257 = *(v11 + (v253 + 215102) % 0x3BCu) ^ (*(v11 + (v255 + 19046352) % 0x3BC) >> 4);
  v258 = *(v11 + (821 * (((HIWORD(LODWORD(STACK[0x4A8])) & 0xD0 ^ 0xCC19B94F) & ((v741 >> 28) ^ 0xCC19B9D6) | HIWORD(LODWORD(STACK[0x4A8])) & 0x20) ^ 0xCC19B9FE) + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v257 ^ 0x73025CE5) - 1929534627) ^ ((v257 ^ 0xCAD43F31) + 892059785) ^ ((v257 ^ 0xB9D66354) + 1177132270)) + 734795) % 0x3BC));
  v259 = 821 * ((((16 * (v240 & 0xF)) ^ 0x81B20884) & (LODWORD(STACK[0x4C0]) ^ 0xFBF30AF5) | STACK[0x4C8] & 0xB) ^ 0x81B2082C);
  v260 = *(v11 + 821 * (((v240 ^ (16 * v237)) & 0xE0 ^ 0xA2D035CF) & (LODWORD(STACK[0x4B0]) ^ 0xA2D035E9) ^ (((v240 ^ (16 * v237)) & 0x10) - 1563413016)) % 0x3BC);
  v261 = 821 * ((((v237 ^ (16 * v88)) & 0xC0 ^ 0x74A1E64F) & (LODWORD(STACK[0x4A0]) ^ 0x74A1E6C8) | (v237 ^ (16 * v88)) & 0x30) ^ 0x74A1E6D9);
  v262 = (17 * (((v260 ^ 0x178CE73) - 24694387) ^ ((v260 ^ 0xD03822B3) + 801627469) ^ ((v260 ^ 0xD140EC48) + 784274360)) - (((v260 ^ 0x4FCA8AE2) - 1338673890) ^ ((v260 ^ 0xB5992C24) + 1248252892) ^ ((v260 ^ 0xFA53A64E) + 95181234)) + 2176) ^ *(v11 + v259 % 0x3BC);
  LOBYTE(v259) = *(v11 + LODWORD(STACK[0x41C]));
  LODWORD(v88) = 821 * (((v88 ^ (16 * v259)) & 0xF0 | (LODWORD(STACK[0x4D0]) >> 4)) ^ 0xF0);
  LODWORD(v88) = (*(v11 + v261 % 0x3BC) << 8) ^ (*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 12) ^ v262 ^ 0x465689F2;
  v263 = v88 ^ (*(v11 + 821 * ((((v259 ^ (16 * v118)) & 0x30 ^ 0x26E24E1F) & (v243 ^ 0x26E24E32) | (v259 ^ (16 * v118)) & 0xC0) ^ 0x26E24EB7u) % 0x3BC) << 16) ^ 0x9F1F82FB;
  LODWORD(v118) = v263 ^ (*(v11 + 821 * (((v118 ^ (16 * v250)) & 0xF0 ^ 0xF36B19CB) & ((v741 >> 20) & 0xF ^ 0xFFFFD9F9) ^ ((v741 >> 20) & 4 | 0xF36B190B)) % 0x3BC) << 20);
  v264 = (*(v11 + 821 * ((((v250 ^ (16 * *(v11 + v256))) & 0xF0 ^ 0x190E5941) & (v119 ^ 0x7BFFFFF5) | HIBYTE(v741) & 0xE) ^ 0x190E59AB) % 0x3BC) << 24) ^ (*(v11 + 821 * ((((*(v11 + v256) ^ (16 * *(v11 + (821 * (((v258 ^ 0x1E382449) - 951545614) ^ ((v258 ^ 0xD3C12621) + 179409562) ^ ((v258 ^ 0xCDF90A60) + 344571609)) - 1451518040) % 0x3BC))) & 0xF0 | 0x1F0A800A) & ((v741 >> 28) ^ 0x3F0EE1F6) | (v741 >> 28) & 0x55555555) ^ 0x1F0A800A) % 0x3BC) << 28) ^ v118 ^ 0xDD1E61F3;
  LODWORD(STACK[0x4C0]) = 821 * (v264 >> 28) + 537755 - 956 * ((4492644 * (821 * (v264 >> 28) + 537755)) >> 32);
  v265 = 821 * (HIBYTE(v264) & 0xF ^ 4) + 537755;
  LODWORD(STACK[0x4B8]) = v265 - 956 * ((4492644 * v265) >> 32);
  v266 = 821 * ((v118 >> 20) & 0xF ^ 4) + 537755;
  LODWORD(STACK[0x4D0]) = v266 - 956 * ((4492644 * v266) >> 32);
  v267 = 821 * (HIWORD(v263) & 0xF ^ 9) + 537755;
  LODWORD(STACK[0x4B0]) = v267 - 956 * ((4492644 * v267) >> 32);
  v268 = 821 * ((v88 >> 12) ^ 8) + 537755;
  LODWORD(STACK[0x4C8]) = v268 - 956 * ((4492644 * v268) >> 32);
  LODWORD(v88) = 821 * ((v88 >> 8) & 0xF ^ 1) + 537755;
  LODWORD(STACK[0x4A8]) = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(v88) = 821 * ((v262 >> 4) ^ 8) + 537755;
  LODWORD(STACK[0x4D8]) = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(STACK[0x4A0]) = 821 * (v262 & 0xF ^ 8) + 537755 - 956 * ((4492644 * (821 * (v262 & 0xF ^ 8) + 537755)) >> 32);
  v269 = LODWORD(STACK[0x3B8]) - 1249038680 + LODWORD(STACK[0x498]);
  v270 = LODWORD(STACK[0x3A8]) - LODWORD(STACK[0x424]) - 692491166;
  v271 = *(v11 + (821 * (HIWORD(v269) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v269) & 0xF) + 554996)) >> 32)));
  LODWORD(v88) = ((*(v11 + (821 * (v269 >> 28) + 554996 - 956 * ((4492644 * (821 * (v269 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v269) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v269) & 0xF) + 554996)) >> 32))) << 8) ^ 0x2574) & ~v271 | v271 & 0x8B;
  v272 = 821 * ((LOWORD(STACK[0x3B8]) + 11944 + LOWORD(STACK[0x498])) >> 12) + 554996;
  LODWORD(STACK[0x498]) = v269;
  v273 = 821 * (v269 >> 4) + 554996 - 956 * ((4492644 * (821 * (v269 >> 4) + 554996)) >> 32);
  v274 = ((*(v11 + (821 * ((v269 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v269 >> 20) & 0xF) + 554996)) >> 32))) << 12) | (16 * *(v11 + (v272 - 956 * ((4492644 * v272) >> 32))))) ^ *(v11 + (821 * ((v269 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v269 >> 8) & 0xF) + 554996)) >> 32)));
  LODWORD(v88) = (v274 << 8) ^ (v88 << 16);
  v275 = *(v11 + (821 * (v269 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v269 & 0xF) + 554996)) >> 32)));
  v276 = (v88 ^ 0x2E5E9550) & (v275 ^ 0xFFFFFF50) | v275 & 0xA0;
  LODWORD(v83) = *(v11 + (821 * (HIWORD(v270) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v270) & 0xF) + 554996)) >> 32)));
  v277 = 821 * (v270 >> 4) + 554996 - 956 * ((4492644 * (821 * (v270 >> 4) + 554996)) >> 32);
  LODWORD(v118) = (*(v11 + (821 * ((v270 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v270 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (((v83 ^ 0x6FFF55) & ((*(v11 + (821 * (v270 >> 28) + 554996 - 956 * ((4492644 * (821 * (v270 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v270) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v270) & 0xF) + 554996)) >> 32))) << 8) ^ 0x6206DD) | v83 & 0x22222222) << 8) ^ 0x976FEE;
  LODWORD(v83) = *(v11 + (821 * ((v270 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v270 >> 8) & 0xF) + 554996)) >> 32)));
  v278 = ((v118 & (v83 ^ LODWORD(STACK[0x490])) | v83 & 0x11111111) << 8) ^ (*(v11 + (821 * (v270 >> 12) + 554996 - 956 * ((4492644 * (821 * (v270 >> 12) + 554996)) >> 32))) << 12);
  LODWORD(v83) = v278 ^ 0x656E8993;
  v279 = *(v11 + (821 * (v270 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v270 & 0xF) + 554996)) >> 32)));
  v280 = v275 & 0xF;
  v281 = 821 * (((16 * (v279 & 0xF)) ^ 0xD4CAD27F) & (v280 ^ 0xD4CAD2FC) ^ 0xD4CAD2F4);
  LODWORD(v119) = *(v11 + (v281 + 572237) % 0x3BC) ^ LODWORD(STACK[0x5B0]);
  v282 = (v281 + 215102) % 0x3BC;
  v283 = *(v11 + v277) ^ (((v278 ^ 0x7BE749D0) & (v279 ^ 0xFFFFFF50) | v279 & 0x20) >> 4);
  v284 = 821 * (((v119 ^ 0x573C72C2) + 1646667738) ^ ((v119 ^ 0xBA9EA165) - 1887112065) ^ ((v119 ^ 0x8E5AC950) - 1153393588));
  v285 = (v284 + 1547593788) % 0x3BCu;
  v286 = *(v11 + v273) ^ (v276 >> 4);
  LODWORD(v119) = ((16 * v283) | 0xB27C470F) & (v286 & 0xF ^ 0xB27C471B) | (16 * v283) & 0xE0;
  v287 = *(v11 + v282) ^ (*(v11 + (v284 + 1547236653) % 0x3BCu) >> 4);
  v288 = (821 * (v119 ^ 0xB27C475E) + 215102) % 0x3BC;
  v289 = *(v11 + 821 * (((2 * (v119 ^ 0xB27C475E)) & 0x172) + (v119 ^ 0xB27C45E7)) % 0x3BC) ^ (16 * *(v11 + (821 * (((v287 ^ 0x894F95D) - 143980822) ^ ((v287 ^ 0xB2736C11) + 1301058470) ^ ((v287 ^ 0xBAE795CC) + 1159228025)) + 738900) % 0x3BC));
  v290 = 821 * (((v289 ^ 0x944CC25B) - 1477816612) ^ ((v289 ^ 0x959A2F3) + 989802100) ^ ((v289 ^ 0x9D1568A0) - 1363942367));
  v291 = (v290 + 1526837232) % 0x3BC;
  v290 += 1526480097;
  LODWORD(v119) = v286 >> 4;
  v292 = *(v11 + v285) ^ 0x2A580186;
  v293 = 821 * ((((*(v11 + v288) ^ (*(v11 + v290 % 0x3BC) >> 4)) ^ 0xB4EC5557) + 1259580098) ^ (((*(v11 + v288) ^ (*(v11 + v290 % 0x3BC) >> 4)) ^ 0x437CE872) - 1132259355) ^ (((*(v11 + v288) ^ (*(v11 + v290 % 0x3BC) >> 4)) ^ 0xF790BDA5) + 141509172)) + 763530;
  v294 = 821 * (((v283 | 0xC9B8890F) & (v119 ^ 0xC9B88933) | v283 & 0xC0) ^ 0xC9B889F6);
  v295 = *(v11 + (v294 + 572237) % 0x3BCu) ^ (16 * *(v11 + v293 % 0x3BC));
  v296 = 821 * (((v295 ^ 0x39D04130) + 814218998) ^ ((v295 ^ 0x20B3FEE3) + 702824743) ^ ((v295 ^ 0x1963B7DB) + 271845407));
  v297 = (v296 + 163070887) % 0x3BCu;
  v298 = *(v11 + (v294 + 215102) % 0x3BCu) ^ (*(v11 + (v296 + 162713752) % 0x3BCu) >> 4);
  v299 = 821 * (((v83 >> 8) & 0xF0 | (v274 >> 4)) ^ 0xE0);
  v300 = *(v11 + (v299 + 572237 - 956 * ((4492644 * (v299 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v298 ^ 0x6A24A1B3) - 1780785520) ^ ((v298 ^ 0x744B7AB1) - 1951103602) ^ ((v298 ^ 0x1E6FDB82u) - 510647105)) + 627244) % 0x3BC));
  v301 = 821 * (((v300 ^ 0x96CE209D) + 1497616180) ^ ((v300 ^ 0x4987AE2F) - 2046148222) ^ ((v300 ^ 0xDF4986BA) + 281307413));
  v302 = (v301 + 1576063162) % 0x3BC;
  v303 = *(v11 + (v299 + 215102 - 956 * ((4492644 * (v299 + 215102)) >> 32))) ^ (*(v11 + (v301 + 1575706027) % 0x3BC) >> 4);
  v304 = (*(v11 + v302) << 12) ^ (*(v11 + v297) << 8);
  v305 = (v83 >> 12) & 0xF0 ^ 0x46E8DCDD;
  LODWORD(v83) = WORD1(v88) & 0xF;
  v306 = 821 * (v305 & (v83 ^ 0xCEF9DEF9) ^ (WORD1(v88) & 2 | 0x46E8DC9D));
  v307 = *(v11 + (v306 + 572237) % 0x3BCu) ^ (16 * (*(v11 + (821 * (((v303 ^ 0x61943941) - 1637104052) ^ ((v303 ^ 0x9BB38849) + 1682732868) ^ ((v303 ^ 0xFA27B188) + 98061955)) + 668294) % 0x3BC) ^ 0x88));
  v308 = 821 * (((v307 ^ 0x7B0B1089) + 828089234) ^ ((v307 ^ 0x6608CF9B) + 743996548) ^ ((v307 ^ 0x1D03DF9A) + 1465085059));
  v309 = (v308 - 1422337208) % 0x3BCu;
  v310 = *(v11 + (v306 + 215102) % 0x3BCu) ^ (*(v11 + (v308 - 1422694343) % 0x3BCu) >> 4);
  v311 = (v118 >> 8) & 0xF0 | (v88 >> 20) & 0xF;
  v312 = 821 * ((v311 ^ 0x131) + (~(v88 >> 19) & 0xC));
  v313 = v312 - 956 * ((4492644 * v312) >> 32);
  v314 = *(v11 + (821 * (v311 ^ 0x37) + 572237 - 956 * ((4492644 * (821 * (v311 ^ 0x37) + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v310 ^ 0xE1ECFCDB) + 504562506) ^ ((v310 ^ 0xDE7B53FC) + 562343023) ^ ((v310 ^ 0x3F97AFA7) - 1066905546)) + 766814) % 0x3BC));
  v315 = 821 * (((v314 ^ 0x77739790) - 557960517) ^ ((v314 ^ 0xDED1E5A1) + 1998340236) ^ ((v314 ^ 0xA9A27A39) + 7331604));
  v316 = (v315 + 1869380110) % 0x3BC;
  v317 = *(v11 + v313) ^ (*(v11 + (v315 + 1869022975) % 0x3BC) >> 4);
  v318 = (v118 >> 12) & 0xF0 | BYTE3(v88) & 0xF;
  v319 = v318 ^ 0x15;
  v320 = 821 * (((2 * (v318 ^ 0x15)) & 0x172) + (v318 ^ 0x2AC));
  v321 = *(v11 + (v320 - 956 * ((4492644 * v320) >> 32))) ^ (16 * *(v11 + (821 * (((v317 ^ 0x1D24FA4F) - 488962598) ^ ((v317 ^ 0x368F1747) - 915347246) ^ ((v317 ^ 0x2BABED88u) - 732687841)) + 763530) % 0x3BC));
  v322 = 821 * v319 + 215102 - 956 * ((4492644 * (821 * v319 + 215102)) >> 32);
  v323 = 821 * (((v321 ^ 0x8C605A1F) - 1904578357) ^ ((v321 ^ 0x4E4E68E5) + 1280590385) ^ ((v321 ^ 0xC22E3AF2) - 1070329816));
  v324 = (v323 + 1110894935) % 0x3BC;
  v325 = *(v11 + v322) ^ (*(v11 + (v323 + 1110537800) % 0x3BC) >> 4);
  v326 = *(v11 + (821 * (((WORD1(v118) & 0xE0 ^ 0x54AC6F6F) & ((v88 >> 28) ^ 0x54AC6FE2) | WORD1(v118) & 0x10) ^ 0x54AC6FF0) + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v325 ^ 0x9FB5BB) - 10466645) ^ ((v325 ^ 0x997D74CE) + 1719831520) ^ ((v325 ^ 0x99E2C1F5) + 1713192677)) + 662547) % 0x3BC));
  v327 = (821 * (((v326 ^ 0x61DCFBBA) - 764755808) ^ ((v326 ^ 0x7D87BD1D) - 835615175) ^ ((v326 ^ 0x1C5B4EAFu) - 1343392373)) - 1464428345) % 0x3BC;
  v328 = v292 ^ (16 * *(v11 + v291));
  v329 = 821 * (((v328 | 0x582B360F) & (v286 & 0xF ^ 0x582B3684) | v328 & 0x70) ^ 0x582B3681);
  v330 = v328 ^ 0x77C956A3 ^ v304;
  v331 = v330 ^ (*(v11 + v309) << 16);
  v332 = 821 * ((((v330 >> 4) & 0xF0 ^ 0x5DABAAFA) & (v119 ^ 0xFDEFBBFE) | (v286 >> 4) & 5) ^ 0x5DABAA8F);
  v333 = 821 * ((v304 >> 8) & 0xF0 | (v274 >> 4));
  v334 = v331 ^ (*(v11 + v316) << 20);
  v335 = v334 ^ ((*(v11 + v324) ^ 9) << 24);
  v336 = 821 * (((HIWORD(v334) & 0xF0 ^ 0xD7D73964) & ((v88 >> 20) & 0xF ^ 0xD7D739FB) | (v88 >> 20) & 0xB) ^ 0xD7D739F7);
  v337 = (v335 ^ (*(v11 + v327) << 28)) >> 24;
  LODWORD(v118) = ((v337 & 0xE0 ^ 0x74AE80AF) & ((v88 >> 28) ^ 0x74AE80EC) | v337 & 0x10) ^ 0x74AE80FE;
  LODWORD(v88) = *(v11 + 821 * (((16 * (v292 & 0xF)) ^ 0x3497DD1F) & (v280 ^ 0x3497DDF6) ^ 0x3497DDFEu) % 0x3BC) ^ (16 * *(v11 + v329 % 0x3BC)) ^ (*(v11 + v332 % 0x3BC) << 8) ^ (*(v11 + (v333 - 956 * ((4492644 * v333) >> 32))) << 12) ^ (*(v11 + 821 * ((((v331 >> 12) & 0xF0 ^ 0xB88F1092) & (v83 ^ 0xBE8F57F6) | WORD1(v88) & 0xD) ^ 0xB88F1086) % 0x3BC) << 16) ^ ((*(v11 + v336 % 0x3BC) ^ 0xCC) << 20) ^ ((*(v11 + 821 * ((((v335 >> 20) & 0xF0 ^ 0xE610B44E) & (BYTE3(v88) & 0xF ^ 0xE6D5B7FB) | BYTE3(v88) & 1) ^ 0xE610B40F) % 0x3BC) ^ 0x37) << 24) ^ 0xBBC00008;
  v338 = *(v11 + 821 * v118 % 0x3BCu);
  LODWORD(v88) = (-((v338 << 28) ^ 0x80000000) ^ ((v338 << 28) + (v338 >> 2 << 31) + 1188632377) ^ (v88 - (v88 ^ (v338 << 28) ^ 0x80000000)) ^ 0xC6D91739) + v88;
  LODWORD(STACK[0x424]) = 821 * (v88 >> 28) + 537755 - 956 * ((4492644 * (821 * (v88 >> 28) + 537755)) >> 32);
  LODWORD(STACK[0x41C]) = 821 * (BYTE3(v88) & 0xF) + 537755 - 956 * ((4492644 * (821 * (BYTE3(v88) & 0xF) + 537755)) >> 32);
  LODWORD(STACK[0x490]) = 821 * ((v88 >> 20) & 0xF) + 537755 - 956 * ((4492644 * (821 * ((v88 >> 20) & 0xF) + 537755)) >> 32);
  v744 = 821 * (WORD1(v88) & 0xF) + 537755 - 956 * ((4492644 * (821 * (WORD1(v88) & 0xF) + 537755)) >> 32);
  LODWORD(STACK[0x414]) = 821 * (v88 >> 12) + 537755 - 956 * ((4492644 * (821 * (v88 >> 12) + 537755)) >> 32);
  v742 = 821 * ((v88 >> 8) & 0xF) + 537755 - 956 * ((4492644 * (821 * ((v88 >> 8) & 0xF) + 537755)) >> 32);
  LODWORD(STACK[0x418]) = 821 * (v88 >> 4) + 537755 - 956 * ((4492644 * (821 * (v88 >> 4) + 537755)) >> 32);
  v740 = 821 * (v88 & 0xF) + 537755 - 956 * ((4492644 * (821 * (v88 & 0xF) + 537755)) >> 32);
  LODWORD(v118) = LODWORD(STACK[0x430]) ^ 0xE0A7F010;
  v339 = LODWORD(STACK[0x420]) ^ 0x2C965825;
  LODWORD(v88) = *(v11 + (v733 + 215102) % 0x3BCu) ^ (*(v11 + (v731 - 816071410) % 0x3BC) >> 4);
  LODWORD(v88) = *(v11 + (LODWORD(STACK[0x428]) + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v88 ^ 0xEB68C2E4) + 345456029) ^ ((v88 ^ 0x2C686D02) - 745041285) ^ ((v88 ^ 0xC700AF66) + 956256287)) + 577984) % 0x3BC));
  LODWORD(v88) = 821 * (((v88 ^ 0xCB6378BC) + 6308580) ^ ((v88 ^ 0x3957D121) - 229315713) ^ ((v88 ^ 0xF234A195) + 959945675));
  v340 = (v88 - 289221626) % 0x3BCu;
  LOBYTE(v88) = *(v11 + (v88 - 288864491) % 0x3BCu) ^ 0xF7;
  v341 = *(v11 + LODWORD(STACK[0x42C])) ^ (*(v11 + v340) >> 4);
  LODWORD(v83) = (821 * (((v341 ^ 0x2DF1D2A8) - 770822861) ^ ((v341 ^ 0x1CBB1AF) - 30126538) ^ ((v341 ^ 0x2C3A6387u) - 742024162)) + 760246) % 0x3BC;
  v342 = v118 >> 12;
  v343 = (((v339 >> 8) & 0x70 ^ 0x38060B6F) & (v342 ^ 0x38060B76) | (v339 >> 8) & 0x80) ^ 0x38060B7A;
  v344 = 821 * (((461 - v735) & 0x106) + (v737 & 0x106u) + v343) % 0x3BC;
  v345 = *(v11 + (821 * v343 + 572237) % 0x3BCu) ^ (16 * *(v11 + v83));
  v346 = 821 * (((v345 ^ 0x8C87974B) + 844315940) ^ ((v345 ^ 0x8BE0A9D0) + 892601273) ^ ((v345 ^ 0x7673693) - 1179411204));
  v347 = (v346 + 1476393) % 0x3BC;
  LOBYTE(v346) = *(v11 + (v346 + 1833528) % 0x3BC) ^ 0x45;
  LODWORD(v83) = *(v11 + v344) ^ (*(v11 + v347) >> 4);
  v348 = (v339 >> 12) & 0xF0 ^ 0x78BD4A5;
  v349 = WORD1(v118) & 0xF;
  LODWORD(v118) = 821 * ((v348 & (v349 ^ 0xEF9FF5F7) | WORD1(v118) & 0xA) ^ 0x78BD41F);
  LODWORD(v83) = *(v11 + (v118 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v83 ^ 0x6359B199) - 1666822592) ^ ((v83 ^ 0xFF26F4B1) + 14224152) ^ ((v83 ^ 0x9C7F45A8) + 1669380623)) + 750394) % 0x3BC));
  v350 = (v118 + 215102) % 0x3BCu;
  LODWORD(v118) = 821 * (((v83 ^ 0xEB6CDB11) + 1135323466) ^ ((v83 ^ 0xA5CD0A02) + 218789979) ^ ((v83 ^ 0x4EA1D91B) - 429479100));
  v351 = (v118 - 1203240327) % 0x3BCu;
  LOBYTE(v118) = *(v11 + (v118 - 1202883192) % 0x3BCu) ^ 0x2A;
  LODWORD(v83) = *(v11 + v350) ^ (*(v11 + v351) >> 4);
  v352 = (821 * (((v83 ^ 0x2E2864D8) - 774399200) ^ ((v83 ^ 0xA845959D) + 1471834715) ^ ((v83 ^ 0x866DF1C5) + 2039614979)) + 723301) % 0x3BC;
  LODWORD(v83) = LODWORD(STACK[0x460]) >> 12;
  v353 = 821 * (((LODWORD(STACK[0x438]) >> 8) & 0xF0 ^ 0x25A9FC3F) & (v83 ^ 0x7FBFFFF7) ^ 0x25A9FC0F);
  v354 = *(v11 + (v353 + 572237) % 0x3BCu) ^ (16 * *(v11 + v352));
  v355 = 821 * (((v354 ^ 0xE9C2030D) - 1098190521) ^ ((v354 ^ 0xA6C4DE) + 1475229334) ^ ((v354 ^ 0xE964CFDB) - 1104396911));
  v356 = v355 + 318286890;
  v357 = *(v11 + (v355 + 318644025) % 0x3BC) ^ 0xFD910F99;
  v358 = *(v11 + (v353 + 215102) % 0x3BCu) ^ (*(v11 + v356 % 0x3BC) >> 4);
  v359 = (821 * (((v358 ^ 0x7B62DF44) - 2070077277) ^ ((v358 ^ 0x7FDCBF05) - 2145173276) ^ ((v358 ^ 0x4BE60C1u) - 79585496)) + 697850) % 0x3BC;
  v360 = HIWORD(LODWORD(STACK[0x460])) & 0xF;
  v361 = 821 * ((((LODWORD(STACK[0x458]) >> 12) & 0xF0 ^ 0x29E1749) & (v360 ^ 0x729E1FF1) | HIWORD(LODWORD(STACK[0x460])) & 6) ^ 0x29E178D);
  v362 = *(v11 + (v361 + 572237) % 0x3BCu) ^ (16 * *(v11 + v359));
  v363 = 821 * (((v362 ^ 0xECB80BE3) - 1787363282) ^ ((v362 ^ 0x71244309) + 149637320) ^ ((v362 ^ 0x9D9C40E2) - 464303315));
  v364 = *(v11 + (v363 + 1528572683) % 0x3BC);
  v365 = *(v11 + (v363 + 1528929818) % 0x3BC) ^ 0x68940B2A;
  v366 = *(v11 + (v361 + 215102) % 0x3BCu) ^ (v364 >> 4);
  LODWORD(v119) = (821 * (((v366 ^ 0xF9B5EB92) + 105518310) ^ ((v366 ^ 0x7992DFF1) - 2039668601) ^ ((v366 ^ 0x802734E3) + 2144914325)) + 578805) % 0x3BC;
  v367 = LODWORD(STACK[0x488]) >> 20;
  LODWORD(v119) = *(v11 + (821 * (HIWORD(LODWORD(STACK[0x458])) & 0xE0 ^ 0xDFE54C36 ^ (~HIWORD(LODWORD(STACK[0x458])) | 0xFFFFFFEF) & (v367 ^ 0xDFE54C18)) + 572237) % 0x3BC) ^ (16 * *(v11 + v119));
  LODWORD(v88) = (*(v11 + 821 * (((v88 ^ (16 * v346)) & 0xF0 ^ 0x9FE29D1F) & (v342 ^ 0x9FE29DF3) ^ 0x9FE29DBF) % 0x3BC) << 12) ^ (*(v11 + 821 * ((((LODWORD(STACK[0x448]) ^ (16 * v88)) & 0xF0 ^ 0x857325D6) & ((LODWORD(STACK[0x450]) >> 8) & 0xF | 0x9DFBADF0) | (LODWORD(STACK[0x450]) >> 8) & 9) ^ 0x857325AF) % 0x3BC) << 8);
  v368 = (*(v11 + 821 * ((((v118 ^ (16 * v357)) & 0xC0 ^ 0xA1F6284F) & (v83 ^ 0xA1F628CE) | (v118 ^ (16 * v357)) & 0x30) ^ 0xA1F628F6) % 0x3BC) << 20) ^ (*(v11 + 821 * (((v346 ^ (16 * v118)) & 0xF0 ^ 0xFB44E5AF) & (v349 ^ 0xFB44E5F5) ^ 0xFB44E54F) % 0x3BC) << 16);
  v369 = 821 * ((((v357 ^ (16 * v365)) & 0x60 ^ 0xCE51EF4F) & (v360 ^ 0xCE51EF61) | (v357 ^ (16 * v365)) & 0x90) ^ 0xCE51EF7D) % 0x3BC;
  v370 = v365 ^ (16 * *(v11 + (821 * (((v119 ^ 0x33895564) + 1890043052) ^ ((v119 ^ 0x5F5DC415) + 477320667) ^ ((v119 ^ 0x6CD49979) + 804915383)) - 1953133339) % 0x3BC));
  LODWORD(v83) = *(v11 + 821 * ((((16 * LODWORD(STACK[0x440])) | 0xA313690F) & (LODWORD(STACK[0x470]) ^ 0xA31369C2) | (16 * LODWORD(STACK[0x440])) & 0x30) ^ 0xA31369FA) % 0x3BC);
  v371 = 821 * (v370 & 0xA0 ^ 0xA111F876 ^ (~v370 | 0xFFFFFFAF) & (v367 ^ 0xA111F858)) % 0x3BC;
  v372 = v83 ^ (16 * *(v11 + LODWORD(STACK[0x468])));
  LODWORD(v118) = v372 ^ 0x1E29043D ^ v88;
  v373 = v368 ^ v118;
  v374 = v373 ^ 0xD950A3B8 ^ ((*(v11 + v369) ^ 0xE0) << 24);
  v375 = 821 * (((v374 ^ (*(v11 + v371) << 28)) >> 28) ^ 2) + 537755;
  LODWORD(STACK[0x468]) = v375 - 956 * ((4492644 * v375) >> 32);
  v376 = 821 * (HIBYTE(v374) & 0xF ^ 7) + 537755;
  LODWORD(STACK[0x460]) = v376 - 956 * ((4492644 * v376) >> 32);
  v377 = 821 * ((v373 >> 20) & 0xF ^ 2) + 537755;
  LODWORD(STACK[0x470]) = v377 - 956 * ((4492644 * v377) >> 32);
  v378 = 821 * (HIWORD(v373) & 0xF ^ 9) + 537755;
  LODWORD(STACK[0x448]) = v378 - 956 * ((4492644 * v378) >> 32);
  LODWORD(STACK[0x488]) = 821 * (v88 >> 12) + 537755 - 956 * ((4492644 * (821 * (v88 >> 12) + 537755)) >> 32);
  LODWORD(v88) = 821 * ((v118 >> 8) & 0xF ^ 4) + 537755;
  LODWORD(STACK[0x450]) = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(STACK[0x458]) = 821 * (v372 >> 4) + 537755 - 956 * ((4492644 * (821 * (v372 >> 4) + 537755)) >> 32);
  LODWORD(STACK[0x440]) = (821 * (((v83 & 0xF ^ 0x2BFD65ED) - 738026902) ^ ((v83 & 0xF ^ 0xD2934F98) + 762097693) ^ ((v83 & 0xF ^ 0xF96E2A7D) + 110220794)) + 632170) % 0x3BC;
  LODWORD(v83) = LODWORD(STACK[0x3C0]) - 1384044748 + LODWORD(STACK[0x480]);
  v379 = LODWORD(STACK[0x394]) - LODWORD(STACK[0x478]) + 1041121562;
  v380 = v83;
  v381 = *(v11 + (821 * (WORD1(v83) & 0xF) + 554996 - 956 * ((4492644 * (821 * (WORD1(v83) & 0xF) + 554996)) >> 32)));
  LODWORD(v88) = (v381 ^ 0xFF50) & ((*(v11 + (821 * (v83 >> 28) + 554996 - 956 * ((4492644 * (821 * (v83 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (BYTE3(v83) & 0xF) + 554996 - 956 * ((4492644 * (821 * (BYTE3(v83) & 0xF) + 554996)) >> 32))) << 8) ^ 0xF1D8) | v381 & 0x27;
  v382 = 821 * ((LOWORD(STACK[0x3C0]) + 10036 + LOWORD(STACK[0x480])) >> 12) + 554996;
  LODWORD(v118) = v382 - 956 * ((4492644 * v382) >> 32);
  LOBYTE(v360) = LOBYTE(STACK[0x3C0]) + 52 + LOBYTE(STACK[0x480]);
  LODWORD(STACK[0x480]) = v83;
  v383 = (*(v11 + (821 * ((v83 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v83 >> 20) & 0xF) + 554996)) >> 32))) << 20) ^ (v88 << 16) ^ 0x7F61EA98;
  LODWORD(v88) = *(v11 + (821 * ((v380 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v380 >> 8) & 0xF) + 554996)) >> 32))) << 8;
  LODWORD(v88) = (v383 & (v88 ^ 0xFFFF63FB) | v88 & 0x1500) ^ (*(v11 + v118) << 12);
  LODWORD(v83) = *(v11 + (821 * (v360 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v360 & 0xFu) + 554996)) >> 32)));
  LODWORD(v118) = v88 & 0x5B6FB898 ^ (16 * *(v11 + (821 * (v380 >> 4) + 554996 - 956 * ((4492644 * (821 * (v380 >> 4) + 554996)) >> 32)))) ^ (v88 ^ 0x20800567) & (v83 ^ 0xA49047CD);
  v384 = (*(v11 + (821 * (HIBYTE(v379) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v379) & 0xF) + 554996)) >> 32))) << 8) ^ (*(v11 + (821 * (v379 >> 28) + 554996 - 956 * ((4492644 * (821 * (v379 >> 28) + 554996)) >> 32))) << 12);
  v385 = *(v11 + (821 * (HIWORD(v379) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v379) & 0xF) + 554996)) >> 32)));
  v386 = (((v384 ^ 0x23D987) & (v385 ^ 0x2FFF5F) | v385 & 0x78) << 8) ^ (*(v11 + (821 * ((v379 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v379 >> 20) & 0xF) + 554996)) >> 32))) << 12);
  v387 = v386 ^ (16 * *(v11 + (821 * (v379 >> 12) + 554996 - 956 * ((4492644 * (821 * (v379 >> 12) + 554996)) >> 32)))) ^ 0x99E1228C;
  v388 = 821 * (v379 >> 4) + 554996 - 956 * ((4492644 * (821 * (v379 >> 4) + 554996)) >> 32);
  v389 = v387 ^ *(v11 + (821 * ((v379 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v379 >> 8) & 0xF) + 554996)) >> 32)));
  v390 = *(v11 + (821 * (v379 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v379 & 0xF) + 554996)) >> 32)));
  v391 = v83 & 0xF;
  LODWORD(v83) = *(v11 + v388);
  v392 = 821 * ((v391 & 0xFFFFFF0F | (16 * (v390 & 0xF))) ^ 0x88);
  v393 = v83 ^ ((((v389 << 8) ^ 0x69B9C460) & (v390 ^ 0xFFFFFF70) | v390 & 0x90) >> 4);
  v394 = STACK[0x5B0];
  LODWORD(v83) = *(v11 + (v392 + 572237 - 956 * ((4492644 * (v392 + 572237)) >> 32))) ^ LODWORD(STACK[0x5B0]);
  LODWORD(v83) = 821 * (((v83 ^ 0x9EEBF7D3) + 1214385539) ^ ((v83 ^ 0x797034E9) - 1342583111) ^ ((v83 ^ 0x8463D9CD) + 1391076253));
  v395 = (v83 + 433275834) % 0x3BCu;
  LODWORD(v83) = *(v11 + (v392 + 215102 - 956 * ((4492644 * (v392 + 215102)) >> 32))) ^ (*(v11 + (v83 + 432918699) % 0x3BCu) >> 4);
  v396 = 821 * ((((16 * (v393 & 0xF)) ^ 0xF0C829AB) & ((v118 >> 4) ^ 0xF0C829FA) | (v118 >> 4) & 4) ^ 0xF0C829CF);
  LODWORD(v83) = *(v11 + (v396 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v83 ^ 0xBF34F987) + 1087047336) ^ ((v83 ^ 0x4F4ED363) - 1330566076) ^ ((v83 ^ 0xF07A2A64) + 260429125)) + 650232) % 0x3BC));
  LODWORD(v119) = 821 * (((v83 ^ 0xC53A421B) - 82350183) ^ ((v83 ^ 0x2DDD3B60) + 334501604) ^ ((v83 ^ 0xE8E77173) - 691381007));
  v397 = *(v11 + (v396 + 215102) % 0x3BC) ^ (*(v11 + (v119 - 1724260798) % 0x3BCu) >> 4);
  v398 = (v118 >> 8) & 0xF;
  v399 = 821 * (((v393 & 0xA0 ^ 0x5BD3DD2F) & (v398 ^ 0x5BD3DDAE) | v393 & 0x50) ^ 0x5BD3DDA9);
  v400 = (v399 + 215102) % 0x3BCu;
  v401 = *(v11 + (v399 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v397 ^ 0x7FDB57E0) - 2145081172) ^ ((v397 ^ 0x26A69918) - 648452524) ^ ((v397 ^ 0x597DCE78u) - 1501417164)) + 614929) % 0x3BC));
  LOBYTE(v119) = *(v11 + (v119 - 1723903663) % 0x3BCu) ^ 0xED;
  LODWORD(v83) = 821 * (((v401 ^ 0xA026D15E) - 797478583) ^ ((v401 ^ 0x7C1BB3EF) + 206181370) ^ ((v401 ^ 0xDC3D6AB9) - 1402156368));
  v402 = *(v11 + (v83 - 903311390) % 0x3BCu) ^ 0x6E5E969A;
  LOBYTE(v395) = *(v11 + v395) ^ 0x53;
  LODWORD(v83) = *(v11 + v400) ^ (*(v11 + (v83 - 903668525) % 0x3BCu) >> 4);
  v403 = 821 * ((v389 & 0xF0 ^ 0xCE2FD18F) & ((v88 >> 12) ^ 0xCF7FF1F9) ^ 0xCE2FD10F);
  LODWORD(v83) = *(v11 + (v403 + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v83 ^ 0x39E0E328) - 971039726) ^ ((v83 ^ 0x5176D816) - 1366743248) ^ ((v83 ^ 0x68963BBE) - 1754676088)) + 629707) % 0x3BC));
  v404 = (v403 + 215102) % 0x3BC;
  LODWORD(v83) = 821 * (((v83 ^ 0xC631E388) - 54420324) ^ ((v83 ^ 0x9BFA9346) - 1593119658) ^ ((v83 ^ 0x5DCB78C6) + 1731921878));
  v405 = (v83 - 86327679) % 0x3BCu;
  LODWORD(v83) = *(v11 + v404) ^ (*(v11 + (v83 - 86684814) % 0x3BCu) >> 4);
  v406 = ((v387 >> 8) & 0xF ^ 5) << (-68 * ((BYTE2(v88) & 0xF ^ 0xE) + (BYTE2(v88) & 0xF ^ 1u)));
  v407 = 821 * (WORD1(v88) & 0xF ^ 0xC2BFBF ^ (v406 - ((2 * v406) & 0x1857F7C) + 12763070));
  LODWORD(v83) = *(v11 + (v407 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v83 ^ 0xA87FADF9) + 1468027520) ^ ((v83 ^ 0x3E36F4BF) - 1043788998) ^ ((v83 ^ 0x964959C6) + 1773577793)) + 776666) % 0x3BC));
  LODWORD(v83) = 821 * (((v83 ^ 0xEFC09051) + 465934890) ^ ((v83 ^ 0x145BF8E3) - 530648420) ^ ((v83 ^ 0xFB9B60BA) + 262040259));
  v408 = (v83 + 1811408616) % 0x3BCu;
  LODWORD(v83) = *(v11 + (v407 + 215102) % 0x3BCu) ^ (*(v11 + (v83 + 1811051481) % 0x3BCu) >> 4);
  LODWORD(v406) = (v383 >> 20) & 0xF;
  v409 = 821 * ((((v386 >> 8) & 0xF0 | 0x2331A70D) & (v406 ^ 0xAF73B7FE) | (v383 >> 20) & 2) ^ 0x2331A70F);
  LODWORD(v83) = *(v11 + (v409 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v83 ^ 0xBC7E9EE0) + 1132552582) ^ ((v83 ^ 0x2D8D09D9) - 764217667) ^ ((v83 ^ 0x91F397B9) + 1846307037)) + 593583) % 0x3BC));
  LODWORD(v83) = 821 * (((v83 ^ 0x77262052) + 1584811135) ^ ((v83 ^ 0x29004E3) + 734030032) ^ ((v83 ^ 0x75B62CB9) + 1558593686));
  v410 = (v83 - 2127064924) % 0x3BCu;
  LODWORD(v83) = *(v11 + (v409 + 215102) % 0x3BCu) ^ (*(v11 + (v83 - 2127422059) % 0x3BCu) >> 4);
  LOBYTE(v409) = *(v11 + v410) ^ 0xF3;
  v411 = v386 >> 12;
  v412 = HIBYTE(v383) & 0xF;
  v413 = 821 * (((v411 & 0xE0 ^ 0x12B5606F) & (v412 ^ 0x12B560E7) | v411 & 0x10) ^ 0x12B560F9);
  LODWORD(v83) = *(v11 + (v413 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v83 ^ 0x3E30E3DF) - 1043391273) ^ ((v83 ^ 0xEE7C3BB) - 250069837) ^ ((v83 ^ 0x30D720E4) - 819404818)) + 669115) % 0x3BC));
  LODWORD(v83) = 821 * (((v83 ^ 0x1266D423) + 1850412388) ^ ((v83 ^ 0x1D0C0DF2) + 1629607091) ^ ((v83 ^ 0xF6AD1D9) + 1934035098));
  v414 = (v413 + 215102) % 0x3BCu;
  LOBYTE(v413) = *(v11 + (v83 - 1055355856) % 0x3BCu) ^ 0x25;
  LODWORD(v83) = *(v11 + v414) ^ (*(v11 + (v83 - 1055712991) % 0x3BCu) >> 4);
  v415 = 821 * (((v384 >> 8) & 0xF0 | (v383 >> 28)) ^ 8) + 572237;
  v416 = *(v11 + (v415 - 956 * ((4492644 * v415) >> 32))) ^ (16 * *(v11 + (821 * (((v83 ^ 0xA365B016) + 1553616715) ^ ((v83 ^ 0xAD59A818) + 1386633029) ^ ((v83 ^ 0xE3C188E) - 238819373)) + 600972) % 0x3BC));
  LODWORD(v83) = (821 * (((v416 ^ 0xB1B04741) + 1205734462) ^ ((v416 ^ 0xE2142E41) + 343565630) ^ ((v416 ^ 0x53A46108) - 1513477515)) - 1335204588) % 0x3BC;
  v417 = 821 * ((v391 & 0xFFFFFF0F | (16 * (v395 & 0xF))) ^ 0xB8);
  v418 = ((v395 ^ (16 * v119)) & 0xF0 | (v118 >> 4)) ^ 0x85;
  v419 = (*(v11 + v405) << 12) ^ (v402 << 8);
  v420 = (((v119 ^ (16 * v402)) & 0xF0 ^ 0x243BBD34) & (v398 ^ 0xE7BBFDF2) | (v118 >> 8) & 0xB) ^ 0x243BBD77;
  LODWORD(v118) = 821 * v418 - 956 * ((4492644 * (821 * v418)) >> 32);
  v421 = (*(v11 + 821 * v420 % 0x3BC) << 8) ^ 0x43634E95;
  v422 = *(v11 + (v417 - 956 * ((4492644 * v417) >> 32)));
  v423 = v421 & (v422 ^ 0xE3EBFF3F) | v422 & 0x6A;
  v424 = 821 * (((v419 >> 8) & 0xF0 | (v88 >> 12)) ^ 0x96);
  v425 = v423 ^ (16 * *(v11 + v118));
  LODWORD(v118) = v425 ^ (*(v11 + (v424 - 956 * ((4492644 * v424) >> 32))) << 12) ^ 0xE706CE3C;
  v426 = *(v11 + v408);
  LODWORD(v88) = 821 * ((((v419 ^ (v426 << 16)) >> 12) & 0xF0 | WORD1(v88) & 0xF) ^ 0x61);
  v427 = 821 * ((((v426 ^ (16 * v409)) & 0xF0 ^ 0xB305D44E) & (v406 ^ 0xB305D4FD) | (v383 >> 20) & 1) ^ 0xB305D47F);
  LODWORD(v88) = v118 ^ (*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 16) ^ 0xA39C6DCD;
  v428 = ((v413 ^ (16 * *(v11 + v83))) & 0xF0 ^ 0x88A4BE63) & ((v383 >> 28) ^ 0xABF5FEFB) | (v383 >> 28) & 0xC;
  v429 = v88 ^ (*(v11 + v427 % 0x3BC) << 20);
  LODWORD(v83) = v429 ^ ((*(v11 + 821 * (((v409 ^ (16 * v413)) & 0xE0 ^ 0xA1B15D4F) & (v412 ^ 0xA1B15DE2) ^ (((v409 ^ (16 * v413)) & 0x10) - 1582211604)) % 0x3BC) ^ 0xD4) << 24) ^ 0xBDC7DD7F;
  v430 = 821 * (((v83 ^ ((*(v11 + 821 * (v428 ^ 0x88A4BE4B) % 0x3BC) ^ 8) << 28)) >> 28) ^ 0xE) + 537755;
  LODWORD(STACK[0x430]) = v430 - 956 * ((4492644 * v430) >> 32);
  v431 = 821 * (BYTE3(v83) & 0xF ^ 0xE) + 537755;
  v738 = v431 - 956 * ((4492644 * v431) >> 32);
  v432 = 821 * (~(v429 >> 20) & 0xF) + 537755;
  LODWORD(STACK[0x42C]) = v432 - 956 * ((4492644 * v432) >> 32);
  LODWORD(v88) = 821 * (WORD1(v88) & 0xF ^ 9) + 537755;
  v736 = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(v88) = 821 * ((v118 >> 12) ^ 8) + 537755;
  LODWORD(STACK[0x438]) = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(v88) = 821 * ((v425 >> 8) & 0xF ^ 0xE) + 537755;
  v732 = v88 - 956 * ((4492644 * v88) >> 32);
  LODWORD(v88) = 821 * ((v425 >> 4) ^ 1) + 537755;
  LODWORD(STACK[0x428]) = v88 - 956 * ((4492644 * v88) >> 32);
  v726 = (821 * (((v422 & 0xF ^ 0x296557CA) - 694507516) ^ ((v422 & 0xF ^ 0xB7EEA1F2) + 1209097788) ^ ((v422 & 0xF) + 42)) + 588657) % 0x3BC;
  v724 = (821 * (((STACK[0x5D4] & 0xF ^ 0xB1DAFDE5) + 1311048398) ^ ((STACK[0x5D4] & 0xF ^ 0x63592ECA) - 1666788893) ^ (STACK[0x5D4] & 0xF ^ 7 | 0xFFFFFF30)) + 720838) % 0x3BC;
  v728 = (LODWORD(STACK[0x578]) ^ 0xE2615A36) + 2101978916;
  LODWORD(v88) = LODWORD(STACK[0x590]) ^ v728;
  LODWORD(STACK[0x478]) = v728 ^ 0x326D7AE5;
  v730 = ((2 * (v88 - (v728 ^ 0x326D7AE5))) & 0xDEFF97FE) + ((v88 - (v728 ^ 0x326D7AE5)) ^ 0xEF7FCBFF);
  v433 = (LODWORD(STACK[0x568]) ^ 0xE2615A36) + 2101978916;
  v734 = (((v433 ^ LODWORD(STACK[0x580]) ^ 0x32D17B8E) - 640108117) ^ ((v433 ^ LODWORD(STACK[0x580]) ^ 0xA8AA68CC) + 1134799593) ^ ((v433 ^ LODWORD(STACK[0x580]) ^ 0x9A7B1342) + 1903350119)) - (((v433 ^ 0x6333319) + 873458886) ^ ((v433 ^ 0xBF9DB1D9) - 1918800378) ^ ((v433 ^ 0x8BC3F825) - 1174460422));
  v434 = LODWORD(STACK[0x3C8]) - v734;
  LOBYTE(v88) = v434 - 9;
  v435 = v434 - 843534409;
  v436 = v730 + LODWORD(STACK[0x38C]);
  v437 = v436 - 362755424;
  LODWORD(v118) = 821 * (((v436 - 362755424) >> 24) & 0xF) + 554996;
  LODWORD(v83) = 821 * (((v436 - 362755424) >> 20) & 0xF) + 554996;
  v438 = 821 * (((v436 - 362755424) >> 16) & 0xF) + 554996;
  v439 = (*(v11 + (821 * ((v436 - 362755424) >> 28) + 554996 - 956 * ((4492644 * (821 * ((v436 - 362755424) >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (v118 - 956 * ((4492644 * v118) >> 32))) << 8) ^ 0x30EB57;
  LODWORD(v118) = *(v11 + (v438 - 956 * ((4492644 * v438) >> 32)));
  v440 = v439 & ~v118 | v118 & 0xA8;
  LODWORD(v118) = 821 * ((v436 - 13664) >> 12) + 554996;
  v441 = 821 * (((v436 - 362755424) >> 8) & 0xF) + 554996;
  v442 = 821 * ((v436 - 96) >> 4) + 554996;
  LODWORD(v83) = (*(v11 + (v83 - 956 * ((4492644 * v83) >> 32))) << 12) ^ (v440 << 8) ^ 0xB7FCF1;
  v443 = *(v11 + (v118 - 956 * ((4492644 * v118) >> 32)));
  v444 = *(v11 + (v441 - 956 * ((4492644 * v441) >> 32)));
  LODWORD(v118) = v83 & (v444 ^ 0xFFFF7D);
  v445 = ((v118 | v444 & 0xE) << 8) ^ (v443 << 12);
  v446 = v445 ^ 0xAECA1508;
  v447 = *(v11 + (821 * (v436 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v436 & 0xFu) + 554996)) >> 32)));
  v448 = ((v445 ^ 0xB36B2979) & (v447 ^ 0xFFFFFF75) | v447 & 0x86) ^ (16 * *(v11 + (v442 - 956 * ((4492644 * v442) >> 32))));
  LODWORD(v119) = *(v11 + (821 * (HIWORD(v435) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v435) & 0xF) + 554996)) >> 32)));
  LODWORD(v119) = (*(v11 + (821 * ((v435 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v435 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ ((((*(v11 + (821 * (v435 >> 28) + 554996 - 956 * ((4492644 * (821 * (v435 >> 28) + 554996)) >> 32))) << 12) ^ (*(v11 + (821 * (HIBYTE(v435) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v435) & 0xF) + 554996)) >> 32))) << 8) ^ 0xFBEC34) & ~v119 | v119 & 0xCB) << 8) ^ 0xEC7E43;
  v449 = *(v11 + (821 * ((v435 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v435 >> 8) & 0xF) + 554996)) >> 32)));
  v450 = v447 & 0xF;
  v451 = *(v11 + (821 * (v88 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v88 & 0xF) + 554996)) >> 32)));
  v452 = v450 ^ 0xD108FEA9;
  LODWORD(v88) = 821 * ((v450 & 0xFFFFFF0F | (16 * (v451 & 0xF))) ^ 0x88);
  v453 = v88 + 215102 - 956 * ((4492644 * (v88 + 215102)) >> 32);
  LODWORD(v88) = *(v11 + (v88 + 572237 - 956 * ((4492644 * (v88 + 572237)) >> 32))) ^ v394;
  v454 = ((v88 ^ 0xBFAAB667) - 872264378) ^ ((v88 ^ 0x9EFC64F2) - 313221167) ^ ((v88 ^ 0x42AEC862) + 822489921);
  v455 = (v119 & (v449 ^ 0xFFFFCB) | v449 & 0xBC) << 8;
  LODWORD(v88) = v455 ^ (*(v11 + (821 * (v435 >> 12) + 554996 - 956 * ((4492644 * (821 * (v435 >> 12) + 554996)) >> 32))) << 12);
  v456 = *(v11 + (821 * ((v435 >> 4) + 676) - 956 * ((4492644 * (821 * ((v435 >> 4) + 676))) >> 32))) ^ ((v88 | v451) >> 4);
  v457 = *(v11 + v453) ^ (*(v11 + (821 * v454 - 1398864656) % 0x3BCu) >> 4);
  v458 = v448 >> 4;
  LODWORD(STACK[0x5D4]) = v458 ^ 0x5BB697C6;
  v459 = 821 * ((v458 & 0xFFFFFF0F | (16 * (v456 & 0xF))) ^ 7);
  v460 = *(v11 + (v459 + 572237 - 956 * ((4492644 * (v459 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v457 ^ 0x4F018120) - 1325498849) ^ ((v457 ^ 0xBD218F3A) + 1121873925) ^ ((v457 ^ 0xF2200E9A) + 232780197)) + 625602) % 0x3BC));
  v461 = v459 + 215102 - 956 * ((4492644 * (v459 + 215102)) >> 32);
  v462 = 821 * (((v460 ^ 0xD1912F2D) - 486127899) ^ ((v460 ^ 0xF4611D21) - 956926743) ^ ((v460 ^ 0x25F03A04) + 392647630));
  v463 = (v462 - 1064552413) % 0x3BC;
  v464 = *(v11 + v461) ^ (*(v11 + (v462 - 1064909548) % 0x3BC) >> 4);
  v465 = (v448 >> 8) & 0xF;
  v466 = *(v11 + (821 * v454 - 1398507521) % 0x3BCu) ^ 0xBEBBB247;
  v467 = 821 * (((v456 & 0x90 ^ 0x4779238F) & (v465 ^ 0x47792394) | v456 & 0x60) ^ 0x477923BC);
  v468 = *(v11 + (v467 + 572237) % 0x3BCu) ^ (16 * *(v11 + (821 * (((v464 ^ 0x807F83E3) + 2139126917) ^ ((v464 ^ 0x96E4EDAA) + 1763381966) ^ ((v464 ^ 0x169B6EC9) - 379285073)) + 591941) % 0x3BC)) ^ 0x808;
  v469 = *(v11 + (821 * v468 + 572237 - 956 * ((4492644 * (821 * v468 + 572237)) >> 32))) ^ 0x4B;
  v470 = *(v11 + (v467 + 215102) % 0x3BCu) ^ (*(v11 + -531465427 * (v468 + 262) * (((v468 + 262) | (-263 - v468)) & 0xEE4D0D29) % 0x3BC) >> 4);
  v471 = v88 ^ 0x4A4B00;
  LODWORD(v88) = 821 * (((v470 ^ 0xCFC77F2B) + 809009355) ^ ((v470 ^ 0x8D497C76) + 1924563864) ^ ((v470 ^ 0x428E03DD) - 1116603331)) + 701955;
  v472 = 821 * (((v471 >> 8) & 0xF0 | ((v445 ^ 0x1508) >> 12)) ^ 6);
  LODWORD(v88) = *(v11 + (v472 + 572237 - 956 * ((4492644 * (v472 + 572237)) >> 32))) ^ (16 * *(v11 + v88 % 0x3BC));
  v473 = v472 + 215102 - 956 * ((4492644 * (v472 + 215102)) >> 32);
  LODWORD(v88) = 821 * (((v88 ^ 0x1613F61D) + 303524709) ^ ((v88 ^ 0xC5FEF08A) - 1040552460) ^ ((v88 ^ 0xD3ED0E9F) - 672558105));
  v474 = *(v11 + (v88 + 492139699) % 0x3BCu) ^ 0x4D3CE4E6;
  LODWORD(v88) = *(v11 + v473) ^ (*(v11 + (v88 + 491782564) % 0x3BCu) >> 4);
  v475 = 821 * (((v471 >> 12) & 0xF0 | ((v445 ^ 0xAECA1508) >> 16) & 0xF) ^ 1);
  LODWORD(v88) = *(v11 + (v475 + 572237 - 956 * ((4492644 * (v475 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v88 ^ 0xAD9D6833) + 1382193108) ^ ((v88 ^ 0xB1CF8F02) + 1311797475) ^ ((v88 ^ 0x1C52E7B1) - 475195310)) + 702776) % 0x3BC));
  LODWORD(v88) = 821 * (((v88 ^ 0x9BD0BF60) - 845669371) ^ ((v88 ^ 0x7745D118) + 554529405) ^ ((v88 ^ 0xEC956670) - 1159871211));
  v476 = (v88 + 1224406716) % 0x3BCu;
  LODWORD(v88) = *(v11 + (v475 + 215102 - 956 * ((4492644 * (v475 + 215102)) >> 32))) ^ (*(v11 + (v88 + 1224049581) % 0x3BCu) >> 4);
  v477 = 821 * ((HIWORD(v471) & 0xF0 | (v83 >> 12)) ^ 0xA);
  LODWORD(v88) = *(v11 + (v477 + 572237 - 956 * ((4492644 * (v477 + 572237)) >> 32))) ^ (16 * *(v11 + (821 * (((v88 ^ 0xBDFE5089) + 1107406835) ^ ((v88 ^ 0xC3ACEE82) + 1012077050) ^ ((v88 ^ 0x7E52BE8B) - 2119351823)) + 575521) % 0x3BC));
  LODWORD(v88) = 821 * (((v88 ^ 0xBC899A3F) + 681178948) ^ ((v88 ^ 0x69406BCF) - 45087052) ^ ((v88 ^ 0xD5C9F9F8) + 1104778373));
  v478 = *(v11 + (v477 + 215102 - 956 * ((4492644 * (v477 + 215102)) >> 32))) ^ (*(v11 + (v88 + 661514245) % 0x3BCu) >> 4);
  LODWORD(v88) = *(v11 + (v88 + 661871380) % 0x3BCu);
  v479 = v88 ^ 0x1B3C045B;
  LODWORD(v88) = v88 & 0xF;
  LODWORD(v88) = 16 * (((((v88 ^ 0xFFFFFFD1) + 26) ^ (v88 + 41) ^ ((v88 ^ 0xE6) + 47)) + (((v88 ^ 0x61) + 40) ^ ((v88 ^ 0xFFFFFF8A) - 51) ^ ((v88 ^ 0xFFFFFFE3) - 90)) - 31) & HIBYTE(v455));
  v480 = WORD1(v83) & 0xF;
  LODWORD(v88) = 821 * (((v480 ^ 0x93B014A9) & ~v88 | v88 & 0xB50) ^ 0x93B014A5);
  v481 = *(v11 + (v88 + 572237) % 0x3BCu) ^ (16 * (*(v11 + (821 * (((v478 ^ 0x39ED46E4) - 971851440) ^ ((v478 ^ 0x92B844A3) + 1833417481) ^ ((v478 ^ 0xAB5502C7) + 1420492141)) + 746289) % 0x3BC) ^ 0x88));
  v482 = 821 * (((v481 ^ 0xDBF9D2B8) - 513981621) ^ ((v481 ^ 0x3128D567) + 193741974) ^ ((v481 ^ 0xEAD10757) - 797600090));
  LODWORD(v88) = *(v11 + (v88 + 215102) % 0x3BCu) ^ (*(v11 + (v482 - 298010425) % 0x3BC) >> 4);
  LOBYTE(v482) = *(v11 + (v482 - 297653290) % 0x3BC) ^ 0x27;
  LODWORD(v118) = v118 >> 20;
  LODWORD(v88) = *(v11 + (821 * (v118 ^ 0x4000A40E ^ (WORD1(v119) & 0xF0 | 0x4000A40B)) + 572237) % 0x3BC) ^ (16 * *(v11 + (821 * (((v88 ^ 0xE4ABDE80) + 458498532) ^ ((v88 ^ 0xEA3D2116) + 365092470) ^ ((v88 ^ 0xE96FF16) - 244776842)) + 595225) % 0x3BC));
  LOBYTE(v119) = *(v11 + v463) ^ 0xEF;
  v483 = 821 * ((((v119 ^ (16 * v469)) & 0xF0 ^ 0x6914F131) & (v465 ^ 0xEF14F7F7) | (v448 >> 8) & 0xE) ^ 0x6914F169) % 0x3BC;
  v484 = (*(v11 + v476) << 16) ^ (v474 << 12);
  v485 = *(v11 + 821 * ((((16 * v466) | 0xD108FE0F) & v452 | (16 * v466) & 0x50) ^ 0xD108FEF1) % 0x3BC);
  LODWORD(v119) = v485 ^ (16 * *(v11 + 821 * ((((v466 ^ (16 * v119)) & 0xC0 ^ 0x5BB6974F) & STACK[0x5D4] | (v466 ^ (16 * v119)) & 0x30) ^ 0x5BB697F1u) % 0x3BC));
  v486 = v119 ^ (*(v11 + v483) << 8) ^ 0xB454F49A;
  v487 = 821 * (((v469 ^ (16 * v474)) & 0xF0 | (v446 >> 12)) ^ 0x26);
  LODWORD(v88) = 821 * (((v482 ^ (16 * *(v11 + (821 * (((v88 ^ 0x8D842CD9) + 804323188) ^ ((v88 ^ 0xA6CB22D7) + 79688062) ^ ((v88 ^ 0x2B4F0606) - 1992567379)) - 12297842) % 0x3BC))) & 0xF0 ^ 0xC5EFD5BF) & (v118 ^ 0xC5EFD5FA) ^ 0xC5EFD59F);
  LODWORD(v118) = v486 ^ (*(v11 + (v487 - 956 * ((4492644 * v487) >> 32))) << 12);
  v488 = (*(v11 + 821 * (((((v484 ^ (v479 << 20)) >> 16) & 0xF0 ^ 0x44A359CD) & ((v83 >> 12) ^ 0xDCF759F7) | (v83 >> 12) & 2) ^ 0x44A3593F) % 0x3BC) << 20) ^ (*(v11 + 821 * ((((v484 >> 12) & 0xF0 ^ 0xB64931D6) & (HIWORD(v446) & 0xF ^ 0xB64931F7) | HIWORD(v446) & 9) ^ 0xB6493137) % 0x3BC) << 16) ^ v118 ^ ((*(v11 + 821 * (((v479 ^ (16 * v482)) & 0xE0 ^ 0xB1D41DCF) & (v480 ^ 0xB1D41DE6) ^ (((v479 ^ (16 * v482)) & 0x10) - 1311498774)) % 0x3BC) ^ 0x42) << 24);
  LODWORD(v83) = v488 ^ 0xC0B19E99;
  LODWORD(v88) = 821 * (((v488 ^ 0xC0B19E99 ^ ((*(v11 + v88 % 0x3BC) ^ 8) << 28)) >> 28) ^ 0xB) + 537755;
  v489 = 821 * (HIBYTE(v488) & 0xF ^ 6) + 537755;
  v490 = v489 - 956 * ((4492644 * v489) >> 32);
  v491 = 821 * ((v83 >> 20) & 0xF ^ 0xE) + 537755;
  LODWORD(v83) = 821 * (WORD1(v83) & 0xF ^ 5) + 537755;
  v492 = v83 - 956 * ((4492644 * v83) >> 32);
  LODWORD(v118) = 821 * (~(v118 >> 12) & 0xF) + 537755;
  v493 = v118 - 956 * ((4492644 * v118) >> 32);
  LODWORD(v118) = 821 * ((v486 >> 8) & 0xF ^ 4) + 537755;
  v494 = v118 - 956 * ((4492644 * v118) >> 32);
  LODWORD(v118) = 821 * (v119 >> 4) + 537755 - 956 * ((4492644 * (821 * (v119 >> 4) + 537755)) >> 32);
  LODWORD(v119) = (821 * (((v485 & 0xF ^ 0xBCE9AD4E) + 1125536422) ^ (v485 ^ 4 | 0xFFFFFFF0) ^ ((v485 & 0xF ^ 0x3CBE41E2) - 1019101686)) + 560743) % 0x3BC;
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x588]) ^ 0xC2BF609C;
  LODWORD(STACK[0x5B0]) = LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5A0]);
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x4B0])) << 8;
  v495 = ((v83 ^ 0xFF5112) & ((*(v11 + LODWORD(STACK[0x4C0])) << 20) ^ (*(v11 + LODWORD(STACK[0x4B8])) << 16) ^ 0x58D112) | v83 & 0x2E00) ^ (*(v11 + LODWORD(STACK[0x4D0])) << 12) ^ 0x27AEF9;
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x4A8]));
  LODWORD(STACK[0x420]) = 16777079;
  v496 = (*(v11 + LODWORD(STACK[0x4C8])) << 12) ^ ((v495 & (v83 ^ 0xFFFF77) ^ v83 & 0x14) << 8) ^ 0x45E80D21;
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x4A0]));
  v497 = v496 & (v83 ^ 0xFFFFFFB9) | v83 & 0xDE;
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4F0]) ^ (16 * *(v11 + LODWORD(STACK[0x418]))) ^ 0x6DD604BD ^ ((((((*(v11 + LODWORD(STACK[0x424])) << 12) ^ (*(v11 + LODWORD(STACK[0x41C])) << 8) ^ 0x2D41) & ~*(v11 + v744) | *(v11 + v744) & 0xBE) << 16) ^ ((((*(v11 + LODWORD(STACK[0x490])) << 12) | (16 * *(v11 + LODWORD(STACK[0x414])))) ^ *(v11 + v742)) << 8) ^ 0xF8D79AF6) & (*(v11 + v740) ^ 0xFFFFFF7E) | *(v11 + v740) & 9);
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x4F8]);
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x448]));
  v498 = (*(v11 + LODWORD(STACK[0x470])) << 12) ^ (((v83 ^ 0xDFFF56) & ((*(v11 + LODWORD(STACK[0x468])) << 12) ^ (*(v11 + LODWORD(STACK[0x460])) << 8) ^ 0xD52EDE) | v83 & 0x21) << 8) ^ 0xE65353;
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x450]));
  LODWORD(STACK[0x41C]) = 16777203;
  v499 = (*(v11 + LODWORD(STACK[0x488])) << 12) ^ ((v498 & (v83 ^ 0xFFFFF3) | v83 & 0xAC) << 8) ^ 0x28E3DA2F;
  LODWORD(v83) = *(v11 + LODWORD(STACK[0x440]));
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x518]) ^ 0xB8409EC3 ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x518]) = (LODWORD(STACK[0x508]) - ((2 * LODWORD(STACK[0x500])) & 0xB96EA862) - 1807709413) ^ (16 * *(v11 + LODWORD(STACK[0x458]))) ^ (v83 & 0xD0 | 0xB100A00) ^ 0xB741D71E ^ v499 & (v83 ^ 0xFFFFFF27);
  v500 = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x578]);
  LODWORD(v83) = *(v11 + v726);
  v501 = LODWORD(STACK[0x568]) ^ (16 * *(v11 + LODWORD(STACK[0x428]))) ^ 0xA66B9B2D ^ (((*(v11 + LODWORD(STACK[0x438])) << 12) ^ (((((*(v11 + LODWORD(STACK[0x42C])) << 12) ^ 0x5558A2 ^ (((*(v11 + v736) ^ 0x1FFF51) & ((*(v11 + LODWORD(STACK[0x430])) << 12) ^ (*(v11 + v738) << 8) ^ 0x97D9) | *(v11 + v736) & 0x26) << 8)) & (*(v11 + v732) ^ 0xFFFF62)) + (*(v11 + v732) & 0x5D)) << 8) ^ 0x42926361) & (v83 ^ 0xFFFFFFFB) | v83 & 0x9E);
  v502 = v433 ^ (16 * *(v11 + LODWORD(STACK[0x4E0]))) ^ ((LODWORD(STACK[0x4E8]) ^ 0x8D30FD3) & (*(v11 + v724) ^ 0xFFFFFF7F) | *(v11 + v724) & 0x2C) ^ 0x8CD33C0D;
  v503 = v728 ^ 0x26F0DA44 ^ LODWORD(STACK[0x510]);
  v504 = (LODWORD(STACK[0x520]) ^ ((LODWORD(STACK[0x528]) ^ 0x15AD4EFD) + 1650260789)) - LODWORD(STACK[0x580]);
  LODWORD(v83) = (LODWORD(STACK[0x530]) ^ (((LODWORD(STACK[0x540]) + 1173262699) ^ 0x15AD4EFD) + 1650260789)) - LODWORD(STACK[0x590]);
  LODWORD(v88) = (*(v11 + v492) ^ 0xFFFFFF7F) & ((*(v11 + (v88 - 956 * ((4492644 * v88) >> 32))) << 12) ^ (*(v11 + v490) << 8) ^ 0xC496) | *(v11 + v492) & 0x69;
  v505 = ((*(v11 + (v491 - 956 * ((4492644 * v491) >> 32))) << 12) | (16 * *(v11 + v493))) ^ *(v11 + v494);
  v506 = LODWORD(STACK[0x590]) + 38616395 + (v728 ^ LODWORD(STACK[0x548])) - v83;
  v507 = STACK[0x560];
  LODWORD(v83) = v83 - 38616395;
  v508 = v83 ^ LODWORD(STACK[0x478]);
  LODWORD(v406) = v508 ^ 0x26F0DA44 ^ v437;
  v509 = (v433 ^ LODWORD(STACK[0x538])) + LODWORD(STACK[0x580]) - v504;
  v510 = *(v11 + v119);
  LODWORD(v119) = (v504 - 38616395) ^ v433;
  v511 = v119 ^ v510 ^ (16 * *(v11 + v118)) ^ (v88 << 16) ^ (v505 << 8) ^ 0x909C18BB;
  v512 = ((v508 + v83) ^ 0x3F4D8BEB) - 552461997;
  v513 = v508 + 1314815558 + (v506 ^ 0x84EA47B0);
  v514 = (v506 + 276837377 + v730) ^ 0xF348737;
  v515 = (v119 ^ 0x326D7AE5) + 1792539410 + ((v509 + 38616395) ^ 0x84EA47B0);
  v516 = (v509 + 395649120 + v734) ^ 0xA6F073CE;
  LODWORD(STACK[0x5A0]) = LODWORD(STACK[0x558]) ^ (16 * *(v11 + LODWORD(STACK[0x4D8]))) ^ 0xEA3C209A ^ v497;
  LODWORD(STACK[0x578]) = LODWORD(STACK[0x598]) ^ 0x7DCF23C;
  v517 = LODWORD(STACK[0x388]) - 275344257;
  v518 = v506 ^ 0x61DA3611;
  v519 = (v509 + 38616395) ^ 0x61DA3611;
  v520 = ((v119 ^ 0x326D7AE5) + v504 - 38616395) ^ 0x3F4D8BEB;
  v521 = -v519;
  LODWORD(STACK[0x590]) = 1017593855;
  LODWORD(STACK[0x580]) = STACK[0x3D4];
  v522 = STACK[0x5C4];
  LODWORD(STACK[0x538]) = v511;
  v522 += 1838;
  LODWORD(STACK[0x428]) = v522;
  v523 = v522 ^ 0x66E76DA1 ^ v500;
  HIDWORD(v524) = v501;
  LODWORD(v524) = v501;
  LODWORD(v83) = (v524 >> 6) ^ __ROR4__(v501, 11);
  v525 = __PAIR64__(v523, __ROR4__(v501, 25));
  LODWORD(v83) = v83 ^ v525 ^ 0xF44977E7;
  LODWORD(STACK[0x540]) = v406;
  LODWORD(STACK[0x558]) = v502;
  LODWORD(STACK[0x424]) = v500;
  LODWORD(STACK[0x568]) = v503;
  LODWORD(STACK[0x550]) = v501;
  LODWORD(v118) = v406 ^ v511 & 0x58A92186 ^ v500 & (v406 ^ 0x347B452C) ^ v523 & 0x128B9F68 ^ v501 & 0x4E7F3451 ^ (v501 ^ 0x7E59FBC2) & (v511 ^ 0x66E76256) ^ (v501 ^ 0x26F0DA44) & (v502 ^ 0x28985607) ^ v503 & 0x912FFAD1 ^ (v503 ^ 0x26F0DA44) & (v500 ^ 0x912FFAD1) ^ 0x60E3E564;
  v526 = v511 ^ v406 & 0xD38E99E7 ^ v500 & (v511 ^ 0xEA1CB974) ^ v500 & (v502 ^ 0xC04E52A8) ^ v523 & 0x2A52EBDC ^ v501 & 0x9871ACD8 ^ (v501 ^ 0xF57E43A3) & (v406 ^ 0x26F0DA44) ^ (v503 ^ 0xBE81769C) & (v501 ^ 0x26F0DA44);
  LODWORD(STACK[0x530]) = v507 - 1017593042;
  STACK[0x598] = (25 * (v507 - 15570) + 1359) % 0x11Au;
  LODWORD(v525) = v523;
  LODWORD(STACK[0x560]) = v523;
  v527 = (v525 >> 6) ^ __ROR4__(v523, 11) ^ __ROR4__(v523, 25);
  LODWORD(v119) = (v512 + 552461997) ^ v513 ^ ((v513 ^ 0x59B60038) - 310841247) ^ ((v513 ^ 0xA3E130D3) + 389005452) ^ ((v513 ^ 0x4CF1C0B3) - 130076436) ^ ((v513 ^ 0xFD97FFFF) + 1230573480) ^ 0x2BD765F1 ^ v527;
  v528 = ((v119 - 734312314 - ((2 * v119) & 0xA876910C)) ^ v83) - v119;
  LODWORD(v119) = ((2 * (v515 ^ 0x7A07582E)) ^ 0xC4A45746) & (v515 ^ 0x7A07582E) ^ (2 * (v515 ^ 0x7A07582E)) & 0xE2522BA2;
  v529 = v119 ^ 0x225228A1;
  LODWORD(v406) = 2 * (v515 & 0x9855738D);
  LODWORD(v119) = (v119 ^ 0xC0002280) & (4 * (v406 & (v515 ^ 0x5A057B2C) ^ v515 & 0x9855738D)) ^ v406 & (v515 ^ 0x5A057B2C) ^ v515 & 0x9855738D;
  v530 = ((4 * v529) ^ 0x8948AE8C) & v529 ^ (4 * v529) & 0xE2522BA0;
  LODWORD(v119) = (v530 ^ 0x80402A80) & (16 * v119) ^ v119;
  v531 = ((16 * (v530 ^ 0x62120123)) ^ 0x2522BA30) & (v530 ^ 0x62120123) ^ (16 * (v530 ^ 0x62120123)) & 0xE2522BA0;
  LODWORD(v119) = v119 ^ 0xE2522BA3 ^ (v531 ^ 0x20022A83) & (v119 << 8);
  v532 = v83 ^ (v520 - 734312314 - ((2 * v520) & 0xA876910C));
  LODWORD(v119) = v515 ^ v83 ^ (2 * ((v119 << 16) & 0x62520000 ^ v119 ^ ((v119 << 16) ^ 0x2BA30000) & (((v531 ^ 0xC2500183) << 8) & 0x62520000 ^ 0x20500000 ^ (((v531 ^ 0xC2500183) << 8) ^ 0x522B0000) & (v531 ^ 0xC2500183)))) ^ 0xCCCE6C4D;
  v533 = ((v527 ^ 0x320E6661) + 1816355618) ^ ((v527 ^ 0xD4F1A6A5) - 1967348762) ^ ((v527 ^ 0x8619AA92) - 665538605);
  v534 = (v532 - v520) ^ v528 ^ 0xA019D671 ^ (v119 - v515 - ((2 * (v119 - v515) + 1330976998) & 0x4033ACE2) + 130310884);
  LODWORD(v119) = ((2 * (v515 ^ 0xCB2F8EC6)) ^ 0xA6F5FA96) & (v515 ^ 0xCB2F8EC6) ^ (2 * (v515 ^ 0xCB2F8EC6)) & 0x537AFD4A;
  v535 = (v119 ^ 0x1270D900) & (4 * (v406 & (v515 ^ 0xDB056BCC) ^ v515 & 0x9855738D)) ^ v406 & (v515 ^ 0xDB056BCC) ^ v515 & 0x9855738D;
  LODWORD(v119) = ((4 * (v119 ^ 0x510A0549)) ^ 0x4DEBF52C) & (v119 ^ 0x510A0549) ^ (4 * (v119 ^ 0x510A0549)) & 0x537AFD48;
  v536 = (v119 ^ 0x416AF500) & (16 * v535) ^ v535;
  LODWORD(v119) = ((16 * (v119 ^ 0x12100843)) ^ 0x37AFD4B0) & (v119 ^ 0x12100843) ^ (16 * (v119 ^ 0x12100843)) & 0x537AFD40;
  v537 = v536 ^ 0x537AFD4B ^ (v119 ^ 0x132AD400) & (v536 << 8);
  v538 = v519 ^ v515 ^ (2 * ((v537 << 16) & 0x537A0000 ^ v537 ^ ((v537 << 16) ^ 0x7D4B0000) & (((v119 ^ 0x4050294B) << 8) & 0x537A0000 ^ 0x1020000 ^ (((v119 ^ 0x4050294B) << 8) ^ 0x7AFD0000) & (v119 ^ 0x4050294B)))) ^ 0xC7B02369;
  LODWORD(v119) = v518 ^ v513 ^ ((v513 ^ 0x4E1F882D) - 86935434) ^ ((v513 ^ 0xFE444F60) + 1250606905) ^ ((v513 ^ 0x152747) - 1260660960) ^ ((v513 ^ 0xFB7FEFAD) + 1337008118) ^ 0xF576C635;
  v539 = v513 + 823877474;
  LODWORD(v406) = v512 - (v514 ^ 0xB99382DB);
  v540 = (v514 ^ 0xB99382DB) - ((2 * (v514 ^ 0xB99382DB)) & 0x7C8F9324) - 1102591598;
  v541 = v515 + 346153622;
  v542 = v515 - ((2 * (v515 + 346153622)) & 0xB70954E4) + 1881574664;
  v543 = v520 - (v516 ^ 0x10577622);
  v544 = v119 ^ (v513 - ((2 * (v513 + 823877474)) & 0x7C8F9324) - 278714124);
  v545 = v406 + 915464320;
  v546 = (v406 + 915464320) ^ v526 ^ 0xB2FC60B1 ^ (v544 - ((2 * v544) & 0xE952E16E) - 190222153);
  v547 = v119 ^ v540;
  v548 = v119 ^ (v406 - 2 * ((v406 + 915464320) & 0x3E47C993 ^ v406 & 1) - 187127278);
  v549 = 2 * (v543 + 363002323);
  LODWORD(v119) = ((v546 + 39966566 - ((2 * v546) & 0x4C3AECC)) ^ v118) - v546;
  v550 = v538 ^ v542;
  v551 = v118 ^ (v543 - (v549 & 0x4C3AECC) + 402968889);
  v552 = (v550 + 39966566 - ((2 * v550) & 0x4C3AECC)) ^ v118;
  v553 = v538 ^ ((v516 ^ 0x10577622) + 1535421042 - 2 * ((v516 ^ 0x10577622) & 0x5B84AA7B ^ v516 & 9));
  LODWORD(v119) = ((v551 - (v543 + 363002323)) ^ 0x4F16ADA5 ^ v119 ^ (v552 - v550 + 1326886309 - ((2 * (v552 - v550)) & 0x9E2D5B4A))) - (v538 ^ (v543 + 1898423365 - (v549 & 0xB70954E4)));
  v554 = v119 ^ 0xBE172747;
  v555 = (2 * v119) & 0x7C2E4E8E;
  v556 = v544 - v547;
  v557 = v539 ^ v545;
  v558 = v547 ^ v545 ^ (v556 - 388328297 + (~(2 * v556) | 0x2E4AD6D1) + 1);
  LODWORD(STACK[0x480]) = v558;
  v559 = v541 ^ (v543 + 363002323);
  v560 = v550 - v553;
  v561 = (v543 + 363002323) ^ 0x6345B04C ^ (v550 - v553) ^ (v553 + 1665511500 - ((2 * v553) & 0xC68B6098));
  v562 = 5 * (v507 ^ 0x2D);
  if ((v507 ^ 0x2Du) >= 0x27)
  {
    v562 -= 192;
  }

  v563 = *(&off_1002A2080 + LODWORD(STACK[0x5C4]) - 2197) - 8;
  v564 = *&v563[4 * v562];
  v565 = v507;
  v566 = STACK[0x5C8];
  v567 = v556 + 741285600;
  v568 = v521 + v517 + v548 + *(STACK[0x5C8] + 4 * ((25 * v507) % 0x11Au)) + (v507 ^ 0x8ECC629E ^ *&v563[4 * ((5 * (v507 ^ 6) + 465) % 0xC0u)]) + (v526 ^ 0x46551006) - 2116232871;
  LODWORD(STACK[0x4B0]) = v557 - v567;
  LODWORD(v563) = v568 + v534;
  LODWORD(STACK[0x488]) = v568 + v534;
  HIDWORD(v569) = v564;
  LODWORD(v569) = v564;
  v570 = v559 - (v560 + 741285600);
  LODWORD(STACK[0x4A8]) = v570;
  v571 = v518 + LODWORD(STACK[0x580]) + v533 + ((v569 >> 30) ^ ((v569 >> 30) >> 5) ^ ((v569 >> 30) >> 1) ^ 0xF5291552) + *(v566 + 4 * STACK[0x598]) + v554 + v555 + 1856868874;
  LODWORD(STACK[0x450]) = v571;
  LODWORD(v566) = (v557 - v567) ^ 0x455D12FD;
  v572 = (v558 ^ 0xE8DA9497) - v566;
  v573 = v553 ^ 0x2DADC505 ^ (v560 + 741285600);
  v574 = (v547 ^ 0x2DADC505 ^ v567) - v572 - 1449504497;
  v575 = (v558 ^ 0xE8DA9497) + v567;
  v576 = v561 + v560 + 741285600;
  v577 = v575 ^ v566;
  v578 = v574 ^ v575;
  LODWORD(v566) = (v574 - (v574 ^ v575)) ^ ((v575 ^ v566) + 1009054622);
  v579 = v561 - (v570 ^ 0x455D12FD);
  v580 = v573 - 1449504497 - v579;
  v581 = v576 ^ v570 ^ 0x455D12FD;
  v582 = v580 ^ v576;
  LODWORD(STACK[0x598]) = v580 ^ v576;
  v583 = (v580 - (v580 ^ v576)) ^ (v581 + 1009054622);
  LODWORD(STACK[0x4A0]) = v581;
  LODWORD(STACK[0x468]) = v579 - v581;
  v584 = (v579 - v581) ^ v580;
  v585 = v584 + 314659869;
  LODWORD(STACK[0x580]) = v584;
  v586 = v584 + v581;
  LODWORD(STACK[0x528]) = v586;
  v586 -= 669597765;
  LODWORD(STACK[0x4E0]) = v585;
  v587 = v586 ^ v585;
  v588 = v582 - (v586 ^ v585);
  v589 = v588 - 2108659495;
  v590 = v588 - ((2 * (v588 - 2108659495)) & 0x70813D86) + 982583196;
  LODWORD(STACK[0x498]) = v577;
  LODWORD(STACK[0x458]) = v572 - v577;
  v591 = (v572 - v577) ^ v574;
  LODWORD(STACK[0x4E8]) = v591;
  v592 = v591 + 314659869;
  LODWORD(STACK[0x510]) = v591 + v577;
  v593 = v591 + v577 - 669597765;
  v594 = v593 ^ (v591 + 314659869);
  v595 = v592;
  LODWORD(STACK[0x4F8]) = v592;
  v596 = v578 - v594 - 2108659495;
  LODWORD(STACK[0x500]) = v596;
  v597 = v578 - v594 - ((2 * v596) & 0x1157F0A8) - 1963171539;
  LODWORD(v566) = (v566 + v595) ^ v594;
  v594 -= 513315420;
  LODWORD(STACK[0x520]) = v594;
  v598 = STACK[0x518];
  v599 = STACK[0x588];
  v600 = (((LODWORD(STACK[0x518]) ^ v594 ^ 0x8ABF854 ^ v597) - 1203724605 - ((2 * (LODWORD(STACK[0x518]) ^ v594 ^ 0x8ABF854 ^ v597)) & 0x70813D86)) ^ LODWORD(STACK[0x588])) - (LODWORD(STACK[0x518]) ^ v594 ^ 0x8ABF854 ^ v597);
  v601 = v586 ^ v585 ^ (v583 + v585);
  v602 = (v586 ^ v585) - 513315420;
  LODWORD(STACK[0x508]) = v602;
  v603 = v589;
  LODWORD(STACK[0x4D0]) = v589;
  v604 = v600 ^ 0xF56CC52D ^ ((v590 ^ v599) - v589) ^ (((v587 - ((2 * v602) & 0x70813D86) - 1717040025) ^ v599) - v602 - 177421011 - ((2 * (((v587 - ((2 * v602) & 0x70813D86) - 1717040025) ^ v599) - v602)) & 0xEAD98A5A));
  v605 = v593 - v596 + v566;
  LODWORD(STACK[0x4F0]) = v605;
  LODWORD(STACK[0x490]) = v605 + 905469896;
  LODWORD(v566) = v605 + 905469896 + v593 - v596;
  LODWORD(STACK[0x518]) = v566 + 282964034;
  v606 = v566 + v598 - 977793380 + v563;
  v607 = STACK[0x5D8];
  v608 = *(STACK[0x5D8] + (821 * (HIWORD(v606) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v606) & 0xF) + 554996)) >> 32)));
  v609 = (v608 ^ 0xBFFF73) & ((*(STACK[0x5D8] + (821 * (v606 >> 28) + 554996 - 956 * ((4492644 * (821 * (v606 >> 28) + 554996)) >> 32))) << 12) ^ (*(STACK[0x5D8] + (821 * (HIBYTE(v606) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v606) & 0xF) + 554996)) >> 32))) << 8) ^ 0xBB56F3) | v608 & 0xC;
  v610 = v586 - v603;
  LODWORD(STACK[0x4D8]) = v610;
  v611 = v610 + v601;
  LODWORD(STACK[0x4C8]) = v611;
  LODWORD(v566) = v611 - (((-282964035 - v566) & 0xF9E2F616) + ((v566 + 282964034) & 0xF9E2F616));
  LODWORD(STACK[0x440]) = v566;
  v612 = v571 - v610 - v566 + 804806701 + v604;
  LODWORD(STACK[0x4C0]) = v606;
  v613 = 821 * ((v606 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v606 >> 8) & 0xF) + 554996)) >> 32);
  v614 = 821 * (v606 >> 4) + 554996 - 956 * ((4492644 * (821 * (v606 >> 4) + 554996)) >> 32);
  v615 = 821 * (v606 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v606 & 0xF) + 554996)) >> 32);
  v616 = *(v607 + (821 * (v606 >> 12) + 554996 - 956 * ((4492644 * (821 * (v606 >> 12) + 554996)) >> 32)));
  v617 = (*(v607 + (821 * ((v606 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v606 >> 20) & 0xF) + 554996)) >> 32))) << 12) ^ (v609 << 8) ^ 0x488BBD;
  LODWORD(STACK[0x460]) = v617;
  v618 = *(v607 + v613);
  v619 = *(v607 + v615);
  v620 = v617 & (v618 ^ 0xFFFF75);
  LODWORD(STACK[0x478]) = v620;
  LODWORD(v566) = ((v620 | v618 & 0x42) << 8) ^ (v616 << 12);
  LODWORD(STACK[0x42C]) = v566;
  v621 = ((v566 ^ 0xDFAE3E60) & (v619 ^ 0xFFFFFFE8) | v619 & 0xFFFFFF9F) ^ (16 * *(v607 + v614));
  v622 = *(v607 + (821 * (HIWORD(v612) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIWORD(v612) & 0xF) + 554996)) >> 32)));
  v623 = 821 * (v612 >> 4) + 554996 - 956 * ((4492644 * (821 * (v612 >> 4) + 554996)) >> 32);
  v624 = ((*(v607 + (821 * ((v612 >> 20) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v612 >> 20) & 0xF) + 554996)) >> 32))) << 12) | (16 * *(v607 + (821 * (v612 >> 12) + 554996 - 956 * ((4492644 * (821 * (v612 >> 12) + 554996)) >> 32))))) ^ *(v607 + (821 * ((v612 >> 8) & 0xF) + 554996 - 956 * ((4492644 * (821 * ((v612 >> 8) & 0xF) + 554996)) >> 32)));
  v625 = (v624 << 8) ^ (((v622 ^ 0xFF34) & ((*(v607 + (821 * (v612 >> 28) + 554996 - 956 * ((4492644 * (821 * (v612 >> 28) + 554996)) >> 32))) << 12) ^ (*(v607 + (821 * (HIBYTE(v612) & 0xF) + 554996 - 956 * ((4492644 * (821 * (HIBYTE(v612) & 0xF) + 554996)) >> 32))) << 8) ^ 0xB1BC) | v622 & 0x43) << 16);
  v626 = *(v607 + (821 * (v612 & 0xF) + 554996 - 956 * ((4492644 * (821 * (v612 & 0xF) + 554996)) >> 32)));
  v627 = (v625 ^ 0xE89393B0) & (v626 ^ 0xFFFFFF30) ^ (v626 & 0x40 | 0x80406400);
  LODWORD(STACK[0x470]) = v619 & 0xF;
  v628 = 821 * ((((16 * v626) & 0xB0 ^ 0xE79E9A3F) & (v619 & 0xF ^ 0xE79E9ABA) | (16 * v626) & 0x40) ^ 0xE79E9AB2);
  v629 = (v628 + 215102) % 0x3BC;
  v630 = *(v607 + (v628 + 572237) % 0x3BC) ^ LODWORD(STACK[0x578]);
  v631 = ((v630 ^ 0x667B05C5) + 319328707) ^ ((v630 ^ 0xF10E93CD) - 2072180789) ^ ((v630 ^ 0x90A96C3C) - 438634436);
  v632 = *(v607 + v623) ^ (v627 >> 4);
  v633 = 821 * v631;
  v634 = *(v607 + v629) ^ (*(v607 + (821 * v631 + 862378874) % 0x3BC) >> 4);
  LODWORD(STACK[0x448]) = v621;
  v635 = 821 * ((((16 * v632) ^ 0xE4174CE0 | 0x1545580F) & ((v621 >> 4) ^ 0x15455886) | ((16 * v632) ^ 0xE4174CE0) & 0x70) ^ 0x154558D0);
  v636 = *(v607 + (v635 + 572237) % 0x3BC) ^ (16 * *(v607 + (821 * (((v634 ^ 0xFD9539B7) + 40552014) ^ ((v634 ^ 0x905C90F2) + 1872981769) ^ ((v634 ^ 0x6DC9A9C5) - 1841932736)) + 681430) % 0x3BC));
  v637 = 821 * (((v636 ^ 0xB232A134) - 1550111944) ^ ((v636 ^ 0xA13FF7C2) - 1332314686) ^ ((v636 ^ 0x130D5EFE) + 44356862));
  v638 = *(v607 + (v635 + 215102) % 0x3BC) ^ (*(v607 + (v637 + 1533360066) % 0x3BC) >> 4);
  LODWORD(v566) = (v621 >> 8) & 0xF;
  LODWORD(STACK[0x430]) = v566;
  v639 = 821 * ((v632 & 0xF0 ^ 0xC06F3A8F) & (v566 ^ 0xC06F3AFC) ^ 0xC06F3AF7);
  v640 = *(v607 + (v639 + 572237) % 0x3BCu) ^ (16 * *(v607 + (821 * (((v638 ^ 0xA8C9C43E) + 1463171864) ^ ((v638 ^ 0xE5DA1D70) + 438690394) ^ ((v638 ^ 0x4D13D9CE) - 1293146392)) + 642843) % 0x3BC));
  v641 = 821 * (((v640 ^ 0x27444732) - 902182039) ^ ((v640 ^ 0x2D0D0E45) - 1066368480) ^ ((v640 ^ 0xA49417F) - 415970010));
  v642 = ((*(v607 + (v641 + 1551493647) % 0x3BCu) >> 4) | 0x90) ^ *(v607 + (v639 + 215102) % 0x3BCu);
  v643 = (821 * (((v642 ^ 0xCBEBD2F3) + 873737485) ^ ((v642 ^ 0xEAC57ECF) + 356155697) ^ ((v642 ^ 0x212EAC2C) - 556706860)) + 585373) % (STACK[0x590] & 0x3BC ^ v565 & 0x3Cu);
  HIDWORD(v569) = STACK[0x5D4];
  LODWORD(v569) = STACK[0x5D4];
  v644 = (v569 >> 13) ^ __ROR4__(STACK[0x5D4], 2) ^ 0x4EF6C854 ^ (((LODWORD(STACK[0x5D4]) >> 22) ^ 0x54E92F01) & ((LODWORD(STACK[0x5D4]) << 10) ^ 0x5C82B3FF) | (LODWORD(STACK[0x5D4]) << 10) & 0xAB16D000);
  LODWORD(v566) = STACK[0x570];
  v645 = STACK[0x4B8];
  v646 = STACK[0x5A0];
  v647 = LODWORD(STACK[0x5A0]) ^ 0xB8409EC3;
  v648 = STACK[0x5B0];
  v649 = LODWORD(STACK[0x4B8]) ^ 0xB8409EC3;
  v650 = STACK[0x5A8];
  v651 = STACK[0x5B0] & v647 ^ STACK[0x570] & v649 ^ STACK[0x5B0] & v649 ^ STACK[0x5A8] & v647;
  v652 = LODWORD(STACK[0x5D4]) ^ 0xB8409EC3;
  v653 = v652 & STACK[0x5A8];
  LODWORD(STACK[0x414]) = v652;
  v654 = v651 ^ v653 ^ v652 & v566;
  LODWORD(STACK[0x588]) = v645;
  LODWORD(STACK[0x548]) = v566;
  LODWORD(STACK[0x418]) = v649;
  v655 = v645 & 0xF8AB9926 ^ v646 & 0x71B020CC ^ v647 & (v645 ^ 0x186C1BC5) ^ v648 & v566 ^ v650 & v648 ^ v650 & v566 ^ (HIDWORD(v569) ^ 0x69DC3B09) & v647 ^ (HIDWORD(v569) ^ 0x40EB07E5) & v649 ^ 0x445D3FFE;
  v656 = v567 ^ (v644 - ((2 * v644) & 0xB300F82) + 93849537) ^ 0xED429356 ^ LODWORD(STACK[0x480]);
  v657 = __ROR4__(v648, 2) ^ 0x99D714E8 ^ __ROR4__(v648, 22) ^ __ROR4__(v648, 13);
  v658 = ((v561 - 1713957656 - ((2 * v561) & 0x33AE29D0)) ^ v657) - v561;
  v659 = v572 + 85786186;
  v660 = ((v560 - 2 * ((v560 + 741285600) & 0x19D714F8 ^ v560 & 0x10) - 972672056) ^ v657) - (v560 + 741285600);
  LODWORD(STACK[0x438]) = (((v656 - 1713957656 - ((2 * v656) & 0x33AE29D0)) ^ v657) - v656) ^ 0x168977A5 ^ v658 ^ (v660 + 378107813 - ((2 * v660) & 0x2D12EF4A));
  LODWORD(STACK[0x570]) = v578 + 994948673;
  v661 = v654 ^ 0x6E917BD9 ^ (LODWORD(STACK[0x458]) + 1855028185 - ((2 * LODWORD(STACK[0x458])) & 0xDD22F7B2)) ^ ((v659 & 0x3937A004) + (v659 & 0x3937A004 ^ 0x3937A004) + v578 + 994948673 - 1954895429);
  v662 = ((LODWORD(STACK[0x598]) - 866277572 - ((2 * LODWORD(STACK[0x598])) & 0x98BB4E78)) ^ v655) - LODWORD(STACK[0x598]);
  v663 = (((v661 - 866277572 - ((2 * v661) & 0x98BB4E78)) ^ v655) - v661) ^ 0x126EFD0 ^ (((LODWORD(STACK[0x468]) - 866277572 - ((2 * LODWORD(STACK[0x468])) & 0x98BB4E78)) ^ v655) - LODWORD(STACK[0x468])) ^ (v662 + 19328976 - ((2 * v662) & 0x24DDFA0));
  v664 = LODWORD(STACK[0x440]) + 802903518;
  LODWORD(STACK[0x440]) = v664;
  LOBYTE(v578) = *(v607 + (v637 + 1533717201) % 0x3BC) ^ 0xC9;
  v665 = *(v607 + (v633 + 862736009) % 0x3BCu) ^ 0xCAA362C5;
  v666 = *(v607 + (v641 + 1551850782) % 0x3BCu) ^ 0xC389DEED;
  v667 = LODWORD(STACK[0x42C]) ^ 0x1863D19C;
  v668 = 821 * ((v624 & 0xF0 | (v667 >> 12)) ^ 0xE);
  v669 = *(v607 + (v668 + 572237 - 956 * ((4492644 * (v668 + 572237)) >> 32))) ^ (16 * *(v607 + v643));
  v670 = v668 + 215102 - 956 * ((4492644 * (v668 + 215102)) >> 32);
  v671 = 821 * (((v669 ^ 0xDBABD70) + 698691520) ^ ((v669 ^ 0x56EA55F7) + 1928709945) ^ ((v669 ^ 0x5B50E08F) + 2135913025));
  v672 = (v671 + 648894437) % 0x3BCu;
  v673 = *(v607 + v670) ^ (*(v607 + (v671 + 648537302) % 0x3BCu) >> 4);
  v674 = (v625 >> 12) & 0xF0 | HIWORD(v667) & 0xF;
  v675 = 821 * (((v673 ^ 0x9DF15DEA) + 1645126195) ^ ((v673 ^ 0x2990DCD9) - 697359614) ^ ((v673 ^ 0xB46181B3) + 1268678252)) + 709344;
  v676 = 821 * (v674 ^ 0x4B);
  v677 = *(v607 + (v676 + 572237 - 956 * ((4492644 * (v676 + 572237)) >> 32))) ^ (16 * *(v607 + v675 % 0x3BC));
  v678 = 821 * (((v677 ^ 0x35AA29D) - 720570344) ^ ((v677 ^ 0x734114B7) - 1525199298) ^ ((v677 ^ 0x701BBE22) - 1504844631));
  v679 = v678 - 1657660114;
  v680 = *(v607 + (v676 + 215102 - 956 * ((4492644 * (v676 + 215102)) >> 32))) ^ (*(v607 + (v678 - 1658017249) % 0x3BCu) >> 4);
  v681 = 821 * ((HIWORD(v625) & 0xF0 | (LODWORD(STACK[0x460]) >> 12)) ^ 0x3F);
  v682 = v679 % 0x3BC;
  v683 = *(v607 + (v681 + 572237 - 956 * ((4492644 * (v681 + 572237)) >> 32))) ^ (16 * *(v607 + (821 * (((v680 ^ 0x52915C14) - 1385258078) ^ ((v680 ^ 0xF698E6EE) + 157751644) ^ ((v680 ^ 0xA409BA7A) + 1542866384)) + 738079) % 0x3BC));
  v684 = 821 * (((v683 ^ 0x37306625) + 188313624) ^ ((v683 ^ 0xBF726B71) - 2089059004) ^ ((v683 ^ 0x8842055C) - 1270148241));
  v685 = *(v607 + (v684 + 1993000982) % 0x3BC) ^ 0x465C7544;
  v686 = *(v607 + (v681 + 214146) % 0x3BCu) ^ (*(v607 + (v684 + 1992643847) % 0x3BC) >> 4);
  v687 = (v685 << 20) ^ (*(v607 + v682) << 16);
  v688 = 821 * ((((v625 >> 20) & 0xB0 ^ 0x43CD88AF) & (HIWORD(LODWORD(STACK[0x460])) & 0xF ^ 0x43CD88B2) | (v625 >> 20) & 0x40) ^ 0x43CD88BC);
  v689 = *(v607 + (v688 + 572237) % 0x3BCu) ^ (16 * *(v607 + (821 * (((v686 ^ 0x98F5A5BD) + 1728731787) ^ ((v686 ^ 0xF015B884) + 267012020) ^ ((v686 ^ 0x68E01DB9) - 1759518065)) + 631349) % 0x3BC));
  v690 = 821 * (((v689 ^ 0x13EA1F3D) + 577506329) ^ ((v689 ^ 0xC41909CE) - 174122260) ^ ((v689 ^ 0xD7F31EFB) - 428536353));
  v691 = *(v607 + (v690 + 754159815) % 0x3BC) ^ 0xB93FACBD;
  v692 = *(v607 + (v688 + 215102) % 0x3BCu) ^ (*(v607 + (v690 + 753802680) % 0x3BC) >> 4);
  v693 = *(v607 + (821 * (((16 * (v625 >> 28)) ^ 0x3D8B3E4F) & ((LODWORD(STACK[0x478]) >> 20) ^ 0x3D8B3EF3) ^ 0x3D8B3EF2) + 572237) % 0x3BC) ^ (16 * *(v607 + (821 * (((v692 ^ 0x7875FEDB) - 2020998908) ^ ((v692 ^ 0xD4F516E5) + 722135358) ^ ((v692 ^ 0xAC80E8BE) + 1400837991)) + 709344) % 0x3BC));
  v694 = (821 * (((v693 ^ 0x5C6825E9) - 535464083) ^ ((v693 ^ 0x435138E1) - 13866395) ^ ((v693 ^ 0x1F391500u) - 1555806330)) - 2113580569) % 0x3BC;
  v695 = 821 * (((16 * (v665 & 1)) | 0x2044003) ^ 0x20440DB ^ (STACK[0x470] & 0xFFFFFF1F | (32 * ((v665 >> 1) & 7))));
  LOBYTE(v688) = v665 ^ (16 * v578);
  v696 = (*(v607 + v672) << 12) ^ (v666 << 8);
  v697 = 821 * ((v688 & 0xF0 | (LODWORD(STACK[0x448]) >> 4)) ^ 0x56);
  v698 = *(v607 + v695 % 0x3BC);
  v699 = v698 ^ (16 * *(v607 + (v697 - 956 * ((4492644 * v697) >> 32))));
  v700 = v699 ^ (*(v607 + 821 * ((((v578 ^ (16 * v666)) & 0xF0 ^ 0xE29CB6DD) & (LODWORD(STACK[0x430]) ^ 0xE29CB6F6) | (LODWORD(STACK[0x448]) >> 8) & 2) ^ 0xE29CB6CF) % 0x3BC) << 8) ^ 0xBAB01E9E;
  v701 = 821 * (((v696 >> 8) & 0xF0 | (LODWORD(STACK[0x42C]) >> 12)) ^ 0xE3);
  v702 = 821 * (((((v687 ^ v696) >> 12) | 0x4CCD380F) & (HIWORD(LODWORD(STACK[0x42C])) & 0xF ^ 0x4CCD3849) | ((v687 ^ v696) >> 12) & 0xB0) ^ 0x4CCD38E1);
  v703 = (LODWORD(STACK[0x478]) >> 12) ^ 0x1EF;
  v704 = v703 - ((2 * v703) & 0x3220) - 718694128;
  v705 = 821 * (((HIWORD(v687) & 0xF0 ^ 0x2A8179AD) & (v703 & 0xF ^ 0x2A8179FF) | v703 & 2) ^ 0x2A8179ED);
  v706 = 821 * ((((v685 ^ (16 * v691)) & 0xF0 ^ 0x6502A06B) & (((v703 - ((2 * v703) & 0x20) + 16) >> 4) ^ 0x6502A0FA) & 0xE56ABCFF | (v704 >> 4) & 4) ^ 0x6502A0FB) % 0x3BC;
  v707 = v691 ^ (16 * *(v607 + v694));
  v708 = ((v707 | 0x3C886E0F) & ((v704 >> 8) & 0xF ^ 0x3C886E98) | v707 & 0x60) ^ 0x3C886EB1;
  v709 = v700 ^ (*(v607 + (v701 - 956 * ((4492644 * v701) >> 32))) << 12);
  v710 = (*(v607 + v702 % 0x3BC) << 16) ^ (*(v607 + v705 % 0x3BC) << 20) ^ v709 ^ 0xF8C2804A;
  v711 = v710 ^ (*(v607 + v706) << 24);
  v712 = 821 * (((v711 ^ (*(v607 + 821 * v708 % 0x3BCu) << 28)) >> 28) ^ 4) + 537755;
  LODWORD(STACK[0x4B8]) = v712 - 956 * ((4492644 * v712) >> 32);
  v713 = 821 * (HIBYTE(v711) & 0xF ^ 2) + 537755;
  LODWORD(STACK[0x478]) = v713 - 956 * ((4492644 * v713) >> 32);
  v714 = 821 * ((v710 >> 20) & 0xF ^ 7) + 537755;
  LODWORD(STACK[0x480]) = v714 - 956 * ((4492644 * v714) >> 32);
  v715 = 821 * (HIWORD(v710) & 0xF ^ 2) + 537755;
  LODWORD(STACK[0x468]) = v715 - 956 * ((4492644 * v715) >> 32);
  v716 = 821 * ((v709 >> 12) ^ 1) + 537755;
  LODWORD(STACK[0x470]) = v716 - 956 * ((4492644 * v716) >> 32);
  v717 = 821 * ((v700 >> 8) & 0xF ^ 0xE) + 537755;
  LODWORD(STACK[0x460]) = v717 - 956 * ((4492644 * v717) >> 32);
  LODWORD(STACK[0x458]) = 821 * (v699 >> 4) + 537755 - 956 * ((4492644 * (821 * (v699 >> 4) + 537755)) >> 32);
  LODWORD(STACK[0x448]) = (821 * (((v698 & 0xF ^ 0x92ADB0BF) + 1834110815) ^ ((v698 & 0xF ^ 0x4ABA2A96) - 1253714568) ^ ((v698 & 0xF ^ 0xD8179A21) + 669541825)) + 555817) % 0x3BC;
  v718 = LODWORD(STACK[0x490]) ^ 0xFCF7DE9E;
  LODWORD(STACK[0x490]) = v718;
  v719 = v718 - LODWORD(STACK[0x4A8]) - LODWORD(STACK[0x4A0]) + LODWORD(STACK[0x488]) + LODWORD(STACK[0x438]) + v663 - 116726604;
  LODWORD(STACK[0x4B0]) = v664 ^ 0xFCF7DE9E;
  LODWORD(STACK[0x580]) = (((LODWORD(STACK[0x538]) ^ 0x9EF131BC) + 1628360260) ^ ((LODWORD(STACK[0x538]) ^ 0xBAA68595) + 1163491947) ^ ((LODWORD(STACK[0x538]) ^ 0x42B0D67F) - 1118885503)) - 21815602 + LODWORD(STACK[0x510]);
  v720 = LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x520]);
  LODWORD(v566) = (LODWORD(STACK[0x4F0]) + LODWORD(STACK[0x520])) ^ v720;
  v721 = v720 - LODWORD(STACK[0x4F0]);
  v722 = ((LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x508])) - LODWORD(STACK[0x440]) + 940741370) ^ 0xD01968F5;
  return (*(STACK[0x5B8] + 8 * ((31 * (LODWORD(STACK[0x530]) == -1017592979)) ^ LODWORD(STACK[0x5C4]))))((v722 + 567460663) ^ (LODWORD(STACK[0x4B0]) + 760748984), v722, v719 ^ (v721 + 35271474) ^ 0xD01968F5, LODWORD(STACK[0x490]) ^ (v566 - (LODWORD(STACK[0x518]) + v721 - 905469896)), (v721 + 35271474) ^ 0xD01968F5, (((v721 + 35271474) ^ 0xD01968F5) + 567460663) ^ (LODWORD(STACK[0x490]) + 760748984), 4155432440);
}

void sub_100083364(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x4B8]) = STACK[0x5A0];
  LODWORD(STACK[0x5A0]) = STACK[0x5D4];
  --LODWORD(STACK[0x590]);
  LODWORD(STACK[0x518]) = STACK[0x5A8];
  LODWORD(STACK[0x570]) = STACK[0x5B0];
  LODWORD(STACK[0x5B0]) = a3;
  LODWORD(STACK[0x5A8]) = STACK[0x548];
  LODWORD(STACK[0x5D4]) = v3 ^ 0xEC1CF63E;
  JUMPOUT(0x10007FDA4);
}

uint64_t sub_1000833DC@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W5>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x5C4]) = a5 + LODWORD(STACK[0x388]);
  LODWORD(STACK[0x3EC]) += 64;
  v17 = (v14 ^ 0x9D446BC8) & (2 * (v14 & 0x9855738D)) ^ v14 & 0x9855738D;
  v18 = ((2 * (v14 ^ 0xAD64EBD0)) ^ 0x6A6330BA) & (v14 ^ 0xAD64EBD0) ^ (2 * (v14 ^ 0xAD64EBD0)) & 0x3531985C;
  v19 = (v18 ^ 0x34211019) & (4 * v17) ^ v17;
  v20 = ((4 * (v18 ^ 0x15108845)) ^ 0xD4C66174) & (v18 ^ 0x15108845) ^ (4 * (v18 ^ 0x15108845)) & 0x3531985C;
  v21 = v20 & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x21319809)) ^ 0x531985D0) & (v20 ^ 0x21319809) ^ (16 * (v20 ^ 0x21319809)) & 0x35319850;
  v23 = v21 ^ 0x3531985D ^ (v22 ^ 0x11118000) & (v21 << 8);
  if ((a2 & 0x2000000 & ~(v14 ^ (2 * ((v23 << 16) ^ v23 ^ (v23 << 16) & (v22 & 0x31980000 | (v22 << 8) & ~v22))))) != 0)
  {
    v24 = -(a2 & 0x2000000);
  }

  else
  {
    v24 = a2 & 0x2000000;
  }

  LODWORD(STACK[0x590]) = v24;
  LODWORD(STACK[0x578]) = v14 - 1739230323;
  v25 = v14 - 1739230323 + v15;
  v26 = (v14 + 29581 + v15) & 0x400;
  if ((v26 & ~LODWORD(STACK[0x5D4])) != 0)
  {
    v26 = -v26;
  }

  LODWORD(STACK[0x570]) = v26;
  v27 = STACK[0x410];
  v28 = LODWORD(STACK[0x408]) + 491908642;
  LODWORD(STACK[0x540]) = LODWORD(STACK[0x410]) > 0xA43ECE4F;
  LODWORD(STACK[0x538]) = v28 < 0x5BC131B0;
  v29 = v27 + 1539387824 >= v28;
  v30 = LODWORD(STACK[0x428]) + 1453273022;
  LODWORD(STACK[0x388]) = v30 & 0xA960C7EA;
  v31 = v9 ^ ((v9 ^ 0xCCC0DCB1) + 2014194922) ^ ((v9 ^ 0xF4858703) + 1078687580) ^ ((v9 ^ 0xA99BBEA) - 1101575245) ^ (v12 + 552459841 + (v30 ^ 0x569F37D9)) ^ ((((v30 & 0xA960C7EA) + 2045634655) ^ v9) - 853336152) ^ 0x1F6D675A ^ v8;
  v32 = (v31 ^ a2) - v31;
  LODWORD(STACK[0x4D0]) = v32;
  v33 = (v7 - ((2 * v16) & 0x2317162E) - 1270592393) ^ v13;
  v34 = (((a3 ^ 0x8121C0C5) - 279595986) ^ ((a3 ^ 0x9FFB331) + 1737213914) ^ ((a3 ^ 0x88DE73F4) - 425064675)) + v9;
  v35 = (v5 - ((2 * v10) & 0x709EFFDC) + 1527267662) ^ a4;
  LODWORD(STACK[0x598]) = (v7 - ((2 * v16) & 0x7E78212C) - 504049162) ^ ((((a3 ^ 0xA12F12) + 1859476475) ^ ((a3 ^ 0x82DA4088) - 324127647) ^ ((a3 ^ 0x827B6F9A) - 334554253)) + 1180334960 + v9) ^ 0xB3A009A8;
  v36 = v14 + (((a1 ^ 0x26EE1403) - 513895405) ^ ((a1 ^ 0xAF39BAE6) + 1753823992) ^ ((a1 ^ 0x89D7AEE5) + 1315385077)) - 794496133;
  v37 = v36 + v25;
  v38 = v25 ^ 0xC9C193E;
  LODWORD(STACK[0x470]) = v25 ^ 0xC9C193E;
  v39 = ((v36 ^ v10 ^ v25 ^ 0xC9C193E ^ 0x835BF996) - 597424075) ^ ((v36 ^ v10 ^ v25 ^ 0xC9C193E ^ 0x178A3682) + 1219872545) ^ ((v36 ^ v10 ^ v25 ^ 0xC9C193E ^ 0x94D1CF14) - 873578825);
  LODWORD(STACK[0x528]) = v39;
  LODWORD(STACK[0x478]) = v36 + v25;
  v40 = v39 - (v36 + v25) - 1598026147;
  v41 = v34 + v12 + v9 + (v32 & 0x3937A004) + (v32 & 0x3937A004 ^ 0x3937A004) - 1668991230;
  v42 = v12 + v9 + (v32 & 0x3937A004) + (v32 & 0x3937A004 ^ 0x3937A004) - 1668991230;
  v43 = v41 + 220388204;
  LODWORD(STACK[0x430]) = v41 + 220388204;
  v44 = v41 + 1590555181;
  v45 = v38 ^ (v35 - 344214164);
  v46 = v45 ^ (v37 + 410220221);
  LODWORD(STACK[0x4A0]) = v46;
  v47 = (v35 - 2053077874) ^ 0x196404C6 ^ v46;
  v48 = v40 ^ 0xFB921F05;
  LODWORD(STACK[0x510]) = v40 ^ 0xFB921F05;
  v49 = ((v40 ^ 0xFB921F05) + v46) ^ v40 ^ 0xFB921F05 ^ v47;
  LODWORD(STACK[0x4C8]) = v49;
  v50 = (v40 ^ 0xFB921F05 ^ v47) + v47;
  LODWORD(STACK[0x530]) = v50;
  v51 = v47 - 357951600;
  v52 = (v47 - 357951600) ^ 0x8220D463 ^ (v49 - 882521195) ^ (v50 - 2111777693 - ((2 * v50) & 0x441A8C6));
  v53 = v49 + 1067930782;
  v54 = v45 - v48;
  LODWORD(STACK[0x480]) = v54;
  v55 = (v54 ^ v47) - 940342818;
  LODWORD(STACK[0x4B0]) = v55;
  LODWORD(STACK[0x518]) = v16;
  v56 = (v55 ^ 0x8EA2BD6B) - (v47 - 357951600);
  LODWORD(STACK[0x440]) = v42;
  v57 = LODWORD(STACK[0x598]) ^ v42;
  LODWORD(STACK[0x520]) = v57;
  v58 = (v33 - 2 * ((v33 + 192656748) & 0x1F2C7EB7 ^ v33 & 1) - 1968688094) ^ 0x93B06788 ^ v42;
  LODWORD(STACK[0x42C]) = v43 + 959946756;
  v59 = (v57 - (v43 + 959946756)) ^ 0xFB921F05;
  LODWORD(STACK[0x458]) = v44 ^ v58;
  v60 = v44 ^ v58 ^ (v33 - 2053077874) ^ 0x196404C6;
  LODWORD(STACK[0x500]) = v59;
  v61 = v60 ^ v59 ^ (v59 + (v44 ^ v58));
  LODWORD(STACK[0x468]) = v61;
  v62 = v58 - v59;
  LODWORD(STACK[0x450]) = v62;
  v63 = (v60 ^ v59) + v60;
  LODWORD(STACK[0x508]) = v63;
  v64 = (v60 ^ v62) - 940342818;
  LODWORD(STACK[0x488]) = v64;
  v60 -= 357951600;
  v65 = (v64 ^ 0x8EA2BD6B) - v60;
  v66 = v11 ^ v65 ^ 0x21C110E0 ^ (v61 - ((2 * (v61 + 1067930782)) & 0x438221C0) + 1634231678);
  v67 = v6 ^ (v49 - ((2 * (v49 + 1067930782)) & 0x4DE1B488) + 1721249506);
  v68 = v63 ^ v60 ^ (v61 - 882521195);
  LODWORD(STACK[0x498]) = v68;
  v69 = v68 ^ 0xB4E56C1E ^ (v65 - 1260032994 - ((2 * v65) & 0x69CAD83C));
  v70 = (((v6 ^ (v56 + 653318724 - ((2 * v56) & 0x4DE1B488))) - v56) ^ 0xE2325FD3 ^ (v67 - (v49 + 1067930782) - 500015149 - ((2 * (v67 - (v49 + 1067930782))) & 0xC464BFA6)) ^ (((v66 + 653318724 - ((2 * v66) & 0x4DE1B488)) ^ v6) - v66)) - v52;
  LODWORD(STACK[0x4F8]) = v70;
  v71 = v65 ^ (v61 + 1067930782);
  v72 = ((v70 & 0x15D0E10D ^ 0x15D0E10D) + (v70 & 0x15D0E10D)) ^ (v61 + 1067930782);
  v73 = v69 + v71 - 1295319792;
  v74 = v69 + v71;
  LODWORD(STACK[0x4E8]) = v69 + v71;
  v75 = ((v73 ^ 0xF0FDC26C) - 1082867444) ^ ((v73 ^ 0x3D0B7E39) + 1921154399) ^ ((v73 ^ 0xA2EDEFBA) - 312152866);
  v76 = v52 ^ v56;
  v77 = v56 ^ v53;
  v78 = v76 + v77;
  v79 = v76 + v77 - 1295319792;
  LODWORD(STACK[0x598]) = v78;
  v80 = ((v79 ^ 0xD5E1FD14) + 940159740) ^ ((v79 ^ 0xC99DECD) - 512650973) ^ ((v79 ^ 0xB6637036) + 1535852506);
  LODWORD(STACK[0x4F0]) = v80;
  v51 ^= 0x51C1FA21u;
  v81 = v51 + 615249796;
  v51 -= 680069996;
  v82 = v77 + (v53 ^ 0x15D0E10D);
  LODWORD(STACK[0x438]) = v82;
  LODWORD(STACK[0x4C0]) = v77 - v51;
  v83 = ((v78 + v51) ^ (v77 - v51)) + v79;
  LODWORD(STACK[0x4E0]) = v83;
  v84 = v80 + 724526696;
  v85 = v80 + 724526696 + v83;
  v86 = v85 ^ v81;
  v87 = (v85 ^ v81) + v85;
  v88 = STACK[0x5D8];
  v88[654] = v87 - ((2 * v87) & 0x10) - 120;
  v89 = (v60 ^ 0x51C1FA21) - 680069996;
  LODWORD(STACK[0x448]) = v72 + v71;
  v90 = v71 - v89;
  LODWORD(STACK[0x460]) = v71 - v89;
  v91 = v74 + v89;
  v92 = (v91 ^ v90) + v73;
  LODWORD(STACK[0x4B8]) = v92;
  LODWORD(STACK[0x4D8]) = v75;
  v93 = v92 - 1919929888 + v75;
  v94 = v93 ^ (v91 - v73);
  v95 = v94 + v93;
  LOBYTE(v91) = (v94 + v93 - 12) & 0x8C | 0x33;
  LOBYTE(v93) = v94 + v93 + 116;
  LOBYTE(v77) = v91 ^ v93 & 0x7E;
  v88[825] = v93 ^ (2 * ((v93 ^ 0xC) & (2 * ((v93 ^ 0xC) & (2 * ((v93 ^ 0xC) & (2 * ((v93 ^ 0xC) & (2 * ((v93 ^ 0xC) & (2 * ((v93 ^ 0xC) & (2 * v91) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ 0x24;
  v96 = (v72 + v71) ^ v73;
  LODWORD(STACK[0x490]) = v96;
  v97 = (v96 ^ 0x913B2B3) + v94;
  v88[690] = (v97 - ((2 * v97) & 0x56) + 43) ^ 0xFD;
  LODWORD(STACK[0x4A8]) = v79 ^ v82;
  v98 = v86 + (v79 ^ v82 ^ 0x913B2B3);
  v88[519] = v98 + (~(2 * v98) | 0xEF) - 119;
  v99 = v94 ^ 0x2A247BB2;
  v100 = v95 - (v94 ^ 0x2A247BB2) + 870366225;
  v101 = v84 - v87;
  v102 = v87 - (((v86 ^ 0xA8E18C6A) + 1890615437) ^ ((v86 ^ 0xD81CD268) + 5103247) ^ ((v86 ^ 0x5AD925B0) - 2105005737));
  v103 = v75 - v95;
  v88[555] = (v75 - v95 - 32) ^ 0xD6;
  v88[249] = v86 ^ 0x3A;
  v88[384] = v101 - ((2 * v101) & 0x10) - 120;
  v104 = ((v86 ^ 0xBC058B18) + 1683261439) ^ ((v86 ^ 0x6F0DEC2E) - 1218649911) ^ ((v86 ^ 0xF92C1C84) + 561844323);
  v105 = v101 - v102 + v104 - 2114962401;
  v88[420] = v94 ^ 0x64;
  v88[935] = v98 - ((2 * v98 + 10) & 0x10) - 19;
  v106 = v100 - (v94 ^ 0x2A247BB2);
  LOBYTE(v101) = ((v106 + 86) & 0xD0 | 0x24) ^ (v106 + 86) & 0xC8;
  v88[285] = (v106 + 86) ^ (2 * (((v106 + 86) ^ 0x50) & (2 * (((v106 + 86) ^ 0x50) & (2 * (((v106 + 86) ^ 0x50) & (2 * (((v106 + 86) ^ 0x50) & (2 * (((v106 + 86) ^ 0x50) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0xCE;
  v107 = v102 - v104;
  LOBYTE(v77) = ((((v97 - ((2 * v97) & 0xDA) - 19) ^ 0xBE) + 66) ^ (((v97 - ((2 * v97) & 0xDA) - 19) ^ 7) - 7) ^ (((v97 - ((2 * v97) & 0xDA) - 19) ^ 0x54) - 84)) + 120;
  LOBYTE(v81) = v77 & 0x3A ^ 0xB0;
  LOBYTE(v77) = v77 ^ (2 * ((v77 ^ 0x58) & (2 * ((v77 ^ 0x58) & (2 * ((v77 ^ 0x58) & (2 * ((v77 ^ 0x58) & (2 * ((v77 ^ 0x58) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0xEC;
  v88[800] = v105 - ((2 * v105) & 0x10) - 120;
  v108 = v99 + 1725639369;
  v109 = v99 + v103 - v100 + 676075706;
  v88[150] = v77;
  v110 = v107 + 2114962401;
  v88[114] = v107 - 31 - ((2 * (v107 - 31)) & 0x10) - 120;
  v88[15] = v109 - ((2 * v109) & 0xAC) - 42;
  v111 = (v106 + 1698961702) ^ v108;
  v88[665] = v104 + 116 - ((2 * (v104 + 116)) & 0x10) - 120;
  v88[836] = (v108 - ((2 * v108) & 0xEF) + 119) ^ 0xA1;
  v112 = v97 - (v106 + v111);
  v113 = (v107 + 2114962401) ^ (v104 + 1952822132);
  v114 = v98 - v107 - v113 - 316422012;
  v115 = v110 - v113 - 455841919;
  v88[395] = v114 - ((2 * v114) & 0x10) - 120;
  v88[701] = (v106 - v111 - 89) ^ 0xD6;
  v88[530] = v115 - ((2 * v115) & 0x10) - 120;
  v88[566] = (v112 + 63) ^ 0xD6;
  v116 = (v113 ^ v105) - 1681463000;
  v88[260] = v116 + (~(2 * v116) | 0xEF) - 119;
  v113 -= 1976699498;
  v88[125] = v113 + (~(2 * v113) | 0xEF) - 119;
  v117 = (v111 ^ v109) - 1681463000;
  v88[431] = (v117 - ((2 * v117) & 0xBC) + 94) ^ 0x88;
  v118 = v106 - v111 + 1243119783 - v117;
  v119 = v111 - 1976699498;
  v120 = (v112 + 99578687 + v111 - 1976699498) ^ v117;
  v121 = v111 - 1877120811 + v112;
  v88[296] = (v111 - 106) ^ 0xD6;
  v122 = v113 + v114;
  v123 = v115 - v116;
  v124 = v116 ^ v122;
  v125 = v124 + v122;
  v88[811] = v125 - ((2 * v125) & 0x10) - 120;
  v126 = v123 + 1917779870;
  v88[946] = v123 - 98 - ((2 * (v123 - 98)) & 0x10) - 120;
  v127 = v118 + 1917779870 + (v118 ^ v119);
  v128 = v123 + 1917779870 + (v123 ^ v113);
  v129 = v128 ^ v124;
  v88[676] = v129 ^ 0x88;
  v88[161] = (v118 - 98) ^ 0xD6;
  v130 = v121 + v120;
  v131 = v120 ^ v127;
  v88[847] = v120 ^ v127 ^ 0xD6;
  v88[26] = (v121 + v120) ^ 0xD6;
  v88[541] = v128 - ((2 * v128) & 0x10) - 120;
  v132 = v128 + v125 + v125;
  v133 = (((v129 ^ 0x91B54D24) - 93908090) ^ ((v129 ^ 0x6C6BD056) + 129601272) ^ ((v129 ^ 0xFDDE9D72) - 1777548332)) - v132 + 1088650544;
  v88[136] = v133 - ((2 * v133) & 0x10) - 120;
  v134 = v121 + v120 - 1502852296;
  LOBYTE(v118) = v118 + v130 + v134 - 108;
  v135 = ((v131 ^ 0x51BD8AF4) - 15313875) ^ ((v131 ^ 0x63A25F9D) - 855015098) ^ ((v131 ^ 0x321FD569) - 1665922126);
  v136 = v127 - 1820153072 + v134;
  v137 = v136 + v134;
  v138 = 939061020 - v130 - v136 + v135;
  v88[712] = (v127 - ((2 * v127) & 0x22) + 17) ^ 0xC7;
  v88[577] = v118 ^ 0xD6;
  LOBYTE(v135) = (v130 + 59) & 0xF8 ^ 0x2A;
  v88[442] = (v130 + 59) ^ (2 * (((v130 + 59) ^ 0x24) & (2 * (((v130 + 59) ^ 0x24) & (2 * (((v130 + 59) ^ 0x24) & (2 * (((2 * (v135 ^ (v130 + 59) & 0x5C)) ^ 8) & ((v130 + 59) ^ 0x24) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ 0x2E;
  v139 = v126 + 1397367854 + 2 * v125;
  v140 = v138 + 1061;
  v88[307] = (v138 + 37 - ((2 * (v138 + 37)) & 0xBF) + 95) ^ 0x89;
  v88[406] = v139 - ((2 * v139) & 0x10) - 120;
  v88[1] = v132 + 46 - ((2 * (v132 + 46)) & 0x10) - 120;
  v141 = v132 - 295756398;
  v88[271] = v125 - 33 - ((2 * (v125 - 33)) & 0x10) - 120;
  v88[172] = (v137 - 82) ^ 0xD6;
  v142 = (v137 + 235133970) ^ (v130 + 2104551135);
  v143 = v137 + 235133970 - v142;
  v144 = v140 ^ (v137 + 235133970) ^ (v143 - 1007824422 - ((2 * v143) & 0x87DBA3B4));
  v145 = v133 + v139;
  v146 = v141 ^ (v125 + 2104551135);
  LODWORD(STACK[0x420]) = v145 ^ v146;
  v88[822] = v145 ^ v141 ^ (v125 - 33) ^ 0x88;
  v147 = v141 - v146;
  v148 = (v141 - v146) ^ v141 ^ v133;
  LOBYTE(v140) = (v140 + v118) ^ v142;
  v88[37] = v140 ^ 0xD6;
  LOBYTE(v137) = v142 + (~(2 * v142) | 0xFD) - 126;
  LOBYTE(v137) = (((v137 ^ 0xE4) + 28) ^ ((v137 ^ 0xD9) + 39) ^ ((v137 ^ 0xBC) + 68)) - 107;
  LOBYTE(v141) = v137 & 0x9A ^ 0xB8;
  v88[858] = v137 ^ (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * (v137 & (2 * v137) & 0x54 ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ 0x4C;
  v88[552] = v148 ^ 0x88;
  v149 = v144 ^ 0xC3EDD1DA;
  LOBYTE(v141) = 2 * (v144 ^ 0xDA);
  v150 = v140 ^ 4 ^ ((v144 ^ 0xDA) + 4 - (v141 & 8));
  LOBYTE(v141) = ((v144 ^ 0xDA) - (v141 & 0x66) + 51) ^ 0xE5;
  v151 = v144 ^ 0x21;
  v88[723] = v141;
  v88[417] = v147 - ((2 * v147) & 0x10) - 120;
  LODWORD(STACK[0x41C]) = (((v146 ^ 0xC7F572C2) - 626591937) ^ ((v146 ^ 0x86C30943) - 1685025600) ^ ((v146 ^ 0x41367B81) + 1550188158)) - 84098367;
  v88[687] = (((v146 ^ 0xC2) + 63) ^ ((v146 ^ 0x43) - 64) ^ ((v146 ^ 0x81) + 126)) - 63 - ((2 * ((((v146 ^ 0xC2) + 63) ^ ((v146 ^ 0x43) - 64) ^ ((v146 ^ 0x81) + 126)) - 63)) & 0x10) - 120;
  v152 = v143 - v149;
  v88[588] = (v143 - ((2 * v143) & 0xBB) + 93) ^ 0x8B;
  v153 = v142 - (v143 - v149);
  v154 = v153 - 66;
  v88[1632672803 - ((((v153 + 407914686) & 0x61509844 ^ 0x61509844) + ((v153 + 407914686) & 0x61509844)) | 0x2010021E)] = (v150 + v151 - ((2 * (v150 + v151)) & 0xF7) + 123) ^ 0xAD;
  v155 = LODWORD(STACK[0x590]) + LODWORD(STACK[0x578]);
  LODWORD(STACK[0x590]) = ((v8 ^ 0xCE931FB7) - 579856777) ^ ((v8 ^ 0xC160A5F4) - 763122634) ^ ((v8 ^ 0x5BAFD2BE) + 1212996480);
  v156 = ((v155 ^ a2 & 0xFDFFFFFF) - v14 + 1739230323) ^ ((v15 ^ a2) - v15) ^ LODWORD(STACK[0x4D0]);
  v157 = ((v156 ^ 0xB7BAEB70) + 1816747901) ^ ((v156 ^ 0xB8D56F77) + 1663490940) ^ ((v156 ^ 0xF6F8407) - 727961588);
  v158 = STACK[0x5B0];
  v159 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x5B0]) ^ (LODWORD(STACK[0x430]) - 2 * (STACK[0x42C] & 0x749807BF ^ STACK[0x430] & 1) - 1378900030);
  v160 = (((LODWORD(STACK[0x570]) + LODWORD(STACK[0x414])) ^ STACK[0x470] & 0xFFFFFBFF) - LODWORD(STACK[0x470])) ^ (((LODWORD(STACK[0x478]) - 1203724605 - ((2 * LODWORD(STACK[0x478])) & 0x70813D86)) ^ LODWORD(STACK[0x5D4])) - LODWORD(STACK[0x478])) ^ ((((v159 ^ 0x78041E80) - 1203724605 - 2 * ((v159 ^ 0x78041E80) & 0x38409ECF ^ v159 & 0xC)) ^ LODWORD(STACK[0x5D4])) - (v159 ^ 0x78041E80));
  v161 = ((v160 ^ 0xB5EF4FEE) - 2055864825) ^ ((v160 ^ 0xCF29E245) - 5024850) ^ ((v160 ^ 0x7AC6ADAB) + 1247550532);
  v162 = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x450]) ^ (LODWORD(STACK[0x458]) - ((2 * LODWORD(STACK[0x458])) & 0xDCEB4582) - 294280511) ^ 0x56353C02;
  v163 = ((LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x548])) - LODWORD(STACK[0x480])) ^ ((LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x548])) - LODWORD(STACK[0x4A0])) ^ ((v162 ^ LODWORD(STACK[0x548])) - v162);
  v164 = ((v163 ^ 0x763ECCFC) - 1852320444) ^ ((v163 ^ 0x752FF2BE) - 1836651774) ^ ((v163 ^ 0x3113E42) - 457693186);
  v165 = ((LODWORD(STACK[0x5A0]) ^ 0x5EE4431A) - 1592017690) ^ ((LODWORD(STACK[0x5A0]) ^ 0x92D998A5) + 1831233371) ^ ((LODWORD(STACK[0x5A0]) ^ 0x747D457C) - 1954366844);
  v166 = LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x488]) ^ (((2 * (LODWORD(STACK[0x468]) - 959946756)) & 0x726F4008) + ((LODWORD(STACK[0x468]) - 959946756) ^ 0x3937A004));
  v167 = ((LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x5A8])) - LODWORD(STACK[0x4B0])) ^ ((LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x5A8])) - LODWORD(STACK[0x4C8])) ^ ((v166 ^ LODWORD(STACK[0x5A8])) - v166);
  v168 = ((v167 ^ 0xF34F4C20) + 133733898) ^ ((v167 ^ 0xD1186E92) + 632274108) ^ ((v167 ^ 0x225722B2) - 689901412);
  v169 = ((LODWORD(STACK[0x588]) ^ 0xE3072D76) + 486068874) ^ ((LODWORD(STACK[0x588]) ^ 0x1EE6D1E) - 32402718) ^ ((LODWORD(STACK[0x588]) ^ 0x5AA9DEAB) - 1521082027);
  v170 = ((LODWORD(STACK[0x498]) ^ 0x70E5A46D) + 1006581645) ^ ((LODWORD(STACK[0x498]) ^ 0xE2B8CD11) - 1448976655) ^ ((LODWORD(STACK[0x498]) ^ 0x925D697C) - 649594210);
  v171 = LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x448]);
  v172 = (((v171 ^ LODWORD(STACK[0x560]) ^ 0xE112839) + 136580948) ^ ((v171 ^ LODWORD(STACK[0x560]) ^ 0xAB0A7CD3) - 1388356678) ^ ((v171 ^ LODWORD(STACK[0x560]) ^ 0xE50CECF8) - 482751597)) - (((v171 ^ 0xBE977472) - 1197321447) ^ ((v171 ^ 0x1EC0A16D) + 418743816) ^ ((v171 ^ 0x86A70F5B) - 2137905102)) - 626827850;
  v173 = ((LODWORD(STACK[0x550]) ^ 0x575B5B0D) - 1465604877) ^ ((LODWORD(STACK[0x550]) ^ 0xB283746) - 187184966) ^ ((LODWORD(STACK[0x550]) ^ 0x7A83B60F) - 2055452175);
  v174 = ((LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x424])) - LODWORD(STACK[0x438])) ^ ((LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x424])) - LODWORD(STACK[0x4C0])) ^ v172;
  LODWORD(STACK[0x5D4]) = ((v174 ^ 0x81539796) + 1821693831) ^ ((v174 ^ 0xA9FCE2AC) + 1144758973) ^ ((v174 ^ 0x28AF753A) - 983026389);
  v175 = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x4B8]) ^ 0x281E65FB ^ LODWORD(STACK[0x490]);
  v176 = ((LODWORD(STACK[0x558]) ^ 0x6A9F67DC) - 1788831708) ^ ((LODWORD(STACK[0x558]) ^ 0x2EC003E3) - 784335843) ^ ((LODWORD(STACK[0x558]) ^ 0x22B80669) - 582485609);
  v177 = ((v175 + 653318724 - ((2 * v175) & 0x4DE1B488)) ^ LODWORD(STACK[0x568])) - v175;
  v178 = (((LODWORD(STACK[0x4E0]) + 653318724 - ((2 * LODWORD(STACK[0x4E0])) & 0x4DE1B488)) ^ LODWORD(STACK[0x568])) - LODWORD(STACK[0x4E0])) ^ ((LODWORD(STACK[0x568]) ^ 0x6809DDE9 ^ LODWORD(STACK[0x4A8])) - (LODWORD(STACK[0x4A8]) ^ 0x4EF907AD)) ^ v177;
  LODWORD(STACK[0x3D4]) = LODWORD(STACK[0x3D4]) - 1222997181 + LODWORD(STACK[0x580]);
  LODWORD(STACK[0x3A8]) = LODWORD(STACK[0x3A8]) - LODWORD(STACK[0x510]) + 408348224 + v164;
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x3B8]) - 1203724605 + v165 + LODWORD(STACK[0x500]);
  LODWORD(STACK[0x3BC]) = LODWORD(STACK[0x3BC]) - LODWORD(STACK[0x528]) + 782581690 + v161;
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x3B4]) - 1203724605 + LODWORD(STACK[0x518]) + LODWORD(STACK[0x590]);
  LODWORD(STACK[0x394]) += LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0x3C0]) += (((v11 ^ 0x9BD67510) + 47114426) ^ ((v11 ^ 0x418F9B14) - 661190978) ^ ((v11 ^ 0xDA59EE04) + 1128362926)) + 466407028 + v170;
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x398]) - v5 + 22252179 + v157;
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0x3D0]) - 1203724605 + v169 + LODWORD(STACK[0x508]);
  LODWORD(STACK[0x390]) += 653318724 + v173 + LODWORD(STACK[0x4E8]);
  v179 = ((v177 & 0xCA677BB6 ^ 0xCA677BB6) + (v177 & 0xCA677BB6)) & 0xCEAFDB76;
  v180 = LODWORD(STACK[0x38C]) + 1179979782 + v176 + LODWORD(STACK[0x4D8]);
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x3A0]) + v158 + LODWORD(STACK[0x520]) - (((v179 ^ 0x4001498D) + 1707679978) ^ ((v179 ^ 0x486C7DAE) + 1839469771) ^ ((v179 ^ 0x86D3423) + 765812040)) - 269499237;
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x3C8]) - LODWORD(STACK[0x4F0]) + 1523177078 + (((v178 ^ 0x8959AC50) - 1586435621) ^ ((v178 ^ 0x23C9DC5F) + 199268822) ^ ((v178 ^ 0xAA90700F) - 2101791354));
  LODWORD(STACK[0x39C]) = LODWORD(STACK[0x39C]) - LODWORD(STACK[0x530]) + 189279702 + v168;
  v181 = !v29;
  if (LODWORD(STACK[0x538]) != LODWORD(STACK[0x540]))
  {
    v182 = STACK[0x538];
  }

  else
  {
    v182 = v181;
  }

  v183 = v148 ^ LODWORD(STACK[0x420]);
  v184 = v153 - 56;
  v185 = (v153 - 56) & 0x24 ^ 0xAB;
  v186 = (v153 - 56) ^ 0x56;
  v187 = v184 ^ (2 * (v186 & (2 * (v186 & (2 * (v186 & (2 * (v186 & (2 * (v186 & (2 * (v186 & 0x32 ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ 0xF2;
  v188 = LODWORD(STACK[0x41C]) - (v147 - v148);
  v189 = v147 - v148 - v188;
  v88[147] = v188 - 32 - ((2 * (v188 - 32)) & 0x10) - 120;
  v88[12] = v189 + (v148 ^ 0xFB) - ((2 * (v189 + (v148 ^ 0xFB))) & 0x10) - 120;
  v88[282] = (v148 ^ 0xFB) + v183 + (~(2 * ((v148 ^ 0xFB) + v183)) | 0xEF) - 119;
  v88[318] = v187;
  v88[833] = v189 - ((2 * v189) & 0x10) - 120;
  v88[183] = (v152 - v154 + v151 - ((2 * (v152 - v154 + v151)) & 0x44) - 94) ^ 0x74;
  v88[698] = v183 + 96 - ((2 * (v183 + 96)) & 0x10) - 120;
  v88[48] = (v152 - v154) ^ 0xD6;
  v190 = (v189 ^ (v188 - 32)) + v183 + 96;
  LOBYTE(v188) = (v148 ^ 0xFB) - 109;
  v88[428] = v188 - ((2 * v188) & 0x10) - 120;
  v88[563] = v190 - ((2 * v190) & 0x10) - 120;
  v191 = v150 + 96 + ((v154 - 32) ^ (v152 - v154));
  v88[869] = (v150 + 96) ^ 0xD6;
  v88[734] = (v191 - ((2 * v191) & 0x7A) + 61) ^ 0xEB;
  v192 = v151 - 109;
  v88[599] = (v192 - ((2 * v192) & 0xE4) - 14) ^ 0x24;
  v193 = (v189 + 48) ^ v188;
  v88[293] = v193 ^ 0x88;
  v194 = (v152 - v154 + 48) ^ v192;
  v88[464] = (v194 - ((2 * v194) & 0x77) - 69) ^ 0x6D;
  v195 = v194 - 5 + (v191 ^ 0x96);
  v196 = v194 + v192;
  v197 = v193 + v188;
  v198 = v193 - 5 + (v190 ^ 0x96);
  v88[709] = v198 - ((2 * v198) & 0x10) - 120;
  v88[194] = (v191 - ((2 * v191) & 0xCF) - 25) ^ 0xEA;
  v199 = (v150 + 24) & 0xE9 ^ 0x9F;
  v200 = (v150 + 24) ^ 0x72;
  v88[329] = (v150 + 24) ^ (2 * (v200 & (2 * (v200 & (2 * (v200 & (2 * (v200 & (2 * (v200 & (2 * (((2 * (v150 + 24)) & 0x66 ^ 0x1A) & v200 ^ v199)) ^ v199)) ^ v199)) ^ v199)) ^ v199)) ^ v199)) ^ 0x3F;
  v88[23] = v190 ^ 0x53;
  v201 = v196 - v195;
  v88[59] = (v196 - v195) ^ 0xD6;
  v88[158] = v183 + 11 + (~(2 * (v183 + 11)) | 0xEF) - 119;
  v202 = v197 - v198;
  v88[844] = v197 - v198 - ((2 * (v197 - v198)) & 0x10) - 120;
  v203 = (v190 ^ 0xDB) + v183 + 11;
  v204 = ((v190 ^ 0x5E) - 59) ^ ((v190 ^ 0x44) - 33) ^ ((v190 ^ 0xC1) + 92);
  LOBYTE(v188) = v191 ^ 0xDB;
  v205 = (v191 ^ 0xDB) + v150;
  v206 = v202 - v183 - v204 + 88;
  v207 = (v205 + 11) ^ (v188 - 33);
  LOBYTE(v188) = (v205 + 113) & 0xC1;
  v208 = (v205 + 113) ^ 0x70;
  v88[745] = (v205 + 113) ^ (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * v188) | v188 | 0x28)) ^ (v188 | 0x28))) ^ (v188 | 0x28))) ^ (v188 | 0x28))) ^ (v188 | 0x28))) ^ (v188 | 0x28))) ^ 0x17;
  v88[439] = (v204 - 99) ^ v203 ^ 0x88;
  v88[610] = (v207 - ((2 * v207) & 0xDD) - 18) ^ 0x38;
  v88[304] = v206 - ((2 * v206) & 0x10) - 120;
  v198 ^= 0x5Bu;
  v88[169] = v198 - ((2 * v198 + 22) & 0x10) - 109;
  v88[880] = (v195 - ((2 * v195) & 0xB4) - 38) ^ 0xC;
  LOBYTE(v188) = (((v203 - ((2 * v203) & 0xC) + 6) ^ 0x27) - 39) ^ (((v203 - ((2 * v203) & 0xC) + 6) ^ 0x18) - 24) ^ (((v203 - ((2 * v203) & 0xC) + 6) ^ 0x39) - 57);
  v209 = v188 & 0x97 ^ 0xED;
  v88[574] = v188 ^ (2 * ((v188 ^ 0x5C) & (2 * ((v188 ^ 0x5C) & (2 * ((v188 ^ 0x5C) & (2 * ((v188 ^ 0x5C) & (2 * ((v188 ^ 0x5C) & (2 * (((2 * v188) & 0x3A ^ 0x4A) & v188 ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ 0x9F;
  v210 = v195 ^ 0x5B;
  v88[340] = ((v195 ^ 0x5B) + 11) ^ 0xD6;
  v88[475] = (v201 - v205 + 22) ^ 0xD6;
  v211 = v206 - v203 + 16;
  v212 = v201 - v205 - v205 + 27;
  v213 = v205 - 43;
  v88[205] = (v205 - 43 - ((2 * (v205 - 43)) & 0xC4) + 98) ^ 0xC8;
  v214 = (v210 - 56) & 0xE2 ^ 0x2D;
  LOBYTE(v188) = (v210 - 56) ^ (2 * (((v210 - 56) ^ 0x28) & (2 * (((v210 - 56) ^ 0x28) & (2 * (((v210 - 56) ^ 0x28) & (2 * (((v210 - 56) ^ 0x28) & (2 * (((v210 - 56) ^ 0x28) & 0xA ^ v214)) ^ v214)) ^ v214)) ^ v214)) ^ v214)) ^ 0x34;
  v215 = v203 - 54;
  LOBYTE(v183) = v198 - v203 - ((v204 - 99) ^ v203) + 65;
  v88[70] = v188;
  v198 += 112;
  v88[855] = v198 - ((2 * v198) & 0x10) - 120;
  LOBYTE(v188) = v210 - v205 - v207 + 54;
  v88[585] = v183 - ((2 * v183) & 0x10) - 120;
  v88[720] = v211 + (~(2 * v211) | 0xEF) - 119;
  v216 = v211 - ((v203 - 54) ^ 0x7C);
  v88[891] = v212 ^ 0xD6;
  v88[34] = v215 ^ 0xF4;
  v217 = v205 - 43;
  v218 = 42 - v205;
  v219 = v212 - ((v205 - 43) ^ 0x7C);
  v88[756] = v188 ^ 0xD6;
  LOBYTE(v183) = v216 + v183;
  v220 = (v183 + 78) ^ v215;
  v88[450] = v220 ^ 0x95;
  v221 = v219 + v188 + 78;
  v88[621] = v221 ^ v213 ^ 0xCB;
  v222 = ((((v217 & 0xA2) + (v218 & 0xA2)) & 0x40) - 61) ^ (v210 + 112);
  v223 = 2 * (v216 - 86);
  v224 = v220 ^ 0x8A ^ (v216 - (v223 & 0x2E) + 65);
  v225 = 2 * (v183 + 78);
  v88[45] = v183 + 78 + (~v225 | 0xEF) - 119;
  v226 = v198 ^ 0xDC ^ (v183 - (v225 & 0x3E) + 109);
  LOBYTE(v183) = (v219 - 86) ^ 0x1D ^ v221 ^ v213;
  v88[180] = v216 - 86 - (v223 & 0x10) - 120;
  v88[315] = v198 ^ 0x4B;
  v88[351] = (v219 - 86 - ((2 * (v219 - 86)) & 0xF3) + 121) ^ 0xAF;
  v88[486] = (v222 - ((2 * v222) & 0x42) - 95) ^ 0x77;
  LOBYTE(v188) = (v221 - ((2 * v221) & 0x88) - 60) ^ 0x12;
  v227 = v219 + 53;
  v228 = v222 - v219;
  v229 = v221 ^ v222;
  v88[216] = v188;
  v230 = (v198 ^ 0xC3) - v216 + 23;
  v231 = (v183 + 12) & 0x1E ^ 0xC5;
  v88[81] = (v183 + 12) ^ (2 * (((v183 + 12) ^ 0x14) & (2 * (((v183 + 12) ^ 0x14) & (2 * (((v183 + 12) ^ 0x14) & (2 * (((v183 + 12) ^ 0x14) & (2 * (v231 ^ (v183 + 12) & 0xA)) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ 0xC8;
  v88[731] = v230 - ((2 * v230) & 0x10) - 120;
  v88[461] = v226 + v224 - ((2 * (v226 + v224)) & 0x10) - 120;
  v88[596] = v216 + ((20 - 2 * v216) | 0xEF) - 66;
  v88[767] = v227 ^ 0xD6;
  v88[866] = v224 - 96 - ((2 * (v224 - 96)) & 0x10) - 120;
  v232 = v228 + 96;
  v233 = (v228 + 96) & 0x8F ^ 0xAC;
  v88[902] = v232 ^ (2 * ((v232 ^ 0x36) & (2 * ((v232 ^ 0x36) & (2 * ((v232 ^ 0x36) & (2 * ((v232 ^ 0x36) & (2 * ((v232 ^ 0x36) & (2 * ((v232 ^ 0x36) & (2 * v232) & 0x6E ^ v233)) ^ v233)) ^ v233)) ^ v233)) ^ v233)) ^ v233)) ^ 0x59;
  v234 = v183 + v229;
  v235 = v183 - 96 + v227;
  v236 = (v183 - 96) ^ v234;
  v237 = v216 - 43;
  v88[632] = (v234 - ((2 * v234) & 0x36) - 101) ^ 0x4D;
  v238 = v224 - 96 + v230;
  LOBYTE(v188) = (v226 + v224) ^ (v224 - 96);
  v239 = v228 - 73 + v183;
  v240 = v183 + 6 + v239;
  v88[191] = v238 ^ 0x8A;
  v241 = v238 + v224;
  LOBYTE(v183) = v241 + v237;
  v242 = v241 + 6;
  v88[326] = v241 + 6 - ((2 * (v241 + 6)) & 0x10) - 120;
  v88[497] = (v240 - ((2 * v240) & 0x70) - 72) ^ 0x6E;
  v243 = v235 + v239;
  v88[227] = (v235 + v239 - ((2 * (v235 + v239)) & 0x3A) + 29) ^ 0xCB;
  v88[362] = v239 ^ 0xD4;
  v88[56] = v183 - ((2 * v183) & 0x10) - 120;
  v244 = v188 - v242;
  v88[877] = v188 - v242 - ((2 * (v188 - v242)) & 0x10) - 120;
  LOBYTE(v188) = (v238 ^ 2) - (v188 - v242);
  v245 = v244 ^ 0x3C;
  v246 = (v244 ^ v242) - (v244 ^ 0x3C);
  v88[742] = v246 + (~(2 * v246) | 0xEF) - 119;
  v247 = v236 - v240;
  v88[92] = (v247 + (~(2 * v247) | 0x2D) - 22) ^ 0x3F;
  v248 = v188 ^ v183;
  v88[472] = v188 ^ v183 ^ 0x24;
  v249 = v246 + v188;
  v88[607] = v246 + v188 - ((2 * (v246 + v188)) & 0x10) - 120;
  v250 = v188 ^ v183 ^ v245;
  v88[337] = v248 ^ v245 ^ 0x24;
  v251 = (v239 ^ 2) - v247;
  v252 = v247 ^ 0x3C;
  v253 = (v247 ^ v240) - (v247 ^ 0x3C);
  v88[913] = v253 ^ 0xD6;
  v254 = v243 ^ 0xAC ^ v251;
  if ((v254 & 8) != 0)
  {
    v255 = -8;
  }

  else
  {
    v255 = 8;
  }

  v88[643] = (v255 + v254 - ((2 * (v255 + v254)) & 0x3A) - 99) ^ 0x43;
  v256 = (v248 ^ 0xAC) + v246;
  v257 = (v250 ^ 0xAC) + v246;
  v258 = v253 + v251;
  v259 = v253 + v251 + 27;
  v260 = v259 & 0x31 ^ 0x2E;
  v261 = v259 ^ 0x64;
  v88[778] = v259 ^ (2 * (v261 & (2 * (v261 & (2 * (v261 & (2 * (v261 & (2 * (v261 & (2 * (v259 & (2 * v259) & 0x4A ^ v260)) ^ v260)) ^ v260)) ^ v260)) ^ v260)) ^ v260)) ^ 0xE7;
  v262 = ((v250 ^ 0xFD) - 63) ^ ((v250 ^ 0xF4) - 54) ^ ((v250 ^ 0xA5) - 103);
  v263 = v254 ^ v252;
  v88[508] = ((v254 ^ v252) - ((2 * (v254 ^ v252)) & 0x70) + 56) ^ 0xEE;
  v264 = v253 + v254;
  v265 = (v254 ^ v252) + v253;
  v266 = ((v265 + 96) | 0x36) ^ (v265 - 32) & 0xFC;
  v267 = (v265 - 32) ^ 0x48;
  v88[373] = (v265 - 32) ^ (2 * (v267 & (2 * (v267 & (2 * (v267 & (2 * (v267 & (2 * (v267 & (2 * (v267 & (2 * v266) ^ v266)) ^ v266)) ^ v266)) ^ v266)) ^ v266)) ^ v266)) ^ 0xE3;
  v268 = ((v264 ^ v258) + 30) & 0x44 ^ 0xD3;
  v269 = ((v264 ^ v258) + 30) ^ 0x26;
  LODWORD(STACK[0x38C]) = v180 + 455;
  v88[238] = ((v264 ^ v258) + 30) ^ (2 * (v269 & (2 * (v269 & (2 * (v269 & (2 * (v269 & (2 * (v269 & (2 * (v269 & 0x22 ^ v268)) ^ v268)) ^ v268)) ^ v268)) ^ v268)) ^ v268)) ^ 0x92;
  v88[103] = (v265 + v264) ^ 0xD6;
  v88[753] = v262 - (v257 + v256) - ((2 * (v262 - (v257 + v256))) & 0x10) - 120;
  v88[888] = v257 + v256 - ((2 * (v257 + v256)) & 0x10) - 120;
  v88[67] = (v256 ^ v249) - 60 - ((2 * ((v256 ^ v249) - 60)) & 0x10) - 120;
  v88[202] = v257 - 87 - ((2 * (v257 - 87)) & 0x10) - 120;
  v88[924] = (v263 - (v265 + v264) - 110) ^ 0xD6;
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x3CC]) - LODWORD(STACK[0x598]) + 305709039 + LODWORD(STACK[0x5D4]);
  return (*(STACK[0x5B8] + 8 * (LODWORD(STACK[0x428]) ^ ((2 * v182) | (8 * v182)))))();
}

uint64_t sub_100088334(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = (LODWORD(STACK[0x5C4]) - 1573434420) & 0x5DC8B3FA;
  v22 = a7 - (v16 ^ a2);
  LODWORD(STACK[0x538]) = v22;
  LODWORD(STACK[0x528]) = (v18 - a8 + 2010016110 + v19 - ((2 * (v18 - a8 + 2010016110)) & 0xF4B18700)) ^ a5;
  LODWORD(STACK[0x5D4]) = v21;
  LODWORD(STACK[0x4E8]) = (a6 ^ 0x59CF3509) + (v21 ^ 0x5EF6CF0) - a8;
  LODWORD(STACK[0x520]) = (a6 ^ 0x59CF3509) + 99577610;
  v23 = ((v17 ^ 0xFFCAFC47) + 96330558) ^ ((v17 ^ 0x63994282) - 1712431623) ^ ((v17 ^ 0xC59C8BCC) + 1072403639);
  LODWORD(STACK[0x518]) = ((v16 ^ 0x7D44E0B8) + 537491963) ^ ((v16 ^ 0xAD93B138) - 253876101) ^ ((v16 ^ 0x622427D8) + 1063894683);
  LODWORD(STACK[0x508]) = v23 + 1375089585;
  LODWORD(STACK[0x510]) = v22 ^ a1 ^ 0xF0AE96BD;
  LODWORD(STACK[0x500]) = (v22 ^ a1 ^ 0x9C0668F8) + 1855951021;
  LODWORD(STACK[0x530]) = v22 ^ a1;
  LODWORD(STACK[0x4F8]) = (v22 ^ a1 ^ 0x6CA8FE45) - 1640954350;
  LODWORD(STACK[0x4F0]) = v23 + 1872579649;
  LODWORD(STACK[0x4C0]) = v18 - a8 - 1593540081;
  v24 = STACK[0x410];
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x410]) + 7;
  LODWORD(STACK[0x578]) = v24 - 680074760;
  LODWORD(STACK[0x5C4]) = v24 + 1;
  LODWORD(STACK[0x570]) = v24 - 680074759;
  LODWORD(STACK[0x5B0]) = v24 + 2;
  LODWORD(STACK[0x568]) = v24 - 680074758;
  LODWORD(STACK[0x5A8]) = v24 + 3;
  LODWORD(STACK[0x560]) = v24 - 680074757;
  LODWORD(STACK[0x5A0]) = v24 + 4;
  LODWORD(STACK[0x558]) = v24 - 680074756;
  LODWORD(STACK[0x598]) = v24 + 5;
  LODWORD(STACK[0x550]) = v24 - 680074755;
  LODWORD(STACK[0x588]) = v24 + 6;
  LODWORD(STACK[0x548]) = v24 - 680074754;
  LODWORD(STACK[0x540]) = v24 - 77549628;
  v25 = a16 - 0x5F2E04143183B6B9;
  LODWORD(STACK[0x410]) = v24;
  v26 = LODWORD(STACK[0x5D4]) + 1504;
  LODWORD(STACK[0x590]) = v26;
  v27 = v24 + (v26 ^ 0x17CD55EF) - ((2 * v24) & 0x2F9AB86A);
  v28 = a16 - 0x5F2E04143183B6B9 + (v27 ^ 0x17CD5C35u);
  v29 = (v27 & 0x335 ^ 0x29AF9B5D) & (v27 & 0x335 ^ 0xE9BFFCFF) ^ v27 & 0x15;
  v20[825] = v20[(525 * ((((v29 ^ 0x8368FE1C) + 689250361) ^ ((v29 ^ 0xE856B7D1) + 1110141430) ^ ((v29 ^ 0x4291D2A5) - 387183486)) + 1613416485) + 1913351478) % 0x3BC] ^ *v28;
  v30 = v28 - ((2 * v28) & 0xB142D9316B884CE6);
  v31 = (((((v30 - 0x275E93674A3BD98DLL) >> 8) ^ 0x555248ED5BEA2528) + 0x4A57CD68A95A196BLL) ^ ((((v30 - 0x275E93674A3BD98DLL) >> 8) ^ 0x53142284A76F2DBFLL) + 0x4C11A70155DF11FELL) ^ ((((v30 - 0x275E93674A3BD98DLL) >> 8) ^ 0x69ECB056430CCB1) + 0x199B4E809680F0F4)) + 0x47C18EBCE103193 + (((((v30 - 0x275E93674A3BD98DLL) << 56) & 0xF800000000000000 ^ 0xF5CFFC6AACB40CEFLL) + 0x27DFE2C63512633ALL) ^ ((((v30 - 0x275E93674A3BD98DLL) << 56) & 0xF800000000000000 ^ 0xB2212F9B72C71D43) + 0x60313137EB617296) ^ ((((v30 - 0x275E93674A3BD98DLL) << 56) & 0xF800000000000000 ^ 0x37EED3F1DE7311ACLL) - 0x1A0132A2B82A8185));
  v32 = (((v31 >> 8) ^ 0x12B74D629EEAE8) + (v31 ^ 0x21FDA96C130E265DLL) + ((v31 << 56) ^ 0x2300000000000000)) ^ 0xE236BC558C935F11;
  v33 = v32 ^ __ROR8__(v31 ^ 0x21FDA96C130E265DLL, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xFA1BAB80AA95DBA1;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = v35 + __ROR8__(v34, 8);
  v37 = __ROR8__(v35, 61);
  v38 = v36 ^ 0x4055E617F151222DLL ^ (v37 - ((2 * v37) & 0x731FC7B6E5382BC8) - 0x46701C248D63EA1CLL);
  v39 = (v38 + ((v36 >> 8) ^ 0xF9DA05CC83CD37) + ((v36 << 56) ^ 0xC900000000000000) - 2 * ((v38 + ((v36 >> 8) ^ 0xF9DA05CC83CD37) + ((v36 << 56) ^ 0xC900000000000000)) & 0x83E13F3540AC07CLL ^ (v38 + ((v36 >> 8) ^ 0xF9DA05CC83CD37)) & 0x18) - 0x77C1EC0CABF53F9CLL) ^ 0x86ED30B107C7E59BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (v40 + __ROR8__(v39, 8)) ^ 0xC90A3C5DE473E566;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (v42 + __ROR8__(v41, 8)) ^ 0x2F982D6B10712B03;
  v44 = LODWORD(STACK[0x5C4]);
  v20[654] ^= ((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0x183E9C62172C411CuLL) >> (((8 * v30 + 88) ^ 0x6B) & 0x18 ^ 0x10) >> (~((8 * v30 + 88) ^ 0x6B) & 0x20);
  v20[690] ^= *(a16 - 0x5F2E04143183B6B9 + v44);
  v45 = v25 + v44 - ((2 * (v25 + v44)) & 0x93189ECE2537202ALL) - 0x3673B098ED646FEBLL;
  v46 = ((((v45 >> 3 << 59) ^ 0x762FCC543E6FC3E7) & ((v45 >> 8) ^ 0xFE2652B9196D707FLL) | (v45 >> 8) & 0xD033ABC1903C18) ^ 0x66EFCC5F7F7FDBF7) - 0x3996A37E2E436631;
  v47 = v46 ^ 0x12B74D629EEAE823;
  v46 ^= 0x21FDA96C130E265DuLL;
  v48 = __ROR8__(v47, 8) + v46;
  v49 = __ROR8__(v46, 61) ^ 0xE236BC558C935F11 ^ v48;
  LOBYTE(v44) = v20[519];
  v50 = (((v48 << 56) ^ 0x1100000000000000) + v49 + ((v48 >> 8) ^ 0xE236BC558C935FLL)) ^ 0xFA1BAB80AA95DBA1;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8) + v51;
  v53 = __ROR8__(v51, 61) ^ 0xF9DA05CC83CD37C9 ^ v52;
  v54 = (((((v52 << 56) ^ 0x1EE40A7A604D4361) & ((v52 >> 8) ^ 0xFF0625FA337C32C8) | (v52 >> 8) & 0x1BF5859FB2BC9ELL) ^ 0xD7FDDA7FECCFCF77) + v53) ^ 0xED3234253CD25FFLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (v55 + __ROR8__(v54, 8)) ^ 0xC90A3C5DE473E566;
  v57 = __ROR8__(v56, 8);
  v58 = v56 ^ (8 * v55) ^ (v55 >> 61);
  *(STACK[0x5D8] + 519) = (((__ROR8__((v58 + v57) ^ 0x2F982D6B10712B03, 8) + ((v58 + v57) ^ 0x2F982D6B10712B03 ^ __ROR8__(v58, 61))) ^ 0x183E9C62172C411CuLL) >> (~(8 * v45) & 8) >> ((8 * v45) & 0x30 ^ 0x20)) ^ v44;
  v59 = a16 - 0x5F2E04143183B6B9 + LODWORD(STACK[0x5B0]);
  *(STACK[0x5D8] + 555) ^= *v59;
  v60 = v59 - ((2 * v59) & 0x58849D5BFE895D14) - 0x53BDB15200BB5176;
  v61 = ((((v60 << 56) & 0xF000000000000000 ^ 0x7FFFFFFFFFFFFFFFLL) & ((v60 >> 8) ^ 0xF7C2786986D2372ALL) & 0xF7FFFFFFFFFFFFFFLL | (((v60 >> 3) & 1) << 59)) ^ 0xFF6E3A272B2D7384) - 0x3996A37E2E436631;
  v62 = v61 ^ 0x12B74D629EEAE823;
  v61 ^= 0x21FDA96C130E265DuLL;
  v63 = (__ROR8__(v62, 8) + v61) ^ 0xE236BC558C935F11;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xFA1BAB80AA95DBA1;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (v66 + __ROR8__(v65, 8)) ^ 0xF9DA05CC83CD37C9;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8) + v68;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = v69 ^ ~__ROR8__(v68, 61);
  v70 ^= 0xED3234253CD25FFuLL;
  v72 = __ROR8__(v69 ^ 0xED3234253CD25FFLL, 8);
  LOBYTE(v69) = v70 + v72;
  v73 = (v70 + v72) ^ 0xC90A3C5DE473E566;
  LOBYTE(v21) = (v70 + v72) & 0x74;
  *(&v74 + 1) = v70;
  *&v74 = v71;
  v75 = (v73 - 0x49E7E146A80CF6F7 - ((2 * v73) & 0x6C303D72AFE6121CLL) + 5) ^ (v74 >> 61);
  *&v74 = __ROR8__(v73, 8);
  v76 = ((v75 >> 61) ^ 0x2F982D6B10712B06 ^ ((v75 ^ 0xB6181EB957F30909) + v74) ^ ((v75 ^ 0xB6181EB957F30909) << (119 - ((v21 ^ 0x64) & (v69 ^ 0x99) ^ 0x74)))) + __ROR8__(((v75 ^ 0xB6181EB957F30909) + v74) ^ 0x2F982D6B10712B03, 8);
  v77 = LODWORD(STACK[0x5A8]);
  *(STACK[0x5D8] + 384) ^= (v76 ^ 0x183E9C62172C411CLL) >> ((8 * v60) & 0x30 ^ 0x10) >> ((8 * v60) & 8);
  v78 = (a16 - 0x5F2E04143183B6B9 + v77);
  *(STACK[0x5D8] + 420) ^= *v78;
  v79 = &v78[-((2 * v78) & 0xA4112FDF36DA4FA2) - 0x2DF768106492D82FLL];
  v80 = ((((v79 << 56) & 0xF800000000000000 ^ 0x2BD1EAB89CA2F492) - 0x16AA1A76A4FF7BLL) ^ (((v79 << 56) & 0xF800000000000000 ^ 0x61283BC7B4A7EFE5) - 0x4AEF7B655EA1E40CLL) ^ (((v79 << 56) & 0xF800000000000000 ^ 0x9AF9D17F28051B77) + 0x4EC16E223DFCEF62)) + ((((v79 >> 8) ^ 0x1E5E64F05C49FAC9) + 0x19F2C6FEABFA18E1) ^ (((v79 >> 8) ^ 0x92C08C34B0816742) - 0x6A93D1C5B8CD7A94) ^ (((v79 >> 8) ^ 0x8C4CE0530353F0ACLL) - 0x741FBDA20B1FED7ALL));
  v81 = v79 & 0x12814560108A0822 ^ (v79 & 0x12B74D629EEAE823 ^ 0xA4C1F2978AE33C7FLL) & (v79 & 0x12B74D629EEAE823 ^ 0xA4F7FA9D2583DDFELL) ^ 0x63722C9F9B5DE0ALL ^ (v80 - ((2 * (v80 - 0x454E0D745C65E957)) & 0x60833A7CCFB854AELL) + 0x6AF38FCA0B764100);
  v82 = (v80 - 0x454E0D745C65E957) ^ 0x21FDA96C130E265DLL;
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xE236BC558C935F11;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xFA1BAB80AA95DBA1;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (v86 + __ROR8__(v85, 8)) ^ 0xF9DA05CC83CD37C9;
  v88 = __ROR8__(v87, 8);
  v89 = v87 ^ __ROR8__(v86, 61);
  v90 = v89 + v88;
  v91 = (v89 + v88) ^ __ROR8__(v89, 61);
  *(&v74 + 1) = v91 ^ 0xED3234253CD25FFLL;
  *&v74 = v91;
  v92 = (__ROR8__(v90 ^ 0xED3234253CD25FFLL, 8) + (v91 ^ 0xED3234253CD25FFLL)) ^ 0xC90A3C5DE473E566;
  v93 = (v74 >> 61) ^ 0xBF299744B6D0D17FLL ^ (v92 - 0x40D668BB492F2E81 - ((2 * v92) & 0x7E532E896DA1A2FELL));
  v94 = (v93 + __ROR8__(v92, 8)) ^ 0x2F982D6B10712B03;
  *(STACK[0x5D8] + 249) ^= ((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ 0x183E9C62172C411CuLL) >> ((8 * (v79 & 7)) ^ 8);
  v95 = a16 - 0x5F2E04143183B6B9 + LODWORD(STACK[0x5A0]);
  *(STACK[0x5D8] + 285) ^= *v95;
  v96 = v95 - 0x4F43361EC0507D00 - ((2 * v95) & 0x617993C27F5F0742) + 161;
  *(&v74 + 1) = (v95 + 1068466944 - ((2 * v95) & 0x7F5F0742) + 161) & 0xF8 ^ 0xA0u;
  *&v74 = v96 ^ 0xB0BCC9E13FAF8300;
  v97 = (v74 >> 8) - 0x3996A37E2E436631;
  v98 = v97 ^ 0x21FDA96C130E265DLL;
  v99 = (__ROR8__(v97 ^ 0x12B74D629EEAE823, 8) + (v97 ^ 0x21FDA96C130E265DLL)) ^ 0xE236BC558C935F11;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (v100 + __ROR8__(v99, 8)) ^ 0xFA1BAB80AA95DBA1;
  v102 = __ROR8__(v101, 8);
  v103 = v101 ^ __ROR8__(v100, 61);
  v104 = (v103 + v102) ^ 0xF9DA05CC83CD37C9;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8) + v105;
  *&v74 = __ROR8__(v105, 61);
  *(&v74 + 1) = v106 ^ v74 ^ 0xED3234253CD25FFLL;
  *&v74 = v106 ^ v74;
  v107 = v74 >> 61;
  *&v74 = __ROR8__(v106 ^ 0xED3234253CD25FFLL, 8);
  v108 = v107 ^ (*(&v74 + 1) + v74);
  v109 = v108 ^ 0xC90A3C5DE473E566;
  v110 = __ROR8__((*(&v74 + 1) + v74) ^ 0xC90A3C5DE473E566, 8) + (v108 ^ 0xC90A3C5DE473E566);
  LOBYTE(v26) = (v108 & 0x15 ^ 0xC) & (~(v108 ^ 0x66) | 0xEA) ^ 0x30;
  v111 = v110 ^ 0x2F982D6B10712B03;
  v112 = ((v110 ^ 0x2F982D6B10712B03) << v26) ^ (v110 >> 8) ^ 0x2F982D6B10712BLL;
  v113 = LODWORD(STACK[0x598]);
  *(STACK[0x5D8] + 114) ^= ((v112 + (v111 ^ __ROR8__(v109, 61))) ^ 0x183E9C62172C411CuLL) >> (~((8 * v96) ^ 0x3E) & 0x30) >> (((8 * v96) ^ 0x3E) & 8);
  v114 = (a16 - 0x5F2E04143183B6B9 + v113);
  *(STACK[0x5D8] + 150) ^= *v114;
  v115 = &v114[-((2 * v114) & 0xBB6EAD6FFA76924CLL) + 0x5DB756B7FD3B4926];
  v116 = ((((v115 >> 8) ^ 0xA67931CA3DB5949) & (~(v115 << 56) | 0xF7FFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL | ((v115 >> 4) << 60)) ^ 0x2A3A244A14266200) - 0x3996A37E2E436631;
  *&v74 = __ROR8__(v116 ^ 0x12B74D629EEAE823, 8);
  v116 ^= 0x21FDA96C130E265DuLL;
  v117 = (v74 + v116) ^ 0xE236BC558C935F11;
  v118 = v117 ^ __ROR8__(v116, 61);
  *&v74 = __ROR8__(v117, 8);
  v119 = ((v74 + v118 - ((v74 + v118) ^ 0xFA1BAB80AA95DBA1)) ^ 0xFFFFFFFFFFFFFFFELL) + v74 + v118;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xF9DA05CC83CD37C9;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8) + v122;
  v124 = v123 ^ __ROR8__(v122, 61);
  *(&v74 + 1) = v124 ^ 0xED3234253CD25FFLL;
  *&v74 = v124;
  v125 = ((v124 ^ 0xED3234253CD25FFLL) + __ROR8__(v123 ^ 0xED3234253CD25FFLL, 8)) ^ 0xC90A3C5DE473E566;
  v126 = v125 ^ (v74 >> 61);
  v127 = (v126 + __ROR8__(v125, 8)) ^ 0x2F982D6B10712B03;
  *(STACK[0x5D8] + 935) ^= (((v127 ^ __ROR8__(v126, 61)) + __ROR8__(v127, 8)) ^ 0x183E9C62172C411CuLL) >> (~(8 * v115) & 0x10) >> ((8 * v115) & 0x28 ^ 0x20);
  v128 = a16 - 0x5F2E04143183B6B9 + LODWORD(STACK[0x588]);
  *(STACK[0x5D8] + 15) ^= *v128;
  v129 = v128 - ((2 * v128) & 0x969C3C903EBB49AALL) - 0x34B1E1B7E0A25B2BLL;
  v130 = ((((v129 << 56) & 0xFBFFFFFFFFFFFFFFLL ^ 0xFFFFFFFFFFFFFFFLL) & ((v129 >> 8) ^ 0x9C8F31472ED3CBF8) & 0x9FFFFFFFFFFFFFFFLL | (((v129 >> 5) & 3) << 61)) ^ 0xDC447F5966CC965CLL) - 0x3996A37E2E436631;
  v131 = v130 ^ 0x12B74D629EEAE823;
  v130 ^= 0x21FDA96C130E265DuLL;
  v132 = (__ROR8__(v131, 8) + v130) ^ 0xE236BC558C935F11;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (v133 + __ROR8__(v132, 8)) ^ 0xFA1BAB80AA95DBA1;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (v135 + __ROR8__(v134, 8)) ^ 0xF9DA05CC83CD37C9;
  v137 = __ROR8__(v136, 8);
  v138 = v136 ^ __ROR8__(v135, 61);
  v139 = (8 * v138) & 0xC90A3C5DE473E560;
  v140 = (v137 + v138) ^ 0xED3234253CD25FFLL;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = __ROR8__(v140, 8) + v141;
  v143 = v142 ^ 0xC90A3C5DE473E566 ^ __ROR8__(v141, 61);
  v144 = (v143 + __ROR8__(((v139 ^ 0xC90A3C5DE473E566) + v139) ^ v142, 8)) ^ 0x2F982D6B10712B03;
  v145 = __ROR8__(v144, 8);
  v146 = v144 ^ __ROR8__(v143, 61);
  v147 = LODWORD(STACK[0x580]);
  *(STACK[0x5D8] + 800) ^= ((v146 + v145) ^ 0x183E9C62172C411CuLL) >> (~(8 * v129) & 8) >> ((8 * v129) & 0x30 ^ 0x20);
  *(STACK[0x5D8] + 836) ^= *(a16 - 0x5F2E04143183B6B9 + v147);
  v148 = v25 + v147 - 0x60FC3C49C142B3D0 - ((2 * (v25 + v147)) & 0x3E07876C7D7A986ELL) + 7;
  v149 = ((((v148 >> 8) ^ 0xC2FA0ABFA1B434F6) - 0x2214AE9461C0DCBALL) ^ (((v148 >> 8) ^ 0x50AFE141A6138B10) + 0x4FBEBA9599989CA4) ^ (((v148 >> 8) ^ 0x92CAE83DB19902AALL) - 0x72244C1671EDEAE6)) - 0xE4D3192733AA101 + (((((v148 & 0xFFFFFFFFFFFFFFF8 ^ 0x9F03C3B63EBD4C30) << 56) ^ 0x12CB194DB1554135) - 0x581CD34EF5EB3105) ^ ((((v148 & 0xFFFFFFFFFFFFFFF8 ^ 0x9F03C3B63EBD4C30) << 56) ^ 0x47D83160E1DB68B4) - 0xD0FFB63A5651884) ^ ((((v148 & 0xFFFFFFFFFFFFFFF8 ^ 0x9F03C3B63EBD4C30) << 56) ^ 0x5513282D508E2981) - 0x1FC4E22E143059B1));
  v150 = v149 ^ 0x12B74D629EEAE823;
  v149 ^= 0x21FDA96C130E265DuLL;
  v151 = __ROR8__(v150, 8) + v149;
  *&v74 = __ROR8__(v149, 61);
  v152 = v151 ^ 0xE71E26419E774F8ELL ^ (v74 - ((2 * v74) & 0xA51342825C8213ELL) + 0x5289A1412E4109FLL);
  v153 = (v152 + (__ROR8__(v151, 8) ^ 0x11E236BC558C935FLL)) ^ 0xFA1BAB80AA95DBA1;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = (__ROR8__(v153, 8) + v154) ^ 0xF9DA05CC83CD37C9;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = v156 + __ROR8__(v155, 8);
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157 ^ 0xED3234253CD25FFLL, 8) + (v158 ^ 0xED3234253CD25FFLL)) ^ 0xC90A3C5DE473E566;
  v160 = __ROR8__(v159, 8);
  *(&v74 + 1) = v158 ^ 0xED3234253CD25FFLL;
  *&v74 = v158;
  v161 = v159 ^ (v74 >> 61);
  v162 = (v160 + v161) >> 8;
  *(STACK[0x5D8] + 665) ^= (((((((v160 + v161) << 56) ^ 0x9372F714FFA7C4FCLL) & (v162 ^ 0xFFD86FF194AF9ED4) | v162 & 0x8D08EB00583B03) ^ 0x907FFF3DFFB7F5FFLL) + (__ROR8__(v161, 61) ^ 0x2F982D6B10712B03 ^ (v160 + v161))) ^ 0x183E9C62172C411CLL) >> (~(8 * v148) & 8) >> (~(8 * v148) & 0x30);
  v163 = a16 - 0x5F2E04143183B6B9 + (LODWORD(STACK[0x578]) + 680074768);
  *(STACK[0x5D8] + 701) ^= *v163;
  v164 = v163 - ((2 * v163) & 0x62C4528ABF996262) + 0x316229455FCCB131;
  v165 = (v162 & 0xA8CD2857677ED8 ^ 0x28882843007008) & (v162 ^ 0x88412051627858) ^ v162 & 0x8042045057688;
  v166 = (v165 ^ 0xFFF7FFDFBEFF8FF0) & (v164 ^ 0x2DCB72E3A64F9BCBLL) ^ v165 & 0xA8492051032AD8;
  *(&v74 + 1) = v166 ^ 0xF0;
  *&v74 = v166 ^ 0x1CA15B86B8830A00;
  v167 = v74 >> 8;
  v168 = v167 - 0x3996A37E2E436631;
  v169 = v164 & 0x78812010020250 ^ (v164 & 0x21FDA96C130E265DLL ^ 0xA918FEF5A7BF2241) & (v164 & 0x21FDA96C130E265DLL ^ 0xD89FD6B9E4F3DFCELL) ^ 0xF28EABCF714BCDF1 ^ (v167 - ((2 * (v167 - 0x3996A37E2E436631)) & 0xB6D7A8258DEDD3D8) + 0x21D5309498B383BBLL);
  v170 = (v169 + __ROR8__(v168 ^ 0x12B74D629EEAE823, 8)) ^ 0xE236BC558C935F11;
  v171 = __ROR8__(v170, 8);
  v172 = v170 ^ __ROR8__(v169, 61);
  v173 = (-(v171 + v172) ^ 0xA81F8440D5E9E0 ^ (0xFA1BAB80AA95DBA1 - ((v171 + v172) ^ 0xFA1BAB80AA95DBA1)) ^ (v171 + v172 + 0xA81F8440D5E9E0 - ((2 * (v171 + v172)) & 0x1503F0881ABD3C0))) - 0x5E4547F556A245FLL;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = (v174 + __ROR8__(v173, 8)) ^ 0xF9DA05CC83CD37C9;
  v176 = v175 ^ __ROR8__(v174, 61);
  v177 = __ROR8__(v175, 8) + v176;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177 ^ 0xED3234253CD25FFLL, 8) + (v178 ^ 0xED3234253CD25FFLL);
  *(&v74 + 1) = v178 ^ 0xED3234253CD25FFLL;
  *&v74 = v178;
  v180 = (v74 >> 61) ^ 0xC90A3C5DE473E566 ^ v179;
  v181 = (((v179 << 56) ^ 0x6600000000000000) + v180 + ((v179 >> 8) ^ 0xC90A3C5DE473E5)) ^ 0x2F982D6B10712B03;
  v182 = (v181 ^ __ROR8__(v180, 61)) + __ROR8__(v181, 8);
  v183 = (LODWORD(STACK[0x570]) + 680074768);
  *(STACK[0x5D8] + 530) ^= (v182 ^ 0x183E9C62172C411CuLL) >> ((8 * (v164 & 7)) ^ 8);
  *(STACK[0x5D8] + 566) ^= *(a16 - 0x5F2E04143183B6B9 + v183);
  LOBYTE(v164) = a16 + 71 + v183 + 92;
  v184 = v25 + v183 + 0x5638036278DC105CLL - ((2 * (v25 + v183)) & 0xAC7006C4F1B820B8);
  v185 = ((((v184 >> 3 << 59) ^ 0xEAA8B0A0433533D2) & ((v184 >> 8) ^ 0xFBFCC4EDA185ABE2) | (v184 >> 8) & 0x574F5FBCCACC2DLL) ^ 0xB2FEB8A3637DFFD2) - 0x3996A37E2E436631;
  v186 = v185 ^ 0x21FDA96C130E265DLL;
  LOBYTE(v145) = v185 & 0x20 ^ 0x78 ^ (v185 & 0x38 | 0x83) & (v185 & 0x38 ^ 0x9F);
  v187 = (((v185 >> 8) ^ 0x12B74D629EEAE8) + (v185 ^ 0x21FDA96C130E265DLL) + ((v185 ^ 0x12B74D629EEAE823) << (v145 & 0x28) << (v145 & 0x10))) ^ 0xE236BC558C935F11;
  v188 = __ROR8__(v187, 8);
  v189 = v187 ^ __ROR8__(v186, 61);
  v190 = (v188 + v189) ^ 0xFA1BAB80AA95DBA1;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = (v191 + __ROR8__(v190, 8)) ^ 0xF9DA05CC83CD37C9;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = v193 + __ROR8__(v192, 8);
  v195 = v194 ^ __ROR8__(v193, 61);
  *(&v74 + 1) = v195 ^ 0xED3234253CD25FFLL;
  *&v74 = v195;
  v196 = ((v195 ^ 0xED3234253CD25FFLL) + __ROR8__(v194 ^ 0xED3234253CD25FFLL, 8)) ^ 0xC90A3C5DE473E566;
  v197 = (v74 >> 61) ^ 0x1C4AD0EC1160225BLL ^ (v196 + 0x1C4AD0EC1160225BLL - ((2 * v196) & 0x3895A1D822C044B6));
  v198 = (v197 + __ROR8__(v196, 8)) ^ 0x2F982D6B10712B03;
  *(STACK[0x5D8] + 395) ^= ((__ROR8__(v198, 8) + (v198 ^ __ROR8__(v197, 61))) ^ 0x183E9C62172C411CuLL) >> ((8 * (v164 & 7)) ^ 0x20);
  v199 = a16 - 0x5F2E04143183B6B9 + (LODWORD(STACK[0x568]) + 680074768);
  *(STACK[0x5D8] + 431) ^= *v199;
  v200 = v199 + 0x41C1B6AD3B01DC00 - ((2 * v199) & 0x83836D5A7603B86ELL) + 55;
  *(&v74 + 1) = (v199 - ((2 * v199) & 0x6E) + 55) & 0xF8 ^ 0x30u;
  *&v74 = v200 ^ 0x41C1B6AD3B01DC00;
  v201 = (v74 >> 8) - 0x3996A37E2E436631;
  *&v74 = __ROR8__(v201 ^ 0x12B74D629EEAE823, 8);
  v201 ^= 0x21FDA96C130E265DuLL;
  v202 = (v200 & 0x3690510C114511 ^ 0xC3681B009306400) & (v200 & 0x3690510C114511 ^ 0xD0091A109216413) ^ v200 & 0x80400C004500 ^ (v74 + v201);
  v203 = __ROR8__(v201, 61) ^ 0xE236BC558C935F11 ^ (v74 + v201);
  v204 = (((v202 >> 8) ^ 0xEE363DF585B33BLL) + v203 + ((v202 << 56) ^ 0x1100000000000000)) ^ 0xFA1BAB80AA95DBA1;
  v205 = v204 ^ __ROR8__(v203, 61);
  v206 = (v205 + __ROR8__(v204, 8)) ^ 0xF9DA05CC83CD37C9;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = __ROR8__(v206, 8) + v207;
  v209 = __ROR8__(v208 ^ 0xED3234253CD25FFLL, 8);
  v210 = v208 ^ __ROR8__(v207, 61);
  v211 = ((v210 ^ 0xED3234253CD25FFLL) + v209) ^ 0xC90A3C5DE473E566;
  *(&v74 + 1) = v210 ^ 0xED3234253CD25FFLL;
  *&v74 = v210;
  v212 = v211 ^ (v74 >> 61);
  v213 = (v212 + __ROR8__(v211, 8)) ^ 0x2F982D6B10712B03;
  v214 = v213 ^ __ROR8__(v212, 61);
  *&v74 = __ROR8__(v213, 8);
  *(STACK[0x5D8] + 0x78438 % ((v214 + v74) & 0x2A0 ^ 0x37AC6EE3 ^ ((v214 + v74) & 0x2A0 | 0x37AC6D5Fu))) = *(STACK[0x5D8] + 260) ^ (((v214 + v74) ^ 0x183E9C62172C411CuLL) >> (((8 * (v199 - ((2 * v199) & 0x6E)) + 120) ^ 0x5D) & 8) >> (((8 * (v199 - ((2 * v199) & 0x6E)) + 120) ^ 0x5D) & 0x30 ^ 0x20));
  v215 = a16 - 0x5F2E04143183B6B9 + (LODWORD(STACK[0x560]) + 680074768);
  *(STACK[0x5D8] + 296) ^= *v215;
  v216 = v215 + 0x376937B4C7D1600 - ((2 * v215) & 0x6ED26F698FA2CF2) + 121;
  *(&v74 + 1) = (v215 - ((2 * v215) & 0xF2) + 121) & 0xF8 ^ 0x78u;
  *&v74 = v216 ^ 0x376937B4C7D1600;
  v217 = (v74 >> 8) - 0x3996A37E2E436631;
  v218 = v217 ^ 0x21FDA96C130E265DLL;
  v219 = (__ROR8__(v217 ^ 0x12B74D629EEAE823, 8) + (v217 ^ 0x21FDA96C130E265DLL)) ^ 0xE236BC558C935F11;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = (__ROR8__(v219, 8) + v220) ^ 0xFA1BAB80AA95DBA1;
  v222 = v221 ^ __ROR8__(v220, 61);
  *&v74 = __ROR8__(v222, 61);
  v223 = v222 + __ROR8__(v221, 8);
  v224 = ((v74 & 0xF9DA05CC83CD37C9 ^ 0xF9DA05CC83CD37C9) + (v74 & 0xF9DA05CC83CD37C9)) ^ v223;
  v225 = v223 ^ 0xF9DA05CC83CD37C9 ^ v74;
  v226 = STACK[0x5D8];
  v227 = __ROR8__(v224, 8) + v225;
  v228 = ((((v216 & 0xDF9F5D8B08EE516CLL ^ 0x93883EF43F26614DLL) - 0x14380ABCCCCCA32BLL) ^ ((v216 & 0xDF9F5D8B08EE516CLL ^ 0x8F9B6E92A69AAFCDLL) - 0x82B5ADA55706DABLL) ^ ((v216 & 0xDF9F5D8B08EE516CLL ^ 0x1F05416D91D0DEE8) + 0x674A8ADA9DC5E372)) + (((v216 & 0xDF9F5D8B08EE516CLL ^ 0xFAE41A913AD782DBLL) + 0x4F7E412158C47051) ^ ((v216 & 0xDF9F5D8B08EE516CLL ^ 0xBE8E79BA8C90CD2BLL) + 0xB14220AEE833FA1) ^ ((v216 & 0xDF9F5D8B08EE516CLL ^ 0x98E32FABB6C50EF4) + 0x2D79741BD4D6FC80)) + 0x4AC6D3CAE3D3F311) ^ 0x37775CD0A2205FE8 ^ __ROR8__(v225, 61) ^ (v227 + 0x37775CD0A2205FE8 - ((2 * v227) & 0x6EEEB9A14440BFD0));
  v229 = (v228 + __ROR8__(v227 ^ 0xED3234253CD25FFLL, 8)) ^ 0xC90A3C5DE473E566;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (v230 + __ROR8__(v229, 8)) ^ 0x2F982D6B10712B03;
  v232 = v231 ^ __ROR8__(v230, 61);
  *&v74 = __ROR8__(v231, 8);
  v233 = (LODWORD(STACK[0x558]) + 680074768);
  *(STACK[0x5D8] + 125) ^= ((v232 + v74) ^ 0x183E9C62172C411CuLL) >> ((8 * v216) & 0x10) >> ((8 * v216) & 0x28 ^ 8);
  v234 = (a16 - 0x5F2E04143183B6B9 + v233);
  v226[161] ^= *v234;
  v235 = &v234[-((2 * v234) & 0x94E530E164A9782) - 0x7B58D678F4DAB43FLL];
  v236 = (((v235 << 56) & 0xF8FFFFFFFFFFFFFFLL ^ 0x3FFFFFFFFFFFFFFFLL) & ((v235 >> 8) ^ 0xE9222549BEBEE820) ^ ((((v235 >> 4) & 1) << 60) | 0xE9A6826039B5CD6BLL)) - 0x3996A37E2E436631;
  v237 = v236 ^ 0x12B74D629EEAE823;
  v236 ^= 0x21FDA96C130E265DuLL;
  v238 = (__ROR8__(v237, 8) + v236) ^ 0xE236BC558C935F11;
  v239 = v238 ^ __ROR8__(v236, 61);
  v240 = (__ROR8__(v238, 8) + v239) ^ 0xFA1BAB80AA95DBA1;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (v241 + __ROR8__(v240, 8)) ^ 0xF9DA05CC83CD37C9;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = v243 + __ROR8__(v242, 8);
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = (v245 ^ 0xED3234253CD25FFLL) + __ROR8__(v244 ^ 0xED3234253CD25FFLL, 8);
  *(&v74 + 1) = v245 ^ 0xED3234253CD25FFLL;
  *&v74 = v245;
  v247 = (v74 >> 61) ^ 0xC90A3C5DE473E566 ^ v246;
  v248 = v247 + ((v246 << 56) ^ 0x6600000000000000) + ((v246 >> 8) ^ 0xC90A3C5DE473E5);
  *(&v74 + 1) = (v247 + ((v246 >> 8) ^ 0x5DE473E5)) ^ 3;
  *&v74 = v248 ^ 0x2F982D6B10712B00;
  v226[946] ^= (((v74 >> 8) + (__ROR8__(v247, 61) ^ 0x2F982D6B10712B03 ^ v248)) ^ 0x183E9C62172C411CLL) >> (((8 * v235) ^ 0x48) & 0x10) >> (((8 * v235) ^ 0x48) & 0x28);
  v249 = a16 - 0x5F2E04143183B6B9 + (LODWORD(STACK[0x550]) + 680074768);
  v226[26] ^= *v249;
  v250 = v249 - 0x364814A561D2EF00 - ((2 * v249) & 0x936FD6B53C5A235CLL) + 174;
  *(&v74 + 1) = v250 & 0xF8 ^ 0xA8;
  *&v74 = v250 ^ 0xC9B7EB5A9E2D1100;
  v251 = (v74 >> 8) - 0x3996A37E2E436631;
  *&v74 = __ROR8__(v251 ^ 0x12B74D629EEAE823, 8);
  v251 ^= 0x21FDA96C130E265DuLL;
  v252 = __ROR8__((v74 + v251) ^ 0xE236BC558C935F11, 8);
  v253 = (v74 + v251) ^ 0xE236BC558C935F11 ^ __ROR8__(v251, 61);
  v254 = (v253 + v252) ^ 0xFA1BAB80AA95DBA1;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = (v255 + __ROR8__(v254, 8)) ^ 0xF9DA05CC83CD37C9;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = v257 + __ROR8__(v256, 8);
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = __ROR8__(v258 ^ 0xED3234253CD25FFLL, 8) + (v259 ^ 0xED3234253CD25FFLL);
  *(&v74 + 1) = v259 ^ 0xED3234253CD25FFLL;
  *&v74 = v259;
  v261 = v260 ^ 0xC90A3C5DE473E566 ^ (v74 >> 61);
  v262 = v261 + __ROR8__(v260 ^ 0xC90A3C5DE473E566, 8);
  v226[811] ^= ((__ROR8__(__ROR8__(__ROR8__(v262, 44) ^ 0xA5AC8BE40B8F3D0DLL, 20) ^ 0xDC48F731D8CF6BBBLL, 8) + (__ROR8__(v261, 61) ^ 0x2F982D6B10712B03 ^ v262)) ^ 0x183E9C62172C411CuLL) >> (((8 * v250) ^ 0xF4) & 0x28) >> (((8 * v250) ^ 0xF4) & 0x10);
  v263 = a16 - 0x5F2E04143183B6B9 + (LODWORD(STACK[0x548]) + 680074768);
  v226[847] ^= *v263;
  v264 = v263 - ((2 * v263) & 0x7C5CFDB6B657BC0CLL) - 0x41D18124A4D421FALL;
  v265 = ((((v264 >> 3 << 59) ^ 0xA2EDF54A59D2C5FBLL) & ((v264 >> 8) ^ 0xFF51D904208DCC25) | (v264 >> 8) & 0x120AB5A62D3A04) ^ 0xA2FFFF7EDBDBEFFFLL) - 0x3996A37E2E436631;
  v266 = v265 ^ 0x21FDA96C130E265DLL;
  v267 = __ROR8__(v265 ^ 0x12B74D629EEAE823, 8) + (v265 ^ 0x21FDA96C130E265DLL);
  v268 = __ROR8__(v266, 61) ^ 0xE236BC558C935F11 ^ v267;
  v269 = ((v267 << 56) ^ 0x1100000000000000) + v268 + ((v267 >> 8) ^ 0xE236BC558C935FLL);
  v270 = __ROR8__(v268, 61) ^ 0xFA1BAB80AA95DBA1 ^ v269;
  v271 = (((v269 >> 8) ^ 0xFA1BAB80AA95DBLL) + v270 + ((v269 << 56) ^ 0xA100000000000000)) ^ 0xF9DA05CC83CD37C9;
  v272 = v271 ^ __ROR8__(v270, 61);
  v273 = v272 + __ROR8__(v271, 8);
  *&v74 = __ROR8__(v272, 61);
  *(&v74 + 1) = v273 ^ v74 ^ 0xED3234253CD25FFLL;
  *&v74 = v273 ^ v74;
  v274 = (__ROR8__(v273 ^ 0xED3234253CD25FFLL, 8) + *(&v74 + 1)) ^ 0xC90A3C5DE473E566;
  v275 = v274 ^ (v74 >> 61);
  v276 = (__ROR8__(v274, 8) + v275) ^ 0x2F982D6B10712B03;
  v226[676] ^= ((__ROR8__(v276, 8) + (v276 ^ __ROR8__(v275, 61))) ^ 0x183E9C62172C411CuLL) >> (~(8 * v264) & 0x20) >> ((8 * v264) & 0x18 ^ 0x10);
  LODWORD(v47) = LODWORD(STACK[0x540]) + 680074768;
  LODWORD(v275) = (v47 ^ 0x9FD6BBBB) & (2 * (v47 & 0xDC16323B)) ^ v47 & 0xDC16323B;
  LODWORD(v264) = ((2 * (v47 ^ 0x7D29FFF)) ^ 0xB7895B88) & (v47 ^ 0x7D29FFF) ^ (2 * (v47 ^ 0x7D29FFF)) & 0xDBC4ADC4;
  LODWORD(v262) = v264 ^ 0x4844A444;
  LODWORD(v264) = (v264 ^ 0x90800980) & (4 * v275) ^ v275;
  LODWORD(v275) = ((4 * v262) ^ 0x6F12B710) & v262 ^ (4 * v262) & 0xDBC4ADC4;
  LODWORD(v264) = (v275 ^ 0x4B00A500) & (16 * v264) ^ v264;
  LODWORD(v275) = ((16 * (v275 ^ 0x90C408C4)) ^ 0xBC4ADC40) & (v275 ^ 0x90C408C4) ^ (16 * (v275 ^ 0x90C408C4)) & 0xDBC4ADC0;
  LODWORD(v264) = v264 ^ 0xDBC4ADC4 ^ (v275 ^ 0x98408C00) & (v264 << 8);
  v277 = v47 ^ (2 * ((v264 << 16) & 0x5BC40000 ^ v264 ^ ((v264 << 16) ^ 0x2DC40000) & (((v275 ^ 0x43842184) << 8) & 0x5BC40000 ^ 0x1B400000 ^ (((v275 ^ 0x43842184) << 8) ^ 0x44AD0000) & (v275 ^ 0x43842184))));
  v278 = a16 - 0x5F2E04143183B6B9 + (v277 ^ 0x781769B3);
  v226[712] ^= *v278;
  v279 = v278 - ((2 * v278) & 0xCE58D670A3C3F206) + 0x672C6B3851E1F903;
  v280 = ((((v279 >> 8) ^ 0xAFB08398528BAAFCLL) & (~(v279 << 56) | 0x57FFFFFFFFFFFFFFLL) | (v279 << 56) & 0x5000000000000000) ^ 0xAFD7AFF36ADA4B05) - 0x3996A37E2E436631;
  v281 = v274 & 0x3D ^ 0xDD;
  LOBYTE(v49) = v281 & 0x14;
  *&v74 = __ROR8__(v280 ^ 0x12B74D629EEAE823, 8);
  v280 ^= 0x21FDA96C130E265DuLL;
  v282 = (v74 + v280) ^ 0xE236BC558C935F11;
  v283 = v282 ^ __ROR8__(v280, 61);
  v284 = (__ROR8__(v282, 8) + v283) ^ 0xFA1BAB80AA95DBA1;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = v285 >> (v274 & 0x3D) >> (v281 & 0x29 ^ 0x20u);
  v287 = (v285 + __ROR8__(v284, 8)) ^ 0xF9DA05CC83CD37C9;
  v288 = v287 ^ (8 * v285) ^ (v286 >> v49);
  v289 = (v288 + __ROR8__(v287, 8)) ^ 0xED3234253CD25FFLL;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (v290 << (v274 & 3) << (v274 & 3 ^ 3)) + (v290 >> 61);
  v292 = __ROR8__(v289, 8) + v290;
  LOBYTE(v289) = (v277 & 0x69 ^ 0xBC) & (v277 & 0x69 ^ 0xB5) ^ v277 & 0x60;
  v293 = v292 ^ 0xC90A3C5DE473E566 ^ v291;
  v294 = (v292 ^ 0xC90A3C5DE473E566) << ~((((v289 ^ 0xB4) + 53) ^ ((v289 ^ 0xF9) + 122)) ^ ((v289 ^ 0x90) + 17));
  v295 = v294 - 0x3D38A34ED52E9317 + (~(2 * v294) | 0x7A71469DAA5D262FLL);
  v296 = ((v295 & 0x1FEA9538F571E37ALL ^ 0xE2D77EF72ADF7CEDLL ^ (v295 ^ 0x2038A34ED52E9317) & ((v292 >> 8) ^ 0xE0DC60FB576A6F60)) + v293) ^ 0x2F982D6B10712B03;
  v226[541] ^= (((v296 ^ __ROR8__(v293, 61)) + __ROR8__(v296, 8)) ^ 0x183E9C62172C411CLL) >> (~(8 * v279) & 0x10) >> ((8 * v279) & 0x28 ^ 8);
  return (*(STACK[0x5B8] + 8 * (LODWORD(STACK[0x5D4]) ^ 0x7C9u)))();
}

uint64_t sub_10008AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v6 - 2105280565 + v3 - LODWORD(STACK[0x410]);
  v8 = v7 > v3 - 1057801383;
  if (v3 > LODWORD(STACK[0x478]) + 1057797116 + ((LODWORD(STACK[0x478]) + 10) | v4) != v7 < 0xC0F33B59)
  {
    v8 = v7 < 0xC0F33B59;
  }

  return (*(v5 + 8 * ((116 * !v8) ^ LODWORD(STACK[0x478]))))(a1, a2, a3, 0xFA1BAB80AA95DBA1, 0xF9DA05CC83CD37C9, 0xE236BC558C935F11, 0xC90A3C5DE473E566, 0xC6695C81D1BC99CFLL);
}

uint64_t sub_10008AE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = 1061 * (v17 ^ 0x1112);
  v31 = v19 - v18;
  v32 = STACK[0x5D8];
  v33 = a16 - 0x5F2E04143183B6B9 + v19;
  *(STACK[0x5D8] + (821 * v18 + 431025) % 0x3BCu) ^= *v33;
  v34 = ((((v33 - 0x5A14FB4FA6D9411CLL - ((2 * v33) & 0x4BD60960B24D7DC8)) << (((v30 + 26) | 8u) - 52)) & 0xF800000000000000 | ((v33 - 0x5A14FB4FA6D9411CLL - ((2 * v33) & 0x4BD60960B24D7DC8uLL)) >> 8)) ^ 0xE0A5EB04B05926BELL) + a8;
  v35 = (821 * v18 + v29) % 0x3BCu;
  v36 = (__ROR8__(v34 ^ v25, 8) + (v34 ^ v23)) ^ a6;
  v37 = v36 ^ __ROR8__(v34 ^ v23, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a4;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8) + v39;
  v41 = (-v40 ^ v20 ^ (v40 + v20 - ((2 * v40) & 0xF9004A37AC259314)) ^ (a5 - (__ROR8__(__ROR8__(v40, 20) ^ 0x2F29BB8B714D209CLL, 44) ^ 0x416D111E8A0FC552))) + a5;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = v42 + __ROR8__(v41, 8);
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = ((v44 ^ v27) + __ROR8__(v43 ^ v27, 8)) ^ a7;
  *(&v46 + 1) = v44 ^ v27;
  *&v46 = v44;
  v47 = (v46 >> 61) ^ v21 ^ (v45 + v21 - ((2 * v45) & 0x63DD5552BFF8FF2ALL));
  v48 = (v47 + __ROR8__(v45, 8)) ^ v22;
  v49 = ((((v48 ^ __ROR8__(v47, 61)) + __ROR8__(v48, 8)) ^ v24) >> ((8 * ((a16 + 71 + v31 + v18 - 28) & 7)) ^ 0x20)) ^ *(v32 + v35);
  v50 = v18 + 1;
  *(v32 + v35) = v49;
  v51 = v16 > v50 + v28;
  if (v16 < v28 != v50 > 0x3F0CC4A6)
  {
    v51 = v16 < v28;
  }

  return (*(v26 + 8 * ((6490 * v51) ^ v30)))();
}

uint64_t sub_100091A7C()
{
  v0 = STACK[0x590];
  LODWORD(STACK[0x5D4]) = LODWORD(STACK[0x530]) ^ 0x459629AD;
  LODWORD(STACK[0x4D8]) = LODWORD(STACK[0x528]) ^ 0x459629AD;
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x508]) - LODWORD(STACK[0x518]);
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4F0]) + ((LODWORD(STACK[0x510]) + 37187306) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x4F8]));
  LODWORD(STACK[0x410]) += v0 ^ 0x99A;
  return sub_100074D8C();
}

uint64_t sub_100091B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(a71 + 8);
  STACK[0x5E0] = v72 + 2256;
  return (*(v73 + 8 * (((v74 == 0) * (((v71 - 957778335) & 0x3916877F) + 6391)) ^ (v71 + 1751))))();
}

uint64_t sub_100091B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x500] = v6;
  STACK[0x2B0] = &STACK[0x710] + v6 + 80;
  STACK[0x5D8] = &STACK[0x710] + v6 + 160;
  STACK[0x400] = &STACK[0x710] + v6;
  STACK[0x5B0] = &STACK[0x710] + v6 + 1136;
  STACK[0x288] = v5 + 0x5AA6495B1A3225B3;
  v7 = -146734535 * (LODWORD(STACK[0x5E8]) * (((a5 + 543) ^ 0x72F) - 1673085858) + 1252476261) - 283985144;
  v8 = (v7 + 2049121536 - 290192425 * (v7 % 0x48B)) ^ 0x4872BA25;
  v9 = (v8 + 600324443) ^ 0xD3F69A6A;
  v10 = -2107356869 - v8;
  v11 = (v8 + 600324443) ^ 0x4872BA25;
  v12 = ((v9 + 4 * (v8 + 600324443) + ((v8 + 600324443) >> 30)) ^ (-2107356869 - v8)) - v11;
  v13 = v10 - (v12 ^ 0xA0E68BF3);
  HIDWORD(v14) = v12 ^ 0xA0E68BF3;
  LODWORD(v14) = v12 ^ 0xA0E68BF3;
  v15 = v12 ^ v11;
  v16 = v12 ^ 0xA0E68BF3 ^ v9;
  v17 = v16 + (v14 >> 28) - v13;
  v18 = v15 ^ v17;
  HIDWORD(v14) = v18 ^ 0x175A4A75;
  LODWORD(v14) = v18;
  return (*(STACK[0x5B8] + 8 * a5))((v17 ^ 0x892D21DB ^ ((v14 >> 30) + v16 - (v18 ^ 0x175A4A75) - (v13 - (v18 ^ 0x175A4A75)))) + v16 - (v18 ^ 0x175A4A75));
}

uint64_t sub_100091D7C@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v11 = *(&STACK[0x5E8] + a5);
  v12 = (a5 - 1673081951 * v11 - 1250497479) * v8 - a6 - 1700343330;
  v13 = ((LODWORD(STACK[0x40C]) + a2 + v12 % (v9 - 993) * v7 + v12) ^ v6) + v10;
  v14 = a2 - v13;
  v15 = v13 ^ LODWORD(STACK[0x40C]);
  v16 = v13 ^ v6;
  HIDWORD(v17) = v13;
  LODWORD(v17) = v13;
  v18 = ((v15 + (v17 >> 30)) ^ (a2 - v13)) - v16;
  v19 = v14 - (v18 ^ a4);
  v20 = v18 ^ a4 ^ v15;
  HIDWORD(v17) = v18 ^ a4;
  LODWORD(v17) = v18 ^ a4;
  v21 = ((v17 >> 28) - v19 + v20) ^ 0xA2A9B32E ^ ((v19 & 0xB7BCC186 ^ 0xB7BCC186) + (v19 & 0xB7BCC186));
  v22 = v16 ^ 0x24F38DD ^ v18 ^ v21;
  v11 &= 0x857A8E4C;
  v23 = v20 - v22;
  HIDWORD(v17) = v22;
  LODWORD(v17) = v22;
  v24 = ((v17 >> 30) - (v19 - v22) + v23 - 1565936850 - ((2 * ((v17 >> 30) - (v19 - v22) + v23)) & 0x4553665C)) ^ v21;
  LODWORD(STACK[0x40C]) = (v24 ^ a1) + v23;
  return (*(a3 + 8 * ((28 * (a5 + 1 >= (((((v24 ^ a1) & 0x1418486) + (v24 & 0x1418486 ^ 0x1400482)) | ((((v11 ^ 0x7EE8C46) + 1774579747) ^ ((v11 ^ 0x5894B07E) + 918539291) ^ ((v11 ^ 0x5F7A3C38) + 827408477)) + (((v11 ^ 0x97405CD4) + 667384458) ^ ((v11 ^ 0x111EE791) - 1583758899) ^ ((v11 ^ 0x3243509) - 1281158315)) + 1540807561)) ^ 0x857B8E84))) ^ (v9 - 673))))();
}

uint64_t sub_100091FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 - ((2 * v6) & 0xC);
  v9 = STACK[0x5D8];
  *(STACK[0x5D8] + (106 * v6 + (v7 ^ 0x17031u)) % 0x3CD) = v8 - 9;
  *(v9 + (106 * v6 + 95824) % 0x3CDu) = v8 - 10;
  return (*(a6 + 8 * ((3932 * (v6 == 14)) ^ v7)))();
}

uint64_t sub_100092034(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (a2 & 0xF) * v7 + 95718 - ((4414150 * ((a2 & 0xFu) * v7 + 95718)) >> 32) * v9;
  v14 = STACK[0x5D8];
  v15 = STACK[0x400];
  v16 = *(STACK[0x400] + 524);
  v15[524] = *(STACK[0x5D8] + v13);
  *(v14 + v13) = v16;
  v17 = a1 % 0xF * v7 + 95824 - ((4414150 * (a1 % 0xF * v7 + 95824)) >> 32) * v9;
  v18 = v15[630];
  v15[630] = *(v14 + v17);
  *(v14 + v17) = v18;
  LOBYTE(v17) = v15[736];
  v19 = (a2 + v11) % 0xEu * v7 + 95930 - ((4414150 * ((a2 + v11) % 0xEu * v7 + 95930)) >> 32) * v9;
  v15[736] = *(v14 + v19);
  *(v14 + v19) = v17;
  LOBYTE(v13) = v15[842];
  v20 = v10 % 0xD * v7 + 96036 - ((4414150 * (v10 % 0xD * v7 + 96036)) >> 32) * v9;
  v21 = v10 - v11;
  v22 = (v10 - v11) ^ a1;
  v23 = v22 - 1151449466;
  v24 = v22 ^ v12;
  v25 = v23 ^ (v10 + a2);
  v15[842] = *(v14 + v20);
  *(v14 + v20) = v13;
  LOBYTE(v13) = v15[948];
  v26 = v25 + v21;
  v27 = v24 % 0xC * v7 + 96142 - ((4414150 * (v24 % 0xC * v7 + 96142)) >> 32) * v9;
  v15[948] = *(v14 + v27);
  *(v14 + v27) = v13;
  v28 = v23 % 0xB;
  v29 = v15[1054];
  v30 = v23 % 0xB * v7 + 96248 - ((4414150 * (v23 % 0xB * v7 + 96248)) >> 32) * v9;
  v15[1054] = *(v14 + v30);
  *(v14 + v30) = v29;
  v31 = v23 % 0xB + 5;
  v32 = v25 % 0xA * v7 + 96354 - ((4414150 * (v25 % 0xA * v7 + 96354)) >> 32) * v9;
  v33 = v15[187];
  v15[187] = *(v14 + v32);
  *(v14 + v32) = v33;
  v34 = v26 % 9 * v7 + 96460 - ((4414150 * (v26 % 9 * v7 + 96460)) >> 32) * v9;
  v35 = v25 - v24;
  v36 = v15[293];
  v37 = v26 ^ 0x621629E8;
  v38 = v24 - (v26 ^ 0x621629E8);
  v39 = (v35 ^ v23) - v37;
  v15[293] = *(v14 + v34);
  v40 = (v38 ^ 0xE2) & 7;
  *(v14 + v34) = v36;
  v41 = v35 - v38;
  v42 = v15[399];
  v15[399] = *(v14 + (v40 * v7 + 96566 - ((4414150 * (v40 * v7 + 96566)) >> 32) * v9));
  *(v14 + ((((v31 | (1018 - v28)) & 0x387) + v40) * v7 + 848 - ((4414150 * ((((v31 | (1018 - v28)) & 0x387) + v40) * v7 + 848)) >> 32) * v9)) = v42;
  v43 = v39 % 7 * v7 + 96672 - ((4414150 * (v39 % 7 * v7 + 96672)) >> 32) * v9;
  v44 = v15[505];
  v15[505] = *(v14 + v43);
  *(v14 + v43) = v44;
  LOBYTE(v34) = v15[611];
  v45 = v41 % 6 * v7 + 96778 - ((4414150 * (v41 % 6 * v7 + 96778)) >> 32) * v9;
  v15[611] = *(v14 + v45);
  LOBYTE(v37) = (v38 ^ 0xE2) + v41;
  *(v14 + v45) = v34;
  v46 = v24 % 5 * v7 + 96884 - ((4414150 * (v24 % 5 * v7 + 96884)) >> 32) * v9;
  LOBYTE(v34) = v15[717];
  v47 = v39 + 1695373816;
  v15[717] = *(v14 + v46);
  LOBYTE(v24) = (v37 + v24) ^ v41;
  *(v14 + v46) = v34;
  v48 = ((v37 + 1) & 3) * v7 + 96990;
  v49 = v48 - ((4414150 * v48) >> 32) * v9;
  LOBYTE(v37) = v15[823];
  LOBYTE(v39) = v24 - v39;
  v15[823] = *(v14 + v49);
  *(v14 + v49) = v37;
  v50 = v47 % 3 * v7 + 97096 - ((4414150 * (v47 % 3 * v7 + 97096)) >> 32) * v9;
  LOBYTE(v24) = v15[929];
  v15[929] = *(v14 + v50);
  *(v14 + v50) = v24;
  v51 = v15[1035];
  if (v39)
  {
    v52 = 1590;
  }

  else
  {
    v52 = 1484;
  }

  v53 = v52 + 95718;
  v15[1035] = *(v14 + (v53 - ((4414150 * v53) >> 32) * v9));
  *(v14 + v53 % ((v53 & 0x38C ^ v9) + (v53 & 0x38C))) = v51;
  *(v14 + ((*(v14 + 95718 - (((95718 * v8) >> 32) >> 6) * v9) ^ 0xF7u) * v7 + 55544) % (((v6 + 1182997576) & 0xB97CDEB6) + 957)) = -9;
  return (*(a6 + 8 * v6))(247, 55544);
}

uint64_t sub_1000924CC()
{
  v5 = v3 + 106 * v1;
  *(v4 + v5 % 0x3CD) = v1 - ((2 * v1) & 0xC) - 9;
  *(v4 + (v5 + 106) % 0x3CD) = v1 - ((v1 << (11 * (v0 ^ 0x35) + 106)) & 0xC) - 10;
  return (*(v2 + 8 * ((6582 * (((v1 + 2 - v0) | (v0 - (v1 + 2))) >= 0)) ^ (v0 + 2330))))();
}

uint64_t sub_10009256C@<X0>(int a1@<W0>, int a2@<W2>, unsigned int a3@<W3>, int a4@<W4>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v17 = v15[524];
  v18 = STACK[0x40C];
  v19 = v13 + LODWORD(STACK[0x40C]) % 0xF * v9;
  v20 = v13 + (a7 & 0xF) * v9 - ((4414150 * (v13 + (a7 & 0xFu) * v9)) >> 32) * v11;
  v15[524] = *(v16 + v20);
  *(v16 + v20) = v17;
  LOBYTE(v20) = v15[630];
  v15[630] = *(v16 + v19 - 867 - ((((v19 - 867) * v10) >> 32) >> 6) * v11);
  *(v16 + (v19 + 106 - ((4414150 * (v19 + 106)) >> 32) * v11)) = v20;
  v21 = v13 + a3 % 0xE * v9 + 212 - ((4414150 * (v13 + a3 % 0xE * v9 + 212)) >> 32) * v11;
  v22 = v15[736];
  *(v16 + ((v21 & 0x1C0 ^ 0xE943C3E7) & (v21 | 0xE943C227) ^ 0x9A898FE7) * (((v21 & 0x3BF ^ 0x5CB1D3BF) + (v21 & 0x3BF)) & 0x4831C4BF)) = *(v16 + v21);
  v23 = v7 - a4;
  *(v16 + v21) = v22;
  v24 = v18 ^ (v7 - a4);
  v25 = v24 + a6;
  v26 = v13 + v7 % 0xD * v9 + 318 - ((4414150 * (v13 + v7 % 0xD * v9 + 318)) >> 32) * v11;
  v27 = v24 + a6 - (v24 + a6) / 0xBu * a1;
  v28 = a7 + v7;
  v29 = v24 ^ -a4;
  v30 = v15[842];
  v15[842] = *(v16 + v26);
  *(v16 + v26) = v30;
  LOBYTE(v26) = v15[948];
  v31 = v13 + v29 % 0xC * v9 + 424 - ((4414150 * (v13 + v29 % 0xC * v9 + 424)) >> 32) * v11;
  v15[948] = *(v16 + v31);
  *(v16 + v31) = v26;
  v32 = v13 + v27 * v9 + 530 - ((4414150 * (v13 + v27 * v9 + 530)) >> 32) * v11;
  LOBYTE(v27) = v15[1054];
  v15[1054] = *(v16 + v32);
  v33 = (v25 ^ v28) + v23;
  *(v16 + v32) = v27;
  v34 = v13 + (v25 ^ v28) % 0xA * v9 + 636 - ((4414150 * (v13 + (v25 ^ v28) % 0xA * v9 + 636)) >> 32) * v11;
  LOBYTE(v27) = v15[187];
  v15[187] = *(v16 + v34);
  v35 = (v25 ^ v28) - v29;
  *(v16 + v34) = v27;
  v36 = v33 ^ a5;
  v37 = v13 + v33 % 9 * v9 + 742 - ((4414150 * (v13 + v33 % 9 * v9 + 742)) >> 32) * v11;
  v38 = v15[293];
  v15[293] = *(v16 + v37);
  LOBYTE(v33) = (v29 - (v33 ^ a5)) ^ v14;
  v39 = (v35 ^ v25) - v36;
  *(v16 + v37) = v38;
  LOBYTE(v37) = v15[399];
  v40 = v13 + (v33 & 7) * v9 + 848 - ((4414150 * (v13 + (v33 & 7) * v9 + 848)) >> 32) * v11;
  v41 = v35 - (v29 - v36);
  v15[399] = *(v16 + v40);
  *(v16 + v40) = v37;
  v42 = v13 + v39 % 7 * v9 + 954 - ((4414150 * (v13 + v39 % 7 * v9 + 954)) >> 32) * v11;
  LOBYTE(v18) = v15[505];
  v15[505] = *(v16 + v42);
  *(v16 + v42) = v18;
  v43 = v13 + v41 % 6 * v9 + 1060 - ((4414150 * (v13 + v41 % 6 * v9 + 1060)) >> 32) * v11;
  LOBYTE(v37) = v15[611];
  v15[611] = *(v16 + v43);
  *(v16 + v43) = v37;
  v44 = v13 + v29 % 5 * v9 + 1166 - ((4414150 * (v13 + v29 % 5 * v9 + 1166)) >> 32) * v11;
  LOBYTE(v43) = v15[717];
  v15[717] = *(v16 + v44);
  LOBYTE(v33) = v41 + v33;
  *(v16 + v44) = v43;
  LOBYTE(v44) = ((v33 + v29) ^ v41) - v39;
  v45 = v13 + ((v33 + 1) & 3) * v9 + 1272;
  v46 = v45 - ((4414150 * v45) >> 32) * v11;
  LOBYTE(v41) = v15[823];
  v15[823] = *(v16 + v46);
  *(v16 + v46) = v41;
  v47 = v13 + (v39 + a2) % 3 * v9 + 1378 - ((4414150 * (v13 + (v39 + a2) % 3 * v9 + 1378)) >> 32) * v11;
  LOBYTE(v39) = v15[929];
  v15[929] = *(v16 + v47);
  *(v16 + v47) = v39;
  v48 = 1035;
  if (v44)
  {
    v48 = 168;
  }

  v49 = v15[1035];
  v15[1035] = v15[v48];
  v15[v48] = v49;
  v50 = *(v16 + (-9992 - 57 * v11)) ^ (16 * *(v16 + (-9992 - 57 * v11)));
  v51 = v13 + (v50 ^ 0xC5 ^ *(*(&off_1002A2080 + v8 - 3185) + (97 * (v50 ^ 0x50) + 32495) % 0x3A0u)) * v9;
  *(v16 + 67522 - (((67522 * v10) >> 32) >> 6) * v11) = *(v16 + (v51 - ((4414150 * v51) >> 32) * v11));
  return (*(v12 + 8 * v8))(97);
}

uint64_t sub_100092A84@<X0>(uint64_t a1@<X8>)
{
  v5 = 97 * (*(v4 + (106 * (v1 & 0xF) - 9992 - 973 * (((106 * (v1 & 0xF) - 9992) & 0xFFFE) / 0x3CD))) ^ (16 * (*(v4 + ((((v2 - 1527) | 0x403) - 3161) * (v1 >> 4) - 9992 - 973 * ((((((v2 - 1527) | 0x403) - 3161) * (v1 >> 4) - 9992) & 0xFFFEu) / 0x3CD))) & 0xF)) ^ 0x70) + 60722;
  v6 = *(a1 + (v5 - 928 * ((4628198 * v5) >> 32))) >> 4;
  v7 = ((((v6 ^ 2) & 7 ^ 0x17) & 1 | 0xFFFFFFDA) ^ (((v6 ^ 2) & 7 ^ 0x17) & (v6 ^ 0x33333333) | 0xFFFFFFA0)) * ((v6 ^ 2) + 903);
  *(v4 + (106 * v1 + 27348 - 973 * (((106 * v1 + 27348) & 0xFFFEu) / 0x3CD))) = (16 * *(v4 + (v7 - 973 * ((4414150 * v7) >> 32)))) ^ 0x87;
  return (*(v3 + 8 * ((7773 * (v1 == 255)) ^ v2)))();
}

uint64_t sub_100092BB8@<X0>(int a1@<W0>, __int16 a2@<W2>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, uint64_t a6@<X8>)
{
  v13 = (*(v12 + (a2 + (a5 & 0xF) * a1 - (((((a2 + (a5 & 0xF) * a1) & 0xFFFE) * a3) >> 16) >> 8) * a4)) ^ 0xFB ^ (16 * (*(v12 + (a2 + ((1373 * (v6 ^ 0xCC1)) ^ 0xAD0) * (a5 >> 4) - ((((a2 + ((1373 * (v6 ^ 0xCC1)) ^ 0xAD0) * (a5 >> 4)) * a3) >> 16) >> 8) * a4)) & 0xF))) * v8 + 3395;
  v14 = v11 + (*(a6 + (v13 - v13 / 0x3A0u * v9)) ^ 0x1A) * a1;
  *(v12 + (a5 * a1 - (((((a5 * a1) & 0xFFFEu) * a3) >> 16) >> 8) * a4)) = *(v12 + (v14 - ((v14 * v7) >> 32) * a4));
  return (*(v10 + 8 * (((8 * (a5 == 255)) | (16 * (a5 == 255))) ^ v6)))();
}

uint64_t sub_100092CA0@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v5 + ((((v3 - 2746) | 0x424) - 954) * v1 - 9992) % 0x3CDu);
  *(v5 + ((106 * v1 - 7872) & 0xFFFEu) % ((((190 - 106 * v1) & 0x14C) + ((106 * v1 - 7872) & 0x14C)) | 0x389u)) = *(a1 + (97 * (v6 ^ 0xF6) + 30167 - 928 * ((((97 * (v6 ^ 0xF6u) + 30167) * v2) >> 16) >> 8))) ^ ((v6 ^ 0xFC) + 80) ^ 0xA0;
  return (*(v4 + 8 * ((7 * (v1 == 15)) ^ v3)))();
}