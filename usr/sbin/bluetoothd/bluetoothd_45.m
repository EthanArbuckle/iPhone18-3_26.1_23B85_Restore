uint64_t sub_1002EA118(__int128 *a1, char a2, char a3, char a4, char a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return sub_1002E9FD4(a1, 3u, v6, 4uLL);
}

uint64_t sub_1002EA154(uint64_t a1, int a2, int a3, __int16 a4, char a5)
{
  v18 = a4;
  BYTE1(v18) = HIBYTE(a4);
  BYTE2(v18) = a3 == 2;
  if (a1 && sub_1000ABD24(a1))
  {
    *(a1 + 127) = 257;
    *(a1 + 129) = a5;
    if (a2)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    result = sub_1002E9FD4(a1, 5u, &v18, v8);
    if (!result)
    {
      sub_1002C0B70(a1, 5);
      return 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid Handle: 0x%x", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002EA244(uint64_t a1)
{
  v2 = sub_1002E9FD4(a1, 6u, 0, 0);
  if (!v2)
  {
    *(a1 + 128) = 0;
    sub_1002C0B70(a1, 6);
  }

  return v2;
}

uint64_t sub_1002EA2A4(__int128 *a1, char a2, __int16 a3)
{
  v4 = a2;
  v5 = a3;
  return sub_1002E9FD4(a1, 8u, &v4, 3uLL);
}

uint64_t sub_1002EA310(__int128 *a1, uint64_t a2, char a3)
{
  *&v6[3] = 0;
  *v6 = 0;
  sub_1000075EC(v6, a2, 6uLL);
  v6[6] = a3;
  return sub_1002E9FD4(a1, 0x10u, v6, 7uLL);
}

uint64_t sub_1002EA368(__int128 *a1, uint64_t a2, __int16 a3, uint64_t *a4)
{
  v8 = 0;
  v9 = 0;
  sub_1000075EC(&v8, a2, 6uLL);
  HIWORD(v8) = a3;
  v9 = *a4;
  return sub_1002E9FD4(a1, 0x12u, &v8, 0x10uLL);
}

uint64_t sub_1002EA3FC(__int128 *a1, uint64_t a2, _OWORD *a3)
{
  memset(v6, 0, 22);
  sub_1000075EC(v6, a2, 6uLL);
  *&v6[6] = *a3;
  return sub_1002E9FD4(a1, 0x13u, v6, 0x16uLL);
}

uint64_t sub_1002EA484(__int128 *a1, uint64_t a2, _OWORD *a3)
{
  memset(v6, 0, 22);
  sub_1000075EC(v6, a2, 6uLL);
  *&v6[6] = *a3;
  return sub_1002E9FD4(a1, 0x14u, v6, 0x16uLL);
}

BOOL sub_1002EA50C(uint64_t a1)
{
  v2 = 10 - sub_10029E664(43);
  if (v2 < a1)
  {
    if (sub_10000C240())
    {
      sub_10029E664(43);
      sub_10000AF54("LEA Queue full: request buffers %d, queue-size %d", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  sub_10029E054();
  return v2 >= a1;
}

uint64_t sub_1002EA5B0(__int128 *a1, char *a2, size_t a3, char a4, int a5)
{
  v32 = a4;
  if (a1 && sub_1000ABD24(a1))
  {
    if (a5)
    {
      v9 = 412;
    }

    else
    {
      v9 = 625;
    }

    v10 = sub_100084230() && sub_100084230() < 0x7D0 || sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177 || sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8;
    memset(v31, 0, sizeof(v31));
    v19 = sub_10001FF10(v31, 2u);
    if (!v19)
    {
      v21 = sub_10001F968(v31, a2, a3, 2u);
      if (!v21)
      {
        if (!v10 || (v21 = sub_10001F968(v31, &v32, 1uLL, 0), !v21))
        {
          if (a5)
          {
            v21 = sub_1000B7EDC(0, 43, a1, v31, 1);
          }

          else
          {
            v21 = sub_100258D30(a1, v31, WORD2(v31[0]));
          }
        }
      }

      v19 = v21;
      sub_1000B7B40(v31);
    }

    if (v19 != v9)
    {
      if (v19)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send audio: %!", v22, v23, v24, v25, v26, v27, v28, v19);
          v29 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send audio as handle is invalid", v11, v12, v13, v14, v15, v16, v17, v30);
      v18 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return v19;
}

uint64_t sub_1002EA7BC(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 1310;
  }

  if (a3 == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return sub_1002C1774(a1, a2, a2, 0, 300, v3, v3);
}

BOOL sub_1002EA7EC(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return sub_1002C3958(a1, a2, v3, v3);
}

uint64_t sub_1002EA804(uint64_t a1)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (*(a1 + 132) <= 4u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting LEA device before it is ready, tell the upper layer we failed", v2, v3, v4, v5, v6, v7, v8, *v11);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136446210;
        *&v11[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", v11, 0xCu);
      }
    }

    *(a1 + 132) = 6;
    *(a1 + 140) = 5300;
  }

  return sub_1002BF944(a1);
}

uint64_t sub_1002EA900(uint64_t a1)
{
  result = sub_1000CB318(a1);
  if (result)
  {

    return sub_1002DBE90(a1);
  }

  return result;
}

uint64_t sub_1002EA948(uint64_t a1)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177)
  {
    return 0;
  }

  v2 = *(a1 + 148);
  if (v2 == 2)
  {
    v3 = 60;
  }

  else if (v2 == 1)
  {
    if (*(a1 + 104) <= 0x3Cu && *(a1 + 108) <= 0x3Cu)
    {
      return 0;
    }

    v3 = 40;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 104);
  if (v5 == v3 && *(a1 + 108) == v3 || v5 <= 0x1B && *(a1 + 108) < 0x1Cu)
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LEA set data length %dB %dus", v6, v7, v8, v9, v10, v11, v12, v3);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return sub_1002A0D10(a1);
}

void sub_1002EAB1C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LEA setTxDataLengthExtendedCB %!", v2, v3, v4, v5, v6, v7, v8, a1);
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
      sub_10080FEE0();
    }
  }
}

uint64_t sub_1002EAC28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 48, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 49, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_14;
  }

  v4 = *(a2 + 12);
  if (*(a2 + 10) - v4 <= 3)
  {
    *(a2 + 15) = 1;
LABEL_14:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v14 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 50, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_15;
  }

  v5 = *(*a2 + v4);
  *(a2 + 12) = v4 + 4;
  if (*(a2 + 10) - (v4 + 4) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_15:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v15 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v15 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 51, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_16;
  }

  v6 = *(*a2 + (v4 + 4));
  *(a2 + 12) = v4 + 6;
  if (*(a2 + 10) - (v4 + 6) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_16:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v16 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v16 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 52, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_17;
  }

  v7 = *(*a2 + (v4 + 6));
  *(a2 + 12) = v4 + 8;
  if (*(a2 + 10) - (v4 + 8) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_17:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    goto LABEL_18;
  }

  v8 = *(*a2 + (v4 + 8));
  *(a2 + 12) = v4 + 10;
  if (*(a2 + 10) - (v4 + 10) <= 1)
  {
LABEL_18:
    *(a2 + 15) = 1;
    goto LABEL_19;
  }

  v9 = bswap32(v5);
  v10 = (*a2 + (v4 + 10));
  v11 = *v10;
  v12 = v10[1];
  *(a2 + 12) = v4 + 12;
  if (v9 == 1279607120 && (v6 - 1) <= 1u)
  {
    (**(qword_100B6B4E0 + 16))(a1, v6, v7, v8, v11 | (v12 << 8));
    return 0;
  }

LABEL_19:
  v13 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read version", v17, v18, v19, v20, v21, v22, v23, v26);
    v24 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v13;
}

uint64_t sub_1002EAF24(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 8))
  {
    return 3;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 10) - *(a2 + 12);
  }

  __chkstk_darwin(a1, v4);
  v7 = &v25 - v6;
  bzero(&v25 - v6, v8);
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 72, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v9 = *a2;
  v10 = *(a2 + 6);
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 5) - v10;
  }

  if (v11 >= v4)
  {
    if (v4)
    {
      v12 = (v9 + v10);
      v13 = v7;
      do
      {
        v14 = *v12++;
        *v13++ = v14;
      }

      while (v13 < &v7[v4]);
    }

    *(a2 + 6) += v4;
    if (*(a2 + 15))
    {
      v15 = 1;
    }

    else
    {
      v15 = v4 == 0;
    }

    if (!v15)
    {
      (*(*(qword_100B6B4E0 + 16) + 8))(a1, v7, v4);
      return 0;
    }
  }

  else
  {
    *(a2 + 15) = 1;
  }

  v5 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read supported codec list", v16, v17, v18, v19, v20, v21, v22, v25);
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v5;
}

uint64_t sub_1002EB148(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 16))
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 97, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 98, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 6);
  if (*(a2 + 5) <= v5)
  {
    *(a2 + 15) = 1;
LABEL_13:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v13 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v13 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 99, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_14;
  }

  v6 = *a2;
  *(a2 + 6) = v5 + 1;
  if (*(a2 + 5) <= (v5 + 1))
  {
    *(a2 + 15) = 1;
LABEL_14:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v14 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 100, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_15;
  }

  v7 = *(v6 + v5);
  v8 = *a2;
  *(a2 + 6) = v5 + 2;
  if (*(a2 + 5) > (v5 + 2))
  {
    v9 = *(v8 + v5 + 1);
    v10 = *a2;
    *(a2 + 6) = v5 + 3;
    if (*(a2 + 5) > (v5 + 3))
    {
      v11 = *(v10 + v5 + 2);
      v12 = *a2;
      *(a2 + 6) = v5 + 4;
      (*(*(qword_100B6B4E0 + 16) + 16))(a1, v7, v9, v11, *(v12 + v5 + 3));
      return 0;
    }

    goto LABEL_16;
  }

  *(a2 + 15) = 1;
LABEL_15:
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_16:
  *(a2 + 15) = 1;
  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read select codec", v15, v16, v17, v18, v19, v20, v21, v24);
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB394(uint64_t a1, uint64_t a2)
{
  v2 = *(*(qword_100B6B4E0 + 16) + 24);
  if (!v2)
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 122, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v5 = *(a2 + 12);
    if (*(a2 + 10) - v5 >= 2)
    {
      v6 = *(*a2 + v5);
      *(a2 + 12) = v5 + 2;
      v2(a1, v6);
      return 0;
    }
  }

  *(a2 + 15) = 1;
  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read codec ready", v7, v8, v9, v10, v11, v12, v13, v16);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB49C(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 32))
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 145, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v5 = *(a2 + 5);
    v6 = *(a2 + 6);
    if (v5 - v6 >= 2)
    {
      v7 = *a2;
      v8 = *(*a2 + v6);
      *(a2 + 6) = v6 + 2;
      if (v5 - (v6 + 2) >= 2)
      {
        v9 = *(v7 + (v6 + 2));
        *(a2 + 6) = v6 + 4;
LABEL_15:
        (*(*(qword_100B6B4E0 + 16) + 32))(a1, v8, v9);
        return 0;
      }

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  *(a2 + 15) = 1;
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  v8 = *(a2 + 15);
  if (!*(a2 + 15))
  {
    goto LABEL_14;
  }

  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read start stream", v10, v11, v12, v13, v14, v15, v16, v19);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB60C(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(qword_100B6B4E0 + 16) + 48);
  if (!v2)
  {
    return 3;
  }

  v4 = *a2;
  v5 = *(a2 + 6);
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 5) - v5;
  }

  v2(a1, v4 + v5, v6);
  return 0;
}

void sub_1002EB69C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 194, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 195, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_11;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_11:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_12:
    *(a2 + 15) = 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to read error", v9, v10, v11, v12, v13, v14, v15, v17);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v5 = *a2;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) - (v4 + 1) < 2)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + v4);
  v7 = *(*a2 + v4 + 1);
  *(a2 + 6) = v4 + 3;
  v8 = *(*(qword_100B6B4E0 + 16) + 56);

  v8(a1, v6, v7);
}

uint64_t sub_1002EB800(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 216, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v3 = *(a2 + 6);
    if (*(a2 + 5) > v3)
    {
      v4 = *a2;
      *(a2 + 6) = v3 + 1;
      (*(*(qword_100B6B4E0 + 16) + 72))(a1, *(v4 + v3));
      return 0;
    }
  }

  *(a2 + 15) = 1;
  v5 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read set volume", v6, v7, v8, v9, v10, v11, v12, v15);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v5;
}

uint64_t sub_1002EB8F8(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 234, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 235, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_9;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_9:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    goto LABEL_10;
  }

  v5 = *a2;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) > (v4 + 1))
  {
    v6 = *(v5 + v4);
    v7 = *a2;
    *(a2 + 6) = v4 + 2;
    (*(*(qword_100B6B4E0 + 16) + 80))(a1, v6, *(v7 + v4 + 1));
    return 0;
  }

LABEL_10:
  *(a2 + 15) = 1;
  v8 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read capabilities", v9, v10, v11, v12, v13, v14, v15, v18);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v8;
}

uint64_t sub_1002EBA54(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 262, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 104);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read State Notification", v7, v8, v9, v10, v11, v12, v13, v16);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

uint64_t sub_1002EBB50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 279, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 280, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_10:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    goto LABEL_11;
  }

  v5 = *a2;
  v6 = v4 + 1;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) <= (v4 + 1))
  {
LABEL_11:
    *(a2 + 15) = 1;
    goto LABEL_12;
  }

  v7 = *(v5 + v4);
  v8 = *a2;
  *(a2 + 6) = v4 + 2;
  v9 = *(*(qword_100B6B4E0 + 16) + 112);
  if (v9)
  {
    v9(a1, v7, *(v8 + v6));
    return 0;
  }

LABEL_12:
  v10 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read LinkQuality Notification", v11, v12, v13, v14, v15, v16, v17, v20);
    v18 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v10;
}

uint64_t sub_1002EBCB0(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 297, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v20 = 0;
  v19 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v4 = *(a2 + 6);
    if (*(a2 + 5) - v4 >= 6)
    {
      sub_1000075EC(&v19, *a2 + v4, 6uLL);
      *(a2 + 6) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 298, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_13:
    *(a2 + 15) = 1;
    goto LABEL_14;
  }

  v5 = *(a2 + 6);
  if (*(a2 + 5) <= v5)
  {
    goto LABEL_13;
  }

  v6 = *a2;
  *(a2 + 6) = v5 + 1;
  v7 = *(*(qword_100B6B4E0 + 16) + 136);
  if (v7)
  {
    v7(a1, &v19, *(v6 + v5));
    return 0;
  }

LABEL_14:
  v8 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Bonding Status", v9, v10, v11, v12, v13, v14, v15, v18);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v8;
}

uint64_t sub_1002EBE50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 314, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 120);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Bonding Status Response", v7, v8, v9, v10, v11, v12, v13, v16);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

uint64_t sub_1002EBF4C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 332, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v24 = 0;
  v23 = 0;
  v25 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v4 = *(a2 + 6);
    if (*(a2 + 5) - v4 >= 6)
    {
      sub_1000075EC(&v23, *a2 + v4, 6uLL);
      *(a2 + 6) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 333, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    v5 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v5 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 334, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 6);
  if (*(a2 + 5) - v6 <= 1)
  {
    *(a2 + 15) = 1;
LABEL_18:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    goto LABEL_19;
  }

  v7 = *a2;
  v8 = *(*a2 + v6);
  *(a2 + 6) = v6 + 2;
  if (*(a2 + 5) - (v6 + 2) < 8)
  {
LABEL_19:
    *(a2 + 15) = 1;
    goto LABEL_20;
  }

  v9 = 0;
  v10 = v7 + (v6 + 2);
  do
  {
    *(&v25 + v9) = *(v10 + v9);
    ++v9;
  }

  while (v9 != 8);
  *(a2 + 6) = v6 + 10;
  v11 = *(*(qword_100B6B4E0 + 16) + 144);
  if (v11)
  {
    v11(a1, &v23, v8, &v25);
    return 0;
  }

LABEL_20:
  v12 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Central ID", v13, v14, v15, v16, v17, v18, v19, v22);
    v20 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v12;
}

uint64_t sub_1002EC1AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 351, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  WORD2(v19) = 0;
  LODWORD(v19) = 0;
  v20[0] = 0;
  v20[1] = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    LOWORD(v4) = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v19, *a2 + v4, 6uLL);
      LOWORD(v4) = *(a2 + 12) + 6;
      *(a2 + 12) = v4;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 352, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_15:
    *(a2 + 15) = 1;
    goto LABEL_16;
  }

  v5 = v4;
  if (*(a2 + 10) - v4 < 16)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = *a2 + v4;
  do
  {
    *(v20 + v6) = *(v7 + v6);
    ++v6;
  }

  while (v6 != 16);
  *(a2 + 12) = v5 + 16;
  v8 = *(*(qword_100B6B4E0 + 16) + 152);
  if (v8)
  {
    v8(a1, &v19, v20);
    return 0;
  }

LABEL_16:
  v9 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read ID info", v10, v11, v12, v13, v14, v15, v16, v19);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v9;
}

uint64_t sub_1002EC3A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 369, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  WORD2(v19) = 0;
  LODWORD(v19) = 0;
  v20[0] = 0;
  v20[1] = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
    LOWORD(v4) = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v19, *a2 + v4, 6uLL);
      LOWORD(v4) = *(a2 + 12) + 6;
      *(a2 + 12) = v4;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 370, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_15:
    *(a2 + 15) = 1;
    goto LABEL_16;
  }

  v5 = v4;
  if (*(a2 + 10) - v4 < 16)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = *a2 + v4;
  do
  {
    *(v20 + v6) = *(v7 + v6);
    ++v6;
  }

  while (v6 != 16);
  *(a2 + 12) = v5 + 16;
  v8 = *(*(qword_100B6B4E0 + 16) + 160);
  if (v8)
  {
    v8(a1, &v19, v20);
    return 0;
  }

LABEL_16:
  v9 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Encryption Info", v10, v11, v12, v13, v14, v15, v16, v19);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v9;
}

uint64_t sub_1002EC5A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 387, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v22 = 0;
  v21 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v21, *a2 + v4, 6uLL);
      *(a2 + 12) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 388, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_13:
    *(a2 + 15) = 1;
    goto LABEL_14;
  }

  v5 = *(a2 + 12);
  if (*(a2 + 10) - v5 <= 1)
  {
    goto LABEL_13;
  }

  v6 = (*a2 + v5);
  v7 = *v6;
  v8 = v6[1];
  *(a2 + 12) = v5 + 2;
  v9 = *(*(qword_100B6B4E0 + 16) + 168);
  if (v9)
  {
    v9(a1, &v21, v7 | (v8 << 8));
    return 0;
  }

LABEL_14:
  v10 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Disconnect", v11, v12, v13, v14, v15, v16, v17, v20);
    v18 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v10;
}

uint64_t sub_1002EC754(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 404, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 128);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Siri", v7, v8, v9, v10, v11, v12, v13, v16);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

void sub_1002EC850(uint64_t *a1, char a2)
{
  v4 = sub_100084230();
  v5 = v4 - 1;
  v6 = *(a1 + 14);
  if ((v4 - 1) > 0x7CE)
  {
    if (v6 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 35, "(*pData).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      goto LABEL_7;
    }

    v109 = *(a1 + 6);
    if (*(a1 + 5) <= v109)
    {
      goto LABEL_8;
    }

    v8 = 0;
    v110 = *a1;
    *(a1 + 6) = v109 + 1;
    v119 = *(v110 + v109);
  }

  else
  {
    if (v6 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 33, "(*pData).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
LABEL_7:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
LABEL_8:
      v7 = 0;
      v119 = 0;
      v8 = 0;
      *(a1 + 15) = 1;
      goto LABEL_9;
    }

    v108 = *(a1 + 6);
    if (*(a1 + 5) - v108 < 4)
    {
      goto LABEL_8;
    }

    v119 = 0;
    v8 = *(*a1 + v108);
    *(a1 + 6) = v108 + 4;
  }

  v7 = 1;
LABEL_9:
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 37, "(*pData).__RWFlag == BYTESTREAM_READ");
  }

  if ((v7 & 1) == 0)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    goto LABEL_199;
  }

  v9 = *(a1 + 6);
  if (*(a1 + 5) <= v9)
  {
LABEL_199:
    *(a1 + 15) = 1;
    return;
  }

  v10 = *a1;
  *(a1 + 6) = v9 + 1;
  v118 = *(v10 + v9);
  if (*(v10 + v9))
  {
    v11 = 0;
    v13 = (v4 - 2000) < 0x7D0 || (v4 - 5000) < 0x3E8;
    if (v119)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v119 > 1 && v13;
    v116 = v13;
    v16 = v119 > 2 && v13;
    v117 = v8;
    v17 = (v8 >> 1) & 1;
    if (v5 >= 0x7CF)
    {
      v17 = 0;
    }

    v18 = v17 | v14;
    v19 = v5 < 0x7CF || v15;
    if (v5 < 0x7CF)
    {
      v20 = 1;
    }

    else
    {
      v20 = v16;
    }

    v114 = v20;
    v115 = v19;
    v111 = 136446210;
    v112 = v4 - 1;
    v113 = a2;
    do
    {
      v123 = 0u;
      *ptr = 0u;
      v122 = 0u;
      *size = 0u;
      BYTE10(v123) = v119;
      v124 = v117;
      BYTE1(ptr[1]) = a2;
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 45, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
      }

      else
      {
        v21 = *(a1 + 6);
        if (*(a1 + 5) - v21 >= 2)
        {
          v22 = *(*a1 + v21);
          *(a1 + 6) = v21 + 2;
          goto LABEL_43;
        }
      }

      v22 = 0;
      *(a1 + 15) = 1;
LABEL_43:
      WORD1(ptr[1]) = v22 & 0x1F;
      if (v5 <= 0x7CE)
      {
        BYTE4(ptr[1]) = (v22 >> 5) & 3;
      }

      BYTE14(v122) = (v22 & 0x80) != 0;
      BYTE13(v122) = BYTE1(v22) & 0x3F;
      BYTE12(v122) = (v22 & 0x4000) != 0;
      HIBYTE(v122) = v22 >> 15;
      v23 = (v22 & 0x1F) - 16;
      if (v23 < 0xE && ((0x2C2Du >> v23) & 1) != 0)
      {
        v24 = byte_1008A50C0[v23];
      }

      else
      {
        BYTE11(v122) = 1;
        v25 = sub_10000C240();
        if (v22)
        {
          if ((v22 & 4) != 0)
          {
            if (v25)
            {
              sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE & EXTENDED_ADVERTISING_EVENT_TYPE_DIRECTED_ADV", v26, v27, v28, v29, v30, v31, v32, v111);
              v39 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = sub_10000C0FC();
                *buf = v111;
                v126 = v40;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v24 = 1;
          }

          else
          {
            if (v25)
            {
              sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE", v26, v27, v28, v29, v30, v31, v32, v111);
              v35 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = sub_10000C0FC();
                *buf = v111;
                v126 = v36;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v24 = 0;
          }
        }

        else if ((v22 & 8) != 0)
        {
          if (v25)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_SCAN_RSP", v26, v27, v28, v29, v30, v31, v32, v111);
            v37 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = sub_10000C0FC();
              *buf = v111;
              v126 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v24 = 4;
        }

        else
        {
          if (v25)
          {
            sub_10000AF54("legacy=false LE_ADVERTISING_TYPE_NON_CONNECTABLE_UNDIRECTED", v26, v27, v28, v29, v30, v31, v32, v111);
            v33 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = sub_10000C0FC();
              *buf = v111;
              v126 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v24 = 3;
        }
      }

      LOBYTE(size[0]) = v24 + 16 * BYTE13(v122) - 80;
      v41 = *(a1 + 14);
      if (v18)
      {
        if (v41 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 101, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
          v42 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v42 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 102, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          goto LABEL_88;
        }

        v44 = *(a1 + 6);
        if (*(a1 + 5) <= v44)
        {
          *(a1 + 15) = 1;
          goto LABEL_88;
        }

        v45 = *a1;
        *(a1 + 6) = v44 + 1;
        BYTE3(v123) = *(v45 + v44);
        if (*(a1 + 5) - (v44 + 1) >= 6)
        {
          v46 = (v44 + 1);
          v47 = *a1;
          v48 = &v123 + 4;
LABEL_84:
          sub_1000075EC(v48, v47 + v46, 6uLL);
          *(a1 + 6) += 6;
          goto LABEL_90;
        }
      }

      else
      {
        if (v41 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 104, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
          v43 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v43 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 105, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          goto LABEL_88;
        }

        v49 = *(a1 + 6);
        if (*(a1 + 5) <= v49)
        {
          *(a1 + 15) = 1;
LABEL_88:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
          goto LABEL_89;
        }

        v50 = *a1;
        *(a1 + 6) = v49 + 1;
        BYTE1(size[0]) = *(v50 + v49);
        if (*(a1 + 5) - (v49 + 1) >= 6)
        {
          v46 = (v49 + 1);
          v47 = *a1;
          v48 = size + 2;
          goto LABEL_84;
        }
      }

LABEL_89:
      *(a1 + 15) = 1;
LABEL_90:
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 107, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v51 = *(a1 + 14) == 1;
      }

      else
      {
        v52 = *(a1 + 6);
        if (*(a1 + 5) > v52)
        {
          v53 = *a1;
          *(a1 + 6) = v52 + 1;
          v54 = *(v53 + v52);
          BYTE5(ptr[1]) = *(v53 + v52);
          v51 = 1;
          v55 = 1;
          goto LABEL_97;
        }

        v51 = 1;
      }

      v55 = 0;
      *(a1 + 15) = 1;
      v54 = BYTE5(ptr[1]);
LABEL_97:
      LOBYTE(v123) = v54 >> 7;
      BYTE1(v123) = (v54 & 0x40) != 0;
      BYTE2(v123) = (v54 & 0x20) != 0;
      if (!v51)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 113, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (!v55)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v66 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v66 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 114, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_110:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v67 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v67 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 115, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_111:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v68 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v68 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 116, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_112:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v69 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v69 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 117, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_113:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v70 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v70 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 118, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_114:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v71 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v71 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 119, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_115:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        goto LABEL_116;
      }

      v56 = *(a1 + 6);
      if (*(a1 + 5) <= v56)
      {
        *(a1 + 15) = 1;
        goto LABEL_110;
      }

      v57 = *a1;
      *(a1 + 6) = v56 + 1;
      BYTE6(ptr[1]) = *(v57 + v56);
      if (*(a1 + 5) <= (v56 + 1))
      {
        *(a1 + 15) = 1;
        goto LABEL_111;
      }

      v58 = *a1;
      *(a1 + 6) = v56 + 2;
      HIBYTE(ptr[1]) = *(v58 + v56 + 1);
      if (*(a1 + 5) <= (v56 + 2))
      {
        *(a1 + 15) = 1;
        goto LABEL_112;
      }

      v59 = *a1;
      v60 = v56 + 3;
      *(a1 + 6) = v56 + 3;
      LOBYTE(v122) = *(v59 + v56 + 2);
      if (*(a1 + 5) <= (v56 + 3))
      {
        *(a1 + 15) = 1;
        goto LABEL_113;
      }

      v61 = *a1;
      v62 = v56 + 4;
      *(a1 + 6) = v62;
      LOBYTE(ptr[1]) = *(v61 + v60);
      if (*(a1 + 5) - v62 <= 1)
      {
        *(a1 + 15) = 1;
        goto LABEL_114;
      }

      WORD1(v122) = *(*a1 + v62);
      v63 = v62 + 2;
      *(a1 + 6) = v62 + 2;
      if (*(a1 + 5) <= (v62 + 2))
      {
        *(a1 + 15) = 1;
        goto LABEL_115;
      }

      v64 = *a1;
      v65 = v62 + 3;
      *(a1 + 6) = v65;
      BYTE4(v122) = *(v64 + v63);
      if (*(a1 + 5) - v65 >= 6)
      {
        sub_1000075EC(&v122 + 5, *a1 + v65, 6uLL);
        *(a1 + 6) += 6;
        goto LABEL_117;
      }

LABEL_116:
      *(a1 + 15) = 1;
LABEL_117:
      if (!v116)
      {
        goto LABEL_137;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 123, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
LABEL_123:
        *(a1 + 15) = 1;
        v74 = LOWORD(size[1]);
        goto LABEL_124;
      }

      v72 = *(a1 + 6);
      if (*(a1 + 5) <= v72)
      {
        goto LABEL_123;
      }

      v73 = *a1;
      *(a1 + 6) = v72 + 1;
      v74 = *(v73 + v72);
      LOWORD(size[1]) = *(v73 + v72);
LABEL_124:
      v75 = sub_100007618(v74, 0x100004077774924uLL);
      ptr[0] = v75;
      if (v75)
      {
        v76 = LOWORD(size[1]);
        if (LOWORD(size[1]))
        {
          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 126, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          v77 = v75;
          v78 = *a1;
          v79 = *(a1 + 6);
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
            v80 = 0;
          }

          else
          {
            v80 = *(a1 + 5) - v79;
          }

          if (v80 >= LOWORD(size[1]))
          {
            v81 = (v78 + v79);
            v82 = &v77[v76];
            do
            {
              v83 = *v81++;
              *v77++ = v83;
            }

            while (v77 < v82);
            *(a1 + 6) += LOWORD(size[1]);
          }

          else
          {
            *(a1 + 15) = 1;
          }

          v5 = v112;
          a2 = v113;
        }
      }

LABEL_137:
      if (!v18)
      {
        goto LABEL_148;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 131, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v84 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v84 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 132, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_146;
      }

      v85 = *(a1 + 6);
      if (*(a1 + 5) <= v85)
      {
        *(a1 + 15) = 1;
LABEL_146:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        goto LABEL_147;
      }

      v86 = *a1;
      *(a1 + 6) = v85 + 1;
      BYTE1(size[0]) = *(v86 + v85);
      if (*(a1 + 5) - (v85 + 1) >= 6)
      {
        sub_1000075EC(size + 2, *a1 + (v85 + 1), 6uLL);
        *(a1 + 6) += 6;
        goto LABEL_148;
      }

LABEL_147:
      *(a1 + 15) = 1;
LABEL_148:
      if (!v115)
      {
        goto LABEL_190;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 142, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v87 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v87 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 143, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_161:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        v95 = *(a1 + 14);
LABEL_162:
        *(a1 + 15) = 1;
        if (v114)
        {
          if (v95 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 145, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
          v95 = *(a1 + 14);
LABEL_165:
          *(a1 + 15) = 1;
        }

        if (v95 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 147, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        goto LABEL_168;
      }

      v88 = *(a1 + 6);
      if (*(a1 + 5) <= v88)
      {
        *(a1 + 15) = 1;
        goto LABEL_161;
      }

      v89 = *a1;
      *(a1 + 6) = v88 + 1;
      BYTE8(v124) = *(v89 + v88);
      if (*(a1 + 5) <= (v88 + 1))
      {
        v95 = 1;
        goto LABEL_162;
      }

      v90 = *a1;
      *(a1 + 6) = v88 + 2;
      BYTE9(v124) = *(v90 + v88 + 1);
      if (v114)
      {
        v91 = *(a1 + 6);
        if (*(a1 + 5) <= v91)
        {
          v95 = 1;
          goto LABEL_165;
        }

        v92 = *a1;
        *(a1 + 6) = v91 + 1;
        BYTE10(v124) = *(v92 + v91);
      }

      v93 = *(a1 + 6);
      if (*(a1 + 5) - v93 >= 2)
      {
        WORD6(v124) = *(*a1 + v93);
        *(a1 + 6) = v93 + 2;
        v94 = 1;
        goto LABEL_169;
      }

LABEL_168:
      v94 = 0;
      *(a1 + 15) = 1;
LABEL_169:
      if (v5 <= 0x7CE)
      {
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 152, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (v94)
        {
          v96 = *(a1 + 6);
          if (*(a1 + 5) > v96)
          {
            v97 = *a1;
            *(a1 + 6) = v96 + 1;
            v98 = *(v97 + v96);
            LOWORD(size[1]) = *(v97 + v96);
LABEL_176:
            v99 = sub_100007618(v98, 0x100004077774924uLL);
            ptr[0] = v99;
            if (v99)
            {
              v100 = LOWORD(size[1]);
              if (LOWORD(size[1]))
              {
                if (*(a1 + 14) != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 155, "(*pData).__RWFlag == BYTESTREAM_READ");
                }

                v101 = v99;
                v102 = *a1;
                v103 = *(a1 + 6);
                if (*(a1 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
                  v104 = 0;
                }

                else
                {
                  v104 = *(a1 + 5) - v103;
                }

                if (v104 >= LOWORD(size[1]))
                {
                  v105 = (v102 + v103);
                  v106 = &v101[v100];
                  do
                  {
                    v107 = *v105++;
                    *v101++ = v107;
                  }

                  while (v101 < v106);
                  *(a1 + 6) += LOWORD(size[1]);
                }

                else
                {
                  *(a1 + 15) = 1;
                }

                v5 = v112;
                a2 = v113;
              }
            }

            goto LABEL_190;
          }
        }

        else
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
        }

        *(a1 + 15) = 1;
        v98 = LOWORD(size[1]);
        goto LABEL_176;
      }

LABEL_190:
      sub_100008150(size);
      if (ptr[0])
      {
        sub_10000C1E8(ptr[0]);
      }

      ++v11;
    }

    while (v11 != v118);
  }
}

uint64_t sub_1002ED79C(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    v2 = 0;
LABEL_4:
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("BT_VSE_LE_CIS_FLUSH_OCCURRED - Invalid data size %lu", v4, v5, v6, v7, v8, v9, v10, v2);
    v11 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_31:
    sub_10080F7A0();
    return 0;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if ((v2 - 215) <= 0xFFFFFFFFFFFFFF3BLL)
  {
    goto LABEL_4;
  }

  *(a2 + 304) = 0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    goto LABEL_47;
  }

  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  if (v12 <= v13)
  {
LABEL_47:
    v38 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_49;
  }

  if (*(a1 + 14) != 1)
  {
    v38 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_49:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 173, v38);
  }

  v14 = *a1;
  *(a1 + 6) = v13 + 1;
  *a2 = *(v14 + v13);
  if (v12 - (v13 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 174, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v14 + v13 + 1);
  *(a1 + 6) = v13 + 3;
  if ((v12 - (v13 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 175, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v14 + (v13 + 3));
  *(a1 + 6) = v13 + 5;
  if (v12 <= (v13 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 176, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v15 = v13 + 6;
  *(a1 + 6) = v13 + 6;
  v16 = *(v14 + (v13 + 5));
  *(a2 + 6) = v16;
  v17 = v12 - v15;
  if ((v16 - 1) <= 0xF && v17 == 13 * v16)
  {
    v18 = (a2 + 136);
    v19 = (a2 + 296);
    while (!*(a1 + 15))
    {
      v20 = *(a1 + 5);
      v21 = *(a1 + 6);
      if ((v20 - v21) <= 4)
      {
        goto LABEL_44;
      }

      if (*(a1 + 14) != 1)
      {
        v37 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_45;
      }

      v22 = *a1;
      *(v18 - 16) = *(*a1 + v21) | (*(*a1 + v21 + 4) << 32);
      *(a1 + 6) = v21 + 5;
      if ((v20 - (v21 + 5)) <= 4)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 185, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
      }

      *v18 = *(v22 + (v21 + 5)) | (*(v22 + (v21 + 5) + 4) << 32);
      *(a1 + 6) = v21 + 10;
      if (v20 <= (v21 + 10))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 186, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *(a1 + 6) = v21 + 11;
      *(v19 - 32) = *(v22 + (v21 + 10));
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
LABEL_38:
        v36 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_39:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 187, v36);
      }

      v23 = *(a1 + 6);
      if (*(a1 + 5) <= v23)
      {
        goto LABEL_38;
      }

      if (*(a1 + 14) != 1)
      {
        v36 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_39;
      }

      v24 = *a1;
      *(a1 + 6) = v23 + 1;
      *(v19 - 16) = *(v24 + v23);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
LABEL_34:
        v35 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_35:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 188, v35);
      }

      v25 = *(a1 + 6);
      if (*(a1 + 5) <= v25)
      {
        goto LABEL_34;
      }

      if (*(a1 + 14) != 1)
      {
        v35 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_35;
      }

      v26 = *a1;
      *(a1 + 6) = v25 + 1;
      *v19++ = *(v26 + v25);
      ++v18;
      if (!--v16)
      {
        return 1;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
LABEL_44:
    v37 = "ByteStream_NumReadBytesAvail(*pBs) >= 5";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 184, v37);
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("BT_VSE_LE_CIS_FLUSH_OCCURRED - Invalid data size for entries %lu", v27, v28, v29, v30, v31, v32, v33, v17);
    v34 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_1002EDC0C(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    v2 = 0;
    goto LABEL_13;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if (v2 != 135)
  {
LABEL_13:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("BT_VSE_LE_CIS_TIMEOUT_STATS - Invalid data size %lu", v9, v10, v11, v12, v13, v14, v15, v2);
      v16 = sub_10000C050(0x54u);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }

    return result;
  }

  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    goto LABEL_18;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v4 <= v5)
  {
LABEL_18:
    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a1 + 14) != 1)
  {
    v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 200, v17);
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  *a2 = *(v6 + v5);
  if (v4 - (v5 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 201, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if ((v4 - (v5 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 202, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v6 + (v5 + 3));
  *(a1 + 6) = v5 + 5;
  if ((v4 - (v5 + 5)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 203, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 8) = *(v6 + (v5 + 5)) | (*(v6 + (v5 + 5) + 4) << 32);
  *(a1 + 6) = v5 + 10;
  if ((v4 - (v5 + 10)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 204, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 16) = *(v6 + (v5 + 10)) | (*(v6 + (v5 + 10) + 4) << 32);
  v7 = v5 + 15;
  *(a1 + 6) = v7;
  if (v4 - v7 <= 0x77)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 205, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(LeCisTimeoutStatsVSECounters))");
  }

  memmove((a2 + 24), (v6 + v7), 0x78uLL);
  *(a1 + 6) += 120;
  return 1;
}

uint64_t sub_1002EDE84(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    v2 = 0;
    goto LABEL_14;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if (v2 != 140)
  {
LABEL_14:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("BT_VSE_LE_CIS_LINK_QUALITY_STATS - Invalid data size %lu", v10, v11, v12, v13, v14, v15, v16, v2);
      v17 = sub_10000C050(0x54u);
      result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }

    return result;
  }

  *(a2 + 144) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c");
    goto LABEL_19;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v4 <= v5)
  {
LABEL_19:
    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a1 + 14) != 1)
  {
    v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 217, v18);
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  *a2 = *(v6 + v5);
  if (v4 - (v5 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 218, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if ((v4 - (v5 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 219, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v6 + (v5 + 3));
  *(a1 + 6) = v5 + 5;
  if ((v4 - (v5 + 5)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 220, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 8) = *(v6 + (v5 + 5)) | (*(v6 + (v5 + 5) + 4) << 32);
  *(a1 + 6) = v5 + 10;
  if ((v4 - (v5 + 10)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 221, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 16) = *(v6 + (v5 + 10)) | (*(v6 + (v5 + 10) + 4) << 32);
  v7 = v5 + 15;
  *(a1 + 6) = v5 + 15;
  if (v4 <= (v5 + 15))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 222, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = v5 + 16;
  *(a1 + 6) = v8;
  *(a2 + 24) = *(v6 + v7);
  if (v4 - v8 <= 0x7B)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 223, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(LeCisLinkQualityStatsCountersV1))");
  }

  memmove((a2 + 25), (v6 + v8), 0x7CuLL);
  *(a1 + 6) += 124;
  return 1;
}

uint64_t sub_1002EE134(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2 == 1 || a2 >= 0x3E)
  {
    sub_1000D660C();
  }

  if (*qword_100BCE1F8)
  {
    v4 = 0;
    v5 = qword_100B6B4E8 - 88;
    while (1)
    {
      v5 += 88;
      if (v5 == a1)
      {
        break;
      }

      if (*qword_100BCE1F8 == ++v4)
      {
        goto LABEL_10;
      }
    }

    return (a2 | (v4 << 8));
  }

  else
  {
LABEL_10:
    sub_1000D660C();
    return 0;
  }
}

uint64_t sub_1002EE1C0(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v6 = (a1 + 16);
  while (1)
  {
    v6 = *v6;
    if (!v6 || v6 == (a1 + 16))
    {
      break;
    }

    if (*(v6 - 134) == a2)
    {
      result = 0;
      *a3 = v6 - 18;
      return result;
    }
  }

  return 912;
}

uint64_t sub_1002EE258(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 < 2)
  {
    return 121;
  }

  v4 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 121;
  }

  for (i = (qword_100B6B4F8 + 24); *(i + 2) != a2 >> 1; i += 28)
  {
    if (!--v4)
    {
      return 121;
    }
  }

  result = sub_1002EE324(a1, a2, a3);
  if (!result)
  {
    v8 = *a3;
    *(v8 + 20) = 1;
    *(v8 + 40) = *(i - 1);
    v9 = *a3;
    *(*a3 + 160) = i[8];
    v10 = *i;
    if (v10 >= *(a1 + 4))
    {
      LOWORD(v10) = *(a1 + 4);
    }

    *(v9 + 16) = v10;
    *(v9 + 48) = *(i + 3);
  }

  return result;
}

uint64_t sub_1002EE324(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v6 = (a1 + 16);
  while (1)
  {
    v6 = *v6;
    if (!v6 || v6 == (a1 + 16))
    {
      break;
    }

    if (*(v6 - 134) == a2)
    {
      return 911;
    }
  }

  v9 = sub_1001BBBD8(0xA8uLL, 0x10E0040432F2197uLL);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  v9[20] = 0;
  *(v9 + 4) = sub_1002EE134(a1, a2);
  *(v10 + 16) = a1;
  v10[10] = a2;
  *(v10 + 11) = 0;
  *(v10 + 8) = 127;
  *(v10 + 6) = 140;
  *(v10 + 13) = 0;
  *(v10 + 81) = 0;
  *(v10 + 22) = 50544511;
  *(v10 + 30) = 16847633;
  *(v10 + 14) = 0;
  sub_1003051F4(v10 + 18, a1 + 16);
  result = 0;
  *a3 = v10;
  return result;
}

void sub_1002EE438(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    sub_1000D660C();
    v2 = *(a1 + 128);
  }

  if (*(v2 + 81) == *(a1 + 10) && *(v2 + 72))
  {
    sub_10029F2B4(*(v2 + 2));
  }

  if (*(a1 + 96) == 1)
  {
    *(a1 + 96) = 0;
    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 88) = 0;
      (*(a1 + 80))(*(a1 + 8), v3, 143);
    }
  }

  v4 = *(a1 + 128);
  v7 = *(v4 + 56);
  v6 = (v4 + 56);
  v5 = v7;
  if (v7 != v6)
  {
    do
    {
      v8 = *v5;
      if (*(v5 - 7) == *(a1 + 10))
      {
        sub_100305208(v5);
        sub_1000BB9CC(*(v5 - 2));
        if (*(v5 - 8) == 1)
        {
          sub_1002F0938(a1, 143);
        }

        sub_10000C1E8(v5 - 2);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }
}

void sub_1002EE524(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 128);
  if (!v4)
  {
    sub_1000D660C();
    v4 = *(a1 + 128);
  }

  sub_100306190(*(a1 + 56));
  sub_100305208((a1 + 144));
  v5 = *(a1 + 136);
  if (v5)
  {
    sub_10002242C(v5);
    *(a1 + 136) = 0;
  }

  sub_1002EE438(a1);
  sub_1002F1B10(a1);
  if (a2 && *(v4 + 16) == v4 + 16)
  {
    sub_1002EE5D0(v4, 0, *(a1 + 164));
  }

  sub_10000C1E8(a1);
}

uint64_t sub_1002EE5D0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Shutting down session to %:", v6, v7, v8, v9, v10, v11, v12, (a1 + 6));
    v13 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v14 = *a1;
  if (!a2)
  {
    if (v14 != 9)
    {
      *a1 = 9;
      v15 = sub_1002F20AC(67, a1, 0);
      goto LABEL_12;
    }

    return 116;
  }

  if (v14 == 10)
  {
    return 116;
  }

  *a1 = 10;
  v15 = sub_10029104C(*(a1 + 1), a3);
LABEL_12:
  if (v15)
  {
    sub_1002EE888(a1, v15, 1);
  }

  return 0;
}

uint64_t sub_1002EE718(int a1)
{
  if (!dword_100BCE2F8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Rfcomm_GetSessionByCID", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    return 0;
  }

  v1 = *qword_100BCE1F8;
  if (!*qword_100BCE1F8)
  {
    return 0;
  }

  for (result = qword_100B6B4E8; !*result || *(result + 2) != a1; result += 88)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EE7C8(uint64_t a1)
{
  if (!dword_100BCE2F8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Rfcomm_GetSessionByAddr", v5, v6, v7, v8, v9, v10, v11, v13);
      v12 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    return 0;
  }

  v1 = *qword_100BCE1F8;
  if (!*qword_100BCE1F8)
  {
    return 0;
  }

  for (result = qword_100B6B4E8; ; result += 88)
  {
    if (*result)
    {
      if (*a1 == *(result + 6) && *(a1 + 4) == *(result + 10))
      {
        break;
      }
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002EE888(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!*a1)
  {
    sub_1000D660C();
  }

  sub_1002F39C8(a1);
  sub_1002F3A04(a1);
  sub_1002F1EC8(a1);
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6 == (a1 + 16))
  {
LABEL_30:
    *a1 = 0;
    sub_1002F39C8(a1);
    sub_1002F3A04(a1);
    sub_1002F1EC8(a1);
    sub_1002EED2C();
    v28 = qword_100B6B4F0;
    if (qword_100B6B4F0)
    {
      do
      {
        v29 = *(v28 + 3);
        if (v29)
        {
          v29(*v28, a2);
        }

        else
        {
          v30 = *(v28 + 2);
          if (v30)
          {
            v30(*v28, 0, a2);
          }
        }

        v28 = *(qword_100B6B4F0 + 32);
        sub_10000C1E8(qword_100B6B4F0);
        qword_100B6B4F0 = v28;
      }

      while (v28);
    }

    qword_100B6B4F0 = 0;
    return;
  }

  v32 = 0;
  v33 = *(a1 + 82);
  v31 = 136446466;
  v7 = (a1 + 16);
  do
  {
    while (1)
    {
      v8 = v6 - 18;
      *(v6 + 5) = a2;
      v9 = *(v6 - 131);
      if (v9 > 1 || (a3 & 1) != 0 || (*(v6 - 124) & 1) != 0 || (v33 & 0x80000000) == 0)
      {
        break;
      }

      *(v6 - 131) = 0;
      *(v6 - 7) = 0;
      v32 = 1;
      *(v6 - 111) = 1;
      *(v6 - 63) = 0;
      *(v6 - 22) = 0;
      sub_1002F1B10((v6 - 18));
      v7 = *v7;
      v6 = *v7;
      if (*v7 == v5)
      {
        goto LABEL_29;
      }
    }

    if (v9 - 5 >= 4)
    {
      if (v9 == 9)
      {
        sub_1002EE524(v6 - 18, 0);
        goto LABEL_24;
      }

      v11 = 0;
      *(v6 - 131) = 9;
      v10 = *(v6 - 9);
    }

    else
    {
      *(v6 - 131) = 9;
      sub_1002EE438((v6 - 18));
      v10 = 0;
      v11 = **(v6 - 13);
    }

    v12 = *(v6 - 18);
    v13 = *(a1 + 10);
    v14 = *(a1 + 6);
    v15 = *(v6 - 68);
    sub_1002EE524(v8, 0);
    v16 = sub_100007618(0x28uLL, 0x10A0040C7231A41uLL);
    if (v16)
    {
      *v16 = v15;
      *(v16 + 2) = v14;
      *(v16 + 3) = (v14 | (v13 << 32)) >> 32;
      *(v16 + 1) = v12;
      *(v16 + 2) = v10;
      *(v16 + 3) = v11;
      *(v16 + 4) = 0;
      v17 = qword_100B6B4F0;
      if (qword_100B6B4F0)
      {
        do
        {
          v18 = v17;
          v17 = *(v17 + 32);
        }

        while (v17);
        *(v18 + 32) = v16;
      }

      else
      {
        qword_100B6B4F0 = v16;
      }
    }

    else
    {
      sub_1000D660C();
      if (sub_10000C240())
      {
        sub_10000AF54("Alloc RFCOMM link cache failed!", v19, v20, v21, v22, v23, v24, v25, v31);
        v26 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = sub_10000C0FC();
          *buf = v31;
          v36 = v27;
          v37 = 1024;
          v38 = 104;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }
    }

LABEL_24:
    v6 = *v5;
    v7 = (a1 + 16);
  }

  while (*v5 != v5);
  if ((v32 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  ++*(a1 + 82);
  *a1 = 1;
  sub_1002EEBC0(a1, *(a1 + 4));
}

uint64_t sub_1002EEBC0(uint64_t a1, unsigned int a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_1003045A0(0x28u);
  v18 = 327745535;
  v19 = 776;
  if (a2 <= 0x7F)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  v5 = v4 + a2;
  v17 = v5;
  if (v5 > 0x80u)
  {
    if (*(sub_1003045A0(0x28u) + 8) >= v5)
    {
      goto LABEL_9;
    }

    v6 = *(sub_1003045A0(0x28u) + 8);
  }

  else
  {
    v6 = 128;
  }

  v17 = v6;
LABEL_9:
  *(a1 + 12) = 1;
  *(a1 + 32) = 0;
  v7 = sub_10028F454(sub_1002F0808, sub_1002F0EF4, sub_1002F077C, 3, a1 + 6, &v17, (a1 + 2), &unk_1008A50D0);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP_CreateConnection failed with result %!", v8, v9, v10, v11, v12, v13, v14, v7);
      v15 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002EE888(a1, v7, 1);
  }

  else
  {
    *a1 = 2;
  }

  return v7;
}

void sub_1002EED2C()
{
  v0 = qword_100B6B500;
  if (qword_100B6B500 || (sub_1000D660C(), (v0 = qword_100B6B500) != 0))
  {
    if ((*v0)-- == 1)
    {

      sub_1002EFB28();
    }
  }
}

uint64_t sub_1002EED8C(uint64_t a1, __int16 a2, uint64_t *a3)
{
  v9 = 0;
  result = sub_1002EEDF8(a1, &v9);
  if (!result)
  {
    v7 = v9;
    v8 = *(a1 + 4);
    *(v9 + 6) = *a1;
    *(v7 + 10) = v8;
    *(v7 + 12) = 0;
    *(v7 + 32) = 0;
    *(v7 + 2) = a2;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1002EEDF8(uint64_t a1, uint64_t *a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!*qword_100BCE1F8)
  {
    return 104;
  }

  v3 = 0;
  v4 = qword_100B6B4E8;
  do
  {
    *a2 = v4;
    if (*v4)
    {
      if (*a1 == *(v4 + 6) && *(a1 + 4) == *(v4 + 10))
      {
        return 909;
      }
    }

    ++v3;
    v6 = *qword_100BCE1F8;
    v4 += 88;
  }

  while (v3 < v6);
  if (!*qword_100BCE1F8)
  {
    return 104;
  }

  for (i = qword_100B6B4E8; *i; i += 88)
  {
    if (!--v6)
    {
      return 104;
    }
  }

  *i = 0u;
  *(i + 80) = 0;
  *(i + 48) = 0u;
  *(i + 64) = 0u;
  *(i + 32) = 0u;
  *(i + 16) = 0u;
  *i = 1;
  *(i + 44) = 257;
  sub_1003051D8((i + 56));
  sub_1003051D8((i + 16));
  result = 0;
  *(i + 82) = 0;
  *a2 = i;
  ++*qword_100B6B500;
  return result;
}

uint64_t sub_1002EEF20(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 13))
  {
    sub_1000D660C();
  }

  v2 = sub_1002F1A00(a1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("DLCI: %d", v4, v5, v6, v7, v8, v9, v10, *(a1 + 10));
      v11 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v3;
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 128);
    if (v13 >= *(v14 + 4))
    {
      LOWORD(v13) = *(v14 + 4);
    }

    *(a1 + 16) = v13;
    v15 = *(a1 + 48);

    return sub_100305BDC(sub_1002EF014, v14 + 6, v15, (a1 + 56), 0);
  }
}

void sub_1002EF014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002F0620(a1);
  if (v4)
  {
    v5 = v4;
    if (a2 || (a2 = sub_1002F3A7C(v4[16], 1, *(v4 + 10), 0, *(v4 + 8), *(v4 + 14)), a2))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("connection failed", v6, v7, v8, v9, v10, v11, v12, v14);
        v13 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      *(v5 + 41) = a2;
      (v5[9])(*(v5 + 4), 0, a2);
      sub_1002EE524(v5, 1);
    }
  }

  else
  {

    sub_100306190(a1);
  }
}

uint64_t sub_1002EF100()
{
  v0 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 0;
  }

  LOWORD(result) = 0;
  v2 = (qword_100B6B4F8 + 24);
  do
  {
    v4 = *v2;
    v2 += 28;
    v3 = v4;
    if (v4 <= result)
    {
      result = result;
    }

    else
    {
      result = v3;
    }

    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1002EF144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 121;
  }

  v2 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 121;
  }

  for (i = (qword_100B6B4F8 + 26); *i != a2; i += 56)
  {
    if (!--v2)
    {
      return 121;
    }
  }

  (*(i - 18))();
  return 0;
}

uint64_t sub_1002EF1B0(unsigned int a1, void *a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (a1 >> 8 >= *qword_100BCE1F8)
  {
    return 916;
  }

  v2 = (qword_100B6B4E8 + 88 * (a1 >> 8));
  if (!*v2)
  {
    return 916;
  }

  result = sub_1002EE1C0(v2, a1, a2);
  if (!result)
  {
    if (*(*a2 + 13) == 9)
    {
      return 927;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EF24C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5, uint64_t a6)
{
  if (dword_100BCE2F8 || (v14 = sub_1002EF3EC(), !v14))
  {
    ++*qword_100B6B500;
    v13 = a4 < a3 && a4 != 0;
    v14 = 101;
    if (a3 && !v13 && a1 && a2)
    {
      v15 = *(qword_100BCE1F8 + 1);
      if (*(qword_100BCE1F8 + 1))
      {
        v16 = 0;
        v17 = 0;
        v18 = qword_100B6B4F8;
        do
        {
          if (*(v18 + 26))
          {
            v16 |= 1 << *(v18 + 26);
          }

          else if (!v17)
          {
            *(v18 + 24) = a3;
            v17 = v18;
          }

          v18 += 56;
          --v15;
        }

        while (v15);
        if (v17)
        {
          v19 = *a5;
          if ((v19 - 1) >= 0x1E)
          {
            v20 = 1;
          }

          else
          {
            v20 = *a5;
          }

          do
          {
            if (((v16 >> v20) & 1) == 0)
            {
              v14 = 0;
              *(v17 + 8) = a1;
              *(v17 + 16) = a2;
              *(v17 + 24) = a3;
              *(v17 + 40) = a4 / a3;
              *(v17 + 48) = a6;
              *(v17 + 26) = v20;
              *a5 = v20;
              return v14;
            }

            v20 = v20 % 0x1E + 1;
          }

          while (v20 != v19);
          if (sub_10000C240())
          {
            sub_10000AF54("No free channel numbers", v21, v22, v23, v24, v25, v26, v27, v30);
            v28 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_100815984();
            }
          }
        }
      }

      v14 = 104;
    }

    sub_1002EED2C();
  }

  return v14;
}

uint64_t sub_1002EF3EC()
{
  if (dword_100BCE2F8)
  {
    sub_1000D660C();
  }

  v0 = sub_1003045A0(0x32u);
  qword_100BCE1F8 = v0;
  if (!v0)
  {
    sub_1000D660C();
    v0 = qword_100BCE1F8;
    if (!qword_100BCE1F8)
    {
      return 127;
    }
  }

  qword_100B6B4F0 = 0;
  qword_100B6B4E8 = 0;
  qword_100B6B4F8 = 0;
  qword_100B6B500 = 0;
  qword_100B6B4E8 = sub_1001BBBD8(88 * *v0, 0x10A004017A26594uLL);
  if (!qword_100B6B4E8 || (qword_100B6B4F8 = sub_1001BBBD8(56 * *(qword_100BCE1F8 + 1), 0x10F0040A30AD163uLL)) == 0)
  {
    v2 = 106;
LABEL_11:
    if (qword_100B6B500)
    {
      sub_10000C1E8(qword_100B6B500);
      qword_100B6B500 = 0;
    }

    goto LABEL_15;
  }

  v1 = sub_1001BBBD8(4uLL, 0x100004052888210uLL);
  qword_100B6B500 = v1;
  if (v1)
  {
    *v1 = 0;
    v2 = sub_1002967FC(3, sub_1002F0D20);
    if (!v2)
    {
      dword_100BCE2F8 = 1;
      return v2;
    }

    goto LABEL_11;
  }

  v2 = 106;
LABEL_15:
  if (qword_100B6B4F8)
  {
    sub_10000C1E8(qword_100B6B4F8);
    qword_100B6B4F8 = 0;
  }

  if (qword_100B6B4E8)
  {
    sub_10000C1E8(qword_100B6B4E8);
    qword_100B6B4E8 = 0;
  }

  return v2;
}

uint64_t sub_1002EF558(int a1)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if ((a1 - 31) < 0xFFFFFFE2)
  {
    return 101;
  }

  v2 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 120;
  }

  for (i = (qword_100B6B4F8 + 26); *i != a1; i += 56)
  {
    if (!--v2)
    {
      return 120;
    }
  }

  if (*qword_100BCE1F8)
  {
    v4 = 0;
    do
    {
      v5 = qword_100B6B4E8 + 88 * v4;
      if (*v5)
      {
        v8 = *(v5 + 16);
        v6 = (v5 + 16);
        for (j = v8; j && j != v6; j = *j)
        {
          if (*(j - 124) == 1 && *(j - 131) != 9 && a1 == *(j - 134) >> 1)
          {
            return 141;
          }
        }
      }

      ++v4;
    }

    while (v4 != *qword_100BCE1F8);
  }

  *i = 0;
  *(i - 1) = 0;
  sub_1002EED2C();
  return 0;
}

uint64_t sub_1002EF664(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (*(a3 + 1) || *(a3 + 6))
  {
    sub_1000D660C();
  }

  v8 = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return 101;
  }

  v23 = 0;
  v9 = sub_1002EF1B0(a2, &v23);
  if (!v9)
  {
    v10 = v23;
    if (*(v23 + 88))
    {
      return 901;
    }

    else
    {
      v12 = *(v23 + 16);
      if (v8 <= v12 || a4)
      {
        *(v23 + 80) = a1;
        *(v10 + 88) = a3;
        sub_100305614(a3, v12);
        v13 = sub_1002F199C(v23);
        v14 = v23;
        if (v13)
        {
          *(v23 + 96) = 0;
          v9 = sub_1002F238C(*(v14 + 128), *(v14 + 10), a3, 0, 1);
          if (v9)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("DLCI: %d", v15, v16, v17, v18, v19, v20, v21, *(v23 + 10));
              v22 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_100814348();
              }
            }

            *(v23 + 88) = 0;
          }
        }

        else
        {
          v9 = 0;
          *(v23 + 96) = 1;
        }
      }

      else
      {
        return 918;
      }
    }
  }

  return v9;
}

uint64_t sub_1002EF7E0(uint64_t a1, unsigned int a2, char *a3, size_t a4, int a5, int a6)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (a1)
  {
    v7 = 101;
    if (a3 && a4)
    {
      v10 = sub_1003053B4(a3, a4, a6);
      if (v10)
      {
        v11 = v10;
        *(v10 + 1) = a1;
        v7 = sub_1002EF664(sub_1002F0700, a2, v10, a5);
        if (v7)
        {
          sub_1000BB9CC(v11);
        }
      }

      else
      {
        return 106;
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v7;
}

uint64_t sub_1002EF8BC(uint64_t a1, void *a2, uint64_t a3, char a4, unsigned int a5, unsigned int a6, _WORD *a7, uint64_t a8)
{
  v40 = 0;
  if (!dword_100BCE2F8)
  {
    v18 = sub_1002EF3EC();
    if (v18)
    {
      return v18;
    }
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (!a2[1])
  {
    sub_1000D660C();
    if (!a2[1])
    {
      return 101;
    }
  }

  if (!*a2)
  {
    sub_1000D660C();
    if (!*a2)
    {
      return 101;
    }
  }

  if (!a1 || !a3)
  {
LABEL_19:
    sub_1000D660C();
    return 101;
  }

  v39 = *qword_100B6B500;
  v17 = a6 < a5 && a6 != 0;
  v18 = 101;
  if (!a5 || v17)
  {
    goto LABEL_34;
  }

  if ((a4 - 31) < 0xE2u)
  {
    v18 = 910;
    goto LABEL_34;
  }

  v41 = sub_1002EE7C8(a3);
  v20 = v41;
  v38 = v41;
  if (!v41)
  {
    v23 = sub_1002EEDF8(a3, &v41);
    if (v23)
    {
      goto LABEL_33;
    }

    v27 = *(a3 + 4);
    v28 = *a3;
    v29 = v41;
    *(v41 + 6) = v28;
    *(v29 + 10) = v27;
    v23 = sub_1002EEBC0(v29, a5);
    if (v23)
    {
      goto LABEL_33;
    }

    v20 = v29;
  }

  v21 = ((*(v20 + 12) & 1) == 0) | (2 * (a4 & 0x7F));
  v22 = v20;
  v23 = sub_1002EE324(v20, v21, &v40);
  if (v23)
  {
LABEL_33:
    v18 = v23;
LABEL_34:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_Connect failed", v30, v31, v32, v33, v34, v35, v36, v38);
      v37 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    if (dword_100BCE2F8)
    {
      if (*qword_100B6B500 <= v39)
      {
        if (!*qword_100B6B500)
        {
          sub_1002EFB28();
        }
      }

      else
      {
        sub_1002EED2C();
      }
    }

    return v18;
  }

  v24 = v22;
  v25 = v40;
  *(v40 + 72) = a1;
  *(v25 + 40) = a2;
  *(v25 + 16) = a5;
  if (a7)
  {
    *a7 = *(v25 + 8);
  }

  *(v25 + 160) = a6 / a5;
  *(v25 + 48) = a8;
  if (!v38 || *v24 != 7)
  {
    return 0;
  }

  v26 = sub_1002EEF20(v25);
  v18 = v26;
  if (v26)
  {
    *(v25 + 164) = v26;
    sub_1002EE524(v25, 1);
  }

  return v18;
}

void sub_1002EFB28()
{
  if (dword_100BCE2F8 != 1)
  {
    sub_1000D660C();
  }

  v0 = sub_1002969F8(3);
  if (v0)
  {
    sub_1000C52F4(v0);
    sub_1002EFBAC();
  }

  else
  {
    if (qword_100B6B500)
    {
      sub_10000C1E8(qword_100B6B500);
      qword_100B6B500 = 0;
    }

    if (qword_100B6B4F8)
    {
      sub_10000C1E8(qword_100B6B4F8);
      qword_100B6B4F8 = 0;
    }

    if (qword_100B6B4E8)
    {
      sub_10000C1E8(qword_100B6B4E8);
      qword_100B6B4E8 = 0;
    }

    dword_100BCE2F8 = 0;
  }
}

uint64_t sub_1002EFBAC(uint64_t a1, unsigned int a2, int a3)
{
  v19 = 0;
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!a1 && a3)
  {
    sub_1000D660C();
    return 101;
  }

  v6 = sub_1002EF1B0(a2, &v19);
  if (v6)
  {
    v5 = v6;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_Accept - linkhandle %d not found", v7, v8, v9, v10, v11, v12, v13, v19);
      v14 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v5;
  }

  v15 = v19;
  if (*(v19 + 13) != 3)
  {
    return 408;
  }

  *(v19 + 72) = a1;
  v16 = *(v15 + 128);
  if (a3)
  {
    return sub_100305BDC(sub_1002EFD00, v16 + 6, *(v15 + 48), (v15 + 56), 1);
  }

  v5 = sub_1002F20AC(15, v16, *(v15 + 10));
  v18 = v19;
  if (v5)
  {
    *(v19 + 164) = v5;
    sub_1002EE524(v18, 1);
  }

  else
  {
    if (!v19)
    {
      sub_1000D660C();
      v18 = v19;
    }

    v5 = 0;
    *(v18 + 13) = 9;
  }

  return v5;
}

void sub_1002EFD00(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1002F0620(a1);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      if (sub_10000C240())
      {
        v15 = "";
        if (a3)
        {
          v15 = "Security failure, ";
        }

        sub_10000AF54("Policy enforcement failed, %s disconnecting ", v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      *(v7 + 13) = 9;
      *(v7 + 164) = a2;
      (*(v7 + 72))(*(v7 + 8), 0, a2);
      v17 = sub_1002F20AC(15, *(v7 + 128), *(v7 + 10));
      if (v17)
      {
        v18 = v17;
        if (sub_10000C240())
        {
          sub_10000AF54("send DM failed", v19, v20, v21, v22, v23, v24, v25, v40);
          v26 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        *(v7 + 164) = v18;
LABEL_21:
        sub_1002EE524(v7, 1);
      }
    }

    else
    {
      v27 = sub_1002F20AC(99, v6[16], *(v6 + 10));
      if (v27)
      {
        v28 = v27;
        if (sub_10000C240())
        {
          sub_10000AF54("connection failed", v29, v30, v31, v32, v33, v34, v35, v40);
          v36 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        *(v7 + 13) = 9;
        *(v7 + 164) = v28;
        (*(v7 + 72))(*(v7 + 8), 0, v28);
        goto LABEL_21;
      }

      *(v7 + 13) = 4;
      v37 = *(v7 + 128);
      v38 = *(v7 + 10);
      v39 = *(v7 + 12);

      sub_1002F3E34(v37, 1, v38, v39, 0);
    }
  }

  else
  {

    sub_100306190(a1);
  }
}

uint64_t sub_1002EFF1C(unsigned int a1, int a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v2 = a1;
  v7 = 0;
  if (a1 >> 8 >= *qword_100BCE1F8)
  {
    return 916;
  }

  v3 = (qword_100B6B4E8 + 88 * (a1 >> 8));
  if (!*v3)
  {
    return 916;
  }

  result = sub_1002EE1C0(v3, a1, &v7);
  if (!result)
  {
    if (*(v7 + 13) - 6 >= 4)
    {
      *(v7 + 164) = a2;
      result = sub_1002F20AC(67, v3, v2);
      if (!result)
      {
        v6 = v7;
        if (!v7)
        {
          sub_1000D660C();
          v6 = v7;
        }

        result = 0;
        *(v6 + 13) = 6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002F000C(unsigned int a1, uint64_t a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v4 = 0;
  result = sub_1002EF1B0(a1, &v4);
  if (result)
  {
    return 120;
  }

  *v4 = a2;
  return result;
}

uint64_t sub_1002F0070(unsigned int a1, uint64_t a2)
{
  v10 = 0;
  result = sub_1002EF1B0(a1, &v10);
  if (!result)
  {
    v6 = v10;
    if (!v10)
    {
      sub_1000D660C();
      v6 = v10;
    }

    v7 = *(v6 + 128);
    if (v7)
    {
      goto LABEL_12;
    }

    sub_1000D660C();
LABEL_11:
    v7 = *(v10 + 128);
LABEL_12:
    v8 = (v7 + 6);
    goto LABEL_13;
  }

  if (result == 927)
  {
    goto LABEL_11;
  }

  v5 = qword_100B6B4F0;
  if (!qword_100B6B4F0)
  {
    return result;
  }

  while (*v5 != a1)
  {
    v5 = *(v5 + 4);
    if (!v5)
    {
      return result;
    }
  }

  v8 = v5 + 1;
LABEL_13:
  result = 0;
  v9 = *v8;
  *(a2 + 4) = v8[2];
  *a2 = v9;
  return result;
}

uint64_t sub_1002F011C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, unsigned int a6, _WORD *a7, _WORD *a8, uint64_t a9, int a10)
{
  v56 = 0;
  v57 = 0;
  if (!dword_100BCE2F8)
  {
    v19 = sub_1002EF3EC();
    if (v19)
    {
      return v19;
    }
  }

  v18 = sub_1002EEDF8(a3, &v57);
  if (v18)
  {
    v19 = v18;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_createChannelForFastConnect Allocate Session failed", v20, v21, v22, v23, v24, v25, v26, v55[0]);
      v27 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v19;
  }

  v28 = v57;
  v29 = *(a3 + 4);
  v30 = v57;
  *(v57 + 6) = *a3;
  v31 = v30 + 6;
  *(v28 + 10) = v29;
  *(v28 + 32) = 0;
  sub_1003045A0(0x28u);
  if (a5 <= 0x7F)
  {
    v32 = 5;
  }

  else
  {
    v32 = 6;
  }

  v33 = v32 + a5;
  if ((v32 + a5) >= 0x81u)
  {
    if (*(sub_1003045A0(0x28u) + 8) < v33)
    {
      v33 = *(sub_1003045A0(0x28u) + 8);
    }
  }

  else
  {
    v33 = 128;
  }

  LOWORD(v55[0]) = v33;
  *(v55 + 2) = 327745535;
  HIWORD(v55[0]) = 776;
  memset(&v55[1], 0, 24);
  v34 = sub_10028EA9C(3, v55, v31, sub_1002F0808, sub_1002F0EF4, sub_1002F077C, (v28 + 2), &unk_1008A50D0);
  if (v34)
  {
    v19 = v34;
    *v28 = 0;
    if (!sub_10000C240())
    {
      return v19;
    }

    sub_10000AF54("OI_RFCOMM_createChannelForFastConnect create L2CAP channel failed", v35, v36, v37, v38, v39, v40, v41, v55[0]);
    v42 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

    goto LABEL_18;
  }

  *a8 = *(v28 + 2);
  *(v28 + 12) = a10 != 0;
  v43 = (2 * a4);
  if (a10)
  {
    v44 = sub_1002EE324(v28, v43, &v56);
  }

  else
  {
    v44 = sub_1002EE258(v28, v43, &v56);
  }

  v19 = v44;
  *(v28 + 12) = a10 != 0;
  if (v44)
  {
    *v28 = 0;
    if (!sub_10000C240())
    {
      return v19;
    }

    sub_10000AF54("OI_RFCOMM_createChannelForFastConnect allocate link failed", v45, v46, v47, v48, v49, v50, v51, v55[0]);
    v52 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

LABEL_18:
    sub_100814348();
    return v19;
  }

  v53 = v56;
  *(v56 + 72) = a1;
  *(v53 + 40) = a2;
  *(v53 + 16) = a5;
  if (a7)
  {
    *a7 = *(v53 + 8);
  }

  *(v53 + 160) = a6 / a5;
  *(v53 + 48) = a9;
  v19 = sub_1002F1A00(v53);
  *v28 = 7;
  return v19;
}

void sub_1002F03E8(uint64_t a1, unsigned int a2)
{
  v25 = 0;
  if (sub_1000ABC7C(a2, &v25))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_FastConnectSetSessionMaxFrameSize L2CAP signal channel not found", v3, v4, v5, v6, v7, v8, v9, v24);
      v10 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_10080F604();
      }
    }
  }

  else
  {
    v11 = sub_1002EE7C8(a1);
    if (v11)
    {
      v12 = v11;
      v13 = *(sub_1000B12AC(v25) + 32);
      v14 = *(sub_1000B12AC(v25) + 36);
      if (v13 < v14)
      {
        v14 = v13;
      }

      if (v14 >= 0x85)
      {
        v15 = -6;
      }

      else
      {
        v15 = -5;
      }

      *(v12 + 4) = v15 + v14;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_FastConnectSetSessionMaxFrameSize Session not found", v16, v17, v18, v19, v20, v21, v22, v24);
      v23 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }
  }
}

void sub_1002F04F0(uint64_t a1, unsigned int a2)
{
  v4 = sub_1002EE7C8(a1);
  v21 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v4 + 16;
    v7 = (v4 + 16);
    do
    {
      v8 = *v7;
      if (*v7 == v6)
      {
        break;
      }

      *(v8 - 131) = 0;
      sub_1002EE524((v8 - 18), 0);
      v7 = *v7;
    }

    while (v7);
    *v5 = 0;
    sub_1002F39C8(v5);
    sub_1002F3A04(v5);
    sub_1002F1EC8(v5);
    sub_1002EED2C();
    v9 = qword_100B6B4F0;
    if (qword_100B6B4F0)
    {
      do
      {
        v10 = v9[4];
        sub_10000C1E8(v9);
        qword_100B6B4F0 = v10;
        v9 = v10;
      }

      while (v10);
    }

    qword_100B6B4F0 = 0;
  }

  if (a2 && !sub_1000ABC7C(a2, &v21) && v21)
  {
    sub_10028E908(v21);
    v11 = sub_1000E1FE8(a1);
    if (v11)
    {
      sub_1000D27D8(v11);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_destroyChannelForFastConnect NULL Handle", v12, v13, v14, v15, v16, v17, v18, v20);
      v19 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void *sub_1002F0620(int a1)
{
  if (dword_100BCE2F8)
  {
    if (*qword_100BCE1F8)
    {
      v1 = 0;
      do
      {
        if (qword_100B6B4E8)
        {
          v2 = (qword_100B6B4E8 + 88 * v1);
          if (*v2)
          {
            v3 = v2 + 16;
            v4 = v3;
            while (1)
            {
              v4 = *v4;
              if (!v4 || v4 == v3)
              {
                break;
              }

              if (*(v4 - 22) == a1)
              {
                return v4 - 18;
              }
            }
          }
        }

        ++v1;
      }

      while (v1 != *qword_100BCE1F8);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_GetLinkByPolicyHandle", v6, v7, v8, v9, v10, v11, v12, v15);
    v13 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }

  return 0;
}

uint64_t sub_1002F0700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    sub_1000D660C();
    v6 = *(a2 + 8);
  }

  v9 = 0;
  v8 = 0;
  sub_1003052C8(a2, &v9, &v8);
  return v6(a1, v9, v8, a3);
}

void sub_1002F077C(int a1, uint64_t a2, uint64_t a3)
{
  if (dword_100BCE2F8)
  {

    sub_1002F26B8(a1, a2, a3);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", v4, v5, v6, v7, v8, v9, v10, 103);
    v11 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002F0808(int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (dword_100BCE2F8)
  {
    v7 = sub_1002EE718(a1);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    if ((*v7 & 0xFE) != 2)
    {
      sub_1000D660C();
    }

    if (a4)
    {

      sub_1002EE888(v8, a4, 0);
    }

    else
    {
      if (a3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = a3;
      }

      if (v17 >= 0x85)
      {
        v18 = -6;
      }

      else
      {
        v18 = -5;
      }

      *(v8 + 4) = v18 + v17;
      if (*v8 == 2)
      {
        if (sub_1002F20AC(47, v8, 0))
        {
          return;
        }

        v19 = 5;
      }

      else
      {
        v19 = 4;
      }

      *v8 = v19;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", v9, v10, v11, v12, v13, v14, v15, 103);
    v16 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F0938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  sub_1000BC0D0(v4);
  v5 = *(a1 + 80);
  v6 = *(a1 + 8);

  return v5(v6, v4, a2);
}

void sub_1002F0994(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v57 = 0;
  if (!a4 || !sub_10000C240() || (sub_10000AF54("RFCOMM Write failed %!", v7, v8, v9, v10, v11, v12, v13, v4), v14 = sub_10000C050(0x32u), !os_log_type_enabled(v14, OS_LOG_TYPE_ERROR)))
  {
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_10080F7A0();
  if (!a2)
  {
LABEL_5:
    sub_1000D660C();
  }

LABEL_6:
  v15 = sub_1002EE718(a1);
  if (v15)
  {
    v16 = v15;
    if (*(v15 + 72) != a2)
    {
      sub_1000D660C();
    }

    *(v16 + 72) = 0;
    sub_1000BB9CC(a2);
    v17 = *(v16 + 80);
    v18 = *(v16 + 81);
    if (v17 != 1)
    {
      goto LABEL_19;
    }

    v19 = sub_1002EE1C0(v16, *(v16 + 81), &v57);
    if (v19)
    {
      v20 = v19;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v21, v22, v23, v24, v25, v26, v27, v20);
        v28 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }

    if (v4)
    {
      goto LABEL_19;
    }

    if (!sub_100305660(*(v57 + 88), *(v57 + 16)))
    {
      v4 = 0;
LABEL_19:
      if (*(v16 + 56) != v16 + 56)
      {
        v37 = sub_10030528C((v16 + 56));
        v38 = (v37 - 16);
        if (sub_1000B7EDC(sub_1002F0994, *(v16 + 2), 0, *(v37 - 16), 0))
        {
          sub_1000BB9CC(*v38);
          if (sub_10000C240())
          {
            sub_10000AF54("Write failed", v39, v40, v41, v42, v43, v44, v45, v56);
            v46 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        else
        {
          *(v16 + 80) = *(v37 - 8);
          *(v16 + 72) = *(v37 - 16);
        }

        sub_10000C1E8(v38);
      }

      if (v17)
      {
        v47 = v57;
        if (!v57)
        {
          sub_1000D660C();
          v47 = v57;
        }

        v48 = *(v47 + 88);
        *(v47 + 88) = 0;
        sub_1000BC0D0(v48);
        (*(v47 + 80))(*(v47 + 8), v48, v4);
      }

      else if (v18 && !sub_1002EE1C0(v16, v18, &v57))
      {
        v49 = v57;
        v50 = *(v57 + 11);
        *(v57 + 11) = 0;
        if (v50 == 15)
        {
          v53 = *(v49 + 13);
          if (v53 != 6 && v53 != 9)
          {
            sub_1000D660C();
            v53 = *(v49 + 13);
          }

          if (v53 == 9)
          {
            sub_1002EE524(v49, 1);
          }
        }

        else if (v50 == 99)
        {
          v51 = *(v49 + 13);
          if (v51 == 8)
          {
            v54 = *(v49 + 72);
            v55 = *(v49 + 8);
            sub_1002EE524(v49, 0);
            v54(v55, 0, 927);
          }

          else if (v51 == 7)
          {
            *(v49 + 164) = 927;
            sub_1002F2044(v49, 0);
          }
        }
      }

      return;
    }

    if (!sub_1002F199C(v57))
    {
      *(v57 + 96) = 1;
      return;
    }

    v52 = sub_1002F238C(v16, v18, *(v57 + 88), 0, 1);
    if (v52)
    {
      v4 = v52;
      if (v52 == 410)
      {
        sub_1000D660C();
        v4 = 410;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RFCOMM session has gone away - freeing orphaned MBUF %lx", v29, v30, v31, v32, v33, v34, v35, a2);
      v36 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000BB9CC(a2);
  }
}

void sub_1002F0D20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (dword_100BCE2F8)
  {
    v23 = sub_1002EE7C8(a2);
    if (v23 || sub_1002EED8C(a2, a3, &v23))
    {
      v5 = a3;
      v6 = 0;
      v7 = 0;
LABEL_5:
      sub_100290164(sub_1002F0808, sub_1002F0EF4, sub_1002F077C, v5, v6, v7, &unk_1008A50D0);
      return;
    }

    v16 = v23;
    if (!v23)
    {
      sub_1000D660C();
      v16 = v23;
    }

    *v16 = 3;
    v21 = 0u;
    v22 = 0u;
    sub_1003045A0(0x28u);
    *(&v21 + 2) = 327745535;
    WORD3(v21) = 776;
    WORD6(v21) = 0;
    BYTE8(v22) = 0;
    v17 = sub_1002EF100();
    v18 = sub_1002EF100();
    if (v17 <= 0x7F)
    {
      v19 = 5;
    }

    else
    {
      v19 = 6;
    }

    LOWORD(v21) = v18 + v19;
    if ((v18 + v19) > 0x80u)
    {
      if (*(sub_1003045A0(0x28u) + 8) >= (v18 + v19))
      {
LABEL_20:
        v6 = &v21;
        v5 = a3;
        v7 = 1;
        goto LABEL_5;
      }

      v20 = *(sub_1003045A0(0x28u) + 8);
    }

    else
    {
      v20 = 128;
    }

    LOWORD(v21) = v20;
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%!", v8, v9, v10, v11, v12, v13, v14, 103);
    v15 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002F0EF4(int a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("RFCOMM's L2CAP link disconnected result = %!", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE2F8)
  {
    v12 = sub_1002EE718(a1);
    if (v12)
    {
      sub_1002EE888(v12, a2, *v12 == 10);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", v13, v14, v15, v16, v17, v18, v19, 103);
    v20 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F1040(uint64_t a1)
{
  sub_100304AF8("BTVirtualTransportRegisterCBs\n");
  if (a1 && *a1 && (v2 = *(a1 + 8)) != 0 && (v3 = *(a1 + 16)) != 0 && (v4 = *(a1 + 24)) != 0 && (v5 = *(a1 + 32)) != 0)
  {
    result = 0;
    off_100B6B508 = *a1;
    off_100B6B510 = v2;
    off_100B6B518 = v3;
    off_100B6B520 = v4;
    off_100B6B528 = v5;
  }

  else
  {
    sub_100304AF8("BTVirtualTransportRegisterCBs invalid cbs\n");
    return 114;
  }

  return result;
}

uint64_t sub_1002F10D8()
{
  if (qword_100B6B530 != -1)
  {
    sub_100815BAC();
  }

  if (qword_100B6B538)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

void sub_1002F111C(int a1, int a2, unsigned int a3)
{
  if (!off_100B6B520)
  {
    sub_1000D660C();
  }

  sub_100304AF8("BTVirtual transport send packet type: 0x%x\n", a1);
  if (a1 == 1)
  {
    v6 = 3;
    v7 = &qword_100B6B548;
  }

  else
  {
    if (a1 != 2)
    {
      sub_100304AF8("Virtual transport default packet type: 0x%x\n", a1);
      return;
    }

    v6 = 4;
    v7 = &qword_100B6B550;
  }

  v8 = *v7;
  v9 = v6;
  v10 = malloc_type_malloc(v6 + a3, 0x100004077774924uLL);
  if (!v10)
  {
    sub_100815BC0();
  }

  v11 = v10;
  *v10 = a2;
  v10[2] = a3;
  if (a1 == 2)
  {
    v10[3] = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC(&v10[v9]);
  }

  else
  {
    sub_10001F480();
  }

  sub_100304AF8("BTVirtual transport send packet type: 0x%x 0x%x\n", a1, a2);
  v12 = 0;
  if ((off_100B6B520(v8, v11, v9 + a3, &v12, 0xFFFFFFFFLL, sub_1002F1960) & 1) == 0 && (byte_100B6B540 & 1) == 0)
  {
    sub_100304AF8("Virtual transport write failed: type %u\n", a1);
    __break(1u);
  }
}

uint64_t sub_1002F12F8()
{
  sub_100304AF8("BTVirtual transport init");
  if (off_100B6B508)
  {
    v0 = off_100B6B510 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_100B6B518 == 0 || off_100B6B520 == 0 || off_100B6B528 == 0)
  {
    sub_100304AF8("BTVirtual transport init failed, callbacks error");
    return 633;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    byte_100B6B540 = 0;
    off_100B6B508(&v5);
    LODWORD(v5) = 2;
    DWORD2(v6) = 5000;
    LODWORD(v7) = v7 | 0xC;
    *(&v7 + 4) = 0x10200000020;
    LODWORD(v10) = 25;
    *&v6 = &stru_100AE9F38;
    *&v8 = &stru_100AE9F78;
    *(&v8 + 1) = &stru_100AE9FB8;
    if (!off_100B6B510(&v5, &qword_100B6B548) || (off_100B6B508(&v5), LODWORD(v5) = 3, DWORD2(v6) = 5000, LODWORD(v7) = v7 | 4, *(&v7 + 4) = 0xA2200000020, LODWORD(v10) = 33, *&v6 = &stru_100AE9FF8, *&v8 = &stru_100AEA038, *(&v8 + 1) = &stru_100AEA078, !off_100B6B510(&v5, &qword_100B6B550)))
    {
      sub_100815BDC("Virtual transport failed to create HCI transport\n");
    }

    off_100B6B508(&v5);
    LODWORD(v5) = 5;
    DWORD2(v6) = 5000;
    LODWORD(v7) = v7 | 0xC;
    *(&v7 + 4) = 0x10200000020;
    LODWORD(v10) = 25;
    *&v6 = &stru_100AEA0B8;
    *&v8 = &stru_100AEA0F8;
    *(&v8 + 1) = &stru_100AEA138;
    if ((off_100B6B510(&v5, &qword_100B6B558) & 1) == 0)
    {
      sub_100815BDC("Virtual transport failed to create LMP transport\n");
    }

    return 0;
  }
}

void sub_1002F1540(id a1, int a2, void *a3, unsigned int a4)
{
  sub_100304AF8("BTVirtual readCompletionBlock: %d\n", a2);

  sub_1002F15A8(4, a2, a3, a4);
}

void sub_1002F15A8(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a4;
  sub_100304AF8("BTVirtual handle_read type %u, status 0x%x, size %d\n", a1, a2, a4);
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual read failed: type %u, status 0x%x\n", a1, a2);
    }

    return;
  }

  if (byte_100B6B540)
  {
    goto LABEL_7;
  }

  if (byte_100B6B560)
  {
    sub_100304AF8("BTVirtual handle_read OI_SNIFF_LogReceive\n");
    sub_1000040DC();
LABEL_7:
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  v8[1] = 0;
  v8[0] = mach_continuous_time();
  if (sub_100003668(a1, a3, v4) < v4)
  {
    LOWORD(v4) = sub_100003668(a1, a3, v4);
  }

  sub_100304AF8("BTVirtual handle_read OI_HCIIfc_DataReceived\n");
  sub_10000394C(a1, a3, v4, v8);
  if (a3)
  {
LABEL_8:
    free(a3);
  }
}

void sub_1002F16B8(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport HCI write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1728(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport ACL write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1790(id a1, int a2, void *a3, unsigned int a4)
{
  sub_100304AF8("BTVirtual LMP readCompletionBlock: %d\n", a2);

  sub_1002F15A8(7, a2, a3, a4);
}

void sub_1002F17F8(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport LMP write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1830()
{
  sub_100304AF8("BTVirtual transport free\n");
  if (off_100B6B528)
  {
    v0 = off_100B6B518 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    if (off_100B6B528(qword_100B6B548) && (off_100B6B518(&qword_100B6B548) & 1) == 0)
    {
      sub_100815BF4();
    }

    if (off_100B6B528(qword_100B6B550) && (off_100B6B518(&qword_100B6B550) & 1) == 0)
    {
      sub_100815C10();
    }

    if (off_100B6B528(qword_100B6B568) && (off_100B6B518(&qword_100B6B568) & 1) == 0)
    {
      sub_100815C2C();
    }

    if (off_100B6B528(qword_100B6B558))
    {
      if ((off_100B6B518(&qword_100B6B558) & 1) == 0)
      {
        sub_100815C48();
      }
    }
  }
}

uint64_t sub_1002F1928()
{
  sub_100304AF8("BTVirtual transport terminate\n");
  sub_10000C198();
  sub_1002F1830();
  sub_1000031B0();
  return 0;
}

void sub_1002F1960(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL sub_1002F199C(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 128);
  if (*(v2 + 44) != 1)
  {
    return *(a1 + 32) == 1 && (*(v2 + 45) & 1) != 0;
  }

  return *(a1 + 18) != 0;
}

uint64_t sub_1002F1A00(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 160);
  if (!*(a1 + 160))
  {
    result = 0;
    *(a1 + 162) = 0;
    goto LABEL_13;
  }

  if (v2 >= 0xFF)
  {
    v2 = 255;
  }

  *(a1 + 162) = v2;
  v3 = (a1 + 162);
  *(a1 + 163) = 0;
  v4 = sub_100007618(24 * v2, 0x10300407B68707EuLL);
  *(a1 + 104) = v4;
  if (v4)
  {
    if (*v3)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = sub_100007618(*(a1 + 16), 0x9A058AFCuLL);
        v8 = *(a1 + 104);
        v9 = &v8[v5];
        *v9 = v7;
        *(v9 + 4) = 0;
        if (!v7)
        {
          break;
        }

        ++v6;
        v5 += 24;
        if (v6 >= *v3)
        {
          goto LABEL_11;
        }
      }

      if (v6)
      {
        v11 = 0;
        do
        {
          sub_10000C1E8(*(*(a1 + 104) + v11));
          v11 += 24;
          --v6;
        }

        while (v6);
        v8 = *(a1 + 104);
      }

      sub_10000C1E8(v8);
      result = 106;
      goto LABEL_14;
    }

LABEL_11:
    result = 0;
LABEL_13:
    v3 = (a1 + 14);
LABEL_14:
    *v3 = 0;
    return result;
  }

  return 106;
}

uint64_t sub_1002F1B10(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 162))
  {
    v2 = sub_1002F1C10(a1);
    if (v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v4 += *(v2 + 8);
        v2 = sub_1002F1C10(a1);
        --v3;
      }

      while (v2);
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%d rcv packets discarded (%d bytes total)", v5, v6, v7, v8, v9, v10, v11, -v3);
          v12 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }

    if (*(a1 + 162))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        sub_10000C1E8(*(*(a1 + 104) + v13));
        ++v14;
        v13 += 24;
      }

      while (v14 < *(a1 + 162));
      if (*(a1 + 162))
      {
        sub_10000C1E8(*(a1 + 104));
        *(a1 + 104) = 0;
        *(a1 + 162) = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1002F1C10(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result = *(a1 + 112);
  if (result)
  {
    *(a1 + 112) = *(result + 16);
    if (result == *(a1 + 120))
    {
      *(a1 + 120) = 0;
    }

    --*(a1 + 163);
  }

  return result;
}

uint64_t sub_1002F1C64(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v6 = *(a1 + 16);
  if (v6 >= a3)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    sub_1000D660C();
    v6 = *(a1 + 16);
  }

  if (v6 < a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received RFCOMM packet with larger payload size %d than set on link (%d)", v7, v8, v9, v10, v11, v12, v13, a3);
      v14 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 104;
  }

  if (!*(a1 + 162))
  {
    return 104;
  }

  v15 = 0;
  v16 = *(a1 + 104);
  while (1)
  {
    v17 = v16 + v15;
    if (!*(v16 + v15 + 8))
    {
      break;
    }

    v15 += 24;
    if (24 * *(a1 + 162) == v15)
    {
      return 104;
    }
  }

  *(v17 + 8) = a3;
  memmove(*v17, a2, a3);
  v19 = *(a1 + 104);
  if (!v19)
  {
    sub_1000D660C();
  }

  v20 = v19 + v15;
  v21 = (a1 + 112);
  if (*(a1 + 112))
  {
    v21 = (*(a1 + 120) + 16);
  }

  result = 0;
  *v21 = v20;
  *(v19 + v15 + 16) = 0;
  *(a1 + 120) = v20;
  ++*(a1 + 163);
  return result;
}

uint64_t sub_1002F1DA8(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if ((*(*(a1 + 128) + 44) & 1) == 0)
  {
    sub_1000D660C();
  }

  if (*(a1 + 14) + a2 >= 0x100)
  {
    sub_1000D660C();
  }

  result = sub_1002F25A0(*(a1 + 128), *(a1 + 10), 0, 0, a2);
  if (!result)
  {
    *(a1 + 14) += a2;
  }

  return result;
}

uint64_t sub_1002F1E20(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result = sub_1002F199C(a1);
  if (result && *(a1 + 96) == 1)
  {
    result = sub_1002F238C(*(a1 + 128), *(a1 + 10), *(a1 + 88), 0, 1);
    if (!result)
    {
      *(a1 + 96) = 0;
    }
  }

  return result;
}

void sub_1002F1E80(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  for (i = v4; i && i != v2; i = *i)
  {
    sub_1002F1E20((i - 18));
  }
}

uint64_t sub_1002F1EC8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 40);

  return sub_10002242C(v2);
}

uint64_t sub_1002F1F04(uint64_t a1, int a2)
{
  v15 = a1;
  v14[0] = 0;
  v3 = (a1 + 40);
  sub_10002242C(*(a1 + 40));
  v14[1] = &v15;
  LOWORD(v14[0]) = 8;
  v4 = sub_10002195C(sub_1002F1FC0, v14, a2, v3);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error registering session shutdown dispatch - %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v4;
}

void sub_1002F1FC0(uint64_t a1)
{
  v1 = sub_1002EE5D0(**(a1 + 8), 1, 930);
  if (v1)
  {
    v2 = v1;
    if (sub_10000C240())
    {
      sub_10000AF54("RFCOMM session shutdown failed - %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_1002F2044(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  *(a1 + 13) = 9;
  sub_1002EE438(a1);
  (**(a1 + 40))(*(a1 + 8), *(a1 + 164));

  return sub_1002EE524(a1, a2);
}

uint64_t sub_1002F20AC(int a1, uint64_t a2, uint64_t a3)
{
  if (((a1 - 47) > 0x34 || ((1 << (a1 - 47)) & 0x10000000100001) == 0) && a1 != 15)
  {
    sub_1000D660C();
  }

  if (*(a2 + 12))
  {
    v6 = 67;
  }

  else
  {
    v6 = 99;
  }

  if (*(a2 + 12))
  {
    v7 = 47;
  }

  else
  {
    v7 = 15;
  }

  if (v7 == a1 || v6 == a1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v28 = 1;
  v27[0] = v9 | (4 * a3);
  v27[1] = a1 | 0x10;
  HIBYTE(v28) = sub_1002F37AC(v27, 3);
  v10 = sub_1003053B4(v27, 4uLL, 0);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  v12 = sub_1002F2270(a2, a3, v10, 0);
  if (!v12)
  {
    v26 = 0;
    if (a3)
    {
      v22 = sub_1002EE1C0(a2, a3, &v26);
      if (v22)
      {
        return v22;
      }

      v23 = v26;
      *(v26 + 11) = a1;
      if (a1 == 47)
      {
        v24 = 2;
      }

      else
      {
        if (a1 != 67)
        {
          return 0;
        }

        v24 = 6;
      }

      *(v23 + 13) = v24;
    }

    else if (a1 != 47 && a1 != 67)
    {
      return 0;
    }

    sub_1002F3864(a2);
    return 0;
  }

  v13 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000BB9CC(v11);
  return v13;
}

uint64_t sub_1002F2270(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v8 = sub_1000B7EDC(sub_1002F0994, *(a1 + 2), 0, a3, 0);
  if (!v8)
  {
    v10 = 0;
    *(a1 + 80) = a4;
    *(a1 + 81) = a2;
    *(a1 + 72) = a3;
    return v10;
  }

  if (v8 == 410)
  {
    v9 = sub_100007618(0x20uLL, 0x10200408EAB821DuLL);
    if (v9)
    {
      *v9 = a3;
      v9[8] = a4;
      v9[9] = a2;
      sub_1003051F4(v9 + 2, a1 + 56);
      return 0;
    }

    return 106;
  }

  v11 = sub_100007618(0x20uLL, 0x10200408EAB821DuLL);
  if (!v11)
  {
    return 106;
  }

  v12 = v11;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 9) = a2;
  sub_1003051F4(v11 + 2, a1 + 56);
  v10 = sub_1002F1F04(a1, 0);
  if (v10)
  {
    sub_100305208(v12 + 2);
    sub_10000C1E8(v12);
  }

  return v10;
}

uint64_t sub_1002F238C(uint64_t a1, int a2, uint64_t a3, unsigned int a4, char a5)
{
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v10 = *(a3 + 4);
  v11 = sub_1002F2514(a1, a2, v10, a4, &v22);
  v21 = sub_1002F37AC(&v22, 2);
  v12 = sub_1000B914C(3u);
  if (!v12)
  {
    return 106;
  }

  v13 = v12;
  sub_10001F968(v12, &v22, v11, 0);
  sub_1000BAD68(v13, a3);
  sub_10001F968(v13, &v21, 1uLL, 0);
  if (*(a1 + 44) == 1 && a2 && v10)
  {
    v14 = sub_1002EE1C0(a1, a2, &v20);
    if (v14)
    {
      v15 = v14;
LABEL_18:
      sub_1000BB9CC(v13);
      return v15;
    }

    v16 = v20;
    v17 = *(v20 + 14);
    if (v17 + a4 >= 0x100)
    {
      sub_1000D660C();
      v16 = v20;
      LOBYTE(v17) = *(v20 + 14);
    }

    *(v16 + 14) = v17 + a4;
    v18 = *(v16 + 18);
    if (!v18)
    {
      sub_1000D660C();
      v16 = v20;
      v18 = *(v20 + 18);
    }

    *(v16 + 18) = v18 - 1;
  }

  v15 = sub_1002F2270(a1, a2, v13, a5);
  if (v15)
  {
    goto LABEL_18;
  }

  return v15;
}

uint64_t sub_1002F2514(uint64_t a1, char a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  if (*(a1 + 12))
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *a5 = v5 | (4 * a2);
  v6 = 2 * a3;
  if (a4)
  {
    a5[1] = -1;
    if (a3 < 0x80)
    {
      a5[2] = v6 | 1;
LABEL_11:
      result = 4;
      v8 = 3;
      goto LABEL_12;
    }

    a5[2] = v6;
    a5[3] = a3 >> 7;
    result = 5;
    v8 = 4;
  }

  else
  {
    a5[1] = -17;
    if (a3 >= 0x80)
    {
      a5[2] = v6;
      a4 = a3 >> 7;
      goto LABEL_11;
    }

    LOBYTE(a4) = v6 | 1;
    result = 3;
    v8 = 2;
  }

LABEL_12:
  a5[v8] = a4;
  return result;
}

uint64_t sub_1002F25A0(uint64_t a1, uint64_t a2, char *a3, size_t a4, unsigned int a5)
{
  if (a2 && a4)
  {
    sub_1000D660C();
  }

  v10 = sub_1000B914C(3u);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v12 = sub_1002F2514(a1, a2, a4, a5, &v16);
  v13 = sub_10001F968(v11, &v16, v12, 0);
  if (v13 || (v13 = sub_10001F968(v11, a3, a4, 0), v13) || (v18 = sub_1002F37AC(&v16, 2), v13 = sub_10001F968(v11, &v18, 1uLL, 0), v13))
  {
    v14 = v13;
  }

  else
  {
    v14 = sub_1002F2270(a1, a2, v11, 0);
    if (!v14)
    {
      return v14;
    }
  }

  sub_1000BB9CC(v11);
  return v14;
}

void sub_1002F26B8(int a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002EE718(a1);
  if (!v5)
  {
    return;
  }

  if (a3 > 3)
  {
    v14 = v5;
    v15 = *(a2 + 1);
    v16 = v15 & 0xFFFFFFEF;
    if ((v15 & 0xFFFFFFEF) - 47 > 0x34 || ((1 << ((v15 & 0xEFu) - 47)) & 0x10000000100001) == 0)
    {
      if (v16 == 239)
      {
        if (sub_1002F3830(*a2, v15, *(a2 + a3 - 1)))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("UIH FCS Error: %@", v26, v27, v28, v29, v30, v31, v32, a2);
            v33 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }
          }
        }

        else
        {

          sub_1002F3294(v14, a2, a3);
        }

        return;
      }

      if (v16 != 15)
      {
        return;
      }
    }

    if (sub_1002F37F0(*a2, v15, *(a2 + 2), *(a2 + a3 - 1)))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FCS Error: %@", v18, v19, v20, v21, v22, v23, v24, a2);
        v25 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }
    }

    else if (v16 > 0x42u)
    {
      if (v16 == 67)
      {

        sub_1002F2DCC(v14, a2);
      }

      else if (v16 == 99)
      {

        sub_1002F2B0C(v14, a2);
      }
    }

    else if (v16 == 15)
    {

      sub_1002F3044(v14, a2);
    }

    else if (v16 == 47)
    {

      sub_1002F2940(v14, a2);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_Rfcomm_ReceiveFrame invalid frame length=%d", v6, v7, v8, v9, v10, v11, v12, a3);
    v13 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      sub_10080F7A0();
    }
  }
}

unsigned __int8 *sub_1002F2940(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) != 0 && (a2[1] & 0x10) != 0)
  {
    v3 = result;
    if (((((v2 & 2) == 0) ^ result[12]) & 1) == 0)
    {
      v25 = 0;
      v4 = v2 >> 2;
      v5 = *result;
      if (v5 != 7)
      {
        if (v5 == 4 && v2 <= 3)
        {
          result = sub_1002F20AC(99, result, v2 >> 2);
          if (!result)
          {
            *v3 = 7;
          }

          return result;
        }

        return sub_1002F20AC(15, v3, v2 >> 2);
      }

      if (v2 > 0xF7 || v4 == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v16, v17, v18, v19, v20, v21, v22, 912);
          v23 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return sub_1002F20AC(15, v3, v2 >> 2);
      }

      if (sub_1002EE1C0(result, v2 >> 2, &v25))
      {
        v6 = sub_1002EE258(v3, v2 >> 2, &v25);
        if (v6)
        {
          v7 = v6;
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v8, v9, v10, v11, v12, v13, v14, v7);
            v15 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return sub_1002F20AC(15, v3, v2 >> 2);
        }

        v24 = v25;
        if (!v25)
        {
          sub_1000D660C();
          v24 = v25;
        }
      }

      else
      {
        v24 = v25;
        if (*(v25 + 13) == 6)
        {
          return sub_1002F20AC(15, v3, v2 >> 2);
        }
      }

      *(v24 + 13) = 3;
      *(v24 + 10) = v4;
      result = sub_1002EF144((v3 + 6), v2 >> 3);
      if (!result)
      {
        return result;
      }

      *(v25 + 164) = 921;
      sub_1002EE524();
      return sub_1002F20AC(15, v3, v2 >> 2);
    }
  }

  return result;
}

void sub_1002F2B0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_1002F39C8(a1);
  v4 = *a2;
  if ((v4 & 1) == 0 || (a2[1] & 0x10) == 0 || ((v4 & 2) == 0) == a1[12])
  {
    return;
  }

  v41 = 0;
  v5 = v4 >> 2;
  v6 = *a1;
  if (v6 == 9)
  {
    if (v4 <= 3)
    {
      v16 = sub_10029104C(*(a1 + 1), 560);
      if (v16)
      {

        sub_1002EE888(a1, v16, 1);
      }

      else
      {
        *a1 = 10;
      }

      return;
    }

    if (sub_1002EE1C0(a1, v4 >> 2, &v41))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v25, v26, v27, v28, v29, v30, v31, 912);
      v32 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_42:
      sub_10080F7A0();
      return;
    }

    v14 = v41;
LABEL_38:
    sub_1002F2044(v14, 1);
    return;
  }

  if (v6 != 7)
  {
    if (v6 == 5 && v4 <= 3)
    {
      *a1 = 7;
      v9 = *(a1 + 2);
      v7 = a1 + 16;
      v8 = v9;
      if (v9)
      {
        if (v8 != v7)
        {
          do
          {
            v41 = (v8 - 144);
            v10 = sub_1002EEF20((v8 - 144));
            if (v10)
            {
              v11 = v10;
              v12 = *(v8 + 1);
              (*(v8 - 9))(*(v8 - 68), 0, v10);
              *(v8 + 5) = v11;
              sub_1002EE524(v8 - 144, 1);
              v8 = v12;
            }

            v8 = *v8;
            if (v8)
            {
              v13 = v8 == v7;
            }

            else
            {
              v13 = 1;
            }
          }

          while (!v13);
        }
      }
    }

    return;
  }

  if (v5 == 1 || (v4 + 8) <= 0xBu)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v17, v18, v19, v20, v21, v22, v23, 101);
      v24 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (sub_1002EE1C0(a1, v5, &v41))
  {
    return;
  }

  v14 = v41;
  v15 = *(v41 + 13);
  if (v15 == 6)
  {
    goto LABEL_38;
  }

  if (v15 == 2)
  {
    *(v41 + 13) = 4;
    sub_1002F3E34(a1, 1, v5, *(v14 + 12), 0);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v33, v34, v35, v36, v37, v38, v39, 408);
    v40 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }
  }
}

void sub_1002F2DCC(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) == 0 || (a2[1] & 0x10) == 0)
  {
    return;
  }

  v46 = 0;
  if (((v2 & 2) == 0) != a1[12])
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", v4, v5, v6, v7, v8, v9, v10, 917);
    v11 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = v2 >> 2;
  if (v2 > 0xF7 || v12 == 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", v14, v15, v16, v17, v18, v19, v20, 920);
    v21 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_7:
    sub_10080F7A0();
    return;
  }

  if (*a1 != 7)
  {
    goto LABEL_22;
  }

  if (v2 <= 3)
  {
    v22 = sub_1003045A0(0x32u);
    if (*(v22 + 10))
    {
      v23 = *(v22 + 10);
    }

    else
    {
      v23 = 30;
    }

    *a1 = 8;
    sub_1002F1F04(a1, v23);
LABEL_22:

    sub_1002F20AC(99, a1, v12);
    return;
  }

  if (sub_1002EE1C0(a1, v2 >> 2, &v46))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DLCI %d not found", v24, v25, v26, v27, v28, v29, v30, v12);
      v31 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v32 = sub_1002F20AC(99, a1, v12);
    v33 = v46;
    v34 = *(v46 + 13);
    if (v34 != 6)
    {
      if (v34 == 5)
      {
        *(v46 + 13) = 7;
        if (v32)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("RFCOMM send command failed with result : %!", v35, v36, v37, v38, v39, v40, v41, v32);
            v42 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v43 = v46;
          *(v46 + 164) = 933;
          sub_1002F2044(v43, 0);
        }
      }

      else
      {
        v44 = *(v46 + 72);
        if (v44)
        {
          *(v46 + 13) = 8;
          if (v32)
          {
            v45 = *(v33 + 8);
            sub_1002EE524(v33, 0);
            v44(v45, 0, 927);
          }
        }
      }
    }
  }
}

void sub_1002F3044(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) == 0 || ((v2 & 2) == 0) == a1[12])
  {
    return;
  }

  v37 = 0;
  v5 = sub_1002EE1C0(a1, v2 >> 2, &v37);
  if (!v5)
  {
    if ((a2[1] & 0x10) == 0 && (*(v37 + 13) | 4) == 6)
    {
      return;
    }

    v15 = *a1;
    if (v15 != 7)
    {
      if (v15 == 5)
      {
        sub_1002F39C8(a1);
        sub_1002EE5D0(a1, 0, 929);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected DM received", v16, v17, v18, v19, v20, v21, v22, v36);
        v23 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      return;
    }

    if (v2 >> 2 == 1 || (v2 + 8) < 0xCu)
    {
      return;
    }

    if ((*(v37 + 13) | 4) == 6)
    {
      sub_1002F39C8(a1);
    }

    else
    {
      sub_1002F3A04(a1);
    }

    v24 = v37;
    v25 = *(v37 + 13);
    if (v25 > 9)
    {
LABEL_24:
      if (v25 < 3)
      {
        v26 = *(v37 + 72);
        if (v26)
        {
          *(v37 + 164) = 934;
          v26(*(v24 + 8), 0, 913);
          sub_1002EE524(v37, 1);
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Received unsolicited remote reject, ignore", v28, v29, v30, v31, v32, v33, v34, v36);
          v35 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }
        }
      }

      return;
    }

    if (((1 << v25) & 0x38) != 0)
    {
      v27 = 934;
    }

    else
    {
      if (((1 << v25) & 0x180) == 0)
      {
        if (((1 << v25) & 0x240) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        sub_1002F2044(v24, 1);
        return;
      }

      v27 = 927;
    }

    *(v37 + 164) = v27;
    goto LABEL_30;
  }

  v6 = v5;
  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_34:
      sub_10080F7A0();
    }
  }
}

void sub_1002F3294(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  v103 = 0;
  v3 = *a2;
  if (v3)
  {
    if (a1[12] == 1)
    {
      if ((v3 & 2) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v13, v14, v15, v16, v17, v18, v19, 917);
          v20 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }
        }

        return;
      }
    }

    else if ((v3 & 2) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v21, v22, v23, v24, v25, v26, v27, 917);
        v28 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    v29 = a2[2];
    if (v29)
    {
      v30 = v29 >> 1;
      v31 = 3;
    }

    else
    {
      v30 = (v29 | (a2[3] << 8)) >> 1;
      v31 = 4;
    }

    v32 = a2[1];
    if ((v32 & 0x10) != 0)
    {
      if (a1[44] != 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v44, v45, v46, v47, v48, v49, v50, 917);
          v51 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }
        }

        return;
      }

      v33 = a2[v31++];
    }

    else
    {
      v33 = 0;
    }

    if (v30 + v31 + 1 != a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v36, v37, v38, v39, v40, v41, v42, 917);
        v43 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    if (*a1 != 7)
    {
      return;
    }

    if (v3 > 0xF7 || v3 >> 2 == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v52, v53, v54, v55, v56, v57, v58, 917);
        v59 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    v34 = &a2[v31];
    if (v3 <= 3)
    {
      v35 = &a2[v31];

      sub_1002F4044(a1, v35, v30);
      return;
    }

    v60 = sub_1002EE1C0(a1, v3 >> 2, &v103);
    if (v60)
    {
      v61 = v60;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v62, v63, v64, v65, v66, v67, v68, v61);
      v69 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_41;
    }

    if (a1[44] == 1)
    {
      if ((v32 & 0x10) != 0 && v33)
      {
        v70 = v103;
        v71 = *(v103 + 18);
        if (v33 >= (v71 ^ 0xFFFFu))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v74, v75, v76, v77, v78, v79, v80, 922);
            v81 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_1002EFF1C(*(v103 + 8), 922);
          return;
        }

        v72 = v71 + v33;
        *(v103 + 18) = v72;
        if (v33 == v72)
        {
          sub_1002F1E20(v70);
        }
      }

      v73 = v103;
      if (!v30)
      {
        if ((*(v103 + 33) & 1) != 0 || a1[44] != 1)
        {
          return;
        }

        goto LABEL_68;
      }

      if (*(v103 + 14))
      {
        --*(v103 + 14);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Received data when remote credits = 0!", v82, v83, v84, v85, v86, v87, v88, v102);
        v89 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    v73 = v103;
    if (*(v103 + 33))
    {
      if (!v30)
      {
        return;
      }

      if (a1[44] == 1)
      {
        v90 = *(v103 + 14);
        if (v90 <= *(qword_100BCE1F8 + 2))
        {
          if (*(v103 + 162))
          {
            v91 = *(v103 + 162) - (v90 + *(v103 + 163));
          }

          else
          {
            v91 = ~v90;
          }

          if (sub_1002F1DA8(v103, v91))
          {
            return;
          }

          v73 = v103;
        }
      }

LABEL_73:
      (*(*(v73 + 40) + 8))(*(v73 + 8), v34, v30);
      return;
    }

    if ((a1[44] & 1) == 0)
    {
      if (!v30)
      {
        return;
      }

      goto LABEL_73;
    }

LABEL_68:
    v92 = sub_1002F1C64(v73, v34, v30);
    if (!v92)
    {
      return;
    }

    v93 = v92;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Save received packet failed in Receive_UIH %! (%d)", v94, v95, v96, v97, v98, v99, v100, v93);
    v101 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_41:
    sub_10080F7A0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v4, v5, v6, v7, v8, v9, v10, 917);
    v11 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F37AC(char *a1, int a2)
{
  if (a2)
  {
    v2 = -1;
    do
    {
      v3 = *a1++;
      --a2;
      v2 = byte_1008A5100[(v3 ^ v2)];
    }

    while (a2);
    return ~v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F37F0(char a1, char a2, char a3, int a4)
{
  if ((byte_1008A5100[(byte_1008A5100[(byte_1008A5100[~a1] ^ a2)] ^ a3)] ^ a4) == 0xFF)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_1002F3830(char a1, char a2, int a3)
{
  if ((byte_1008A5100[(byte_1008A5100[~a1] ^ a2)] ^ a3) == 0xFF)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_1002F3864(uint64_t a1)
{
  v4 = a1;
  v3[0] = 0;
  v1 = (a1 + 32);
  sub_10002242C(*(a1 + 32));
  v3[1] = &v4;
  LOWORD(v3[0]) = 8;
  return sub_10002195C(sub_1002F38D8, v3, *(qword_100BCE1F8 + 4), v1);
}

uint64_t sub_1002F38D8(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Timeout occurred", v2, v3, v4, v5, v6, v7, v8, v11);
    v9 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v9);
    }
  }

  return sub_1002EE5D0(**(a1 + 8), 1, 931);
}

uint64_t sub_1002F394C(uint64_t a1)
{
  v4 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  v3[0] = 0;
  sub_10002242C(*(a1 + 36));
  v3[1] = &v4;
  LOWORD(v3[0]) = 8;
  return sub_10002195C(sub_1002F38D8, v3, *(qword_100BCE1F8 + 8), (a1 + 36));
}

uint64_t sub_1002F39C8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 32);

  return sub_10002242C(v2);
}

uint64_t sub_1002F3A04(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 36);

  return sub_10002242C(v2);
}

uint64_t sub_1002F3A40(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 36);

  return sub_100304F30(v2);
}

uint64_t sub_1002F3A7C(uint64_t a1, int a2, unsigned int a3, unsigned __int8 a4, __int16 a5, char a6)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v12 = -125;
  }

  else
  {
    v12 = -127;
  }

  LOBYTE(v19[0]) = v12;
  HIBYTE(v19[0]) = 17;
  if (a3 >= 0x40)
  {
    sub_1000D660C();
  }

  memset(&v19[1] + 1, 0, 7);
  LOBYTE(v19[1]) = a3;
  if (a2)
  {
    v13 = -16;
  }

  else
  {
    v13 = -32;
  }

  if (*(a1 + 44))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 44))
  {
    v15 = a6;
  }

  else
  {
    v15 = 0;
  }

  HIBYTE(v19[1]) = v14;
  v19[2] = a4;
  v19[3] = a5;
  LOBYTE(v19[4]) = 0;
  HIBYTE(v19[4]) = v15;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  v18 = 0;
  v16 = sub_1002F25A0(a1, 0, v19, 0xAuLL, 0);
  if (!v16)
  {
    v16 = sub_1002EE1C0(a1, a3, &v18);
    if (v16)
    {
      sub_1000D660C();
    }

    if (!*(v18 + 13))
    {
      *(v18 + 13) = 1;
    }
  }

  return v16;
}

uint64_t sub_1002F3BE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  memset(v32, 0, sizeof(v32));
  v31 = 0u;
  v30 = 0u;
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
  if ((a4 & 0x80) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RfcommMux_TEST invalid size=%d", v9, v10, v11, v12, v13, v14, v15, a4);
      v16 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  else
  {
    if (a2)
    {
      v7 = 35;
    }

    else
    {
      v7 = 33;
    }

    v17[0] = v7;
    v17[1] = (2 * a4) | 1;
    __memmove_chk();
    if (a2)
    {
      sub_1002F394C(a1);
    }

    return sub_1002F25A0(a1, 0, v17, (a4 + 2), 0);
  }
}

uint64_t sub_1002F3D4C(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v4 = -93;
  }

  else
  {
    v4 = -95;
  }

  v6[0] = v4;
  v6[1] = 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v6, 2uLL, 0);
}

uint64_t sub_1002F3DC0(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v4 = 99;
  }

  else
  {
    v4 = 97;
  }

  v6[0] = v4;
  v6[1] = 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v6, 2uLL, 0);
}

uint64_t sub_1002F3E34(uint64_t a1, int a2, char a3, char a4, int a5)
{
  v11 = 0;
  if (a2)
  {
    v6 = -29;
  }

  else
  {
    v6 = -31;
  }

  v10[0] = v6;
  if (a5)
  {
    v11 = (16 * a5) | 3;
    v7 = 5;
    v8 = 7;
  }

  else
  {
    a4 |= 1u;
    v7 = 4;
    v8 = 5;
  }

  v10[1] = v8;
  v10[3] = a4;
  v10[2] = (4 * a3) | 3;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v10, v7, 0);
}

uint64_t sub_1002F3ED4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  memset(&v11[1] + 1, 0, 7);
  if (a2)
  {
    v5 = -109;
  }

  else
  {
    v5 = -111;
  }

  LOBYTE(v11[0]) = v5;
  LOBYTE(v11[1]) = (4 * a3) | 3;
  if (a4)
  {
    if (*(a4 + 2) > 8u)
    {
      return 903;
    }

    HIBYTE(v11[1]) = *(a4 + 2);
    v8 = *(a4 + 3);
    if (v8 > 3)
    {
      return 904;
    }

    v9 = *(a4 + 4);
    if ((v9 | 4) != 4)
    {
      return 905;
    }

    v10 = *(a4 + 5);
    if ((v10 | 8) != 8)
    {
      return 906;
    }

    if (((*(a4 + 6) >> 4) | (16 * *(a4 + 6))) > 3u)
    {
      return 907;
    }

    LOBYTE(v11[2]) = *(a4 + 6) | v10 | v9 | v8;
    if (*(a4 + 7) > 0x20u)
    {
      return 908;
    }

    HIBYTE(v11[2]) = *(a4 + 7);
    v11[3] = *(a4 + 8);
    v11[4] = *a4;
    v7 = 8;
  }

  else
  {
    v7 = 1;
  }

  HIBYTE(v11[0]) = (2 * v7) | 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v11, v7 | 2u, 0);
}

void sub_1002F4044(uint64_t a1, char *a2, int a3)
{
  v3 = a1;
  v4 = *a2;
  v5 = *a2 & 0xFC;
  v6 = a2[1] >> 1;
  if (v6 + 2 != a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid RFCOMM packet received, command (%d), force disconnect the link", v11, v12, v13, v14, v15, v16, v17, v4 & 0xFC);
      v18 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10023BD60(v3 + 6);
    return;
  }

  HIDWORD(v9) = v5 - 16;
  LODWORD(v9) = v5 - 16;
  v8 = v9 >> 4;
  if (v8 <= 6)
  {
    if (v8 <= 3)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          if (v5 != 32)
          {
            sub_1000D660C();
            v4 = *a2;
          }

          if ((v4 & 2) != 0)
          {

            sub_1002F3BE0(v3, 0, (a2 + 2), v6);
          }

          else
          {
            sub_1002F3A04(v3);
            v10 = *(v3 + 48);
            if (v10)
            {
              v10(v3 + 6, a2 + 2, v6);
              *(v3 + 48) = 0;
              return;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Mux_ReceiveTEST, receive response but no outstanding command, ignoring", v129, v130, v131, v132, v133, v134, v135, v260);
              v136 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_124;
              }
            }
          }

          return;
        }

LABEL_70:
        LOWORD(v264) = 785;
        BYTE2(v264) = v4 & 0xFE;
        sub_1002F25A0(a1, 0, &v264, 3uLL, 0);
        return;
      }

      if (v6 == 1)
      {

        sub_1002F3A40(a1);
        return;
      }

      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v59, v60, v61, v62, v63, v64, v65, 917);
      v66 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_124:
      sub_10080F7A0();
      return;
    }

    if (v8 != 4)
    {
      if (v8 != 5)
      {
        goto LABEL_70;
      }

      if (!a1)
      {
        sub_1000D660C();
        v4 = *a2;
      }

      if ((v4 & 2) != 0)
      {
        sub_1002F3DC0(v3, 0);
        if ((*(v3 + 44) & 1) == 0)
        {
          *(v3 + 45) = 0;
        }

        return;
      }

      goto LABEL_67;
    }

    v264 = 0;
    if (v6 != 2)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v75, v76, v77, v78, v79, v80, v81, 917);
      v82 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v58 = a2[2];
    v20 = v58 >> 2;
    if (v58 > 0xF7 || v20 == 1)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v117, v118, v119, v120, v121, v122, v123, 917);
      v124 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    if ((v4 & 2) == 0)
    {
LABEL_63:
      sub_1002F3A04(a1);
      return;
    }

    v157 = a2[3];
    v158 = sub_1002EE1C0(a1, v58 >> 2, &v264);
    if (!v158)
    {
      LOWORD(v261) = 1361;
      BYTE2(v261) = v58 | 3;
      BYTE3(v261) = v157;
      sub_1002F25A0(v3, 0, &v261, 4uLL, 0);
      v226 = *(*(v264 + 40) + 16);
      if (v226)
      {
        v226(*(v264 + 8), v157 & 0xF);
      }

      return;
    }

    v159 = v158;
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v160, v161, v162, v163, v164, v165, v166, v159);
      v167 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
LABEL_131:
        sub_10080F7A0();
      }
    }

LABEL_96:
    sub_1002F20AC(15, v3, v20);
    return;
  }

  if (v8 > 8)
  {
    if (v8 == 9)
    {
      if (!a1)
      {
        sub_1000D660C();
        v4 = *a2;
      }

      if ((v4 & 2) != 0)
      {
        sub_1002F3D4C(v3, 0);
        if ((*(v3 + 44) & 1) == 0)
        {
          *(v3 + 45) = 1;

          sub_1002F1E80(v3);
        }

        return;
      }

LABEL_67:
      a1 = v3;

      goto LABEL_63;
    }

    if (v8 != 13)
    {
      goto LABEL_70;
    }

    if (!a1)
    {
      sub_1000D660C();
    }

    v264 = 0;
    v20 = a2[2] >> 2;
    v41 = a2[3];
    if (v6 == 2)
    {
      v42 = 0;
    }

    else
    {
      if (v6 != 3)
      {
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("%! (%d)", v101, v102, v103, v104, v105, v106, v107, 917);
        v108 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_124;
      }

      v42 = ((a2[4] << 6) >> 7) & (a2[4] >> 4);
    }

    v91 = sub_1002EE1C0(v3, v20, &v264);
    if (v91)
    {
      v92 = v91;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v93, v94, v95, v96, v97, v98, v99, v92);
        v100 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if ((*a2 & 2) == 0)
      {
        return;
      }

      goto LABEL_96;
    }

    if ((*a2 & 2) != 0)
    {
      sub_1002F3E34(v3, 0, v20, v41, v42);
      v156 = v264;
      if ((*(v3 + 44) & 1) == 0)
      {
        if ((v41 & 2) != 0)
        {
          *(v264 + 32) = 0;
        }

        else
        {
          *(v264 + 32) = 1;
          sub_1002F1E20(v156);
          v156 = v264;
        }
      }

      v249 = *(*(v156 + 40) + 24);
      if (v249)
      {
        v249(*(v156 + 8), v41 & 0xCE, v42);
      }

      return;
    }

    sub_1002F3A04(v3);
    v125 = v264;
    if (*(v264 + 13) != 4)
    {
      return;
    }

    *(v264 + 13) = 5;
    if (*(v3 + 44) == 1)
    {
      v126 = *(v125 + 162);
      if (*(v125 + 162))
      {
        v127 = *(v125 + 14);
        if (v126 < v127)
        {
          sub_1000D660C();
          v125 = v264;
          LOBYTE(v126) = *(v264 + 162);
          LOBYTE(v127) = *(v264 + 14);
        }

        v128 = v126 - (v127 + *(v125 + 163));
        if (!v128)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v128 = -1;
      }

      if (sub_1002F1DA8(v125, v128))
      {
        return;
      }

      v125 = v264;
    }

LABEL_216:
    v250 = *(v125 + 72);
    if (v250)
    {
      v250(*(v125 + 8), *(v125 + 16), 0);
      *(v264 + 72) = 0;
    }

    return;
  }

  if (v8 == 7)
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    v264 = 0;
    if (v6 != 8)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Mux_ReceivePN invalid cmdLen=%d, shall be=%d", v67, v68, v69, v70, v71, v72, v73, v6);
      v74 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v20 = a2[2] & 0x3F;
    if (v20 == 1 || v20 >= 0x3E)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v109, v110, v111, v112, v113, v114, v115, 917);
      v116 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v43 = *a2;
    v44 = a2[3];
    v45 = a2[4];
    v46 = *(a2 + 3);
    v47 = a2[9] & 7;
    v48 = sub_1002EE1C0(v3, v20, &v264);
    if (v48)
    {
      if ((v43 & 2) == 0)
      {
        v49 = v48;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v50, v51, v52, v53, v54, v55, v56, v49);
          v57 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return;
      }

      v179 = sub_1002EE258(v3, v20, &v264);
      if (v179)
      {
        v180 = v179;
        if (!sub_10000C240())
        {
          goto LABEL_96;
        }

        sub_10000AF54("%! (%d)", v181, v182, v183, v184, v185, v186, v187, v180);
        v188 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_96;
        }

        goto LABEL_131;
      }

LABEL_147:
      v189 = v264;
      if (*(v264 + 13))
      {
        v190 = v45 & 0x3F;
        v191 = v46;
        v192 = v3;
        v193 = v20;
        v194 = 0;
      }

      else
      {
        v237 = *(v264 + 16);
        if (v237 >= v46)
        {
          *(v264 + 16) = v46;
          LOWORD(v237) = v46;
        }

        if (v44 < 0xF0)
        {
          v194 = 0;
          *(v3 + 44) = 0;
          *(v189 + 14) = 0;
        }

        else
        {
          *(v3 + 44) = 1;
          *(v189 + 18) = v47;
          v238 = sub_1002F1A00(v189);
          if (v238)
          {
            v239 = v238;
            if (sub_10000C240())
            {
              sub_10000AF54("%! (%d)", v240, v241, v242, v243, v244, v245, v246, v239);
              v247 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            v248 = v264;
            if (!v264)
            {
              sub_1000D660C();
              v248 = v264;
            }

            *(v248 + 13) = 9;
            goto LABEL_96;
          }

          LOWORD(v237) = *(v264 + 16);
          v194 = *(v264 + 14);
        }

        v190 = v45 & 0x3F;
        v191 = v237;
        v192 = v3;
        v193 = v20;
      }

      sub_1002F3A7C(v192, 0, v193, v190, v191, v194);
      return;
    }

    if ((v43 & 2) != 0)
    {
      goto LABEL_147;
    }

    if (*(v264 + 13) != 1)
    {
      return;
    }

    sub_1002F3A04(v3);
    *(v3 + 44) = (v44 & 0xF0) == 224;
    v168 = v264;
    if (*(v264 + 16) >= v46)
    {
      *(v264 + 16) = v46;
      if ((v44 & 0xF0) != 0xE0)
      {
        goto LABEL_220;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v169, v170, v171, v172, v173, v174, v175, 917);
        v176 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (sub_1002F20AC(67, v3, v20))
      {
        return;
      }

      v177 = v264;
      *(v264 + 164) = 918;
      v178 = *(v177 + 72);
      if (v178)
      {
        v178(0, 0, 918);
        v177 = v264;
      }

      sub_1002EE524(v177, 1);
      if ((*(v3 + 44) & 1) == 0)
      {
LABEL_220:
        if (!sub_1002F20AC(47, v3, v20))
        {
          v251 = v264;
          if (!v264)
          {
            sub_1000D660C();
            v251 = v264;
          }

          *(v251 + 13) = 2;
        }

        return;
      }

      v168 = v264;
    }

    *(v168 + 18) = v47;
    goto LABEL_220;
  }

  v265 = 0;
  v263 = 0;
  v264 = 0;
  v19 = a2[2];
  v20 = v19 >> 2;
  if (v19 > 0xF7 || v20 == 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", v83, v84, v85, v86, v87, v88, v89, 917);
    v90 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_124;
  }

  if (v6 != 8)
  {
    if (v6 != 1)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v148, v149, v150, v151, v152, v153, v154, 917);
      v155 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v21 = sub_1002EE1C0(a1, v19 >> 2, &v263);
    if (v21)
    {
      v22 = v21;
      if (sub_10000C240())
      {
        sub_10000AF54("Receive RPN with result %! on DLCI %d", v23, v24, v25, v26, v27, v28, v29, v22);
        v30 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v261 = 50806655;
      v262 = 4881;
      if ((v4 & 2) != 0)
      {
        v31 = sub_1002F3ED4(v3, 0, v20, &v261);
        if (v31)
        {
          v32 = v31;
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v33, v34, v35, v36, v37, v38, v39, v32);
            v40 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }
      }

      return;
    }

    if ((v4 & 2) != 0)
    {
      v227 = sub_1002F3ED4(v3, 0, v20, v263 + 22);
      if (!v227)
      {
        return;
      }

      v228 = v227;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v229, v230, v231, v232, v233, v234, v235, v228);
      v236 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
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

      sub_10000AF54("Mux_ReceiveRPN, command is parameter report but C/R bit is not set, ignoring", v195, v196, v197, v198, v199, v200, v201, v260);
      v202 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

LABEL_226:
    sub_10080F7A0();
    return;
  }

  BYTE2(v264) = a2[3];
  v137 = vand_s8(vdup_n_s16(a2[4]), 0x30000800040003);
  *(&v264 + 3) = vuzp1_s8(v137, v137).u32[0];
  HIBYTE(v264) = a2[5] & 0x3F;
  v265 = *(a2 + 3);
  LOWORD(v264) = *(a2 + 4);
  v138 = sub_1002EE1C0(a1, v20, &v263);
  if (v138)
  {
    if ((v4 & 2) == 0)
    {
      v139 = v138;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v140, v141, v142, v143, v144, v145, v146, v139);
      v147 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_226;
    }

    v204 = sub_1002EE258(v3, v20, &v263);
    if (v204)
    {
      v205 = v204;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v206, v207, v208, v209, v210, v211, v212, v205);
        v213 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_96;
    }

LABEL_160:
    v214 = *(*(v263 + 40) + 32);
    if (v214)
    {
      v214(*(v263 + 8), &v264);
    }

    v215 = v264;
    if (v264)
    {
      *(v263 + 24) = BYTE2(v264);
      if ((v215 & 2) == 0)
      {
LABEL_164:
        if ((v215 & 4) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_198;
      }
    }

    else if ((v264 & 2) == 0)
    {
      goto LABEL_164;
    }

    *(v263 + 25) = BYTE3(v264);
    if ((v215 & 4) == 0)
    {
LABEL_165:
      if ((v215 & 8) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_199;
    }

LABEL_198:
    *(v263 + 26) = BYTE4(v264);
    if ((v215 & 8) == 0)
    {
LABEL_166:
      if ((v215 & 0x10) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_200;
    }

LABEL_199:
    *(v263 + 27) = BYTE5(v264);
    if ((v215 & 0x10) == 0)
    {
LABEL_167:
      if ((v215 & 0x20) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_201;
    }

LABEL_200:
    *(v263 + 28) = BYTE6(v264);
    if ((v215 & 0x20) == 0)
    {
LABEL_168:
      if ((v215 & 0x40) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_202;
    }

LABEL_201:
    *(v263 + 30) = v265;
    if ((v215 & 0x40) == 0)
    {
LABEL_169:
      if ((v215 & 0x100) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_203;
    }

LABEL_202:
    *(v263 + 31) = HIBYTE(v265);
    if ((v215 & 0x100) == 0)
    {
LABEL_170:
      if ((v215 & 0x200) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_204;
    }

LABEL_203:
    *(v263 + 29) = *(v263 + 29) & 0xFE | HIBYTE(v264) & 1;
    if ((v215 & 0x200) == 0)
    {
LABEL_171:
      if ((v215 & 0x400) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_205;
    }

LABEL_204:
    *(v263 + 29) = *(v263 + 29) & 0xFD | HIBYTE(v264) & 2;
    if ((v215 & 0x400) == 0)
    {
LABEL_172:
      if ((v215 & 0x800) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_206;
    }

LABEL_205:
    *(v263 + 29) = *(v263 + 29) & 0xFB | HIBYTE(v264) & 4;
    if ((v215 & 0x800) == 0)
    {
LABEL_173:
      if ((v215 & 0x1000) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_207;
    }

LABEL_206:
    *(v263 + 29) = *(v263 + 29) & 0xF7 | HIBYTE(v264) & 8;
    if ((v215 & 0x1000) == 0)
    {
LABEL_174:
      if ((v215 & 0x2000) == 0)
      {
LABEL_176:
        v216 = sub_1002F3ED4(v3, 0, v20, &v264);
        if (!v216)
        {
          return;
        }

        v217 = v216;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("%! (%d)", v218, v219, v220, v221, v222, v223, v224, v217);
        v225 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_226;
      }

LABEL_175:
      *(v263 + 29) = *(v263 + 29) & 0xDF | HIBYTE(v264) & 0x20;
      goto LABEL_176;
    }

LABEL_207:
    *(v263 + 29) = *(v263 + 29) & 0xEF | HIBYTE(v264) & 0x10;
    if ((v215 & 0x2000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if ((v4 & 2) != 0)
  {
    goto LABEL_160;
  }

  if (*(v263 + 64))
  {
    sub_1002F3A04(v3);
    v203 = v263;
    *(v263 + 22) = v264;
    *(v203 + 30) = v265;
    (*(v203 + 64))(*(v203 + 8), &v264);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Mux_ReceiveRPN, unsolicited response, ignoring", v252, v253, v254, v255, v256, v257, v258, v260);
    v259 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_226;
    }
  }
}

uint64_t sub_1002F5018(int a1, char a2, unsigned int a3, __int16 a4, int a5)
{
  v9 = sub_1002EE718(a1);
  if (!v9)
  {
    return 114;
  }

  v40 = 0;
  v10 = 2 * (a2 & 0x7Fu);
  if (v10 >= 0x3E)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v11, v12, v13, v14, v15, v16, v17, 917);
      v18 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  v19 = v9;
  if (sub_1002EE1C0(v9, v10, &v40))
  {
    if (!sub_10000C240())
    {
      return 114;
    }

    sub_10000AF54("Could not find link for DLCI (%d)", v20, v21, v22, v23, v24, v25, v26, v10);
    v27 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 114;
    }

    goto LABEL_9;
  }

  v28 = v40;
  if (*(v40 + 13))
  {
    return 114;
  }

  if (*(v40 + 16) >= a3)
  {
    *(v40 + 16) = a3;
  }

  if (a5)
  {
    *(v19 + 44) = 1;
    *(v28 + 18) = a4;
    v30 = sub_1002F1A00(v28);
    if (v30)
    {
      v31 = v30;
      if (!sub_10000C240())
      {
        return 114;
      }

      sub_10000AF54("%! (%d)", v32, v33, v34, v35, v36, v37, v38, v31);
      v39 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        return 114;
      }

LABEL_9:
      sub_10080F7A0();
      return 114;
    }

    v28 = v40;
  }

  else
  {
    LOBYTE(a4) = 0;
    *(v19 + 44) = 0;
  }

  result = 0;
  *(v28 + 14) = a4;
  *(v28 + 13) = 5;
  return result;
}

uint64_t sub_1002F51BC(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a1 + 8) && !*(a1 + 16))
  {
    sub_1000D660C();
    if (!*(a1 + 8) && !*(a1 + 16))
    {
      return 101;
    }
  }

  if (dword_100BCE2FC)
  {
    return 924;
  }

  v8 = sub_100007618(0x18uLL, 0x10A0040AE3F5B3BuLL);
  qword_100B6B570 = v8;
  if (!v8)
  {
    return 106;
  }

  v8[1] = a1;
  v8[2] = a3;
  *(a1 + 172) = 0;
  *(a1 + 24) = 0;
  *(v8[1] + 64) = 0;
  v9 = v8[1];
  *(v9 + 166) = 0;
  *v8 = a2;
  *(v8 + 4) = 0;
  v6 = sub_1002F5AE8(sub_1002F52E0, sub_1002F54AC, v9);
  if (v6)
  {
    if (qword_100B6B570)
    {
      sub_10000C1E8(qword_100B6B570);
      qword_100B6B570 = 0;
    }
  }

  else
  {
    dword_100BCE2FC = 1;
  }

  return v6;
}

uint64_t sub_1002F52E0(uint64_t a1)
{
  if (a1 == 834)
  {
    v4 = *(qword_100B6B570 + 8);
    v1 = 834;
  }

  else
  {
    v1 = a1;
    if (!a1)
    {
      v10 = 0u;
      v11 = 0u;
      v9[0] = 0;
      v8[0] = 0;
      LOBYTE(v10) = 3;
      WORD1(v10) = 2;
      DWORD2(v10) = 3;
      v2 = *(qword_100B6B570 + 8);
      if (*(v2 + 8))
      {
        DWORD2(v11) = *(v2 + 8);
        v3 = 4;
      }

      else
      {
        *(&v11 + 1) = *(v2 + 16);
        v3 = 16;
      }

      LOBYTE(v11) = 3;
      WORD1(v11) = v3;
      LOBYTE(v9[0]) = 6;
      WORD1(v9[0]) = 2;
      v9[1] = &v10;
      LOBYTE(v8[0]) = 6;
      WORD1(v8[0]) = 6;
      v8[1] = &unk_1008A5208;
      result = sub_1002F69AC(sub_1002F54E8, v9, v8);
      if (result)
      {
        *(*(qword_100B6B570 + 8) + 172) = result;
        return sub_1002F59B0();
      }

      return result;
    }

    v5 = qword_100B6B570;
    if ((*qword_100B6B570)--)
    {
      result = sub_1002F5AE8(sub_1002F52E0, sub_1002F54AC, *(v5 + 8));
      if (!result)
      {
        return result;
      }

      v1 = result;
      v5 = qword_100B6B570;
    }

    v4 = *(v5 + 8);
  }

  return sub_1002F59F4(v4, v1);
}

uint64_t sub_1002F54AC()
{
  v0 = *(qword_100B6B570 + 8);
  v1 = *(v0 + 172);
  if (!v1)
  {
    if (*(v0 + 164) && (*(qword_100B6B570 + 4) & 1) != 0)
    {
      v1 = 0;
    }

    else
    {
      v1 = 923;
      *(v0 + 172) = 923;
    }
  }

  return sub_1002F59F4(v0, v1);
}

uint64_t sub_1002F54E8(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    if (*(a1 + 2))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(a1 + 8) + 16 * v5;
        if (*(v6 + 2) >= 2u)
        {
          v7 = 0;
          do
          {
            v8 = *(v6 + 8) + 16 * v7;
            v49 = 0;
            v50 = 0;
            v9 = *(v8 + 8);
            if (v9 > 255)
            {
              switch(v9)
              {
                case 512:
                  *(*(qword_100B6B570 + 8) + 166) = *(v8 + 24);
                  break;
                case 257:
                  v31 = *(v8 + 16);
                  if (v31 == 8 || v31 == 4)
                  {
                    if (*(v8 + 18) >= 0x63u)
                    {
                      v33 = 99;
                    }

                    else
                    {
                      v33 = *(v8 + 18);
                    }

                    memmove((*(qword_100B6B570 + 8) + 64), *(v8 + 24), v33);
                    *(*(qword_100B6B570 + 8) + v33 + 64) = 0;
                  }

                  break;
                case 256:
                  v21 = *(v8 + 16);
                  if (v21 == 8 || v21 == 4)
                  {
                    if (*(v8 + 18) >= 0x27u)
                    {
                      v23 = 39;
                    }

                    else
                    {
                      v23 = *(v8 + 18);
                    }

                    memmove((*(qword_100B6B570 + 8) + 24), *(v8 + 24), v23);
                    *(*(qword_100B6B570 + 8) + v23 + 24) = 0;
                  }

                  break;
              }
            }

            else if (v9 == 1)
            {
              if ((*(v8 + 16) & 0xFE) == 6)
              {
                v24 = *(qword_100B6B570 + 8);
                v25 = *(v24 + 8);
                LOBYTE(v49) = 3;
                if (v25)
                {
                  WORD1(v49) = 4;
                  LODWORD(v50) = v25;
                }

                else
                {
                  WORD1(v49) = 16;
                  v50 = *(v24 + 16);
                }

                if (*(v8 + 18))
                {
                  v34 = 0;
                  v35 = 0;
                  while (!sub_100237F64(*(v8 + 24) + v34, &v49))
                  {
                    ++v35;
                    v34 += 16;
                    if (v35 >= *(v8 + 18))
                    {
                      goto LABEL_63;
                    }
                  }

                  *(qword_100B6B570 + 4) = 1;
                }
              }
            }

            else if (v9 == 4)
            {
              if ((*(v8 + 16) & 0xFE) == 6 && *(v8 + 18))
              {
                v26 = 0;
                v27 = 0;
                do
                {
                  v28 = *(v8 + 24);
                  *buf = xmmword_1008A5270;
                  if ((*(v28 + v26) & 0xFE) == 6)
                  {
                    v29 = v28 + v26;
                    if (*(v28 + v26 + 2))
                    {
                      if (sub_100237F64(*(v29 + 8), buf))
                      {
                        v30 = *(v29 + 8);
                        if (*(v30 + 16) == 1 && *(v30 + 18) == 1)
                        {
                          *(*(qword_100B6B570 + 8) + 164) = *(v30 + 24);
                        }
                      }
                    }
                  }

                  ++v27;
                  v26 += 16;
                }

                while (v27 < *(v8 + 18));
              }
            }

            else if (v9 == 9 && (*(v8 + 16) & 0xFE) == 6)
            {
              v10 = *(v8 + 24);
              if ((*v10 & 0xFE) == 6)
              {
                v11 = *(v10 + 8);
                if (*(v11 + 2) >= 2u && *(v11 + 16) == 1)
                {
                  *(*(qword_100B6B570 + 8) + 168) = *(v11 + 24);
                  if (sub_10000C240())
                  {
                    sub_10000AF54("Profile Version: %x", v12, v13, v14, v15, v16, v17, v18, *(*(qword_100B6B570 + 8) + 168));
                    v19 = sub_10000C050(0x33u);
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = sub_10000C0FC();
                      *buf = 136446210;
                      *&buf[4] = v20;
                      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                    }
                  }
                }
              }
            }

LABEL_63:
            v36 = v7 + 3;
            v7 += 2;
          }

          while (v36 < *(v6 + 2));
        }

        v37 = qword_100B6B570;
        v38 = *(qword_100B6B570 + 8);
        if (*(v38 + 164))
        {
          if (*(qword_100B6B570 + 4) == 1)
          {
            break;
          }
        }

        *(v38 + 164) = 0;
        *(v38 + 24) = 0;
        *(*(v37 + 8) + 64) = 0;
        if (++v5 >= *(a1 + 2))
        {
          goto LABEL_67;
        }
      }

      sub_1002F6CD4();
    }

    else
    {
LABEL_67:
      if (a2)
      {
        result = sub_1002F6C78();
        v39 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v39 = 923;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_SDP_ContinueCurrentReq returned %!", v40, v41, v42, v43, v44, v45, v46, v39);
        v47 = sub_10000C050(0x33u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100810070(v47);
        }
      }

      *(*(qword_100B6B570 + 8) + 172) = v39;
    }

    return sub_1002F59B0();
  }

  *(*(qword_100B6B570 + 8) + 172) = a3;

  return sub_1002F59B0();
}

uint64_t sub_1002F59B0()
{
  result = sub_1002F61A8();
  if (result)
  {
    v1 = result;
    v2 = *(qword_100B6B570 + 8);

    return sub_1002F59F4(v2, v1);
  }

  return result;
}

uint64_t sub_1002F59F4(uint64_t a1, uint64_t a2)
{
  v4 = qword_100B6B570;
  if (*(qword_100B6B570 + 8) != a1)
  {
    sub_1000D660C();
    v4 = qword_100B6B570;
  }

  v6 = v4[2];
  sub_10000C1E8(v4);
  qword_100B6B570 = 0;
  dword_100BCE2FC = 0;

  return v6(a1, a2);
}

uint64_t sub_1002F5A7C(unsigned int a1, _WORD *a2)
{
  v3 = 0;
  v4[0] = 262147;
  v4[1] = a1;
  if (sub_1002F8294(v4, 1u, a2, &v3, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (xmmword_100BCE300)
  {
    return 821;
  }

  if (!*(sub_1003045A0(0x34u) + 2))
  {
    sub_1000D660C();
  }

  if (!*sub_1003045A0(0x34u))
  {
    sub_1000D660C();
  }

  if (xmmword_100BCE300)
  {
    v3 = 140;
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("SDP client init failed %!", v8, v9, v10, v11, v12, v13, v14, v3);
      v15 = sub_10000C050(0x34u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    return v3;
  }

  v16 = sub_1001BBBD8(0x60uLL, 0x10900402CEF74E7uLL);
  qword_100B6B580 = v16;
  if (!v16)
  {
    v3 = 106;
    goto LABEL_10;
  }

  if (byte_100B6B578 == 1)
  {
    v17 = 1024;
    v16[44] = 1024;
    LODWORD(xmmword_100BCE300) = 1;
    v21 = 0u;
    v22 = 0u;
    WORD2(v21) = 5000;
    LODWORD(v21) = -64512;
  }

  else
  {
    v17 = v16[44];
    LODWORD(xmmword_100BCE300) = 1;
    v22 = 0uLL;
    *(&v21 + 1) = 0;
    *(&v21 + 2) = 327745535;
    if (!v17)
    {
      v17 = *sub_1003045A0(0x34u);
    }

    LOWORD(v21) = v17;
    if (v17 <= 0x80)
    {
      v18 = 128;
      goto LABEL_23;
    }
  }

  if (v17 <= *(sub_1003045A0(0x28u) + 8))
  {
    goto LABEL_24;
  }

  v18 = *(sub_1003045A0(0x28u) + 8);
LABEL_23:
  LOWORD(v21) = v18;
LABEL_24:
  WORD3(v21) = 772;
  WORD6(v21) = 0;
  BYTE8(v22) = 0;
  v19 = sub_10028F454(sub_1002F5D1C, sub_1002F5ECC, sub_1002F5ED0, 1, a3, &v21, (qword_100B6B580 + 4), &unk_1008A5280);
  if (v19)
  {
    v3 = v19;
    sub_1002F60F8();
  }

  else
  {
    v20 = qword_100B6B580;
    *qword_100B6B580 = 0;
    *(v20 + 72) = a2;
    *(v20 + 80) = a1;
    if (off_100B6B588)
    {
      off_100B6B588(1);
    }

    return 0;
  }

  return v3;
}

void sub_1002F5D1C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (xmmword_100BCE300 && !*qword_100B6B580)
  {
    v13 = a4;
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SDP client connect failed %!", v14, v15, v16, v17, v18, v19, v20, v13);
        v21 = sub_10000C050(0x34u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100813F70();
        }
      }

      if (off_100B6B588)
      {
        off_100B6B588(0);
      }
    }

    else
    {
      v22 = a3;
      if (*(sub_1003045A0(0x34u) + 2) < a3)
      {
        v22 = *(sub_1003045A0(0x34u) + 2);
      }

      v24 = qword_100B6B580;
      *(qword_100B6B580 + 12) = v22;
      v25 = *(v24 + 88);
      if (!v25)
      {
        v26 = sub_1003045A0(0x34u);
        LOWORD(v25) = a2;
        if (*v26 < a2)
        {
          LOWORD(v25) = *sub_1003045A0(0x34u);
        }
      }

      v27 = qword_100B6B580;
      *(qword_100B6B580 + 14) = v25;
      *v27 = 1;
      v28 = sub_100007618(*(v27 + 12), 0x843A7DFCuLL);
      v29 = qword_100B6B580;
      *(qword_100B6B580 + 24) = v28;
      if (v28)
      {
        (*(v29 + 80))(0);
        return;
      }

      v13 = 106;
    }

    v30 = *(qword_100B6B580 + 80);
    sub_1002F60F8();
    v30(v13);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Spurious connect complete callback CID = %d", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x34u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100815C64();
    }
  }
}

void sub_1002F5ED0(uint64_t a1, char *a2, unsigned int a3)
{
  v32 = 0;
  v33 = 0;
  if (*(qword_100B6B580 + 4) == a1)
  {
    sub_10002242C(*(qword_100B6B580 + 8));
    if (*qword_100B6B580 == 2)
    {
      if (a3 < 5)
      {
        v5 = 804;
LABEL_17:
        sub_1002F7764(v5);
        return;
      }

      if (!a2)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1141, "buf");
      }

      v32 = a2;
      LOWORD(v33) = a3;
      WORD1(v33) = a3;
      v23 = *a2;
      v24 = bswap32(*(a2 + 1));
      HIDWORD(v33) = 65539;
      if (*(qword_100B6B580 + 68) != HIWORD(v24))
      {
        v5 = 830;
        goto LABEL_17;
      }

      v25 = a2[4];
      v26 = a2[3];
      WORD2(v33) = 5;
      if (v23 != *(qword_100B6B580 + 32))
      {
        if (v23 == 1)
        {
          if (a3 < 7)
          {
            HIBYTE(v33) = 1;
            v28 = 800;
          }

          else
          {
            v27 = __rev16(*(a2 + 5));
            WORD2(v33) = 7;
            v28 = v27 + 800;
          }

          if (v28 >= 0x327)
          {
            v5 = 807;
          }

          else
          {
            v5 = v28;
          }
        }

        else
        {
          v5 = 831;
        }

        goto LABEL_17;
      }

      if ((v25 | (v26 << 8)) < a3 - 5)
      {
        v5 = 829;
        goto LABEL_17;
      }

      v29 = *(qword_100B6B580 + 32);
      if (v29 == 7 || v29 == 5)
      {
        v5 = sub_1002F6FBC(&v32);
      }

      else
      {
        if (v29 != 3)
        {

          sub_1000D660C();
          return;
        }

        v5 = sub_1002F6DA4(&v32);
      }

      if (v5)
      {
        goto LABEL_17;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("SDP client not expecting data at this time", v15, v16, v17, v18, v19, v20, v21, v31);
      v22 = sub_10000C050(0x34u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100815CE4();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("ReceivedResponseCB no server corresponds to CID = %x", v7, v8, v9, v10, v11, v12, v13, a1);
    v14 = sub_10000C050(0x34u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100815C64();
    }
  }
}

void sub_1002F60F8()
{
  v0 = qword_100B6B580;
  if (*(qword_100B6B580 + 8))
  {
    sub_10002242C(*(qword_100B6B580 + 8));
    v1 = qword_100B6B580;
    *(qword_100B6B580 + 8) = 0;
    sub_10029104C(*(v1 + 4), 436);
    v0 = qword_100B6B580;
  }

  if (v0[3])
  {
    sub_10000C1E8(v0[3]);
    v0 = qword_100B6B580;
    *(qword_100B6B580 + 24) = 0;
  }

  if (v0[5])
  {
    sub_10000C1E8(v0[5]);
    v0 = qword_100B6B580;
    *(qword_100B6B580 + 40) = 0;
  }

  if (v0[7])
  {
    sub_10000C1E8(v0[7]);
    v0 = qword_100B6B580;
    *(qword_100B6B580 + 56) = 0;
  }

  sub_10000C1E8(v0);
  qword_100B6B580 = 0;
  byte_100B6B578 = 0;
  LODWORD(xmmword_100BCE300) = 0;
}

uint64_t sub_1002F61A8()
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v0 = qword_100B6B580;
  if (*qword_100B6B580 == 3)
  {
    return 810;
  }

  if (off_100B6B588)
  {
    off_100B6B588(0);
    v0 = qword_100B6B580;
  }

  v1 = sub_10029104C(*(v0 + 4), 436);
  if (v1)
  {
    sub_1002F6248(*(qword_100B6B580 + 4));
  }

  else
  {
    sub_10002242C(*(qword_100B6B580 + 8));
    v2 = qword_100B6B580;
    *(qword_100B6B580 + 8) = 0;
    *v2 = 3;
  }

  return v1;
}

uint64_t sub_1002F6248(uint64_t result)
{
  if (xmmword_100BCE300)
  {
    v1 = result;
    if (off_100B6B588)
    {
      off_100B6B588(0);
    }

    if (*(qword_100B6B580 + 4) != v1 && sub_10000C240())
    {
      sub_10000AF54("No SDP connection for CID %d", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x34u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100815C64();
      }
    }

    v10 = *(qword_100B6B580 + 72);
    sub_1002F60F8();
    return v10();
  }

  return result;
}

uint64_t sub_1002F6300(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v3 = qword_100B6B580;
  v4 = *qword_100B6B580;
  if (!*qword_100B6B580 || v4 == 3)
  {
    return 810;
  }

  if (v4 == 2)
  {
    return 817;
  }

  if (!a2)
  {
    return 825;
  }

  *(qword_100B6B580 + 48) = a2;
  *(v3 + 50) = 0;
  v10 = sub_100239CA8(a3);
  if (v10 == 65534)
  {
    return 106;
  }

  v11 = v10 + 24;
  if (*(qword_100B6B580 + 12) < (v10 + 24))
  {
    return 816;
  }

  v12 = sub_100007618(4 * a2, 0x100004052888210uLL);
  v13 = qword_100B6B580;
  *(qword_100B6B580 + 40) = v12;
  if (!v12)
  {
    return 106;
  }

  v14 = *(v13 + 24);
  if (!v14)
  {
    v19 = "SDP_State->ReqBuffer";
    goto LABEL_32;
  }

  if (!v11)
  {
    v19 = "(bufLen) > 0";
LABEL_32:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1315, v19);
  }

  v22 = v14;
  v23 = v11;
  v26 = 2;
  v24 = v11;
  *v14 = 2;
  if (v11 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1324, "ByteStream_NumReadBytesAvail(request) >= (2 * sizeof(uint16_t))");
  }

  v25 = 5;
  sub_100239F94(&v22, a3);
  if (HIBYTE(v26))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    goto LABEL_35;
  }

  if (v24 - v25 <= 1)
  {
LABEL_35:
    v20 = "ByteStream_NumReadBytesAvail(request) >= 2";
    goto LABEL_37;
  }

  if (v26 != 2)
  {
    v20 = "(request).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1332, v20);
  }

  v22[v25 + 1] = *(qword_100B6B580 + 48);
  v22[v25] = *(qword_100B6B580 + 49);
  v15 = v25;
  v16 = v25 + 2;
  v25 = v16;
  *(qword_100B6B580 + 16) = v16;
  if (HIBYTE(v26))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    goto LABEL_39;
  }

  if (v24 <= v16)
  {
LABEL_39:
    v21 = "ByteStream_NumReadBytesAvail(request) >= 1";
    goto LABEL_41;
  }

  if (v26 != 2)
  {
    v21 = "(request).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1341, v21);
  }

  v25 = v15 + 3;
  v22[v16] = 0;
  if (v26 == 2)
  {
    v17 = v25;
    v24 = v25;
  }

  else
  {
    v17 = v24;
  }

  LOBYTE(v26) = 15;
  v18 = qword_100B6B580;
  *(qword_100B6B580 + 18) = v17;
  *(v18 + 80) = a1;
  *(v18 + 32) = 3;
  return sub_1002F65DC();
}

uint64_t sub_1002F65DC()
{
  v0 = qword_100B6B580;
  v1 = *(qword_100B6B580 + 68) + 1;
  *(qword_100B6B580 + 68) = v1;
  *(*(v0 + 24) + 2) = v1;
  *(*(v0 + 24) + 1) = *(v0 + 69);
  v2 = *(v0 + 18) - 5;
  *(*(v0 + 24) + 4) = v2;
  *(*(v0 + 24) + 3) = HIBYTE(v2);
  result = sub_10028E1F0(sub_1002F7BC4, *(v0 + 4), 0, *(v0 + 24), *(v0 + 18));
  if (!result)
  {
    result = sub_10002195C(sub_1002F7BE0, 0, 70, (qword_100B6B580 + 8));
    *qword_100B6B580 = 2;
  }

  return result;
}

uint64_t sub_1002F6694(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v19 = 0;
  v3 = *qword_100B6B580;
  if (!*qword_100B6B580 || v3 == 3)
  {
    return 810;
  }

  if (v3 == 2)
  {
    return 817;
  }

  result = sub_1002F68F8(a3);
  if (!result)
  {
    v9 = sub_100239CA8(a3);
    if (!v9)
    {
      return 106;
    }

    v10 = qword_100B6B580;
    if (*(qword_100B6B580 + 12) < (v9 + 28))
    {
      return 816;
    }

    v11 = *(qword_100B6B580 + 24);
    if (v11)
    {
      if (v9 != 0xFFE4)
      {
        v18 = *(qword_100B6B580 + 24);
        LOWORD(v19) = v9 + 28;
        HIWORD(v19) = 2;
        WORD1(v19) = v9 + 28;
        *v11 = 4;
        if ((v9 + 28) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1470, "ByteStream_NumReadBytesAvail(request) >= (2 * sizeof(uint16_t))");
        }

        v12 = (v9 + 28);
        if (v12 <= 8)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1474, "ByteStream_NumReadBytesAvail(request) >= 4");
        }

        *(v11 + 5) = bswap32(a2);
        if (v12 <= 0xA)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1475, "ByteStream_NumReadBytesAvail(request) >= 2");
        }

        *(v11 + 10) = *(v10 + 14);
        *(v11 + 9) = *(v10 + 15);
        WORD2(v19) = 11;
        sub_100239F94(&v18, a3);
        v13 = WORD2(v19);
        *(qword_100B6B580 + 16) = WORD2(v19);
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
        }

        else if (WORD1(v19) > v13)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v13 + 1;
            *(v18 + v13) = 0;
            if (BYTE6(v19) == 2)
            {
              v14 = WORD2(v19);
              WORD1(v19) = WORD2(v19);
            }

            else
            {
              v14 = WORD1(v19);
            }

            BYTE6(v19) = 15;
            v15 = qword_100B6B580;
            *(qword_100B6B580 + 18) = v14;
            *(v15 + 80) = a1;
            *(v15 + 32) = 5;
            return sub_1002F65DC();
          }

          v17 = "(request).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1485, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(request) >= 1";
        goto LABEL_37;
      }

      v16 = "(bufLen) > 0";
    }

    else
    {
      v16 = "SDP_State->ReqBuffer";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1461, v16);
  }

  return result;
}