uint64_t sub_100000908(unsigned int *a1, uint64_t a2, char **a3, void *a4, _DWORD *a5)
{
  v9 = sub_1000271DC(a1, 16);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v38 = 0uLL;
  v11 = 0;
  if (a2)
  {
    v12 = 0;
    do
    {
      v11 += a4[v12++];
    }

    while (a2 != v12);
    v13 = *a3;
    v14 = &(*a3)[*a4];
    if (v11 < 0x10)
    {
      v15 = 0;
      v16 = v11;
    }

    else
    {
      v15 = 0;
      v16 = v11;
      do
      {
        for (i = 0; i != 16; ++i)
        {
          v18 = *v13++;
          v38.i8[i] ^= v18;
          if (v13 >= v14)
          {
            v13 = a3[++v15];
            v14 = &v13[a4[v15]];
          }
        }

        v16 -= 16;
        if (!v16)
        {
          break;
        }

        sub_100027234(v10, &v38, &v38);
      }

      while (v16 > 0xF);
      v11 = 1;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v13 = *a3;
    v14 = &(*a3)[*a4];
  }

  v37 = 0uLL;
  sub_100027234(v10, &v37, &v37);
  v20 = 0;
  v21 = v37.i8[0];
  v22 = v37.i8[0];
  do
  {
    v23 = &v37.i8[v20++];
    v24 = v23[1];
    HIDWORD(v25) = v22;
    LODWORD(v25) = v24 << 24;
    *v23 = v25 >> 31;
    v22 = v24;
  }

  while (v20 != 15);
  if (v21 >= 0)
  {
    v26 = 2 * v37.i8[15];
  }

  else
  {
    v26 = (2 * v37.i8[15]) ^ 0x87;
  }

  v37.i8[15] = v26;
  if (v16 || !v11)
  {
    if (v16)
    {
      v27 = &v38;
      v28 = v16;
      do
      {
        v29 = *v13++;
        v27->i8[0] ^= v29;
        if (v13 >= v14)
        {
          v13 = a3[++v15];
          v14 = &v13[a4[v15]];
        }

        v27 = (v27 + 1);
        --v28;
      }

      while (v28);
    }

    v38.i8[v16] ^= 0x80u;
    v30 = v37.i8[0];
    v31 = &v37.u8[1];
    v32 = 15;
    v33 = v37.i8[0];
    do
    {
      v34 = *v31;
      HIDWORD(v35) = v33;
      LODWORD(v35) = v34 << 24;
      *(v31++ - 1) = v35 >> 31;
      v33 = v34;
      --v32;
    }

    while (v32);
    if (v30 >= 0)
    {
      v36 = 2 * v37.i8[15];
    }

    else
    {
      v36 = (2 * v37.i8[15]) ^ 0x87;
    }

    v37.i8[15] = v36;
  }

  v37 = veorq_s8(v37, v38);
  sub_100027234(v10, &v37, a5);
  sub_100027238(v10);
  return 0;
}

uint64_t sub_100000B98(unsigned int *a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  return sub_100000908(a1, 1, &v6, &v5, a4);
}

double sub_100000BCC(uint64_t a1)
{
  *(a1 + 36) = xmmword_10002BA10;
  *(a1 + 480) = 3;
  *(a1 + 404) = xmmword_10002BA20;
  *(a1 + 512) = 600;
  *(a1 + 520) = 86400;
  *(a1 + 488) = 2;
  *&result = 0x800000008;
  *(a1 + 528) = 0;
  *(a1 + 64) = 0x2000007D7;
  *(a1 + 680) = 1812;
  *(a1 + 700) = 31536000;
  *(a1 + 76) = 2;
  *(a1 + 742) = -1;
  *(a1 + 496) = 0xC9000003E8;
  *(a1 + 504) = 0x800000008;
  return result;
}

void *sub_100000C50()
{
  v0 = sub_100016754(0x160uLL);
  v1 = sub_100016754(0x2F8uLL);
  v8 = v1;
  if (!v0 || !v1)
  {
    sub_100016A20(4, "Failed to allocate memory for configuration data.", v2, v3, v4, v5, v6, v7, v12);
    goto LABEL_8;
  }

  v9 = sub_100016754(0x50uLL);
  v8[17] = v9;
  if (!v9)
  {
LABEL_8:
    free(v0);
    free(v8);
    return 0;
  }

  sub_100000BCC(v8);
  v0[2] = 1;
  *v0 = v8;
  *(v0 + 12) = 100;
  *(v0 + 28) = -1;
  *(v0 + 36) = 1;
  for (i = 96; i != 256; i += 20)
  {
    *(v0 + i) = -1;
  }

  *(v0 + 68) = 0;
  *(v0 + 16) = xmmword_10002BA54;
  *(v0 + 73) = 0;
  *(v0 + 276) = xmmword_10002BA40;
  *(v0 + 78) = 1;
  *(v0 + 37) = xmmword_10002BA68;
  *(v0 + 83) = 1;
  *(v0 + 316) = xmmword_10002BA7C;
  *(v0 + 170) = 12;
  return v0;
}

uint64_t sub_100000D70(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t sub_100000DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 240))
  {
    if (*(a1 + 232))
    {
      sub_100016A20(1, "Using pre-configured WPA PSK instead of passphrase", a3, a4, a5, a6, a7, a8, v52);
    }

    else
    {
      sub_100016A20(1, "Deriving WPA PSK based on passphrase", a3, a4, a5, a6, a7, a8, v52);
      v9 = sub_100016754(0x38uLL);
      *(a1 + 232) = v9;
      if (!v9)
      {
        sub_100016A20(4, "Unable to alloc space for PSK", v10, v11, v12, v13, v14, v15, v52);
        return 0xFFFFFFFFLL;
      }

      sub_100016B70(1, "SSID", (a1 + 152), *(a1 + 192));
      v16 = strlen(*(a1 + 240));
      sub_100016D24(1, "PSK (ASCII passphrase)", *(a1 + 240), v16);
      sub_10000EA7C(*(a1 + 240), a1 + 152, *(a1 + 192), 4096, (*(a1 + 232) + 12), 0x20uLL);
      sub_100016B64(1, "PSK (from passphrase)", (*(a1 + 232) + 12), 32);
    }

    *(*(a1 + 232) + 8) = 1;
  }

  v17 = *(a1 + 248);
  if (!v17)
  {
    return 0;
  }

  v18 = fopen(*(a1 + 248), "r");
  if (!v18)
  {
    sub_100016A20(4, "WPA PSK file '%s' not found.", v19, v20, v21, v22, v23, v24, v17);
    return 0xFFFFFFFFLL;
  }

  v25 = v18;
  if (!fgets(&v55, 128, v18))
  {
LABEL_31:
    fclose(v25);
    return 0;
  }

  LODWORD(v26) = 0;
  while (1)
  {
    v26 = (v26 + 1);
    if (v55 != 35)
    {
      break;
    }

LABEL_30:
    if (!fgets(&v55, 128, v25))
    {
      goto LABEL_31;
    }
  }

  v27 = v56;
  v28 = v55;
  if (v55)
  {
    while (v28 != 10)
    {
      v29 = *v27++;
      v28 = v29;
      if (!v29)
      {
        goto LABEL_15;
      }
    }

    *(v27 - 1) = 0;
    if (!v55)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_15:
    if (!v55)
    {
      goto LABEL_30;
    }
  }

  if (sub_100015CD8(&v55, &v53))
  {
    sub_100016A20(4, "Invalid MAC address '%s' on line %d in '%s'", v30, v31, v32, v33, v34, v35, &v55);
    goto LABEL_40;
  }

  v36 = sub_100016754(0x38uLL);
  if (!v36)
  {
    sub_100016A20(4, "WPA PSK allocation failed", v37, v38, v39, v40, v41, v42, v52);
    goto LABEL_40;
  }

  v43 = v36;
  if (BYTE1(v53) | v53 | BYTE2(v53) | HIBYTE(v53) | v54 | HIBYTE(v54))
  {
    *(v36 + 11) = v53;
    *(v36 + 24) = v54;
  }

  else
  {
    *(v36 + 2) = 1;
  }

  if (!v56[16])
  {
    sub_100016A20(4, "No PSK on line %d in '%s'", v37, v38, v39, v40, v41, v42, v26);
    goto LABEL_39;
  }

  v44 = strlen(v57);
  if (v44 == 64)
  {
    if (sub_100015E64(v57, v43 + 12, 32))
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if ((v44 - 8) <= 0x37)
  {
    sub_10000EA7C(v57, a1 + 152, *(a1 + 192), 4096, v43 + 12, 0x20uLL);
LABEL_29:
    *v43 = *(a1 + 232);
    *(a1 + 232) = v43;
    goto LABEL_30;
  }

LABEL_38:
  sub_100016A20(4, "Invalid PSK '%s' on line %d in '%s'", v45, v46, v47, v48, v49, v50, v57);
LABEL_39:
  free(v43);
LABEL_40:
  fclose(v25);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000110C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 10) != *(a2 + 10))
  {
    return 1;
  }

  v2 = (a1 + 40);
  v3 = a2 + 40;
  v4 = 4;
  while (*v2 == *v3 && !memcmp(*(v2 - 4), *(v3 - 4), *v2))
  {
    ++v3;
    ++v2;
    if (!--v4)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1000011A4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      do
      {
        if (*a1)
        {
          v3 = *a1 + 760 * v2;
          v4 = *(v3 + 232);
          if (v4)
          {
            do
            {
              v5 = *v4;
              free(v4);
              v4 = v5;
            }

            while (v5);
          }

          free(*(v3 + 240));
          free(*(v3 + 248));
          v6 = *(v3 + 88);
          if (v6)
          {
            do
            {
              v7 = *v6;
              free(v6[1]);
              free(v6[11]);
              free(v6);
              v6 = v7;
            }

            while (v7);
          }

          free(*(v3 + 56));
          free(*(v3 + 368));
          free(*(v3 + 448));
          free(*(v3 + 464));
          free(*(v3 + 128));
          sub_1000015A8(**(v3 + 136), *(*(v3 + 136) + 8));
          sub_1000015A8(*(*(v3 + 136) + 24), *(*(v3 + 136) + 32));
          free(*(v3 + 536));
          free(*(v3 + 552));
          free(*(v3 + 568));
          free(*(v3 + 576));
          free(*(v3 + 584));
          free(*(v3 + 592));
          free(*(v3 + 608));
          free(*(v3 + 616));
          free(*(v3 + 624));
          free(*(v3 + 640));
          free(*(v3 + 96));
          free(*(v3 + 672));
          free(*(v3 + 688));
          free(*(v3 + 136));
          v8 = *(v3 + 720);
          if (v8)
          {
            do
            {
              v9 = *v8;
              free(v8);
              v8 = v9;
            }

            while (v9);
          }

          *(v3 + 720) = 0;
          if (*(v3 + 352))
          {
            v10 = 0;
            do
            {
              v11 = *(*(v3 + 352) + 8 * v10);
              if (v11)
              {
                v12 = 0;
                v13 = v11 + 8;
                do
                {
                  free(*(v13 + v12));
                  *(v13 + v12) = 0;
                  v12 += 8;
                }

                while (v12 != 32);
                free(*(*(v3 + 352) + 8 * v10));
              }

              ++v10;
            }

            while (v10 <= *(v3 + 360));
            free(*(v3 + 352));
            *(v3 + 352) = 0;
          }
        }

        ++v2;
      }

      while (v2 < *(a1 + 16));
    }

    free(*a1);
    free(*(a1 + 56));
    free(*(a1 + 64));

    free(a1);
  }
}

uint64_t sub_1000013C0(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4)
{
  v4 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = bswap64(*a3 | (*(a3 + 2) << 32));
  while (1)
  {
    v7 = (v4 + v5) >> 1;
    v8 = (a1 + 12 * v7);
    v9 = bswap64(*v8 | (*(v8 + 2) << 32));
    v10 = v9 >= v6;
    v11 = v9 > v6;
    v12 = !v10;
    v13 = v11 - v12;
    if (!v13)
    {
      break;
    }

    if (v13 >= 0)
    {
      v4 = v7 - 1;
    }

    else
    {
      v5 = v7 + 1;
    }

    if (v5 > v4)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = v8[2];
  }

  return 1;
}

uint64_t sub_100001444(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *result;
    if ((*result & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v3 = (result + 4);
      while (v2 != a2)
      {
        v4 = *v3++;
        v2 = v4;
        if (v4 < 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t *sub_100001474(uint64_t *result, int a2)
{
  if (result)
  {
    while (1)
    {
      v2 = *(result + 2);
      if (v2 == a2 || v2 == -1)
      {
        break;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return (result + 12);
  }

  return result;
}

uint64_t sub_10000149C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    return 0;
  }

  v4 = a3 == 0;
  while (1)
  {
    if (v4)
    {
      if (*(v3 + 2))
      {
        break;
      }

      if (*(v3 + 11) == *a2 && *(v3 + 24) == *(a2 + 4))
      {
        break;
      }
    }

    v6 = *v3;
    if ((v3 + 12) == a3)
    {
      v4 = 1;
    }

    v3 = *v3;
    if (!v6)
    {
      return 0;
    }
  }

  return v3 + 12;
}

uint64_t *sub_1000014F8(uint64_t a1, void *__s2, size_t __n, int a4)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v8 = a4 != 0;
    do
    {
      if (!a4 && !v4[1])
      {
        break;
      }

      if (*(v4 + 26) == v8)
      {
        v9 = v4[2];
        if ((v4[14] & 1) != 0 && v9 <= __n && !memcmp(v4[1], __s2, v4[2]))
        {
          break;
        }

        if (v9 == __n && !memcmp(v4[1], __s2, __n))
        {
          break;
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  return v4;
}

void sub_1000015A8(void **a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = a1 + 3;
    do
    {
      v5 = *v4;
      v4 += 12;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

void *sub_100001604(void *result)
{
  *result = sub_100001798;
  result[1] = sub_1000017C0;
  result[2] = sub_1000017E0;
  result[3] = sub_100001808;
  result[4] = sub_100001828;
  result[5] = sub_100001848;
  result[6] = sub_1000018C0;
  result[7] = sub_1000018E8;
  result[8] = sub_100001908;
  result[9] = sub_100001928;
  result[10] = sub_1000019AC;
  result[11] = sub_100001A28;
  result[12] = sub_100001A48;
  result[13] = sub_100001A68;
  result[14] = sub_100001B70;
  result[15] = sub_100001B90;
  result[16] = sub_100001C14;
  result[17] = sub_100001C3C;
  result[18] = sub_100001C5C;
  result[19] = sub_100001C88;
  result[20] = sub_100001CA8;
  result[21] = sub_100001CD8;
  result[22] = sub_100001D08;
  result[23] = sub_100001D70;
  result[24] = sub_100001D90;
  return result;
}

uint64_t sub_100001798(void *a1)
{
  v1 = a1[294];
  if (v1 && (v2 = *(v1 + 624)) != 0)
  {
    return v2(a1[295], a1[341], a1[342]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000017C0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 208)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000017E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 2352);
  if (v5 && (v6 = *(v5 + 384)) != 0)
  {
    return v6(*(a1 + 2360), a2, a3, a4, a5, a1 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001808(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 392)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001828(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 400)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001848(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 24);
  v4 = (v3 >> 5) & 5 | (v3 >> 8) & 2;
  v5 = (v3 >> 7) & 8;
  v6 = *(a1 + 2352);
  if (a3)
  {
    if (v6)
    {
      v7 = *(v6 + 504);
      if (v7)
      {
        return v7(*(a1 + 2360), a2 + 16, v4 | v5, 1, 0xFFFFFFFFLL);
      }
    }
  }

  else if (v6)
  {
    v9 = *(v6 + 504);
    if (v9)
    {
      return v9(*(a1 + 2360), a2 + 16, v4 | v5, 0, 4294967294);
    }
  }

  return 0;
}

uint64_t sub_1000018C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2352);
  if (v2 && (v3 = *(v2 + 32)) != 0)
  {
    return v3(a1, *(a2 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000018E8(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 376)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001908(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 472)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001928(void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = a1[2];
  if ((*(v3 + 72) || *(v3 + 484)) && *(a2 + 70) != 2)
  {
    v4 = 14;
  }

  else if ((v2 & 0x20) != 0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 14;
  }

  v5 = a1[294];
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 504);
  if (!v6)
  {
    return 0;
  }

  v7 = (v2 >> 5) & 5 | (v2 >> 8) & 2 | (v2 >> 7) & 8;
  return v6(a1[295], a2 + 16, v7, v4 & v7, v7 | ~v4);
}

uint64_t sub_1000019AC(void *a1, uint64_t a2, int a3)
{
  memset(&v9[1], 0, 32);
  v9[0] = a2;
  LODWORD(v9[1]) = a3;
  if (a3)
  {
    v3 = a1[2];
    v4 = v3[9].i32[0];
    HIDWORD(v9[1]) = v3[60].i32[1];
    LODWORD(v9[2]) = v4;
    *(&v9[2] + 4) = vrev64_s32(v3[63]);
    v5 = v3[61].i32[0];
    LODWORD(v3) = v3[66].i32[1];
    HIDWORD(v9[3]) = v5;
    LODWORD(v9[4]) = v3;
  }

  v6 = a1[294];
  if (v6 && (v7 = *(v6 + 336)) != 0)
  {
    return v7(a1[295], v9);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001A28(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 600)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001A48(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 608)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001A68(void *a1)
{
  v2 = a1[294];
  if (v2 && (v3 = *(v2 + 520)) != 0 && v3(a1[295]))
  {
    sub_100016A20(4, "Failed to set CTS protect in kernel driver", v4, v5, v6, v7, v8, v9, v30);
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*a1 + 2152);
  if (v11)
  {
    if (*v11 == 1)
    {
      v12 = a1[294];
      if (v12)
      {
        v13 = *(v12 + 536);
        if (v13)
        {
          if (v13(a1[295], *(*a1 + 2188) < 1))
          {
            sub_100016A20(4, "Failed to set Short Slot Time option in kernel driver", v14, v15, v16, v17, v18, v19, v30);
            v10 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v20 = !*(*a1 + 2192) && *(a1[1] + 44) == 1;
  v21 = a1[294];
  if (v21)
  {
    v22 = *(v21 + 528);
    if (v22)
    {
      if (v22(a1[295], v20))
      {
        sub_100016A20(4, "Could not set preamble for kernel driver", v23, v24, v25, v26, v27, v28, v30);
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v10;
}

uint64_t sub_100001B70(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 312)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2352);
  if (v2 && (v3 = *(v2 + 560)) != 0)
  {
    return v3(*(a1 + 2360), 1, a2, 0, 0, 0, v6, v5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2352);
  if (v2 && (v3 = *(v2 + 568)) != 0)
  {
    return v3(*(a1 + 2360), 1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001C3C(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 640)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2352);
  if (v3 && (v4 = *(v3 + 576)) != 0)
  {
    return v4(*(a2 + 2360), a3, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C88(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 464)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2352);
  if (v3 && (v4 = *(v3 + 408)) != 0)
  {
    return v4(*(a1 + 2360), a1 + 28, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2352);
  if (v3 && (v4 = *(v3 + 416)) != 0)
  {
    return v4(*(a1 + 2360), a1 + 28, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D08(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, uint64_t a8)
{
  v8 = *(a1 + 2352);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 456);
  if (!v9)
  {
    return 0;
  }

  v14 = 0;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  return v9(*(a1 + 2360), &v11);
}

uint64_t sub_100001D70(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 424)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D90(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 448)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001DB0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 344)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001DD0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 368)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001DF0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 432)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E10(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 440)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E30(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 560)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001E50(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 568)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100001E70(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 336)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2352);
  if (v2 && (v3 = *(v2 + 352)) != 0)
  {
    return v3(a1, *(a2 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001EB0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 360)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001ED0(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 2352);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 480);
  if (!v7)
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  return v7(*(a1 + 2360), v9);
}

uint64_t sub_100001F20(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 488)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001F40(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 496)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001F60(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 504)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001F80(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 512)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001FA0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 256)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001FC0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 520)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001FE0(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 528)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002000(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 536)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002020(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 544)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002040(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 552)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100002060(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 176)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002080(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 584)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000020A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2352);
  if (v4 && a4 && a2 && (v5 = *(v4 + 616)) != 0)
  {
    return v5(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002108(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 296)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100002128(uint64_t a1)
{
  v1 = *(a1 + 2352);
  if (v1 && (v2 = *(v1 + 248)) != 0)
  {
    return v2(*(a1 + 2360));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002158(int a1, uint64_t a2, char *__str, size_t __size)
{
  if (a2)
  {
    v8 = snprintf(__str, __size, "%02x:%02x:%02x:%02x:%02x:%02x\n", *(a2 + 16), *(a2 + 17), *(a2 + 18), *(a2 + 19), *(a2 + 20), *(a2 + 21));
    if ((v8 & 0x80000000) != 0)
    {
      return 0;
    }

    v9 = v8;
    if (__size <= v8)
    {
      return 0;
    }

    else
    {
      v10 = sub_100008F30(*(a2 + 168), &__str[v8], __size - v8);
      v11 = (v10 & ~(v10 >> 31)) + v9;
      v12 = sub_100020CCC(a1, a2, &__str[v11], __size - v11);
      return v11 + (v12 & ~(v12 >> 31));
    }
  }

  else
  {
    LODWORD(result) = snprintf(__str, __size, "FAIL\n");
    if (result >= __size || result <= -1)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_100002250(uint64_t a1, char *a2, char *a3, size_t a4)
{
  if (sub_100015CD8(a2, v10))
  {
    LODWORD(result) = snprintf(a3, a4, "FAIL\n");
    if (result >= a4 || result <= -1)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    v9 = sub_100004A40(a1, v10);
    return sub_100002158(a1, v9, a3, a4);
  }
}

uint64_t sub_1000022E4(uint64_t a1, char *a2, char *a3, size_t a4)
{
  if (!sub_100015CD8(a2, v10))
  {
    v9 = sub_100004A40(a1, v10);
    if (v9)
    {
      return sub_100002158(a1, *v9, a3, a4);
    }
  }

  LODWORD(result) = snprintf(a3, a4, "FAIL\n");
  if (result >= a4 || result <= -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000237C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v25 = "hostapd_notif_assoc: Skip event with no address";
LABEL_5:
    v26 = 1;
LABEL_6:
    sub_100016A20(v26, v25, a3, a4, a5, a6, a7, a8, v49);
    return 0xFFFFFFFFLL;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  sub_100016EE4(a1, a2, 1, 2, "associated", a6, a7, a8, v49);
  sub_10000C428(a3, a4, v51, 0, v12, v13, v14, v15);
  if (v54)
  {
    v22 = (v54 - 2);
    v23 = BYTE6(v59) + 2;
    v24 = "STA included WPS IE in (Re)AssocReq";
  }

  else if (*(&v52 + 1))
  {
    v22 = (*(&v52 + 1) - 2);
    v23 = BYTE3(v59) + 2;
    v24 = "STA included RSN IE in (Re)AssocReq";
  }

  else if (v52)
  {
    v22 = (v52 - 2);
    v23 = BYTE2(v59) + 2;
    v24 = "STA included WPA IE in (Re)AssocReq";
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = "STA did not include WPS/RSN/WPA IE in (Re)AssocReq";
  }

  sub_100016A20(1, v24, v16, v17, v18, v19, v20, v21, v50);
  v28 = sub_100004A40(a1, a2);
  if (!v28)
  {
    v28 = sub_1000054E8(a1, a2);
    if (!v28)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v29 = v28;
  v30 = *(v28 + 24) & 0xFFFFCFFF;
  *(v28 + 24) = v30;
  v31 = *(a1 + 16);
  if (!*(v31 + 484))
  {
    if (!*(v31 + 748))
    {
      goto LABEL_42;
    }

    if (!v22 || v23 < 5 || *v22 != 221 || v22[1] < 4u || *(v22 + 2) != 82989056)
    {
      v30 |= 0x2000u;
      goto LABEL_42;
    }

LABEL_41:
    v30 |= 0x1000u;
    goto LABEL_42;
  }

  v32 = *(v31 + 748);
  if (!v22 || !v23)
  {
    if (v32)
    {
      sub_100016A20(1, "STA did not include WPA/RSN IE in (Re)Association Request - possible WPS use", a3, a4, a5, a6, a7, a8, v49);
      v30 = *(v29 + 24) | 0x2000;
      goto LABEL_42;
    }

    v25 = "No WPA/RSN IE from STA";
    goto LABEL_5;
  }

  if (v32 && *v22 == 221 && v22[1] >= 4u && *(v22 + 2) == 82989056)
  {
    goto LABEL_41;
  }

  v33 = *(v28 + 168);
  if (!v33)
  {
    v33 = sub_1000072E4(*(a1 + 2624), (v28 + 16));
    *(v29 + 168) = v33;
    if (!v33)
    {
      v25 = "Failed to initialize WPA state machine";
      v26 = 4;
      goto LABEL_6;
    }
  }

  v34 = sub_10000B890(*(a1 + 2624), v33, v22, v23, 0, 0, a7, a8);
  if (v34)
  {
    v41 = v34;
    sub_100016A20(1, "WPA/RSN information element rejected? (res %u)", v35, v36, v37, v38, v39, v40, v34);
    sub_100016A94(1, "IE", v22, v23);
    if ((v41 - 2) > 6)
    {
      v42 = 13;
    }

    else
    {
      v42 = dword_10002BA98[v41 - 2];
    }

    (*(a1 + 2536))(a1, v29 + 16, v42);
    sub_100004A90(a1, v29, v43, v44, v45, v46, v47, v48);
    return 0xFFFFFFFFLL;
  }

  v30 = *(v29 + 24);
LABEL_42:
  *(v29 + 24) = v30 | 3;
  sub_1000089A4(*(v29 + 168), 1);
  sub_10000394C(a1, v29, (v30 >> 1) & 1);
  sub_100020C7C(*(v29 + 88), 1);
  return 0;
}

void sub_100002684(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016EE4(a1, a2, 1, 2, "disassociated", a6, a7, a8, v24);
  v10 = sub_100004A40(a1, a2);
  if (v10)
  {
    v17 = v10;
    *(v10 + 24) &= 0xFFFFFFFC;
    v31 = *(v10 + 20);
    v33 = *(v10 + 21);
    v27 = *(v10 + 18);
    v29 = *(v10 + 19);
    v25 = *(v10 + 17);
    sub_100016D3C(*(a1 + 2576), 2, "AP-STA-DISCONNECTED %02x:%02x:%02x:%02x:%02x:%02x", v12, v13, v14, v15, v16, *(v10 + 16));
    sub_1000089A4(*(v17 + 168), 2);
    *(v17 + 124) = 1;
    sub_100020C7C(*(v17 + 88), 0);

    sub_100004A90(a1, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v32 = a2[4];
    v34 = a2[5];
    v28 = a2[2];
    v30 = a2[3];
    v26 = a2[1];
    sub_100016A20(1, "Disassociation notification for unknown STA %02x:%02x:%02x:%02x:%02x:%02x", v11, v12, v13, v14, v15, v16, *a2);
  }
}

void sub_1000027A4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a2 <= 10)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v21 = a3[1];

        sub_100005B70(a1, v21, 1);
        return;
      }

      if (a2 == 3)
      {
        v15 = *a1;
        v16 = *(*v9 + 2224);
        if (v16)
        {

          v16();
        }

        return;
      }
    }

    else
    {
      if (!a2)
      {
        v18 = a3[7];
        v19 = a3[1];
        v20 = *a3;

        sub_10000237C(a1, v18, v20, v19, a5, a6, a7, a8);
        return;
      }

      if (a2 == 1)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    sub_100016A20(1, "Unknown event %d", a3, a4, a5, a6, a7, a8, a2);
    return;
  }

  if (a2 <= 23)
  {
    if (a2 != 11)
    {
      if (a2 == 16)
      {
        return;
      }

      goto LABEL_23;
    }

LABEL_24:
    if (a3)
    {
      v17 = *a3;

      sub_100002684(a1, v17, a3, a4, a5, a6, a7, a8);
    }

    return;
  }

  if (a2 == 24)
  {
    v22 = a1[343];
    if (v22)
    {
      v23 = 0;
      v24 = *a3;
      v25 = a3[1];
      v26 = -1;
      v27 = a3[2];
      do
      {
        if (++v26 >= v9[344])
        {
          break;
        }

        if ((*(v22 + v23))(*(v22 + v23 + 8), v24, v25, v27) > 0)
        {
          break;
        }

        v23 += 16;
        v22 = v9[343];
      }

      while (v22);
    }

    return;
  }

  if (a2 == 25)
  {
    v28 = *a3;
    if (!sub_100004A40(a1, *a3))
    {
      v48 = v28[4];
      v50 = v28[5];
      v44 = v28[2];
      v46 = v28[3];
      v42 = v28[1];
      sub_100016A20(1, "Data frame from unknown STA %02x:%02x:%02x:%02x:%02x:%02x - adding a new STA", v29, v30, v31, v32, v33, v34, *v28);
      v35 = sub_1000054E8(v9, v28);
      if (v35)
      {

        sub_10000394C(v9, v35, 0);
      }

      else
      {
        v49 = v28[4];
        v51 = v28[5];
        v45 = v28[2];
        v47 = v28[3];
        v43 = v28[1];
        sub_100016A20(1, "Failed to add STA entry for %02x:%02x:%02x:%02x:%02x:%02x", v36, v37, v38, v39, v40, v41, *v28);
      }
    }

    return;
  }

  if (a2 != 26)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *a1;
  if (*(*a1 + 48))
  {
    v14 = 0;
    while (!sub_100004A40(*(*(v13 + 56) + 8 * v14), v10))
    {
      if (++v14 >= *(v13 + 48))
      {
        goto LABEL_47;
      }
    }

    v9 = *(*(v13 + 56) + 8 * v14);
  }

LABEL_47:

  sub_10001FB50(v9, v10, v11, v12, a5, a6, a7, a8, a9);
}

uint64_t sub_100002ABC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = **(a1 + 56);
  v4 = v1(*(a1 + 32));
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v4;
  if (*(a1 + 48))
  {
    v13 = 0;
    do
    {
      sub_100002C94(*(*(a1 + 56) + 8 * v13++));
    }

    while (v13 < *(a1 + 48));
  }

  v14 = *(v3 + 8);
  v15 = *v12;
  *(v3 + 8) = v12;
  *(v3 + 16) = v15;
  *(a1 + 40) = v12;
  if (sub_100000DD0(v15, v5, v6, v7, v8, v9, v10, v11))
  {
    sub_100016A20(4, "Failed to re-configure WPA PSK after reloading configuration", v17, v18, v19, v20, v21, v22, v47);
  }

  v23 = *(v3 + 2624);
  if (*(*(v3 + 16) + 484))
  {
    if (v23)
    {
      v48 = 0;
      sub_10000B1A8(v3, v16, v17, v18, v19, v20, v21, v22);
      sub_100009130(*(v3 + 2624), &v48);
      if (sub_100001DD0(v3))
      {
        sub_100016A20(4, "Failed to configure WPA IE for the kernel driver.", v24, v25, v26, v27, v28, v29, v47);
      }
    }

    else
    {
      sub_10000AAA4(v3);
    }
  }

  else if (v23)
  {
    sub_10000705C(v23, v16, v17, v18, v19, v20, v21, v22);
    *(v3 + 2624) = 0;
    sub_100001DB0(v3);
    sub_100002D48(*(v3 + 16), v3);
    sub_100001DD0(v3);
  }

  v31 = *(v3 + 16);
  if (*(v31 + 200))
  {
    v32 = *(v31 + 192);
    if (sub_100001E10(v3))
    {
      sub_100016A20(4, "%s: Could not set SSID for kernel driver", v33, v34, v35, v36, v37, v38, "hostapd_reload_config");
    }
  }

  v39 = *(v3 + 16);
  if (!*(v39 + 72))
  {
    v40 = *(v39 + 484) != 0;
  }

  (*(v3 + 2448))(v3);
  sub_1000011A4(v14);
  sub_100016A20(1, "Reconfigured interface %s", v41, v42, v43, v44, v45, v46, *(v3 + 16));
  return 0;
}

uint64_t sub_100002C94(uint64_t a1)
{
  result = sub_1000020C8(a1);
  if (!result && *(a1 + 2360))
  {
    sub_100016A20(1, "Flushing old station entries", v3, v4, v5, v6, v7, v8, v16);
    if (sub_100001EB0(a1))
    {
      sub_100016A20(3, "Could not connect to kernel driver.", v9, v10, v11, v12, v13, v14, v17);
    }

    result = sub_100016A20(1, "Deauthenticate all stations", v9, v10, v11, v12, v13, v14, v17);
    v15 = *(a1 + 2352);
    if (v15)
    {
      result = strcmp(*v15, "hostap");
      if (result)
      {
        v19 = -1;
        v18 = -1;
        return (*(a1 + 2528))(a1, &v18, 2);
      }
    }
  }

  return result;
}

uint64_t sub_100002D48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(v4 + 336))
  {
    v5 = v4 + 8 * *(v4 + 256);
    v33 = *(v5 + 264);
    v36 = *(v5 + 296);
    if ((*(a2 + 2416))(v4, a2, 1, 0))
    {
      sub_100016A20(3, "Could not set WEP encryption.", v6, v7, v8, v9, v10, v11, v33);
    }
  }

  if (*(v4 + 352))
  {
    v12 = 0;
    do
    {
      v13 = *(*(v4 + 352) + 8 * v12);
      if (v13)
      {
        v14 = sub_100001474(*(*(a2 + 16) + 720), v12);
        if (v14)
        {
          v15 = &v13[8 * *v13];
          v34 = *(v15 + 1);
          v37 = *(v15 + 5);
          if ((*(a2 + 2416))(v14, a2, 1, 0))
          {
            sub_100016A20(3, "Could not set dynamic VLAN WEP encryption.", v16, v17, v18, v19, v20, v21, v34);
          }
        }
      }

      ++v12;
    }

    while (v12 <= *(v4 + 360));
  }

  if (!*(*(a2 + 16) + 336))
  {
    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 16);
      v24 = v23 + 8 * v22;
      if (*(v24 + 264))
      {
        v35 = *(v24 + 264);
        v38 = *(v24 + 296);
        if ((*(a2 + 2416))(a1, a2, 1, 0, v22, v22 == *(v23 + 256), 0, 0))
        {
          sub_100016A20(3, "Could not set WEP encryption.", v25, v26, v27, v28, v29, v30, v35);
          return 0xFFFFFFFFLL;
        }

        v31 = *(a2 + 16);
        if (*(v31 + 8 * v22 + 264))
        {
          if (v22 == *(v31 + 256))
          {
            sub_100001DB0(a2);
          }
        }
      }

      if (++v22 == 4)
      {
        return 0;
      }
    }
  }

  sub_100001DB0(a2);
  return 0;
}

uint64_t sub_100002F20(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_100016A20(4, "Interface initialization failed", a3, a4, a5, a6, a7, a8, v88);
    sub_1000268F0();
    return 0xFFFFFFFFLL;
  }

  v9 = **(a1 + 56);
  sub_100016A20(1, "Completing interface initialization", a3, a4, a5, a6, a7, a8, v88);
  v16 = *(v9 + 8);
  if (*(v16 + 37))
  {
    *(a1 + 2176) = -1;
    sub_100016A20(1, "Mode: %s  Channel: %d  Frequency: %d MHz", v10, v11, v12, v13, v14, v15, 0);
    if (sub_100001ED0(v9, *(*(v9 + 8) + 40), *(a1 + 2176), *(*(v9 + 8) + 37), *(*(v9 + 8) + 344), *(*(v9 + 8) + 348)))
    {
      v23 = "Could not set channel for kernel driver";
      goto LABEL_75;
    }

    v16 = *(v9 + 8);
  }

  if ((*(v16 + 28) & 0x80000000) == 0)
  {
    if (sub_100001F20(v9))
    {
      v23 = "Could not set RTS threshold for kernel driver";
      goto LABEL_75;
    }

    v16 = *(v9 + 8);
  }

  if ((*(v16 + 32) & 0x80000000) == 0 && sub_100001F40(v9))
  {
    v23 = "Could not set fragmentation threshold for kernel driver";
    goto LABEL_75;
  }

  if (*(a1 + 48))
  {
    v24 = 0;
    v25 = v9 + 28;
    do
    {
      v9 = *(*(a1 + 56) + 8 * v24);
      if (v24)
      {
        v26 = *(v25 + 4);
        *(v9 + 28) = *v25;
        *(v9 + 32) = v26;
        v27 = (v9 + 16);
        v101 = *(v9 + 16);
        v102 = v25;
        if (sub_100000DA4((v101 + 736)))
        {
          v28 = *(v9 + 16);
          v29 = *(v28 + 740);
          *(v9 + 28) = *(v28 + 736);
          *(v9 + 32) = v29;
          if (!sub_100000D70((v9 + 28), (**(*v9 + 56) + 28)))
          {
            v89 = *v27;
            v23 = "BSS '%s' may not have BSSID set to the MAC address of the radio";
LABEL_75:
            sub_100016A20(4, v23, v17, v18, v19, v20, v21, v22, v89);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          while (1)
          {
            sub_100015F04(v9 + 28, 6);
            v66 = *(v9 + 8);
            if (!v66[2])
            {
              break;
            }

            v64 = 0;
            v65 = 736;
            while (sub_100000D70((*v66 + v65), (v9 + 28)))
            {
              ++v64;
              v65 += 760;
              if (v64 >= v66[2])
              {
                goto LABEL_19;
              }
            }
          }
        }

LABEL_19:
        *(v9 + 24) = 1;
        v30 = *(v9 + 16);
        v37 = v101;
        v25 = v102;
        if (sub_100001E30(**(*v9 + 56)))
        {
          v97 = *(v9 + 32);
          v99 = *(v9 + 33);
          v93 = *(v9 + 30);
          v95 = *(v9 + 31);
          v91 = *(v9 + 29);
          sub_100016A20(4, "Failed to add BSS (BSSID=%02x:%02x:%02x:%02x:%02x:%02x)", v31, v32, v33, v34, v35, v36, *(v9 + 28));
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v27 = (v9 + 16);
        v37 = *(v9 + 16);
      }

      sub_100002C94(v9);
      sub_100001DB0(v9);
      v38 = 0;
      v39 = *(v9 + 16);
      do
      {
        v89 = 0;
        if ((*(v9 + 2416))(v39, v9, 0, 0, v38, v38 == 0, 0, 0))
        {
          sub_100016A20(1, "Failed to clear default encryption keys (ifname=%s keyidx=%d)", v40, v41, v42, v43, v44, v45, v39);
        }

        v38 = (v38 + 1);
      }

      while (v38 != 4);
      v46 = *v27;
      if (*(*v27 + 492))
      {
        v47 = 4;
        do
        {
          v89 = 0;
          if ((*(v9 + 2416))(v39, v9, 0, 0, v47, 0, 0, 0))
          {
            sub_100016A20(1, "Failed to clear default mgmt encryption keys (ifname=%s keyidx=%d)", v48, v49, v50, v51, v52, v53, v39);
          }

          v47 = (v47 + 1);
        }

        while (v47 != 6);
        v46 = *v27;
      }

      if (sub_100002D48(v46, v9))
      {
        return 0xFFFFFFFFLL;
      }

      v54 = sub_100001DF0(v9);
      if ((v54 & 0x80000000) != 0)
      {
        v23 = "Could not read SSID from system";
        goto LABEL_75;
      }

      if (!*(v37 + 200))
      {
        *(v37 + 192) = v54;
        memcpy((v37 + 152), __src, v54);
        *(v37 + 152 + *(v37 + 192)) = 0;
      }

      if (!sub_1000020C8(v9))
      {
        v100 = *(v9 + 33);
        v96 = *(v9 + 31);
        v98 = *(v9 + 32);
        v92 = *(v9 + 29);
        v94 = *(v9 + 30);
        v90 = *(v9 + 28);
        sub_100016A20(2, "Using interface %s with hwaddr %02x:%02x:%02x:%02x:%02x:%02x and ssid '%s'", v56, v57, v58, v59, v60, v61, *(v9 + 16));
      }

      if (sub_100000DD0(v37, v55, v56, v57, v58, v59, v60, v61))
      {
        v23 = "WPA-PSK setup failed.";
        goto LABEL_75;
      }

      if (!dword_100040010)
      {
        *(*(v37 + 136) + 52) = 1;
      }

      if (sub_100003C4C())
      {
        v23 = "ACL initialization failed.";
        goto LABEL_75;
      }

      if ((sub_100003C4C() & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (sub_1000204C0(v9))
      {
        v23 = "IEEE 802.1X initialization failed.";
        goto LABEL_75;
      }

      v62 = *v27;
      if (*(*v27 + 484))
      {
        if (sub_10000AAA4(v9))
        {
          return 0xFFFFFFFFLL;
        }

        v62 = *v27;
      }

      if (*(v62 + 420))
      {
        *(v9 + 2600) = 0;
        v23 = "IEEE 802.11F (IAPP) initialization failed.";
        goto LABEL_75;
      }

      v63 = *(*v9 + 2232);
      if (v63 && v63(v9))
      {
        v23 = "Failed to setup control interface";
        goto LABEL_75;
      }

      sub_1000020C8(v9);
      if (!sub_100000DA4((*(v9 + 16) + 736)))
      {
        v25 = v9 + 28;
      }

      ++v24;
    }

    while (v24 < *(a1 + 48));
  }

  v67 = 0;
  v68 = 0;
  v69 = **(a1 + 56);
  do
  {
    v70 = (*(a1 + 40) + v68);
    if (v70[28])
    {
      v71 = v70[24];
      v72 = v70[25];
      v73 = v70[26];
      v74 = v70[27];
      if (sub_100002020(v69))
      {
        sub_100016A20(1, "Failed to set TX queue parameters for queue %d.", v75, v76, v77, v78, v79, v80, v67);
      }
    }

    v68 += 20;
    v67 = (v67 + 1);
  }

  while (v68 != 160);
  if ((sub_100002080(v9) & 0x80000000) != 0)
  {
    sub_100016A20(4, "%s: Failed to commit driver configuration", v81, v82, v83, v84, v85, v86, "hostapd_setup_interface_complete");
    return 0xFFFFFFFFLL;
  }

  sub_100016A20(1, "%s: Setup of interface done.", v81, v82, v83, v84, v85, v86, *(**(a1 + 56) + 16));
  return 0;
}

uint64_t sub_1000034F8(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = *v2;
  v5 = *v2;
  if (v3 >= 2)
  {
    v6 = *(v4 + 294);
    v7 = *(v4 + 295);
    for (i = 1; i != v3; ++i)
    {
      *(v2[i] + 294) = v6;
      *(v2[i] + 295) = v7;
    }

    v5 = *v2;
  }

  v63 = 0;
  v62 = 0;
  v9 = *(a1[5] + 16);
  if (sub_1000020C8(v5))
  {
    goto LABEL_6;
  }

  v26 = 32 - __clz(v9 - 1);
  if (v9 == 1)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    LODWORD(v27) = v26;
  }

  v28 = a1[5];
  if (!v28[2])
  {
    v34 = 0;
LABEL_37:
    v40 = 1;
    goto LABEL_38;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  do
  {
    if (sub_100000DA4((*v28 + 760 * v29 + 736)))
    {
      v32 = 0;
      v28 = a1[5];
      v33 = *v28 + 760 * v31 + 736;
      do
      {
        *(&v62 + v32) |= v5[v32 + 28] ^ *(v33 + v32);
        ++v32;
      }

      while (v32 != 6);
    }

    else
    {
      if (v31)
      {
        ++v30;
      }

      v28 = a1[5];
    }

    v34 = v28[2];
    v29 = ++v31;
  }

  while (v34 > v31);
  if (!v30)
  {
    goto LABEL_37;
  }

  v35 = 0;
  v36 = 40;
  while (1)
  {
    v37 = *(&v62 + v35);
    if (*(&v62 + v35))
    {
      break;
    }

    ++v35;
    v36 -= 8;
    if (v35 == 6)
    {
      v36 = 0;
      goto LABEL_31;
    }
  }

  do
  {
    v38 = v37 >> 1;
    ++v36;
    v39 = v37 > 1;
    v37 >>= 1;
  }

  while (v39);
  *(&v62 + v35) = v38;
LABEL_31:
  if (v27 <= v36)
  {
    v27 = v36;
  }

  else
  {
    v27 = v27;
  }

  if (v27 >= 0x29)
  {
    sub_100016A20(4, "Too many bits in the BSSID mask (%u)", v10, v11, v12, v13, v14, v15, v27);
    goto LABEL_55;
  }

  v63 = -1;
  v62 = -1;
  v44 = 5;
  if (v27 >= 8)
  {
    v44 = 5 - (v27 >> 3);
    bzero(&v62 - (v27 >> 3) + 6, v27 >> 3);
  }

  v45 = v27 & 7;
  if ((v27 & 7) != 0)
  {
    v46 = *(&v62 + v44);
    do
    {
      v46 *= 2;
      --v45;
    }

    while (v45);
    v40 = 0;
    *(&v62 + v44) = v46;
  }

  else
  {
    v40 = 0;
  }

LABEL_38:
  sub_100016A20(1, "BSS count %lu, BSSID mask %02x:%02x:%02x:%02x:%02x:%02x (%d bits)", v10, v11, v12, v13, v14, v15, v34);
  v41 = sub_100002040(v5);
  if (v41)
  {
    if (v41 < 0)
    {
      v56 = v5[32];
      v58 = v5[33];
      v52 = v5[30];
      v54 = v5[31];
      v48 = v5[28];
      v50 = v5[29];
      sub_100016A20(4, "Driver did not accept BSSID mask %02x:%02x:%02x:%02x:%02x:%02x for start address %02x:%02x:%02x:%02x:%02x:%02x.", v10, v11, v12, v13, v14, v15, v62);
      goto LABEL_55;
    }

    if ((v40 & 1) == 0)
    {
      v42 = 0;
      while ((v5[v42 + 28] & ~*(&v62 + v42)) == 0)
      {
        if (++v42 == 6)
        {
          goto LABEL_6;
        }
      }

      v57 = v5[32];
      v59 = v5[33];
      v53 = v5[30];
      v55 = v5[31];
      v49 = v5[28];
      v51 = v5[29];
      sub_100016A20(4, "Invalid BSSID mask %02x:%02x:%02x:%02x:%02x:%02x for start address %02x:%02x:%02x:%02x:%02x:%02x.", v10, v11, v12, v13, v14, v15, v62);
      v43 = "Start address must be the first address in the block (i.e., addr AND mask == addr).";
      goto LABEL_54;
    }
  }

LABEL_6:
  v16 = *(v4 + 1);
  v18 = *(v16 + 88);
  v17 = (v16 + 88);
  if (v18)
  {
    if (*(*(v4 + 1) + 89))
    {
      v60 = *v17;
      v61 = *(v17 + 2);
      if ((sub_100001FA0(v4) & 0x80000000) != 0)
      {
        v43 = "Failed to set country code";
LABEL_54:
        sub_100016A20(4, v43, v10, v11, v12, v13, v14, v15, v47);
        goto LABEL_55;
      }
    }
  }

  result = sub_100002F20(a1, 0, v10, v11, v12, v13, v14, v15);
  if (result)
  {
LABEL_55:
    sub_100016A20(4, "%s: Unable to setup interface.", v20, v21, v22, v23, v24, v25, *(*a1[7] + 16));
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_1000038E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100016754(0xAE8uLL);
  v7 = v6;
  if (v6)
  {
    sub_100001604(v6 + 296);
    v7[321] = sub_10000394C;
    v7[1] = a2;
    v7[2] = a3;
    *v7 = a1;
    v7[294] = *(a2 + 72);
  }

  return v7;
}

void sub_10000394C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 2660))
  {
    v5 = *(a1 + 2528);

    v5();
  }

  else
  {
    sub_100005E00(a1, a2 + 16);
    sub_100020210(a1, a2, v7, v8, v9, v10, v11, v12, v22);
    if (a3)
    {
      if (*(a2 + 70) != 2 && (*(a2 + 25) & 0x30) == 0)
      {
        v21 = *(a2 + 168);

        sub_1000089A4(v21, 4);
      }
    }

    else
    {
      v19 = *(a1 + 2624);
      v20 = *(a2 + 168);

      sub_10000732C(v19, v20, v13, v14, v15, v16, v17, v18);
    }
  }
}

void sub_100003A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 48))
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 56) + 8 * v9);
      sub_100005394(v10, a2, a3, a4, a5, a6, a7, a8);
      sub_100002C94(v10);
      v18 = *(*v10 + 2240);
      if (v18)
      {
        v18(v10);
      }

      *(v10 + 2600) = 0;
      sub_10000B228(v10, v11, v12, v13, v14, v15, v16, v17);
      sub_100003C54(v10);
      nullsub_2(v10);
      if (*(v10 + 24))
      {
        v19 = *(v10 + 16);
        if (sub_100001E50(v10))
        {
          sub_100016A20(3, "Failed to remove BSS interface %s", v20, v21, v22, v23, v24, v25, *(v10 + 16));
        }
      }

      free(*(v10 + 2744));
      *(v10 + 2744) = 0;
      ++v9;
    }

    while (v9 < *(a1 + 48));
  }
}

void sub_100003B18(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    do
    {
      free(*(*(a1 + 56) + 8 * v2++));
    }

    while (v2 < *(a1 + 48));
  }

  *(a1 + 2136) = 0;
  free(*(a1 + 2168));
  *(a1 + 2168) = 0;
  sub_1000011A4(*(a1 + 40));
  *(a1 + 40) = 0;
  free(*(a1 + 32));
  free(*(a1 + 56));

  free(a1);
}

uint64_t sub_100003BA0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (sub_1000013C0(*(*(a1 + 16) + 448), *(*(a1 + 16) + 456), a2, a7))
  {
    return 1;
  }

  if (sub_1000013C0(*(*(a1 + 16) + 464), *(*(a1 + 16) + 472), a2, a7))
  {
    return 0;
  }

  v11 = *(*(a1 + 16) + 444);
  if (v11 > 2)
  {
    return 0;
  }

  return dword_10002BAB4[v11];
}

void sub_100003C54(uint64_t a1)
{
  v1 = *(a1 + 2616);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      free(*(v1 + 16));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_100003C94(uint64_t *a1, uint64_t a2)
{
  if (*(a1[1] + 344))
  {
    *a2 = 6701;
    *(a2 + 26) = 0;
    *(a2 + 18) = 0;
    *(a2 + 10) = 0;
    *(a2 + 2) = 0;
    v2 = *a1;
    *(a2 + 2) = *(a1[1] + 340);
    v3 = *(v2 + 2152);
    *(a2 + 4) = *(v3 + 50);
    *(a2 + 5) = *(v3 + 34);
    a2 += 28;
  }

  return a2;
}

uint64_t sub_100003CE4(uint64_t *a1, uint64_t a2)
{
  if (*(a1[1] + 344))
  {
    *a2 = 5693;
    *(a2 + 16) = 0;
    *(a2 + 10) = 0;
    *(a2 + 2) = 0;
    v3 = *a1;
    v2 = a1[1];
    *(a2 + 2) = *(v2 + 37);
    *(a2 + 4) = *(v3 + 2216);
    v4 = *(v2 + 348);
    if (v4 == 1)
    {
      v5 = 5;
    }

    else
    {
      if (v4 != -1)
      {
LABEL_7:
        a2 += 24;
        return a2;
      }

      v5 = 7;
    }

    *(a2 + 3) |= v5;
    goto LABEL_7;
  }

  return a2;
}

uint64_t sub_100003D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (!*(v8 + 344) || *(v8 + 336))
  {
    return 0;
  }

  v22 = *(a1 + 2216);
  sub_100016A20(1, "%s current operation mode=0x%X", a3, a4, a5, a6, a7, a8, "hostapd_ht_operation_update");
  v17 = *(a1 + 2216);
  v18 = *(a1 + 2200);
  if ((v17 & 4) != 0)
  {
    if (!v18)
    {
      v17 &= ~4u;
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_8;
  }

  v17 |= 4u;
LABEL_10:
  *(a1 + 2216) = v17;
  v9 = 1;
LABEL_11:
  v19 = *(a1 + 2204);
  if ((v17 & 0x10) != 0)
  {
    if (v19)
    {
      goto LABEL_24;
    }

    if (!*(a1 + 2212))
    {
      v17 &= ~0x10u;
LABEL_19:
      *(a1 + 2216) = v17;
      v9 = (v9 + 1);
    }
  }

  else
  {
    if (v19)
    {
      v17 |= 0x10u;
      *(a1 + 2216) = v17;
      v9 = (v9 + 1);
LABEL_24:
      v20 = 3;
      goto LABEL_25;
    }

    if (*(a1 + 2212))
    {
      v17 |= 0x10u;
      goto LABEL_19;
    }
  }

  if ((v17 & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*(*(a1 + 40) + 340) & 2) != 0 && *(a1 + 2208))
  {
    v20 = 2;
  }

  else
  {
    v20 = *(a1 + 2212) != 0;
  }

LABEL_25:
  if (v20 != (v17 & 3))
  {
    *(a1 + 2216) = v17 & 0xFFFC | v20;
    v9 = (v9 + 1);
  }

  sub_100016A20(1, "%s new operation mode=0x%X changes=%d", v11, v12, v13, v14, v15, v16, "hostapd_ht_operation_update");
  return v9;
}

uint64_t sub_100003EA0(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (a2 && a3 > 0x19)
  {
    v5 = *(a1 + 208);
    if (v5 || (v5 = sub_100016754(0x1AuLL), (*(a1 + 208) = v5) != 0))
    {
      result = 0;
      *(a1 + 24) |= 0x800u;
      v7 = *a2;
      *(v5 + 10) = *(a2 + 10);
      *v5 = v7;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 24) &= ~0x800u;
    free(*(a1 + 208));
    result = 0;
    *(a1 + 208) = 0;
  }

  return result;
}

uint64_t sub_100003F34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 25) & 8) != 0 && (v10 = *(a2 + 208)) != 0)
  {
    v11 = *v10;
    v32 = *(a2 + 21);
    v24 = *(a2 + 19);
    v28 = *(a2 + 20);
    v16 = *(a2 + 17);
    v20 = *(a2 + 18);
    sub_100016A20(1, "HT: STA %02x:%02x:%02x:%02x:%02x:%02x HT Capabilities Info: 0x%04x", a3, a4, a5, a6, a7, a8, *(a2 + 16));
    if ((v11 & 0x10) == 0)
    {
      if ((*(a2 + 68) & 8) != 0)
      {
        v12 = *(*a1 + 2200);
      }

      else
      {
        *(a2 + 68) |= 8u;
        ++*(*a1 + 2200);
      }

      v37 = *(a2 + 21);
      v30 = *(a2 + 19);
      v34 = *(a2 + 20);
      v22 = *(a2 + 17);
      v26 = *(a2 + 18);
      v18 = *(a2 + 16);
      sub_100016A20(1, "%s STA %02x:%02x:%02x:%02x:%02x:%02x - no greenfield, num of non-gf stations %d", a3, a4, a5, a6, a7, a8, "update_sta_ht");
    }

    if ((v11 & 2) == 0)
    {
      if ((*(a2 + 68) & 0x20) != 0)
      {
        v13 = *(*a1 + 2208);
      }

      else
      {
        *(a2 + 68) |= 0x20u;
        ++*(*a1 + 2208);
      }

      v38 = *(a2 + 21);
      v31 = *(a2 + 19);
      v35 = *(a2 + 20);
      v23 = *(a2 + 17);
      v27 = *(a2 + 18);
      v19 = *(a2 + 16);
      sub_100016A20(1, "%s STA %02x:%02x:%02x:%02x:%02x:%02x - 20 MHz HT, num of 20MHz HT STAs %d", a3, a4, a5, a6, a7, a8, "update_sta_ht");
    }
  }

  else
  {
    if ((*(a2 + 68) & 0x10) == 0)
    {
      *(a2 + 68) |= 0x10u;
      ++*(*a1 + 2204);
    }

    if (*(a1[1] + 344))
    {
      v36 = *(a2 + 21);
      v39 = *(*a1 + 2204);
      v29 = *(a2 + 19);
      v33 = *(a2 + 20);
      v21 = *(a2 + 17);
      v25 = *(a2 + 18);
      v17 = *(a2 + 16);
      sub_100016A20(1, "%s STA %02x:%02x:%02x:%02x:%02x:%02x - no HT, num of non-HT stations %d", a3, a4, a5, a6, a7, a8, "update_sta_no_ht");
    }
  }

  v14 = *a1;

  return sub_100003D50(v14, a2, a3, a4, a5, a6, a7, a8);
}

__n128 sub_100004110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    result = *(a2 + 10);
    *a3 = *a2;
    *(a3 + 10) = result;
    *a3 = *(*(a1 + 8) + 340) & (*a3 | 0x30C);
  }

  return result;
}

uint64_t sub_100004144(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    v9 = result;
    if (*(result + 96))
    {
      free(*(a2 + 264));
      v10 = malloc_type_malloc(*(v9 + 104), 0x4A2E9607uLL);
      *(a2 + 264) = v10;
      if (v10)
      {
        v11 = *(v9 + 96);
        v12 = *(v9 + 104);
        *(a2 + 272) = v12;
        memcpy(v10, v11, v12);
        v13 = *(a2 + 264);
      }

      else
      {
        v13 = 0;
      }

      result = sub_100016B70(1, "STA identity from PMKSA", v13, *(a2 + 272));
    }

    if (*(a2 + 288))
    {
      result = sub_100016A20(1, "Copied %lu Class attribute(s) from PMKSA", a3, a4, a5, a6, a7, a8, *(a2 + 296));
    }

    *(a2 + 280) = *(v9 + 128);
    *(*(a2 + 360) + 200) = *(v9 + 132);
  }

  return result;
}

uint64_t sub_100004204(uint64_t a1, void *a2, size_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  if (a3 > 0x20)
  {
    return 0;
  }

  v18 = sub_100016754(0x90uLL);
  v9 = v18;
  if (v18)
  {
    memcpy(v18 + 32, a2, a3);
    *(v9 + 64) = a3;
    if (a4)
    {
      *(v9 + 16) = *a4;
    }

    else
    {
      v21 = a9 == 128 || a9 == 1024 || a9 == 256;
      sub_10000D138(a2, a3, a5, a6, (v9 + 16), v21);
    }

    v41[0] = 0;
    v41[1] = 0;
    sub_1000162A8(v41);
    if (a7 <= 0)
    {
      v22 = 43200;
    }

    else
    {
      v22 = a7;
    }

    *(v9 + 72) = v41[0] + v22;
    *(v9 + 80) = a9;
    v23 = *(a6 + 4);
    *(v9 + 84) = *a6;
    *(v9 + 88) = v23;
    if (a8)
    {
      if (*(a8 + 264))
      {
        v24 = malloc_type_malloc(*(a8 + 272), 0x5F0E91D8uLL);
        *(v9 + 96) = v24;
        if (v24)
        {
          v25 = *(a8 + 264);
          v26 = *(a8 + 272);
          *(v9 + 104) = v26;
          memcpy(v24, v25, v26);
        }
      }

      *(v9 + 128) = *(a8 + 280);
      *(v9 + 132) = *(*(a8 + 360) + 200);
    }

    v27 = sub_1000043E0(a1, a6, 0);
    if (v27)
    {
      sub_100004450(a1, v27);
    }

    if (*(a1 + 1032) >= 1024)
    {
      v34 = *(a1 + 1024);
      if (v34)
      {
        v39 = v34[88];
        v40 = v34[89];
        v37 = v34[86];
        v38 = v34[87];
        v36 = v34[85];
        sub_100016A20(1, "RSN: removed the oldest PMKSA cache entry (for %02x:%02x:%02x:%02x:%02x:%02x) to make room for new one", v28, v29, v30, v31, v32, v33, v34[84]);
        sub_100004450(a1, *(a1 + 1024));
      }
    }

    sub_10000452C(a1, v9, v28, v29, v30, v31, v32, v33);
  }

  return v9;
}

uint64_t sub_1000043E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a1 + 8 * (*a3 & 0x7F));
  }

  else
  {
    v3 = (a1 + 1024);
  }

  for (result = *v3; result; result = *(result + 8 * (a3 != 0)))
  {
    if (a2)
    {
      if (*(result + 84) != *a2 || *(result + 88) != *(a2 + 4))
      {
        continue;
      }
    }

    if (!a3)
    {
      break;
    }

    if (*(result + 16) == *a3 && *(result + 24) == *(a3 + 8))
    {
      break;
    }
  }

  return result;
}

void sub_100004450(uint64_t a1, uint64_t a2)
{
  --*(a1 + 1032);
  (*(a1 + 1040))(a2, *(a1 + 1048));
  v4 = (a1 + 8 * (*(a2 + 16) & 0x7F));
  v5 = *v4;
  if (*v4)
  {
    if (v5 == a2)
    {
      v7 = 0;
LABEL_8:
      v8 = *(v5 + 8);
      if (v7)
      {
        v4 = (v7 + 8);
      }

      *v4 = v8;
    }

    else
    {
      v6 = *v4;
      while (1)
      {
        v5 = *(v6 + 8);
        if (!v5)
        {
          break;
        }

        v7 = v6;
        v6 = *(v6 + 8);
        if (v5 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v9 = 0;
  v10 = (a1 + 1024);
  v11 = (a1 + 1024);
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    v12 = v9;
    v9 = v11;
    if (v11 == a2)
    {
      v13 = *v11;
      if (v12)
      {
        v10 = v12;
      }

      *v10 = v13;
      break;
    }
  }

  sub_100004770(a2);
}

uint64_t sub_10000452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 1024);
  v9 = *(a1 + 1024);
  if (v9)
  {
    v10 = *(a2 + 72);
    if (*(v9 + 72) <= v10)
    {
      v12 = *(a1 + 1024);
      while (1)
      {
        v11 = v12;
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_8;
        }

        if (v12[9] > v10)
        {
          goto LABEL_7;
        }
      }
    }

    v11 = 0;
LABEL_7:
    if (v11)
    {
LABEL_8:
      v9 = *v11;
      v8 = v11;
    }
  }

  *a2 = v9;
  *v8 = a2;
  v13 = (a2 + 16);
  v14 = *(a2 + 16) & 0x7F;
  *(a2 + 8) = *(a1 + 8 * v14);
  *(a1 + 8 * v14) = a2;
  ++*(a1 + 1032);
  v19 = *(a2 + 88);
  v20 = *(a2 + 89);
  v17 = *(a2 + 86);
  v18 = *(a2 + 87);
  v16 = *(a2 + 85);
  sub_100016A20(1, "RSN: added PMKSA cache entry for %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, *(a2 + 84));

  return sub_100016A94(1, "RSN: added PMKID", v13, 16);
}

uint64_t sub_100004620(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = sub_100016754(0x90uLL);
  v8 = v7;
  if (v7)
  {
    v7[1] = *a4;
    memcpy(v7 + 2, (a2 + 32), *(a2 + 64));
    *(v8 + 64) = *(a2 + 64);
    *(v8 + 80) = *(a2 + 80);
    v15 = *(a2 + 84);
    *(v8 + 88) = *(a2 + 88);
    *(v8 + 84) = v15;
    *(v8 + 136) = 1;
    if (*(a2 + 96))
    {
      v16 = malloc_type_malloc(*(a2 + 104), 0x5935BD93uLL);
      *(v8 + 96) = v16;
      if (v16)
      {
        v17 = *(a2 + 96);
        v18 = *(a2 + 104);
        *(v8 + 104) = v18;
        memcpy(v16, v17, v18);
      }
    }

    *(v8 + 128) = *(a2 + 128);
    *(v8 + 132) = *(a2 + 132);
    *(v8 + 136) = 1;
    sub_10000452C(a1, v8, v9, v10, v11, v12, v13, v14);
  }

  return v8;
}

void sub_1000046EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1[128];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9[12]);
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    sub_10002662C(sub_1000047B4, a1, 0, a4, a5, a6, a7, a8);

    free(a1);
  }
}

void sub_100004770(void **a1)
{
  if (a1)
  {
    free(a1[12]);

    free(a1);
  }
}

uint64_t sub_1000047B4(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_1000162A8(v16);
  for (i = *(a1 + 1024); i; i = *(a1 + 1024))
  {
    if (*(i + 72) > v16[0])
    {
      break;
    }

    *(a1 + 1024) = *i;
    v14 = *(i + 88);
    v15 = *(i + 89);
    v12 = *(i + 86);
    v13 = *(i + 87);
    v11 = *(i + 85);
    sub_100016A20(1, "RSN: expired PMKSA cache entry for %02x:%02x:%02x:%02x:%02x:%02x", v2, v3, v4, v5, v6, v7, *(i + 84));
    sub_100004450(a1, i);
  }

  result = sub_10002662C(sub_1000047B4, a1, 0, v3, v4, v5, v6, v7);
  if (*(a1 + 1024))
  {
    v17[0] = 0;
    v17[1] = 0;
    sub_1000162A8(v17);
    v10 = *(*(a1 + 1024) + 72) - LODWORD(v17[0]);
    return sub_100026404((v10 & ~(v10 >> 31)) + 1, 0, sub_1000047B4, a1, 0);
  }

  return result;
}

uint64_t *sub_1000048C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  for (i = *(a1 + 1024); i; i = *i)
  {
    if (*(i + 21) != *a3 || *(i + 44) != *(a3 + 4))
    {
        ;
      }
    }

    v9 = *(i + 20);
    v12 = v9 == 128 || v9 == 1024 || v9 == 256;
    sub_10000D138(i + 32, i[8], a2, a3, &v15, v12);
    if (v15 == *a4 && *(&v15 + 1) == a4[1])
    {
      break;
    }
  }

  return i;
}

void *sub_1000049AC(uint64_t a1, uint64_t a2)
{
  result = sub_100016754(0x420uLL);
  if (result)
  {
    result[130] = a1;
    result[131] = a2;
  }

  return result;
}

uint64_t sub_1000049E4(uint64_t a1, unsigned int (*a2)(uint64_t, void *, uint64_t), uint64_t a3)
{
  v6 = (a1 + 40);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (a2(a1, v6, a3))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100004A40(uint64_t a1, uint64_t a2)
{
  for (result = *(a1 + 8 * *(a2 + 5) + 48); result; result = *(result + 8))
  {
    if (*(result + 16) == *a2 && *(result + 20) == *(a2 + 4))
    {
      break;
    }
  }

  return result;
}

uint64_t sub_100004A78(uint64_t result, uint64_t a2)
{
  v2 = result + 8 * *(a2 + 21);
  *(a2 + 8) = *(v2 + 48);
  *(v2 + 48) = a2;
  return result;
}

void sub_100004A90(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 6);
  if ((v10 & 0x4000) != 0)
  {
    (*(a1 + 2504))(a1, a2 + 8, a2[11], 0);
    v10 = *(a2 + 6);
  }

  if ((v10 & 0x100) == 0)
  {
    (*(a1 + 2552))(a1, a2 + 8);
  }

  v11 = *(a2 + 21);
  v12 = *(a1 + 48 + 8 * v11);
  if (v12)
  {
    if (*(v12 + 16) == *(a2 + 4) && *(v12 + 20) == a2[10])
    {
      *(a1 + 48 + 8 * v11) = *(v12 + 8);
    }

    else
    {
      while (1)
      {
        v14 = v12;
        v12 = *(v12 + 8);
        if (!v12)
        {
          break;
        }

        if (*(v12 + 16) == *(a2 + 4) && *(v12 + 20) == a2[10])
        {
          *(v14 + 8) = *(v12 + 8);
          goto LABEL_19;
        }
      }

      v42 = *(a2 + 20);
      v44 = *(a2 + 21);
      v38 = *(a2 + 18);
      v40 = *(a2 + 19);
      v36 = *(a2 + 17);
      sub_100016A20(1, "AP: could not remove STA %02x:%02x:%02x:%02x:%02x:%02x from hash table", a3, a4, a5, a6, a7, a8, *(a2 + 16));
    }
  }

LABEL_19:
  v16 = *(a1 + 40);
  if (v16 == a2)
  {
    *(a1 + 40) = *a2;
  }

  else
  {
    while (v16)
    {
      v17 = v16;
      v16 = *v16;
      if (v16 == a2)
      {
        *v17 = *a2;
        goto LABEL_25;
      }
    }

    v43 = *(a2 + 20);
    v45 = *(a2 + 21);
    v39 = *(a2 + 18);
    v41 = *(a2 + 19);
    v37 = *(a2 + 17);
    sub_100016A20(1, "Could not remove STA %02x:%02x:%02x:%02x:%02x:%02x from list.", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

LABEL_25:
  if (a2[11])
  {
    *(a1 + 4 * ((a2[11] - 1) >> 5) + 2096) &= ~(1 << (a2[11] - 1));
  }

  --*(a1 + 36);
  v18 = *(a2 + 68);
  if (v18)
  {
    *(a2 + 68) = v18 & 0xFE;
    --*(*a1 + 2184);
    v18 = *(a2 + 68);
    if ((v18 & 2) == 0)
    {
LABEL_29:
      if ((v18 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  else if ((a2[34] & 2) == 0)
  {
    goto LABEL_29;
  }

  *(a2 + 68) = v18 & 0xFD;
  --*(*a1 + 2188);
  v18 = *(a2 + 68);
  if ((v18 & 4) == 0)
  {
LABEL_30:
    if ((v18 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a2 + 68) = v18 & 0xFB;
  --*(*a1 + 2192);
  v18 = *(a2 + 68);
  if ((v18 & 8) == 0)
  {
LABEL_31:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a2 + 68) = v18 & 0xF7;
  --*(*a1 + 2200);
  v18 = *(a2 + 68);
  if ((v18 & 0x10) == 0)
  {
LABEL_32:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_41:
  *(a2 + 68) = v18 & 0xEF;
  --*(*a1 + 2204);
  v18 = *(a2 + 68);
  if ((v18 & 0x20) != 0)
  {
LABEL_33:
    *(a2 + 68) = v18 & 0xDF;
    --*(*a1 + 2208);
  }

LABEL_34:
  sub_10002662C(sub_100004DA8, a1, a2, a4, a5, a6, a7, a8);
  sub_10002662C(sub_1000051E8, a1, a2, v19, v20, v21, v22, v23);
  sub_1000203E4(a2);
  sub_100007988(*(a2 + 21), v24, v25, v26, v27, v28, v29, v30);
  free(*(a2 + 12));
  free(*(a2 + 20));
  free(*(a2 + 28));
  sub_10002662C(sub_10000527C, a1, a2, v31, v32, v33, v34, v35);
  sub_1000171F8(*(a2 + 31));
  free(*(a2 + 26));

  free(a2);
}

void sub_100004DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 80);
  if (v10 == 3)
  {
    sub_100016EE4(a1, (a2 + 16), 1, 2, "deauthenticated due to local deauth request", a6, a7, a8, v47);

    sub_100004A90(a1, a2, v11, v12, v13, v14, v15, v16);
    return;
  }

  if (v10 <= 1 && (*(a2 + 24) & 2) != 0)
  {
    v56 = *(a2 + 20);
    v59 = *(a2 + 21);
    v50 = *(a2 + 18);
    v53 = *(a2 + 19);
    v48 = *(a2 + 17);
    sub_100016A20(1, "Checking STA %02x:%02x:%02x:%02x:%02x:%02x inactivity:", a3, a4, a5, a6, a7, a8, *(a2 + 16));
    v18 = (*(a1 + 2520))(a1, a2 + 16);
    if (v18 == -1)
    {
      v57 = *(a2 + 20);
      v60 = *(a2 + 21);
      v51 = *(a2 + 18);
      v54 = *(a2 + 19);
      v49 = *(a2 + 17);
      sub_100016A20(1, "Could not get station info from kernel driver for %02x:%02x:%02x:%02x:%02x:%02x.", a3, a4, a5, a6, a7, a8, *(a2 + 16));
    }

    else
    {
      v19 = v18;
      if (v18 < *(*(a1 + 16) + 700) && (*(a2 + 24) & 2) != 0)
      {
        sub_100016A20(1, "  Station has been active", a3, a4, a5, a6, a7, a8, v47);
        *(a2 + 80) = 0;
        v20 = *(*(a1 + 16) + 700) - v19;
        goto LABEL_15;
      }
    }
  }

  v20 = 0;
LABEL_15:
  v21 = *(a2 + 24);
  if ((v21 & 2) != 0 && (v21 & 0x40) == 0 && *(a2 + 80) == 1)
  {
    sub_100016A20(1, "  Station has ACKed data poll", a3, a4, a5, a6, a7, a8, v47);
    *(a2 + 80) = 0;
    v20 = *(*(a1 + 16) + 700);
  }

  if (v20)
  {

    sub_100026404(v20, 0, sub_100004DA8, a1, a2);
  }

  else
  {
    v22 = *(a2 + 80);
    if (v22 == 3)
    {
      goto LABEL_41;
    }

    if (!v22 && (*(a2 + 24) & 2) != 0)
    {
      sub_100016A20(1, "  Polling STA with data frame", a3, a4, a5, a6, a7, a8, v47);
      *(a2 + 24) |= 0x40u;
      memset(v65, 0, sizeof(v65));
      v64 = 0;
      v25 = *(a1 + 2352);
      if (v25 && !strcmp(*v25, "hostap"))
      {
        v26 = 520;
      }

      else
      {
        v26 = 584;
      }

      v63 = v26;
      *(&v64 + 2) = *(a2 + 16);
      HIWORD(v64) = *(a2 + 20);
      *v65 = *(a1 + 28);
      *&v65[4] = *(a1 + 32);
      *&v65[6] = *v65;
      *&v65[10] = *&v65[4];
      if (((*(a1 + 2376))(a1, &v63, 24) & 0x80000000) != 0)
      {
        perror("ap_handle_timer: send");
      }
    }

    else
    {
      v23 = "disassociation";
      v24 = *(a2 + 16);
      if (v22 == 2)
      {
        v23 = "deauthentication";
      }

      v61 = *(a2 + 20);
      v62 = *(a2 + 21);
      v55 = *(a2 + 18);
      v58 = *(a2 + 19);
      v52 = *(a2 + 17);
      sub_100016A20(1, "Sending %s info to STA %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, v23);
      if (v22 == 2)
      {
        (*(a1 + 2528))(a1, a2 + 16, 2);
      }

      else
      {
        (*(a1 + 2536))(a1, a2 + 16, 4);
      }
    }

    v27 = *(a2 + 80);
    if ((v27 - 2) < 2)
    {
LABEL_41:
      sub_100016EE4(a1, (a2 + 16), 1, 2, "deauthenticated due to inactivity", a6, a7, a8, v47);
      if (!*(a2 + 124))
      {
        *(a2 + 124) = 4;
      }

      sub_10001B9A0(a1, a2, 2, v28, v29, v30, v31, v32);
      sub_100004A90(a1, a2, v33, v34, v35, v36, v37, v38);
    }

    else if (v27 == 1)
    {
      *(a2 + 24) &= ~2u;
      sub_100020C7C(*(a2 + 88), 0);
      if (!*(a2 + 124))
      {
        *(a2 + 124) = 4;
      }

      sub_1000203E4(a2);
      sub_100016EE4(a1, (a2 + 16), 1, 2, "disassociated due to inactivity", v39, v40, v41, v47);
      *(a2 + 80) = 2;
      sub_100026404(1u, 0, sub_100004DA8, a1, a2);
      sub_10001BB78(a1, a2, 4, v42, v43, v44, v45, v46);
    }

    else if (!v27)
    {
      *(a2 + 80) = 1;
      sub_100026404(1u, 0, sub_100004DA8, a1, a2);
    }
  }
}

uint64_t sub_1000051E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 24))
  {
    v9 = result;
    sub_10001B9A0(result, a2, 2, a4, a5, a6, a7, a8);
    sub_100016EE4(v9, (a2 + 16), 1, 2, "deauthenticated due to session timeout", v10, v11, v12, v13);
    *(a2 + 124) = 5;
    v14 = *(a2 + 16);
    v15 = *(a2 + 20);
    sub_100004A90(v9, a2);
    return (*(v9 + 2528))(v9, &v14, 2);
  }

  return result;
}

void sub_10000527C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 216);
  if (v4 >= 1)
  {
    if (sub_100005978(a1, a2))
    {
      return;
    }

    v4 = *(a2 + 216);
  }

  v5 = malloc_type_realloc(*(a2 + 224), 2 * v4 + 2, 0x94CE1792uLL);
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + 216);
    if (!v7)
    {
      sub_1000162A8((a2 + 232));
      v7 = *(a2 + 216);
    }

    *(a2 + 224) = v6;
    *(a2 + 216) = v7 + 1;
    sub_1000164A4(&v6[2 * v7], 2uLL);
    sub_100026404(((*(*(a1 + 16) + 500) / 0x3E8u) << 10) / 0x3E8, (*(*(a1 + 16) + 500) % 0x3E8u) << 10, sub_10000527C, a1, a2);
    sub_100016EE4(a1, (a2 + 16), 1, 1, "association SA Query attempt %d", v8, v9, v10, *(a2 + 216));
  }
}

void sub_100005394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    do
    {
      if (v8[24])
      {
        sub_10001B9A0(a1, v8, 1, a4, a5, a6, a7, a8);
      }

      v10 = *v8;
      v20 = v8[20];
      v21 = v8[21];
      v18 = v8[18];
      v19 = v8[19];
      v17 = v8[17];
      sub_100016A20(1, "Removing station %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, v8[16]);
      sub_100004A90(a1, v8, v11, v12, v13, v14, v15, v16);
      v8 = v10;
    }

    while (v10);
  }
}

uint64_t sub_100005434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  sub_100016EE4(a1, (a2 + 16), 1, 1, "setting session timeout to %d seconds", a6, a7, a8, a3);
  sub_10002662C(sub_1000051E8, a1, a2, v11, v12, v13, v14, v15);

  return sub_100026404(v8, 0, sub_1000051E8, a1, a2);
}

_DWORD *sub_1000054E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A40(a1, a2);
  if (v4)
  {
    v11 = v4;
    sub_100016A20(2, "STA already exists! resetting..", v5, v6, v7, v8, v9, v10, v47);
    *(v11 + 24) &= 0xFFFFFFFC;
    *(v11 + 124) = 1;
    sub_100020C7C(*(v11 + 88), 0);
    sub_100004A90(a1, v11, v12, v13, v14, v15, v16, v17);
    if (sub_100004A40(a1, a2))
    {
      sub_100016A20(4, "Failed to reset STA!!", v5, v6, v7, v8, v9, v10, v47);
    }
  }

  sub_100016A20(1, "  New STA", v5, v6, v7, v8, v9, v10, v47);
  if (*(a1 + 36) >= *(*(a1 + 16) + 64))
  {
    sub_100016A20(1, "no more room for new STAs (%d/%d)", v18, v19, v20, v21, v22, v23, *(a1 + 36));
    return 0;
  }

  else
  {
    v24 = sub_100016754(0x100uLL);
    v31 = v24;
    if (v24)
    {
      v32 = *(a1 + 16);
      v24[32] = *(v32 + 144);
      sub_100026404(*(v32 + 700), 0, sub_100004DA8, a1, v24);
      v33 = *(a2 + 4);
      v31[4] = *a2;
      *(v31 + 10) = v33;
      *v31 = *(a1 + 40);
      *(a1 + 40) = v31;
      ++*(a1 + 36);
      v34 = a1 + 8 * *(v31 + 21);
      *(v31 + 1) = *(v34 + 48);
      *(v34 + 48) = v31;
      *(v31 + 23) = *(a1 + 16) + 152;
      v35 = *a1;
      v36 = *(*a1 + 48);
      if (v36)
      {
        for (i = 0; i < v36; ++i)
        {
          v38 = *(v35 + 56);
          v39 = *(v38 + 8 * i);
          if (v39 != a1 && v39 != 0)
          {
            v41 = sub_100004A40(*(v38 + 8 * i), (v31 + 4));
            if (v41)
            {
              sub_100005AB4(v39, v41, v41 + 16, 2, v42, v43, v44, v45);
              v36 = *(v35 + 48);
            }
          }
        }
      }
    }

    else
    {
      sub_100016A20(4, "malloc failed", v25, v26, v27, v28, v29, v30, v48);
    }
  }

  return v31;
}

uint64_t sub_1000056D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *(a2 + 20);
  v27 = *(a2 + 21);
  v24 = *(a2 + 18);
  v25 = *(a2 + 19);
  v22 = *(a2 + 16);
  v23 = *(a2 + 17);
  sub_100016A20(1, "%s: disassociate STA %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a2 + 24) &= ~2u;
  sub_1000057C0(a1, a2);
  *(a2 + 80) = 2;
  sub_10002662C(sub_100004DA8, a1, a2, v11, v12, v13, v14, v15);
  sub_100026404(0x1Eu, 0, sub_100004DA8, a1, a2);
  sub_1000203E4(a2);

  return sub_10001BB78(a1, a2, a3, v16, v17, v18, v19, v20);
}

uint64_t sub_1000057C0(uint64_t a1, uint64_t a2)
{
  sub_100020C7C(*(a2 + 88), 0);
  v23 = *(a2 + 20);
  v25 = *(a2 + 21);
  v19 = *(a2 + 18);
  v21 = *(a2 + 19);
  v17 = *(a2 + 17);
  sub_100016A20(1, "Removing STA %02x:%02x:%02x:%02x:%02x:%02x from kernel driver", v4, v5, v6, v7, v8, v9, *(a2 + 16));
  result = (*(a1 + 2552))(a1, a2 + 16);
  if (result)
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v24 = *(a2 + 20);
      v26 = *(a2 + 21);
      v20 = *(a2 + 18);
      v22 = *(a2 + 19);
      v18 = *(a2 + 17);
      return sub_100016A20(1, "Could not remove station %02x:%02x:%02x:%02x:%02x:%02x from kernel driver.", v11, v12, v13, v14, v15, v16, *(a2 + 16));
    }
  }

  return result;
}

uint64_t sub_100005888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *(a2 + 20);
  v27 = *(a2 + 21);
  v24 = *(a2 + 18);
  v25 = *(a2 + 19);
  v22 = *(a2 + 16);
  v23 = *(a2 + 17);
  sub_100016A20(1, "%s: deauthenticate STA %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a2 + 24) &= 0xFFFFFFFC;
  sub_1000057C0(a1, a2);
  *(a2 + 80) = 3;
  sub_10002662C(sub_100004DA8, a1, a2, v11, v12, v13, v14, v15);
  sub_100026404(5u, 0, sub_100004DA8, a1, a2);
  sub_1000203E4(a2);

  return sub_10001B9A0(a1, a2, a3, v16, v17, v18, v19, v20);
}

uint64_t sub_100005978(uint64_t a1, uint64_t a2)
{
  v15 = 0uLL;
  sub_1000162A8(v15.i64);
  v7 = vsubq_s64(v15, *(a2 + 232));
  if (*(*(a1 + 16) + 496) >= ((v7.i64[1] + (v7.i64[1] < 0 ? 0xF4240uLL : 0) + 1000000 * (v7.i64[0] + (v7.i64[1] >> 63))) / 1024))
  {
    return 0;
  }

  v8 = 1;
  sub_100016EE4(a1, (a2 + 16), 1, 1, "association SA Query timed out", v4, v5, v6, v15.i64[0]);
  *(a2 + 220) = 1;
  free(*(a2 + 224));
  *(a2 + 224) = 0;
  *(a2 + 216) = 0;
  sub_10002662C(sub_10000527C, a1, a2, v9, v10, v11, v12, v13);
  return v8;
}

void sub_100005A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002662C(sub_10000527C, a1, a2, a4, a5, a6, a7, a8);
  free(*(a2 + 224));
  *(a2 + 224) = 0;
  *(a2 + 216) = 0;
}

uint64_t sub_100005AB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = result;
  if (a2 || !a3)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_100004A40(result, a3);
  }

  result = (*(v11 + 2528))(v11, a3, a4);
LABEL_6:
  if (v10)
  {
    *(v10 + 24) &= 0xFFFFFFDC;
    sub_10002662C(sub_100004DA8, v11, v10, a4, a5, a6, a7, a8);
    result = sub_100026404(0, 0, sub_100004DA8, v11, v10);
    *(v10 + 80) = 3;
  }

  return result;
}

time_t sub_100005B70(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2 && a3)
  {
    v5 = sub_100004A40(a1, a2);
    if (!v5)
    {
      v36 = a2[4];
      v37 = a2[5];
      v34 = a2[2];
      v35 = a2[3];
      v33 = a2[1];
      return sub_100016A20(1, "MLME-MICHAELMICFAILURE.indication for not associated STA (%02x:%02x:%02x:%02x:%02x:%02x) ignored", v6, v7, v8, v9, v10, v11, *a2);
    }

    sub_10000911C(*(v5 + 168));
    sub_100016EE4(a1, a2, 1, 2, "Michael MIC failure detected in received frame", v12, v13, v14, v32);
    sub_10001BBF8(a1, a2, v15, v16, v17, v18, v19, v20);
  }

  v38 = 0;
  result = time(&v38);
  if (v38 <= *(a1 + 2648) + 60)
  {
    v25 = *(a1 + 2656);
    *(a1 + 2656) = v25 + 1;
    if (v25 >= 1)
    {
      sub_100016EE4(a1, 0, 1, 2, "TKIP countermeasures initiated", v22, v23, v24, v32);
      sub_100009098(*(a1 + 2624));
      *(a1 + 2660) = 1;
      (*(a1 + 2560))(a1, 1);
      sub_100008AD8(*(a1 + 2624));
      sub_10002662C(sub_100005D28, a1, 0, v26, v27, v28, v29, v30);
      result = sub_100026404(0x3Cu, 0, sub_100005D28, a1, 0);
      for (i = *(a1 + 40); i; i = *i)
      {
        (*(a1 + 2528))(a1, i + 2, 14);
        *(i + 6) &= 0xFFFFFFDC;
        result = (*(a1 + 2552))(a1, i + 2);
      }
    }
  }

  else
  {
    *(a1 + 2656) = 1;
  }

  *(a1 + 2648) = v38;
  return result;
}

void sub_100005D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 2660) = 0;
  (*(a1 + 2560))(a1, 0);

  sub_100016EE4(a1, 0, 1, 2, "TKIP countermeasures ended", v10, v11, v12, a9);
}

uint64_t sub_100005D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_realloc(*(a1 + 2744), 16 * *(a1 + 2752) + 16, 0x80040803F642BuLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  *(a1 + 2744) = v7;
  v9 = *(a1 + 2752);
  v10 = &v7[16 * v9];
  *(a1 + 2752) = v9 + 1;
  *v10 = a2;
  *(v10 + 1) = a3;
  return result;
}

void **sub_100005E00(void **result, uint64_t a2)
{
  v3[0] = result;
  v3[1] = a2;
  v2 = (*result)[281];
  if (v2)
  {
    return v2(**result, sub_100005E48, v3);
  }

  return result;
}

uint64_t sub_100005E48(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 56) + 8 * v4);
      if (v5 != *a2)
      {
        v6 = sub_100004A40(*(*(a1 + 56) + 8 * v4), a2[1]);
        if (v6)
        {
          sub_1000056D0(v5, v6, 1, v7, v8, v9, v10, v11);
        }
      }

      ++v4;
    }

    while (v4 < *(a1 + 48));
  }

  return 0;
}

uint64_t sub_100005ECC(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 16) + 708))
  {
    *a2 = -35;
    *(a2 + 2) = 49434624;
    *(a2 + 6) = 257;
    v2 = *(a1 + 2704) & 0xF;
    *(a2 + 8) = v2;
    if (*(*(a1 + 16) + 712))
    {
      *(a2 + 8) = v2 | 0x80;
    }

    v3 = 0;
    v4 = (a2 + 12);
    v5 = (*(a1 + 8) + 272);
    do
    {
      v6 = *(v5 - 1);
      if (*v5)
      {
        v7 = *(v5 - 2) & 0xF | 0x10;
      }

      else
      {
        v7 = *(v5 - 2) & 0xF;
      }

      *(v4 - 2) = v3 + v7;
      v8 = *(v5 - 3);
      v9 = *(v5 - 4) & 0xF | (16 * v8);
      *(v4 - 1) = *(v5 - 4) & 0xF | (16 * v8);
      *v4 = v6;
      v4 += 2;
      v3 += 32;
      v5 += 5;
    }

    while (v3 != 128);
    *(a2 + 1) = 24;
    a2 += 26;
  }

  return a2;
}

uint64_t sub_100005F7C(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  sub_100016A94(0, "WMM IE", a2, a3);
  if (a3 > 6)
  {
    v23 = a2[5];
    v24 = a2[6];
    v21 = a2[3];
    v22 = a2[4];
    v19 = a2[1];
    v20 = a2[2];
    sub_100016A20(1, "Validating WMM IE: OUI %02x:%02x:%02x  OUI type %d  OUI sub-type %d  version %d  QoS info 0x%x", v5, v6, v7, v8, v9, v10, *a2);
    if (!a2[4] && a2[5] == 1)
    {
      return 0;
    }

    sub_100016A20(1, "Unsupported WMM IE Subtype/Version", v11, v12, v13, v14, v15, v16, v18);
  }

  else
  {
    sub_100016A20(1, "Too short WMM IE (len=%lu)", v5, v6, v7, v8, v9, v10, a3);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100006044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  sub_100016A20(1, "WMM: TS Info: UP=%d PSB=%d Direction=%d TID=%d", a3, a4, a5, a6, a7, a8, (*(a1 + 9) >> 3) & 7);
  *(a1 + 11);
  sub_100016A20(1, "WMM: Nominal MSDU Size: %d%s", v10, v11, v12, v13, v14, v15, *(a1 + 11) & 0x7FFF);
  sub_100016A20(1, "WMM: Mean Data Rate: %u bps", v16, v17, v18, v19, v20, v21, *(a1 + 39));
  sub_100016A20(1, "WMM: Minimum PHY Rate: %u bps", v22, v23, v24, v25, v26, v27, *(a1 + 55));
  sub_100016A20(1, "WMM: Surplus Bandwidth Allowance: %u.%04u", v28, v29, v30, v31, v32, v33, *(a1 + 59) >> 13);
  if (*(a1 + 11))
  {
    v40 = (*(a1 + 11) + (*(a1 + 39) >> 3) - 1) / *(a1 + 11);
    sub_100016A20(1, "WMM: Packets-per-second estimate for TSPEC: %d", v34, v35, v36, v37, v38, v39, v40);
    v41 = *(a1 + 55);
    if (v41 > 0xF423F)
    {
      v43 = *(a1 + 59);
      if (v43 > 0x2000)
      {
        v46 = v40 * v43 * (8 * (*(a1 + 11) & 0x7FFFu) / (v41 / 0xF4240) + 50);
        sub_100016A20(1, "WMM: Estimated medium time: %u", v34, v35, v36, v37, v38, v39, v46 >> 13);
        v44 = 0;
        *(a1 + 61) = v46 >> 18;
        return v44;
      }

      v42 = "WMM: Surplus Bandwidth Allowance not greater than unity";
    }

    else
    {
      v42 = "WMM: Too small Minimum PHY Rate";
    }
  }

  else
  {
    v42 = "WMM: Invalid Nominal MSDU Size (0)";
  }

  v44 = 1;
  sub_100016A20(1, v42, v34, v35, v36, v37, v38, v39, v47);
  return v44;
}

void sub_100006208(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_100004A40(a1, (a2 + 10));
  if (v12)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    if ((~*(v12 + 24) & 0x202) == 0)
    {
      v17 = (a3 - 28);
      if ((v17 & 0x80000000) != 0)
      {
        return;
      }

      if (sub_10000C428(a2 + 28, v17, v55, 1, v13, v14, v15, v16) == -1)
      {
        v25 = "hostapd_wmm_action - could not parse wmm action";
      }

      else
      {
        v24 = *(&v56 + 1);
        if (*(&v56 + 1) && BYTE5(v62) == 61)
        {
          if (a2[25])
          {
            sub_100016EE4(a1, a2 + 10, 1, 1, "hostapd_wmm_action - unknown action code %d", v21, v22, v23, a2[25]);
          }

          else if (*(&v56 + 1) + 61 <= &a2[a3])
          {
            v53 = a2[14];
            v54 = a2[15];
            v51 = a2[12];
            v52 = a2[13];
            v49 = a2[10];
            v50 = a2[11];
            sub_100016A20(1, "WMM: ADDTS Request (Dialog Token %d) for TSPEC from %02x:%02x:%02x:%02x:%02x:%02x", v18, v19, v20, v21, v22, v23, a2[26]);
            v33 = sub_100006044(v24 - 2, v26, v27, v28, v29, v30, v31, v32);
            sub_100016A20(1, "WMM: ADDTS processing result: %d", v34, v35, v36, v37, v38, v39, v33);
            v40 = a2[26];
            sub_100016EE4(a1, a2 + 10, 1, 1, "action response - reason %d", v41, v42, v43, v33);
            memset(v73, 0, sizeof(v73));
            v72 = 0u;
            v71 = 0u;
            v70 = 0u;
            v69 = 0u;
            v68 = 0u;
            v67 = 0u;
            v66 = 0u;
            v65 = 0u;
            *&v64[80] = 0u;
            memset(&v64[48], 0, 25);
            *&v64[32] = 0u;
            *&v64[16] = 0u;
            *v64 = 0u;
            v63 = 208;
            v44 = *(a2 + 10);
            *&v64[6] = *(a2 + 7);
            *&v64[2] = v44;
            *&v64[8] = *(a1 + 28);
            *&v64[12] = *(a1 + 32);
            *&v64[14] = *&v64[8];
            *&v64[18] = *&v64[12];
            *&v64[22] = 273;
            v64[24] = v40;
            v64[25] = v33;
            v45 = *(v24 + 14);
            v46 = *(v24 + 30);
            v47 = *(v24 + 45);
            *&v64[26] = *(v24 - 2);
            *&v64[73] = v47;
            *&v64[58] = v46;
            *&v64[42] = v45;
            if (((*(a1 + 2376))(a1, &v63, 91) & 0x80000000) != 0)
            {
              perror("wmm_send_action: send");
            }
          }

          else
          {
            sub_100016A20(1, "WMM: TSPEC overflow in ADDTS Request", v18, v19, v20, v21, v22, v23, v48);
          }

          return;
        }

        v25 = "hostapd_wmm_action - missing or wrong length tspec";
      }

      sub_100016EE4(a1, a2 + 10, 1, 1, v25, v21, v22, v23, v48);
      return;
    }
  }

  sub_100016EE4(a1, a2 + 10, 1, 1, "wmm action received is not from associated wmm station", v14, v15, v16, a9);
}

void sub_100006500()
{
  if (qword_1000404E0)
  {
    xpc_connection_cancel(qword_1000404E0);
    v0 = qword_1000404E0;

    xpc_release(v0);
  }
}

uint64_t sub_10000654C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v0 = dispatch_semaphore_create(0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10000667C;
  v3[3] = &unk_10003C690;
  v3[4] = &v4;
  v3[5] = v0;
  qword_1000404E0 = xpc_connection_create_mach_service("com.apple.wifi.hostapd", 0, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000675C;
  handler[3] = &unk_10003C6B8;
  handler[4] = v3;
  xpc_connection_set_event_handler(qword_1000404E0, handler);
  xpc_connection_activate(qword_1000404E0);
  dispatch_semaphore_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100006690()
{
  if (qword_100040308)
  {
    xpc_release(qword_100040308);
    qword_100040308 = 0;
  }
}

void sub_1000066CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100040318)
  {
    sub_100016A20(2, "%s sending terminate event begin", a3, a4, a5, a6, a7, a8, "xpc_reply_to_terminate_event");
    reply = xpc_dictionary_create_reply(qword_100040318);
    remote_connection = xpc_dictionary_get_remote_connection(qword_100040318);
    xpc_connection_send_message(remote_connection, reply);
    xpc_release(qword_100040318);
    qword_100040318 = 0;
    sub_100016A20(2, "%s sending terminate event done", v10, v11, v12, v13, v14, v15, "xpc_reply_to_terminate_event");
  }
}

void sub_10000675C(uint64_t a1, _xpc_connection_s *object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v11 = 0u;
    v12 = 0u;
    xpc_connection_get_audit_token();
    memset(&token, 0, sizeof(token));
    v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    if (v4)
    {
      v5 = v4;
      v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.wifi.hostapd", 0);
      if (v6)
      {
        v7 = v6;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v7))
        {
          v9 = CFEqual(v7, kCFBooleanTrue);
          CFRelease(v5);
          CFRelease(v7);
          if (v9)
          {
            *&v11 = _NSConcreteStackBlock;
            *(&v11 + 1) = 0x40000000;
            *&v12 = sub_1000068D8;
            *(&v12 + 1) = &unk_10003C6E0;
            v13 = v3;
            xpc_connection_set_event_handler(object, &v11);
            xpc_connection_activate(object);
            return;
          }

          goto LABEL_10;
        }

        CFRelease(v5);
        v10 = v7;
      }

      else
      {
        v10 = v5;
      }

      CFRelease(v10);
    }

LABEL_10:
    xpc_connection_cancel(object);
    (*(v3 + 16))(v3, 0);
  }
}

xpc_type_t sub_1000068D8(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  result = xpc_get_type(object);
  if (result == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_value(object, "Terminate"))
    {
      sub_100016A20(2, "%s received terminate event", v5, v6, v7, v8, v9, v10, "__xpc_connection_handle_request");
      qword_100040318 = xpc_retain(object);
      if (qword_100040310)
      {
        sub_100026980(qword_100040310);
        qword_100040310 = 0;
      }

      return sub_100016A20(2, "%s received terminate event - loop terminated", v11, v12, v13, v14, v15, v16, "__xpc_connection_handle_request");
    }

    else
    {
      qword_100040308 = xpc_retain(object);
      v17 = *(v3 + 16);

      return v17(v3, 1);
    }
  }

  return result;
}

uint64_t sub_1000069C4(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1)
  {
    return v1(*(a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000069DC(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1)
  {
    return v1(*(a1 + 144));
  }

  else
  {
    return 0;
  }
}

void sub_1000069F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100040320;
  if (!qword_100040320)
  {
    v8 = os_log_create("com.apple.hostapd", "wpa_auth");
    qword_100040320 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    v20 = 67110658;
    *v21 = v10;
    *&v21[4] = 1024;
    *&v21[6] = v11;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 2082;
    v31 = a4;
    v16 = "STA %02x:%02x:%02x:%02x:%02x:%02x %{public}s";
    v17 = v8;
    v18 = 48;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v20 = 136446210;
    *v21 = a4;
    v16 = "%{public}s";
    v17 = v8;
    v18 = 12;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v20, v18);
LABEL_9:
  v19 = *(a1 + 152);
  if (v19)
  {
    v19(*(a1 + 144), a2, a3, a4);
  }
}

void sub_100006B7C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *__s, ...)
{
  va_start(va, __s);
  if (*(a1 + 152))
  {
    v8 = (strlen(__s) + 100);
    v9 = malloc_type_malloc(v8, 0xF02B6C7DuLL);
    if (v9)
    {
      v10 = v9;
      vsnprintf(v9, v8, __s, va);
      sub_1000069F4(a1, a2, a3, v10);
      free(v10);
    }
  }
}

unsigned int *sub_100006C28(int *a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_100016754(0x138uLL);
  v14 = v6;
  if (!v6)
  {
    return v14;
  }

  v15 = *a1;
  *(v6 + 146) = *(a1 + 2);
  *(v6 + 72) = v15;
  v17 = *(a2 + 32);
  v16 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(v6 + 88) = *(a2 + 16);
  *(v6 + 34) = v18;
  *(v6 + 120) = v16;
  *(v6 + 104) = v17;
  *(v6 + 72) = *a2;
  v19 = a3[7];
  v21 = a3[4];
  v20 = a3[5];
  *(v6 + 15) = a3[6];
  *(v6 + 16) = v19;
  *(v6 + 13) = v21;
  *(v6 + 14) = v20;
  v22 = *a3;
  v23 = a3[1];
  v24 = a3[3];
  *(v6 + 11) = a3[2];
  *(v6 + 12) = v24;
  *(v6 + 9) = v22;
  *(v6 + 10) = v23;
  if (sub_10000B5A4(v6, v7, v8, v9, v10, v11, v12, v13))
  {
    sub_100016A20(4, "Could not generate WPA IE.", v25, v26, v27, v28, v29, v30, v42);
LABEL_12:
    free(v14);
    return 0;
  }

  v31 = sub_100006D8C(v14, 0);
  *v14 = v31;
  if (!v31)
  {
LABEL_11:
    free(*(v14 + 34));
    goto LABEL_12;
  }

  v32 = sub_1000049AC(sub_100006EE4, v14);
  *(v14 + 37) = v32;
  if (!v32)
  {
    sub_100016A20(4, "PMKSA cache initialization failed.", v33, v34, v35, v36, v37, v38, v42);
    goto LABEL_11;
  }

  v39 = v14[24];
  if (v39)
  {
    sub_100026404(v39, 0, sub_100006F0C, v14, 0);
  }

  v40 = v14[22];
  if (v40)
  {
    sub_100026404(v40, 0, sub_100006FAC, v14, 0);
  }

  return v14;
}

char *sub_100006D8C(uint64_t a1, int a2)
{
  v4 = sub_100016754(0xF8uLL);
  v5 = v4;
  if (v4)
  {
    v4[36] = 1;
    *(v4 + 2) = a2;
    HIDWORD(v7) = *(a1 + 84) - 2;
    LODWORD(v7) = HIDWORD(v7);
    v6 = v7 >> 1;
    if (v6 <= 7 && ((0x8Bu >> v6) & 1) != 0)
    {
      *(v4 + 6) = dword_10002BB00[v6];
    }

    v28 = *(a1 + 288);
    v29 = *(a1 + 292);
    sub_100015F2C(&v30);
    v31 = v5;
    if (sub_1000164A4(v27, 0x20uLL) || sub_1000164A4(v5 + 76, 0x20uLL))
    {
      sub_100016A20(4, "Failed to get random data for WPA initialization.", v8, v9, v10, v11, v12, v13, v27[0]);
      free(v5);
      return 0;
    }

    else
    {
      sub_10000EE1C(v27, 0x20uLL, "Init Counter", &v28, 22, v5 + 37, 0x20uLL);
      v5[12] = 1;
      sub_1000071B8(a1, v5, v15, v16, v17, v18, v19, v20);
      v5[12] = 0;
      sub_1000071B8(a1, v5, v21, v22, v23, v24, v25, v26);
    }
  }

  return v5;
}

uint64_t sub_100006EE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 248);
  if (v2)
  {
    return v2(*(a2 + 144), sub_1000093B0, result);
  }

  return result;
}

uint64_t sub_100006F0C(unsigned int *a1)
{
  if (sub_1000164A4((*a1 + 76), 0x20uLL))
  {
    sub_100016A20(4, "Failed to get random data for WPA initialization.", v2, v3, v4, v5, v6, v7, v9);
  }

  else
  {
    sub_1000069F4(a1, 0, 0, "GMK rekeyd");
  }

  result = a1[24];
  if (result)
  {

    return sub_100026404(result, 0, sub_100006F0C, a1, 0);
  }

  return result;
}

uint64_t sub_100006FAC(uint64_t a1)
{
  sub_1000069F4(a1, 0, 0, "rekeying GTK");
  for (i = *a1; i; i = *i)
  {
    *(i + 20) = 1;
    do
    {
      *(i + 204) = 0;
      sub_1000071B8(a1, i, v2, v3, v4, v5, v6, v7);
    }

    while (*(i + 204));
  }

  result = *(a1 + 88);
  if (result)
  {

    return sub_100026404(result, 0, sub_100006FAC, a1, 0);
  }

  return result;
}

void sub_10000705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002662C(sub_100006F0C, a1, 0, a4, a5, a6, a7, a8);
  sub_10002662C(sub_100006FAC, a1, 0, v9, v10, v11, v12, v13);
  sub_1000046EC(*(a1 + 296), v14, v15, v16, v17, v18, v19, v20);
  free(*(a1 + 272));
  v21 = *a1;
  if (*a1)
  {
    do
    {
      v22 = *v21;
      free(v21);
      v21 = v22;
    }

    while (v22);
  }

  free(a1);
}

uint64_t sub_1000070F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    *(result + 72) = *a2;
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    *(result + 136) = *(a2 + 64);
    *(result + 120) = v11;
    *(result + 104) = v10;
    *(result + 88) = v9;
    if (sub_10000B5A4(result, a2, a3, a4, a5, a6, a7, a8))
    {
      sub_100016A20(4, "Could not generate WPA IE.", v12, v13, v14, v15, v16, v17, v27);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v18 = *v8;
      HIDWORD(v20) = *(v8 + 84) - 2;
      LODWORD(v20) = HIDWORD(v20);
      v19 = v20 >> 1;
      if (v19 <= 7 && ((0x8Bu >> v19) & 1) != 0)
      {
        *(v18 + 24) = dword_10002BB00[v19];
      }

      *(v18 + 12) = 1;
      sub_1000071B8(v8, v18, v12, v13, v14, v15, v16, v17);
      *(v18 + 12) = 0;
      sub_1000071B8(v8, v18, v21, v22, v23, v24, v25, v26);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000071B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 12))
  {
    sub_100016A20(1, "WPA: group state machine entering state GTK_INIT (VLAN-ID %d)", a3, a4, a5, a6, a7, a8, *(a2 + 8));
    *(a2 + 204) = 0;
    *(a2 + 72) = 0;
    *(a2 + 108) = 0u;
    *(a2 + 124) = 0u;
    *(a2 + 140) = 0u;
    *(a2 + 156) = 0u;
    *(a2 + 28) = 0x200000001;
    *(a2 + 240) = 0x500000004;

    return sub_100008B54(v9, a2);
  }

  v10 = *(a2 + 72);
  if (v10 != 2)
  {
    if (v10 != 1)
    {
      if (v10 || !*(a2 + 36))
      {
        return result;
      }

      goto LABEL_16;
    }

    if (!*(a2 + 16))
    {
LABEL_16:

      return sub_1000093C8(result, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (*(a2 + 20))
  {

    return sub_1000094C4(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

_WORD *sub_1000072E4(uint64_t *a1, int *a2)
{
  result = sub_100016754(0x260uLL);
  if (result)
  {
    v5 = *a2;
    result[10] = *(a2 + 2);
    *(result + 4) = v5;
    v6 = *a1;
    *result = a1;
    *(result + 1) = v6;
  }

  return result;
}

uint64_t sub_10000732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0xFFFFFFFFLL;
  if (!a2 || !*(a1 + 72))
  {
    return v9;
  }

  if ((*(a2 + 280) & 8) != 0)
  {
    *(a2 + 253) = 0;
    *(a2 + 237) = 0u;
    *(a2 + 221) = 0u;
    *(a2 + 35) = 1;
    goto LABEL_10;
  }

  sub_1000069F4(a1, (a2 + 16), 0, "start authentication");
  *(a2 + 280) |= 8u;
  v9 = 1;
  *(a2 + 32) = 1;
  if (sub_1000073E8(a2, v10, v11, v12, v13, v14, v15, v16))
  {
    return v9;
  }

  *(a2 + 32) = 0;
  *(a2 + 34) = 1;
LABEL_10:

  return sub_1000073E8(a2, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000073E8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if ((a1[280] & 2) != 0)
    {
      sub_100016A20(4, "WPA: wpa_sm_step() called recursively", a3, a4, a5, a6, a7, a8, v23);
    }

    else
    {
      v9 = a1[280] | 2;
      if ((a1[280] & 4) == 0)
      {
        while (1)
        {
          a1[280] = v9 & 0xFA;
          v10 = *a1;
          *(**a1 + 204) = 0;
          if (a1[32])
          {
LABEL_5:
            sub_100009610(a1, a2, a3, a4, a5, a6, a7, a8);
            goto LABEL_20;
          }

          if (a1[36])
          {
            goto LABEL_7;
          }

          if (a1[33])
          {
LABEL_9:
            sub_100009840(a1, a2, a3, a4, a5, a6, a7, a8);
            goto LABEL_20;
          }

          if (a1[34])
          {
            a1[280] |= 1u;
            v33 = a1[20];
            v36 = a1[21];
            v27 = a1[18];
            v30 = a1[19];
            v24 = a1[17];
            sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state AUTHENTICATION", a3, a4, a5, a6, a7, a8, a1[16]);
            *(a1 + 6) = 3;
            *(a1 + 150) = 0u;
            *(a1 + 166) = 0u;
            *(a1 + 182) = 0u;
            *(a1 + 198) = 0u;
            a1[214] = 0;
            v11 = *(*a1 + 176);
            if (v11)
            {
              v11(*(*a1 + 144), a1 + 16, 3, 1);
              v12 = *(*a1 + 176);
              if (v12)
              {
                v12(*(*a1 + 144), a1 + 16, 0, 1);
              }
            }

            a1[34] = 0;
            goto LABEL_20;
          }

          if (a1[35])
          {
            goto LABEL_16;
          }

          if (a1[258])
          {
            if ((sub_10000994C(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
            {
              goto LABEL_9;
            }

            goto LABEL_19;
          }

          v15 = *(a1 + 6);
          if (v15 > 5)
          {
            if (v15 <= 7)
            {
              if (v15 == 6)
              {
                v17 = *(v10 + 192);
                v18 = v10;
                if (!v17)
                {
                  goto LABEL_82;
                }

                if (!v17(*(v10 + 144), a1 + 16, 0))
                {
                  v18 = *a1;
LABEL_82:
                  sub_1000069F4(v18, a1 + 16, 1, "no PSK configured for the STA");
LABEL_83:
                  ++*(v10 + 56);
LABEL_7:
                  sub_100009784(a1, a2, a3, a4, a5, a6, a7, a8);
                  goto LABEL_20;
                }

                goto LABEL_19;
              }

              if (a1[49] && !a1[51] && a1[50])
              {
                goto LABEL_110;
              }

              if (*(a1 + 10) >= 5)
              {
                goto LABEL_83;
              }

              goto LABEL_98;
            }

            if (v15 == 8)
            {
              if (a1[52])
              {
                sub_10000A05C(a1, a2, a3, a4, a5, a6, a7, a8);
                goto LABEL_20;
              }

              if (a1[49] && !a1[51] && a1[50])
              {
LABEL_110:
                sub_100009D9C(a1, a2, a3, a4, a5, a6, a7, a8);
                goto LABEL_20;
              }

LABEL_98:
              if (a1[48])
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            }

            if (v15 == 9)
            {
              goto LABEL_70;
            }

            if (v15 != 10)
            {
              goto LABEL_20;
            }

            if (a1[49] && !a1[51] && a1[50] && a1[52])
            {
              sub_10000A3C4(a1, a2, a3, a4, a5, a6, a7, a8);
            }

            else
            {
              if (*(a1 + 10) >= 5)
              {
                goto LABEL_83;
              }

              if (a1[48])
              {
LABEL_70:
                sub_10000A0D0(a1, a2, a3, a4, a5, a6, a7, a8);
              }
            }
          }

          else if (v15 <= 2)
          {
            if (v15 == 1)
            {
              goto LABEL_9;
            }

            if (v15 == 2)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v15 == 3)
            {
LABEL_16:
              sub_1000098B4(a1, a2, a3, a4, a5, a6, a7, a8);
              goto LABEL_20;
            }

            if (v15 != 4)
            {
              v16 = *(v10 + 184);
              if ((!v16 || v16(*(v10 + 144), a1 + 16, 5) <= 0) && *(a1 + 80) != 1024)
              {
                goto LABEL_83;
              }

LABEL_19:
              sub_1000099BC(a1, a2, a3, a4, a5, a6, a7, a8);
              goto LABEL_20;
            }

            v19 = *(a1 + 80);
            if (v19 == 1 || v19 == 128 || v19 == 32)
            {
              v20 = *(v10 + 184);
              if (v20)
              {
                if (v20(*(v10 + 144), a1 + 16, 4) > 0)
                {
                  goto LABEL_102;
                }

                v19 = *(a1 + 80);
              }
            }

            if (v19 > 255)
            {
              if (v19 != 256)
              {
                if (v19 != 1024)
                {
                  goto LABEL_20;
                }

LABEL_102:
                sub_100009BA0(a1, a2, a3, a4, a5, a6, a7, a8);
                goto LABEL_20;
              }

LABEL_103:
              sub_100009CF8(a1, a2, a3, a4, a5, a6, a7, a8);
              goto LABEL_20;
            }

            if (v19 == 2 || v19 == 64)
            {
              goto LABEL_103;
            }
          }

LABEL_20:
          v9 = a1[280];
          if ((v9 & 4) != 0)
          {
            break;
          }

          if (a1[32] || a1[260])
          {
            sub_10000A718(a1, a2, a3, a4, a5, a6, a7, a8);
            a1[260] = 0;
          }

          else
          {
            v14 = *(a1 + 7);
            if (v14 > 1)
            {
              if (v14 == 2 || v14 == 3)
              {
                sub_10000A718(a1, a2, a3, a4, a5, a6, a7, a8);
              }

              goto LABEL_24;
            }

            if (!v14)
            {
              if (!a1[53] && (*(a1 + 78) != 1 || !a1[257]))
              {
                goto LABEL_24;
              }

LABEL_51:
              sub_10000A79C(a1, a2, a3, a4, a5, a6, a7, a8);
              goto LABEL_24;
            }

            if (v14 == 1)
            {
              if (a1[49] && !a1[51] && !a1[50] && a1[52])
              {
                sub_10000A9C4(a1, a2, a3, a4, a5, a6, a7, a8);
                goto LABEL_24;
              }

              if (*(a1 + 11) >= 5)
              {
                a1[280] = v9 | 1;
                v34 = a1[20];
                v37 = a1[21];
                v28 = a1[18];
                v31 = a1[19];
                v25 = a1[17];
                sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK_GROUP entering state KEYERROR", a3, a4, a5, a6, a7, a8, a1[16]);
                *(a1 + 7) = 3;
                if (a1[53])
                {
                  --*(*(a1 + 1) + 16);
                }

                a1[53] = 0;
                a1[36] = 1;
                goto LABEL_24;
              }

              if (a1[48])
              {
                goto LABEL_51;
              }
            }
          }

LABEL_24:
          v9 = a1[280];
          if ((v9 & 4) != 0)
          {
            break;
          }

          sub_1000071B8(*a1, *(a1 + 1), a3, a4, a5, a6, a7, a8);
          v9 = a1[280];
          if (v9)
          {
            if ((a1[280] & 4) != 0)
            {
              break;
            }
          }

          else
          {
            if (*(**a1 + 204))
            {
              v13 = (v9 & 4) == 0;
            }

            else
            {
              v13 = 0;
            }

            if (!v13)
            {
              break;
            }
          }
        }
      }

      a1[280] = v9 & 0xFD;
      if ((v9 & 4) != 0)
      {
        v35 = a1[20];
        v38 = a1[21];
        v29 = a1[18];
        v32 = a1[19];
        v26 = a1[17];
        v21 = 1;
        sub_100016A20(1, "WPA: Completing pending STA state machine deinit for %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, a1[16]);
        sub_100007BA8(a1);
        return v21;
      }
    }
  }

  return 0;
}

uint64_t sub_10000797C(uint64_t result)
{
  if (result)
  {
    *(result + 320) = 0;
  }

  return result;
}

void sub_100007988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*(*a1 + 92) && *(a1 + 259))
    {
      sub_10002662C(sub_100006FAC, v9, 0, a4, a5, a6, a7, a8);
      sub_100026404(0, 0x7A120u, sub_100006FAC, *a1, 0);
      v9 = *a1;
    }

    sub_10002662C(sub_100007AC0, v9, a1, a4, a5, a6, a7, a8);
    sub_10002662C(sub_100007B4C, a1, 0, v10, v11, v12, v13, v14);
    sub_10002662C(sub_100007B50, *a1, a1, v15, v16, v17, v18, v19);
    if ((*(a1 + 280) & 2) != 0)
    {
      v29 = *(a1 + 20);
      v30 = *(a1 + 21);
      v27 = *(a1 + 18);
      v28 = *(a1 + 19);
      v26 = *(a1 + 17);
      sub_100016A20(1, "WPA: Registering pending STA state machine deinit for %02x:%02x:%02x:%02x:%02x:%02x", v20, v21, v22, v23, v24, v25, *(a1 + 16));
      *(a1 + 280) |= 4u;
    }

    else
    {

      sub_100007BA8(a1);
    }
  }
}

uint64_t sub_100007AC0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return sub_100016A20(1, "%s: sm == NULL!", a3, a4, a5, a6, a7, a8, "wpa_send_eapol_timeout");
  }

  sub_1000069F4(a1, a2 + 16, 0, "EAPOL-Key timeout");
  a2[229] = 0;
  a2[48] = 1;

  return sub_1000073E8(a2);
}

uint64_t sub_100007B50(uint64_t a1, _BYTE *a2)
{
  sub_1000069F4(a1, a2 + 16, 0, "rekeying PTK");
  if (a2)
  {
    a2[258] = 1;
    a2[214] = 0;
  }

  return sub_1000073E8(a2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_100007BA8(void **a1)
{
  free(a1[33]);
  free(a1[37]);

  free(a1);
}

void sub_100007BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s2 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  if (!a1 || a4 < 0x63 || !a2 || !*(a1 + 72))
  {
    return;
  }

  v12 = __rev16(*(a3 + 97));
  if (a4 - 99 < v12)
  {
    sub_100016A20(2, "WPA: Invalid EAPOL-Key frame - key_data overflow (%d > %lu)", a3, a4, a5, a6, a7, a8, v12);
    return;
  }

  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  v15 = *(a3 + 4);
  if (*(a2 + 312) == 2)
  {
    if (v15 != 2)
    {
      sub_100016A20(1, "Ignore EAPOL-Key with unexpected type %d in RSN mode", a3, a4, a5, a6, a7, a8, *(a3 + 4));
      return;
    }
  }

  else if (v15 != 254)
  {
    sub_100016A20(1, "Ignore EAPOL-Key with unexpected type %d in WPA mode", a3, a4, a5, a6, a7, a8, *(a3 + 4));
    return;
  }

  if ((~v13 & 0x28) == 0)
  {
    v16 = (v13 & 4) >> 2;
    if ((v13 & 4) != 0)
    {
      v17 = 6;
    }

    else
    {
      v17 = 4;
    }

    if ((v13 & 4) != 0)
    {
      v18 = "SMK Error";
    }

    else
    {
      v18 = "SMK M1";
    }

    goto LABEL_25;
  }

  if ((v13 & 0x20) != 0)
  {
    LOBYTE(v16) = 0;
    v17 = 5;
    v18 = "SMK M3";
    goto LABEL_25;
  }

  if ((v13 & 8) != 0)
  {
    v18 = "Request";
    v17 = 3;
  }

  else if ((*(a3 + 6) & 8) != 0)
  {
    v17 = v12 == 0;
    if (v12)
    {
      v18 = "2/4 Pairwise";
    }

    else
    {
      v18 = "4/4 Pairwise";
    }
  }

  else
  {
    v18 = "2/2 Group";
    v17 = 2;
  }

  v41 = v14 & 7;
  v42 = *(a2 + 320);
  if (*(a2 + 316) != 16)
  {
    goto LABEL_84;
  }

  if (v42 != 256 && v42 != 128)
  {
    if (v42 != 1024 && v41 != 2)
    {
      v28 = "did not use HMAC-SHA1-AES with CCMP";
      goto LABEL_87;
    }

LABEL_84:
    LOBYTE(v16) = 0;
    if (v42 == 1024 && (v14 & 7) != 0)
    {
      v28 = "did not use EAPOL-Key descriptor version 0 as required for AKM-defined cases";
      goto LABEL_87;
    }

    goto LABEL_25;
  }

  if (v41 != 3)
  {
    v28 = "advertised support for AES-128-CMAC, but did not use it";
    goto LABEL_87;
  }

  LOBYTE(v16) = 0;
LABEL_25:
  if ((v13 & 8) != 0)
  {
    if (!*(a2 + 292) || ((v23 = bswap64(*(a3 + 9)), v24 = bswap64(*(a2 + 281)), v25 = v23 >= v24, v26 = v23 > v24, v25) ? (v27 = 0) : (v27 = 1), v26 - v27 > 0))
    {
LABEL_41:
      if (v17 > 3)
      {
        if ((v17 - 4) < 3)
        {
          return;
        }
      }

      else
      {
        if (!v17)
        {
          if ((*(a2 + 24) - 7) >= 2)
          {
            v70 = *(a2 + 24);
            sub_100006B7C(a1, (a2 + 16), 1, "received EAPOL-Key msg 2/4 in invalid state (%d) - dropped");
            return;
          }

          if ((sub_10000C160((a3 + 99), v12, v72, a4, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            sub_100006B7C(a1, (a2 + 16), 1, "received EAPOL-Key msg 2/4 with invalid Key Data contents");
            return;
          }

          v29 = &v72[1] + 1;
          v30 = *&v72[1];
          if (!*&v72[1])
          {
            v30 = *&v72[0];
          }

          v71 = v30;
          if (!*&v72[1])
          {
            v29 = v72 + 1;
          }

          v31 = *v29;
          if (*(a2 + 312) == 2)
          {
            v32 = *(a2 + 320);
            v34 = v32 == 64 || v32 == 32;
          }

          else
          {
            v34 = 0;
          }

          v49 = *(a2 + 296);
          if (v49 && !sub_10000D348(v34, v49, *(a2 + 304), v30, v31))
          {
            if (!*(a2 + 344) && !__s2)
            {
              goto LABEL_67;
            }

            if ((*(a2 + 344) == 0) == (__s2 == 0))
            {
              v66 = *(a2 + 345);
              if (*(&v75 + 1) == v66 && !memcmp((a2 + 344), __s2, v66 + 2))
              {
                goto LABEL_67;
              }
            }

            sub_1000069F4(a1, (a2 + 16), 1, "RSNXE from (Re)AssocReq did not match with msg 2/4");
          }

          else
          {
            sub_1000069F4(a1, (a2 + 16), 1, "WPA IE from (Re)AssocReq did not match with msg 2/4");
            v50 = *(a2 + 296);
            if (v50)
            {
              sub_100016A94(1, "WPA IE in AssocReq", v50, *(a2 + 304));
            }

            sub_100016A94(1, "WPA IE in msg 2/4", v71, v31);
          }

          v51 = *(a1 + 160);
          if (v51)
          {
            v51(*(a1 + 144), a2 + 16, 2);
          }

          return;
        }

        if (v17 == 1)
        {
          if (*(a2 + 24) != 10 || !*(a2 + 214))
          {
            v69 = *(a2 + 24);
            sub_100006B7C(a1, (a2 + 16), 1, "received EAPOL-Key msg 4/4 in invalid state (%d) - dropped");
            return;
          }
        }

        else if (v17 == 2 && (*(a2 + 28) != 1 || !*(a2 + 214)))
        {
          v68 = *(a2 + 28);
          sub_100006B7C(a1, (a2 + 16), 1, "received EAPOL-Key msg 2/2 in invalid state (%d) - dropped");
          return;
        }
      }

LABEL_67:
      sub_100006B7C(a1, (a2 + 16), 0, "received EAPOL-Key frame (%s)", v18);
      if (v14 < 0)
      {
        v40 = "received invalid EAPOL-Key: Key Ack set";
        goto LABEL_123;
      }

      if ((v13 & 1) == 0)
      {
        v40 = "received invalid EAPOL-Key: Key MIC not set";
LABEL_123:
        sub_1000069F4(a1, (a2 + 16), 1, v40);
        return;
      }

      *(a2 + 52) = 0;
      if (*(a2 + 214))
      {
        if (sub_100008338((a2 + 150), a3, a4))
        {
          v40 = "received EAPOL-Key with invalid MIC";
          goto LABEL_123;
        }

        *(a2 + 52) = 1;
        sub_10002662C(sub_100007AC0, a1, a2, v44, v45, v46, v47, v48);
      }

      if ((v13 & 8) != 0)
      {
        if (!*(a2 + 52))
        {
          v40 = "received EAPOL-Key request with invalid MIC";
          goto LABEL_123;
        }

        *(a2 + 292) = 1;
        *(a2 + 281) = *(a3 + 9);
        if (v16)
        {
          return;
        }

        if ((v13 & 4) != 0)
        {
          sub_1000069F4(a1, (a2 + 16), 1, "received EAPOL-Key Error Request (STA detected Michael MIC failure)");
          v67 = *(a1 + 168);
          if (v67)
          {
            v67(*(a1 + 144), a2 + 16);
          }

          ++*(a2 + 340);
          ++*(a1 + 8);
        }

        else
        {
          if ((v14 & 8) == 0)
          {
            if (!v12 || sub_10000C160((a3 + 99), v12, v72, v35, v36, v37, v38, v39) || !*(&v73 + 1))
            {
              sub_1000069F4(a1, (a2 + 16), 1, "received EAPOL-Key Request for GTK rekeying");
              sub_10002662C(sub_100006FAC, a1, 0, v61, v62, v63, v64, v65);
              sub_100006FAC(a1);
            }

            goto LABEL_106;
          }

          sub_1000069F4(a1, (a2 + 16), 1, "received EAPOL-Key Request for new 4-Way Handshake");
        }

        *(a2 + 258) = 1;
        *(a2 + 214) = 0;
      }

      else
      {
        *(a2 + 229) = 0;
      }

LABEL_106:
      free(*(a2 + 264));
      v52 = malloc_type_malloc(a4, 0xDEBF4281uLL);
      *(a2 + 264) = v52;
      if (v52)
      {
        memcpy(v52, a3, a4);
        *(a2 + 272) = a4;
        *(a2 + 49) = 1;
        *(a2 + 50) = (v14 & 8) != 0;
        *(a2 + 51) = (v13 & 8) >> 3;
        v53 = *(a3 + 17);
        *(a2 + 102) = *(a3 + 33);
        *(a2 + 86) = v53;
        sub_1000073E8(a2, v54, v55, v56, v57, v58, v59, v60);
      }

      return;
    }

    v28 = "received EAPOL-Key request with replayed counter";
LABEL_87:
    v43 = (a2 + 16);

    sub_1000069F4(a1, v43, 2, v28);
    return;
  }

  v19 = (a2 + 221);
  v20 = 4;
  v21 = a2 + 221;
  do
  {
    if (!*(v21 + 8))
    {
      break;
    }

    if (*(a3 + 9) == *v21)
    {
      goto LABEL_41;
    }

    v21 += 9;
    --v20;
  }

  while (v20);
  sub_100006B7C(a1, (a2 + 16), 1, "received EAPOL-Key %s with unexpected replay counter", v18);
  v22 = 4;
  do
  {
    if (!v19[8])
    {
      break;
    }

    sub_100016A94(1, "pending replay counter", v19, 8);
    v19 += 9;
    --v22;
  }

  while (v22);

  sub_100016A94(1, "received replay counter", (a3 + 9), 8);
}

uint64_t sub_100008338(char *a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 0x63)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 6);
  v7 = *(a2 + 81);
  *(a2 + 81) = 0;
  *(a2 + 89) = 0;
  if (!sub_10000C99C(a1, v5 & 7, a2, a3, (a2 + 81)) && (v7 == *(a2 + 81) ? (v6 = *(&v7 + 1) == *(a2 + 89)) : (v6 = 0), v6))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a2 + 81) = v7;
  return result;
}

void sub_1000083F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, const void *a6, size_t a7, uint64_t a8, int a9, unsigned int a10)
{
  v10 = a8;
  v13 = a3;
  v15 = a10;
  if (!a10)
  {
    v16 = *(a2 + 320);
    if (v16 == 128 || v16 == 256)
    {
      v15 = 3;
    }

    else if (v16 == 1024)
    {
      v15 = 0;
    }

    else if (*(a2 + 316) == 16)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  v17 = a3 & 8;
  sub_100016A20(1, "WPA: Send EAPOL(version=%d secure=%d mic=%d ack=%d install=%d pairwise=%d kde_len=%lu keyidx=%d encr=%d)", a3, a4, a5, a6, a7, a8, v15);
  if (v15 == 2)
  {
    if (!a9)
    {
LABEL_27:
      v51 = 1;
      v24 = a7;
      goto LABEL_28;
    }
  }

  else
  {
    v18 = *(a2 + 320);
    HIDWORD(v20) = v18 - 32;
    LODWORD(v20) = v18 - 32;
    v19 = v20 >> 5;
    v21 = v19 < 8 && ((0x8Bu >> v19) & 1) != 0 || v18 == 1024;
    if (v15 == 3)
    {
      v21 = 1;
    }

    if (!a9 || !v21)
    {
      goto LABEL_27;
    }
  }

  if (a7 <= 0)
  {
    v22 = -(-a7 & 7);
  }

  else
  {
    v22 = a7 & 7;
  }

  v23 = 8 - v22;
  if (!v22)
  {
    v23 = 0;
  }

  v24 = a7 + v23 + 8;
  v51 = v23 == 0;
LABEL_28:
  v25 = v24;
  v26 = sub_100016754(v24 + 99);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  *v26 = *(a1 + 112);
  v26[1] = 3;
  *(v26 + 1) = bswap32(v25 + 95) >> 16;
  v28 = *(a2 + 312) == 2;
  if (*(a2 + 312) == 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = -2;
  }

  v26[4] = v29;
  v30 = 16 * v10;
  if (v28)
  {
    v30 = 0;
  }

  if (a9 != 0 && v28)
  {
    v31 = v15 | v13 | 0x1000;
  }

  else
  {
    v31 = v15 | v13;
  }

  v32 = v31 | v30;
  v26[5] = (v31 | v30) >> 8;
  v26[6] = v31 | v30;
  v33 = (a2 + 316);
  if (!v17)
  {
    v33 = (a1 + 84);
  }

  HIDWORD(v35) = *v33 - 2;
  LODWORD(v35) = HIDWORD(v35);
  v34 = v35 >> 1;
  if (v34 <= 7 && ((0x8Bu >> v34) & 1) != 0)
  {
    v26[7] = 0;
    v26[8] = 0x1010101020100D05uLL >> (8 * v34);
  }

  if ((v32 & 0x2000) != 0)
  {
    *(v26 + 7) = 0;
  }

  v36 = (a2 + 256);
  v37 = 4;
  v38 = (a2 + 256);
  do
  {
    v39 = *(v38 - 9);
    v38 -= 9;
    *v36 = v39;
    *(v36 - 1) = *(v36 - 17);
    --v37;
    v36 = v38;
  }

  while (v37 > 1);
  sub_100015F04(a2 + 221, 8);
  *(v27 + 9) = *(a2 + 221);
  *(a2 + 229) = 1;
  if (a5)
  {
    v40 = *a5;
    *(v27 + 33) = a5[1];
    *(v27 + 17) = v40;
  }

  if (a4)
  {
    *(v27 + 65) = *a4;
  }

  if (a6 && !a9)
  {
    memcpy(v27 + 99, a6, a7);
    *(v27 + 97) = bswap32(a7) >> 16;
    goto LABEL_53;
  }

  if (!a6 || !a9)
  {
LABEL_53:
    if ((v32 & 0x100) != 0)
    {
      if (!*(a2 + 214))
      {
        sub_1000069F4(a1, (a2 + 16), 0, "PTK not valid when sending EAPOL-Key frame");
LABEL_73:
        free(v27);
        return;
      }

      sub_10000C99C((a2 + 150), v15, v27, v25 + 99, v27 + 81);
    }

    v41 = *(*a2 + 176);
    if (v41)
    {
      v41(*(*a2 + 144), a2 + 16, 7, 1);
    }

    v42 = *(a1 + 224);
    if (v42)
    {
      v42(*(a1 + 144), a2 + 16, v27, v25 + 99, *(a2 + 215));
    }

    goto LABEL_73;
  }

  v43 = sub_100016754(v25);
  if (v43)
  {
    v44 = v43;
    memcpy(v43, a6, a7);
    if (!v51)
    {
      v44[a7] = -35;
    }

    sub_100016B64(1, "Plaintext EAPOL-Key Key Data", v44, v25);
    if (v15 != 2)
    {
      v45 = *(a2 + 320);
      HIDWORD(v47) = v45 - 32;
      LODWORD(v47) = v45 - 32;
      v46 = v47 >> 5;
      if ((v46 > 7 || ((1 << v46) & 0x8B) == 0) && v15 != 3 && v45 != 1024)
      {
        *(v27 + 49) = *(*(a2 + 8) + 53);
        sub_100015F04(*(a2 + 8) + 37, 32);
        v50 = *(a2 + 166);
        v55[0] = *(v27 + 49);
        v55[1] = v50;
        memcpy(v27 + 99, v44, v25);
        sub_100026D64(v55, 0x20uLL, 0x100uLL, v27 + 99, v25);
LABEL_82:
        *(v27 + 97) = bswap32(v25) >> 16;
        free(v44);
        goto LABEL_53;
      }
    }

    v48 = v25 - 8;
    if (v25 < 8)
    {
      v48 = v25 - 1;
    }

    if (!sub_10000D748((a2 + 166), v48 >> 3, v44, (v27 + 99)))
    {
      goto LABEL_82;
    }

    free(v27);
    v49 = v44;
  }

  else
  {
    v49 = v27;
  }

  free(v49);
}

uint64_t sub_100008910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 214) = 0;
  *(a1 + 150) = 0u;
  *(a1 + 166) = 0u;
  *(a1 + 182) = 0u;
  *(a1 + 198) = 0u;
  v9 = *a1;
  v10 = *(*a1 + 208);
  if (v10)
  {
    v10(*(v9 + 144), 0, 0, a1 + 16, 0, &unk_10002CF03, 0);
    v9 = *a1;
  }

  *(a1 + 215) = 0;

  return sub_10002662C(sub_100007B50, v9, a1, a4, a5, a6, a7, a8);
}

uint64_t sub_1000089A4(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_100006B7C(*a1, (a1 + 16), 0, "event %d notification", a2);
  if ((a2 - 4) < 2)
  {
    if (*(a1 + 53))
    {
      --*(*(a1 + 8) + 16);
      *(a1 + 53) = 0;
      *(a1 + 260) = 1;
    }

    *(a1 + 35) = 1;
    *(a1 + 214) = 0;
    *(a1 + 150) = 0u;
    *(a1 + 166) = 0u;
    *(a1 + 182) = 0u;
    *(a1 + 198) = 0u;
    if (a2 == 5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((a2 - 2) <= 1)
  {
    *(a1 + 33) = 1;
LABEL_5:
    *(a1 + 214) = 0;
    *(a1 + 150) = 0u;
    *(a1 + 166) = 0u;
    *(a1 + 182) = 0u;
    *(a1 + 198) = 0u;
LABEL_10:
    sub_100008910(a1, v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_11;
  }

  if (a2 || (*(a1 + 280) & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_11:

  return sub_1000073E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100008AAC(uint64_t result)
{
  if (result)
  {
    return sub_100026404(0, 0, sub_100007B4C, result, 0);
  }

  return result;
}

uint64_t sub_100008AD8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    *(v2 + 28) = vrev64_s32(*(*result + 28));
    *(v2 + 240) = vrev64_s32(*(v2 + 240));
    sub_100008B54(result, v2);
    *(v2 + 28) = vrev64_s32(*(v2 + 28));
    *(v2 + 240) = vrev64_s32(*(v2 + 240));

    return sub_100008B54(v1, v2);
  }

  return result;
}

uint64_t sub_100008B54(uint64_t a1, uint64_t a2)
{
  *(a2 + 172) = *(a2 + 37);
  *(a2 + 188) = *(a2 + 53);
  sub_100015F04(a2 + 37, 32);
  v4 = *(a2 + 24);
  v5 = (a2 + 76 + 32 * *(a2 + 28));
  *v13 = *(a1 + 288);
  *&v13[4] = *(a1 + 292);
  *&v13[6] = *(a2 + 172);
  v14 = *(a2 + 188);
  sub_10000F628(a2 + 76, 0x20uLL, "Group key expansion", v13, 38, v5, v4);
  sub_100016B64(1, "GMK", (a2 + 76), 32);
  result = sub_100016B64(1, "GTK", v5, v4);
  if (*(a1 + 132))
  {
    if ((sub_1000164A4((a2 + 205 + 16 * *(a2 + 240) - 64), 0x10uLL) & 0x80000000) != 0)
    {
      sub_100016A20(2, "RSN: Failed to get new random IGTK", v7, v8, v9, v10, v11, v12, *v13);
    }

    return sub_100016B64(1, "IGTK", (a2 + 205 + 16 * *(a2 + 240) - 64), 16);
  }

  return result;
}

uint64_t sub_100008CAC(uint64_t a1, char *__str, size_t __size)
{
  if (!a1)
  {
    return 0;
  }

  v6 = "TRUE";
  if ((*(a1 + 72) & 2) != 0)
  {
    v7 = "TRUE";
  }

  else
  {
    v7 = "FALSE";
  }

  if (!*(a1 + 108))
  {
    v6 = "FALSE";
  }

  v8 = snprintf(__str, __size, "dot11RSNAOptionImplemented=TRUE\ndot11RSNAPreauthenticationImplemented=FALSE\ndot11RSNAEnabled=%s\ndot11RSNAPreauthenticationEnabled=%s\n", v7, v6);
  if ((v8 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = v8;
  if (__size <= v8)
  {
    return 0;
  }

  sub_100015F94(__stra, 33, (a1 + 24), 16);
  HIDWORD(v11) = *(a1 + 84) - 2;
  LODWORD(v11) = HIDWORD(v11);
  v10 = v11 >> 1;
  if (v10 > 7)
  {
    v25 = 0;
  }

  else
  {
    v25 = dword_10002BB20[v10];
  }

  v13 = *(a1 + 12);
  v14 = *(a1 + 16);
  v15 = *(a1 + 20);
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  v18 = *(a1 + 48);
  v26 = __size - v9;
  v19 = snprintf(&__str[v9], v26, "dot11RSNAConfigVersion=%u\ndot11RSNAConfigPairwiseKeysSupported=9999\ndot11RSNAConfigGroupRekeyStrict=%u\ndot11RSNAConfigGroupUpdateCount=%u\ndot11RSNAConfigPairwiseUpdateCount=%u\ndot11RSNAConfigGroupCipherSize=%u\ndot11RSNAConfigPMKLifetime=%u\ndot11RSNAConfigPMKReauthThreshold=%u\ndot11RSNAConfigNumberOfPTKSAReplayCounters=0\ndot11RSNAConfigSATimeout=%u\ndot11RSNAAuthenticationSuiteSelected=%02x-%02x-%02x-%d\ndot11RSNAPairwiseCipherSelected=%02x-%02x-%02x-%d\ndot11RSNAGroupCipherSelected=%02x-%02x-%02x-%d\ndot11RSNAPMKIDUsed=%s\ndot11RSNAAuthenticationSuiteRequested=%02x-%02x-%02x-%d\ndot11RSNAPairwiseCipherRequested=%02x-%02x-%02x-%d\ndot11RSNAGroupCipherRequested=%02x-%02x-%02x-%d\ndot11RSNATKIPCounterMeasuresInvoked=%u\ndot11RSNA4WayHandshakeFailures=%u\ndot11RSNAConfigNumberOfGTKSAReplayCounters=0\n", 1, *(a1 + 92) != 0, 4, 4, v25, 43200, 70, 60, HIBYTE(v13), BYTE2(v13), BYTE1(v13), v13, HIBYTE(v14), BYTE2(v14), BYTE1(v14), v14, HIBYTE(v15), BYTE2(v15), BYTE1(v15), v15, __stra, HIBYTE(v16), BYTE2(v16), BYTE1(v16), v16, HIBYTE(v17), BYTE2(v17), BYTE1(v17), v17, HIBYTE(v18), BYTE2(v18), BYTE1(v18), v18, *(a1 + 52), *(a1 + 56));
  if ((v19 & 0x80000000) == 0 && v26 > v19)
  {
    v20 = v19 + v9;
    v21 = __size - v20;
    v22 = snprintf(&__str[v20], v21, "hostapdWPAGroupState=%d\n", *(*a1 + 72));
    if (v21 <= v22 || v22 <= -1)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    return (v24 + v20);
  }

  return v9;
}

uint64_t sub_100008F30(uint64_t result, char *__str, size_t __size)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 312);
  if (v6 == 2)
  {
    v7 = 1027072;
  }

  else
  {
    if (v6 != 1)
    {
      return 0;
    }

    v7 = 5304832;
  }

  v8 = *(result + 316);
  if (v8 <= 3)
  {
    if (v8 == 1)
    {
      goto LABEL_17;
    }

    if (v8 == 2)
    {
      ++v7;
      goto LABEL_17;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (v8 == 4)
  {
    v7 += 5;
    goto LABEL_17;
  }

  if (v8 == 16)
  {
    v7 |= 4u;
    goto LABEL_17;
  }

  if (v8 != 8)
  {
    goto LABEL_16;
  }

  v7 += 2;
LABEL_17:
  v9 = *(result + 336);
  v10 = snprintf(__str, __size, "dot11RSNAStatsSTAAddress=%02x:%02x:%02x:%02x:%02x:%02x\ndot11RSNAStatsVersion=1\ndot11RSNAStatsSelectedPairwiseCipher=%02x-%02x-%02x-%d\ndot11RSNAStatsTKIPLocalMICFailures=%u\ndot11RSNAStatsTKIPRemoveMICFailures=%u\n", *(result + 16), *(result + 17), *(result + 18), *(result + 19), *(result + 20), *(result + 21), 0, HIWORD(v7), (v7 >> 8) & 0xFE, v7 & 7, *(result + 336), *(result + 340));
  if ((v10 & 0x80000000) != 0)
  {
    return 0;
  }

  v11 = v10;
  if (__size <= v10)
  {
    return 0;
  }

  v12 = __size - v10;
  v13 = snprintf(&__str[v10], v12, "hostapdWPAPTKState=%d\nhostapdWPAPTKGroupState=%d\n", *(v5 + 24), *(v5 + 28));
  if (v12 <= v13 || v13 <= -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  return v15 + v11;
}

uint64_t sub_100009098(uint64_t result)
{
  if (result)
  {
    ++*(result + 52);
  }

  return result;
}

BOOL sub_1000090AC(_BOOL8 result)
{
  if (result)
  {
    return *(result + 215) != 0;
  }

  return result;
}

uint64_t sub_1000090C8(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 320);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000090DC(uint64_t result)
{
  if (result)
  {
    return *(result + 312);
  }

  return result;
}

uint64_t sub_1000090E8(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 328) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 328) = 0;
  return result;
}

uint64_t sub_100009110(uint64_t result)
{
  if (result)
  {
    return *(result + 328);
  }

  return result;
}

uint64_t sub_10000911C(uint64_t result)
{
  if (result)
  {
    ++*(result + 336);
  }

  return result;
}

uint64_t sub_100009130(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result + 272;
    result = *(result + 272);
    *a2 = *(v2 + 8);
  }

  return result;
}

uint64_t sub_100009140(_DWORD *a1, void *a2, int a3, uint64_t a4)
{
  if (!a1 || a1[78] != 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_100004204(*(*a1 + 296), a2, 0x20uLL, 0, *a1 + 288, (a1 + 4), a3, a4, a1[80]))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000091B0(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_100004204(*(a1 + 296), a2, a3, 0, a1 + 288, a4, a5, a6, 1))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000920C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *result;
    if (*result)
    {
      v10 = a2;
      v11 = *result;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        if (*(v11 + 2) == a2)
        {
          goto LABEL_10;
        }
      }

      if (!*v9)
      {
        return 0xFFFFFFFFLL;
      }

      sub_100016A20(1, "WPA: Add group state machine for VLAN-ID %d", a3, a4, a5, a6, a7, a8, a2);
      v12 = sub_100006D8C(v9, v10);
      if (!v12)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = v12;
      v13 = *v9;
      *v12 = **v9;
      *v13 = v12;
LABEL_10:
      if (*(v8 + 8) == v11)
      {
        return 0;
      }

      v18 = *(v8 + 21);
      v16 = *(v8 + 19);
      v17 = *(v8 + 20);
      v14 = *(v8 + 17);
      v15 = *(v8 + 18);
      sub_100016A20(1, "WPA: Moving STA %02x:%02x:%02x:%02x:%02x:%02x to use group state machine for VLAN ID %d", a3, a4, a5, a6, a7, a8, *(v8 + 16));
      result = 0;
      *(v8 + 8) = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100009308(uint64_t a1, void *a2, size_t a3, _OWORD *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 296);
  if (!v9)
  {
    v10 = 4294967294;
    v11 = "%s: NULL PMKSA for %02X:%02X:%02X:%02X:%02X:%02X";
LABEL_6:
    v17 = a6[4];
    v18 = a6[5];
    v15 = a6[2];
    v16 = a6[3];
    v13 = *a6;
    v14 = a6[1];
    sub_100016A20(4, v11, a3, a4, a5, a6, a7, a8, "wpa_auth_pmksa_sae_add");
    return v10;
  }

  if (!sub_100004204(v9, a2, a3, a4, a5, a6, a7, 0, 1024))
  {
    v10 = 0xFFFFFFFFLL;
    v11 = "%s: failed to add PMKSA for %02X:%02X:%02X:%02X:%02X:%02X";
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1000093B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) == a2)
  {
    *(a1 + 328) = 0;
  }

  return 0;
}

uint64_t sub_1000093C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100016A20(1, "WPA: group state machine entering state SETKEYSDONE (VLAN-ID %d)", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  *(a2 + 204) = 1;
  *(a2 + 72) = 2;
  HIDWORD(v12) = *(a1 + 84) - 2;
  LODWORD(v12) = HIDWORD(v12);
  v11 = v12 >> 1;
  if (v11 > 7)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_10002BB40[v11];
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    v16 = *(a2 + 24);
    v15 = *(a2 + 28);
    result = v14(*(a1 + 144), *(a2 + 8), v13, 0);
  }

  if (*(a1 + 132))
  {
    v17 = *(a1 + 208);
    if (v17)
    {
      v18 = *(a2 + 8);
      v19 = *(a1 + 144);
      v20 = a2 + 16 * *(a2 + 240) + 141;

      return v17(v19, v18, 4, 0);
    }
  }

  return result;
}

uint64_t sub_1000094C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "WPA: group state machine entering state SETKEYS (VLAN-ID %d)", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  *(a2 + 204) = 1;
  *(a2 + 72) = 1;
  *(a2 + 20) = 0;
  *(a2 + 28) = vrev64_s32(*(a2 + 28));
  *(a2 + 240) = vrev64_s32(*(a2 + 240));
  sub_100008B54(a1, a2);
  v16 = *(a1 + 248);
  if (v16)
  {
    v16(*(a1 + 144), sub_100009580, 0);
  }

  return sub_100016A20(1, "wpa_group_setkeys: GKeyDoneStations=%d", v10, v11, v12, v13, v14, v15, *(a2 + 16));
}

uint64_t sub_100009580(uint64_t a1)
{
  if (*(a1 + 24) == 11)
  {
    if (*(a1 + 53))
    {
      sub_1000069F4(*a1, (a1 + 16), 0, "GUpdateStationKeys already set - do not increment GKeyDoneStations");
    }

    else
    {
      ++*(*(a1 + 8) + 16);
      *(a1 + 53) = 1;
    }

    sub_1000073E8(a1);
  }

  else
  {
    sub_1000069F4(*a1, (a1 + 16), 0, "Not in PTKINITDONE; skip Group Key update");
  }

  return 0;
}

uint64_t sub_100009610(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 4;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v20 = *(a1 + 20);
  v21 = *(a1 + 21);
  v18 = *(a1 + 18);
  v19 = *(a1 + 19);
  v17 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state INITIALIZE", a3, a4, a5, a6, a7, a8, v9);
  v10[2] = 0;
  if (*(v10 + 16))
  {
    *(a1 + 280) &= ~1u;
  }

  a1[54] = 0;
  if (*(a1 + 53))
  {
    --*(*(a1 + 1) + 16);
  }

  *(a1 + 53) = 0;
  if (a1[78] == 1)
  {
    *(a1 + 257) = 0;
  }

  *(a1 + 220) = 1;
  v11 = *(*a1 + 176);
  if (v11)
  {
    v11(*(*a1 + 144), v10, 0, 0);
  }

  result = sub_100008910(a1);
  v13 = *(*a1 + 176);
  if (v13)
  {
    result = v13(*(*a1 + 144), v10, 1, 0);
  }

  a1[10] = 0;
  v14 = a1[80];
  if (v14 > 255)
  {
    if (v14 != 1024 && v14 != 256)
    {
      return result;
    }
  }

  else if (v14 != 2 && v14 != 64)
  {
    return result;
  }

  v15 = *(*a1 + 176);
  if (v15)
  {
    v16 = *(*a1 + 144);

    return v15(v16, v10, 2, 0);
  }

  return result;
}

uint64_t sub_100009784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v17 = *(a1 + 20);
  v18 = *(a1 + 21);
  v15 = *(a1 + 18);
  v16 = *(a1 + 19);
  v14 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state DISCONNECT", a3, a4, a5, a6, a7, a8, v9);
  *(a1 + 24) = 1;
  *(a1 + 36) = 0;
  v12 = *(*a1 + 160);
  if (v12)
  {
    v13 = *(*a1 + 144);

    return v12(v13, v10, 2);
  }

  return result;
}

uint64_t sub_100009840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 280) |= 1u;
  v13 = *(a1 + 20);
  v14 = *(a1 + 21);
  v11 = *(a1 + 18);
  v12 = *(a1 + 19);
  v10 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state DISCONNECTED", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a1 + 24) = 2;
  *(a1 + 33) = 0;
  return result;
}

uint64_t sub_1000098B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 280) |= 1u;
  v15 = *(a1 + 20);
  v16 = *(a1 + 21);
  v13 = *(a1 + 18);
  v14 = *(a1 + 19);
  v12 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state AUTHENTICATION2", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a1 + 24) = 4;
  v9 = *(a1 + 8);
  v10 = *(v9 + 53);
  *(a1 + 54) = *(v9 + 37);
  *(a1 + 70) = v10;
  result = sub_100015F04(v9 + 37, 32);
  *(a1 + 35) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10000994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_10000DC68((a1 + 54), 0x20uLL, a3, a4, a5, a6, a7, a8))
  {
    sub_100016A20(4, "WPA: Failed to get random data for ANonce", v9, v10, v11, v12, v13, v14, v16);
    *(a1 + 36) = 1;
    return 0xFFFFFFFFLL;
  }

  else
  {
    sub_100016A94(1, "WPA: Assign new ANonce", (a1 + 54), 32);
    result = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_1000099BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v24 = *(a1 + 20);
  v25 = *(a1 + 21);
  v22 = *(a1 + 18);
  v23 = *(a1 + 19);
  v21 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state PTKSTART", a3, a4, a5, a6, a7, a8, v9);
  *(v10 + 8) = 7;
  *(v10 + 242) = 0;
  *(v10 + 32) = 0;
  v12 = *(v10 + 24);
  *(v10 + 24) = v12 + 1;
  if (v12 <= 3)
  {
    sub_1000069F4(*a1, v10, 0, "sending 1/4 msg of 4-Way Handshake");
    if (*(a1 + 312) == 2)
    {
      v13 = 0;
      v14 = *(a1 + 320);
      if (v14 > 127)
      {
        if (v14 != 1024)
        {
          v15 = 0;
          if (v14 != 128)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v14 != 1)
      {
        v15 = 0;
        if (v14 != 32)
        {
          goto LABEL_23;
        }
      }

      v26 = 251663581;
      v27 = 1196;
      v16 = *(a1 + 328);
      if (v16)
      {
        v28 = *(v16 + 16);
        v13 = &v26;
      }

      else
      {
        v13 = &v26;
        v19 = v14 == 128 || v14 == 1024 || v14 == 256;
        sub_10000D138((a1 + 118), 0x20uLL, *a1 + 288, v10, &v28, v19);
      }

      v15 = 22;
      goto LABEL_23;
    }

    v13 = 0;
    v15 = 0;
LABEL_23:
    v20 = *a1;
    sub_1000083F4(*a1, a1, 136, 0, (a1 + 54), v13, v15, 0, 0, 0);
    return sub_100026404(1u, 0, sub_100007AC0, v20, a1);
  }

  return result;
}

uint64_t sub_100009BA0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 64;
  v10 = a1 + 4;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v27 = *(a1 + 20);
  v28 = *(a1 + 21);
  v25 = *(a1 + 18);
  v26 = *(a1 + 19);
  v24 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state INITPMK", a3, a4, a5, a6, a7, a8, v9);
  v10[2] = 5;
  if (*(v10 + 39))
  {
    result = sub_100016A20(1, "WPA: PMK from PMKSA cache", v11, v12, v13, v14, v15, v16, v23);
    v18 = *(a1 + 41);
    v19 = *(v18 + 48);
    *(a1 + 118) = *(v18 + 32);
    *(a1 + 134) = v19;
  }

  else
  {
    v20 = *(*a1 + 200);
    if (v20 && !v20(*(*a1 + 144), v10, v30, &v29))
    {
      result = sub_100016A20(1, "WPA: PMK from EAPOL state machine (len=%lu)", v11, v12, v13, v14, v15, v16, v29);
      v21 = v30[1];
      *(a1 + 118) = v30[0];
      *(a1 + 134) = v21;
    }

    else
    {
      result = sub_100016A20(1, "WPA: Could not get PMK", v11, v12, v13, v14, v15, v16, v23);
    }
  }

  a1[73] = 0;
  v22 = *(*a1 + 176);
  if (v22)
  {
    return v22(*(*a1 + 144), v10, 4, 0);
  }

  return result;
}

__int128 *sub_100009CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v17 = *(a1 + 20);
  v18 = *(a1 + 21);
  v15 = *(a1 + 18);
  v16 = *(a1 + 19);
  v14 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state INITPSK", a3, a4, a5, a6, a7, a8, v9);
  *(a1 + 24) = 6;
  v12 = *(*a1 + 192);
  if (v12)
  {
    result = v12(*(*a1 + 144), v10, 0);
    if (result)
    {
      v13 = *result;
      *(a1 + 134) = result[1];
      *(a1 + 118) = v13;
    }
  }

  *(a1 + 292) = 0;
  return result;
}

double sub_100009D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v34 = *(a1 + 20);
  v35 = *(a1 + 21);
  v32 = *(a1 + 18);
  v33 = *(a1 + 19);
  *v31 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state PTKCALCNEGOTIATING", a3, a4, a5, a6, a7, a8, v9);
  v11 = 0;
  v12 = 0;
  *(v10 + 8) = 8;
  *(v10 + 33) = 0;
  do
  {
    v13 = *(a1 + 320);
    if (v13 > 255)
    {
      if (v13 == 1024)
      {
        v11 = 1;
        v14 = "PMK for SAE STA";
        goto LABEL_12;
      }

      if (v13 != 256)
      {
        goto LABEL_5;
      }
    }

    else if (v13 != 2 && v13 != 64)
    {
LABEL_5:
      v14 = "PMK for enterprise STA";
LABEL_12:
      sub_1000069F4(*a1, v10, 0, v14);
      v17 = 1;
      v12 = v10 + 102;
      goto LABEL_13;
    }

    v15 = *a1;
    v16 = *(*a1 + 192);
    if (!v16)
    {
      sub_1000069F4(v15, v10, 0, "PMK for WPA STA");
      goto LABEL_24;
    }

    v12 = v16(*(v15 + 144), v10, v12);
    sub_1000069F4(*a1, v10, 0, "PMK for WPA STA");
    if (!v12)
    {
      goto LABEL_24;
    }

    v17 = 0;
LABEL_13:
    if (*(a1 + 316) == 16)
    {
      v18 = 48;
    }

    else
    {
      v18 = 64;
    }

    sub_10000CAC4(v12, 0x20uLL, "Pairwise key expansion", (*a1 + 288), v10, (v10 + 38), (v10 + 70), &v36, v18, v11);
    v19 = sub_100008338(&v36, *(a1 + 264), *(a1 + 272));
  }

  while ((v17 & 1) == 0 && v19);
  if (!v19)
  {
    sub_1000069F4(*a1, v10, 0, "MIC OK");
    sub_10002662C(sub_100007AC0, *a1, a1, v20, v21, v22, v23, v24);
    v25 = *(a1 + 320);
    if (v25 > 255)
    {
      if (v25 != 1024 && v25 != 256)
      {
        goto LABEL_29;
      }
    }

    else if (v25 != 2 && v25 != 64)
    {
      goto LABEL_29;
    }

    v28 = *(v12 + 16);
    *(v10 + 102) = *v12;
    *(v10 + 118) = v28;
LABEL_29:
    *(a1 + 52) = 1;
    v29 = v37;
    *(a1 + 150) = v36;
    *(a1 + 166) = v29;
    result = *&v38;
    v30 = v39;
    *(a1 + 182) = v38;
    *(a1 + 198) = v30;
    *(a1 + 214) = 1;
    return result;
  }

LABEL_24:
  sub_1000069F4(*a1, v10, 0, "PTK derivation not verified");
  v27 = *(*a1 + 160);
  if (v27)
  {
    v27(*(*a1 + 144), v10, 2);
  }

  return result;
}

uint64_t sub_10000A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 280) |= 1u;
  v13 = *(a1 + 20);
  v14 = *(a1 + 21);
  v11 = *(a1 + 18);
  v12 = *(a1 + 19);
  v10 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state PTKCALCNEGOTIATING2", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a1 + 24) = 9;
  *(a1 + 40) = 0;
  return result;
}

void sub_10000A0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v11 = (a1 + 16);
  v10 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v41 = *(a1 + 20);
  v42 = *(a1 + 21);
  v39 = *(a1 + 18);
  v40 = *(a1 + 19);
  v38 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state PTKINITNEGOTIATING", a3, a4, a5, a6, a7, a8, v10);
  *(a1 + 24) = 10;
  v12 = *a1;
  *(a1 + 48) = 0;
  v13 = *(a1 + 40);
  *(a1 + 40) = v13 + 1;
  if (v13 <= 3)
  {
    v45 = 0;
    v14 = *(v12 + 216);
    v15 = v12;
    if (v14)
    {
      v14(*(v12 + 144), 0, *(v9 + 28), &v45);
      v15 = *a1;
    }

    v16 = *(v15 + 272);
    v17 = *(v15 + 280);
    if (*(a1 + 312) == 1 && (*(v15 + 72) & 2) != 0)
    {
      v18 = v16[1];
      if (v18 + 2 < v17 && *v16 == 48)
      {
        v19 = &v16[v18];
        v16 = v19 + 2;
        v17 = v19[3] + 2;
      }
    }

    sub_1000069F4(v15, v11, 0, "sending 3/4 msg of 4-Way Handshake");
    sub_100006B7C(*a1, v11, 0, "sending 3/4 msg of 4-Way Handshake %x %x %x ", *(a1 + 344), *(a1 + 345), *(a1 + 346));
    v20 = *(a1 + 312);
    if (v20 == 2)
    {
      v22 = *(v9 + 24);
      v21 = *(v9 + 28);
      v23 = (v9 + 32 * v21 + 76);
      v24 = 1;
      v43 = &v45;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v43 = 0;
      v21 = 0;
      v24 = 0;
    }

    if ((*(a1 + 280) & 0x10) != 0)
    {
      v25 = sub_10000D388(32) + 14;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + v17;
    v27 = v22 + 8;
    if (!v23)
    {
      v27 = 0;
    }

    v28 = v27 + v26;
    v30 = *(v12 + 137);
    v29 = (v12 + 137);
    if (v30)
    {
      v31 = v28 + 7;
    }

    else
    {
      v31 = v28;
    }

    v32 = malloc_type_malloc(v31, 0xDDD9B871uLL);
    if (v32)
    {
      v33 = v32;
      memcpy(v32, v16, v17);
      v34 = &v33[v17];
      if (v23)
      {
        __src[0] = v21 & 3;
        __src[1] = 0;
        v34 = sub_10000B7FC(&v33[v17], 1027073, __src, 2uLL, v23, v22);
      }

      v35 = sub_10000A60C(a1, v34);
      if (*v29)
      {
        v35 = sub_10000B7FC(v35, 1349491232, v29, 1uLL, 0, 0);
      }

      v36 = *a1;
      if (v20 == 2)
      {
        v37 = 968;
      }

      else
      {
        v37 = 456;
      }

      sub_1000083F4(v36, a1, v37, v43, (a1 + 54), v33, v35 - v33, v21, v24, 0);
      sub_100026404(1u, 0, sub_100007AC0, v36, a1);
      free(v33);
    }
  }
}

void sub_10000A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v33 = *(a1 + 20);
  v34 = *(a1 + 21);
  v31 = *(a1 + 18);
  v32 = *(a1 + 19);
  v30 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK entering state PTKINITDONE", a3, a4, a5, a6, a7, a8, v9);
  *(v10 + 8) = 11;
  *(v10 + 33) = 0;
  if (!*(v10 + 204))
  {
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = *(*a1 + 208);
  if (!v12 || (*(a1 + 316) != 8 ? (v13 = 16) : (v13 = 32), *(a1 + 316) == 8 ? (v14 = 2) : (v14 = 3), v15 = v12(*(v11 + 144), 0, v14, v10, 0, a1 + 182, v13), v11 = *a1, v15))
  {
    v21 = *(v11 + 160);
    if (v21)
    {
      v22 = *(v11 + 144);

      v21(v22, v10, 2);
    }

    return;
  }

  *(a1 + 215) = 1;
  if (*(v11 + 100))
  {
    sub_10002662C(sub_100007B50, v11, a1, v16, v17, v18, v19, v20);
    sub_100026404(*(*a1 + 100), 0, sub_100007B50, *a1, a1);
  }

  v23 = *(a1 + 320);
  if (v23 > 255)
  {
    if (v23 != 1024 && v23 != 256)
    {
      goto LABEL_24;
    }

LABEL_22:
    v24 = *(*a1 + 176);
    if (v24)
    {
      v24(*(*a1 + 144), v10, 2, 1);
    }

    goto LABEL_24;
  }

  if (v23 == 2 || v23 == 64)
  {
    goto LABEL_22;
  }

LABEL_24:
  v25 = *(*a1 + 176);
  if (v25)
  {
    v25(*(*a1 + 144), v10, 1, 1);
    v26 = *(*a1 + 176);
    if (v26)
    {
      v26(*(*a1 + 144), v10, 5, 0);
      v27 = *(*a1 + 176);
      if (v27)
      {
        v27(*(*a1 + 144), v10, 6, 1);
      }
    }
  }

  v28 = 259;
  if (*(a1 + 312) == 1)
  {
    v28 = 257;
    v29 = "WPA";
  }

  else
  {
    v29 = "RSN";
  }

  *(a1 + v28) = 1;
  sub_100006B7C(*a1, v10, 1, "pairwise key handshake completed (%s)", v29);
}

char *sub_10000A60C(_BYTE *a1, _BYTE *a2)
{
  v4 = *(a1 + 1);
  v5 = sub_10000D388(32);
  if ((a1[280] & 0x10) != 0)
  {
    v6 = v5;
    memset(&v9[1], 0, 38);
    v9[0] = *(v4 + 240);
    if (*(v4 + 72) != 2 || (v7 = *(*a1 + 216)) == 0 || (v7(*(*a1 + 144), 0) & 0x80000000) != 0)
    {
      v9[3] = 0;
      *&v9[1] = 0;
    }

    *&v9[4] = *(v4 + 16 * *(v4 + 240) + 141);
    return sub_10000B7FC(a2, 1027081, v9, v6 + 8, 0, 0);
  }

  return a2;
}

uint64_t sub_10000A718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 280) |= 1u;
  v13 = *(a1 + 20);
  v14 = *(a1 + 21);
  v11 = *(a1 + 18);
  v12 = *(a1 + 19);
  v10 = *(a1 + 17);
  result = sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK_GROUP entering state IDLE", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  *(a1 + 28) = 0;
  if (*(a1 + 32))
  {
    *(a1 + 280) &= ~1u;
  }

  *(a1 + 44) = 0;
  return result;
}

void sub_10000A79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v11 = a1 + 16;
  v10 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v29 = *(a1 + 20);
  v30 = *(a1 + 21);
  v27 = *(a1 + 18);
  v28 = *(a1 + 19);
  v26 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK_GROUP entering state REKEYNEGOTIATING", a3, a4, a5, a6, a7, a8, v10);
  *(v11 + 12) = 1;
  v12 = *(v11 + 28);
  *(v11 + 28) = v12 + 1;
  if (v12 > 3)
  {
    return;
  }

  if (*(a1 + 312) == 1)
  {
    *(a1 + 257) = 0;
  }

  *(a1 + 48) = 0;
  v32 = 0;
  v13 = *a1;
  if (*(v9 + 72) == 2)
  {
    v14 = *(v13 + 216);
    if (v14)
    {
      v14(*(v13 + 144), 0, *(v9 + 28), &v32);
      v13 = *a1;
    }
  }

  sub_1000069F4(v13, v11, 0, "sending 1/2 msg of Group Key Handshake");
  if (*(a1 + 312) != 2)
  {
    v17 = *(v9 + 28);
    v18 = (v9 + 32 * v17 + 76);
    v19 = &v18[*(v9 + 24)];
LABEL_14:
    v24 = *a1;
    if (*(a1 + 220))
    {
      v25 = 896;
    }

    else
    {
      v25 = 960;
    }

    sub_1000083F4(v24, a1, v25, &v32, (v9 + 172), v18, v19 - v18, v17, 1, 0);
    sub_100026404(1u, 0, sub_100007AC0, v24, a1);
    if (*(a1 + 312) == 2)
    {
      free(v18);
    }

    return;
  }

  v15 = *(v9 + 24) + 8;
  if ((*(a1 + 280) & 0x10) != 0)
  {
    v16 = sub_10000D388(32) + 14;
  }

  else
  {
    v16 = 0;
  }

  v20 = malloc_type_malloc(v15 + v16, 0x7B8DAE73uLL);
  if (v20)
  {
    v18 = v20;
    v21 = *(v9 + 24);
    v22 = *(v9 + 28);
    __src[0] = v22 & 3;
    __src[1] = 0;
    v23 = sub_10000B7FC(v20, 1027073, __src, 2uLL, (v9 + 32 * v22 + 76), v21);
    v19 = sub_10000A60C(a1, v23);
    v17 = *(v9 + 28);
    goto LABEL_14;
  }
}

void sub_10000A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  *(a1 + 280) |= 1u;
  v15 = *(a1 + 20);
  v16 = *(a1 + 21);
  v13 = *(a1 + 18);
  v14 = *(a1 + 19);
  v12 = *(a1 + 17);
  sub_100016A20(1, "WPA: %02x:%02x:%02x:%02x:%02x:%02x WPA_PTK_GROUP entering state REKEYESTABLISHED", a3, a4, a5, a6, a7, a8, v9);
  *(v10 + 12) = 2;
  *(v10 + 33) = 0;
  if (*(v10 + 37))
  {
    --*(*(a1 + 8) + 16);
  }

  *(a1 + 53) = 0;
  *(a1 + 44) = 0;
  if (*(a1 + 312) == 1)
  {
    v11 = "WPA";
  }

  else
  {
    v11 = "RSN";
  }

  sub_100006B7C(*a1, v10, 1, "group key handshake completed (%s)", v11);
  *(a1 + 259) = 1;
}

uint64_t sub_10000AAA4(uint64_t a1)
{
  v46 = 0;
  v23 = 0;
  v2 = *(a1 + 16);
  *&v3 = *(v2 + 484);
  *(&v3 + 1) = *(v2 + 504);
  v4 = *(v2 + 512);
  v39[0] = v3;
  v39[1] = v4;
  v40 = *(v2 + 528);
  v5 = *(v2 + 544);
  v41 = *(v2 + 76);
  v42 = v5;
  v43 = *(v2 + 708);
  v6 = *(v2 + 744);
  LOWORD(v46) = *(v2 + 752);
  LODWORD(v2) = *(v2 + 492);
  v44 = v6;
  v45 = v2;
  *&v24 = a1;
  *(&v24 + 1) = sub_10000AC98;
  v25 = sub_10000ACE4;
  v26 = sub_10000AD7C;
  v27 = sub_10000AD84;
  v28 = sub_10000AF00;
  v29 = sub_10000AF58;
  v30 = sub_10000AF60;
  v31 = sub_10000AFE8;
  v32 = sub_10000B07C;
  v33 = sub_10000B094;
  v34 = sub_10000B09C;
  v35 = sub_10000B0A4;
  v36 = sub_10000B0AC;
  v37 = sub_10000B108;
  v38 = sub_10000B15C;
  v7 = sub_100006C28((a1 + 28), v39, &v24);
  *(a1 + 2624) = v7;
  if (!v7)
  {
    v20 = "WPA initialization failed.";
LABEL_7:
    sub_100016A20(4, v20, v8, v9, v10, v11, v12, v13, v22);
    return 0xFFFFFFFFLL;
  }

  if (!sub_100001DB0(a1))
  {
    sub_100009130(*(a1 + 2624), &v23);
    result = sub_100001DD0(a1);
    if (!result)
    {
      return result;
    }

    v20 = "Failed to configure WPA IE for the kernel driver.";
    goto LABEL_7;
  }

  sub_100016A20(4, "Could not set PrivacyInvoked for interface %s", v14, v15, v16, v17, v18, v19, *(a1 + 16));
  return 0xFFFFFFFFLL;
}

void sub_10000AC98(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 1)
  {
    LODWORD(v8) = 2;
  }

  else
  {
    LODWORD(v8) = 1;
  }

  if (a3 == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = v8;
  }

  sub_100016EE4(a1, a2, 8, v8, "%s", a6, a7, a8, a4);
}

uint64_t sub_10000ACE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a2[5];
  v19 = a2[3];
  v20 = a2[4];
  v17 = a2[1];
  v18 = a2[2];
  v16 = *a2;
  sub_100016A20(1, "%s: WPA authenticator requests disconnect: STA %02x:%02x:%02x:%02x:%02x:%02x reason %d", a3, a4, a5, a6, a7, a8, "hostapd_wpa_auth_disconnect");

  return sub_100005AB4(a1, 0, a2, a3, v11, v12, v13, v14);
}

void sub_10000AD84(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_100004A40(a1, a2);
  if (v7)
  {
    if (a3 > 3)
    {
      if (a3 > 5)
      {
        if (a3 == 6)
        {
          v19 = *(v7 + 88);
          if (v19)
          {
            *(v19 + 25) = a4 != 0;
          }
        }

        else if (a3 == 7)
        {
          v16 = *(v7 + 88);
          if (v16)
          {
            ++*(v16 + 176);
          }
        }
      }

      else if (a3 == 4)
      {
        v18 = *(v7 + 88);
        if (v18)
        {
          *(v18 + 26) = a4 != 0;
        }
      }

      else
      {
        v14 = *(v7 + 88);
        if (v14)
        {
          *(*(v14 + 232) + 72) = a4 != 0;
        }
      }
    }

    else if (a3 > 1)
    {
      if (a3 == 2)
      {

        sub_10001F578(a1, v7, a4, v8, v9, v10, v11, v12);
      }

      else
      {
        v15 = *(v7 + 88);
        if (v15)
        {
          *(v15 + 28) = 2;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v13 = *(v7 + 88);

        sub_100020C98(v13, a4);
      }
    }

    else
    {
      v17 = *(v7 + 88);

      sub_100020C7C(v17, a4);
    }
  }
}

uint64_t sub_10000AF00(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_100004A40(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 88);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 != 5)
  {
    if (a3 == 4)
    {
      return *(v5 + 26);
    }

    return 0xFFFFFFFFLL;
  }

  return *(*(v5 + 232) + 72);
}

uint64_t sub_10000AF60(uint64_t a1, uint64_t a2, void *a3, size_t *a4)
{
  v6 = sub_100004A40(a1, a2);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  __n = 0;
  v7 = sub_100020C68(*(v6 + 88), &__n);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = __n;
  v9 = *a4;
  if (__n > *a4)
  {
    __n = *a4;
    v8 = v9;
  }

  memcpy(a3, v7, v8);
  result = 0;
  *a4 = v8;
  return result;
}

uint64_t sub_10000AFE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  if (a2 < 1)
  {
    return (*(a1 + 2416))(v13, a1, a3, a4, a5, 1, 0, 0, a6, a7);
  }

  v13 = sub_100001474(v13[90], a2);
  if (v13)
  {
    return (*(a1 + 2416))(v13, a1, a3, a4, a5, 1, 0, 0, a6, a7);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000B0AC(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v6 = v3[21];
    if (v6)
    {
      if (a2(v6, a3))
      {
        break;
      }
    }

    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10000B108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 2248);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6[0] = a2;
  v6[1] = a3;
  return v4(*v3, sub_10000B2CC, v6);
}

uint64_t sub_10000B15C(char *a1, int *a2, uint64_t a3, u_char *a4, size_t a5)
{
  v5 = *(a1 + 294);
  if (v5)
  {
    v6 = *(v5 + 592);
    if (v6)
    {
      return v6(*(a1 + 295), a2, a1 + 28, a3, a4, a5);
    }
  }

  v8 = *(a1 + 339);
  if (v8)
  {
    return sub_10000F9C8(v8, a2, a3, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v8 = *(a1 + 16);
  *&v9 = *(v8 + 484);
  *(&v9 + 1) = *(v8 + 504);
  v10 = *(v8 + 512);
  v14[0] = v9;
  v14[1] = v10;
  v15 = *(v8 + 528);
  v11 = *(v8 + 544);
  v16 = *(v8 + 76);
  v17 = v11;
  v18 = *(v8 + 708);
  v12 = *(v8 + 744);
  LOWORD(v21) = *(v8 + 752);
  LODWORD(v8) = *(v8 + 492);
  v19 = v12;
  v20 = v8;
  return sub_1000070F0(*(a1 + 2624), v14, a3, a4, a5, a6, a7, a8);
}

void sub_10000B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2624);
  if (v9)
  {
    sub_10000705C(v9, a2, a3, a4, a5, a6, a7, a8);
    *(a1 + 2624) = 0;
    if (sub_100001DB0(a1))
    {
      sub_100016A20(1, "Could not disable PrivacyInvoked for interface %s", v10, v11, v12, v13, v14, v15, *(a1 + 16));
    }

    if (sub_100001DD0(a1))
    {
      sub_100016A20(1, "Could not remove generic information element from interface %s", a3, a4, a5, a6, a7, a8, *(a1 + 16));
    }
  }

  sub_100020A60(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10000B2CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(*(a1 + 56) + 8 * v5) + 2624);
    if (v6)
    {
      break;
    }

LABEL_6:
    if (++v5 >= v2)
    {
      return 0;
    }
  }

  if (!(*a2)(v6, *(a2 + 8)))
  {
    v2 = *(a1 + 48);
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_10000B348(unsigned int *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 48;
  *(a2 + 2) = 1;
  HIDWORD(v9) = a1[3] - 2;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 1;
  if (v8 < 8 && ((0x8Bu >> v8) & 1) != 0)
  {
    *(a2 + 4) = 3840;
    *(a2 + 6) = -84;
    *(a2 + 7) = 0x404040402040501uLL >> (8 * v8);
    v10 = a1[8];
    if ((v10 & 0x10) != 0)
    {
      *(a2 + 10) = 78384896;
      v12 = a2 + 14;
      v10 = a1[8];
      v11 = 1;
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v12 = a2 + 10;
      if ((v10 & 8) == 0)
      {
LABEL_11:
        if (v10)
        {
          *v12 = 11276032;
          v12 += 4;
          LOBYTE(v11) = v11 + 1;
        }

        else if (!v11)
        {
          sub_100016A20(1, "Invalid pairwise cipher (%d).", a3, a4, a5, a6, a7, a8, v10);
          return 0xFFFFFFFFLL;
        }

        *(a2 + 9) = 0;
        *(a2 + 8) = v11;
        v14 = a1[1];
        if (v14)
        {
          *(v12 + 2) = 28053248;
          v16 = v12 + 6;
          v14 = a1[1];
          v15 = 1;
          if ((v14 & 2) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v15 = 0;
          v16 = v12 + 2;
          if ((v14 & 2) == 0)
          {
LABEL_20:
            if ((v14 & 0x80) != 0)
            {
              *v16 = 95162112;
              v16 += 4;
              ++v15;
              v14 = a1[1];
              if ((v14 & 0x100) == 0)
              {
LABEL_22:
                if ((v14 & 0x400) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_27;
              }
            }

            else if ((v14 & 0x100) == 0)
            {
              goto LABEL_22;
            }

            *v16 = 111939328;
            v16 += 4;
            ++v15;
            v14 = a1[1];
            if ((v14 & 0x400) == 0)
            {
LABEL_23:
              if (!v15)
              {
                sub_100016A20(1, "Invalid key management type (%d).", a3, a4, a5, a6, a7, a8, v14);
                return 0xFFFFFFFFLL;
              }

LABEL_28:
              *(v12 + 1) = 0;
              *v12 = v15;
              v17 = a1[15];
              if (v17 == 2)
              {
                v18 = -52;
              }

              else
              {
                v18 = -116;
              }

              if (v17)
              {
                v19 = v18;
              }

              else
              {
                v19 = 12;
              }

              if (a1[9])
              {
                v20 = v19 + 1;
              }

              else
              {
                v20 = v19;
              }

              *(v16 + 1) = 2 * (a1[11] != 0);
              *v16 = v20;
              if (a4)
              {
                v21 = v16 + 20;
                if (v16 + 20 > (a2 + a3))
                {
                  return 0xFFFFFFFFLL;
                }

                *(v16 + 2) = 1;
                *(v16 + 4) = *a4;
              }

              else
              {
                v21 = v16 + 2;
              }

              result = (v21 - a2);
              *(a2 + 1) = v21 - a2 - 2;
              return result;
            }

LABEL_27:
            *v16 = 145493760;
            v16 += 4;
            LOBYTE(v15) = v15 + 1;
            goto LABEL_28;
          }
        }

        *v16 = 44830464;
        v16 += 4;
        ++v15;
        v14 = a1[1];
        goto LABEL_20;
      }
    }

    *v12 = 44830464;
    v12 += 4;
    ++v11;
    v10 = a1[8];
    goto LABEL_11;
  }

  sub_100016A20(1, "Invalid group cipher (%d).", a3, a4, a5, a6, a7, a8, a1[3]);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000B57C(uint64_t a1, uint64_t a2)
{
  *a2 = 500;
  *(a2 + 2) = 0;
  *(a2 + 2) = 32 * (*(a1 + 64) != 0);
  return 3;
}

uint64_t sub_10000B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 72);
  if ((*(a1 + 72) & 2) != 0)
  {
    result = sub_10000B348((a1 + 72), __src, 128, 0, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v10 = &__src[result];
    if (*(a1 + 136))
    {
      *v10 = 500;
      v10[2] = 32;
      v10 += 3;
    }
  }

  else
  {
    v10 = __src;
  }

  if ((*v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  *v10 = -35;
  *(v10 + 2) = 32657408;
  *(v10 + 3) = 1;
  HIDWORD(v14) = *(a1 + 84) - 2;
  LODWORD(v14) = HIDWORD(v14);
  v13 = v14 >> 1;
  if (v13 >= 8 || ((0x8Bu >> v13) & 1) == 0)
  {
    sub_100016A20(1, "Invalid group cipher (%d).", a3, a4, a5, a6, a7, a8, *(a1 + 84));
    return 0xFFFFFFFFLL;
  }

  *(v10 + 4) = 20480;
  v10[10] = -14;
  v10[11] = 0x404040402040501uLL >> (8 * v13);
  v15 = *(a1 + 80);
  if ((v15 & 0x10) != 0)
  {
    *(v10 + 14) = 82989056;
    v17 = v10 + 18;
    v16 = 1;
    if ((v15 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = 0;
  v17 = v10 + 14;
  if ((v15 & 8) != 0)
  {
LABEL_18:
    *v17 = 49434624;
    v17 += 4;
    ++v16;
    v15 = *(a1 + 80);
  }

LABEL_19:
  if (v15)
  {
    *v17 = 15880192;
    v17 += 4;
    LOBYTE(v16) = v16 + 1;
  }

  else if (!v16)
  {
    sub_100016A20(1, "Invalid pairwise cipher (%d).", a3, a4, a5, a6, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  v10[13] = 0;
  v10[12] = v16;
  v18 = *(a1 + 76);
  if (v18)
  {
    *(v17 + 2) = 32657408;
    v19 = v17 + 6;
    if ((*(a1 + 76) & 2) == 0)
    {
      v20 = 1;
      goto LABEL_31;
    }

    v20 = 2;
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      sub_100016A20(1, "Invalid key management type (%d).", a3, a4, a5, a6, a7, a8, *(a1 + 76));
      return 0xFFFFFFFFLL;
    }

    v19 = v17 + 2;
    v20 = 1;
  }

  *v19 = 49434624;
  v19 += 4;
LABEL_31:
  v17[1] = 0;
  *v17 = v20;
  result = v19 - v10;
  v10[1] = v19 - v10 - 2;
  if (((v19 - v10) & 0x80000000) == 0)
  {
    v10 += result & 0x7FFFFFFF;
LABEL_7:
    free(*(a1 + 272));
    v12 = malloc_type_malloc(v10 - __src, 0xE107C92FuLL);
    *(a1 + 272) = v12;
    if (v12)
    {
      memcpy(v12, __src, v10 - __src);
      result = 0;
      *(a1 + 280) = v10 - __src;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

char *sub_10000B7FC(_BYTE *a1, int a2, void *__src, size_t __n, const void *a5, size_t a6)
{
  *a1 = -35;
  a1[1] = __n + a6 + 4;
  a1[2] = HIBYTE(a2);
  a1[3] = BYTE2(a2);
  a1[4] = BYTE1(a2);
  a1[5] = a2;
  v9 = a1 + 6;
  memcpy(a1 + 6, __src, __n);
  v10 = &v9[__n];
  if (a5)
  {
    memcpy(v10, a5, a6);
    v10 += a6;
  }

  return v10;
}

uint64_t sub_10000B890(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 5;
  if (!a1)
  {
    return v8;
  }

  if (!a2)
  {
    return v8;
  }

  v8 = 1;
  if (!a3 || !a4)
  {
    return v8;
  }

  v13 = *a3;
  if (v13 == 48)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & *(a1 + 72)) == 0)
  {
    v82 = *(a2 + 20);
    v87 = *(a2 + 21);
    v72 = *(a2 + 18);
    v77 = *(a2 + 19);
    v63 = *(a2 + 16);
    v67 = *(a2 + 17);
    sub_100016A20(1, "Invalid WPA proto (%d) from %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, v14);
    return 10;
  }

  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  if (v13 != 48)
  {
    v15 = 5304833;
    v93 = 0uLL;
    v94 = 0uLL;
    LODWORD(v92) = 0;
    *(&v92 + 4) = 0x800000008;
    HIDWORD(v92) = 1;
    if (a4 < 8)
    {
      v16 = -1;
LABEL_37:
      v19 = 8;
LABEL_38:
      LOBYTE(v20) = 8;
LABEL_39:
      *(a1 + 12) = 5304833;
      goto LABEL_40;
    }

    if (v13 != 221 || a4 - 2 != a3[1] || bswap32(*(a3 + 2)) != 5304833 || *(a3 + 3) != 1)
    {
      v16 = -2;
      goto LABEL_37;
    }

    if ((a4 - 8) <= 3)
    {
      v19 = 8;
      if (a4 != 8)
      {
        v16 = -3;
        goto LABEL_38;
      }

      LOBYTE(v20) = 8;
    }

    else
    {
      v18 = sub_10000C3F8(a3 + 2);
      v19 = v18;
      DWORD2(v92) = v18;
      if ((a4 - 12) < 2)
      {
        LOBYTE(v20) = 8;
        if (a4 == 13)
        {
          v16 = -5;
          goto LABEL_39;
        }
      }

      else
      {
        LOBYTE(v20) = 0;
        DWORD1(v92) = 0;
        v21 = a3[13];
        v22 = a3[12];
        v23 = v22 | (v21 << 8);
        v16 = -4;
        if (!v23 || a4 - 14 < (4 * v23))
        {
          goto LABEL_39;
        }

        v24 = 0;
        v20 = 0;
        v25 = (4 * v22) | (v21 << 10);
        do
        {
          v20 |= sub_10000C3F8(&a3[v24 + 14]);
          v24 += 4;
        }

        while (v25 != v24);
        DWORD1(v92) = v20;
        if (a4 - v24 - 10 >= 6)
        {
          HIDWORD(v92) = 0;
          v26 = a3[v24 + 14] | (a3[v24 + 15] << 8);
          if (v26)
          {
            v27 = a4 - v24 - 16 >= (4 * v26);
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            v57 = 0;
            v58 = a4 - 18 - v24;
            v59 = &a3[v24 + 16];
            do
            {
              v60 = bswap32(*v59) - 5304832;
              if (v60 > 2)
              {
                v61 = 0;
              }

              else
              {
                v61 = dword_10002BBB0[v60];
              }

              v57 |= v61;
              HIDWORD(v92) = v57;
              ++v59;
              v58 -= 4;
              --v26;
            }

            while (v26);
            if (v58 + 6 < 6)
            {
              v58 += 2;
            }

            else
            {
              LODWORD(v93) = *v59;
            }

            if (v58 <= 0)
            {
              v16 = 0;
            }

            else
            {
              v16 = -8;
            }

            if ((v57 & 3) == 2)
            {
              v56 = 5304834;
            }

            else
            {
              v56 = 5304833;
            }

LABEL_149:
            *(a1 + 12) = v56;
            if ((v20 & 0x10) != 0)
            {
              v28 = 5304836;
LABEL_59:
              *(a1 + 16) = v28;
              if ((v19 & 0x10) != 0)
              {
                v15 = 5304836;
                goto LABEL_78;
              }

              if ((v19 & 8) != 0)
              {
                goto LABEL_76;
              }

              if ((v19 & 4) != 0)
              {
                v15 = 5304837;
              }

              else if ((v19 & 2) == 0)
              {
                if (v19)
                {
                  v15 = 5304832;
                }

                else
                {
                  v15 = 5304834;
                }
              }

              goto LABEL_78;
            }

LABEL_40:
            if ((v20 & 8) != 0)
            {
              v28 = 5304834;
            }

            else if ((v20 & 4) != 0)
            {
              v28 = 5304837;
            }

            else if ((v20 & 2) != 0)
            {
              v28 = 5304833;
            }

            else
            {
              v28 = 5304832;
              if ((v20 & 1) == 0)
              {
                v28 = 5304834;
              }
            }

            goto LABEL_59;
          }

          v16 = -6;
LABEL_148:
          v56 = 5304833;
          goto LABEL_149;
        }

        if (a4 - 15 == v24)
        {
          v16 = -7;
          goto LABEL_148;
        }
      }
    }

    v16 = 0;
    goto LABEL_148;
  }

  v15 = 1027076;
  v16 = sub_10000CCDC(a3, a4, &v92, a4, a5, a6, a7, a8);
  if ((WORD6(v92) & 0x400) != 0)
  {
    v17 = 1027080;
  }

  else if ((BYTE12(v92) & 0x80) != 0)
  {
    v17 = 1027077;
  }

  else if ((WORD6(v92) & 0x100) != 0)
  {
    v17 = 1027078;
  }

  else if ((BYTE12(v92) & 3) == 2)
  {
    v17 = 1027074;
  }

  else
  {
    v17 = 1027073;
  }

  *(a1 + 12) = v17;
  v29 = 1027076;
  if ((BYTE4(v92) & 0x10) == 0)
  {
    if ((BYTE4(v92) & 8) != 0)
    {
      v29 = 1027074;
    }

    else if ((BYTE4(v92) & 4) != 0)
    {
      v29 = 1027077;
    }

    else if ((BYTE4(v92) & 2) != 0)
    {
      v29 = 1027073;
    }

    else
    {
      v29 = 1027072;
      if ((BYTE4(v92) & 1) == 0)
      {
        v29 = 1027076;
      }
    }
  }

  *(a1 + 16) = v29;
  if ((BYTE8(v92) & 0x10) == 0)
  {
    if ((BYTE8(v92) & 8) != 0)
    {
      v15 = 1027074;
      goto LABEL_78;
    }

    if ((BYTE8(v92) & 4) == 0)
    {
      if ((BYTE8(v92) & 2) != 0)
      {
        v15 = 1027073;
      }

      else if (BYTE8(v92))
      {
        v15 = 1027072;
      }

      else
      {
        v15 = 1027076;
      }

      goto LABEL_78;
    }

LABEL_76:
    ++v15;
  }

LABEL_78:
  *(a1 + 20) = v15;
  sub_100016A94(1, "WPA/RSN IE", a3, a4);
  if (v16)
  {
    v83 = *(a2 + 21);
    v73 = *(a2 + 19);
    v78 = *(a2 + 20);
    v64 = *(a2 + 17);
    v68 = *(a2 + 18);
    v8 = 1;
    sub_100016A20(1, "Failed to parse WPA/RSN IE from %02x:%02x:%02x:%02x:%02x:%02x (res=%d)", v30, v31, v32, v33, v34, v35, *(a2 + 16));
    return v8;
  }

  if (DWORD2(v92) != *(a1 + 84))
  {
    v84 = *(a2 + 20);
    v88 = *(a2 + 21);
    v74 = *(a2 + 18);
    v79 = *(a2 + 19);
    v65 = *(a2 + 16);
    v69 = *(a2 + 17);
    sub_100016A20(1, "Invalid WPA group cipher (0x%x) from %02x:%02x:%02x:%02x:%02x:%02x", v30, v31, v32, v33, v34, v35, DWORD2(v92));
    return 2;
  }

  v36 = *(a1 + 76) & HIDWORD(v92);
  if (!v36)
  {
    v85 = *(a2 + 20);
    v89 = *(a2 + 21);
    v75 = *(a2 + 18);
    v80 = *(a2 + 19);
    v66 = *(a2 + 16);
    v70 = *(a2 + 17);
    sub_100016A20(1, "Invalid WPA key mgmt (0x%x) from %02x:%02x:%02x:%02x:%02x:%02x", v30, v31, v32, v33, v34, v35, HIDWORD(v92));
    return 4;
  }

  if ((v36 & 0x400) != 0)
  {
    v37 = 1024;
  }

  else if ((v36 & 0x80) != 0)
  {
    v37 = 128;
  }

  else if ((v36 & 0x100) != 0)
  {
    v37 = 256;
  }

  else if (v36)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2;
  }

  *(a2 + 320) = v37;
  v38 = 80;
  if (v13 == 48)
  {
    v38 = 104;
  }

  v39 = *(a1 + v38) & DWORD1(v92);
  if (!v39)
  {
    v42 = "WPA";
    if (v13 == 48)
    {
      v42 = "RSN";
    }

    v90 = *(a2 + 20);
    v91 = *(a2 + 21);
    v81 = *(a2 + 18);
    v86 = *(a2 + 19);
    v71 = *(a2 + 16);
    v76 = *(a2 + 17);
    sub_100016A20(1, "Invalid %s pairwise cipher (0x%x) from %02x:%02x:%02x:%02x:%02x:%02x", v30, v31, v32, v33, v34, v35, v42);
    return 3;
  }

  v40 = *(a1 + 132);
  if (v40)
  {
    if (v40 == 2)
    {
      if ((v93 & 0x80) == 0)
      {
        v41 = "Management frame protection required, but client did not enable it";
LABEL_132:
        sub_100016A20(1, v41, v30, v31, v32, v33, v34, v35, v62);
        return 7;
      }

      if ((v39 & 8) != 0)
      {
        v41 = "Management frame protection cannot use TKIP";
        goto LABEL_132;
      }

      if (DWORD2(v94) != 32)
      {
        sub_100016A20(1, "Unsupported management group cipher %d", v30, v31, v32, v33, v34, v35, DWORD2(v94));
        return 8;
      }

      goto LABEL_110;
    }

    if ((v93 & 0x80) != 0)
    {
LABEL_110:
      v43 = *(a2 + 280) | 0x10;
      goto LABEL_111;
    }
  }

  v43 = *(a2 + 280) & 0xEF;
LABEL_111:
  *(a2 + 280) = v43;
  if ((v39 & 0x10) != 0)
  {
    v44 = 16;
  }

  else
  {
    v44 = 8;
  }

  *(a2 + 316) = v44;
  if (*a3 == 48)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  *(a2 + 312) = v45;
  *(a2 + 328) = 0;
  if (*(&v93 + 1))
  {
    v46 = 0;
    v47 = 0;
    do
    {
      sub_100016A94(1, "RSN IE: STA PMKID", (v94 + v46), 16);
      v48 = sub_1000043E0(*(a1 + 296), a2 + 16, v94 + v46);
      *(a2 + 328) = v48;
      if (v48)
      {
        v52 = (v48 + 16);
        goto LABEL_134;
      }

      ++v47;
      v46 += 16;
    }

    while (v47 < *(&v93 + 1));
    v49 = 0;
    v50 = 0;
    while (*(a1 + 128) && v50 < *(&v93 + 1))
    {
      sub_1000069DC(a1);
      ++v50;
      v48 = *(a2 + 328);
      v49 += 16;
      if (v48)
      {
        v52 = 0;
        goto LABEL_134;
      }
    }
  }

  else if ((v36 & 0x400) != 0)
  {
    v53 = sub_1000043E0(*(a1 + 296), a2 + 16, 0);
    *(a2 + 328) = v53;
    sub_100006B7C(a1, (a2 + 16), 0, "search for SAE PMK (found == %d) without PMKID", v53 != 0);
    v52 = 0;
    v48 = *(a2 + 328);
    if (v48)
    {
LABEL_134:
      sub_100006B7C(a1, (a2 + 16), 0, "PMKID found (%d) from PMKSA cache eap_type=%d vlan_id=%d", v52 != 0, *(v48 + 128), *(v48 + 132));
      if (v52)
      {
        *(a1 + 24) = *v52;
      }

      else
      {
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
      }
    }
  }

  v54 = *(a2 + 296);
  if (!v54 || *(a2 + 304) < a4)
  {
    free(v54);
    v54 = malloc_type_malloc(a4, 0xFE1E4905uLL);
    *(a2 + 296) = v54;
    if (!v54)
    {
      return 6;
    }
  }

  memcpy(v54, a3, a4);
  v8 = 0;
  *(a2 + 304) = a4;
  return v8;
}

BOOL sub_10000C124(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000048C4(*(a1 + 296), *(a2 + 8), *(a2 + 16), *(a2 + 24));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_10000C160(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 < 2)
  {
    return 0;
  }

  v11 = &a1[a2];
  v12 = a1 + 1;
  v13 = &a1[a2 - 1];
  v14 = a1;
  while (1)
  {
    v15 = *v14;
    if (v15 == 221)
    {
      if (v14 == v13)
      {
        return 0;
      }

      v16 = *v12;
      if (!*v12)
      {
        return 0;
      }
    }

    else
    {
      v16 = *v12;
    }

    if (&v14[v16 + 2] > v11)
    {
      break;
    }

    if (v15 == 244)
    {
      *(a3 + 88) = v16;
      *(a3 + 96) = v14;
    }

    else
    {
      if (v15 != 221)
      {
        if (v15 == 48)
        {
          *(a3 + 16) = v14;
          *(a3 + 24) = *v12 + 2;
        }

        else
        {
          sub_100016A94(1, "WPA: Unrecognized EAPOL-Key Key Data IE", v14, v16 + 2);
        }

        goto LABEL_25;
      }

      if (!v16)
      {
        return 0;
      }

      if (v16 < 6)
      {
        goto LABEL_25;
      }

      v17 = bswap32(*(v14 + 2));
      if (v17 == 5304833 && v14[6] == 1 && !v14[7])
      {
        *a3 = v14;
        *(a3 + 8) = *v12 + 2;
        goto LABEL_25;
      }

      if (v16 >= 0x14)
      {
        if (v17 > 1027075)
        {
          if (v17 != 1027081)
          {
            if (v17 == 1027076)
            {
              *(a3 + 32) = v14 + 6;
            }

            goto LABEL_25;
          }

LABEL_36:
          *(a3 + 72) = v14 + 6;
          *(a3 + 80) = *v12 - 4;
          goto LABEL_25;
        }

        if (v17 != 1027073)
        {
          if (v17 != 1027075)
          {
            goto LABEL_25;
          }

LABEL_35:
          *(a3 + 56) = v14 + 6;
          *(a3 + 64) = *v12 - 4;
          goto LABEL_25;
        }

LABEL_31:
        *(a3 + 40) = v14 + 6;
        *(a3 + 48) = *v12 - 4;
        goto LABEL_25;
      }

      if (v16 != 6)
      {
        switch(v17)
        {
          case 1027081:
            goto LABEL_36;
          case 1027075:
            goto LABEL_35;
          case 1027073:
            goto LABEL_31;
        }
      }
    }

LABEL_25:
    v18 = &v14[v14[1]];
    v14 = v18 + 2;
    v12 = v18 + 3;
    if (v12 >= v11)
    {
      return 0;
    }
  }

  sub_100016A20(1, "WPA: EAPOL-Key Key Data underflow (ie=%d len=%d pos=%d)", a3, a4, a5, a6, a7, a8, v15);
  sub_100016B64(1, "WPA: Key Data", a1, a2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000C3E8(uint64_t result)
{
  if (result)
  {
    return (*(result + 280) >> 4) & 1;
  }

  return result;
}

uint64_t sub_10000C3F8(unsigned int *a1)
{
  v1 = bswap32(*a1) - 5304832;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_10002BBBC[v1];
  }
}

uint64_t sub_10000C428(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (a2 >= 2)
  {
    v9 = a4;
    v12 = 0;
    v13 = a1;
    v14 = a2;
    while (1)
    {
      v15 = *v13;
      v16 = v13[1];
      v17 = v14 - 2 >= v16;
      v14 = v14 - 2 - v16;
      if (!v17)
      {
        if (v9)
        {
          v30 = v13[1];
          sub_100016A20(1, "IEEE 802.11 element parse failed (id=%d elen=%d left=%lu)", a3, a4, a5, a6, a7, a8, v15);
          sub_100016A94(0, "IEs", a1, v8);
        }

        return 0xFFFFFFFFLL;
      }

      v18 = v13 + 2;
      if (*v13 <= 0x23u)
      {
        if (*v13 <= 3u)
        {
          if (*v13 > 1u)
          {
            if (v15 == 2)
            {
              *(a3 + 16) = v18;
              *(a3 + 186) = v16;
            }

            else
            {
              *(a3 + 24) = v18;
              *(a3 + 187) = v16;
            }
          }

          else if (*v13)
          {
            *(a3 + 8) = v18;
            *(a3 + 185) = v16;
          }

          else
          {
            *a3 = v18;
            *(a3 + 184) = v16;
          }
        }

        else if (*v13 <= 5u)
        {
          if (v15 == 4)
          {
            *(a3 + 32) = v18;
            *(a3 + 188) = v16;
          }

          else
          {
            *(a3 + 40) = v18;
            *(a3 + 189) = v16;
          }
        }

        else
        {
          switch(v15)
          {
            case 6:
              *(a3 + 48) = v18;
              *(a3 + 190) = v16;
              break;
            case 0x10:
              *(a3 + 56) = v18;
              *(a3 + 191) = v16;
              break;
            case 0x21:
              *(a3 + 120) = v18;
              *(a3 + 199) = v16;
              break;
            default:
              goto LABEL_48;
          }
        }
      }

      else if (*v13 > 0x35u)
      {
        if (*v13 <= 0x37u)
        {
          if (v15 == 54)
          {
            *(a3 + 136) = v18;
            *(a3 + 201) = v16;
          }

          else
          {
            *(a3 + 144) = v18;
            *(a3 + 202) = v16;
          }

          goto LABEL_65;
        }

        switch(v15)
        {
          case 0x38:
            *(a3 + 152) = v18;
            *(a3 + 203) = v16;
            break;
          case 0x3D:
            *(a3 + 168) = v18;
            *(a3 + 205) = v16;
            break;
          case 0xDD:
            if (v16 <= 3)
            {
              if (v9)
              {
                sub_100016A20(0, "short vendor specific information element ignored (len=%lu)", a3, a4, a5, a6, a7, a8, v13[1]);
              }

              goto LABEL_64;
            }

            v19 = v13[2];
            v20 = (v19 << 16) | (v13[3] << 8) | v13[4];
            if (v20 == 36940)
            {
              if (v13[5] != 51)
              {
                v27 = v13[1];
                sub_100016A20(0, "Unknown Broadcom information element ignored (type=%d len=%lu)\n", a3, a4, a5, a6, a7, a8, v13[5]);
                goto LABEL_64;
              }

              *(a3 + 176) = v18;
              *(a3 + 206) = v16;
            }

            else
            {
              if (v20 != 20722)
              {
                v31 = v13[4];
                v32 = v13[1];
                v26 = v13[3];
                sub_100016A20(0, "unknown vendor specific information element ignored (vendor OUI %02x:%02x:%02x len=%lu)", a3, a4, a5, a6, a7, a8, v19);
LABEL_64:
                ++v12;
                break;
              }

              v21 = v13[5];
              switch(v21)
              {
                case 4:
                  *(a3 + 112) = v18;
                  *(a3 + 198) = v16;
                  break;
                case 2:
                  if (v16 == 4)
                  {
                    sub_100016A20(0, "short WMM information element ignored (len=%lu)", a3, a4, a5, a6, a7, a8, 4);
                  }

                  else
                  {
                    v22 = v13[6];
                    if (v22 < 2)
                    {
                      *(a3 + 96) = v18;
                      *(a3 + 196) = v16;
                      goto LABEL_65;
                    }

                    if (v22 == 2)
                    {
                      *(a3 + 104) = v18;
                      *(a3 + 197) = v16;
                      goto LABEL_65;
                    }

                    v29 = v13[1];
                    sub_100016A20(0, "unknown WMM information element ignored (subtype=%d len=%lu)", a3, a4, a5, a6, a7, a8, v13[6]);
                  }

                  goto LABEL_64;
                case 1:
                  *(a3 + 80) = v18;
                  *(a3 + 194) = v16;
                  break;
                default:
                  v28 = v13[1];
                  sub_100016A20(0, "Unknown Microsoft information element ignored (type=%d len=%lu)\n", a3, a4, a5, a6, a7, a8, v13[5]);
                  goto LABEL_64;
              }
            }

            break;
          default:
            goto LABEL_48;
        }
      }

      else if (*v13 <= 0x2Cu)
      {
        if (v15 == 36)
        {
          *(a3 + 128) = v18;
          *(a3 + 200) = v16;
        }

        else
        {
          if (v15 != 42)
          {
LABEL_48:
            ++v12;
            if (v9)
            {
              v25 = v13[1];
              sub_100016A20(0, "IEEE 802.11 element parse ignored unknown element (id=%d elen=%d)", a3, a4, a5, a6, a7, a8, *v13);
            }

            goto LABEL_65;
          }

          *(a3 + 64) = v18;
          *(a3 + 192) = v16;
        }
      }

      else
      {
        switch(v15)
        {
          case '-':
            *(a3 + 160) = v18;
            *(a3 + 204) = v16;
            break;
          case '0':
            *(a3 + 88) = v18;
            *(a3 + 195) = v16;
            break;
          case '2':
            *(a3 + 72) = v18;
            *(a3 + 193) = v16;
            break;
          default:
            goto LABEL_48;
        }
      }

LABEL_65:
      v13 = &v18[v16];
      if (v14 <= 1)
      {
        v24 = v12 != 0;
        v8 = v14;
        goto LABEL_76;
      }
    }
  }

  v24 = 0;
LABEL_76:
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_10000C834(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 >= 2)
    {
      v2 = result;
      result = 0;
      v3 = v2 + a2;
      do
      {
        v4 = *(v2 + 1);
        if (v2 + v4 + 2 > v3)
        {
          break;
        }

        result = (result + 1);
        v5 = v4 + v2;
        v2 = v5 + 2;
      }

      while (v5 + 4 <= v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t *sub_10000C884(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v4 = a1;
    v5 = &a1[a2];
    do
    {
      v6 = v4[1];
      if (&v4[v6 + 2] > v5)
      {
        break;
      }

      if (v6 >= 4 && *v4 == 221 && bswap32(*(v4 + 2)) == a3)
      {
        v8 = sub_1000170C4(a2);
        if (v8)
        {
          v16 = v4 + 1;
          do
          {
            v17 = v4[1];
            if (&v4[v17 + 2] > v5)
            {
              break;
            }

            if (v17 >= 4 && *v4 == 221 && bswap32(*(v4 + 2)) == a3)
            {
              v18 = (v17 - 4);
              v19 = sub_10001723C(v8, v18, v10, v11, v12, v13, v14, v15);
              memcpy(v19, v4 + 6, v18);
              v17 = *v16;
            }

            v20 = &v4[v17];
            v4 = v20 + 2;
            v16 = v20 + 3;
          }

          while ((v20 + 3) < v5);
        }

        return v8;
      }

      v7 = &v4[v6];
      v4 = v7 + 2;
    }

    while ((v7 + 3) < v5);
  }

  return 0;
}

uint64_t sub_10000C99C(char *a1, int a2, char *a3, uint64_t a4, _OWORD *a5)
{
  v6 = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (sub_10000EDE8(a1, 0x10uLL, a3, a4, &v8))
      {
        return 0xFFFFFFFFLL;
      }

      v6 = 0;
      *a5 = v8;
      return v6;
    }

    if (a2 != 3)
    {
      return v6;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {

      return sub_10000DA48(a1, 0x10uLL, a3, a4, a5);
    }

    return v6;
  }

  return sub_100000B98(a1, a3, a4, a5);
}