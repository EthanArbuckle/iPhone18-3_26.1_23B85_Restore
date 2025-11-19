void sub_10028D6A8()
{
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    return;
  }

  sub_100304AF8("L2CAP data dump:\n");
  v0 = qword_100B60260;
  if (word_100B60268)
  {
    v1 = qword_100B60260 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
    goto LABEL_28;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = *(v0 + v3);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        sub_100304AF8("FX ");
        sub_100304AF8("cid=0x%x ", *(v0 + v3 + 4));
        v15 = sub_1000CD958((v0 + v3));
        sub_100304AF8("mtu=%d ", *v15);
        v16 = sub_1000CD958((v0 + v3));
        sub_100304AF8("flushTO=%d ", *(v16 + 2));
        v17 = *(sub_1000CD958((v0 + v3)) + 5);
        if (v17 <= 4)
        {
          sub_100304AF8(off_100AE9A48[v17], v21);
        }
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_22;
        }

        v8 = sub_1000B12AC(v0 + v3);
        v7 = "ENHFC";
        if (!*(v8 + 120))
        {
          v7 = "MAG";
        }

LABEL_17:
        sub_100304AF8("%s", v7);
        sub_100304AF8("localCID=0x%x ", *(v0 + v3 + 4));
        v9 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("remoteCID=0x%x ", *(v9 + 8));
        sub_100304AF8("psm=0x%x ", *(v0 + v3 + 6));
        v10 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("addr=%: ", v10 + 10);
        v11 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("inMTU=%d ", *(v11 + 36));
        v12 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("outMTU=%d ", *(v12 + 32));
        v13 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("outFlushTO=%d ", *(v13 + 38));
        v14 = sub_1000B12AC(v0 + v3);
        sub_100304AF8("linkTO=%d ", *(v14 + 40));
        sub_100304AF8("\n");
        sub_10029D4DC(v0 + v3);
      }

LABEL_21:
      ++v4;
      sub_100304AF8("\n");
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      sub_100304AF8("CL ");
      sub_100304AF8("cid=0x%x ", *(v0 + v3 + 4));
      sub_100304AF8("psm=0x%x ");
      goto LABEL_21;
    }

    v7 = "CO ";
    if (v6 == 2)
    {
      goto LABEL_17;
    }

LABEL_22:
    v0 = qword_100B60260;
    v3 += 144;
  }

  while (v5++ < word_100B60268 && qword_100B60260 != 0);
  v2 = v4;
LABEL_28:
  v20 = sub_100304AF8("%d channels in use\n", v2);

  nullsub_21(v20);
}

uint64_t sub_10028D9A0(int a1, uint64_t a2, void *a3)
{
  if (!sub_1000ABD24(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel", v9, v10, v11, v12, v13, v14, v15, v18);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    if (*(qword_100B60260 + v6) == 2 && *(sub_1000B12AC(qword_100B60260 + v6) + 8) == a1 && *sub_1000B12AC(v8 + v6) == a2)
    {
      break;
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DAA8(unsigned int a1, void *a2)
{
  v6 = 0;
  v3 = sub_1000ABC7C(a1, &v6);
  if (!v3)
  {
    v4 = v6;
    if (sub_1000B12AC(v6))
    {
      *a2 = *sub_1000B12AC(v4);
    }
  }

  return v3;
}

uint64_t sub_10028DB10(uint64_t a1, int a2, void *a3)
{
  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel", v13, v14, v15, v16, v17, v18, v19, v22);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    v9 = *(qword_100B60260 + v6);
    v10 = v9 == 4 || v9 == 2;
    if (v10 && *(sub_1000B12AC(qword_100B60260 + v6) + 28) == a2)
    {
      v11 = sub_1000B12AC(v8 + v6);
      if (*(a1 + 48) == *(v11 + 10) && *(a1 + 52) == *(v11 + 14))
      {
        break;
      }
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DC28(uint64_t a1, int a2, void *a3)
{
  if (!sub_1000ABD24(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel", v13, v14, v15, v16, v17, v18, v19, v22);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    v9 = *(qword_100B60260 + v6);
    v10 = v9 == 4 || v9 == 2;
    if (v10 && *(sub_1000B12AC(qword_100B60260 + v6) + 28) == a2)
    {
      v11 = sub_1000B12AC(v8 + v6);
      if (*(a1 + 49) == *(v11 + 10) && *(a1 + 53) == *(v11 + 14))
      {
        break;
      }
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DD40(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  if (a3 && (v7 = *a3, *a3))
  {
    if (sub_1000ABD24(a1))
    {
      if (a5)
      {
        *a5 = 0;
      }

      if (word_100B60268)
      {
        v38 = v7;
        v39 = a4;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = qword_100B60260 + v13;
          if (*(qword_100B60260 + v13) == 2 && *(sub_1000B12AC(qword_100B60260 + v13) + 120) == 1 && *(sub_1000B12AC(v16) + 28) == a2 && ((v17 = sub_1000B12AC(v16), *(a1 + 49) == *(v17 + 10)) ? (v18 = *(a1 + 53) == *(v17 + 14)) : (v18 = 0), v18))
          {
            *(v39 + 8 * v15) = v16;
            v19 = (v15 + 1);
            if (a5 && a6 && v15 >= v38)
            {
              *(a6 + 8 * (*a5)++) = v16;
            }
          }

          else
          {
            v19 = v15;
          }

          v15 = v19;
          ++v14;
          v13 += 144;
        }

        while (v14 < word_100B60268);
        *a3 = v19;
        if (v19)
        {
          return 0;
        }
      }

      else
      {
        *a3 = 0;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel", v29, v30, v31, v32, v33, v34, v35, v37);
      v36 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid number of channels parameter", v20, v21, v22, v23, v24, v25, v26, v37);
      v27 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }
}

uint64_t sub_10028DF3C(uint64_t a1, void *a2)
{
  if (!word_100B60268)
  {
    return 406;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(qword_100B60260 + v4);
    if (v6 == 4 || v6 == 2)
    {
      v8 = sub_1000B12AC(qword_100B60260 + v4);
      v9 = *a1 == *(v8 + 10) && *(a1 + 4) == *(v8 + 14);
      if (v9 && !*(sub_1000B12AC(qword_100B60260 + v4) + 16) && *(sub_1000B12AC(qword_100B60260 + v4) + 25) == 1)
      {
        break;
      }
    }

    ++v5;
    v4 += 144;
    if (v5 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a2 = qword_100B60260 + v4;
  return result;
}

_DWORD *sub_10028E018(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = word_100B60268;
  if (!word_100B60268)
  {
    return 0;
  }

  for (i = qword_100B60260; !qword_100B60260 || !*i || i[18] != a1; i += 36)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return i;
}

uint64_t sub_10028E064(void *a1)
{
  *a1 = 0;
  *a1 = 6;
  v1 = word_100B60268;
  if (word_100B60268)
  {
    v2 = (qword_100B60260 + 4);
    do
    {
      if (*(v2 - 1) == 3)
      {
        v3 = *v2;
        if (v3 <= 0x3F)
        {
          *(a1 + (v3 >> 3)) |= 1 << (v3 & 7);
        }
      }

      v2 += 72;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_10028E0D0(uint64_t a1)
{
  v7 = 0;
  result = sub_1000ABC7C(a1, &v7);
  if (!result)
  {
    v3 = v7;
    v5 = *(v7 + 8);
    v4 = *(v7 + 16);
    v6 = *(v7 + 24);
    *(v7 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 80) += v6;
    if (v5)
    {

      return v5(a1, v4);
    }
  }

  return result;
}

void sub_10028E154(uint64_t a1)
{
  v11 = 0;
  if (sub_1000ABC7C(a1, &v11))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CID %d", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    v10 = v11;
    *(v11 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
  }
}

uint64_t sub_10028E1DC(uint64_t result)
{
  if (result)
  {
    return sub_10028E0D0(**(result + 8));
  }

  return result;
}

uint64_t sub_10028E1F0(uint64_t a1, uint64_t a2, __int128 *a3, char *a4, size_t a5)
{
  if (a1 && a4 && a5)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    result = sub_1000ABC7C(a2, &v21);
    if (!result)
    {
      if (a3 && (a3 = sub_1000E1FE8(a3)) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid address.", v12, v13, v14, v15, v16, v17, v18, *&v20[0]);
          v19 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 122;
      }

      else
      {
        sub_10001FF10(v20, 1u);
        sub_10001F968(v20, a4, a5, 2u);
        v11 = v21;
        *(&v20[0] + 1) = v21;
        result = sub_1000B7EDC(0, a2, a3, v20, 0);
        if (!result)
        {
          *(v11 + 8) = a1;
          *(v11 + 16) = a4;
          *(v11 + 24) = a5;
        }
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

void sub_10028E320(unsigned int a1, char a2, _WORD *a3)
{
  if (a2)
  {
    if (word_100B60268 >= 0x41u)
    {
      sub_1000D660C();
    }

    *a3 = a1 + 64;
  }

  else
  {
    if (!word_100B6026A)
    {
      sub_1000D660C();
    }

    if (word_100B60268 <= a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/l2cap/chanman.c", 600, "index < maxChannels");
    }

    v5 = word_100B6026A;
    *a3 = a1 | (word_100B6026A << 8);
    if (v5 == 255)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }

    word_100B6026A = v6;
    if (!v6)
    {

      sub_1000D660C();
    }
  }
}

uint64_t sub_10028E3EC(unsigned int a1, uint64_t *a2, char a3)
{
  if (a1 > 4 || ((1 << a1) & 0x16) == 0)
  {
    sub_1000D660C();
  }

  if (word_100B60268)
  {
    v6 = 0;
    v7 = qword_100B60260;
    while (*v7)
    {
      ++v6;
      v7 += 144;
      if (word_100B60268 == v6)
      {
        goto LABEL_8;
      }
    }

    if (*(v7 + 112))
    {
      sub_1000D660C();
    }

    if (*(v7 + 104))
    {
      sub_1000D660C();
    }

    if (*(v7 + 120))
    {
      sub_1000D660C();
    }

    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    sub_10028E320(v6, a3, (v7 + 4));
    *v7 = a1;
    switch(a1)
    {
      case 1u:
        v19 = sub_100007618(0x18uLL, 0xA00402214FCE6uLL);
        *(v7 + 104) = v19;
        v19[1] = 0;
        v19[2] = 0;
        *v19 = 0;
        break;
      case 2u:
        v18 = sub_100007618(0x88uLL, 0x10A004081157EC1uLL);
        *(v7 + 112) = v18;
        *v18 = 0u;
        v18[1] = 0u;
        v18[2] = 0u;
        v18[3] = 0u;
        v18[4] = 0u;
        v18[5] = 0u;
        v18[6] = 0u;
        v18[7] = 0u;
        *(v18 + 16) = 0;
        *(sub_1000B12AC(v7) + 16) = 0;
        *(sub_1000B12AC(v7) + 36) = 1024;
        *(sub_1000B12AC(v7) + 32) = 672;
        *(sub_1000B12AC(v7) + 34) = -1;
        *(sub_1000B12AC(v7) + 38) = -1;
        *(sub_1000B12AC(v7) + 40) = 5000;
        *(v7 + 72) = 0;
        *(sub_1000B12AC(v7) + 30) = 0;
        *(sub_1000B12AC(v7) + 17) = 0;
        *(sub_1000B12AC(v7) + 77) = 0;
        break;
      case 4u:
        v17 = sub_100007618(0x88uLL, 0x10A004081157EC1uLL);
        *(v7 + 112) = v17;
        *v17 = 0u;
        v17[1] = 0u;
        v17[2] = 0u;
        v17[3] = 0u;
        v17[4] = 0u;
        v17[5] = 0u;
        v17[6] = 0u;
        v17[7] = 0u;
        *(v17 + 16) = 0;
        break;
    }

    result = 0;
    *(v7 + 128) = 0;
    *(v7 + 76) = -1;
    *a2 = v7;
  }

  else
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("No free channels found\n", v8, v9, v10, v11, v12, v13, v14, v20);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

uint64_t sub_10028E64C(uint64_t a1, int a2, char a3, unsigned int a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    if (word_100B60268)
    {
      v10 = a2;
      v12 = (qword_100B60260 + 4);
      v13 = word_100B60268;
      do
      {
        if (*(v12 - 1) && *v12 == a1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("CID %d already regitered", v17, v18, v19, v20, v21, v22, v23, a1);
            v24 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 402;
        }

        v12 += 72;
        --v13;
      }

      while (v13);
      v14 = 0;
      v15 = qword_100B60260;
      while (*(qword_100B60260 + v14))
      {
        v14 += 144;
        if (144 * word_100B60268 == v14)
        {
          return 104;
        }
      }

      v25 = qword_100B60260 + v14;
      if (*(qword_100B60260 + v14 + 112))
      {
        sub_1000D660C();
      }

      if (*(v25 + 104))
      {
        sub_1000D660C();
      }

      v26 = v15 + v14;
      if (*(v26 + 120))
      {
        sub_1000D660C();
      }

      *(v25 + 112) = 0u;
      *(v25 + 128) = 0u;
      *(v25 + 80) = 0u;
      *(v25 + 96) = 0u;
      *(v25 + 48) = 0u;
      *(v25 + 64) = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      *v25 = 0u;
      v27 = sub_100007618(0x20uLL, 0x1080040DADD50E3uLL);
      *(v26 + 120) = v27;
      *v27 = 0u;
      v27[1] = 0u;
      *(v26 + 128) = 0;
      *(v26 + 4) = a1;
      *v26 = 3;
      *(v26 + 76) = -1;
      *(sub_1000CD958(v25) + 24) = a6;
      *sub_1000CD958(v25) = 672;
      *(sub_1000CD958(v25) + 2) = -1;
      *(sub_1000CD958(v25) + 4) = v10;
      *a5 = v25;
      sub_10029E064(*(v26 + 4), a3, a4, 0, (v26 + 96), *(v26 + 76));
      return 0;
    }

    else
    {
      return 104;
    }
  }

  else
  {
    sub_1000D660C();
    return 718;
  }
}

uint64_t sub_10028E848(uint64_t a1, int a2)
{
  if (word_100B60268)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = qword_100B60260;
      if (*(qword_100B60260 + v4) == 2 && *(sub_1000B12AC(qword_100B60260 + v4) + 120) == 1 && *sub_1000B12AC(v6 + v4) == a1 && *(sub_1000B12AC(v6 + v4) + 28) == a2)
      {
        sub_10028E908(v6 + v4);
      }

      ++v5;
      v4 += 144;
    }

    while (v5 < word_100B60268);
  }

  return 0;
}

uint64_t sub_10028E908(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*a1 == 4 || *a1 == 2)
  {
    sub_10029D3EC(a1);
    if (!*(a1 + 112))
    {
      sub_1000D660C();
    }

    sub_1002AB7D0(a1);
  }

  sub_10029E4D4(*(a1 + 4));
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000C1E8(v3);
  }

  *(a1 + 48) = 0;
  v4 = *a1;
  *a1 = 0;
  if (v4 == 1)
  {
    v11 = *(a1 + 104);
    v7 = a1 + 104;
    v10 = v11;
    if (!v11)
    {
      sub_1000D660C();
      v10 = *v7;
    }

    if (*v10)
    {
      sub_1000D660C();
      v10 = *v7;
    }

    sub_10000C1E8(v10);
    v5 = 0;
    goto LABEL_31;
  }

  if ((v4 == 4 || v4 == 2) && (sub_10002242C(*(*(a1 + 112) + 80)), sub_10002242C(*(*(a1 + 112) + 84)), sub_1000B8B5C(**(a1 + 112))))
  {
    v5 = sub_1000CD5B8(**(a1 + 112));
  }

  else
  {
    v5 = 0;
  }

  switch(v4)
  {
    case 2:
      goto LABEL_22;
    case 3:
      v12 = *(a1 + 120);
      v7 = a1 + 120;
      v6 = v12;
LABEL_30:
      sub_10000C1E8(v6);
LABEL_31:
      *v7 = 0;
      return v5;
    case 4:
LABEL_22:
      v8 = *(a1 + 112);
      v7 = a1 + 112;
      v6 = v8;
      v9 = v8[16];
      if (v9)
      {
        sub_10000C1E8(v9);
        v6 = *v7;
        *(*v7 + 128) = 0;
      }

      goto LABEL_30;
  }

  return v5;
}

uint64_t sub_10028EA60(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *a2++;
      result = sub_10028E908(v4);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10028EA9C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8)
{
  v45 = 0;
  v16 = sub_10028E3EC(2u, &v45, 0);
  if (!v16)
  {
    v44 = a8;
    v17 = sub_1000E1FE8(a3);
    if (!v17)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_L2CAP_createChannelForFastConnect NULL Handle", v18, v19, v20, v21, v22, v23, v24, a8);
        v25 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v26 = v45;
    v27 = sub_1000B12AC(v45);
    v28 = *(a3 + 4);
    *(v27 + 10) = *a3;
    *(v27 + 14) = v28;
    *sub_1000B12AC(v26) = v17;
    *(sub_1000B12AC(v26) + 25) = 0;
    *(sub_1000B12AC(v26) + 28) = 0;
    v29 = *a2;
    *(sub_1000B12AC(v26) + 36) = v29;
    *(v26 + 6) = a1;
    *(sub_1000B12AC(v26) + 16) = 0;
    *(sub_1000B12AC(v26) + 24) = 1;
    *(sub_1000B12AC(v26) + 27) = 3;
    *(sub_1000B12AC(v26) + 26) = 3;
    *(sub_1000B12AC(v26) + 28) = 0;
    *(sub_1000B12AC(v26) + 52) = 0;
    *(sub_1000B12AC(v26) + 88) = a5;
    *(sub_1000B12AC(v26) + 96) = a4;
    *(v26 + 32) = a6;
    *(sub_1000B12AC(v26) + 48) = 0;
    *(sub_1000B12AC(v26) + 78) = 0;
    v30 = sub_10029CFF4(v26, 0, 0);
    if (v30)
    {
      v16 = v30;
      sub_10028E908(v26);
    }

    else
    {
      v32 = *(a2 + 8);
      if (!v32)
      {
        v32 = -1;
      }

      *(v26 + 76) = v32;
      v33 = *(a2 + 6);
      if (!v33)
      {
        v33 = 4;
      }

      *(a2 + 6) = v33;
      v34 = *(a2 + 7);
      if (!v34)
      {
        v34 = 5;
      }

      *(a2 + 7) = v34;
      sub_10023B994(v17);
      sub_10029E064(*(v26 + 4), *(a2 + 6), *(a2 + 7), 0, (v26 + 96), *(v26 + 76));
      v35 = sub_1000B12AC(v26);
      sub_1000CD5B8(*v35);
      *a7 = *(v26 + 4);
      *(v26 + 64) = v44;
      v16 = sub_10028F290(v26, a2);
      if (v16)
      {
        sub_10028E908(v26);
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_createChannelForFastConnect Failed to set channel params", v36, v37, v38, v39, v40, v41, v42, v44);
          v43 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10028ED44(uint64_t a1)
{
  v2 = sub_10028D534();
  if (*(sub_1003045A0(0x2Fu) + 2))
  {
    v3 = 0;
    v4 = 0xFFFF;
    do
    {
      v5 = *v2 == 4 || *v2 == 2;
      if (v5 && *sub_1000B12AC(v2) == a1 && *(sub_1000B12AC(v2) + 40) < v4)
      {
        v4 = *(sub_1000B12AC(v2) + 40);
      }

      ++v3;
      v2 += 36;
    }

    while (v3 < *(sub_1003045A0(0x2Fu) + 2));
    v6 = (1717986919 * (8 * v4)) >> 33;
    if (v4 == 65534)
    {
      LOWORD(v6) = 0;
    }

    if (v4 == 0xFFFF)
    {
      v7 = 32000;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 32000;
  }

  if (*(a1 + 140) == v7)
  {
    return 0;
  }

  return sub_10024756C(a1, v7);
}

void sub_10028EE5C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v24 = *(sub_1000B12AC(a1) + 88);
  v4 = *(a1 + 4);
  v5 = *(sub_1000B12AC(a1) + 16);
  sub_1000B12AC(a1);
  v23 = *(sub_1000B12AC(a1) + 96);
  v6 = *(sub_1000B12AC(a1) + 24);
  v7 = *sub_1000B12AC(a1);
  if (*(sub_1000B12AC(a1) + 17))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect notification for PSM: %x already pending on dispatcher", v8, v9, v10, v11, v12, v13, v14, *(a1 + 6));
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    *(sub_1000B12AC(a1) + 20) = a2;
    *(sub_1000B12AC(a1) + 17) = 1;
    *(sub_1000B12AC(a1) + 16) = 0;
    sub_10029F2B4(v4);
    sub_10028E908(a1);
    if (sub_1000B8B5C(v7))
    {
      v16 = a2 == 1348 ? 68 : 19;
      sub_1000D2538(v7, v16);
      if (sub_1000B8B5C(v7))
      {
        sub_10028ED44(v7);
      }
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      sub_100306190(v17);
    }

    v19 = a2 != 464 && v5 > 3;
    if (v5 == 2 || v19)
    {
      if (v24)
      {

        v24(v4, a2);
      }
    }

    else
    {
      if (v6)
      {
        v20 = v5 == 3;
      }

      else
      {
        v20 = 1;
      }

      v21 = v20;
      if (v23 && v21)
      {
        v22 = *(a1 + 4);

        v23(v22, 0, 0, a2);
      }
    }
  }
}

void sub_10028F064(uint64_t *a1, int a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v26 = 0;
    while (1)
    {
      v6 = *(sub_1000B12AC(*v5) + 88);
      v7 = *(*v5 + 4);
      v8 = *(sub_1000B12AC(*v5) + 16);
      sub_1000B12AC(*v5);
      v9 = *(sub_1000B12AC(*v5) + 96);
      v10 = *(sub_1000B12AC(*v5) + 104);
      v11 = *(sub_1000B12AC(*v5) + 24);
      v12 = *sub_1000B12AC(*v5);
      if (*(sub_1000B12AC(*v5) + 17))
      {
        break;
      }

      *(sub_1000B12AC(*v5) + 20) = a3;
      *(sub_1000B12AC(*v5) + 17) = 1;
      *(sub_1000B12AC(*v5) + 16) = 0;
      sub_10029F2B4(*(*v5 + 4));
      sub_10028E908(*v5);
      if (sub_1000B8B5C(v12))
      {
        sub_1000D2538(v12, 19);
        if (sub_1000B8B5C(v12))
        {
          sub_10028ED44(v12);
        }
      }

      v13 = *(*v5 + 72);
      if (v13)
      {
        sub_100306190(v13);
      }

      v15 = a3 != 464 && v8 > 3;
      if (v8 == 2 || v15)
      {
        if (v6)
        {
          v6(v7, a3);
        }
      }

      else
      {
        if (v11)
        {
          v16 = v8 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        if (v9 | v10 && v17)
        {
          if (v9)
          {
            (v9)(*(*v5 + 4), 0, 0, a3);
          }

          else
          {
            if ((v26 & 1) == 0)
            {
              (v10)(0, *v5 + 4, 0, 0, a3);
            }

            v26 = 1;
          }
        }
      }

      ++v5;
      if (!--a2)
      {
        return;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect notification for PSM: %x already pending on dispatcher, cid:%d", v18, v19, v20, v21, v22, v23, v24, *(*v5 + 6));
      v25 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_10028F290(uint64_t a1, __int16 *a2)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (!a2[1] || a2[1] == 0xFFFF && (byte_100BCDFEA & 0x40) != 0 || (v4 = sub_10028D534(), !*(sub_1003045A0(0x2Fu) + 2)))
  {
LABEL_26:
    if (a2[2])
    {
      v20 = a2[2];
    }

    else
    {
      v20 = -2;
    }

    *(sub_1000B12AC(a1) + 40) = v20;
    v21 = *a2;
    *(sub_1000B12AC(a1) + 36) = v21;
    v22 = a2[1];
    v23 = sub_1000B12AC(a1);
    result = 0;
    *(v23 + 38) = v22;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      if (v4 != a1 && *v4 && *v4 != 3)
      {
        v7 = sub_1000B12AC(a1);
        v8 = sub_1000B12AC(v4);
        if (*(v7 + 10) == *(v8 + 10) && *(v7 + 14) == *(v8 + 14))
        {
          if (*(sub_1000B12AC(v4) + 38))
          {
            if (*(sub_1000B12AC(v4) + 38) != -1)
            {
              v10 = a2[1];
              if (v10 != *(sub_1000B12AC(v4) + 38))
              {
                break;
              }
            }
          }
        }
      }

      ++v5;
      v4 += 36;
      if (v5 >= *(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_26;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Accept: conflicting flush timeout, cannot accept connection", v11, v12, v13, v14, v15, v16, v17, v24);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1008141E8();
      }
    }

    sub_10028E908(a1);
    return 101;
  }

  return result;
}

uint64_t sub_10028F454(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8)
{
  v45 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_L2CAP_Connect %: PSM = 0x%x, Cb 0x%x", v16, v17, v18, v19, v20, v21, v22, a5);
    v23 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v47 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a1 || !a8 || !a2 || !a3 || (a4 & 0x1010101) != 1 || !a7)
  {
    sub_1000D660C();
    return 101;
  }

  v24 = sub_10028F948(a6);
  if (!v24)
  {
    v24 = sub_10028E3EC(2u, &v45, 0);
    if (!v24)
    {
      *(sub_1000B12AC(v45) + 24) = 0;
      v27 = sub_1000B12AC(v45);
      v28 = *(a5 + 4);
      *(v27 + 10) = *a5;
      *(v27 + 14) = v28;
      v29 = v45;
      *(v45 + 6) = a4;
      *(sub_1000B12AC(v29) + 16) = 0;
      *(sub_1000B12AC(v45) + 88) = a2;
      *(sub_1000B12AC(v45) + 96) = a1;
      v30 = v45;
      *(v45 + 32) = a3;
      *(v30 + 64) = a8;
      if (a6)
      {
        v31 = *(a6 + 16);
        v32 = sub_1000B12AC(v30);
        if (v31)
        {
          v33 = *(a6 + 16);
          v34 = *v33;
          *(v32 + 50) = *(v33 + 4);
          *(v32 + 42) = v34;
        }

        else
        {
          *(v32 + 48) = 0;
        }

        v40 = *(a6 + 24);
        *(sub_1000B12AC(v45) + 78) = v40;
        v35 = sub_10029CFF4(v45, *(a6 + 12), *(a6 + 13));
        if (v35)
        {
          goto LABEL_22;
        }

        if (*(a6 + 8))
        {
          v37 = *(a6 + 8);
        }

        else
        {
          v37 = -1;
        }

        v36 = v45;
        *(v45 + 76) = v37;
        if (*(a6 + 6))
        {
          v39 = *(a6 + 6);
        }

        else
        {
          v39 = 4;
        }

        if (*(a6 + 7))
        {
          v38 = *(a6 + 7);
        }

        else
        {
          v38 = 5;
        }
      }

      else
      {
        *(sub_1000B12AC(v30) + 48) = 0;
        *(sub_1000B12AC(v45) + 78) = 0;
        v35 = sub_10029CFF4(v45, 0, 0);
        if (v35)
        {
          goto LABEL_22;
        }

        v36 = v45;
        v37 = -1;
        *(v45 + 76) = -1;
        v38 = 5;
        v39 = 4;
      }

      v25 = sub_10029E064(*(v36 + 4), v39, v38, 0, (v36 + 96), v37);
      v41 = v45;
      if (v25)
      {
        goto LABEL_33;
      }

      *a7 = *(v45 + 4);
      if (!a6 || (v35 = sub_10028F290(v41, a6), !v35))
      {
        v42 = *(sub_1003045A0(0x28u) + 8);
        if (v42 <= *(sub_1000B12AC(v45) + 36))
        {
          v43 = (sub_1003045A0(0x28u) + 8);
        }

        else
        {
          v43 = (sub_1000B12AC(v45) + 36);
        }

        v44 = *v43;
        *(sub_1000B12AC(v45) + 36) = v44;
        v25 = sub_10023B6AC(sub_10028F7A4, a5);
        v41 = v45;
        if (!v25)
        {
          *(sub_1000B12AC(v45) + 25) = 1;
          return v25;
        }

        goto LABEL_33;
      }

LABEL_22:
      v25 = v35;
      v41 = v45;
LABEL_33:
      sub_10028E908(v41);
      return v25;
    }
  }

  return v24;
}

void sub_10028F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  if (!sub_10028DF3C(a2, &v25))
  {
    if (*(sub_1000B12AC(v25) + 16) || *(sub_1000B12AC(v25) + 25) != 1)
    {
      sub_1000D660C();
    }

    if (!a1)
    {
      *sub_1000B12AC(v25) = a3;
      if (!a3)
      {
        sub_1000D660C();
      }

      if (*(a3 + 228))
      {
        *(sub_1000B12AC(v25) + 25) = 2;
        v14 = sub_1000B12AC(v25);
        if (!sub_100305BDC(sub_100290968, v14 + 10, *(v25 + 64), (v25 + 72), 0))
        {
          return;
        }
      }

      else
      {
        *(a3 + 228) = 1;
        v15 = sub_1002AD818(sub_100291C84, 1, a2, 2);
        if (!v15)
        {
          return;
        }

        v16 = v15;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not ask device for extended features, result is %!", v17, v18, v19, v20, v21, v22, v23, v16);
          v24 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }

    sub_100291EC4(v25, a1);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("no waiting channel found for completed ACL link %: with %!", v6, v7, v8, v9, v10, v11, v12, a2);
    v13 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10028F948(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 < 0x80)
  {
    return 483;
  }

  if (v2 <= *(sub_1003045A0(0x28u) + 8))
  {
    if (a1[1] - 1280 < 0xFAFF)
    {
      return 484;
    }

    return 0;
  }

  if (sub_10000C240())
  {
    v4 = sub_1003045A0(0x28u);
    sub_10000AF54("Could not validate connect parameters: no resources, max %d, in %d", v5, v6, v7, v8, v9, v10, v11, *(v4 + 8));
    v12 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 104;
}

void sub_10028FA18(uint64_t a1, uint64_t a2)
{
  if (sub_1000ABD24(a1))
  {
    v4 = *(a1 + 256);
    if (v4)
    {
      v5 = sub_1000BB054(v4, 0);
      if (v5)
      {
        v6 = v5;
        do
        {
          v39 = 0;
          if (!sub_1000ABC7C(*v6, &v39))
          {
            v7 = v39;
            v8 = *v39;
            if (a2)
            {
              if (v8 == 2)
              {
                v9 = *(sub_1000B12AC(v39) + 120);
                v10 = sub_1000B12AC(v39);
                if (v9 == 1)
                {
                  if (*(v10 + 104))
                  {
                    v11 = sub_1000B12AC(v39);
                    (*(v11 + 104))(0, v6, 0, 0, a2);
                  }

                  v12 = sub_1000B12AC(v39);
                  sub_10028E848(a1, *(v12 + 28));
                }

                else
                {
                  if (*(v10 + 96))
                  {
                    v36 = sub_1000B12AC(v39);
                    (*(v36 + 96))(*(v39 + 2), 0, 0, a2);
                  }

                  sub_10028E908(v39);
                }

                goto LABEL_25;
              }
            }

            else if (v8 == 2)
            {
              v13 = *(sub_1000B12AC(v39) + 120);
              v7 = v39;
              if (v13 == 1)
              {
                v45 = 0;
                memset(v44, 0, sizeof(v44));
                v43 = 0;
                memset(v42, 0, sizeof(v42));
                v38 = 5;
                v37 = 0;
                v41 = 0;
                v40 = 0;
                v14 = *sub_1000B12AC(v39);
                v15 = sub_1000B12AC(v39);
                sub_10028DD40(v14, *(v15 + 28), &v38, v44, &v37, v42);
                if (v37)
                {
                  for (i = 0; i < v37; ++i)
                  {
                    v17 = *(v42 + i);
                    *v17 = 0;
                    sub_10000C1E8(*(v17 + 112));
                  }
                }

                v18 = v38;
                if (v38)
                {
                  v19 = v44;
                  v20 = &v40;
                  do
                  {
                    v21 = *v19++;
                    *v20 = *(v21 + 4);
                    v20 = (v20 + 2);
                    --v18;
                  }

                  while (v18);
                }

                v22 = *sub_1000B12AC(v39);
                v23 = *(sub_1000B12AC(v39) + 28);
                v24 = *(v39 + 3);
                v25 = v38;
                v26 = *(sub_1000B12AC(v39) + 36);
                v27 = *(sub_1000B12AC(v39) + 72);
                v28 = sub_1000CAA48(v39);
                sub_1002DDAC4(v22, v23, v24, v25, &v40, v26, v27, v28);
                goto LABEL_25;
              }
            }

            v29 = *sub_1000B12AC(v7);
            v30 = *(sub_1000B12AC(v39) + 28);
            v31 = *(v39 + 3);
            v32 = *(v39 + 2);
            v33 = *(sub_1000B12AC(v39) + 36);
            v34 = *(sub_1000B12AC(v39) + 72);
            v35 = sub_1000CAA48(v39);
            sub_1002DD8F8(v29, v30, v31, v32, v33, v34, v35);
          }

LABEL_25:
          sub_10000C1E8(v6);
          v6 = sub_1000BB054(*(a1 + 256), 0);
        }

        while (v6);
      }

      sub_1000BBDD0(*(a1 + 256));
      *(a1 + 256) = 0;
    }
  }
}

void sub_10028FD18(uint64_t a1, uint64_t a2)
{
  if ((sub_1002DF898(a1) & 1) == 0)
  {

    sub_10028FA18(a1, a2);
  }
}

void sub_10028FD68(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000E5EA8(a1);

  sub_10028FA18(v4, a3);
}

uint64_t sub_10028FDB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 *a6, _WORD *a7)
{
  if (a1 && a2 && a3 && ((v12 = a4, (a4 - 1) < 0x7F) || (a4 & 0xFF80) == 0x80) && a7)
  {
    if (sub_1000ABD24(a5))
    {
      v14 = sub_10029006C(a6);
      if (v14)
      {
        return v14;
      }

      v44 = 0;
      v14 = sub_10028E3EC(2u, &v44, 1);
      if (v14)
      {
        return v14;
      }

      else
      {
        v17 = v44;
        *a7 = *(v44 + 4);
        *(sub_1000B12AC(v17) + 24) = 0;
        *sub_1000B12AC(v44) = a5;
        v18 = sub_1000B12AC(v44);
        v19 = *(a5 + 53);
        *(v18 + 10) = *(a5 + 49);
        *(v18 + 14) = v19;
        v20 = v44;
        *(v44 + 6) = v12;
        *(sub_1000B12AC(v20) + 16) = 1;
        *(sub_1000B12AC(v44) + 88) = a2;
        *(sub_1000B12AC(v44) + 96) = a1;
        v21 = v44;
        *(v44 + 32) = a3;
        *(sub_1000B12AC(v21) + 48) = 0;
        *(sub_1000B12AC(v44) + 78) = 0;
        v22 = sub_1002AB568();
        *(sub_1000B12AC(v44) + 28) = v22;
        v23 = *a6;
        *(sub_1000B12AC(v44) + 36) = v23;
        v24 = *(sub_1003045A0(0x28u) + 8);
        if (v24 <= *(sub_1000B12AC(v44) + 36))
        {
          v25 = (sub_1003045A0(0x28u) + 8);
        }

        else
        {
          v25 = (sub_1000B12AC(v44) + 36);
        }

        v26 = *v25;
        *(sub_1000B12AC(v44) + 36) = v26;
        v27 = a6[1];
        *(sub_1000B12AC(v44) + 72) = v27;
        v28 = sub_10028A258(v44, a6[4], a6[3]);
        if (v28)
        {
          v15 = v28;
          if (sub_10000C240())
          {
            sub_10000AF54("LE_L2CAP_InitLocalParams returned %!. Failed to initiate parameters. Aborting.\n", v29, v30, v31, v32, v33, v34, v35, v15);
            v36 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_10028E908(v44);
        }

        else
        {
          *(sub_1000B12AC(v44) + 25) = 1;
          v37 = *sub_1000B12AC(v44);
          v38 = *(sub_1000B12AC(v44) + 28);
          v39 = *(v44 + 6);
          v40 = *(v44 + 4);
          v41 = *(sub_1000B12AC(v44) + 36);
          v42 = *(sub_1000B12AC(v44) + 72);
          v43 = sub_1000CAA48(v44);
          sub_1002DD8F8(v37, v38, v39, v40, v41, v42, v43);
          return 0;
        }
      }
    }

    else
    {
      return 414;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v15;
}

uint64_t sub_10029006C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2 <= *(sub_1003045A0(0x28u) + 8))
    {
      if (v1[1] <= *v1)
      {
        return 0;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("MTU must be equal or greater than MPS (MPS=%d, MTU=%d)\n", v11, v12, v13, v14, v15, v16, v17, v1[1]);
          v18 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 101;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not validate connect parameters: no resources", v3, v4, v5, v6, v7, v8, v9, v19);
        v10 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  return result;
}

uint64_t sub_100290164(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  v111 = 0;
  v13 = sub_1000ABC7C(a4, &v111);
  if (!v13)
  {
    if (*(sub_1000B12AC(v111) + 16) != 2)
    {
      if (sub_10000C240())
      {
        v32 = sub_1000B12AC(v111);
        sub_10000AF54("Invalid State: %d", v33, v34, v35, v36, v37, v38, v39, *(v32 + 16));
        v40 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 408;
    }

    if (!a6)
    {
      sub_1002906E0(v111, 530, 0);
      return 0;
    }

    if (!a1 || !a2 || !a3 || !a7)
    {
      sub_1000D660C();
      return 101;
    }

    v23 = sub_10028F948(a5);
    if (v23)
    {
      v14 = v23;
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Connect Params: %!", v24, v25, v26, v27, v28, v29, v30, v14);
        v31 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      return v14;
    }

    *(sub_1000B12AC(v111) + 96) = a1;
    *(sub_1000B12AC(v111) + 88) = a2;
    v42 = v111;
    *(v111 + 32) = a3;
    *(v42 + 64) = a7;
    if (a5)
    {
      v43 = *(a5 + 16);
      v44 = sub_1000B12AC(v42);
      if (v43)
      {
        v45 = *(a5 + 16);
        v46 = *v45;
        *(v44 + 50) = *(v45 + 4);
        *(v44 + 42) = v46;
      }

      else
      {
        *(v44 + 48) = 0;
      }

      v50 = *(a5 + 24);
      *(sub_1000B12AC(v111) + 78) = v50;
      v47 = sub_10029CFF4(v111, *(a5 + 12), *(a5 + 13));
      if (v47)
      {
LABEL_30:
        v14 = v47;
        if (!sub_10000C240())
        {
          goto LABEL_46;
        }

        sub_10000AF54("Flow init failed with %!, rejecting connection", v51, v52, v53, v54, v55, v56, v57, v14);
        v58 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (*(a5 + 8))
      {
        v59 = *(a5 + 8);
      }

      else
      {
        v59 = -1;
      }

      v60 = v111;
      *(v111 + 76) = v59;
      if (*(a5 + 6))
      {
        v61 = *(a5 + 6);
      }

      else
      {
        v61 = 4;
      }

      if (*(a5 + 7))
      {
        v62 = *(a5 + 7);
      }

      else
      {
        v62 = 5;
      }

      v49 = sub_10029E064(*(v60 + 4), v61, v62, 0, (v60 + 96), v59);
      if (v49)
      {
        goto LABEL_43;
      }

      v71 = sub_10028F290(v111, a5);
      if (v71)
      {
        v14 = v71;
        sub_10028E908(v111);
        if (sub_10000C240())
        {
          sub_10000AF54("OI_ConnectMan_handleChannelParamConflicts failed: %!", v72, v73, v74, v75, v76, v77, v78, v14);
          v79 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }
        }

        return v14;
      }
    }

    else
    {
      *(sub_1000B12AC(v42) + 48) = 0;
      *(sub_1000B12AC(v111) + 78) = 0;
      v47 = sub_10029CFF4(v111, 0, 0);
      if (v47)
      {
        goto LABEL_30;
      }

      v48 = v111;
      *(v111 + 76) = -1;
      v49 = sub_10029E064(*(v48 + 4), 4, 5u, 0, (v48 + 96), 0xFFFFFFFF);
      if (v49)
      {
LABEL_43:
        v14 = v49;
        if (!sub_10000C240())
        {
          goto LABEL_46;
        }

        sub_10000AF54("Queue register failed with %!, rejecting connection", v63, v64, v65, v66, v67, v68, v69, v14);
        v70 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    v80 = *(sub_1003045A0(0x28u) + 8);
    if (v80 <= *(sub_1000B12AC(v111) + 36))
    {
      v81 = (sub_1003045A0(0x28u) + 8);
    }

    else
    {
      v81 = (sub_1000B12AC(v111) + 36);
    }

    v82 = *v81;
    *(sub_1000B12AC(v111) + 36) = v82;
    v83 = v111;
    if (*(v111 + 64))
    {
      v84 = sub_1000B12AC(v111);
      v86 = sub_1002FD040(*v84, **(v111 + 64), *(*(v111 + 64) + 8), v85);
      v83 = v111;
      if (v86)
      {
        v87 = *sub_1000B12AC(v111);
        v88 = *(sub_1000B12AC(v111) + 29);
        v89 = *(v111 + 4);
        sub_1000B12AC(v111);
        v93 = sub_1002AB810("aaaa", 3u, 0, v87, v88, v90, v91, v92, v89);
        if (v93)
        {
          v14 = v93;
          if (!sub_10000C240())
          {
            goto LABEL_46;
          }

          sub_10000AF54("Sending Pending response failed %!", v94, v95, v96, v97, v98, v99, v100, v14);
          v101 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v83 = v111;
      }
    }

    v102 = sub_1000B12AC(v83);
    v14 = sub_100305BDC(sub_100290968, v102 + 10, *(v111 + 64), (v111 + 72), 1);
    if (!v14)
    {
      *(sub_1000B12AC(v111) + 25) = 2;
      return v14;
    }

    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Policy Mgr for new connection failed %!", v103, v104, v105, v106, v107, v108, v109, v14);
    v110 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

LABEL_45:
    sub_10080F7A0();
LABEL_46:
    sub_1002906E0(v111, v14, 0);
    return v14;
  }

  v14 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_50:
      sub_10080F7A0();
    }
  }

  return v14;
}

void sub_1002906E0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v6 = *sub_1000B12AC(a1);
  v7 = *(sub_1000B12AC(a1) + 29);
  if (a2)
  {
    goto LABEL_4;
  }

  if (*(sub_1000B12AC(a1) + 16) != 2)
  {
    sub_1000D660C();
  }

  *(sub_1000B12AC(a1) + 25) = 3;
  v33 = *(a1 + 4);
  sub_1000B12AC(a1);
  v37 = sub_1002AB810("aaaa", 3u, 0, v6, v7, v34, v35, v36, v33);
  if (v37)
  {
    v38 = v37;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to complete incoming connection %!", v39, v40, v41, v42, v43, v44, v45, v38);
      v46 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_4:
    v8 = sub_10000C240();
    if (a3)
    {
      if (v8)
      {
        sub_10000AF54("Incoming connection security failed", v9, v10, v11, v12, v13, v14, v15, v58);
        v16 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v17 = 3;
    }

    else
    {
      if (v8)
      {
        sub_10000AF54("Incoming connection refused: %!", v9, v10, v11, v12, v13, v14, v15, a2);
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v17 = 4;
    }

    v19 = *(a1 + 4);
    sub_1000B12AC(a1);
    v23 = sub_1002AB810("aaaa", 3u, 0, v6, v7, v20, v21, v22, v19);
    if (v23)
    {
      v24 = v23;
      if (sub_10000C240())
      {
        sub_10000AF54("SignalMan_ConnectRsp failed %!", v25, v26, v27, v28, v29, v30, v31, v24);
        v32 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    sub_10028EE5C(a1, (v17 + 450));
    return;
  }

  sub_100292754(a1);
  v47 = sub_1000B12AC(a1);
  v48 = sub_1000B7ADC(*(v47 + 80), 1);
  if (v48)
  {
    v49 = v48;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_SetFuncTimeout failed %!", v50, v51, v52, v53, v54, v55, v56, v49);
      v57 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100290968(int a1, uint64_t a2, int a3)
{
  v5 = sub_10028E018(a1);
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Policy enforcement failed %! - cid 0x%x, handle %d securityFailed %d", v7, v8, v9, v10, v11, v12, v13, a2);
        v14 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (!*(sub_1000B12AC(v6) + 24))
      {
        sub_10028EE5C(v6, a2);
        return;
      }

      goto LABEL_12;
    }

    if (*(sub_1000B12AC(v5) + 24))
    {
LABEL_12:
      sub_1002906E0(v6, a2, a3);
      return;
    }

    sub_100291EC4(v6, 0);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Channel not found in PolicyCB!", v15, v16, v17, v18, v19, v20, v21, v23);
    v22 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100290AA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v84 = 0;
  v11 = sub_1000ABC7C(a4, &v84);
  if (v11 || !sub_1000B12AC(v84))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v12, v13, v14, v15, v16, v17, v18, v11);
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v11;
  }

  v20 = *sub_1000B12AC(v84);
  if (*(sub_1000B12AC(v84) + 16) != 2)
  {
    if (sub_10000C240())
    {
      v25 = sub_1000B12AC(v84);
      sub_10000AF54("Invalid State: %d", v26, v27, v28, v29, v30, v31, v32, *(v25 + 16));
      v33 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  if (!a6)
  {
    v24 = 4;
    goto LABEL_23;
  }

  if (!a5)
  {
LABEL_45:
    sub_1000D660C();
    return 101;
  }

  v21 = sub_1000CB318(v20);
  v22 = sub_1002DC0C8(v20);
  v83 = 0;
  if (v22)
  {
    sub_1002DC14C(v20, &v83);
  }

  if (*(a5 + 4) != 1)
  {
    if ((*(a5 + 5) & 1) != 0 && !sub_1002DBFE8(v20))
    {
      v24 = 6;
      goto LABEL_23;
    }

    goto LABEL_38;
  }

  if (!v21)
  {
    v24 = 8;
    goto LABEL_23;
  }

  if (v83 < 0x10u)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ((v23 & 1) == 0)
  {
    if ((*(v20 + 170) | 2) != 3)
    {
      v24 = 5;
      goto LABEL_23;
    }

LABEL_38:
    if (a1 && a2 && a3)
    {
      v49 = sub_10029006C(a5);
      if (v49)
      {
        v11 = v49;
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid Connect Params: %!", v50, v51, v52, v53, v54, v55, v56, v11);
          v57 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return v11;
      }

      *(sub_1000B12AC(v84) + 96) = a1;
      *(sub_1000B12AC(v84) + 88) = a2;
      v58 = v84;
      *(v84 + 32) = a3;
      *(sub_1000B12AC(v58) + 48) = 0;
      *(sub_1000B12AC(v84) + 78) = 0;
      v59 = *a5;
      *(sub_1000B12AC(v84) + 36) = v59;
      v60 = sub_10029CFF4(v84, 5, 0);
      if (v60 || (!*(a5 + 12) ? (v61 = -1) : (v61 = *(a5 + 12)), v62 = v84, *(v84 + 76) = v61, v60 = sub_10029E064(*(v62 + 4), 15, 5u, 0, (v62 + 96), v61), v60))
      {
        v11 = v60;
        sub_10028E908(v84);
        return v11;
      }

      v79 = *(a5 + 2);
      *(sub_1000B12AC(v84) + 72) = v79;
      sub_10028A258(v84, *(a5 + 8), *(a5 + 6));
      v80 = *(sub_1003045A0(0x28u) + 8);
      if (v80 <= *(sub_1000B12AC(v84) + 36))
      {
        v81 = (sub_1003045A0(0x28u) + 8);
      }

      else
      {
        v81 = (sub_1000B12AC(v84) + 36);
      }

      v82 = *v81;
      v24 = 0;
      *(sub_1000B12AC(v84) + 36) = v82;
      goto LABEL_23;
    }

    goto LABEL_45;
  }

  v24 = 7;
LABEL_23:
  v34 = v84;
  if (!v84)
  {
    sub_1000D660C();
  }

  v35 = *sub_1000B12AC(v34);
  v36 = *(sub_1000B12AC(v34) + 29);
  if (!v24 && *(sub_1000B12AC(v34) + 16) != 2)
  {
    sub_1000D660C();
  }

  v37 = *(v34 + 4);
  v38 = *(sub_1000B12AC(v34) + 36);
  v39 = *(sub_1000B12AC(v34) + 72);
  v40 = sub_1000CAA48(v34);
  v11 = sub_1002DD500(v35, v36, v37, v38, v39, v40, v24);
  *(sub_1000B12AC(v34) + 16) = 4;
  if (v11 && sub_10000C240() && (sub_10000AF54("SignalMan_LeChannelConnectionRsp failed %!", v41, v42, v43, v44, v45, v46, v47, v11), v48 = sub_10000C050(0x2Fu), os_log_type_enabled(v48, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F7A0();
    if (v24)
    {
      goto LABEL_32;
    }
  }

  else if (v24)
  {
LABEL_32:
    sub_10028EE5C(v34, (v24 + 580));
    return v11;
  }

  v63 = sub_1000B12AC(v34);
  v64 = sub_1000CD5B8(*v63);
  if (v11)
  {
    if (sub_10000C240())
    {
      v65 = *sub_1000B12AC(v34);
      sub_1000B12AC(v34);
      sub_10000AF54("OI_Sar_SetMTU(%d, %d) failed %!", v66, v67, v68, v69, v70, v71, v72, v65);
      v73 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  v74 = *(sub_1000B12AC(v34) + 96);
  v75 = *(v34 + 4);
  v76 = *(sub_1000B12AC(v34) + 36);
  v77 = sub_1000B12AC(v34);
  v74(v75, v76, *(v77 + 32), v64);
  return v11;
}

uint64_t sub_100290FA4(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = sub_1000ABC7C(a1, &v15);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("GetChannel with cid %d failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v13 = v15;
    if (!v15)
    {
      sub_1000D660C();
      v13 = v15;
    }

    *(sub_1000B12AC(v13) + 88) = a2;
  }

  return v4;
}

uint64_t sub_10029104C(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("L2CAP Disconnect cid=%d(0x%x) , reason=%!", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v35 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1000ABC7C(a1, &v33))
  {
    return 404;
  }

  if (*(sub_1000B12AC(v33) + 17))
  {
    return 0;
  }

  if (*(sub_1000B12AC(v33) + 16) != 4 && *(sub_1000B12AC(v33) + 16) != 5)
  {
    return 408;
  }

  v13 = v33;
  v14 = *v33;
  if (*v33 == 2)
  {
    sub_10029ECE4(a1);
    v13 = v33;
    return sub_10029125C(v13, a2);
  }

  if (v14 != 4)
  {
    if (v14 == 3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't disconnect fixed of Magnet channels using the signal manager.", v15, v16, v17, v18, v19, v20, v21, v32);
        v22 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 403;
    }

    return sub_10029125C(v13, a2);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Magnet got messed up", v23, v24, v25, v26, v27, v28, v29, v32);
    v30 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000E771C(5006);
  v31 = sub_1000B12AC(v33);
  return sub_1002314B8(*v31);
}

uint64_t sub_10029125C(uint64_t a1, uint64_t a2)
{
  if (!*sub_1000B12AC(a1))
  {
    sub_1000D660C();
  }

  *(sub_1000B12AC(a1) + 16) = 6;
  *(sub_1000B12AC(a1) + 20) = a2;
  v4 = *sub_1000B12AC(a1);
  v5 = sub_1002AB568();
  v6 = sub_1000B12AC(a1);
  v10 = sub_1002AB810("aa", 6u, a1, v4, v5, v7, v8, v9, *(v6 + 8));
  if (v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send disconnect, closing channel", v11, v12, v13, v14, v15, v16, v17, v20);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    sub_10028EE5C(a1, a2);
  }

  return v10;
}

uint64_t sub_10029135C(unsigned int a1)
{
  v26 = 0;
  if (sub_1000ABC7C(a1, &v26))
  {
    return 404;
  }

  if ((*v26 - 3) > 1)
  {
    if (*(sub_1000B12AC(v26) + 17))
    {
      return 0;
    }

    else if (*(sub_1000B12AC(v26) + 16) == 4)
    {
      v10 = v26;
      if (!*sub_1000B12AC(v26))
      {
        sub_1000D660C();
      }

      *(sub_1000B12AC(v10) + 16) = 6;
      *(sub_1000B12AC(v10) + 20) = 436;
      v11 = sub_1002AB568();
      *(sub_1000B12AC(v10) + 28) = v11;
      v12 = *sub_1000B12AC(v10);
      v13 = *(sub_1000B12AC(v10) + 28);
      v14 = *(v10 + 2);
      v15 = sub_1000B12AC(v10);
      v1 = sub_1002DE204(v12, v13, v14, *(v15 + 8));
      if (v1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send disconnect, closing channel", v16, v17, v18, v19, v20, v21, v22, v25);
          v23 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100813F70();
          }
        }

        sub_10028EE5C(v10, 436);
      }
    }

    else
    {
      return 408;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can't disconnect fixed of Magnet channels using the signal manager.", v2, v3, v4, v5, v6, v7, v8, v25);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 403;
  }

  return v1;
}

uint64_t sub_10029150C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  sub_1000B12AC(a1);
  v61 = 0;
  v60 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  v51 = 0;
  __chkstk_darwin();
  v6 = &v49 - v5;
  bzero(&v49 - v5, v7);
  v8 = *(sub_1000B12AC(a1) + 32);
  v50 = &v49;
  if (v4 <= v8)
  {
    if (v4)
    {
      v19 = 0;
      *&v9 = 136446466;
      v49 = v9;
      while (1)
      {
        v20 = *(sub_1000B12AC(a1) + 60);
        if (v19)
        {
          v21 = -4;
        }

        else
        {
          v21 = -6;
        }

        v22 = v21 + v20;
        if ((v4 - v19) >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v4 - v19;
        }

        v24 = sub_10001F788(v6, a2, v23);
        if (v23 != v24)
        {
          v25 = v24;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to get the full payload size (%d), only got %d bytes", v26, v27, v28, v29, v30, v31, v32, v23);
            v33 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v39 = sub_10000C0FC();
              buf = v49;
              v63 = v39;
              v64 = 1024;
              v65 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", &buf, 0x12u);
            }
          }

          v23 = v25;
        }

        LOWORD(v52) = 2 * (v19 == 0) + v23;
        HIWORD(v52) = *(sub_1000B12AC(a1) + 8);
        if (v19)
        {
          sub_10001FF10(&v54 + 8, 2u);
          v34 = &v52;
          v35 = 4;
        }

        else
        {
          v51 = v4;
          sub_10001FF10(&v54 + 8, 3u);
          sub_10001F968(&v54 + 8, &v52, 4uLL, 0);
          v34 = &v51;
          v35 = 2;
        }

        sub_10001F968(&v54 + 8, v34, v35, 0);
        sub_10001F968(&v54 + 8, v6, v23, 2u);
        v53[0] = *(sub_1000B12AC(a1) + 38) == -1;
        v36 = *(a1 + 128);
        *&v55 = a1;
        *&v54 = v36;
        *(a1 + 128) = 0;
        v37 = sub_1000B12AC(a1);
        v38 = sub_1000B85D8(v53, *v37, 0, *(a1 + 4));
        v18 = v38;
        if (v38 != 412)
        {
          if (v38)
          {
            break;
          }
        }

        v19 = (v23 + v19);
        if (v19 == v4)
        {
          return v18;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("LE_L2CAP_FragmentWriteMBUF %!", v40, v41, v42, v43, v44, v45, v46, v18);
        v47 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      return 531;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error, packet too large", v10, v11, v12, v13, v14, v15, v16, v49);
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 472;
  }

  return v18;
}

uint64_t sub_1002918D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (*a1 != 2 && *a1 != 4)
  {
    sub_1000D660C();
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v5 = *(a2 + 4);
  if (v5 <= *(sub_1000B12AC(a1) + 32))
  {
    v37 = v5 + 2 * (*(sub_1000B12AC(a1) + 78) != 0);
    v38 = *(sub_1000B12AC(a1) + 8);
    v39 = *(sub_1000B12AC(a1) + 9);
    sub_10001FF10(&v29 + 8, 2u);
    sub_10001F968(&v29 + 8, &v37, 4uLL, 0);
    sub_1000BAD68(&v29 + 8, a2);
    LOBYTE(v28[0]) = *(sub_1000B12AC(a1) + 38) == -1;
    v16 = *(a1 + 128);
    *&v30 = a1;
    *&v29 = v16;
    *(a1 + 128) = 0;
    BYTE1(v28[0]) = *(a2 + 8) == 626;
    v17 = sub_1000B12AC(a1);
    v18 = sub_1000B85D8(v28, *v17, 0, *(a1 + 4));
    v15 = v18;
    if (v18)
    {
      if (v18 != 412)
      {
        if (sub_10000C240())
        {
          sub_1000B12AC(a1);
          sub_10000AF54("OI_ConnectMan_WriteMBUF %! to %p", v19, v20, v21, v22, v23, v24, v25, v15);
          v26 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000B7B40(&v29 + 8);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      v6 = sub_1000B12AC(a1);
      sub_10000AF54("MTU size (%d) exceeded! - data length = %d", v7, v8, v9, v10, v11, v12, v13, *(v6 + 32));
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 472;
  }

  return v15;
}

void sub_100291AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = 0;
  if (sub_1000ABC7C(a1, &v37))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data received for invalid CID %d, ignoring packet", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v37))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v20, v21, v22, v23, v24, v25, v26, v36);
    v27 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v37) + 16) == 4)
  {
    v18 = v37;
    *(v37 + 84) += a3;
    v19 = *(v18 + 40);
    if (v19)
    {
      v19(a1, a2, a3, 0, a4);
    }

    else
    {
      (*(v18 + 32))(a1, a2, a3, a4, a5);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Data received for connection not in OPEN state, ignoring packet with cid %d", v28, v29, v30, v31, v32, v33, v34, a1);
    v35 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }
  }
}

void sub_100291C84(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5, int a6)
{
  v35 = 0;
  v12 = sub_1000E1FE8(a1);
  v13 = v12;
  if (v12)
  {
    if (!a6)
    {
      if (a3 == 2 && a5 == 4)
      {
        *(v12 + 229) = *a4;
        if (*a4 < 0 && !sub_1002AD818(sub_100291C84, a2, a1, 3))
        {
          return;
        }
      }

      else if (a3 == 3 && a5 == 8)
      {
        *(v12 + 233) = *a4;
      }
    }

    v14 = &word_100B60278;
    v15 = 3;
    do
    {
      v16 = *(v14 - 1);
      if (v16 && ((*(v13 + 233 + (*v14 >> 3)) >> (*v14 & 7)) & 1) != 0)
      {
        v16(a1);
      }

      v14 += 8;
      --v15;
    }

    while (v15);
    goto LABEL_11;
  }

  sub_1000D660C();
  if (!sub_10000C240() || (sub_10000AF54("Received infoResponseCallback from %:, but it appears this device is no longer connected", v17, v18, v19, v20, v21, v22, v23, a1), v24 = sub_10000C050(0x2Fu), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
LABEL_11:
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_10080F7A0();
  if (!a2)
  {
    return;
  }

LABEL_12:
  if (sub_10028DF3C(a1, &v35))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("no waiting channel found for completed ACL link %: %!", v25, v26, v27, v28, v29, v30, v31, a1);
      v32 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    if (*(sub_1000B12AC(v35) + 16) || *(sub_1000B12AC(v35) + 25) != 1)
    {
      sub_1000D660C();
    }

    *sub_1000B12AC(v35) = v13;
    *(sub_1000B12AC(v35) + 25) = 2;
    v33 = sub_1000B12AC(v35);
    v34 = sub_100305BDC(sub_100290968, v33 + 10, *(v35 + 64), (v35 + 72), 0);
    if (v34)
    {
      sub_100291EC4(v35, v34);
    }
  }
}

void sub_100291EC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
LABEL_3:

      sub_10028EE5C(a1, a2);
      return;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (*a1 == 3)
  {
    v4 = *sub_1000B12AC(a1);
    v5 = sub_1002AB568();
    v6 = *(sub_1000B12AC(a1) + 8);
    v10 = sub_1002AB810("aac", 0xCu, a1, v4, v5, v7, v8, v9, v6);
  }

  else
  {
    if (sub_10029CA24(a1) && !sub_10029C92C(a1))
    {
      return;
    }

    v11 = *sub_1000B12AC(a1);
    v12 = sub_1002AB568();
    v10 = sub_1002AB810("aa", 2u, a1, v11, v12, v13, v14, v15, *(a1 + 6));
  }

  if (!v10)
  {
    *(sub_1000B12AC(a1) + 16) = 1;
    *(sub_1000B12AC(a1) + 25) = 0;
  }
}

void sub_100291FF4(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v68 = 0;
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", v7, v8, v9, v10, v11, v12, v13, byte_100B602A0);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_14:
    sub_1002AB810("aaaa", 3u, 0, a1, a4, v11, v12, v13, 0);
    return;
  }

  v15 = a2;
  if ((a2 & 0x1010101) != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt to invalid PSM %d", v26, v27, v28, v29, v11, v12, v13, 407);
      v30 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_14;
  }

  v16 = sub_10023B994(a1);
  if (v16)
  {
    v17 = v16;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_LP_ConnectionAdded failed (%!), rejecting connection", v18, v19, v20, v21, v22, v23, v24, v17);
      v25 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_20:
    v35 = a1;
    v36 = a3;
    v37 = 4;
LABEL_21:
    sub_1002923EC(v35, v36, v37, a4, v21, v22, v23, v24);
    return;
  }

  if (sub_10028E3EC(2u, &v68, 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate channel, rejecting connection", v31, v32, v33, v21, v22, v23, v24, v67);
      v34 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_20;
  }

  v38 = v68;
  *(v68 + 6) = v15;
  v39 = sub_1000B12AC(v38);
  v40 = *(a1 + 52);
  *(v39 + 10) = *(a1 + 48);
  *(v39 + 14) = v40;
  *(sub_1000B12AC(v68) + 24) = 1;
  *sub_1000B12AC(v68) = a1;
  *(sub_1000B12AC(v68) + 8) = a3;
  *(sub_1000B12AC(v68) + 29) = a4;
  *(sub_1000B12AC(v68) + 16) = 2;
  if (sub_10000C240())
  {
    v41 = *(v68 + 4);
    sub_1000B12AC(v68);
    sub_10000AF54("RecvConnectReq cid=%d psm=%d addr=%:", v42, v43, v44, v45, v46, v47, v48, v41);
    v49 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = sub_10000C0FC();
      *buf = 136446210;
      v70 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v51 = sub_1000B12AC(v68);
  v52 = sub_100296D38(v51 + 10, *(v68 + 4), *(v68 + 6));
  v53 = v68;
  if (v52)
  {
    sub_10028E908(v68);
    if (sub_10000C240())
    {
      sub_10000AF54("Connection refused - invalid PSM", v54, v55, v56, v21, v22, v23, v24, v67);
      v57 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v35 = a1;
    v36 = a3;
    v37 = 2;
    goto LABEL_21;
  }

  if (*v68)
  {
    if ((*(a1 + 228) & 1) == 0)
    {
      *(a1 + 228) = 1;
      v58 = sub_1000B12AC(v53);
      if (sub_1002AD818(sub_100291C84, 0, v58 + 10, 2))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not ask device for extended features.", v59, v60, v61, v62, v63, v64, v65, v67);
          v66 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }
}

uint64_t sub_1002923EC(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1002AB810("aaaa", 3u, 0, a1, a4, a6, a7, a8, 0);

  return sub_1000D2538(a1, 19);
}

void sub_100292450(uint64_t a1, int a2, __int16 a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v63 = 0;
  memset(v62, 0, 44);
  if (sub_10028DB10(a1, a6, &v63))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvConnectRsp, unknown identifier 0x%x, ignoring", v11, v12, v13, v14, v15, v16, v17, a6);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v63))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v27, v28, v29, v30, v31, v32, v33, v61);
    v34 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if (*sub_1000B12AC(v63) == a1)
  {
    if (*(sub_1000B12AC(v63) + 16) == 1)
    {
      if (a4 <= 1 && *(v63 + 4) != a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("RecvConnectRsp, wrong source CID (s/b %d, rcvd %d).  Dropping connection", v45, v46, v47, v48, v49, v50, v51, *(v63 + 4));
          v52 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v53 = v63;
        v54 = 454;
        goto LABEL_35;
      }

      *(sub_1000B12AC(v63) + 8) = a3;
      *(sub_1000B12AC(v63) + 25) = 3;
      if (a4 == 1)
      {
        v43 = v63;
        v44 = sub_1003045A0(0x2Fu);
        sub_1002AB58C(v43, *(v44 + 8));
        return;
      }

      if (!a4)
      {
        if (sub_10029CB0C() && (*(a1 + 229) & 0x20) != 0)
        {
          sub_1000B12AC(v63);
        }

        v55 = v62;
        v56 = sub_10029C878(v63, 1, v62);
        if (v56 != 1)
        {
          if (v56 == 2)
          {
            v53 = v63;
            v54 = 461;
            goto LABEL_35;
          }

          v55 = 0;
        }

        sub_100292754(v63);
        v57 = v63;
        v58 = *(sub_1000B12AC(v63) + 36);
        v59 = *(sub_1000B12AC(v63) + 38);
        v60 = sub_1000B12AC(v63);
        sub_100292810(v57, v58, v59, *(v60 + 40), v55);
        return;
      }

      v53 = v63;
      v54 = a4 + 450;
LABEL_35:
      sub_10028EE5C(v53, v54);
      return;
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvConnectRsp, unexpected connect RSP, ignoring", v35, v36, v37, v38, v39, v40, v41, v61);
    v42 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("RecvConnectRsp not excpected for this ACL handle", v19, v20, v21, v22, v23, v24, v25, v61);
    v26 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1008156F0();
    }
  }
}

uint64_t sub_100292754(uint64_t a1)
{
  v9 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(sub_1000B12AC(a1) + 16);
  v3 = sub_1000B12AC(a1);
  if (v2 == 4)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  *(v3 + 16) = v4;
  v8[0] = 0;
  *(sub_1000B12AC(a1) + 26) = 0;
  *(sub_1000B12AC(a1) + 27) = 0;
  v8[1] = &v9;
  LOWORD(v8[0]) = 8;
  v5 = *(sub_1003045A0(0x2Fu) + 10);
  v6 = sub_1000B12AC(v9);
  return sub_10002195C(sub_10029598C, v8, v5, (v6 + 80));
}

uint64_t sub_100292810(_DWORD *a1, __int16 a2, int a3, int a4, uint64_t a5)
{
  if (*(sub_1000B12AC(a1) + 16) != 4 && *(sub_1000B12AC(a1) + 16) != 3 && *(sub_1000B12AC(a1) + 16) != 5)
  {
    if (sub_10000C240())
    {
      v33 = sub_1000B12AC(a1);
      sub_10000AF54("invalid state for config (%d)", v34, v35, v36, v37, v38, v39, v40, *(v33 + 16));
      v41 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  sub_1000B12AC(a1);
  sub_1000B12AC(a1);
  *(sub_1000B12AC(a1) + 36) = a2;
  *(sub_1000B12AC(a1) + 38) = a3;
  v10 = sub_1000B12AC(a1);
  v11 = sub_1000CD5B8(*v10);
  if (!v11)
  {
    if ((a3 - 1) <= 0xFFFD)
    {
      sub_1000B12AC(a1);
      v22 = sub_100018960(85, sub_100295BA0);
      if (v22)
      {
        v12 = v22;
        if (sub_10000C240())
        {
          sub_10000AF54("Write flushTO failed %!", v23, v24, v25, v26, v27, v28, v29, v12);
          v30 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }
        }

        return v12;
      }
    }

    if (a4 != 0xFFFF)
    {
      v31 = sub_1000B12AC(a1);
      v12 = sub_10028ED44(*v31);
      if (v12)
      {
        return v12;
      }
    }

    if (*(sub_1000B12AC(a1) + 25) != 3)
    {
      if (!a5)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    if (*a1 != 4 && *a1 != 2)
    {
      goto LABEL_41;
    }

    v32 = a1;
    if (!*(sub_1000B12AC(a1) + 38))
    {
      v32 = sub_10028D534();
      if (!*(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_41;
      }

      v42 = 0;
      while (1)
      {
        if (v32 != a1 && (*v32 == 4 || *v32 == 2))
        {
          v44 = *sub_1000B12AC(a1);
          if (v44 != *sub_1000B12AC(v32) && *(sub_1000B12AC(v32) + 38) && (*(sub_1000B12AC(v32) + 38) != -1 || (byte_100BCDFEA & 0x40) == 0))
          {
            break;
          }
        }

        ++v42;
        v32 += 36;
        if (v42 >= *(sub_1003045A0(0x2Fu) + 2))
        {
          goto LABEL_41;
        }
      }
    }

    if (*(sub_1000B12AC(v32) + 38) != 0xFFFF)
    {
      if (!a5)
      {
LABEL_42:
        if (*(sub_1000B12AC(a1) + 52))
        {
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
        }
      }

LABEL_44:
      if (*(sub_1000B12AC(a1) + 16) == 4)
      {
        sub_100292754(a1);
      }

      v45 = *sub_1000B12AC(a1);
      v46 = sub_1002AB568();
      v47 = sub_1000B12AC(a1);
      sub_1002AB810("aamsfro", 4u, a1, v45, v46, v48, v49, v50, *(v47 + 8));
      v12 = 0;
      *(sub_1000B12AC(a1) + 26) = 2;
      return v12;
    }

LABEL_41:
    if (!a5)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    v13 = sub_1000B12AC(a1);
    sub_10000AF54("OI_Sar_SetMTU(%d, %d) failed %!", v14, v15, v16, v17, v18, v19, v20, *v13);
    v21 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      sub_10080F7A0();
    }
  }

  return v12;
}

void sub_100292C94(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  v117 = 0;
  v116 = *(sub_1003045A0(0x28u) + 8);
  v115 = -1;
  v114 = 1;
  memset(v113, 0, 44);
  if (sub_1000ABC7C(a3, &v117))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("cid %d not found %!", v10, v11, v12, v13, v14, v15, v16, a3);
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        sub_10080F7A0();
        return;
      }
    }

    return;
  }

  if (*v117 != 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring configuration request on non-connection channel %d", v26, v27, v28, v29, v30, v31, v32, a3);
      v33 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    return;
  }

  if (!sub_1000B12AC(v117))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packets.", v34, v35, v36, v37, v38, v39, v40, v111);
      v41 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    return;
  }

  if (*sub_1000B12AC(v117) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvConfigReq unexpected CID", v18, v19, v20, v21, v22, v23, v24, v111);
      v25 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }

    return;
  }

  v42 = v117;
  if (*v117 == 2)
  {
    v43 = *(sub_1000B12AC(v117) + 16);
    v42 = v117;
    if (v43 == 3)
    {
      v44 = *(sub_1000B12AC(v117) + 26);
      v42 = v117;
      if (!v44)
      {
        v45 = *(sub_1000B12AC(v117) + 27);
        v42 = v117;
        if (!v45)
        {
          v46 = *(sub_1000B12AC(v117) + 24);
          v42 = v117;
          if (v46)
          {
            v47 = sub_1000B12AC(v117);
            sub_10002242C(*(v47 + 80));
            sub_100292754(v117);
            v42 = v117;
          }
        }
      }
    }
  }

  if (*(sub_1000B12AC(v42) + 16) == 4)
  {
    sub_100292754(v117);
  }

  if ((*(sub_1000B12AC(v117) + 16) == 3 || *(sub_1000B12AC(v117) + 16) == 5) && !*(sub_1000B12AC(v117) + 27))
  {
    v48 = *(sub_1000B12AC(v117) + 16);
    if (*a5)
    {
      if (*(a5 + 4) < 0x30u || *(sub_1000B12AC(v117) + 16) == 5 && (v51 = *(a5 + 4), v51 < *(sub_1000B12AC(v117) + 32)))
      {
        v49 = 1;
        v50 = &v116;
      }

      else
      {
        v52 = *(a5 + 4);
        *(sub_1000B12AC(v117) + 32) = v52;
        v49 = 0;
        v50 = (sub_1000B12AC(v117) + 32);
      }

      v112 = v50;
    }

    else
    {
      v112 = 0;
      v49 = 0;
    }

    v53 = *a5;
    if ((*a5 & 2) != 0)
    {
      if (*(a5 + 6))
      {
        v54 = *(a5 + 6);
        *(sub_1000B12AC(v117) + 34) = v54;
        v53 = *a5;
      }

      else
      {
        v49 = 1;
      }
    }

    if ((v53 & 4) != 0 && *(a5 + 8) >= 2u)
    {
      v49 = 1;
    }

    v55 = sub_10029CB0C();
    if ((v53 & 0x10) == 0)
    {
      if (!v55 || (*(a1 + 229) & 0x20) == 0)
      {
LABEL_56:
        if ((*a5 & 8) != 0)
        {
          v66 = sub_10029CB2C(v117, a5, 1, v113);
          v49 = v66;
          if ((*a5 & 0x10) != 0)
          {
            if (v66 == 2)
            {
              v65 = 0;
            }

            else if (BYTE10(v113[0]) - 3 <= 1 && sub_10029CB0C())
            {
              v68 = *(a1 + 229);
              v65 = v113;
              if ((v68 & 0x20) != 0)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v65 = v113;
            }

            goto LABEL_75;
          }

          if (v66 == 2)
          {
            v65 = 0;
          }

          else if (BYTE10(v113[0]) - 3 <= 1 && sub_10029CB0C())
          {
            v67 = *(a1 + 229);
            v65 = v113;
            if ((v67 & 0x20) != 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v65 = v113;
          }
        }

        else
        {
          v65 = 0;
          if ((*a5 & 0x10) != 0)
          {
LABEL_75:
            *(sub_1000B12AC(v117) + 78) = 0;
            sub_1000B12AC(v117);
            goto LABEL_76;
          }
        }

        *(sub_1000B12AC(v117) + 78) = 0;
LABEL_76:
        if ((*a5 & 0x20) != 0 && *(a5 + 25) > 1u)
        {
          v79 = v48;
          v80 = 0;
          v81 = 0;
          v49 = 1;
        }

        else
        {
          if (v49 == 2)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Critical negotiation : disconnecting.", v69, v70, v71, v72, v73, v74, v75, v111);
              v76 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            v77 = v117;
            v78 = 452;
LABEL_83:
            sub_10029125C(v77, v78);
            return;
          }

          v79 = v48;
          v80 = 0;
          v81 = v49 == 0;
          if (!v49 && !a4)
          {
            v49 = 0;
            v80 = 1;
            *(sub_1000B12AC(v117) + 27) = 1;
            v81 = 1;
          }
        }

        *(sub_1000B12AC(v117) + 29) = a2;
        if (v112)
        {
          *(sub_1000B12AC(v117) + 31) = 1;
        }

        if ((a4 & 1) == 0)
        {
          v82 = *(sub_1000B12AC(v117) + 31);
          v83 = sub_1000B12AC(v117);
          if (v82)
          {
            *(v83 + 31) = 0;
          }
        }

        if (!v65)
        {
          v65 = v113;
          v98 = sub_10029C878(v117, 1, v113);
          if (v98 != 1)
          {
            if (v98 == 2)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Critical negotiation : disconnecting.", v99, v100, v101, v102, v103, v104, v105, v111);
                v106 = sub_10000C050(0x2Fu);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v77 = v117;
              if (v81)
              {
                v78 = 0;
              }

              else
              {
                v78 = (v49 + 450);
              }

              goto LABEL_83;
            }

            v65 = 0;
          }
        }

        sub_100293468(v117, v49, a4);
        if (v80)
        {
          if (*(sub_1000B12AC(v117) + 26) == 3)
          {
            if (v79 != 5)
            {
              v84 = *(sub_1000B12AC(v117) + 32);
              v85 = sub_10029EED0(*(v117 + 4));
              if (v85)
              {
                v86 = v85;
                if (sub_10000C240())
                {
                  sub_10000AF54("Queue Tag serviced failed with status %!", v87, v88, v89, v90, v91, v92, v93, v86);
                  v94 = sub_10000C050(0x2Fu);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    sub_10080F7A0();
                  }
                }
              }

              v95 = *(sub_1000B12AC(v117) + 96);
              v96 = *(v117 + 4);
              v97 = sub_1000B12AC(v117);
              v95(v96, *(v97 + 36), v84, 0);
            }
          }

          else if (!*(sub_1000B12AC(v117) + 26))
          {
            v107 = v117;
            v108 = *(sub_1000B12AC(v117) + 36);
            v109 = *(sub_1000B12AC(v117) + 38);
            v110 = sub_1000B12AC(v117);
            sub_100292810(v107, v108, v109, *(v110 + 40), v65);
          }
        }

        return;
      }

      *(sub_1000B12AC(v117) + 78) = 1;
LABEL_55:
      sub_1000B12AC(v117);
      goto LABEL_56;
    }

    if (v55)
    {
      v56 = *(a5 + 20);
      if (v56 <= 1)
      {
        *(sub_1000B12AC(v117) + 78) = v56;
        goto LABEL_55;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("We don't support FCS.", v57, v58, v59, v60, v61, v62, v63, v111);
      v64 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v49 = 1;
    goto LABEL_56;
  }
}

uint64_t sub_100293468(uint64_t a1, int a2, char a3)
{
  v6 = *sub_1000B12AC(a1);
  v7 = *(sub_1000B12AC(a1) + 29);
  v8 = sub_1000B12AC(a1);
  result = sub_1002AB810("aaamsfro", 5u, 0, v6, v7, v9, v10, v11, *(v8 + 8));
  if (!a2 && (a3 & 1) == 0)
  {
    *(sub_1000B12AC(a1) + 27) = 3;
    result = sub_1000B12AC(a1);
    if (*(result + 26) == 3)
    {
      v13 = sub_1000B12AC(a1);
      sub_10002242C(*(v13 + 80));
      *(sub_1000B12AC(a1) + 16) = 4;
      *(sub_1000B12AC(a1) + 25) = 0;
      result = sub_1000B12AC(a1);
      *(result + 28) = 0;
    }
  }

  return result;
}

void sub_1002935A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, __int16 a10)
{
  v69 = 0;
  memset(v68, 0, 44);
  if (sub_1000ABC7C(a3, &v69))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("cid %d not found %!", v14, v15, v16, v17, v18, v19, v20, a3);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v69))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v30, v31, v32, v33, v34, v35, v36, v67);
    v37 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(v69) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvConfigRsp unexpected CID", v22, v23, v24, v25, v26, v27, v28, v67);
      v29 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(v69) + 16) != 3 && *(sub_1000B12AC(v69) + 16) != 5 || *(sub_1000B12AC(v69) + 26) != 2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid state for configuration", v39, v40, v41, v42, v43, v44, v45, v67);
    v46 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if (a10)
  {
    if (a8)
    {
      LODWORD(a8) = sub_10029CB2C(v69, a8, 0, v68);
    }

    if (a9)
    {
      v38 = *a9;
    }

    else
    {
      v38 = 0;
    }

    *(sub_1000B12AC(v69) + 78) = v38;
    if (a8 != 2)
    {
      v57 = v69;
      v58 = *(sub_1000B12AC(v69) + 36);
      v59 = *(sub_1000B12AC(v69) + 38);
      v60 = sub_1000B12AC(v69);
      sub_100292810(v57, v58, v59, *(v60 + 40), v68);
      return;
    }

    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  v48 = sub_1000B12AC(v69);
  if (a10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("config rsp = %!\n", v49, v50, v51, v52, v53, v54, v55, v47 | 0x1CCu);
      v56 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10029125C(v69, (v47 + 450));
  }

  else
  {
    v61 = *(v48 + 16);
    if ((a4 & 1) == 0)
    {
      *(sub_1000B12AC(v69) + 26) = 3;
      if (*(sub_1000B12AC(v69) + 27) == 3)
      {
        *(sub_1000B12AC(v69) + 16) = 4;
        *(sub_1000B12AC(v69) + 25) = 0;
        v62 = sub_1000B12AC(v69);
        sub_10002242C(*(v62 + 80));
        *(sub_1000B12AC(v69) + 28) = 0;
      }
    }

    if (*(sub_1000B12AC(v69) + 26) == 3 && *(sub_1000B12AC(v69) + 27) == 3 && v61 != 5)
    {
      v63 = *(sub_1000B12AC(v69) + 32);
      v64 = *(sub_1000B12AC(v69) + 96);
      v65 = *(v69 + 4);
      v66 = sub_1000B12AC(v69);
      v64(v65, *(v66 + 36), v63, 0);
    }
  }
}

void sub_100293948(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = 0;
  if (sub_1000ABC7C(a2, &v47))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No channel exists for CID %d (%!)", v8, v9, v10, v11, v12, v13, v14, a2);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002AD1D8(a1, 2, 0, a2, a3, a4, v13, v14);
    return;
  }

  if (!sub_1000B12AC(v47))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v24, v25, v26, v27, v28, v29, v30, v46);
    v31 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_15:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v47) + 8) != a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid source CID %d", v32, v33, v34, v35, v36, v37, v38, a3);
    v39 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_15;
  }

  if (*sub_1000B12AC(v47) == a1)
  {
    *(sub_1000B12AC(v47) + 29) = a4;
    v40 = *sub_1000B12AC(v47);
    v41 = *(sub_1000B12AC(v47) + 29);
    v42 = *(v47 + 4);
    sub_1000B12AC(v47);
    sub_1002AB810("aa", 7u, 0, v40, v41, v43, v44, v45, v42);
    sub_10028EE5C(v47, 431);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_ConnectMan_RecvDisconnectReq unexpected CID", v16, v17, v18, v19, v20, v21, v22, v46);
    v23 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100815770();
    }
  }
}

void sub_100293B60(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v45 = 0;
  if (sub_1000ABC7C(a2, &v45))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No channel exists for CID %d (%!)", v8, v9, v10, v11, v12, v13, v14, a2);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DE00C(a1, 2, 0, a2, a3, a4);
    return;
  }

  if (!sub_1000B12AC(v45))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v24, v25, v26, v27, v28, v29, v30, v44);
    v31 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_15:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v45) + 8) != a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid source CID %d", v32, v33, v34, v35, v36, v37, v38, a3);
    v39 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_15;
  }

  if (*sub_1000B12AC(v45) == a1)
  {
    *(sub_1000B12AC(v45) + 29) = a4;
    v40 = *sub_1000B12AC(v45);
    v41 = *(sub_1000B12AC(v45) + 29);
    v42 = *(v45 + 4);
    v43 = sub_1000B12AC(v45);
    sub_1002DE3A8(v40, v41, v42, *(v43 + 8));
    sub_10028EE5C(v45, 431);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_ConnectMan_RecvDisconnectReq unexpected CID", v16, v17, v18, v19, v20, v21, v22, v44);
    v23 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100815770();
    }
  }
}

void sub_100293D68(uint64_t a1, int a2, unsigned int a3)
{
  v25 = 0;
  if (!sub_1000ABC7C(a3, &v25) && sub_1000B12AC(v25) && *(sub_1000B12AC(v25) + 16) == 6 && *(sub_1000B12AC(v25) + 8) == a2 && *(v25 + 4) == a3)
  {
    if (*sub_1000B12AC(v25) == a1)
    {
      *(sub_1000B12AC(v25) + 28) = 0;
      v22 = v25;
      v23 = sub_1000B12AC(v25);
      sub_10028EE5C(v22, *(v23 + 20));
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvDisconnectRsp unexpected CID", v14, v15, v16, v17, v18, v19, v20, v24);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid packet", v6, v7, v8, v9, v10, v11, v12, v24);
    v13 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100293EB0(uint64_t a1, unsigned int a2, int a3)
{
  v23 = 0;
  if (!sub_1000ABC7C(a2, &v23) && sub_1000B12AC(v23) && *(sub_1000B12AC(v23) + 16) == 6 && *(sub_1000B12AC(v23) + 8) == a3 && *(v23 + 4) == a2)
  {
    if (*sub_1000B12AC(v23) == a1)
    {
      sub_10028EE5C(v23, 436);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("LE_ConnectMan_RecvDisconnectRsp unexpected CID", v14, v15, v16, v17, v18, v19, v20, v22);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid packet", v6, v7, v8, v9, v10, v11, v12, v22);
    v13 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100293FE0(uint64_t a1, int a2, __int16 a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v84 = 0;
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", v11, v12, v13, v14, v15, v16, v17, byte_100B602A0);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v19 = byte_100B602A0;
    v20 = a1;
    v21 = a7;
    v22 = a3;
    return sub_1002DD500(v20, v21, v22, 0, 0, 0, v19);
  }

  v27 = a2;
  if ((a2 - 1) >= 0x7F && (a2 & 0xFF80) != 0x80)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to invalid PSM %d", v28, v29, v30, v31, v32, v33, v34, 582);
      v35 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_11:
    v20 = a1;
    v21 = a7;
    v22 = a3;
    v19 = 2;
    return sub_1002DD500(v20, v21, v22, 0, 0, 0, v19);
  }

  if ((a3 & 0xFFC0) != 0x40)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - Rejecting connect attempt due to source CID out of range", v44, v45, v46, v47, v48, v49, v50, 589);
      v51 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v20 = a1;
    v21 = a7;
    v22 = a3;
    v19 = 9;
    return sub_1002DD500(v20, v21, v22, 0, 0, 0, v19);
  }

  v83 = 0;
  sub_10028D9A0(a3, a1, &v83);
  if (v83)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - Rejecting connect attempt due to source CID already connected", v36, v37, v38, v39, v40, v41, v42, 10);
      v43 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v20 = a1;
    v21 = a7;
    v22 = a3;
    v19 = 10;
    return sub_1002DD500(v20, v21, v22, 0, 0, 0, v19);
  }

  if (sub_10028E3EC(2u, &v84, 1))
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("%! - rejecting connect attempt due to ailure to allocate channel", v52, v53, v54, v55, v56, v57, v58, 584);
    v59 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v60 = v84;
  *(v84 + 6) = v27;
  v61 = sub_1000B12AC(v60);
  v62 = *(a1 + 52);
  *(v61 + 10) = *(a1 + 48);
  *(v61 + 14) = v62;
  v63 = sub_1000B12AC(v84);
  v64 = *(a1 + 51);
  *(v63 + 121) = *(a1 + 48);
  *(v63 + 124) = v64;
  *(sub_1000B12AC(v84) + 24) = 1;
  *sub_1000B12AC(v84) = a1;
  *(sub_1000B12AC(v84) + 8) = a3;
  *(sub_1000B12AC(v84) + 29) = a7;
  if (14 * a5 < a4)
  {
    LOWORD(a4) = 14 * a5;
  }

  *(sub_1000B12AC(v84) + 32) = a4;
  *(sub_1000B12AC(v84) + 60) = a5;
  if (sub_10028A18C(v84, a6))
  {
    sub_10028E908(v84);
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("%! - rejecting connect attempt due to failure to init remote parameters, returned %!(%d), ejecting connection", v65, v66, v67, v68, v69, v70, v71, 584);
    v72 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_10080F7A0();
LABEL_32:
    v20 = a1;
    v21 = a7;
    v22 = a3;
    v19 = 4;
    return sub_1002DD500(v20, v21, v22, 0, 0, 0, v19);
  }

  *(sub_1000B12AC(v84) + 16) = 2;
  v74 = sub_1000B12AC(v84);
  result = sub_100296E7C(v74 + 121, a1, *(v84 + 4), *(v84 + 6), a7, a8);
  if (result)
  {
    sub_10028E908(v84);
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to failure to find a handler for this channel", v75, v76, v77, v78, v79, v80, v81, 582);
      v82 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100294430(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, unsigned __int8 a9)
{
  v98 = 0;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", v13, v14, v15, v16, v17, v18, v19, byte_100B602A0);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v21 = byte_100B602A0;
    v22 = a1;
    v23 = a8;
    v24 = a3;
    v25 = a4;
  }

  else
  {
    v29 = a2;
    if (((a2 - 1) < 0x7F || (a2 & 0xFF80) == 0x80) && sub_100297238(a2))
    {
      if (a5 < 0x40 || a6 < 0x40)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! - rejecting connect attempt due to invalid MTU (%d)/MPS (%d) size", v56, v57, v58, v59, v60, v61, v62, a5);
          v63 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v22 = a1;
        v23 = a8;
        v24 = a3;
        v25 = a4;
        v21 = 11;
        return sub_1002DD6CC(v22, v23, v24, v25, 0, 0, 0, v21);
      }

      v30 = 0;
      v31 = 14 * a6;
      if (14 * a6 >= a5)
      {
        v31 = a5;
      }

      v96 = v31;
      do
      {
        v32 = *(a4 + 2 * v30);
        if ((v32 & 0xFFC0) != 0x40)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - Rejecting connect attempt due to source CID out of range", v64, v65, v66, v67, v68, v69, v70, 589);
            v71 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v22 = a1;
          v23 = a8;
          v24 = a3;
          v25 = a4;
          v21 = 9;
          return sub_1002DD6CC(v22, v23, v24, v25, 0, 0, 0, v21);
        }

        v97 = 0;
        sub_10028D9A0(v32, a1, &v97);
        if (v97)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - Rejecting connect attempt due to source CID already connected", v72, v73, v74, v75, v76, v77, v78, 10);
            v79 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v22 = a1;
          v23 = a8;
          v24 = a3;
          v25 = a4;
          v21 = 10;
          return sub_1002DD6CC(v22, v23, v24, v25, 0, 0, 0, v21);
        }

        if (sub_10028E3EC(2u, &v98, 1))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - rejecting connect attempt due to failure to allocate channel", v80, v81, v82, v83, v84, v85, v86, 584);
            v87 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          result = sub_1002DD500(a1, a8, *(a4 + 2 * v30), 0, 0, 0, 4);
          if (v30)
          {
            return sub_10028EA60(v30, v99);
          }

          return result;
        }

        v33 = v98;
        *(v99 + v30) = v98;
        *(v33 + 6) = v29;
        v34 = sub_1000B12AC(v33);
        v35 = *(a1 + 52);
        *(v34 + 10) = *(a1 + 48);
        *(v34 + 14) = v35;
        v36 = sub_1000B12AC(v98);
        v37 = *(a1 + 51);
        *(v36 + 121) = *(a1 + 48);
        *(v36 + 124) = v37;
        *(sub_1000B12AC(v98) + 24) = 1;
        *sub_1000B12AC(v98) = a1;
        v38 = *(a4 + 2 * v30);
        *(sub_1000B12AC(v98) + 8) = v38;
        *(sub_1000B12AC(v98) + 29) = a8;
        *(sub_1000B12AC(v98) + 32) = v96;
        *(sub_1000B12AC(v98) + 60) = a6;
        *(sub_1000B12AC(v98) + 120) = 1;
        if (sub_10028A18C(v98, a7))
        {
          sub_10028EA60((v30 + 1), v99);
          if (sub_10000C240())
          {
            sub_10000AF54("%! - rejecting connect attempt due to failure to init remote parameters, returned %!(%d), ejecting connection", v88, v89, v90, v91, v92, v93, v94, 584);
            v95 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v22 = a1;
          v23 = a8;
          v24 = a3;
          v25 = a4;
          v21 = 4;
          return sub_1002DD6CC(v22, v23, v24, v25, 0, 0, 0, v21);
        }

        *(sub_1000B12AC(v98) + 16) = 2;
        ++v30;
      }

      while (a3 != v30);
      result = sub_100296FF8(a1 + 48, a1, a3, a4, *(v98 + 6), a8, a9);
      if (!result)
      {
        return result;
      }

      sub_10028EA60(a3, v99);
      if (sub_10000C240())
      {
        sub_10000AF54("%! - rejecting connect attempt due to failure to find a handler for this channel", v40, v41, v42, v43, v44, v45, v46, 582);
        v47 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to invalid PSM %d", v48, v49, v50, v51, v52, v53, v54, 582);
      v55 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v22 = a1;
    v23 = a8;
    v24 = a3;
    v25 = a4;
    v21 = 2;
  }

  return sub_1002DD6CC(v22, v23, v24, v25, 0, 0, 0, v21);
}

void sub_1002949D4(uint64_t a1, __int16 a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  v104 = 0;
  if (sub_10028DC28(a1, a7, &v104))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeConnectRsp, unknown identifier 0x%x, ignoring", v14, v15, v16, v17, v18, v19, v20, a7);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v104))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v30, v31, v32, v33, v34, v35, v36, v103);
    v37 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(v104) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeConnectRsp not excpected for this ACL handle", v22, v23, v24, v25, v26, v27, v28, v103);
      v29 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1008156F0();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(v104) + 16) != 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvLeConnectRsp, unexpected connect RSP, ignoring", v50, v51, v52, v53, v54, v55, v56, v103);
    v57 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if ((a6 - 7) >= 2 && a6 != 5)
  {
    if (a6)
    {
      v69 = v104;
      v70 = (a6 + 580);
    }

    else
    {
      if ((a2 & 0xFFC0) == 0x40)
      {
        *(sub_1000B12AC(v104) + 8) = a2;
        if (14 * a4 >= a3)
        {
          v38 = a3;
        }

        else
        {
          v38 = 14 * a4;
        }

        *(sub_1000B12AC(v104) + 32) = v38;
        *(sub_1000B12AC(v104) + 60) = a4;
        v39 = sub_10028A18C(v104, a5);
        v40 = v39;
        if (v39)
        {
          v41 = v39;
          if (!sub_10000C240())
          {
            goto LABEL_51;
          }

          sub_10000AF54("LE_L2CAP_InitRemoteParams returned %d\n", v42, v43, v44, v45, v46, v47, v48, v40);
          v49 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v79 = sub_10029CFF4(v104, 5, 0);
          v80 = v79;
          if (v79)
          {
            v41 = v79;
            if (!sub_10000C240())
            {
              goto LABEL_51;
            }

            sub_10000AF54("BT_L2CAP_Flow_InitChannel returned %d\n", v81, v82, v83, v84, v85, v86, v87, v80);
            v88 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v41 = sub_10029E064(*(v104 + 4), 15, 5u, 0, (v104 + 96), *(v104 + 76));
            if (!v41)
            {
              goto LABEL_52;
            }

            if (!sub_10000C240() || (sub_10000AF54("BT_L2CAP_Queue_Register returned %d\n", v89, v90, v91, v92, v93, v94, v95, v41), v96 = sub_10000C050(0x2Fu), !os_log_type_enabled(v96, OS_LOG_TYPE_ERROR)))
            {
LABEL_51:
              sub_10028EE5C(v104, 4);
LABEL_52:
              if (!v41)
              {
                v97 = sub_1000B12AC(v104);
                v98 = sub_1000CD5B8(*v97);
                *(sub_1000B12AC(v104) + 16) = 4;
                v99 = *(sub_1000B12AC(v104) + 96);
                v100 = *(v104 + 4);
                v101 = *(sub_1000B12AC(v104) + 36);
                v102 = sub_1000B12AC(v104);
                v99(v100, v101, *(v102 + 32), v98);
              }

              return;
            }
          }
        }

        sub_10080F7A0();
        goto LABEL_51;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("destination CID out of range", v71, v72, v73, v74, v75, v76, v77, v103);
        v78 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v69 = v104;
      v70 = 9;
    }

    sub_10028EE5C(v69, v70);
    return;
  }

  v58 = sub_100007618(2uLL, 0x1000040BDFB0063uLL);
  if (!v58)
  {
    sub_10028E908(v104);
    sub_10028EE5C(v104, 1164);
  }

  *v58 = *(v104 + 4);
  v59 = *(a1 + 256);
  if (!v59)
  {
    v59 = sub_1000BAE38(0, 0);
    *(a1 + 256) = v59;
  }

  sub_1000B8B8C(v59, v58, 0);
  if (sub_10000C240())
  {
    sub_10000AF54("Start Pairing", v60, v61, v62, v63, v64, v65, v66, v103);
    v67 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = sub_10000C0FC();
      *buf = 136446210;
      v106 = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002E73A0(a1, 1);
}

void sub_100294ED4(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v122 = 0;
  memset(v121, 0, sizeof(v121));
  v114 = a2;
  v113 = 0;
  v120 = 0;
  v119 = 0;
  v15 = sub_10028DD40(a1, a8, &v114, v123, &v113, v121);
  if (v113)
  {
    for (i = 0; i < v113; ++i)
    {
      v17 = *(v121 + i);
      *v17 = 0;
      sub_10000C1E8(*(v17 + 112));
    }
  }

  if (v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeEnhancedConnectRsp, unknown identifier 0x%x, ignoring", v18, v19, v20, v21, v22, v23, v24, a8);
      v25 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(*&v123[0]))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.", v34, v35, v36, v37, v38, v39, v40, v111);
    v41 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_16:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(*&v123[0]) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeEnhancedConnectRsp not excpected for this ACL handle", v26, v27, v28, v29, v30, v31, v32, v111);
      v33 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1008156F0();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(*&v123[0]) + 16) != 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvLeEnhancedConnectRsp, unexpected connect RSP, ignoring", v53, v54, v55, v56, v57, v58, v59, v111);
    v60 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_16;
  }

  if ((a7 & 0xFFFFFFFB) != 0)
  {
    if (a7 <= 8 && ((1 << a7) & 0x1A0) != 0)
    {
      v42 = sub_100007618(2uLL, 0x1000040BDFB0063uLL);
      if (!v42)
      {
        sub_10028F064(v123, a2, 1164);
      }

      *v42 = *(*&v123[0] + 4);
      v43 = *(a1 + 256);
      if (!v43)
      {
        v43 = sub_1000BAE38(0, 0);
        *(a1 + 256) = v43;
      }

      sub_1000B8B8C(v43, v42, 0);
      if (sub_10000C240())
      {
        sub_10000AF54("Start Pairing", v44, v45, v46, v47, v48, v49, v50, v111);
        v51 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = sub_10000C0FC();
          *buf = 136446210;
          v116 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002E73A0(a1, 1);
      return;
    }

    v98 = (a7 + 580);
    v99 = a2;
LABEL_62:
    sub_10028F064(v123, v99, v98);
    return;
  }

  if (!a2)
  {
LABEL_60:
    v108 = *(sub_1000B12AC(*&v123[0]) + 104);
    v109 = *(sub_1000B12AC(*&v123[0]) + 36);
    v110 = sub_1000B12AC(*&v123[0]);
    v108(a2, &v119, v109, *(v110 + 32), a7);
    if ((a7 & 0xFFFFFFFB) == 0)
    {
      return;
    }

    v99 = a2;
    v98 = 1164;
    goto LABEL_62;
  }

  if (14 * a5 >= a4)
  {
    v61 = a4;
  }

  else
  {
    v61 = 14 * a5;
  }

  v62 = a2;
  v63 = v123;
  v64 = &v119;
  while (1)
  {
    v66 = *a3++;
    v65 = v66;
    if ((v66 & 0xFFC0) != 0x40)
    {
      break;
    }

    *(sub_1000B12AC(*v63) + 8) = v65;
    *(sub_1000B12AC(*v63) + 32) = v61;
    *(sub_1000B12AC(*v63) + 60) = a5;
    v67 = *v63;
    *v64 = *(*v63 + 4);
    v68 = sub_10028A18C(v67, a6);
    v69 = v68;
    if (v68)
    {
      v70 = v68;
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      sub_10000AF54("LE_L2CAP_InitRemoteParams returned %d\n", v71, v72, v73, v74, v75, v76, v77, v69);
      v78 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v79 = sub_10029CFF4(*v63, 5, 0);
    v80 = v79;
    if (v79)
    {
      v70 = v79;
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      sub_10000AF54("BT_L2CAP_Flow_InitChannel returned %d\n", v81, v82, v83, v84, v85, v86, v87, v80);
      v78 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

LABEL_49:
      v95 = sub_10000C0FC();
      *buf = 136446466;
      v116 = v95;
      v117 = 1024;
      v118 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      goto LABEL_50;
    }

    v70 = sub_10029E064(*(*v63 + 4), 15, 6u, 0, (*v63 + 96), *(*v63 + 76));
    if (!v70)
    {
      goto LABEL_51;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("BT_L2CAP_Queue_Register returned %d\n", v88, v89, v90, v91, v92, v93, v94, v70);
      v78 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    sub_10028EE5C(*v63, 4);
LABEL_51:
    if (v70)
    {
      a7 = v70;
      goto LABEL_60;
    }

    v96 = sub_1000B12AC(*v63);
    sub_1000CD5B8(*v96);
    v97 = *v63++;
    *(sub_1000B12AC(v97) + 16) = 4;
    v64 = (v64 + 2);
    if (!--v62)
    {
      a7 = 0;
      goto LABEL_60;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("remote CID out of range", v100, v101, v102, v103, v104, v105, v106, v111);
    v107 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_10028EE5C(*v63, 9);
}

uint64_t sub_100295548(__int128 *a1, unsigned int a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, char a6)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v12 = sub_1003045A0(0x28u);
  if (a2)
  {
    v13 = *(v12 + 8);
    v14 = a2;
    v15 = v21;
    while (1)
    {
      v16 = sub_1000ABC7C(*a3, v15);
      if (v16 || v13 < a4)
      {
        break;
      }

      if (*(sub_1000B12AC(*v15) + 36) >= a4 || *(sub_1000B12AC(*v15) + 60) >= a5)
      {
        v19 = 483;
        return sub_1002DDCF0(a1, a6, v19);
      }

      *(sub_1000B12AC(*v15) + 36) = a4;
      *(sub_1000B12AC(*v15) + 60) = a5;
      if (*(sub_1000B12AC(*v15) + 112))
      {
        v18 = sub_1000B12AC(*v15);
        (*(v18 + 112))(*a3, a4, a5, 0);
      }

      ++v15;
      ++a3;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
      v19 = 589;
    }

    else
    {
      v19 = 483;
    }
  }

  else
  {
LABEL_13:
    v19 = 0;
  }

  return sub_1002DDCF0(a1, a6, v19);
}

uint64_t sub_1002956B0(uint64_t a1, uint64_t a2, int a3)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 5;
  result = sub_10028DD40(a1, a3, &v15, v16, 0, 0);
  if (!result && v15)
  {
    for (i = 0; i < v15; ++i)
    {
      v6 = *(sub_1000B12AC(*(v16 + i)) + 36);
      v7 = 14 * *(sub_1000B12AC(*(v16 + i)) + 60);
      v8 = sub_1000B12AC(*(v16 + i));
      if (v7 <= v6)
      {
        v9 = 14 * *(v8 + 60);
      }

      else
      {
        v9 = *(v8 + 36);
      }

      *(sub_1000B12AC(*(v16 + i)) + 32) = v9;
      result = sub_1000B12AC(*(v16 + i));
      if (*(result + 112))
      {
        v10 = *(sub_1000B12AC(*(v16 + i)) + 112);
        v11 = *(v16 + i);
        v12 = *(v11 + 4);
        v13 = *(sub_1000B12AC(v11) + 36);
        v14 = sub_1000B12AC(*(v16 + i));
        result = v10(v12, v13, *(v14 + 60), a2);
      }
    }
  }

  return result;
}

void sub_100295800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 5;
  if (sub_10000C240())
  {
    sub_10000AF54("LE_ConnectMan_RecvCommandRejected Received id=%d result :%d", v5, v6, v7, v8, v9, v10, v11, a3);
    v12 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (!sub_10028DD40(a1, a3, &v13, v14, 0, 0))
  {
    sub_10028F064(v14, v13, 4700);
  }
}

uint64_t sub_1002958EC(uint64_t a1, __int16 a2)
{
  v2 = 0;
  while (qword_100B60270[v2] != a1)
  {
    v2 += 2;
    if (v2 == 6)
    {
      goto LABEL_6;
    }
  }

  qword_100B60270[v2] = 0;
LABEL_6:
  v3 = qword_100B60270;
  v4 = 3;
  while (*v3)
  {
    v3 += 2;
    if (!--v4)
    {
      return 104;
    }
  }

  v5 = 0;
  *v3 = a1;
  *(v3 + 4) = a2;
  return v5;
}

uint64_t sub_100295954(uint64_t a1)
{
  v1 = 0;
  while (qword_100B60270[v1] != a1)
  {
    v1 += 2;
    if (v1 == 6)
    {
      return 404;
    }
  }

  result = 0;
  qword_100B60270[v1] = 0;
  return result;
}

uint64_t sub_10029598C(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP Config Timeout on cid %d, psm %d", v2, v3, v4, v5, v6, v7, v8, *(v1 + 4));
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  if (*v1 != 2 || *(sub_1000B12AC(v1) + 16) != 3 || *(sub_1000B12AC(v1) + 26) || *(sub_1000B12AC(v1) + 27) || !*(sub_1000B12AC(v1) + 24))
  {
    if (sub_10000C240())
    {
      if (*v1 == 2)
      {
        v17 = sub_1000B12AC(v1);
        v25 = sub_100304810(v17 + 10, v18, v19, v20, v21, v22, v23, v24);
      }

      else
      {
        v25 = "group";
      }

      sub_10000AF54("Configuration process timed out, remote device %s", v10, v11, v12, v13, v14, v15, v16, v25);
      v26 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v27 = 464;
    return sub_10029125C(v1, v27);
  }

  sub_100292754(v1);
  if (sub_10029CB0C() && (*(*sub_1000B12AC(v1) + 229) & 0x20) != 0)
  {
    sub_1000B12AC(v1);
  }

  v29 = *(sub_1000B12AC(v1) + 36);
  v30 = *(sub_1000B12AC(v1) + 38);
  v31 = sub_1000B12AC(v1);
  result = sub_100292810(v1, v29, v30, *(v31 + 40), 0);
  if (result)
  {
    v27 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("ConfigReqHelper failed %!", v32, v33, v34, v35, v36, v37, v38, v27);
      v39 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_10029125C(v1, v27);
  }

  return result;
}

void sub_100295BA0(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Failed to write FlushTO %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100295C20(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v48 = 0;
  if (!a3)
  {
    sub_1000D660C();
  }

  v49 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  if (a2 == 2)
  {
    v6 = *(a3 + 4);
    sub_10001FF10(&v40 + 8, 2u);
    v7 = v6;
    v8 = v6 >> 8;
    goto LABEL_5;
  }

  v9 = sub_1000ABC7C(a2, &v48);
  if (v9)
  {
    return v9;
  }

  if (*v48 == 3)
  {
    v10 = *(a3 + 4);
    if (v10 <= *sub_1000CD958(v48))
    {
      sub_10001FF10(&v40 + 8, 2u);
      if (a2 == 43)
      {
        LOBYTE(v39[0]) = a1[129] != 1;
LABEL_17:
        sub_1000BAD68(&v40 + 8, a3);
        if (v48)
        {
          v20 = *(v48 + 16);
          *(v48 + 16) = 0;
        }

        else
        {
          v20 = 0;
        }

        *&v40 = v20;
        v21 = sub_1000B85D8(v39, a1, 0, a2);
        v9 = v21;
        if (v21)
        {
          if (v21 != 412)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_ConnectMan_WriteMBUF %!", v22, v23, v24, v25, v26, v27, v28, v9);
              v29 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }

          sub_1000B7B40(&v40 + 8);
        }

        return v9;
      }

      v7 = v10;
      v8 = v10 >> 8;
LABEL_5:
      LOBYTE(v49) = v7;
      BYTE1(v49) = v8;
      HIWORD(v49) = a2;
      sub_10001F968(&v40 + 8, &v49, 4uLL, 0);
      if (a2 == 2)
      {
        LOBYTE(v39[0]) = 1;
        *&v41 = 0;
        if (v48)
        {
          *&v40 = *(v48 + 16);
          *(v48 + 16) = 0;
        }

        else
        {
          *&v40 = 0;
        }
      }

      else
      {
        LOBYTE(v39[0]) = *(sub_1000CD958(v48) + 2) == -1;
        *&v41 = v48;
      }

      goto LABEL_17;
    }

    if (sub_10000C240())
    {
      v11 = sub_1000CD958(v48);
      sub_10000AF54("MTU size (%d) exceeded! - data length = %d", v12, v13, v14, v15, v16, v17, v18, *v11);
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 472;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CID %d is not a fixed channel", v30, v31, v32, v33, v34, v35, v36, a2);
      v37 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 532;
  }
}

void sub_100295EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = 0;
  if (sub_1000ABC7C(a2, &v46))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can't find channel %d, dropping packet.", v10, v11, v12, v13, v14, v15, v16, a2);
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v18 = v46;
    v46[21] += a4;
    if ((*(sub_1000CD958(v18) + 4) & 1) != 0 && !*(a1 + 2) || (*(sub_1000CD958(v46) + 4) & 2) != 0 && *(a1 + 2) == 4)
    {
      v19 = sub_1000CD958(v46);
      (*(v19 + 24))(a1, a3, a4, a5);
    }

    else
    {
      sub_1000D660C();
      if (sub_10000C240())
      {
        sub_1000CD958(v46);
        sub_10000AF54("Fixed Channel 0x%x on wrong physical link 0x%x, should be 0x%x", v27, v28, v29, v30, v31, v32, v33, a2);
        v34 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      v35 = sub_1000D6178(5u, v20, v21, v22, v23, v24, v25, v26, a1);
      v36 = sub_1000D6410(a1, v35);
      if (v36)
      {
        v37 = v36;
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnect failed with status %!", v38, v39, v40, v41, v42, v43, v44, v37);
          v45 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10080FEE0();
          }
        }
      }
    }
  }
}

uint64_t sub_1002960B8()
{
  v0 = sub_1003045A0(0x2Fu);
  qword_100B602A8 = sub_1001BBBD8(16 * *v0, 0x1080040EF48E34EuLL);
  if (qword_100B602A8)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

uint64_t sub_100296104(unsigned int a1, uint64_t a2)
{
  v10 = 0;
  if (a2)
  {
    if (sub_1000ABC7C(a1, &v10))
    {
      return 434;
    }

    v4 = *sub_100297178(v10);
    if (!v4)
    {
      return 434;
    }

    if (*v4 != *a2 || *(v4 + 2) != *(a2 + 4))
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[2];
        if (!v4)
        {
          return 434;
        }

        if (*v4 == *a2 && *(v4 + 2) == *(a2 + 4))
        {
          goto LABEL_18;
        }
      }
    }

    v6 = 0;
LABEL_18:
    v8 = v4[2];
    if (v6)
    {
      v9 = v6 + 2;
    }

    else
    {
      v9 = sub_100297178(v10);
    }

    *v9 = v8;
    sub_1000D2538(v4[1], 19);
    sub_10000C1E8(v4);
    return 0;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002961E4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (!a3)
  {
    sub_1000D660C();
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (!*sub_100297178(a1))
    {
      return 426;
    }

    v6 = 2;
  }

  v19[0] = *(a3 + 4) + 2;
  v19[1] = 2;
  v19[2] = *(a1 + 6);
  sub_10001FF10(&v11 + 8, 2u);
  sub_10001F968(&v11 + 8, v19, 6uLL, 0);
  sub_1000BAD68(&v11 + 8, a3);
  LOBYTE(v10[0]) = 0;
  *&v11 = 0;
  *&v12 = a1;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &xmmword_100B5FA50;
  }

  v8 = sub_1000B85D8(v10, v7, v6, *(a1 + 4));
  if (v8)
  {
    sub_1000B7B40(&v11 + 8);
  }

  return v8;
}

void sub_100296308(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/l2cap/group.c", 509, "buf");
    }

    v4 = a3;
    v5 = *a2;
    if (!*a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("psm should be non-zero", v6, v7, v8, v9, v10, v11, v12, v18);
        v13 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100810070(v13);
        }
      }
    }

    if (*sub_1003045A0(0x2Fu))
    {
      v14 = 0;
      v15 = 0;
      v16 = v4 - 2;
      do
      {
        if (v5 == *(qword_100B602A8 + v14))
        {
          v17 = *(qword_100B602A8 + v14 + 8);
          if (v17)
          {
            v17(v5, a2 + 1, v16);
          }
        }

        ++v15;
        v14 += 16;
      }

      while (v15 < *sub_1003045A0(0x2Fu));
    }
  }
}

uint64_t sub_100296410(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Init: configuration parameter is deprecated", v2, v3, v4, v5, v6, v7, v8, v67);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003045E4(a1, 47);
  }

  if (HIDWORD(xmmword_100BCE2E0))
  {
    return 0;
  }

  if (!sub_1003045A0(0x2Fu))
  {
    sub_1000D660C();
  }

  if (!sub_1003045A0(0x2Fu))
  {
    return 127;
  }

  v12 = sub_1003045A0(0x2Fu);
  qword_100B602B0 = sub_1001BBBD8(40 * *v12, 0x1080040E93A93CCuLL);
  if (!qword_100B602B0)
  {
    return 106;
  }

  v13 = sub_10028D540();
  if (v13)
  {
    v10 = v13;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_Init failed %!", v14, v15, v16, v17, v18, v19, v20, v10);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v22 = sub_1002960B8();
    if (v22)
    {
      v10 = v22;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_GroupMan_Init failed %!", v23, v24, v25, v26, v27, v28, v29, v10);
        v30 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v31 = sub_1002AB4A0();
      if (v31)
      {
        v10 = v31;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_SignalMan_Init failed %!", v32, v33, v34, v35, v36, v37, v38, v10);
          v39 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v40 = sub_10029F16C();
        if (v40)
        {
          v10 = v40;
          if (sub_10000C240())
          {
            sub_10000AF54("Sar_Init failed %!", v41, v42, v43, v44, v45, v46, v47, v10);
            v48 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v49 = sub_10029EF3C();
          if (v49)
          {
            v10 = v49;
            if (sub_10000C240())
            {
              sub_10000AF54("Queue_Init failed %!", v50, v51, v52, v53, v54, v55, v56, v10);
              v57 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            if (BYTE9(xmmword_100BCE038) != 1 || (sub_10028FDA0(), !v58))
            {
              v10 = 0;
              HIDWORD(xmmword_100BCE2E0) = 1;
              return v10;
            }

            v10 = v58;
            if (sub_10000C240())
            {
              sub_10000AF54("LE_SecurityCbInit failed %!", v59, v60, v61, v62, v63, v64, v65, v10);
              v66 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_100296718(unsigned __int16 *a1)
{
  for (i = 192; ; ++i)
  {
    v3 = i;
    if ((sub_100296770(i) & 1) == 0)
    {
      break;
    }

    if (v3 >= 0xFF)
    {
      return 104;
    }
  }

  result = 0;
  *a1 = i;
  return result;
}

uint64_t sub_100296770(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1 || *(qword_100B602B0 + v2 + 32) != 1)
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002967FC(int a1, uint64_t a2)
{
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    sub_1000D660C();
  }

  if ((a1 & 0x1010101) != 1)
  {
    return 482;
  }

  return sub_100296870(a1, 0, a2, 0);
}

uint64_t sub_100296870(int a1, char a2, uint64_t a3, uint64_t a4)
{
  if (sub_100296CB0(a1) & 1) != 0 || (sub_100296770(a1))
  {
    return 402;
  }

  if (*sub_1003045A0(0x2Fu))
  {
    v9 = 0;
    v10 = 0;
    while (*(qword_100B602B0 + v9))
    {
      ++v10;
      v9 += 40;
      if (v10 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_8;
      }
    }

    result = 0;
    v19 = qword_100B602B0 + v9;
    *v19 = a1;
    *(v19 + 8) = a3;
    *(v19 + 16) = a4;
    *(v19 + 32) = a2;
    *(v19 + 33) = 1;
  }

  else
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register L2CAP: no resources.", v11, v12, v13, v14, v15, v16, v17, v20);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

uint64_t sub_100296978(int a1, uint64_t a2)
{
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    sub_1000D660C();
  }

  if ((a1 - 1) >= 0x7F && (a1 & 0xFF80) != 0x80)
  {
    return 482;
  }

  return sub_100296870(a1, 1, 0, a2);
}

uint64_t sub_100296A00(int a1, int a2)
{
  v4 = sub_10028D534();
  if (!*sub_1003045A0(0x2Fu))
  {
    return 120;
  }

  v5 = 0;
  v6 = 0;
  while (*(qword_100B602B0 + v5) != a1 || *(qword_100B602B0 + v5 + 32) != a2)
  {
    ++v6;
    v5 += 40;
    if (v6 >= *sub_1003045A0(0x2Fu))
    {
      return 120;
    }
  }

  if (*(sub_1003045A0(0x2Fu) + 2))
  {
    v8 = 0;
    while (*v4 != 2 || !*(sub_1000B12AC(v4) + 16) || !*(sub_1000B12AC(v4) + 24) || *(v4 + 6) != a1)
    {
      v4 += 144;
      if (++v8 >= *(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_14;
      }
    }

    return 141;
  }

  else
  {
LABEL_14:
    result = 0;
    v9 = qword_100B602B0 + v5;
    *v9 = 0;
    *(v9 + 32) = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  return result;
}

uint64_t sub_100296B2C(int a1, char a2)
{
  sub_10028D534();
  if (!*sub_1003045A0(0x2Fu))
  {
    return 120;
  }

  v4 = 0;
  v5 = 0;
  while (*(qword_100B602B0 + v4) != a1 || *(qword_100B602B0 + v4 + 32) != 1)
  {
    ++v5;
    v4 += 40;
    if (v5 >= *sub_1003045A0(0x2Fu))
    {
      return 120;
    }
  }

  result = 0;
  *(qword_100B602B0 + v4 + 33) = a2;
  return result;
}

uint64_t sub_100296BCC(_WORD *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = 0;
  v3 = 61433;
  v4 = 4103;
  do
  {
    if (v2)
    {
      return 0;
    }

    if ((v4 & 0x101) != 1)
    {
      sub_1000D660C();
    }

    v5 = sub_100296CB0(v4);
    if ((v5 & 1) == 0)
    {
      *a1 = v4;
    }

    v2 = v5 ^ 1;
    v6 = v4 + 2;
    if (((v4 + 2) & 0x100) != 0)
    {
      v6 = v4 + 258;
    }

    if (v6 <= 0x1007u)
    {
      v4 = 4103;
    }

    else
    {
      v4 = v6;
    }

    --v3;
  }

  while (v3);
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate PSM: no resources.", v7, v8, v9, v10, v11, v12, v13, v16);
    v14 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 104;
}

uint64_t sub_100296CB0(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1 || *(qword_100B602B0 + v2 + 32))
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100296D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v6 = 0;
    v7 = 0;
    while (*(qword_100B602B0 + v6) != a3 || *(qword_100B602B0 + v6 + 32))
    {
      ++v7;
      v6 += 40;
      if (v7 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_6;
      }
    }

    (*(qword_100B602B0 + v6 + 8))(a3, a1, a2);
    return 0;
  }

  else
  {
LABEL_6:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d", v8, v9, v10, v11, v12, v13, v14, 407);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", v16, v17, v18, v19, v20, v21, v22, a1);
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100296E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v11 = 0;
    v12 = 0;
    while (*(qword_100B602B0 + v11) != a4 || *(qword_100B602B0 + v11 + 32) != 1 || *(qword_100B602B0 + v11 + 33) != 1)
    {
      ++v12;
      v11 += 40;
      if (v12 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_7;
      }
    }

    v30[0] = 0;
    v30[1] = 0;
    (*(qword_100B602B0 + v11 + 16))(a4, a2, a1, a3, a6, v30);
    return 0;
  }

  else
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d)", v13, v14, v15, v16, v17, v18, v19, 407);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", v21, v22, v23, v24, v25, v26, v27, a1);
      v28 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100296FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (*(qword_100B602B0 + v13) == a5 && *(qword_100B602B0 + v13 + 32) == 1)
      {
        v15 = *(qword_100B602B0 + v13 + 24);
        if (v15)
        {
          break;
        }
      }

      ++v14;
      v13 += 40;
      if (v14 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_7;
      }
    }

    v33[0] = 0;
    v33[1] = 0;
    v15(a5, a2, a1, a3, a4, a7, v33);
    return 0;
  }

  else
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d)", v16, v17, v18, v19, v20, v21, v22, 407);
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", v24, v25, v26, v27, v28, v29, v30, a1);
      v31 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100297178(unsigned int *a1)
{
  if (*a1 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid access: type %d, cid %d, psm %d", v2, v3, v4, v5, v6, v7, v8, *a1);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (*a1 != 1)
    {
      sub_1000D660C();
    }
  }

  result = *(a1 + 13);
  if (!result)
  {
    sub_1000D660C();
    return *(a1 + 13);
  }

  return result;
}

BOOL sub_100297238(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1)
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return *(qword_100B602B0 + v2 + 24) != 0;
}

uint64_t sub_1002972C0(uint64_t *a1, void *a2)
{
  if (getenv("BT_HCI_TRANSPORT"))
  {
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
    *__str = 0u;
    v17 = 0u;
    __strlcpy_chk();
    v4 = strtok(__str, ":");
    if (v4)
    {
      v5 = v4;
      sub_100304AF8("Searching for transport: %s\n", v4);
      v6 = &off_100AE9A70;
      do
      {
        v7 = *v6;
        if (!*v6)
        {
          sub_100304AF8("FATAL ERROR - HCI Transport\t%s could not be matched.\n", v5);
          return 1065;
        }

        ++v6;
      }

      while (strcmp(*(v7 + 8), v5));
      v8 = strtok(0, ":");
      if (v8)
      {
        v9 = sub_100297634(v8);
        if (!v9)
        {
          return 1065;
        }

        v10 = v9;
        v11 = strtok(0, ":");
        if (v11)
        {
          *(v10 + 16) = strdup(v11);
        }

        goto LABEL_26;
      }

      v10 = sub_100297634(*(v7 + 8));
      if (v10)
      {
LABEL_26:
        result = 0;
        *a1 = v10;
        *a2 = v7;
        return result;
      }
    }

    return 1065;
  }

  sub_100304AF8("BT_HCI_TRANSPORT not set - Attempting to read from plist.\n");
  v12 = sub_10009B9DC();
  if (v12 <= 4)
  {
    if (v12 <= 1)
    {
      if (!v12)
      {
        sub_100304AF8("HCI Transport is set to USB\n");
LABEL_39:
        result = 0;
        *a2 = &unk_100B51F48;
        v14 = &unk_100B51EC8;
        goto LABEL_40;
      }

      if (v12 != 1)
      {
LABEL_38:
        sub_100304AF8("HCI Transport is unknown - Setting to USB\n");
        goto LABEL_39;
      }

      sub_100304AF8("HCI Transport is set to H4\n");
      result = 0;
      v15 = &unk_100B519C8;
    }

    else if (v12 == 2)
    {
      sub_100304AF8("HCI Transport is set to H4DS\n");
      result = 0;
      v15 = &unk_100B51B10;
    }

    else if (v12 == 3)
    {
      sub_100304AF8("HCI Transport is set to H4BC\n");
      result = 0;
      v15 = &unk_100B51A68;
    }

    else
    {
      sub_100304AF8("HCI Transport is set to H5\n");
      result = 0;
      v15 = &unk_100B51BB0;
    }

    *a2 = v15;
    v14 = &unk_100B518C8;
    goto LABEL_40;
  }

  if (v12 <= 7)
  {
    if (v12 != 5)
    {
      if (v12 == 6)
      {
        sub_100304AF8("HCI Transport is set to APPLEBT\n");
        result = 0;
        *a2 = &unk_100B51820;
        v14 = &unk_100B517A0;
      }

      else
      {
        sub_100304AF8("HCI Transport is set to PCIE Skywalk\n");
        result = 0;
        *a2 = &unk_100B515E0;
        v14 = &unk_100B51560;
      }

      goto LABEL_40;
    }

    sub_100304AF8("BCSP Transport not supported - Setting to USB\n");
    goto LABEL_39;
  }

  if (v12 == 8)
  {
    sub_100304AF8("HCI Transport is set to PCIE SRS\n");
    result = 0;
    *a2 = &unk_100B51700;
    v14 = &unk_100B51680;
    goto LABEL_40;
  }

  if (v12 == 9)
  {
    sub_100304AF8("HCI Transport is set to APPLE PCIE\n");
    result = 0;
    *a2 = &unk_100B51E28;
    v14 = &unk_100B51DA8;
    goto LABEL_40;
  }

  if (v12 != 10)
  {
    goto LABEL_38;
  }

  sub_100304AF8("HCI Transport is set to virtual\n");
  result = 0;
  *a2 = &unk_100B53ED0;
  v14 = &unk_100B53E50;
LABEL_40:
  *a1 = v14;
  return result;
}

uint64_t sub_100297634(const char *a1)
{
  sub_100304AF8("Searching for driver: %s\n", a1);
  for (i = &off_100AE9AD8; ; ++i)
  {
    v3 = *i;
    if (!*i)
    {
      break;
    }

    if (!strcmp(*(v3 + 8), a1))
    {
      return v3;
    }
  }

  sub_100304AF8("FATAL ERROR - HCI Driver\t %s could not be matched.\n", a1);
  return v3;
}

uint64_t sub_1002976B0(unsigned __int16 *a1)
{
  v2 = *(a1 + 3);
  v3 = "???";
  v4 = "???";
  if (v2 <= 2)
  {
    v4 = off_100AE9B28[v2];
  }

  if (*(a1 + 2) == 1)
  {
    v3 = "E_RETRANSMIT_TX_XMIT";
  }

  if (*(a1 + 2))
  {
    v5 = v3;
  }

  else
  {
    v5 = "E_RETRANSMIT_TX_WAIT_F";
  }

  sub_100304AF8("cid=0x%x, txState=%s, rxState=%s, nextTxSeq=%d, expectedACKSeq=%d, expectedTxSeq=%d, bufferSeq=%d, remoteBusy=%d, localbusy=%d", *a1, v5, v4, a1[2], a1[3], a1[4], a1[5], *(a1 + 15), *(a1 + 16));
  sub_100304AF8("sRejListSize=%d, retryCount=%d, rnrSent=%d, rejActioned=%d, srejActioned=%d, sRejSaveReqSeq=%d, sendRej=%d, bufferSeqSrej=%d, framesSent=%d\n", a1[72], *(a1 + 146), *(a1 + 147), *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), a1[76], a1[77]);
  v6 = "YES";
  if (*(a1 + 40))
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (!*(a1 + 41))
  {
    v6 = "NO";
  }

  return sub_100304AF8("retransmissionTimer=%s, monitorTimer=%s\n", v7, v6);
}

uint64_t sub_1002977D4(uint64_t a1)
{
  *(*(sub_1000B12AC(a1) + 128) + 2) = 0;
  v2 = *(*(sub_1000B12AC(a1) + 128) + 16);
  v3 = *(sub_1000B12AC(a1) + 128);
  v4 = *(v3 + 14);
  *(v3 + 14) = 0;
  if (v2 == 1)
  {

    return sub_100297860(a1, 1, v4);
  }

  else
  {

    return sub_1000BC368(a1, 1, v4);
  }
}

uint64_t sub_100297860(uint64_t a1, char a2, char a3)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v20 = 0u;
  v23 = 0;
  v18 = 0;
  LOBYTE(v19) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v19 + 1) = *sub_1000B12AC(a1);
  LODWORD(v20) = 0;
  WORD2(v20) = *(a1 + 4);
  WORD3(v20) = 256;
  BYTE8(v20) = 0;
  v6 = sub_1000B12AC(a1);
  v7 = (sub_1000BC224(a1, 2, a2, a3, *(*(v6 + 128) + 10), &v23 + 2) + 4);
  WORD5(v20) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v7;
  v23 = (v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v23 + 1) = ((v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v23) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v21 + 8, 2u);
  sub_10001F968(v21 + 8, &v23, v7, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v21 + 8, &v18);
    sub_10001F968(v21 + 8, &v18, 2uLL, 2u);
  }

  v8 = sub_1000BC58C(&v19);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(a1) + 128) + 147) = 1;
  }

  return v8;
}

uint64_t sub_100297A98(uint64_t a1, char a2)
{
  result = sub_1000B12AC(a1);
  *(*(result + 128) + 156) = a2;
  return result;
}

uint64_t sub_100297AC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000B12AC(a1);
  v4 = sub_1000B47B8(*(*(v3 + 128) + 176));
  v15 = v4;
  if (v4)
  {
    while (1)
    {
      v5 = sub_1000BC720(v4);
      if (*(v5 + 38) == a2)
      {
        return *(v5 + 48);
      }

      sub_1000BC828(&v15);
      v4 = v15;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Could not find frame %d in retransmission list", v7, v8, v9, v10, v11, v12, v13, a2);
      v14 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100297B70(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2 >> 7;
  v11 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v12 = (a2 >> 1) & 0x3F;
  if ((v10 & 1) == 0)
  {
    if (v11 != v12)
    {
      goto LABEL_19;
    }

    v13 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v13 || v13 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v14 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v15 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v14 <= v13)
      {
        if (v13 - v15 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_19;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v15) & 0x3Fu) < v13)
      {
        goto LABEL_19;
      }
    }

    v19 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v19;
    sub_1000B4F34(a1, v13, 0);
    sub_1000B4B20(a1, a3, a4, a5);
LABEL_16:
    sub_1000B0390(a1);
    v20 = sub_1000B12AC(a1);
    result = 0;
    *(*(v20 + 128) + 3) = 0;
    return result;
  }

  if (v11 != v12)
  {
    goto LABEL_19;
  }

  v16 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v16 && v16 <= *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    goto LABEL_18;
  }

  v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
  v18 = *(*(sub_1000B12AC(a1) + 128) + 6);
  if (v17 <= v16)
  {
    if ((v16 - v18) > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v18) & 0x3Fu) >= v16)
  {
LABEL_18:
    if (*(*(sub_1000B12AC(a1) + 128) + 2))
    {
      goto LABEL_19;
    }

    v36 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v36;
    sub_1000B4F34(a1, v16, 1);
    sub_1000B4B20(a1, a3, a4, a5);
    if (*(*(sub_1000B12AC(a1) + 128) + 148))
    {
      *(*(sub_1000B12AC(a1) + 128) + 148) = 0;
    }

    else
    {
      v37 = sub_1002993EC(a1, v16, 0);
      if (v37)
      {
        v38 = v37;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit I-Frames %!.", v39, v40, v41, v42, v43, v44, v45, v38);
          v46 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1000BE1E4(a1, 0);
    }

    goto LABEL_16;
  }

LABEL_19:
  v22 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v23 = *(sub_1000B12AC(a1) + 54) + v22;
  v24 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v23 > 0x3F)
  {
    if (v12 < v24)
    {
      v26 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v26) & 0x3Fu) <= v12)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (v24 > v12)
    {
      goto LABEL_38;
    }

    v25 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v25 < v12)
    {
      goto LABEL_38;
    }
  }

  v27 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v28 = *(sub_1000B12AC(a1) + 54) + v27;
  v29 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v28 > 0x3F)
  {
    if (v12 <= v29)
    {
      v30 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v30 + *(sub_1000B12AC(a1) + 54) - 64 <= v12)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v12 <= v29)
  {
    goto LABEL_38;
  }

  v31 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v31 || v31 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v32 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v33 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v32 <= v31)
    {
      if (v31 - v33 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_38:
        v35 = sub_1000B12AC(a1);
        sub_1002976B0(*(v35 + 128));
        return 544;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v33) & 0x3Fu) < v31)
    {
      goto LABEL_38;
    }
  }

  v34 = (a2 >> 7) & 1;
  if (v34 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_38;
  }

  sub_1000B4F34(a1, v31, v34);
  return 0;
}

uint64_t sub_10029809C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 >> 1) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v11 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v11 || v11 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v12 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v13 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v12 <= v11)
      {
        if (v11 - v13 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_14;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v13) & 0x3Fu) < v11)
      {
        goto LABEL_14;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && (*(*(sub_1000B12AC(a1) + 128) + 151) & 1) == 0 && *(*(sub_1000B12AC(a1) + 128) + 144) == 1)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      v14 = *(*(sub_1000B12AC(a1) + 128) + 152);
      *(*(sub_1000B12AC(a1) + 128) + 10) = v14;
      sub_1000B0390(a1);
      v15 = 0;
      *(*(sub_1000B12AC(a1) + 128) + 3) = 0;
      return v15;
    }
  }

LABEL_14:
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v16 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v16 || v16 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v18 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v17 <= v16)
      {
        if (v16 - v18 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_31;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v18) & 0x3Fu) < v16)
      {
        goto LABEL_31;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 151) == 1 && *(*(sub_1000B12AC(a1) + 128) + 144) == 1)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      v19 = *(*(sub_1000B12AC(a1) + 128) + 152);
      *(*(sub_1000B12AC(a1) + 128) + 10) = v19;
      v20 = sub_100299F14(a1);
      if (v20)
      {
        v21 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send a REJ %!", v22, v23, v24, v25, v26, v27, v28, v21);
          v29 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v15 = 0;
      *(*(sub_1000B12AC(a1) + 128) + 3) = 1;
      return v15;
    }
  }

LABEL_31:
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v30 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v30 || v30 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v31 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v32 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v31 <= v30)
      {
        if (v30 - v32 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_43;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v32) & 0x3Fu) < v30)
      {
        goto LABEL_43;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 144) >= 2u)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      return 0;
    }
  }

LABEL_43:
  if (*(*(sub_1000B12AC(a1) + 128) + 8) != v10)
  {
    goto LABEL_52;
  }

  v33 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v33 || v33 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v34 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v35 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v34 <= v33)
    {
      if (v33 - v35 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_52;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v35) & 0x3Fu) < v33)
    {
      goto LABEL_52;
    }
  }

  if (((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
  {
    sub_100299D40(a1, a3);
    v44 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v44;
    v45 = a1;
    v46 = (a2 >> 8) & 0x3F;
    v47 = (a2 >> 7) & 1;
LABEL_125:
    sub_1000B4F34(v45, v46, v47);
    return 0;
  }

LABEL_52:
  v36 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v37 = *(sub_1000B12AC(a1) + 54) + v36;
  v38 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v37 > 0x3F)
  {
    if (v10 < v38)
    {
      v40 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v40) & 0x3Fu) <= v10)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    if (v38 > v10)
    {
      goto LABEL_73;
    }

    v39 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v39 < v10)
    {
      goto LABEL_73;
    }
  }

  v41 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v42 = *(sub_1000B12AC(a1) + 54) + v41;
  v43 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v42 > 0x3F)
  {
    if (v10 <= v43)
    {
      v48 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v48 + *(sub_1000B12AC(a1) + 54) - 64 <= v10)
      {
        goto LABEL_73;
      }
    }
  }

  else if (v10 <= v43)
  {
    goto LABEL_73;
  }

  v49 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v49 || v49 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v50 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v51 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v50 <= v49)
    {
      if (v49 - v51 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_73;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v51) & 0x3Fu) < v49)
    {
      goto LABEL_73;
    }
  }

  if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && (*(*(sub_1000B12AC(a1) + 128) + 151) & 1) == 0)
  {
    sub_100299D40(a1, a3);
    sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
    v68 = sub_100299DEC(a1, (a2 >> 1) & 0x3F);
    if (v68)
    {
      v69 = v68;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send SREJ : %!", v70, v71, v72, v73, v74, v75, v76, v69);
        v77 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    return 0;
  }

LABEL_73:
  v52 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v53 = *(sub_1000B12AC(a1) + 54) + v52;
  v54 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v53 > 0x3F)
  {
    if (v10 < v54)
    {
      v56 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v56) & 0x3Fu) <= v10)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    if (v54 > v10)
    {
      goto LABEL_94;
    }

    v55 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v55 < v10)
    {
      goto LABEL_94;
    }
  }

  v57 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v58 = *(sub_1000B12AC(a1) + 54) + v57;
  v59 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v58 > 0x3F)
  {
    if (v10 <= v59)
    {
      v60 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v60 + *(sub_1000B12AC(a1) + 54) - 64 <= v10)
      {
        goto LABEL_94;
      }
    }
  }

  else if (v10 <= v59)
  {
    goto LABEL_94;
  }

  v61 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v61 || v61 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v62 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v63 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v62 <= v61)
    {
      if (v61 - v63 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_94;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v63) & 0x3Fu) < v61)
    {
      goto LABEL_94;
    }
  }

  if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 151) == 1)
  {
    v47 = (a2 >> 7) & 1;
    v45 = a1;
    v46 = (a2 >> 8) & 0x3F;
    goto LABEL_125;
  }

LABEL_94:
  if (!*(*(sub_1000B12AC(a1) + 128) + 144) || !*(*(sub_1000B12AC(a1) + 128) + 144))
  {
    goto LABEL_114;
  }

  v64 = 0;
  while (*(*(sub_1000B12AC(a1) + 128) + 2 * v64 + 18) != v10)
  {
    if (*(*(sub_1000B12AC(a1) + 128) + 144) <= ++v64)
    {
      goto LABEL_114;
    }
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    goto LABEL_114;
  }

  v65 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v65 || v65 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v66 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v67 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v66 <= v65)
    {
      if (v65 - v67 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_114:
        if (*(*(sub_1000B12AC(a1) + 128) + 8 * v10 + 184))
        {
          v78 = (a2 >> 8) & 0x3F;
          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v78 && v78 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            goto LABEL_121;
          }

          v79 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v80 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v79 > v78)
          {
            if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v80) & 0x3Fu) < v78)
            {
              goto LABEL_123;
            }

            goto LABEL_121;
          }

          if (v78 - v80 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
LABEL_121:
            if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
            {
              goto LABEL_123;
            }

            v47 = (a2 >> 7) & 1;
            v45 = a1;
            v46 = (a2 >> 8) & 0x3F;
            goto LABEL_125;
          }
        }

LABEL_123:
        v81 = sub_1000B12AC(a1);
        sub_1002976B0(*(v81 + 128));
        return 545;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v67) & 0x3Fu) < v65)
    {
      goto LABEL_114;
    }
  }

  if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_114;
  }

  sub_100299D40(a1, a3);
  sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
  LOWORD(a3) = *(*(sub_1000B12AC(a1) + 128) + 18);
  memset(__src, 0, 126);
  if (*(*(sub_1000B12AC(a1) + 128) + 144) >= 2u)
  {
    v91 = 0;
    while (1)
    {
      v15 = sub_100299B28(a1, a3, 0);
      if (v15)
      {
        break;
      }

      if (v91 == 62)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not find txSeq %d in our SREJ list", v110, v111, v112, v113, v114, v115, v116, v10);
          v117 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        goto LABEL_130;
      }

      LODWORD(a3) = *(*(sub_1000B12AC(a1) + 128) + 2 * v91++ + 20);
      if (a3 == v10)
      {
        LOBYTE(a3) = v10;
        goto LABEL_142;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ: %!", v92, v93, v94, v95, v96, v97, v98, v15);
      v99 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_142:
    v100 = *(*(sub_1000B12AC(a1) + 128) + 144);
    if ((v100 + ~v91) >= 0x40u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Number of sRejFramesRemaining is too large %d", v101, v102, v103, v104, v105, v106, v107, (v100 + ~v91));
        v108 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
        {
          sub_1008157EC(v108);
        }
      }

      goto LABEL_130;
    }

    sub_1000B12AC(a1);
    __memmove_chk();
    *(__src + (v100 + ~v91)) = a3;
    v109 = sub_1000B12AC(a1);
    memmove((*(v109 + 128) + 18), __src, 0x7EuLL);
    *(*(sub_1000B12AC(a1) + 128) + 144) = v100 - v91;
    if (v15)
    {
      goto LABEL_131;
    }
  }

  else
  {
    sub_1000D660C();
LABEL_130:
    v15 = 538;
LABEL_131:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ list : %!", v83, v84, v85, v86, v87, v88, v89, v15);
      v90 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v15;
}

uint64_t sub_100299018(uint64_t a1)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 156) != 1 || !*(sub_1000B12AC(a1) + 70))
  {
    return 0;
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 164))
  {
    v2 = *(*(sub_1000B12AC(a1) + 128) + 164);
    v3 = sub_1000B12AC(a1);
    v4 = sub_1000B7ADC(v2, (5243 * (*(v3 + 70) >> 2)) >> 17);
  }

  else
  {
    v17[1] = (a1 + 4);
    v17[0] = 2;
    v7 = (5243 * (*(sub_1000B12AC(a1) + 70) >> 2)) >> 17;
    v8 = sub_1000B12AC(a1);
    v4 = sub_10002195C(sub_10029A2D4, v17, v7, (*(v8 + 128) + 164));
  }

  v5 = v4;
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register timer %!", v9, v10, v11, v12, v13, v14, v15, v5);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v5;
}

double sub_10029915C(uint64_t a1)
{
  if (*(sub_1000B12AC(a1) + 128))
  {
    v2 = *(sub_1000B12AC(a1) + 128);
    sub_1000BBDD0(*(v2 + 22));
  }

  else
  {
    v2 = sub_100007618(0x2C8uLL, 0x10300400E0FA8D3uLL);
    *(sub_1000B12AC(a1) + 128) = v2;
  }

  *v2 = *(a1 + 4);
  v2[2] = 1;
  *(v2 + 7) = 0;
  v2[16] = 0;
  *(v2 + 3) = 0;
  v2[11] = 0;
  *(v2 + 18) = 0;
  *(v2 + 38) = 0;
  v2[156] = 1;
  *(v2 + 20) = 0;
  *(v2 + 42) = 0;
  v3 = sub_1000BAE38(0, 0);
  result = 0.0;
  *(v2 + 184) = 0u;
  v5 = v2 + 184;
  *(v5 - 1) = v3;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 23) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 25) = 0u;
  *(v5 + 26) = 0u;
  *(v5 + 27) = 0u;
  *(v5 + 28) = 0u;
  *(v5 + 29) = 0u;
  *(v5 + 30) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 130) = 0;
  return result;
}

uint64_t sub_10029925C(uint64_t a1)
{
  result = sub_1000B12AC(a1);
  v3 = *(result + 128);
  if (v3)
  {
    for (i = 184; i != 696; i += 8)
    {
      v5 = *(v3 + i);
      if (v5)
      {
        sub_1000B034C(v5);
        *(v3 + i) = 0;
      }
    }

    v6 = *(v3 + 696);
    if (v6)
    {
      sub_10000C1E8(v6);
      *(v3 + 696) = 0;
    }

    sub_1000B4BB0(a1);
    sub_1000B47C0(a1);
    v7 = *(v3 + 168);
    if (v7)
    {
      sub_10002242C(v7);
      *(v3 + 168) = 0;
    }

    v8 = *(v3 + 176);
    if (v8)
    {
      v9 = sub_1000B47B8(v8);
      for (j = v9; j; v9 = j)
      {
        v10 = sub_1000BC720(v9);
        v11 = v10[5];
        if (v11)
        {
          sub_1000BC14C(v11);
        }

        sub_10000C1E8(v10);
        sub_1000BC828(&j);
      }

      sub_1000BBDD0(*(v3 + 176));
    }

    sub_10000C1E8(v3);
    result = sub_1000B12AC(a1);
    *(result + 128) = 0;
  }

  return result;
}

uint64_t sub_10029936C(uint64_t a1, char a2, char a3)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 16) == 1)
  {

    return sub_100297860(a1, a2, a3);
  }

  else
  {

    return sub_1000BC368(a1, a2, a3);
  }
}

uint64_t sub_1002993EC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(sub_1000B12AC(a1) + 128);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v7 = sub_1000B47B8(*(v6 + 176));
  v41 = v7;
  if (v7)
  {
    v8 = a3 ^ 1;
    while (*(sub_1000BC720(v7) + 38) != a2)
    {
      sub_1000BC828(&v41);
      v7 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }

    v18 = v41;
    do
    {
      v19 = sub_1000BC720(v41);
      sub_100302C18(v42, v19, 8);
    }

    while ((sub_1000BC828(&v41) & 1) != 0);
    sub_100302D00(*(v6 + 176), v18, 0);
    v20 = sub_1000B47B8(v42);
    v41 = v20;
    if (v20)
    {
      while (1)
      {
        v21 = sub_1000BC720(v20);
        if (*(sub_1000B12AC(a1) + 67))
        {
          v22 = *(v21 + 48);
          if (v22 >= *(sub_1000B12AC(a1) + 67))
          {
            break;
          }
        }

        if ((v8 & 1) == 0)
        {
          *(v6 + 14) = 1;
        }

        if (sub_10029E9E4(v21))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to retransmit packet.", v23, v24, v25, v26, v27, v28, v29, v40);
            v30 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = sub_10000C0FC();
              *buf = 136446466;
              v45 = v31;
              v46 = 1024;
              v47 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_1000BBBC4(*(v6 + 176), v21, 8, sub_1000BBE38);
        }

        sub_1000BC828(&v41);
        v20 = v41;
        v8 = 1;
        if (!v41)
        {
          goto LABEL_22;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Retry count exceeded", v32, v33, v34, v35, v36, v37, v38, v40);
        v39 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10029104C(*(a1 + 4), 436);
      return 541;
    }

    else
    {
LABEL_22:
      sub_100302BB4(v42);
      if (!*(*(sub_1000B12AC(a1) + 128) + 160))
      {
        sub_1000BBA6C(a1);
      }

      return 0;
    }
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find the IFrame with reqSeq %d", v9, v10, v11, v12, v13, v14, v15, a2);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 540;
  }
}

uint64_t sub_1002996D4(uint64_t a1)
{
  *(*(sub_1000B12AC(a1) + 128) + 154) = 0;
  v2 = *(*(sub_1000B12AC(a1) + 128) + 16);
  if (v2 == 1)
  {
    sub_100297860(a1, 0, 1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
  {
    v4 = sub_1000B12AC(a1);
    if (sub_10000C248(*(*(v4 + 128) + 176)))
    {
      sub_1000BBA6C(a1);
    }
  }

  if ((*(*(sub_1000B12AC(a1) + 128) + 16) & 1) == 0 && !*(*(sub_1000B12AC(a1) + 128) + 154))
  {
    sub_1000BC368(a1, 0, v2 ^ 1);
    v3 = 0;
  }

  return sub_1000BE1E4(a1, v3);
}

uint64_t sub_1002997C8(uint64_t a1, int a2)
{
  result = sub_1000B12AC(a1);
  if (a2 == 1 && *(*(result + 128) + 2) != 1)
  {
    sub_1000B4BB0(a1);
    v5 = sub_1000B12AC(a1);
    if (sub_10000C248(*(*(v5 + 128) + 176)))
    {
      v6 = sub_1000BBA6C(a1);
      if (v6)
      {
        v7 = v6;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to restart retransmission timer : %!", v8, v9, v10, v11, v12, v13, v14, v7);
          v15 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }

    *(*(sub_1000B12AC(a1) + 128) + 2) = 1;
    return sub_1000BE23C(*(a1 + 4));
  }

  return result;
}

uint64_t sub_1002998A0(uint64_t a1, int a2, int a3)
{
  v6 = *(sub_1000B12AC(a1) + 128);
  v7 = sub_1000B47B8(*(v6 + 176));
  ptr = v7;
  if (!v7)
  {
LABEL_18:
    if (!*(*(sub_1000B12AC(a1) + 128) + 160))
    {
      sub_1000B4BB0(a1);
      sub_1000BBA6C(a1);
    }

    return 0;
  }

  while (1)
  {
    v8 = sub_1000BC720(v7);
    if (*(v8 + 38) == a2)
    {
      break;
    }

    sub_1000BC828(&ptr);
    v7 = ptr;
    if (!ptr)
    {
      goto LABEL_18;
    }
  }

  v9 = v8;
  if (!*(sub_1000B12AC(a1) + 67) || (v10 = *(v9 + 48), v10 < *(sub_1000B12AC(a1) + 67)))
  {
    if (a3)
    {
      *(v6 + 14) = 1;
    }

    if (sub_10029E9E4(v9))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to retransmit packet.", v11, v12, v13, v14, v15, v16, v17, v28);
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      sub_1000BC77C(*(v6 + 176), ptr, 0);
    }

    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Retry count exceeded", v19, v20, v21, v22, v23, v24, v25, v28);
    v26 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_10029104C(*(a1 + 4), 436);
  return 542;
}

uint64_t sub_100299A2C(uint64_t a1)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 144))
  {
    v2 = *(sub_1000B12AC(a1) + 128);
    v3 = sub_1000B12AC(a1);
    v4 = sub_100299B28(a1, *(v2 + 2 * *(*(v3 + 128) + 144) + 16), 1);
    if (v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send SREJ : %!", v5, v6, v7, v8, v9, v10, v11, v4);
        v12 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Nothing queued in SREJ list.", v13, v14, v15, v16, v17, v18, v19, v22);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 539;
  }

  return v4;
}

uint64_t sub_100299B28(uint64_t a1, char a2, char a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v22 = 0;
  v17 = 0;
  LOBYTE(v18) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v18 + 1) = *sub_1000B12AC(a1);
  LODWORD(v19) = 0;
  WORD2(v19) = *(a1 + 4);
  WORD3(v19) = 256;
  BYTE8(v19) = 0;
  v6 = (sub_1000BC224(a1, 3, 0, a3, a2, &v22 + 2) + 4);
  WORD5(v19) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v6;
  v22 = (v6 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v22 + 1) = ((v6 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v22) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v20 + 8, 2u);
  sub_10001F968(v20 + 8, &v22, v6, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v20 + 8, &v17);
    sub_10001F968(v20 + 8, &v17, 2uLL, 2u);
  }

  v7 = sub_1000BC58C(&v18);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v8, v9, v10, v11, v12, v13, v14, v7);
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v7;
}

uint64_t sub_100299D40(uint64_t a1, uint64_t a2)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 8 * *(a2 + 2) + 184))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Got the same frame twice (txSeq=%d", v4, v5, v6, v7, v8, v9, v10, *(a2 + 2));
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  result = sub_1000B12AC(a1);
  *(*(result + 128) + 8 * *(a2 + 2) + 184) = a2;
  return result;
}

uint64_t sub_100299DEC(uint64_t a1, unsigned __int8 a2)
{
  v4 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v5 = a2 + 64;
  if (v4 <= a2)
  {
    v5 = a2;
  }

  v6 = v5;
  if (v5 <= v4)
  {
LABEL_6:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v7 = sub_100299B28(a1, v4 & 0x3F, 0);
      if (v7)
      {
        break;
      }

      v8 = *(sub_1000B12AC(a1) + 128);
      *(v8 + 2 * *(*(sub_1000B12AC(a1) + 128) + 144) + 18) = v4 & 0x3F;
      v9 = sub_1000B12AC(a1);
      ++*(*(v9 + 128) + 144);
      LOBYTE(v4) = v4 + 1;
      if (v6 <= v4)
      {
        goto LABEL_6;
      }
    }

    v10 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ : %!", v12, v13, v14, v15, v16, v17, v18, v10);
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  *(*(sub_1000B12AC(a1) + 128) + 8) = (a2 + 1) & 0x3F;
  return v10;
}

uint64_t sub_100299F14(uint64_t a1)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  v19 = 0;
  v14 = 0;
  LOBYTE(v15) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v15 + 1) = *sub_1000B12AC(a1);
  LODWORD(v16) = 0;
  WORD2(v16) = *(a1 + 4);
  WORD3(v16) = 256;
  BYTE8(v16) = 0;
  v2 = sub_1000B12AC(a1);
  v3 = (sub_1000BC224(a1, 1, 0, 0, *(*(v2 + 128) + 8), &v19 + 2) + 4);
  WORD5(v16) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v3;
  v19 = (v3 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v19 + 1) = ((v3 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v19) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v17 + 8, 2u);
  sub_10001F968(v17 + 8, &v19, v3, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v17 + 8, &v14);
    sub_10001F968(v17 + 8, &v14, 2uLL, 2u);
  }

  v4 = sub_1000BC58C(&v15);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v4;
}

uint64_t sub_10029A130(uint64_t a1)
{
  v2 = *(*(sub_1000B12AC(a1) + 128) + 144);
  __chkstk_darwin();
  v4 = &v10 - v3;
  bzero(&v10 - v3, v5);
  result = sub_1000B12AC(a1);
  v7 = *(result + 128);
  if ((v2 & 0xFE) != 0)
  {
    v8 = (v2 - 1);
    memmove(v4, (v7 + 20), v8);
    v9 = sub_1000B12AC(a1);
    memmove((*(v9 + 128) + 18), v4, v8);
    result = sub_1000B12AC(a1);
    --*(*(result + 128) + 144);
  }

  else
  {
    *(v7 + 144) = 0;
  }

  return result;
}

void sub_10029A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1000B12AC(a1) + 128);
  v9 = *(a2 + 2);
  if (v9 == *(v8 + 152))
  {
    for (i = (v8 + 184 + 8 * v9); *i; i = (v8 + 184 + 8 * v9))
    {
      sub_1000B4C04(a1, *i, a3, a4);
      *(v8 + 152) = (*(v8 + 152) + 1) & 0x3F;
      *i = 0;
      v9 = (v9 + 1) & 0x3F;
    }
  }
}

void sub_10029A2D4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v42 = 0;
  if (sub_1000ABC7C(v1, &v42))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Monitor timer triggered on a released channel (0x%x), this is bad.", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(v42) + 128) + 164) = 0;
    v10 = v42;
    if (*(*(sub_1000B12AC(v42) + 128) + 2))
    {
      sub_1000D660C();
      return;
    }

    v11 = *(*(sub_1000B12AC(v10) + 128) + 146);
    if (v11 >= *(sub_1000B12AC(v10) + 67))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Monitor timeout expired", v23, v24, v25, v26, v27, v28, v29, v41);
        v30 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10029104C(*(v10 + 4), 436);
    }

    else
    {
      v12 = *(*(sub_1000B12AC(v10) + 128) + 146) + 1;
      *(*(sub_1000B12AC(v10) + 128) + 146) = v12;
      v13 = sub_10029936C(v10, 1, 0);
      if (v13)
      {
        v14 = v13;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send RR or RNR : %!", v15, v16, v17, v18, v19, v20, v21, v14);
          v22 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v31 = sub_100299018(v10);
        if (v31)
        {
          v32 = v31;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to start monitor timer %!.", v33, v34, v35, v36, v37, v38, v39, v32);
            v40 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }
}

void sub_10029A4CC(uint64_t a1)
{
  v1 = **(a1 + 8);
  v31 = 0;
  if (sub_1000ABC7C(v1, &v31))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Monitor timer triggered on a released channel (0x%x), this is bad.", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(v31) + 128) + 160) = 0;
    v10 = v31;
    if (*(*(sub_1000B12AC(v31) + 128) + 2) == 1)
    {
      v11 = sub_10029936C(v10, 1, 0);
      if (v11)
      {
        v12 = v11;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send RR or RNR : %!", v13, v14, v15, v16, v17, v18, v19, v12);
          v20 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        *(*(sub_1000B12AC(v10) + 128) + 146) = 1;
        v21 = sub_100299018(v10);
        if (v21)
        {
          v22 = v21;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to start monitor timer %!.", v23, v24, v25, v26, v27, v28, v29, v22);
            v30 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        *(*(sub_1000B12AC(v10) + 128) + 2) = 0;
      }
    }

    else
    {
      sub_1000D660C();
    }
  }
}

void sub_10029A660(uint64_t a1, __int16 a2, int a3)
{
  qword_100B602C0 = a1;
  word_100B602C8 = a2;
  if (a3 != 1216)
  {
    v18 = v3;
    v19 = v4;
    if ((byte_100B602CC & 1) == 0)
    {
      sub_1000D660C();
    }

    v16[0] = 8;
    byte_100B602CC = 0;
    sub_100016250(&unk_100B602D4);
    v17[0] = a3;
    v17[1] = byte_100B602D0;
    v16[1] = v17;
    v6 = sub_1000228C0(sub_10029A754, v16, 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100814864();
        }
      }
    }
  }
}

uint64_t sub_10029A764()
{
  result = sub_10022DBFC();
  if (!result)
  {
    v1 = sub_1001BBBD8(0x810uLL, 0x10000408A62FA49uLL);
    qword_100B602E0 = v1;
    v1[509] = 4;
    *(v1 + 2060) = 0;
    if (*(v1 + 2040) == 1)
    {
      *(v1 + 2040) = 0;
    }

    qword_100B602E8 = 0;
    sub_100016250(&unk_100B602D4);
    *(qword_100B602E0 + 2049) = 0;
    sub_10029B140(5);
    return 109;
  }

  return result;
}

uint64_t sub_10029A7F0()
{
  if (*(qword_100B602E0 + 2036) == 4)
  {
    return 109;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029A818(int a1, __int16 a2, int a3)
{
  v5 = a1;
  if (a1 != 1 && (*(qword_100B602E0 + 2040) & 1) != 0)
  {
    return 129;
  }

  if (a1 == 2)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  if (byte_100B602CC == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    if (!qword_100B602C0)
    {
      sub_1000D660C();
    }

    v9 = word_100B602C8;
    if (!word_100B602C8)
    {
      sub_1000D660C();
      v9 = word_100B602C8;
    }

    v10 = qword_100B602C0;
    v6 = 105;
    if (qword_100B602C0 && v9)
    {
      if (a3 + v7 <= v9)
      {
        *qword_100B602C0 = v5;
        *(v10 + 1) = a2;
        *(v10 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v10 + v7));
        }

        else
        {
          sub_10001F480();
        }

        byte_100B602D0 = v5;
        byte_100B602CC = 1;
        v6 = sub_10022DBCC();
        if (v6)
        {
          sub_100016250(&unk_100B602D4);
          byte_100B602CC = 0;
        }

        v11 = qword_100B602E0;
        if (*(qword_100B602E0 + 2040) == 1 && *(qword_100B602E0 + 2036) == 4)
        {
          *(qword_100B602E0 + 2049) = 0;
          *(v11 + 2036) = 1;
          *(v11 + 2042) = 5;
          sub_10029B140(0x7FFF);
        }
      }

      else
      {
        sub_1000D660C();
        return 105;
      }
    }
  }

  return v6;
}

uint64_t sub_10029A998(unsigned __int8 *__src, int a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      v4 = qword_100B602E0;
      if (*(qword_100B602E0 + 2040) == 1)
      {
        *buf = 0;
        v69 = 0;
        sub_1001BAE20(&v69);
        sub_1001BAE88(v69, qword_100B602E8, &stru_100B602F0, buf, v5, v6, v7);
        if (v8)
        {
          v9 = v8;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_AbsoluteTime_Diff returned %!", v10, v11, v12, v13, v14, v15, v16, v9);
            v17 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10080FE78(v70, &v71, v17);
            }
          }
        }

        if ((*&buf[4] | (*buf << 32)) >= 0x12A153440)
        {
          sub_1000C52F4(112);
        }

        j__usleep(0);
        v4 = qword_100B602E0;
      }

      v18 = *(v4 + 2036);
      if (v18 <= 1)
      {
        if (v18 == 1)
        {
          v23 = *__src;
          if ((v23 - 1) >= 4u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("unknown packet type received %d", v39, v40, v41, v42, v43, v44, v45, v23);
              v46 = sub_10000C050(0x3Au);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v65 = sub_10000C0FC();
                *buf = 136446466;
                *&buf[4] = v65;
                v73 = 1024;
                v74 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            sub_100304AF8("VirtualCTRL: unknown packet type received %d\n", v23);
            sub_10029B384(240);
          }

          else
          {
            *(v4 + 2042) = 0x2000300040003uLL >> (16 * ((v23 - 1) & 0xF));
            *(v4 + 2048) = v23;
            *(v4 + 2044) = 0;
            *(v4 + 2036) = 2;
            sub_10029B140(20);
          }

          if (*(qword_100B602E0 + 2036) == 2)
          {
            --v2;
            ++__src;
          }

          goto LABEL_62;
        }

        if (!v18)
        {
          goto LABEL_63;
        }

        goto LABEL_32;
      }

      if (v18 == 2)
      {
        break;
      }

      if (v18 != 3)
      {
        if (v18 == 4)
        {
          goto LABEL_63;
        }

LABEL_32:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid receive state %d", v31, v32, v33, v34, v35, v36, v37, *(qword_100B602E0 + 2036));
          v38 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v64 = sub_10000C0FC();
            *buf = 136446466;
            *&buf[4] = v64;
            v73 = 1024;
            v74 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        sub_100304AF8("VirtualCTRL: Invalid receive state %d\n", *(qword_100B602E0 + 2036));
        sub_10029B384(242);
        sub_1000D660C();
        goto LABEL_62;
      }

      if (v2 >= *(v4 + 2042))
      {
        v19 = *(v4 + 2042);
      }

      else
      {
        v19 = v2;
      }

      memmove((v4 + *(v4 + 2044) + 4), __src, v19);
      v20 = qword_100B602E0;
      v21 = *(qword_100B602E0 + 2042);
      v2 -= v19;
      *(qword_100B602E0 + 2044) += v19;
      __src += v19;
      v22 = v21 - v19;
      *(v20 + 2042) = v22;
      if (!v22)
      {
LABEL_57:
        if (*(v20 + 2040) == 1)
        {
          sub_10029B4C0();
        }

        else
        {
          if (*(v20 + 2046) >= 0x7F1u)
          {
            sub_1000D660C();
          }

          sub_10029B544();
        }
      }

LABEL_62:
      if (!v2)
      {
        goto LABEL_63;
      }
    }

    v24 = 0;
    v25 = *(v4 + 2042);
    v26 = __src;
    while (v25)
    {
      v27 = *v26++;
      v28 = *(v4 + 2044);
      *(v4 + 2044) = v28 + 1;
      *(v4 + 4 + v28) = v27;
      v25 = *(v4 + 2042) - 1;
      *(v4 + 2042) = v25;
      if (++v24 >= v2)
      {
        v24 = v2;
        if (v25)
        {
          goto LABEL_56;
        }

        break;
      }
    }

    *(v4 + 2036) = 3;
    v29 = *(v4 + 2048);
    if (v29 > 2)
    {
      if (v29 == 4)
      {
        v30 = *(v4 + 5);
LABEL_51:
        *(v4 + 2042) = v30;
        v55 = *(v4 + 2044) + v30;
        *(v4 + 2046) = v55;
        if (v55 >= 0x7F1u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("RxPacketHeader - bogus packet length (%d)", v56, v57, v58, v59, v60, v61, v62, *(qword_100B602E0 + 2046));
            v63 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v66 = sub_10000C0FC();
              *buf = 136446466;
              *&buf[4] = v66;
              v73 = 1024;
              v74 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_100304AF8("VirtualCTRL: RxPacketHeader - bogus packet length (%d)\n", *(qword_100B602E0 + 2046));
          sub_10029B384(244);
        }

        goto LABEL_56;
      }

      if (v29 != 3)
      {
        goto LABEL_46;
      }
    }

    else if (v29 != 1)
    {
      if (v29 == 2)
      {
        v30 = *(v4 + 6);
        goto LABEL_51;
      }

LABEL_46:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid packet type %d", v47, v48, v49, v50, v51, v52, v53, *(qword_100B602E0 + 2048));
        v54 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v67 = sub_10000C0FC();
          *buf = 136446466;
          *&buf[4] = v67;
          v73 = 1024;
          v74 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      sub_100304AF8("VirtualCTRL: Invalid packet type %d\n", *(qword_100B602E0 + 2048));
      sub_10029B384(240);
      sub_1000D660C();
      v24 = 0;
LABEL_56:
      __src += v24;
      v2 -= v24;
      v20 = qword_100B602E0;
      if (!*(qword_100B602E0 + 2042))
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }

    v30 = *(v4 + 6);
    goto LABEL_51;
  }

LABEL_63:
  if (*(qword_100B602E0 + 2042))
  {
    return *(qword_100B602E0 + 2042);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_10029AF90(int a1, __int16 a2, size_t __len, void *__src)
{
  v4 = a1;
  if (a1 != 1 && (*(qword_100B602E0 + 2040) & 1) != 0)
  {
    return 129;
  }

  v6 = 4;
  if (a1 == 2)
  {
    v6 = 5;
  }

  if (byte_100B602CC == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    v7 = qword_100B602C0;
    if (qword_100B602C0)
    {
      v8 = word_100B602C8 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 105;
    }

    else
    {
      *qword_100B602C0 = a1;
      *(v7 + 1) = a2;
      *(v7 + 3) = __len;
      memmove((v7 + v6), __src, __len);
      byte_100B602D0 = v4;
      byte_100B602CC = 1;
      v9 = sub_10022DBCC();
      v5 = v9;
      if (v9)
      {
        sub_100016250(&unk_100B602D4);
        byte_100B602CC = 0;
      }

      v10 = qword_100B602E0;
      if (*(qword_100B602E0 + 2040) == 1 && *(qword_100B602E0 + 2036) == 4)
      {
        *(qword_100B602E0 + 2049) = 0;
        *(v10 + 2036) = 1;
        *(v10 + 2042) = 5;
        sub_10029B140(0x7FFF);
      }
    }
  }

  return v5;
}

double sub_10029B0D0(int a1)
{
  if (a1)
  {
    if ((*(qword_100B602E0 + 2040) & 1) == 0)
    {
      *(qword_100B602E0 + 2040) = 1;
      sub_1001BAE20(&qword_100B602E8);

      return sub_1001BAE4C(&stru_100B602F0);
    }
  }

  else
  {
    if (*(qword_100B602E0 + 2040))
    {
      *(qword_100B602E0 + 2040) = 0;
    }

    qword_100B602E8 = 0;
  }

  return result;
}

uint64_t sub_10029B140(int a1)
{
  v2 = sub_10002260C(*qword_100B602E0);
  v3 = qword_100B602E0;
  if (v2)
  {
    v4 = *qword_100B602E0;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_10029B1C4, 0, a1, v3);
  }
}

void sub_10029B1C4()
{
  v0 = qword_100B602E0;
  v1 = *(qword_100B602E0 + 2036);
  if (v1 < 2)
  {
    if (*(qword_100B602E0 + 2040) != 1)
    {
LABEL_14:

      sub_10029B140(0x7FFFLL);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("timed out waiting for reset response %d", v10, v11, v12, v13, v14, v15, v16, *(qword_100B602E0 + 2036));
      v17 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    if (v1 - 2 < 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Timed out while receiving a packet. Current state:%d", v2, v3, v4, v5, v6, v7, v8, *(qword_100B602E0 + 2036));
        v9 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      sub_100304AF8("VirtualCTRL: Timed out while receiving a packet. Current state:%d\n", *(qword_100B602E0 + 2036));
      sub_10029B384(241);
      return;
    }

    if (v1 == 4)
    {
      if (*(qword_100B602E0 + 2040))
      {
        return;
      }

      *(qword_100B602E0 + 2049) = 0;
      *(v0 + 2036) = 1;
      *(v0 + 2042) = 5;
      goto LABEL_14;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid receive state %d", v18, v19, v20, v21, v22, v23, v24, *(qword_100B602E0 + 2036));
      v25 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100814864();
      }
    }

    sub_100304AF8("VirtualCTRL: Invalid receive state %d\n", *(qword_100B602E0 + 2036));
    sub_10029B384(243);
    sub_1000D660C();
  }
}

uint64_t sub_10029B384(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("RxErrorDetected:%d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1008148EC();
    }
  }

  v10 = qword_100B602E0;
  if ((*(qword_100B602E0 + 2040) & 1) == 0)
  {
    *(qword_100B602E0 + 4) = 272;
    *(v10 + 6) = a1;
    *(v10 + 2046) = 3;
    *(v10 + 2048) = 4;
    sub_10029B440();
    v10 = qword_100B602E0;
  }

  *(v10 + 2036) = 4;
  sub_10029B0D0(1);
  return sub_10029B140(5);
}

void sub_10029B440()
{
  v0 = qword_100B602E0;
  if (*(qword_100B602E0 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B602E0;
  }

  *(v0 + 2049) = 0;
  *(v0 + 2036) = 1;
  *(v0 + 2042) = 5;
  sub_10029B140(0x7FFFLL);
  v1[1] = 0;
  v1[0] = mach_continuous_time();
  sub_10000394C(*(qword_100B602E0 + 2048), (qword_100B602E0 + 4), *(qword_100B602E0 + 2046), v1);
}

void sub_10029B4C0()
{
  if (*(qword_100B602E0 + 2048) == 4 && *(qword_100B602E0 + 2046) == 6)
  {
    v0 = 0;
    LOBYTE(v1) = 1;
    v2 = &byte_1008A4869;
    do
    {
      v3 = (*(v2 - 1) & *(qword_100B602E0 + 4 + v0));
      v4 = *v2;
      v2 += 2;
      v1 = (v3 == v4) & v1;
      ++v0;
    }

    while (v0 != 6);
    if (v1)
    {
      if (*(qword_100B602E0 + 2040) == 1)
      {
        *(qword_100B602E0 + 2040) = 0;
      }

      qword_100B602E8 = 0;
      sub_10029B440();
    }
  }
}

void sub_10029B544()
{
  v0 = qword_100B602E0;
  if (*(qword_100B602E0 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B602E0;
  }

  if (*(v0 + 2060))
  {

    sub_100304AF8("Rx routing suspended during stack termination!\n");
  }

  else
  {
    *(v0 + 2049) = 0;
    *(v0 + 2036) = 1;
    *(v0 + 2042) = 5;
    sub_10029B140(0x7FFF);
    v1[1] = 0;
    v1[0] = mach_continuous_time();
    sub_10000394C(*(qword_100B602E0 + 2048), (qword_100B602E0 + 4), *(qword_100B602E0 + 2046), v1);
  }
}

char *sub_10029B614(char *result, int a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10029B644(const void *a1, unsigned int a2, void *a3, int a4)
{
  v43 = 0uLL;
  v42 = 0uLL;
  v41 = *"1pmt";
  v8 = a2;
  __memmove_chk();
  if (a2 <= 0xF)
  {
    v9 = 16 - a2;
    v10 = v8;
    do
    {
      v11 = v9 - a2;
      if (v9 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = v9;
      }

      memmove(&v43 + v10, a1, v12);
      v10 += v8;
      v9 = v11;
    }

    while (v10 < 0x10);
  }

  if (!a4)
  {
    v23 = sub_100240BD0(&v43, 0x746D7031u, &v42);
    if (v23)
    {
      v14 = v23;
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating ILK %!", v24, v25, v26, v27, v28, v29, v30, v14);
        v31 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v14;
    }

    goto LABEL_16;
  }

  v13 = sub_100240D0C(&v43, &v41, &v42);
  if (!v13)
  {
LABEL_16:
    v14 = sub_100240BD0(&v42, 0x6C656272u, a3);
    if (v14)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating LTK %!", v32, v33, v34, v35, v36, v37, v38, v14);
        v39 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }

    return v14;
  }

  v14 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("SMP_Crypto_h7 failed creating ILK %!", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_10080F604();
    }
  }

  return v14;
}

uint64_t sub_10029B850(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v41 = 0uLL;
  v40 = 0uLL;
  v39 = *"2pmt";
  __memmove_chk();
  if (a2 <= 0xF)
  {
    v7 = 16 - a2;
    v8 = a2;
    do
    {
      v9 = v7 - a2;
      if (v7 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v7;
      }

      memmove(&v41 + v8, a3, v10);
      v8 += a2;
      v7 = v9;
    }

    while (v8 < 0x10);
  }

  if (!a4)
  {
    v21 = sub_100240BD0(&v41, 0x746D7032u, &v40);
    if (v21)
    {
      v12 = v21;
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating ILK %!", v22, v23, v24, v25, v26, v27, v28, v12);
        v29 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v12;
    }

    goto LABEL_16;
  }

  v11 = sub_100240D0C(&v41, &v39, &v40);
  if (!v11)
  {
LABEL_16:
    v12 = sub_100240BD0(&v40, 0x62726C65u, a3);
    if (v12)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating LK %!", v30, v31, v32, v33, v34, v35, v36, v12);
        v37 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }

    return v12;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    sub_10000AF54("SMP_Crypto_h7 failed creating ILTK %!", v13, v14, v15, v16, v17, v18, v19, v12);
    v20 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_10080F604();
    }
  }

  return v12;
}

__n128 sub_10029BA70(__n128 *a1)
{
  result = *a1;
  xmmword_100B602F8 = *a1;
  return result;
}

__n128 sub_10029BA84(__n128 *a1)
{
  result = *a1;
  xmmword_100B60308 = *a1;
  return result;
}

void sub_10029BA98(char *ptr, uint64_t a2, int a3)
{
  if (ptr)
  {
    v4 = a2;
    v6 = *ptr;
    v38 = 0uLL;
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v38 = *(ptr + 562);
      v7 = ptr[593];
    }

    v16 = *(ptr + 3);
    if (v16)
    {
      sub_10002242C(v16);
      *(ptr + 3) = 0;
    }

    if (!v4)
    {
      if (ptr[612] == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Pairing completed with a compromised device", v17, v18, v19, v20, v21, v22, v23, v37);
          v24 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v4 = 4832;
      }

      else
      {
        v4 = 0;
      }
    }

    if (*(ptr + 154))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("using override status %d", v25, v26, v27, v28, v29, v30, v31, *(ptr + 154));
        v32 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v4 = *(ptr + 154);
    }

    v33 = *(ptr + 13);
    sub_10000C1E8(ptr);
    if (sub_1000ABD24(v6))
    {
      *(v6 + 272) = 0;
      if (a3 && unk_100BCE1E0)
      {
        if (*(v6 + 55))
        {
          v34 = v6 + 56;
        }

        else
        {
          v34 = 0;
        }

        unk_100BCE1E0(v6 + 48, v34, v4, 0, v33);
      }

      v36 = v4 == 4832 || v4 == 0;
      *(v6 + 240) = v36;
      sub_1002BE6B0(v6);
    }

    else if (sub_1000B8B5C(v6))
    {
      *(v6 + 312) = 0;
      if (a3)
      {
        if (off_100BCE1E8)
        {
          off_100BCE1E8(v6 + 48, v4, &v38, v7 & 1, 0);
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("SMP_DestroyPairingDeviceAndDispatch: invalid data.", v8, v9, v10, v11, v12, v13, v14, v37);
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}