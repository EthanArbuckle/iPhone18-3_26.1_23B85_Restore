void sub_1000DB800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000DB838(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100008108(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

char *sub_1000DB940(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_1000C7698();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t sub_1000DBBBC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _BYTE *a6)
{
  if (!*(a2 + 4))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
      v13 = 0;
    }

    else
    {
      v13 = *(a3 + 5) - *(a3 + 6);
    }

    v14 = *(*(a2 + 8) + v11);
    if (v14 > 0x65)
    {
      break;
    }

    if (*(*(a2 + 8) + v11) <= 0x33u)
    {
      if (v14 == 49)
      {
        if (!v13)
        {
          goto LABEL_84;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_119:
          v42 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_121:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 369, v42);
        }

        v22 = *(a3 + 6);
        if (*(a3 + 5) <= v22)
        {
          goto LABEL_119;
        }

        if (*(a3 + 14) != 1)
        {
          v42 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          goto LABEL_121;
        }

LABEL_83:
        v17 = 0;
        v30 = *a3;
        *(a3 + 6) = v22 + 1;
        *a1 = *(v30 + v22);
        goto LABEL_99;
      }

      if (v14 != 50)
      {
        if (v14 != 51)
        {
          goto LABEL_113;
        }

        if (v13 < 3)
        {
          goto LABEL_84;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_148:
          v47 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
LABEL_150:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 389, v47);
        }

        v18 = *(a3 + 6);
        if (*(a3 + 5) - v18 <= 2)
        {
          goto LABEL_148;
        }

        if (*(a3 + 14) != 1)
        {
          v47 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          goto LABEL_150;
        }

        v17 = 0;
        *a1 = *(*a3 + v18) | (*(*a3 + v18 + 2) << 16);
        v19 = *(a3 + 6) + 3;
        goto LABEL_91;
      }

      if (v13 >= 2)
      {
        if (*(a3 + 14) == 1)
        {
          if (!*(a3 + 15))
          {
            v28 = *(a3 + 6);
            if (*(a3 + 5) - v28 <= 1)
            {
              goto LABEL_153;
            }

            v17 = 0;
            v29 = *(*a3 + v28);
            *(a3 + 6) = v28 + 2;
            *a1 = v29;
            goto LABEL_99;
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_153:
          v48 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
        }

        else
        {
          v48 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 379, v48);
      }

LABEL_84:
      if (v12)
      {
        v17 = 0;
      }

      else
      {
        v17 = 608;
      }

      goto LABEL_99;
    }

    if (*(*(a2 + 8) + v11) <= 0x60u)
    {
      if (v14 == 52)
      {
        if (v13 < 4)
        {
          goto LABEL_84;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_144:
          v46 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
LABEL_146:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 398, v46);
        }

        if (*(a3 + 5) - *(a3 + 6) <= 3)
        {
          goto LABEL_144;
        }

        if (*(a3 + 14) != 1)
        {
          v46 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          goto LABEL_146;
        }

        v17 = 0;
        *a1 = *(*a3 + *(a3 + 6));
        v19 = *(a3 + 6) + 4;
        goto LABEL_91;
      }

      if (v14 != 56)
      {
        goto LABEL_113;
      }

      if (v13 >= 8)
      {
        *a1 = *a3 + *(a3 + 6);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_142:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 507, "ByteStream_NumReadBytesAvail(*pBs) >= (8)");
        }

        v15 = *(a3 + 6);
        if (*(a3 + 5) - v15 <= 7)
        {
          goto LABEL_142;
        }

        goto LABEL_90;
      }

LABEL_92:
      if ((v12 & 1) == 0)
      {
        goto LABEL_106;
      }

      v17 = 0;
      *a1 = &unk_1008A4460;
      goto LABEL_94;
    }

    if (v14 != 97)
    {
      if (v14 != 99)
      {
        goto LABEL_113;
      }

      if (v13 >= 0xA)
      {
        *a1 = *a3 + *(a3 + 6);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_136:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 492, "ByteStream_NumReadBytesAvail(*pBs) >= (10)");
        }

        v21 = *(a3 + 6);
        if (*(a3 + 5) - v21 <= 9)
        {
          goto LABEL_136;
        }

        v17 = 0;
        v19 = v21 + 10;
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v13 < 6)
    {
      if (v12)
      {
        v17 = 0;
      }

      else
      {
        v17 = 608;
      }
    }

    else
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_138:
        v45 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_140:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 408, v45);
      }

      v24 = *(a3 + 6);
      if (*(a3 + 5) - v24 <= 5)
      {
        goto LABEL_138;
      }

      if (*(a3 + 14) != 1)
      {
        v45 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_140;
      }

      sub_1000075EC(a6, *a3 + v24, 6uLL);
      v17 = 0;
      *(a3 + 6) += 6;
    }

    *a1 = a6;
LABEL_99:
    v31 = v17 == 0;
    if (!v17)
    {
      ++v11;
      a1 += 8;
      if (v11 < *(a2 + 4))
      {
        continue;
      }
    }

    goto LABEL_107;
  }

  if (*(*(a2 + 8) + v11) <= 0x6Au)
  {
    if (v14 == 102)
    {
      if (v13 >= 8)
      {
        *a1 = *a3 + *(a3 + 6);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_134:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 477, "ByteStream_NumReadBytesAvail(*pBs) >= (8)");
        }

        v15 = *(a3 + 6);
        if (*(a3 + 5) - v15 <= 7)
        {
          goto LABEL_134;
        }

LABEL_90:
        v17 = 0;
        v19 = v15 + 8;
LABEL_91:
        *(a3 + 6) = v19;
        goto LABEL_99;
      }

      goto LABEL_92;
    }

    if (v14 != 104 && v14 != 106)
    {
LABEL_113:
      sub_1000D660C();
      v17 = 620;
      goto LABEL_108;
    }

    if (v13 >= 2)
    {
      if (*(a3 + 14) == 1)
      {
        if (!*(a3 + 15))
        {
          if (*(a3 + 5) - *(a3 + 6) <= 1)
          {
            goto LABEL_116;
          }

          *a5 = *(*a3 + *(a3 + 6));
          *(a3 + 6) += 2;
          v20 = sub_1000ABB80(*a5);
          v17 = 0;
          *a1 = v20;
          if (*(*(a2 + 8) + v11) == 106)
          {
            if (v20)
            {
              v17 = 0;
              if (*(v20 + 2))
              {
                *a1 = 0;
              }
            }
          }

          goto LABEL_99;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_116:
        v41 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v41 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 420, v41);
    }

    goto LABEL_84;
  }

  if (*(*(a2 + 8) + v11) <= 0x72u)
  {
    if (v14 == 107)
    {
      if (v13 >= 0x10)
      {
        *a1 = *a3 + *(a3 + 6);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_132:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 522, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
        }

        v23 = *(a3 + 6);
        if (*(a3 + 5) - v23 <= 15)
        {
          goto LABEL_132;
        }

        v17 = 0;
        v19 = v23 + 16;
        goto LABEL_91;
      }
    }

    else
    {
      if (v14 != 110)
      {
        goto LABEL_113;
      }

      if (v13 >= 0xF8)
      {
        *a1 = *a3 + *(a3 + 6);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_130:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 459, "ByteStream_NumReadBytesAvail(*pBs) >= (248)");
        }

        v16 = *(a3 + 6);
        if (*(a3 + 5) - v16 <= 247)
        {
          goto LABEL_130;
        }

        v17 = 0;
        *(a3 + 6) = v16 + 248;
        *(*a1 + 247) = 0;
        goto LABEL_99;
      }
    }

    goto LABEL_92;
  }

  if (v14 != 115)
  {
    if (v14 != 116)
    {
      goto LABEL_113;
    }

    if (!v13)
    {
      goto LABEL_84;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_123:
      v43 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_124:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 535, v43);
    }

    v22 = *(a3 + 6);
    if (*(a3 + 5) <= v22)
    {
      goto LABEL_123;
    }

    if (*(a3 + 14) != 1)
    {
      v43 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      goto LABEL_124;
    }

    goto LABEL_83;
  }

  if (v13)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c");
LABEL_126:
      v44 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_128:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcievents.c", 438, v44);
    }

    v25 = *(a3 + 6);
    if (*(a3 + 5) <= v25)
    {
      goto LABEL_126;
    }

    if (*(a3 + 14) != 1)
    {
      v44 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      goto LABEL_128;
    }

    v26 = *a3;
    *(a3 + 6) = v25 + 1;
    v27 = sub_100022244(*(v26 + v25));
    v17 = 0;
    *a1 = v27;
    v12 |= v27 != 0;
    goto LABEL_99;
  }

  if (v12)
  {
    v17 = 0;
    *a1 = 638;
LABEL_94:
    v12 = 1;
    goto LABEL_99;
  }

LABEL_106:
  v31 = 0;
  v17 = 608;
LABEL_107:
  if (!v31)
  {
LABEL_108:
    if (*(a2 + 2) != a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("missing parameters, expected %d, got %d", v32, v33, v34, v35, v36, v37, v38, *(a2 + 2));
        v39 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  return v17;
}

uint64_t sub_1000DC4E8(unsigned __int8 *a1, int a2, uint64_t a3, int a4)
{
  if (a1[16] == 3)
  {
    return 0;
  }

  v29 = 0;
  for (i = sub_100006318(*a1, &v29); i; i = sub_100258004(*a1, &v29))
  {
    v10 = a1[17];
    switch(v10)
    {
      case 6:
        if (*(i + 16) == a2)
        {
          goto LABEL_22;
        }

        break;
      case 7:
        if (*a3 == *(i + 16) && *(a3 + 4) == *(i + 20))
        {
LABEL_22:
          if (a4)
          {
            v4 = sub_1000DC660(v29);
            if (v4)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("%! (%d)", v21, v22, v23, v24, v25, v26, v27, v4);
                v28 = sub_10000C050(0x2Eu);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }
            }

            return v4;
          }

          return 0;
        }

        break;
      case 5:
        goto LABEL_22;
    }
  }

  if (a1[16] == 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v12, v13, v14, v15, v16, v17, v18, 619);
      v19 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return 120;
}

uint64_t sub_1000DC660(int a1)
{
  v1 = sub_1000224D4(a1);
  sub_100021E94();
  return v1;
}

void sub_1000DC68C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  switch(a1)
  {
    case 1:
      v89 = *a2;

      sub_1002424E4(v89);
      return;
    case 2:
    case 34:
      v11 = *a2;

      sub_1002425A8(v11);
      return;
    case 3:
      v76 = *a2;
      v77 = *(a2 + 2);
      v78 = *(a2 + 24);
      v79 = *(a2 + 32);
      v80 = *(a2 + 1);

      sub_10023C0C0(v76, v80, v77, v78, v79, a7, a8, a9);
      return;
    case 4:
      v61 = *a2;
      v62 = *(a2 + 16);
      v63 = a2[2];

      sub_10023CF28(v61, v63, v62, a4, a3, a7, a8, a9);
      return;
    case 5:
      v64 = *(a2 + 1);
      if (!v64)
      {
        goto LABEL_173;
      }

      v65 = *(v64 + 2);
      if (v65 == 5)
      {
        v150 = *a2;
        v151 = a2[4];
        v152 = *(a2 + 1);

        sub_100218B20(v150, v152, v151);
      }

      else if (v65 == 4)
      {
        v66 = *a2;
        v67 = a2[4];
        v68 = *(a2 + 1);

        sub_1002C29BC(v66, v68, v67, a3, a4);
      }

      else
      {
LABEL_173:
        v147 = *a2;
        v148 = a2[4];
        v149 = *(a2 + 1);

        sub_1000DD268(v147, v149, v148);
      }

      break;
    case 6:
      v90 = *a2;
      v91 = *(a2 + 1);

      sub_100300780(v90, v91);
      return;
    case 7:
      v81 = *a2;
      v82 = *(a2 + 2);
      v83 = *(a2 + 1);

      sub_10023D648(v81, v83, v82);
      return;
    case 8:
      v69 = *(a2 + 1);
      if (v69 && *(v69 + 2) == 4)
      {
        goto LABEL_142;
      }

      v70 = *a2;
      v71 = *(a2 + 16);
      v72 = *(a2 + 1);
      v73 = 255;
      goto LABEL_170;
    case 9:
      v54 = *a2;
      v55 = *(a2 + 1);

      sub_1002FE1C8(v54, v55);
      return;
    case 10:
      v59 = *a2;
      v60 = *(a2 + 1);

      sub_1002FE300(v59, v60);
      return;
    case 11:
      v99 = *a2;
      v100 = *(a2 + 2);
      v101 = *(a2 + 1);

      sub_100243738(v99, v101, v100);
      return;
    case 12:
      v105 = *(a2 + 1);
      if (v105 && *(v105 + 2) == 4)
      {
        v106 = *a2;
        v107 = *(a2 + 16);
        v108 = *(a2 + 12);
        v109 = *(a2 + 16);
        v110 = *(a2 + 1);

        sub_1002C3894(v106, v110, v107, v108, v109);
      }

      else
      {
        v142 = *a2;
        v143 = *(a2 + 16);
        v144 = *(a2 + 12);
        v145 = *(a2 + 16);
        v146 = *(a2 + 1);

        sub_100243A74(v142, v146, v143, v144, v145);
      }

      return;
    case 13:
      v45 = off_100BCE0D0;
      v46 = *a2;
      v47 = *(a2 + 16);
      v48 = *(a2 + 24);
      v49 = a2[8];
      v50 = a2[10];
      v51 = a2[12];
      v52 = a2[14];
      v53 = *(a2 + 1);

      v45(v46, v53, v47, v48, v49, v50, v51, v52);
      return;
    case 14:
    case 15:
    case 19:

      goto LABEL_4;
    case 16:
      v102 = *a2;

      sub_100241A30(v102);
      return;
    case 17:
      v126 = *(qword_100BCE0C8 + 24);
      v127 = *a2;

      v126(v127);
      return;
    case 18:
      v111 = *a2;
      v112 = *(a2 + 16);
      v113 = *(a2 + 1);

      sub_100247310(v111, v113, v112);
      return;
    case 20:
      v36 = *a2;
      v37 = *(a2 + 16);
      v38 = *(a2 + 12);
      v39 = *(a2 + 1);

      sub_100241BA0(v36, v39, v37, v38, a3);
      return;
    case 21:
      v44 = *a2;

      goto LABEL_48;
    case 22:
      v92 = *a2;

      sub_1002FFDA4(v92);
      return;
    case 23:
      v75 = *a2;

      sub_10030006C(v75);
      return;
    case 24:
      v134 = *a2;
      v135 = a2[4];
      v136 = *(a2 + 1);

      sub_100300648(v134, v136, v135);
      return;
    case 25:
      v103 = *a2;
      v104 = *(a2 + 8);

      sub_10024199C(v103, v104);
      return;
    case 26:
      v131 = *a2;

      sub_10023D79C(v131);
      return;
    case 27:
      v114 = *a2;
      v115 = *(a2 + 8);

      sub_100241DD4(v114, v115);
      return;
    case 28:
      v40 = *a2;
      v41 = *(a2 + 8);
      v42 = *(a2 + 1);

      sub_100243B9C(v40, v42, v41);
      return;
    case 29:
      v56 = *a2;
      v57 = *(a2 + 8);
      v58 = *(a2 + 1);

      sub_100241EC0(v56, v58, v57);
      return;
    case 30:
      v44 = *a2;

      goto LABEL_48;
    case 31:
      v124 = *a2;
      v125 = *(a2 + 8);

      sub_100242014(v124, v125);
      return;
    case 32:
      v132 = *a2;
      v133 = *(a2 + 8);

      sub_1002420A8(v132, v133);
      return;
    case 33:
      off_100BCE0D8(*a2, *(a2 + 1), *(a2 + 16), *(a2 + 24), *(a2 + 32), a2[10], a2[12], a2[14], a2[16]);
      return;
    case 35:
      v84 = *a2;
      v85 = *(a2 + 16);
      v86 = *(a2 + 24);
      v87 = *(a2 + 4);
      v88 = *(a2 + 1);

      sub_1002438C8(v84, v88, v85, v86, v87);
      return;
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 47:
    case 55:
    case 58:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 88:
      goto LABEL_12;
    case 44:
      sub_10024A27C(*a2, *(a2 + 1), *(a2 + 2), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 24), *(a2 + 28), a2[16]);
      return;
    case 45:
      v116 = *a2;
      v117 = *(a2 + 16);
      v118 = *(a2 + 24);
      v119 = *(a2 + 16);
      v120 = *(a2 + 20);
      v121 = *(a2 + 1);

      sub_100249F90(v116, v121, v117, v118, v119, v120);
      return;
    case 46:
      v93 = *a2;
      v94 = *(a2 + 8);
      v95 = *(a2 + 12);
      v96 = *(a2 + 16);
      v97 = *(a2 + 20);
      v98 = *(a2 + 1);

      sub_10024213C(v93, v98, v94, v95, v96, v97);
      return;
    case 48:
      v24 = *(a2 + 1);
      if (v24 && *(v24 + 2) == 4)
      {
        v25 = *a2;
        v26 = *(a2 + 1);

        sub_1002DA58C(v25, v26);
      }

      else
      {
        v140 = *a2;
        v141 = *(a2 + 1);

        sub_1002FDC1C(v140, v141);
      }

      return;
    case 49:
      v74 = *a2;

      sub_1002FF110(v74);
      return;
    case 50:
      v32 = *a2;
      v33 = *(a2 + 16);
      v34 = *(a2 + 24);
      v35 = *(a2 + 8);

      sub_1002FF7B0(v32, v35, v33, v34);
      return;
    case 51:
      v22 = *a2;
      v23 = a2[2];

      sub_1002FE56C(v22, v23);
      return;
    case 52:
      v128 = *a2;

      sub_1002FE97C(v128);
      return;
    case 53:
      v43 = *a2;

      sub_1002FECE0(v43);
      return;
    case 54:
      v27 = *a2;
      v28 = *(a2 + 1);

      sub_100300B70(v27, v28, a5);
      return;
    case 56:
      v44 = *a2;

LABEL_48:
      nullsub_21(v44);
      break;
    case 57:
      v139 = *a2;

      sub_10023DEBC(v139);
      break;
    case 59:
      v122 = *a2;
      v123 = a2[2];

      sub_1002FEB8C(v122, v123);
      break;
    case 60:
      v137 = *a2;
      v138 = *(a2 + 8);

      sub_1002FEAB8(v137, v138);
      break;
    case 61:
      v29 = *a2;
      v30 = *(a2 + 1);

      sub_100242208(v29, v30);
      break;
    case 71:
      return;
    case 87:
      v31 = *a2;

      sub_1002FDB4C(v31);
      break;
    case 89:
      v69 = *(a2 + 1);
      if (v69 && *(v69 + 2) == 4)
      {
LABEL_142:
        v129 = *a2;
        v130 = *(a2 + 16);

        sub_1002DA3F0(v129, v69, v130);
      }

      else
      {
        v70 = *a2;
        v71 = *(a2 + 16);
        v73 = *(a2 + 24);
        v72 = *(a2 + 1);
LABEL_170:

        sub_1002FDCF8(v70, v72, v71, v73);
      }

      break;
    default:
      if (a1 == 254)
      {
        v12 = *a2;
        v13 = *(a2 + 8);

        sub_100241908(v12, v13);
      }

      else
      {
LABEL_12:
        if (sub_10000C240())
        {
          sub_10000AF54("Unknown event type, event id %x", v14, v15, v16, v17, v18, v19, v20, a1);
          v21 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

LABEL_4:
        sub_1000D660C();
      }

      break;
  }
}

void sub_1000DD268(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2)
  {
    if (xmmword_100BCE2E0)
    {
      if (!*(a2 + 2))
      {
        for (i = 0; i != 3; ++i)
        {
          v7 = qword_100B5F4F0[i];
          if (v7)
          {
            v8 = *(v7 + 16);
            if (v8)
            {
              v8(a1, a2, a3);
            }
          }
        }
      }

      if (a1 == 702)
      {
        a3 = 702;
      }

      else
      {
        a3 = a3;
      }

      if (a1 == 702)
      {
        a1 = 0;
      }

      else
      {
        a1 = a1;
      }

      sub_1000DDD7C(a1, a2, a3);
      sub_1000DDF48(1);
      if (!*(a2 + 2) && sub_1000B8B5C(a2))
      {
        if (a1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_HCIEventHandler_DisconnectionComplete error (%d)", v9, v10, v11, v12, v13, v14, v15, *a2);
            v16 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100814348();
            }
          }

          if (*(a2 + 54) == 6)
          {
            *(a2 + 54) = 0;
          }
        }

        else
        {
          v28 = *(a2 + 12);
          v29 = a2[26];
          sub_1000DE35C(a2);
          sub_1000E4FBC(a2, a3);
          sub_1000E53AC(a2);
          if (qword_100B5F4C0 && !sub_10002260C(dword_100B5F6A0) && (*qword_100B5F4C0 == 3 || !*qword_100B5F4C0) && *(a2 + 12) == *(qword_100B5F4C0 + 8) && a2[26] == *(qword_100B5F4C0 + 12))
          {
            (*(qword_100B5F4C0 + 16))(a3);
            sub_10023F0D8(1344);
          }

          sub_1000CDA00(a2, a3);
          sub_1000E0BF8(a2, a3);
          sub_1000E1158(&v28);
        }
      }

      v26 = off_100B5F4D0;
      if (off_100B5F4D0 && qword_100B5F4C8 == a2)
      {
        off_100B5F4D0 = 0;
        v26(a1, a2);
      }

      if (byte_100B5F4BB)
      {
        v27 = off_100B5F4E0;
        if (off_100B5F4E0)
        {
          if (qword_100B5F4D8 == a2)
          {
            off_100B5F4E0 = 0;
            v27(a1, a2);
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_DisconnectionComplete no connection handle: reason %! ignoring", v17, v18, v19, v20, v21, v22, v23, a3);
    v24 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100814348();
    }
  }
}

void sub_1000DD500(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  if (sub_10023DC00(a2, &v11))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not get address", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    sub_1000DDCD8(&v11);
  }
}

uint64_t sub_1000DD584(uint64_t a1, uint64_t a2, int a3)
{
  result = a2;
  if (a2 <= 722)
  {
    if (a2 <= 558)
    {
      if (a2 <= 149)
      {
        switch(a2)
        {
          case 0:
            return result;
          case 0x70:
            return 316;
          case 0x7A:
            return 312;
        }
      }

      else if (a2 > 436)
      {
        if (a2 == 437)
        {
          return 331;
        }

        if (a2 == 558)
        {
          return 321;
        }
      }

      else
      {
        if (a2 == 150)
        {
          return 322;
        }

        if (a2 == 151)
        {
          return 324;
        }
      }

      return (a3 + a2);
    }

    if (a2 <= 707)
    {
      if (a2 > 704)
      {
        if (a2 == 705)
        {
          return 158;
        }

        if (a2 == 706)
        {
          return 151;
        }
      }

      else
      {
        if (a2 == 559)
        {
          return 325;
        }

        if (a2 == 704)
        {
          return 329;
        }
      }

      return (a3 + a2);
    }

    if (a2 <= 713)
    {
      if (a2 == 708)
      {
        return 328;
      }

      if (a2 == 711)
      {
        return 314;
      }

      return (a3 + a2);
    }

    if (a2 != 714)
    {
      if (a2 == 716)
      {
        return 330;
      }

      return (a3 + a2);
    }

    return 162;
  }

  if (a2 > 1333)
  {
    if (a2 > 2042)
    {
      if (a2 > 3311)
      {
        if (a2 == 3312)
        {
          return 317;
        }

        if (a2 == 5014)
        {
          return 320;
        }
      }

      else
      {
        if (a2 == 2043)
        {
          return 318;
        }

        if (a2 == 2604)
        {
          return 326;
        }
      }
    }

    else if (a2 > 1413)
    {
      if (a2 == 1414)
      {
        return 181;
      }

      if (a2 == 1814)
      {
        return 319;
      }
    }

    else
    {
      if (a2 == 1334)
      {
        return 334;
      }

      if (a2 == 1339)
      {
        return 310;
      }
    }

    return (a3 + a2);
  }

  if (a2 > 831)
  {
    if (a2 > 924)
    {
      if (a2 == 925)
      {
        return 118;
      }

      if (a2 == 1217)
      {
        return 323;
      }
    }

    else
    {
      if (a2 == 832)
      {
        return 332;
      }

      if (a2 == 834)
      {
        return 333;
      }
    }

    return (a3 + a2);
  }

  switch(a2)
  {
    case 0x2D3:
      return 166;
    case 0x2D4:
      return 162;
    case 0x2DE:
      return 327;
  }

  return (a3 + a2);
}

void sub_1000DD7C8(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    v16[0] = 0;
    v16[1] = 0;
    sub_100007F88(v16, a1);
    *(a1 + 1396) = 0;
    *(a1 + 1177) = 0;
    __p[0] = 0;
    sub_100016250(__p);
    if ((SLODWORD(__p[0]) - *(a1 + 1400)) > 0x3C)
    {
      *(a1 + 1417) = 0;
      *(a1 + 1420) = 0;
    }

    else
    {
      v5 = *(a1 + 1420);
      if (!v5 || v5 == a3)
      {
        ++*(a1 + 1418);
      }

      else
      {
        *(a1 + 1418) = 0;
        *(a1 + 1420) = 0;
      }

      *(a1 + 1420) = a3;
      ++*(a1 + 1417);
    }

    *(a1 + 1400) = 0u;
    v6 = *(a1 + 1584);
    *(a1 + 1584) = 0u;
    v7 = *(a1 + 1600);
    *(a1 + 1600) = 0u;
    *__p = v6;
    v22 = v7;
    v8 = *(a1 + 1616);
    *(a1 + 1616) = 0u;
    v23 = v8;
    sub_1003617DC(__p);
    sub_1000088CC(v16);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1);
  *(a1 + 1496) = 0;
  sub_1000088CC(__p);
  *(a1 + 582) = 0;
  v18 = 0;
  v9 = sub_1000BE4B4();
  sub_100007E30(__p, "HasTS");
  (*(*v9 + 784))(v9, a1, __p, &v18);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v18 & 1) == 0)
  {
    if (*(a1 + 1417) >= 5u)
    {
      *(a1 + 1417) = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      v22 = 0u;
      if (sub_1005423B4(a1, 0, 409, a3, __p))
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, v16);
          v11 = v17 >= 0 ? v16 : v16[0];
          *buf = 136315138;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Submitting contextual metric for event 'BT_CONNECTION_DISCONNECTION_RED_FLAG' for %s", buf, 0xCu);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }
        }

        v12 = sub_10000F034();
        (*(*v12 + 256))(v12, __p, *(a1 + 1380));
      }
    }

    if (*(a1 + 1418) >= 5u)
    {
      *(a1 + 1418) = 0;
      *(a1 + 1420) = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      v22 = 0u;
      if (sub_1005423B4(a1, 0, 410, a3, __p))
      {
        v13 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, v16);
          if (v17 >= 0)
          {
            v14 = v16;
          }

          else
          {
            v14 = v16[0];
          }

          *buf = 136315138;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Submitting contextual metric for event 'BT_CONNECTION_DISCONNECTION_SAME_REASON_RED_FLAG' for %s", buf, 0xCu);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }
        }

        v15 = sub_10000F034();
        (*(*v15 + 256))(v15, __p, *(a1 + 1380));
      }
    }
  }
}

uint64_t sub_1000DDBAC(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  if (*(a1 + 304) == a2)
  {
    while (*(a1 + 416))
    {
      v4 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 348);
        *buf = 67109120;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Bandwidth: There was still connection 0x%1X in the map after ACL Disconnectd headset!", buf, 8u);
      }

      sub_1007F93C0(a1, *(a1 + 348), 0);
    }

    *(a1 + 304) = 0;
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1000DDCD8(uint64_t result)
{
  v1 = result;
  v2 = &xmmword_100B6A828;
  v3 = 7;
  do
  {
    if (*v2 == 1 && *v1 == *(v2 + 1) && *(v1 + 4) == *(v2 + 5))
    {
      result = *(v2 + 2);
      if (result)
      {
        result = sub_10002242C(result);
      }

      v2[19] = 0u;
      v2[20] = 0u;
      v2[17] = 0u;
      v2[18] = 0u;
      v2[15] = 0u;
      v2[16] = 0u;
      v2[13] = 0u;
      v2[14] = 0u;
      v2[11] = 0u;
      v2[12] = 0u;
      v2[9] = 0u;
      v2[10] = 0u;
      v2[7] = 0u;
      v2[8] = 0u;
      v2[5] = 0u;
      v2[6] = 0u;
      v2[3] = 0u;
      v2[4] = 0u;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
    }

    v2 += 21;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t sub_1000DDD7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    if (*(a2 + 2))
    {
      byte_100B5F833 = 0;
      v5 = *(*(a2 + 48) + 80);
      v6 = sub_1000D2538(*(a2 + 48), 19);
      if (v6)
      {
        v7 = v6;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_LP_DisconnectReq failed: %! (%d)", v8, v9, v10, v11, v12, v13, v14, v7);
          v15 = sub_10000C050(0x3Eu);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v16 = qword_100B5F808;
      if (v5)
      {
        v16 = v5;
      }

      if (v16)
      {
        v17 = *(v16 + 8);
        if (v17)
        {
          v17(0, a2, a3);
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Disconnecting SCO", v18, v19, v20, v21, v22, v23, v24, v26);
        v25 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v28 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002592C0();
      return sub_1002BFE1C(0);
    }

    else
    {

      return sub_1000E62E8(a2, a3);
    }
  }

  return result;
}

BOOL sub_1000DDF48(int a1)
{
  v21 = 0;
  v1 = a1 != 0;
  for (result = sub_1000BBFD4(&v21); result; result = sub_1000BBFD4(&v21))
  {
    v3 = v21;
    if (!*(v21 + 54) && !*(v21 + 144))
    {
      v4 = *(v21 + 138);
      LOWORD(v5) = *(v21 + 138);
      if (*(v21 + 199) == 1 && (v6 = sub_1000BBF7C(), v7 = sub_1000C0E38(), v3 = v21, v5 = *(v21 + 138), v7 + v6 <= v1))
      {
        v8 = v5 | 1;
      }

      else
      {
        v8 = v5 & 0xFFFE;
      }

      *(v3 + 138) = v8;
      if (v4 != v8)
      {
        v9 = sub_100018960(49, nullsub_142);
        if (v9)
        {
          v10 = v9;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not write link settings to Central only %!", v11, v12, v13, v14, v15, v16, v17, v10);
            v18 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = sub_10000C0FC();
              *buf = 136446466;
              v23 = v19;
              v24 = 1024;
              v25 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }
        }
      }
    }
  }

  if (*(qword_100BCDFC8 + 15))
  {
    v20 = 1;
  }

  else
  {
    result = sub_1000DE128(0);
    v20 = !result;
  }

  byte_100BCDFD0 = v20;
  return result;
}

BOOL sub_1000DE128(uint64_t a1)
{
  v3 = a1;
  do
  {
    v1 = sub_1000BBFD4(&v3);
  }

  while (v1 && sub_1000DE170(v3));
  return v1;
}

uint64_t sub_1000DE170(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 54) == 3)
  {
    if (*(a1 + 144) == 255 && (*(a1 + 196) & 1) == 0)
    {
      *(a1 + 198) = 1;
    }

    return 1342;
  }

  if (*(a1 + 54) || (*(a1 + 196) & 1) != 0 || *(a1 + 144) != 1)
  {
    return 1342;
  }

  if (sub_1000D60AC(a1))
  {
    *(a1 + 194) = 1;
    return 1342;
  }

  if (sub_1000E2040(a1 + 48))
  {
    return 1342;
  }

  if (*(a1 + 248))
  {
    *(a1 + 197) = 1;
    return 1342;
  }

  if (*(a1 + 200) == 1 && sub_1000BBF7C() == 1 && !sub_1000C0E38() || sub_10029C320(a1))
  {
    return 1342;
  }

  if (*(a1 + 195) == 1)
  {
    v4 = *(a1 + 320);
    v2 = 1342;
    if (v4 == 733 || v4 == 736)
    {
      return v2;
    }

    if (sub_1002565DC() || sub_100256648() || sub_1000BBF7C() == 1 && !sub_1000C0E38())
    {
      return 1342;
    }
  }

  if (!*(a1 + 148))
  {
    v13 = sub_10023B840(a1);
    if (v13)
    {
      v14 = v13;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DevMgr_aclActivity failed with %!", v15, v16, v17, v18, v19, v20, v21, v14);
        v22 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  v2 = sub_100246C54(sub_100246D3C, a1, 0);
  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("startRoleSwitch failed %!", v5, v6, v7, v8, v9, v10, v11, v2);
      v12 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v2;
}

void sub_1000DE35C(uint64_t a1)
{
  v2 = *(a1 + 54);
  if (*(a1 + 120))
  {
    sub_100247640(a1, 1301);
    if (v2 != 5)
    {
      if (sub_10000C240())
      {
        v3 = sub_1002567E8(v2);
        sub_10000AF54("Connection Handle state inconsistent: %s", v4, v5, v6, v7, v8, v9, v10, v3);
        v11 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  if (*(a1 + 128))
  {
    sub_100247AF8(a1, 1301);
    if (v2 != 4)
    {
      if (sub_10000C240())
      {
        v12 = sub_1002567E8(v2);
        sub_10000AF54("Connection Handle state inconsistent: %s", v13, v14, v15, v16, v17, v18, v19, v12);
        v20 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_1000DE474(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1000DE480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    v14 = v9;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "aclDisconnected for %s with result %d and reason %d", buf, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_1000DE594(a1, a2 + 128, a4);
}

uint64_t sub_1000DE594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleanup with result %d", buf, 8u);
  }

  v7 = sub_1000E6A38(a1, a2);
  if (v7)
  {
    v8 = v7;
    if (*v7)
    {
      v14 = 0;
      sub_1000216B4(&v14);
      sub_10029104C(*(v8 + 24), 436);
      sub_100022214(&v14);
      if (a3)
      {
        if (qword_100B50AA0 != -1)
        {
          sub_10086BF1C();
        }

        v9 = sub_1000DD584(off_100B50A98, a3, 20000);
        if (qword_100B50AC0 != -1)
        {
          sub_10086BF94();
        }

        sub_1005983D4(off_100B50AB8, *v8, v9);
      }

      *(v8 + 24) = 0;
      if (*(v8 + 27))
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086BFBC();
        }

        if (qword_100B50AE0 != -1)
        {
          sub_10086BFF8();
        }

        sub_1004E0FE4(qword_100B50AD8, *v8, *(v8 + 27), *(v8 + 32), *(v8 + 68), *(v8 + 135));
      }

      v10 = *(v8 + 37);
      *(v8 + 27) = 0;
      *(v8 + 32) = 0;
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086C020();
        }

        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        sub_1005E64C8(off_100B50AC8, *v8 + 128, v8 + 37, v8 + 70);
      }

      *(v8 + 37) = 0;
      if (*(v8 + 62))
      {
        sub_1000618AC(&v14);
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086C084();
        }

        sub_100309078(*v8 + 128, *(v8 + 62));
        sub_100022214(&v14);
      }

      *(v8 + 62) = 0;
      if (*(v8 + 42))
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086C0C0();
        }

        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        sub_10035B49C(off_100B50948, *v8, *(v8 + 42), a3);
      }

      *(v8 + 42) = 0;
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      if (sub_100338410(off_100B50948))
      {
        v11 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reset TiPi pending flag as a result of connection failure", buf, 2u);
        }

        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        sub_100338418(off_100B50948, *v8, 0);
      }

      if (!*(v8 + 47))
      {
        goto LABEL_49;
      }

      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C124();
      }

      v12 = *(v8 + 4);
      if (v12 < 5)
      {
        if (qword_100B541D0 == -1)
        {
LABEL_48:
          sub_1006CDBC8(off_100B541C8, *v8, *(v8 + 47), *(v8 + 52), v12 > 4);
LABEL_49:
          *(v8 + 47) = 0;
          *(v8 + 52) = 0;
          if (*(v8 + 57) && (*(v8 + 22) & 0x10) != 0)
          {
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086C188();
            }

            sub_1000618AC(&v14);
            sub_1001BD1BC(a2, *(v8 + 57));
            sub_100022214(&v14);
          }

          *(v8 + 57) = 0;
          sub_10002249C(&v14);
          goto LABEL_55;
        }
      }

      else if (qword_100B541D0 == -1)
      {
        goto LABEL_48;
      }

      sub_10086C160();
      goto LABEL_48;
    }
  }

LABEL_55:
  sub_1000E69EC(a1, a2);
  return sub_1000DE9EC(a1, a2);
}

uint64_t sub_1000DE9EC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = a1 + v2;
    if (*(a1 + v2 + 32))
    {
      v4 = *(v3 + 24);
      v5 = *(v3 + 28);
      if (*a2 == v4 && *(a2 + 4) == v5)
      {
        break;
      }
    }

    v2 += 208;
    if (v2 == 624)
    {
      return 120;
    }
  }

  v8 = a1 + v2;
  sub_100730C34(a1, a1 + v2 + 16, 0);
  v9 = *(v8 + 216);
  *(v8 + 216) = 0;

  return 0;
}

uint64_t sub_1000DEA6C(uint64_t **a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v6 = *(a2 + 128);
    v7 = *(a2 + 132);
    sub_1000E56AC(a1 + 51, &v6);
    sub_1000E5700(a1 + 54, &v6);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return ((*a1)[39])(a1, a2, 0);
  }

  return result;
}

uint64_t sub_1000DEB14(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 176);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000DEB5C(uint64_t a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1);
  v18 = 0;
  v4 = *(a1 + 520);
  if (!v4 || ((*(*v4 + 56))(v4, &v18), v5 = v18, v18 <= 0))
  {
    v5 = *(a1 + 528);
    if (v5 <= 0)
    {
      v5 = *(a1 + 560);
      v6 = (a1 + 564);
    }

    else
    {
      v6 = (a1 + 532);
    }

    v7 = *v6;
    if (v7)
    {
      goto LABEL_20;
    }
  }

  v8 = *(a1 + 1084);
  v9 = v8 - 569;
  v10 = (v8 - 569) > 0x33 || ((1 << (v8 - 57)) & 0x9500070000007) == 0;
  if (!v10 || (v8 - 781) <= 0x17 && ((1 << (v8 - 13)) & 0xF80003) != 0 || (v8 - 666) <= 5 && ((1 << (v8 + 102)) & 0x25) != 0) && (*(a1 + 1360))
  {
    LOBYTE(v7) = 1;
LABEL_20:
    *a2 = v5;
    goto LABEL_21;
  }

  if (v5 >= 1)
  {
    LOBYTE(v7) = 2;
    goto LABEL_20;
  }

  *a2 = v5;
  LOBYTE(v7) = (v9 <= 0x33 && ((1 << v9) & 0x9500070000007) != 0 || (v8 - 781) <= 0x17 && ((1 << (v8 - 13)) & 0xF80003) != 0 || (v8 - 666) <= 5 && ((1 << (v8 + 102)) & 0x25) != 0) && (*(a1 + 1360) & 1) != 0;
LABEL_21:
  *(a2 + 4) = v7;
  v11 = *(a1 + 536);
  *(a2 + 8) = v11;
  v12 = 2 * (v11 > 0);
  if (*(a1 + 540))
  {
    v12 = *(a1 + 540);
  }

  *(a2 + 12) = v12;
  v13 = *(a1 + 544);
  *(a2 + 16) = v13;
  v14 = 2 * (v13 > 0);
  if (*(a1 + 548))
  {
    v14 = *(a1 + 548);
  }

  *(a2 + 20) = v14;
  v15 = *(a1 + 552);
  *(a2 + 24) = v15;
  v16 = 2 * (v15 > 0);
  if (*(a1 + 556))
  {
    v16 = *(a1 + 556);
  }

  *(a2 + 28) = v16;
  return sub_1000088CC(v19);
}

void sub_1000DED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DED98(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x32)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1000DEDAC(uint64_t a1, uint64_t a2)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E5A58(a2, &__p);
    LogPrintF_safe();
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }

  sub_1000DEF24(a1);
}

void sub_1000DEE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DEEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 263) < 0)
  {
    sub_100008904(a2, *(a1 + 240), *(a1 + 248));
  }

  else
  {
    *a2 = *(a1 + 240);
    *(a2 + 16) = *(a1 + 256);
  }

  return sub_1000088CC(v5);
}

void sub_1000DEF24(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DF238;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1000DEFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 == *(v2 + 56))
  {
    if (*(v1 + 1437) == 1)
    {
      if (*(v2 + 168))
      {
        *(v2 + 176) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - *(v2 + 168);
      }

      *(v2 + 192) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - *(v2 + 184);
      *v12 = 8;
      *buf = v12;
      v4 = sub_100375190(v2 + 216, v12);
      ++*(v4 + 16);
      *(v2 + 184) = 0;
      sub_10054FB14(*(a1 + 40), 0);
      (*(*v2 + 8))(v2, 0);
    }

    v5 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BandSwitchManager Daily time Updates called with bandCode %d", buf, 8u);
    }

    sub_10037B334(v2, 0);
    *(*(a1 + 40) + 1436) = 0;
    v6 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Resetting hrbClassificationBands VSC with value 0x%x", buf, 8u);
    }

    v7 = sub_10000C7D0();
    (*(*v7 + 1704))(v7, 1, 1);
    *(v2 + 141) = 1;
    *(v2 + 136) = 0;
    sub_100378848(v2);
    v8 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(v2 + 56), buf);
      if (v11 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      *v12 = 136446210;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Discarding reference to %{public}s as it disconnected", v12, 0xCu);
      if (v11 < 0)
      {
        operator delete(*buf);
      }
    }

    *(v2 + 56) = 0;
  }
}

void sub_1000DF238(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(&unk_100B55260);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(v1 + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000DF3D8;
        block[3] = &unk_100ADF820;
        block[4] = v6;
        dispatch_async(v7, block);
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  os_unfair_lock_unlock(&unk_100B55260);
}

void sub_1000DF668(id a1, NSString *a2, CBDevice *a3, BOOL *a4)
{
  v4 = a3;
  [(CBDevice *)v4 setChangeFlags:0];
  [(CBDevice *)v4 setOldDiscoveryFlags:[(CBDevice *)v4 discoveryFlags]];
  [(CBDevice *)v4 setDiscoveryFlags:[(CBDevice *)v4 discoveryFlags]& 0xFFFFFFFFFF5FFFFFLL];
}

void sub_1000DF99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000DFA00(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_10009C530(&v8, a1 + 184);
  sub_10000801C(v11);
  v4 = v9;
  if (v9 == &v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v4[2];
      if ((*(*v6 + 48))(v6, a2))
      {
        v5 = v6[8] | v5;
      }

      v4 = v4[1];
    }

    while (v4 != &v8);
  }

  sub_100028EB4(&v8);
  sub_1000088CC(v11);
  return v5;
}

void sub_1000DFAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

BOOL sub_1000DFB08(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1000DFB74(a2, *(a1 + 32)) == 4;
}

uint64_t sub_1000DFB74(uint64_t a1, unsigned int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = *(a1 + 336);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 336;
  do
  {
    v6 = *(v4 + 28);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 336 && *(v5 + 28) <= a2)
  {
    v9 = *(v5 + 32);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1000DFC04(uint64_t a1, std::string **a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1);
  v4 = *(a1 + 1240);
  v5 = *(a1 + 1232);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  if (v6 < 0xB)
  {
    goto LABEL_2;
  }

  if (*(v5 + 71) < 0)
  {
    if (!*(v5 + 56))
    {
LABEL_2:
      v7 = 0;
      goto LABEL_10;
    }
  }

  else if (!*(v5 + 71))
  {
    goto LABEL_2;
  }

  if ((a1 + 1232) != a2)
  {
    sub_1000DFCBC(a2, v5, v4, v6);
  }

  v7 = 1;
LABEL_10:
  sub_1000088CC(v9);
  return v7;
}

void sub_1000DFCBC(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10003E3E8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035FD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000DFE5C(a1, (v6 + v12), a3, v11);
  }
}

char *sub_1000DFE5C(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100008904(__dst, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(__dst + 2) = *(v6 + 2);
        *__dst = v7;
      }

      v6 = (v6 + 24);
      __dst += 24;
    }

    while (v6 != a3);
  }

  return __dst;
}

id sub_1000DFED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 96);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 288);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [*(a1 + 176) objectForKey:{v8, v18}];
        if (v9)
        {
          v10 = v9[8];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 serialNumber];
            v13 = [v12 length] == 0;

            if (!v13)
            {
              v14 = [v11 serialNumber];
              v15 = [v3 isEqualToString:v14];

              if (v15)
              {
                v16 = v8;

                goto LABEL_15;
              }
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  sub_1000088CC(v22);

  return v16;
}

void sub_1000E0088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E00E4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 876);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E012C(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  LODWORD(v4) = a2 + 7;
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = v4;
  }

  v5 = *(a1 + 968);
  if (*(a1 + 976) - v5 <= (v4 >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(v5 + (v4 >> 3)) >> (a2 & 7)) & 1;
  }

  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_1000E01B4(uint64_t a1, unsigned int a2)
{
  if (a2 > 6)
  {
    return 0;
  }

  if (((1 << a2) & 0x65) == 0)
  {
    return 1;
  }

  v2 = sub_10000C798();
  return (*(*v2 + 456))(v2) ^ 1;
}

uint64_t sub_1000E022C()
{
  if (qword_100B6E378 != -1)
  {
    sub_100831314();
  }

  return byte_100B6E370;
}

uint64_t sub_1000E0264(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v5 = *(*i + 16);
        goto LABEL_7;
      }
    }
  }

  v5 = 3;
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1000E02E0(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 760);
  v2 = *(a1 + 824);
  v3 = (a1 + 832);
  if (v2 == (a1 + 832))
  {
LABEL_10:
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v4 = sub_100320D9C(v2[5] + 400);
      v5 = v2[5];
      if (v5)
      {
        if (sub_10069B0D8(v5))
        {
          break;
        }
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  sub_1000088CC(v10);
  return v4;
}

uint64_t sub_1000E03B0(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 69));
  v4 = sub_1000E04A4(a1, a2);
  v5 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG);
  if (!v4)
  {
    if (v5)
    {
      sub_100837388();
    }

    goto LABEL_9;
  }

  if (v5)
  {
    sub_1008372D8();
  }

  v6 = sub_1004D03D4(a1, v4);
  if (!v6)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = sub_100703628(v6);
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
  {
    sub_100837314();
  }

LABEL_10:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_1000E04A4(void *a1, uint64_t a2)
{
  v4 = a1[63];
  if (v4 == a1 + 64)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = v4[5];
    v6 = *(v5 + 128);
    v7 = *(v5 + 132);
    v8 = v6 == *(a2 + 128) && v7 == *(a2 + 132);
    if (v8)
    {
      break;
    }

    v9 = v4[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v4[2];
        v8 = *v10 == v4;
        v4 = v10;
      }

      while (!v8);
    }

    v4 = v10;
    if (v10 == a1 + 64)
    {
      goto LABEL_14;
    }
  }

  result = *(v4 + 16);
  if (!*(v4 + 16))
  {
LABEL_14:
    v12 = qword_100BCE8B8;
    result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_1000E5A58(a2, __p);
      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = a1[65];
      *buf = 136446466;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "No corresponding device for %{public}s found in fA2dpHandleToDeviceMap (%lu devices)", buf, 0x16u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_1000E0610(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 1296);
  if (v4)
  {
    v5 = *(a1 + 1280);
    *(a2 + 12) = *(a1 + 1292);
    *a2 = v5;
    std::string::operator=((a2 + 32), (a1 + 1312));
  }

  sub_1000088CC(v7);
  return v4 != 0;
}

uint64_t sub_1000E06A4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 152);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E06EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 836);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E0734(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 872);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E077C(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_10009C530(&v8, a1 + 184);
  sub_10000801C(v11);
  v4 = v9;
  if (v9 == &v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v4[2];
      if ((*(*v6 + 120))(v6, a2))
      {
        v5 = v6[8] | v5;
      }

      v4 = v4[1];
    }

    while (v4 != &v8);
  }

  sub_100028EB4(&v8);
  sub_1000088CC(v11);
  return v5;
}

void sub_1000E085C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E0884(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v5 = a1[5];
    if (v5 == a1[6])
    {
      return 0;
    }

    else
    {
      do
      {
        result = sub_1000E0954(*v5, a2);
        if (result)
        {
          break;
        }

        ++v5;
      }

      while (v5 != a1[6]);
    }
  }

  return result;
}

uint64_t sub_1000E090C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 256);
  v2 = *(a1 + 320);
  sub_1000088CC(v4);
  return v2;
}

BOOL sub_1000E0954(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 88);
  v4 = sub_1000E69B8(a1 + 176, a2);
  sub_1000088CC(v6);
  return v4;
}

void sub_1000E09C0()
{
  sub_10000C0FC();
  sub_10006DC60();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000E0A78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_1000E0A98(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  sub_1001824D0(va, a2, va1);
}

void sub_1000E0B2C(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

BOOL sub_1000E0B48()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_1000E0B64(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

uint64_t sub_1000E0BC8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void *sub_1000E0BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 430;
  }

  if (word_100B60268)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = qword_100B60260;
      v7 = *(qword_100B60260 + v4);
      if (v7 == 4 || v7 == 2)
      {
        if (*sub_1000B12AC(qword_100B60260 + v4) == a1)
        {
          sub_10029F2B4(*(v6 + v4 + 4));
          if (*(sub_1000B12AC(v6 + v4) + 16) != 1 || *(sub_1000B12AC(v6 + v4) + 30) || sub_1000ABD24(a1))
          {
            goto LABEL_18;
          }

          v9 = sub_1000B12AC(v6 + v4);
          ++*(v9 + 30);
          v10 = sub_1000B12AC(v6 + v4);
          sub_10002242C(*(v10 + 80));
          v11 = sub_1000B12AC(v6 + v4);
          sub_10002242C(*(v11 + 84));
          v12 = *(v6 + v4 + 72);
          if (v12)
          {
            sub_100306190(v12);
            *(v6 + v4 + 72) = 0;
          }

          *(sub_1000B12AC(v6 + v4) + 16) = 0;
          *(sub_1000B12AC(v6 + v4) + 25) = 1;
          *sub_1000B12AC(v6 + v4) = 0;
          v13 = sub_1000B12AC(v6 + v4);
          if (sub_10023B6AC(sub_10028F7A4, v13 + 10))
          {
LABEL_18:
            sub_10028EE5C(v6 + v4, v3);
          }

          else
          {
            sub_1000D2538(a1, 19);
          }
        }

        v7 = *(v6 + v4);
      }

      if (v7 == 3)
      {
        sub_1000E0E04(v6 + v4, a1);
        v7 = *(v6 + v4);
      }

      if (v7 == 1)
      {
        v16 = *(a1 + 48);
        v17 = *(a1 + 52);
        if (sub_100296104(*(v6 + v4 + 4), &v16) != 434)
        {
          v14 = sub_100297178((v6 + v4));
          (*(v14 + 16))(&v16);
        }
      }

      ++v5;
      v4 += 144;
    }

    while (v5 < word_100B60268);
  }

  sub_1000E1148(a1);
  return sub_1000E1138(a1);
}

uint64_t sub_1000E0E04(uint64_t result, uint64_t a2)
{
  if (qword_100B60318)
  {
    v3 = result;
    v4 = qword_100B60318;
    while (*(v4 + 24) != *(result + 4))
    {
      v4 = *(v4 + 80);
      if (v4 == qword_100B60318 || v4 == 0)
      {
        return result;
      }
    }

    if (*(v4 + 16) == 1)
    {
      sub_1000E0FC8(*(v4 + 8), a2);
      v6 = *v4;

      return sub_1000E0FC8(v6, a2);
    }

    else
    {
      v7 = sub_1000E1050(v4);
      sub_1000E0FC8(*v4, a2);
      result = sub_1000E1050(v4);
      if (v7 && (result & 1) == 0 && *v3 == 3)
      {
        v8 = (v4 + 24);
        if (sub_10000C240())
        {
          sub_10000AF54("queueDrained, cid 0x%x\n", v9, v10, v11, v12, v13, v14, v15, *v8);
          v16 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        *&buf = 2;
        *(&buf + 1) = v8;
        return sub_10002195C(sub_10029F154, &buf, 0, 0);
      }
    }
  }

  return result;
}

void *sub_1000E0FC8(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = sub_1000B47B8(result);
    for (ptr = result; result; ptr = result)
    {
      while (1)
      {
        v4 = sub_1000BC720(result);
        if (v4)
        {
          if (*(v4 + 8) == a2)
          {
            break;
          }
        }

        sub_1000BC828(&ptr);
        result = ptr;
        if (!ptr)
        {
          return result;
        }
      }

      sub_1000BC77C(v3, ptr, 1);
      result = sub_1000B47B8(v3);
    }
  }

  return result;
}

BOOL sub_1000E1050(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return sub_10000C248(*a1) - *(a1 + 20) == *(a1 + 26);
  }

  else
  {
    v3 = sub_1000E10E0(*(a1 + 24));
    v4 = sub_10000C248(*a1);
    v5 = *(a1 + 26);
    if (!v3)
    {
      return v4 >= v5;
    }

    return v4 == v5 - sub_10029DECC(*(a1 + 24));
  }
}

BOOL sub_1000E10E0(unsigned int a1)
{
  v3 = 0;
  if (!sub_1000ABC7C(a1, &v3) && (*v3 != 4 ? (v2 = *v3 == 2) : (v2 = 1), v2))
  {
    return *(sub_1000B12AC(v3) + 64) == 5;
  }

  else
  {
    return 0;
  }
}

void sub_1000E1158(uint64_t a1)
{
  if (dword_100BCE2F4)
  {
    v13 = 0;
    if (sub_1000E1248(a1, &v13))
    {
      v2 = qword_100B6D1C0;
      do
      {
        v3 = v13;
        if (*(v2 + 16) != 1 && *v2 == *(*(v2 + 24) + (v13 << 6) + 56))
        {
          sub_100306640(1500, 1);
          v2 = qword_100B6D1C0;
        }

        *(*(v2 + 24) + (v3 << 6) + 56) = 0;
      }

      while (sub_1000E1248(a1, &v13));
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_POLICYMGR_DevmgrDisconnect", v4, v5, v6, v7, v8, v9, v10, v12);
    v11 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

BOOL sub_1000E1248(uint64_t a1, _DWORD *a2)
{
  v2 = *(qword_100B6D1C0 + 20);
  if (*(qword_100B6D1C0 + 20))
  {
    v3 = 0;
    v4 = *(qword_100B6D1C0 + 24);
    v5 = 1;
    while (*(v4 + 56) >> 18 < 0x69u || *(v4 + 56) >= v2 || *a1 != *v4 || *(a1 + 4) != *(v4 + 4))
    {
      v4 += 64;
      v5 = ++v3 < v2;
      if (v2 == v3)
      {
        return 0;
      }
    }

    *a2 = v3;
  }

  else
  {
    return 0;
  }

  return v5;
}

void sub_1000E12C4(unsigned __int16 *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2 <= 4)
    {
      if (!*(a1 + 2))
      {
        v36 = qword_100B5FBD0;
        if (qword_100B5FBD0)
        {
          while (v36 != a1)
          {
            v36 = *(v36 + 40);
            if (!v36)
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
LABEL_47:
          sub_1000D660C();
        }

        sub_1000E1B64(a1);
        if (*(a1 + 20))
        {
          sub_1000D660C();
        }

        if (*(a1 + 15))
        {
          sub_1000D660C();
        }

        if (*(a1 + 16))
        {
          sub_1000D660C();
        }

        v37 = *(a1 + 15);
        if (v37)
        {
          sub_10000C1E8(v37);
          *(a1 + 15) = 0;
        }

        v38 = *(a1 + 16);
        if (v38)
        {
          sub_10000C1E8(v38);
          *(a1 + 16) = 0;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Releasing ACL connection 0x%x with addr %: numAclConnections:%d", v39, v40, v41, v42, v43, v44, v45, *a1);
          v46 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v130 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_10002242C(*(a1 + 18));
        *(a1 + 18) = 0;
        v47 = *(a1 + 44);
        if (v47)
        {
          sub_10002242C(v47);
        }

        sub_1000E1CA8(a1);
        sub_1000E1F34(a1);
        goto LABEL_110;
      }

      if (v2 == 1)
      {
        v70 = qword_100B5FBE0;
        if (qword_100B5FBE0)
        {
          while (v70 != a1)
          {
            v70 = *(v70 + 40);
            if (!v70)
            {
              goto LABEL_90;
            }
          }
        }

        else
        {
LABEL_90:
          sub_1000D660C();
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Releasing SCO connection 0x%4x", v71, v72, v73, v74, v75, v76, v77, *a1);
          v78 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v130 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1000E1CA8(a1);
        v79 = qword_100B5FBE0;
        if (qword_100B5FBE0 == a1)
        {
          qword_100B5FBE0 = *(a1 + 5);
LABEL_109:
          --dword_100B5FBD8;
          goto LABEL_110;
        }

        while (v79)
        {
          v80 = v79;
          v79 = *(v79 + 40);
          if (v79 == a1)
          {
            *(v80 + 40) = *(a1 + 5);
            goto LABEL_109;
          }
        }

        if (!sub_10000C240())
        {
          goto LABEL_110;
        }

        sub_10000AF54("OI_HCI_ReleaseConnection: %x", v121, v122, v123, v124, v125, v126, v127, a1);
        v128 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_64;
        }

        v22 = qword_100B5FBF0;
        if (qword_100B5FBF0)
        {
          while (v22 != a1)
          {
            v22 = *(v22 + 40);
            if (!v22)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          sub_1000D660C();
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Releasing LE connection 0x%4x", v23, v24, v25, v26, v27, v28, v29, *a1);
          v30 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v130 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1000E1B64(a1);
        sub_10002242C(*(a1 + 58));
        *(a1 + 58) = 0;
        sub_1000E1CA8(a1);
        sub_1002E6E2C(a1);
        v31 = qword_100B5FBF0;
        if (qword_100B5FBF0 == a1)
        {
          qword_100B5FBF0 = *(a1 + 5);
LABEL_107:
          --dword_100B5FBE8;
          goto LABEL_110;
        }

        while (v31)
        {
          v32 = v31;
          v31 = *(v31 + 40);
          if (v31 == a1)
          {
            *(v32 + 40) = *(a1 + 5);
            goto LABEL_107;
          }
        }

        if (!sub_10000C240())
        {
          goto LABEL_110;
        }

        sub_10000AF54("OI_HCI_ReleaseConnection: %x", v113, v114, v115, v116, v117, v118, v119, a1);
        v120 = sub_10000C050(0x2Eu);
        if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_110;
        }
      }
    }

    else if (*(a1 + 2) > 6u)
    {
      if (v2 != 7)
      {
        if (v2 == 8)
        {
          v33 = qword_100B5FC20;
          if (qword_100B5FC20)
          {
            while (v33 != a1)
            {
              v33 = *(v33 + 40);
              if (!v33)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
LABEL_39:
            sub_1000D660C();
          }

          sub_1000E1B64(a1);
          v34 = qword_100B5FC20;
          if (qword_100B5FC20 == a1)
          {
            qword_100B5FC20 = *(a1 + 5);
LABEL_105:
            --dword_100B5FC18;
          }

          else
          {
            while (v34)
            {
              v35 = v34;
              v34 = *(v34 + 40);
              if (v34 == a1)
              {
                *(v35 + 40) = *(a1 + 5);
                goto LABEL_105;
              }
            }

            if (sub_10000C240())
            {
              sub_10000AF54("OI_HCI_ReleaseConnection: %x", v105, v106, v107, v108, v109, v110, v111, a1);
              v112 = sub_10000C050(0x2Eu);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                sub_100814974();
              }
            }
          }

          goto LABEL_110;
        }

        goto LABEL_64;
      }

      v59 = qword_100B5FC28;
      if (qword_100B5FC28)
      {
        while (v59 != a1)
        {
          v59 = *(v59 + 40);
          if (!v59)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
LABEL_79:
        sub_1000D660C();
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Releasing LE BIS sync connection 0x%4x", v60, v61, v62, v63, v64, v65, v66, *a1);
        v67 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v130 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v68 = qword_100B5FC28;
      if (qword_100B5FC28 == a1)
      {
        qword_100B5FC28 = *(a1 + 5);
LABEL_101:
        --dword_100B5FC30;
        goto LABEL_110;
      }

      while (v68)
      {
        v69 = v68;
        v68 = *(v68 + 40);
        if (v68 == a1)
        {
          *(v69 + 40) = *(a1 + 5);
          goto LABEL_101;
        }
      }

      if (!sub_10000C240())
      {
        goto LABEL_110;
      }

      sub_10000AF54("OI_HCI_ReleaseConnection: %x", v89, v90, v91, v92, v93, v94, v95, a1);
      v96 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v2 != 5)
      {
        if (v2 == 6)
        {
          v3 = qword_100B5FC10;
          if (qword_100B5FC10)
          {
            while (v3 != a1)
            {
              v3 = *(v3 + 40);
              if (!v3)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
LABEL_9:
            sub_1000D660C();
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Releasing LE BIS connection 0x%4x", v4, v5, v6, v7, v8, v9, v10, *a1);
            v11 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v130 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v12 = qword_100B5FC10;
          if (qword_100B5FC10 == a1)
          {
            qword_100B5FC10 = *(a1 + 5);
LABEL_103:
            --dword_100B5FC08;
            goto LABEL_110;
          }

          while (v12)
          {
            v13 = v12;
            v12 = *(v12 + 40);
            if (v12 == a1)
            {
              *(v13 + 40) = *(a1 + 5);
              goto LABEL_103;
            }
          }

          if (!sub_10000C240())
          {
            goto LABEL_110;
          }

          sub_10000AF54("OI_HCI_ReleaseConnection: %x", v97, v98, v99, v100, v101, v102, v103, a1);
          v104 = sub_10000C050(0x2Eu);
          if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_110;
          }

          goto LABEL_129;
        }

LABEL_64:
        sub_1000D660C();
LABEL_110:
        sub_10000C1E8(a1);
        return;
      }

      v48 = qword_100B5FC00;
      if (qword_100B5FC00)
      {
        while (v48 != a1)
        {
          v48 = *(v48 + 40);
          if (!v48)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
LABEL_68:
        sub_1000D660C();
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Releasing LE CIS connection 0x%4x", v49, v50, v51, v52, v53, v54, v55, *a1);
        v56 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v130 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v57 = qword_100B5FC00;
      if (qword_100B5FC00 == a1)
      {
        qword_100B5FC00 = *(a1 + 5);
LABEL_99:
        --dword_100B5FBF8;
        goto LABEL_110;
      }

      while (v57)
      {
        v58 = v57;
        v57 = *(v57 + 40);
        if (v57 == a1)
        {
          *(v58 + 40) = *(a1 + 5);
          goto LABEL_99;
        }
      }

      if (!sub_10000C240())
      {
        goto LABEL_110;
      }

      sub_10000AF54("OI_HCI_ReleaseConnection: %x", v81, v82, v83, v84, v85, v86, v87, a1);
      v88 = sub_10000C050(0x2Eu);
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }
    }

LABEL_129:
    sub_100814974();
    goto LABEL_110;
  }

  sub_1000D660C();
  if (sub_10000C240())
  {
    sub_10000AF54("connection handle is null, numAclConnections:%d", v14, v15, v16, v17, v18, v19, v20, dword_100B5FBC8);
    v21 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1000E1B64(uint64_t a1)
{
  v2 = *(a1 + 2);
  if (v2 == 8)
  {
    v5 = (a1 + 64);
    v12 = *(a1 + 64);
    if (!v12)
    {
      return;
    }

    sub_10000C1E8(*v12);
    goto LABEL_21;
  }

  if (v2 == 4)
  {
    v7 = *(a1 + 224);
    if (v7)
    {
      sub_10000C1E8(*v7);
      sub_10000C1E8(*(a1 + 224));
      *(a1 + 224) = 0;
    }

    v8 = *(a1 + 256);
    if (v8)
    {
      v5 = (a1 + 256);
      v9 = sub_1000BB054(v8, 0);
      if (v9)
      {
        v10 = v9;
        do
        {
          v13 = 0;
          if (!sub_1000ABC7C(*v10, &v13) && *(sub_1000B12AC(v13) + 96))
          {
            v11 = sub_1000B12AC(v13);
            (*(v11 + 96))(*(v13 + 4), 0, 0, 414);
          }

          sub_10000C1E8(v10);
          v10 = sub_1000BB054(*v5, 0);
        }

        while (v10);
      }

      sub_1000BBDD0(*v5);
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 2))
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      sub_10000C1E8(*v3);
      sub_10000C1E8(*(a1 + 160));
      *(a1 + 160) = 0;
    }

    v6 = *(a1 + 168);
    v5 = (a1 + 168);
    v4 = v6;
    if (v6)
    {
      if (!*v4)
      {
LABEL_22:
        sub_10000C1E8(v4);
LABEL_23:
        *v5 = 0;
        return;
      }

      sub_10000C1E8(*v4);
      **v5 = 0;
LABEL_21:
      v4 = *v5;
      goto LABEL_22;
    }
  }
}

void sub_1000E1CA8(unsigned __int16 *a1)
{
  if (sub_1000B8B5C(a1) || sub_1000ABD24(a1))
  {
    v2 = 1;
  }

  else
  {
    if (!sub_1000C0E08(a1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIExpEvQ_Flush: %x", v21, v22, v23, v24, v25, v26, v27, a1);
        v28 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1008141E8();
        }
      }

      return;
    }

    v2 = 0;
  }

  v3 = word_100B5FC70;
  if (word_100B5FC70)
  {
    v4 = 32 * word_100B5FC70;
    do
    {
      v5 = sub_10001EE38(*(qword_100B5FC80 + v4 - 26))[19];
      if (v5 == 6)
      {
        v7 = qword_100B5FC80;
        if (*(qword_100B5FC80 + v4 - 16) == *a1)
        {
          goto LABEL_18;
        }
      }

      else if (v5 == 7 && v2 != 0)
      {
        v7 = qword_100B5FC80;
        if (*(a1 + 12) == *(qword_100B5FC80 + v4 - 16) && a1[26] == *(qword_100B5FC80 + v4 - 12))
        {
LABEL_18:
          v29 = 0u;
          v30 = 0u;
          v9 = v7 + v4;
          v10 = *(v9 - 16);
          v29 = *(v9 - 32);
          v30 = v10;
          if (sub_10000C240())
          {
            sub_10000AF54("Handle disconnected: %d, expected %2x", v11, v12, v13, v14, v15, v16, v17, *a1);
            v18 = sub_10000C050(0x2Eu);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v20 = sub_10000C0FC();
              *buf = 136446466;
              v32 = v20;
              v33 = 1024;
              v34 = 634;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_1000224D4(v3 - 1);
          if (BYTE8(v29) > 0x2Cu || ((1 << SBYTE8(v29)) & 0x100000100028) == 0 && (BYTE8(v29) != 15 || WORD3(v29) > 0x2Au || ((1 << SBYTE6(v29)) & 0x60030000370) == 0))
          {
            sub_100256FE0(634, &v29);
          }
        }
      }

      v4 -= 32;
    }

    while (v3-- > 1);
  }
}

void sub_1000E1F34(uint64_t a1)
{
  v2 = qword_100B5FBD0;
  if (qword_100B5FBD0 == a1)
  {
    qword_100B5FBD0 = *(a1 + 40);
LABEL_6:
    --dword_100B5FBC8;
  }

  else
  {
    while (v2)
    {
      v3 = v2;
      v2 = *(v2 + 40);
      if (v2 == a1)
      {
        *(v3 + 40) = *(a1 + 40);
        goto LABEL_6;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("RemoveAclHandleFromList: invalid handle %x", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814974();
      }
    }
  }
}

uint64_t sub_1000E1FE8(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (*(v2 + 54) == 7 || *(v2 + 48) != *a1 || *(v2 + 52) != *(a1 + 4))
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return v2;
    }
  }

  return v1;
}

uint64_t sub_1000E2040(uint64_t a1)
{
  for (i = qword_100B5FBE0; i; i = *(i + 40))
  {
    v3 = *(i + 48);
    if (v3)
    {
      if (*(v3 + 54) != 7)
      {
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        if (v4 == *a1 && v5 == *(a1 + 4))
        {
          return i;
        }
      }
    }

    else
    {
      sub_1000D660C();
    }
  }

  return i;
}

uint64_t sub_1000E20B0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 884);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E20F8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 849);
  sub_1000088CC(v4);
  return v2;
}

BOOL sub_1000E2140(uint64_t a1, int a2)
{
  if (*(a1 + 1132) != 76)
  {
    goto LABEL_25;
  }

  v2 = *(a1 + 1136);
  v3 = v2 - 2;
  if (v2 - 8194 > 0x2D)
  {
    goto LABEL_25;
  }

  if (((1 << v3) & 0x200020033F00) != 0)
  {
LABEL_4:
    if (a2 > 0x25)
    {
      goto LABEL_27;
    }

    if (((1 << a2) & 0x3800C01000) != 0)
    {
      return 1;
    }

    if (a2 == 1)
    {
      if (v2 >> 1 == 4103)
      {
        return 1;
      }

      goto LABEL_27;
    }

    if (a2 != 32)
    {
LABEL_27:
      if (*(a1 + 1125) == 1)
      {
        v6 = 0;
        switch(a2)
        {
          case 0:
            v8 = *(a1 + 1144);
            goto LABEL_79;
          case 1:
            v12 = *(a1 + 1144);
            goto LABEL_77;
          case 2:
            v10 = *(a1 + 1144);
            goto LABEL_62;
          case 3:
            v11 = *(a1 + 1144);
            goto LABEL_66;
          case 4:
            v13 = *(a1 + 1144);
            goto LABEL_88;
          case 5:
          case 6:
            v7 = *(a1 + 1144);
            goto LABEL_83;
          case 7:
            v14 = *(a1 + 1144);
            goto LABEL_86;
          case 8:
            v8 = *(a1 + 1145);
            goto LABEL_79;
          case 9:
            v12 = *(a1 + 1145);
            goto LABEL_77;
          case 10:
            v10 = *(a1 + 1145);
            goto LABEL_62;
          case 11:
            v11 = *(a1 + 1145);
            goto LABEL_66;
          case 12:
            v13 = *(a1 + 1145);
            goto LABEL_88;
          case 13:
            v7 = *(a1 + 1145);
            goto LABEL_83;
          case 14:
            v9 = *(a1 + 1145);
            goto LABEL_81;
          case 15:
            v14 = *(a1 + 1145);
            goto LABEL_86;
          case 16:
            v8 = *(a1 + 1146);
            goto LABEL_79;
          case 17:
            v12 = *(a1 + 1146);
            goto LABEL_77;
          case 19:
            v11 = *(a1 + 1146);
            goto LABEL_66;
          case 20:
            v13 = *(a1 + 1146);
            goto LABEL_88;
          case 21:
            v7 = *(a1 + 1146);
            goto LABEL_83;
          case 22:
            v9 = *(a1 + 1146);
            goto LABEL_81;
          case 23:
            v14 = *(a1 + 1146);
            goto LABEL_86;
          case 24:
            v8 = *(a1 + 1147);
            goto LABEL_79;
          case 25:
            v12 = *(a1 + 1147);
            goto LABEL_77;
          case 26:
            v10 = *(a1 + 1147);
            goto LABEL_62;
          case 27:
            v11 = *(a1 + 1147);
            goto LABEL_66;
          case 28:
            v13 = *(a1 + 1147);
            goto LABEL_88;
          case 29:
            v7 = *(a1 + 1147);
            goto LABEL_83;
          case 30:
            v9 = *(a1 + 1147);
            goto LABEL_81;
          case 31:
            if (*(a1 + 1144) >= 0)
            {
              v6 = 1;
            }

            else
            {
              v6 = 2;
            }

            break;
          case 33:
            v12 = *(a1 + 1156);
            goto LABEL_77;
          case 34:
            v10 = *(a1 + 1156);
            goto LABEL_62;
          case 35:
            v7 = *(a1 + 1156);
            goto LABEL_83;
          case 36:
            v9 = *(a1 + 1156);
            goto LABEL_81;
          case 37:
            v14 = *(a1 + 1156);
LABEL_86:
            v15 = (v14 & 0x80) == 0;
            goto LABEL_89;
          case 38:
            v8 = *(a1 + 1157);
            goto LABEL_79;
          case 39:
            v12 = *(a1 + 1157);
            goto LABEL_77;
          case 40:
            v10 = *(a1 + 1157);
            goto LABEL_62;
          case 41:
            v11 = *(a1 + 1157);
            goto LABEL_66;
          case 42:
            v13 = *(a1 + 1157);
            goto LABEL_88;
          case 43:
            v7 = *(a1 + 1157);
            goto LABEL_83;
          case 44:
            v9 = *(a1 + 1157);
            goto LABEL_81;
          case 45:
            v8 = *(a1 + 1158);
LABEL_79:
            v15 = (v8 & 1) == 0;
            goto LABEL_89;
          case 46:
            v12 = *(a1 + 1158);
LABEL_77:
            v15 = (v12 & 2) == 0;
            goto LABEL_89;
          case 47:
            v10 = *(a1 + 1158);
LABEL_62:
            v15 = (v10 & 4) == 0;
            goto LABEL_89;
          case 48:
            v11 = *(a1 + 1158);
LABEL_66:
            v15 = (v11 & 8) == 0;
            goto LABEL_89;
          case 49:
            v13 = *(a1 + 1158);
LABEL_88:
            v15 = (v13 & 0x10) == 0;
            goto LABEL_89;
          case 50:
            v7 = *(a1 + 1158);
LABEL_83:
            v15 = (v7 & 0x20) == 0;
            goto LABEL_89;
          case 51:
            v9 = *(a1 + 1158);
LABEL_81:
            v15 = (v9 & 0x40) == 0;
LABEL_89:
            if (v15)
            {
              v6 = 1;
            }

            else
            {
              v6 = 2;
            }

            break;
          default:
            break;
        }
      }

      else
      {
        v6 = 0;
      }

      return v6 == 2;
    }

    return *(a1 + 1156) & 1;
  }

  if (((1 << v3) & 0x409B) == 0)
  {
LABEL_25:
    if (a2 != 32)
    {
      goto LABEL_27;
    }

    return *(a1 + 1156) & 1;
  }

  v4 = 1;
  if (a2 > 34)
  {
    if ((a2 - 35) < 3)
    {
      return v4;
    }

LABEL_17:
    if (v2 - 8202 <= 0x25 && ((1 << (v2 - 10)) & 0x200020033FLL) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (a2 == 12)
  {
    return v4;
  }

  if (a2 == 13)
  {
    v4 = v2 - 8201;
    if (v4 <= 0x26)
    {
      if (((1 << (v2 - 9)) & 0x400040067ELL) != 0)
      {
        goto LABEL_4;
      }

      if (v2 == 8201)
      {
        return v4;
      }
    }

    goto LABEL_25;
  }

  if (a2 != 25)
  {
    goto LABEL_17;
  }

  return v2 == 8194;
}

uint64_t sub_1000E2570(uint64_t a1, uint64_t a2)
{
  result = sub_1000E25D8();
  if (result)
  {
    if (qword_100B512E8 != -1)
    {
      sub_100841BEC();
    }

    v4 = off_100B512E0;

    return sub_1006E7D5C(v4, a2);
  }

  return result;
}

uint64_t sub_1000E25D8()
{
  v0 = sub_10000C798();
  if ((*(*v0 + 352))(v0))
  {
    return 1;
  }

  v1 = sub_10000C798();
  if ((*(*v1 + 456))(v1))
  {
    return 1;
  }

  v2 = sub_10000C798();
  if ((*(*v2 + 360))(v2))
  {
    v3 = sub_10000C798();
    if (!(*(*v3 + 432))(v3))
    {
      return 1;
    }
  }

  v4 = sub_10000C798();
  if ((*(*v4 + 368))(v4))
  {
    return 1;
  }

  v6 = *(*sub_10000C798() + 416);

  return v6();
}

uint64_t sub_1000E2738()
{
  if (qword_100B6D7D0 != -1)
  {
    sub_10082C178();
  }

  return qword_100B6D7C8;
}

uint64_t sub_1000E2770(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v21 = *(a2 + 128);
  v22 = *(a2 + 132);
  __src[0] = 0;
  __src[1] = 0;
  if (a3 > 4)
  {
    return 3;
  }

  sub_1000BE6F8(&v21, &__p);
  v9 = sub_10000EEB8(a1 + 8, &__p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v9)
  {
    return 150;
  }

  v19 = 0;
  v20 = 0;
  sub_1000AFFEC(*(v9 + 64), dword_1008A8138[a3], &v19);
  if (sub_10000D26C(&v19))
  {
    v10 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    sub_1000E5A58(a2, buf);
    v11 = v24 >= 0 ? buf : *buf;
    LODWORD(__p) = 67109634;
    HIDWORD(__p) = a3;
    v26 = 2082;
    v27 = v11;
    v28 = 1024;
    v29 = 150;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Call to retrieve key chain magic key data of type %d for device %{public}s failed with result %d", &__p, 0x18u);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v12 = *buf;
    goto LABEL_26;
  }

  v13 = sub_10000C5F8(&v19);
  if (sub_10000C5E0(&v19))
  {
    if (a3 == 4)
    {
      v14 = 5;
    }

    else
    {
      v14 = 16;
    }

    if (sub_1000E2AB8(v13, __src, v14))
    {
      memcpy(a4, __src, v14);
      v4 = 0;
    }

    else
    {
      v18 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, &__p);
        sub_10082E680(&__p, v13, buf, v18);
      }

      v4 = 151;
    }

    goto LABEL_28;
  }

  v15 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v16 = v29 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "magic key was empty for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v29) < 0)
    {
      v12 = __p;
LABEL_26:
      operator delete(v12);
    }
  }

LABEL_27:
  v4 = 150;
LABEL_28:
  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }

  return v4;
}

void sub_1000E2A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E2AB8(uint64_t a1, _BYTE *a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = (a1 - 1);
    do
    {
      v6 = *++v5;
    }

    while (v6 == 32);
    if (a3 < 1)
    {
      return 1;
    }

    v7 = a3;
    while (1)
    {
      v8 = *v5;
      v9 = v8 - 48;
      if ((v8 - 48) >= 0xA)
      {
        if ((v8 - 97) > 5)
        {
          if ((v8 - 65) > 5)
          {
            return 0;
          }

          v9 = v8 - 55;
        }

        else
        {
          v9 = v8 - 87;
        }
      }

      v10 = v5[1];
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 97) > 5)
        {
          if ((v10 - 65) > 5)
          {
            return 0;
          }

          v11 = v10 - 55;
        }

        else
        {
          v11 = v10 - 87;
        }
      }

      *a2++ = v11 + 16 * v9;
      v12 = v5[2];
      v5 += 2;
      if (v12 == 45)
      {
        ++v5;
      }

      if (!--v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000E2B78(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1047);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E2BC0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 850);
  sub_1000088CC(v4);
  return v2;
}

BOOL sub_1000E2C2C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  memset(&v5, 0, sizeof(v5));
  sub_1000E2D2C(a1, 7u, &v5);
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  if (size >= 6)
  {
    v3 = !std::string::compare(&v5, size - 3, 3uLL, "dev") || std::string::compare(&v5, size - 5, 5uLL, "insec") == 0;
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  sub_1000088CC(v6);
  return v3;
}

void sub_1000E2D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E2D2C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  v6 = *(a1 + 1232);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - v6) >> 3);
  if (v7 < 0xB || v7 <= a2)
  {
    sub_100007E30(a3, "");
    return sub_1000088CC(v13);
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v8 = (v6 + 24 * a2);
  if (*(v8 + 23) < 0)
  {
    sub_100008904(__p, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v12 = *(v8 + 2);
    *__p = v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    if (__p[1] > 1)
    {
      sub_100008904(a3, __p[0], __p[1]);
      goto LABEL_14;
    }
  }

  else if (HIBYTE(v12) >= 2u)
  {
    *a3 = *__p;
    *(a3 + 16) = v12;
    goto LABEL_14;
  }

  sub_100007E30(a3, "");
LABEL_14:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1000088CC(v13);
}

uint64_t sub_1000E2E8C(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = *(off_100B508E8 + 304);
  v3 = *(a1 + 1156);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a1, __p);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = "No";
    if (v2)
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    *buf = 136446722;
    v12 = v5;
    v13 = 2080;
    if (v3)
    {
      v6 = "Yes";
    }

    v14 = v7;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Smart Route Support: Device: %{public}s, SRDaemon Support: %s, Device Support: %s", buf, 0x20u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2 & v3;
}

BOOL sub_1000E2FE4(uint64_t a1, _WORD *a2, _BYTE *a3, _WORD *a4)
{
  v10 = 0;
  sub_1000216B4(&v10);
  v8 = sub_1000E3068(a1 + 128, a2, a3, a4) == 0;
  sub_10002249C(&v10);
  return v8;
}

uint64_t sub_1000E3068(uint64_t a1, _WORD *a2, _BYTE *a3, _WORD *a4)
{
  result = 101;
  if (a1 && a2 && a3 && a4)
  {
    v9 = sub_1000E1FE8(a1);
    if (v9)
    {
      v10 = v9;
      if (*v9 == -1)
      {
        return 103;
      }

      else
      {
        result = 0;
        *a2 = v10[10];
        *a3 = *(v10 + 24);
        *a4 = v10[11];
      }
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_1000E30FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 392);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1000E3168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1000E3188(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 800);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E31D0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 576);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E3218(uint64_t a1, unsigned int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 992);
  if (a2 >= ((*(a1 + 1000) - v4) >> 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 4 * a2);
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1000E3284(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 816);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E32CC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 820);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E3314(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 796);
  sub_1000088CC(v4);
  return v2;
}

void sub_1000E335C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = &qword_100BC7B60;
  v7 = 5;
  do
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    v10 = *(v6 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v6[1];
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? a3 : *a3;
      v13 = v11 >= 0 ? v6 : *v6;
      if (!memcmp(v12, v13, v9))
      {
        sub_100007E30(__p, "LEPhyDenylist");
        v14 = sub_10004EB40(a1, v5, __p);
        v15 = v14;
        if (v21 < 0)
        {
          operator delete(__p[0]);
          if (v15)
          {
            goto LABEL_25;
          }
        }

        else if (v14)
        {
          goto LABEL_25;
        }

        sub_100007E30(v18, "LEPhyDenylist");
        sub_10078787C(a1, v5, v18);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        v16 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v17 = a3;
          if (*(a3 + 23) < 0)
          {
            v17 = *a3;
          }

          *buf = 136315138;
          v23 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LEPhyDenylist: set tag for %s", buf, 0xCu);
        }
      }
    }

LABEL_25:
    v6 += 4;
    --v7;
  }

  while (v7);
}

void sub_1000E3528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E356C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 804);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E35B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 892);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E35FC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1568);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E3644(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000E36A0();
  (*(*v4 + 64))(v4, a2);
  *(a1 + 1492) = *a2;
  return 0;
}

uint64_t sub_1000E36A0()
{
  if (qword_100B6D890 != -1)
  {
    sub_10082C2B0();
  }

  return qword_100B6D888;
}

void sub_1000E36D8(uint64_t a1, _BYTE *a2)
{
  v3 = +[CloudPairing sharedInstance];
  *a2 = [v3 getAccessibilityHeadtrackingEnabled];
}

void sub_1000E3788(uint64_t a1, void *a2, unsigned __int8 *a3, int *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1 + 1296) == 1)
  {
    *a3 = 0;
    *a4 = 1;
    sub_100639570(a1, v7, a3, a4);
  }

  else
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100853C50();
      v7 = v8;
    }

    sub_1000E385C(off_100B50A98, v7, a3, a4);
  }

  sub_1000E6C1C(a1, *a3, *a4);
}

void sub_1000E385C(uint64_t a1, void *a2, _BYTE *a3, int *a4)
{
  v7 = a2;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848C78();
    }

    *a3 = 1;
    *a4 = 1;
  }

  v8 = *(a1 + 496);
  if (!v8)
  {
    v9 = sub_1005A6278(a1);
    v10 = *(a1 + 496);
    *(a1 + 496) = v9;

    v8 = *(a1 + 496);
  }

  v11 = [v8 objectForKey:v7];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:@"kCBMsgArgParamSpatialMode"];
    v14 = v13;
    if (v13)
    {
      *a4 = [v13 unsignedIntValue];
      v15 = [v12 objectForKey:@"kCBMsgArgParamSpatialHeadTracking"];
      v16 = v15;
      if (v15)
      {
        *a3 = [v15 BOOLValue];
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100848CB4();
        }

        *a3 = 1;
        *a4 = 1;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848CF0();
      }

      if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
      {
        v18 = 1;
        *a3 = 1;
      }

      else
      {
        *a3 = 0;
        *a3 = _os_feature_enabled_impl();
        v18 = 2;
      }

      *a4 = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3B44();
    }

    if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
    {
      v17 = 1;
      *a3 = 1;
    }

    else
    {
      *a3 = 0;
      *a3 = _os_feature_enabled_impl();
      v17 = 2;
    }

    *a4 = v17;
  }

  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *a4;
    v21 = *a3;
    v22 = 138412802;
    v23 = v7;
    v24 = 1024;
    v25 = v20;
    v26 = 1024;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "StackManager Get Spatial Mode with Bundle ID: %@=>%u,%u", &v22, 0x18u);
  }
}

void sub_1000E3B44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E3B80(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

BOOL sub_1000E3BD0(uint64_t a1)
{
  sub_100007E30(__p, "_HID_DEVICE_");
  v2 = sub_1000463C8(a1 + 176, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 184 != v2;
}

void sub_1000E3C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E3C50(uint64_t a1)
{
  if (sub_1000E3BD0(a1))
  {
    v2 = *(a1 + 610);
  }

  else
  {
    v3 = qword_100BCE900;
    v4 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    v2 = 0;
    if (v4)
    {
      v5 = *a1;
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device %@ does not have _HID_SERVICE_", &v7, 0xCu);
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1000E3D14(uint64_t a1)
{
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

BOOL sub_1000E3DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_1000E3E48(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

BOOL sub_1000E3E48(uint64_t a1)
{
  sub_100007E30(__p, "_LE_AUDIO_DEVICE_");
  v2 = sub_1000463C8(a1 + 176, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 184 != v2;
}

void sub_1000E3EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000E3EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  v4 = *(a1 + 344);
  if (v4 == *(a1 + 352))
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v5 = *(*v4 + 8);
      v6 = [v5 UUIDString];
      v7 = [v3 UUIDString];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        break;
      }

      v4 += 8;
    }

    while (v4 != *(a1 + 352));
  }

  sub_1000088CC(v10);

  return v8;
}

void *sub_1000E3FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[38])
  {
    return [result _stackDeviceMonitorDeviceFound:a2];
  }

  return result;
}

void sub_1000E400C(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 2082;
  *(a3 + 10) = v4;
}

void sub_1000E4044(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_1000E405C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008327EC();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_1000E4250(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgAddressString", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

unint64_t sub_1000E41C0(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 48);
  if (a2)
  {
    v6 = *(a1 + 120);
    v5 = a1 + 120;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v5;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v5 && *(v7 + 32) <= a2)
    {
      a2 = *(v7 + 40);
    }

    else
    {
LABEL_10:
      a2 = 0;
    }
  }

  sub_1000088CC(v12);
  return a2;
}

uint64_t sub_1000E4250(unint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v6 = sub_1000E41C0(off_100B508E8, a1);
  *uu = 0;
  v17 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10083FB40();
  }

  sub_1000E61D4(off_100B508C8, a1, uu);
  memset(&__p, 0, sizeof(__p));
  if (v6)
  {
    sub_1000BE6F8((v6 + 128), &v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v14;
  }

  else
  {
    if (uuid_is_null(uu))
    {
      v8 = 7;
      goto LABEL_18;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083FB54();
    }

    v10 = off_100B508C8;
    v11 = sub_10004DF60(uu);
    sub_100046458(v10, v11, 0);
    v12 = sub_100063D0C();
    v13 = v12;
    std::string::assign(&__p, [v12 UTF8String]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ + 1 <= a3)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_15:
    v8 = 5;
    goto LABEL_18;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) + 1 > a3)
  {
    goto LABEL_15;
  }

  p_p = &__p;
LABEL_17:
  strlcpy(a2, p_p, a3);
  v8 = 0;
LABEL_18:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1000E442C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E446C(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v4 = sub_1000E41C0(off_100B508E8, a1);
    *uu = 0;
    v9 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10083FB40();
    }

    sub_1000E61D4(off_100B508C8, a1, uu);
    if (v4)
    {
      *a2 = sub_1000DEB14(v4);
      v5 = sub_1000E45E8(v4);
      switch(v5)
      {
        case 4:
          v6 = 19;
          break;
        case 2:
          v6 = 20;
          break;
        case 1:
          v6 = 22;
          break;
        default:
          return 0;
      }
    }

    else
    {
      if (uuid_is_null(uu))
      {
        return 7;
      }

      v6 = 48;
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_1000E45E8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1484);
  sub_1000088CC(v4);
  return v2;
}

void sub_1000E4630(uint64_t a1)
{
  if (BYTE14(xmmword_100BCE158[0]) != 1)
  {
    v2 = 0;
    v3 = 0;
    if (xmmword_100BCE158[0])
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (WORD3(xmmword_100BCE158[0]))
  {
    v2 = WORD5(xmmword_100BCE158[0]) > 2u;
  }

  else
  {
    v2 = WORD5(xmmword_100BCE158[0]) != 0;
  }

  v3 = v2;
  if ((xmmword_100BCE158[0] & 1) == 0)
  {
LABEL_8:
    if (word_100BCE182)
    {
      v3 = byte_100BCE186;
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_11:
  v4 = byte_100BCE1A6;
  if (*(a1 + 16))
  {
    sub_1000BB6BC(a1, *(a1 + 16));
  }

  v5 = *(a1 + 2);
  if (v5 <= 3)
  {
    if (*(a1 + 2))
    {
      if (v5 == 1)
      {
        if (*(a1 + 16))
        {
          sub_100249EA8(a1, *(a1 + 16));
        }

        goto LABEL_44;
      }

      goto LABEL_23;
    }

    if (!v2 && BYTE14(xmmword_100BCE158[0]) == 1)
    {
      if (WORD3(xmmword_100BCE158[0]))
      {
        if (WORD5(xmmword_100BCE158[0]) <= 2u)
        {
          goto LABEL_44;
        }
      }

      else if (!WORD5(xmmword_100BCE158[0]))
      {
        goto LABEL_44;
      }

      (*(qword_100BCE0C8 + 16))(0, 1);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (v5 == 4)
  {
    if (v3)
    {
      goto LABEL_44;
    }

    if (LOBYTE(xmmword_100BCE158[0]) == 1)
    {
      if (BYTE14(xmmword_100BCE158[0]) != 1)
      {
        goto LABEL_40;
      }

      v14 = WORD5(xmmword_100BCE158[0]);
      if (WORD3(xmmword_100BCE158[0]))
      {
        if (WORD5(xmmword_100BCE158[0]) > 2u)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (byte_100BCE186 != 1)
      {
        goto LABEL_40;
      }

      v14 = word_100BCE182;
    }

    if (v14)
    {
LABEL_41:
      (*(qword_100BCE0C8 + 16))(0, 3);
      goto LABEL_44;
    }

LABEL_40:
    if (*(a1 + 129) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v5 != 8)
  {
LABEL_23:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown connection type.", v6, v7, v8, v9, v10, v11, v12, v20);
      v13 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100814A68();
      }
    }

    goto LABEL_44;
  }

  if ((v4 & 1) == 0 && byte_100BCE1A6 == 1)
  {
    (*(qword_100BCE0C8 + 16))(0, 5);
  }

LABEL_44:
  if (!sub_1000BBF7C())
  {
    if (word_100B5F8E8)
    {
      sub_1000BB6BC(&xmmword_100B5F8D8, word_100B5F8E8);
    }

    if (word_100B5FA60)
    {
      sub_1000BB6BC(&xmmword_100B5FA50, word_100B5FA60);
    }

    if (LOBYTE(xmmword_100BCE158[0]) != 1 || !sub_1000C0E38())
    {
      v15 = WORD5(xmmword_100BCE158[0]);
      if (WORD5(xmmword_100BCE158[0]) != WORD4(xmmword_100BCE158[0]))
      {
        sub_1000D660C();
        v15 = WORD4(xmmword_100BCE158[0]);
      }

      WORD5(xmmword_100BCE158[0]) = v15;
      BYTE14(xmmword_100BCE158[0]) = 1;
      v16 = v15 > 2;
      v17 = v15 != 0;
      if (WORD3(xmmword_100BCE158[0]))
      {
        v17 = v16;
      }

      byte_100BCE1B9 = v17;
    }

    sub_1000E70E4();
  }

  if (!sub_1000C0E38())
  {
    v21 = 0;
    word_100BCE182 = word_100BCE180;
    byte_100BCE186 = 1;
    if (LOBYTE(xmmword_100BCE158[0]) == 1)
    {
      if (BYTE14(xmmword_100BCE158[0]) == 1)
      {
        v18 = WORD5(xmmword_100BCE158[0]) != 0;
        if (WORD3(xmmword_100BCE158[0]))
        {
          v18 = WORD5(xmmword_100BCE158[0]) > 2u;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = word_100BCE180 != 0;
    }

    byte_100BCE1BA = v18;
    while (sub_1000C08D0(&v21))
    {
      if (*(v21 + 124) == 7)
      {
        *(v21 + 16) = 0;
      }
    }
  }

  if (!sub_1000E6290())
  {
    v19 = word_100BCE1A2;
    if (word_100BCE1A2 != word_100BCE1A0)
    {
      sub_1000D660C();
      v19 = word_100BCE1A0;
    }

    word_100BCE1A2 = v19;
    byte_100BCE1A6 = 1;
    byte_100BCE1B8 = 1;
  }

  if (!sub_1000BBF7C() && !sub_1000C0E38() && !sub_1000E6290())
  {
    if (byte_100B5FCA4 == 1)
    {
      if (WORD1(xmmword_100BCE158[0]))
      {
        sub_1000D660C();
      }
    }

    WORD1(xmmword_100BCE158[0]) = 0;
  }
}

BOOL sub_1000E4A50(uint64_t *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = qword_100B5FC20;
    if (qword_100B5FC20)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C();
      v2 = *a1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FC20;
  }

  v5 = *v4;
  *a1 = v5;
  return v5 != 0;
}

void sub_1000E4AC4(int a1, uint64_t a2, int a3)
{
  v11 = 0;
  v10 = 0;
  if (sub_10023DC00(a2, &v10))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100843C70();
    }
  }

  else
  {
    v5 = (v10 << 40) | (BYTE1(v10) << 32) | (BYTE2(v10) << 24) | (HIBYTE(v10) << 16) | (v11 << 8) | HIBYTE(v11);
    v6 = sub_100017F4C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E4D6C;
    v7[3] = &unk_100AE0860;
    v7[4] = v5;
    v8 = a1;
    v9 = a3;
    sub_10000CA94(v6, v7);
  }
}

void sub_1000E4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000504C8(a1, a3, 0);
  if (v7)
  {
    v8 = v7;
    if (qword_100B50AA0 != -1)
    {
      sub_10084380C();
    }

    v9 = sub_1000DD584(off_100B50A98, a2, 10000);
    if (qword_100B50AA0 != -1)
    {
      sub_10084380C();
    }

    v10 = sub_1000DD584(off_100B50A98, a4, 10000);
    sub_1000DD7C8(v8, v9, v10);
    if (qword_100B50F68 != -1)
    {
      sub_1008437D0();
    }

    if (sub_1000E4DC4(off_100B50F60, v8))
    {
      sub_10054DB9C(v8, 0);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E4F0C;
    v13[3] = &unk_100AFCD08;
    v13[4] = v8;
    v14 = v9;
    v15 = v10;
    sub_1000E4E40(a1 + 240, v13);
    if (sub_10054FD60(v8))
    {
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resetting KeepAudioInHeadphones shouldMitigate value due to aclDisconnected", v12, 2u);
      }

      atomic_store(0, (a1 + 320));
    }
  }
}

void sub_1000E4D6C(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100843998();
  }

  v2 = off_100B508E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);

  sub_1000E4BC8(v2, v4, v3, v5);
}

uint64_t sub_1000E4DC4(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = *(*i + 16) ^ 1;
LABEL_7:
  sub_1000088CC(v7);
  return v5 & 1;
}

void sub_1000E4E40(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

BOOL sub_1000E4F48(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    a1 = sub_1000D660C(0);
  }

  v2 = *v1;
  if (*v1)
  {
    v3 = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (v3 != v2)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_1000D660C(a1);
      v2 = *v1;
    }

    v4 = (v2 + 40);
  }

  else
  {
    v4 = &qword_100B5FBE0;
  }

  v5 = *v4;
  *v1 = v5;
  return v5 != 0;
}

void sub_1000E4FBC(uint64_t a1, uint64_t a2)
{
  if (!sub_1000B8B5C(a1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Connection is invalid", v15, v16, v17, v18, v19, v20, v21, v37);
    v22 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_9:
    sub_10080F604();
    return;
  }

  v5 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v6 = dword_100B6B644 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("!SECMGR_IS_INITIALIZED", v7, v8, v9, v10, v11, v12, v13, v37);
    v14 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_9;
  }

  if (!qword_100B6B648 || !*(qword_100B6B648 + 8))
  {
    sub_1000D660C();
    v5 = dword_100B6B644;
  }

  v38 = *(a1 + 48);
  v39 = *(a1 + 52);
  if (v5 >= 2)
  {
    v23 = v38 == dword_100B6B650 && v39 == word_100B6B654;
    if (v23 && BYTE1(dword_100B6B660) == 1)
    {
      *(&dword_100B6B660 + 1) = 0;
      (*(qword_100B6B648 + 8))();
      v5 = dword_100B6B644;
    }

    if (v5 == 5 && qword_100B6B658 == a1)
    {
      sub_1002FD8A0(a2);
    }

    else if (v5 == 2)
    {
      if (qword_100B6B658 == a1 && DWORD2(xmmword_100B6B668) != 4)
      {
        sub_1002FDA90(a2);
      }
    }

    else if (v5 == 3 && qword_100B6B658 == a1 || v5 == 4 && qword_100B6B658 == a1)
    {
      v4.n128_f64[0] = sub_1002FD3CC(1);
    }
  }

  v24 = word_100B6B6C6;
  if (word_100B6B6C6)
  {
    v25 = qword_100B6B638;
    v26 = qword_100B6B638 + 16;
    v27 = (word_100B6B6C6 - 1);
    do
    {
      v28 = 0;
      do
      {
        v29 = v28;
        v30 = *(v25 + 16 * v28);
      }

      while (v30 != a1 && ++v28 < v24);
      if (v30 != a1)
      {
        break;
      }

      word_100B6B6C6 = --v24;
      if (v28 < v24)
      {
        v32 = (v26 + 16 * v28);
        if (v30 == a1)
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        v34 = v27 - v29 - (v33 & 1);
        do
        {
          v4 = *v32;
          v32[-1] = *v32;
          ++v32;
          --v34;
        }

        while (v34);
      }

      --v27;
    }

    while (v24);
  }

  if (v38 == dword_100BCE210 && v39 == word_100BCE214)
  {
    qword_100BCE228 = 0;
    v4 = 0uLL;
    *&qword_100BCE208 = 0u;
    xmmword_100BCE218 = 0u;
  }

  if (qword_100B6B658 == a1)
  {
    *(qword_100B6B658 + 329) = 0;
    dword_100B6B6C0 = 0;
    qword_100B6B658 = 0;
  }

  v36 = *(qword_100B6B648 + 96);
  if (v36)
  {
    v36(&v38, v4);
  }
}

void sub_1000E5294(int *a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  v3 = *a1;
  v4 = *(a1 + 2);
  v2 = sub_1000E6554(off_100B508E8, &v3, 1);
  if (qword_100B50F88 != -1)
  {
    sub_100863FC8();
  }

  sub_1000E5328(off_100B50F80, v2, 156);
}

void sub_1000E5328(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 272) == 1)
  {
    v8 = v3;
    v9 = v4;
    v5 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E6960;
    v6[3] = &unk_100ADF940;
    v6[4] = a2;
    v7 = a3;
    sub_10000CA94(v5, v6);
  }
}

void sub_1000E53AC(uint64_t a1)
{
  if (sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%: disconnected with reason %!", v2, v3, v4, v5, v6, v7, v8, a1 + 48);
      v9 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v55 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (!word_100B6B5A8)
    {
LABEL_14:
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find remote SDP record for handle: %p", v22, v23, v24, v25, v26, v27, v28, a1);
        v29 = sub_10000C050(0x36u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    if (*qword_100B6B5B0 != a1)
    {
      v10 = 0;
      v11 = (qword_100B6B5B0 + 32);
      while (word_100B6B5A8 - 1 != v10)
      {
        v12 = *v11;
        v11 += 4;
        ++v10;
        if (v12 == a1)
        {
          v13 = v10 < word_100B6B5A8;
          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }

    v10 = 0;
    v13 = 1;
LABEL_18:
    if (sub_10000C240())
    {
      sub_10000AF54("Deleting remote SDP record at entry %d", v30, v31, v32, v33, v34, v35, v36, v10);
      v37 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = sub_10000C0FC();
        *buf = 136446210;
        v55 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v39 = qword_100B6B5B0;
    v40 = qword_100B6B5B0 + 32 * v10;
    *(v40 + 26) = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = 0;
    v41 = --word_100B6B5A8;
    if (word_100B6B5A8 > v10)
    {
      v42 = (v39 + 32 * v10 + 32);
      do
      {
        v43 = v42[1];
        *(v42 - 2) = *v42;
        *(v42 - 1) = v43;
        LODWORD(v10) = v10 + 1;
        v42 += 2;
      }

      while (v10 < v41);
    }

    if (v13 && sub_10000C240())
    {
      sub_10000AF54("Deleted Remote SDP Record for %:", v44, v45, v46, v47, v48, v49, v50, a1 + 48);
      v51 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = sub_10000C0FC();
        *buf = 136446210;
        v55 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Connection is invalid", v14, v15, v16, v17, v18, v19, v20, v53);
    v21 = sub_10000C050(0x36u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080FEE0();
    }
  }
}

uint64_t sub_1000E56AC(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_1000E7128(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1000E5700(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_1000E7128(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100480394(a1, v3);
  return 1;
}

void sub_1000E5748(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000E59A0();
  if (a2 && v6 && (sub_10055038C(a2) & 1) == 0)
  {
    v30 = 0;
    v31 = 0;
    sub_1000C2364(a2, &v31 + 1, &v31, &v30 + 1, &v30);
    v7 = sub_1000E2140(a2, 12);
    sub_1000BE6F8((a2 + 128), __p);
    if ((SBYTE7(v29) & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    if (SBYTE7(v29) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000C23E0(a2, __p);
    if ((SBYTE7(v29) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithCString:v10 encoding:4];
    if (SBYTE7(v29) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = sub_1000DEB14(a2);
    v13 = sub_1000DED98(v12, v12);
    *__p = 0u;
    v29 = 0u;
    sub_1000DEB5C(a2, __p);
    v14 = sub_100066098();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E5F14;
    v17[3] = &unk_100AF69D8;
    v20 = a1;
    v15 = v9;
    v18 = v15;
    v16 = v11;
    v19 = v16;
    v26 = a3;
    v21 = HIDWORD(v30);
    v22 = v13;
    v23 = *__p;
    v24 = v29;
    v27 = v7;
    v25 = v31;
    sub_10000CA94(v14, v17);
  }
}

uint64_t sub_1000E59A0()
{
  if (qword_100B6F6F0 != -1)
  {
    sub_100850328();
  }

  return byte_100B6F6F8;
}

void sub_1000E59D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DEFA0;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_1000E5A58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *(a1 + 128);
  v33 = *(a1 + 132);
  v4 = sub_10000E92C();
  if ((*(*v4 + 160))(v4))
  {
    memset(&v31, 0, sizeof(v31));
    sub_1000C23E0(a1, &v31);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_1000DEEA4(a1, &v28);
    v27[0] = 0;
    v27[1] = 0;
    sub_100007F88(v27, a1);
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      std::string::operator=(&v31, (a1 + 200));
    }

    sub_10000801C(v27);
    sub_1000BE6F8(&v32, &v21);
    v6 = std::string::append(&v21, " ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v8 = &v28;
    }

    else
    {
      v8 = v28;
    }

    if (v30 >= 0)
    {
      v9 = HIBYTE(v30);
    }

    else
    {
      v9 = v29;
    }

    v10 = std::string::append(&v22, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v23, "");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v24, " - ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v31;
    }

    else
    {
      v16 = v31.__r_.__value_.__r.__words[0];
    }

    v17 = std::string::append(&v25, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v26, "");
    v20 = *&v19->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v19->__r_.__value_.__l + 2);
    *a2 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    sub_1000088CC(v27);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_1000BE6F8(&v32, a2);
  }
}

void sub_1000E5CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_1000088CC(v42 - 104);
  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
  }

  if (*(v42 - 41) < 0)
  {
    operator delete(*(v42 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E5DB8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  if (sub_1000E2E8C(a1))
  {
    v2 = *(a1 + 808);
  }

  else
  {
    v2 = 2;
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1000E5E28(_DWORD *a1, _WORD *a2, _BYTE *a3, _WORD *a4)
{
  result = 101;
  if (a1 && a2 && a3 && a4)
  {
    v9 = sub_1000E5EA8(a1);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *a2 = *(v10 + 20);
      *a3 = *(v10 + 24);
      *a4 = *(v10 + 22);
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_1000E5EA8(_DWORD *a1)
{
  for (result = qword_100B5FBF0; result; result = *(result + 40))
  {
    if (*(result + 124) != 7)
    {
      if (*(result + 55) == 1 && *(result + 56) == *a1 && *(result + 59) == *(a1 + 3))
      {
        break;
      }

      if (*(result + 48) == *a1 && *(result + 51) == *(a1 + 3))
      {
        break;
      }
    }
  }

  return result;
}

void sub_1000E5F14(uint64_t a1)
{
  v2 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v20 = *(v2 + 728);
  v3 = *(v2 + 736);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = [v20 source];
    v5 = *(v2 + 736);
    *(v2 + 736) = v4;
  }

  v19 = v3;
  v6 = [BMDeviceBluetooth alloc];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v18 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v17 = [NSNumber numberWithBool:*(a1 + 100)];
  v9 = *(a1 + 60);
  v16 = [NSNumber numberWithInt:*(a1 + 88)];
  v10 = [NSNumber numberWithInt:*(a1 + 80)];
  v11 = [NSNumber numberWithInt:*(a1 + 72)];
  v12 = [NSNumber numberWithBool:*(a1 + 101)];
  v13 = [NSNumber numberWithBool:1];
  v14 = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  v15 = [v6 initWithAddress:v8 name:v7 productID:v18 starting:v17 deviceType:v9 batteryLevelHeadphoneCase:v16 batteryLevelHeadphoneRight:v10 batteryLevelHeadphoneLeft:v11 appleAudioDevice:v12 userWearing:v13 vendorID:v14];

  v3 = v19;
  [v19 sendEvent:v15];

LABEL_8:
}

uint64_t sub_1000E61D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  *a3 = 0;
  *(a3 + 8) = 0;
  uuid_clear(a3);
  if (a2)
  {
    v8 = *(a1 + 240);
    v7 = a1 + 240;
    v6 = v8;
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= a2;
        v12 = v10 < a2;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v7 && *(v9 + 32) <= a2)
      {
        uuid_copy(a3, (v9 + 40));
      }
    }
  }

  return sub_1000088CC(v14);
}

uint64_t sub_1000E6290()
{
  v2 = 0;
  v0 = 0;
  while (sub_1000E4A50(&v2))
  {
    if (*(v2 + 60) == 7)
    {
      v0 = v0;
    }

    else
    {
      v0 = (v0 + 1);
    }
  }

  return v0;
}

uint64_t sub_1000E62E8(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 48;
  v4 = *(a1 + 48);
  v33 = 0;
  v6 = 0;
  if (dword_100B5F82D == v4 && word_100B5F831 == *(a1 + 52))
  {
    byte_100B5F833 = 0;
    if (HIBYTE(word_100B5F829))
    {
      v8 = 1;
    }

    else
    {
      v8 = word_100B5F829 == 1;
    }

    if (v8)
    {
      v9 = sub_100255ABC(&dword_100B5F82D);
      sub_100248AE0(v9, v5, 0, a2);
      v6 = HIBYTE(word_100B5F829) == 1;
    }

    word_100B5F829 = 0;
  }

  if (sub_1000B8B5C(a1))
  {
    v10 = *(a1 + 80);
  }

  else
  {
    v10 = 0;
  }

  v11 = qword_100B5F808;
  result = sub_1000E4F48(&v33);
  if (result)
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    v32 = 136446210;
    do
    {
      if (*(v33 + 6) == a1)
      {
        if (v13)
        {
          (*(v13 + 8))(0);
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Disconnecting SCO riding on top of ACL", v14, v15, v16, v17, v18, v19, v20, v32);
          v21 = sub_10000C050(0x3Eu);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_10000C0FC();
            *buf = v32;
            v35 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1002592C0();
        sub_1000D2538(a1, 2);
        sub_1000E12C4(v33);
        v33 = 0;
      }

      result = sub_1000E4F48(&v33);
    }

    while ((result & 1) != 0);
  }

  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received disconnect while OB SCO connection was in progress", v23, v24, v25, v26, v27, v28, v29, v32);
      v30 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = sub_10000C0FC();
        *buf = 136446210;
        v35 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_1000D2538(a1, 2);
  }

  return result;
}

uint64_t sub_1000E6554(uint64_t a1, uint64_t a2, int a3)
{
  if (!*a2)
  {
    v6 = 1;
    while (v6 != 6)
    {
      if (*(a2 + v6++))
      {
        if ((v6 - 2) < 5)
        {
          goto LABEL_8;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100843884();
    }
  }

LABEL_8:
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 168);
  v8 = *(a1 + 144);
  v9 = *(a1 + 152);
  if (v8 == v9)
  {
LABEL_14:
    if (a3)
    {
      operator new();
    }

    v10 = 0;
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if (*(*v8 + 128) == *a2 && *(*v8 + 132) == *(a2 + 4))
      {
        break;
      }

      if (++v8 == v9)
      {
        goto LABEL_14;
      }
    }
  }

  sub_1000088CC(v13);
  return v10;
}

uint64_t sub_1000E66AC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v22 = 0uLL;
  v23 = 0;
  sub_1000DE474(&v22);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 280);
  if (sub_1000E69B8(a1 + 344, a2))
  {
    sub_10000801C(v12);
    v6 = qword_100BCE940;
    v7 = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (a2)
      {
        sub_1000E5A58(a2, v11);
        sub_1008639C4();
      }

      else
      {
        sub_100863A18(buf, v6);
      }
    }

    sub_1006DFF78(v7, a2);
    v8 = *(a1 + 112);
    if (!v8 || sub_1006D8C30(v8, a2, &v22) || sub_1006E5FAC(&v22) > 3)
    {
      v21 = 0;
      v20 = 0u;
      memset(v19, 0, sizeof(v19));
      v17 = 0u;
      *__p = 0u;
      v15 = 0u;
      *v16 = 0u;
      *buf = 0u;
      *v14 = 0u;
      sub_1000DE474(&buf[1]);
      BYTE2(v14[0]) = 0;
      BYTE4(v14[0]) = 0;
      BYTE2(v16[0]) = 0;
      BYTE4(v16[0]) = 0;
      HIDWORD(v19[2]) = 0;
      v15 = 0uLL;
      v14[1] = 0;
      LOBYTE(v16[0]) = 0;
      v17 = 0uLL;
      v16[1] = 0;
      LOBYTE(__p[0]) = 0;
      v19[0] = 0;
      v19[1] = 0;
      __p[1] = 0;
      *(&v19[1] + 7) = 0;
      LOBYTE(v19[3]) = 1;
      *(&v19[3] + 6) = 0;
      *(&v19[3] + 1) = 0;
      v20 = 0uLL;
      v19[5] = 0;
      LOBYTE(v21) = 0;
      *(&v21 + 2) = 0;
      if (sub_100536A18(a2, buf) && BYTE2(v14[0]) == 1 && BYTE2(v16[0]) == 1 && (BYTE3(v14[0]) & 1) == 0 && BYTE3(v16[0]) == 1)
      {
        sub_1006DF5BC(a1);
      }

      else
      {
        if (a3)
        {
          v9 = a2[1416] + 1;
        }

        else
        {
          v9 = 0;
        }

        a2[1416] = v9;
        sub_1006DC0D4(a1, a2, a3);
      }

      if (SHIBYTE(v19[1]) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[1]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[1]);
      }

      nullsub_21(&buf[1]);
    }

    else
    {
      sub_1006DC0D4(a1, a2, 0x9Eu);
    }
  }

  sub_1000088CC(v12);
  return nullsub_21(&v22);
}

void sub_1000E691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  nullsub_21(v5 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6960(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_1008639B0();
  }

  v2 = off_100B50F80;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1000E66AC(v2, v3, v4);
}

BOOL sub_1000E69B8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 8);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_1000E69EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000E6A38(a1, a2);
  if (v2)
  {
    *(v2 + 180) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
    v3 = *(v2 + 200);
    *(v2 + 200) = 0;
  }
}

uint64_t sub_1000E6A38(uint64_t a1, uint64_t a2)
{
  result = a1 + 16;
  v3 = 3;
  while (1)
  {
    if (*(result + 16))
    {
      if (*a2 == *(result + 8) && *(a2 + 4) == *(result + 12))
      {
        break;
      }
    }

    result += 208;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E6A78(uint64_t a1, uint64_t a2, void *a3, int *a4, _BYTE *a5)
{
  v7 = a3;
  if (v7)
  {
    v16 = 1;
    v15 = 1;
    v8 = sub_100017E6C();
    (*(*v8 + 256))(v8, &v15);
    if (qword_100B50940 != -1)
    {
      sub_100843A38();
    }

    sub_1000E3788(off_100B50938, v7, &v16, a4);
    v9 = v16;
    v10 = v15;
    if (v15)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    *a5 = v11;
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *a4;
      *buf = 138413314;
      v18 = v7;
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "DeviceManager Get Spatial Mode: bundleID: %@, mode: %u, headtracking: %u Accessibility Head tracking %d, returning: %u", buf, 0x24u);
    }
  }

  return 0;
}

std::string *sub_1000E6C1C(uint64_t a1, int a2, int a3)
{
  if (!a3 || a3 == 255 || a3 == 3)
  {
    v3 = "Off";
  }

  else if (a2)
  {
    v3 = "Headtracked Spatial";
  }

  else
  {
    v3 = "Fixed Spatial";
  }

  return std::string::assign((a1 + 1216), v3);
}

uint64_t sub_1000E6C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  v5 = sub_10009A66C(v4);
  v13 = v5;
  v15 = BYTE6(v5);
  v14 = WORD2(v5);
  v6 = sub_10004B1D8(a1, v3);
  v7 = v6;
  v12 = *(v6 + 560);
  v8 = v12;
  if (!v12)
  {
    v11 = *(v6 + 562);
    v10 = *(v6 + 564);
    memset(v17, 0, sizeof(v17));
    sub_1000E5E28(&v13, &v10, &v12, &v11);
    *(v7 + 560) = v12;
    *(v7 + 562) = v11;
    *(v7 + 564) = v10;
    sub_1000E3D14(v17);
    v8 = v12;
  }

  sub_1000088CC(v16);

  return v8;
}

void sub_1000E6DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1000E3D14(va1);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1000E6DFC(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 changeFlags];
  v7 = [v5 oldDiscoveryFlags];
  v8 = [v5 discoveryFlags];
  if (v7 != v8)
  {
    v6 |= 0x800000000uLL;
  }

  v9 = v6 | v8 ^ v7;
  [v5 setChangeFlags:{objc_msgSend(v5, "changeFlags") | v9}];
  v10 = *(*(a1 + 32) + 26);
  v11 = [v5 internalFlags];
  if (v10)
  {
    v12 = 0x20000;
  }

  else
  {
    v12 = 0;
  }

  [v5 setInternalFlags:v12 | v11];
  if ((*(*(a1 + 32) + 80) & v9) != 0 && (*(*(a1 + 32) + 80) & [v5 discoveryFlags]) != 0)
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v13 = objc_retainBlock(*(*(a1 + 32) + 64));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, v5);
    }
  }

  else if (dword_100B507C8 <= 10 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_1000E6FF8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832854();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1000E446C(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDeviceType", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1000E70E4()
{
  if (dword_100B5FCB0)
  {
    sub_10002242C(dword_100B5FCB0);
    dword_100B5FCB0 = 0;
    sub_1000CC39C();
  }

  qword_100B5FCA8 = 0;
}

uint64_t sub_1000E7128(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = bswap64(*a2 | (*(a2 + 2) << 32));
  v6 = v2;
  do
  {
    v7 = bswap64(*(v3 + 32) | (*(v3 + 36) << 32));
    v8 = v7 >= v5;
    v9 = v7 > v5;
    v10 = !v8;
    v11 = v9 - v10;
    if (v11 >= 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v11 >> 28) & 8));
  }

  while (v3);
  if (v6 == v2 || bswap64(*a2 | (*(a2 + 2) << 32)) < bswap64(*(v6 + 32) | (*(v6 + 36) << 32)))
  {
    return v2;
  }

  return v6;
}

void sub_1000E7490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E7508(int a1)
{
  if (a1 <= 1)
  {
    if (qword_100BC7028 != -1)
    {
      dispatch_once(&qword_100BC7028, &stru_100B08060);
    }

    atomic_store(0, &byte_100BC7020[a1]);
  }
}

uint64_t sub_1000E756C()
{
  v0 = *(*sub_10000C7D0() + 3832);

  return v0();
}

uint64_t sub_1000E75CC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = a2[8];
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    v12 = *(a2 + 8);
    v14 = *(a2 + 9);
    v13 = *(a2 + 10);
    v15 = *(a2 + 11);
    v16 = *(a2 + 12);
    v17 = a2[52];
    v18 = a2[53];
    v19 = a2[54];
    v21[0] = 67112960;
    v21[1] = v4;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v8;
    v30 = 1024;
    v31 = v9;
    v32 = 1024;
    v33 = v10;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    v39 = v14;
    v40 = 1024;
    v41 = v13;
    v42 = 1024;
    v43 = v15;
    v44 = 1024;
    v45 = v16;
    v46 = 1024;
    v47 = v17;
    v48 = 1024;
    v49 = v18;
    v50 = 1024;
    v51 = v19;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "vseAdvStatsEvent - ver %u duration %u (secs) instance %u num ADVs [total %u NonExtended %u Extended %u] Ch [37 %u 38 %u 39 %u] FailedOnAllCh %u Denied by [Coex %u BT %u Others %u] txPower [min %d max %d mode %d]", v21, 0x62u);
  }

  return 0;
}

void sub_1000E771C(uint64_t a1)
{
  if (sub_10000EFCC())
  {
    sub_1000CDD74(a1);
    sub_100304AF8("------------------------- Stack Dump reason: %s (%d) ------------------------------\n", v2, a1);
    if (sub_1001B2A44())
    {
      v3 = sub_10000C240();
      v9 = v3;
      if ((v3 & 1) == 0)
      {
        sub_1000031B0();
      }

      if (a1 > 3699)
      {
        if (a1 == 3700 || a1 == 3702)
        {
          goto LABEL_14;
        }
      }

      else if (a1 == 621 || a1 == 3602)
      {
        goto LABEL_14;
      }

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
      v14 = 0u;
      v15 = 0u;
      *buf = 0u;
      v13 = 0u;
      sub_100304ACC(buf, 256, "Fatal error detected, reason %! (0x%x)", v4, v5, v6, v7, v8, a1);
      sub_1001C4B04(buf);
LABEL_14:
      nullsub_21(v3);
      sub_1002D0B38();
      sub_100199850();
      sub_100230E6C();
      sub_1003019C4();
      sub_10029DCCC();
      sub_10028D6A8();
      sub_10023B404();
      sub_100255338();
      v11 = sub_100259B94();
      nullsub_21(v11);
      sub_100304FCC();
      sub_100184230();
      if ((v9 & 1) == 0)
      {
        sub_10000C198();
      }

      return;
    }

    v10 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "Stack is not running";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }
}

void sub_1000E78B4(const char *a1, int a2, const char *a3)
{
  sub_1000E771C(3701);
  v6 = sub_100304AF8("AssertFail %s:%d : %s\n", a1, a2, a3);
  sub_1001BA810(v6);
  abort();
}

void sub_1000E7904(uint64_t a1, _OWORD *a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x5012000000;
  v5[3] = sub_100042354;
  v5[4] = nullsub_25;
  v5[5] = "";
  v6[0] = *a2;
  *(v6 + 12) = *(a2 + 12);
  v3 = *(sub_100066098() + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E79FC;
  v4[3] = &unk_100AE25F0;
  v4[4] = v5;
  v4[5] = a1;
  dispatch_async(v3, v4);
  _Block_object_dispose(v5, 8);
}

void sub_1000E79E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E79FC(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 116) + *(*(*(result + 32) + 8) + 60);
  *(v1 + 116) = v2;
  v3 = *(v1 + 108);
  *(v1 + 104) = (*(*(*(result + 32) + 8) + 48) + *(v1 + 104)) / v2;
  *(v1 + 108) = (*(*(*(result + 32) + 8) + 52) + v3) / v2;
  *(v1 + 112) = (*(*(*(result + 32) + 8) + 56) + *(v1 + 112)) / v2;
  *(v1 + 118) += *(*(*(result + 32) + 8) + 62);
  *(v1 + 120) += *(*(*(result + 32) + 8) + 64);
  *(v1 + 122) += *(*(*(result + 32) + 8) + 66);
  *(v1 + 124) += *(*(*(result + 32) + 8) + 68);
  *(v1 + 126) += *(*(*(result + 32) + 8) + 70);
  *(v1 + 128) += *(*(*(result + 32) + 8) + 72);
  return result;
}

void sub_1000E7AFC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EBA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000EBA34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 triggeredDeviceMap];
  *(*(*(a1 + 32) + 8) + 24) += [v4 count];
}

void sub_1000EBA98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v9 = *(v4 + 40);
  v5 = a3;
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe();
  objc_storeStrong((v4 + 40), v9);

  v6 = [v5 triggeredDeviceMap];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EBB88;
  v8[3] = &unk_100ADF540;
  v8[4] = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_1000EBB88(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  v5 = a3;
  mach_absolute_time();
  [v5 triggerTicks];
  UpTicksToSecondsF();
  v6 = CUPrintDurationDouble();
  [v5 present];
  [v5 uiTicks];
  v7 = [v5 device];

  NSAppendPrintF_safe();
  objc_storeStrong((v3 + 40), v4);
}

void *sub_1000EBFB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[5])
  {
    return [result _findExtensionsStart];
  }

  return result;
}

void sub_1000EC128(id a1, NSString *a2, CBExtension *a3, BOOL *a4)
{
  v6 = a2;
  v5 = a3;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF010();
  }

  [(CBExtension *)v5 invalidate];
}

void sub_1000EC5F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 rangeOfString:*(a1 + 32) options:9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 reset];
  }
}

id sub_1000EC854(uint64_t a1)
{
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF178();
  }

  v2 = *(*(a1 + 32) + 40);

  return [v2 trigger];
}

void sub_1000ECA10(uint64_t a1)
{
  v25 = *(*(a1 + 32) + 27);
  v26 = [LSApplicationRecord enumeratorWithOptions:1];
  [v26 setErrorHandler:&stru_100ADF780];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100042184;
  v37 = sub_100042554;
  v38 = 0;
  p_info = &OBJC_METACLASS___BTVCDevice.info;
  do
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [v26 nextObject];
    v4 = v3;
    if (!v3)
    {
      goto LABEL_37;
    }

    v5 = [v3 bundleIdentifier];
    if (v5)
    {
      v6 = [v4 entitlements];
      v7 = [v6 objectForKey:@"com.apple.bluetooth.discovery" ofClass:objc_opt_class()];

      if (v7)
      {
        v8 = [v4 entitlements];
        v9 = [v8 objectForKey:@"com.apple.bluetooth.system" ofClass:objc_opt_class()];

        if ([v9 BOOLValue])
        {
          if (v25)
          {
            v10 = 0;
            while (([v5 isEqual:{off_100ADF4B8[v10], v23}] & 1) == 0)
            {
              if (++v10 == 11)
              {
                v11 = *(p_info + 422);
                if (v11 <= 90 && (v11 != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_29;
                }

                goto LABEL_35;
              }
            }
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          CFStringGetTypeID();
          v13 = CFPrefs_CopyTypedValue();
          v14 = [v13 componentsSeparatedByString:{@", "}];

          v15 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (!v15)
          {
LABEL_24:

            p_info = (&OBJC_METACLASS___BTVCDevice + 32);
            CFArrayGetTypeID();
            if (CFDictionaryGetTypedValue())
            {
              v39 = @"legacy";
              v40 = v7;
              v18 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

              v7 = v18;
            }

            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_1000EECA8;
            v28[3] = &unk_100ADF7A8;
            v28[4] = v5;
            v28[5] = &v33;
            [v7 enumerateKeysAndObjectsUsingBlock:{v28, v23}];
            goto LABEL_35;
          }

          v16 = *v30;
LABEL_18:
          v17 = 0;
          while (1)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v29 + 1) + 8 * v17) isEqual:{v5, v23}])
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v15)
              {
                goto LABEL_18;
              }

              goto LABEL_24;
            }
          }

          p_info = &OBJC_METACLASS___BTVCDevice.info;
          if (dword_100B50698 > 30 || dword_100B50698 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_35;
          }
        }

        else
        {
          v12 = *(p_info + 422);
          if (v12 > 90 || v12 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_35;
          }
        }

LABEL_29:
        v23 = v5;
        LogPrintF_safe();
LABEL_35:
      }
    }

LABEL_37:
    objc_autoreleasePoolPop(v2);
  }

  while (v4);
  v19 = v34[5];
  _Block_object_dispose(&v33, 8);

  v20 = *(p_info + 422);
  if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF1CC(v19);
  }

  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ECF90;
  block[3] = &unk_100ADF590;
  block[4] = v21;
  block[5] = v19;
  dispatch_async(v22, block);
}

_BYTE *sub_1000ECF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 25) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
  result = *(a1 + 32);
  if ((result[26] & 1) == 0)
  {
    if (v5)
    {
      if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        sub_1007FF230();
      }

      v7 = *(*(a1 + 32) + 40);

      return [v7 trigger];
    }

    else
    {
      v8 = *(a1 + 40);

      return [result _updateExtensions:v8];
    }
  }

  return result;
}

void *sub_1000EDBF4(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(result[5] + 32);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1007FF394();
    }
  }

  if (v2 == v3)
  {
    *(v1[5] + 48) = 1;
    v4 = *(v1[5] + 56);

    return [v4 setSystemFlags:1 mask:1];
  }

  return result;
}

void *sub_1000EDD3C(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(result[5] + 32);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1007FF3E4();
    }
  }

  if (v2 == v3)
  {
    *(v1[5] + 48) = 0;
    v4 = *(v1[5] + 56);

    return [v4 setSystemFlags:0 mask:1];
  }

  return result;
}

id sub_1000EDE80(uint64_t a1)
{
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF434();
  }

  v2 = *(a1 + 40);
  v3 = v2[4];
  if (*(a1 + 32) == v3)
  {
    v2[4] = 0;

    *(*(a1 + 40) + 48) = 0;
    [*(*(a1 + 40) + 56) setSystemFlags:0 mask:1];
    v2 = *(a1 + 40);
  }

  return [v2 _triggerPendingExtension];
}

void sub_1000EE440(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 device];
  if (v7 && [v6 present] && !objc_msgSend(v6, "uiTicks"))
  {
    v14 = @"unknown";
    v8 = (a1 + 32);
    if ([*(*(a1 + 32) + 56) remoteAlertAllowedAndReturnReason:&v14 extension:?])
    {
      v9 = *v8;
      v10 = *(*v8 + 56);
      v13 = 0;
      v11 = [v10 remoteAlertStartWithCBExtension:v9 device:v7 error:&v13];
      v12 = v13;
      if (v11)
      {
        [v6 setUiTicks:mach_absolute_time()];
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *(*(a1 + 32) + 12) = 1;
        *a4 = 1;
      }

      else
      {
        sub_1007FF61C();
      }
    }

    else
    {
      if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      *a4 = 1;
    }
  }
}

void *sub_1000EE8DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_1000EE8F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

void sub_1000EE914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (*(a1 + 32) == *(v5 + 32))
  {
    if (v3)
    {
      v12 = v3;
      if (dword_100B50698 <= 90)
      {
        if (dword_100B50698 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v5 = *(a1 + 40);
        }

        v6 = *(v5 + 64);
        CUPrintNSError();
        v11 = v10 = v6;
        LogPrintF_safe();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 32);
      *(v7 + 32) = 0;

      goto LABEL_11;
    }

    if (dword_100B50698 <= 30)
    {
      v12 = 0;
      if (dword_100B50698 != -1 || (v9 = _LogCategory_Initialize(), v4 = 0, v9))
      {
        LogPrintF_safe();
LABEL_11:
        v4 = v12;
      }
    }
  }
}

void sub_1000EEC30(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100B50698 <= 90)
  {
    v5 = v2;
    if (dword_100B50698 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1007FF77C();
      v3 = v5;
    }
  }
}

void sub_1000EECA8(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = [[NSString alloc] initWithFormat:@"%@.%@", *(a1 + 32), v5];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  if (v7)
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v6];

    if (v8)
    {
      if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        sub_1007FF7D8();
      }
    }

    else
    {
      v9 = objc_alloc_init(CBExtension);
      [(CBExtension *)v9 setBundleID:*(a1 + 32)];
      [(CBExtension *)v9 setDiscoveryInfo:v14];
      [(CBExtension *)v9 setXpcDiscoveryInfo:v7];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      if (!v10)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v10 setObject:v9 forKeyedSubscript:v6];
    }
  }

  else if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF818();
  }
}

void sub_1000EF110(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1000EF15C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = CUDescriptionWithLevel();
  NSAppendPrintF_safe();
  objc_storeStrong((v6 + 40), obj);

  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 48) >= 11 && *(*(*(a1 + 40) + 8) + 24) >= 0x32uLL)
  {
    *a4 = 1;
  }
}

void sub_1000EF614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v7 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(a1 + 64);
    *(a1 + 64) = v5;

    v4 = *(a1 + 64);
    v3 = v7;
  }

  [v4 addObject:v3];
  if ((*(a1 + 72) & 1) == 0)
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (qword_100B508E0 != -1)
    {
      sub_1007FF9F8();
    }

    sub_1005143D8(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_1007FFA0C();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_1007FFA20();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 16);
    if (qword_100B50900 != -1)
    {
      sub_1007FFA34();
    }

    sub_1000F125C(qword_100B508F8 + 40, a1 + 24);
    if (qword_100B508B0 != -1)
    {
      sub_1007FFA48();
    }

    sub_100749B80(off_100B508A8, a1 + 32, 0);
    if (qword_100B508D0 != -1)
    {
      sub_1007FFA5C();
    }

    sub_1007986D0(off_100B508C8, a1 + 40);
    if (qword_100B50910 != -1)
    {
      sub_1007FFA70();
    }

    sub_1005BB5D4(off_100B50908, a1 + 48);
    if (qword_100B50920 != -1)
    {
      sub_1007FFA84();
    }

    sub_1000F14BC(qword_100B50918 + 392, a1 + 56);
    *(a1 + 72) = 1;
  }
}

id sub_1000EF854(uint64_t a1)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFA98();
  }

  v2 = *(a1 + 32);

  return [v2 updateDevices];
}

id sub_1000EF8BC(uint64_t a1)
{
  if (dword_100B507C8 <= 20 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFAB4();
  }

  v2 = *(*(a1 + 32) + 32);

  return [v2 trigger];
}

void sub_1000EF928(uint64_t a1)
{
  obj = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
  if (([*(*(a1 + 32) + 48) isEqualToString:?] & 1) == 0)
  {
    v2 = sub_10000E92C();
    *(*(a1 + 32) + 26) = (*(*v2 + 160))(v2);
    objc_storeStrong((*(a1 + 32) + 48), obj);
  }
}

void sub_1000EFAFC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 64) removeObject:?];
  if (*(a1 + 72) == 1 && ![*(a1 + 64) count])
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (qword_100B508E0 != -1)
    {
      sub_1007FF9F8();
    }

    sub_100514508(off_100B508D8, a1);
    if (qword_100B508F0 != -1)
    {
      sub_1007FFA0C();
    }

    sub_10007A3F0(off_100B508E8 + 240, a1 + 8);
    if (qword_100B508A0 != -1)
    {
      sub_1007FFA20();
    }

    sub_10007A3F0(off_100B50898 + 72, a1 + 16);
    if (qword_100B50900 != -1)
    {
      sub_1007FFA34();
    }

    sub_10007A3F0(qword_100B508F8 + 40, a1 + 24);
    if (qword_100B50920 != -1)
    {
      sub_1007FFA84();
    }

    sub_10007A3F0(qword_100B50918 + 392, a1 + 56);
    *(a1 + 72) = 0;
  }
}

void sub_1000EFF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFFAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (!v2)
  {
    v2 = *(a2 + 16);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void sub_1000F04F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (**a11)(void))
{
  a11[2]();

  _Unwind_Resume(a1);
}

void sub_1000F0660(uint64_t a1)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFBDC();
  }

  sub_1000DEF24(a1);
}

void sub_1000F06C8(uint64_t a1)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFBF8();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0738(uint64_t a1, uint64_t a2)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E5A58(a2, &__p);
    LogPrintF_safe();
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }

  sub_1000DEF24(a1);
}

void sub_1000F07FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F0820(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 13)
  {
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FFC3C();
    }

    sub_1000DEF24(a1);
  }
}

void sub_1000F08A4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v3 = [v4 UUIDString];
    LogPrintF_safe();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0980(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v3 = [v4 UUIDString];
    LogPrintF_safe();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0A68(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    v3 = [v4 UUIDString];
    LogPrintF_safe();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0B44(uint64_t a1)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FFC7C();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0BB4(uint64_t a1)
{
  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  sub_1000DEF24(a1);
}

void sub_1000F0C8C(uint64_t a1)
{

  operator delete();
}

void sub_1000F0D9C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F0E28((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F0E28(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F0FFC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F1088((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F1088(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F1224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F125C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1000F12E8((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1000F12E8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1000F1484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}