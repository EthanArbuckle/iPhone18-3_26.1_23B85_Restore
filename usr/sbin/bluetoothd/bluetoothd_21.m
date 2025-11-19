BOOL sub_1001A9A10(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 <= 0xE)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1102, "(size_t)(13 + 2) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = 15;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_5:
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_1008109A8();
    }

    return 0;
  }

  if (v1 == 15)
  {
    goto LABEL_5;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1110, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  *(a1 + 12) = 16;
  v5 = *(v4 + 15) - 1;
  v2 = 1;
  switch(v5)
  {
    case 0:
    case 2:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      return v2;
    case 1:

      result = sub_1001AD558(a1);
      break;
    case 3:

      result = sub_1001AD8D0(a1);
      break;
    case 4:

      result = sub_1001ADACC(a1);
      break;
    case 7:

      result = sub_1001ADCCC(a1);
      break;
    case 8:

      result = sub_1001ADED4(a1);
      break;
    case 12:

      result = sub_1001AE0D8(a1);
      break;
    case 14:

      result = sub_1001AE448(a1);
      break;
    default:
      return 0;
  }

  return result;
}

BOOL sub_1001A9BD8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100810B1C();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 - v3 <= 0x11)
  {
    goto LABEL_4;
  }

  if (v4 <= 16)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1789, "ByteStream_NumReadBytesAvail(*pBs) >= (17)");
  }

  v6 = *(a1 + 4);
  *(a1 + 6) = v3 + 17;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1791, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= (v3 + 17))
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810A20();
      return 0;
    }
  }

  else
  {
    v7 = *a1;
    v8 = v3 + 18;
    *(a1 + 6) = v3 + 18;
    v9 = *(v7 + (v3 + 17));
    if (v4 - 18 >= v9)
    {
      *(a1 + 14) = 15;
      if (!v6)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1798, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v6;
      if (v6 < v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1799, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v8;
      if ((v6 - v8) < v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1802, "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)");
      }

      bzero((v7 + v8), v9);
      *(a1 + 6) += v9;
      if (v6 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1804, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v6;
      }

      *(a1 + 14) = 15;
      if (!*a1 || (v10 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1806, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v10;
      if (v10 < (v8 + v9))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1807, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v8 + v9;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100810AA0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001A9E78(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v6 = "buf";
    goto LABEL_76;
  }

  if (!a2)
  {
    v6 = "(numBytes) > 0";
LABEL_76:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 356, v6);
  }

  v7 = a1;
  v8 = a2;
  v11 = 1;
  v9 = a2;
  if (a2 <= 0xF)
  {
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100810B98();
    return 0;
  }

  if (a2 - 15 >= 0xFFFFFFFE)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 363, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v3 = *(a1 + 13);
  v4 = *(a1 + 14);
  v10 = 16;
  if ((~v4 & 0xFC) == 0)
  {
    return 0;
  }

  v5 = v3 | (v4 << 8);
  result = 1;
  if (v5 <= 3203)
  {
    if (v5 <= 1092)
    {
      if (v5 > 1071)
      {
        switch(v5)
        {
          case 1072:
            return sub_1001AA80C(&v7);
          case 1077:
            return sub_1001AAC10(&v7);
          case 1078:
            return sub_1001AAED8(&v7);
        }
      }

      else
      {
        switch(v5)
        {
          case 1035:
            return sub_1001AA218(&v7);
          case 1037:
            return sub_1001AA414(&v7);
          case 1070:
            return sub_1001AA610(&v7);
        }
      }
    }

    else if (v5 <= 3090)
    {
      switch(v5)
      {
        case 1093:
          return sub_1001AAA0C(&v7);
        case 3082:
          return sub_1001AC948(&v7);
        case 3089:
          return sub_1001ACAA0(&v7);
      }
    }

    else if (v5 > 3167)
    {
      if (v5 == 3168)
      {
        return sub_1001AD118(&v7);
      }

      else if (v5 == 3173)
      {
        return sub_1001AD310(&v7);
      }
    }

    else if (v5 == 3091)
    {
      return sub_1001ACD18(&v7);
    }

    else if (v5 == 3154)
    {
      return sub_1001ACEF8(&v7);
    }
  }

  else if (v5 > 8230)
  {
    if (v5 <= 8254)
    {
      switch(v5)
      {
        case 8231:
          return sub_1001ABC2C(&v7);
        case 8247:
          return sub_1001ABDCC(&v7);
        case 8248:
          return sub_1001AC004(&v7);
      }
    }

    else if (v5 > 8296)
    {
      if (v5 == 8297)
      {
        return sub_1001AC610(&v7);
      }

      else if (v5 == 8299)
      {
        return sub_1001AC7AC(&v7);
      }
    }

    else if (v5 == 8255)
    {
      return sub_1001AC23C(&v7);
    }

    else if (v5 == 8296)
    {
      return sub_1001AC474(&v7);
    }
  }

  else if (v5 <= 8214)
  {
    switch(v5)
    {
      case 3204:
        return sub_1001AD44C(&v7);
      case 8200:
        return sub_1001AB1A0(&v7);
      case 8201:
        return sub_1001AB3A8(&v7);
    }
  }

  else if (v5 > 8217)
  {
    if (v5 == 8218)
    {
      return sub_1001AB8F0(&v7);
    }

    else if (v5 == 8230)
    {
      return sub_1001ABAEC(&v7);
    }
  }

  else if (v5 == 8215)
  {
    return sub_1001AB5B0(&v7);
  }

  else if (v5 == 8217)
  {
    return sub_1001AB6EC(&v7);
  }

  return result;
}

BOOL sub_1001AA218(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x15)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810C14();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2318, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2321, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2322, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2325, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2327, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2329, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 22;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2330, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AA414(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x16)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810C90();
      return 0;
    }

    return result;
  }

  if (v2 <= 6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2342, "ByteStream_NumReadBytesAvail(*pBs) >= (6 + 1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 7;
  *(a1 + 6) = v1 + 7;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2345, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2346, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2349, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2351, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2353, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 23;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2354, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AA610(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 9)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810D0C();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2366, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2369, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2370, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2373, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
  }

  *(v5 + (v1 + 6)) = 0;
  *(a1 + 6) += 4;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2375, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2377, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 10;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2378, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001AA80C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x25)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810D88();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2390, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2393, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2394, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 31)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2398, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16)");
  }

  v6 = (v5 + v4);
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 32;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2400, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2402, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 38;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2403, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AAA0C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x45)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810E04();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2479, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2482, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2483, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 63)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2489, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16 + 16 + 16)");
  }

  v6 = (v5 + v4);
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 64;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2491, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2493, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 70;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2494, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AAC10(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100810F7C();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 - v3 <= 2)
  {
    goto LABEL_4;
  }

  if (v2 <= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2415, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v5 = *(a1 + 4);
  v6 = v3 + 1;
  *(a1 + 6) = v3 + 1;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2417, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v6)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810E80();
      return 0;
    }
  }

  else
  {
    v7 = *a1;
    *(a1 + 6) = v3 + 2;
    if (v2 <= (v3 + 2))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2419, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
    }

    v8 = *(v7 + v6);
    v9 = v3 + 3;
    *(a1 + 6) = v3 + 3;
    if (v2 - v3 - 3 >= v8)
    {
      *(a1 + 14) = 15;
      if (!v5)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2426, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v5;
      if (v5 <= (v3 + 2))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2427, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9;
      if ((v5 - v9) < v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2430, "ByteStream_NumReadBytesAvail(*pBs) >= (ampKeyLength)");
      }

      bzero((v7 + v9), v8);
      *(a1 + 6) += v8;
      if (v5 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2432, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v5;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v5;
      }

      *(a1 + 14) = 15;
      if (!*a1 || (v10 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2434, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v10;
      if (v10 < (v9 + v8))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2435, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9 + v8;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100810F00();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001AAED8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008110F4();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 - v3 <= 2)
  {
    goto LABEL_4;
  }

  if (v2 <= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2447, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v5 = *(a1 + 4);
  v6 = v3 + 1;
  *(a1 + 6) = v3 + 1;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2449, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v6)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810FF8();
      return 0;
    }
  }

  else
  {
    v7 = *a1;
    *(a1 + 6) = v3 + 2;
    if (v2 <= (v3 + 2))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2451, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
    }

    v8 = *(v7 + v6);
    v9 = v3 + 3;
    *(a1 + 6) = v3 + 3;
    if (v2 - v3 - 3 >= v8)
    {
      *(a1 + 14) = 15;
      if (!v5)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2458, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v5;
      if (v5 <= (v3 + 2))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2459, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9;
      if ((v5 - v9) < v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2462, "ByteStream_NumReadBytesAvail(*pBs) >= (ampKeyLength)");
      }

      bzero((v7 + v9), v8);
      *(a1 + 6) += v8;
      if (v5 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2464, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v5;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v5;
      }

      *(a1 + 14) = 15;
      if (!*a1 || (v10 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2466, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v10;
      if (v10 < (v9 + v8))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2467, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9 + v8;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100811078();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001AB1A0(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x1F)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811170();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2650, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2653, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2654, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 30)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2657, "ByteStream_NumReadBytesAvail(*pBs) >= (31)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(v6 + 23) = 0;
  v6[2] = 0;
  *(a1 + 6) += 31;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2659, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2661, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 32;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2662, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AB3A8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x1F)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008111EC();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2674, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2677, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2678, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 30)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2681, "ByteStream_NumReadBytesAvail(*pBs) >= (31)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(v6 + 23) = 0;
  v6[2] = 0;
  *(a1 + 6) += 31;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2683, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2685, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 32;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2686, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AB5B0(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_13;
  }

  if (*(a1 + 10) - *(a1 + 12) <= 0x1F)
  {
LABEL_13:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811268();
      return 0;
    }

    return result;
  }

  v1 = *(a1 + 8);
  v2 = *a1;
  if (*a1)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2698, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 14) = 2;
  *(a1 + 10) = v1;
  *(a1 + 12) = 0;
  if (v1 <= 0x1F)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2703, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16)");
  }

  *v2 = 0u;
  v2[1] = 0u;
  *(a1 + 12) += 32;
  if (v1 > *(a1 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2705, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = v1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 10) = v1;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001AB6EC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x1B)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008112E4();
      return 0;
    }

    return result;
  }

  if (v2 <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2718, "ByteStream_NumReadBytesAvail(*pBs) >= (2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 2;
  *(a1 + 6) = v1 + 2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2721, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2722, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 25)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2727, "ByteStream_NumReadBytesAvail(*pBs) >= (8 + 2 + 16)");
  }

  v6 = v5 + v4;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(a1 + 6) += 26;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2729, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2731, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 28;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2732, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AB8F0(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x11)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811360();
      return 0;
    }

    return result;
  }

  if (v2 <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2744, "ByteStream_NumReadBytesAvail(*pBs) >= (2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 2;
  *(a1 + 6) = v1 + 2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2747, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2748, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2751, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2753, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2755, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 18;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2756, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001ABAEC(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_13;
  }

  if (*(a1 + 10) - *(a1 + 12) <= 0x3F)
  {
LABEL_13:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008113DC();
      return 0;
    }

    return result;
  }

  v1 = *(a1 + 8);
  v2 = *a1;
  if (*a1)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2768, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 14) = 2;
  *(a1 + 10) = v1;
  *(a1 + 12) = 0;
  if (v1 <= 0x3F)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2773, "ByteStream_NumReadBytesAvail(*pBs) >= (32 + 32)");
  }

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  *(a1 + 12) += 64;
  if (v1 > *(a1 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2775, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = v1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 10) = v1;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001ABC2C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_15;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x3F)
  {
LABEL_15:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811458();
      return 0;
    }

    return result;
  }

  if (v2 <= 6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2788, "ByteStream_NumReadBytesAvail(*pBs) >= (1+6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 7;
  *(a1 + 6) = v4;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2792, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2793, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 31)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2797, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16)");
  }

  v6 = (v5 + v4);
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 32;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2799, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001ABDCC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008115D0();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 - v3 <= 3)
  {
    goto LABEL_4;
  }

  if (v4 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2812, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1+1)");
  }

  v6 = *(a1 + 4);
  v7 = v3 + 3;
  *(a1 + 6) = v3 + 3;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2815, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v7)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008114D4();
      return 0;
    }
  }

  else
  {
    v8 = *a1;
    v9 = v3 + 4;
    *(a1 + 6) = v9;
    v10 = *(v8 + v7);
    if (v4 - 4 >= v10)
    {
      *(a1 + 14) = 15;
      if (!v6)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2825, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v6;
      if (v6 < v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2826, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9;
      if ((v6 - v9) < v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2829, "ByteStream_NumReadBytesAvail(*pBs) >= (advertisingDataLength)");
      }

      bzero((v8 + v9), v10);
      *(a1 + 6) += v10;
      if (v6 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2831, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v6;
      }

      *(a1 + 14) = 15;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100811554();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001AC004(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100811748();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 - v3 <= 3)
  {
    goto LABEL_4;
  }

  if (v4 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2844, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1+1)");
  }

  v6 = *(a1 + 4);
  v7 = v3 + 3;
  *(a1 + 6) = v3 + 3;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2847, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v7)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081164C();
      return 0;
    }
  }

  else
  {
    v8 = *a1;
    v9 = v3 + 4;
    *(a1 + 6) = v9;
    v10 = *(v8 + v7);
    if (v4 - 4 >= v10)
    {
      *(a1 + 14) = 15;
      if (!v6)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2856, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v6;
      if (v6 < v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2857, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9;
      if ((v6 - v9) < v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2860, "ByteStream_NumReadBytesAvail(*pBs) >= (scanResponseDataLength)");
      }

      bzero((v8 + v9), v10);
      *(a1 + 6) += v10;
      if (v6 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2862, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v6;
      }

      *(a1 + 14) = 15;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1008116CC();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001AC23C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008118C0();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = v2 - v3;
  if (v2 - v3 <= 2)
  {
    goto LABEL_4;
  }

  if (v4 <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2875, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1)");
  }

  v6 = *(a1 + 4);
  v7 = v3 + 2;
  *(a1 + 6) = v3 + 2;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2878, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v7)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008117C4();
      return 0;
    }
  }

  else
  {
    v8 = *a1;
    v9 = v3 + 3;
    *(a1 + 6) = v9;
    v10 = *(v8 + v7);
    if (v4 - 3 >= v10)
    {
      *(a1 + 14) = 15;
      if (!v6)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2887, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v6;
      if (v6 < v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2888, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v9;
      if ((v6 - v9) < v10)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2891, "ByteStream_NumReadBytesAvail(*pBs) >= (advertisingDataLength)");
      }

      bzero((v8 + v9), v10);
      *(a1 + 6) += v10;
      if (v6 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2893, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v6;
      }

      *(a1 + 14) = 15;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100811844();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001AC474(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_15;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x1E)
  {
LABEL_15:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081193C();
      return 0;
    }

    return result;
  }

  if (v2 <= 14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2906, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1+1+3+2+2+1+1+1+1+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 15;
  *(a1 + 6) = v4;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2910, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2911, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2914, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2915, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001AC610(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_15;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x23)
  {
LABEL_15:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008119B8();
      return 0;
    }

    return result;
  }

  if (v2 <= 19)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2928, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1+1+3+2+1+2+2+1+1+1+1+1+1+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 20;
  *(a1 + 6) = v4;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2932, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2933, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2936, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2937, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001AC7AC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_15;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x13)
  {
LABEL_15:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811A34();
      return 0;
    }

    return result;
  }

  if (v2 <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2950, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 4;
  *(a1 + 6) = v4;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2954, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2955, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2958, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2959, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  return 1;
}

uint64_t sub_1001AC948(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_100811AB0();
    }

    return 0;
  }

  v1 = *(a1 + 12);
  if (*(a1 + 10) == v1)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) == 2)
  {
    *(a1 + 10) = v1;
  }

  v4 = *(a1 + 8);
  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2297, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 14) = 2;
  *(a1 + 10) = v4;
  *(a1 + 12) = 0;
  *v5 = 0;
  ++*(a1 + 12);
  if (v4 > *(a1 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2303, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = v4;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 10) = v4;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 8)) == 0)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2305, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v2 = 1;
  *(a1 + 14) = 1;
  *(a1 + 10) = v6;
  *(a1 + 12) = 1;
  return v2;
}

BOOL sub_1001ACAA0(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100811C24();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 == v3)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2507, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811B28();
      return 0;
    }
  }

  else
  {
    v5 = *a1;
    v6 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v7 = *(a1 + 4);
    v8 = 22 * *(v5 + v3);
    if (~v3 + v2 >= v8)
    {
      *(a1 + 14) = 15;
      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2514, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v7;
      if (v3 >= v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2515, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6;
      if ((v7 - v6) < v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2518, "ByteStream_NumReadBytesAvail(*pBs) >= (numLinkKeys*(6+16))");
      }

      bzero((v5 + v6), v8);
      *(a1 + 6) += v8;
      if (v7 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2520, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v7;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v7;
      }

      *(a1 + 14) = 15;
      if (!*a1 || (v9 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2522, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v9;
      if (v9 < (v6 + v8))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2523, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v6 + v8;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100811BA8();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001ACD18(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_17;
  }

  v1 = *(a1 + 6);
  if (*(a1 + 5) - v1 <= 0x1E)
  {
LABEL_17:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811C9C();
      return 0;
    }

    return result;
  }

  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v1;
  }

  v2 = *(a1 + 4);
  *(a1 + 14) = 15;
  v3 = *a1;
  if (!*a1 || !v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2537, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v2;
  if (v1 > v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2538, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v1;
  if ((v2 - v1) <= 30)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2541, "ByteStream_NumReadBytesAvail(*pBs) >= (31)");
  }

  v4 = (v3 + v1);
  *v4 = 0;
  v4[1] = 0;
  *(v4 + 23) = 0;
  v4[2] = 0;
  *(a1 + 6) += 31;
  if (v2 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2543, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v2;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v5 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2545, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v6 = v1 + 31;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v5;
  if (v5 < v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2546, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v6;
  return 1;
}

BOOL sub_1001ACEF8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0xF0)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811D18();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2558, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2561, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2562, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 239)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2565, "ByteStream_NumReadBytesAvail(*pBs) >= (240)");
  }

  v6 = (v5 + v4);
  v6[13] = 0u;
  v6[14] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(a1 + 6) += 240;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2567, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2569, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 241;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2570, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AD118(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_19;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 6)
  {
LABEL_19:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811D94();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2582, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2585, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2586, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2589, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + (v1 + 6)) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2591, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2593, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 7;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2594, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001AD310(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_13;
  }

  if (*(a1 + 5) - *(a1 + 6) <= 4)
  {
LABEL_13:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811E10();
      return 0;
    }

    return result;
  }

  v1 = *(a1 + 4);
  v2 = *a1;
  if (*a1)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2610, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 14) = 2;
  *(a1 + 5) = v1;
  *(a1 + 6) = 0;
  if (v1 <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2617, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2 + 1 + 1)");
  }

  *(v2 + 4) = 0;
  *v2 = 0;
  *(a1 + 6) += 5;
  if (v1 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2619, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v1;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001AD44C(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_4;
  }

  if (*(a1 + 10) == *(a1 + 12))
  {
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811E8C();
      return 0;
    }

    return result;
  }

  v2 = *(a1 + 8);
  v3 = *a1;
  if (*a1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2632, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 14) = 2;
  *(a1 + 10) = v2;
  *(a1 + 12) = 0;
  *v3 = 0;
  ++*(a1 + 12);
  if (v2 > *(a1 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2637, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 12) = v2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 10) = v2;
  }

  *(a1 + 14) = 15;
  return 1;
}

BOOL sub_1001AD558(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100811F84();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 == v3)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1824, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_30:
      sub_100811F04();
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 4);
    v6 = *a1;
    v7 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v8 = *(v6 + v3);
    if (!*(v6 + v3))
    {
      return 1;
    }

    LOWORD(v9) = v5;
    while (1)
    {
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
        return 0;
      }

      v10 = v2 - v7;
      if (v10 < 0xA)
      {
        return 0;
      }

      if (v10 <= 7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1834, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 1 + 6)");
      }

      v11 = v7 + 8;
      *(a1 + 6) = v7 + 8;
      if (v2 <= (v7 + 8))
      {
        break;
      }

      v12 = v7 + 9;
      *(a1 + 6) = v12;
      v13 = *(v6 + v11);
      if (v2 - v12 < v13)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1837, "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)");
      }

      v14 = v12 + v13;
      *(a1 + 6) = v14;
      if (v2 <= v14)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1838, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
      }

      result = 0;
      v15 = v14 + 1;
      *(a1 + 6) = v14 + 1;
      if (v13 <= 0x1F && v2 - v15 >= v13)
      {
        *(a1 + 14) = 15;
        if (!v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1844, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
        }

        *(a1 + 6) = 0;
        *(a1 + 14) = 2;
        *(a1 + 5) = v9;
        if (v14 >= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1845, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
        }

        *(a1 + 6) = v15;
        if (v9 - (v14 + 1) < v13)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1846, "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)");
        }

        bzero((v6 + v15), v13);
        *(a1 + 6) += v13;
        if (v5 > *(a1 + 5))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1848, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
        }

        *(a1 + 6) = v5;
        if (*(a1 + 14) == 2)
        {
          *(a1 + 5) = v5;
        }

        *(a1 + 14) = 15;
        v6 = *a1;
        if (!*a1 || (v9 = *(a1 + 4), !*(a1 + 4)))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1850, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
        }

        v7 = v15 + v13;
        *(a1 + 6) = 0;
        *(a1 + 14) = 1;
        *(a1 + 5) = v9;
        if (v9 < (v15 + v13))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1851, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
        }

        *(a1 + 6) = v7;
        result = 1;
        LOWORD(v2) = v9;
        if (--v8)
        {
          continue;
        }
      }

      return result;
    }

    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_30;
    }
  }

  return result;
}

BOOL sub_1001AD8D0(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xA)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100811FFC();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1869, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1872, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1873, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1874, "ByteStream_NumReadBytesAvail(*pBs) >= (8)");
  }

  *(v5 + (v1 + 3)) = 0;
  *(a1 + 6) += 8;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1876, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1878, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 11;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1879, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001ADACC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xB)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100812078();
      return 0;
    }

    return result;
  }

  if (v2 <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1894, "ByteStream_NumReadBytesAvail(*pBs) >= (2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 2;
  *(a1 + 6) = v1 + 2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1897, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1898, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 9)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1901, "ByteStream_NumReadBytesAvail(*pBs) >= (8 + 2)");
  }

  v6 = v5 + v4;
  *(v6 + 8) = 0;
  *v6 = 0;
  *(a1 + 6) += 10;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1903, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1905, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 12;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1906, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001ADCCC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x40)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008120F4();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1921, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1924, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1925, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 63)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1928, "ByteStream_NumReadBytesAvail(*pBs) >= (32 + 32)");
  }

  v6 = (v5 + v4);
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 64;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1930, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1932, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 65;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1933, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001ADED4(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x20)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100812170();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1948, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1951, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1952, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 31)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1953, "ByteStream_NumReadBytesAvail(*pBs) >= (32)");
  }

  v6 = (v5 + v4);
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 32;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1955, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1957, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 33;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1958, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AE0D8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100812364();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 == v3)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1972, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 > v3)
  {
    v5 = *(a1 + 4);
    v6 = *a1;
    v7 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v8 = *(v6 + v3);
    if (!*(v6 + v3))
    {
      return 1;
    }

    LOWORD(v9) = v5;
    while (1)
    {
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_32:
        result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_1008122E8();
        return 0;
      }

      v10 = v2 - v7;
      if (v10 <= 0x17)
      {
        goto LABEL_32;
      }

      if (v10 <= 22)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1990, "ByteStream_NumReadBytesAvail(*pBs) >= (2 + 1 + 6 + 1 + 1 + 1 + 1 + 1 + 2 + 1 + 6)");
      }

      *(a1 + 6) = v7 + 23;
      if (v2 <= (v7 + 23))
      {
        *(a1 + 15) = 1;
        result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_27;
      }

      v11 = v7 + 24;
      *(a1 + 6) = v7 + 24;
      v12 = *(v6 + (v7 + 23));
      if (v2 - (v7 + 24) < v12)
      {
        break;
      }

      *(a1 + 14) = 15;
      if (!v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2001, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v9;
      if ((v7 + 24) > v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2002, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v11;
      if (v9 - (v7 + 24) < v12)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2003, "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)");
      }

      bzero((v6 + v11), v12);
      *(a1 + 6) += v12;
      if (v5 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2005, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v5;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v5;
      }

      *(a1 + 14) = 15;
      v6 = *a1;
      if (!*a1 || (v9 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2007, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      v7 = v11 + v12;
      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v9;
      if (v9 < (v11 + v12))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2008, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v7;
      result = 1;
      LOWORD(v2) = v9;
      if (!--v8)
      {
        return result;
      }
    }

    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10081226C();
    return 0;
  }

  *(a1 + 15) = 1;
  result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_27:
    sub_1008121EC();
    return 0;
  }

  return result;
}

BOOL sub_1001AE448(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_4:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10081245C();
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v2 - v3 <= 6)
  {
    goto LABEL_4;
  }

  if ((v2 - v3) <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2028, "ByteStream_NumReadBytesAvail(*pBs) >= (2 + 1 + 1 + 1 + 1)");
  }

  v5 = *(a1 + 4);
  *(a1 + 6) = v3 + 6;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2031, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= (v3 + 6))
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008123DC();
      return 0;
    }
  }

  else
  {
    v6 = *a1;
    v7 = v3 + 7;
    *(a1 + 6) = v3 + 7;
    v8 = *(v6 + (v3 + 6));
    v9 = v2 - (v3 + 7);
    if (v8 > 0xF7 || v9 < v8)
    {
      return 0;
    }

    if (*(v6 + (v3 + 6)))
    {
      *(a1 + 14) = 15;
      if (!v5)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2040, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 2;
      *(a1 + 5) = v5;
      if (v5 < v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2041, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v7;
      if ((v5 - (v3 + 7)) < v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2042, "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)");
      }

      bzero((v6 + v7), v8);
      *(a1 + 6) += v8;
      if (v5 > *(a1 + 5))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2044, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v5;
      if (*(a1 + 14) == 2)
      {
        *(a1 + 5) = v5;
      }

      *(a1 + 14) = 15;
      if (!*a1 || (v11 = *(a1 + 4), !*(a1 + 4)))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2046, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
      }

      *(a1 + 6) = 0;
      *(a1 + 14) = 1;
      *(a1 + 5) = v11;
      if (v11 < (v7 + v8))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2047, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
      }

      *(a1 + 6) = v7 + v8;
    }

    return 1;
  }

  return result;
}

BOOL sub_1001AE6C4(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 1)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008124D8();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2062, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2066, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2067, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2070, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + v4) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2072, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2074, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v2 + 2;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v7 > v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2075, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001AE8BC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0xF8)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100812554();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2087, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2091, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2092, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 247)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2095, "ByteStream_NumReadBytesAvail(*pBs) >= (248)");
  }

  v6 = v5 + v4;
  *(v6 + 240) = 0;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(a1 + 6) += 248;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2097, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2099, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 249;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2100, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AEAE0(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xF1)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008125D0();
      return 0;
    }

    return result;
  }

  if (v2 <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2112, "ByteStream_NumReadBytesAvail(*pBs) >= (1+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 2;
  *(a1 + 6) = v1 + 2;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2116, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2117, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 239)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2120, "ByteStream_NumReadBytesAvail(*pBs) >= (240)");
  }

  v6 = (v5 + v4);
  v6[13] = 0u;
  v6[14] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(a1 + 6) += 240;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2122, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2124, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 242;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2125, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AECFC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x16)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081264C();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2137, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2141, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2142, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 31)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2146, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16)");
  }

  v6 = (v5 + v4);
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 32;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2148, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2150, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 33;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2151, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AEF00(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x40)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008126C8();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2195, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2198, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2199, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 63)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2205, "ByteStream_NumReadBytesAvail(*pBs) >= (16 + 16 + 16 + 16)");
  }

  v6 = (v5 + v4);
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + 6) += 64;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2207, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2209, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 65;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2210, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AF108(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 1)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100812744();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2170, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2174, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2175, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2178, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + v4) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2180, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2182, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v2 + 2;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v7 > v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2183, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001AF300(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_19;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 3)
  {
LABEL_19:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008127C0();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2222, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2225, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2226, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2229, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + (v1 + 3)) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2231, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2233, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 4;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2234, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001AF4F8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 0x10)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081283C();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2246, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2249, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2250, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2253, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2255, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2257, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v2 + 17;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2258, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001AF6F8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 - v2 <= 8)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008128B8();
      return 0;
    }

    return result;
  }

  if (v1 <= v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2270, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  v3 = *(a1 + 4);
  v4 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2273, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2274, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2277, "ByteStream_NumReadBytesAvail(*pBs) >= (8)");
  }

  *(v5 + v4) = 0;
  *(a1 + 6) += 8;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2279, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2281, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v2 + 9;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 2282, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

uint64_t sub_1001AF904(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  if (a5)
  {
    v7 = a3;
    result = sub_1001B7940(a1, a2, a3, sub_1001AF9C8, 0x3FAu, 0);
    if (!result)
    {
      sub_1001B7900(1);
      qword_100B5AC10 = sub_1001BBBD8(0x40uLL, 0x10A00402451739BuLL);
      if (qword_100B5AC10)
      {
        v9 = *(sub_1003045A0(0xFu) + 10);
        v10 = qword_100B5AC10;
        *(qword_100B5AC10 + 60) = v9;
        sub_1003051D8(v10);
        result = 0;
        v11 = qword_100B5AC10;
        *(qword_100B5AC10 + 24) = a5;
        *(v11 + 40) = v7;
        *(v11 + 44) = a4;
      }

      else
      {
        sub_1001B7CA4();
        return 106;
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

void sub_1001AF9C8(unsigned int *a1)
{
  v2 = *a1;
  if (*a1 == 6)
  {
    v8 = sub_1001AFE5C(*(a1 + 2));
    if (!v8)
    {
      sub_1000D660C();
    }

    if ((*(v8 + 95) & 0xFE) == 2)
    {
      if (sub_1001F11B4(v8 + 3, *(a1 + 1), *(a1 + 8)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Receive error", v9, v10, v11, v12, v13, v14, v15, v69);
          v16 = sub_10000C050(0xFu);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Data (event %d) received in invalid state (%d), forwarding to app.\n", v17, v18, v19, v20, v21, v22, v23, *a1);
        v24 = sub_10000C050(0xFu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      (*(qword_100B5AC10 + 24))(a1);
    }

    return;
  }

  if (v2 == 2)
  {
    v4 = sub_1001AFE5C(*(a1 + 2));
    if (!v4)
    {
      sub_1000D660C();
    }

    v5 = sub_1001AFE5C(*(a1 + 2));
    if (v5)
    {
      *(v5 + 95) = 0;
    }

    if (*(qword_100B5AC10 + 49))
    {
      *(v4 + 21) = 1802;
    }

    v6 = v4[7];
    if (v6)
    {
      sub_10000C1E8(v6);
      v4[7] = 0;
    }

    sub_1001B021C(*(a1 + 2), a1[2]);
    v7 = *(a1 + 2);

    sub_1001B0268(v7);
    return;
  }

  if (v2 != 1 || a1[4])
  {
    v3 = *(qword_100B5AC10 + 24);

    v3();
    return;
  }

  if (*(qword_100B5AC10 + 16) >= *(qword_100B5AC10 + 60))
  {
    if (!sub_10000C240())
    {
      goto LABEL_56;
    }

    sub_10000AF54("Maximum handsfree connection is %d, cannot create device", v31, v32, v33, v34, v35, v36, v37, *(qword_100B5AC10 + 60));
    v38 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

LABEL_36:
    sub_10080F7A0();
LABEL_56:
    *(qword_100B5AC10 + 49) = 1;
    v60 = 106;
LABEL_57:
    sub_1001B017C(*(a1 + 2), v60);
    return;
  }

  v25 = *(a1 + 2);
  v26 = *(a1 + 1);
  v27 = sub_1001BBBD8(0x78uLL, 0x10B00408DD53233uLL);
  if (!v27)
  {
    if (!sub_10000C240())
    {
      goto LABEL_56;
    }

    sub_10000AF54("Could not allocate connection, out of memory\n", v39, v40, v41, v42, v43, v44, v45, v69);
    v46 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    goto LABEL_36;
  }

  v28 = v27;
  v29 = *v26;
  *(v27 + 46) = *(v26 + 2);
  *(v27 + 22) = v29;
  *v27 = v25;
  if (*(sub_1003045A0(0xFu) + 8))
  {
    v30 = *(sub_1003045A0(0xFu) + 8);
  }

  else
  {
    v30 = 256;
  }

  v47 = sub_100007618(v30, 0x3345E5EBuLL);
  *(v28 + 7) = v47;
  if (!v47)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate receive buffer\n", v61, v62, v63, v64, v65, v66, v67, v69);
      v68 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10000C1E8(v28);
    goto LABEL_56;
  }

  *(v28 + 24) = 9;
  *(v28 + 16) = -1;
  *(v28 + 67) = -1;
  sub_1001F1660((v28 + 24), sub_1001B04A8, v47, v30);
  v48 = qword_100B5AC10;
  ++*(qword_100B5AC10 + 16);
  sub_1003051E0(v28 + 13, v48);
  *(qword_100B5AC10 + 49) = 1;
  v49 = sub_1001AFE5C(*(a1 + 2));
  if (v49)
  {
    *(v49 + 95) = 1;
  }

  v50 = *(a1 + 2);
  v51 = sub_1001AFE5C(v50);
  if (!v51)
  {
    sub_1000D660C();
  }

  if (!sub_1002F5AE8(sub_1001B17C4, sub_1001B1998, (v51 + 11)))
  {
    *(qword_100B5AC10 + 18) = v50;
    *(v51 + 94) = 1;
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("SDP connect", v52, v53, v54, v55, v56, v57, v58, v69);
    v59 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  v60 = sub_1001B1A6C(v50);
  if (v60)
  {
    goto LABEL_57;
  }
}

void *sub_1001AFE5C(uint64_t a1)
{
  if (qword_100B5AC10)
  {
    for (i = *qword_100B5AC10; i && i != qword_100B5AC10; i = *i)
    {
      if (*(i - 52) == a1)
      {
        return i - 13;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not find addr for device handle %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 0;
}

uint64_t sub_1001AFF04(uint64_t a1, uint64_t a2, char *a3, size_t a4, int a5, char a6)
{
  v12 = sub_1001AFE5C(a1);
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 78))
    {
      v14 = 1805;
    }

    else
    {
      if (a5)
      {
        v15 = sub_1001B27EC;
      }

      else
      {
        v15 = sub_1001B2878;
      }

      v14 = sub_1001B8260(a1, v15, a3, a4);
      if (!v14)
      {
        *(v13 + 78) = a6;
        v13[1] = a2;
        return v14;
      }
    }
  }

  else
  {
    sub_1000D660C();
    v14 = 1802;
  }

  if (a5)
  {
    sub_10000C1E8(a3);
  }

  return v14;
}

uint64_t sub_1001AFFD0(uint64_t a1, uint64_t a2)
{
  if (!sub_1001B78D0())
  {
    return 408;
  }

  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  if (*(v4 + 95) != 3)
  {
    return 1802;
  }

  if ((*(qword_100B5AC10 + 40) & 1) == 0)
  {
    return 1808;
  }

  return sub_1001AFF04(a1, a2, "AT+NREC=0\r", 0xAuLL, 0, 20);
}

uint64_t sub_1001B0084(uint64_t a1)
{
  v1 = sub_1001AFE5C(a1);
  if (v1)
  {
    if (dword_100BCE26C)
    {
      return *(v1 + 24);
    }
  }

  else
  {
    sub_1000D660C();
  }

  return 0;
}

uint64_t sub_1001B00C0(uint64_t a1, uint64_t a2)
{
  v2 = *(qword_100B5AC10 + 44);
  if ((~v2 & 0x197) != 0)
  {
    if ((~v2 & 0x183) != 0)
    {
      if ((~v2 & 0x103) != 0)
      {
        if ((~v2 & 3) != 0)
        {
          if ((~v2 & 0x101) != 0)
          {
            if ((v2 & 1) == 0)
            {
              return 1813;
            }

            v3 = "AT+BAC=1\r";
            v4 = 9;
          }

          else
          {
            v3 = "AT+BAC=1,256\r";
            v4 = 13;
          }
        }

        else
        {
          v3 = "AT+BAC=1,2\r";
          v4 = 11;
        }
      }

      else
      {
        v3 = "AT+BAC=1,2,256\r";
        v4 = 15;
      }
    }

    else
    {
      v3 = "AT+BAC=1,2,128,256\r";
      v4 = 19;
    }
  }

  else
  {
    v3 = "AT+BAC=1,2,127,128,255,256\r";
    v4 = 27;
  }

  return sub_1001AFF04(a1, a2, v3, v4, 0, 27);
}

void sub_1001B017C(uint64_t a1, int a2)
{
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  if (*(qword_100B5AC10 + 49))
  {
    *(v4 + 21) = a2;
  }

  if ((*(v4 + 95) | 4) != 4)
  {
    sub_1001B1770(a1);
    v5 = sub_1001AFE5C(a1);
    if (v5)
    {
      *(v5 + 95) = 4;
    }

    sub_1001B0268(a1);
  }
}

void sub_1001B021C(uint64_t a1, int a2)
{
  v4 = sub_1001AFE5C(a1);
  if (v4)
  {
    if (*(v4 + 78))
    {
      sub_1001B16EC(a1, 1802);
    }

    *(qword_100B5AC10 + 52) = a2;
  }
}

void sub_1001B0268(uint64_t a1)
{
  v2 = sub_1001AFE5C(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  if (*(v2 + 95) == 4)
  {
    if (*(v2 + 94) == 2)
    {
      if (!sub_1002F61A8())
      {
        *(v2 + 94) = 3;
        goto LABEL_15;
      }

      if (!sub_10000C240())
      {
        goto LABEL_13;
      }

      sub_10000AF54("SDP disconnect - forcing disconnect!", v3, v4, v5, v6, v7, v8, v9, v29[0]);
      v10 = sub_10000C050(0xFu);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

LABEL_12:
      sub_100812934();
LABEL_13:
      sub_1001B26F4(a1);
      goto LABEL_15;
    }

    if (sub_1001B8184(a1))
    {
      if (!sub_10000C240())
      {
        goto LABEL_13;
      }

      sub_10000AF54("Handsfree disconnect - forcing disconnect!", v11, v12, v13, v14, v15, v16, v17, v29[0]);
      v18 = sub_10000C050(0xFu);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_15:
  if (*(v2 + 94) || *(v2 + 95))
  {
    if (!*(qword_100B5AC10 + 56))
    {
      v29[1] = v2;
      v29[0] = 2;
      if (sub_10002195C(sub_1001B2790, v29, 100, (qword_100B5AC10 + 56)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Register disconnect timeout handler", v19, v20, v21, v22, v23, v24, v25, v29[0]);
          v26 = sub_10000C050(0xFu);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }
      }
    }
  }

  else
  {
    v27 = *(qword_100B5AC10 + 56);
    if (v27)
    {
      sub_10002242C(v27);
      *(qword_100B5AC10 + 56) = 0;
    }

    v28 = sub_1001AFE5C(a1);
    if (v28)
    {
      *(v28 + 95) = 0;
    }

    if (*(qword_100B5AC10 + 49))
    {
      sub_1001B251C(a1, *(v2 + 21));
    }

    else
    {
      LODWORD(v30[0]) = 2;
      DWORD2(v30[0]) = *(qword_100B5AC10 + 52);
      WORD2(v30[0]) = a1;
      (*(qword_100B5AC10 + 24))(v30);
      sub_100305208(v2 + 13);
      sub_10000C1E8(v2);
      --*(qword_100B5AC10 + 16);
    }
  }
}

void sub_1001B04A8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!qword_100B5AC10)
  {
    goto LABEL_16;
  }

  v2 = *qword_100B5AC10;
  if (!*qword_100B5AC10 || v2 == qword_100B5AC10)
  {
    goto LABEL_16;
  }

  while (*(v2 - 9) != *(*(a1 + 32) + 8))
  {
    v2 = *v2;
    if (v2)
    {
      v4 = v2 == qword_100B5AC10;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v2 - 52);
  if (!*(v2 - 52))
  {
LABEL_16:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find connenction handle that matches recv buffer\n", v6, v7, v8, v9, v10, v11, v12, v22);
      v13 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v5 = 0;
  }

  v14 = *(a1 + 8);
  v15 = &off_100AE5090;
  v16 = 21;
  while (strcmp(*(v15 - 1), v14))
  {
    v15 += 2;
    if (!--v16)
    {
      goto LABEL_25;
    }
  }

  if (((*v15)(v5, a1) & 1) == 0)
  {
LABEL_25:
    v17 = sub_1001AFE5C(v5);
    if (!v17)
    {
      sub_1000D660C();
    }

    v18 = 0;
    v19 = *(a1 + 8);
    while (strcmp(off_100AE51D8[v18], v19))
    {
      if (++v18 == 8)
      {
        goto LABEL_30;
      }
    }

    if ((~v18 & 6) != 0)
    {
LABEL_35:
      sub_1001B16EC(v5, v18 + 2701);
      return;
    }

    v21 = sub_1001F0A88(a1, (a1 + 24), 0);
    if (v21)
    {
      *(v17 + 20) = sub_1003072F0(v21);
      goto LABEL_35;
    }

LABEL_30:
    v20 = *(qword_100B5AC10 + 32);
    if (v20)
    {
      v20(a1);
    }
  }
}

BOOL sub_1001B0668(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001AFE5C(a1);
  if (!v3)
  {
    sub_1000D660C();
  }

  v4 = sub_1001F0A88(a2, (a2 + 24), 0);
  v5 = v4;
  if (v4)
  {
    *(v3 + 24) = sub_1003072F0(v4);
  }

  return v5 != 0;
}

uint64_t sub_1001B06DC(__int16 a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  LODWORD(v8) = 14;
  WORD2(v8) = a1;
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6 == 1)
      {
        v5 = sub_1003072F0(v3);
      }

      else if (!v6)
      {
        v4 = v3;
      }

      ++v6;
      v3 = sub_1001F0A88(a2, (a2 + 24), 0);
    }

    while (v3);
    LOBYTE(v9) = v5;
    *(&v8 + 1) = v4;
  }

  (*(qword_100B5AC10 + 24))(&v8);
  return 1;
}

BOOL sub_1001B079C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001AFE5C(a1);
  if (!v3)
  {
    sub_1000D660C();
  }

  v4 = v3[78];
  if (v4 == 10)
  {
    v9 = sub_1001F0A88(a2, (a2 + 24), 0);
    if (v9)
    {
      v10 = v9;
      v11 = v3 + 71;
      v12 = 1;
      do
      {
        v13 = 7;
        v14 = v11;
        do
        {
          if (v12 == *(v14 - 7))
          {
            *v14 = sub_1003072F0(v10);
          }

          ++v14;
          --v13;
        }

        while (v13);
        ++v12;
        v10 = sub_1001F0A88(a2, (a2 + 24), 0);
      }

      while (v10);
    }

    return *(qword_100B5AC10 + 48) == 0;
  }

  if (v4 == 11)
  {
    v5 = sub_1001F0A88(a2, (a2 + 24), 0);
    if (v5)
    {
      v6 = 0;
      do
      {
        v16 = v5 + 1;
        v7 = sub_1001F0A88(a2, &v16, 0);
        if (v7)
        {
          v8 = v7;
          if (sub_100307330(v7, "call"))
          {
            if (sub_100307330(v8, "service"))
            {
              if (sub_100307330(v8, "callsetup") && sub_100307330(v8, "call_setup"))
              {
                if (sub_100307330(v8, "battchg"))
                {
                  if (sub_100307330(v8, "signal"))
                  {
                    if (sub_100307330(v8, "callheld"))
                    {
                      ++v6;
                      if (!sub_100307330(v8, "roam"))
                      {
                        v3[70] = v6;
                      }
                    }

                    else
                    {
                      v3[69] = ++v6;
                    }
                  }

                  else
                  {
                    v3[68] = ++v6;
                  }
                }

                else
                {
                  v3[67] = ++v6;
                }
              }

              else
              {
                v3[66] = ++v6;
              }
            }

            else
            {
              v3[65] = ++v6;
            }
          }

          else
          {
            v3[64] = ++v6;
          }
        }

        v5 = sub_1001F0A88(a2, (a2 + 24), 0);
      }

      while (v5);
    }

    return *(qword_100B5AC10 + 48) == 0;
  }

  return 0;
}

uint64_t sub_1001B09E0(__int16 a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  LODWORD(v8) = 15;
  WORD2(v8) = a1;
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6 == 1)
      {
        v5 = sub_1003072F0(v3);
      }

      else if (!v6)
      {
        v4 = v3;
      }

      ++v6;
      v3 = sub_1001F0A88(a2, (a2 + 24), 0);
    }

    while (v3);
    LOBYTE(v9) = v5;
    *(&v8 + 1) = v4;
  }

  (*(qword_100B5AC10 + 24))(&v8);
  return 1;
}

unsigned __int8 *sub_1001B0AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  result = sub_1001F0A88(a2, (a2 + 24), 0);
  if (result)
  {
    v6 = sub_1003072F0(result);
    result = sub_1001F0A88(a2, (a2 + 24), 0);
    if (result)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v7 = sub_1003072F0(result);
      v8 = v4 + 71;
      v9 = 7;
      do
      {
        if (v6 == *(v8 - 7))
        {
          *v8 = v7;
        }

        ++v8;
        --v9;
      }

      while (v9);
      WORD2(v12[0]) = v3;
      if (v6 == v4[66])
      {
        v10 = 19;
LABEL_11:
        LODWORD(v12[0]) = v10;
LABEL_12:
        BYTE8(v12[0]) = v7;
        (*(qword_100B5AC10 + 24))(v12);
        return 1;
      }

      if (v6 == v4[64])
      {
        v11 = 11;
      }

      else if (v6 == v4[65])
      {
        v11 = 13;
      }

      else
      {
        if (v6 == v4[67])
        {
          v10 = 23;
          goto LABEL_11;
        }

        if (v6 == v4[68])
        {
          v10 = 24;
          goto LABEL_11;
        }

        if (v6 == v4[69])
        {
          v10 = 12;
          goto LABEL_11;
        }

        if (v6 != v4[70])
        {
          return 0;
        }

        v11 = 20;
      }

      LODWORD(v12[0]) = v11;
      if (v7 < 2)
      {
        goto LABEL_12;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B0C0C(__int16 a1, uint64_t a2)
{
  result = sub_1001F0A88(a2, (a2 + 24), 0);
  if (result)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v4 = sub_1003072F0(result);
    if (v4 < 2)
    {
      LODWORD(v13[0]) = 16;
      BYTE8(v13[0]) = v4;
      WORD2(v13[0]) = a1;
      (*(qword_100B5AC10 + 24))(v13);
      return 1;
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Invalid setting!", v5, v6, v7, v8, v9, v10, v11, *&v13[0]);
        v12 = sub_10000C050(0xFu);
        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10080F7A0();
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_1001B0CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v5 = sub_1001F0A88(a2, (a2 + 24), 0);
  v6 = v5;
  if (v5)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v7 = sub_1003072F0(v5);
    *(v4 + 96) = v7;
    LODWORD(v9[0]) = 7;
    BYTE8(v9[0]) = v7;
    WORD2(v9[0]) = v3;
    (*(qword_100B5AC10 + 24))(v9);
  }

  return v6 != 0;
}

BOOL sub_1001B0D78(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v5 = sub_1001F0A88(a2, (a2 + 24), 0);
  v6 = v5;
  if (v5)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v7 = sub_1003072F0(v5);
    *(v4 + 97) = v7;
    LODWORD(v9[0]) = 8;
    BYTE8(v9[0]) = v7;
    WORD2(v9[0]) = v3;
    (*(qword_100B5AC10 + 24))(v9);
  }

  return v6 != 0;
}

uint64_t sub_1001B0E1C(__int16 a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  LODWORD(v2[0]) = 9;
  WORD2(v2[0]) = a1;
  (*(qword_100B5AC10 + 24))(v2);
  return 1;
}

BOOL sub_1001B0E6C(__int16 a1, uint64_t a2)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4[0] = 17;
  WORD2(v4[0]) = a1;
  v2 = sub_1001F0A88(a2, (a2 + 24), 0);
  v4[1] = v2;
  if (v2)
  {
    (*(qword_100B5AC10 + 24))(v4);
  }

  return v2 != 0;
}

BOOL sub_1001B0EE8(__int16 a1, uint64_t a2)
{
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  v4 = v3;
  if (v3)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    LODWORD(v6[0]) = 25;
    BYTE8(v6[0]) = sub_1003072F0(v3);
    WORD2(v6[0]) = a1;
    (*(qword_100B5AC10 + 24))(v6);
  }

  return v4 != 0;
}

BOOL sub_1001B0F70(__int16 a1, uint64_t a2)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  LODWORD(v10) = 22;
  WORD2(v10) = a1;
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      switch(v8)
      {
        case 3:
          v5 = sub_1003072F0(v3);
          break;
        case 2:
          v7 = sub_1003072F0(v3);
          break;
        case 1:
          v6 = v3;
          break;
      }

      ++v8;
      v3 = sub_1001F0A88(a2, (a2 + 24), 0);
    }

    while (v3);
    LOBYTE(v11) = v7;
    *(&v10 + 1) = v6;
    DWORD1(v11) = v5;
    (*(qword_100B5AC10 + 24))(&v10);
  }

  return v4 != 0;
}

uint64_t sub_1001B1060(__int16 a1, uint64_t a2)
{
  result = sub_1001F0A88(a2, (a2 + 24), 0);
  if (result)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v4 = sub_1003072F0(result);
    if (v4 < 2)
    {
      LODWORD(v13[0]) = 18;
      BYTE8(v13[0]) = v4;
      WORD2(v13[0]) = a1;
      (*(qword_100B5AC10 + 24))(v13);
      return 1;
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Invalid setting!", v5, v6, v7, v8, v9, v10, v11, *&v13[0]);
        v12 = sub_10000C050(0xFu);
        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10080F7A0();
          return 0;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1001B1128(__int16 a1, uint64_t a2)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  LODWORD(v6) = 10;
  WORD2(v6) = a1;
  result = sub_1001F0A88(a2, (a2 + 24), 0);
  if (result)
  {
    v4 = -1;
    do
    {
      v5 = v4 + 1;
      if ((v4 + 1) > 3)
      {
        if (v5 > 5)
        {
          if (v4 == 5)
          {
            BYTE8(v8) = sub_1003072F0(result);
          }

          else
          {
            if (v4 != 6)
            {
              return 0;
            }

            v9 = result;
          }
        }

        else if (v4 == 3)
        {
          BYTE8(v7) = *result == 49;
        }

        else
        {
          if (v4 != 4)
          {
            return 0;
          }

          *&v8 = result;
        }
      }

      else if (v5 > 1)
      {
        if (v4 == 1)
        {
          LODWORD(v7) = sub_1003072F0(result);
        }

        else
        {
          if (v4 != 2)
          {
            return 0;
          }

          DWORD1(v7) = sub_1003072F0(result);
        }
      }

      else if (v4 == -1)
      {
        DWORD2(v6) = sub_1003072F0(result);
      }

      else
      {
        if (v4)
        {
          return 0;
        }

        BYTE12(v6) = *result == 49;
      }

      result = sub_1001F0A88(a2, (a2 + 24), 0);
      ++v4;
    }

    while (result);
    if (v4 < 4)
    {
      return 0;
    }

    (*(qword_100B5AC10 + 24))(&v6);
    return 1;
  }

  return result;
}

uint64_t sub_1001B1280(__int16 a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  LODWORD(v8) = 21;
  WORD2(v8) = a1;
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if (v6 == 2)
      {
        v5 = v3;
      }

      else if (v6 != 1)
      {
        if (v6)
        {
          return 0;
        }

        v4 = sub_1003072F0(v3);
      }

      ++v6;
      v3 = sub_1001F0A88(a2, (a2 + 24), 0);
      if (!v3)
      {
        *&v9 = v5;
        DWORD2(v8) = v4;
        break;
      }
    }
  }

  (*(qword_100B5AC10 + 24))(&v8);
  return 1;
}

uint64_t sub_1001B1350(uint64_t a1, uint64_t a2)
{
  if ((sub_1001B0084(a1) & 0x200) == 0 || (*(qword_100B5AC10 + 40) & 0x80) == 0)
  {
    return 0;
  }

  v5 = sub_1001F0A88(a2, (a2 + 24), 0);
  v6 = sub_1003072F0(v5);
  v7 = v6;
  if (v6 > 127)
  {
    if (v6 > 254)
    {
      if (v6 == 255)
      {
        if ((*(qword_100B5AC10 + 44) & 0x10) == 0)
        {
          goto LABEL_31;
        }

        v8 = "AT+BCS=255\r";
      }

      else
      {
        if (v6 != 256)
        {
          goto LABEL_32;
        }

        if ((*(qword_100B5AC10 + 45) & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = "AT+BCS=256\r";
      }
    }

    else if (v6 == 128)
    {
      if ((*(qword_100B5AC10 + 44) & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v8 = "AT+BCS=128\r";
    }

    else
    {
      if (v6 != 129)
      {
        goto LABEL_32;
      }

      if ((*(qword_100B5AC10 + 45) & 2) == 0)
      {
        goto LABEL_31;
      }

      v8 = "AT+BSC=129\r";
    }

LABEL_35:
    v9 = a1;
    v10 = 11;
    goto LABEL_36;
  }

  if (v6 > 63)
  {
    if (v6 == 64)
    {
      if ((*(qword_100B5AC10 + 45) & 4) == 0)
      {
        goto LABEL_31;
      }

      v8 = "AT+BCS=130\r";
    }

    else
    {
      if (v6 != 127)
      {
        goto LABEL_32;
      }

      if ((*(qword_100B5AC10 + 44) & 4) == 0)
      {
        goto LABEL_31;
      }

      v8 = "AT+BCS=127\r";
    }

    goto LABEL_35;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      if ((*(qword_100B5AC10 + 44) & 2) != 0)
      {
        v8 = "AT+BCS=2\r";
LABEL_25:
        v9 = a1;
        v10 = 9;
LABEL_36:
        sub_1001AFF04(v9, 0, v8, v10, 0, 29);
        goto LABEL_37;
      }

      goto LABEL_31;
    }

LABEL_32:
    sub_1001B00C0(a1, 0);
    if (!v7)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (*(qword_100B5AC10 + 44))
  {
    v8 = "AT+BCS=1\r";
    goto LABEL_25;
  }

LABEL_31:
  sub_1001B00C0(a1, 0);
LABEL_37:
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  LODWORD(v11[0]) = 26;
  DWORD2(v11[0]) = v7;
  WORD2(v11[0]) = a1;
  (*(qword_100B5AC10 + 24))(v11);
  return 1;
}

unsigned __int8 *sub_1001B154C(__int16 a1, uint64_t a2)
{
  result = sub_1001F0A88(a2, (a2 + 24), 0);
  if (result)
  {
    result = sub_1001F0A88(a2, (a2 + 24), 0);
    if (result)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      WORD2(v5[0]) = a1;
      LODWORD(v5[0]) = 27;
      BYTE8(v5[0]) = sub_1003072F0(result);
      (*(qword_100B5AC10 + 24))(v5);
      return 1;
    }
  }

  return result;
}

BOOL sub_1001B15DC(__int16 a1, uint64_t a2)
{
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  v4 = v3;
  if (v3)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    WORD2(v6[0]) = a1;
    LODWORD(v6[0]) = 28;
    BYTE8(v6[0]) = sub_1003072F0(v3);
    (*(qword_100B5AC10 + 24))(v6);
  }

  return v4 != 0;
}

BOOL sub_1001B1664(__int16 a1, uint64_t a2)
{
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  v4 = v3;
  if (v3)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    WORD2(v6[0]) = a1;
    LODWORD(v6[0]) = 29;
    BYTE8(v6[0]) = sub_1003072F0(v3);
    (*(qword_100B5AC10 + 24))(v6);
  }

  return v4 != 0;
}

void sub_1001B16EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v5 = *(v4 + 78);
  sub_1001B1770(a1);
  *(v4 + 78) = 0;
  v6 = v4[1];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v6(a1, a2);
  }
}

void sub_1001B1770(uint64_t a1)
{
  v1 = sub_1001AFE5C(a1);
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 1);
    if (v3)
    {
      sub_10002242C(v3);
      *(v2 + 1) = 0;
    }
  }

  else
  {

    sub_1000D660C();
  }
}

void sub_1001B17C4(int a1)
{
  v2 = sub_1001AFE5C(*(qword_100B5AC10 + 18));
  if (!v2)
  {
    sub_1000D660C();
  }

  v22 = xmmword_1008A33E0;
  v23 = xmmword_1008A33D0;
  v21[1] = &v23;
  v21[0] = 65542;
  v20[1] = &v22;
  v20[0] = 65542;
  if (a1 || (*(v2 + 94) = 2, sub_1002F69AC(sub_1001B1B78, v21, v20)))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP connect", v3, v4, v5, v6, v7, v8, v9, v20[0]);
      v10 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    if (*(v2 + 94) == 2)
    {
      if (sub_1002F61A8())
      {
        if (sub_10000C240())
        {
          sub_10000AF54("SDP disconnect", v11, v12, v13, v14, v15, v16, v17, v20[0]);
          v18 = sub_10000C050(0xFu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }
      }

      else
      {
        *(v2 + 94) = 3;
      }
    }

    else
    {
      *(v2 + 94) = 0;
    }

    if (*(v2 + 95) == 1)
    {
      v19 = sub_1001B1A6C(*v2);
      if (v19)
      {
        sub_1001B017C(*v2, v19);
      }
    }
  }

  if (*(v2 + 95) == 4)
  {
    sub_1001B0268(*v2);
  }
}

void sub_1001B1998()
{
  v0 = sub_1001AFE5C(*(qword_100B5AC10 + 18));
  if (!v0)
  {
    sub_1000D660C();
  }

  *(qword_100B5AC10 + 18) = -1;
  *(v0 + 94) = 0;
  v1 = *(v0 + 95);
  if (v1 == 4)
  {
    v11 = *v0;

    sub_1001B0268(v11);
  }

  else if (v1 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP disconnected while querying supported features\n", v2, v3, v4, v5, v6, v7, v8, v12);
      v9 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = sub_1001B1A6C(*v0);
    if (v10)
    {
      sub_1001B017C(*v0, v10);
    }
  }
}

uint64_t sub_1001B1A6C(uint64_t a1)
{
  v2 = sub_1001AFE5C(a1);
  if (v2)
  {
    *(v2 + 95) = 2;
  }

  v23[0] = 0;
  v23[1] = 0;
  v9 = sub_100307404(v23, 0x14uLL);
  if (!v9)
  {
    v10 = sub_1003078F4(v23, "AT+BRSF=%d\r", v3, v4, v5, v6, v7, v8, *(qword_100B5AC10 + 40));
    if (v10)
    {
      v9 = v10;
      sub_10030745C(v23);
    }

    else
    {
      v11 = sub_100307920(v23);
      v12 = strlen(v11);
      v9 = sub_1001AFF04(a1, sub_1001B1D18, v11, v12, 1, 2);
      if (!v9)
      {
        return v9;
      }
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("SLC handshaking (retrieve features)", v13, v14, v15, v16, v17, v18, v19, v22);
    v20 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  return v9;
}

void sub_1001B1B78(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1001AFE5C(*(qword_100B5AC10 + 18));
  if (!v5)
  {
    sub_1000D660C();
  }

  if (sub_1002F61A8())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SDP disconnect", v6, v7, v8, v9, v10, v11, v12, v33);
      v13 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  else
  {
    *(v5 + 94) = 3;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 2))
  {
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("No attributes in SDP response", v25, v26, v27, v28, v29, v30, v31, v33);
    v32 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_23:
    sub_10080F7A0();
    goto LABEL_9;
  }

  if (*a1 != 6)
  {
    sub_1000D660C();
  }

  v16 = *(*(a1 + 8) + 8);
  if (v16 && *(v16 + 8) == 785)
  {
    *(v5 + 24) = *(v16 + 24);
    goto LABEL_9;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Unexpected or no attribute in SDP response", v17, v18, v19, v20, v21, v22, v23, v33);
    v24 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v14 = *(v5 + 95);
  if (v14 == 4)
  {
    sub_1001B0268(*v5);
  }

  else if (v14 == 1)
  {
    v15 = sub_1001B1A6C(*v5);
    if (v15)
    {
      sub_1001B017C(*v5, v15);
    }
  }
}

void sub_1001B1D18(uint64_t a1, int a2)
{
  if (a2 != 2701)
  {
    v3 = a2;
    if (a2)
    {
      if (!sub_10000C240())
      {
        goto LABEL_16;
      }

      sub_10000AF54("Retrieve features", v13, v14, v15, v16, v17, v18, v19, v30);
      v20 = sub_10000C050(0xFu);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  if ((sub_1001B0084(a1) & 0x200) == 0 || (*(qword_100B5AC10 + 40) & 0x80) == 0)
  {
    v4 = sub_1001AFF04(a1, sub_1001B1FA4, "AT+CIND=?\r", 0xAuLL, 0, 11);
    if (!v4)
    {
      return;
    }

    v3 = v4;
    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_10000AF54("SLC establish (indicator test)", v5, v6, v7, v8, v9, v10, v11, v30);
    v12 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v21 = sub_1001B00C0(a1, sub_1001B1E98);
  if (!v21)
  {
    return;
  }

  v3 = v21;
  if (sub_10000C240())
  {
    sub_10000AF54("SLC establish (call hold test)", v22, v23, v24, v25, v26, v27, v28, v30);
    v29 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_100812934();
    }
  }

LABEL_16:
  sub_1001B017C(a1, v3);
}

void sub_1001B1E98(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = a2;
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10000AF54("Available codecs", v4, v5, v6, v7, v8, v9, v10, v22);
    v11 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = sub_1001AFE5C(a1);
  if (v12)
  {
    *(v12 + 95) = 3;
  }

  v13 = sub_1001AFF04(a1, sub_1001B1FA4, "AT+CIND=?\r", 0xAuLL, 0, 11);
  if (v13)
  {
    v3 = v13;
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10000AF54("SLC establish (indicator test)", v14, v15, v16, v17, v18, v19, v20, v22);
    v21 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_100812934();
LABEL_11:
    sub_1001B017C(a1, v3);
  }
}

void sub_1001B1FA4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = a2;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Indicator test", v4, v5, v6, v7, v8, v9, v10, v21);
    v11 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = sub_1001AFF04(a1, sub_1001B209C, "AT+CIND?\r", 9uLL, 0, 10);
  if (!v12)
  {
    return;
  }

  v3 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("SLC establish (indicator read)", v13, v14, v15, v16, v17, v18, v19, v21);
    v20 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_100812934();
    }
  }

LABEL_9:
  sub_1001B017C(a1, v3);
}

void sub_1001B209C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = a2;
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("Read indicators", v4, v5, v6, v7, v8, v9, v10, v21);
    v11 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = sub_1001AFF04(a1, sub_1001B2194, "AT+CMER=3,0,0,1\r", 0x10uLL, 0, 13);
  if (!v12)
  {
    return;
  }

  v3 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("SLC establish (enable event reporting)", v13, v14, v15, v16, v17, v18, v19, v21);
    v20 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_100812934();
    }
  }

LABEL_9:
  sub_1001B017C(a1, v3);
}

void sub_1001B2194(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = a2;
    if (!sub_10000C240())
    {
      goto LABEL_5;
    }

    sub_10000AF54("Enable event reporting", v4, v5, v6, v7, v8, v9, v10, v31);
    v11 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((sub_1001B0084(a1) & 1) != 0 && (*(qword_100B5AC10 + 40) & 2) != 0)
  {
    v22 = sub_1001AFF04(a1, sub_1001B2354, "AT+CHLD=?\r", 0xAuLL, 0, 7);
    if (!v22)
    {
      return;
    }

    v3 = v22;
    if (!sub_10000C240())
    {
      goto LABEL_5;
    }

    sub_10000AF54("SLC establish (call hold test)", v23, v24, v25, v26, v27, v28, v29, v31);
    v30 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

LABEL_4:
    sub_100812934();
LABEL_5:
    sub_1001B017C(a1, v3);
    return;
  }

  v12 = sub_1001AFE5C(a1);
  if (v12)
  {
    *(v12 + 95) = 3;
  }

  if (*(qword_100B5AC10 + 40))
  {
    v13 = sub_1001AFFD0(a1, sub_1001B2484);
    if (!v13)
    {
      return;
    }

    v3 = v13;
    if (!sub_10000C240())
    {
      goto LABEL_5;
    }

    sub_10000AF54("Disable remote NREC", v14, v15, v16, v17, v18, v19, v20, v31);
    v21 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_1001B251C(a1, 0);
}

void sub_1001B2354(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = a2;
    if (!sub_10000C240())
    {
      goto LABEL_5;
    }

    sub_10000AF54("Call hold test", v4, v5, v6, v7, v8, v9, v10, v22);
    v11 = sub_10000C050(0xFu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = sub_1001AFE5C(a1);
  if (v12)
  {
    *(v12 + 95) = 3;
  }

  if (*(qword_100B5AC10 + 40))
  {
    v13 = sub_1001AFFD0(a1, sub_1001B2484);
    if (v13)
    {
      v3 = v13;
      if (!sub_10000C240())
      {
        goto LABEL_5;
      }

      sub_10000AF54("Disable remote NREC", v14, v15, v16, v17, v18, v19, v20, v22);
      v21 = sub_10000C050(0xFu);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

LABEL_4:
      sub_100812934();
LABEL_5:
      sub_1001B017C(a1, v3);
    }
  }

  else
  {

    sub_1001B251C(a1, 0);
  }
}

void sub_1001B2484(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Disable remote NREC", v4, v5, v6, v7, v8, v9, v10, v12);
    v11 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  if (a2 != 2701)
  {
    sub_1001B017C(a1, a2);
  }

  else
  {
LABEL_6:
    sub_1001B251C(a1, 0);
  }
}

uint64_t sub_1001B251C(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = sub_1001AFE5C(a1);
  if (!v4)
  {
    sub_1000D660C();
  }

  v13 = 0;
  v9 = 0;
  v11 = 0u;
  v12 = 0u;
  v5 = qword_100B5AC10;
  *(qword_100B5AC10 + 49) = 0;
  *(v4 + 21) = a2;
  LODWORD(v11) = a2;
  v10 = v4 + 11;
  v7 = 1;
  v8 = v3;
  result = (*(v5 + 24))(&v7);
  if (!a2)
  {
    if (*(v4 + 65) != 255)
    {
      v7 = 13;
      LOBYTE(v10) = *(v4 + 72) != 0;
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 64) != 255)
    {
      v7 = 11;
      LOBYTE(v10) = *(v4 + 71) != 0;
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 66) != 255)
    {
      v7 = 19;
      LOBYTE(v10) = *(v4 + 73);
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 69) != 255)
    {
      v7 = 12;
      LOBYTE(v10) = *(v4 + 76);
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 67) != 255)
    {
      v7 = 23;
      LOBYTE(v10) = *(v4 + 74);
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 68) != 255)
    {
      v7 = 24;
      LOBYTE(v10) = *(v4 + 75);
      result = (*(qword_100B5AC10 + 24))(&v7);
    }

    if (*(v4 + 70) != 255)
    {
      v7 = 20;
      LOBYTE(v10) = *(v4 + 77) != 0;
      return (*(qword_100B5AC10 + 24))(&v7);
    }
  }

  return result;
}

void sub_1001B26F4(uint64_t a1)
{
  v2 = sub_1001AFE5C(a1);
  if (!v2)
  {
    sub_1000D660C();
  }

  if (sub_10023BD60((v2 + 11)))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ForceDisconnect - assuming already disconnected", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0xFu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    *(v2 + 47) = 0;
    sub_1001B021C(a1, 926);
  }
}

uint64_t sub_1001B2790(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (*v1)
  {
    *(qword_100B5AC10 + 56) = 0;
    sub_1001B26F4(v2);

    return sub_1001B0268(v2);
  }

  return result;
}

void sub_1001B27EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001AFE5C(a1);
  if (!v7)
  {
    sub_1000D660C();
  }

  sub_10000C1E8(a2);
  if (a4)
  {

    sub_1001B16EC(a1, a4);
  }

  else
  {
    v8 = *(v7 + 78);

    sub_1001B28FC(a1, v8);
  }
}

void sub_1001B2878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1001AFE5C(a1);
  if (v6)
  {
    if (a4)
    {
LABEL_3:

      sub_1001B16EC(a1, a4);
      return;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = *(v6 + 78);

  sub_1001B28FC(a1, v7);
}

void sub_1001B28FC(uint64_t a1, unsigned int a2)
{
  v3 = sub_1001AFE5C(a1);
  v7 = v3;
  if (!v3)
  {
    sub_1000D660C();
  }

  v6[1] = &v7;
  v6[0] = 8;
  if (!v3[1])
  {
    if (a2 > 0x21)
    {
      goto LABEL_10;
    }

    if (((1 << a2) & 0x20003001ALL) != 0)
    {
      v4 = 4;
LABEL_7:
      v5 = sub_1003045A0(0xFu);
      sub_10002195C(sub_1001B29B4, v6, *(v5 + v4), v7 + 1);
      return;
    }

    if (a2)
    {
LABEL_10:
      v4 = 2;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001B29B4(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("Didn't get response from handsfree audio gateway within timeout period", v2, v3, v4, v5, v6, v7, v8, v11);
    v9 = sub_10000C050(0xFu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(v1 + 1) = 0;
  sub_1001B16EC(*v1, 112);
  result = sub_1003045A0(0xFu);
  if (*(result + 6) == 1)
  {
    return sub_1001B8184(*v1);
  }

  return result;
}

uint64_t sub_1001B2A50(int a1, void (*a2)(void), void (*a3)(uint64_t, const char *))
{
  dword_100B5ACDC = a1;
  byte_100B5ACD8 = 1;
  dword_100B5ACE0 = -1;
  v5 = sub_1001B2D54();
  if (v5)
  {
    v10 = v5;
    v11 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18.__sig) = 136446210;
      *(&v18.__sig + 4) = "OI_StackWrapperToken_Init failed\n";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", &v18, 0xCu);
    }

    sub_1000C52F4(v10);
    goto LABEL_16;
  }

  if (pthread_mutex_init(&stru_100B5AC98, 0))
  {
LABEL_16:
    v12 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18.__sig) = 136446210;
      *(&v18.__sig + 4) = "OI_Transport_TokenInit failed\n";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", &v18, 0xCu);
    }

    sub_1000C52F4(108);
LABEL_19:
    sub_1008129AC();
  }

  sub_1000031B0();
  pthread_cond_init(&stru_100B5ACE8, 0);
  pthread_mutex_init(&stru_100B5AD18, 0);
  memset(&v18, 0, sizeof(v18));
  v15 = 0;
  pthread_attr_init(&v18);
  pthread_attr_getschedparam(&v18, &v15);
  v15.sched_priority = 60;
  if (pthread_attr_setschedparam(&v18, &v15))
  {
    perror("Send thread creation: Failed pthread_attr_setschedparam");
  }

  if (pthread_create(&qword_100B5AD58, &v18, sub_10002206C, 0))
  {
    goto LABEL_19;
  }

  sub_1000216E4(0);
  v6 = sub_100237758(0, sub_1000216E4, a2, a3);
  if (v6)
  {
    v7 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = "Stack_Init failed\n";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    sub_10000C198();
    return v6;
  }

  v8 = sub_10022DEF0(sub_1001B2E04);
  if (!v8)
  {
    sub_10000C198();
    sub_1001B2E28(&byte_100B5AD60, 0);
    return v6;
  }

  v13 = v8;
  v14 = sub_10000C050(0x5Cu);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "OI_BT_Device_Config failed\n";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  sub_1000C52F4(v13);
  return sub_1001B2D54();
}

uint64_t sub_1001B2D54()
{
  if (pthread_mutex_init(&stru_100B5AC18, 0))
  {
    return 108;
  }

  global_queue = dispatch_get_global_queue(17, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  qword_100B5AD68 = v2;
  v3 = malloc_type_malloc(8uLL, 0x100004090D0E795uLL);
  dispatch_set_context(v2, v3);
  dispatch_source_set_event_handler_f(qword_100B5AD68, sub_100043158);
  result = 0;
  dword_100B5AD64 = 0;
  return result;
}

uint64_t sub_1001B2E04(uint64_t result)
{
  if (result)
  {
    sub_1000C52F4(result);
    return sub_1001B2E28();
  }

  else
  {
    byte_100B5AD60 = 1;
  }

  return result;
}

uint64_t sub_1001B2E28(_BYTE *a1, int a2)
{
  v7 = 0;
  v8 = 0;
  sub_100016250(&v8);
  LODWORD(v8) = v8 + a2;
  if ((*a1 & 1) == 0)
  {
    do
    {
      if (dword_100B5ACDC <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = dword_100B5ACDC;
      }

      sub_1001BAECC(v4);
      if (a2)
      {
        sub_100016250(&v7);
        v5 = sub_100306C80(&v7, &v8) >= 0;
      }

      else
      {
        v5 = 0;
      }
    }

    while ((*a1 & 1) == 0 && !v5);
    if (!*a1)
    {
      return 150;
    }
  }

  result = 0;
  *a1 = 0;
  return result;
}

void sub_1001B2ED8()
{
  byte_100B5ACD8 = 0;
  sub_1001B3068(1);
  sub_1000216E4(0);
  pthread_join(qword_100B5AD58, 0);
  byte_100B5AD70 = 0;
  sub_100304AF8("Terminating stack...\n");
  sub_1000031B0();
  v0 = sub_100237EAC();
  dispatch_set_finalizer_f(qword_100B5AD68, &_free);
  dispatch_source_cancel(qword_100B5AD68);
  dispatch_release(qword_100B5AD68);
  sub_10000C198();
  if (v0)
  {
    sub_100304AF8("OI_BT_Stack_Terminate() failed: %d!\n", v0);
  }

  v1 = pthread_mutex_destroy(&stru_100B5AC18);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  *v7 = 0;
  v8 = 0;
  v9 = 0;
  v3 = pthread_self();
  pthread_getname_np(v3, v7, 0x14uLL);
  if (*v7 != 0x706F6F4C746F44)
  {
    v4 = v2;
    goto LABEL_10;
  }

  usleep(0x7A120u);
  v4 = pthread_mutex_destroy(&stru_100B5AC18);
  if (v4)
  {
LABEL_10:
    strerror(v4);
    sub_100304AF8("Destroying stackAccessMutex failed with error: %s\n");
    goto LABEL_11;
  }

LABEL_6:
  v5 = pthread_mutex_destroy(&stru_100B5AD18);
  if (!v5)
  {
    sub_100304AF8("Done.\n");
    return;
  }

  strerror(v5);
  sub_100304AF8("Destroying idlerMutex failed with error: %s\n");
LABEL_11:
  sub_1000C52F4(148);
  sub_1001B3068(v6);
}

void sub_1001B3068(int a1)
{
  v1 = a1;
  if (a1)
  {
    sub_100304AF8("Stack termination failsafe : lock idler");
    pthread_mutex_lock(&stru_100B5AD18);
    byte_100B5AD70 = v1;
    pthread_cond_signal(&stru_100B5ACE8);
    pthread_mutex_unlock(&stru_100B5AD18);

    sub_100304AF8("Stack termination failsafe set");
  }

  else
  {
    byte_100B5AD70 = 0;
  }
}

uint64_t sub_1001B3100()
{
  sub_1001C48E8();

  return sub_10022DE64();
}

uint64_t (*sub_1001B3128(int a1))(void)
{
  sub_1001C49E0(a1);

  return sub_10022DE8C();
}

uint64_t sub_1001B3154(char **a1, int a2)
{
  LODWORD(v2) = a2;
  sub_1000031B0();
  if (v2 <= 0)
  {
    sub_10000C198();
  }

  else
  {
    v2 = v2;
    v4 = v2;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v9 = 0;
      v10 = 0;
      v9 = mach_continuous_time();
      LOBYTE(v10) = 0;
      sub_10000394C(*(v6 + 8), *(v6 + 16), *(v6 + 24), &v9);
      --v4;
    }

    while (v4);
    sub_10000C198();
    do
    {
      v7 = *a1++;
      sub_1001B31F8(v7);
      --v2;
    }

    while (v2);
  }

  return 0;
}

void sub_1001B31F8(char *a1)
{
  *a1 = 0;
  a1[8] = 0;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  v2 = qword_100B5B228;
  pthread_mutex_lock((qword_100B5B228 + 16));
  v3 = *(v2 + 12);
  if (v3 == *(v2 + 8))
  {
    pthread_mutex_unlock((v2 + 16));
  }

  else
  {
    *(v2 + 12) = v3 + 1;
    *(*v2 + 8 * v3) = a1;
    pthread_mutex_unlock((v2 + 16));
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }
  }

  free(*(a1 + 2));

  free(a1);
}

uint64_t sub_1001B32A4(uint64_t a1, uint64_t a2, int a3)
{
  result = 3758097090;
  if (a1 && a2 && (a3 - 4) >= 0xFFFFFFFE)
  {
    v6 = a3 == 3 ? 4 : 2;
    result = (*(*a2 + 176))(a2, v6);
    if (!result)
    {
      v15 = 0;
      *(a1 + 97) = v6;
      result = (*(*a2 + 152))(a2, &v15);
      if (!result)
      {
        if (v15 == 2)
        {
          for (i = 1; v15 >= i; ++i)
          {
            v14 = 0;
            v13 = 0;
            v12 = 0;
            v11 = 0;
            result = (*(*a2 + 208))(a2, i, &v14, &v13 + 1, &v13, &v12, &v11);
            if (result)
            {
              break;
            }

            if (v13 != 1)
            {
              return 0xFFFFFFFFLL;
            }

            v8 = v14;
            v9 = a1 + 130;
            if (v14 != 1)
            {
              v9 = a1 + 138;
              if (v14)
              {
                return 0xFFFFFFFFLL;
              }
            }

            result = 0;
            *v9 = *(a1 + 25);
            *(v9 + 1) = *(a1 + 97);
            *(v9 + 3) = v8;
            *(v9 + 4) = v12;
            v10 = HIBYTE(v13) & 0xF;
            *(v9 + 2) = 1;
            *(v9 + 7) = i;
            *(v9 + 6) = v10 | (v8 << 7);
          }
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001B3410(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (a1 + 208);
    v4 = 4;
    do
    {
      v5 = *(v3 - 4);
      if (v5)
      {
        sub_1001B3554(v5);
      }

      if (*v3)
      {
        sub_1001B3554(*v3);
      }

      ++v3;
      --v4;
    }

    while (v4);
  }

  v17 = 0;
  result = (*(**(a1 + 48) + 432))(*(a1 + 48), &v17);
  if (!result)
  {
    v7 = 0;
    v8 = *(a1 + 134);
    while (1)
    {
      v9 = sub_1001B35A0(a1, 3, 0, (15 * v8));
      if (!v9)
      {
        return 0xFFFFFFFFLL;
      }

      v10 = v9;
      v11 = sub_1001B35A0(a1, 3, 0, (15 * v8));
      if (!v11)
      {
        v12 = v10;
        goto LABEL_18;
      }

      v12 = v11;
      v13 = sub_1001B36A8(a1, v8, v10);
      if (!v13 || (v14 = v13, (v15 = sub_1001B36A8(a1, v8, v12)) == 0))
      {
        sub_1001B31F8(v10);
LABEL_18:
        sub_1001B31F8(v12);
        return 0xFFFFFFFFLL;
      }

      *(v14 + 17) = 0;
      v16 = a1 + v7;
      *(v16 + 176) = v14;
      *(v15 + 17) = 0;
      *(v16 + 208) = v15;
      v7 += 8;
      if (v7 == 32)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1001B3554(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    free(v2[2]);
    free(v2);
  }

  free(a1);
}

void *sub_1001B35A0(uint64_t a1, char a2, __int16 a3, unsigned int a4)
{
  v8 = qword_100B5B228;
  pthread_mutex_lock((qword_100B5B228 + 16));
  v9 = *(v8 + 12);
  if (v9 <= 0)
  {
    pthread_mutex_unlock((v8 + 16));
  }

  else
  {
    v10 = *v8 + 8 * v9;
    v11 = *(v10 - 8);
    *(v10 - 8) = 0;
    *(v8 + 12) = v9 - 1;
    pthread_mutex_unlock((v8 + 16));
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = malloc_type_malloc(0x20uLL, 0x1030040A24534F3uLL);
  v11 = v12;
  if (!v12)
  {
    return v11;
  }

  *(v12 + 7) = 4096;
  v13 = malloc_type_malloc(0x1000uLL, 0x7A5C8E70uLL);
  v11[2] = v13;
  if (!v13)
  {
    free(v11);
    return 0;
  }

LABEL_7:
  if (*(v11 + 7) < a4)
  {
    sub_1001B31F8(v11);
    return 0;
  }

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 5) = a3;
  *(v11 + 6) = a4;
  *(v11 + 12) = 0;
  return v11;
}

_WORD *sub_1001B36A8(uint64_t a1, int a2, uint64_t a3)
{
  result = malloc_type_malloc(0x98uLL, 0x1020040AA72880BuLL);
  if (result)
  {
    if (15 * a2 <= *(a3 + 12))
    {
      v7 = 0;
      *result = a1;
      result[4] = a2;
      result[5] = 15;
      *(result + 17) = 0;
      do
      {
        v8 = &result[v7];
        *(v8 + 3) = 2;
        *(v8 + 8) = a2;
        *(v8 + 9) = -1;
        v7 += 4;
      }

      while (v7 != 60);
      *(result + 18) = a3;
    }

    else
    {
      free(result);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B3754()
{
  v8 = 0;
  pthread_mutex_lock(&xmmword_100B5ADD8);
  v0 = qword_100B5AE70;
  v1 = (*(**(qword_100B5AE70 + 48) + 184))(*(qword_100B5AE70 + 48), qword_100B5AE70 + 240, &v8);
  if (!v1)
  {
    v2 = 0;
    *(v0 + 240) += 4;
    v3 = v0 + 176;
    do
    {
      v4 = *(v3 + v2);
      *(v4[18] + 24) = 0;
      v4[17] = 0;
      v5 = sub_1001B3804(v4);
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = v2 == 24;
      }

      v2 += 8;
    }

    while (!v6);
    v1 = v5;
    pthread_mutex_unlock(&xmmword_100B5ADD8);
  }

  return v1;
}

uint64_t sub_1001B3804(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1 || !*v1 || byte_100B5AE78 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 5))
  {
    v3 = *(a1 + 4);
    v4 = a1 + 9;
    v5 = *(a1 + 5);
    do
    {
      *(v4 - 3) = 2;
      *(v4 - 1) = v3;
      *v4 = -1;
      v4 += 4;
      --v5;
    }

    while (v5);
  }

  v6 = *(v1 + 240);
  a1[17] = v6;
  *(v1 + 240) = v6 + 15;
  v7 = (*(**(v1 + 48) + 280))(*(v1 + 48), *(v1 + 137), *(a1[18] + 16));
  if (!v7)
  {
LABEL_16:
    j__pthread_mutex_lock((v1 + 4176));
    ++*(v1 + 4241);
    j__pthread_mutex_unlock((v1 + 4176));
    return 0;
  }

  v13 = v7;
  v14 = 3758097134;
  memset(v25, 0, 250);
  if (v7 != -536870162)
  {
    sub_100304ACC(v25, 250, "USB ReadIsochPipeAsync failed -- returned error (0x%x)", v8, v9, v10, v11, v12, v7);
    sub_1001C4B04(v25);
    return v13;
  }

  sub_100304ACC(v25, 250, "USB ReadIsochPipeAsync failed -- returned kIOReturnIsoTooOld error (0x%x) -- try again", v8, v9, v10, v11, v12, 3758097134);
  sub_1001C4B04(v25);
  v15 = *(v1 + 240);
  a1[17] = v15 + 30;
  *(v1 + 240) = v15 + 45;
  v16 = (*(**(v1 + 48) + 280))(*(v1 + 48), *(v1 + 137), *(a1[18] + 16));
  if (!v16)
  {
    sub_100304ACC(v25, 250, "Retry USB ReadIsochPipeAsync successful ", v17, v18, v19, v20, v21, v24);
    sub_1001C429C(v25);
    goto LABEL_16;
  }

  v22 = v16;
  if (v16 == -536870162)
  {
    sub_100304ACC(v25, 250, "Previous USB ReadIsochPipeAsync failed with kIOReturnIsoTooOld error -- retry still returned kIOReturnIsoTooOld error (0x%x)", v17, v18, v19, v20, v21, 3758097134);
    sub_1001C4B04(v25);
  }

  else
  {
    sub_100304ACC(v25, 250, "Retry USB ReadIsochPipeAsync failed -- returned error (0x%x)", v17, v18, v19, v20, v21, v16);
    sub_1001C4B04(v25);
    return v22;
  }

  return v14;
}

uint64_t sub_1001B3A84(uint64_t a1, _WORD *a2, char *a3, unsigned int a4)
{
  if (!a1)
  {
    return 1205;
  }

  if (!*a1 || *(a1 + 4100) + a4 > 0xF00)
  {
    return 1205;
  }

  j__pthread_mutex_lock((a1 + 4112));
  *(a1 + 4100) += a4;
  j__pthread_mutex_unlock((a1 + 4112));
  *(a1 + 256) = *a2;
  v9 = *(a1 + 4102);
  if (v9 + a4 > 0xEFF)
  {
    v11 = 3840 - v9;
    v12 = a4 - (3840 - v9);
    memcpy((a1 + 259 + v9), a3, (3840 - v9));
    *(a1 + 4102) = 0;
    memcpy((a1 + 259), &a3[v11], v12);
    LOWORD(v10) = *(a1 + 4102) + v12;
  }

  else
  {
    memcpy((a1 + v9 + 259), a3, a4);
    v10 = *(a1 + 4102) + a4;
    if (v10 == 3840)
    {
      LOWORD(v10) = 0;
    }
  }

  *(a1 + 4102) = v10;
  if ((*(a1 + 4107) & 1) == 0 && byte_100B5AE78 == 1)
  {
    *(a1 + 4241) = 0;
    if (!sub_1001B3754())
    {
      *(a1 + 4107) = 1;
    }
  }

  if ((*(a1 + 4106) & 1) == 0 && byte_100B5AE78 == 1 && *(a1 + 4100) >= *(a1 + 4108))
  {
    *(a1 + 4240) = 0;
    if (!sub_1001B3BFC())
    {
      *(a1 + 4106) = 1;
    }
  }

  return 625;
}

uint64_t sub_1001B3BFC()
{
  v9 = 0;
  pthread_mutex_lock(&xmmword_100B5ADD8);
  v0 = qword_100B5AE70;
  v1 = (*(**(qword_100B5AE70 + 48) + 184))(*(qword_100B5AE70 + 48), qword_100B5AE70 + 248, &v9);
  if (v1)
  {
    v2 = v1;
    sub_10024DC48(1205);
  }

  else
  {
    v3 = 0;
    *(v0 + 248) += 4;
    v4 = v0 + 208;
    do
    {
      v5 = *(v4 + v3);
      v5[17] = 0;
      v6 = sub_1001B3CB0(v5);
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 == 24;
      }

      v3 += 8;
    }

    while (!v7);
    v2 = v6;
    pthread_mutex_unlock(&xmmword_100B5ADD8);
  }

  return v2;
}

uint64_t sub_1001B3CB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[18] + 16);
  if (*a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (byte_100B5AE78 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 4) - 1;
  if (*(v1 + 4100) < (15 * v4))
  {
    return 0xFFFFFFFFLL;
  }

  v39 = 15 * v4;
  v7 = 3 * v4;
  v8 = (3 * v4);
  bzero(v2, v8);
  v9 = 0;
  v10 = v7;
  *(v1 + 258) = v7;
  v11 = v1 + 259;
  v12 = v2 + 3;
  do
  {
    v13 = *(v1 + 256);
    *(v12 - 1) = *(v1 + 258);
    *(v12 - 3) = v13;
    v14 = *(v1 + 4104);
    v15 = v10 - (3840 - v14);
    if (v10 <= 3840 - v14)
    {
      memcpy(v12, (v11 + v14), v8);
      v17 = *(v1 + 4104) + v10;
      if (v17 == 3840)
      {
        LOWORD(v17) = 0;
      }
    }

    else
    {
      v16 = (3840 - v14);
      memcpy(v12, (v11 + v14), v16);
      *(v1 + 4104) = 0;
      memcpy(&v12[v16], (v1 + 259), v15);
      LOWORD(v17) = *(v1 + 4104) + v15;
    }

    *(v1 + 4104) = v17;
    v12 += v8 + 3;
  }

  while (v9++ < 4);
  j__pthread_mutex_lock((v1 + 4112));
  *(v1 + 4100) -= v39;
  j__pthread_mutex_unlock((v1 + 4112));
  if (*(a1 + 5))
  {
    v19 = *(a1 + 4);
    v20 = a1 + 9;
    v21 = *(a1 + 5);
    do
    {
      *(v20 - 3) = 2;
      *(v20 - 1) = v19;
      *v20 = -1;
      v20 += 4;
      --v21;
    }

    while (v21);
  }

  v22 = *(v1 + 248);
  a1[17] = v22;
  *(v1 + 248) = v22 + 15;
  v23 = (*(**(v1 + 48) + 288))(*(v1 + 48), *(v1 + 145), *(a1[18] + 16));
  if (!v23)
  {
LABEL_27:
    j__pthread_mutex_lock((v1 + 4112));
    ++*(v1 + 4240);
    j__pthread_mutex_unlock((v1 + 4112));
    return 0;
  }

  v29 = v23;
  v5 = 3758097134;
  memset(v41, 0, 250);
  if (v23 != -536870162)
  {
    sub_100304ACC(v41, 250, "USB WriteIsochPipeAsync failed -- returned error (0x%x)", v24, v25, v26, v27, v28, v23);
    sub_1001C4B04(v41);
    return v29;
  }

  sub_100304ACC(v41, 250, "USB WriteIsochPipeAsync failed -- returned kIOReturnIsoTooOld error (0x%x) -- try again", v24, v25, v26, v27, v28, 3758097134);
  sub_1001C4B04(v41);
  v30 = *(v1 + 248);
  a1[17] = v30 + 30;
  *(v1 + 248) = v30 + 45;
  v31 = (*(**(v1 + 48) + 288))(*(v1 + 48), *(v1 + 145), *(a1[18] + 16));
  if (!v31)
  {
    sub_100304ACC(v41, 250, "Retry USB WriteIsochPipeAsync successful ", v32, v33, v34, v35, v36, v38);
    sub_1001C429C(v41);
    goto LABEL_27;
  }

  v37 = v31;
  if (v31 == -536870162)
  {
    sub_100304ACC(v41, 250, "Previous USB WriteIsochPipeAsync failed with kIOReturnIsoTooOld error -- retry still returned kIOReturnIsoTooOld error (0x%x)", v32, v33, v34, v35, v36, 3758097134);
    sub_1001C4B04(v41);
  }

  else
  {
    sub_100304ACC(v41, 250, "Retry USB WriteIsochPipeAsync failed -- returned error (0x%x)", v32, v33, v34, v35, v36, v31);
    sub_1001C4B04(v41);
    return v37;
  }

  return v5;
}

uint64_t sub_1001B405C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  v5 = qword_100B5AE70;
  v6 = a3;
  __chkstk_darwin(a1, a2);
  v8 = &v27 - v7;
  if (v9 >= 0x801)
  {
    sub_1000D660C();
  }

  if (!v5)
  {
    return 1205;
  }

  bzero(v8, v6);
  if (!*v5)
  {
    return 1205;
  }

  v10 = sub_10024E290();
  if (!v10)
  {
    return 625;
  }

  if (v4 == 1)
  {
    v11 = 3;
    goto LABEL_12;
  }

  if (v4 != 3)
  {
    if (v4 != 2)
    {
LABEL_19:
      v12 = 106;
      sub_10024DC48(106);
      return v12;
    }

    v11 = 4;
LABEL_12:
    v13 = sub_1001B7640(v5, v4, (v10 + 1), (v11 + a3));
    if (v13)
    {
      v14 = v13;
      v15 = v13[8];
      if (v15 == 2)
      {
        v16 = *v13;
        if (*v13 && *v16)
        {
          v25 = (*(**(v16 + 40) + 272))(*(v16 + 40), *(v16 + 129), *(v13 + 2), *(v13 + 12), sub_1001B7810, v13);
          if (v25)
          {
            v18 = v25;
            sub_1001B31F8(v14);
            v23 = "Bulk Pipe";
            v24 = "WritePipeAsync";
LABEL_27:
            sub_1001B76A8(v16, v18, v23, v24, v19, v20, v21, v22);
          }

          return 625;
        }
      }

      else if (v15 == 1)
      {
        v16 = *v13;
        if (*v13)
        {
          if (*v16)
          {
            v31 = 0;
            v27 = 33;
            v29 = *(v13 + 12);
            v30 = *(v13 + 2);
            v28 = *(v16 + 24);
            v17 = (*(**(v16 + 32) + 216))(*(v16 + 32), &v27, sub_1001B76A4, v13);
            if (v17)
            {
              v18 = v17;
              sub_1001B31F8(v14);
              v23 = "Control Pipe";
              v24 = "DeviceRequestAsync";
              goto LABEL_27;
            }

            return 625;
          }
        }
      }

      return 1205;
    }

    goto LABEL_19;
  }

  LOWORD(v27) = *(v10 + 1);
  memcpy(v8, (v10 + 4), v6);
  return sub_1001B3A84(v5, &v27, v8, a3);
}

uint64_t sub_1001B42BC(int a1)
{
  if (a1 == 2)
  {
    sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- airMode = 0x02 (CVSD)\n");
  }

  else
  {
    if (a1 != 3)
    {
      sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- Error -- unknown airMode = 0x%02x (unknown)\n", a1);
      return 113;
    }

    sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- airMode = 0x03 (mSBC)\n");
  }

  v2 = qword_100B5AE70;
  if (!qword_100B5AE70)
  {
    return 113;
  }

  v3 = *(qword_100B5AE70 + 48);
  if (!v3 || (*(*v3 + 64))(*(qword_100B5AE70 + 48)))
  {
    return 113;
  }

  sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- ISOC interface for SCO is opened\n");
  if (sub_1001B32A4(v2, *(v2 + 48), a1))
  {
    goto LABEL_13;
  }

  sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- Set ISOC alternate interface successfully\n");
  if (sub_1001B3410(v2, 1))
  {
    goto LABEL_13;
  }

  sub_100304AF8("[bm3_usb][OI_HciIfc_EnableSCO_USB] -- Create ISOC requests successfully\n");
  bzero((v2 + 259), 0xF00uLL);
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 4100) = 0;
  v4 = (90 * *(v2 + 142) - 90) & 0xFFFE;
  if (v4 >= 0xF00)
  {
    LOWORD(v4) = 3840;
  }

  *(v2 + 4108) = v4;
  byte_100B5AE78 = 1;
  *(v2 + 4241) = 0;
  result = sub_1001B3754();
  if (result)
  {
LABEL_13:
    (*(*v3 + 72))(v3);
    return 113;
  }

  *(v2 + 4107) = 1;
  return result;
}

void sub_1001B4414(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *a1 + 4096;
  j__pthread_mutex_lock((*a1 + 4176));
  --*(v5 + 145);
  j__pthread_mutex_unlock((v4 + 4176));
  if (*v4)
  {
    v6 = qword_100B5AE70 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return;
  }

  if (!a2 || a2 == -536870169)
  {
    v7 = *(a1 + 10);
    if (*(a1 + 10))
    {
      v8 = 0;
      v9 = *(a1 + 144);
      v10 = (a1 + 18);
      do
      {
        v12 = *v10;
        v10 += 4;
        v11 = v12;
        if (v12)
        {
          if (sub_1001B45F8(v4, 3, 3u, 0x102u, (v4 + 168), *(v9 + 16) + v8 * *(a1 + 8), v11))
          {
            goto LABEL_14;
          }

          v9 = *(a1 + 144);
          v7 = *(a1 + 10);
        }

        *(v9 + 24) += v11;
        ++v8;
      }

      while (v8 < v7);
    }

    goto LABEL_18;
  }

LABEL_14:
  v13 = *(v4 + 168);
  if (v13)
  {
    sub_1001B31F8(v13);
    *(v4 + 168) = 0;
  }

  if (*v4)
  {
    sub_1000031B0();
    sub_10024DBDC(1211);
    sub_10000C198();
LABEL_18:
    if (dword_100B5AEF8)
    {
      *(*(a1 + 144) + 24) = 0;
      *(a1 + 136) = 0;
      if (sub_1001B3804(a1))
      {
        j__pthread_mutex_lock((v4 + 4176));
        if (!*(v5 + 145))
        {
          if (byte_100B5AE78 == 1)
          {
            sub_1001C4B04("[IsochPipeReadCB] -- btdev->nbrOfOutstandingIsochReads < 1 -- need to restart");
          }

          *(v5 + 11) = 0;
        }

        j__pthread_mutex_unlock((v4 + 4176));
      }
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("IsocReadRequestCB btdev->open is false", v14, v15, v16, v17, v18, v19, v20, v22);
    v21 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1001B45F8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, char **a5, uint64_t a6, unsigned int a7)
{
  if (!a7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a5;
  while (1)
  {
    v13 = a6 + v11;
    v14 = a7 - v11;
    if (v12)
    {
      v15 = *(v12 + 2);
      if (a2 == 2)
      {
        v16 = *(v15 + 2) + 4;
      }

      else if (a2 == 3)
      {
        v16 = *(v15 + 2) + 3;
      }

      else
      {
        v16 = *(v15 + 1) + 2;
      }

      goto LABEL_19;
    }

    if (a3 > v14)
    {
      goto LABEL_34;
    }

    if (a2 == 2)
    {
      v16 = *(v13 + 2) + 4;
    }

    else
    {
      v16 = a2 == 3 ? *(v13 + 2) + 3 : *(v13 + 1) + 2;
    }

    if (a3 > v16 || a4 < v16)
    {
      goto LABEL_34;
    }

    v17 = sub_1001B35A0(a1, a2, a3, v16);
    if (!v17)
    {
      break;
    }

    v12 = v17;
    *a5 = v17;
LABEL_19:
    v18 = *(v12 + 12);
    if (v18 == v16)
    {
      goto LABEL_34;
    }

    v19 = v16 - v18;
    if (a4 < v19)
    {
      goto LABEL_34;
    }

    v20 = v19 >= v14 ? (a7 - v11) : v19;
    v21 = sub_1001B47FC(v12, v13, v20);
    if (v21 < v20)
    {
      goto LABEL_34;
    }

    v22 = v21;
    if (*(v12 + 12) == v16)
    {
      if (v12[8] == 1)
      {
        sub_1000D660C();
      }

      pthread_mutex_lock(&stru_100B5AEB8);
      v23 = dword_100B5B220;
      if (dword_100B5B220 == 100)
      {
        v23 = 0;
      }

      dword_100B5B220 = v23 + 1;
      qword_100B5AE80[v23 + 16] = v12;
      pthread_cond_signal(&stru_100B5AE88);
      pthread_mutex_unlock(&stru_100B5AEB8);
      v12 = 0;
      *a5 = 0;
    }

    v11 += v22;
    if (a7 <= v11)
    {
      return 0;
    }
  }

  sub_1000031B0();
  sub_10024DC48(106);
  sub_10000C198();
LABEL_34:
  if (*a5)
  {
    sub_1001B31F8(*a5);
    *a5 = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1001B47FC(uint64_t a1, const void *a2, int a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 12);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    v5 = 0;
  }

  if (v3 + a3 <= v4)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    memcpy((*(a1 + 16) + v3), a2, v6);
    *(a1 + 24) += v6;
  }

  return v6;
}

uint64_t sub_1001B485C(void *a1)
{
  v2 = *a1;
  v3 = *a1 + 4096;
  j__pthread_mutex_lock((*a1 + 4112));
  --*(v3 + 144);
  result = j__pthread_mutex_unlock((v2 + 4112));
  if (*v2)
  {
    v5 = qword_100B5AE70 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && dword_100B5AEF8 != 0 && *(v3 + 10) == 1)
  {
    *(a1[18] + 24) = 0;
    a1[17] = 0;
    result = sub_1001B3CB0(a1);
    if (result)
    {
      j__pthread_mutex_lock((v2 + 4112));
      if (!*(v3 + 144))
      {
        if (byte_100B5AE78 == 1)
        {
          sub_1001C4B04("[IsochPipeWriteCB] -- btdev->nbrOfOutstandingIsochWrites < 1 -- need to restart");
        }

        *(v3 + 10) = 0;
      }

      return j__pthread_mutex_unlock((v2 + 4112));
    }
  }

  return result;
}

uint64_t sub_1001B4950()
{
  pthread_mutex_init(&stru_100B5B268, 0);
  pthread_cond_init(&stru_100B5B238, 0);
  xmmword_100B5AD78 = 0u;
  *&qword_100B5AD88 = 0u;
  xmmword_100B5AD98 = 0u;
  unk_100B5ADA8 = 0u;
  xmmword_100B5ADB8 = 0u;
  unk_100B5ADC8 = 0u;
  xmmword_100B5ADE8 = 0u;
  unk_100B5ADF8 = 0u;
  xmmword_100B5AE08 = 0u;
  xmmword_100B5AE28 = 0u;
  unk_100B5AE38 = 0u;
  xmmword_100B5AE48 = 0u;
  *&dword_100B5AE58 = 0u;
  qword_100B5AE68 = 0;
  xmmword_100B5ADD8 = 0u;
  xmmword_100B5AE18 = 0u;
  pthread_cond_init(&xmmword_100B5AE18, 0);
  pthread_mutex_init(&xmmword_100B5ADD8, 0);
  pthread_create(&xmmword_100B5AD78, 0, sub_1001B5CF4, 0);
  bzero(qword_100B5AE80, 0x3B0uLL);
  v0 = malloc_type_malloc(0x50uLL, 0x108004014AC8D4BuLL);
  *(v0 + 2) = 100;
  *v0 = malloc_type_malloc(0x320uLL, 0x80040B8603338uLL);
  *(v0 + 3) = 0;
  pthread_mutex_init((v0 + 16), 0);
  qword_100B5B228 = v0;
  pthread_cond_init(&stru_100B5AE88, 0);
  pthread_mutex_init(&stru_100B5AEB8, 0);
  pthread_create(qword_100B5AE80, 0, sub_1001B6C94, 0);
  pthread_mutex_lock(&stru_100B5B268);
  while (!qword_100B5AE68 || dword_100B5AEF8 == 0)
  {
    sub_100304AF8("[bm3_usb][Initialize] -- Before calling pthread_cond_wait()");
    pthread_cond_wait(&stru_100B5B238, &stru_100B5B268);
    sub_100304AF8("[bm3_usb][Initialize] -- After calling pthread_cond_wait()");
    if (byte_100B5B2A8 == 1)
    {
      sub_100304AF8("[bm3_usb][Initialize] -- gFoundUSBController is false -- calling break()");
      break;
    }
  }

  v2 = pthread_mutex_unlock(&stru_100B5B268);
  v3 = &byte_100B5A000;
  if (!qword_100B5AE60)
  {
    sub_100304AF8("[bm3_usb][Initialize] -- gIOThreadInfo.runloop is NULL -- Initialization failed");
    pthread_mutex_destroy(&xmmword_100B5ADD8);
    pthread_cond_destroy(&xmmword_100B5AE18);
    v2 = sub_1001B6DCC();
    if (!qword_100B5AE60)
    {
      sub_100304AF8("[bm3_usb][OI_HciIfc_Init_USB] -- Initialization failed");
      return 114;
    }
  }

  v50 = xmmword_1008A33F0;
  sub_1001B55B4(v2, dword_100B5AE58);
  v4 = dword_100B5ADD0;
  if (dword_100B5ADD0)
  {
    v4 = 0;
  }

  else
  {
    do
    {
      v5 = v4;
      sleep(1u);
      v4 = v5 + 1;
      if (dword_100B5ADD0)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5 >= 0xE;
      }
    }

    while (!v6);
    if (!dword_100B5ADD0)
    {
      sub_1001B5A4C();
      sub_100304AF8("[bm3_usb] No matching services found after %d seconds -- returned OI_FAIL");
      return 114;
    }
  }

  sub_100304AF8("[bm3_usb] Matching services found after %d seconds", v4);
  v7 = &byte_100B5A000;
  v8 = qword_100B5AE70;
  if (qword_100B5AE70)
  {
    goto LABEL_20;
  }

  do
  {
    pthread_mutex_lock(&xmmword_100B5ADD8);
    if (dword_100B5ADD0 < 1)
    {
      goto LABEL_117;
    }

    v15 = 0;
    do
    {
      v16 = *(&xmmword_100B5AD78 + v15 + 1);
      if (*(v16 + 4))
      {
        goto LABEL_47;
      }

      *(v16 + 4) = 1;
      sub_100304AF8("[bm3_usb][BTDeviceOpen] called\n");
      v17 = (*(**(v16 + 32) + 232))(*(v16 + 32));
      if (v17)
      {
        v18 = v17;
        if (v17 == -536870203)
        {
          sub_100304AF8("[bm3_usb] Bluetooth device already in use: %s [0x%08lx]\n");
        }

        else
        {
          sub_100304AF8("[bm3_usb] USBDeviceOpenSeize failed with %d\n", v17);
          sub_100304AF8("[bm3_usb][BTDeviceOpen] exited\n");
        }

        sub_100304AF8("[bm3_usb] BTDeviceOpen failed with %d\n", v18);
        goto LABEL_47;
      }

      *v16 = 1;
      sub_100304AF8("[bm3_usb][BTDeviceOpen] exited\n");
      v52 = 0;
      sub_100304AF8("[bm3_usb] Configuring bluetooth device: %s [0x%08lx]\n", *(v16 + 8), *(v16 + 16));
      *(v16 + 40) = 0;
      v19 = (v16 + 40);
      *(v16 + 80) = 0;
      v20 = (v16 + 80);
      *(v16 + 88) = 0;
      v21 = (v16 + 88);
      *(v16 + 48) = 0;
      *(v16 + 4110) = 2;
      *(v16 + 97) = 4;
      v22 = (*(**(v16 + 32) + 144))(*(v16 + 32), v16 + 96);
      if (v22)
      {
        v23 = v22;
        sub_100304AF8("[bm3_usb] GetDeviceSpeed failed with 0x%x\n");
        goto LABEL_42;
      }

      v24 = (*(**(v16 + 32) + 152))(*(v16 + 32), &v52);
      if (v24)
      {
        v23 = v24;
        sub_100304AF8("[bm3_usb] GetNumberOfConfigurations failed with 0x%x\n");
        goto LABEL_42;
      }

      if (!v52)
      {
        goto LABEL_112;
      }

      v25 = 0;
      while (1)
      {
        v51 = 0;
        v26 = (*(**(v16 + 32) + 168))(*(v16 + 32), v25, &v51);
        if (v26)
        {
          v23 = v26;
          sub_100304AF8("[bm3_usb] GetConfigurationDescriptorPtr failed with 0x%x\n");
          goto LABEL_110;
        }

        v27 = (*(**(v16 + 32) + 184))(*(v16 + 32), *(v51 + 5));
        if (v27)
        {
          v23 = v27;
          sub_100304AF8("[bm3_usb] SetConfiguration failed with 0x%x\n");
          goto LABEL_110;
        }

        v57 = 0xFFFF00010001FFFFLL;
        v23 = -536870212;
        if (!(*(**(v16 + 32) + 104))(*(v16 + 32), v16 + 20))
        {
          v23 = -536870212;
          if (!(*(**(v16 + 32) + 112))(*(v16 + 32), v16 + 22))
          {
            v58 = 0;
            *v19 = 0;
            *(v16 + 48) = 0;
            v23 = (*(**(v16 + 32) + 224))(*(v16 + 32), &v57, &v58);
            if (!v23)
            {
              break;
            }
          }
        }

LABEL_99:
        if (v52 <= ++v25)
        {
          sub_100304AF8("[bm3_usb] ConfigureInterfaces failed with 0x%x\n", v23);
LABEL_110:
          v7 = &byte_100B5A000;
          goto LABEL_42;
        }
      }

      *(v16 + 24) = 256;
      if (*(v16 + 20) == 1452 && *(v16 + 22) - 33424 <= 6 && ((1 << (*(v16 + 22) + 112)) & 0x53) != 0)
      {
        *(v16 + 24) = 770;
      }

      v28 = IOIteratorNext(v58);
      if (v28)
      {
        v29 = v28;
        while (1)
        {
          theInterface = 0;
          theScore = 0;
          v54 = 0;
          v53 = 0;
          v30 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
          v31 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
          v32 = IOCreatePlugInInterfaceForService(v29, v30, v31, &theInterface, &theScore);
          IOObjectRelease(v29);
          if (v32)
          {
            break;
          }

          v33 = theInterface;
          if (!theInterface)
          {
            break;
          }

          QueryInterface = (*theInterface)->QueryInterface;
          v35 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au);
          v36 = CFUUIDGetUUIDBytes(v35);
          if ((QueryInterface)(v33, *&v36.byte0, *&v36.byte8, &v54))
          {
            v37 = 1;
          }

          else
          {
            v37 = v54 == 0;
          }

          if (v37)
          {
            ((*theInterface)->Release)(theInterface);
            v23 = -1;
            goto LABEL_105;
          }

          v38 = (*(*v54 + 136))();
          v3 = &byte_100B5A000;
          if (v38)
          {
            v23 = v38;
            (*(*v54 + 24))(v54);
            ((*theInterface)->Release)(theInterface);
            goto LABEL_98;
          }

          if (v53 == *(v16 + 24))
          {
            *(v16 + 56) = theInterface;
            v39 = v54;
            v40 = (*(*v54 + 64))(v54);
            if (v40)
            {
              v23 = v40;
              v3 = &byte_100B5A000;
            }

            else
            {
              v63 = 0;
              *v19 = v39;
              v41 = (*(*v39 + 152))(v39, &v63);
              if (v41)
              {
                goto LABEL_94;
              }

              if (v63 == 3)
              {
                v42 = 1;
                while (1)
                {
                  v62 = 0;
                  v61 = 0;
                  v60 = 0;
                  v59 = 0;
                  v41 = (*(*v39 + 208))(v39, v42, &v62 + 1, &v62, &v61, &v60, &v59);
                  if (v41)
                  {
                    break;
                  }

                  v43 = v61;
                  if (v61 == 3)
                  {
                    v44 = HIBYTE(v62);
                    if (HIBYTE(v62) != 1)
                    {
                      goto LABEL_93;
                    }

                    v45 = v16 + 98;
                  }

                  else if (v61 == 2)
                  {
                    v44 = HIBYTE(v62);
                    if (HIBYTE(v62) == 1)
                    {
                      v45 = v16 + 114;
                    }

                    else
                    {
                      v45 = v16 + 122;
                      if (HIBYTE(v62))
                      {
                        goto LABEL_93;
                      }
                    }
                  }

                  else
                  {
                    if (v61 || HIBYTE(v62) != 3)
                    {
                      goto LABEL_93;
                    }

                    v44 = 1;
                    v45 = v16 + 106;
                  }

                  *v45 = *(v16 + 24);
                  *(v45 + 2) = v43;
                  *(v45 + 3) = v44;
                  *(v45 + 4) = v60;
                  *(v45 + 7) = v42;
                  *(v45 + 6) = v62 & 0xF | (v44 << 7);
                  if (v63 < ++v42)
                  {
                    goto LABEL_91;
                  }
                }

LABEL_94:
                v23 = v41;
              }

              else
              {
LABEL_93:
                v23 = -1;
              }

              v3 = &byte_100B5A000;
              if (*v19)
              {
                (*(**v19 + 72))(*v19);
                *v19 = 0;
              }
            }

            (*(*v54 + 24))(v54);
            goto LABEL_98;
          }

          if (v53 == *(v16 + 25))
          {
            *(v16 + 64) = theInterface;
            *(v16 + 48) = v54;
          }

          else
          {
            (*(*v54 + 24))(v54);
            ((*theInterface)->Release)(theInterface);
          }

LABEL_91:
          v29 = IOIteratorNext(v58);
          if (!v29)
          {
            goto LABEL_111;
          }
        }

        if (v32)
        {
          v23 = v32;
        }

        else
        {
          v23 = -1;
        }

LABEL_105:
        v3 = &byte_100B5A000;
LABEL_98:
        IOObjectRelease(v58);
        goto LABEL_99;
      }

LABEL_111:
      IOObjectRelease(v58);
      v7 = &byte_100B5A000;
      v3 = &byte_100B5A000;
LABEL_112:
      v46 = sub_1001B7178(v16, 0);
      if (v46)
      {
        v23 = v46;
        sub_100304AF8("[bm3_usb] BTDeviceSetPipeIdlePolicy failed with 0x%x\n");
        goto LABEL_42;
      }

      v47 = (*(**v19 + 32))(*v19, v16 + 80);
      if (!v47)
      {
        CFRunLoopAddSource(*(v3 + 460), *(v16 + 80), kCFRunLoopDefaultMode);
        v47 = (*(**(v16 + 48) + 32))(*(v16 + 48), v16 + 88);
        if (!v47)
        {
          CFRunLoopAddSource(*(v3 + 460), *(v16 + 88), kCFRunLoopDefaultMode);
          *(v7 + 462) = v16;
          goto LABEL_119;
        }
      }

      v23 = v47;
      sub_100304AF8("[bm3_usb] CreateInterfaceAsyncEventSource failed with 0x%x\n");
LABEL_42:
      if (*v20)
      {
        CFRunLoopRemoveSource(*(v3 + 460), *v20, kCFRunLoopDefaultMode);
        *v20 = 0;
      }

      if (*v21)
      {
        CFRunLoopRemoveSource(*(v3 + 460), *v21, kCFRunLoopDefaultMode);
        *v21 = 0;
      }

      sub_100304AF8("[bm3_usb] error in BTDeviceConfigure");
      sub_100304AF8("[bm3_usb] BTDeviceConfigure failed with %d\n", v23);
      sub_1001B5B8C(v16);
LABEL_47:
      ++v15;
    }

    while (v15 < dword_100B5ADD0);
LABEL_117:
    if (!*(v7 + 462))
    {
      sub_100304AF8("[bm3_usb] Waiting for bluetooth devices...\n");
      if (pthread_cond_timedwait_relative_np(&xmmword_100B5AE18, &xmmword_100B5ADD8, &v50) == 60)
      {
        pthread_mutex_unlock(&xmmword_100B5ADD8);
        sub_100304AF8("[bm3_usb] Timed out waiting for bluetooth devices\n");
        sub_1001B5A4C();
        sub_100304AF8("[bm3_usb][OI_HciIfc_Init_USB] -- pthread_cond_timedwait_relative_np == ETIMEOUT", *byte7);
        return 114;
      }
    }

LABEL_119:
    pthread_mutex_unlock(&xmmword_100B5ADD8);
    v8 = *(v7 + 462);
  }

  while (!v8);
LABEL_20:
  if ((sub_1001C5A5C((v8 + 4112)) & 1) == 0)
  {
    sub_100304AF8("[bm3_usb] writeMutex initialization failed...\n");
    sub_1001B5A4C();
    sub_100304AF8("[bm3_usb][OI_HciIfc_Init_USB] -- OI_Mutex_Init(writeMutex) failed -- returned OI_FAIL", *byte7);
    return 114;
  }

  if ((sub_1001C5A5C((*(v7 + 462) + 4176)) & 1) == 0)
  {
    sub_100304AF8("[bm3_usb] readMutex initialization failed...\n");
    sub_1001B5A4C();
    sub_100304AF8("[bm3_usb][OI_HciIfc_Init_USB] -- OI_Mutex_Init(readMutex) failed -- returned OI_FAIL", *byte7);
    return 114;
  }

  v9 = *(v7 + 462);
  v10 = sub_1001B3410(v9, 0);
  if (v10)
  {
    goto LABEL_127;
  }

  v11 = sub_1001B35A0(v9, 4, 0, ((*(v9 + 102) + 256) / *(v9 + 102) * *(v9 + 102)));
  if (!v11)
  {
LABEL_126:
    sub_100304AF8("[bm3_usb] PacketBufferCreate failed");
    v10 = -1;
    goto LABEL_127;
  }

  v10 = sub_1001B7218(v11);
  if (v10)
  {
LABEL_127:
    sub_100304AF8("[bm3_usb] BTDeviceStart failed with %d\n", v10);
    pthread_mutex_unlock(&xmmword_100B5ADD8);
    sub_1001B5A4C();
    sub_100304AF8("[bm3_usb][OI_HciIfc_Init_USB] -- BTDeviceStart() failed -- returned OI_FAIL", *byte7a);
    return 114;
  }

  v12 = sub_1001B35A0(v9, 2, 0, ((*(v9 + 118) + 2047) / *(v9 + 118) * *(v9 + 118)));
  if (!v12)
  {
    goto LABEL_126;
  }

  v10 = sub_1001B727C(v12);
  if (v10)
  {
    goto LABEL_127;
  }

  v13 = *(v7 + 462);
  result = 0;
  if (v13)
  {
    word_100B5B230 = *(v13 + 20);
    word_100B5B232 = *(v13 + 22);
  }

  return result;
}

void sub_1001B55B4(uint64_t a1, io_iterator_t a2)
{
  sub_100304AF8("[bm3_usb][DeviceFoundCB] called\n");
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    v5 = "[bm3_usb][RegisterBTDevice] called\n";
    do
    {
      memset(name, 0, 128);
      v24 = 0;
      theInterface = 0;
      v23 = 0;
      theScore = 0;
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
      *buffer = 0u;
      sub_100304AF8(v5);
      if (IORegistryEntryGetName(v4, name))
      {
        __strlcpy_chk();
      }

      else
      {
        v6 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x600u);
        CFStringGetCString(v6, buffer, 256, 0x600u);
        CFRelease(v6);
      }

      v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      if (IOCreatePlugInInterfaceForService(v4, v7, v8, &theInterface, &theScore))
      {
        sub_100304AF8("[bm3_usb][RegisterBTDevice] -- USB -- IOCreatePlugInInterfaceForService () failed");
      }

      else
      {
        v9 = theInterface;
        v10 = "[bm3_usb][RegisterBTDevice] -- USB -- IOCreatePlugInInterfaceForService () failed";
        if (!theInterface)
        {
          goto LABEL_21;
        }

        QueryInterface = (*theInterface)->QueryInterface;
        v12 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x56u, 0xADu, 8u, 0x9Du, 0x87u, 0x8Du, 0x4Bu, 0xEAu, 0xA1u, 0xF5u, 0x2Cu, 0x8Du, 0xC4u, 0x3Eu, 0x8Au, 0x98u);
        v13 = CFUUIDGetUUIDBytes(v12);
        v14 = (QueryInterface)(v9, *&v13.byte0, *&v13.byte8, &v23);
        ((*theInterface)->Release)(theInterface);
        if (v14)
        {
          sub_100304AF8("[bm3_usb][RegisterBTDevice] -- USB -- QueryInterface () failed");
        }

        else
        {
          v10 = "[bm3_usb][RegisterBTDevice] -- USB -- QueryInterface () failed";
          if (!v23)
          {
            goto LABEL_21;
          }

          v15 = (*(*v23 + 160))(v23, &v24);
          v10 = "[bm3_usb][RegisterBTDevice] -- USB -- GetLocationID () failed";
          if (v15)
          {
            goto LABEL_21;
          }

          if (qword_100B5AE60)
          {
            v16 = v5;
            v17 = v24;
            v18 = v23;
            v19 = malloc_type_malloc(0x1098uLL, 0x10B0040CB778C5AuLL);
            sub_100304AF8("[bm3_usb][BTDeviceCreate] called\n");
            bzero(v19, 0x1098uLL);
            *(v19 + 1) = strdup(buffer);
            v19[4] = v17;
            *(v19 + 4) = v18;
            if (!(*(*v18 + 32))(v18, v19 + 18))
            {
              if (qword_100B5AE60)
              {
                sub_100304AF8("[bm3_usb][BTDeviceCreate] calling CFRunLoopAddSource()\n");
                CFRunLoopAddSource(qword_100B5AE60, *(v19 + 9), kCFRunLoopDefaultMode);
              }

              else
              {
                sub_100304AF8("[bm3_usb][BTDeviceCreate] gIOThreadInfo.runloop is NULL\n");
                free(*(v19 + 1));
                free(v19);
                v19 = 0;
              }
            }

            v5 = v16;
            sub_100304AF8("[bm3_usb][BTDeviceCreate] exited\n");
            if (!IOServiceAddInterestNotification(xmmword_100B5AE48, v4, "IOGeneralInterest", sub_1001B6EF4, v19, v19 + 7))
            {
              sub_100304AF8("[bm3_usb][RegisterBTDevice] exited\n");
              if (v19)
              {
                pthread_mutex_lock(&xmmword_100B5ADD8);
                v20 = dword_100B5ADD0;
                if (dword_100B5ADD0 <= 9)
                {
                  ++dword_100B5ADD0;
                  *(&xmmword_100B5AD78 + v20 + 1) = v19;
                }

                pthread_cond_signal(&xmmword_100B5AE18);
                pthread_mutex_unlock(&xmmword_100B5ADD8);
              }

              goto LABEL_22;
            }

            sub_1001B706C(v19);
            v10 = "[bm3_usb][RegisterBTDevice] -- USB -- IOServiceAddInterestNotification () failed";
LABEL_21:
            sub_100304AF8(v10);
            goto LABEL_22;
          }

          sub_100304AF8("[bm3_usb][RegisterBTDevice] -- USB -- gIOThreadInfo.runloop is NULL");
        }
      }

LABEL_22:
      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }

  sub_100304AF8("[bm3_usb][DeviceFoundCB] exited\n");
}

void sub_1001B5A4C()
{
  sub_100304AF8("[bm3_usb][Cleanup] called\n");
  if (qword_100B5AE70)
  {
    sub_1001C5B4C((qword_100B5AE70 + 4112));
    sub_1001C5B4C((qword_100B5AE70 + 4176));
  }

  sub_1001B6DCC();
  pthread_mutex_lock(&xmmword_100B5ADD8);
  qword_100B5AE70 = 0;
  if (dword_100B5ADD0 >= 1)
  {
    v0 = 0;
    do
    {
      sub_1001B706C(*(&xmmword_100B5AD78 + ++v0));
    }

    while (v0 < dword_100B5ADD0);
  }

  pthread_mutex_unlock(&xmmword_100B5ADD8);
  sub_100304AF8("[bm3_usb][DestroyIOThread] called\n");
  sub_100304AF8("[bm3_usb][DestroyIOThread] calling CFRunLoopStop()\n");
  CFRunLoopStop(qword_100B5AE60);
  pthread_cancel(xmmword_100B5AD78);
  pthread_join(xmmword_100B5AD78, 0);
  qword_100B5AE60 = 0;
  sub_100304AF8("[bm3_usb][DestroyIOThread] gIOThreadInfo.runloop is set to NULL\n");
  IONotificationPortDestroy(xmmword_100B5AE48);
  if (dword_100B5AE58)
  {
    IOObjectRelease(dword_100B5AE58);
    dword_100B5AE58 = 0;
  }

  sub_100304AF8("[bm3_usb][DestroyIOThread] exited\n");
  pthread_mutex_destroy(&xmmword_100B5ADD8);
  pthread_cond_destroy(&xmmword_100B5AE18);

  sub_100304AF8("[bm3_usb][Cleanup] exited\n");
}

void sub_1001B5B8C(uint64_t a1)
{
  sub_100304AF8("[bm3_usb][BTDeviceClose] called\n");
  if (*a1)
  {
    *a1 = 0;
    if (qword_100B5AE60)
    {
      v2 = *(a1 + 28);
      if (v2)
      {
        IOObjectRelease(v2);
      }

      v3 = *(a1 + 80);
      if (v3)
      {
        CFRunLoopRemoveSource(qword_100B5AE60, v3, kCFRunLoopDefaultMode);
        *(a1 + 80) = 0;
      }

      v4 = *(a1 + 88);
      if (v4)
      {
        CFRunLoopRemoveSource(qword_100B5AE60, v4, kCFRunLoopDefaultMode);
        *(a1 + 88) = 0;
      }

      v5 = *(a1 + 72);
      if (v5)
      {
        CFRunLoopRemoveSource(qword_100B5AE60, v5, kCFRunLoopDefaultMode);
        *(a1 + 72) = 0;
      }
    }

    if (*(a1 + 40))
    {
      sub_100304AF8("[bm3_usb] Closing firstInterface -- control, interrupt, and bulk pipe\n");
      (*(**(a1 + 40) + 72))(*(a1 + 40));
      *(a1 + 40) = 0;
      IODestroyPlugInInterface(*(a1 + 56));
      (*(**(a1 + 56) + 24))(*(a1 + 56));
    }

    if (*(a1 + 48))
    {
      sub_100304AF8("[bm3_usb] Closing firstInterface -- Isoch pipe\n");
      (*(**(a1 + 48) + 72))(*(a1 + 48));
      *(a1 + 48) = 0;
      IODestroyPlugInInterface(*(a1 + 64));
      (*(**(a1 + 64) + 24))(*(a1 + 64));
    }

    if (*(a1 + 32))
    {
      sub_100304AF8("[bm3_usb] Closing USB device interface\n");
      (*(**(a1 + 32) + 72))(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }

  sub_100304AF8("[bm3_usb][BTDeviceClose] exited\n");
}

uint64_t sub_1001B5CF4()
{
  sub_100304AF8("[bm3_usb][IOThreadFunc] called\n");
  v0 = 0;
  v47 = 0;
  v1 = &unk_100B5B000;
  v2 = kIOMainPortDefault;
  while (1)
  {
    v3 = IOServiceMatching("IOUSBHostDevice");
    if (v3)
    {
      break;
    }

    sub_100304AF8("[bm3_usb][IOThreadFunc] -- USB -- Can't create a USB matching dictionary -- try again");
LABEL_60:
    sleep(1u);
    if (v0++ >= 0xF)
    {
      byte_100B5B2A8 = 1;
      sub_100304AF8("[bm3_usb][IOThreadFunc] -- Error -- Still cannot find USB Bluetooth Controller after 15 seconds ");
      pthread_mutex_lock(&stru_100B5B268);
      pthread_cond_signal(&stru_100B5B238);
      pthread_mutex_unlock(&stru_100B5B268);
      return 0;
    }
  }

  v4 = v3;
  sub_100304AF8("[bm3_usb][IOThreadFunc] -- USB -- calling GetProductAndVendorID()");
  existing = 0;
  v5 = IOServiceMatching("IOUSBHostDevice");
  if (IOServiceGetMatchingServices(v2, v5, &existing) || !existing)
  {
LABEL_57:
    v33 = v1[280];
    if (v1[280] && word_100B5B232)
    {
      LODWORD(v47) = word_100B5B232;
      HIDWORD(v47) = v33;
      goto LABEL_64;
    }

    CFRelease(v4);
    sub_100304AF8("[bm3_usb][IOThreadFunc] -- USB -- Can't obtain vendorID and productID -- try again");
    goto LABEL_60;
  }

  v41 = v4;
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, "USB Vendor Name", 0x600u);
  key = CFStringCreateWithCString(kCFAllocatorDefault, "USB Product Name", 0x600u);
  cf = CFStringCreateWithCString(kCFAllocatorDefault, "idVendor", 0x600u);
  v44 = CFStringCreateWithCString(kCFAllocatorDefault, "idProduct", 0x600u);
  v7 = CFStringCreateWithCString(kCFAllocatorDefault, "bDeviceClass", 0x600u);
  v43 = CFStringCreateWithCString(kCFAllocatorDefault, "locationID", 0x600u);
  theString1 = CFStringCreateWithCString(kCFAllocatorDefault, "Bluetooth USB Host Controller", 0x600u);
  v8 = IOIteratorNext(existing);
  if (!v8)
  {
    sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- Use internal Bluetooth USB Host Controller \n");
LABEL_56:
    IOObjectRelease(existing);
    CFRelease(v6);
    CFRelease(key);
    CFRelease(cf);
    CFRelease(v44);
    CFRelease(v7);
    CFRelease(v43);
    CFRelease(theString1);
    v2 = kIOMainPortDefault;
    v4 = v41;
    v1 = &unk_100B5B000;
    goto LABEL_57;
  }

  v9 = v8;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    properties = 0;
    if (!IORegistryEntryCreateCFProperties(v9, &properties, 0, 0))
    {
      v48 = 0;
      valuePtr = 0;
      Value = CFDictionaryGetValue(properties, v6);
      v11 = CFDictionaryGetValue(properties, key);
      v12 = CFDictionaryGetValue(properties, cf);
      v13 = CFDictionaryGetValue(properties, v44);
      v14 = CFDictionaryGetValue(properties, v43);
      v15 = CFDictionaryGetValue(properties, v7);
      if (CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4))
      {
        if (CFNumberGetValue(v12, kCFNumberIntType, &valuePtr) && CFNumberGetValue(v15, kCFNumberIntType, &v48) && CFNumberGetValue(v14, kCFNumberIntType, &v48 + 4) && (v48 - 224) <= 0x1F && ((1 << (v48 + 32)) & 0x80008001) != 0)
        {
          CStringPtr = CFStringGetCStringPtr(v11, 0x600u);
          v17 = CFStringGetCStringPtr(Value, 0x600u);
          sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- Found USB Device : \n");
          sub_100304AF8("    USB Product Name = %s \n", CStringPtr);
          sub_100304AF8("     USB Vendor Name = %s \n", v17);
          sub_100304AF8("            idVendor = 0x%04x \n", valuePtr);
          sub_100304AF8("           idProduct = 0x%04x \n", HIDWORD(valuePtr));
          sub_100304AF8("         deviceClass = 0x%02x (%d) \n", v48, v48);
          sub_100304AF8("          locationID = 0x%08x \n", HIDWORD(v48));
          if (v11 && CFStringCompare(theString1, v11, 0) == kCFCompareEqualTo)
          {
            v38 = valuePtr;
            v40 = 1;
            v39 = HIDWORD(valuePtr);
            goto LABEL_8;
          }

          if (valuePtr == 0x110A000005ACLL)
          {
            sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- idVendor = 0x%04x, idProduct = 0x%04x -- Apple USB-C to 3.5mm Headphone Jack Adapter -- ignore\n");
            goto LABEL_8;
          }

          if (valuePtr == 0x341000000451)
          {
            sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- idVendor = 0x%04x, idProduct = 0x%04x -- Texas Instruments USB device -- ignore\n");
            goto LABEL_8;
          }

          v56 = 0;
          theInterface = 0;
          memset(name, 0, sizeof(name));
          v55 = 0;
          v54 = 0;
          theScore = 0;
          *buffer = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          if (IORegistryEntryGetName(v9, name))
          {
            __strlcpy_chk();
          }

          else
          {
            v18 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x600u);
            CFStringGetCString(v18, buffer, 256, 0x600u);
            CFRelease(v18);
          }

          v19 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
          v20 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
          if (!IOCreatePlugInInterfaceForService(v9, v19, v20, &theInterface, &theScore))
          {
            v21 = theInterface;
            if (theInterface)
            {
              QueryInterface = (*theInterface)->QueryInterface;
              v23 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x56u, 0xADu, 8u, 0x9Du, 0x87u, 0x8Du, 0x4Bu, 0xEAu, 0xA1u, 0xF5u, 0x2Cu, 0x8Du, 0xC4u, 0x3Eu, 0x8Au, 0x98u);
              v24 = CFUUIDGetUUIDBytes(v23);
              v25 = (QueryInterface)(v21, *&v24.byte0, *&v24.byte8, &v56);
              ((*theInterface)->Release)(theInterface);
              if (!v25)
              {
                if (v56)
                {
                  if ((*(*v56 + 160))(v56, &v55) || (v26 = malloc_type_malloc(0x1098uLL, 0x10B0040CB778C5AuLL)) == 0)
                  {
                    (*(*v56 + 24))(v56);
                    goto LABEL_8;
                  }

                  v27 = v26;
                  bzero(v26, 0x1098uLL);
                  v27[1] = strdup(buffer);
                  *(v27 + 4) = v55;
                  v28 = v56;
                  v27[4] = v56;
                  if ((*(*v28 + 232))(v28))
                  {
                    v29 = v56;
                  }

                  else
                  {
                    *v27 = 1;
                    v27[5] = 0;
                    v27[6] = 0;
                    v27[10] = 0;
                    v27[11] = 0;
                    if (!(*(*v27[4] + 152))(v27[4], &v54))
                    {
                      if (v54)
                      {
                        v52 = 0;
                        if (!(*(*v27[4] + 168))(v27[4], 0, &v52))
                        {
                          v32 = 0;
                          do
                          {
                            if ((*(*v27[4] + 184))(v27[4], *(v52 + 5)))
                            {
                              break;
                            }

                            sub_1001B6724(v27);
                            if (v54 <= ++v32)
                            {
                              break;
                            }

                            v52 = 0;
                          }

                          while (!(*(*v27[4] + 168))(v27[4], v32, &v52));
                        }
                      }
                    }

                    (*(*v27[4] + 72))(v27[4]);
                    (*(*v56 + 24))(v56);
                    v30 = v27[1];
                    if (v30)
                    {
                      free(v30);
                    }

                    v31 = v27[7];
                    if (v31)
                    {
                      (*(*v31 + 24))(v31);
                      v27[7] = 0;
                    }

                    v29 = v27[8];
                    if (!v29)
                    {
                      goto LABEL_46;
                    }
                  }

                  (*(*v29 + 24))(v29);
LABEL_46:
                  free(v27);
                }
              }
            }
          }
        }
      }
    }

LABEL_8:
    if (properties)
    {
      CFRelease(properties);
    }

    IOObjectRelease(v9);
    v9 = IOIteratorNext(existing);
  }

  while (v9);
  sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- Use internal Bluetooth USB Host Controller \n");
  if ((v40 & 1) == 0)
  {
    goto LABEL_56;
  }

  v47 = __PAIR64__(v38, v39);
  sub_100304AF8("[bm3_usb][GetProductAndVendorID] -- Found internal Bluetooth USB Host Controller -- vendorID = 0x%04x, produceID = 0x%04x \n", v38, v39);
  IOObjectRelease(existing);
  CFRelease(v6);
  CFRelease(key);
  CFRelease(cf);
  CFRelease(v44);
  CFRelease(v7);
  CFRelease(v43);
  CFRelease(theString1);
  v2 = kIOMainPortDefault;
  v4 = v41;
  if (!v38 || !v39)
  {
    LODWORD(v47) = word_100B5B232;
    HIDWORD(v47) = word_100B5B230;
  }

LABEL_64:
  v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v47 + 4);
  CFDictionarySetValue(v4, @"idVendor", v35);
  CFRelease(v35);
  v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v47);
  CFDictionarySetValue(v4, @"idProduct", v36);
  CFRelease(v36);
  *&xmmword_100B5AE48 = IONotificationPortCreate(v2);
  *(&xmmword_100B5AE48 + 1) = IONotificationPortGetRunLoopSource(xmmword_100B5AE48);
  sub_100304AF8("[bm3_usb][IOThreadFunc] -- setting gIOThreadInfo.runloop to CFRunLoopGetCurrent()\n");
  qword_100B5AE60 = CFRunLoopGetCurrent();
  CFRunLoopAddSource(qword_100B5AE60, *(&xmmword_100B5AE48 + 1), kCFRunLoopDefaultMode);
  IOServiceAddMatchingNotification(xmmword_100B5AE48, "IOServiceFirstMatch", v4, sub_1001B55B4, 0, &dword_100B5AE58);
  pthread_mutex_lock(&stru_100B5B268);
  LODWORD(qword_100B5AE68) = 1;
  pthread_cond_signal(&stru_100B5B238);
  pthread_mutex_unlock(&stru_100B5B268);
  sub_100304AF8("[bm3_usb][IOThreadFunc] calling CFRunLoopRun()\n");
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1001B6724(uint64_t a1)
{
  iterator = 0;
  v39 = 0xFFFF00010001FFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  result = (*(**(a1 + 32) + 224))(*(a1 + 32), &v39, &iterator);
  if (!result)
  {
    *(a1 + 24) = 256;
    v4 = IOIteratorNext(iterator);
    if (v4)
    {
      v5 = v4;
      v6 = kCFAllocatorSystemDefault;
      byte7 = 0x2805270A0051ADD4;
      while (1)
      {
        theInterface = 0;
        theScore = 0;
        v36 = 0;
        v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, byte7, BYTE1(byte7), BYTE2(byte7), BYTE3(byte7), BYTE4(byte7), BYTE5(byte7), BYTE6(byte7), HIBYTE(byte7), 0x61u);
        v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
        LODWORD(v8) = IOCreatePlugInInterfaceForService(v5, v8, v9, &theInterface, &theScore);
        IOObjectRelease(v5);
        if (v8)
        {
          return IOObjectRelease(iterator);
        }

        v10 = theInterface;
        if (!theInterface)
        {
          return IOObjectRelease(iterator);
        }

        QueryInterface = (*theInterface)->QueryInterface;
        v12 = CFUUIDGetConstantUUIDWithBytes(v6, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au);
        v13 = CFUUIDGetUUIDBytes(v12);
        if ((QueryInterface)(v10, *&v13.byte0, *&v13.byte8, &v36))
        {
          v14 = 1;
        }

        else
        {
          v14 = v36 == 0;
        }

        if (v14)
        {
          goto LABEL_72;
        }

        if ((*(*v36 + 136))())
        {
          break;
        }

        if (v35 == *(a1 + 24))
        {
          v15 = *(a1 + 56);
          if (v15)
          {
            (*(*v15 + 24))(v15);
          }

          *(a1 + 56) = theInterface;
          v16 = v36;
          if ((*(*v36 + 64))(v36))
          {
            goto LABEL_73;
          }

          v17 = byte7;
          v18 = v6;
          v45[0] = 0;
          *v2 = v16;
          v19 = 0;
          if ((*(*v16 + 152))(v16, v45))
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            if (v45[0] == 3)
            {
              v21 = 0;
              v20 = 0;
              v19 = 0;
              for (i = 1; v45[0] >= i; ++i)
              {
                LOBYTE(v42) = 0;
                v47 = 0;
                v44 = 0;
                *v46 = 0;
                if ((*(*v16 + 208))(v16, i, &v42, &v47, &v44 + 1, v46, &v44))
                {
                  break;
                }

                if (HIBYTE(v44) == 3)
                {
                  if (v42 != 1)
                  {
                    break;
                  }

                  v19 = 1;
                }

                else if (HIBYTE(v44) == 2)
                {
                  if (v42 == 1)
                  {
                    v20 = 1;
                  }

                  else
                  {
                    if (v42)
                    {
                      break;
                    }

                    v21 = 1;
                  }
                }

                else if (HIBYTE(v44) || v42 != 3)
                {
                  break;
                }
              }
            }
          }

          if (*v2)
          {
            (*(**v2 + 72))(*v2);
            *v2 = 0;
          }

          v33 = v19 & v20 & v21;
          (*(*v36 + 24))(v36);
          v6 = v18;
          byte7 = v17;
          if ((v33 & 1) == 0)
          {
            return IOObjectRelease(iterator);
          }
        }

        else if (v35 == *(a1 + 25))
        {
          v23 = *(a1 + 64);
          if (v23)
          {
            (*(*v23 + 24))(v23);
          }

          *(a1 + 64) = theInterface;
          v24 = v36;
          memset(v46, 0, sizeof(v46));
          memset(v45, 0, 7);
          if ((*(*v36 + 64))(v36))
          {
LABEL_73:
            p_theInterface = &v36;
            goto LABEL_74;
          }

          v25 = 0;
          v47 = 0;
          *(a1 + 48) = v24;
LABEL_37:
          if (!(*(*v24 + 176))(v24, v25) && !(*(*v24 + 152))(v24, &v47) && v47 == 2)
          {
            v27 = 1;
            while (1)
            {
              v44 = 0;
              v43 = 0;
              v42 = 0;
              v41 = 0;
              if ((*(*v24 + 208))(v24, v27, &v44 + 1, &v44, &v43, &v42, &v41) || v43 != 1)
              {
                break;
              }

              if (HIBYTE(v44) == 1)
              {
                v29 = v46;
              }

              else
              {
                if (HIBYTE(v44))
                {
                  break;
                }

                v29 = v45;
              }

              v29[v25] = 1;
              if (v47 < ++v27)
              {
                if (++v25 != 7)
                {
                  goto LABEL_37;
                }

                break;
              }
            }
          }

          v30 = *(a1 + 48);
          if (v30)
          {
            (*(*v30 + 72))(v30);
            *(a1 + 48) = 0;
          }

          v31 = 0;
          v32 = 1;
          do
          {
            if (v46[v31] != 1 || (v45[v31] & 1) == 0)
            {
              v32 = 0;
            }

            ++v31;
          }

          while (v31 != 6);
          (*(*v36 + 24))(v36);
          if ((v32 & 1) == 0)
          {
            return IOObjectRelease(iterator);
          }
        }

        else
        {
          (*(*v36 + 24))(v36);
          ((*theInterface)->Release)(theInterface);
        }

        v5 = IOIteratorNext(iterator);
        if (!v5)
        {
          return IOObjectRelease(iterator);
        }
      }

      (*(*v36 + 24))(v36);
LABEL_72:
      p_theInterface = &theInterface;
LABEL_74:
      ((**p_theInterface)->Release)(*p_theInterface);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

uint64_t sub_1001B6C94()
{
  bzero(__dst, 0x320uLL);
  pthread_mutex_lock(&stru_100B5B268);
  dword_100B5AEF8 = 1;
  pthread_cond_signal(&stru_100B5B238);
  pthread_mutex_unlock(&stru_100B5B268);
  while (1)
  {
    pthread_mutex_lock(&stru_100B5AEB8);
    v0 = dword_100B5AEF8 == 0;
    v1 = dword_100B5AEF8 != 0;
    for (i = dword_100B5B220; !v0 && i == 0; i = dword_100B5B220)
    {
      pthread_cond_wait(&stru_100B5AE88, &stru_100B5AEB8);
      v0 = dword_100B5AEF8 == 0;
      v1 = dword_100B5AEF8 != 0;
    }

    if (!v1)
    {
      break;
    }

    if (i >= 1)
    {
      memcpy(__dst, &unk_100B5AF00, 8 * i);
    }

    dword_100B5B220 = 0;
    pthread_mutex_unlock(&stru_100B5AEB8);
    sub_1001B3154(__dst, i);
  }

  pthread_mutex_unlock(&stru_100B5AEB8);
  return 0;
}