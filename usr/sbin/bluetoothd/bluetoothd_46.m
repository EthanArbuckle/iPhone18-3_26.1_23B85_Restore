uint64_t sub_1002F68F8(uint64_t a1)
{
  if (!*(a1 + 2))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  v4 = -1;
  while (1)
  {
    if (*v3 != 1)
    {
      sub_1000D660C();
      if (*v3 != 1)
      {
        break;
      }
    }

    v5 = *(v3 + 8);
    if (*(v3 + 2) == 2)
    {
      v6 = *(v3 + 8);
    }

    else
    {
      v6 = HIWORD(*(v3 + 8));
    }

    if (v6 < v4 || v5 < v6)
    {
      return 812;
    }

    ++v2;
    v3 += 16;
    v4 = v5;
    if (v2 >= *(a1 + 2))
    {
      return 0;
    }
  }

  return 101;
}

uint64_t sub_1002F69AC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v3 = *qword_100B6B580;
  if (!*qword_100B6B580 || v3 == 3)
  {
    return 810;
  }

  if (v3 == 2)
  {
    return 817;
  }

  v9 = sub_100239CA8(a2);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  result = sub_1002F68F8(a3);
  if (result)
  {
    return result;
  }

  v11 = sub_100239CA8(a3);
  if (!v11)
  {
    return 106;
  }

  if (*(qword_100B6B580 + 12) < (v10 + 24 + v11))
  {
    return 816;
  }

  v12 = *(qword_100B6B580 + 24);
  if (!v12)
  {
    v16 = "SDP_State->ReqBuffer";
    goto LABEL_32;
  }

  if (!(v10 + 24 + v11))
  {
    v16 = "(bufLen) > 0";
LABEL_32:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1570, v16);
  }

  v19 = *(qword_100B6B580 + 24);
  v20 = v10 + 24 + v11;
  v23 = 2;
  v21 = v20;
  *v12 = 6;
  if ((v10 + 24 + v11) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1579, "ByteStream_NumReadBytesAvail(request) >= (2 * sizeof(uint16_t))");
  }

  v22 = 5;
  sub_100239F94(&v19, a2);
  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    goto LABEL_35;
  }

  if (v21 - v22 <= 1)
  {
LABEL_35:
    v17 = "ByteStream_NumReadBytesAvail(request) >= 2";
    goto LABEL_37;
  }

  if (v23 != 2)
  {
    v17 = "(request).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1584, v17);
  }

  *(v19 + v22 + 1) = *(qword_100B6B580 + 14);
  *(v19 + v22) = *(qword_100B6B580 + 15);
  v22 += 2;
  sub_100239F94(&v19, a3);
  v13 = v22;
  *(qword_100B6B580 + 16) = v22;
  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    goto LABEL_39;
  }

  if (v21 <= v13)
  {
LABEL_39:
    v18 = "ByteStream_NumReadBytesAvail(request) >= 1";
    goto LABEL_41;
  }

  if (v23 != 2)
  {
    v18 = "(request).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1594, v18);
  }

  v22 = v13 + 1;
  *(v19 + v13) = 0;
  if (v23 == 2)
  {
    v14 = v22;
    v21 = v22;
  }

  else
  {
    v14 = v21;
  }

  LOBYTE(v23) = 15;
  v15 = qword_100B6B580;
  *(qword_100B6B580 + 18) = v14;
  *(v15 + 80) = a1;
  *(v15 + 32) = 7;
  return sub_1002F65DC();
}

uint64_t sub_1002F6C78()
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v0 = *qword_100B6B580;
  result = 810;
  if (*qword_100B6B580)
  {
    if (v0 == 2)
    {
      if ((*(qword_100B6B580 + 32) | 2) == 7)
      {
        return sub_1002F65DC();
      }
    }

    else if (v0 == 3)
    {
      return result;
    }

    return 815;
  }

  return result;
}

uint64_t sub_1002F6CD4()
{
  if (!xmmword_100BCE300)
  {
    return 810;
  }

  v0 = qword_100B6B580;
  v1 = *qword_100B6B580;
  result = 810;
  if (*qword_100B6B580)
  {
    if (v1 == 2)
    {
      *(qword_100B6B580 + 66) = 0;
      v3 = *(v0 + 56);
      if (v3)
      {
        sub_10000C1E8(v3);
        v0 = qword_100B6B580;
        *(qword_100B6B580 + 56) = 0;
      }

      result = 0;
      *v0 = 1;
    }

    else if (v1 != 3)
    {
      return 815;
    }
  }

  return result;
}

uint64_t sub_1002F6D5C(void *a1)
{
  if (off_100B6B588)
  {
    if (off_100B6B588 == a1)
    {
      return 0;
    }

    else
    {
      return 119;
    }
  }

  else
  {
    result = 0;
    off_100B6B588 = a1;
  }

  return result;
}

void *sub_1002F6D88(void *result)
{
  if (off_100B6B588 == result)
  {
    off_100B6B588 = 0;
  }

  return result;
}

uint64_t sub_1002F6DA4(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1023, "(*Response).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    v2 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v2 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 1024, "(*Response).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 5) - v3 <= 1)
  {
    *(a1 + 15) = 1;
LABEL_10:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    goto LABEL_11;
  }

  v4 = *(*a1 + v3);
  *(a1 + 6) = v3 + 2;
  v5 = *(a1 + 5);
  if (v5 - (v3 + 2) <= 1)
  {
LABEL_11:
    *(a1 + 15) = 1;
    return 829;
  }

  v6 = __rev16(v4);
  v7 = *a1;
  v8 = __rev16(*(*a1 + (v3 + 2)));
  v9 = v3 + 4;
  *(a1 + 6) = v3 + 4;
  if (v8 > v6)
  {
    return 833;
  }

  v11 = qword_100B6B580;
  if (!v8)
  {
    v19 = *(qword_100B6B580 + 50);
    v13 = *(qword_100B6B580 + 48);
LABEL_20:
    if (v19 == v13 || v6 == v19)
    {
      *v11 = 1;
    }

    else
    {
      result = sub_1002F7838(a1);
      if (result)
      {
        return result;
      }

      v11 = qword_100B6B580;
      if (*qword_100B6B580 == 2)
      {

        return sub_1002F65DC();
      }
    }

    (*(v11 + 80))(*(v11 + 40), *(v11 + 50), 0);
    sub_10000C1E8(*(qword_100B6B580 + 40));
    result = 0;
    *(qword_100B6B580 + 40) = 0;
    return result;
  }

  v12 = 0;
  v13 = *(qword_100B6B580 + 48);
  v14 = *(qword_100B6B580 + 50);
  v15 = v5 - 3;
  while (v13 != v14)
  {
    if (v15 <= v9)
    {
      goto LABEL_11;
    }

    v16 = *(v7 + v9);
    v9 += 4;
    *(a1 + 6) = v9;
    v17 = bswap32(v16);
    v18 = *(v11 + 40);
    v19 = v14 + 1;
    *(v11 + 50) = v14 + 1;
    *(v18 + 4 * v14) = v17;
    ++v12;
    ++v14;
    if (v12 >= v8)
    {
      goto LABEL_20;
    }
  }

  return 837;
}

uint64_t sub_1002F6FBC(uint64_t a1)
{
  v56 = 0;
  v54 = 0;
  v55 = 6;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 753, "(*Response).__RWFlag == BYTESTREAM_READ");
  }

  v53 = 0;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
LABEL_7:
    v6 = 0;
    *(a1 + 15) = 1;
    goto LABEL_8;
  }

  v2 = *(a1 + 10);
  v3 = *(a1 + 12);
  if ((v2 - v3) <= 1)
  {
    goto LABEL_7;
  }

  v4 = *(*a1 + v3);
  v5 = v3 + 2;
  *(a1 + 12) = v3 + 2;
  if ((v2 - (v3 + 2)) >= (bswap32(v4) >> 16))
  {
    v11 = __rev16(v4);
    if (v11 > *(qword_100B6B580 + 14))
    {
      v6 = 0;
      v7 = 836;
      goto LABEL_9;
    }

    v12 = (v3 + 2) + v11;
    if (v12 > v2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 772, "(size_t)(startPos + attrBytes) <= (size_t)((*Response).__size)");
    }

    *(a1 + 12) = v12;
    v13 = sub_1002F7838(a1);
    if (v13)
    {
      v7 = v13;
LABEL_19:
      v6 = 0;
      goto LABEL_9;
    }

    if (*(a1 + 10) < v5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 777, "(size_t)(startPos) <= (size_t)((*Response).__size)");
    }

    *(a1 + 12) = v5;
    if (v12 > *(a1 + 8))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 781, "((startPos + attrBytes) <= (*Response).__trueSize) && ((startPos + attrBytes) >= (*Response).__pos)");
    }

    *(a1 + 10) = v12;
    v14 = qword_100B6B580;
    if (*(qword_100B6B580 + 56))
    {
      v15 = *(qword_100B6B580 + 64) + v11;
      if (v15 >= 0x2801)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Accumulated attribute reponse data length exceed the limits", v16, v17, v18, v19, v20, v21, v22, v50);
          v23 = sub_10000C050(0x34u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100813DD4();
          }
        }

        v6 = 0;
        goto LABEL_79;
      }

      v24 = sub_100007618(v15, 0x42263D82uLL);
      v6 = v24;
      if (!v24)
      {
        goto LABEL_79;
      }

      memmove(v24, *(qword_100B6B580 + 56), *(qword_100B6B580 + 64));
      if (*(a1 + 14) == 1)
      {
        v25 = *(qword_100B6B580 + 64);
        v26 = *a1;
        v27 = *(a1 + 12);
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
          v28 = 0;
        }

        else
        {
          v28 = *(a1 + 10) - v27;
        }

        if (v28 >= v11)
        {
          memmove(&v6[v25], (v26 + v27), v11);
          *(a1 + 12) += v11;
          sub_10000C1E8(*(qword_100B6B580 + 56));
          v14 = qword_100B6B580;
          *(qword_100B6B580 + 56) = 0;
          if (!v15)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 807, "(catenatedLen) > 0");
          }

          v5 = 0;
          *a1 = v6;
          *(a1 + 8) = v15;
          *(a1 + 12) = 0x10000;
          *(a1 + 10) = v15;
          goto LABEL_37;
        }

        v48 = "ByteStream_NumReadBytesAvail(*Response) >= (attrBytes)";
      }

      else
      {
        v48 = "(*Response).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 801, v48);
    }

    v6 = 0;
LABEL_37:
    v29 = *(v14 + 66);
    if (!*(v14 + 66))
    {
      v32 = sub_10023A2F0(a1, &v53, (v14 + 66));
      if (v32)
      {
        v7 = v32;
        if (v32 != 843)
        {
          goto LABEL_9;
        }

        if (*(a1 + 10) < v5)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 822, "(size_t)(startPos) <= (size_t)((*Response).__size)");
        }

        *(a1 + 12) = v5;
        v7 = 843;
        v33 = v11;
LABEL_82:
        if (*qword_100B6B580 == 2)
        {
          if (v33)
          {
            v42 = sub_100007618(v33, 0x56EA2AF3uLL);
            *(qword_100B6B580 + 56) = v42;
            if (!v42)
            {
              v7 = 106;
              goto LABEL_9;
            }

            if (*(a1 + 14) == 1)
            {
              v43 = v42;
              v44 = *a1;
              v45 = *(a1 + 12);
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
                v46 = 0;
              }

              else
              {
                v46 = *(a1 + 10) - v45;
              }

              if (v46 >= v33)
              {
                memmove(v43, (v44 + v45), v33);
                *(a1 + 12) += v33;
                *(qword_100B6B580 + 64) = v33;
                goto LABEL_94;
              }

              v49 = "ByteStream_NumReadBytesAvail(*Response) >= (attrBytes)";
            }

            else
            {
              v49 = "(*Response).__RWFlag == BYTESTREAM_READ";
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 951, v49);
          }
        }

        else if (v33)
        {
          goto LABEL_39;
        }

LABEL_94:
        if (v6)
        {
          sub_10000C1E8(v6);
        }

        if (*qword_100B6B580 != 2 || v54 != 0)
        {
          (*(qword_100B6B580 + 80))(&v55, *qword_100B6B580 == 2, v7);
          sub_10023B378(&v55);
          return 0;
        }

        v7 = sub_1002F65DC();
        if (!v7)
        {
          return v7;
        }

        goto LABEL_19;
      }

      LOWORD(v11) = v11 - v53;
      v5 += v53;
      v14 = qword_100B6B580;
      v29 = *(qword_100B6B580 + 66);
    }

    if (v29 < v11)
    {
LABEL_39:
      v7 = 833;
      goto LABEL_9;
    }

    *(v14 + 66) = v29 - v11;
    if (*(v14 + 32) == 7)
    {
      while (1)
      {
        v52 = 0;
        v30 = sub_10023A2F0(a1, &v53, &v52);
        if (v30)
        {
          break;
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 10) - *(a1 + 12);
        }

        if (v31 < v52)
        {
          v7 = 0;
          goto LABEL_62;
        }

        v30 = sub_1002F79E8(a1, v52, 0);
        if (v30)
        {
          break;
        }

        ++v54;
      }

      v7 = v30;
      if (v30 != 843)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
        v34 = 0;
      }

      else
      {
        v34 = *(a1 + 10) - *(a1 + 12);
      }

      v35 = sub_1002F79E8(a1, v34, &v54);
      v7 = v35;
      if (v35 != 843 && v35)
      {
        goto LABEL_9;
      }
    }

LABEL_62:
    if (v7 == 843)
    {
      v7 = 0;
      *(a1 + 15) = 0;
    }

    if (*(a1 + 10) < v5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 891, "(size_t)(startPos) <= (size_t)((*Response).__size)");
    }

    *(a1 + 12) = v5;
    if (!v54)
    {
LABEL_77:
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
        goto LABEL_94;
      }

      goto LABEL_81;
    }

    LOBYTE(v55) = 6;
    WORD1(v55) = 0;
    v36 = sub_100007618(16 * v54 + 16, 0x10F2040C8FBA5E1uLL);
    v56 = v36;
    if (v36)
    {
      v37 = v54;
      v36[16 * v54] = 33;
      *&v56[16 * v37 + 8] = &v55;
      if (!v37)
      {
        goto LABEL_77;
      }

      v38 = 0;
      v39 = 0;
      while (1)
      {
        v51 = 0;
        v52 = 0;
        if (sub_100239FF8(a1, &v51, &v52) == 843)
        {
          break;
        }

        v40 = v52;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
          v41 = 0;
        }

        else
        {
          v41 = (*(a1 + 10) - *(a1 + 12));
        }

        if (v41 < v40)
        {
          break;
        }

        if (sub_10023B2CC(a1, &v56[v38]))
        {
          goto LABEL_39;
        }

        ++WORD1(v55);
        ++v39;
        v38 += 16;
        if (v39 >= v54)
        {
          v7 = 0;
          goto LABEL_77;
        }
      }

      v7 = 0;
      *(a1 + 15) = 0;
LABEL_81:
      v33 = *(a1 + 10) - *(a1 + 12);
      goto LABEL_82;
    }

LABEL_79:
    v7 = 104;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_8:
  v7 = 829;
LABEL_9:
  v8 = qword_100B6B580;
  *(qword_100B6B580 + 66) = 0;
  v9 = *(v8 + 56);
  if (v9)
  {
    sub_10000C1E8(v9);
    *(qword_100B6B580 + 56) = 0;
  }

  sub_10023B378(&v55);
  if (v6)
  {
    sub_10000C1E8(v6);
  }

  return v7;
}

void sub_1002F7764(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("SDP CleanupAndReportError %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x34u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100813F70();
    }
  }

  v10 = *(qword_100B6B580 + 32);
  if (v10 == 7 || v10 == 5 || v10 == 3)
  {
    (*(qword_100B6B580 + 80))(0, 0, a1);
  }

  else
  {
    sub_1000D660C();
  }

  v11 = qword_100B6B580;
  *qword_100B6B580 = 1;
  *(v11 + 66) = 0;
  v12 = *(v11 + 56);
  if (v12)
  {
    sub_10000C1E8(v12);
    *(qword_100B6B580 + 56) = 0;
  }
}

uint64_t sub_1002F7838(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 643, "(*Response).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
LABEL_8:
    v6 = 1;
    *(a1 + 15) = 1;
LABEL_9:
    *qword_100B6B580 = 1;
    goto LABEL_10;
  }

  v2 = *(a1 + 6);
  if (*(a1 + 5) <= v2)
  {
    goto LABEL_8;
  }

  v3 = *a1;
  *(a1 + 6) = v2 + 1;
  v4 = *(v3 + v2);
  if (!*(v3 + v2))
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v4 > 0x10)
  {
    return 833;
  }

  v7 = qword_100B6B580;
  *(*(qword_100B6B580 + 24) + *(qword_100B6B580 + 16)) = v4;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 657, "(*Response).__RWFlag == BYTESTREAM_READ");
  }

  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v10 = *a1;
  v11 = *(a1 + 6);
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 5) - v11;
  }

  if (v12 >= v4)
  {
    v13 = v8 + v9;
    v14 = (v10 + v11);
    do
    {
      v15 = *v14++;
      *++v13 = v15;
    }

    while (v13 < v8 + v9 + v4);
    *(a1 + 6) += v4;
    v6 = *(a1 + 15);
  }

  else
  {
    v6 = 1;
    *(a1 + 15) = 1;
  }

  *(qword_100B6B580 + 18) = *(qword_100B6B580 + 16) + (v4 + 1);
LABEL_10:
  if (v6)
  {
    return 829;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F79E8(uint64_t a1, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v24 = 0;
    v23 = 0;
    result = sub_100239FF8(a1, &v24, &v23);
    if (result)
    {
      break;
    }

    if (v23 > v4)
    {
      return 843;
    }

    if (v23 != 3 || v24 != 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Bad attribute response - expected attribute id", v14, v15, v16, v17, v18, v19, v20, v22);
        v21 = sub_10000C050(0x34u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100815D64();
        }
      }

      return 833;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
      v8 = 0;
      v9 = v23;
    }

    else
    {
      v8 = *(a1 + 10) - *(a1 + 12);
      v9 = 3;
    }

    if (v8 < v9)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 702, "ByteStream_NumReadBytesAvail(*Response) >= (elemSize)");
    }

    *(a1 + 12) += v9;
    result = sub_100239FF8(a1, &v24, &v23);
    if (result)
    {
      return result;
    }

    v10 = v4 - 3;
    v11 = v23;
    if (v23 > v10)
    {
      return 843;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c");
      v12 = 0;
      v11 = v23;
    }

    else
    {
      v12 = *(a1 + 10) - *(a1 + 12);
    }

    if (v12 < v11)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdp.c", 712, "ByteStream_NumReadBytesAvail(*Response) >= (elemSize)");
    }

    *(a1 + 12) += v11;
    if (a3)
    {
      *a3 += 2;
    }

    v4 = v10 - v11;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002F7BC4(uint64_t a1, uint64_t a2)
{
  if (*(qword_100B6B580 + 24) != a2)
  {
    sub_1000D660C();
  }
}

void sub_1002F7BE0()
{
  if (xmmword_100BCE300)
  {
    v0 = qword_100B6B580;
    if (*qword_100B6B580 == 2)
    {
      sub_1002F7764(832);
      v0 = qword_100B6B580;
    }

    *(v0 + 8) = 0;
  }
}

uint64_t sub_1002F7C34()
{
  if (DWORD1(xmmword_100BCE300))
  {
    return 140;
  }

  qword_100B6B590 = sub_1001BBBD8(0x80uLL, 0x10F20408D2C687CuLL);
  if (!qword_100B6B590)
  {
    return 106;
  }

  v1 = sub_1003045A0(0x28u);
  qword_100B6B5B0 = sub_1001BBBD8(32 * *v1, 0x102004011A2BF05uLL);
  word_100B6B5A8 = 0;
  byte_100B6B5B8 = 0;
  v2 = sub_1001BBBD8(0x50uLL, 0x1060040D6C10F67uLL);
  if (!v2)
  {
    return 106;
  }

  v3 = v2;
  byte_100B6B598 = 1;
  word_100B6B59A = 4;
  dword_100B6B5A0 = 0;
  byte_100B6B5C0 = 4;
  v4 = sub_100307978();
  word_100B6B5C2 = strlen(v4);
  qword_100B6B5C8 = sub_100307978();
  byte_100B6B5D0 = 4;
  v5 = sub_100307984();
  word_100B6B5D2 = strlen(v5);
  qword_100B6B5D8 = sub_100307984();
  v3[12] = 6;
  *(v3 + 2) = &unk_100AEA168;
  *(v3 + 66) = -1;
  *(v3 + 7) = 0;
  v3[32] = 0;
  *(v3 + 13) = 0;
  *(v3 + 9) = &unk_1008A52B0;
  v6 = qword_100B6B590;
  *(qword_100B6B590 + 120) = v3;
  *v6 = 0;
  v6[12] = 2;
  v6[24] = 8;
  v6[36] = 6;
  v6[48] = 5;
  v7 = sub_1001BBBD8(0x50uLL, 0x1060040D6C10F67uLL);
  if (!v7)
  {
    return 106;
  }

  v8 = v7;
  result = 0;
  *(v8 + 12) = 1330184192;
  *(v8 + 2) = &unk_100AEA218;
  *(v8 + 12) = 1;
  *(v8 + 4) = 0;
  *(v8 + 20) = 0;
  *(v8 + 52) = 0;
  *(v8 + 59) = 0;
  *(v8 + 9) = &unk_1008A52B0;
  v9 = qword_100B6B590;
  *v8 = *(qword_100B6B590 + 120);
  *(v9 + 120) = v8;
  byte_100B6B5BC = 1;
  DWORD2(xmmword_100BCE300) = 1;
  return result;
}

uint64_t sub_1002F7E1C(uint64_t *a1, int *a2)
{
  v4 = sub_1001BBBD8(0x50uLL, 0x1060040D6C10F67uLL);
  if (!v4)
  {
    return 104;
  }

  v5 = v4;
  v6 = *a1;
  v4[2] = *a1;
  v7 = *(a1 + 4);
  *(v4 + 12) = v7;
  v4[4] = a1[2];
  *(v4 + 20) = *(a1 + 12);
  v4[7] = 0;
  *(v4 + 32) = 0;
  *(v4 + 66) = -1;
  *(v4 + 13) = 0;
  v4[9] = &unk_100AEA158;
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v6 + 16;
  while (*(v8 - 16) != 1)
  {
    v8 += 24;
    if (!--v7)
    {
      goto LABEL_14;
    }
  }

  if (*(v8 - 8) == 6)
  {
    v10 = *(*v8 + 8) | 0x4F490000;
    v11 = (qword_100B6B590 + 120);
LABEL_10:
    *(v4 + 12) = v10;
    v12 = v11;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (*(v12 + 12) == v10)
      {
        v10 += 0x10000;
        goto LABEL_10;
      }
    }

    if (a2)
    {
      *a2 = v10;
    }

    result = 0;
    *v5 = *v11;
    *(qword_100B6B590 + 120) = v5;
    byte_100B6B598 = 1;
    word_100B6B59A = 4;
    ++dword_100B6B5A0;
  }

  else
  {
LABEL_14:
    if (sub_10000C240())
    {
      sub_10000AF54("ServiceClassIDList is mandatory in an SDP service record", v13, v14, v15, v16, v17, v18, v19, v21);
      v20 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10000C1E8(v5);
    return 826;
  }

  return result;
}

uint64_t sub_1002F7FB0(int a1, char a2)
{
  v2 = qword_100B6B590 + 120;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 48) == a1)
    {
      if (a1)
      {
        result = 0;
        *(v2 + 66) = a2;
        ++*(v2 + 52);
        byte_100B6B598 = 1;
        word_100B6B59A = 4;
        ++dword_100B6B5A0;
        return result;
      }

      return 802;
    }
  }

  return 802;
}

uint64_t sub_1002F8018(int a1)
{
  if (!a1)
  {
    return 101;
  }

  v1 = 0;
  v2 = (qword_100B6B590 + 120);
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 802;
    }

    v3 = v1;
    v1 = v2;
  }

  while (v2[12] != a1);
  if (*(v2 + 32))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Potential memory leak - Attribute list has not been removed", v4, v5, v6, v7, v8, v9, v10, v16);
      v11 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  v12 = *(v2 + 1);
  if (v12)
  {
    do
    {
      v13 = *v12;
      sub_10000C1E8(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = (qword_100B6B590 + 120);
  if (v3)
  {
    v14 = v3;
  }

  *v14 = *v2;
  sub_10000C1E8(v2);
  result = 0;
  byte_100B6B598 = 1;
  word_100B6B59A = 4;
  ++dword_100B6B5A0;
  return result;
}

uint64_t sub_1002F8134(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Adding SDP Legacy record for service record handle %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x36u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = qword_100B6B590 + 120;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (*(v12 + 48) == a1)
    {
      goto LABEL_9;
    }
  }

  sub_1000D660C();
LABEL_9:
  v13 = sub_1001BBBD8(0x50uLL, 0x1060040D6C10F67uLL);
  v13[2] = *a2;
  *(v13 + 12) = *(a2 + 8);
  v13[4] = *(a2 + 16);
  *(v13 + 20) = *(a2 + 24);
  v13[7] = 0;
  *(v13 + 32) = 0;
  *(v13 + 66) = -1;
  v13[9] = &unk_100AEA158;
  *(v13 + 12) = a1;
  *(v13 + 13) = 0;
  *v13 = *(v12 + 8);
  *(v12 + 8) = v13;
  return 0;
}

uint64_t sub_1002F8294(uint64_t a1, unsigned int a2, _WORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *(qword_100B6B590 + 120);
  if (v5)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v43 = v7 + 1;
      if (*a3 <= v7)
      {
        v9 = qword_100B6B590;
        *(qword_100B6B590 + 8) = 1;
        *(v9 + 10) = 4;
        *(v9 + 16) = *(v5 + 12);
        *(v9 + 32) = 1;
        *(v9 + 34) = 4;
        *(v9 + 40) = *(v5 + 13);
        *(v9 + 56) = 1;
        *(v9 + 58) = 1;
        *(v9 + 64) = *(v5 + 66);
        *(v9 + 80) = unk_100B52320;
        *(v9 + 104) = *v5[9];
        v10 = *(v9 + 106) ? 5 : 4;
        if (a2)
        {
          v11 = 0;
          while (1)
          {
            if (*(v5 + 12))
            {
              v12 = 1;
              v13 = 8;
              do
              {
                v14 = sub_1002F85C8((v5[2] + v13), a1 + 16 * v11);
                if (v12 >= *(v5 + 12))
                {
                  break;
                }

                v13 += 24;
                ++v12;
              }

              while ((v14 & 1) == 0);
            }

            else
            {
              v14 = 0;
            }

            if (*(v5 + 32) && (v14 & 1) == 0)
            {
              v15 = 1;
              v16 = 8;
              do
              {
                v14 = sub_1002F85C8((v5[7] + v16), a1 + 16 * v11);
                if (v15 >= *(v5 + 32))
                {
                  break;
                }

                v16 += 24;
                ++v15;
              }

              while ((v14 & 1) == 0);
            }

            if ((v14 & 1) == 0)
            {
              v17 = 0;
              do
              {
                v18 = sub_1002F85C8((qword_100B6B590 + 24 * v17++ + 8), a1 + 16 * v11);
              }

              while (v10 > v17 && !v18);
              if ((v18 & 1) == 0)
              {
                break;
              }
            }

            if (++v11 == v8)
            {
              v20 = word_100B6B5A8;
              if (!word_100B6B5A8)
              {
                goto LABEL_47;
              }

              v21 = qword_100B6B5B0;
              while (*v21 != a5)
              {
                v21 += 32;
                if (!--v20)
                {
                  goto LABEL_47;
                }
              }

              if (*(v21 + 28) != 1)
              {
                goto LABEL_47;
              }

              v22 = *(v5 + 12);
              if (!*(v5 + 12))
              {
                goto LABEL_47;
              }

              v23 = 0;
              LODWORD(v24) = 0;
              v25 = (v5[2] + 16);
              do
              {
                if (*(v25 - 8) == 1)
                {
                  LODWORD(v24) = *(v25 - 3);
                  v23 = *v25;
                }

                v25 += 3;
                --v22;
              }

              while (v22);
              if (!v24)
              {
LABEL_47:
                result = 0;
                *a4 = *(v5 + 12);
                *a3 = v43;
                return result;
              }

              v26 = (v23 + 8);
              v24 = v24;
              while (1)
              {
                v28 = *v26;
                v26 += 4;
                v27 = v28;
                if (v28 == 4611 || v27 == 4383)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_47;
                }
              }

              if (sub_10000C240())
              {
                v30 = sub_10030253C(v27);
                sub_10000AF54("Wireless Splitter incoming connection ignore %s profile", v31, v32, v33, v34, v35, v36, v37, v30);
                v38 = sub_10000C050(0x36u);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  v45 = sub_10000C0FC();
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              return 823;
            }
          }
        }
      }

      v5 = *v5;
      v7 = v43;
    }

    while (v5);
  }

  return 823;
}

uint64_t sub_1002F85C8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if ((v4 - 6) < 2)
  {
    if (*(a1 + 1))
    {
      v5 = 0;
      v6 = *(a1 + 1);
      do
      {
        result = sub_1002F85C8(v6, a2);
        if (result)
        {
          break;
        }

        ++v5;
        v6 += 16;
      }

      while (v5 < *(a1 + 1));
      return result;
    }

    return 0;
  }

  if (v4 != 3)
  {
    return 0;
  }

  return sub_100237F64(a1, a2);
}

void *sub_1002F8670(uint64_t a1)
{
  v1 = word_100B6B5A8;
  if (!word_100B6B5A8)
  {
    return 0;
  }

  for (result = qword_100B6B5B0; *result != a1; result += 4)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002F86A8(uint64_t a1, char a2)
{
  v3 = word_100B6B5A8;
  if (word_100B6B5A8)
  {
    v5 = qword_100B6B5B0;
    while (*v5 != a1)
    {
      v5 += 32;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Wireless Splitter SDP record for remote device with hci handle: %p already exists, updating it", v14, v15, v16, v17, v18, v19, v20, *v5);
      v21 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(v5 + 28) = a2;
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Wireless Splitter SDP record for remote device with hci handle: %p does not exist", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }
}

void sub_1002F8820(uint64_t a1, char a2)
{
  v3 = word_100B6B5A8;
  if (word_100B6B5A8)
  {
    v5 = qword_100B6B5B0;
    while (*v5 != a1)
    {
      v5 += 32;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("SDP record for remote device with hci handle: %p already exists, updating requiresLegacyPnPInformation flag in record.", v14, v15, v16, v17, v18, v19, v20, *v5);
      v21 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(v5 + 24) = a2;
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("SDP record for remote device with hci handle: %p does not exist", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1002F8998(uint64_t a1, int a2, __int16 a3, __int16 a4)
{
  v8 = word_100B6B5A8;
  if (word_100B6B5A8)
  {
    v9 = (qword_100B6B5B0 + 14);
    while (*(v9 - 7) != a1)
    {
      v9 += 16;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("SDP record for remote device with hci handle: %p already exists, let's update the record", v32, v33, v34, v35, v36, v37, v38, *(v9 - 7));
      v39 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v44 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    result = 0;
    if (a2 > 4381)
    {
      switch(a2)
      {
        case 4382:
          result = 0;
          v9[3] = a3;
          v9[4] = a4;
          break;
        case 4398:
          result = 0;
          v9[1] = a3;
          v9[2] = a4;
          break;
        case 4404:
          result = 0;
          v9[6] = a3;
          break;
      }
    }

    else if ((a2 - 4366) >= 2)
    {
      if (a2 == 4364)
      {
        result = 0;
        *(v9 - 3) = a3;
        *(v9 - 2) = a4;
      }
    }

    else
    {
      result = 0;
      *(v9 - 1) = a3;
      *v9 = a4;
    }
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("SDP record for remote device with hci handle: %p does not exist, creating one", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x36u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v44 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v18 = word_100B6B5A8;
    if (v18 >= *sub_1003045A0(0x28u))
    {
      sub_1000D660C();
    }

    v19 = word_100B6B5A8;
    if (v19 == *sub_1003045A0(0x28u))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No room to add another SDP remote record for connection %p. Total number of SDP remote records : %d", v20, v21, v22, v23, v24, v25, v26, word_100B6B5A8);
        v27 = sub_10000C050(0x36u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      return 104;
    }

    else
    {
      v29 = qword_100B6B5B0;
      v30 = word_100B6B5A8;
      *(qword_100B6B5B0 + 32 * word_100B6B5A8) = a1;
      if (a2 > 4381)
      {
        switch(a2)
        {
          case 4382:
            v41 = v29 + 32 * v30;
            *(v41 + 20) = a3;
            *(v41 + 22) = a4;
            break;
          case 4398:
            v42 = v29 + 32 * v30;
            *(v42 + 16) = a3;
            *(v42 + 18) = a4;
            break;
          case 4404:
            *(v29 + 32 * v30 + 26) = a3;
            break;
        }
      }

      else if ((a2 - 4366) >= 2)
      {
        if (a2 == 4364)
        {
          v40 = v29 + 32 * v30;
          *(v40 + 8) = a3;
          *(v40 + 10) = a4;
        }
      }

      else
      {
        v31 = v29 + 32 * v30;
        *(v31 + 12) = a3;
        *(v31 + 14) = a4;
      }

      result = 0;
      word_100B6B5A8 = v30 + 1;
    }
  }

  return result;
}

uint64_t sub_1002F8CFC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, __int16 **a5, uint64_t a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v11 = *a4;
  v12 = &unk_100B6B000;
  v13 = qword_100B6B590 + 120;
  if (byte_100B6B5B8)
  {
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        return 802;
      }

      if (*(v13 + 48) == a1)
      {
        goto LABEL_57;
      }
    }
  }

  do
  {
    v13 = *v13;
    if (!v13)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find record for service handle %u", v20, v21, v22, v23, v24, v25, v26, a1);
        v27 = sub_10000C050(0x36u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 802;
    }
  }

  while (*(v13 + 48) != a1);
  v14 = *(v13 + 24);
  if (*(v13 + 24))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *(v13 + 16) + 16;
    do
    {
      v19 = *(v18 - 16);
      if (v19 == 9)
      {
        v15 = *(*(*v18 + 8) + 24);
      }

      else if (v19 == 1)
      {
        v16 = *(v18 - 6);
        v17 = *v18;
      }

      v18 += 24;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  v28 = word_100B6B5A8;
  if (!word_100B6B5A8)
  {
LABEL_23:
    if (sub_10000C240())
    {
      sub_10000AF54("No remote SDP record found for device. Returning SDP record with profile version %x", v30, v31, v32, v33, v34, v35, v36, v15);
      v37 = sub_10000C050(0x36u);
      v6 = a5;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }

LABEL_56:
      if (v13)
      {
        goto LABEL_57;
      }

      return 802;
    }

LABEL_55:
    v6 = a5;
    goto LABEL_56;
  }

  v29 = (qword_100B6B5B0 + 16);
  while (*(v29 - 2) != a6)
  {
    v29 += 16;
    if (!--v28)
    {
      goto LABEL_23;
    }
  }

  if (!v16)
  {
    goto LABEL_55;
  }

  v38 = 0;
  v39 = 0;
  v40 = v16;
  v41 = (v17 + 8);
  do
  {
    v43 = *v41;
    v41 += 4;
    v42 = v43;
    if (v43 <= 4398)
    {
      switch(v42)
      {
        case 4364:
          v39 = *(v29 - 2);
          if (!*(v29 - 2))
          {
            v39 = *(v29 - 4);
          }

          break;
        case 4367:
          v39 = *(v29 - 4);
          if (!*(v29 - 4))
          {
            v39 = *(v29 - 2);
          }

          break;
        case 4383:
          v39 = v29[2];
          break;
        default:
          goto LABEL_51;
      }

      goto LABEL_50;
    }

    switch(v42)
    {
      case 4399:
        v39 = *v29;
LABEL_50:
        v38 = 1;
        break;
      case 4402:
        v39 = v29[5];
        goto LABEL_50;
      case 4608:
        if (sub_10000C240())
        {
          sub_10000AF54("Service class ID is OI_UUID_PnPInformation, so check if we need to send legacy PnPInformation record", v44, v45, v46, v47, v48, v49, v50, v97);
          v51 = sub_10000C050(0x36u);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = sub_10000C0FC();
            *buf = 136446210;
            v102 = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(v29 + 8) == 1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Need to send legacy PnPInformation record to remote", v53, v54, v55, v56, v57, v58, v59, v97);
            v60 = sub_10000C050(0x36u);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = sub_10000C0FC();
              *buf = 136446210;
              v102 = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v38 = 0;
          v13 = *(v13 + 8);
        }

        else
        {
          v38 = 0;
        }

        v7 = a4;
        break;
    }

LABEL_51:
    --v40;
  }

  while (v40);
  v6 = a5;
  if (!v39 || v15 <= v39)
  {
    v12 = &unk_100B6B000;
    v8 = a3;
    goto LABEL_56;
  }

  if (v38)
  {
    v89 = *(v13 + 8);
    if (v89)
    {
      v90 = 0;
      v91 = -1;
      do
      {
        if (*(v13 + 24))
        {
          v92 = v89[2] + 16;
          v93 = *(v13 + 24);
          do
          {
            if (*(v92 - 16) == 9)
            {
              v94 = *(*(*v92 + 8) + 24);
              if (v94 <= v39)
              {
                if ((v39 - v94) <= v91)
                {
                  v90 = v89;
                  v91 = v39 - v94;
                }
              }

              else if ((v94 - v39) < v91)
              {
                v90 = v89;
                v91 = v94 - v39;
              }
            }

            v92 += 24;
            --v93;
          }

          while (v93);
        }

        v89 = *v89;
      }

      while (v89);
    }

    else
    {
      v90 = 0;
    }

    if (v90)
    {
      v13 = v90;
    }
  }

  v12 = &unk_100B6B000;
  v8 = a3;
  if (!v13)
  {
    sub_1000D660C();
    return 802;
  }

LABEL_57:
  v62 = v8;
  v63 = v12[178];
  *(v63 + 8) = 1;
  *(v63 + 10) = 4;
  *(v63 + 16) = *(v13 + 48);
  *(v63 + 32) = 1;
  *(v63 + 34) = 4;
  *(v63 + 40) = *(v13 + 52);
  *(v63 + 56) = 1;
  *(v63 + 58) = 1;
  *(v63 + 64) = *(v13 + 66);
  *(v63 + 80) = unk_100B52320;
  *(v63 + 104) = **(v13 + 72);
  if (*(v63 + 106))
  {
    v64 = 5;
  }

  else
  {
    v64 = 4;
  }

  if (!v8)
  {
LABEL_102:
    *v6 = 0;
    *v7 = 0;
    return 826;
  }

  v65 = 0;
  v66 = (v13 + 56);
  v67 = (v13 + 64);
  v68 = (v13 + 32);
  v69 = (v13 + 40);
  v70 = (v13 + 16);
  v71 = (v13 + 24);
  if (byte_100B6B5BC)
  {
    v72 = 1330184192;
  }

  else
  {
    v72 = 0;
  }

  v73 = v12[178];
  while (2)
  {
    v74 = a2 + 16 * v65;
    if (*v74 != 1)
    {
      return 825;
    }

    v75 = *(v74 + 2);
    if (v75 == 4)
    {
      v77 = *(v74 + 8);
      v76 = HIWORD(v77);
    }

    else
    {
      if (v75 != 2)
      {
        return 825;
      }

      v76 = *(v74 + 8);
      LOWORD(v77) = *(v74 + 8);
    }

    if (v11 > v77)
    {
      goto LABEL_101;
    }

    v78 = 0;
    v79 = 0;
    if (v76 <= v11)
    {
      v76 = v11;
    }

    while (2)
    {
      if (v78 > 1)
      {
        if (v78 == 3)
        {
          v80 = v67;
        }

        else
        {
          v80 = v69;
        }

        if (v78 == 3)
        {
          v81 = v66;
        }

        else
        {
          v81 = v68;
        }
      }

      else
      {
        v80 = v71;
        v81 = v70;
        v82 = v73;
        v83 = v64;
        if (!v78)
        {
          goto LABEL_84;
        }
      }

      v83 = *v80;
      if (*v80)
      {
        v82 = *v81;
LABEL_84:
        v84 = 0;
        do
        {
          v85 = (v82 + 24 * v84);
          v86 = *v85;
          if (v76 <= v86 && v86 <= v77)
          {
            v79 = (v82 + 24 * v84);
            LOWORD(v77) = *v85;
            if (v76 == v86)
            {
              break;
            }
          }

          ++v84;
        }

        while (v84 < v83);
      }

      if (++v78 != 4)
      {
        continue;
      }

      break;
    }

    if (v79)
    {
      if (*v79 != v77)
      {
        sub_1000D660C();
        LOWORD(v77) = *v79;
      }
    }

    else
    {
      if (v72 != a1 || v62 != 1 || *a2 != 1 || *(a2 + 2) != 4 || HIWORD(*(a2 + 8)) != 1024 || (v87 = *v7, *(a2 + 8) < v87) || (v87 <= 0x400 ? (v77 = 1024) : (v77 = *v7), v77 - 1024 >= 0x25))
      {
LABEL_101:
        if (++v65 >= v62)
        {
          goto LABEL_102;
        }

        continue;
      }

      v79 = &word_100B6B5E0;
      word_100B6B5E0 = v77;
      byte_100B6B5E8 = 6;
      word_100B6B5EA = 2;
      qword_100B6B5F0 = &byte_100B6B5F8;
      byte_100B6B5F8 = 4;
      v95 = &(&off_100AEA890)[2 * v77 - 2048];
      v96 = *v95;
      word_100B6B5FA = strlen(*v95);
      qword_100B6B600 = v96;
      byte_100B6B608 = 1;
      word_100B6B60A = 2;
      dword_100B6B610 = *(v95 + 4);
    }

    break;
  }

  result = 0;
  *v6 = v79;
  *v7 = v77 + 1;
  return result;
}

uint64_t sub_1002F941C(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (*a2 == 32)
  {
    v2 = *(a2 + 1);
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    goto LABEL_88;
  }

  v4 = *(a1 + 6);
  if (*(a1 + 5) <= v4)
  {
LABEL_88:
    v33 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_90;
  }

  if (*(a1 + 14) != 2)
  {
    v33 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1537, v33);
  }

  v5 = *v2;
  v6 = *a1;
  *(a1 + 6) = v4 + 1;
  *(v6 + v4) = v5;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    goto LABEL_92;
  }

  v7 = *(a1 + 6);
  if ((*(a1 + 5) - v7) <= 1)
  {
LABEL_92:
    v34 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 2";
    goto LABEL_94;
  }

  if (*(a1 + 14) != 2)
  {
    v34 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1538, v34);
  }

  result = 0;
  *(*a1 + v7) = v2[2];
  *(*a1 + *(a1 + 6) + 1) = v2[3];
  v9 = *(a1 + 6);
  v10 = v9 + 2;
  *(a1 + 6) = v9 + 2;
  v11 = *v2;
  if (v11 > 3)
  {
    if (*v2 > 5u)
    {
      if (v11 == 6)
      {
        if (*(v2 + 1))
        {
          v22 = 0;
          v23 = 0;
          while ((sub_1002F941C(a1, *(v2 + 1) + v22) & 1) != 0)
          {
            ++v23;
            v22 += 16;
            if (v23 >= *(v2 + 1))
            {
              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      if (v11 != 8)
      {
        if (v11 != 7)
        {
          return result;
        }

        if (*(v2 + 1))
        {
          v12 = 0;
          v13 = 0;
          while ((sub_1002F941C(a1, *(v2 + 1) + v12) & 1) != 0)
          {
            ++v13;
            v12 += 16;
            if (v13 >= *(v2 + 1))
            {
              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      v24 = *a1;
      v25 = *(v2 + 1);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
        v27 = 0;
      }

      else
      {
        v27 = *(a1 + 5) - v10;
      }

      v29 = *(v2 + 1);
      if (v27 < v29)
      {
        v36 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (elem->Size)";
      }

      else
      {
        if (*(a1 + 14) == 2)
        {
          goto LABEL_67;
        }

        v36 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1601, v36);
    }

    if (v11 == 4)
    {
      v24 = *a1;
      v25 = *(v2 + 1);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
        v26 = 0;
      }

      else
      {
        v26 = *(a1 + 5) - v10;
      }

      v29 = *(v2 + 1);
      if (v26 < v29)
      {
        v30 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (elem->Size)";
      }

      else
      {
        if (*(a1 + 14) == 2)
        {
LABEL_67:
          memmove((v24 + v10), v25, v29);
          v21 = *(a1 + 6) + *(v2 + 1);
          goto LABEL_84;
        }

        v30 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1574, v30);
    }

    if (v11 != 5)
    {
      return result;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    }

    else if (*(a1 + 5) > v10)
    {
      if (*(a1 + 14) == 2)
      {
        v18 = v2[8];
        v19 = *a1;
        *(a1 + 6) = v9 + 3;
        *(v19 + (v9 + 2)) = v18;
        return 1;
      }

      v35 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_103:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1578, v35);
    }

    v35 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_103;
  }

  if (*v2 > 1u)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
        return result;
      }

      if (*(v2 + 1) == 16)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
        }

        else if (*(a1 + 5) - (v9 + 2) > 0xF)
        {
          if (*(a1 + 14) == 2)
          {
            goto LABEL_75;
          }

          v17 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1567, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof (OI_UUID128))";
        goto LABEL_106;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
      }

      else if (*(a1 + 5) - v10 > 3)
      {
        if (*(a1 + 14) == 2)
        {
          goto LABEL_83;
        }

        v28 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1569, v28);
      }

      v28 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
      goto LABEL_109;
    }

    v20 = *(v2 + 1);
    if (v20 != 16)
    {
      if (v20 == 8)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
        }

        else
        {
          v15 = v10;
          if (*(a1 + 5) - v10 > 7)
          {
            if (*(a1 + 14) == 2)
            {
              goto LABEL_45;
            }

            v37 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_126:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1557, v37);
          }
        }

        v37 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT64))";
        goto LABEL_126;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
      }

      else if (*(a1 + 5) - v10 > 3)
      {
        if (*(a1 + 14) == 2)
        {
          goto LABEL_83;
        }

        v39 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_130:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1561, v39);
      }

      v39 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
      goto LABEL_130;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    }

    else if (*(a1 + 5) - v10 > 0xF)
    {
      if (*(a1 + 14) == 2)
      {
        goto LABEL_75;
      }

      v38 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1559, v38);
    }

    v38 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT128))";
    goto LABEL_128;
  }

  if (*v2)
  {
    v14 = *(v2 + 1);
    if (v14 != 16)
    {
      if (v14 == 8)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
        }

        else
        {
          v15 = v10;
          if (*(a1 + 5) - v10 > 7)
          {
            if (*(a1 + 14) != 2)
            {
              v16 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
              goto LABEL_112;
            }

LABEL_45:
            *(*a1 + v15) = **(v2 + 1);
            v21 = *(a1 + 6) + 8;
LABEL_84:
            *(a1 + 6) = v21;
            return 1;
          }
        }

        v16 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT64))";
LABEL_112:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1547, v16);
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
      }

      else if (*(a1 + 5) - v10 > 3)
      {
        if (*(a1 + 14) != 2)
        {
          v32 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_122;
        }

LABEL_83:
        *(*a1 + v10) = *(v2 + 2);
        *(*a1 + *(a1 + 6) + 1) = BYTE1(*(v2 + 2));
        *(*a1 + *(a1 + 6) + 2) = *(v2 + 5);
        *(*a1 + *(a1 + 6) + 3) = v2[11];
        v21 = *(a1 + 6) + 4;
        goto LABEL_84;
      }

      v32 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
LABEL_122:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1551, v32);
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    }

    else if (*(a1 + 5) - v10 > 0xF)
    {
      if (*(a1 + 14) != 2)
      {
        v31 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_117;
      }

LABEL_75:
      *(*a1 + v10) = **(v2 + 1);
      v21 = *(a1 + 6) + 16;
      goto LABEL_84;
    }

    v31 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT128))";
LABEL_117:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1549, v31);
  }

  return 1;
}

uint64_t sub_1002F9C10(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    goto LABEL_61;
  }

  if (*(a1 + 10) - *(a1 + 12) <= 1)
  {
LABEL_61:
    v22 = "ByteStream_NumReadBytesAvail(*sdpDataRecord) >= 2";
    goto LABEL_63;
  }

  if (*(a1 + 14) != 2)
  {
    v22 = "(*sdpDataRecord).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1617, v22);
  }

  *(*a1 + *(a1 + 12)) = 0;
  *(*a1 + *(a1 + 12) + 1) = 0;
  *(a1 + 12) += 2;
  v2 = *(qword_100B6B590 + 120);
  if (!v2)
  {
    LOBYTE(v3) = 0;
    v18 = 0;
LABEL_46:
    result = 0;
    **a1 = v3;
    *(*a1 + 1) = v18;
    return result;
  }

  v3 = 0;
LABEL_7:
  v4 = *(v2 + 12);
  if (!*(v2 + 12))
  {
    goto LABEL_13;
  }

  v5 = (v2[2] + 8);
  while (*(v5 - 4) != 1)
  {
    v5 += 24;
    if (!--v4)
    {
      goto LABEL_13;
    }
  }

  result = sub_1002F941C(a1, v5);
  if (result)
  {
LABEL_13:
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
    }

    else
    {
      v7 = *(a1 + 12);
      if (*(a1 + 10) - v7 > 1)
      {
        if (*(a1 + 14) == 2)
        {
          v8 = 0;
          *(*a1 + *(a1 + 12)) = 0;
          *(*a1 + *(a1 + 12) + 1) = 0;
          *(a1 + 12) += 2;
          v9 = qword_100B6B590;
          *(qword_100B6B590 + 8) = 1;
          *(v9 + 10) = 4;
          *(v9 + 16) = *(v2 + 12);
          *(v9 + 32) = 1;
          *(v9 + 34) = 4;
          *(v9 + 40) = *(v2 + 13);
          *(v9 + 56) = 1;
          *(v9 + 58) = 1;
          *(v9 + 64) = *(v2 + 66);
          *(v9 + 80) = unk_100B52320;
          ++v3;
          *(v9 + 104) = *v2[9];
          if (*(v9 + 106))
          {
            v10 = 5;
          }

          else
          {
            v10 = 4;
          }

          v11 = v10;
          while (1)
          {
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
LABEL_50:
              v19 = "ByteStream_NumReadBytesAvail(*sdpDataRecord) >= 2";
LABEL_51:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1639, v19);
            }

            if (*(a1 + 10) - *(a1 + 12) <= 1)
            {
              goto LABEL_50;
            }

            if (*(a1 + 14) != 2)
            {
              v19 = "(*sdpDataRecord).__RWFlag == BYTESTREAM_WRITE";
              goto LABEL_51;
            }

            *(*a1 + *(a1 + 12)) = *(qword_100B6B590 + 24 * v8);
            *(*a1 + *(a1 + 12) + 1) = *(qword_100B6B590 + 24 * v8 + 1);
            *(a1 + 12) += 2;
            if ((sub_1002F941C(a1, (qword_100B6B590 + 24 * v8 + 8)) & 1) == 0)
            {
              return 0;
            }

            if (v11 <= ++v8)
            {
              v12 = *(v2 + 12);
              if (v12)
              {
                v13 = 0;
                for (i = 0; i < v12; ++i)
                {
                  v15 = *(v2[2] + v13);
                  if (v15 != 1)
                  {
                    if (*(a1 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
LABEL_58:
                      v21 = "ByteStream_NumReadBytesAvail(*sdpDataRecord) >= 2";
LABEL_59:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1651, v21);
                    }

                    if (*(a1 + 10) - *(a1 + 12) <= 1)
                    {
                      goto LABEL_58;
                    }

                    if (*(a1 + 14) != 2)
                    {
                      v21 = "(*sdpDataRecord).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_59;
                    }

                    *(*a1 + *(a1 + 12)) = v15;
                    *(*a1 + *(a1 + 12) + 1) = *(v2[2] + v13 + 1);
                    *(a1 + 12) += 2;
                    result = sub_1002F941C(a1, (v2[2] + v13 + 8));
                    if (!result)
                    {
                      return result;
                    }

                    ++v8;
                    v12 = *(v2 + 12);
                  }

                  v13 += 24;
                }
              }

              if (*(v2 + 32))
              {
                v16 = 0;
                v17 = 0;
                while (!*(a1 + 15))
                {
                  if (*(a1 + 10) - *(a1 + 12) <= 1)
                  {
                    goto LABEL_53;
                  }

                  if (*(a1 + 14) != 2)
                  {
                    v20 = "(*sdpDataRecord).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_55;
                  }

                  *(*a1 + *(a1 + 12)) = *(v2[7] + v16);
                  *(*a1 + *(a1 + 12) + 1) = *(v2[7] + v16 + 1);
                  *(a1 + 12) += 2;
                  if ((sub_1002F941C(a1, (v2[7] + v16 + 8)) & 1) == 0)
                  {
                    return 0;
                  }

                  ++v17;
                  v16 += 24;
                  ++v8;
                  if (v17 >= *(v2 + 32))
                  {
                    goto LABEL_41;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c");
LABEL_53:
                v20 = "ByteStream_NumReadBytesAvail(*sdpDataRecord) >= 2";
LABEL_55:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1659, v20);
              }

LABEL_41:
              *(*a1 + v7) = v8;
              v2 = *v2;
              if (!v2)
              {
                v18 = HIBYTE(v3);
                goto LABEL_46;
              }

              goto LABEL_7;
            }
          }
        }

        v23 = "(*sdpDataRecord).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpdb.c", 1634, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(*sdpDataRecord) >= 2";
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_1002FA134(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_SDPServer_Init: configuration parameter is deprecated", v2, v3, v4, v5, v6, v7, v8, v14);
      v9 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1003045E4(a1, 53);
  }

  if (DWORD1(xmmword_100BCE300))
  {
    return 140;
  }

  v11 = sub_1003045A0(0x35u);
  if (!v11)
  {
    sub_1000D660C();
    return 127;
  }

  v12 = v11;
  v13 = *v11;
  if (!*v11)
  {
    goto LABEL_17;
  }

  if (*(v11 + 1) <= 0xFu)
  {
    sub_1000D660C();
    if (*(v12 + 1) < 0x10u)
    {
      return 101;
    }

    v13 = *v12;
  }

  xmmword_100B6B618 = 0u;
  *&qword_100B6B628 = 0u;
  *(&xmmword_100B6B618 + 1) = sub_1001BBBD8(32 * v13, 0x10100409ECDD958uLL);
  if (!*(&xmmword_100B6B618 + 1))
  {
    return 106;
  }

  *&xmmword_100B6B618 = sub_1003045A0(0x35u);
  result = sub_1002F7C34();
  if (!result)
  {
    result = sub_1002967FC(1, sub_1002FA918);
    if (!result)
    {
LABEL_17:
      result = 0;
      DWORD1(xmmword_100BCE300) = 1;
    }
  }

  return result;
}

uint64_t sub_1002FA280(uint64_t a1)
{
  if (!DWORD1(xmmword_100BCE300))
  {
    return 103;
  }

  result = 0;
  qword_100B6B628 = a1;
  return result;
}

void sub_1002FA2AC(int a1, uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  if (sub_10000C240())
  {
    sub_10000AF54("SDPSERVER OI_SDPSRV_RespondToStalledIncomingRequest: stalled cid is %u, accept: %d", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x35u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v39 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = xmmword_100B6B618;
  v13 = *xmmword_100B6B618;
  if (!*xmmword_100B6B618)
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("stalled sdpclient is NULL", v15, v16, v17, v18, v19, v20, v21, v35);
      v22 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v14 = (*(&xmmword_100B6B618 + 1) + 4);
  while (!*(v14 - 2) || *(v14 - 2) != a2)
  {
    v14 += 16;
    if (!--v13)
    {
      goto LABEL_9;
    }
  }

  if (a1)
  {
    *(v14 - 2) = 1;
    v23 = *(v12 + 4);
    *v14 = v23;
    if (v23 > 0x80)
    {
      if (v23 <= *(sub_1003045A0(0x28u) + 8))
      {
        v24 = *v14;
        goto LABEL_19;
      }

      v24 = *(sub_1003045A0(0x28u) + 8);
    }

    else
    {
      v24 = 128;
    }

    *v14 = v24;
LABEL_19:
    *(&v36 + 1) = 0;
    v37 = 0uLL;
    LOWORD(v36) = v24;
    *(&v36 + 2) = 327745535;
    WORD3(v36) = 772;
  }

  v25 = sub_100290164(sub_1002FA508, sub_1002FA5BC, sub_1002FA690, a2, &v36, a1, &unk_1008A5330);
  if (v25)
  {
    v26 = v25;
    if (sub_10000C240())
    {
      sub_10000AF54("SDPServer: L2CAP failed to complete the connection %!", v27, v28, v29, v30, v31, v32, v33, v26);
      v34 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v14 - 2) = 0;
  }
}

void sub_1002FA508(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a4)
  {

    sub_1002FA5BC(a1);
  }

  else
  {
    v4 = xmmword_100B6B618;
    v5 = *xmmword_100B6B618;
    if (*xmmword_100B6B618)
    {
      v6 = (*(&xmmword_100B6B618 + 1) + 6);
      while (!*(v6 - 4) || *(v6 - 3) != a1)
      {
        v6 += 16;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      sub_1000D660C();
      __break(1u);
    }

    if (*(v6 - 1) >= a2)
    {
      v7 = *(v4 + 2);
      if (v7 <= a3)
      {
        *v6 = v7;
      }

      else
      {
        *v6 = a3;
      }
    }

    else
    {

      sub_1002FAC3C(a1);
    }
  }
}

void sub_1002FA5BC(int a1)
{
  LODWORD(v2) = *xmmword_100B6B618;
  if (*xmmword_100B6B618)
  {
    v3 = *(&xmmword_100B6B618 + 1);
    v4 = *xmmword_100B6B618;
    while (!*(v3 + 2) || *v3 != a1)
    {
      v3 += 16;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  if (qword_100B6B628)
  {
    v5 = *(qword_100B6B628 + 8);
    if (v5)
    {
      v5(v3 + 12);
      LODWORD(v2) = *xmmword_100B6B618;
    }
  }

  if (v2)
  {
    v2 = v2;
    for (i = (*(&xmmword_100B6B618 + 1) + 16); !*(i - 14) || *(i - 8) != a1; i += 4)
    {
      if (!--v2)
      {
        return;
      }
    }

    *(i - 14) = 0;
    if (*i)
    {
      sub_10000C1E8(*i);
      *i = 0;
    }
  }
}

void sub_1002FA690(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *xmmword_100B6B618;
  if (!*xmmword_100B6B618)
  {
LABEL_6:
    if (sub_10000C240())
    {
      sub_10000AF54("Client not allocated", v6, v7, v8, v9, v10, v11, v12, ptr);
      v13 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_10080F7A0();
        return;
      }
    }

    return;
  }

  v5 = *(&xmmword_100B6B618 + 1) + 8;
  while (!*(v5 - 6) || *(v5 - 8) != a1)
  {
    v5 += 32;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 + 8))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Client sent overlapping request", v14, v15, v16, v17, v18, v19, v20, ptr);
      v21 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    return;
  }

  if (a3 < 5)
  {
    return;
  }

  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1599, "requestBuffer");
  }

  v36 = 0;
  v37 = a2;
  v38 = a3;
  v39 = a3;
  v22 = *a2;
  v23 = bswap32(*(a2 + 1)) >> 16;
  v40 = 65541;
  ptr = 0;
  if (a3 - 5 != bswap32(*(a2 + 3)) >> 16)
  {
    v25 = 804;
LABEL_22:
    v24 = sub_1002FAC84(v25, v23, &ptr);
    goto LABEL_23;
  }

  if (v22 == 6)
  {
    v24 = sub_1002FB868(v23, &v37, &ptr, *(v5 - 2), a1);
    goto LABEL_23;
  }

  if (v22 == 4)
  {
    v24 = sub_1002FB5C4(v23, &v37, &ptr, *(v5 - 2), a1);
    goto LABEL_23;
  }

  if (v22 != 2)
  {
    v25 = 803;
    goto LABEL_22;
  }

  v24 = sub_1002FAF18(v23, &v37, &ptr, *(v5 - 2), a1);
LABEL_23:
  if (v24)
  {
    goto LABEL_39;
  }

  v34 = sub_10028E1F0(sub_1002FBBA4, a1, 0, ptr, WORD1(v36));
  if (!v34)
  {
    return;
  }

  if (v34 != 410)
  {
LABEL_39:
    if (sub_10000C240())
    {
      sub_10000AF54("IncomingRequest_CB failed", v26, v27, v28, v29, v30, v31, v32, ptr);
      v33 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F818();
      }
    }

    sub_10000C1E8(ptr);
  }

  else
  {
    if (*(v5 + 8))
    {
      sub_1000D660C();
    }

    *(v5 + 8) = ptr;
    *v5 = WORD1(v36);
  }
}

void sub_1002FA918(uint64_t a1, int *a2, uint64_t a3)
{
  v39 = 0u;
  v40 = 0u;
  v4 = *xmmword_100B6B618;
  if (!*xmmword_100B6B618)
  {
    goto LABEL_5;
  }

  v6 = *(&xmmword_100B6B618 + 1);
  while (*(v6 + 2))
  {
    v6 += 32;
    if (!--v4)
    {
      goto LABEL_5;
    }
  }

  if (qword_100B6B628 && *qword_100B6B628)
  {
    v7 = (*qword_100B6B628)(a2, a3);
    v8 = *(a2 + 2);
    *(v6 + 24) = *a2;
    *(v6 + 28) = v8;
    if (v7 != 845)
    {
      if (v7 == 847)
      {
        *v6 = a3;
        *(v6 + 2) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Stalled incoming SDP request for cid=%d", v9, v10, v11, v12, v13, v14, v15, a3);
          v16 = sub_10000C050(0x35u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v42 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        return;
      }

LABEL_5:
      sub_100290164(sub_1002FA508, sub_1002FA5BC, sub_1002FA690, a3, &v39, 0, &unk_1008A5330);
      return;
    }
  }

  else
  {
    v17 = *a2;
    *(v6 + 28) = *(a2 + 2);
    *(v6 + 24) = v17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Setting up connection parameters for the server connection", v18, v19, v20, v21, v22, v23, v24, v38);
    v25 = sub_10000C050(0x35u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v42 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *v6 = a3;
  *(v6 + 2) = 1;
  v26 = *(xmmword_100B6B618 + 4);
  *(v6 + 4) = v26;
  if (v26 >= 0x81)
  {
    if (v26 <= *(sub_1003045A0(0x28u) + 8))
    {
      goto LABEL_23;
    }

    v27 = *(sub_1003045A0(0x28u) + 8);
  }

  else
  {
    v27 = 128;
  }

  *(v6 + 4) = v27;
LABEL_23:
  v39 = 0u;
  v40 = 0u;
  LOWORD(v39) = *(v6 + 4);
  *(&v39 + 2) = 327745535;
  WORD3(v39) = 772;
  BYTE13(v39) = 0;
  v28 = sub_100290164(sub_1002FA508, sub_1002FA5BC, sub_1002FA690, a3, &v39, 1, &unk_1008A5330);
  if (v28)
  {
    v29 = v28;
    if (sub_10000C240())
    {
      sub_10000AF54("SDPServer: L2CAP failed to complete the connection %!", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v6 + 2) = 0;
  }
}

uint64_t sub_1002FAC3C(uint64_t result)
{
  v1 = *xmmword_100B6B618;
  if (*xmmword_100B6B618)
  {
    for (i = (*(&xmmword_100B6B618 + 1) + 2); !*i || *(i - 1) != result; i += 32)
    {
      if (!--v1)
      {
        return result;
      }
    }

    return sub_10029104C(result, 436);
  }

  return result;
}

uint64_t sub_1002FAC84(int a1, __int16 a2, uint64_t a3)
{
  if ((a1 - 807) > 0xFFFFFFF9)
  {
    v13 = a1 & 7;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ComposeErrorResponse, generic error", v5, v6, v7, v8, v9, v10, v11, v23);
      v12 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v13 = 6;
  }

  v14 = sub_100007618(7uLL, 0x5575467DuLL);
  if (!v14)
  {
    return 106;
  }

  *a3 = v14;
  *(a3 + 8) = 7;
  *(a3 + 14) = 2;
  *(a3 + 10) = 65543;
  *v14 = 1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_22;
  }

  v15 = *(a3 + 12);
  if (*(a3 + 10) - v15 <= 1)
  {
LABEL_22:
    v20 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_24;
  }

  if (*(a3 + 14) != 2)
  {
    v20 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 655, v20);
  }

  *(*a3 + v15 + 1) = a2;
  *(*a3 + *(a3 + 12)) = HIBYTE(a2);
  v16 = *(a3 + 12) + 2;
  *(a3 + 12) = v16;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_26;
  }

  if (*(a3 + 10) - v16 <= 1)
  {
LABEL_26:
    v21 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_28;
  }

  if (*(a3 + 14) != 2)
  {
    v21 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 656, v21);
  }

  *(*a3 + v16 + 1) = 2;
  *(*a3 + *(a3 + 12)) = 0;
  v17 = *(a3 + 12) + 2;
  *(a3 + 12) = v17;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_30;
  }

  if (*(a3 + 10) - v17 <= 1)
  {
LABEL_30:
    v22 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_32;
  }

  if (*(a3 + 14) != 2)
  {
    v22 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 657, v22);
  }

  *(*a3 + v17 + 1) = v13;
  *(*a3 + *(a3 + 12)) = 0;
  v18 = *(a3 + 12) + 2;
  *(a3 + 12) = v18;
  if (*(a3 + 14) == 2)
  {
    *(a3 + 10) = v18;
  }

  result = 0;
  *(a3 + 14) = 15;
  return result;
}

uint64_t sub_1002FAF18(__int16 a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  sub_10028DAA8(a5, &v58);
  v9 = sub_1002FBC78(a2, &v61);
  if (v9)
  {
    v10 = v9;
    if (sub_10000C240())
    {
      sub_10000AF54("SDPServer: ServiceSearchRequest bad UUID list", v11, v12, v13, v14, v15, v16, v17, v56);
      v18 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_18;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 807, "(*requestBS).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_16:
    *(a2 + 15) = 1;
    goto LABEL_17;
  }

  v19 = *(a2 + 12);
  if (*(a2 + 10) - v19 <= 1)
  {
    goto LABEL_16;
  }

  v20 = (*a2 + v19);
  v21 = v20[1];
  v22 = v21 | (*v20 << 8);
  *(a2 + 12) = v19 + 2;
  if (!v22)
  {
LABEL_17:
    v10 = 803;
LABEL_18:
    if (sub_10000C240())
    {
      sub_10000AF54("Error response to service search request: %!", v25, v26, v27, v28, v29, v30, v31, v10);
      v32 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    if (*a3)
    {
      sub_10000C1E8(*a3);
    }

    sub_10023B378(&v61);
    return sub_1002FAC84(v10, a1, a3);
  }

  v23 = sub_1002FBCE8(a2, &v59);
  if (v23 || (v22 >= ((a4 + 262132) >> 2) ? (v24 = (a4 + 262132) >> 2) : (v24 = v22), v23 = sub_1002FBDE8(a3, (4 * v24 + 4) & 0xFFFC), v23))
  {
    v10 = v23;
    goto LABEL_18;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_65:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 842, "ByteStream_NumReadBytesAvail(*responseBS) >= (2 * sizeof(uint16_t))");
  }

  v34 = *(a3 + 12);
  if (*(a3 + 10) - v34 <= 3)
  {
    goto LABEL_65;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v57 = *(a3 + 12);
  *(a3 + 12) = v34 + 4;
  v38 = v59;
  while (1)
  {
    v39 = sub_1002F8294(v62, WORD1(v61), &v59 + 1, &v60, v58);
    if (v39)
    {
      break;
    }

    v40 = HIBYTE(v36);
    if (HIWORD(v59) > v38 && v36 < v24)
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_61:
        v50 = "ByteStream_NumReadBytesAvail(*responseBS) >= 4";
LABEL_63:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 862, v50);
      }

      v41 = *(a3 + 12);
      if (*(a3 + 10) - v41 <= 3)
      {
        goto LABEL_61;
      }

      if (*(a3 + 14) != 2)
      {
        v50 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_63;
      }

      *(*a3 + v41 + 3) = v60;
      *(*a3 + *(a3 + 12) + 2) = BYTE1(v60);
      *(*a3 + *(a3 + 12) + 1) = BYTE2(v60);
      *(*a3 + *(a3 + 12)) = HIBYTE(v60);
      *(a3 + 12) += 4;
      ++v36;
      v35 = HIWORD(v59);
      v40 = HIBYTE(v36);
    }

    if (v22 <= ++v37)
    {
      goto LABEL_38;
    }
  }

  v10 = v39;
  if (v39 != 823)
  {
    goto LABEL_18;
  }

  v40 = HIBYTE(v36);
  LOBYTE(v21) = v37;
LABEL_38:
  if (HIWORD(v59) > v35)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    }

    else
    {
      v42 = *(a3 + 12);
      if (*(a3 + 10) > v42)
      {
        if (*(a3 + 14) == 2)
        {
          v43 = *a3;
          *(a3 + 12) = v42 + 1;
          v43[v42] = 2;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
          }

          else
          {
            v44 = *(a3 + 12);
            if (*(a3 + 10) - v44 > 1)
            {
              if (*(a3 + 14) == 2)
              {
                *(*a3 + v44 + 1) = v35;
                *(*a3 + *(a3 + 12)) = BYTE1(v35);
                v45 = *(a3 + 12) + 2;
                *(a3 + 12) = v45;
                goto LABEL_50;
              }

              v55 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 877, v55);
            }
          }

          v55 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
          goto LABEL_87;
        }

        v53 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 876, v53);
      }
    }

    v53 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    goto LABEL_81;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_79;
  }

  v46 = *(a3 + 12);
  if (*(a3 + 10) <= v46)
  {
LABEL_79:
    v54 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    goto LABEL_83;
  }

  if (*(a3 + 14) != 2)
  {
    v54 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 879, v54);
  }

  v47 = *a3;
  *(a3 + 12) = v46 + 1;
  v47[v46] = 0;
  v45 = *(a3 + 12);
LABEL_50:
  v48 = *(a3 + 10);
  if (v57 > v48)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 885, "(size_t)(paramPos) <= (size_t)((*responseBS).__size)");
  }

  *(a3 + 12) = v57;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_68;
  }

  if ((v48 - v57) <= 1)
  {
LABEL_68:
    v51 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_70;
  }

  if (*(a3 + 14) != 2)
  {
    v51 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 886, v51);
  }

  *(*a3 + v57 + 1) = v21;
  *(*a3 + *(a3 + 12)) = HIBYTE(v37);
  v49 = *(a3 + 12) + 2;
  *(a3 + 12) = v49;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_72;
  }

  if (*(a3 + 10) - v49 <= 1)
  {
LABEL_72:
    v52 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_74;
  }

  if (*(a3 + 14) != 2)
  {
    v52 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 887, v52);
  }

  *(*a3 + v49 + 1) = v36;
  *(*a3 + *(a3 + 12)) = v40;
  *(a3 + 12) += 2;
  if (*(a3 + 10) < v45)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 888, "(size_t)(contPos) <= (size_t)((*responseBS).__size)");
  }

  *(a3 + 12) = v45;
  sub_1002FBEDC(a3, 3, a1);
  sub_10023B378(&v61);
  return 0;
}

uint64_t sub_1002FB5C4(__int16 a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5)
{
  v33[0] = 0;
  v33[1] = 0;
  v31 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_4:
    v10 = 804;
    goto LABEL_5;
  }

  v8 = *(a2 + 10);
  v9 = *(a2 + 12);
  if ((v8 - v9) < 6)
  {
    goto LABEL_4;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1228, "(*requestBS).__RWFlag == BYTESTREAM_READ");
  }

  if (v8 - v9 <= 3)
  {
    *(a2 + 15) = 1;
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_20;
  }

  v20 = *(*a2 + v9);
  *(a2 + 12) = v9 + 4;
  if ((v8 - (v9 + 4)) <= 1)
  {
LABEL_20:
    *(a2 + 15) = 1;
    goto LABEL_21;
  }

  v21 = bswap32(*(*a2 + (v9 + 4))) >> 16;
  *(a2 + 12) = v9 + 6;
  if (v21 < 7)
  {
LABEL_21:
    v10 = 803;
    goto LABEL_5;
  }

  v24 = sub_1002FC0D0(a2, v33);
  if (v24)
  {
    goto LABEL_18;
  }

  v32 = 0;
  v24 = sub_1002FBCE8(a2, &v32);
  if (v24)
  {
    goto LABEL_18;
  }

  v30 = 0;
  v24 = sub_1002FC150(a3, v21, a4, &v30);
  if (v24)
  {
    goto LABEL_18;
  }

  v25 = bswap32(v20);
  v26 = v32;
  if (!v32)
  {
    v29 = 0;
    v24 = sub_1002FC234(v25, v33, &v29, a5);
    if (v24)
    {
LABEL_18:
      v10 = v24;
      goto LABEL_5;
    }

    sub_1002FC32C(a3, v29, &v32);
    v26 = v32;
  }

  v31 = v26;
  v27 = *(a3 + 12);
  if (sub_1002FC58C(v25, v33, &v31, a3, a5))
  {
    goto LABEL_26;
  }

  v28 = *(a3 + 12) - v27 + v26;
  if (!v28)
  {
    sub_1000D660C();
LABEL_26:
    v28 = 0;
  }

  if (!v31)
  {
    sub_1002FC6B0(a3, v30, v28);
    sub_1002FBEDC(a3, 5, a1);
    sub_10023B378(v33);
    return 0;
  }

  v10 = 805;
LABEL_5:
  if (sub_10000C240())
  {
    sub_10000AF54("Error response to service attribute request: %!", v11, v12, v13, v14, v15, v16, v17, v10);
    v18 = sub_10000C050(0x35u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (*a3)
  {
    sub_10000C1E8(*a3);
  }

  sub_10023B378(v33);
  return sub_1002FAC84(v10, a1, a3);
}

uint64_t sub_1002FB868(__int16 a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5)
{
  v38[0] = 0;
  v38[1] = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v32 = 0;
  sub_10028DAA8(a5, &v32);
  v10 = sub_1002FBC78(a2, &v36);
  if (v10)
  {
    goto LABEL_2;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1371, "(*requestBS).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_20:
    *(a2 + 15) = 1;
    goto LABEL_21;
  }

  v12 = *(a2 + 12);
  if (*(a2 + 10) - v12 <= 1)
  {
    goto LABEL_20;
  }

  v13 = bswap32(*(*a2 + v12)) >> 16;
  *(a2 + 12) = v12 + 2;
  if (v13 < 7)
  {
LABEL_21:
    v11 = 803;
    goto LABEL_22;
  }

  v10 = sub_1002FC0D0(a2, v38);
  if (v10 || (v34 = 0, v10 = sub_1002FBCE8(a2, &v34), v10) || (v33 = 0, v10 = sub_1002FC150(a3, v13, a4, &v33), v10))
  {
LABEL_2:
    v11 = v10;
    goto LABEL_22;
  }

  v14 = v34;
  if (!v34)
  {
    v31 = 0;
    v30 = 0;
    HIWORD(v35) = 0;
    while (1)
    {
      v27 = sub_1002F8294(v37, WORD1(v36), &v35 + 1, &v31, v32);
      if (v27)
      {
        break;
      }

      v10 = sub_1002FC234(v31, v38, &v30, a5);
      if (v10)
      {
        goto LABEL_2;
      }

      if (v30 <= 0xFFu)
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }

      v29 = v30 + v14 + v28;
      if (v30)
      {
        v14 = v29;
      }
    }

    v11 = v27;
    if (v27 != 823)
    {
      goto LABEL_22;
    }

    sub_1002FC32C(a3, v14, &v34);
    LOWORD(v14) = v34;
  }

  v35 = v14;
  v15 = *(a3 + 12);
  do
  {
    v31 = 0;
    v30 = 0;
    v16 = sub_1002F8294(v37, WORD1(v36), &v35 + 1, &v31, v32);
    if (v16)
    {
      v11 = v16;
      if (v16 != 823)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    v10 = sub_1002FC234(v31, v38, &v30, a5);
    if (v10)
    {
      goto LABEL_2;
    }
  }

  while (!v30 || sub_1002FC32C(a3, v30, &v35) && (sub_1002FC58C(v31, v38, &v35, a3, a5) & 1) != 0);
  v17 = *(a3 + 12) - v15 + v14;
  if (v17)
  {
    goto LABEL_38;
  }

  sub_1000D660C();
LABEL_37:
  v17 = 0;
LABEL_38:
  if (!v35)
  {
    sub_1002FC6B0(a3, v33, v17);
    sub_1002FBEDC(a3, 7, a1);
    sub_10023B378(&v36);
    sub_10023B378(v38);
    return 0;
  }

  v11 = 805;
LABEL_22:
  if (sub_10000C240())
  {
    sub_10000AF54("Error response to service search request: %!", v18, v19, v20, v21, v22, v23, v24, v11);
    v25 = sub_10000C050(0x35u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (*a3)
  {
    sub_10000C1E8(*a3);
  }

  sub_10023B378(&v36);
  sub_10023B378(v38);
  return sub_1002FAC84(v11, a1, a3);
}

void sub_1002FBBA4(uint64_t a1, void *ptr, uint64_t a3, int a4)
{
  v6 = *xmmword_100B6B618;
  if (*xmmword_100B6B618)
  {
    v7 = *(&xmmword_100B6B618 + 1);
    while (!*(v7 + 2) || *v7 != a1)
    {
      v7 += 16;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  sub_10000C1E8(ptr);
  if (a4 || !v7)
  {
    if (!a4)
    {
      return;
    }
  }

  else
  {
    v8 = *(v7 + 2);
    if (!v8)
    {
      return;
    }

    if (!sub_10028E1F0(sub_1002FBBA4, a1, 0, v8, v7[4]))
    {
      *(v7 + 2) = 0;
      return;
    }
  }

  sub_1002FAC3C(a1);
}

uint64_t sub_1002FBC78(uint64_t a1, uint64_t a2)
{
  result = sub_10023B2CC(a1, a2);
  if (!result)
  {
    if (*a2 == 6)
    {
      v4 = *(a2 + 2);
      if ((v4 - 13) >= 0xFFFFFFF4)
      {
        v5 = *(a2 + 8);
        while (1)
        {
          v6 = *v5;
          v5 += 16;
          if (v6 != 3)
          {
            break;
          }

          if (!--v4)
          {
            return 0;
          }
        }
      }
    }

    sub_10023B378(a2);
    return 803;
  }

  return result;
}

uint64_t sub_1002FBCE8(uint64_t *a1, _WORD *a2)
{
  *a2 = 0;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 726, "(*requestBS).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
LABEL_8:
    *(a1 + 15) = 1;
    return 804;
  }

  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  if (v3 <= v4)
  {
    goto LABEL_8;
  }

  v5 = *a1;
  v6 = v4 + 1;
  *(a1 + 6) = v4 + 1;
  if (!*(v5 + v4) || ((v7 = v3 - v6, v7 >= 2) ? (*a2 = bswap32(*(v5 + v6)) >> 16, LOWORD(v6) = *(a1 + 6) + 2, *(a1 + 6) = v6) : (*(a1 + 15) = 1), *a2 ? (result = 804) : (result = 805), *a2 && v7 >= 2))
  {
    if (*(a1 + 5) == v6)
    {
      return 0;
    }

    else
    {
      return 804;
    }
  }

  return result;
}

uint64_t sub_1002FBDE8(uint64_t a1, __int16 a2)
{
  v3 = a2 + 8;
  v4 = sub_100007618((a2 + 8), 0xD4852D23uLL);
  if (v4)
  {
    if (!v3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 607, "(allocSize) > 0");
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 12) = 0x20000;
    *(a1 + 10) = v3;
    if (v3 <= 4u)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 612, "ByteStream_NumReadBytesAvail(*responseBS) >= (5)");
    }

    result = 0;
    *(a1 + 12) = 5;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CreateResponsePDU, OI_Malloc (%d) failed", v6, v7, v8, v9, v10, v11, v12, v3);
      v13 = sub_10000C050(0x35u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 806;
  }

  return result;
}

uint64_t sub_1002FBEDC(uint64_t result, char a2, __int16 a3)
{
  v3 = *(result + 12);
  *(result + 12) = 0;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_15;
  }

  if (!*(result + 10))
  {
LABEL_15:
    v7 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    goto LABEL_17;
  }

  if (*(result + 14) != 2)
  {
    v7 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 568, v7);
  }

  v4 = *result;
  *(result + 12) = 1;
  *v4 = a2;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_19;
  }

  v5 = *(result + 12);
  if (*(result + 10) - v5 <= 1)
  {
LABEL_19:
    v8 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_21;
  }

  if (*(result + 14) != 2)
  {
    v8 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 569, v8);
  }

  *(*result + v5 + 1) = a3;
  *(*result + *(result + 12)) = HIBYTE(a3);
  v6 = *(result + 12) + 2;
  *(result + 12) = v6;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_23;
  }

  if (*(result + 10) - v6 <= 1)
  {
LABEL_23:
    v9 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_25;
  }

  if (*(result + 14) != 2)
  {
    v9 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 570, v9);
  }

  *(*result + v6 + 1) = v3 - 5;
  *(*result + *(result + 12)) = (v3 - 5) >> 8;
  *(result + 12) += 2;
  if (v3 > *(result + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 575, "(size_t)(pos) <= (size_t)((*responseBS).__size)");
  }

  *(result + 12) = v3;
  if (*(result + 14) == 2)
  {
    *(result + 10) = v3;
  }

  *(result + 14) = 15;
  return result;
}

uint64_t sub_1002FC0D0(uint64_t a1, uint64_t a2)
{
  result = sub_10023B2CC(a1, a2);
  if (!result)
  {
    if (*a2 == 6)
    {
      v4 = *(a2 + 2);
      if (*(a2 + 2))
      {
        for (i = (*(a2 + 8) + 2); *(i - 2) == 1; i += 8)
        {
          v6 = *i;
          if (v6 != 4 && v6 != 2)
          {
            break;
          }

          if (!--v4)
          {
            return 0;
          }
        }
      }
    }

    sub_10023B378(a2);
    return 803;
  }

  return result;
}

uint64_t sub_1002FC150(uint64_t a1, unsigned int a2, __int16 a3, _WORD *a4)
{
  v6 = (a3 - 8);
  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 >= *(xmmword_100B6B618 + 2))
  {
    v7 = *(xmmword_100B6B618 + 2);
  }

  else
  {
    v7 = v6;
  }

  result = sub_1002FBDE8(a1, v7);
  if (!result)
  {
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    }

    else
    {
      v9 = *(a1 + 12);
      if (*(a1 + 10) - v9 > 1)
      {
        v10 = v9 + 2;
        *(a1 + 12) = v10;
        *a4 = v10;
        v11 = *(a1 + 10) - 3;
        if (v11 > *(a1 + 8) || v11 < *(a1 + 12))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1085, "((size - (sizeof(uint8_t) + sizeof(uint16_t))) <= (*responseBS).__trueSize) && ((size - (sizeof(uint8_t) + sizeof(uint16_t))) >= (*responseBS).__pos)");
        }

        *(a1 + 10) = v11;
        return result;
      }
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1075, "ByteStream_NumReadBytesAvail(*responseBS) >= (sizeof(uint16_t))");
  }

  return result;
}

uint64_t sub_1002FC234(uint64_t a1, uint64_t a2, _WORD *a3, unsigned int a4)
{
  v21 = 0;
  v20 = 0;
  *a3 = 0;
  v19 = 0;
  sub_10028DAA8(a4, &v19);
  while (1)
  {
    v7 = sub_1002F8CFC(a1, *(a2 + 8), *(a2 + 2), &v20, &v21, v19);
    if (v7)
    {
      break;
    }

    v8 = sub_100239CA8(v21 + 8);
    if (!v8)
    {
      return 106;
    }

    *a3 += v8 + 3;
  }

  v9 = v7;
  if (v7 == 826)
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Internal SDP error AttributeSearch returned %!", v10, v11, v12, v13, v14, v15, v16, v9);
    v17 = sub_10000C050(0x35u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v9;
}

uint64_t sub_1002FC32C(uint64_t *a1, unsigned int a2, __int16 *a3)
{
  v3 = *(a1 + 6);
  v4 = *(a1 + 5) - v3;
  v5 = *a3;
  if (a2 < 0x100)
  {
    if (*a3)
    {
      v6 = v5 - 2;
      goto LABEL_6;
    }

    if ((v4 & 0xFFFE) == 0)
    {
      return 0;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    }

    else if (v4 > 0)
    {
      if (*(a1 + 14) == 2)
      {
        v10 = *a1;
        *(a1 + 6) = v3 + 1;
        *(v10 + v3) = 53;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
        }

        else
        {
          v11 = *(a1 + 6);
          if (*(a1 + 5) > v11)
          {
            if (*(a1 + 14) == 2)
            {
              v12 = *a1;
              *(a1 + 6) = v11 + 1;
              *(v12 + v11) = a2;
              return 1;
            }

            v14 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1125, v14);
          }
        }

        v14 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
        goto LABEL_33;
      }

      v13 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1124, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    goto LABEL_29;
  }

  if (!*a3)
  {
    if ((*(a1 + 5) - v3) >= 3u)
    {
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
      }

      else if (v4 > 0)
      {
        if (*(a1 + 14) == 2)
        {
          v8 = *a1;
          *(a1 + 6) = v3 + 1;
          *(v8 + v3) = 54;
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
          }

          else
          {
            v9 = *(a1 + 6);
            if (*(a1 + 5) - v9 > 1)
            {
              if (*(a1 + 14) == 2)
              {
                *(*a1 + v9 + 1) = a2;
                *(*a1 + *(a1 + 6)) = BYTE1(a2);
                *(a1 + 6) += 2;
                return 1;
              }

              v16 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1115, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
          goto LABEL_41;
        }

        v15 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1114, v15);
      }

      v15 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
      goto LABEL_37;
    }

    return 0;
  }

  v6 = v5 - 3;
LABEL_6:
  *a3 = v6;
  return 1;
}

uint64_t sub_1002FC58C(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, unsigned int a5)
{
  v23 = 0;
  v22 = xmmword_1008A5360;
  v21 = 0;
  v20 = 0;
  sub_10028DAA8(a5, &v20);
  while (1)
  {
    v9 = sub_1002F8CFC(a1, *(a2 + 8), *(a2 + 2), &v21, &v23, v20);
    if (v9)
    {
      break;
    }

    DWORD2(v22) = *v23;
    result = sub_100239FBC(a4, a3, &v22);
    if (!result)
    {
      return result;
    }

    if (!sub_100239FBC(a4, a3, v23 + 8))
    {
      return 0;
    }
  }

  v11 = v9;
  if (v9 == 826)
  {
    return 1;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Internal SDP error AttributeSearch returned %!", v12, v13, v14, v15, v16, v17, v18, v11);
    v19 = sub_10000C050(0x35u);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F7A0();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1002FC6B0(uint64_t *result, unsigned int a2, int a3)
{
  v3 = a2 - 2;
  v4 = *(result + 5);
  if (v3 > v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1162, "(size_t)(attrBytesPos - sizeof(uint16_t)) <= (size_t)((*responseBS).__size)");
  }

  v5 = *(result + 6);
  *(result + 6) = v3;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    goto LABEL_19;
  }

  if (v4 - v3 <= 1)
  {
LABEL_19:
    v11 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
    goto LABEL_21;
  }

  if (*(result + 14) != 2)
  {
    v11 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1163, v11);
  }

  *(*result + v3 + 1) = v5 - a2;
  *(*result + *(result + 6)) = (v5 - a2) >> 8;
  *(result + 6) += 2;
  v6 = *(result + 5);
  if (v5 > v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1167, "(size_t)(attrEndPos) <= (size_t)((*responseBS).__size)");
  }

  *(result + 6) = v5;
  v7 = v6 + 3;
  if (v7 > *(result + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1172, "((size + (sizeof(uint8_t) + sizeof(uint16_t))) <= (*responseBS).__trueSize) && ((size + (sizeof(uint8_t) + sizeof(uint16_t))) >= (*responseBS).__pos)");
  }

  *(result + 5) = v7;
  if (a3)
  {
    if (*(result + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
      v12 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    }

    else
    {
      if (*(result + 14) == 2)
      {
        v8 = *result;
        *(result + 6) = v5 + 1;
        *(v8 + v5) = 2;
        if (*(result + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
        }

        else
        {
          v9 = *(result + 6);
          if (*(result + 5) - v9 > 1)
          {
            if (*(result + 14) == 2)
            {
              *(*result + v9 + 1) = a3;
              *(*result + *(result + 6)) = BYTE1(a3);
              *(result + 6) += 2;
              return result;
            }

            v13 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1178, v13);
          }
        }

        v13 = "ByteStream_NumReadBytesAvail(*responseBS) >= 2";
        goto LABEL_30;
      }

      v12 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1177, v12);
  }

  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c");
    v14 = "ByteStream_NumReadBytesAvail(*responseBS) >= 1";
    goto LABEL_33;
  }

  if (*(result + 14) != 2)
  {
    v14 = "(*responseBS).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/sdp/sdpserver.c", 1180, v14);
  }

  v10 = *result;
  *(result + 6) = v5 + 1;
  *(v10 + v5) = 0;
  return result;
}

void sub_1002FC950(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Write Secure Connection failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002FC9C4()
{
  if (HIDWORD(xmmword_100BCE300))
  {
    return 140;
  }

  v1 = sub_1003045A0(0x28u);
  v2 = sub_1001BBBD8(16 * *v1, 0x1020040F38FB7CEuLL);
  qword_100B6B638 = v2;
  if (v2)
  {
    v0 = 0;
  }

  else
  {
    v0 = 106;
  }

  if (v2)
  {
    word_100B6B6C6 = 0;
    qword_100B6B648 = 0;
    qword_100B6B6A0 = 0;
    off_100B6B6B8 = 0;
    dword_100B6B690 = 3;
    DWORD2(xmmword_100B6B668) = 6;
    dword_100B6B644 = 0;
    byte_100B6B641 = 0;
    dword_100B6B6C0 = 0;
    byte_100B6B6C4 = 0;
    if (sub_10023DE88() && (byte_100B6B640 & 1) == 0)
    {
      sub_100018960(140, sub_1002FC950, v3, v4, v5, v6, v7, v8, 1);
    }

    HIDWORD(xmmword_100BCE300) = 1;
  }

  byte_100BCE200 = 0;
  return v0;
}

uint64_t sub_1002FCADC(uint64_t a1, BOOL *a2)
{
  v22 = 0;
  if (a1 && a2)
  {
    v3 = sub_10023DB58(a1, &v22);
    if (v3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_SECMGR_RemoteSupportSSP: invalid address", v4, v5, v6, v7, v8, v9, v10, v21);
        v11 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      *a2 = *(v22 + 277) != 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_SECMGR_RemoteSupportSSP: invalid parameters", v12, v13, v14, v15, v16, v17, v18, v21);
      v19 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 101;
  }

  return v3;
}

uint64_t sub_1002FCBC0(uint64_t a1, __int16 a2)
{
  v3 = sub_1000E1FE8(a1);
  if (v3)
  {
    *(v3 + 274) = 10 * a2;
    sub_10023B840(v3);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection", v5, v6, v7, v8, v9, v10, v11, v13);
      v12 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }
}

uint64_t sub_1002FCC44(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 101;
  }

  v3 = sub_1000E1FE8(a1);
  if (v3 && (v4 = word_100B6B6C6, word_100B6B6C6))
  {
    v5 = qword_100B6B638;
    while (*v5 != v3)
    {
      v5 += 16;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    *(v5 + 13) = a2;
  }

  else
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("Device is no longer connected", v6, v7, v8, v9, v10, v11, v12, v15);
      v13 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }

  return result;
}

uint64_t sub_1002FCCF8(uint64_t a1)
{
  if (a1 && (v1 = word_100B6B6C6, word_100B6B6C6))
  {
    v2 = qword_100B6B638;
    while (*v2 != a1)
    {
      v2 += 16;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    return *(v2 + 13) != 0;
  }

  else
  {
LABEL_6:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Device is no longer connected", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x37u);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002FCDA0(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = sub_100018960(119, a1, a3, a4, a5, a6, a7, a8, v18);
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadLocalOOBData %!", v9, v10, v11, v12, v13, v14, v15, v8);
        v16 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v8;
}

uint64_t sub_1002FCE2C(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = sub_100018960(132, a1, a3, a4, a5, a6, a7, a8, v18);
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadLocalOOBExtendedData %!", v9, v10, v11, v12, v13, v14, v15, v8);
        v16 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v8;
}

uint64_t sub_1002FCEB8(uint64_t a1)
{
  v1 = word_100B6B6C6;
  if (word_100B6B6C6)
  {
    v2 = (qword_100B6B638 + 8);
    while (*(v2 - 1) != a1)
    {
      v2 += 4;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    return *v2 == 2;
  }

  else
  {
LABEL_5:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("OI_SECMGR_ConnectionIsEncrypted %!", v4, v5, v6, v7, v8, v9, v10, 122);
      v11 = sub_10000C050(0x37u);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F604();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002FCF64(uint64_t a1, _BYTE *a2)
{
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  *a2 = 0;
  if ((sub_1002D766C(a1 + 48, v6) & 1) != 0 || (result = (*(qword_100B6B648 + 32))(a1 + 48, v6), result))
  {
    result = 1;
    if (v7 == 8 || v7 == 5)
    {
      *a2 = 1;
    }
  }

  return result;
}

void sub_1002FD010(uint64_t (*a1)(void, void, void))
{
  if (!a1)
  {
    sub_1000D660C();
  }

  off_100B6B698 = a1;
}

uint64_t sub_1002FD040(uint64_t a1, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (HIDWORD(xmmword_100BCE300))
  {
    v4 = dword_100B6B644 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v6, v7, v8, v9, v10, v11, v12, v27);
      v13 = sub_10000C050(0x37u);
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F604();
        return 0;
      }
    }
  }

  else
  {
    if (!qword_100B6B6A0 || (*(qword_100B6B6A0 + 8) ? (v17 = qword_100B6B648 == 0) : (v17 = 1), v17 || !*(qword_100B6B648 + 32)))
    {
      sub_1000D660C();
    }

    a4.i32[0] = dword_100B6B650;
    v18 = vmovl_u8(a4).u64[0];
    if (vuzp1_s8(v18, v18).u32[0])
    {
      v19 = 0;
    }

    else
    {
      v19 = word_100B6B654 == 0;
    }

    if (v19 && HIBYTE(word_100B6B654) == 0)
    {
      return 0;
    }

    v21 = (*(qword_100B6B6A0 + 8))(a2, a3, &dword_100B6B650);
    v22 = word_100B6B6C6;
    if (word_100B6B6C6)
    {
      v23 = qword_100B6B638;
      while (1)
      {
        v24 = *v23 != a1;
        if (*v23 == a1)
        {
          break;
        }

        v23 += 16;
        if (!--v22)
        {
          v23 = 0;
          break;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    if (sub_1002D766C(&dword_100B6B650, v28))
    {
      v25 = 1;
    }

    else
    {
      v25 = (*(qword_100B6B648 + 32))(&dword_100B6B650, v28);
    }

    result = v21 != 0;
    if (v21)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      if (*(v23 + 8) == 2)
      {
        if (v29 != 5)
        {
          v25 = 0;
        }

        if (v25)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1002FD254(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*a1)
  {
    sub_1000D660C();
    if (!*a1)
    {
      return 101;
    }
  }

  if (!a1[1])
  {
    sub_1000D660C();
    if (!a1[1])
    {
      return 101;
    }
  }

  if (!a1[2])
  {
    sub_1000D660C();
    if (!a1[2])
    {
      return 101;
    }
  }

  if (!a1[3])
  {
    sub_1000D660C();
    if (!a1[3])
    {
      return 101;
    }
  }

  if (!a1[4])
  {
    sub_1000D660C();
    if (!a1[4])
    {
      return 101;
    }
  }

  if (!a1[5])
  {
    sub_1000D660C();
    if (!a1[5])
    {
      return 101;
    }
  }

  if (!a1[6])
  {
    sub_1000D660C();
    if (!a1[6])
    {
      return 101;
    }
  }

  if (!a1[7])
  {
    sub_1000D660C();
    if (!a1[7])
    {
      return 101;
    }
  }

  if (!a1[8])
  {
    sub_1000D660C();
    if (!a1[8])
    {
      return 101;
    }
  }

  if (!a1[9])
  {
    sub_1000D660C();
    if (!a1[9])
    {
      return 101;
    }
  }

  if (!a1[10])
  {
    sub_1000D660C();
    if (!a1[10])
    {
      return 101;
    }
  }

  if (!a1[11])
  {
    sub_1000D660C();
    if (!a1[11])
    {
      return 101;
    }
  }

  if (!a1[13])
  {
    sub_1000D660C();
    if (!a1[13])
    {
      return 101;
    }
  }

  if (!a1[14])
  {
    sub_1000D660C();
    if (!a1[14])
    {
      return 101;
    }
  }

  result = 0;
  qword_100B6B648 = a1;
  if (!dword_100B6B644)
  {
    if (qword_100B6B6A0)
    {
      sub_1002FD3CC(1);
      return 0;
    }
  }

  return result;
}

double sub_1002FD3CC(int a1)
{
  dword_100B6B644 = a1;
  if (a1 == 1 && (dword_100BCE210 || word_100BCE214 != 0))
  {
    v15[4] = v1;
    v15[5] = v2;
    v15[0] = 40;
    v15[1] = &qword_100BCE208;
    v4 = sub_1000228C0(sub_100301D18, v15, 0);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("Dispatch registration failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
        v13 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000D660C();
    }

    qword_100BCE228 = 0;
    result = 0.0;
    *&qword_100BCE208 = 0u;
    xmmword_100BCE218 = 0u;
  }

  return result;
}

uint64_t sub_1002FD4B8(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*a1)
  {
    sub_1000D660C();
    if (!*a1)
    {
      return 101;
    }
  }

  if (!a1[1])
  {
    sub_1000D660C();
    if (!a1[1])
    {
      return 101;
    }
  }

  qword_100B6B6A0 = a1;
  if (dword_100B6B644)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_100B6B648 == 0;
  }

  if (!v2)
  {
    sub_1002FD3CC(1);
  }

  return 0;
}

void sub_1002FD550(uint64_t a1, unsigned int a2)
{
  v41 = 0;
  if (HIDWORD(xmmword_100BCE300))
  {
    v2 = dword_100B6B644 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v40);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_10080F604();
      }
    }
  }

  else
  {
    v12 = word_100B6B6C6;
    if (word_100B6B6C6)
    {
      v13 = qword_100B6B638;
      while (*v13 != a1)
      {
        v13 += 2;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_SECMGR_ConnectComplete, connection already exists", v24, v25, v26, v27, v28, v29, v30, v40);
        v31 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_13:
      v14 = sub_1002FD6FC(a1, &v41);
      if (v14)
      {
        v15 = v14;
        if (sub_10000C240())
        {
          sub_10000AF54("_createSecurityRecord %!", v16, v17, v18, v19, v20, v21, v22, v15);
          v23 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        if (a2 >= 3)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v32, v33, v34, v35, v36, v37, v38, 1411);
            v39 = sub_10000C050(0x37u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          a2 = 0;
        }

        sub_1002FD82C(v41, a2);
      }
    }
  }
}

uint64_t sub_1002FD6FC(uint64_t a1, uint64_t *a2)
{
  v4 = word_100B6B6C6;
  if (word_100B6B6C6)
  {
    v5 = qword_100B6B638;
    v6 = word_100B6B6C6;
    while (*v5 != a1)
    {
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    sub_1000D660C();
    v4 = word_100B6B6C6;
LABEL_8:
    if (v4 > *sub_1003045A0(0x28u))
    {
      sub_1000D660C();
    }
  }

  else
  {
    sub_1003045A0(0x28u);
  }

  v7 = word_100B6B6C6;
  if (v7 >= *sub_1003045A0(0x28u))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No room to add another connection %d", v11, v12, v13, v14, v15, v16, v17, word_100B6B6C6);
      v18 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 104;
  }

  else
  {
    v8 = word_100B6B6C6;
    v9 = qword_100B6B638 + 16 * word_100B6B6C6;
    if (a2)
    {
      *a2 = v9;
    }

    result = 0;
    *v9 = a1;
    *(v9 + 8) = 0;
    *(v9 + 12) = 0;
    word_100B6B6C6 = v8 + 1;
  }

  return result;
}

void sub_1002FD82C(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
LABEL_3:
      *(a1 + 8) = 2;
      v4 = *a1;

      sub_100247BFC(v4, 3);
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

  if (*(a1 + 8) == 2)
  {
    *(a1 + 8) = 1;
  }
}

void sub_1002FD8A0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Enforcement complete with %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v32 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100B6B644 != 5)
  {
    sub_1000D660C();
    if (dword_100B6B644 != 5)
    {
      if (sub_10000C240())
      {
        v10 = sub_1002FF42C(dword_100B6B644);
        sub_10000AF54("enforcementFinish - %s state, %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  sub_1002FD3CC(1);
  dword_100B6B690 = 3;
  v19 = qword_100B6B658;
  if (qword_100B6B658)
  {
    if (*(qword_100B6B658 + 194) == 1)
    {
      *(qword_100B6B658 + 194) = 0;
      sub_1000DE170(v19);
      v19 = qword_100B6B658;
    }

    if (!*(v19 + 148))
    {
      v21 = sub_10023B840(v19);
      if (v21)
      {
        v22 = v21;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_DevMgr_aclActivity failed with %!", v23, v24, v25, v26, v27, v28, v29, v22);
          v30 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  v20 = off_100B6B688;
  if (off_100B6B688 || (sub_1000D660C(), (v20 = off_100B6B688) != 0))
  {
    v20(a1, dword_100B6B678);
  }
}

void sub_1002FDA90(int a1)
{
  if (dword_100B6B644 != 2)
  {
    sub_1000D660C();
  }

  if (!HIDWORD(xmmword_100B6B668))
  {
    HIDWORD(xmmword_100B6B668) = a1;
  }

  v2 = sub_100018960(77, sub_1003020F4);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAuthenticationEnable %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1003020F4(v3);
  }
}

void sub_1002FDB4C(uint64_t a1)
{
  if (sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AuthenticatedPayloadTimeoutEvent device %: , disconnecting", v2, v3, v4, v5, v6, v7, v8, a1 + 48);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v10 = sub_10023BA68(a1 + 48);
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to force-disconnect due to MIC with status %!", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }
}

void sub_1002FDC1C(uint64_t a1, uint64_t a2)
{
  if (sub_1000B8B5C(a2))
  {
    if (a2)
    {
      v4 = a2 + 48;
    }

    else
    {
      v4 = 0;
    }

    if (!qword_100B6B648 || (v5 = *(qword_100B6B648 + 104)) == 0)
    {
      sub_1000D660C();
      v5 = *(qword_100B6B648 + 104);
    }

    v5(a1, v4);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid Handle for HCI Encryption Key Refreshed event: 0x%x", v6, v7, v8, v9, v10, v11, v12, a2);
    v13 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FDCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = 0;
  if (HIDWORD(xmmword_100BCE300))
  {
    v4 = dword_100B6B644 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("!SECMGR_IS_INITIALIZED", v5, v6, v7, v8, v9, v10, v11, v84);
    v12 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_8:
    sub_10080F604();
    return;
  }

  if (a1 == 702)
  {
    return;
  }

  if (!sub_1000B8B5C(a2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid Handle: 0x%x", v65, v66, v67, v68, v69, v70, v71, a2);
    v72 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_8;
  }

  if (sub_10000C240())
  {
    v17 = sub_100304B50(a3);
    sub_10000AF54("HCIEvent EncryptionChange: %s", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v87 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("        addr     = %:", v26, v27, v28, v29, v30, v31, v32, a2 + 48);
    v33 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = sub_10000C0FC();
      *buf = 136446210;
      v87 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("        status   = %!", v35, v36, v37, v38, v39, v40, v41, a1);
    v42 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = sub_10000C0FC();
      *buf = 136446210;
      v87 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("        key size = %d", v44, v45, v46, v47, v48, v49, v50, a4);
    v51 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = sub_10000C0FC();
      *buf = 136446210;
      v87 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a1)
  {
    if (a3 < 3)
    {
      if (a3)
      {
        v53 = 1;
        goto LABEL_25;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v73, v74, v75, v76, v77, v78, v79, 1411);
      v80 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  a3 = 0;
  v53 = 2;
LABEL_25:
  if (off_100B6B6B8)
  {
    off_100B6B6B8(v53, a1, a2 + 48);
  }

  v54 = word_100B6B6C6;
  if (word_100B6B6C6)
  {
    v55 = qword_100B6B638;
    while (*v55 != a2)
    {
      v55 += 2;
      if (!--v54)
      {
        goto LABEL_31;
      }
    }

    v85 = v55;
    sub_1002FD82C(v55, a3);
    v56 = 0;
  }

  else
  {
LABEL_31:
    v56 = sub_1002FD6FC(a2, &v85);
    if (v56)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("could not create security record %!", v57, v58, v59, v60, v61, v62, v63, v56);
        v64 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      a3 = 0;
    }

    else
    {
      sub_1002FD82C(v85, a3);
    }
  }

  if (!qword_100B6B648 || !*(qword_100B6B648 + 112))
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v81 = *(qword_100B6B648 + 112);
    if (v81)
    {
      v81(v56, a2 + 48, a3, a4);
    }
  }

  sub_100247768(v56, a2, a3, v59, v60, v61, v62, v63);
  if (dword_100B6B644 == 5 && qword_100B6B658 == a2 && dword_100B6B690 == 2)
  {
    if (a3)
    {
      v82 = 0;
    }

    else
    {
      v82 = 1414;
    }

    if (v56)
    {
      v83 = v56;
    }

    else
    {
      v83 = v82;
    }

    sub_1002FD8A0(v83);
  }

  if (off_100B6B698)
  {
    off_100B6B698(v56, a2, a3);
  }
}

void sub_1002FE1C8(uint64_t a1, uint64_t a2)
{
  if (sub_1000B8B5C(a2))
  {
    if (HIDWORD(xmmword_100BCE300))
    {
      v4 = dword_100B6B644 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("!SECMGR_IS_INITIALIZED", v5, v6, v7, v8, v9, v10, v11, v23);
        v12 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else if (byte_100B6B6A8 == 1 && *(a2 + 48) == dword_100B6B6A9 && *(a2 + 52) == word_100B6B6AD)
    {
      byte_100B6B6A8 = 0;
      v22 = off_100B6B6B0;

      v22(a1, &dword_100B6B6A9);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("invalid handle for ChangeConnectionLinkKey Event. Ignoring event.", v13, v14, v15, v16, v17, v18, v19, v23);
    v20 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002FE300(uint64_t a1, uint64_t a2)
{
  if (sub_1000B8B5C(a2))
  {
    if (HIDWORD(xmmword_100BCE300))
    {
      v2 = dword_100B6B644 == 0;
    }

    else
    {
      v2 = 1;
    }

    if (v2 && sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v19);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("invalid handle for HCI Event 0x0A, Ignoring event.", v11, v12, v13, v14, v15, v16, v17, v19);
    v18 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002FE3C8(int a1, uint64_t a2)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v4 = dword_100B6B644 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    sub_1000D660C();
    if (!HIDWORD(xmmword_100BCE300) || dword_100B6B644 == 0)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("!SECMGR_IS_INITIALIZED", v6, v7, v8, v9, v10, v11, v12, v23);
      v13 = sub_10000C050(0x37u);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_13:
      sub_10080F604();
      return;
    }
  }

  if (!a2)
  {
    sub_1000D660C();
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("OI_STATUS_INVALID_PARAMETERS", v15, v16, v17, v18, v19, v20, v21, v23);
    v22 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    v14 = 31;
  }

  else
  {
    v14 = 32;
  }

  sub_100018960(v14, sub_1002FE4F8);
}

void sub_1002FE4F8(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("status %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FE56C(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v2 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v3 = dword_100B6B644 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v4, v5, v6, v7, v8, v9, v10, v34);
      v11 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 56))
    {
      sub_1000D660C();
      v2 = dword_100B6B644;
    }

    if (v2 < 2 || (*a1 == dword_100B6B650 ? (v14 = *(a1 + 4) == word_100B6B654) : (v14 = 0), !v14))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Not actively pairing or enforcing %:", v15, v16, v17, v18, v19, v20, v21, a1);
        v22 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

LABEL_20:
      sub_1002FE3C8(0, a1);
      return;
    }

    v23 = dword_100B6B660;
    v24 = sub_10023DB58(a1, &v35);
    if (!v24)
    {
      if (!sub_1002FCCF8(v35))
      {
        (*(qword_100B6B648 + 56))(a1, a2, v23, BYTE2(dword_100B6B660));
        return;
      }

      goto LABEL_20;
    }

    v25 = v24;
    if (sub_10000C240())
    {
      sub_10000AF54("No longer connected %!", v26, v27, v28, v29, v30, v31, v32, v25);
      v33 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void sub_1002FE734(int a1, uint64_t a2)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v4 = dword_100B6B644 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 && ((sub_1000D660C(), HIDWORD(xmmword_100BCE300)) ? (v5 = dword_100B6B644 == 0) : (v5 = 1), v5))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v6, v7, v8, v9, v10, v11, v12, v42);
      v13 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }
  }

  else if (a2)
  {
    if (a1)
    {
      v14 = sub_100018960(33, sub_1002FE908);
      if (v14)
      {
        v15 = v14;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_UserPasskeyRequestReply %!", v16, v17, v18, v19, v20, v21, v22, v15);
          v23 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
LABEL_26:
            sub_10080F604();
          }
        }
      }
    }

    else
    {
      v32 = sub_100018960(34, sub_1002FE908);
      if (v32)
      {
        v33 = v32;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_UserPasskeyRequestNegativeReply %!", v34, v35, v36, v37, v38, v39, v40, v33);
          v41 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

  else
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("OI_STATUS_INVALID_PARAMETERS", v24, v25, v26, v27, v28, v29, v30, v42);
      v31 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }
  }
}

void sub_1002FE908(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("status %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FE97C(uint64_t a1)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v1 = dword_100B6B644 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v2, v3, v4, v5, v6, v7, v8, v21);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 64))
    {
      sub_1000D660C();
    }

    v11 = sub_1000E1FE8(a1);
    if (v11)
    {
      if (sub_1002FCCF8(v11))
      {

        sub_1002FE734(0, a1);
      }

      else
      {
        v20 = *(qword_100B6B648 + 64);

        v20(a1);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection", v12, v13, v14, v15, v16, v17, v18, v21);
      v19 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_1002FEAB8(uint64_t a1, uint64_t a2)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v2 = dword_100B6B644 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v14);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || (v13 = *(qword_100B6B648 + 72)) == 0)
    {
      sub_1000D660C();
      v13 = *(qword_100B6B648 + 72);
    }

    v13(a1, a2);
  }
}

void sub_1002FEB8C(uint64_t a1, uint64_t a2)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v2 = dword_100B6B644 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v23);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 80))
    {
      sub_1000D660C();
    }

    v13 = sub_1000E1FE8(a1);
    if (v13)
    {
      if (sub_1002FCCF8(v13))
      {

        sub_1002FE734(0, a1);
      }

      else
      {
        v22 = *(qword_100B6B648 + 80);

        v22(a1, a2);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection", v14, v15, v16, v17, v18, v19, v20, v23);
      v21 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_1002FECE0(uint64_t a1)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v1 = dword_100B6B644 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v2, v3, v4, v5, v6, v7, v8, v21);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 88))
    {
      sub_1000D660C();
    }

    v11 = sub_1000E1FE8(a1);
    if (v11)
    {
      if (sub_1002FCCF8(v11))
      {

        sub_1002FEE28(0, a1, 0, 0, 0, 0);
      }

      else
      {
        v20 = *(qword_100B6B648 + 88);

        v20(a1);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection", v12, v13, v14, v15, v16, v17, v18, v21);
      v19 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_1002FEE28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (HIDWORD(xmmword_100BCE300))
  {
    v12 = dword_100B6B644 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    sub_1000D660C();
    if (!HIDWORD(xmmword_100BCE300) || dword_100B6B644 == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("!SECMGR_IS_INITIALIZED", v14, v15, v16, v17, v18, v19, v20, v58);
        v21 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      return;
    }
  }

  if (!a2)
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("OI_STATUS_INVALID_PARAMETERS pAddr %:", v32, v33, v34, v35, v36, v37, v38, 0);
      v39 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    return;
  }

  if (!a1)
  {
    v40 = sub_100018960(36, sub_1002FF09C);
    if (v40)
    {
      v41 = v40;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_RemoteOOBDataRequestNegativeReply %!", v42, v43, v44, v45, v46, v47, v48, v41);
        v49 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }
    }

    return;
  }

  if (a3)
  {
    if (a4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000D660C();
    if (a4)
    {
LABEL_18:
      if (a5)
      {
        goto LABEL_19;
      }

LABEL_36:
      sub_1000D660C();
      if (a6)
      {
        goto LABEL_20;
      }

LABEL_37:
      sub_1000D660C();
      goto LABEL_38;
    }
  }

  sub_1000D660C();
  if (!a5)
  {
    goto LABEL_36;
  }

LABEL_19:
  if (!a6)
  {
    goto LABEL_37;
  }

LABEL_20:
  if (!a5 || !a3 || !a4)
  {
LABEL_38:
    if (sub_10000C240())
    {
      sub_10000AF54("oob data %!", v50, v51, v52, v53, v54, v55, v56, 101);
      v57 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

    return;
  }

  v22 = sub_100018960(39, sub_1002FF09C);
  if (v22)
  {
    v23 = v22;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_RemoteOOBDataRequestReply %!", v24, v25, v26, v27, v28, v29, v30, v23);
      v31 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_40:
        sub_10080F604();
      }
    }
  }
}

void sub_1002FF09C(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("status %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FF110(uint64_t a1)
{
  v1 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v2 = dword_100B6B644 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 24) || !*qword_100B6B648)
    {
      sub_1000D660C();
      v1 = dword_100B6B644;
    }

    if (v1 <= 2)
    {
      if (v1 == 1)
      {
        return;
      }

      if (v1 == 2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          if (*a1 != dword_100B6B650 || *(a1 + 4) != word_100B6B654)
          {
            goto LABEL_36;
          }

          if ((byte_100B6B641 & 1) == 0 && xmmword_100B6B668 - 6 >= 0xFFFFFFFC)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Non-bondable mode, rejecting IO caps request from %:", v40, v41, v42, v43, v44, v45, v46, a1);
              v47 = sub_10000C050(0x37u);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            v23 = 24;
            goto LABEL_37;
          }

          goto LABEL_51;
        case 4:
          goto LABEL_36;
        case 5:
LABEL_17:
          if (*a1 != dword_100B6B650 || *(a1 + 4) != word_100B6B654)
          {
            goto LABEL_36;
          }

          BYTE1(dword_100B6B660) = 1;
          (*qword_100B6B648)(a1);
          if (dword_100B6B644 != 2)
          {
            goto LABEL_51;
          }

          if (DWORD2(xmmword_100B6B668) != 1)
          {
            if (DWORD2(xmmword_100B6B668) == 2)
            {
              DWORD2(xmmword_100B6B668) = 5;
LABEL_51:
              v48 = *(qword_100B6B648 + 24);

              v48(a1);
              return;
            }

            goto LABEL_31;
          }

LABEL_36:
          v23 = 20;
LABEL_37:
          if (sub_10000C240())
          {
            sub_1002FF42C(dword_100B6B644);
            sub_10000AF54("rejecting %: ioCaps request, secmgrState: %s, %!", v24, v25, v26, v27, v28, v29, v30, a1);
            v31 = sub_10000C050(0x37u);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("%:", v32, v33, v34, v35, v36, v37, v38, a1);
            v39 = sub_10000C050(0x37u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          sub_1002FF43C(v23, a1, 0);
          return;
      }
    }

    if (sub_10000C240())
    {
      v13 = sub_1002FF42C(dword_100B6B644);
      sub_10000AF54("secmgrState %s (%d)", v14, v15, v16, v17, v18, v19, v20, v13);
      v21 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

LABEL_31:
    sub_1000D660C();
    goto LABEL_36;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v49);
    v10 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FF43C(int a1, uint64_t a2, int a3)
{
  v6 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v7 = dword_100B6B644 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 && (sub_1000D660C(), v6 = dword_100B6B644, !HIDWORD(xmmword_100BCE300)) || !v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v8, v9, v10, v11, v12, v13, v14, v54);
      v15 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    return;
  }

  if (!a2)
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("OI_STATUS_INVALID_PARAMETERS", v16, v17, v18, v19, v20, v21, v22, v54);
      v23 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    return;
  }

  if (v6 <= 2)
  {
    if (v6 != 1 && v6 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v6 != 3)
    {
      if (v6 == 4 || v6 == 5)
      {
        goto LABEL_37;
      }

LABEL_30:
      if (sub_10000C240())
      {
        v24 = sub_1002FF42C(dword_100B6B644);
        sub_10000AF54("secmgrState %s (%d), %!", v25, v26, v27, v28, v29, v30, v31, v24);
        v32 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000D660C();
      return;
    }

    LOBYTE(dword_100B6B660) = a3 != 3 && BYTE1(xmmword_100B6B668) != 3 && (a3 == 2 || BYTE1(xmmword_100B6B668) == 2 || a3 == 1 || BYTE1(xmmword_100B6B668) == 1);
  }

LABEL_37:
  if (!qword_100B6B6A0 || (v33 = *qword_100B6B6A0) == 0)
  {
    sub_1000D660C();
    v33 = *qword_100B6B6A0;
  }

  if (v33() >= 3)
  {
    LOBYTE(dword_100B6B660) = 1;
  }

  if (a1)
  {
    v34 = sub_100018960(37, sub_1002FFB00);
    if (v34)
    {
      v35 = v34;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_IOCapabilityRequestNegativeReply %!", v36, v37, v38, v39, v40, v41, v42, v35);
        v43 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
LABEL_50:
          sub_10080F604();
        }
      }
    }
  }

  else
  {
    v44 = sub_100018960(30, sub_1002FFB00);
    if (v44)
    {
      v45 = v44;
      if (sub_10000C240())
      {
        sub_10000AF54("%!", v46, v47, v48, v49, v50, v51, v52, v45);
        v53 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }
    }
  }
}

void sub_1002FF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v5 = dword_100B6B644 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 16) || !*qword_100B6B648)
    {
      sub_1000D660C();
      v4 = dword_100B6B644;
    }

    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        v56 = 0;
        if (sub_10023DB58(a1, &v56))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("IoCapsResponse, internal inconsistency for %:, %!", v28, v29, v30, v31, v32, v33, v34, a1);
            v35 = sub_10000C050(0x37u);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_35;
        }

        dword_100B6B644 = 3;
        v52 = v56;
        v53 = *(v56 + 277);
        if (!v53)
        {
          v53 = 1;
          *(v56 + 277) = 1;
        }

        v54 = *a1;
        word_100B6B654 = *(a1 + 4);
        dword_100B6B650 = v54;
        qword_100B6B658 = v52;
        *(&dword_100B6B660 + 1) = 257;
        LOBYTE(dword_100B6B660) = a4 & 1;
        HIBYTE(dword_100B6B660) = (BYTE8(xmmword_100BCDFD8) > 3u) & v53;
        LOBYTE(xmmword_100B6B668) = a4;
        BYTE1(xmmword_100B6B668) = a2;
        (*qword_100B6B648)(a1);
        goto LABEL_47;
      }

      if (v4 == 2)
      {
LABEL_16:
        if (*a1 != dword_100B6B650 || *(a1 + 4) != word_100B6B654)
        {
          goto LABEL_35;
        }

        if (a4)
        {
          LOBYTE(dword_100B6B660) = 1;
        }

        if ((dword_100B6B660 & 0x100) == 0)
        {
          BYTE2(dword_100B6B660) = 1;
        }

LABEL_47:
        (*(qword_100B6B648 + 16))(a1, a2, a3, a4);
        return;
      }
    }

    else
    {
      if ((v4 - 3) < 2)
      {
LABEL_35:
        if (sub_10000C240())
        {
          sub_10000AF54("Ignoring IoCapsResponse event from %:, %!", v36, v37, v38, v39, v40, v41, v42, a1);
          v43 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        if (sub_100084230() == 6 || sub_100084230() == 12)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Unexpected IoCapsResponse event. Forcing disconnect from %:, %!", v44, v45, v46, v47, v48, v49, v50, a1);
            v51 = sub_10000C050(0x37u);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          sub_10023BA68(a1);
        }

        return;
      }

      if (v4 == 5)
      {
        goto LABEL_16;
      }
    }

    if (sub_10000C240())
    {
      v19 = sub_1002FF42C(dword_100B6B644);
      sub_10000AF54("secmgrState %s (%d)", v20, v21, v22, v23, v24, v25, v26, v19);
      v27 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1000D660C();
    goto LABEL_35;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("!SECMGR_IS_INITIALIZED", v6, v7, v8, v9, v10, v11, v12, v55);
    v13 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FFB00(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("ioCapsReplyCmdCb %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FFB74(int a1, uint64_t a2, uint64_t a3)
{
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
    sub_1000D660C();
    if (!HIDWORD(xmmword_100BCE300) || dword_100B6B644 == 0)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("!SECMGR_IS_INITIALIZED", v8, v9, v10, v11, v12, v13, v14, v34);
      v15 = sub_10000C050(0x37u);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_31:
      sub_10080F604();
      return;
    }
  }

  if (!a2)
  {
    sub_1000D660C();
    if (a3 || (a1 & 1) == 0)
    {
LABEL_24:
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("OI_STATUS_INVALID_PARAMETERS", v17, v18, v19, v20, v21, v22, v23, v34);
      v24 = sub_10000C050(0x37u);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_31;
    }

LABEL_23:
    sub_1000D660C();
    goto LABEL_24;
  }

  if (!a3 && a1)
  {
    goto LABEL_23;
  }

  if (dword_100B6B644 == 4)
  {
    sub_1002FD3CC(1);
  }

  if (a1)
  {
    v16 = 12;
  }

  else
  {
    v16 = 13;
  }

  v25 = sub_100018960(v16, sub_1002FFD2C);
  if (v25)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_SECMGR_PinCode %!", v26, v27, v28, v29, v30, v31, v32, v25);
      v33 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_1002FFD2C(int a1, uint64_t a2)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("pinCodeRequestReplyCb %:, %!", v3, v4, v5, v6, v7, v8, v9, a2);
    v10 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002FFDA4(uint64_t a1)
{
  v41 = 0;
  if (HIDWORD(xmmword_100BCE300))
  {
    v1 = dword_100B6B644 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 48))
    {
      sub_1000D660C();
    }

    if ((byte_100B6B641 & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Non-bondable mode, rejecting pin code request from %:, %!", v21, v22, v23, v24, v25, v26, v27, a1);
        v28 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_45;
    }

    v11 = sub_10023DB58(a1, &v41);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DEVMGR_GetAclHandleFromAddr %!", v13, v14, v15, v16, v17, v18, v19, v12);
        v20 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_45;
    }

    if (dword_100B6B644 <= 2)
    {
      if (!dword_100B6B644)
      {
        goto LABEL_45;
      }

      if (dword_100B6B644 == 1)
      {
        dword_100B6B644 = 4;
        v29 = *a1;
        word_100B6B654 = *(a1 + 4);
        dword_100B6B650 = v29;
        qword_100B6B658 = v41;
        dword_100B6B660 = 0;
        goto LABEL_44;
      }

      if (*a1 != dword_100B6B650 || *(a1 + 4) != word_100B6B654)
      {
        goto LABEL_45;
      }

      if (SDWORD2(xmmword_100B6B668) <= 1)
      {
        if (!DWORD2(xmmword_100B6B668))
        {
          goto LABEL_45;
        }

        if (DWORD2(xmmword_100B6B668) != 1)
        {
          goto LABEL_48;
        }
      }

      else if (DWORD2(xmmword_100B6B668) != 2)
      {
        if (DWORD2(xmmword_100B6B668) != 3)
        {
          if (DWORD2(xmmword_100B6B668) != 4)
          {
LABEL_48:
            if (sub_10000C240())
            {
              sub_10000AF54("curContext.u.bondingContext.substate %d, %!", v32, v33, v34, v35, v36, v37, v38, DWORD2(xmmword_100B6B668));
              v39 = sub_10000C050(0x37u);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            sub_1002FDA90(105);
            sub_1000D660C();
          }

LABEL_45:
          sub_1002FFB74(0, a1, 0);
          return;
        }

LABEL_44:
        if ((sub_1002FCCF8(v41) & 1) == 0)
        {
          (*(qword_100B6B648 + 48))(a1);
          return;
        }

        goto LABEL_45;
      }

      DWORD2(xmmword_100B6B668) = 3;
      goto LABEL_44;
    }

    if ((dword_100B6B644 - 3) < 2)
    {
      goto LABEL_45;
    }

    if (*a1 != dword_100B6B650 || *(a1 + 4) != word_100B6B654)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("!SECMGR_IS_INITIALIZED", v2, v3, v4, v5, v6, v7, v8, v40);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_10030006C(uint64_t a1)
{
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v1 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v2 = dword_100B6B644 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v3, v4, v5, v6, v7, v8, v9, v48);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  if (!qword_100B6B648 || !*(qword_100B6B648 + 32))
  {
    sub_1000D660C();
    v1 = dword_100B6B644;
  }

  if (v1 == 2)
  {
    if (SDWORD2(xmmword_100B6B668) > 2)
    {
      if ((DWORD2(xmmword_100B6B668) - 3) < 4)
      {
LABEL_15:
        if (!sub_10000C240())
        {
          goto LABEL_18;
        }

        sub_10000AF54("curContext.u.bondingContext.substate %d, %!", v12, v13, v14, v15, v16, v17, v18, DWORD2(xmmword_100B6B668));
        v19 = sub_10000C050(0x37u);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_31;
    }

    if (!DWORD2(xmmword_100B6B668))
    {
      goto LABEL_15;
    }

    if (DWORD2(xmmword_100B6B668) == 1)
    {
      DWORD2(xmmword_100B6B668) = 3;
      goto LABEL_35;
    }

    if (DWORD2(xmmword_100B6B668) != 2)
    {
LABEL_31:
      if (!sub_10000C240())
      {
        goto LABEL_18;
      }

      sub_10000AF54("Unknown bonding substate %!", v30, v31, v32, v33, v34, v35, v36, 105);
      v37 = sub_10000C050(0x37u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_17:
      sub_10080F604();
LABEL_18:
      sub_1002FDA90(105);
      sub_1000D660C();
    }
  }

  else if (((sub_1002D766C(a1, v49) & 1) != 0 || (*(qword_100B6B648 + 32))(a1, v49)) && (dword_100B6B644 != 5 || dword_100B6B690 != 1 || sub_10030036C(HIBYTE(dword_100B6B660), dword_100B6B680, v50)))
  {
    v20 = sub_100018960(10, sub_1003005D4);
    if (v20)
    {
      v21 = v20;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_LinkKeyRequestReply %!", v22, v23, v24, v25, v26, v27, v28, v21);
        v29 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }
    }

    return;
  }

LABEL_35:
  v38 = sub_100018960(11, sub_1003005D4);
  if (v38)
  {
    v39 = v38;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_LinkKeyRequestNegativeReply %!", v40, v41, v42, v43, v44, v45, v46, v39);
      v47 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        sub_10080F604();
      }
    }
  }
}

uint64_t sub_10030036C(int a1, uint64_t a2, uint64_t a3)
{
  if (dword_100B6B644 != 5)
  {
    sub_1000D660C();
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = 0;
      if (a3 > 8)
      {
        return result;
      }

      if (((1 << a3) & 0x1B8) != 0)
      {
        return 1;
      }

      if (a3)
      {
        if (a3 == 6)
        {
          result = sub_10000C240();
          if (result)
          {
            sub_10000AF54("keyTypeIsSufficient %!", v23, v24, v25, v26, v27, v28, v29, 1420);
            v30 = sub_10000C050(0x37u);
            result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
            if (result)
            {
              goto LABEL_38;
            }
          }
        }

        return result;
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_20;
      }

      result = 0;
      if (a3 > 8)
      {
        return result;
      }

      if (((1 << a3) & 0x1A8) != 0)
      {
        return 1;
      }

      if (a3)
      {
        if (a3 == 6)
        {
          result = sub_10000C240();
          if (result)
          {
            sub_10000AF54("keyTypeIsSufficient %!", v7, v8, v9, v10, v11, v12, v13, 1420);
            v14 = sub_10000C050(0x37u);
            result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
            if (result)
            {
              goto LABEL_38;
            }
          }
        }

        return result;
      }
    }

    return a1 ^ 1u;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 != 1)
  {
LABEL_20:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Invalid security level %d, %!", v15, v16, v17, v18, v19, v20, v21, a2);
      v22 = sub_10000C050(0x37u);
      result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_38;
      }
    }

    return result;
  }

  if (!a1)
  {
    return 1;
  }

  if (a3 > 8)
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Unhandled keytype", v39, v40, v41, v42, v43, v44, v45, a3);
      v46 = sub_10000C050(0x37u);
      result = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_38;
      }
    }

    return result;
  }

  if (((1 << a3) & 0x1B8) != 0)
  {
    return 1;
  }

  if (((1 << a3) & 7) != 0)
  {
    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("keyTypeIsSufficient %!", v31, v32, v33, v34, v35, v36, v37, 1420);
    v38 = sub_10000C050(0x37u);
    result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_38:
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

void sub_1003005D4(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("linkKeyRequestReplyCb %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_100300648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  if (HIDWORD(xmmword_100BCE300))
  {
    v3 = dword_100B6B644 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v4, v5, v6, v7, v8, v9, v10, v17);
      v11 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!*(qword_100B6B648 + 40))
    {
      sub_1000D660C();
    }

    if (sub_10023DB58(a1, &v18) || (v16 = word_100B6B6C6, !word_100B6B6C6))
    {
LABEL_12:
      v15 = 0;
    }

    else
    {
      v15 = qword_100B6B638;
      while (*v15 != v18)
      {
        v15 += 16;
        if (!--v16)
        {
          goto LABEL_12;
        }
      }
    }

    (*(qword_100B6B648 + 40))(a1, a2, a3, byte_100B6B641);
    if (v15)
    {
      if (*(v15 + 8) != 2)
      {
        *(v15 + 8) = 1;
      }
    }
  }
}

void sub_100300780(uint64_t a1, uint64_t a2)
{
  if (sub_1000B8B5C(a2))
  {
    if (HIDWORD(xmmword_100BCE300))
    {
      v4 = dword_100B6B644 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      if (dword_100B6B644 == 2 && qword_100B6B658 == a2)
      {
        if (DWORD2(xmmword_100B6B668) > 6)
        {
          goto LABEL_43;
        }

        if (((1 << SBYTE8(xmmword_100B6B668)) & 0x57) == 0)
        {
          HIDWORD(xmmword_100B6B668) = a1;
          sub_100300ABC();
          goto LABEL_43;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("curContext.u.bondingContext.substate %d, %!", v24, v25, v26, v27, v28, v29, v30, DWORD2(xmmword_100B6B668));
          v31 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1002FDA90(105);
      }

      else
      {
        if (dword_100B6B644 != 5 || qword_100B6B658 != a2)
        {
          goto LABEL_43;
        }

        if (dword_100B6B690 == 1)
        {
          if (!qword_100B6B648 || !*(qword_100B6B648 + 32))
          {
            sub_1000D660C();
            if (dword_100B6B644 != 5)
            {
              sub_1000D660C();
            }
          }

          if (dword_100B6B690 != 1)
          {
            sub_1000D660C();
          }

          if (a1)
          {
            v23 = a1;
          }

          else
          {
            memset(v49, 0, sizeof(v49));
            v50 = 0;
            if (((sub_1002D766C(&dword_100B6B650, v49) & 1) != 0 || (*(qword_100B6B648 + 32))(&dword_100B6B650, v49)) && sub_10030036C(HIBYTE(dword_100B6B660), dword_100B6B680, v50))
            {
              sub_100301E10();
              goto LABEL_43;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("enforceAuthenticationDone %!", v40, v41, v42, v43, v44, v45, v46, 1419);
              v47 = sub_10000C050(0x37u);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            v23 = 1419;
          }

          sub_1002FD8A0(v23);
LABEL_43:
          if (off_100B6B6B8)
          {
            off_100B6B6B8(0, a1, a2 + 48);
          }

          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("curContext.u.enforceContext.substate %d, %!", v32, v33, v34, v35, v36, v37, v38, dword_100B6B690);
          v39 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1002FD8A0(105);
      }

      sub_1000D660C();
      goto LABEL_43;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v5, v6, v7, v8, v9, v10, v11, v48);
      v12 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_10080F604();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid handle for HCI Authentication Complete Event, ignore event", v13, v14, v15, v16, v17, v18, v19, v48);
    v20 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }
}

void sub_100300ABC()
{
  if (dword_100B6B644 != 2)
  {
    sub_1000D660C();
  }

  DWORD2(xmmword_100B6B668) = 4;
  v0 = sub_10023BFD0(sub_10030207C, qword_100B6B658);
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DevMgr_BondingDisconnect %!", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002FDA90(v1);
  }
}

void sub_100300B70(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = dword_100B6B644;
  if (HIDWORD(xmmword_100BCE300))
  {
    v4 = dword_100B6B644 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("!SECMGR_IS_INITIALIZED", v5, v6, v7, v8, v9, v10, v11, v24);
      v12 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!qword_100B6B648 || !*(qword_100B6B648 + 8))
    {
      sub_1000D660C();
      v3 = dword_100B6B644;
    }

    if (v3 >= 2 && (*a2 == dword_100B6B650 ? (v15 = *(a2 + 4) == word_100B6B654) : (v15 = 0), v15 && BYTE1(dword_100B6B660) == 1))
    {
      *(&dword_100B6B660 + 1) = 0;
      if (v3 == 3)
      {
        a3.n128_f64[0] = sub_1002FD3CC(1);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("SimplePairingComplete %:, %!", v16, v17, v18, v19, v20, v21, v22, a2);
      v23 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    (*(qword_100B6B648 + 8))(a2, a1, a3);
  }
}

uint64_t sub_100300CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *&v65 = a3;
  *(&v65 + 1) = a4;
  v64 = 0;
  if (sub_10000C240())
  {
    sub_1002380B8(&v65);
    sub_10000AF54("Enforce policy for %:, %s", v10, v11, v12, v13, v14, v15, v16, a2);
    v17 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10000C0FC();
      *buf = 136446210;
      v67 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (HIDWORD(xmmword_100BCE300))
  {
    v19 = dword_100B6B644 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    return 103;
  }

  if (qword_100B6B6A0 && *(qword_100B6B6A0 + 8))
  {
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1000D660C();
    if (!a1)
    {
LABEL_28:
      sub_1000D660C();
      return 101;
    }
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  if ((dword_100B6B644 - 2) < 4)
  {
    if (sub_10000C240())
    {
      v21 = sub_1002FF42C(dword_100B6B644);
      sub_10000AF54("State:  %s, Input Addr %:, Cur Addr %:, Pending Addr %:", v22, v23, v24, v25, v26, v27, v28, v21);
      v29 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = sub_10000C0FC();
        *buf = 136446210;
        v67 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (dword_100BCE210)
    {
      v31 = 0;
    }

    else
    {
      v31 = word_100BCE214 == 0;
    }

    if (v31)
    {
      v20 = 0;
      qword_100BCE208 = a1;
      v44 = *a2;
      word_100BCE214 = *(a2 + 4);
      dword_100BCE210 = v44;
      xmmword_100BCE218 = v65;
      LODWORD(qword_100BCE228) = a5;
      BYTE4(qword_100BCE228) = a6;
      return v20;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Security Mgr Busy with: Cur Addr %:, Pending Addr %:, Input Addr %:", v32, v33, v34, v35, v36, v37, v38, &dword_100B6B650);
      v39 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v20 = 1404;
    goto LABEL_43;
  }

  if (dword_100B6B644 == 1)
  {
    v41 = sub_10023DB58(a2, &v64);
    if (!v41)
    {
      v42 = word_100B6B6C6;
      if (word_100B6B6C6)
      {
        v43 = qword_100B6B638;
        while (*v43 != v64)
        {
          v43 += 2;
          if (!--v42)
          {
            goto LABEL_36;
          }
        }

LABEL_46:
        v62 = qword_100B6B6A0;
        if (!qword_100B6B6A0 || !*(qword_100B6B6A0 + 8))
        {
          sub_1000D660C();
          v62 = qword_100B6B6A0;
        }

        v63 = *a2;
        word_100B6B654 = *(a2 + 4);
        dword_100B6B650 = v63;
        qword_100B6B658 = v64;
        LOBYTE(dword_100B6B660) = 0;
        HIBYTE(dword_100B6B660) = (BYTE8(xmmword_100BCDFD8) > 3u) & *(v64 + 277);
        xmmword_100B6B668 = v65;
        dword_100B6B678 = a5;
        byte_100B6B67C = a6;
        dword_100B6B680 = (*(v62 + 8))(v65, *(&v65 + 1), a2);
        off_100B6B688 = a1;
        v20 = sub_1000228C0(sub_100301134, 0, 0);
        if (!v20)
        {
          dword_100B6B644 = 5;
          dword_100B6B690 = 0;
          return v20;
        }

        goto LABEL_43;
      }

LABEL_36:
      v41 = sub_1002FD6FC(v64, 0);
      if (!v41)
      {
        goto LABEL_46;
      }
    }

    v20 = v41;
  }

  else
  {
    if (sub_10000C240())
    {
      v45 = sub_1002FF42C(dword_100B6B644);
      sub_10000AF54("secmgrState %s (%d), %!", v46, v47, v48, v49, v50, v51, v52, v45);
      v53 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1000D660C();
    v20 = 105;
  }

LABEL_43:
  if (sub_10000C240())
  {
    sub_10000AF54("Enforce Policy error %!", v54, v55, v56, v57, v58, v59, v60, v20);
    v61 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v20;
}

void sub_100301134()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Deferred enforcement request", v0, v1, v2, v3, v4, v5, v6, v120);
    v7 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
    }
  }

  if (!qword_100B6B648 || !*(qword_100B6B648 + 32))
  {
    sub_1000D660C();
  }

  if (byte_100B6B6C4 == 1 && dword_100B6B6C0 != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Extended feature complete timed out!", v9, v10, v11, v12, v13, v14, v15, v120);
      v16 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    dword_100B6B6C0 = 0;
  }

  if (dword_100B6B644 != 5 && (!qword_100B6B658 || !sub_1000B8B5C(qword_100B6B658) && !sub_1000C0E08(qword_100B6B658) && !sub_1000ABD24(qword_100B6B658) && !sub_1000B7994(qword_100B6B658)))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Disconnection happened during enforcement, ignoring (enforcementFinish was already called).", v42, v43, v44, v45, v46, v47, v48, v120);
    v49 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_47:
    sub_10080F604();
    return;
  }

  if (!qword_100B6B658 || !sub_1000B8B5C(qword_100B6B658) && !sub_1000C0E08(qword_100B6B658) && !sub_1000ABD24(qword_100B6B658) && !sub_1000B7994(qword_100B6B658))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("HCI handle not valid can not enforce request", v25, v26, v27, v28, v29, v30, v31, v120);
    v32 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  if (!*(qword_100B6B658 + 148))
  {
    v50 = sub_10023B840(qword_100B6B658);
    if (v50)
    {
      v51 = v50;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DevMgr_aclActivity failed with %!", v52, v53, v54, v55, v56, v57, v58, v51);
        v59 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  if (dword_100B6B644 != 5)
  {
    sub_1000D660C();
  }

  if (dword_100B6B690)
  {
    sub_1000D660C();
  }

  if (!qword_100B6B6A0 || !*(qword_100B6B6A0 + 8))
  {
    sub_1000D660C();
  }

  if (dword_100B6B644 != 5)
  {
    if (!sub_10000C240())
    {
      return;
    }

    v33 = sub_1002FF42C(dword_100B6B644);
    sub_10000AF54("enforcementDeferredRequest - %s, %!", v34, v35, v36, v37, v38, v39, v40, v33);
    v41 = sub_10000C050(0x37u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  if (dword_100B6B690)
  {
    if (sub_10000C240())
    {
      if (dword_100B6B690 > 3)
      {
        v24 = "unknown";
      }

      else
      {
        v24 = off_100AEA2A8[dword_100B6B690];
      }

      sub_10000AF54("enforcementDeferredRequest - enforceSubstate %s, %!", v17, v18, v19, v20, v21, v22, v23, v24);
      v71 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v70 = 105;
    goto LABEL_64;
  }

  v60 = word_100B6B6C6;
  if (!word_100B6B6C6)
  {
LABEL_56:
    if (sub_10000C240())
    {
      sub_10000AF54("enforcementDeferredRequest - no connection %!", v62, v63, v64, v65, v66, v67, v68, 1408);
      v69 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v70 = 1408;
    goto LABEL_64;
  }

  v61 = qword_100B6B638 + 8;
  while (*(v61 - 8) != qword_100B6B658)
  {
    v61 += 16;
    if (!--v60)
    {
      goto LABEL_56;
    }
  }

  if (byte_100B6B67C != 1 || (*(qword_100B6B658 + 212) & 1) != 0)
  {
    buf = 0uLL;
    v125 = 0;
    v124 = 0;
    if (sub_1002D766C(&dword_100B6B650, &buf))
    {
      v72 = 1;
    }

    else
    {
      v72 = (*(qword_100B6B648 + 32))(&dword_100B6B650, &buf);
    }

    v73 = (BYTE8(xmmword_100BCDFD8) > 3u) & *(qword_100B6B658 + 277);
    if (sub_10000C240())
    {
      sub_10000AF54("Deferred security enforcement with linkKeyExists %d, remoteSupportsSSP %d, bothTwoDotOne %d, seclevel %d", v74, v75, v76, v77, v78, v79, v80, v72);
      v81 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *v121 = 136446210;
        v122 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, " %{public}s", v121, 0xCu);
      }
    }

    if ((dword_100B6B680 - 2) < 3)
    {
      goto LABEL_105;
    }

    if (dword_100B6B680 != 1)
    {
      if (dword_100B6B680)
      {
        if (sub_10000C240())
        {
          v83 = dword_100B6B680;
          sub_1002380B8(&off_100B6B668);
          sub_10000AF54("%d specified for %s, %!", v84, v85, v86, v87, v88, v89, v90, v83);
          v91 = sub_10000C050(0x37u);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v70 = 1418;
        goto LABEL_64;
      }

      goto LABEL_100;
    }

    if (v73)
    {
LABEL_105:
      if (sub_10000C240())
      {
        v82 = dword_100B6B680;
        sub_10030036C(HIBYTE(dword_100B6B660), dword_100B6B680, v125);
        sub_10000AF54("Security level %d: state %s, key %s sufficient", v111, v112, v113, v114, v115, v116, v117, v82);
        v118 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          v119 = sub_10000C0FC();
          *v121 = 136446210;
          v122 = v119;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, " %{public}s", v121, 0xCu);
        }
      }

      *(v61 + 4) = 1;
      if (((*v61 != 0) & v72) != 1 || !sub_10030036C(HIBYTE(dword_100B6B660), dword_100B6B680, v125))
      {
        sub_100301F48();
        return;
      }

      if (*v61 != 2)
      {
        sub_100301E10();
        return;
      }
    }

LABEL_100:
    v70 = 0;
LABEL_64:
    sub_1002FD8A0(v70);
    return;
  }

  if (byte_100B6B6C4 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Suspend enforcement due to missing extended feature", v92, v93, v94, v95, v96, v97, v98, v120);
      v99 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = sub_10000C0FC();
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v100;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }

    *(qword_100B6B658 + 329) = 1;
  }

  v101 = sub_10002195C(sub_100301134, 0, 3, &dword_100B6B6C0);
  if (v101)
  {
    v102 = v101;
    if (sub_10000C240())
    {
      sub_10000AF54("enforcementDeferredRequest - Could not register function %!", v103, v104, v105, v106, v107, v108, v109, v102);
      v110 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_10023BA68(&dword_100B6B650);
    v70 = 1421;
    goto LABEL_64;
  }
}

uint64_t sub_100301934(uint64_t result)
{
  if (qword_100B6B658 == result)
  {
    return sub_1000228C0(sub_100301964, 0, 0);
  }

  return result;
}

void sub_100301964()
{
  if (qword_100B6B658 && *(qword_100B6B658 + 329) == 1)
  {
    *(qword_100B6B658 + 329) = 0;
    if (dword_100B6B6C0)
    {
      sub_10002242C(dword_100B6B6C0);
      dword_100B6B6C0 = 0;
    }

    sub_100301134();
  }
}

uint64_t sub_1003019C4()
{
  v0 = sub_1002FF42C(dword_100B6B644);
  sub_100304AF8("\nsecmgrState: %s\n", v0);
  v1 = dword_100B6B644;
  if ((dword_100B6B644 - 2) <= 3)
  {
    sub_100304AF8("current context:\n");
    sub_100304AF8("   addr:          %:\n", &dword_100B6B650);
    sub_100304AF8("   hciHandle:     0x%x\n", &qword_100B6B658);
    sub_100304AF8("   mitm reqd:     %B\n", &dword_100B6B660);
    sub_100304AF8("   sspInProgress: %B\n", &dword_100B6B660 + 1);
    sub_100304AF8("   isRemoteSSP:   %B\n", &dword_100B6B660 + 2);
    v1 = dword_100B6B644;
  }

  switch(v1)
  {
    case 5:
      if (dword_100B6B690 > 3)
      {
        v3 = "unknown";
      }

      else
      {
        v3 = off_100AEA2A8[dword_100B6B690];
      }

      sub_100304AF8("   substate:      %s\n", v3);
      sub_100304AF8("   cookie:        0x%x\n", dword_100B6B678);
      sub_100304AF8("   incomingCnct:  %B\n", byte_100B6B67C);
      if (dword_100B6B680 > 4)
      {
        v4 = "unknown";
      }

      else
      {
        v4 = off_100AEA2C8[dword_100B6B680];
      }

      sub_100304AF8("   secLevel:      %s\n", v4);
      break;
    case 3:
      sub_100304AF8("   authReqs:      %d\n");
      goto LABEL_19;
    case 2:
      if (dword_100B6B670 > 6)
      {
        v2 = "unknown";
      }

      else
      {
        v2 = off_100AEA270[dword_100B6B670];
      }

      sub_100304AF8("   substate:      %s\n", v2);
      sub_100304AF8("   finalStatus:   %!\n", dword_100B6B674);
      break;
    default:
      goto LABEL_19;
  }

  sub_100304AF8("   callback:      0x%x\n");
LABEL_19:
  sub_100304AF8("bondable: %B\n", byte_100B6B641);
  sub_100304AF8("Connections known to secmgr: %d\n", word_100B6B6C6);
  if (word_100B6B6C6)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      sub_100304AF8("   %: ", *(qword_100B6B638 + v5) + 48);
      v7 = *(qword_100B6B638 + v5 + 8);
      v8 = "unknown";
      if (v7 <= 2)
      {
        v8 = off_100AEA2F0[v7];
      }

      sub_100304AF8(", state %s", v8);
      if (*(qword_100B6B638 + v5 + 13))
      {
        sub_100304AF8(", auto-rejecting");
      }

      sub_100304AF8("\n");
      ++v6;
      v5 += 16;
    }

    while (v6 < word_100B6B6C6);
  }

  sub_100304AF8("Pending Enforcement Req: %:, cb %x, cookie %x, incoming %d\n", &dword_100BCE210, qword_100BCE208, qword_100BCE228, BYTE4(qword_100BCE228));

  return sub_100304AF8("\n");
}

void sub_100301D18(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 + 8;
  v3 = sub_100300CD8(*v1, v1 + 8, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 36));
  if (v3 && v3 != 1301)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("PolicyEnforceReq failed addr %:, status %!", v4, v5, v6, v7, v8, v9, v10, v2);
      v11 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1003019C4();
    v12 = sub_10023BA68(v2);
    if (v12)
    {
      v13 = v12;
      if (sub_10000C240())
      {
        sub_10000AF54("PolicyEnforceReq Disconnect failed %!", v14, v15, v16, v17, v18, v19, v20, v13);
        v21 = sub_10000C050(0x37u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    sub_1000D660C();
  }
}

void sub_100301E10()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Send set encryption on", v0, v1, v2, v3, v4, v5, v6, v18);
    v7 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = sub_1000D6178(0x10u, v0, v1, v2, v3, v4, v5, v6, qword_100B6B658);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SetConnectionEncryption %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002FD8A0(v9);
  }

  else
  {
    dword_100B6B690 = 2;
  }
}

void sub_100301F48()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Send authentication request", v0, v1, v2, v3, v4, v5, v6, v18);
    v7 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = sub_1000D6178(0xFu, v0, v1, v2, v3, v4, v5, v6, qword_100B6B658);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_AuthenticationRequested %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002FD8A0(v9);
  }

  else
  {
    dword_100B6B690 = 1;
  }
}

void sub_10030207C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("bondingDisconnectCb %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  sub_1002FDA90(a1);
}

void sub_1003020F4(uint64_t a1)
{
  if (dword_100B6B644 != 2)
  {
    sub_1000D660C();
  }

  if (!xmmword_100B6B668)
  {
    sub_1000D660C();
  }

  if (!HIDWORD(xmmword_100B6B668))
  {
    HIDWORD(xmmword_100B6B668) = a1;
  }

  sub_10023BD68();
  DWORD2(xmmword_100B6B668) = 6;
  v2.n128_f64[0] = sub_1002FD3CC(1);
  v3 = xmmword_100B6B668;
  if (xmmword_100B6B668)
  {
    v4 = HIDWORD(xmmword_100B6B668);

    v3(v4, v2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("bondingFinishWriteAuthCB %!, %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

__int16 *sub_1003021E8(unint64_t a1)
{
  word_100B6B6C8 = 30768;
  v1 = a0123456789abcd[(a1 >> 8) & 0xF];
  byte_100B6B6CA = a0123456789abcd[a1 >> 12];
  byte_100B6B6CB = v1;
  byte_100B6B6CC = a0123456789abcd[a1 >> 4];
  byte_100B6B6CD = a0123456789abcd[a1 & 0xF];
  byte_100B6B6CE = 0;
  return &word_100B6B6C8;
}

const char *sub_100302240(unsigned int *a1)
{
  if (!a1)
  {
    return "invalid";
  }

  if (*a1 == 0x10000000000001 && *(a1 + 1) == 0x20000EE02000080)
  {
    return "SyncMLServer";
  }

  if (*a1 == 0x10000000000002 && *(a1 + 1) == 0x20000EE02000080)
  {
    return "SyncMLClient";
  }

  if (*a1 == 0xFECACADE00000000 && *(a1 + 1) == 0xFECACADEFECACADELL)
  {
    return "D2D";
  }

  if (*a1 == 0xDEFACADE00000000 && *(a1 + 1) == 0xFECACADEAFDECADELL)
  {
    return "WiapGateWay";
  }

  if (*a1 == 0xDEFACADE00000000 && *(a1 + 1) == 0xFFCACADEAFDECADELL)
  {
    return "WiapSink";
  }

  if (*a1 == 0x5F41191DC327ED08 && *(a1 + 1) == 0x770A6A10A222F286)
  {
    return "WiapGateWay_v2";
  }

  if (*a1 == 0x5F41191DC327ED08 && *(a1 + 1) == 0x780A6A10A222F286)
  {
    return "WiapSink_v2";
  }

  if (*a1 == 0x14DAD0B74EC2172 && *(a1 + 1) == 0x2A72E02B7B99778FLL)
  {
    return "AapServer";
  }

  if (*a1 == 0xDE49F4074B7C6F4BLL && *(a1 + 1) == 0x298F720443ABB9B0)
  {
    return "AapService";
  }

  if (*a1 == 0x364B2E573619F31FLL && *(a1 + 1) == 0xF4A61A9B40B2BFA2)
  {
    return "AapClient";
  }

  if (*a1 == 0x2A43B1001E0DE104 && *(a1 + 1) == 0x41F93A98BADD64B7)
  {
    return "Magnet";
  }

  if (*a1 == 0xA24041CD484388ECLL && *(a1 + 1) == 0xD31FBF505D572797)
  {
    return "Carplay";
  }

  if (*a1 == 0x1C454DE166248D2DLL && *(a1 + 1) == 0x1A29EAAB0173BC88)
  {
    return "CarplayGateway";
  }

  if (*(a1 + 1) == 0x8000008000100000 && a1[3] == -80438433)
  {
    return sub_10030253C(*a1);
  }

  else
  {
    return "unknown";
  }
}

const char *sub_10030253C(unint64_t a1)
{
  if (a1 > 4352)
  {
    if (a1 <= 4607)
    {
      switch(a1)
      {
        case 4353:
          result = "SerialPort";
          break;
        case 4354:
          result = "LANAccessUsingPPP";
          break;
        case 4355:
          result = "DialupNetworking";
          break;
        case 4356:
          result = "IrMCSync";
          break;
        case 4357:
          result = "OBEXObjectPush";
          break;
        case 4358:
          result = "OBEXFileTransfer";
          break;
        case 4359:
          result = "IrMCSyncCommand";
          break;
        case 4360:
          result = "Headset";
          break;
        case 4361:
          result = "CordlessTelephony";
          break;
        case 4362:
          result = "AudioSource";
          break;
        case 4363:
          result = "AudioSink";
          break;
        case 4364:
          result = "AV_RemoteControlTarget";
          break;
        case 4365:
          result = "AdvancedAudioDistribution";
          break;
        case 4366:
          result = "AV_RemoteControl";
          break;
        case 4367:
          result = "AV_RemoteControlController";
          break;
        case 4368:
          result = "Intercom";
          break;
        case 4369:
          result = "Fax";
          break;
        case 4370:
          result = "HeadsetAudioGateway";
          break;
        case 4371:
          result = "WAP";
          break;
        case 4372:
          result = "WAP_CLIENT";
          break;
        case 4373:
          result = "PANU";
          break;
        case 4374:
          result = "NAP";
          break;
        case 4375:
          result = "GN";
          break;
        case 4376:
          result = "DirectPrinting";
          break;
        case 4377:
          result = "ReferencePrinting";
          break;
        case 4378:
          result = "Imaging";
          break;
        case 4379:
          result = "ImagingResponder";
          break;
        case 4380:
          result = "ImagingAutomaticArchive";
          break;
        case 4381:
          result = "ImagingReferencedObjects";
          break;
        case 4382:
          result = "Handsfree";
          break;
        case 4383:
          result = "HandsfreeAudioGateway";
          break;
        case 4384:
          result = "DirectPrintingReferenceObjectsService";
          break;
        case 4385:
          result = "ReflectedUI";
          break;
        case 4386:
          result = "BasicPrinting";
          break;
        case 4387:
          result = "PrintingStatus";
          break;
        case 4388:
          result = "HumanInterfaceDeviceService";
          break;
        case 4389:
          result = "HardcopyCableReplacement";
          break;
        case 4390:
          result = "HCR_Print";
          break;
        case 4391:
          result = "HCR_Scan";
          break;
        case 4392:
          result = "Common_ISDN_Access";
          break;
        case 4393:
          result = "VideoConferencingGW";
          break;
        case 4394:
          result = "UID_MT";
          break;
        case 4395:
          result = "UID_TA";
          break;
        case 4396:
          result = "Audio_Video";
          break;
        case 4397:
          result = "SIM_Access";
          break;
        case 4398:
          result = "PhonebookAccessClient";
          break;
        case 4399:
          result = "PhonebookAccessServer";
          break;
        case 4400:
          result = "PhonebookAccess";
          break;
        case 4401:
          result = "Headset_HS";
          break;
        case 4402:
          result = "Message_Access_Server";
          break;
        case 4403:
          result = "OI_UUID_Message_Notification_Server";
          break;
        case 4404:
          result = "OI_UUID_Message_Access_Profile";
          break;
        default:
          goto LABEL_122;
      }

      return result;
    }

    if (a1 <= 4864)
    {
      if (a1 <= 4611)
      {
        if (a1 > 4609)
        {
          if (a1 == 4610)
          {
            return "GenericFileTransfer";
          }

          else
          {
            return "GenericAudio";
          }
        }

        else if (a1 == 4608)
        {
          return "PnPInformation";
        }

        else
        {
          return "GenericNetworking";
        }
      }

      if (a1 <= 4613)
      {
        if (a1 == 4612)
        {
          return "GenericTelephony";
        }

        else
        {
          return "UPNP_Service";
        }
      }

      if (a1 == 4614)
      {
        return "UPNP_IP_Service";
      }

      if (a1 == 4864)
      {
        return "ESDP_UPNP_IP_PAN";
      }
    }

    else
    {
      if (a1 <= 4868)
      {
        if (a1 > 4866)
        {
          if (a1 == 4867)
          {
            return "VideoSource";
          }

          else
          {
            return "VideoSink";
          }
        }

        else if (a1 == 4865)
        {
          return "ESDP_UPNP_IP_LAP";
        }

        else
        {
          return "ESDP_UPNP_IP_L2CAP";
        }
      }

      if (a1 <= 5120)
      {
        if (a1 == 4869)
        {
          return "VideoDistribution";
        }

        if (a1 == 5120)
        {
          return "Health_Device_Profile";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x1401:
            return "Health_Device_Profile_Source";
          case 0x1402:
            return "Health_Device_Profile_Sink";
          case 0x1801:
            return "GATT";
        }
      }
    }

LABEL_122:
    result = &word_100B6B6C8;
    word_100B6B6C8 = 30768;
    byte_100B6B6CA = a0123456789abcd[a1 >> 12];
    byte_100B6B6CB = a0123456789abcd[(a1 >> 8) & 0xF];
    byte_100B6B6CC = a0123456789abcd[a1 >> 4];
    byte_100B6B6CD = a0123456789abcd[a1 & 0xF];
    byte_100B6B6CE = 0;
    return result;
  }

  if (a1 > 255)
  {
    if (a1 > 4096)
    {
      if (a1 == 4097)
      {
        return "BrowseGroupDescriptorServiceClassID";
      }

      if (a1 == 4098)
      {
        return "PublicBrowseGroup";
      }
    }

    else
    {
      if (a1 == 256)
      {
        return "L2CAP";
      }

      if (a1 == 4096)
      {
        return "ServiceDiscoveryServerServiceClassID";
      }
    }

    goto LABEL_122;
  }

  result = "NULL";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "SDP";
      break;
    case 2:
      result = "UDP";
      break;
    case 3:
      result = "RFCOMM";
      break;
    case 4:
      result = "TCP";
      break;
    case 5:
      result = "TCS_BIN";
      break;
    case 6:
      result = "TCS_AT";
      break;
    case 8:
      result = "OBEX";
      break;
    case 9:
      result = "IP";
      break;
    case 10:
      result = "FTP";
      break;
    case 12:
      result = "HTTP";
      break;
    case 14:
      result = "WSP";
      break;
    case 15:
      result = "BNEP";
      break;
    case 16:
      result = "UPNP";
      break;
    case 17:
      result = "HIDP";
      break;
    case 18:
      result = "HardcopyControlChannel";
      break;
    case 20:
      result = "HardcopyDataChannel";
      break;
    case 22:
      result = "HardcopyNotification";
      break;
    case 23:
      result = "AVCTP";
      break;
    case 25:
      result = "AVDTP";
      break;
    default:
      goto LABEL_122;
  }

  return result;
}

void sub_100302BB4(uint64_t a1)
{
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      *(a1 + 16) = v1[1];
      v4 = *(a1 + 8);
      if (v4)
      {
        v4(*v1);
      }

      sub_10000C1E8(v1);
      v1 = *v2;
    }

    while (*v2);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}