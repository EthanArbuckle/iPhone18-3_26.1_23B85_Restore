uint64_t sub_100272E84(char a1, uint64_t a2, uint64_t (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v7 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v7) = 3;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v8 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v8) = a1;
                if (HIBYTE(v16))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v16) - WORD2(v16) > 5)
                {
                  if (BYTE6(v16) == 2)
                  {
                    sub_1000075EC((v15 + WORD2(v16)), a2, 6uLL);
                    WORD2(v16) += 6;
                    return sub_100020078(233, v15, BYTE4(v16), a3, sub_100022AD0, v9, v10, v11);
                  }

                  v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3169, v14);
                }

                v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_24;
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3168, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3167, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100273070(uint64_t (*a1)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    if (HIBYTE(v9))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v9);
      if (WORD1(v9) > WORD2(v9))
      {
        if (BYTE6(v9) == 2)
        {
          ++WORD2(v9);
          *(v8 + v6) = 4;
          return sub_100020078(233, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3182, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100273148(uint64_t (*a1)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 7;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v7 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v7) = 2;
                if (HIBYTE(v16))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v16) - WORD2(v16) > 5)
                {
                  if (BYTE6(v16) == 2)
                  {
                    v8 = v15 + WORD2(v16);
                    *(v8 + 4) = 0;
                    *v8 = 0;
                    v9 = WORD2(v16);
                    v10 = WORD2(v16) + 6;
                    WORD2(v16) += 6;
                    if (HIBYTE(v16))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v16) > v10)
                    {
                      if (BYTE6(v16) == 2)
                      {
                        WORD2(v16) = v9 + 7;
                        *(v15 + v10) = 2;
                        return sub_100020078(233, v15, BYTE4(v16), a1, sub_100022AD0, v3, v4, v5);
                      }

                      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3236, v14);
                    }

                    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3235, v13);
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3234, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3233, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002733A0(uint64_t a1, unsigned int a2, int a3, uint64_t (*a4)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v30))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_38;
  }

  v12 = WORD2(v30);
  if (WORD1(v30) <= WORD2(v30))
  {
LABEL_38:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_40;
  }

  if (BYTE6(v30) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3250, v23);
  }

  ++WORD2(v30);
  *(v29 + v12) = 7;
  if (a3)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v13 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3253, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_58;
  }

  if (HIBYTE(v30))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_56;
  }

  v13 = WORD2(v30);
  if (WORD1(v30) <= WORD2(v30))
  {
LABEL_56:
    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_60;
  }

  if (BYTE6(v30) != 2)
  {
    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3255, v28);
  }

  v14 = 1;
LABEL_14:
  WORD2(v30) = v13 + 1;
  *(v29 + v13) = v14;
  if (HIBYTE(v30))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_42;
  }

  if (WORD1(v30) - WORD2(v30) <= 5)
  {
LABEL_42:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_44;
  }

  if (BYTE6(v30) != 2)
  {
    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3257, v24);
  }

  v15 = v29 + WORD2(v30);
  *(v15 + 4) = 0;
  *v15 = 0;
  v16 = WORD2(v30);
  v17 = WORD2(v30) + 6;
  WORD2(v30) += 6;
  if (HIBYTE(v30))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_46;
  }

  if (WORD1(v30) <= v17)
  {
LABEL_46:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_48;
  }

  if (BYTE6(v30) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3258, v25);
  }

  WORD2(v30) = v16 + 7;
  *(v29 + v17) = 2;
  if (HIBYTE(v30))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_50;
  }

  v18 = WORD2(v30);
  if (WORD1(v30) <= WORD2(v30))
  {
LABEL_50:
    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_52;
  }

  if (BYTE6(v30) != 2)
  {
    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3259, v26);
  }

  ++WORD2(v30);
  *(v29 + v18) = 0;
  if (a2 == 2 || a2 == 16 || (sub_1000D660C(), a2))
  {
    v19 = a2;
    while (!HIBYTE(v30))
    {
      v20 = WORD2(v30);
      if (WORD1(v30) <= WORD2(v30))
      {
        goto LABEL_35;
      }

      if (BYTE6(v30) != 2)
      {
        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_36;
      }

      v21 = *(a1 - 1 + v19--);
      ++WORD2(v30);
      *(v29 + v20) = v21;
      if ((v19 + 1) <= 1)
      {
        return sub_100020078(233, v29, BYTE4(v30), a4, sub_100022AD0, v9, v10, v11);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_35:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_36:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3267, v22);
  }

  return sub_100020078(233, v29, BYTE4(v30), a4, sub_100022AD0, v9, v10, v11);
}

uint64_t sub_1002737A0(uint64_t (*a1)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    if (HIBYTE(v9))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v9);
      if (WORD1(v9) > WORD2(v9))
      {
        if (BYTE6(v9) == 2)
        {
          ++WORD2(v9);
          *(v8 + v6) = 28;
          return sub_100020078(233, v8, BYTE4(v9), a1, sub_10025CF64, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3354, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100273878(const void *a1, int a2, char a3, uint64_t (*a4)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v9 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v9) = 29;
          v10 = v33;
          v11 = WORD2(v34);
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            v12 = 0;
          }

          else
          {
            v12 = WORD1(v34) - WORD2(v34);
          }

          if (v12 < a2)
          {
            v28 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v34) == 2)
            {
              memmove((v10 + v11), a1, a2);
              v13 = WORD2(v34) + a2;
              WORD2(v34) += a2;
              v14 = v33;
              if (HIBYTE(v34))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v15 = 0;
              }

              else
              {
                v15 = WORD1(v34) - v13;
              }

              v16 = 21 - a2;
              if (v15 < 21 - a2)
              {
                v29 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v34) == 2)
                {
                  bzero((v14 + v13), v16);
                  v17 = WORD2(v34) + v16;
                  WORD2(v34) += v16;
                  v18 = v33;
                  if (HIBYTE(v34))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    v19 = 0;
                  }

                  else
                  {
                    v19 = WORD1(v34) - v17;
                  }

                  if (v19 < a2)
                  {
                    v30 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v34) == 2)
                    {
                      memset((v18 + v17), 255, a2);
                      v20 = WORD2(v34) + a2;
                      WORD2(v34) = v20;
                      v21 = v33;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        v22 = 0;
                      }

                      else
                      {
                        v22 = WORD1(v34) - v20;
                      }

                      if (v22 < v16)
                      {
                        v31 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                      }

                      else
                      {
                        if (BYTE6(v34) == 2)
                        {
                          bzero((v21 + v20), v16);
                          v26 = WORD2(v34) + v16;
                          WORD2(v34) += v16;
                          if (HIBYTE(v34))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v34) > v26)
                          {
                            if (BYTE6(v34) == 2)
                            {
                              WORD2(v34) = v26 + 1;
                              *(v33 + v26) = a3;
                              return sub_100020078(233, v33, BYTE4(v34), a4, sub_100022AD0, v23, v24, v25);
                            }

                            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3373, v32);
                          }

                          v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_49;
                        }

                        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3372, v31);
                    }

                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3371, v30);
                }

                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3370, v29);
            }

            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3369, v28);
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3368, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_100273C38(const void *a1, int a2, uint64_t (*a3)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v7 = WORD2(v26);
      if (WORD1(v26) > WORD2(v26))
      {
        if (BYTE6(v26) == 2)
        {
          ++WORD2(v26);
          *(v25 + v7) = 31;
          v8 = v25;
          v9 = WORD2(v26);
          if (HIBYTE(v26))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            v10 = 0;
          }

          else
          {
            v10 = WORD1(v26) - WORD2(v26);
          }

          if (v10 < a2)
          {
            v22 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v26) == 2)
            {
              memmove((v8 + v9), a1, a2);
              v11 = WORD2(v26) + a2;
              WORD2(v26) += a2;
              v12 = v25;
              if (HIBYTE(v26))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v13 = 0;
              }

              else
              {
                v13 = WORD1(v26) - v11;
              }

              v14 = 21 - a2;
              if (v13 < 21 - a2)
              {
                v23 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v26) == 2)
                {
                  bzero((v12 + v11), v14);
                  v15 = WORD2(v26) + v14;
                  WORD2(v26) += v14;
                  v16 = v25;
                  if (HIBYTE(v26))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    v17 = 0;
                  }

                  else
                  {
                    v17 = WORD1(v26) - v15;
                  }

                  if (v17 < a2)
                  {
                    v24 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v26) == 2)
                    {
                      memset((v16 + v15), 255, a2);
                      WORD2(v26) += a2;
                      return sub_100020078(233, v25, BYTE4(v26), a3, sub_100022AD0, v18, v19, v20);
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3390, v24);
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3389, v23);
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3388, v22);
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3387, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100273EE4(uint64_t (*a1)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    if (HIBYTE(v9))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v9);
      if (WORD1(v9) > WORD2(v9))
      {
        if (BYTE6(v9) == 2)
        {
          ++WORD2(v9);
          *(v8 + v6) = 32;
          return sub_100020078(233, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3404, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100273FBC(const void *a1, int a2, const void *a3, int a4, char a5, char a6, int a7, int a8, uint64_t a9, uint64_t (*a10)())
{
  v54 = 0;
  v55 = 0;
  result = sub_10001FFD8(&v54);
  if (!result)
  {
    if (a7)
    {
      if (HIBYTE(v55))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v19 = WORD2(v55);
        if (WORD1(v55) > WORD2(v55))
        {
          if (BYTE6(v55) == 2)
          {
            v20 = 50;
            goto LABEL_11;
          }

          v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3419, v51);
        }
      }

      v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_80;
    }

    if (HIBYTE(v55))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v19 = WORD2(v55);
      if (WORD1(v55) > WORD2(v55))
      {
        if (BYTE6(v55) == 2)
        {
          v20 = 51;
LABEL_11:
          WORD2(v55) = v19 + 1;
          *(v54 + v19) = v20;
          if (a8)
          {
            if (HIBYTE(v55))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v21 = WORD2(v55);
              if (WORD1(v55) > WORD2(v55))
              {
                v22 = BYTE6(v55);
                if (BYTE6(v55) != 2)
                {
                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_85;
                }

LABEL_20:
                WORD2(v55) = v21 + 1;
                *(v54 + v21) = v22;
                if (HIBYTE(v55))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v55) - WORD2(v55) > 5)
                {
                  if (BYTE6(v55) == 2)
                  {
                    v24 = v54 + WORD2(v55);
                    *(v24 + 4) = 0;
                    *v24 = 0;
                    v25 = WORD2(v55) + 6;
                    WORD2(v55) += 6;
                    v26 = v54;
                    if (HIBYTE(v55))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v27 = 0;
                    }

                    else
                    {
                      v27 = WORD1(v55) - v25;
                    }

                    if (v27 < a2)
                    {
                      v45 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v55) == 2)
                      {
                        memmove((v26 + v25), a1, a2);
                        v28 = WORD2(v55) + a2;
                        WORD2(v55) += a2;
                        v29 = v54;
                        if (HIBYTE(v55))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v30 = 0;
                        }

                        else
                        {
                          v30 = WORD1(v55) - v28;
                        }

                        v31 = 22 - a2;
                        if (v30 < v31)
                        {
                          v46 = "ByteStream_NumReadBytesAvail(bs) >= (22 - dataLen)";
                        }

                        else
                        {
                          if (BYTE6(v55) == 2)
                          {
                            bzero((v29 + v28), v31);
                            v32 = WORD2(v55) + v31;
                            WORD2(v55) = v32;
                            v33 = v54;
                            if (HIBYTE(v55))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v34 = 0;
                            }

                            else
                            {
                              v34 = WORD1(v55) - v32;
                            }

                            if (v34 < a4)
                            {
                              v47 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v55) == 2)
                              {
                                memmove((v33 + v32), a3, a4);
                                v35 = WORD2(v55) + a4;
                                WORD2(v55) += a4;
                                v36 = v54;
                                if (HIBYTE(v55))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  v37 = 0;
                                }

                                else
                                {
                                  v37 = WORD1(v55) - v35;
                                }

                                v38 = 22 - a4;
                                if (v37 < v38)
                                {
                                  v48 = "ByteStream_NumReadBytesAvail(bs) >= (22 - maskLen)";
                                }

                                else
                                {
                                  if (BYTE6(v55) == 2)
                                  {
                                    bzero((v36 + v35), v38);
                                    v42 = WORD2(v55) + v38;
                                    WORD2(v55) += v38;
                                    if (HIBYTE(v55))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v55) > v42)
                                    {
                                      if (BYTE6(v55) == 2)
                                      {
                                        WORD2(v55) = v42 + 1;
                                        *(v54 + v42) = a5;
                                        if (HIBYTE(v55))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v43 = WORD2(v55);
                                          if (WORD1(v55) > WORD2(v55))
                                          {
                                            if (BYTE6(v55) == 2)
                                            {
                                              ++WORD2(v55);
                                              *(v54 + v43) = a6;
                                              return sub_100020078(233, v54, BYTE4(v55), a10, sub_100022AD0, v39, v40, v41);
                                            }

                                            v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3436, v50);
                                          }
                                        }

                                        v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_74;
                                      }

                                      v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3435, v49);
                                    }

                                    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_70;
                                  }

                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                }

                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3434, v48);
                              }

                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3433, v47);
                          }

                          v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3432, v46);
                      }

                      v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3431, v45);
                  }

                  v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3430, v44);
                }

                v44 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
                goto LABEL_54;
              }
            }

            v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_85:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3425, v23);
          }

          if (HIBYTE(v55))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v21 = WORD2(v55);
            if (WORD1(v55) > WORD2(v55))
            {
              if (BYTE6(v55) == 2)
              {
                v22 = 3;
                goto LABEL_20;
              }

              v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3427, v53);
            }
          }

          v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_89;
        }

        v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3421, v52);
      }
    }

    v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_82;
  }

  return result;
}

uint64_t sub_1002745DC(_WORD *a1, char a2, char a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 48;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v13 = WORD2(v21);
            if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                ++WORD2(v21);
                *(v20 + v13) = a2;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v21) - WORD2(v21) > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + WORD2(v21)) = *a1;
                    v14 = WORD2(v21);
                    v15 = WORD2(v21) + 2;
                    WORD2(v21) += 2;
                    if (HIBYTE(v21))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v21) > v15)
                    {
                      if (BYTE6(v21) == 2)
                      {
                        WORD2(v21) = v14 + 3;
                        *(v20 + v15) = a3;
                        return sub_100020078(233, v20, BYTE4(v21), a4, sub_100022AD0, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3453, v19);
                    }

                    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3452, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3451, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3450, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100274850(uint64_t a1, char a2, uint64_t (*a3)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v7 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v7) = 12;
          v18[0] = BYTE5(a1);
          v18[1] = BYTE4(a1);
          v18[2] = BYTE3(a1);
          v18[3] = BYTE2(a1);
          v18[4] = BYTE1(a1);
          v18[5] = a1;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v20) - WORD2(v20) > 5)
          {
            if (BYTE6(v20) == 2)
            {
              sub_1000075EC((v19 + WORD2(v20)), v18, 6uLL);
              v11 = WORD2(v20);
              v12 = WORD2(v20) + 6;
              WORD2(v20) += 6;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v20) > v12)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v11 + 7;
                  *(v19 + v12) = BYTE6(a1);
                  if (HIBYTE(v20))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v13 = WORD2(v20);
                    if (WORD1(v20) > WORD2(v20))
                    {
                      if (BYTE6(v20) == 2)
                      {
                        ++WORD2(v20);
                        *(v19 + v13) = a2;
                        return sub_100020078(233, v19, BYTE4(v20), a3, sub_10025EF10, v8, v9, v10);
                      }

                      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3490, v17);
                    }
                  }

                  v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3489, v16);
              }

              v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3488, v15);
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3485, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100274AE4(uint64_t a1, uint64_t (*a2)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v5 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v5) = 52;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v6 = WORD2(v27);
            if (WORD1(v27) > WORD2(v27))
            {
              if (BYTE6(v27) == 2)
              {
                v7 = *(a1 + 20);
                ++WORD2(v27);
                *(v26 + v6) = v7;
                if (HIBYTE(v27))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v27) - WORD2(v27) > 5)
                {
                  if (BYTE6(v27) == 2)
                  {
                    sub_1000075EC((v26 + WORD2(v27)), *a1, 6uLL);
                    v11 = WORD2(v27) + 6;
                    WORD2(v27) += 6;
                    if (HIBYTE(v27))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v27) - v11 > 1)
                    {
                      if (BYTE6(v27) == 2)
                      {
                        *(v26 + v11) = *(a1 + 8);
                        *(v26 + WORD2(v27) + 1) = *(a1 + 9);
                        v12 = WORD2(v27) + 2;
                        WORD2(v27) += 2;
                        if (HIBYTE(v27))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v27) - v12 > 1)
                        {
                          if (BYTE6(v27) == 2)
                          {
                            *(v26 + v12) = *(a1 + 10);
                            *(v26 + WORD2(v27) + 1) = *(a1 + 11);
                            v13 = WORD2(v27) + 2;
                            WORD2(v27) += 2;
                            if (HIBYTE(v27))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else if (WORD1(v27) - v13 > 1)
                            {
                              if (BYTE6(v27) == 2)
                              {
                                *(v26 + v13) = *(a1 + 12);
                                *(v26 + WORD2(v27) + 1) = *(a1 + 13);
                                v14 = WORD2(v27) + 2;
                                WORD2(v27) += 2;
                                if (HIBYTE(v27))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else if (WORD1(v27) - v14 > 1)
                                {
                                  if (BYTE6(v27) == 2)
                                  {
                                    *(v26 + v14) = *(a1 + 14);
                                    *(v26 + WORD2(v27) + 1) = *(a1 + 15);
                                    v15 = WORD2(v27) + 2;
                                    WORD2(v27) += 2;
                                    if (HIBYTE(v27))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v27) - v15 > 1)
                                    {
                                      if (BYTE6(v27) == 2)
                                      {
                                        *(v26 + v15) = *(a1 + 16);
                                        *(v26 + WORD2(v27) + 1) = *(a1 + 17);
                                        v16 = WORD2(v27) + 2;
                                        WORD2(v27) += 2;
                                        if (HIBYTE(v27))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else if (WORD1(v27) - v16 > 1)
                                        {
                                          if (BYTE6(v27) == 2)
                                          {
                                            *(v26 + v16) = *(a1 + 18);
                                            *(v26 + WORD2(v27) + 1) = *(a1 + 19);
                                            WORD2(v27) += 2;
                                            return sub_100020078(233, v26, BYTE4(v27), a2, sub_100022AD0, v8, v9, v10);
                                          }

                                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3750, v25);
                                        }

                                        v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_66;
                                      }

                                      v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3749, v24);
                                    }

                                    v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_62;
                                  }

                                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3748, v23);
                                }

                                v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_58;
                              }

                              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3747, v22);
                            }

                            v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_54;
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3746, v21);
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_50;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3745, v20);
                    }

                    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_46;
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3744, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_42;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3743, v18);
            }
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_38;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3742, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100275058(uint64_t a1, uint64_t (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 53;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 1;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(233, v16, BYTE4(v17), a2, sub_100022AD0, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3792, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3788, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3787, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3786, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002752E4(const void *a1, int a2, const void *a3, int a4, char a5, char a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, char a18, uint64_t (*a19)())
{
  v67 = 0;
  v68 = 0;
  result = sub_10001FFD8(&v67);
  if (!result)
  {
    if (a7)
    {
      if (HIBYTE(v68))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v28 = WORD2(v68);
        if (WORD1(v68) > WORD2(v68))
        {
          if (BYTE6(v68) == 2)
          {
            v29 = 55;
            goto LABEL_11;
          }

          v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_99:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3824, v64);
        }
      }

      v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_99;
    }

    if (HIBYTE(v68))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v28 = WORD2(v68);
      if (WORD1(v68) > WORD2(v68))
      {
        if (BYTE6(v68) == 2)
        {
          v29 = 56;
LABEL_11:
          WORD2(v68) = v28 + 1;
          *(v67 + v28) = v29;
          if (HIBYTE(v68))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v30 = WORD2(v68);
            if (WORD1(v68) > WORD2(v68))
            {
              if (BYTE6(v68) == 2)
              {
                ++WORD2(v68);
                *(v67 + v30) = a8;
                v66[0] = a14;
                v66[1] = a13;
                v66[2] = a12;
                v66[3] = a11;
                v66[4] = a10;
                v66[5] = a9;
                if (HIBYTE(v68))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v68) - WORD2(v68) > 5)
                {
                  if (BYTE6(v68) == 2)
                  {
                    sub_1000075EC((v67 + WORD2(v68)), v66, 6uLL);
                    v31 = WORD2(v68) + 6;
                    WORD2(v68) += 6;
                    v32 = v67;
                    if (HIBYTE(v68))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v33 = 0;
                    }

                    else
                    {
                      v33 = WORD1(v68) - v31;
                    }

                    if (v33 < a2)
                    {
                      v55 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v68) == 2)
                      {
                        memmove((v32 + v31), a1, a2);
                        v34 = WORD2(v68) + a2;
                        WORD2(v68) += a2;
                        v35 = v67;
                        if (HIBYTE(v68))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v36 = 0;
                        }

                        else
                        {
                          v36 = WORD1(v68) - v34;
                        }

                        v37 = 22 - a2;
                        if (v36 < v37)
                        {
                          v56 = "ByteStream_NumReadBytesAvail(bs) >= (22 - dataLen)";
                        }

                        else
                        {
                          if (BYTE6(v68) == 2)
                          {
                            bzero((v35 + v34), v37);
                            v38 = WORD2(v68) + v37;
                            WORD2(v68) = v38;
                            v39 = v67;
                            if (HIBYTE(v68))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v40 = 0;
                            }

                            else
                            {
                              v40 = WORD1(v68) - v38;
                            }

                            if (v40 < a4)
                            {
                              v57 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v68) == 2)
                              {
                                memmove((v39 + v38), a3, a4);
                                v41 = WORD2(v68) + a4;
                                WORD2(v68) += a4;
                                v42 = v67;
                                if (HIBYTE(v68))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  v43 = 0;
                                }

                                else
                                {
                                  v43 = WORD1(v68) - v41;
                                }

                                v44 = 22 - a4;
                                if (v43 < v44)
                                {
                                  v58 = "ByteStream_NumReadBytesAvail(bs) >= (22 - maskLen)";
                                }

                                else
                                {
                                  if (BYTE6(v68) == 2)
                                  {
                                    bzero((v42 + v41), v44);
                                    v48 = WORD2(v68) + v44;
                                    WORD2(v68) += v44;
                                    if (HIBYTE(v68))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v68) > v48)
                                    {
                                      if (BYTE6(v68) == 2)
                                      {
                                        WORD2(v68) = v48 + 1;
                                        *(v67 + v48) = a5;
                                        if (HIBYTE(v68))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v49 = WORD2(v68);
                                          if (WORD1(v68) > WORD2(v68))
                                          {
                                            if (BYTE6(v68) == 2)
                                            {
                                              ++WORD2(v68);
                                              *(v67 + v49) = a6;
                                              if (HIBYTE(v68))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v50 = WORD2(v68);
                                                if (WORD1(v68) > WORD2(v68))
                                                {
                                                  if (BYTE6(v68) == 2)
                                                  {
                                                    ++WORD2(v68);
                                                    *(v67 + v50) = a16;
                                                    if (HIBYTE(v68))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v51 = WORD2(v68);
                                                      if (WORD1(v68) > WORD2(v68))
                                                      {
                                                        if (BYTE6(v68) == 2)
                                                        {
                                                          ++WORD2(v68);
                                                          *(v67 + v51) = a17;
                                                          if (HIBYTE(v68))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                          }

                                                          else
                                                          {
                                                            v52 = WORD2(v68);
                                                            if (WORD1(v68) > WORD2(v68))
                                                            {
                                                              if (BYTE6(v68) == 2)
                                                              {
                                                                ++WORD2(v68);
                                                                *(v67 + v52) = a18;
                                                                return sub_100020078(233, v67, BYTE4(v68), a19, sub_100022AD0, v45, v46, v47);
                                                              }

                                                              v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3841, v63);
                                                            }
                                                          }

                                                          v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                          goto LABEL_93;
                                                        }

                                                        v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3840, v62);
                                                      }
                                                    }

                                                    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_89;
                                                  }

                                                  v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3839, v61);
                                                }
                                              }

                                              v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_85;
                                            }

                                            v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3838, v60);
                                          }
                                        }

                                        v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_81;
                                      }

                                      v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3837, v59);
                                    }

                                    v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_77;
                                  }

                                  v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                }

                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3836, v58);
                              }

                              v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3835, v57);
                          }

                          v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3834, v56);
                      }

                      v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3833, v55);
                  }

                  v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3832, v54);
                }

                v54 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_61;
              }

              v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3829, v53);
            }
          }

          v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_57;
        }

        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3826, v65);
      }
    }

    v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_101;
  }

  return result;
}

uint64_t sub_100275A40(uint64_t (*a1)())
{
  v8 = 0;
  v9 = 0;
  result = sub_10001FFD8(&v8);
  if (!result)
  {
    if (HIBYTE(v9))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v9);
      if (WORD1(v9) > WORD2(v9))
      {
        if (BYTE6(v9) == 2)
        {
          ++WORD2(v9);
          *(v8 + v6) = 57;
          return sub_100020078(233, v8, BYTE4(v9), a1, sub_10025D074, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3908, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100275B18(char a1, int a2, uint64_t (*a3)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v10 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v10) = a1;
          if (a2 != 1)
          {
            v12 = 571;
            return sub_100020078(v12, v15, BYTE4(v16), a3, sub_10025F270, v7, v8, v9);
          }

          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v11 = WORD2(v16);
            if (WORD1(v16) > WORD2(v16))
            {
              if (BYTE6(v16) == 2)
              {
                ++WORD2(v16);
                *(v15 + v11) = 0;
                v12 = 583;
                return sub_100020078(v12, v15, BYTE4(v16), a3, sub_10025F270, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3928, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3923, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100275C84(char a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v10 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v10) = a1;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v11 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v11) = a2;
                return sub_100020078(583, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3943, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3942, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100275DE0(char a1, uint64_t a2, char a3, uint64_t (*a4)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v9 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v9) = a1;
          v18[0] = BYTE5(a2);
          v18[1] = BYTE4(a2);
          v18[2] = BYTE3(a2);
          v18[3] = BYTE2(a2);
          v18[4] = BYTE1(a2);
          v18[5] = a2;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v20) - WORD2(v20) > 5)
          {
            if (BYTE6(v20) == 2)
            {
              sub_1000075EC((v19 + WORD2(v20)), v18, 6uLL);
              v13 = WORD2(v20);
              v14 = WORD2(v20) + 6;
              WORD2(v20) += 6;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v20) > v14)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v13 + 7;
                  *(v19 + v14) = a3;
                  return sub_100020078(555, v19, BYTE4(v20), a4, sub_100022AD0, v10, v11, v12);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3962, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3961, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3958, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100275FF8(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(554, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4002, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002760D0(unsigned __int8 *a1, uint64_t (*a2)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    v5 = *a1;
    if (v5 != 3)
    {
      if (v5 == 1)
      {
        if (HIBYTE(v40))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else
        {
          v6 = WORD2(v40);
          if (WORD1(v40) > WORD2(v40))
          {
            if (BYTE6(v40) == 2)
            {
              v7 = 74;
              goto LABEL_16;
            }

            v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4018, v33);
          }
        }

        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_79;
      }

      if (HIBYTE(v40))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v6 = WORD2(v40);
        if (WORD1(v40) > WORD2(v40))
        {
          if (BYTE6(v40) == 2)
          {
            v7 = 92;
LABEL_16:
            WORD2(v40) = v6 + 1;
            *(v39 + v6) = v7;
            if (HIBYTE(v40))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v8 = WORD2(v40);
              if (WORD1(v40) > WORD2(v40))
              {
                if (BYTE6(v40) == 2)
                {
                  v9 = a1[16];
                  ++WORD2(v40);
                  *(v39 + v8) = v9;
                  if (HIBYTE(v40))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v40) - WORD2(v40) > 5)
                  {
                    if (BYTE6(v40) == 2)
                    {
                      sub_1000075EC((v39 + WORD2(v40)), *(a1 + 1), 6uLL);
                      v13 = WORD2(v40);
                      v14 = WORD2(v40) + 6;
                      WORD2(v40) += 6;
                      if (HIBYTE(v40))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v40) > v14)
                      {
                        if (BYTE6(v40) == 2)
                        {
                          v15 = a1[17];
                          WORD2(v40) = v13 + 7;
                          *(v39 + v14) = v15;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v40) > WORD2(v40))
                          {
                            if (BYTE6(v40) == 2)
                            {
                              *(v39 + WORD2(v40)) = a1[18];
                              v16 = WORD2(v40);
                              v17 = ++WORD2(v40);
                              if (HIBYTE(v40))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v40) > v17)
                              {
                                if (BYTE6(v40) == 2)
                                {
                                  v18 = a1[19];
                                  WORD2(v40) = v16 + 2;
                                  *(v39 + v17) = v18;
                                  if (*a1 < 2u)
                                  {
                                    return sub_100020078(233, v39, BYTE4(v40), a2, sub_100022AD0, v10, v11, v12);
                                  }

                                  if (HIBYTE(v40))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v19 = WORD2(v40);
                                    if (WORD1(v40) > WORD2(v40))
                                    {
                                      if (BYTE6(v40) == 2)
                                      {
                                        v20 = a1[20];
                                        ++WORD2(v40);
                                        *(v39 + v19) = v20;
                                        if (*a1 == 3)
                                        {
                                          if (HIBYTE(v40))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v21 = WORD2(v40);
                                            if (WORD1(v40) > WORD2(v40))
                                            {
                                              if (BYTE6(v40) == 2)
                                              {
                                                v22 = a1[21];
                                                ++WORD2(v40);
                                                *(v39 + v21) = v22;
                                                if (HIBYTE(v40))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v23 = WORD2(v40);
                                                  if (WORD1(v40) > WORD2(v40))
                                                  {
                                                    if (BYTE6(v40) == 2)
                                                    {
                                                      v24 = a1[22];
                                                      ++WORD2(v40);
                                                      *(v39 + v23) = v24;
                                                      if (HIBYTE(v40))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v25 = WORD2(v40);
                                                        if (WORD1(v40) > WORD2(v40))
                                                        {
                                                          if (BYTE6(v40) == 2)
                                                          {
                                                            v26 = a1[23];
                                                            ++WORD2(v40);
                                                            *(v39 + v25) = v26;
                                                            return sub_100020078(233, v39, BYTE4(v40), a2, sub_100022AD0, v10, v11, v12);
                                                          }

                                                          v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_95:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4035, v38);
                                                        }
                                                      }

                                                      v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_95;
                                                    }

                                                    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_91:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4034, v37);
                                                  }
                                                }

                                                v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_91;
                                              }

                                              v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4033, v36);
                                            }
                                          }

                                          v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_87;
                                        }

                                        return sub_100020078(233, v39, BYTE4(v40), a2, sub_100022AD0, v10, v11, v12);
                                      }

                                      v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4030, v32);
                                    }
                                  }

                                  v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_71;
                                }

                                v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4028, v31);
                              }

                              v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_67;
                            }

                            v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4027, v30);
                          }

                          v30 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                          goto LABEL_63;
                        }

                        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4026, v29);
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_59;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4025, v28);
                  }

                  v28 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                  goto LABEL_55;
                }

                v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4024, v27);
              }
            }

            v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_51;
          }

          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4022, v35);
        }
      }

      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_83;
    }

    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v40);
      if (WORD1(v40) > WORD2(v40))
      {
        if (BYTE6(v40) == 2)
        {
          v7 = 98;
          goto LABEL_16;
        }

        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4020, v34);
      }
    }

    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_81;
  }

  return result;
}

uint64_t sub_100276720(uint64_t a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v5 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v5) = 75;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v6 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                v7 = *(a1 + 8);
                ++WORD2(v15);
                *(v14 + v6) = v7;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v15) - WORD2(v15) > 5)
                {
                  if (BYTE6(v15) == 2)
                  {
                    sub_1000075EC((v14 + WORD2(v15)), *a1, 6uLL);
                    WORD2(v15) += 6;
                    return sub_100020078(233, v14, BYTE4(v15), a2, sub_100260224, v8, v9, v10);
                  }

                  v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4052, v13);
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4051, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4050, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100276904(char a1, __int16 a2, __int16 a3, char a4, uint64_t (*a5)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v14) = 76;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v15 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v15) = a1;
                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v25) - WORD2(v25) > 1)
                {
                  if (BYTE6(v25) == 2)
                  {
                    *(v24 + WORD2(v25)) = a2;
                    v16 = WORD2(v25) + 2;
                    WORD2(v25) += 2;
                    if (HIBYTE(v25))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v25) - v16 > 1)
                    {
                      if (BYTE6(v25) == 2)
                      {
                        *(v24 + v16) = a3;
                        *(v24 + WORD2(v25) + 1) = HIBYTE(a3);
                        v17 = WORD2(v25);
                        v18 = WORD2(v25) + 2;
                        WORD2(v25) += 2;
                        if (HIBYTE(v25))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v25) > v18)
                        {
                          if (BYTE6(v25) == 2)
                          {
                            WORD2(v25) = v17 + 3;
                            *(v24 + v18) = a4;
                            return sub_100020078(233, v24, BYTE4(v25), a5, sub_100022AD0, v11, v12, v13);
                          }

                          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4071, v23);
                        }

                        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4070, v22);
                    }

                    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_34;
                  }

                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4069, v21);
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4068, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4067, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100276C14(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, uint64_t (*a7)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_43;
  }

  v18 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_43:
    v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_45;
  }

  if (BYTE6(v40) != 2)
  {
    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3283, v31);
  }

  ++WORD2(v40);
  *(v39 + v18) = 80;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_47;
  }

  v19 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_47:
    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_49;
  }

  if (BYTE6(v40) != 2)
  {
    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3285, v32);
  }

  ++WORD2(v40);
  *(v39 + v19) = a3;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_51;
  }

  if (WORD1(v40) - WORD2(v40) <= 5)
  {
LABEL_51:
    v33 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_53;
  }

  if (BYTE6(v40) != 2)
  {
    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3286, v33);
  }

  v20 = v39 + WORD2(v40);
  *(v20 + 4) = 0;
  *v20 = 0;
  v21 = WORD2(v40);
  v22 = WORD2(v40) + 6;
  WORD2(v40) += 6;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_55;
  }

  if (WORD1(v40) <= v22)
  {
LABEL_55:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v40) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3287, v34);
  }

  WORD2(v40) = v21 + 7;
  *(v39 + v22) = 2;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_59;
  }

  v23 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_59:
    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  if (BYTE6(v40) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3288, v35);
  }

  ++WORD2(v40);
  *(v39 + v23) = 0;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_63;
  }

  v24 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_63:
    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_65;
  }

  if (BYTE6(v40) != 2)
  {
    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3290, v36);
  }

  ++WORD2(v40);
  *(v39 + v24) = a4;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_67;
  }

  v25 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_67:
    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_69;
  }

  if (BYTE6(v40) != 2)
  {
    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3291, v37);
  }

  ++WORD2(v40);
  *(v39 + v25) = a5;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_71;
  }

  v26 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_71:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_73;
  }

  if (BYTE6(v40) != 2)
  {
    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3292, v38);
  }

  ++WORD2(v40);
  *(v39 + v26) = a6;
  if (a3 <= 1)
  {
    if (a2 == 2 || a2 == 16)
    {
      goto LABEL_31;
    }

    sub_1000D660C();
  }

  if (a2)
  {
LABEL_31:
    v27 = a2;
    while (!HIBYTE(v40))
    {
      v28 = WORD2(v40);
      if (WORD1(v40) <= WORD2(v40))
      {
        goto LABEL_40;
      }

      if (BYTE6(v40) != 2)
      {
        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_41;
      }

      v29 = *(a1 - 1 + v27--);
      ++WORD2(v40);
      *(v39 + v28) = v29;
      if ((v27 + 1) <= 1)
      {
        return sub_100020078(233, v39, BYTE4(v40), a7, sub_100022AD0, v15, v16, v17);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_40:
    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_41:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3299, v30);
  }

  return sub_100020078(233, v39, BYTE4(v40), a7, sub_100022AD0, v15, v16, v17);
}

uint64_t sub_10027712C(__int16 a1, __int16 a2, const void *a3, int a4, const void *a5, int a6, char a7, char a8, char a9, uint64_t (*a10)())
{
  v53 = 0;
  v54 = 0;
  result = sub_10001FFD8(&v53);
  if (!result)
  {
    if (HIBYTE(v54))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v19 = WORD2(v54);
      if (WORD1(v54) > WORD2(v54))
      {
        if (BYTE6(v54) == 2)
        {
          ++WORD2(v54);
          *(v53 + v19) = 90;
          if (HIBYTE(v54))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v20 = WORD2(v54);
            if (WORD1(v54) > WORD2(v54))
            {
              if (BYTE6(v54) == 2)
              {
                ++WORD2(v54);
                *(v53 + v20) = 1;
                if (HIBYTE(v54))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v54) - WORD2(v54) > 1)
                {
                  if (BYTE6(v54) == 2)
                  {
                    *(v53 + WORD2(v54)) = a1;
                    v21 = WORD2(v54) + 2;
                    WORD2(v54) += 2;
                    if (HIBYTE(v54))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v54) - v21 > 1)
                    {
                      if (BYTE6(v54) == 2)
                      {
                        *(v53 + v21) = a2;
                        *(v53 + WORD2(v54) + 1) = HIBYTE(a2);
                        v22 = WORD2(v54) + 2;
                        WORD2(v54) += 2;
                        v23 = v53;
                        if (HIBYTE(v54))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v24 = 0;
                        }

                        else
                        {
                          v24 = WORD1(v54) - v22;
                        }

                        if (v24 < a4)
                        {
                          v46 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
                        }

                        else
                        {
                          if (BYTE6(v54) == 2)
                          {
                            memmove((v23 + v22), a3, a4);
                            v25 = WORD2(v54) + a4;
                            WORD2(v54) += a4;
                            v26 = v53;
                            if (HIBYTE(v54))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v27 = 0;
                            }

                            else
                            {
                              v27 = WORD1(v54) - v25;
                            }

                            v28 = 27 - a4;
                            if (v27 < v28)
                            {
                              v47 = "ByteStream_NumReadBytesAvail(bs) >= (27 - maskLen)";
                            }

                            else
                            {
                              if (BYTE6(v54) == 2)
                              {
                                bzero((v26 + v25), v28);
                                v29 = WORD2(v54) + v28;
                                WORD2(v54) = v29;
                                v30 = v53;
                                if (HIBYTE(v54))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  v31 = 0;
                                }

                                else
                                {
                                  v31 = WORD1(v54) - v29;
                                }

                                if (v31 < a6)
                                {
                                  v48 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                }

                                else
                                {
                                  if (BYTE6(v54) == 2)
                                  {
                                    memmove((v30 + v29), a5, a6);
                                    v32 = WORD2(v54) + a6;
                                    WORD2(v54) += a6;
                                    v33 = v53;
                                    if (HIBYTE(v54))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      v34 = 0;
                                    }

                                    else
                                    {
                                      v34 = WORD1(v54) - v32;
                                    }

                                    v35 = 27 - a6;
                                    if (v34 < v35)
                                    {
                                      v49 = "ByteStream_NumReadBytesAvail(bs) >= (27 - blobLen)";
                                    }

                                    else
                                    {
                                      if (BYTE6(v54) == 2)
                                      {
                                        bzero((v33 + v32), v35);
                                        v39 = WORD2(v54) + v35;
                                        WORD2(v54) += v35;
                                        if (HIBYTE(v54))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else if (WORD1(v54) > v39)
                                        {
                                          if (BYTE6(v54) == 2)
                                          {
                                            WORD2(v54) = v39 + 1;
                                            *(v53 + v39) = a7;
                                            if (HIBYTE(v54))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else
                                            {
                                              v40 = WORD2(v54);
                                              if (WORD1(v54) > WORD2(v54))
                                              {
                                                if (BYTE6(v54) == 2)
                                                {
                                                  ++WORD2(v54);
                                                  *(v53 + v40) = a8;
                                                  if (HIBYTE(v54))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  }

                                                  else
                                                  {
                                                    v41 = WORD2(v54);
                                                    if (WORD1(v54) > WORD2(v54))
                                                    {
                                                      if (BYTE6(v54) == 2)
                                                      {
                                                        ++WORD2(v54);
                                                        *(v53 + v41) = a9;
                                                        return sub_100020078(233, v53, BYTE4(v54), a10, sub_100022AD0, v36, v37, v38);
                                                      }

                                                      v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3584, v52);
                                                    }
                                                  }

                                                  v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                  goto LABEL_84;
                                                }

                                                v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3583, v51);
                                              }
                                            }

                                            v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_80;
                                          }

                                          v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3582, v50);
                                        }

                                        v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_76;
                                      }

                                      v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                    }

                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3581, v49);
                                  }

                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                }

                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3580, v48);
                              }

                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3579, v47);
                          }

                          v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3578, v46);
                      }

                      v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3577, v45);
                    }

                    v45 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_60;
                  }

                  v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3576, v44);
                }

                v44 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_56;
              }

              v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3575, v43);
            }
          }

          v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_52;
        }

        v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3574, v42);
      }
    }

    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_100277790(__int16 a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = 90;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v9 = WORD2(v14);
            if (WORD1(v14) > WORD2(v14))
            {
              if (BYTE6(v14) == 2)
              {
                ++WORD2(v14);
                *(v13 + v9) = 2;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v14) - WORD2(v14) > 1)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + WORD2(v14)) = a1;
                    WORD2(v14) += 2;
                    return sub_100020078(233, v13, BYTE4(v14), a2, sub_100022AD0, v5, v6, v7);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3598, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_24;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3597, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3596, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10027797C(uint64_t (*a1)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v6 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v6) = 90;
          if (HIBYTE(v11))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v7 = WORD2(v11);
            if (WORD1(v11) > WORD2(v11))
            {
              if (BYTE6(v11) == 2)
              {
                ++WORD2(v11);
                *(v10 + v7) = 3;
                return sub_100020078(233, v10, BYTE4(v11), a1, sub_100022AD0, v3, v4, v5);
              }

              v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3611, v9);
            }
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3610, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100277AD0(__int16 a1, char a2, char a3, char a4, uint64_t a5, char a6, uint64_t (*a7)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v17 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v17) = 89;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v30) - WORD2(v30) > 1)
          {
            if (BYTE6(v30) == 2)
            {
              *(v29 + WORD2(v30)) = a1;
              v18 = WORD2(v30);
              v19 = WORD2(v30) + 2;
              WORD2(v30) += 2;
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v30) > v19)
              {
                if (BYTE6(v30) == 2)
                {
                  WORD2(v30) = v18 + 3;
                  *(v29 + v19) = a2;
                  if (HIBYTE(v30))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v20 = WORD2(v30);
                    if (WORD1(v30) > WORD2(v30))
                    {
                      if (BYTE6(v30) == 2)
                      {
                        ++WORD2(v30);
                        *(v29 + v20) = a3;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v21 = WORD2(v30);
                          if (WORD1(v30) > WORD2(v30))
                          {
                            if (BYTE6(v30) == 2)
                            {
                              ++WORD2(v30);
                              *(v29 + v21) = a4;
                              if (HIBYTE(v30))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v22 = WORD2(v30);
                                if (WORD1(v30) > WORD2(v30))
                                {
                                  if (BYTE6(v30) == 2)
                                  {
                                    ++WORD2(v30);
                                    *(v29 + v22) = a6;
                                    return sub_100020078(233, v29, BYTE4(v30), a7, sub_100022AD0, v14, v15, v16);
                                  }

                                  v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3629, v28);
                                }
                              }

                              v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3628, v27);
                          }
                        }

                        v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_41;
                      }

                      v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3626, v26);
                    }
                  }

                  v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_37;
                }

                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3625, v25);
              }

              v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_33;
            }

            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3624, v24);
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3623, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100277E40(__int16 a1, char a2, char a3, unsigned int a4, int *a5, char a6, char a7, __int16 a8, __int16 a9, char a10, char a11, char a12, char a13, __int16 a14, uint64_t (*a15)())
{
  v60 = 0;
  v61 = 0;
  result = sub_10001FFD8(&v60);
  if (!result)
  {
    if (HIBYTE(v61))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v27 = WORD2(v61);
      if (WORD1(v61) > WORD2(v61))
      {
        if (BYTE6(v61) == 2)
        {
          ++WORD2(v61);
          *(v60 + v27) = 13;
          if (HIBYTE(v61))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v61) - WORD2(v61) > 1)
          {
            if (BYTE6(v61) == 2)
            {
              *(v60 + WORD2(v61)) = a1;
              v28 = WORD2(v61);
              v29 = WORD2(v61) + 2;
              WORD2(v61) += 2;
              if (HIBYTE(v61))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v61) > v29)
              {
                if (BYTE6(v61) == 2)
                {
                  WORD2(v61) = v28 + 3;
                  *(v60 + v29) = a2;
                  if (HIBYTE(v61))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v30 = WORD2(v61);
                    if (WORD1(v61) > WORD2(v61))
                    {
                      if (BYTE6(v61) == 2)
                      {
                        ++WORD2(v61);
                        *(v60 + v30) = a3;
                        if (!a4)
                        {
                          goto LABEL_36;
                        }

                        v31 = a4;
                        do
                        {
                          v33 = *a5++;
                          v32 = v33;
                          if (v33 == 762)
                          {
                            v34 = 62;
                          }

                          else
                          {
                            v34 = 0;
                          }

                          if (v32 == 761)
                          {
                            v34 = 61;
                          }

                          if (v32 == 734)
                          {
                            v34 = 34;
                          }

                          if (v32 == 719)
                          {
                            v35 = 19;
                          }

                          else
                          {
                            v35 = 0;
                          }

                          if (v32 == 708)
                          {
                            v35 = 8;
                          }

                          if (v32 <= 733)
                          {
                            v36 = v35;
                          }

                          else
                          {
                            v36 = v34;
                          }

                          if (HIBYTE(v61))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_71:
                            v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_72:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3673, v48);
                          }

                          v37 = WORD2(v61);
                          if (WORD1(v61) <= WORD2(v61))
                          {
                            goto LABEL_71;
                          }

                          if (BYTE6(v61) != 2)
                          {
                            v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            goto LABEL_72;
                          }

                          ++WORD2(v61);
                          *(v60 + v37) = v36;
                          --v31;
                        }

                        while (v31);
                        if (a4 <= 4)
                        {
LABEL_36:
                          v38 = a4 - 5;
                          while (!HIBYTE(v61))
                          {
                            v39 = WORD2(v61);
                            if (WORD1(v61) <= WORD2(v61))
                            {
                              goto LABEL_67;
                            }

                            if (BYTE6(v61) != 2)
                            {
                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                              goto LABEL_68;
                            }

                            ++WORD2(v61);
                            *(v60 + v39) = 0;
                            if (__CFADD__(v38++, 1))
                            {
                              goto LABEL_42;
                            }
                          }

                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_67:
                          v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_68:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3676, v47);
                        }

LABEL_42:
                        if (HIBYTE(v61))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v41 = WORD2(v61);
                          if (WORD1(v61) > WORD2(v61))
                          {
                            if (BYTE6(v61) == 2)
                            {
                              ++WORD2(v61);
                              *(v60 + v41) = a6;
                              if (HIBYTE(v61))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v42 = WORD2(v61);
                                if (WORD1(v61) > WORD2(v61))
                                {
                                  if (BYTE6(v61) == 2)
                                  {
                                    ++WORD2(v61);
                                    *(v60 + v42) = a7;
                                    if (HIBYTE(v61))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v61) - WORD2(v61) > 1)
                                    {
                                      if (BYTE6(v61) == 2)
                                      {
                                        *(v60 + WORD2(v61)) = a9;
                                        v43 = WORD2(v61) + 2;
                                        WORD2(v61) += 2;
                                        if (HIBYTE(v61))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else if (WORD1(v61) - v43 > 1)
                                        {
                                          if (BYTE6(v61) == 2)
                                          {
                                            *(v60 + v43) = a8;
                                            *(v60 + WORD2(v61) + 1) = HIBYTE(a8);
                                            v44 = WORD2(v61);
                                            v45 = WORD2(v61) + 2;
                                            WORD2(v61) += 2;
                                            if (HIBYTE(v61))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else if (WORD1(v61) > v45)
                                            {
                                              if (BYTE6(v61) == 2)
                                              {
                                                WORD2(v61) = v44 + 3;
                                                *(v60 + v45) = a10;
                                                if (HIBYTE(v61))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else if (WORD1(v61) - WORD2(v61) > 1)
                                                {
                                                  if (BYTE6(v61) == 2)
                                                  {
                                                    *(v60 + WORD2(v61)) = a14;
                                                    v46 = WORD2(v61) + 2;
                                                    WORD2(v61) += 2;
                                                    if (HIBYTE(v61))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else if (WORD1(v61) - v46 > 1)
                                                    {
                                                      if (BYTE6(v61) == 2)
                                                      {
                                                        *(v60 + v46) = a12;
                                                        *(v60 + WORD2(v61) + 1) = a13;
                                                        WORD2(v61) += 2;
                                                        return sub_100020078(291, v60, BYTE4(v61), a15, sub_100022AD0, v24, v25, v26);
                                                      }

                                                      v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3684, v59);
                                                    }

                                                    v59 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                    goto LABEL_116;
                                                  }

                                                  v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3683, v58);
                                                }

                                                v58 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                goto LABEL_112;
                                              }

                                              v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3682, v57);
                                            }

                                            v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_108;
                                          }

                                          v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3681, v56);
                                        }

                                        v56 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_104;
                                      }

                                      v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3680, v55);
                                    }

                                    v55 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_100;
                                  }

                                  v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3679, v54);
                                }
                              }

                              v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_96;
                            }

                            v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3678, v53);
                          }
                        }

                        v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_92;
                      }

                      v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3651, v52);
                    }
                  }

                  v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_88;
                }

                v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3650, v51);
              }

              v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_84;
            }

            v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3649, v50);
          }

          v50 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_80;
        }

        v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3648, v49);
      }
    }

    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_76;
  }

  return result;
}

uint64_t sub_1002785F4(char a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = a1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) > WORD2(v12))
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = 0;
              ++WORD2(v12);
              return sub_100020078(348, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4091, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4090, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100278748(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)())
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v6 = sub_10023DB58(a1, &v26);
  if (!v6)
  {
    v7 = sub_10001FFD8(&v24);
    if (v7)
    {
      return v7;
    }

    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v25) - WORD2(v25) > 1)
    {
      if (BYTE6(v25) == 2)
      {
        *(v24 + WORD2(v25)) = *v26;
        v19 = WORD2(v25);
        v20 = WORD2(v25) + 2;
        WORD2(v25) += 2;
        if (HIBYTE(v25))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v25) > v20)
        {
          if (BYTE6(v25) == 2)
          {
            WORD2(v25) = v19 + 3;
            *(v24 + v20) = a2;
            return sub_100020078(87, v24, BYTE4(v25), a4, sub_100022AD0, v16, v17, v18);
          }

          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4114, v23);
        }

        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_21;
      }

      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4113, v22);
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_17;
  }

  v7 = v6;
  if (sub_10000C240())
  {
    sub_10000AF54("VSC Error %!", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v7;
}

uint64_t sub_10027892C(__int16 a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v26) - WORD2(v26) > 1)
    {
      if (BYTE6(v26) == 2)
      {
        *(v25 + WORD2(v26)) = a1;
        v16 = WORD2(v26);
        v17 = WORD2(v26) + 2;
        WORD2(v26) += 2;
        if (HIBYTE(v26))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v26) > v17)
        {
          if (BYTE6(v26) == 2)
          {
            WORD2(v26) = v16 + 3;
            *(v25 + v17) = a2;
            if (HIBYTE(v26))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v18 = WORD2(v26);
              if (WORD1(v26) > WORD2(v26))
              {
                if (BYTE6(v26) == 2)
                {
                  ++WORD2(v26);
                  *(v25 + v18) = a3;
                  if (HIBYTE(v26))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v19 = WORD2(v26);
                    if (WORD1(v26) > WORD2(v26))
                    {
                      if (BYTE6(v26) == 2)
                      {
                        ++WORD2(v26);
                        *(v25 + v19) = a4;
                        if (HIBYTE(v26))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v26) > WORD2(v26))
                        {
                          if (BYTE6(v26) == 2)
                          {
                            *(v25 + WORD2(v26)) = a5;
                            ++WORD2(v26);
                            return sub_100020078(435, v25, BYTE4(v26), a6, sub_100022AD0, v13, v14, v15);
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5131, v24);
                        }

                        v24 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                        goto LABEL_38;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5130, v23);
                    }
                  }

                  v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5129, v22);
              }
            }

            v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5128, v21);
        }

        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5127, v20);
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100278C24(char a1, uint64_t (*a2)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v19) - WORD2(v19) > 3)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = 32;
        *(v18 + WORD2(v19) + 1) = 0;
        *(v18 + WORD2(v19) + 3) = 0;
        v8 = WORD2(v19);
        v9 = WORD2(v19) + 4;
        WORD2(v19) += 4;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v19) > v9)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v8 + 5;
            *(v18 + v9) = a1;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v10 = WORD2(v19);
              if (WORD1(v19) > WORD2(v19))
              {
                if (BYTE6(v19) == 2)
                {
                  ++WORD2(v19);
                  *(v18 + v10) = 0;
                  if (HIBYTE(v19))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v11 = WORD2(v19);
                    if (WORD1(v19) > WORD2(v19))
                    {
                      if (BYTE6(v19) == 2)
                      {
                        ++WORD2(v19);
                        *(v18 + v11) = 0;
                        if (HIBYTE(v19))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v12 = WORD2(v19);
                          if (WORD1(v19) > WORD2(v19))
                          {
                            if (BYTE6(v19) == 2)
                            {
                              ++WORD2(v19);
                              *(v18 + v12) = 0;
                              return sub_100020078(226, v18, BYTE4(v19), a2, sub_100022AD0, v5, v6, v7);
                            }

                            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5151, v17);
                          }
                        }

                        v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5150, v16);
                    }
                  }

                  v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5149, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5147, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5146, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100278F18(_WORD *a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(449, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5165, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5164, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100279094(char a1, uint64_t (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        *(v12 + WORD2(v13)) = 39;
        *(v12 + WORD2(v13) + 1) = 0;
        *(v12 + WORD2(v13) + 3) = 0;
        v8 = WORD2(v13);
        v9 = WORD2(v13) + 4;
        WORD2(v13) += 4;
        if (HIBYTE(v13))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v13) > v9)
        {
          if (BYTE6(v13) == 2)
          {
            WORD2(v13) = v8 + 5;
            *(v12 + v9) = a1;
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_100022AD0, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5180, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5179, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100279220(int a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = -16;
          if (a1)
          {
            if (HIBYTE(v15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v9 = WORD2(v15);
              if (WORD1(v15) > WORD2(v15))
              {
                if (BYTE6(v15) == 2)
                {
                  v10 = 3;
LABEL_14:
                  WORD2(v15) = v9 + 1;
                  *(v14 + v9) = v10;
                  return sub_100020078(490, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
                }

                v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5195, v12);
              }
            }

            v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_25;
          }

          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                v10 = 0;
                goto LABEL_14;
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5197, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_27;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5193, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002793E8(__int16 a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v51 = 0;
  v52 = 0;
  result = sub_10001FFD8(&v51);
  if (!result)
  {
    if (HIBYTE(v52))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v52) - WORD2(v52) > 1)
    {
      if (BYTE6(v52) == 2)
      {
        *(v51 + WORD2(v52)) = a1;
        v14 = WORD2(v52);
        v15 = WORD2(v52) + 2;
        WORD2(v52) += 2;
        if (HIBYTE(v52))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v52) > v15)
        {
          if (BYTE6(v52) == 2)
          {
            WORD2(v52) = v14 + 3;
            *(v51 + v15) = a2;
            if (HIBYTE(v52))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v16 = WORD2(v52);
              if (WORD1(v52) > WORD2(v52))
              {
                if (BYTE6(v52) == 2)
                {
                  ++WORD2(v52);
                  *(v51 + v16) = a3;
                  if (HIBYTE(v52))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v17 = WORD2(v52);
                    if (WORD1(v52) > WORD2(v52))
                    {
                      if (BYTE6(v52) == 2)
                      {
                        ++WORD2(v52);
                        *(v51 + v17) = a3;
                        if (HIBYTE(v52))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v18 = WORD2(v52);
                          if (WORD1(v52) > WORD2(v52))
                          {
                            if (BYTE6(v52) == 2)
                            {
                              ++WORD2(v52);
                              *(v51 + v18) = a3;
                              if (HIBYTE(v52))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v19 = WORD2(v52);
                                if (WORD1(v52) > WORD2(v52))
                                {
                                  if (BYTE6(v52) == 2)
                                  {
                                    ++WORD2(v52);
                                    *(v51 + v19) = a3;
                                    if (HIBYTE(v52))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else
                                    {
                                      v20 = WORD2(v52);
                                      if (WORD1(v52) > WORD2(v52))
                                      {
                                        if (BYTE6(v52) == 2)
                                        {
                                          ++WORD2(v52);
                                          *(v51 + v20) = a3;
                                          if (HIBYTE(v52))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v21 = WORD2(v52);
                                            if (WORD1(v52) > WORD2(v52))
                                            {
                                              if (BYTE6(v52) == 2)
                                              {
                                                ++WORD2(v52);
                                                *(v51 + v21) = a3;
                                                if (HIBYTE(v52))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v22 = WORD2(v52);
                                                  if (WORD1(v52) > WORD2(v52))
                                                  {
                                                    if (BYTE6(v52) == 2)
                                                    {
                                                      ++WORD2(v52);
                                                      *(v51 + v22) = a3;
                                                      if (HIBYTE(v52))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v23 = WORD2(v52);
                                                        if (WORD1(v52) > WORD2(v52))
                                                        {
                                                          if (BYTE6(v52) == 2)
                                                          {
                                                            ++WORD2(v52);
                                                            *(v51 + v23) = a3;
                                                            if (HIBYTE(v52))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else
                                                            {
                                                              v24 = WORD2(v52);
                                                              if (WORD1(v52) > WORD2(v52))
                                                              {
                                                                if (BYTE6(v52) == 2)
                                                                {
                                                                  ++WORD2(v52);
                                                                  *(v51 + v24) = a3;
                                                                  if (HIBYTE(v52))
                                                                  {
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                  }

                                                                  else
                                                                  {
                                                                    v25 = WORD2(v52);
                                                                    if (WORD1(v52) > WORD2(v52))
                                                                    {
                                                                      if (BYTE6(v52) == 2)
                                                                      {
                                                                        ++WORD2(v52);
                                                                        *(v51 + v25) = a3;
                                                                        if (HIBYTE(v52))
                                                                        {
                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                        }

                                                                        else
                                                                        {
                                                                          v26 = WORD2(v52);
                                                                          if (WORD1(v52) > WORD2(v52))
                                                                          {
                                                                            if (BYTE6(v52) == 2)
                                                                            {
                                                                              ++WORD2(v52);
                                                                              *(v51 + v26) = a3;
                                                                              if (HIBYTE(v52))
                                                                              {
                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                              }

                                                                              else
                                                                              {
                                                                                v27 = WORD2(v52);
                                                                                if (WORD1(v52) > WORD2(v52))
                                                                                {
                                                                                  if (BYTE6(v52) == 2)
                                                                                  {
                                                                                    ++WORD2(v52);
                                                                                    *(v51 + v27) = a3;
                                                                                    if (HIBYTE(v52))
                                                                                    {
                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v28 = WORD2(v52);
                                                                                      if (WORD1(v52) > WORD2(v52))
                                                                                      {
                                                                                        if (BYTE6(v52) == 2)
                                                                                        {
                                                                                          ++WORD2(v52);
                                                                                          *(v51 + v28) = a3;
                                                                                          if (HIBYTE(v52))
                                                                                          {
                                                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v29 = WORD2(v52);
                                                                                            if (WORD1(v52) > WORD2(v52))
                                                                                            {
                                                                                              if (BYTE6(v52) == 2)
                                                                                              {
                                                                                                ++WORD2(v52);
                                                                                                *(v51 + v29) = a3;
                                                                                                if (HIBYTE(v52))
                                                                                                {
                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v30 = WORD2(v52);
                                                                                                  if (WORD1(v52) > WORD2(v52))
                                                                                                  {
                                                                                                    if (BYTE6(v52) == 2)
                                                                                                    {
                                                                                                      ++WORD2(v52);
                                                                                                      *(v51 + v30) = a3;
                                                                                                      if (HIBYTE(v52))
                                                                                                      {
                                                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v31 = WORD2(v52);
                                                                                                        if (WORD1(v52) > WORD2(v52))
                                                                                                        {
                                                                                                          if (BYTE6(v52) == 2)
                                                                                                          {
                                                                                                            ++WORD2(v52);
                                                                                                            *(v51 + v31) = a3;
                                                                                                            if (HIBYTE(v52))
                                                                                                            {
                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                            }

                                                                                                            else if (WORD1(v52) > WORD2(v52))
                                                                                                            {
                                                                                                              if (BYTE6(v52) == 2)
                                                                                                              {
                                                                                                                *(v51 + WORD2(v52)) = a4;
                                                                                                                ++WORD2(v52);
                                                                                                                return sub_100020078(441, v51, BYTE4(v52), a5, sub_100022AD0, v11, v12, v13);
                                                                                                              }

                                                                                                              v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5308, v50);
                                                                                                            }

                                                                                                            v50 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                                                                            goto LABEL_136;
                                                                                                          }

                                                                                                          v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5307, v49);
                                                                                                        }
                                                                                                      }

                                                                                                      v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                      goto LABEL_132;
                                                                                                    }

                                                                                                    v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
                                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5306, v48);
                                                                                                  }
                                                                                                }

                                                                                                v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                goto LABEL_128;
                                                                                              }

                                                                                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5305, v47);
                                                                                            }
                                                                                          }

                                                                                          v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                          goto LABEL_124;
                                                                                        }

                                                                                        v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
                                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5304, v46);
                                                                                      }
                                                                                    }

                                                                                    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                    goto LABEL_120;
                                                                                  }

                                                                                  v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5303, v45);
                                                                                }
                                                                              }

                                                                              v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                              goto LABEL_116;
                                                                            }

                                                                            v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5302, v44);
                                                                          }
                                                                        }

                                                                        v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                        goto LABEL_112;
                                                                      }

                                                                      v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5301, v43);
                                                                    }
                                                                  }

                                                                  v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_108;
                                                                }

                                                                v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5300, v42);
                                                              }
                                                            }

                                                            v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_104;
                                                          }

                                                          v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5299, v41);
                                                        }
                                                      }

                                                      v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_100;
                                                    }

                                                    v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5298, v40);
                                                  }
                                                }

                                                v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_96;
                                              }

                                              v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5297, v39);
                                            }
                                          }

                                          v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_92;
                                        }

                                        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5296, v38);
                                      }
                                    }

                                    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_88;
                                  }

                                  v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5295, v37);
                                }
                              }

                              v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_84;
                            }

                            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5294, v36);
                          }
                        }

                        v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_80;
                      }

                      v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5293, v35);
                    }
                  }

                  v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_76;
                }

                v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5292, v34);
              }
            }

            v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_72;
          }

          v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5291, v33);
        }

        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_68;
      }

      v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5290, v32);
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_64;
  }

  return result;
}

uint64_t sub_100279D6C(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(484, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5112, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5111, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100279EE4(_WORD *a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(491, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5364, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5363, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027A060(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(509, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5378, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027A138(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(474, v6, BYTE4(v7), a1, sub_10025D4E0, v3, v4, v5);
  }

  return result;
}

uint64_t sub_10027A194(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(522, v9, BYTE4(v10), a2, sub_10025D5F0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5404, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027A288(__int16 a1, int a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v14) - v10 > 3)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = BYTE1(a2);
            *(v13 + WORD2(v14) + 2) = BYTE2(a2);
            *(v13 + WORD2(v14) + 3) = HIBYTE(a2);
            WORD2(v14) += 4;
            return sub_100020078(475, v13, BYTE4(v14), a3, sub_100022AD0, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5419, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5418, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027A444(__int16 a1, int a2, int a3, __int16 a4, __int16 a5, char a6, int a7, uint64_t (*a8)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v39) - WORD2(v39) > 1)
    {
      if (BYTE6(v39) == 2)
      {
        *(v38 + WORD2(v39)) = a1;
        v20 = WORD2(v39) + 2;
        WORD2(v39) += 2;
        if (HIBYTE(v39))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v39) - v20 > 3)
        {
          if (BYTE6(v39) == 2)
          {
            *(v38 + v20) = a2;
            *(v38 + WORD2(v39) + 1) = BYTE1(a2);
            *(v38 + WORD2(v39) + 2) = BYTE2(a2);
            *(v38 + WORD2(v39) + 3) = HIBYTE(a2);
            v21 = WORD2(v39) + 4;
            WORD2(v39) += 4;
            if (HIBYTE(v39))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v39) - v21 > 3)
            {
              if (BYTE6(v39) == 2)
              {
                *(v38 + v21) = a3;
                *(v38 + WORD2(v39) + 1) = BYTE1(a3);
                *(v38 + WORD2(v39) + 2) = BYTE2(a3);
                *(v38 + WORD2(v39) + 3) = HIBYTE(a3);
                v22 = WORD2(v39) + 4;
                WORD2(v39) += 4;
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v39) - v22 > 1)
                {
                  if (BYTE6(v39) == 2)
                  {
                    *(v38 + v22) = a4;
                    *(v38 + WORD2(v39) + 1) = HIBYTE(a4);
                    v23 = WORD2(v39) + 2;
                    WORD2(v39) += 2;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v39) - v23 > 1)
                    {
                      if (BYTE6(v39) == 2)
                      {
                        *(v38 + v23) = a5;
                        *(v38 + WORD2(v39) + 1) = HIBYTE(a5);
                        v24 = WORD2(v39);
                        v25 = WORD2(v39) + 2;
                        WORD2(v39) += 2;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v39) > v25)
                        {
                          if (BYTE6(v39) == 2)
                          {
                            WORD2(v39) = v24 + 3;
                            *(v38 + v25) = a6;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v26 = WORD2(v39);
                              if (WORD1(v39) > WORD2(v39))
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  ++WORD2(v39);
                                  *(v38 + v26) = a7;
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v27 = WORD2(v39);
                                    if (WORD1(v39) > WORD2(v39))
                                    {
                                      if (BYTE6(v39) == 2)
                                      {
                                        ++WORD2(v39);
                                        *(v38 + v27) = BYTE1(a7);
                                        if (HIBYTE(v39))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v28 = WORD2(v39);
                                          if (WORD1(v39) > WORD2(v39))
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              ++WORD2(v39);
                                              *(v38 + v28) = BYTE2(a7);
                                              return sub_100020078(476, v38, BYTE4(v39), a8, sub_100022AD0, v17, v18, v19);
                                            }

                                            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5446, v37);
                                          }
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5444, v36);
                                    }
                                  }

                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5442, v35);
                              }
                            }

                            v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_58;
                          }

                          v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5439, v34);
                        }

                        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_54;
                      }

                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5438, v33);
                    }

                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_50;
                  }

                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5437, v32);
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_46;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5436, v31);
            }

            v31 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_42;
          }

          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5435, v30);
        }

        v30 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_38;
      }

      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5434, v29);
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_10027A9F0(uint64_t a1, int a2, int a3, __int16 a4, __int16 a5, char a6, int a7, uint64_t (*a8)())
{
  v38 = 0;
  v39 = 0;
  result = sub_10001FFD8(&v38);
  if (!result)
  {
    if (HIBYTE(v39))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v39) - WORD2(v39) > 5)
    {
      if (BYTE6(v39) == 2)
      {
        sub_1000075EC((v38 + WORD2(v39)), a1, 6uLL);
        v20 = WORD2(v39) + 6;
        WORD2(v39) += 6;
        if (HIBYTE(v39))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v39) - v20 > 3)
        {
          if (BYTE6(v39) == 2)
          {
            *(v38 + v20) = a2;
            *(v38 + WORD2(v39) + 1) = BYTE1(a2);
            *(v38 + WORD2(v39) + 2) = BYTE2(a2);
            *(v38 + WORD2(v39) + 3) = HIBYTE(a2);
            v21 = WORD2(v39) + 4;
            WORD2(v39) += 4;
            if (HIBYTE(v39))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v39) - v21 > 3)
            {
              if (BYTE6(v39) == 2)
              {
                *(v38 + v21) = a3;
                *(v38 + WORD2(v39) + 1) = BYTE1(a3);
                *(v38 + WORD2(v39) + 2) = BYTE2(a3);
                *(v38 + WORD2(v39) + 3) = HIBYTE(a3);
                v22 = WORD2(v39) + 4;
                WORD2(v39) += 4;
                if (HIBYTE(v39))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v39) - v22 > 1)
                {
                  if (BYTE6(v39) == 2)
                  {
                    *(v38 + v22) = a4;
                    *(v38 + WORD2(v39) + 1) = HIBYTE(a4);
                    v23 = WORD2(v39) + 2;
                    WORD2(v39) += 2;
                    if (HIBYTE(v39))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v39) - v23 > 1)
                    {
                      if (BYTE6(v39) == 2)
                      {
                        *(v38 + v23) = a5;
                        *(v38 + WORD2(v39) + 1) = HIBYTE(a5);
                        v24 = WORD2(v39);
                        v25 = WORD2(v39) + 2;
                        WORD2(v39) += 2;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v39) > v25)
                        {
                          if (BYTE6(v39) == 2)
                          {
                            WORD2(v39) = v24 + 3;
                            *(v38 + v25) = a6;
                            if (HIBYTE(v39))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v26 = WORD2(v39);
                              if (WORD1(v39) > WORD2(v39))
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  ++WORD2(v39);
                                  *(v38 + v26) = a7;
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v27 = WORD2(v39);
                                    if (WORD1(v39) > WORD2(v39))
                                    {
                                      if (BYTE6(v39) == 2)
                                      {
                                        ++WORD2(v39);
                                        *(v38 + v27) = BYTE1(a7);
                                        if (HIBYTE(v39))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v28 = WORD2(v39);
                                          if (WORD1(v39) > WORD2(v39))
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              ++WORD2(v39);
                                              *(v38 + v28) = BYTE2(a7);
                                              return sub_100020078(516, v38, BYTE4(v39), a8, sub_100022AD0, v17, v18, v19);
                                            }

                                            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5472, v37);
                                          }
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5470, v36);
                                    }
                                  }

                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5468, v35);
                              }
                            }

                            v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_58;
                          }

                          v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5465, v34);
                        }

                        v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_54;
                      }

                      v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5464, v33);
                    }

                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_50;
                  }

                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5463, v32);
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_46;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5462, v31);
            }

            v31 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_42;
          }

          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5461, v30);
        }

        v30 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_38;
      }

      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5460, v29);
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_10027AF94(char a1, __int16 a2, char a3, uint64_t (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 0;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v13 = WORD2(v21);
            if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                ++WORD2(v21);
                *(v20 + v13) = a1;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v21) - WORD2(v21) > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + WORD2(v21)) = a2;
                    v14 = WORD2(v21);
                    v15 = WORD2(v21) + 2;
                    WORD2(v21) += 2;
                    if (HIBYTE(v21))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v21) > v15)
                    {
                      if (BYTE6(v21) == 2)
                      {
                        WORD2(v21) = v14 + 3;
                        *(v20 + v15) = a3;
                        return sub_100020078(622, v20, BYTE4(v21), a4, sub_10025E3E8, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5488, v19);
                    }

                    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5487, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_27;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5486, v17);
            }
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5485, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10027B200(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(592, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5502, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027B2D8(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(593, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5516, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027B3B0(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(604, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5530, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027B488(uint64_t a1, __int16 a2, char a3, uint64_t a4, __int16 a5, char a6, char a7, char a8)
{
  v35 = 0;
  v36 = 0;
  result = sub_10001FFD8(&v35);
  if (!result)
  {
    if (HIBYTE(v36))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v36) - WORD2(v36) > 5)
    {
      if (BYTE6(v36) == 2)
      {
        sub_1000075EC((v35 + WORD2(v36)), a1, 6uLL);
        v19 = WORD2(v36) + 6;
        WORD2(v36) += 6;
        if (HIBYTE(v36))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v36) - v19 > 1)
        {
          if (BYTE6(v36) == 2)
          {
            *(v35 + v19) = a2;
            *(v35 + WORD2(v36) + 1) = HIBYTE(a2);
            v20 = WORD2(v36);
            v21 = WORD2(v36) + 2;
            WORD2(v36) += 2;
            if (HIBYTE(v36))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v36) > v21)
            {
              if (BYTE6(v36) == 2)
              {
                WORD2(v36) = v20 + 3;
                *(v35 + v21) = a3;
                if (HIBYTE(v36))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v22 = WORD2(v36);
                  if (WORD1(v36) > WORD2(v36))
                  {
                    if (BYTE6(v36) == 2)
                    {
                      ++WORD2(v36);
                      *(v35 + v22) = 0;
                      if (HIBYTE(v36))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v36) - WORD2(v36) > 1)
                      {
                        if (BYTE6(v36) == 2)
                        {
                          *(v35 + WORD2(v36)) = a5;
                          v23 = WORD2(v36);
                          v24 = WORD2(v36) + 2;
                          WORD2(v36) += 2;
                          if (HIBYTE(v36))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v36) > v24)
                          {
                            if (BYTE6(v36) == 2)
                            {
                              WORD2(v36) = v23 + 3;
                              *(v35 + v24) = a6;
                              if (HIBYTE(v36))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v25 = WORD2(v36);
                                if (WORD1(v36) > WORD2(v36))
                                {
                                  if (BYTE6(v36) == 2)
                                  {
                                    ++WORD2(v36);
                                    *(v35 + v25) = a7;
                                    if (HIBYTE(v36))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else
                                    {
                                      v26 = WORD2(v36);
                                      if (WORD1(v36) > WORD2(v36))
                                      {
                                        if (BYTE6(v36) == 2)
                                        {
                                          ++WORD2(v36);
                                          *(v35 + v26) = a8;
                                          return sub_100020078(598, v35, BYTE4(v36), 0, sub_100022AD0, v16, v17, v18);
                                        }

                                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5551, v34);
                                      }
                                    }

                                    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_59;
                                  }

                                  v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5550, v33);
                                }
                              }

                              v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_55;
                            }

                            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5549, v32);
                          }

                          v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_51;
                        }

                        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5548, v31);
                      }

                      v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_47;
                    }

                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5547, v30);
                  }
                }

                v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_43;
              }

              v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5546, v29);
            }

            v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_39;
          }

          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5545, v28);
        }

        v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_35;
      }

      v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5544, v27);
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10027B920(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(599, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5566, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5565, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027BA98(char a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v10 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v10) = a1;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v11 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v11) = a2;
                return sub_100020078(600, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5581, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5580, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027BBF4(__int16 a1, __int16 a2, uint64_t (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v14) - v10 > 1)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = HIBYTE(a2);
            WORD2(v14) += 2;
            return sub_100020078(601, v13, BYTE4(v14), a3, sub_100022AD0, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5596, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5595, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027BD88(int a1, _WORD *a2, _BYTE *a3, char *a4, uint64_t (*a5)())
{
  LODWORD(v9) = a1;
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_34;
  }

  v14 = WORD2(v23);
  if (WORD1(v23) <= WORD2(v23))
  {
LABEL_34:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_36;
  }

  if (BYTE6(v23) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5611, v21);
  }

  ++WORD2(v23);
  *(v22 + v14) = v9;
  if (v9)
  {
    v9 = v9;
    while (!HIBYTE(v23))
    {
      if (WORD1(v23) - WORD2(v23) <= 1)
      {
        goto LABEL_31;
      }

      if (BYTE6(v23) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_32;
      }

      *(v22 + WORD2(v23)) = *a2;
      v15 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_27:
        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5615, v19);
      }

      if (WORD1(v23) - v15 <= 1)
      {
        goto LABEL_27;
      }

      if (BYTE6(v23) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_28;
      }

      *(v22 + v15) = *a3;
      *(v22 + WORD2(v23) + 1) = a3[1];
      v16 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_23:
        v18 = "ByteStream_NumReadBytesAvail(bs) >= (63)";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5616, v18);
      }

      if (WORD1(v23) - v16 <= 62)
      {
        goto LABEL_23;
      }

      if (BYTE6(v23) != 2)
      {
        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_24;
      }

      memmove((v22 + v16), a4, 0x3FuLL);
      v17 = BYTE4(v23) + 63;
      WORD2(v23) += 63;
      a4 += 63;
      a3 += 2;
      ++a2;
      if (!--v9)
      {
        return sub_100020078(606, v22, v17, a5, sub_100022AD0, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_31:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_32:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5614, v20);
  }

  v17 = BYTE4(v23);
  return sub_100020078(606, v22, v17, a5, sub_100022AD0, v11, v12, v13);
}

uint64_t sub_10027C058(char a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v14) = a1;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v15 = WORD2(v23);
            if (WORD1(v23) > WORD2(v23))
            {
              if (BYTE6(v23) == 2)
              {
                ++WORD2(v23);
                *(v22 + v15) = a2;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v16 = WORD2(v23);
                  if (WORD1(v23) > WORD2(v23))
                  {
                    if (BYTE6(v23) == 2)
                    {
                      ++WORD2(v23);
                      *(v22 + v16) = a3;
                      if (HIBYTE(v23))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v17 = WORD2(v23);
                        if (WORD1(v23) > WORD2(v23))
                        {
                          if (BYTE6(v23) == 2)
                          {
                            ++WORD2(v23);
                            *(v22 + v17) = a4;
                            return sub_100020078(609, v22, BYTE4(v23), a5, sub_10025E5C8, v11, v12, v13);
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5634, v21);
                        }
                      }

                      v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5633, v20);
                  }
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5632, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5631, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10027C2B4(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(605, v14, BYTE4(v15), a3, sub_10025E8BC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5649, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5648, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10027C42C(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(602, v9, BYTE4(v10), a2, sub_10025EC14, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5661, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027C520(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(621, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5673, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10027C5F8(unsigned int a1, char *a2, char *a3, char *a4, uint64_t (*a5)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_32;
  }

  v14 = WORD2(v27);
  if (WORD1(v27) <= WORD2(v27))
  {
LABEL_32:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v27) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5685, v25);
  }

  ++WORD2(v27);
  *(v26 + v14) = a1;
  if (a1)
  {
    v15 = a1;
    while (!HIBYTE(v27))
    {
      v16 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_29;
      }

      if (BYTE6(v27) != 2)
      {
        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_30;
      }

      v17 = *a2;
      ++WORD2(v27);
      *(v26 + v16) = v17;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_25:
        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_26:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5688, v23);
      }

      v18 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_25;
      }

      if (BYTE6(v27) != 2)
      {
        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_26;
      }

      v19 = *a3;
      ++WORD2(v27);
      *(v26 + v18) = v19;
      if (HIBYTE(v27))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_21:
        v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5689, v22);
      }

      v20 = WORD2(v27);
      if (WORD1(v27) <= WORD2(v27))
      {
        goto LABEL_21;
      }

      if (BYTE6(v27) != 2)
      {
        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_22;
      }

      v21 = *a4++;
      ++WORD2(v27);
      *(v26 + v20) = v21;
      ++a3;
      ++a2;
      if (!--v15)
      {
        return sub_100020078(637, v26, BYTE4(v27), a5, sub_100022AD0, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_29:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_30:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5687, v24);
  }

  return sub_100020078(637, v26, BYTE4(v27), a5, sub_100022AD0, v11, v12, v13);
}

uint64_t sub_10027C878(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t *a6, char a7, char a8, char a9, char a10, __int16 a11, char a12, char a13, uint64_t (*a14)())
{
  v149 = 0;
  v150 = 0;
  result = sub_10001FFD8(&v149);
  if (!result)
  {
    if (HIBYTE(v150))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v150) - WORD2(v150) > 5)
    {
      if (BYTE6(v150) == 2)
      {
        sub_1000075EC((v149 + WORD2(v150)), a1, 6uLL);
        v26 = WORD2(v150);
        v27 = WORD2(v150) + 6;
        WORD2(v150) += 6;
        if (HIBYTE(v150))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v150) > v27)
        {
          if (BYTE6(v150) == 2)
          {
            WORD2(v150) = v26 + 7;
            *(v149 + v27) = a2;
            if (a2 <= 127)
            {
              if (a2 <= 2)
              {
                if (a2)
                {
                  if (a2 == 1)
                  {
                    if (HIBYTE(v150))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v28 = WORD2(v150);
                      if (WORD1(v150) > WORD2(v150))
                      {
                        if (BYTE6(v150) == 2)
                        {
                          ++WORD2(v150);
                          *(v149 + v28) = a3;
                          if (HIBYTE(v150))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v29 = WORD2(v150);
                            if (WORD1(v150) > WORD2(v150))
                            {
                              if (BYTE6(v150) == 2)
                              {
                                ++WORD2(v150);
                                *(v149 + v29) = a8;
                                if (HIBYTE(v150))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else
                                {
                                  v30 = WORD2(v150);
                                  if (WORD1(v150) > WORD2(v150))
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      ++WORD2(v150);
                                      *(v149 + v30) = a9;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else
                                      {
                                        v31 = WORD2(v150);
                                        if (WORD1(v150) > WORD2(v150))
                                        {
                                          if (BYTE6(v150) == 2)
                                          {
                                            ++WORD2(v150);
                                            *(v149 + v31) = a10;
                                            if (HIBYTE(v150))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else if (WORD1(v150) - WORD2(v150) > 1)
                                            {
                                              if (BYTE6(v150) == 2)
                                              {
                                                *(v149 + WORD2(v150)) = a11;
                                                v32 = WORD2(v150);
                                                v33 = WORD2(v150) + 2;
                                                WORD2(v150) += 2;
                                                if (HIBYTE(v150))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else if (WORD1(v150) > v33)
                                                {
                                                  if (BYTE6(v150) == 2)
                                                  {
                                                    WORD2(v150) = v32 + 3;
                                                    *(v149 + v33) = a12;
                                                    if (HIBYTE(v150))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v34 = WORD2(v150);
                                                      if (WORD1(v150) > WORD2(v150))
                                                      {
                                                        if (BYTE6(v150) != 2)
                                                        {
                                                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                          goto LABEL_416;
                                                        }

                                                        goto LABEL_212;
                                                      }
                                                    }

                                                    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_416:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5732, v35);
                                                  }

                                                  v134 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_407:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5731, v134);
                                                }

                                                v134 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_407;
                                              }

                                              v126 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_376:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5730, v126);
                                            }

                                            v126 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                            goto LABEL_376;
                                          }

                                          v118 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_344:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5729, v118);
                                        }
                                      }

                                      v118 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_344;
                                    }

                                    v110 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_312:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5728, v110);
                                  }
                                }

                                v110 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_312;
                              }

                              v102 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_280:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5727, v102);
                            }
                          }

                          v102 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_280;
                        }

                        v94 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_248:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5726, v94);
                      }
                    }

                    v94 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_248;
                  }

                  return sub_100020078(81, v149, BYTE4(v150), a14, sub_100022AD0, v23, v24, v25);
                }

                if (HIBYTE(v150))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v63 = WORD2(v150);
                  if (WORD1(v150) > WORD2(v150))
                  {
                    if (BYTE6(v150) == 2)
                    {
                      ++WORD2(v150);
                      *(v149 + v63) = a8;
                      if (HIBYTE(v150))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v64 = WORD2(v150);
                        if (WORD1(v150) > WORD2(v150))
                        {
                          if (BYTE6(v150) == 2)
                          {
                            ++WORD2(v150);
                            *(v149 + v64) = a9;
                            if (HIBYTE(v150))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v65 = WORD2(v150);
                              if (WORD1(v150) > WORD2(v150))
                              {
                                if (BYTE6(v150) == 2)
                                {
                                  ++WORD2(v150);
                                  *(v149 + v65) = a10;
                                  if (HIBYTE(v150))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v150) - WORD2(v150) > 1)
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      *(v149 + WORD2(v150)) = a11;
                                      v66 = WORD2(v150);
                                      v67 = WORD2(v150) + 2;
                                      WORD2(v150) += 2;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v150) > v67)
                                      {
                                        if (BYTE6(v150) == 2)
                                        {
                                          WORD2(v150) = v66 + 3;
                                          *(v149 + v67) = a12;
                                          if (HIBYTE(v150))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v34 = WORD2(v150);
                                            if (WORD1(v150) > WORD2(v150))
                                            {
                                              if (BYTE6(v150) != 2)
                                              {
                                                v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_393;
                                              }

LABEL_212:
                                              WORD2(v150) = v34 + 1;
                                              *(v149 + v34) = a13;
                                              return sub_100020078(81, v149, BYTE4(v150), a14, sub_100022AD0, v23, v24, v25);
                                            }
                                          }

                                          v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_393:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5722, v68);
                                        }

                                        v130 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_368:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5721, v130);
                                      }

                                      v130 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_368;
                                    }

                                    v122 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_336:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5720, v122);
                                  }

                                  v122 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_336;
                                }

                                v114 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_304:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5719, v114);
                              }
                            }

                            v114 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_304;
                          }

                          v106 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_272:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5718, v106);
                        }
                      }

                      v106 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_272;
                    }

                    v98 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_240:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5717, v98);
                  }
                }

                v98 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_240;
              }

              if (a2 != 3)
              {
                if (a2 != 4)
                {
                  return sub_100020078(81, v149, BYTE4(v150), a14, sub_100022AD0, v23, v24, v25);
                }

                if (HIBYTE(v150))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v44 = WORD2(v150);
                  if (WORD1(v150) > WORD2(v150))
                  {
                    if (BYTE6(v150) == 2)
                    {
                      ++WORD2(v150);
                      *(v149 + v44) = a3;
                      if (HIBYTE(v150))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v45 = WORD2(v150);
                        if (WORD1(v150) > WORD2(v150))
                        {
                          if (BYTE6(v150) == 2)
                          {
                            ++WORD2(v150);
                            *(v149 + v45) = a4;
                            if (HIBYTE(v150))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v46 = WORD2(v150);
                              if (WORD1(v150) > WORD2(v150))
                              {
                                if (BYTE6(v150) == 2)
                                {
                                  ++WORD2(v150);
                                  *(v149 + v46) = a5;
                                  if (HIBYTE(v150))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v47 = WORD2(v150);
                                    if (WORD1(v150) > WORD2(v150))
                                    {
                                      if (BYTE6(v150) == 2)
                                      {
                                        ++WORD2(v150);
                                        *(v149 + v47) = a8;
                                        if (HIBYTE(v150))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v48 = WORD2(v150);
                                          if (WORD1(v150) > WORD2(v150))
                                          {
                                            if (BYTE6(v150) == 2)
                                            {
                                              ++WORD2(v150);
                                              *(v149 + v48) = a9;
                                              if (HIBYTE(v150))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v49 = WORD2(v150);
                                                if (WORD1(v150) > WORD2(v150))
                                                {
                                                  if (BYTE6(v150) == 2)
                                                  {
                                                    ++WORD2(v150);
                                                    *(v149 + v49) = a10;
                                                    if (HIBYTE(v150))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else if (WORD1(v150) - WORD2(v150) > 1)
                                                    {
                                                      if (BYTE6(v150) == 2)
                                                      {
                                                        *(v149 + WORD2(v150)) = a11;
                                                        v50 = WORD2(v150);
                                                        v51 = WORD2(v150) + 2;
                                                        WORD2(v150) += 2;
                                                        if (HIBYTE(v150))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                        }

                                                        else if (WORD1(v150) > v51)
                                                        {
                                                          if (BYTE6(v150) == 2)
                                                          {
                                                            WORD2(v150) = v50 + 3;
                                                            *(v149 + v51) = a12;
                                                            if (HIBYTE(v150))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else
                                                            {
                                                              v34 = WORD2(v150);
                                                              if (WORD1(v150) > WORD2(v150))
                                                              {
                                                                if (BYTE6(v150) == 2)
                                                                {
                                                                  goto LABEL_212;
                                                                }

                                                                v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_456:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5754, v52);
                                                              }
                                                            }

                                                            v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_456;
                                                          }

                                                          v145 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_449:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5753, v145);
                                                        }

                                                        v145 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                        goto LABEL_449;
                                                      }

                                                      v142 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_436:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5752, v142);
                                                    }

                                                    v142 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                    goto LABEL_436;
                                                  }

                                                  v136 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_411:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5751, v136);
                                                }
                                              }

                                              v136 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_411;
                                            }

                                            v128 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_380:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5750, v128);
                                          }
                                        }

                                        v128 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_380;
                                      }

                                      v120 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_348:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5749, v120);
                                    }
                                  }

                                  v120 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_348;
                                }

                                v112 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_316:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5748, v112);
                              }
                            }

                            v112 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_316;
                          }

                          v104 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_284:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5747, v104);
                        }
                      }

                      v104 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_284;
                    }

                    v96 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_252:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5746, v96);
                  }
                }

                v96 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_252;
              }

              if (HIBYTE(v150))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v150) - WORD2(v150) > 9)
              {
                if (BYTE6(v150) == 2)
                {
                  v76 = v149 + WORD2(v150);
                  v77 = *a6;
                  *(v76 + 8) = *(a6 + 4);
                  *v76 = v77;
                  v78 = WORD2(v150);
                  v79 = WORD2(v150) + 10;
                  WORD2(v150) += 10;
                  if (HIBYTE(v150))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v150) > v79)
                  {
                    if (BYTE6(v150) == 2)
                    {
                      WORD2(v150) = v78 + 11;
                      *(v149 + v79) = a8;
                      if (HIBYTE(v150))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v80 = WORD2(v150);
                        if (WORD1(v150) > WORD2(v150))
                        {
                          if (BYTE6(v150) == 2)
                          {
                            ++WORD2(v150);
                            *(v149 + v80) = a9;
                            if (HIBYTE(v150))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v81 = WORD2(v150);
                              if (WORD1(v150) > WORD2(v150))
                              {
                                if (BYTE6(v150) == 2)
                                {
                                  ++WORD2(v150);
                                  *(v149 + v81) = a10;
                                  if (HIBYTE(v150))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v150) - WORD2(v150) > 1)
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      *(v149 + WORD2(v150)) = a11;
                                      v82 = WORD2(v150);
                                      v83 = WORD2(v150) + 2;
                                      WORD2(v150) += 2;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v150) > v83)
                                      {
                                        if (BYTE6(v150) == 2)
                                        {
                                          WORD2(v150) = v82 + 3;
                                          *(v149 + v83) = a12;
                                          if (HIBYTE(v150))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v34 = WORD2(v150);
                                            if (WORD1(v150) > WORD2(v150))
                                            {
                                              if (BYTE6(v150) == 2)
                                              {
                                                goto LABEL_212;
                                              }

                                              v84 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_428:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5742, v84);
                                            }
                                          }

                                          v84 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_428;
                                        }

                                        v139 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_403:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5741, v139);
                                      }

                                      v139 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_403;
                                    }

                                    v132 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_372:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5740, v132);
                                  }

                                  v132 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_372;
                                }

                                v124 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_340:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5739, v124);
                              }
                            }

                            v124 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_340;
                          }

                          v116 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_308:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5738, v116);
                        }
                      }

                      v116 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_308;
                    }

                    v108 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_276:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5737, v108);
                  }

                  v108 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_276;
                }

                v100 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_244:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5736, v100);
              }

              v100 = "ByteStream_NumReadBytesAvail(bs) >= (10)";
              goto LABEL_244;
            }

            if (a2 <= 130)
            {
              if (a2 != 128)
              {
                if (a2 != 129)
                {
                  return sub_100020078(81, v149, BYTE4(v150), a14, sub_100022AD0, v23, v24, v25);
                }

                if (HIBYTE(v150))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v36 = WORD2(v150);
                  if (WORD1(v150) > WORD2(v150))
                  {
                    if (BYTE6(v150) == 2)
                    {
                      ++WORD2(v150);
                      *(v149 + v36) = a7;
                      if (HIBYTE(v150))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v37 = WORD2(v150);
                        if (WORD1(v150) > WORD2(v150))
                        {
                          if (BYTE6(v150) == 2)
                          {
                            ++WORD2(v150);
                            *(v149 + v37) = a3;
                            if (HIBYTE(v150))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v38 = WORD2(v150);
                              if (WORD1(v150) > WORD2(v150))
                              {
                                if (BYTE6(v150) == 2)
                                {
                                  ++WORD2(v150);
                                  *(v149 + v38) = a8;
                                  if (HIBYTE(v150))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v39 = WORD2(v150);
                                    if (WORD1(v150) > WORD2(v150))
                                    {
                                      if (BYTE6(v150) == 2)
                                      {
                                        ++WORD2(v150);
                                        *(v149 + v39) = a9;
                                        if (HIBYTE(v150))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v40 = WORD2(v150);
                                          if (WORD1(v150) > WORD2(v150))
                                          {
                                            if (BYTE6(v150) == 2)
                                            {
                                              ++WORD2(v150);
                                              *(v149 + v40) = a10;
                                              if (HIBYTE(v150))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else if (WORD1(v150) - WORD2(v150) > 1)
                                              {
                                                if (BYTE6(v150) == 2)
                                                {
                                                  *(v149 + WORD2(v150)) = a11;
                                                  v41 = WORD2(v150);
                                                  v42 = WORD2(v150) + 2;
                                                  WORD2(v150) += 2;
                                                  if (HIBYTE(v150))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  }

                                                  else if (WORD1(v150) > v42)
                                                  {
                                                    if (BYTE6(v150) == 2)
                                                    {
                                                      WORD2(v150) = v41 + 3;
                                                      *(v149 + v42) = a12;
                                                      if (HIBYTE(v150))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v34 = WORD2(v150);
                                                        if (WORD1(v150) > WORD2(v150))
                                                        {
                                                          if (BYTE6(v150) == 2)
                                                          {
                                                            goto LABEL_212;
                                                          }

                                                          v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_441:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5775, v43);
                                                        }
                                                      }

                                                      v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_441;
                                                    }

                                                    v141 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_434:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5774, v141);
                                                  }

                                                  v141 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                  goto LABEL_434;
                                                }

                                                v135 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_409:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5773, v135);
                                              }

                                              v135 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                              goto LABEL_409;
                                            }

                                            v127 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_378:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5772, v127);
                                          }
                                        }

                                        v127 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_378;
                                      }

                                      v119 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_346:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5771, v119);
                                    }
                                  }

                                  v119 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_346;
                                }

                                v111 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_314:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5770, v111);
                              }
                            }

                            v111 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_314;
                          }

                          v103 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_282:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5769, v103);
                        }
                      }

                      v103 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_282;
                    }

                    v95 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_250:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5768, v95);
                  }
                }

                v95 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_250;
              }

              if (HIBYTE(v150))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else
              {
                v69 = WORD2(v150);
                if (WORD1(v150) > WORD2(v150))
                {
                  if (BYTE6(v150) == 2)
                  {
                    ++WORD2(v150);
                    *(v149 + v69) = a7;
                    if (HIBYTE(v150))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v70 = WORD2(v150);
                      if (WORD1(v150) > WORD2(v150))
                      {
                        if (BYTE6(v150) == 2)
                        {
                          ++WORD2(v150);
                          *(v149 + v70) = a8;
                          if (HIBYTE(v150))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v71 = WORD2(v150);
                            if (WORD1(v150) > WORD2(v150))
                            {
                              if (BYTE6(v150) == 2)
                              {
                                ++WORD2(v150);
                                *(v149 + v71) = a9;
                                if (HIBYTE(v150))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else
                                {
                                  v72 = WORD2(v150);
                                  if (WORD1(v150) > WORD2(v150))
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      ++WORD2(v150);
                                      *(v149 + v72) = a10;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v150) - WORD2(v150) > 1)
                                      {
                                        if (BYTE6(v150) == 2)
                                        {
                                          *(v149 + WORD2(v150)) = a11;
                                          v73 = WORD2(v150);
                                          v74 = WORD2(v150) + 2;
                                          WORD2(v150) += 2;
                                          if (HIBYTE(v150))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else if (WORD1(v150) > v74)
                                          {
                                            if (BYTE6(v150) == 2)
                                            {
                                              WORD2(v150) = v73 + 3;
                                              *(v149 + v74) = a12;
                                              if (HIBYTE(v150))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v34 = WORD2(v150);
                                                if (WORD1(v150) > WORD2(v150))
                                                {
                                                  if (BYTE6(v150) == 2)
                                                  {
                                                    goto LABEL_212;
                                                  }

                                                  v75 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_425:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5764, v75);
                                                }
                                              }

                                              v75 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_425;
                                            }

                                            v138 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_401:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5763, v138);
                                          }

                                          v138 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_401;
                                        }

                                        v131 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_370:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5762, v131);
                                      }

                                      v131 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_370;
                                    }

                                    v123 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_338:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5761, v123);
                                  }
                                }

                                v123 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_338;
                              }

                              v115 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_306:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5760, v115);
                            }
                          }

                          v115 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_306;
                        }

                        v107 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_274:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5759, v107);
                      }
                    }

                    v107 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_274;
                  }

                  v99 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_242:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5758, v99);
                }
              }

              v99 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_242;
            }

            if (a2 != 131)
            {
              if (a2 != 132)
              {
                return sub_100020078(81, v149, BYTE4(v150), a14, sub_100022AD0, v23, v24, v25);
              }

              if (HIBYTE(v150))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else
              {
                v53 = WORD2(v150);
                if (WORD1(v150) > WORD2(v150))
                {
                  if (BYTE6(v150) == 2)
                  {
                    ++WORD2(v150);
                    *(v149 + v53) = a7;
                    if (HIBYTE(v150))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v54 = WORD2(v150);
                      if (WORD1(v150) > WORD2(v150))
                      {
                        if (BYTE6(v150) == 2)
                        {
                          ++WORD2(v150);
                          *(v149 + v54) = a3;
                          if (HIBYTE(v150))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v55 = WORD2(v150);
                            if (WORD1(v150) > WORD2(v150))
                            {
                              if (BYTE6(v150) == 2)
                              {
                                ++WORD2(v150);
                                *(v149 + v55) = a4;
                                if (HIBYTE(v150))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else
                                {
                                  v56 = WORD2(v150);
                                  if (WORD1(v150) > WORD2(v150))
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      ++WORD2(v150);
                                      *(v149 + v56) = a5;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else
                                      {
                                        v57 = WORD2(v150);
                                        if (WORD1(v150) > WORD2(v150))
                                        {
                                          if (BYTE6(v150) == 2)
                                          {
                                            ++WORD2(v150);
                                            *(v149 + v57) = a8;
                                            if (HIBYTE(v150))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else
                                            {
                                              v58 = WORD2(v150);
                                              if (WORD1(v150) > WORD2(v150))
                                              {
                                                if (BYTE6(v150) == 2)
                                                {
                                                  ++WORD2(v150);
                                                  *(v149 + v58) = a9;
                                                  if (HIBYTE(v150))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  }

                                                  else
                                                  {
                                                    v59 = WORD2(v150);
                                                    if (WORD1(v150) > WORD2(v150))
                                                    {
                                                      if (BYTE6(v150) == 2)
                                                      {
                                                        ++WORD2(v150);
                                                        *(v149 + v59) = a10;
                                                        if (HIBYTE(v150))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                        }

                                                        else if (WORD1(v150) - WORD2(v150) > 1)
                                                        {
                                                          if (BYTE6(v150) == 2)
                                                          {
                                                            *(v149 + WORD2(v150)) = a11;
                                                            v60 = WORD2(v150);
                                                            v61 = WORD2(v150) + 2;
                                                            WORD2(v150) += 2;
                                                            if (HIBYTE(v150))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else if (WORD1(v150) > v61)
                                                            {
                                                              if (BYTE6(v150) == 2)
                                                              {
                                                                WORD2(v150) = v60 + 3;
                                                                *(v149 + v61) = a12;
                                                                if (HIBYTE(v150))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                }

                                                                else
                                                                {
                                                                  v34 = WORD2(v150);
                                                                  if (WORD1(v150) > WORD2(v150))
                                                                  {
                                                                    if (BYTE6(v150) == 2)
                                                                    {
                                                                      goto LABEL_212;
                                                                    }

                                                                    v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_463:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5799, v62);
                                                                  }
                                                                }

                                                                v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                goto LABEL_463;
                                                              }

                                                              v148 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_460:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5798, v148);
                                                            }

                                                            v148 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_460;
                                                          }

                                                          v146 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_451:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5797, v146);
                                                        }

                                                        v146 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                        goto LABEL_451;
                                                      }

                                                      v143 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_438:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5796, v143);
                                                    }
                                                  }

                                                  v143 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                  goto LABEL_438;
                                                }

                                                v137 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_413:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5795, v137);
                                              }
                                            }

                                            v137 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_413;
                                          }

                                          v129 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_382:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5794, v129);
                                        }
                                      }

                                      v129 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_382;
                                    }

                                    v121 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_350:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5793, v121);
                                  }
                                }

                                v121 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_350;
                              }

                              v113 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_318:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5792, v113);
                            }
                          }

                          v113 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_318;
                        }

                        v105 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_286:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5791, v105);
                      }
                    }

                    v105 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_286;
                  }

                  v97 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_254:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5790, v97);
                }
              }

              v97 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_254;
            }

            if (HIBYTE(v150))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v85 = WORD2(v150);
              if (WORD1(v150) > WORD2(v150))
              {
                if (BYTE6(v150) == 2)
                {
                  ++WORD2(v150);
                  *(v149 + v85) = a7;
                  if (HIBYTE(v150))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v150) - WORD2(v150) > 15)
                  {
                    if (BYTE6(v150) == 2)
                    {
                      *(v149 + WORD2(v150)) = *a6;
                      v86 = WORD2(v150);
                      v87 = WORD2(v150) + 16;
                      WORD2(v150) += 16;
                      if (HIBYTE(v150))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v150) > v87)
                      {
                        if (BYTE6(v150) == 2)
                        {
                          WORD2(v150) = v86 + 17;
                          *(v149 + v87) = a8;
                          if (HIBYTE(v150))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v88 = WORD2(v150);
                            if (WORD1(v150) > WORD2(v150))
                            {
                              if (BYTE6(v150) == 2)
                              {
                                ++WORD2(v150);
                                *(v149 + v88) = a9;
                                if (HIBYTE(v150))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else
                                {
                                  v89 = WORD2(v150);
                                  if (WORD1(v150) > WORD2(v150))
                                  {
                                    if (BYTE6(v150) == 2)
                                    {
                                      ++WORD2(v150);
                                      *(v149 + v89) = a10;
                                      if (HIBYTE(v150))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v150) - WORD2(v150) > 1)
                                      {
                                        if (BYTE6(v150) == 2)
                                        {
                                          *(v149 + WORD2(v150)) = a11;
                                          v90 = WORD2(v150);
                                          v91 = WORD2(v150) + 2;
                                          WORD2(v150) += 2;
                                          if (HIBYTE(v150))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else if (WORD1(v150) > v91)
                                          {
                                            if (BYTE6(v150) == 2)
                                            {
                                              WORD2(v150) = v90 + 3;
                                              *(v149 + v91) = a12;
                                              if (HIBYTE(v150))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v34 = WORD2(v150);
                                                if (WORD1(v150) > WORD2(v150))
                                                {
                                                  if (BYTE6(v150) == 2)
                                                  {
                                                    goto LABEL_212;
                                                  }

                                                  v147 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_453:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5786, v147);
                                                }
                                              }

                                              v147 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_453;
                                            }

                                            v144 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_432:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5785, v144);
                                          }

                                          v144 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_432;
                                        }

                                        v140 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_405:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5784, v140);
                                      }

                                      v140 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_405;
                                    }

                                    v133 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_374:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5783, v133);
                                  }
                                }

                                v133 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_374;
                              }

                              v125 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_342:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5782, v125);
                            }
                          }

                          v125 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_342;
                        }

                        v117 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_310:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5781, v117);
                      }

                      v117 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_310;
                    }

                    v109 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_278:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5780, v109);
                  }

                  v109 = "ByteStream_NumReadBytesAvail(bs) >= (16)";
                  goto LABEL_278;
                }

                v101 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_246:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5779, v101);
              }
            }

            v101 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_246;
          }

          v93 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_222:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5713, v93);
        }

        v93 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_222;
      }

      v92 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_218:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5712, v92);
    }

    v92 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_218;
  }

  return result;
}

uint64_t sub_10027E818(uint64_t a1, __int16 a2, int a3, char a4, char a5, char a6, char a7, char a8, char a9, __int16 a10, uint64_t (*a11)())
{
  v42 = 0;
  v43 = 0;
  result = sub_10001FFD8(&v42);
  if (!result)
  {
    if (HIBYTE(v43))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v43) - WORD2(v43) > 5)
    {
      if (BYTE6(v43) == 2)
      {
        sub_1000075EC((v42 + WORD2(v43)), a1, 6uLL);
        v23 = WORD2(v43) + 6;
        WORD2(v43) += 6;
        if (HIBYTE(v43))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v43) - v23 > 1)
        {
          if (BYTE6(v43) == 2)
          {
            *(v42 + v23) = a2;
            *(v42 + WORD2(v43) + 1) = HIBYTE(a2);
            v24 = WORD2(v43);
            v25 = WORD2(v43) + 2;
            WORD2(v43) += 2;
            if (a3)
            {
              if (HIBYTE(v43))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v43) > v25)
              {
                if (BYTE6(v43) == 2)
                {
                  v26 = a5 | (a4 << 7);
                  goto LABEL_17;
                }

                v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5816, v38);
              }

              v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_66;
            }

            if (HIBYTE(v43))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v43) > v25)
            {
              if (BYTE6(v43) == 2)
              {
                v26 = 0;
LABEL_17:
                WORD2(v43) = v24 + 3;
                *(v42 + v25) = v26;
                if (HIBYTE(v43))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v27 = WORD2(v43);
                  if (WORD1(v43) > WORD2(v43))
                  {
                    if (BYTE6(v43) == 2)
                    {
                      ++WORD2(v43);
                      *(v42 + v27) = a6;
                      if (HIBYTE(v43))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v28 = WORD2(v43);
                        if (WORD1(v43) > WORD2(v43))
                        {
                          if (BYTE6(v43) == 2)
                          {
                            ++WORD2(v43);
                            *(v42 + v28) = a7;
                            if (HIBYTE(v43))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v29 = WORD2(v43);
                              if (WORD1(v43) > WORD2(v43))
                              {
                                if (BYTE6(v43) == 2)
                                {
                                  ++WORD2(v43);
                                  *(v42 + v29) = a9;
                                  if (HIBYTE(v43))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v43) - WORD2(v43) > 1)
                                  {
                                    if (BYTE6(v43) == 2)
                                    {
                                      *(v42 + WORD2(v43)) = a10;
                                      v30 = WORD2(v43);
                                      LOWORD(v31) = WORD2(v43) + 2;
                                      WORD2(v43) += 2;
                                      if (a3)
                                      {
                                        return sub_100020078(82, v42, v31, a11, sub_100022AD0, v20, v21, v22);
                                      }

                                      if (HIBYTE(v43))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v43) > v31)
                                      {
                                        if (BYTE6(v43) == 2)
                                        {
                                          WORD2(v43) = v30 + 3;
                                          *(v42 + v31) = a8;
                                          if (HIBYTE(v43))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v31 = WORD2(v43);
                                            if (WORD1(v43) > WORD2(v43))
                                            {
                                              if (BYTE6(v43) == 2)
                                              {
                                                ++WORD2(v43);
                                                *(v42 + v31) = a5 | (a4 << 7);
                                                LOBYTE(v31) = BYTE4(v43);
                                                return sub_100020078(82, v42, v31, a11, sub_100022AD0, v20, v21, v22);
                                              }

                                              v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5826, v41);
                                            }
                                          }

                                          v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_78;
                                        }

                                        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5825, v40);
                                      }

                                      v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_74;
                                    }

                                    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5823, v37);
                                  }

                                  v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_62;
                                }

                                v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5822, v36);
                              }
                            }

                            v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_58;
                          }

                          v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5821, v35);
                        }
                      }

                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_54;
                    }

                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5820, v34);
                  }
                }

                v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_50;
              }

              v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5818, v39);
            }

            v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_70;
          }

          v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5814, v33);
        }

        v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_46;
      }

      v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5813, v32);
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_10027EDB0(int a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, uint64_t (*a13)())
{
  v81 = 0;
  v82 = 0;
  result = sub_10001FFD8(&v81);
  if (!result)
  {
    if (a1)
    {
      if (HIBYTE(v82))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v25 = WORD2(v82);
        if (WORD1(v82) > WORD2(v82))
        {
          if (BYTE6(v82) == 2)
          {
            ++WORD2(v82);
            *(v81 + v25) = a2 | 0x80;
            v26 = v81 + WORD2(v82);
            if (a2)
            {
              if (HIBYTE(v82))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v82) - WORD2(v82) > 5)
              {
                if (BYTE6(v82) == 2)
                {
                  *(v26 + 4) = 0;
                  *v26 = 0;
                  v27 = WORD2(v82);
                  v28 = WORD2(v82) + 6;
                  WORD2(v82) += 6;
                  if (HIBYTE(v82))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v82) > v28)
                  {
                    if (BYTE6(v82) == 2)
                    {
                      WORD2(v82) = v27 + 7;
                      *(v81 + v28) = a7;
                      if (HIBYTE(v82))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v29 = WORD2(v82);
                        if (WORD1(v82) > WORD2(v82))
                        {
                          if (BYTE6(v82) == 2)
                          {
                            ++WORD2(v82);
                            *(v81 + v29) = a8;
                            if (HIBYTE(v82))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v30 = WORD2(v82);
                              if (WORD1(v82) > WORD2(v82))
                              {
                                if (BYTE6(v82) == 2)
                                {
                                  ++WORD2(v82);
                                  *(v81 + v30) = a9;
                                  if (HIBYTE(v82))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v31 = WORD2(v82);
                                    if (WORD1(v82) - WORD2(v82) > 1)
                                    {
                                      if (BYTE6(v82) != 2)
                                      {
                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                        goto LABEL_117;
                                      }

                                      goto LABEL_67;
                                    }
                                  }

                                  v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_117:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5847, v32);
                                }

                                v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_114:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5846, v59);
                              }
                            }

                            v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_114;
                          }

                          v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_110:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5845, v58);
                        }
                      }

                      v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_110;
                    }

                    v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5844, v57);
                  }

                  v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_106;
                }

                v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5843, v56);
              }

              v56 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
              goto LABEL_102;
            }

            if (HIBYTE(v82))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v82) > WORD2(v82))
            {
              if (BYTE6(v82) == 2)
              {
                *v26 = 0;
                v39 = WORD2(v82);
                v40 = ++WORD2(v82);
                if (HIBYTE(v82))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v82) > v40)
                {
                  if (BYTE6(v82) == 2)
                  {
                    WORD2(v82) = v39 + 2;
                    *(v81 + v40) = a3;
                    if (HIBYTE(v82))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v41 = WORD2(v82);
                      if (WORD1(v82) > WORD2(v82))
                      {
                        if (BYTE6(v82) == 2)
                        {
                          ++WORD2(v82);
                          *(v81 + v41) = a4;
                          if (HIBYTE(v82))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v42 = WORD2(v82);
                            if (WORD1(v82) > WORD2(v82))
                            {
                              if (BYTE6(v82) == 2)
                              {
                                ++WORD2(v82);
                                *(v81 + v42) = a5;
                                if (HIBYTE(v82))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else if (WORD1(v82) > WORD2(v82))
                                {
                                  if (BYTE6(v82) == 2)
                                  {
                                    *(v81 + WORD2(v82)) = 0;
                                    v43 = WORD2(v82);
                                    v44 = ++WORD2(v82);
                                    if (HIBYTE(v82))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v82) > v44)
                                    {
                                      if (BYTE6(v82) == 2)
                                      {
                                        WORD2(v82) = v43 + 2;
                                        *(v81 + v44) = a6;
                                        if (HIBYTE(v82))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v45 = WORD2(v82);
                                          if (WORD1(v82) > WORD2(v82))
                                          {
                                            if (BYTE6(v82) == 2)
                                            {
                                              ++WORD2(v82);
                                              *(v81 + v45) = a7;
                                              if (HIBYTE(v82))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v46 = WORD2(v82);
                                                if (WORD1(v82) > WORD2(v82))
                                                {
                                                  if (BYTE6(v82) == 2)
                                                  {
                                                    ++WORD2(v82);
                                                    *(v81 + v46) = a8;
                                                    if (HIBYTE(v82))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v47 = WORD2(v82);
                                                      if (WORD1(v82) > WORD2(v82))
                                                      {
                                                        if (BYTE6(v82) == 2)
                                                        {
                                                          ++WORD2(v82);
                                                          *(v81 + v47) = a9;
                                                          if (HIBYTE(v82))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                          }

                                                          else
                                                          {
                                                            v31 = WORD2(v82);
                                                            if (WORD1(v82) - WORD2(v82) > 1)
                                                            {
                                                              if (BYTE6(v82) == 2)
                                                              {
LABEL_67:
                                                                *(v81 + v31) = a11;
                                                                *(v81 + WORD2(v82) + 1) = a12;
                                                                WORD2(v82) += 2;
                                                                return sub_100020078(501, v81, BYTE4(v82), a13, sub_100022AD0, v22, v23, v24);
                                                              }

                                                              v72 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_172:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5859, v72);
                                                            }
                                                          }

                                                          v72 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                          goto LABEL_172;
                                                        }

                                                        v71 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_168:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5858, v71);
                                                      }
                                                    }

                                                    v71 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_168;
                                                  }

                                                  v70 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_164:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5857, v70);
                                                }
                                              }

                                              v70 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_164;
                                            }

                                            v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_160:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5856, v69);
                                          }
                                        }

                                        v69 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_160;
                                      }

                                      v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_156:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5855, v68);
                                    }

                                    v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_156;
                                  }

                                  v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_152:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5854, v67);
                                }

                                v67 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                goto LABEL_152;
                              }

                              v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_148:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5853, v66);
                            }
                          }

                          v66 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_148;
                        }

                        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_144:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5852, v65);
                      }
                    }

                    v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_144;
                  }

                  v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_137:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5851, v64);
                }

                v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_137;
              }

              v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_129:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5850, v62);
            }

            v62 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
            goto LABEL_129;
          }

          v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5840, v55);
        }
      }

      v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_98;
    }

    if (HIBYTE(v82))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v33 = WORD2(v82);
      if (WORD1(v82) > WORD2(v82))
      {
        if (BYTE6(v82) == 2)
        {
          ++WORD2(v82);
          *(v81 + v33) = a2;
          if (a2)
          {
            if (HIBYTE(v82))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v82) - WORD2(v82) > 5)
            {
              if (BYTE6(v82) == 2)
              {
                v34 = v81 + WORD2(v82);
                *(v34 + 4) = 0;
                *v34 = 0;
                v35 = WORD2(v82);
                v36 = WORD2(v82) + 6;
                WORD2(v82) += 6;
                if (HIBYTE(v82))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v82) > v36)
                {
                  if (BYTE6(v82) == 2)
                  {
                    WORD2(v82) = v35 + 7;
                    *(v81 + v36) = a7;
                    if (HIBYTE(v82))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v37 = WORD2(v82);
                      if (WORD1(v82) > WORD2(v82))
                      {
                        if (BYTE6(v82) != 2)
                        {
                          v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_140;
                        }

LABEL_92:
                        WORD2(v82) = v37 + 1;
                        *(v81 + v37) = a8;
                        return sub_100020078(501, v81, BYTE4(v82), a13, sub_100022AD0, v22, v23, v24);
                      }
                    }

                    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_140:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5867, v38);
                  }

                  v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_135:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5866, v63);
                }

                v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_135;
              }

              v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_127:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5865, v61);
            }

            v61 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
            goto LABEL_127;
          }

          if (HIBYTE(v82))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v48 = WORD2(v82);
            if (WORD1(v82) > WORD2(v82))
            {
              if (BYTE6(v82) == 2)
              {
                ++WORD2(v82);
                *(v81 + v48) = a10;
                if (HIBYTE(v82))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v49 = WORD2(v82);
                  if (WORD1(v82) > WORD2(v82))
                  {
                    if (BYTE6(v82) == 2)
                    {
                      ++WORD2(v82);
                      *(v81 + v49) = a3;
                      if (HIBYTE(v82))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v50 = WORD2(v82);
                        if (WORD1(v82) > WORD2(v82))
                        {
                          if (BYTE6(v82) == 2)
                          {
                            ++WORD2(v82);
                            *(v81 + v50) = a4;
                            if (HIBYTE(v82))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v51 = WORD2(v82);
                              if (WORD1(v82) > WORD2(v82))
                              {
                                if (BYTE6(v82) == 2)
                                {
                                  ++WORD2(v82);
                                  *(v81 + v51) = a5;
                                  if (HIBYTE(v82))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v52 = WORD2(v82);
                                    if (WORD1(v82) > WORD2(v82))
                                    {
                                      if (BYTE6(v82) == 2)
                                      {
                                        ++WORD2(v82);
                                        *(v81 + v52) = a6;
                                        if (HIBYTE(v82))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else if (WORD1(v82) > WORD2(v82))
                                        {
                                          if (BYTE6(v82) == 2)
                                          {
                                            *(v81 + WORD2(v82)) = 0;
                                            v53 = WORD2(v82);
                                            v54 = ++WORD2(v82);
                                            if (HIBYTE(v82))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else if (WORD1(v82) > v54)
                                            {
                                              if (BYTE6(v82) == 2)
                                              {
                                                WORD2(v82) = v53 + 2;
                                                *(v81 + v54) = a7;
                                                if (HIBYTE(v82))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v37 = WORD2(v82);
                                                  if (WORD1(v82) > WORD2(v82))
                                                  {
                                                    if (BYTE6(v82) == 2)
                                                    {
                                                      goto LABEL_92;
                                                    }

                                                    v80 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_204:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5877, v80);
                                                  }
                                                }

                                                v80 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_204;
                                              }

                                              v79 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_200:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5876, v79);
                                            }

                                            v79 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_200;
                                          }

                                          v78 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_196:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5875, v78);
                                        }

                                        v78 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                        goto LABEL_196;
                                      }

                                      v77 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_192:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5874, v77);
                                    }
                                  }

                                  v77 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_192;
                                }

                                v76 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_188:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5873, v76);
                              }
                            }

                            v76 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_188;
                          }

                          v75 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_184:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5872, v75);
                        }
                      }

                      v75 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_184;
                    }

                    v74 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_180:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5871, v74);
                  }
                }

                v74 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_180;
              }

              v73 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_176:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5870, v73);
            }
          }

          v73 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_176;
        }

        v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_121:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5862, v60);
      }
    }

    v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_121;
  }

  return result;
}

uint64_t sub_10027FB9C(__int16 a1, __int16 a2, char a3, char a4, char a5, __int16 a6, __int16 a7, __int16 a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t (*a17)())
{
  v55 = 0;
  v56 = 0;
  result = sub_10001FFD8(&v55);
  if (!result)
  {
    if (HIBYTE(v56))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v56) - WORD2(v56) > 1)
    {
      if (BYTE6(v56) == 2)
      {
        *(v55 + WORD2(v56)) = a1;
        v29 = WORD2(v56) + 2;
        WORD2(v56) += 2;
        if (HIBYTE(v56))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v56) - v29 > 1)
        {
          if (BYTE6(v56) == 2)
          {
            *(v55 + v29) = a2;
            *(v55 + WORD2(v56) + 1) = HIBYTE(a2);
            v30 = WORD2(v56);
            v31 = WORD2(v56) + 2;
            WORD2(v56) += 2;
            if (HIBYTE(v56))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v56) > v31)
            {
              if (BYTE6(v56) == 2)
              {
                WORD2(v56) = v30 + 3;
                *(v55 + v31) = a3;
                if (HIBYTE(v56))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v32 = WORD2(v56);
                  if (WORD1(v56) > WORD2(v56))
                  {
                    if (BYTE6(v56) == 2)
                    {
                      ++WORD2(v56);
                      *(v55 + v32) = a4;
                      if (HIBYTE(v56))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v33 = WORD2(v56);
                        if (WORD1(v56) > WORD2(v56))
                        {
                          if (BYTE6(v56) == 2)
                          {
                            ++WORD2(v56);
                            *(v55 + v33) = a5;
                            if (HIBYTE(v56))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else if (WORD1(v56) - WORD2(v56) > 1)
                            {
                              if (BYTE6(v56) == 2)
                              {
                                *(v55 + WORD2(v56)) = a6;
                                v34 = WORD2(v56) + 2;
                                WORD2(v56) += 2;
                                if (HIBYTE(v56))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else if (WORD1(v56) - v34 > 1)
                                {
                                  if (BYTE6(v56) == 2)
                                  {
                                    *(v55 + v34) = a7;
                                    *(v55 + WORD2(v56) + 1) = HIBYTE(a7);
                                    v35 = WORD2(v56) + 2;
                                    WORD2(v56) += 2;
                                    if (HIBYTE(v56))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v56) - v35 > 1)
                                    {
                                      if (BYTE6(v56) == 2)
                                      {
                                        *(v55 + v35) = a8;
                                        *(v55 + WORD2(v56) + 1) = HIBYTE(a8);
                                        v36 = WORD2(v56) + 2;
                                        WORD2(v56) += 2;
                                        if (HIBYTE(v56))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else if (WORD1(v56) - v36 > 1)
                                        {
                                          if (BYTE6(v56) == 2)
                                          {
                                            *(v55 + v36) = a9;
                                            *(v55 + WORD2(v56) + 1) = a10;
                                            v37 = WORD2(v56) + 2;
                                            WORD2(v56) += 2;
                                            if (HIBYTE(v56))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            }

                                            else if (WORD1(v56) - v37 > 1)
                                            {
                                              if (BYTE6(v56) == 2)
                                              {
                                                *(v55 + v37) = a11;
                                                *(v55 + WORD2(v56) + 1) = a12;
                                                v38 = WORD2(v56) + 2;
                                                WORD2(v56) += 2;
                                                if (HIBYTE(v56))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else if (WORD1(v56) - v38 > 1)
                                                {
                                                  if (BYTE6(v56) == 2)
                                                  {
                                                    *(v55 + v38) = a13;
                                                    *(v55 + WORD2(v56) + 1) = a14;
                                                    v39 = WORD2(v56);
                                                    v40 = WORD2(v56) + 2;
                                                    WORD2(v56) += 2;
                                                    if (HIBYTE(v56))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else if (WORD1(v56) > v40)
                                                    {
                                                      if (BYTE6(v56) == 2)
                                                      {
                                                        WORD2(v56) = v39 + 3;
                                                        *(v55 + v40) = a15;
                                                        if (HIBYTE(v56))
                                                        {
                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                        }

                                                        else
                                                        {
                                                          v41 = WORD2(v56);
                                                          if (WORD1(v56) > WORD2(v56))
                                                          {
                                                            if (BYTE6(v56) == 2)
                                                            {
                                                              ++WORD2(v56);
                                                              *(v55 + v41) = a16;
                                                              return sub_100020078(48, v55, BYTE4(v56), a17, sub_100022AD0, v26, v27, v28);
                                                            }

                                                            v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5903, v54);
                                                          }
                                                        }

                                                        v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                        goto LABEL_94;
                                                      }

                                                      v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5902, v53);
                                                    }

                                                    v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_90;
                                                  }

                                                  v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5901, v52);
                                                }

                                                v52 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                goto LABEL_86;
                                              }

                                              v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5900, v51);
                                            }

                                            v51 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                            goto LABEL_82;
                                          }

                                          v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5899, v50);
                                        }

                                        v50 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_78;
                                      }

                                      v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5898, v49);
                                    }

                                    v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                    goto LABEL_74;
                                  }

                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5897, v48);
                                }

                                v48 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_70;
                              }

                              v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5896, v47);
                            }

                            v47 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_66;
                          }

                          v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5895, v46);
                        }
                      }

                      v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_62;
                    }

                    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5894, v45);
                  }
                }

                v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_58;
              }

              v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5893, v44);
            }

            v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_54;
          }

          v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5892, v43);
        }

        v43 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_50;
      }

      v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5891, v42);
    }

    v42 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_100280338(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(49, v9, BYTE4(v10), a2, sub_100022AD0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5916, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10028042C(__int16 a1, __int16 a2, __int16 a3, __int16 a4, char a5, __int16 a6, uint64_t (*a7)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v30) - WORD2(v30) > 1)
    {
      if (BYTE6(v30) == 2)
      {
        *(v29 + WORD2(v30)) = a1;
        v18 = WORD2(v30) + 2;
        WORD2(v30) += 2;
        if (HIBYTE(v30))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v30) - v18 > 1)
        {
          if (BYTE6(v30) == 2)
          {
            *(v29 + v18) = a2;
            *(v29 + WORD2(v30) + 1) = HIBYTE(a2);
            v19 = WORD2(v30) + 2;
            WORD2(v30) += 2;
            if (HIBYTE(v30))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v30) - v19 > 1)
            {
              if (BYTE6(v30) == 2)
              {
                *(v29 + v19) = a3;
                *(v29 + WORD2(v30) + 1) = HIBYTE(a3);
                v20 = WORD2(v30) + 2;
                WORD2(v30) += 2;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v30) - v20 > 1)
                {
                  if (BYTE6(v30) == 2)
                  {
                    *(v29 + v20) = a4;
                    *(v29 + WORD2(v30) + 1) = HIBYTE(a4);
                    v21 = WORD2(v30);
                    v22 = WORD2(v30) + 2;
                    WORD2(v30) += 2;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v30) > v22)
                    {
                      if (BYTE6(v30) == 2)
                      {
                        WORD2(v30) = v21 + 3;
                        *(v29 + v22) = a5;
                        if (HIBYTE(v30))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v30) - WORD2(v30) > 1)
                        {
                          if (BYTE6(v30) == 2)
                          {
                            *(v29 + WORD2(v30)) = a6;
                            WORD2(v30) += 2;
                            return sub_100020078(50, v29, BYTE4(v30), a7, sub_100022AD0, v15, v16, v17);
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5934, v28);
                        }

                        v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_45;
                      }

                      v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5933, v27);
                    }

                    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_41;
                  }

                  v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5932, v26);
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_37;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5931, v25);
            }

            v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5930, v24);
        }

        v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_29;
      }

      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5929, v23);
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100280814(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(56, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5948, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5947, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10028098C(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(53, v14, BYTE4(v15), a3, sub_10025DF4C, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5962, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5961, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}