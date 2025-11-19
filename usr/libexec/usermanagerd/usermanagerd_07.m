uint64_t sub_100086E90(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v8 = 0u;
  v7 = 0u;
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a3[1];
  v11 = *a3;
  __s = 0x1000000;
  v12 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  return 0;
}

uint64_t sub_100086F50()
{

  return cchkdf();
}

uint64_t sub_100086FA4()
{

  return sub_100086E90(v0, v1 + 8, (v1 + 40));
}

uint64_t sub_100087074(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t sub_1000870AC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = sub_1000871B0(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL sub_10008721C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000871B0(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t sub_100087284(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_100087304(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_1000873A0(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_1000873A0(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && sub_1000871B0(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_10008742C(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  v8 = sub_1000873A0(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = v8[1] + v8[2];
      v15[0] = v8[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (sub_1000B0168(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_10008750C(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_10008742C(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_1000AFE9C();
  }

  return v5;
}

uint64_t sub_10008756C(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_10008742C(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_1000B0118();
  }

  return v5;
}

uint64_t sub_1000875CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_100087304(a5, v7) && !sub_1000B04E8())
    {
      return 1;
    }
  }

  else
  {
    sub_1000B29F4();
  }

  sub_1000B2A5C();
  return 0;
}

uint64_t sub_1000876CC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t sub_1000876E4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t sub_10008772C(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = sub_1000B0EB4(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t sub_1000877D8(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t sub_100087860()
{
  ccder_sizeof_implicit_raw_octet_string();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_100087930(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_100087998()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_1000879D0(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return sub_1000B0318(va2, va, va1);
}

uint64_t sub_1000879F0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t sub_100087A40()
{

  return ccder_sizeof();
}

void *sub_100087A5C()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_100087A74(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t sub_100087AC4()
{

  return ccder_blob_decode_range();
}

uint64_t sub_100087AE4()
{

  return sub_1000AFCE8();
}

uint64_t sub_100087C1C()
{
  sub_100086D14(&off_1000DDF30 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(sub_100081F24 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100081F24();
}

uint64_t sub_100087CD4(uint64_t a1, unsigned int a2)
{
  sub_100086D14(&off_1000DDF30 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(sub_100081F94 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100081F94(a1, a2);
}

uint64_t sub_100087DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100086D14(&off_1000DDF30 != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100087EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100086D14(&off_1000DDF30 != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100087FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100086D14(&off_1000DDF30 != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10008810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_100086D14(&off_1000DDF30 != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10008823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100086D14(&off_1000DDF30 != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_10008836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100086D14(&off_1000DDF30 != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5);
}

uint64_t sub_100088464()
{
  sub_100086D14(&off_1000DDF30 != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0]();
}

uint64_t sub_10008851C(uint64_t a1, uint64_t a2)
{
  sub_100086D14(&off_1000DDF30 != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2);
}

uint64_t sub_1000885EC(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1000886B4(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10008877C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100088844(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10008890C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1000889D4(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100088A9C(uint64_t a1)
{
  sub_100086D14(&off_1000DDF30 != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100086D14(0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

char *sub_100088B70(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_100088BF8(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_100088B70(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

void sub_100088DDC()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

id sub_100088E34(uint64_t a1)
{
  if (a1)
  {
    v2 = [@"encrypt" dataUsingEncoding:4];
    v3 = [v2 mutableCopy];

    [v3 appendData:a1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100088EAC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [@"encrypt" length];
    a1 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", &v3[[v2 bytes]], objc_msgSend(v2, "length") - v3);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100088F2C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_10008900C(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1000890EC(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1000890F8(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_100089160(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t sub_1000891C8(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t sub_100089230(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t sub_100089254(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1000892C8(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t sub_100089330(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t sub_100089398(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_10008945C(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t sub_1000894C4(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

uint64_t sub_100089618(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t sub_100089624(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100089778(uint64_t result)
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

uint64_t sub_100089784(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t sub_100089790(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_10008979C(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

void sub_1000897A8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_1000897B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_1000897C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1000897D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_1000897E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_1000897F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_100089808(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_100089818(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100089828(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100089838(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_100089848(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_100089858(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

uint64_t sub_100089868(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

void sub_100089874(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_100089884(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_100089894(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

void sub_1000898A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_1000898B4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_1000898C4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_1000898D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

void sub_1000898E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1000898F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

void sub_100089904()
{
  sub_100017D5C();
  v3 = [NSNumber numberWithUnsignedInt:?];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
  }

  v5 = v3;
  [v4 setObject:v3 forKeyedSubscript:v0];
}

void sub_10008997C(void *a1, uint64_t a2)
{
  [0 setObject:a1 forKeyedSubscript:a2];
}

void sub_1000899C0()
{
  sub_100017D5C();
  v3 = [NSNumber numberWithUnsignedInt:?];
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 32);
  }

  v5 = v3;
  [v4 setObject:v3 forKeyedSubscript:v0];
}

uint64_t sub_100089A48(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    LODWORD(result) = v2(v1);
    if (v3 < 0)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100089A80(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100089A8C(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    return v2(v1) & ((v3 & 0x40000000u) >> 30);
  }

  return result;
}

uint64_t sub_100089AC4(uint64_t result)
{
  if (result)
  {
    v1 = sub_100017E1C(result);
    if (v2(v1))
    {
      return v3 & 0x3FFFFFFF;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100089B00(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 >> 30)
  {
    if (qword_1000EB2C0 != -1)
    {
      dispatch_once(&qword_1000EB2C0, &stru_1000DD410);
    }

    v2 = qword_1000EB2B8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    return 0;
  }

  v7 = *(*(a1 + 16) + 16);

  return v7();
}

void sub_100089CB0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 8);
  }
}

void sub_100089CC4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

BOOL sub_100089EFC()
{
  v0 = malloc_type_malloc(0x16uLL, 0xA27D4BC3uLL);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  snprintf(v0, 0x16uLL, "%s%s", "IODeviceTree", ":/product");
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, v1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-ios-diagnostics", kCFAllocatorDefault, 0);
    v5 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  free(v1);
  return v5;
}

uint64_t sub_10008A438(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10008A1A8(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:kUMUserSessionIDKey];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

id sub_10008A4DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = sub_10008A2F4(a1, a2);
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectForKeyedSubscript:kUMUserSessionUUIDKey];
      if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10008A58C(uint64_t result)
{
  if (result)
  {
    v1 = sub_100088F2C(*(result + 8));
    v2 = sub_100089AC4(v1);

    return v2;
  }

  return result;
}

id sub_10008A5D0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = sub_1000013A0(v2);
    v25 = 0;
    v4 = [v3 dataWithContentsOfFile:@"/private/var/keybags/nextsession.kb" error:&v25];
    v5 = v25;

    if (v4)
    {
      v6 = sub_10009950C(v4);
      v7 = v6;
      if (!v6)
      {
        if (qword_1000EB3A8 != -1)
        {
          dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
        }

        if (sub_10005399C(qword_1000EB3A0))
        {
          sub_100053940();
          if (sub_1000539D0())
          {
            v12 = v1;
          }

          else
          {
            v12 = v1 & 0xFFFFFFFE;
          }

          if (v12)
          {
            sub_1000538D4();
            sub_100053914();
            v13 = _os_log_send_and_compose_impl();
            v14 = v13;
            if (v13)
            {
              sub_100002A8C(v13);
            }
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        goto LABEL_56;
      }

      v3 = sub_100099214(v6, @"BLOB");
      if (v3)
      {
        v8 = sub_100098D4C(v7, @"BLOBLEN", 0);
        if (v8)
        {
          if ([v3 length] == v8)
          {
            v3 = v3;
            v9 = v3;
LABEL_57:

            goto LABEL_58;
          }

          if (qword_1000EB3A8 != -1)
          {
            dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
          }

          v18 = qword_1000EB3A0;
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          sub_100053940();
          v21 = sub_1000539B4();
          if (sub_100053958(v21))
          {
LABEL_46:
            sub_1000538D4();
            sub_100053914();
            v22 = _os_log_send_and_compose_impl();
            v23 = v22;
            if (v22)
            {
              sub_100002A8C(v22);
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (qword_1000EB3A8 != -1)
          {
            dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
          }

          v18 = qword_1000EB3A0;
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          sub_100053940();
          v20 = sub_1000539B4();
          if (sub_100053958(v20))
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if (qword_1000EB3A8 != -1)
        {
          dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
        }

        v18 = qword_1000EB3A0;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        sub_100053940();
        v19 = sub_1000539B4();
        if (sub_100053958(v19))
        {
          goto LABEL_46;
        }
      }

      v23 = 0;
LABEL_52:
      free(v23);
LABEL_53:

LABEL_56:
      v9 = 0;
      goto LABEL_57;
    }

    if ([v5 code] == 2)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      sub_100053940();
      v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (sub_10000230C(v10))
      {
        sub_1000538D4();
        sub_100053914();
        v11 = _os_log_send_and_compose_impl();
        if (!v11)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v15 = sub_100053940();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 &= ~1u;
      }

      if (v15)
      {
        v16 = v7;
        v17 = [v5 code];
        v26 = 67109120;
        v27 = v17;
        sub_1000538EC();
        sub_100053924();
        v11 = _os_log_send_and_compose_impl();

        if (!v11)
        {
LABEL_49:
          free(v11);
LABEL_50:
          v9 = 0;
LABEL_58:

          goto LABEL_59;
        }

LABEL_31:
        sub_100002A8C(v11);
        goto LABEL_49;
      }
    }

    v11 = 0;
    goto LABEL_49;
  }

  v9 = 0;
LABEL_59:

  return v9;
}

uint64_t sub_10008AAA8(NSObject *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22[0] = a3;
  v22[1] = a2;
  v4 = [NSData dataWithBytes:v22 length:32];
  v5 = v3[1].isa;
  v6 = sub_100089A80(v5);
  v19[0] = 0;
  v7 = [v6 dataWrappingDataWithDeviceClassF:v4 error:v19];
  v8 = v19[0];

  if (!v7)
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    if (!sub_10005399C(qword_1000EB3A0))
    {
      goto LABEL_30;
    }

    sub_100053940();
    v12 = sub_100053980();
    if (sub_100053930(v12))
    {
      sub_1000538FC();
      v20 = 2114;
      v21 = v8;
      sub_1000538EC();
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (![v7 length])
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    if (!sub_10005399C(qword_1000EB3A0))
    {
      goto LABEL_30;
    }

    sub_100053940();
    v13 = sub_100053980();
    if (sub_100053930(v13))
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (sub_100053130(v3, v7))
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_100053940();
      v9 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (sub_100053930(v9))
      {
        sub_1000538FC();
        sub_1000538EC();
        sub_100053914();
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v17 = 1;
    goto LABEL_31;
  }

  if (qword_1000EB3A8 != -1)
  {
    dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
  }

  if (sub_10005399C(qword_1000EB3A0))
  {
    sub_100053940();
    v14 = sub_100053980();
    if (sub_100053930(v14))
    {
LABEL_25:
      sub_1000538FC();
      sub_1000538EC();
LABEL_26:
      sub_100053914();
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }

      goto LABEL_29;
    }

LABEL_28:
    v16 = 0;
LABEL_29:
    free(v16);
  }

LABEL_30:
  v17 = 0;
LABEL_31:

  return v17;
}

uint64_t sub_10008AE10(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  *a2 = -1;
  *a3 = -1;
  v6 = sub_10008A5D0(a1);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = sub_100089A80(v7);
    v17 = 0;
    v9 = [v8 dataUnwrappingDataWithDeviceClassF:v6 error:&v17];
    v10 = v17;

    if (v9)
    {
      if ([v9 length] == 32)
      {
        v11 = [v9 bytes];
        *v4 = v11[1];
        *a3 = *v11;
        v12 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      if (sub_10005399C(qword_1000EB3A0))
      {
        sub_100053940();
        if (!sub_1000539D0())
        {
          LODWORD(v4) = v4 & 0xFFFFFFFE;
        }

        if (v4)
        {
          v13 = a3;
          v14 = [v9 length];
          v18 = 134217984;
          v19 = v14;
          sub_1000538EC();
          sub_100053924();
          v15 = _os_log_send_and_compose_impl();

          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

id sub_10008B010(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1000013A0(*(a1 + 8));
  v2 = [v1 removeFileAtPath:@"/private/var/keybags/nextsession.kb" error:0];

  if (v2)
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v4 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1000EB3A8 != -1)
    {
      dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
    }

    v3 = qword_1000EB3A0;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
LABEL_18:
      sub_100053968();
      sub_100053924();
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }

      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_21:
  free(v9);
LABEL_22:

  return v2;
}

void sub_10008B1C0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100089624(*(a1 + 8));
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008B254;
    v3[3] = &unk_1000DD770;
    v3[4] = a1;
    [v2 initializeLocalUsersAndGroups:v3];
  }
}

void sub_10008B254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  sub_10000166C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v12;
  [v16 removeAllObjects];
  [v17 removeAllObjects];
  sub_100001718();
  v18 = *(v14 + 32);
  if (v18)
  {
    v18 = v18[3];
  }

  v19 = v18;
  sub_1000017F4();
  v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = *a11;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*a11 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(a10 + 8 * i);
        v26 = sub_100053238(*(v14 + 32), v25);
        [v16 addObject:v26];

        v27 = sub_100053450(*(v14 + 32), v25);
        [v17 addObject:v27];
      }

      sub_1000017F4();
      v22 = [v19 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  sub_100001A48();
}

void sub_10008B3A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = sub_100098CCC(v5, kUMUserSessionIDKey, 0xFFFFFF9BLL);
    if (v7 == -1)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      if (sub_10005399C(qword_1000EB3A0))
      {
        v24 = 0;
        sub_1000011A8(0);
        if (sub_1000539D0())
        {
          v8 = v3;
        }

        else
        {
          v8 = v3 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v25 = 67109120;
          v26 = -1;
          sub_1000539EC();
          sub_100053924();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }
    }

    v11 = *(a1 + 8);
    v12 = sub_100089624(v11);
    sub_1000022EC();
    v19 = 3221225472;
    v20 = sub_100053590;
    v21 = &unk_1000DD798;
    v22 = a1;
    v13 = v6;

    v23 = v13;
    LOBYTE(v13) = [v12 updateLocalUsersAndGroupsWithError:0 updater:v18];

    if ((v13 & 1) == 0)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v14 = qword_1000EB3A0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v24 = 0;
        sub_1000011A8(0);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (sub_10000230C(v15))
        {
          v25 = 67109120;
          v26 = v7;
          sub_1000539EC();
          sub_100053924();
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }
    }
  }
}

void sub_10008B634(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = sub_100089624(v4);
    sub_1000022EC();
    v12 = 3221225472;
    v13 = sub_10005363C;
    v14 = &unk_1000DD7C0;
    v6 = v3;

    v15 = v6;
    LOBYTE(v4) = [v5 updateLocalUsersAndGroupsWithError:0 updater:v11];

    if ((v4 & 1) == 0)
    {
      if (qword_1000EB3A8 != -1)
      {
        dispatch_once(&qword_1000EB3A8, &stru_1000DD7E0);
      }

      v7 = qword_1000EB3A0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100053940();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
        if (sub_10000230C(v8))
        {
          v16 = 138543362;
          v17 = v6;
          sub_100053914();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }
    }
  }
}

void sub_10008B7DC(void *a1, uint64_t a2)
{
  v4 = [a1 se];
  v5 = *(a2 + 8);
  *(a2 + 8) = v4;

  objc_storeStrong((a2 + 16), a1);
}

void sub_10008B82C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = sub_1000013A0(*(a1 + 8));
  *a3 = [v5 atomicallyWriteData:a2 toPath:@"/private/var/keybags/nextsession.kb" error:0];
}

void sub_10008B8D8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if ((v2 + 1) > 1)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 1;
    }

    *(a1 + 16) = v3;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v8 = *(a1 + 16);
        sub_1000553F0();
        v9 = _os_log_send_and_compose_impl();
        v7 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    sub_10008BA40(a1);
    sub_10008BC70(a1);
  }
}

void sub_10008BA00(uint64_t a1)
{
  if (a1)
  {
    sub_10008BA40(a1);

    sub_10008BC70(a1);
  }
}

void sub_10008BA40(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) != -1)
    {
      goto LABEL_4;
    }

    v2 = *(a1 + 24);
    v3 = sub_10008900C(v2);
    v4 = *(a1 + 32);
    *(a1 + 8) = [v3 registerPlain:v4];

    if (*(a1 + 8) == -1)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      sub_1000011A8(0);
      v15 = sub_10005540C();
      if (!sub_1000553E0(v15))
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_4:
      v5 = *(a1 + 24);
      v6 = sub_10008900C(v5);
      v7 = sub_100055380(a1);
      v8 = *(a1 + 8);

      LOBYTE(v7) = [v6 setState:v7 forToken:v8];
      v9 = *(a1 + 40);
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = sub_1000011A8(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v13 = *(a1 + 16);
            sub_1000553F0();
            sub_1000553D0();
            goto LABEL_17;
          }

LABEL_19:
          v17 = 0;
LABEL_20:
          free(v17);
        }

LABEL_21:

        return;
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      sub_1000011A8(0);
      v14 = sub_10005540C();
      if (!sub_1000553E0(v14))
      {
        goto LABEL_19;
      }
    }

    sub_100053968();
    sub_1000553D0();
LABEL_17:
    v16 = _os_log_send_and_compose_impl();
    v17 = v16;
    if (v16)
    {
      sub_100002A8C(v16);
    }

    goto LABEL_20;
  }
}

void sub_10008BC70(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = sub_10008900C(v2);
    v4 = [v3 post:*(a1 + 32)];

    v5 = *(a1 + 40);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        sub_1000011A8(0);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
        if (sub_1000553E0(v7))
        {
LABEL_8:
          sub_100053968();
          sub_1000553D0();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }

          goto LABEL_11;
        }

LABEL_10:
        v10 = 0;
LABEL_11:
        free(v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000011A8(0);
      v8 = sub_10005540C();
      if (sub_1000553E0(v8))
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }
}

uint64_t sub_10008BDA4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_10008BDEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    objc_opt_self();
    v3 = [&off_1000E15E8 mutableCopy];
    [v2 setObject:v3 forKeyedSubscript:@"UserPersonaBundleIDS"];
  }
}

void sub_10008BE6C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    objc_opt_self();
    v3 = [&off_1000E1600 mutableCopy];
    [v2 setObject:v3 forKeyedSubscript:@"UserPersonaBundleIDS"];
  }
}

uint64_t sub_10008BEEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_1000577C0(v3, @"UserPersonaType");
    if (v5 == 4)
    {
      v6 = &off_1000E15E8;
    }

    else
    {
      if (v5 != 3)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v6 = &off_1000E1600;
    }

    objc_opt_self();
    v7 = [v6 mutableCopy];
    a1 = sub_1000565AC(a1, v7, v4);
  }

LABEL_8:

  return a1;
}

uint64_t sub_10008BF90()
{
  sub_100057540();
  v3 = v2;
  v4 = v0;
  v5 = v4;
  if (v1)
  {
    v6 = v4;
    sub_1000017F4();
    v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
    if (v8)
    {
      v9 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v3 objectForKeyedSubscript:*(8 * i)];

          if (!v11)
          {
            v8 = 1;
            goto LABEL_12;
          }
        }

        sub_1000017F4();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10008C0C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    if ((a3 - 3) <= 2)
    {
      v7 = off_1000DD8A0[a3 - 3];
      sub_100057558();
      a1 = sub_10008BF90();
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_10008C12C(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 < 7 && ((0x6Du >> a2) & 1) != 0)
    {
      v6 = qword_1000B8328[a2];
      v7 = dword_1000B8360[a2];

      return sub_10008C298(result, v7, v6);
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005731C(qword_1000EB3F0))
      {
        sub_1000572D0();
        v3 = sub_100057454();
        if (sub_100057088(v3))
        {
          sub_1000538EC();
          sub_100001800();
          v4 = sub_1000575B8();
          v5 = v4;
          if (v4)
          {
            sub_100002A8C(v4);
          }
        }

        else
        {
          v5 = 0;
        }

        free(v5);
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10008C298(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (!a1)
  {
    return 0;
  }

  sub_100057170();
  if (!v9)
  {
    dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
  }

  v10 = sub_100057760();
  if (sub_10005757C(v10))
  {
    sub_10005737C();
    v11 = sub_10005717C();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v4 &= ~1u;
    }

    if (v4)
    {
      v12 = *(a1 + 32);
      v13 = v3;
      v14 = [v12 userPersonas];
      [v14 count];
      sub_1000571B0();
      sub_100057148();
      sub_100053924();
      v15 = _os_log_send_and_compose_impl();

      if (v15)
      {
        sub_100002A8C(v15);
      }

      v5 = &off_1000EB000;
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if (a3 + a2 <= a2)
  {
LABEL_16:
    sub_100057170();
    if (!v9)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000577D8(v5[126]))
    {
      sub_10005734C();
      v16 = os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG);
      if (sub_1000570A8(v16))
      {
        sub_1000538EC();
        sub_100001688();
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    a2 = 0xFFFFFFFFLL;
  }

  else
  {
    while (sub_10008C58C(a1, a2))
    {
      a2 = (a2 + 1);
      a3 = (a3 - 1);
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    sub_100057170();
    if (!v9)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000577D8(v5[126]))
    {
      sub_10005734C();
      v20 = sub_1000571D8();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (sub_100057088(v21))
      {
        sub_1000538EC();
        sub_100001688();
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }
  }

  return a2;
}

uint64_t sub_10008C58C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*(a1 + 32) userPersonas];
  sub_1000017F4();
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(8 * i);
        v11 = *(a1 + 32);
        v12 = [v11 userPersonas];
        v13 = [v12 objectForKeyedSubscript:v10];

        LOBYTE(v11) = sub_10008C8C4(a1, a2, v13);
        if (v11)
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      sub_1000017F4();
      v7 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

id sub_10008C6F0(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v4 = "FEEDEEEE-DDDD-CCCC-BBBB-0000";
    switch(a2)
    {
      case 0:
        goto LABEL_12;
      case 2:
      case 6:
        v5 = +[NSUUID UUID];
        v6 = [v5 UUIDString];
        v7 = [v6 uppercaseString];

        goto LABEL_13;
      case 3:
        v4 = "FEEDEEEE-DDDD-CCCC-BBBB-3333";
        goto LABEL_12;
      case 5:
        v4 = "FEEDEEEE-DDDD-CCCC-BBBB-5555";
LABEL_12:
        v5 = [NSMutableString stringWithUTF8String:v4];
        v7 = [NSString stringWithFormat:@"%@%08X", v5, a3];
LABEL_13:

        break;
      default:
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005731C(qword_1000EB3F0))
        {
          sub_1000572D0();
          v8 = sub_100057454();
          if (sub_100057088(v8))
          {
            sub_1000538EC();
            sub_100001800();
            v9 = sub_1000575B8();
            v10 = v9;
            if (v9)
            {
              sub_100002A8C(v9);
            }
          }

          else
          {
            v10 = 0;
          }

          free(v10);
        }

        goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10008C8C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    sub_1000571E4();
    if (!v27)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v6 = &off_1000EB000;
    if (sub_100057630(qword_1000EB3F0))
    {
      v7 = sub_100057424();
      if (sub_100057648())
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = v3;
        v39 = 134218240;
        v40 = [v5 count];
        v41 = 1024;
        v42 = a2;
        sub_1000553D0();
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v10 = 0;
      }

      v6 = &off_1000EB000;
      free(v10);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v16 objectForKeyedSubscript:@"UserPersonaID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v16 unsignedIntValue] == a2)
              {
                sub_1000571E4();
                if (!v27)
                {
                  dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
                }

                if (sub_100057618(v6[126]))
                {
                  sub_1000577A8();
                  v28 = os_log_type_enabled(@"UserPersonaID", OS_LOG_TYPE_DEBUG);
                  if (sub_1000570A8(v28))
                  {
                    v43 = 67109120;
                    v44 = a2;
                    sub_100057050();
                    sub_100053924();
                    v29 = sub_100057600();
                    v30 = v29;
                    if (v29)
                    {
                      sub_100002A8C(v29);
                    }
                  }

                  else
                  {
                    v30 = 0;
                  }

                  free(v30);
                }

                v31 = 1;
                goto LABEL_59;
              }
            }

            else
            {
              sub_1000571E4();
              if (!v27)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              v20 = v6[126];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                sub_1000577A8();
                v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
                if (sub_1000570A8(v21))
                {
                  sub_100057020();
                  sub_100053924();
                  v22 = _os_log_send_and_compose_impl();
                  v23 = v22;
                  if (v22)
                  {
                    sub_100002A8C(v22);
                  }
                }

                else
                {
                  v23 = 0;
                }

                free(v23);
                v6 = &off_1000EB000;
              }
            }
          }

          else
          {
            sub_1000571E4();
            if (!v27)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_10005757C(v6[126]))
            {
              sub_1000577A8();
              v17 = sub_100057564();
              if (sub_1000570A8(v17))
              {
                sub_100057020();
                sub_100053924();
                v18 = _os_log_send_and_compose_impl();
                v19 = v18;
                if (v18)
                {
                  sub_100002A8C(v18);
                }
              }

              else
              {
                v19 = 0;
              }

              v6 = &off_1000EB000;
              free(v19);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    sub_1000571E4();
    if (!v27)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057630(v6[126]))
    {
      sub_1000577A8();
      v24 = sub_100057648();
      if (sub_1000570A8(v24))
      {
        v43 = 67109120;
        v44 = a2;
        sub_100057050();
        sub_100001728();
        v25 = _os_log_send_and_compose_impl();
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
      v31 = 0;
    }

    else
    {
      v31 = 0;
    }

LABEL_59:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

id sub_10008CDD8(id a1, unsigned int a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = &off_1000EB000;
    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v6 = &off_1000EB000;
    v7 = qword_1000EB3F0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B7C();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (sub_100057088(v8))
      {
        v46 = 67109120;
        v47 = a2;
        sub_100057050();
        sub_1000553D0();
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
      v6 = &off_1000EB000;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v38 = v4;
      v14 = *v42;
      v15 = @"UserPersonaType";
      v16 = &MGCopyAnswer_ptr;
      v39 = *v42;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = v16[413];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v18 objectForKeyedSubscript:v15];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v22 = v5[127];
            if (isKindOfClass)
            {
              if (v22 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              if (sub_100057730(v6[126]))
              {
                v23 = v15;
                v24 = v11;
                v25 = sub_100002B7C();
                if (!sub_100057778())
                {
                  v25 &= ~1u;
                }

                if (v25)
                {
                  v26 = v5;
                  v27 = v16;
                  v28 = [v20 unsignedIntValue];
                  v46 = 67109120;
                  v47 = v28;
                  sub_100057050();
                  sub_100053924();
                  v29 = _os_log_send_and_compose_impl();

                  if (v29)
                  {
                    sub_100002A8C(v29);
                  }

                  v5 = v26;
                  v6 = &off_1000EB000;
                }

                else
                {
                  v29 = 0;
                }

                free(v29);
                v11 = v24;
                v15 = v23;
                v14 = v39;
              }

              if ([v20 unsignedIntValue]== a2)
              {
                a1 = v18;

                goto LABEL_51;
              }

              v16 = &MGCopyAnswer_ptr;
            }

            else
            {
              if (v22 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              v33 = v6[126];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                sub_100002B7C();
                v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
                if (sub_100053930(v34))
                {
                  sub_100057020();
                  sub_100053924();
                  v35 = _os_log_send_and_compose_impl();
                  v36 = v35;
                  if (v35)
                  {
                    sub_100002A8C(v35);
                  }
                }

                else
                {
                  v36 = 0;
                }

                free(v36);
                v16 = &MGCopyAnswer_ptr;
              }
            }
          }

          else
          {
            if (v5[127] != -1)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            v20 = v6[126];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              sub_100002B7C();
              v30 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
              if (sub_1000570A8(v30))
              {
                sub_100057020();
                sub_100053924();
                v31 = _os_log_send_and_compose_impl();
                v32 = v31;
                if (v31)
                {
                  sub_100002A8C(v31);
                }
              }

              else
              {
                v32 = 0;
              }

              free(v32);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      a1 = 0;
LABEL_51:
      v4 = v38;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10008D284(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100057264();
  v6 = v5;
  sub_10005768C();
  isKindOfClass = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (!isKindOfClass)
  {
    goto LABEL_16;
  }

  v16 = isKindOfClass;
  v28 = v5;
  v17 = *v31;
LABEL_4:
  v18 = 0;
  while (1)
  {
    sub_10005743C(isKindOfClass, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, v30, v31);
    if (v19 != v17)
    {
      objc_enumerationMutation(v6);
    }

    v20 = *(v30 + 8 * v18);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }

    v21 = [v20 objectForKeyedSubscript:@"UserPersonaID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 unsignedIntValue] == a2)
    {
      break;
    }

LABEL_11:
    if (v16 == ++v18)
    {
      sub_10005768C();
      isKindOfClass = sub_100057660(v22, v23, v24, v25);
      v16 = isKindOfClass;
      if (isKindOfClass)
      {
        goto LABEL_4;
      }

      v5 = v28;
      goto LABEL_16;
    }
  }

  v26 = v20;

  v5 = v28;
  if (!v26)
  {
    goto LABEL_17;
  }

  [v6 removeObjectIdenticalTo:v26];
  v6 = v26;
LABEL_16:

LABEL_17:
}

uint64_t sub_10008D410(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_27;
  }

  v7 = v5;
  sub_1000576EC();
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (!v9)
  {
    v19 = 0;
    v20 = v7;
    goto LABEL_26;
  }

  v10 = v9;
  v26 = v6;
  v11 = MEMORY[0];
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (MEMORY[0] != v11)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = [v13 objectForKeyedSubscript:@"UserPersonaType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntValue] == a2)
    {
      break;
    }

LABEL_11:
    if (v10 == ++v12)
    {
      sub_1000576EC();
      v10 = sub_100057660(v15, v16, v17, v18);
      if (v10)
      {
        goto LABEL_4;
      }

      v19 = 0;
      v20 = v7;
      v6 = v26;
      goto LABEL_26;
    }
  }

  v20 = v13;

  if (!v20)
  {
    v19 = 0;
    v6 = v26;
    goto LABEL_27;
  }

  v6 = v26;
  if (qword_1000EB3F8 != -1)
  {
    dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
  }

  if (sub_100057618(qword_1000EB3F0))
  {
    sub_1000572D0();
    v21 = sub_100057228();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (sub_100053958(v22))
    {
      sub_100001800();
      v23 = sub_100057600();
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  [v7 removeObjectIdenticalTo:v20];
  v19 = 1;
LABEL_26:

LABEL_27:
  return v19;
}

id sub_10008D684(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = sub_100056BC8(a1, a2);
    if ([v5 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000577D8(qword_1000EB3F0))
      {
        sub_10005734C();
        v6 = sub_1000571D8();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (sub_100057088(v7))
        {
          sub_1000538EC();
          sub_100001688();
          v8 = _os_log_send_and_compose_impl();
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }

      v13 = v5;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        sub_10005737C();
        v10 = sub_100057648();
        if (sub_10000230C(v10))
        {
          sub_100057148();
          sub_100001728();
          v11 = _os_log_send_and_compose_impl();
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      v13 = 0;
      if (a3)
      {
        *a3 = 2;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id *sub_10008D88C(id *a1, _DWORD *a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    v4 = +[NSMutableArray array];
    v5 = [v2[4] userPersonas];
    sub_1000576EC();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(8 * i);
          v12 = v2[4];
          v13 = [v12 userPersonas];
          v14 = [v13 objectForKeyedSubscript:v11];
          [v4 addObjectsFromArray:v14];
        }

        sub_1000576EC();
        v8 = sub_100057748(v15, v16, v17, v18);
      }

      while (v8);
    }

    if ([v4 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000577D8(qword_1000EB3F0))
      {
        sub_10005734C();
        v19 = sub_1000571D8();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (sub_100057088(v20))
        {
          sub_1000571B0();
          sub_100001688();
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v2 = v4;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        sub_1000011A8(1);
        v23 = sub_100057648();
        if (sub_10000230C(v23))
        {
          sub_100057148();
          sub_100001728();
          v24 = _os_log_send_and_compose_impl();
          v25 = v24;
          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }

      v2 = 0;
      if (a2)
      {
        *a2 = 2;
      }
    }
  }

  return v2;
}

id sub_10008DB74()
{
  sub_100057540();
  v2 = v1;
  if (v0)
  {
    v3 = sub_10005754C();
    v5 = sub_100056BC8(v3, v4);
    v6 = [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"];
    if (v6 && (v7 = v6, [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = objc_opt_isKindOfClass(), v8, v7, (v9 & 1) != 0))
    {
      v10 = [v2 objectForKeyedSubscript:@"UserPersonaUniqueString"];
      v11 = sub_100056854(v0, v10, v5);
    }

    else
    {
      v12 = [v2 objectForKeyedSubscript:@"UserPersonaType"];
      if (!v12 || (v13 = v12, [v2 objectForKeyedSubscript:@"UserPersonaType"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, v13, (isKindOfClass & 1) == 0))
      {
        v0 = 0;
        goto LABEL_9;
      }

      v10 = [v2 objectForKeyedSubscript:@"UserPersonaType"];
      v11 = sub_10008CDD8(v0, [v10 unsignedLongValue], v5);
    }

    v0 = v11;

LABEL_9:
  }

  return v0;
}

id sub_10008DD04(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v6 = a2;
  if (a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = sub_10008DB74();
    if (v7)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057630(qword_1000EB3F0))
      {
        sub_1000572D0();
        v8 = sub_100057648();
        if (sub_10000230C(v8))
        {
          sub_1000538EC();
          sub_100001728();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      v15 = v7;
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005757C(qword_1000EB3F0))
      {
        sub_1000572D0();
        v11 = sub_10005717C();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        if (sub_100057078(v12))
        {
          sub_1000538EC();
          sub_100001800();
          v13 = _os_log_send_and_compose_impl();
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      if (a4)
      {
        *a4 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10008DF28()
{
  sub_1000572B4();
  v5 = v4;
  sub_100057540();
  v7 = v6;
  v8 = v0;
  if (v1)
  {
    if (v5)
    {
      *v5 = 0;
    }

    sub_1000571E4();
    if (!v13)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057618(qword_1000EB3F0))
    {
      sub_10005734C();
      v9 = sub_100057228();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (sub_100053958(v10))
      {
        sub_1000538EC();
        sub_100053914();
        v11 = sub_100057600();
        v3 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v3 = 0;
      }

      free(v3);
    }

    sub_100002BDC();
    v12 = sub_10008DB74();
    sub_1000571E4();
    if (v14)
    {
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057618(qword_1000EB3F0))
      {
        sub_10005734C();
        v15 = sub_100057228();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        if (sub_100053958(v16))
        {
          sub_1000538EC();
          sub_100053914();
          v17 = sub_100057600();
          v3 = v17;
          if (v17)
          {
            sub_100002A8C(v17);
          }
        }

        else
        {
          v3 = 0;
        }

        free(v3);
      }

      v22 = [v12 objectForKeyedSubscript:@"UserPersonaBundleIDS"];
      if (v22)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        sub_1000571E4();
        if (v24)
        {
          if (!v23)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          if (sub_10005757C(qword_1000EB3F0))
          {
            sub_10005734C();
            v25 = sub_100057564();
            if (sub_100053958(v25))
            {
              sub_1000538EC();
              sub_1000018EC();
              v26 = _os_log_send_and_compose_impl();
              v27 = v26;
              if (v26)
              {
                sub_100002A8C(v26);
              }
            }

            else
            {
              v27 = 0;
            }

            free(v27);
          }

          v34 = v22;
        }

        else
        {
          if (!v23)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          if (sub_100057364(qword_1000EB3F0))
          {
            sub_10005737C();
            v31 = sub_1000571F0();
            if (sub_100053930(v31))
            {
              sub_100053968();
              sub_100057098();
              v32 = _os_log_send_and_compose_impl();
              v33 = v32;
              if (v32)
              {
                sub_100002A8C(v32);
              }
            }

            else
            {
              v33 = 0;
            }

            free(v33);
          }

          if (v5)
          {
            *v5 = 22;
          }
        }
      }

      else
      {
        sub_1000571E4();
        if (!v13)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005757C(qword_1000EB3F0))
        {
          sub_10005737C();
          v28 = sub_100057564();
          if (sub_100053958(v28))
          {
            sub_100057148();
            sub_1000018EC();
            v29 = _os_log_send_and_compose_impl();
            v30 = v29;
            if (v29)
            {
              sub_100002A8C(v29);
            }
          }

          else
          {
            v30 = 0;
          }

          free(v30);
        }

        +[NSArray array];
        objc_claimAutoreleasedReturnValue();
      }
    }

    else
    {
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057618(qword_1000EB3F0))
      {
        sub_10005734C();
        v18 = sub_100057228();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (sub_100053958(v19))
        {
          sub_1000538EC();
          sub_100053914();
          v20 = sub_100057600();
          v21 = v20;
          if (v20)
          {
            sub_100002A8C(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }

      if (v5)
      {
        *v5 = 2;
      }
    }
  }

  sub_100057298();

  return v35;
}

void sub_10008E3EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v12 = [*(a1 + 32) userPersonas];
      v3 = [v12 objectForKeyedSubscript:v7];

      if (!v3)
      {
        v3 = +[NSMutableArray array];
        v12 = [*(a1 + 32) userPersonas];
        [v12 setObject:v3 forKeyedSubscript:v7];
      }

      sub_10005754C();
      sub_100057254();
      v13 = sub_10008E7D0();
      if (!v13)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v14 = sub_1000573AC();
          if (sub_10005712C(v14))
          {
            sub_100053968();
            sub_100001800();
            v16 = sub_1000573DC();
            v15 = v16;
            if (v16)
            {
              sub_100002A8C(v16);
            }
          }

          else
          {
            v15 = 0;
          }

          free(v15);
        }
      }

      sub_10005754C();
      sub_100057254();
      v17 = sub_10008E7D0();

      if (!v17)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000575E8(qword_1000EB3F0))
        {
          sub_1000572D0();
          v18 = sub_100057300();
          if (sub_10005712C(v18))
          {
            sub_100053968();
            sub_100001800();
            v20 = sub_100057718();
            v19 = v20;
            if (v20)
            {
              sub_100002A8C(v20);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }
      }

      sub_10005754C();
      sub_100057254();
      v21 = sub_10008E7D0();

      if (!v21)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v22 = sub_1000573AC();
          if (sub_10005712C(v22))
          {
            sub_100053968();
            sub_100001800();
            v24 = sub_1000573DC();
            v23 = v24;
            if (v24)
            {
              sub_100002A8C(v24);
            }
          }

          else
          {
            v23 = 0;
          }

          free(v23);
        }
      }

      sub_10005754C();
      sub_100057254();
      v25 = sub_10008E7D0();

      if (!v25)
      {
        sub_100057170();
        if (!v8)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000574F8(qword_1000EB3F0))
        {
          sub_1000572D0();
          v26 = sub_100057228();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (sub_100053958(v27))
          {
            sub_100053968();
            sub_100001800();
            v29 = sub_1000574E0();
            v28 = v29;
            if (v29)
            {
              sub_100002A8C(v29);
            }
          }

          else
          {
            v28 = 0;
          }

          free(v28);
        }
      }

      sub_10008EBBC(a1);
    }

    else
    {
      sub_100057170();
      if (!v8)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v9 = sub_1000571BC();
        if (sub_100057088(v9))
        {
          sub_100053968();
          sub_100001800();
          v10 = sub_100057470();
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }
  }
}

uint64_t sub_10008EBBC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100092CEC(result);
    v3 = sub_100092EA8(v1, v2, 0);

    return v3;
  }

  return result;
}

void sub_100091480()
{
  sub_1000572B4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (v4)
  {
    if (v2)
    {
      *v2 = 0;
    }

    v7 = objc_alloc_init(UMKPersonaInfo);
    v8 = [v6 objectForKeyedSubscript:@"UserPersonaType"];

    if (v8)
    {
      v10 = sub_1000577C0(v9, @"UserPersonaType");
      v11 = sub_100056CD8(UMDPersonaManager, v10);
      sub_100095DAC(v7, v11);
      if (sub_100001434(v7) == -1)
      {
        sub_100057170();
        if (!v17)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_35;
        }

        sub_10005734C();
        v19 = sub_100057154();
        if (sub_100057078(v19))
        {
          sub_100001A64();
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v8 = [v6 objectForKeyedSubscript:@"UserPersonaID"];

      if (v8)
      {
        v12 = sub_100098D4C(v6, @"UserPersonaID", 0);
        sub_10008BDA4(v7, v12);
        v13 = sub_100098ECC(v6, @"UserPersonaUniqueString");
        sub_100096054(v7, v13);

        v8 = sub_100096040(v7, v14);

        if (v8)
        {
          v15 = sub_100098ECC(v6, @"UserPersonaUserODUUID");
          v16 = v15;
          if (v15)
          {
            if ([v15 isEqualToString:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"])
            {
              sub_100095EC8(v7, -1);
            }

            else
            {
              WeakRetained = objc_loadWeakRetained(v4 + 6);
              v25 = sub_10008A438(WeakRetained, v16);
              sub_100095EC8(v7, v25);
            }
          }

          if ((v10 & 0xFFFFFFFB) == 2)
          {
            v26 = sub_100098ECC(v6, @"MKBUserSessionHomeDir");
            if (!v26)
            {
              if (qword_1000EB3F8 != -1)
              {
                dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
              }

              if (sub_1000574F8(qword_1000EB3F0))
              {
                sub_10005734C();
                v34 = sub_100057228();
                v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
                if (sub_100053958(v35))
                {
                  sub_100057038();
                  sub_100053914();
                  v36 = sub_1000574E0();
                  v37 = v36;
                  if (v36)
                  {
                    sub_100002A8C(v36);
                  }
                }

                else
                {
                  v37 = 0;
                }

                free(v37);
              }

              if (v2)
              {
                sub_100002BB8();
                [v46 errorWithDomain:? code:? userInfo:?];
                *v2 = v27 = 0;
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_85;
            }

            v27 = v26;
            if (qword_1000EB3F8 != -1)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057730(qword_1000EB3F0))
            {
              v28 = sub_10005740C();
              if (!sub_100057778())
              {
                v28 &= ~1u;
              }

              if (v28)
              {
                v29 = WeakRetained;
                sub_100001440(v7);
                sub_100057148();
                sub_100053924();
                v30 = _os_log_send_and_compose_impl();

                if (v30)
                {
                  sub_100002A8C(v30);
                }
              }

              else
              {
                v30 = 0;
              }

              free(v30);
            }
          }

          else
          {
            sub_100057170();
            if (!v17)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057730(qword_1000EB3F0))
            {
              v31 = sub_10005734C();
              if (!sub_100057778())
              {
                v31 &= ~1u;
              }

              if (v31)
              {
                v32 = WeakRetained;
                sub_100001440(v7);
                sub_100001A64();
                sub_100053924();
                v33 = _os_log_send_and_compose_impl();

                if (v33)
                {
                  sub_100002A8C(v33);
                }
              }

              else
              {
                v33 = 0;
              }

              free(v33);
            }

            v27 = 0;
          }

          v38 = sub_100001440(v7);
          v39 = v4[2];
          v40 = sub_1000013AC(v39);
          v41 = [v40 allocatePersonaWithInfo:v7 andPath:v27 error:v2];

          if ((v41 & 1) == 0)
          {
            sub_100057170();
            if (!v17)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_100057280(qword_1000EB3F0))
            {
              sub_10005734C();
              v42 = sub_100057394();
              if (sub_10005712C(v42))
              {
                sub_100057038();
                sub_100001728();
                v43 = _os_log_send_and_compose_impl();
                v44 = v43;
                if (v43)
                {
                  sub_100002A8C(v43);
                }
              }

              else
              {
                v44 = 0;
              }

              free(v44);
            }
          }

          if (sub_100001440(v7) != v38)
          {
            v45 = [NSNumber numberWithUnsignedInt:sub_100001440(v7)];
            [v6 setObject:v45 forKeyedSubscript:@"UserPersonaID"];
          }

LABEL_85:

LABEL_86:
          goto LABEL_87;
        }

        sub_100057170();
        if (!v17)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
LABEL_35:

          if (v2)
          {
            sub_100002BB8();
            *v2 = [v24 errorWithDomain:? code:? userInfo:?];
          }

          goto LABEL_86;
        }

        sub_10005734C();
        v21 = sub_100057154();
        if (sub_100057078(v21))
        {
          goto LABEL_30;
        }

LABEL_33:
        v23 = 0;
LABEL_34:
        free(v23);
        goto LABEL_35;
      }

      sub_100057170();
      if (!v17)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_35;
      }

      sub_10005734C();
      v20 = sub_100057154();
      if (!sub_100057078(v20))
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_100057170();
      if (!v17)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_35;
      }

      sub_10005734C();
      v18 = sub_100057154();
      if (!sub_100057078(v18))
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    sub_100057038();
LABEL_31:
    sub_1000018EC();
    v22 = _os_log_send_and_compose_impl();
    v23 = v22;
    if (v22)
    {
      sub_100002A8C(v22);
    }

    goto LABEL_34;
  }

LABEL_87:

  sub_100057298();
}

id *sub_100091C04(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_100091C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  sub_1000574C4();
  a48 = v49;
  a49 = v51;
  if (v50)
  {
    v52 = v50;
    a17 = 0u;
    a18 = 0u;
    a15 = 0u;
    a16 = 0u;
    v53 = [v50[4] userPersonas];
    v54 = [v53 countByEnumeratingWithState:&a15 objects:&a20 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *a16;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*a16 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&a15 + 1) + 8 * i);
          sub_100057274();
          if (!v59)
          {
            dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
          }

          v60 = qword_1000EB3F0;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v61 = sub_1000011A8(1);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v62 = v61;
            }

            else
            {
              v62 = v61 & 0xFFFFFFFE;
            }

            if (v62)
            {
              LODWORD(a19) = 138412290;
              *(&a19 + 4) = v58;
              sub_1000571B0();
              sub_100053924();
              v64 = _os_log_send_and_compose_impl();
              v63 = v64;
              if (v64)
              {
                sub_100002A8C(v64);
              }
            }

            else
            {
              v63 = 0;
            }

            free(v63);
          }

          v65 = v52[4];
          v66 = [v65 userPersonas];
          v67 = [v66 objectForKeyedSubscript:v58];

          sub_100094CD8(v52, v67);
        }

        v55 = sub_100057660(v68, v69, &a15, &a20);
      }

      while (v55);
    }
  }

  sub_1000574A8();
}

uint64_t sub_100091E34()
{
  sub_100057540();
  v3 = v2;
  v4 = v3;
  if (v1)
  {
    if (v0)
    {
      *v0 = 0;
    }

    v5 = sub_100098D4C(v3, @"UserPersonaID", 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000013AC(*(v1 + 16));
      v8 = [v7 deallocatePersonaWithID:v6 error:v0];

      if (v8)
      {
        v1 = 1;
        goto LABEL_27;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v12 = sub_1000571BC();
        if (sub_100057088(v12))
        {
          sub_100053968();
          sub_100001800();
          v13 = sub_100057470();
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_1000572D0();
        v9 = sub_10005720C();
        if (sub_10000230C(v9))
        {
          sub_100053968();
          sub_100001728();
          v10 = _os_log_send_and_compose_impl();
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }

      if (v0)
      {
        sub_100002BB8();
        [v15 errorWithDomain:? code:? userInfo:?];
        *v0 = v1 = 0;
        goto LABEL_27;
      }
    }

    v1 = 0;
  }

LABEL_27:

  return v1;
}

void sub_100092024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100057540();
  v10 = v9;
  v11 = v5;
  if (v6)
  {
    v12 = sub_10008CDD8(v6, 4u, v10);
    if (v12)
    {
      v16 = v12;
      v17 = 0;
    }

    else
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v14 = sub_1000571F0();
        if (sub_100053930(v14))
        {
          sub_100053968();
          sub_100001800();
          v18 = sub_1000573DC();
          v15 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      sub_100002BDC();
      sub_100057488();
      v19 = sub_10008E7D0();
      v17 = v19 != 0;
      if (v19)
      {
        v16 = v19;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v20 = sub_1000571F0();
          if (sub_100053930(v20))
          {
            sub_100053968();
            sub_100001800();
            v24 = sub_1000573DC();
            v21 = v24;
            if (v24)
            {
              sub_100002A8C(v24);
            }
          }

          else
          {
            v21 = 0;
          }

          free(v21);
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v22 = sub_1000571F0();
          if (sub_100053930(v22))
          {
            sub_100053968();
            sub_100001800();
            v25 = sub_1000573DC();
            v23 = v25;
            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {
            v23 = 0;
          }

          free(v23);
        }

        v16 = 0;
      }
    }

    v26 = sub_10008CDD8(v6, 3u, v10);

    if (!v26)
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v27 = sub_1000571F0();
        if (sub_100053930(v27))
        {
          sub_100053968();
          sub_100001800();
          v29 = sub_1000573DC();
          v28 = v29;
          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      sub_100002BDC();
      sub_100057488();
      v30 = sub_10008E7D0();
      if (v30)
      {
        v26 = v30;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v33 = sub_1000573AC();
          if (sub_10005712C(v33))
          {
            sub_100053968();
            sub_100001800();
            v36 = sub_1000573DC();
            v34 = v36;
            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v17 = 1;
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057364(qword_1000EB3F0))
        {
          sub_1000572D0();
          v31 = sub_1000571F0();
          if (sub_100053930(v31))
          {
            sub_100053968();
            sub_100001800();
            v35 = sub_1000573DC();
            v32 = v35;
            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {
            v32 = 0;
          }

          free(v32);
        }

        v26 = 0;
      }
    }

    v37 = sub_10008CDD8(v6, 5u, v10);

    if (v37)
    {
      if (!v17)
      {
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
      sub_100057170();
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_1000572D0();
        v38 = sub_1000571F0();
        if (sub_100053930(v38))
        {
          sub_100053968();
          sub_100001800();
          v40 = sub_1000573DC();
          v39 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }

      sub_100002BDC();
      sub_100057488();
      v41 = sub_10008E7D0();
      if (v41)
      {
        v37 = v41;
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057334(qword_1000EB3F0))
        {
          sub_1000572D0();
          v45 = sub_100057154();
          if (sub_100057078(v45))
          {
            sub_100053968();
            sub_100001800();
            v47 = sub_1000573C4();
            v46 = v47;
            if (v47)
            {
              sub_100002A8C(v47);
            }
          }

          else
          {
            v46 = 0;
          }

          free(v46);
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_100057334(qword_1000EB3F0))
        {
          sub_1000572D0();
          v42 = sub_100057154();
          if (sub_100057078(v42))
          {
            sub_100053968();
            sub_100001800();
            v43 = sub_1000573C4();
            v44 = v43;
            if (v43)
            {
              sub_100002A8C(v43);
            }
          }

          else
          {
            v44 = 0;
          }

          free(v44);
        }

        v37 = 0;
        if (!v17)
        {
          goto LABEL_62;
        }
      }
    }

    sub_100057170();
    if (!v13)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057334(qword_1000EB3F0))
    {
      sub_1000572D0();
      v48 = sub_100057154();
      if (sub_100057078(v48))
      {
        sub_100053968();
        sub_100001800();
        v50 = sub_1000573C4();
        v49 = v50;
        if (v50)
        {
          sub_100002A8C(v50);
        }
      }

      else
      {
        v49 = 0;
      }

      free(v49);
    }

    sub_10008EBBC(v6);
    goto LABEL_62;
  }

LABEL_63:
}

NSObject *sub_1000926B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    v4 = sub_1000013A0(*(a1 + 16));
    v5 = [v4 dataWithContentsOfFile:@"/private/var/keybags/persona.kb" error:a2];

    if (v5)
    {
      v6 = [UMDPersonaManifest manifestFromData:v5];
      if (v6)
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        if (sub_100057280(qword_1000EB3E0))
        {
          sub_1000011A8(0);
          sub_10005720C();
          sub_10005713C();
          if (v8)
          {
            v9 = v7;
          }

          else
          {
            v9 = v2;
          }

          if (v9)
          {
            v10 = a2;
            [v6 version];
            [v6 generation];
            v11 = [v6 users];
            [v11 count];
            sub_1000538EC();
            sub_1000018EC();
            v12 = _os_log_send_and_compose_impl();

            if (v12)
            {
              sub_100002A8C(v12);
            }
          }

          else
          {
            v12 = 0;
          }

          free(v12);
        }

        v6 = v6;
        v22 = v6;
      }

      else
      {
        if (qword_1000EB3E8 != -1)
        {
          dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
        }

        v17 = qword_1000EB3E0;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000011A8(0);
          v18 = sub_10005717C();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
          if (sub_100057078(v19))
          {
            sub_100053968();
            sub_1000018EC();
            v20 = _os_log_send_and_compose_impl();
            v21 = v20;
            if (v20)
            {
              sub_100002A8C(v20);
            }
          }

          else
          {
            v21 = 0;
          }

          free(v21);
        }

        if (a2)
        {
          sub_100002BB8();
          *a2 = [v23 errorWithDomain:? code:? userInfo:?];
        }

        v22 = 0;
      }
    }

    else
    {
      if (qword_1000EB3E8 != -1)
      {
        dispatch_once(&qword_1000EB3E8, &stru_1000DD860);
      }

      v6 = qword_1000EB3E0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000011A8(0);
        v13 = sub_1000571D8();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        if (sub_100057088(v14))
        {
          sub_100053968();
          sub_100001688();
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

UMDPersonaManifestUser *sub_100092A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v35 = a3;
  if (a1)
  {
    v6 = objc_alloc_init(UMDPersonaManifestUser);
    v7 = sub_100016954(NSUUID, v5);
    v34 = v6;
    sub_1000897B8(v6, v7);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [*(a1 + 32) asidMap];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v14 asidMap];
          v16 = [v15 objectForKeyedSubscript:v13];

          LODWORD(v14) = [v5 isEqualToString:v16];
          if (v14)
          {
            sub_10008BDA4(v34, [v13 intValue]);
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v17 = +[NSMutableSet set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v35;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v27 = v19;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          sub_10005743C(v19, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, *(&v36 + 1), v37);
          if (v30 != v28)
          {
            objc_enumerationMutation(v18);
          }

          v31 = sub_100096310(UMDPersonaManifestPersona, *(*(&v36 + 1) + 8 * v29));
          sub_100089894(v31, 0);
          [v17 addObject:v31];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
        v27 = v19;
      }

      while (v19);
    }

    v32 = v34;
    sub_100089CC4(v34, v17);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

id sub_100092CEC(uint64_t a1)
{
  if (a1)
  {
    v29 = +[UMDPersonaManifest manifest];
    [v29 setGeneration:sub_100055380(*(a1 + 40))];
    v2 = +[NSMutableSet set];
    v30 = 0u;
    v31 = 0;
    v3 = [*(a1 + 32) userPersonas];
    sub_10005768C();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v13 = v5;
      v14 = MEMORY[0];
      do
      {
        v15 = 0;
        do
        {
          sub_10005743C(v5, v6, v7, v8, v9, v10, v11, v12, v28, v29, v30, *(&v30 + 1), v31);
          if (v16 != v14)
          {
            objc_enumerationMutation(v3);
          }

          v17 = *(*(&v30 + 1) + 8 * v15);
          v18 = *(a1 + 32);
          v19 = [v18 userPersonas];
          v20 = [v19 objectForKeyedSubscript:v17];
          v21 = sub_100092A38(a1, v17, v20);

          [v2 addObject:v21];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        sub_10005768C();
        v5 = sub_100057748(v22, v23, v24, v25);
        v13 = v5;
      }

      while (v5);
    }

    v26 = v29;
    [v29 setUsers:v2];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t sub_100092EA8(uint64_t *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = [a2 dataValue];
    if (v5)
    {
      v6 = sub_1000013A0(*(v3 + 16));
      v7 = [v6 atomicallyWriteData:v5 toPath:@"/private/var/keybags/persona.kb" error:a3];

      if (v7)
      {
        v3 = 1;
LABEL_27:

        return v3;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        v11 = sub_1000571BC();
        if (sub_100057088(v11))
        {
          sub_100053968();
          sub_100001800();
          v12 = sub_100057470();
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_1000572D0();
        v8 = sub_10005720C();
        if (sub_10000230C(v8))
        {
          sub_100053968();
          sub_100001728();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      if (a3)
      {
        sub_100002BB8();
        [v14 errorWithDomain:? code:? userInfo:?];
        *a3 = v3 = 0;
        goto LABEL_27;
      }
    }

    v3 = 0;
    goto LABEL_27;
  }

  return v3;
}

BOOL sub_100093094(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 objectForKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];
  v3 = v2 != 0;

  return v3;
}

void sub_1000930E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, __int128 a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1000572B4();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v37;
  if (v35)
  {
    v39 = sub_100098ECC(v37, @"MKBUserSessionHomeDir");
    if (!v39)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057280(qword_1000EB3F0))
      {
        sub_10005737C();
        v47 = sub_10005720C();
        if (sub_10000230C(v47))
        {
          sub_100057038();
          sub_100001728();
          v48 = _os_log_send_and_compose_impl();
          v49 = v48;
          if (v48)
          {
            sub_100002A8C(v48);
          }
        }

        else
        {
          v49 = 0;
        }

        free(v49);
      }

      goto LABEL_50;
    }

    v28 = sub_100098ECC(v38, @"UserPersonaUniqueString");
    if ([*(v35 + 24) splitUserVolumeEnabled])
    {
      v40 = sub_100016954(NSUUID, v28);
      v41 = sub_100098ECC(v38, @"MKBUserSessionVolumeDeviceNode");
      sub_100057170();
      if (!v42)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575D0(qword_1000EB3F0))
      {
        v43 = sub_10005737C();
        if (sub_100057790())
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          sub_100057038();
          sub_1000570B8();
          sub_100057448();
          v45 = _os_log_send_and_compose_impl();
          v46 = v45;
          if (v45)
          {
            sub_100002A8C(v45);
          }
        }

        else
        {
          v46 = 0;
        }

        free(v46);
      }

      v53 = *(v35 + 16);
      v54 = sub_100089A80(v53);
      a12 = 0;
      v55 = [v54 mapVolume:v41 toSession:v33 withPersona:v40 error:&a12];
      v50 = a12;

      if ((v55 & 1) == 0)
      {
        sub_100057170();
        if (!v42)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000575E8(qword_1000EB3F0))
        {
          sub_10005740C();
          v59 = sub_100057300();
          if (sub_10005712C(v59))
          {
            LODWORD(a13) = 138412290;
            *(&a13 + 4) = v50;
            sub_1000538EC();
            sub_1000570F0();
            v60 = sub_100057718();
            v61 = v60;
            if (v60)
            {
              sub_100002A8C(v60);
            }
          }

          else
          {
            v61 = 0;
          }

          free(v61);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v50 = sub_100089790(*(v35 + 16));
      v51 = [v50 setVolumePath:v39 forPersona:v28];

      if (v51)
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_49;
        }

        sub_10005737C();
        v52 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
        if (sub_100053958(v52))
        {
          a14 = 67109120;
          a15 = v51;
          sub_100001A64();
          goto LABEL_36;
        }

LABEL_44:
        v58 = 0;
LABEL_45:
        free(v58);
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }
    }

    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (!sub_100057334(qword_1000EB3F0))
    {
      goto LABEL_49;
    }

    sub_10005737C();
    v56 = sub_100057154();
    if (sub_100057078(v56))
    {
      sub_100057038();
LABEL_36:
      sub_1000018EC();
      v57 = _os_log_send_and_compose_impl();
      v58 = v57;
      if (v57)
      {
        sub_100002A8C(v57);
      }

      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_51:

  sub_100057298();
}

uint64_t sub_100093530(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    DWORD2(v75) = 0;
    v8 = sub_1000577C0(v6, @"UserPersonaID");
    v9 = sub_100098D4C(v7, @"UserPersonaType", 0x3E8);
    v10 = sub_100098C4C(v7, @"UserPersonaDisabled");
    if (v9 == 4)
    {
LABEL_27:
      v76 = 1;
LABEL_41:
      a1 = v76;
      goto LABEL_42;
    }

    v11 = v10;
    sub_100057170();
    if (!v32)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057730(qword_1000EB3F0))
    {
      v79[0] = 0;
      sub_1000011A8(1);
      v12 = sub_100057778();
      if (sub_10005712C(v12))
      {
        sub_1000576A4();
        *(&v78 + 2) = v9;
        sub_100001A64();
        sub_100053924();
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    if (sub_100056C40(a1, v8))
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_10005740C();
        v15 = sub_1000571BC();
        if (sub_100057088(v15))
        {
          sub_100057100();
          sub_100001688();
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      goto LABEL_27;
    }

    if (qword_1000EB3F8 != -1)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000575E8(qword_1000EB3F0))
    {
      sub_10005740C();
      v18 = sub_100057300();
      if (sub_10005712C(v18))
      {
        sub_100057100();
        sub_1000570F0();
        v19 = sub_100057718();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    if (v9)
    {
      if ((((v9 & 0xFFFFFFFB) == 2) & v11) == 1)
      {
        sub_100057170();
        if (!v32)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_1000573F4(qword_1000EB3F0))
        {
          sub_10005740C();
          v21 = sub_1000571BC();
          if (sub_100057088(v21))
          {
            sub_100057100();
            sub_100001688();
            v22 = _os_log_send_and_compose_impl();
            v23 = v22;
            if (v22)
            {
              sub_100002A8C(v22);
            }
          }

          else
          {
            v23 = 0;
          }

          free(v23);
        }

        v76 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v25 = [v7 objectForKeyedSubscript:@"UserPersonaObserverService"];

      if (v25)
      {
        [v7 setObject:0 forKeyedSubscript:@"UserPersonaObserverService"];
        sub_100057170();
        if (!v32)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (sub_10005757C(qword_1000EB3F0))
        {
          sub_10005740C();
          v26 = sub_100057564();
          if (sub_100053958(v26))
          {
            LOWORD(v79[0]) = 0;
            LODWORD(v72) = 2;
            v71 = v79;
            sub_1000018EC();
            v28 = _os_log_send_and_compose_impl();
            v27 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v27 = 0;
          }

          free(v27);
        }

        sub_10008EBBC(a1);
      }
    }

    *&v75 = 0;
    sub_100057558();
    sub_100091480();
    v30 = v29;
    v31 = 0;
    sub_100057170();
    if ((v30 & 1) == 0)
    {
      if (!v32)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        v79[0] = 0;
        sub_1000011A8(1);
        sub_1000571BC();
        sub_100057498();
        if (a3)
        {
          v37 = a1;
          [v31 code];
          sub_1000576A4();
          sub_100001A64();
          sub_100057098();
          v38 = _os_log_send_and_compose_impl();

          if (v38)
          {
            sub_100002A8C(v38);
          }
        }

        else
        {
          v38 = 0;
        }

        free(v38);
      }

      v76 = 0;
      goto LABEL_73;
    }

    if (!v32)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v33 = qword_1000EB3F0;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10005740C();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
      if (sub_100053930(v34))
      {
        sub_100057100();
        sub_100057098();
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v39 = [v7 objectForKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];

    if (!v39)
    {
      v76 = 1;
LABEL_73:

      goto LABEL_41;
    }

    sub_100057170();
    if (!v32)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005740C();
      v40 = sub_100057228();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v41))
      {
        LOWORD(v79[0]) = 0;
        sub_10005711C();
        sub_1000570F0();
        v42 = sub_1000574E0();
        v33 = v42;
        if (v42)
        {
          sub_100002A8C(v42);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v43 = *(a1 + 24);
    sub_1000576F8();
    v45 = [v44 mountVolumeWithSession:? mountPath:? error:? forPersona:?];
    sub_100057170();
    if (v47)
    {
      if (!v46)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_10005740C();
        v48 = sub_1000571F0();
        if (sub_100053930(v48))
        {
          LOWORD(v79[0]) = 0;
          sub_10005711C();
          sub_100057098();
          v52 = _os_log_send_and_compose_impl();
          v49 = v52;
          if (v52)
          {
            sub_100002A8C(v52);
          }
        }

        else
        {
          v49 = 0;
        }

        free(v49);
      }

      sub_100057170();
      if (!v32)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057364(qword_1000EB3F0))
      {
        sub_10005740C();
        v53 = sub_1000571F0();
        if (sub_100053930(v53))
        {
          LOWORD(v79[0]) = 0;
          sub_10005711C();
          sub_100057098();
          v63 = _os_log_send_and_compose_impl();
          v54 = v63;
          if (v63)
          {
            sub_100002A8C(v63);
          }
        }

        else
        {
          v54 = 0;
        }

        free(v54);
      }

      v64 = sub_100057558();
      sub_1000930E0(v64, v65, a3, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, HIDWORD(v77), v78, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11]);
      v57 = v31;
      goto LABEL_124;
    }

    if (!v46)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_100057280(qword_1000EB3F0))
    {
      sub_10005740C();
      v50 = sub_100057394();
      if (sub_100053958(v50))
      {
        v79[0] = 67109120;
        sub_10005711C();
        sub_100001728();
        v55 = _os_log_send_and_compose_impl();
        v51 = v55;
        if (v55)
        {
          sub_100002A8C(v55);
        }
      }

      else
      {
        v51 = 0;
      }

      free(v51);
    }

    sub_100057558();
    v56 = sub_100091E34();
    v57 = v31;

    sub_100057170();
    if (v56)
    {
      if (!v58)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(qword_1000EB3F0))
      {
        goto LABEL_123;
      }

      sub_10005740C();
      v59 = sub_10005720C();
      if (sub_10000230C(v59))
      {
        LOWORD(v79[0]) = 0;
        sub_10005711C();
        goto LABEL_115;
      }
    }

    else
    {
      if (!v58)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(qword_1000EB3F0))
      {
        goto LABEL_123;
      }

      v79[0] = 0;
      sub_1000011A8(1);
      v60 = sub_10005720C();
      if (sub_10000230C(v60))
      {
        sub_100001A64();
LABEL_115:
        sub_100001728();
        v61 = _os_log_send_and_compose_impl();
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }

        goto LABEL_122;
      }
    }

    v62 = 0;
LABEL_122:
    free(v62);
LABEL_123:

LABEL_124:
    v76 = v45;

    goto LABEL_41;
  }

LABEL_42:

  return a1;
}

uint64_t sub_100093EEC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if ([v6 count])
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_10005757C(qword_1000EB3F0))
      {
        v32 = 0;
        sub_1000011A8(1);
        v8 = sub_100057564();
        if (sub_100057078(v8))
        {
          v31 = 0;
          LODWORD(v27) = 2;
          v26 = &v31;
          sub_1000018EC();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      sub_100057264();
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v13)
      {
        v21 = v13;
        v22 = *v30;
        LODWORD(v11) = 1;
        do
        {
          v23 = 0;
          do
          {
            sub_10005743C(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30);
            if (v24 != v22)
            {
              objc_enumerationMutation(v12);
            }

            v13 = sub_100093530(a1, *(v29 + 8 * v23), a3);
            v11 = v13 & v11;
            v23 = v23 + 1;
          }

          while (v21 != v23);
          v13 = sub_100057748(v13, v14, &v28, v33);
          v21 = v13;
        }

        while (v13);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000940D0()
{
  sub_1000572B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = *(v5 + 32);
    v9 = [v8 userPersonas];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10)
    {
      sub_1000571E4();
      if (!v18)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000574F8(qword_1000EB3F0))
      {
        sub_10005734C();
        v11 = sub_100057228();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (sub_100053958(v12))
        {
          sub_1000538EC();
          sub_100053914();
          v14 = sub_1000574E0();
          v13 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      sub_10008E3EC(v5, v7, v3);
    }

    v15 = *(v5 + 32);
    v16 = [v15 userPersonas];
    v17 = [v16 objectForKeyedSubscript:v7];

    sub_100093EEC(v5, v17, v3);
    sub_1000571E4();
    if (v19)
    {
      if (!v18)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057364(qword_1000EB3F0))
      {
        goto LABEL_26;
      }

      sub_10005737C();
      v20 = sub_1000571F0();
      if (sub_100053930(v20))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!v18)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057364(qword_1000EB3F0))
      {
        goto LABEL_26;
      }

      sub_10005737C();
      v21 = sub_1000571F0();
      if (sub_100053930(v21))
      {
LABEL_23:
        sub_100053968();
        sub_100057098();
        v23 = _os_log_send_and_compose_impl();
        v22 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }

        goto LABEL_25;
      }
    }

    v22 = 0;
LABEL_25:
    free(v22);
LABEL_26:

    sub_100092024(v5, v17, v7, v3, v1);
  }

  sub_100057298();
}

void sub_100094370()
{
  sub_1000572B4();
  v3 = v2;
  v5 = v4;
  v6 = v5;
  if (v3)
  {
    v7 = sub_100098D4C(v5, @"UserPersonaType", 0x3E8);
    if (v7 == 4)
    {
      sub_1000571E4();
      if (!v16)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_10005737C();
        v8 = sub_1000571BC();
        if (sub_100057088(v8))
        {
          sub_100057038();
          sub_100001688();
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      goto LABEL_11;
    }

    v11 = v7;
    sub_1000577C0(v7, @"UserPersonaID");
    sub_1000571E4();
    if (!v16)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000573F4(qword_1000EB3F0))
    {
      sub_10005740C();
      v12 = sub_1000571BC();
      if (sub_100057088(v12))
      {
        sub_1000576CC();
        sub_1000538EC();
        sub_100001688();
        v14 = _os_log_send_and_compose_impl();
        v13 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v15 = sub_100091E34();
    v0 = 0;
    sub_1000571E4();
    if (v15)
    {
      if (!v16)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575E8(qword_1000EB3F0))
      {
        sub_10005737C();
        v17 = sub_100057300();
        if (sub_10005712C(v17))
        {
          sub_100001A64();
          sub_1000570B8();
          v18 = sub_100057718();
          if (!v18)
          {
            goto LABEL_37;
          }

          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (!v16)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000575E8(qword_1000EB3F0))
      {
        sub_10005740C();
        if (!sub_100057300())
        {
          v1 &= ~1u;
        }

        if (v1)
        {
          v37 = &off_1000B8000;
          [v0 code];
          sub_1000576CC();
          sub_1000538EC();
          sub_100053924();
          sub_100057448();
          v18 = _os_log_send_and_compose_impl();

          if (!v18)
          {
LABEL_37:
            free(v18);
            goto LABEL_38;
          }

LABEL_35:
          sub_100002A8C(v18);
          goto LABEL_37;
        }

LABEL_36:
        v18 = 0;
        goto LABEL_37;
      }
    }

LABEL_38:

    if ((v11 & 0xFFFFFFFB) != 2)
    {
      goto LABEL_11;
    }

    sub_1000571E4();
    if (!v16)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005737C();
      v19 = sub_100057228();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v20))
      {
        sub_100057038();
        sub_1000570B8();
        v21 = sub_1000574E0();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = v3[3];
    sub_1000576F8();
    if (![v24 isVolumeMountedWithSession:? fsid:?])
    {
      goto LABEL_11;
    }

    sub_1000571E4();
    if (!v16)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    if (sub_1000574F8(qword_1000EB3F0))
    {
      sub_10005737C();
      v25 = sub_100057228();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (sub_100053958(v26))
      {
        sub_100057038();
        sub_1000570B8();
        v27 = sub_1000574E0();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v29 = v3[3];
    sub_1000576F8();
    [v30 unmountVolumeWithSession:? mountPath:? error:?];
    sub_1000571E4();
    if (v32)
    {
      if (!v31)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_70;
      }

      sub_10005737C();
      v33 = sub_100057154();
      if (sub_100057078(v33))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!v31)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_70;
      }

      sub_10005737C();
      v34 = sub_100057154();
      if (sub_100057078(v34))
      {
LABEL_66:
        sub_100057038();
        sub_1000018EC();
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }

        goto LABEL_69;
      }
    }

    v36 = 0;
LABEL_69:
    free(v36);
LABEL_70:

LABEL_11:
  }

  sub_100057298();
}

void sub_100094CD8(id a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    sub_100057170();
    if (v6)
    {
      if (!v7)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      v8 = sub_100057760();
      if (sub_1000573F4(v8))
      {
        v31 = 0;
        sub_1000011A8(1);
        sub_1000571BC();
        sub_100057498();
        if (v2)
        {
          v9 = a1;
          *v32 = 134217984;
          *&v32[4] = [v6 count];
          sub_1000571B0();
          sub_1000018EC();
          v10 = _os_log_send_and_compose_impl();

          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      a1 = v6;
      v14 = [a1 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = v6;
        v16 = 0;
        v17 = *v28;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(a1);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            sub_100057170();
            if (!v7)
            {
              dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
            }

            if (sub_1000575D0(*(v3 + 1008)))
            {
              v31 = 0;
              v20 = sub_1000011A8(1);
              if (sub_100057790())
              {
                v21 = v20;
              }

              else
              {
                v21 = v20 & 0xFFFFFFFE;
              }

              if (v21)
              {
                *v32 = 67109378;
                *&v32[4] = v16;
                *&v32[8] = 2112;
                *&v32[10] = v19;
                sub_100053924();
                sub_100057448();
                v22 = _os_log_send_and_compose_impl();
                v23 = v22;
                if (v22)
                {
                  sub_100002A8C(v22);
                }
              }

              else
              {
                v23 = 0;
              }

              free(v23);
            }

            ++v16;
          }

          v15 = sub_100057660(v24, v25, &v27, v33);
        }

        while (v15);
        v6 = v26;
      }
    }

    else
    {
      if (!v7)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        *v32 = 0;
        sub_1000011A8(1);
        v11 = sub_1000571BC();
        if (sub_100057088(v11))
        {
          LOWORD(v31) = 0;
          sub_100001688();
          v12 = _os_log_send_and_compose_impl();
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }
    }
  }
}

uint64_t sub_10009501C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 32) userPersonas];
  v3 = [v2 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

  if (v3)
  {
    if ([v3 count] <= 1)
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_1000573F4(qword_1000EB3F0))
      {
        sub_1000572D0();
        sub_1000571BC();
        sub_100057498();
        if (v1)
        {
          v4 = v2;
          [v3 count];
          sub_1000538EC();
          sub_1000018EC();
          v5 = _os_log_send_and_compose_impl();

          if (v5)
          {
            sub_100002A8C(v5);
          }
        }

        else
        {
          v5 = 0;
        }

        free(v5);
      }

      v6 = 1;
      goto LABEL_46;
    }

    v7 = [v3 objectAtIndexedSubscript:0];
    v2 = [v7 objectForKeyedSubscript:@"UserPersonaType"];

    v8 = [v3 objectAtIndexedSubscript:1];
    v9 = [v8 objectForKeyedSubscript:@"UserPersonaType"];

    v10 = &MGCopyAnswer_ptr;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v2 unsignedIntValue];
      v11 = [v9 unsignedIntValue];
      if (v10 == 3 || v11 == 3)
      {
        if (v10 == 5 || v11 == 5)
        {
          v6 = 0;
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
LABEL_44:

          v6 = 1;
          goto LABEL_45;
        }

        sub_1000572D0();
        v18 = sub_100057154();
        if (sub_100057078(v18))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (qword_1000EB3F8 != -1)
        {
          dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
        }

        if (!sub_100057334(qword_1000EB3F0))
        {
          goto LABEL_44;
        }

        sub_1000572D0();
        v17 = sub_100057154();
        if (sub_100057078(v17))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057334(qword_1000EB3F0))
      {
        goto LABEL_44;
      }

      sub_1000572D0();
      v14 = sub_100057154();
      if (sub_100057078(v14))
      {
LABEL_28:
        sub_1000538D4();
        sub_100001800();
        v15 = sub_1000573C4();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_43;
      }
    }

    v16 = 0;
LABEL_43:
    free(v16);
    goto LABEL_44;
  }

  v6 = 1;
LABEL_47:

  return v6;
}

void sub_1000953B8(uint64_t a1)
{
  if (a1)
  {
    sub_100057274();
    if (!v13)
    {
      dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
    }

    v5 = sub_100057760();
    if (sub_1000573F4(v5))
    {
      sub_1000572D0();
      v6 = sub_1000571BC();
      if (sub_100057088(v6))
      {
        sub_100053968();
        sub_100001800();
        v8 = sub_100057470();
        v7 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    v9 = [*(a1 + 32) userPersonas];
    v10 = [v9 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

    if (!v10)
    {
      v10 = +[NSMutableArray array];
      v11 = [*(a1 + 32) userPersonas];
      [v11 setObject:v10 forKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];
    }

    v12 = sub_10008E7D0(a1, v10, 3, @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF", 0, 1);
    sub_100057274();
    if (v14)
    {
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057334(*(v3 + 1008)))
      {
        sub_1000572D0();
        v16 = sub_100057154();
        if (sub_100057078(v16))
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!v13)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (sub_100057334(*(v3 + 1008)))
      {
        sub_1000572D0();
        v15 = sub_100057154();
        if (sub_100057078(v15))
        {
LABEL_23:
          sub_100053968();
          sub_100001800();
          v18 = sub_1000573C4();
          v17 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }

          goto LABEL_25;
        }

LABEL_22:
        v17 = 0;
LABEL_25:
        free(v17);
      }
    }

    v19 = sub_10008E7D0(a1, v10, 5, @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF", 0, 1);

    sub_100057274();
    if (v19)
    {
      if (!v20)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v3 + 1008)))
      {
        goto LABEL_40;
      }

      sub_1000572D0();
      v22 = sub_100057394();
      if (sub_100057078(v22))
      {
LABEL_37:
        sub_100053968();
        sub_100001728();
        v24 = _os_log_send_and_compose_impl();
        v23 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v20)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_100057280(*(v3 + 1008)))
      {
        goto LABEL_40;
      }

      sub_1000572D0();
      v21 = sub_100057394();
      if (sub_100057078(v21))
      {
        goto LABEL_37;
      }
    }

    v23 = 0;
LABEL_39:
    free(v23);
LABEL_40:

    sub_10008EBBC(a1);
  }
}

void sub_100095708(id *a1)
{
  if (a1)
  {
    v2 = [a1[4] userPersonas];
    v3 = [v2 objectForKeyedSubscript:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

    if (v3)
    {
      v7 = sub_100057558();
      if (sub_100093EEC(v7, v8, 0))
      {
LABEL_17:

        return;
      }

      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_1000573F4(qword_1000EB3F0))
      {
LABEL_16:

        goto LABEL_17;
      }

      sub_1000572D0();
      v9 = sub_1000571BC();
      if (sub_100057088(v9))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_1000EB3F8 != -1)
      {
        dispatch_once(&qword_1000EB3F8, &stru_1000DD880);
      }

      if (!sub_1000573F4(qword_1000EB3F0))
      {
        goto LABEL_16;
      }

      sub_1000572D0();
      v4 = sub_1000571BC();
      if (sub_100057088(v4))
      {
LABEL_7:
        sub_100053968();
        sub_100001800();
        v5 = sub_100057470();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_15;
      }
    }

    v6 = 0;
LABEL_15:
    free(v6);
    goto LABEL_16;
  }
}

void sub_100095D30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100057A04;
    v3[3] = &unk_1000DD8C0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

uint64_t sub_100095DAC(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

void sub_100095DB8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1000013A0(*(a1 + 24));
    [v2 closeFileWithDescriptor:*(a1 + 12)];

    *(a1 + 12) = -1;
    v3 = (*(a1 + 16) - 1);
    if (v3 >= 0)
    {
      do
      {
        v4 = v3;
        v5 = [NSString stringWithFormat:@"%s.%d", *(a1 + 40), v3];
        v6 = [NSString stringWithFormat:@"%s.%d", *(a1 + 40), (v4 + 1)];
        v7 = sub_1000013A0(*(a1 + 24));
        [v7 renameFileFromPath:v5 toPath:v6 error:0];

        v3 = (v4 - 1);
      }

      while (v4);
    }
  }
}

uint64_t sub_100095EB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t sub_100095EBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t sub_100095EC8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

BOOL sub_100095ED4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [NSString stringWithFormat:@"%s.0", *(a1 + 40)];
  v6 = *a2;
  if (*a2)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = sub_1000013A0(v7);
  v9 = [v8 openFileForAppendingAtPath:v5 error:0];
  if (*a2)
  {
    *(*a2 + 12) = v9;
  }

  v10 = *a2;
  *a3 = *a2;
  return v10 == 0;
}

id sub_100096040(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

void sub_100096054(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 24);
  }
}

uint64_t sub_100096068(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100096080(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_10009608C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

UMDPersonaManifestPersona *sub_100096310(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  v4 = objc_alloc_init(UMDPersonaManifestPersona);
  v5 = sub_100098D4C(v3, @"UserPersonaType", 0xFFFFFFFFLL);
  if (v4)
  {
    v4->_type = v5;
  }

  if (*__error() == 2)
  {
    if (qword_1000EB458 != -1)
    {
      dispatch_once(&qword_1000EB458, &stru_1000DDD50);
    }

    v6 = qword_1000EB450;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v11 = 0;
  }

  else
  {
    sub_1000990F0(v3, @"UserPersonaUniqueString");
    objc_claimAutoreleasedReturnValue();
    v13 = sub_10006E24C();
    sub_1000897C8(v13, v14);

    v16 = sub_10006E2F0(v15, @"UserPersonaID");
    if (v4)
    {
      v4->_kernelID = v16;
      v17 = sub_100098ECC(v3, @"UserPersonaNickName");
      v18 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v18, v19, v20, 40);
    }

    else
    {
      v17 = sub_100098ECC(v3, @"UserPersonaNickName");
    }

    v21 = sub_100098F4C(v3, @"UserPersonaBundleIDS");
    if (v4)
    {
      v22 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v22, v23, v24, 48);
    }

    v25 = sub_100098F4C(v3, @"UserPersonaObserverService");
    v26 = v25;
    if (v4)
    {
      v27 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v27, v28, v29, 56);

      v4->_isDeleting = sub_100098C4C(v3, @"UserPersonaOnDeletion");
      v4->_isDisabled = sub_100098C4C(v3, @"UserPersonaDisabled");
      v30 = sub_100098ECC(v3, @"UserPersonaDisablementReason");
      v31 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v31, v32, v33, 64);
    }

    else
    {

      sub_100098C4C(v3, @"UserPersonaOnDeletion");
      sub_100098C4C(v3, @"UserPersonaDisabled");
      v30 = sub_100098ECC(v3, @"UserPersonaDisablementReason");
    }

    v34 = sub_100098ECC(v3, @"UserPersonaDisplayName");
    if (v4)
    {
      v35 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v35, v36, v37, 72);
    }

    sub_100099194(v3, @"MKBUserSessionCreateTimeStamp");
    objc_claimAutoreleasedReturnValue();
    v38 = sub_10006E24C();
    sub_100089828(v38, v39);

    sub_100099194(v3, @"MKBUserSessionLoginTimeStamp");
    objc_claimAutoreleasedReturnValue();
    v40 = sub_10006E24C();
    sub_100089838(v40, v41);

    sub_1000990F0(v3, @"MKBUserSessionVolumeUUID");
    objc_claimAutoreleasedReturnValue();
    v42 = sub_10006E24C();
    sub_100089848(v42, v43);

    sub_1000990F0(v3, @"MKBUserSessionUUID");
    objc_claimAutoreleasedReturnValue();
    v44 = sub_10006E24C();
    sub_100089858(v44, v45);

    v46 = sub_100098ECC(v3, @"MKBUserSessionHomeDir");
    if (v4)
    {
      v47 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v47, v48, v49, 112);
    }

    v50 = sub_100098ECC(v3, @"MKBUserSessionVolumeDeviceNode");
    if (v4)
    {
      v51 = sub_100001A74();
      objc_setProperty_nonatomic_copy(v51, v52, v53, 120);
    }

    sub_1000990F0(v3, @"UserPersonaUserODUUID");
    objc_claimAutoreleasedReturnValue();
    v54 = sub_10006E24C();
    sub_100089894(v54, v55);

    v57 = sub_10006E2F0(v56, @"UserPersonaUserUID");
    if (v4)
    {
      v4->_uid = v57;
      v4->_gid = sub_10006E2F0(v57, @"UserPersonaUserGID");
    }

    else
    {
      sub_10006E2F0(v57, @"UserPersonaUserGID");
    }

    sub_100099214(v3, @"UserPersonaVolumeKey");
    objc_claimAutoreleasedReturnValue();
    v58 = sub_10006E24C();
    sub_1000898A4(v58, v59);

    v60 = sub_100098E4C(v3, @"UsePersonaGenerationID", 0);
    if (v4)
    {
      v4->_generation = v60;
    }

    v11 = v4;
  }

  return v11;
}

void sub_10009677C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

void sub_100096790(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

void sub_1000967A4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

uint64_t sub_1000967B8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_1000967C4(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

void sub_1000967D8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 72);
  }
}

void sub_1000967EC(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 112);
  }
}

void sub_100096800(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 120);
  }
}

uint64_t sub_100096814(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

uint64_t sub_100096820(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_10009682C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

id sub_100096838(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = [NSNumber numberWithUnsignedInt:*(a1 + 12)];
    sub_10006E27C();

    v4 = [*(a1 + 32) UUIDString];
    sub_10006E27C();

    if (*(a1 + 16))
    {
      v5 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 40) forKeyedSubscript:@"UserPersonaNickName"];
    v6 = *(a1 + 48);
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"compare:"];

    [v2 setObject:v8 forKeyedSubscript:@"UserPersonaBundleIDS"];
    v9 = *(a1 + 56);
    v10 = [v9 allObjects];
    v11 = [v10 sortedArrayUsingSelector:"compare:"];

    [v2 setObject:v11 forKeyedSubscript:@"UserPersonaObserverService"];
    if (*(a1 + 8) == 1)
    {
      v12 = [NSNumber numberWithBool:1];
      sub_10006E27C();
    }

    if (*(a1 + 9) == 1)
    {
      v13 = [NSNumber numberWithBool:1];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 64) forKeyedSubscript:@"UserPersonaDisablementReason"];
    [v2 setObject:*(a1 + 72) forKeyedSubscript:@"UserPersonaDisplayName"];
    [v2 setObject:*(a1 + 80) forKeyedSubscript:@"MKBUserSessionCreateTimeStamp"];
    [v2 setObject:*(a1 + 88) forKeyedSubscript:@"MKBUserSessionLoginTimeStamp"];
    v14 = [*(a1 + 96) UUIDString];
    sub_10006E27C();

    v15 = [*(a1 + 104) UUIDString];
    sub_10006E27C();

    [v2 setObject:*(a1 + 112) forKeyedSubscript:@"MKBUserSessionHomeDir"];
    [v2 setObject:*(a1 + 120) forKeyedSubscript:@"MKBUserSessionVolumeDeviceNode"];
    v16 = [*(a1 + 128) UUIDString];
    sub_10006E27C();

    if (*(a1 + 20))
    {
      v17 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    if (*(a1 + 24))
    {
      v18 = [NSNumber numberWithUnsignedInt:?];
      sub_10006E27C();
    }

    [v2 setObject:*(a1 + 136) forKeyedSubscript:@"UserPersonaVolumeKey"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100096B5C(void *a1, unsigned __int8 *a2, char *a3)
{
  v190 = a3;
  v12 = a1;
  if (a2)
  {
    v13 = *(a2 + 3);
    if (v12)
    {
LABEL_3:
      v14 = v12[3];
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_4:
  v195 = v12;
  v192 = v14;
  v193 = v13;
  if (v13 != v14)
  {
    v191 = 0;
    v194 = 0;
    *&v189[4] = 0;
    *&v189[12] = 0;
    v7 = 0;
    *v188 = 0;
    memset(&v185[4], 0, 24);
    v186 = 0uLL;
    sub_10006E2D8();
    sub_100001738();
    sub_10006E1FC();
    v18 = 0;
    goto LABEL_28;
  }

  if (!a2 || (v15 = *(a2 + 4)) == 0)
  {
    if (!v195 || (v19 = v195[4]) == 0)
    {
      v173 = 0;
      v169 = 0;
      v191 = 0x100000000;
      goto LABEL_19;
    }

    v169 = v19;
    if (a2)
    {
      v3 = *(a2 + 4);
    }

    else
    {
      v3 = 0;
    }

    v173 = 0;
    HIDWORD(v191) = 1;
    v16 = v195;
    goto LABEL_15;
  }

  v173 = v15;
  v3 = *(a2 + 4);
  HIDWORD(v191) = 0;
  v16 = v195;
  if (v195)
  {
LABEL_15:
    v20 = v16[4];
    goto LABEL_16;
  }

  v20 = 0;
LABEL_16:
  v171 = v20;
  LODWORD(v191) = 1;
  if (([v3 isEqual:?] & 1) == 0)
  {
    v172 = v3;
LABEL_27:
    v194 = 0;
    *&v189[4] = 0;
    *&v189[12] = 0;
    v7 = 0;
    *v188 = 0;
    memset(&v185[4], 0, 24);
    v186 = 0uLL;
    sub_10006E2D8();
    sub_100001738();
    sub_10006E1FC();
    v18 = 0;
    goto LABEL_28;
  }

LABEL_19:
  if (a2)
  {
    v21 = *(a2 + 4);
    if (v195)
    {
LABEL_21:
      v22 = *(v195 + 4);
      goto LABEL_22;
    }
  }

  else
  {
    v21 = 0;
    if (v195)
    {
      goto LABEL_21;
    }
  }

  v22 = 0;
LABEL_22:
  v172 = v3;
  if (v21 != v22)
  {
    goto LABEL_27;
  }

  if (!a2)
  {
    if (!v195)
    {
      sub_10006E294();
      sub_10006E25C();
      sub_10006E2A4();
      sub_100001698();
      goto LABEL_208;
    }

    v56 = v195[5];
    v168 = 0;
    sub_100001698();
    v162 = v57;
    if (!v57)
    {
      *&v185[24] = 0;
      v162 = 0;
      goto LABEL_180;
    }

    v24 = 0;
    goto LABEL_119;
  }

  v23 = *(a2 + 5);
  if (!v23)
  {
    if (!v195)
    {
      v165 = *(a2 + 6);
      if (v165)
      {
        v167 = *(a2 + 6);
        sub_10006E294();
        v37 = 0;
        *&v189[12] = 0;
        *&v189[16] = 1;
        goto LABEL_137;
      }

      sub_10006E294();
      sub_100001698();
LABEL_190:
      v161 = *(a2 + 7);
      if (v161)
      {
        v164 = *(a2 + 7);
        sub_10006E25C();
        *&v185[16] = 0;
        v48 = 0;
        *&v189[12] = 1;
        goto LABEL_153;
      }

      sub_10006E25C();
      sub_10006E2C0();
LABEL_198:
      *&v185[12] = 0;
      v161 = 0;
      v63 = a2[8];
      sub_1000018FC();
      if (v64)
      {
        v7 = 1;
        v158 = 0;
        sub_10006E2CC();
        v18 = 0;
        memset(v188, 0, sizeof(v188));
        *&v189[8] = 0;
        *(&v186 + 1) = 0x100000000;
        *&v185[8] = 0;
        *v185 = 0;
        *v189 = 0;
        *&v186 = 0;
        v14 = 0;
        v183 = 0uLL;
        v184 = 0;
        v5 = 0;
        LODWORD(v3) = 0;
        v9 = 0;
        v182 = 0;
        v6 = 0;
        v187 = 0;
        v10 = 0;
        LODWORD(v4) = 0;
        v17 = 0;
        goto LABEL_28;
      }

      v158 = 0;
      sub_10006E2CC();
      goto LABEL_205;
    }

    v26 = v195[5];
    if (!v26)
    {
      v3 = (a2 + 48);
      v33 = *(a2 + 6);
      v162 = 0;
      *&v185[24] = 0;
      if (v33)
      {
        v165 = v33;
        sub_100001698();
        v168 = v34;
        *&v189[12] = 0;
LABEL_134:
        v30 = *v3;
LABEL_135:
        v31 = v195;
LABEL_136:
        v167 = v30;
        v37 = v31[6];
        goto LABEL_137;
      }

      sub_100001698();
      v168 = v35;
      v32 = v195;
LABEL_132:
      v36 = v32[6];
      if (!v36)
      {
        v3 = (a2 + 56);
        v43 = *(a2 + 7);
        sub_10006E2B4();
        *&v189[12] = v46;
        v159 = 0;
        *&v185[20] = 0;
        if (v44)
        {
          v161 = v44;
          v165 = v45;
          *&v185[16] = 0;
LABEL_150:
          v39 = *v3;
LABEL_151:
          v40 = v195;
LABEL_152:
          v164 = v39;
          v48 = v40[7];
          goto LABEL_153;
        }

        v165 = v45;
        v42 = v195;
LABEL_148:
        v47 = v42[7];
        if (!v47)
        {
          v161 = 0;
          v158 = 0;
          v49 = a2[8];
          *&v185[12] = 0;
          *&v185[16] = 1;
          v50 = v195;
          goto LABEL_160;
        }

        v158 = v47;
        v161 = 0;
        v3 = (a2 + 56);
        sub_10006E2CC();
        goto LABEL_150;
      }

      v159 = v36;
      v165 = 0;
      v3 = (a2 + 48);
      sub_10006E2C0();
      goto LABEL_134;
    }

    v162 = v26;
    v27 = *(a2 + 5);
    v168 = 0;
    sub_100001698();
LABEL_119:
    v25 = v195;
LABEL_120:
    v170 = v24;
    v28 = v25[5];
    goto LABEL_121;
  }

  v168 = v23;
  v24 = *(a2 + 5);
  v25 = v195;
  *&v189[16] = 0;
  if (v195)
  {
    goto LABEL_120;
  }

  v170 = v24;
  v28 = 0;
LABEL_121:
  v166 = v28;
  if (![v170 isEqual:?])
  {
    v7 = 0;
    memset(v188, 0, sizeof(v188));
    *v189 = 0uLL;
    v184 = 0;
    memset(v185, 0, 24);
    v186 = 0uLL;
    v14 = 0;
    v183 = 0uLL;
    v5 = 0;
    LODWORD(v3) = 0;
    v9 = 0;
    v6 = 0;
    v182 = 0;
    v187 = 0;
    sub_10006E23C();
    sub_1000018FC();
    *&v185[24] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v185[24] = 1;
    if (!v195)
    {
      sub_10006E25C();
      sub_10006E2A4();
LABEL_208:
      sub_10006E2C0();
      goto LABEL_209;
    }

LABEL_180:
    v58 = v195[6];
    v165 = 0;
    sub_10006E2C0();
    v159 = v59;
    if (!v59)
    {
      *&v185[20] = 0;
      v159 = 0;
LABEL_185:
      v60 = v195[7];
      v161 = 0;
      sub_10006E2CC();
      v158 = v61;
      if (!v61)
      {
        *&v185[12] = 0;
        v158 = 0;
LABEL_193:
        if ((v195[1] & 1) == 0 && (*(v195 + 9) & 1) == 0)
        {
          goto LABEL_210;
        }

        goto LABEL_195;
      }

      v39 = 0;
      goto LABEL_151;
    }

    v30 = 0;
    goto LABEL_135;
  }

  v29 = *(a2 + 6);
  if (!v29)
  {
    *&v185[24] = 1;
    v32 = v195;
    if (!v195)
    {
      goto LABEL_190;
    }

    goto LABEL_132;
  }

  v165 = v29;
  v30 = *(a2 + 6);
  *&v189[12] = 0;
  *&v185[24] = 1;
  v31 = v195;
  if (v195)
  {
    goto LABEL_136;
  }

  v167 = v30;
  v37 = 0;
LABEL_137:
  v163 = v37;
  if (![v167 isEqual:?])
  {
    v7 = 0;
    *&v185[12] = 0;
    sub_10006E19C();
    sub_10006E23C();
    sub_1000018FC();
    HIDWORD(v186) = v41;
    v187 = 0;
    *&v185[20] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v185[20] = 1;
    if (v195)
    {
      goto LABEL_185;
    }

    sub_10006E2A4();
LABEL_209:
    sub_10006E2CC();
    goto LABEL_210;
  }

  v38 = *(a2 + 7);
  if (!v38)
  {
    *&v185[20] = 1;
    v42 = v195;
    if (!v195)
    {
      goto LABEL_198;
    }

    goto LABEL_148;
  }

  v161 = v38;
  v39 = *(a2 + 7);
  *&v185[16] = 0;
  *&v185[20] = 1;
  v40 = v195;
  if (v195)
  {
    goto LABEL_152;
  }

  v164 = v39;
  v48 = 0;
LABEL_153:
  v160 = v48;
  if (![v164 isEqual:?])
  {
    sub_10006E19C();
    v187 = 0;
    sub_10006E23C();
    sub_1000018FC();
LABEL_158:
    HIDWORD(v186) = v51;
    v7 = 1;
    *&v185[12] = 1;
    goto LABEL_28;
  }

  if (!a2)
  {
    *&v185[12] = 1;
    if (v195)
    {
      goto LABEL_193;
    }

LABEL_210:
    if (!v195 || (v67 = v195[8]) == 0)
    {
      v181 = 0;
      v177 = 0;
      *&v189[4] = 0;
      *&v189[8] = 1;
      goto LABEL_220;
    }

    v177 = v67;
    if (a2)
    {
      v68 = *(a2 + 8);
    }

    sub_10006E2B4();
    *&v189[8] = v69;
    v54 = v195;
    goto LABEL_215;
  }

  v49 = a2[8];
  v50 = v195;
  if (!v195)
  {
    sub_1000018FC();
    if (v65)
    {
      sub_10006E19C();
      v187 = 0;
      v18 = sub_10000231C();
      goto LABEL_158;
    }

    *&v185[12] = 1;
LABEL_205:
    if ((a2[9] & 1) == 0)
    {
      goto LABEL_162;
    }

    sub_10006E19C();
    v187 = 0;
    v18 = sub_10000231C();
LABEL_196:
    v194 = v62;
    HIDWORD(v186) = v62;
    v7 = 1;
    goto LABEL_28;
  }

  *&v185[12] = 1;
LABEL_160:
  if ((v49 & 1) != *(v50 + 8) || a2[9] != *(v50 + 9))
  {
LABEL_195:
    sub_10006E19C();
    v187 = 0;
    v18 = sub_10006E224();
    goto LABEL_196;
  }

LABEL_162:
  v52 = *(a2 + 8);
  if (!v52)
  {
    goto LABEL_210;
  }

  v181 = v52;
  v53 = *(a2 + 8);
  v54 = v195;
  *&v189[8] = 0;
  if (v195)
  {
    v55 = v181;
LABEL_215:
    v157 = v53;
    v181 = v55;
    v66 = v54[8];
    goto LABEL_216;
  }

  v157 = v53;
  v66 = 0;
LABEL_216:
  v155 = v66;
  if (([v157 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    *(&v186 + 4) = 0;
    *&v185[4] = 0;
    sub_10006E2D8();
    LODWORD(v186) = 0;
    sub_100001738();
    LODWORD(v3) = 0;
    *(&v183 + 4) = 0;
    v18 = sub_10006E16C();
    *&v189[4] = 1;
    goto LABEL_28;
  }

  *&v189[4] = 1;
LABEL_220:
  if (a2 && (v70 = *(a2 + 9)) != 0)
  {
    v180 = v70;
    v71 = *(a2 + 9);
    v72 = v195;
    *&v185[8] = 0;
    if (!v195)
    {
      v156 = v71;
      v77 = 0;
      goto LABEL_230;
    }

    v73 = v180;
  }

  else
  {
    if (!v195 || (v74 = v195[9]) == 0)
    {
      v180 = 0;
      v176 = 0;
      *&v185[4] = 0;
      *&v185[8] = 1;
      goto LABEL_234;
    }

    v176 = v74;
    if (a2)
    {
      v75 = *(a2 + 9);
    }

    sub_10006E2B4();
    *&v185[8] = v76;
    v72 = v195;
  }

  v156 = v71;
  v180 = v73;
  v77 = v72[9];
LABEL_230:
  v153 = v77;
  if (([v156 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    *&v186 = 0;
    sub_10006E2D8();
    sub_100001738();
    LODWORD(v3) = 0;
    *(&v183 + 4) = 0;
    v18 = sub_10006E16C();
    DWORD2(v186) = v78;
    *&v185[4] = 1;
    goto LABEL_28;
  }

  *&v185[4] = 1;
LABEL_234:
  if (a2 && (v79 = *(a2 + 10)) != 0)
  {
    v179 = v79;
    v80 = *(a2 + 10);
    v81 = v195;
    *v185 = 0;
    if (!v195)
    {
      v154 = v80;
      v86 = 0;
      goto LABEL_244;
    }

    v82 = v179;
  }

  else
  {
    if (!v195 || (v83 = v195[10]) == 0)
    {
      v179 = 0;
      v175 = 0;
      *v189 = 0;
      *v185 = 1;
      goto LABEL_248;
    }

    v175 = v83;
    if (a2)
    {
      v84 = *(a2 + 10);
    }

    sub_10006E2B4();
    *v185 = v85;
    v81 = v195;
  }

  v154 = v80;
  v179 = v82;
  v86 = v81[10];
LABEL_244:
  v151 = v86;
  if (([v154 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    LODWORD(v186) = 0;
    v184 = 0;
    v14 = 0;
    v5 = 0;
    *&v188[4] = 0uLL;
    LODWORD(v3) = 0;
    v183 = 0uLL;
    v9 = 0;
    v6 = 0;
    v182 = 0;
    v18 = sub_10006E1DC();
    *v188 = v87;
    DWORD1(v186) = v87;
    DWORD2(v186) = v87;
    *v189 = 1;
    goto LABEL_28;
  }

  *v189 = 1;
LABEL_248:
  if (a2 && (v88 = *(a2 + 11)) != 0)
  {
    v178 = v88;
    v89 = *(a2 + 11);
    v90 = v195;
    HIDWORD(v184) = 0;
    if (!v195)
    {
      v152 = v89;
      v95 = 0;
      goto LABEL_258;
    }

    v91 = v178;
  }

  else
  {
    if (!v195 || (v92 = v195[11]) == 0)
    {
      v178 = 0;
      v174 = 0;
      *&v188[16] = 0;
      HIDWORD(v184) = 1;
      goto LABEL_262;
    }

    v174 = v92;
    if (a2)
    {
      v93 = *(a2 + 11);
    }

    sub_10006E2B4();
    HIDWORD(v184) = v94;
    v90 = v195;
  }

  v152 = v89;
  v178 = v91;
  v95 = v90[11];
LABEL_258:
  v149 = v95;
  if (([v152 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    sub_100001738();
    *&v188[8] = 0;
    LODWORD(v3) = 0;
    *(&v183 + 4) = 0;
    v18 = sub_10006E16C();
    DWORD1(v186) = v96;
    DWORD2(v186) = v96;
    LODWORD(v186) = v96;
    *&v188[16] = 1;
    goto LABEL_28;
  }

  *&v188[16] = 1;
LABEL_262:
  if (a2 && (v97 = *(a2 + 12)) != 0)
  {
    v148 = v97;
    v98 = *(a2 + 12);
    LODWORD(v184) = 0;
    v99 = v195;
    if (!v195)
    {
      v150 = v98;
      v101 = 0;
      goto LABEL_272;
    }
  }

  else
  {
    if (!v195 || (v100 = v195[12]) == 0)
    {
      v148 = 0;
      v142 = 0;
      HIDWORD(v183) = 0;
      LODWORD(v184) = 1;
      goto LABEL_276;
    }

    v142 = v100;
    if (a2)
    {
      v98 = *(a2 + 12);
    }

    else
    {
      v98 = 0;
    }

    v148 = 0;
    LODWORD(v184) = 1;
    v99 = v195;
  }

  v150 = v98;
  v101 = v99[12];
LABEL_272:
  v146 = v101;
  if (([v150 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    v5 = 0;
    *&v188[8] = 0;
    LODWORD(v3) = 0;
    *(&v183 + 4) = 0;
    sub_10006E16C();
    sub_10006E26C();
    HIDWORD(v183) = 1;
    goto LABEL_28;
  }

  HIDWORD(v183) = 1;
LABEL_276:
  if (a2 && (v102 = *(a2 + 13)) != 0)
  {
    v145 = v102;
    v103 = *(a2 + 13);
    *&v188[12] = 0;
    v104 = v195;
    if (!v195)
    {
      v147 = v103;
      v106 = 0;
      goto LABEL_286;
    }
  }

  else
  {
    if (!v195 || (v105 = v195[13]) == 0)
    {
      v145 = 0;
      v138 = 0;
      *&v188[8] = 0;
      *&v188[12] = 1;
      goto LABEL_290;
    }

    v138 = v105;
    if (a2)
    {
      v103 = *(a2 + 13);
    }

    else
    {
      v103 = 0;
    }

    v145 = 0;
    *&v188[12] = 1;
    v104 = v195;
  }

  v147 = v103;
  v106 = v104[13];
LABEL_286:
  v143 = v106;
  if (([v147 isEqual:?] & 1) == 0)
  {
    v194 = 1;
    LODWORD(v3) = 0;
    *(&v183 + 4) = 0;
    sub_10006E16C();
    sub_10006E26C();
    v5 = 1;
    *&v188[8] = 1;
    goto LABEL_28;
  }

  *&v188[8] = 1;
LABEL_290:
  if (a2 && (v107 = *(a2 + 14)) != 0)
  {
    v4 = v107;
    v108 = *(a2 + 14);
    v109 = v195;
    DWORD2(v183) = 0;
    if (!v195)
    {
      v144 = v108;
      v110 = 0;
      goto LABEL_300;
    }
  }

  else
  {
    if (!v195 || (v135 = v195[14]) == 0)
    {
      v4 = 0;
      v135 = 0;
      DWORD1(v183) = 0;
      DWORD2(v183) = 1;
      goto LABEL_304;
    }

    if (a2)
    {
      v108 = *(a2 + 14);
    }

    else
    {
      v108 = 0;
    }

    v4 = 0;
    DWORD2(v183) = 1;
    v109 = v195;
  }

  v144 = v108;
  v110 = v109[14];
LABEL_300:
  v139 = v110;
  [v144 isEqual:?];
  sub_10006E2E4();
  if ((v112 & 1) == 0)
  {
    v141 = v4;
    sub_10006E16C();
    sub_10006E26C();
    v5 = 1;
    LODWORD(v3) = 1;
    DWORD1(v183) = 1;
    goto LABEL_28;
  }

  DWORD1(v183) = v111;
LABEL_304:
  v141 = v4;
  if (a2 && (v113 = *(a2 + 15)) != 0)
  {
    v137 = v113;
    v140 = *(a2 + 15);
    LODWORD(v183) = 0;
    if (!v195)
    {
      v114 = 0;
      goto LABEL_314;
    }
  }

  else
  {
    if (!v195 || (v132 = v195[15]) == 0)
    {
      v137 = 0;
      v132 = 0;
      *&v188[4] = 0;
      LODWORD(v183) = 1;
      goto LABEL_318;
    }

    if (a2)
    {
      v140 = *(a2 + 15);
    }

    else
    {
      v140 = 0;
    }

    v137 = 0;
    LODWORD(v183) = 1;
  }

  v114 = v195[15];
LABEL_314:
  v134 = v114;
  [v140 isEqual:?];
  sub_10006E2E4();
  if ((v116 & 1) == 0)
  {
    v6 = 0;
    v182 = 0;
    sub_10006E1DC();
    *v188 = v117;
    DWORD1(v186) = v117;
    DWORD2(v186) = v117;
    LODWORD(v186) = v117;
    sub_100001810();
    *&v188[4] = 1;
    goto LABEL_28;
  }

  *&v188[4] = v115;
LABEL_318:
  if (a2 && (v133 = *(a2 + 16)) != 0)
  {
    v136 = *(a2 + 16);
    v182 = 0;
    if (!v195)
    {
      v118 = 0;
      goto LABEL_328;
    }
  }

  else
  {
    if (!v195 || (v130 = v195[16]) == 0)
    {
      v133 = 0;
      v130 = 0;
      v187 = 0;
      v182 = 1;
      goto LABEL_332;
    }

    if (a2)
    {
      v136 = *(a2 + 16);
    }

    else
    {
      v136 = 0;
    }

    v133 = 0;
    v182 = 1;
  }

  v118 = v195[16];
LABEL_328:
  v131 = v118;
  [v136 isEqual:?];
  sub_10006E2E4();
  if ((v120 & 1) == 0)
  {
    sub_10006E224();
    sub_100001998();
    v187 = 1;
    goto LABEL_28;
  }

  v187 = v119;
LABEL_332:
  if (a2)
  {
    v121 = *(a2 + 5);
  }

  else
  {
    v121 = 0;
  }

  if (v195)
  {
    v122 = *(v195 + 5);
  }

  else
  {
    v122 = 0;
  }

  if (v121 != v122 || (!a2 ? (v123 = 0) : (v123 = *(a2 + 6)), !v195 ? (v124 = 0) : (v124 = *(v195 + 6)), v123 != v124))
  {
    sub_10006E224();
    v194 = v125;
    sub_100001998();
    goto LABEL_28;
  }

  if (a2)
  {
    v129 = *(a2 + 17);
    if (v129)
    {
      a2 = *(a2 + 17);
      LODWORD(v4) = 0;
      if (!v195)
      {
        v126 = 0;
        goto LABEL_353;
      }

LABEL_352:
      v126 = v195[17];
LABEL_353:
      v8 = v126;
      [a2 isEqual:v8];
      sub_10006E2E4();
      DWORD2(v186) = v127;
      HIDWORD(v186) = v127;
      v7 = 1;
      *v188 = v127;
      LODWORD(v186) = v127;
      DWORD1(v186) = v127;
      sub_100001810();
      v6 = 1;
      v10 = 1;
      goto LABEL_28;
    }
  }

  if (v195)
  {
    v128 = v195[17];
    if (v128)
    {
      if (a2)
      {
        a2 = *(a2 + 17);
      }

      v129 = 0;
      LODWORD(v4) = 1;
      goto LABEL_352;
    }
  }

  v128 = 0;
  v129 = 0;
  sub_1000018FC();
  sub_100001998();
  v10 = 1;
  LODWORD(v4) = 1;
  v18 = 1;
LABEL_28:
  *v190 = v18;
  if (v17)
  {

    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else if (!v4)
  {
LABEL_30:
    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v10)
  {
LABEL_31:
  }

LABEL_32:
  if (v187)
  {
  }

  if (v182)
  {
  }

  if (v6)
  {
  }

  if (*&v188[4])
  {
  }

  if (v183)
  {
  }

  if (v9)
  {
  }

  if (DWORD1(v183))
  {
  }

  if (DWORD2(v183))
  {
  }

  if (v3)
  {
  }

  if (*&v188[8])
  {
  }

  if (*&v188[12])
  {
  }

  if (v5)
  {
  }

  if (HIDWORD(v183))
  {
  }

  if (v184)
  {
  }

  if (v14)
  {
  }

  if (*&v188[16])
  {
  }

  if (HIDWORD(v184))
  {
  }

  if (v186)
  {
  }

  if (*v189)
  {
  }

  if (*v185)
  {
  }

  if (DWORD1(v186))
  {
  }

  if (*&v185[4])
  {
  }

  if (*&v185[8])
  {
  }

  if (DWORD2(v186))
  {
  }

  if (*&v189[4])
  {
  }

  if (*&v189[8])
  {
  }

  if (*v188)
  {
  }

  if (*&v185[12])
  {
  }

  if (*&v185[16])
  {
  }

  if (v7)
  {
  }

  if (*&v185[20])
  {
  }

  if (*&v189[12])
  {
  }

  if (HIDWORD(v186))
  {
  }

  if (*&v185[24])
  {
  }

  if (*&v189[16])
  {
  }

  if (v194)
  {
  }

  if (v191)
  {
  }

  if (HIDWORD(v191))
  {
  }

  if (v193 == v192)
  {
  }
}

void sub_1000980BC(void *a1, char *newValue)
{
  if (a1)
  {
    sub_100074E58(a1, newValue);
  }
}

void sub_1000980C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074E64(a1, a2);
  }
}

void sub_10009816C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

void sub_100098180(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v35 = a1;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v35)
  {
    v7 = v35[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v6 isEqualToString:v8] && (!a2 ? (v9 = 0) : (v9 = *(a2 + 8)), !v35 ? (v10 = 0) : (v10 = *(v35 + 2)), v9 == v10))
  {
    if (a2)
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (v35)
    {
      v13 = v35[3];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if ([v12 isEqual:v14])
    {
      if (a2)
      {
        v15 = *(a2 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if (v35)
      {
        v17 = v35[4];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      if ([v16 isEqual:v18])
      {
        if (a2)
        {
          v19 = *(a2 + 40);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        if (v35)
        {
          v21 = v35[5];
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        if ([v20 isEqualToString:v22])
        {
          if (a2)
          {
            v23 = *(a2 + 48);
          }

          else
          {
            v23 = 0;
          }

          v34 = v23;
          if (v35)
          {
            v24 = v35[6];
          }

          else
          {
            v24 = 0;
          }

          v33 = v24;
          if ([v34 isEqualToString:?])
          {
            if (a2)
            {
              v25 = *(a2 + 56);
            }

            else
            {
              v25 = 0;
            }

            v32 = v25;
            if (v35)
            {
              v26 = v35[7];
            }

            else
            {
              v26 = 0;
            }

            v31 = v26;
            if ([v32 isEqualToString:?])
            {
              if (a2)
              {
                v27 = *(a2 + 64);
              }

              else
              {
                v27 = 0;
              }

              if (v35)
              {
                v28 = v35[8];
              }

              else
              {
                v28 = 0;
              }

              v30 = v27;
              v29 = [v30 isEqual:v28];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  *a3 = v29;
}

void sub_100098460(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v19 = a1;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v19)
  {
    v7 = v19[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v6 isEqualToString:v8] && (!a2 ? (v9 = 0) : (v9 = *(a2 + 8)), !v19 ? (v10 = 0) : (v10 = *(v19 + 2)), v9 == v10))
  {
    if (a2)
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (v19)
    {
      v13 = v19[3];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if ([v12 isEqual:v14])
    {
      if (a2)
      {
        v15 = *(a2 + 32);
      }

      else
      {
        v15 = 0;
      }

      if (v19)
      {
        v16 = v19[4];
      }

      else
      {
        v16 = 0;
      }

      v17 = v15;
      v18 = [v17 isEqualToString:v16];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  *a3 = v18;
}