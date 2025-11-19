uint64_t sub_100280B04(__int16 a1, char a2, uint64_t (*a3)())
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
            return sub_100020078(51, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5977, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5976, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100280C7C(char a1, uint64_t (*a2)())
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
          return sub_100020078(52, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5991, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100280D54(__int16 a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v14) = 93;
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v24) - WORD2(v24) > 1)
          {
            if (BYTE6(v24) == 2)
            {
              *(v23 + WORD2(v24)) = a1;
              v15 = WORD2(v24);
              v16 = WORD2(v24) + 2;
              WORD2(v24) += 2;
              if (HIBYTE(v24))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v24) > v16)
              {
                if (BYTE6(v24) == 2)
                {
                  WORD2(v24) = v15 + 3;
                  *(v23 + v16) = a2;
                  if (HIBYTE(v24))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v24) > WORD2(v24))
                  {
                    if (BYTE6(v24) == 2)
                    {
                      *(v23 + WORD2(v24)) = a3;
                      v17 = ++WORD2(v24);
                      if (HIBYTE(v24))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v24) > v17)
                      {
                        if (BYTE6(v24) == 2)
                        {
                          *(v23 + v17) = a4;
                          ++WORD2(v24);
                          return sub_100020078(233, v23, BYTE4(v24), a5, sub_100022AD0, v11, v12, v13);
                        }

                        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6008, v22);
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                      goto LABEL_38;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6007, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_34;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6006, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_30;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6005, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6004, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100281050(char a1, char a2, char a3, int a4, char a5, uint64_t (*a6)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (!result)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v16 = WORD2(v31);
      if (WORD1(v31) > WORD2(v31))
      {
        if (BYTE6(v31) == 2)
        {
          ++WORD2(v31);
          *(v30 + v16) = 94;
          if (HIBYTE(v31))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v17 = WORD2(v31);
            if (WORD1(v31) > WORD2(v31))
            {
              if (BYTE6(v31) == 2)
              {
                ++WORD2(v31);
                *(v30 + v17) = 2;
                if (HIBYTE(v31))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v18 = WORD2(v31);
                  if (WORD1(v31) > WORD2(v31))
                  {
                    if (BYTE6(v31) == 2)
                    {
                      ++WORD2(v31);
                      *(v30 + v18) = a1;
                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v19 = WORD2(v31);
                        if (WORD1(v31) > WORD2(v31))
                        {
                          if (BYTE6(v31) == 2)
                          {
                            ++WORD2(v31);
                            *(v30 + v19) = a2;
                            if (HIBYTE(v31))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v20 = WORD2(v31);
                              if (WORD1(v31) > WORD2(v31))
                              {
                                if (BYTE6(v31) == 2)
                                {
                                  ++WORD2(v31);
                                  *(v30 + v20) = a3;
                                  if (HIBYTE(v31))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v31) - WORD2(v31) > 3)
                                  {
                                    if (BYTE6(v31) == 2)
                                    {
                                      *(v30 + WORD2(v31)) = a4;
                                      *(v30 + WORD2(v31) + 2) = BYTE2(a4);
                                      *(v30 + WORD2(v31) + 3) = HIBYTE(a4);
                                      v21 = WORD2(v31);
                                      v22 = WORD2(v31) + 4;
                                      WORD2(v31) += 4;
                                      if (HIBYTE(v31))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v31) > v22)
                                      {
                                        if (BYTE6(v31) == 2)
                                        {
                                          WORD2(v31) = v21 + 5;
                                          *(v30 + v22) = a5;
                                          return sub_100020078(233, v30, BYTE4(v31), a6, sub_100022AD0, v13, v14, v15);
                                        }

                                        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6029, v29);
                                      }

                                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_52;
                                    }

                                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6028, v28);
                                  }

                                  v28 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                  goto LABEL_48;
                                }

                                v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6027, v27);
                              }
                            }

                            v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6026, v26);
                        }
                      }

                      v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6025, v25);
                  }
                }

                v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6024, v24);
            }
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6023, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100281464(_WORD *a1, __int16 a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v19) - WORD2(v19) > 1)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = *a1;
        v12 = WORD2(v19) + 2;
        WORD2(v19) += 2;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v19) - v12 > 1)
        {
          if (BYTE6(v19) == 2)
          {
            *(v18 + v12) = a2;
            *(v18 + WORD2(v19) + 1) = HIBYTE(a2);
            v13 = WORD2(v19);
            v14 = WORD2(v19) + 2;
            WORD2(v19) += 2;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v19) > v14)
            {
              if (BYTE6(v19) == 2)
              {
                WORD2(v19) = v13 + 3;
                *(v18 + v14) = a3;
                return sub_100020078(512, v18, BYTE4(v19), a4, sub_100022AD0, v9, v10, v11);
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6045, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6044, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6043, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100281678(char a1, uint64_t (*a2)())
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

    else if (WORD1(v15) - WORD2(v15) > 3)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = 0;
        *(v14 + WORD2(v15) + 1) = 0;
        *(v14 + WORD2(v15) + 3) = 0;
        v8 = WORD2(v15);
        v9 = WORD2(v15) + 4;
        WORD2(v15) += 4;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v9)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v8 + 5;
            *(v14 + v9) = a1;
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
                  *(v14 + v10) = 4;
                  return sub_100020078(520, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
                }

                v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6393, v13);
              }
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6392, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6391, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10028187C(uint64_t (*a1)())
{
  v7 = 0;
  v8 = 0;
  result = sub_10001FFD8(&v7);
  if (!result)
  {
    if (HIBYTE(v8))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v8) - WORD2(v8) > 3)
    {
      if (BYTE6(v8) == 2)
      {
        *(v7 + WORD2(v8)) = 1;
        *(v7 + WORD2(v8) + 1) = 0;
        *(v7 + WORD2(v8) + 3) = 0;
        WORD2(v8) += 4;
        return sub_100020078(520, v7, BYTE4(v8), a1, sub_10025D748, v3, v4, v5);
      }

      v6 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6407, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10028198C(__int16 a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
{
  v71 = 0;
  v72 = 0;
  result = sub_10001FFD8(&v71);
  if (!result)
  {
    if (HIBYTE(v72))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v72) - WORD2(v72) > 1)
    {
      if (BYTE6(v72) == 2)
      {
        *(v71 + WORD2(v72)) = a1;
        v16 = WORD2(v72);
        v17 = WORD2(v72) + 2;
        WORD2(v72) += 2;
        if (HIBYTE(v72))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v72) > v17)
        {
          if (BYTE6(v72) == 2)
          {
            WORD2(v72) = v16 + 3;
            *(v71 + v17) = a2;
            if (HIBYTE(v72))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v18 = WORD2(v72);
              if (WORD1(v72) > WORD2(v72))
              {
                if (BYTE6(v72) == 2)
                {
                  ++WORD2(v72);
                  *(v71 + v18) = a3;
                  if (HIBYTE(v72))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v19 = WORD2(v72);
                    if (WORD1(v72) > WORD2(v72))
                    {
                      if (BYTE6(v72) == 2)
                      {
                        ++WORD2(v72);
                        *(v71 + v19) = a4;
                        if (HIBYTE(v72))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v20 = WORD2(v72);
                          if (WORD1(v72) > WORD2(v72))
                          {
                            if (BYTE6(v72) == 2)
                            {
                              ++WORD2(v72);
                              *(v71 + v20) = a4;
                              if (HIBYTE(v72))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v21 = WORD2(v72);
                                if (WORD1(v72) > WORD2(v72))
                                {
                                  if (BYTE6(v72) == 2)
                                  {
                                    ++WORD2(v72);
                                    *(v71 + v21) = a4;
                                    if (HIBYTE(v72))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else
                                    {
                                      v22 = WORD2(v72);
                                      if (WORD1(v72) > WORD2(v72))
                                      {
                                        if (BYTE6(v72) == 2)
                                        {
                                          ++WORD2(v72);
                                          *(v71 + v22) = a4;
                                          if (HIBYTE(v72))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v23 = WORD2(v72);
                                            if (WORD1(v72) > WORD2(v72))
                                            {
                                              if (BYTE6(v72) == 2)
                                              {
                                                ++WORD2(v72);
                                                *(v71 + v23) = a4;
                                                if (HIBYTE(v72))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v24 = WORD2(v72);
                                                  if (WORD1(v72) > WORD2(v72))
                                                  {
                                                    if (BYTE6(v72) == 2)
                                                    {
                                                      ++WORD2(v72);
                                                      *(v71 + v24) = a4;
                                                      if (HIBYTE(v72))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v25 = WORD2(v72);
                                                        if (WORD1(v72) > WORD2(v72))
                                                        {
                                                          if (BYTE6(v72) == 2)
                                                          {
                                                            ++WORD2(v72);
                                                            *(v71 + v25) = a4;
                                                            if (HIBYTE(v72))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else
                                                            {
                                                              v26 = WORD2(v72);
                                                              if (WORD1(v72) > WORD2(v72))
                                                              {
                                                                if (BYTE6(v72) == 2)
                                                                {
                                                                  ++WORD2(v72);
                                                                  *(v71 + v26) = a4;
                                                                  if (HIBYTE(v72))
                                                                  {
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                  }

                                                                  else
                                                                  {
                                                                    v27 = WORD2(v72);
                                                                    if (WORD1(v72) > WORD2(v72))
                                                                    {
                                                                      if (BYTE6(v72) == 2)
                                                                      {
                                                                        ++WORD2(v72);
                                                                        *(v71 + v27) = a4;
                                                                        if (HIBYTE(v72))
                                                                        {
                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                        }

                                                                        else
                                                                        {
                                                                          v28 = WORD2(v72);
                                                                          if (WORD1(v72) > WORD2(v72))
                                                                          {
                                                                            if (BYTE6(v72) == 2)
                                                                            {
                                                                              ++WORD2(v72);
                                                                              *(v71 + v28) = a4;
                                                                              if (HIBYTE(v72))
                                                                              {
                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                              }

                                                                              else
                                                                              {
                                                                                v29 = WORD2(v72);
                                                                                if (WORD1(v72) > WORD2(v72))
                                                                                {
                                                                                  if (BYTE6(v72) == 2)
                                                                                  {
                                                                                    ++WORD2(v72);
                                                                                    *(v71 + v29) = a4;
                                                                                    if (HIBYTE(v72))
                                                                                    {
                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v30 = WORD2(v72);
                                                                                      if (WORD1(v72) > WORD2(v72))
                                                                                      {
                                                                                        if (BYTE6(v72) == 2)
                                                                                        {
                                                                                          ++WORD2(v72);
                                                                                          *(v71 + v30) = a4;
                                                                                          if (HIBYTE(v72))
                                                                                          {
                                                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v31 = WORD2(v72);
                                                                                            if (WORD1(v72) > WORD2(v72))
                                                                                            {
                                                                                              if (BYTE6(v72) == 2)
                                                                                              {
                                                                                                ++WORD2(v72);
                                                                                                *(v71 + v31) = a4;
                                                                                                if (HIBYTE(v72))
                                                                                                {
                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v32 = WORD2(v72);
                                                                                                  if (WORD1(v72) > WORD2(v72))
                                                                                                  {
                                                                                                    if (BYTE6(v72) == 2)
                                                                                                    {
                                                                                                      ++WORD2(v72);
                                                                                                      *(v71 + v32) = a4;
                                                                                                      if (HIBYTE(v72))
                                                                                                      {
                                                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v33 = WORD2(v72);
                                                                                                        if (WORD1(v72) > WORD2(v72))
                                                                                                        {
                                                                                                          if (BYTE6(v72) == 2)
                                                                                                          {
                                                                                                            ++WORD2(v72);
                                                                                                            *(v71 + v33) = a4;
                                                                                                            if (HIBYTE(v72))
                                                                                                            {
                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v34 = WORD2(v72);
                                                                                                              if (WORD1(v72) > WORD2(v72))
                                                                                                              {
                                                                                                                if (BYTE6(v72) == 2)
                                                                                                                {
                                                                                                                  ++WORD2(v72);
                                                                                                                  *(v71 + v34) = a4;
                                                                                                                  if (HIBYTE(v72))
                                                                                                                  {
                                                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v35 = WORD2(v72);
                                                                                                                    if (WORD1(v72) > WORD2(v72))
                                                                                                                    {
                                                                                                                      if (BYTE6(v72) == 2)
                                                                                                                      {
                                                                                                                        ++WORD2(v72);
                                                                                                                        *(v71 + v35) = a4;
                                                                                                                        if (HIBYTE(v72))
                                                                                                                        {
                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v36 = WORD2(v72);
                                                                                                                          if (WORD1(v72) > WORD2(v72))
                                                                                                                          {
                                                                                                                            if (BYTE6(v72) == 2)
                                                                                                                            {
                                                                                                                              ++WORD2(v72);
                                                                                                                              *(v71 + v36) = a4;
                                                                                                                              if (HIBYTE(v72))
                                                                                                                              {
                                                                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v37 = WORD2(v72);
                                                                                                                                if (WORD1(v72) > WORD2(v72))
                                                                                                                                {
                                                                                                                                  if (BYTE6(v72) == 2)
                                                                                                                                  {
                                                                                                                                    ++WORD2(v72);
                                                                                                                                    *(v71 + v37) = a4;
                                                                                                                                    if (HIBYTE(v72))
                                                                                                                                    {
                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v38 = WORD2(v72);
                                                                                                                                      if (WORD1(v72) > WORD2(v72))
                                                                                                                                      {
                                                                                                                                        if (BYTE6(v72) == 2)
                                                                                                                                        {
                                                                                                                                          ++WORD2(v72);
                                                                                                                                          *(v71 + v38) = a4;
                                                                                                                                          if (HIBYTE(v72))
                                                                                                                                          {
                                                                                                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v39 = WORD2(v72);
                                                                                                                                            if (WORD1(v72) > WORD2(v72))
                                                                                                                                            {
                                                                                                                                              if (BYTE6(v72) == 2)
                                                                                                                                              {
                                                                                                                                                ++WORD2(v72);
                                                                                                                                                *(v71 + v39) = a4;
                                                                                                                                                if (HIBYTE(v72))
                                                                                                                                                {
                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v40 = WORD2(v72);
                                                                                                                                                  if (WORD1(v72) > WORD2(v72))
                                                                                                                                                  {
                                                                                                                                                    if (BYTE6(v72) == 2)
                                                                                                                                                    {
                                                                                                                                                      ++WORD2(v72);
                                                                                                                                                      *(v71 + v40) = a4;
                                                                                                                                                      if (HIBYTE(v72))
                                                                                                                                                      {
                                                                                                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v41 = WORD2(v72);
                                                                                                                                                        if (WORD1(v72) > WORD2(v72))
                                                                                                                                                        {
                                                                                                                                                          if (BYTE6(v72) == 2)
                                                                                                                                                          {
                                                                                                                                                            ++WORD2(v72);
                                                                                                                                                            *(v71 + v41) = a4;
                                                                                                                                                            if (HIBYTE(v72))
                                                                                                                                                            {
                                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v42 = WORD2(v72);
                                                                                                                                                              if (WORD1(v72) > WORD2(v72))
                                                                                                                                                              {
                                                                                                                                                                if (BYTE6(v72) == 2)
                                                                                                                                                                {
                                                                                                                                                                  ++WORD2(v72);
                                                                                                                                                                  *(v71 + v42) = a4;
                                                                                                                                                                  if (HIBYTE(v72))
                                                                                                                                                                  {
                                                                                                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                  }

                                                                                                                                                                  else if (WORD1(v72) > WORD2(v72))
                                                                                                                                                                  {
                                                                                                                                                                    if (BYTE6(v72) == 2)
                                                                                                                                                                    {
                                                                                                                                                                      *(v71 + WORD2(v72)) = a5;
                                                                                                                                                                      ++WORD2(v72);
                                                                                                                                                                      return sub_100020078(508, v71, BYTE4(v72), a6, sub_100022AD0, v13, v14, v15);
                                                                                                                                                                    }

                                                                                                                                                                    v70 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_199:
                                                                                                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5349, v70);
                                                                                                                                                                  }

                                                                                                                                                                  v70 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                                                                                                                                  goto LABEL_199;
                                                                                                                                                                }

                                                                                                                                                                v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_195:
                                                                                                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5348, v69);
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            v69 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                                            goto LABEL_195;
                                                                                                                                                          }

                                                                                                                                                          v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_191:
                                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5347, v68);
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                                      goto LABEL_191;
                                                                                                                                                    }

                                                                                                                                                    v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_187:
                                                                                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5346, v67);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                v67 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                                goto LABEL_187;
                                                                                                                                              }

                                                                                                                                              v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_183:
                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5345, v66);
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          v66 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                          goto LABEL_183;
                                                                                                                                        }

                                                                                                                                        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_179:
                                                                                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5344, v65);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                    goto LABEL_179;
                                                                                                                                  }

                                                                                                                                  v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_175:
                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5343, v64);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                              goto LABEL_175;
                                                                                                                            }

                                                                                                                            v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_171:
                                                                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5342, v63);
                                                                                                                          }
                                                                                                                        }

                                                                                                                        v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                        goto LABEL_171;
                                                                                                                      }

                                                                                                                      v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_167:
                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5341, v62);
                                                                                                                    }
                                                                                                                  }

                                                                                                                  v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                  goto LABEL_167;
                                                                                                                }

                                                                                                                v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_163:
                                                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5340, v61);
                                                                                                              }
                                                                                                            }

                                                                                                            v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                            goto LABEL_163;
                                                                                                          }

                                                                                                          v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_159:
                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5339, v60);
                                                                                                        }
                                                                                                      }

                                                                                                      v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                      goto LABEL_159;
                                                                                                    }

                                                                                                    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_155:
                                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5338, v59);
                                                                                                  }
                                                                                                }

                                                                                                v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                goto LABEL_155;
                                                                                              }

                                                                                              v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_151:
                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5337, v58);
                                                                                            }
                                                                                          }

                                                                                          v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                          goto LABEL_151;
                                                                                        }

                                                                                        v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_147:
                                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5336, v57);
                                                                                      }
                                                                                    }

                                                                                    v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                    goto LABEL_147;
                                                                                  }

                                                                                  v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_143:
                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5335, v56);
                                                                                }
                                                                              }

                                                                              v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                              goto LABEL_143;
                                                                            }

                                                                            v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_139:
                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5334, v55);
                                                                          }
                                                                        }

                                                                        v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                        goto LABEL_139;
                                                                      }

                                                                      v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_135:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5333, v54);
                                                                    }
                                                                  }

                                                                  v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_135;
                                                                }

                                                                v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_131:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5332, v53);
                                                              }
                                                            }

                                                            v53 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_131;
                                                          }

                                                          v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_127:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5331, v52);
                                                        }
                                                      }

                                                      v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_127;
                                                    }

                                                    v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_123:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5330, v51);
                                                  }
                                                }

                                                v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_123;
                                              }

                                              v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_119:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5329, v50);
                                            }
                                          }

                                          v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_119;
                                        }

                                        v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_115:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5328, v49);
                                      }
                                    }

                                    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_115;
                                  }

                                  v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_111:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5327, v48);
                                }
                              }

                              v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_111;
                            }

                            v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_107:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5326, v47);
                          }
                        }

                        v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_107;
                      }

                      v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_103:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5325, v46);
                    }
                  }

                  v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_103;
                }

                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_99:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5324, v45);
              }
            }

            v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_99;
          }

          v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_95:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5323, v44);
        }

        v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_95;
      }

      v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_91:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5322, v43);
    }

    v43 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_91;
  }

  return result;
}

uint64_t sub_10028274C(__int16 a1, uint64_t (*a2)())
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
        return sub_100020078(519, v9, BYTE4(v10), a2, sub_100083FE4, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3073, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100282840(__int16 a1, char a2, uint64_t (*a3)())
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
      v10 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v10) = a2;
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
              return sub_100020078(612, v13, BYTE4(v14), a3, sub_100083FE4, v7, v8, v9);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3088, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3087, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002829B8(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 42;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6060, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6059, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100282B44(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 58;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6074, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6073, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100282CD0(int a1, int a2, __int16 a3, uint64_t (*a4)())
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

    else if (WORD1(v20) - WORD2(v20) > 3)
    {
      if (BYTE6(v20) == 2)
      {
        *(v19 + WORD2(v20)) = 58;
        *(v19 + WORD2(v20) + 1) = 0;
        *(v19 + WORD2(v20) + 3) = 0;
        v12 = WORD2(v20) + 4;
        WORD2(v20) += 4;
        if (HIBYTE(v20))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v20) - v12 > 3)
        {
          if (BYTE6(v20) == 2)
          {
            *(v19 + v12) = a1;
            *(v19 + WORD2(v20) + 1) = BYTE1(a1);
            *(v19 + WORD2(v20) + 2) = BYTE2(a1);
            *(v19 + WORD2(v20) + 3) = HIBYTE(a1);
            v13 = WORD2(v20);
            v14 = WORD2(v20) + 4;
            WORD2(v20) += 4;
            if (HIBYTE(v20))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v20) > v14)
            {
              if (BYTE6(v20) == 2)
              {
                WORD2(v20) = v13 + 5;
                *(v19 + v14) = a2 != 0;
                if (HIBYTE(v20))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v20) - WORD2(v20) > 1)
                {
                  if (BYTE6(v20) == 2)
                  {
                    *(v19 + WORD2(v20)) = a3;
                    WORD2(v20) += 2;
                    return sub_100020078(226, v19, BYTE4(v20), a4, sub_100022AD0, v9, v10, v11);
                  }

                  v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6090, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_31;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6089, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6088, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_23;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6087, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100282FC4(char a1, _WORD *a2, _BYTE *a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, uint64_t (*a8)())
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
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v34) - WORD2(v34) > 1)
          {
            if (BYTE6(v34) == 2)
            {
              *(v33 + WORD2(v34)) = *a2;
              v21 = WORD2(v34) + 2;
              WORD2(v34) += 2;
              if (HIBYTE(v34))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v34) - v21 > 1)
              {
                if (BYTE6(v34) == 2)
                {
                  *(v33 + v21) = *a3;
                  *(v33 + WORD2(v34) + 1) = a3[1];
                  v22 = WORD2(v34) + 2;
                  WORD2(v34) += 2;
                  if (HIBYTE(v34))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v34) - v22 > 1)
                  {
                    if (BYTE6(v34) == 2)
                    {
                      *(v33 + v22) = a4;
                      *(v33 + WORD2(v34) + 1) = HIBYTE(a4);
                      v23 = WORD2(v34) + 2;
                      WORD2(v34) += 2;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v34) - v23 > 1)
                      {
                        if (BYTE6(v34) == 2)
                        {
                          *(v33 + v23) = a5;
                          *(v33 + WORD2(v34) + 1) = HIBYTE(a5);
                          v24 = WORD2(v34) + 2;
                          WORD2(v34) += 2;
                          if (HIBYTE(v34))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v34) - v24 > 1)
                          {
                            if (BYTE6(v34) == 2)
                            {
                              *(v33 + v24) = a6;
                              *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                              v25 = WORD2(v34) + 2;
                              WORD2(v34) += 2;
                              if (HIBYTE(v34))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v34) - v25 > 1)
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  *(v33 + v25) = a7;
                                  *(v33 + WORD2(v34) + 1) = HIBYTE(a7);
                                  WORD2(v34) += 2;
                                  return sub_100020078(513, v33, BYTE4(v34), a8, sub_100022AD0, v17, v18, v19);
                                }

                                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3059, v32);
                              }

                              v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_52;
                            }

                            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3058, v31);
                          }

                          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_48;
                        }

                        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3057, v30);
                      }

                      v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_44;
                    }

                    v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3056, v29);
                  }

                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_40;
                }

                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3055, v28);
              }

              v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_36;
            }

            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3054, v27);
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3053, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10028344C(__int16 a1, char a2, uint64_t a3, char a4, __int16 a5, char a6, char a7, char a8, uint64_t (*a9)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v18 = WORD2(v40);
      if (WORD1(v40) > WORD2(v40))
      {
        if (BYTE6(v40) == 2)
        {
          ++WORD2(v40);
          *(v39 + v18) = 1;
          if (HIBYTE(v40))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v40) - WORD2(v40) > 1)
          {
            if (BYTE6(v40) == 2)
            {
              *(v39 + WORD2(v40)) = a1;
              v19 = WORD2(v40);
              v20 = WORD2(v40) + 2;
              WORD2(v40) += 2;
              if (HIBYTE(v40))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v40) > v20)
              {
                if (BYTE6(v40) == 2)
                {
                  WORD2(v40) = v19 + 3;
                  *(v39 + v20) = a2;
                  if (HIBYTE(v40))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v40) - WORD2(v40) > 5)
                  {
                    if (BYTE6(v40) == 2)
                    {
                      sub_1000075EC((v39 + WORD2(v40)), a3, 6uLL);
                      v24 = WORD2(v40);
                      v25 = WORD2(v40) + 6;
                      WORD2(v40) += 6;
                      if (HIBYTE(v40))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v40) > v25)
                      {
                        if (BYTE6(v40) == 2)
                        {
                          WORD2(v40) = v24 + 7;
                          *(v39 + v25) = a4;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v40) - WORD2(v40) > 1)
                          {
                            if (BYTE6(v40) == 2)
                            {
                              *(v39 + WORD2(v40)) = a5;
                              v26 = WORD2(v40);
                              v27 = WORD2(v40) + 2;
                              WORD2(v40) += 2;
                              if (HIBYTE(v40))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v40) > v27)
                              {
                                if (BYTE6(v40) == 2)
                                {
                                  WORD2(v40) = v26 + 3;
                                  *(v39 + v27) = a6;
                                  if (HIBYTE(v40))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v28 = WORD2(v40);
                                    if (WORD1(v40) > WORD2(v40))
                                    {
                                      if (BYTE6(v40) == 2)
                                      {
                                        ++WORD2(v40);
                                        *(v39 + v28) = a7;
                                        if (HIBYTE(v40))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v29 = WORD2(v40);
                                          if (WORD1(v40) > WORD2(v40))
                                          {
                                            if (BYTE6(v40) == 2)
                                            {
                                              ++WORD2(v40);
                                              *(v39 + v29) = a8;
                                              return sub_100020078(556, v39, BYTE4(v40), a9, sub_10025D8B8, v21, v22, v23);
                                            }

                                            v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6445, v38);
                                          }
                                        }

                                        v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6444, v37);
                                    }
                                  }

                                  v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6443, v36);
                              }

                              v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_58;
                            }

                            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6442, v35);
                          }

                          v35 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_54;
                        }

                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6441, v34);
                      }

                      v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_50;
                    }

                    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6440, v33);
                  }

                  v33 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                  goto LABEL_46;
                }

                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6439, v32);
              }

              v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_42;
            }

            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6438, v31);
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_38;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6437, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100283964(__int16 a1, uint64_t (*a2)())
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
          *(v11 + v8) = 2;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              WORD2(v12) += 2;
              return sub_100020078(556, v11, BYTE4(v12), a2, sub_10025DC24, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6459, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6458, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100283AD4(__int16 a1, char a2, char a3, __int16 a4, __int16 a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)())
{
  v57 = 0;
  v58 = 0;
  result = sub_10001FFD8(&v57);
  if (!result)
  {
    if (HIBYTE(v58))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v23 = WORD2(v58);
      if (WORD1(v58) > WORD2(v58))
      {
        if (BYTE6(v58) == 2)
        {
          ++WORD2(v58);
          *(v57 + v23) = 14;
          if (HIBYTE(v58))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v58) - WORD2(v58) > 1)
          {
            if (BYTE6(v58) == 2)
            {
              *(v57 + WORD2(v58)) = a1;
              v24 = WORD2(v58);
              v25 = WORD2(v58) + 2;
              WORD2(v58) += 2;
              if (HIBYTE(v58))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v58) > v25)
              {
                if (BYTE6(v58) == 2)
                {
                  WORD2(v58) = v24 + 3;
                  *(v57 + v25) = a2;
                  if (HIBYTE(v58))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v58) > WORD2(v58))
                  {
                    if (BYTE6(v58) == 2)
                    {
                      *(v57 + WORD2(v58)) = a3;
                      v26 = ++WORD2(v58);
                      if (HIBYTE(v58))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v58) - v26 > 1)
                      {
                        if (BYTE6(v58) == 2)
                        {
                          *(v57 + v26) = a4;
                          *(v57 + WORD2(v58) + 1) = HIBYTE(a4);
                          v27 = WORD2(v58) + 2;
                          WORD2(v58) += 2;
                          if (HIBYTE(v58))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v58) - v27 > 1)
                          {
                            if (BYTE6(v58) == 2)
                            {
                              *(v57 + v27) = a5;
                              *(v57 + WORD2(v58) + 1) = HIBYTE(a5);
                              WORD2(v58) += 2;
                              if (a7 != 2 && a7 != 16)
                              {
                                sub_1000D660C();
                              }

                              if (a6)
                              {
                                if (a7)
                                {
                                  v28 = a7;
                                  while (!HIBYTE(v58))
                                  {
                                    v29 = WORD2(v58);
                                    if (WORD1(v58) <= WORD2(v58))
                                    {
                                      goto LABEL_72;
                                    }

                                    if (BYTE6(v58) != 2)
                                    {
                                      v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                      goto LABEL_73;
                                    }

                                    v30 = *(a6 - 1 + v28--);
                                    ++WORD2(v58);
                                    *(v57 + v29) = v30;
                                    if ((v28 + 1) <= 1)
                                    {
                                      goto LABEL_37;
                                    }
                                  }

                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_72:
                                  v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_73:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6533, v45);
                                }
                              }

                              else if (a7)
                              {
                                v31 = a7 + 1;
                                while (!HIBYTE(v58))
                                {
                                  v32 = WORD2(v58);
                                  if (WORD1(v58) <= WORD2(v58))
                                  {
                                    goto LABEL_84;
                                  }

                                  if (BYTE6(v58) != 2)
                                  {
                                    v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                    goto LABEL_85;
                                  }

                                  ++WORD2(v58);
                                  *(v57 + v32) = 0;
                                  if (--v31 <= 1)
                                  {
                                    goto LABEL_37;
                                  }
                                }

                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_84:
                                v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_85:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6528, v48);
                              }

LABEL_37:
                              v33 = a10;
                              if (a10 >= 0x1Bu)
                              {
                                sub_1000D660C();
                              }

                              if (a8)
                              {
                                if (!a10)
                                {
                                  if (a9)
                                  {
                                    return sub_100020078(556, v57, BYTE4(v58), a11, sub_1000C6338, v20, v21, v22);
                                  }

LABEL_62:
                                  v42 = v57;
                                  v43 = WORD2(v58);
                                  if (HIBYTE(v58))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    v44 = 0;
                                  }

                                  else
                                  {
                                    v44 = WORD1(v58) - WORD2(v58);
                                  }

                                  if (v44 < a10)
                                  {
                                    v56 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                  }

                                  else
                                  {
                                    if (BYTE6(v58) == 2)
                                    {
                                      bzero((v42 + v43), a10);
                                      WORD2(v58) += a10;
                                      return sub_100020078(556, v57, BYTE4(v58), a11, sub_1000C6338, v20, v21, v22);
                                    }

                                    v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  }

                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6547, v56);
                                }

                                v34 = a10;
                                do
                                {
                                  if (HIBYTE(v58))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_76:
                                    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_77:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6543, v46);
                                  }

                                  v35 = WORD2(v58);
                                  if (WORD1(v58) <= WORD2(v58))
                                  {
                                    goto LABEL_76;
                                  }

                                  if (BYTE6(v58) != 2)
                                  {
                                    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                    goto LABEL_77;
                                  }

                                  v36 = *(a8 - 1 + v34--);
                                  ++WORD2(v58);
                                  *(v57 + v35) = v36;
                                }

                                while ((v34 + 1) > 1);
                                if (!a9)
                                {
                                  goto LABEL_62;
                                }

LABEL_56:
                                if (a10)
                                {
                                  while (!HIBYTE(v58))
                                  {
                                    v40 = WORD2(v58);
                                    if (WORD1(v58) <= WORD2(v58))
                                    {
                                      goto LABEL_80;
                                    }

                                    if (BYTE6(v58) != 2)
                                    {
                                      v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                      goto LABEL_81;
                                    }

                                    v41 = *(a9 - 1 + v33--);
                                    ++WORD2(v58);
                                    *(v57 + v40) = v41;
                                    if ((v33 + 1) <= 1)
                                    {
                                      return sub_100020078(556, v57, BYTE4(v58), a11, sub_1000C6338, v20, v21, v22);
                                    }
                                  }

                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_80:
                                  v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_81:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6551, v47);
                                }

                                return sub_100020078(556, v57, BYTE4(v58), a11, sub_1000C6338, v20, v21, v22);
                              }

                              v37 = v57;
                              v38 = WORD2(v58);
                              if (HIBYTE(v58))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                v39 = 0;
                              }

                              else
                              {
                                v39 = WORD1(v58) - WORD2(v58);
                              }

                              if (v39 < a10)
                              {
                                v55 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                              }

                              else
                              {
                                if (BYTE6(v58) == 2)
                                {
                                  bzero((v37 + v38), a10);
                                  WORD2(v58) += a10;
                                  if (!a9)
                                  {
                                    goto LABEL_62;
                                  }

                                  goto LABEL_56;
                                }

                                v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                              }

                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6539, v55);
                            }

                            v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6522, v54);
                          }

                          v54 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_109;
                        }

                        v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6521, v53);
                      }

                      v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_105;
                    }

                    v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6520, v52);
                  }

                  v52 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_101;
                }

                v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6519, v51);
              }

              v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_97;
            }

            v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6518, v50);
          }

          v50 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_93;
        }

        v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6517, v49);
      }
    }

    v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_89;
  }

  return result;
}

uint64_t sub_10028424C(__int16 a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v14) = 10;
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v24) - WORD2(v24) > 1)
          {
            if (BYTE6(v24) == 2)
            {
              *(v23 + WORD2(v24)) = a1;
              v15 = WORD2(v24) + 2;
              WORD2(v24) += 2;
              if (HIBYTE(v24))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v24) > v15)
              {
                if (BYTE6(v24) == 2)
                {
                  *(v23 + v15) = a2;
                  v16 = ++WORD2(v24);
                  if (HIBYTE(v24))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v24) > v16)
                  {
                    if (BYTE6(v24) == 2)
                    {
                      *(v23 + v16) = a3;
                      v17 = ++WORD2(v24);
                      if (HIBYTE(v24))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v24) > v17)
                      {
                        if (BYTE6(v24) == 2)
                        {
                          *(v23 + v17) = a4;
                          ++WORD2(v24);
                          return sub_100020078(556, v23, BYTE4(v24), a5, sub_10025DE34, v11, v12, v13);
                        }

                        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6588, v22);
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                      goto LABEL_38;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6587, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_34;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6586, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
              goto LABEL_30;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6585, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6584, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10028454C(__int16 a1, char a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9, char a10, unsigned __int8 a11, const void *a12, const void *a13, uint64_t (*a14)())
{
  if (a11)
  {
    if (!a12 || a13 == 0)
    {
      return 101;
    }
  }

  v57 = 0;
  v58 = 0;
  result = sub_10001FFD8(&v57);
  if (!result)
  {
    if (HIBYTE(v58))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v24 = WORD2(v58);
      if (WORD1(v58) > WORD2(v58))
      {
        if (BYTE6(v58) == 2)
        {
          ++WORD2(v58);
          *(v57 + v24) = 13;
          if (HIBYTE(v58))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v25 = WORD2(v58);
            if (WORD1(v58) > WORD2(v58))
            {
              if (BYTE6(v58) == 2)
              {
                ++WORD2(v58);
                *(v57 + v25) = a2;
                if (HIBYTE(v58))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v58) - WORD2(v58) > 1)
                {
                  if (BYTE6(v58) == 2)
                  {
                    *(v57 + WORD2(v58)) = a1;
                    v26 = WORD2(v58);
                    v27 = WORD2(v58) + 2;
                    WORD2(v58) += 2;
                    if (HIBYTE(v58))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v58) > v27)
                    {
                      if (BYTE6(v58) == 2)
                      {
                        WORD2(v58) = v26 + 3;
                        *(v57 + v27) = a3;
                        if (HIBYTE(v58))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v58) - WORD2(v58) > 5)
                        {
                          if (BYTE6(v58) == 2)
                          {
                            sub_1000075EC((v57 + WORD2(v58)), a4, 6uLL);
                            v31 = WORD2(v58);
                            v32 = WORD2(v58) + 6;
                            WORD2(v58) += 6;
                            if (HIBYTE(v58))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else if (WORD1(v58) > v32)
                            {
                              if (BYTE6(v58) == 2)
                              {
                                WORD2(v58) = v31 + 7;
                                *(v57 + v32) = a5;
                                if (HIBYTE(v58))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                }

                                else if (WORD1(v58) - WORD2(v58) > 1)
                                {
                                  if (BYTE6(v58) == 2)
                                  {
                                    *(v57 + WORD2(v58)) = a6;
                                    v33 = WORD2(v58);
                                    v34 = WORD2(v58) + 2;
                                    WORD2(v58) += 2;
                                    if (HIBYTE(v58))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else if (WORD1(v58) > v34)
                                    {
                                      if (BYTE6(v58) == 2)
                                      {
                                        WORD2(v58) = v33 + 3;
                                        *(v57 + v34) = a7;
                                        if (HIBYTE(v58))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v35 = WORD2(v58);
                                          if (WORD1(v58) > WORD2(v58))
                                          {
                                            if (BYTE6(v58) == 2)
                                            {
                                              ++WORD2(v58);
                                              *(v57 + v35) = a8;
                                              if (HIBYTE(v58))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else if (WORD1(v58) > WORD2(v58))
                                              {
                                                if (BYTE6(v58) == 2)
                                                {
                                                  *(v57 + WORD2(v58)) = a9;
                                                  v36 = ++WORD2(v58);
                                                  if (HIBYTE(v58))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  }

                                                  else if (WORD1(v58) > v36)
                                                  {
                                                    if (BYTE6(v58) == 2)
                                                    {
                                                      *(v57 + v36) = a10;
                                                      v37 = ++WORD2(v58);
                                                      if (HIBYTE(v58))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else if (WORD1(v58) - v37 > 1)
                                                      {
                                                        if (BYTE6(v58) == 2)
                                                        {
                                                          *(v57 + v37) = a11;
                                                          *(v57 + WORD2(v58) + 1) = 0;
                                                          v38 = WORD2(v58) + 2;
                                                          WORD2(v58) += 2;
                                                          if (a11)
                                                          {
                                                            v39 = v57;
                                                            if (HIBYTE(v58))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                              v40 = 0;
                                                            }

                                                            else
                                                            {
                                                              v40 = WORD1(v58) - v38;
                                                            }

                                                            if (v40 < a11)
                                                            {
                                                              v55 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                            }

                                                            else
                                                            {
                                                              if (BYTE6(v58) == 2)
                                                              {
                                                                memmove((v39 + v38), a12, a11);
                                                                v38 = WORD2(v58) + a11;
                                                                WORD2(v58) = v38;
                                                                v41 = v57;
                                                                if (HIBYTE(v58))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                  v42 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v42 = WORD1(v58) - v38;
                                                                }

                                                                if (v42 < a11)
                                                                {
                                                                  v56 = "ByteStream_NumReadBytesAvail(bs) >= (blobLen)";
                                                                }

                                                                else
                                                                {
                                                                  if (BYTE6(v58) == 2)
                                                                  {
                                                                    memmove((v41 + v38), a13, a11);
                                                                    LOBYTE(v38) = BYTE4(v58) + a11;
                                                                    WORD2(v58) += a11;
                                                                    return sub_100020078(556, v57, v38, a14, sub_10025DA18, v28, v29, v30);
                                                                  }

                                                                  v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                                }

                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6635, v56);
                                                              }

                                                              v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                                            }

                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6634, v55);
                                                          }

                                                          return sub_100020078(556, v57, v38, a14, sub_10025DA18, v28, v29, v30);
                                                        }

                                                        v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6632, v54);
                                                      }

                                                      v54 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                      goto LABEL_106;
                                                    }

                                                    v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6631, v53);
                                                  }

                                                  v53 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                                  goto LABEL_102;
                                                }

                                                v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6630, v52);
                                              }

                                              v52 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                              goto LABEL_98;
                                            }

                                            v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_94:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6629, v51);
                                          }
                                        }

                                        v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_94;
                                      }

                                      v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_90:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6628, v50);
                                    }

                                    v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_90;
                                  }

                                  v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_86:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6627, v49);
                                }

                                v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_86;
                              }

                              v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6626, v48);
                            }

                            v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_82;
                          }

                          v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6625, v47);
                        }

                        v47 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                        goto LABEL_78;
                      }

                      v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6624, v46);
                    }

                    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_74;
                  }

                  v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6623, v45);
                }

                v45 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_70;
              }

              v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6622, v44);
            }
          }

          v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_66;
        }

        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6621, v43);
      }
    }

    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_100284D44(__int16 a1, __int16 a2, uint64_t (*a3)())
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
          *(v15 + v10) = 11;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v16) - WORD2(v16) > 1)
          {
            if (BYTE6(v16) == 2)
            {
              *(v15 + WORD2(v16)) = a1;
              v11 = WORD2(v16) + 2;
              WORD2(v16) += 2;
              if (HIBYTE(v16))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v16) - v11 > 1)
              {
                if (BYTE6(v16) == 2)
                {
                  *(v15 + v11) = a2;
                  *(v15 + WORD2(v16) + 1) = HIBYTE(a2);
                  WORD2(v16) += 2;
                  return sub_100020078(556, v15, BYTE4(v16), a3, sub_10025DEC0, v7, v8, v9);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6604, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6603, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6602, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100284F54(__int16 a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
{
  v28 = 0;
  v29 = 0;
  result = sub_10001FFD8(&v28);
  if (!result)
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v16 = WORD2(v29);
      if (WORD1(v29) > WORD2(v29))
      {
        if (BYTE6(v29) == 2)
        {
          ++WORD2(v29);
          *(v28 + v16) = 5;
          if (HIBYTE(v29))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v29) - WORD2(v29) > 1)
          {
            if (BYTE6(v29) == 2)
            {
              *(v28 + WORD2(v29)) = a1;
              v17 = WORD2(v29);
              v18 = WORD2(v29) + 2;
              WORD2(v29) += 2;
              if (HIBYTE(v29))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v29) > v18)
              {
                if (BYTE6(v29) == 2)
                {
                  WORD2(v29) = v17 + 3;
                  *(v28 + v18) = a2;
                  if (HIBYTE(v29))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v19 = WORD2(v29);
                    if (WORD1(v29) > WORD2(v29))
                    {
                      if (BYTE6(v29) == 2)
                      {
                        ++WORD2(v29);
                        *(v28 + v19) = a3;
                        if (HIBYTE(v29))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v20 = WORD2(v29);
                          if (WORD1(v29) > WORD2(v29))
                          {
                            if (BYTE6(v29) == 2)
                            {
                              ++WORD2(v29);
                              *(v28 + v20) = a4;
                              if (HIBYTE(v29))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v21 = WORD2(v29);
                                if (WORD1(v29) > WORD2(v29))
                                {
                                  if (BYTE6(v29) == 2)
                                  {
                                    ++WORD2(v29);
                                    *(v28 + v21) = a5;
                                    return sub_100020078(556, v28, BYTE4(v29), a6, sub_10025DFD8, v13, v14, v15);
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6687, v27);
                                }
                              }

                              v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_45;
                            }

                            v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6686, v26);
                          }
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_41;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6685, v25);
                    }
                  }

                  v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_37;
                }

                v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6684, v24);
              }

              v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_33;
            }

            v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6683, v23);
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6682, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1002852C4(__int16 a1, uint64_t (*a2)())
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
          *(v11 + v8) = 6;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              WORD2(v12) += 2;
              return sub_100020078(556, v11, BYTE4(v12), a2, sub_10025E138, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6702, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6701, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100285434(char a1, uint64_t (*a2)())
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
          return sub_100020078(1009, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6716, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10028550C(__int16 a1, char a2, uint64_t (*a3)())
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
      v10 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v10) = 1;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v17) - WORD2(v17) > 1)
          {
            if (BYTE6(v17) == 2)
            {
              *(v16 + WORD2(v17)) = a1;
              v11 = WORD2(v17);
              v12 = WORD2(v17) + 2;
              WORD2(v17) += 2;
              if (HIBYTE(v17))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v17) > v12)
              {
                if (BYTE6(v17) == 2)
                {
                  WORD2(v17) = v11 + 3;
                  *(v16 + v12) = a2;
                  return sub_100020078(1010, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6732, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6731, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6730, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100285700(char a1, char a2, uint64_t (*a3)())
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
      v10 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v10) = 2;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v11 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v11) = a1;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v12 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v12) = a2;
                      return sub_100020078(1010, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                    }

                    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6748, v15);
                  }
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6747, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6746, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1002858D8(__int16 a1, uint64_t (*a2)())
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
          *(v11 + v8) = 4;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              WORD2(v12) += 2;
              return sub_100020078(1010, v11, BYTE4(v12), a2, sub_10025E2D4, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6763, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6762, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100285A48(__int16 a1, __int16 a2, char a3, char a4, uint64_t (*a5)())
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
          *(v24 + v14) = 3;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v25) - WORD2(v25) > 1)
          {
            if (BYTE6(v25) == 2)
            {
              *(v24 + WORD2(v25)) = a1;
              v15 = WORD2(v25) + 2;
              WORD2(v25) += 2;
              if (HIBYTE(v25))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v25) - v15 > 1)
              {
                if (BYTE6(v25) == 2)
                {
                  *(v24 + v15) = a2;
                  *(v24 + WORD2(v25) + 1) = HIBYTE(a2);
                  v16 = WORD2(v25);
                  v17 = WORD2(v25) + 2;
                  WORD2(v25) += 2;
                  if (HIBYTE(v25))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v25) > v17)
                  {
                    if (BYTE6(v25) == 2)
                    {
                      WORD2(v25) = v16 + 3;
                      *(v24 + v17) = a3;
                      if (HIBYTE(v25))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v18 = WORD2(v25);
                        if (WORD1(v25) > WORD2(v25))
                        {
                          if (BYTE6(v25) == 2)
                          {
                            ++WORD2(v25);
                            *(v24 + v18) = a4;
                            return sub_100020078(1010, v24, BYTE4(v25), a5, sub_100022AD0, v11, v12, v13);
                          }

                          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6781, v23);
                        }
                      }

                      v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6780, v22);
                  }

                  v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6779, v21);
              }

              v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_30;
            }

            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6778, v20);
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6777, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100285D58(char a1, uint64_t (*a2)())
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

    else
    {
      v8 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v8) = 5;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v9 = WORD2(v13);
            if (WORD1(v13) > WORD2(v13))
            {
              if (BYTE6(v13) == 2)
              {
                ++WORD2(v13);
                *(v12 + v9) = a1;
                return sub_100020078(1010, v12, BYTE4(v13), a2, sub_100022AD0, v5, v6, v7);
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6796, v11);
            }
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6795, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100285EAC(uint64_t (*a1)())
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
          *(v8 + v6) = 0;
          return sub_100020078(630, v8, BYTE4(v9), a1, sub_100260370, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6810, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100285F80(int a1, uint64_t (*a2)())
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
          *(v11 + v8) = 1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 3)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              *(v11 + WORD2(v12) + 2) = BYTE2(a1);
              *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
              WORD2(v12) += 4;
              return sub_100020078(630, v11, BYTE4(v12), a2, sub_100260370, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6824, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6823, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100286118(int a1, _BYTE *a2, char *a3, uint64_t (*a4)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v24))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_29;
  }

  v12 = WORD2(v24);
  if (WORD1(v24) <= WORD2(v24))
  {
LABEL_29:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  if (BYTE6(v24) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6838, v21);
  }

  ++WORD2(v24);
  *(v23 + v12) = 1;
  if (HIBYTE(v24))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_33;
  }

  if (WORD1(v24) - WORD2(v24) <= 3)
  {
LABEL_33:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_35;
  }

  if (BYTE6(v24) != 2)
  {
    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6839, v22);
  }

  v13 = 0;
  *(v23 + WORD2(v24)) = a1;
  *(v23 + WORD2(v24) + 2) = BYTE2(a1);
  *(v23 + WORD2(v24) + 3) = HIBYTE(a1);
  WORD2(v24) += 4;
  do
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_22:
      v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_23:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6841, v19);
    }

    v14 = WORD2(v24);
    if (WORD1(v24) <= WORD2(v24))
    {
      goto LABEL_22;
    }

    if (BYTE6(v24) != 2)
    {
      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_23;
    }

    v15 = a2[v13];
    ++WORD2(v24);
    *(v23 + v14) = v15;
    ++v13;
  }

  while (v13 != 4);
  v16 = *a2 & 0xF;
  if ((*a2 & 0xF) != 0)
  {
    while (!HIBYTE(v24))
    {
      v17 = WORD2(v24);
      if (WORD1(v24) <= WORD2(v24))
      {
        goto LABEL_26;
      }

      if (BYTE6(v24) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_27;
      }

      v18 = *a3++;
      ++WORD2(v24);
      *(v23 + v17) = v18;
      if (!--v16)
      {
        return sub_100020078(615, v23, BYTE4(v24), a4, sub_100022AD0, v9, v10, v11);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_26:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_27:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6845, v20);
  }

  return sub_100020078(615, v23, BYTE4(v24), a4, sub_100022AD0, v9, v10, v11);
}

uint64_t sub_1002863DC(char *a1, uint64_t (*a2)())
{
  v37 = 0;
  v38 = 0;
  result = sub_10001FFD8(&v37);
  if (!result)
  {
    if (HIBYTE(v38))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v38);
      if (WORD1(v38) > WORD2(v38))
      {
        if (BYTE6(v38) == 2)
        {
          ++WORD2(v38);
          *(v37 + v8) = 5;
          if (HIBYTE(v38))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v38) - WORD2(v38) > 2)
          {
            if (BYTE6(v38) == 2)
            {
              v9 = v37 + WORD2(v38);
              *(v9 + 2) = 0;
              *v9 = 0;
              v10 = WORD2(v38);
              v11 = WORD2(v38) + 3;
              WORD2(v38) += 3;
              if (HIBYTE(v38))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v38) > v11)
              {
                if (BYTE6(v38) == 2)
                {
                  v12 = *a1;
                  WORD2(v38) = v10 + 4;
                  *(v37 + v11) = v12;
                  if (HIBYTE(v38))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v13 = WORD2(v38);
                    if (WORD1(v38) > WORD2(v38))
                    {
                      if (BYTE6(v38) == 2)
                      {
                        v14 = a1[1];
                        ++WORD2(v38);
                        *(v37 + v13) = v14;
                        if (HIBYTE(v38))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v15 = WORD2(v38);
                          if (WORD1(v38) > WORD2(v38))
                          {
                            if (BYTE6(v38) == 2)
                            {
                              v16 = a1[2];
                              ++WORD2(v38);
                              *(v37 + v15) = v16;
                              if (HIBYTE(v38))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v17 = WORD2(v38);
                                if (WORD1(v38) > WORD2(v38))
                                {
                                  if (BYTE6(v38) == 2)
                                  {
                                    v18 = a1[3];
                                    ++WORD2(v38);
                                    *(v37 + v17) = v18;
                                    if (HIBYTE(v38))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else
                                    {
                                      v19 = WORD2(v38);
                                      if (WORD1(v38) > WORD2(v38))
                                      {
                                        if (BYTE6(v38) == 2)
                                        {
                                          v20 = a1[4];
                                          ++WORD2(v38);
                                          *(v37 + v19) = v20;
                                          if (HIBYTE(v38))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v21 = WORD2(v38);
                                            if (WORD1(v38) > WORD2(v38))
                                            {
                                              if (BYTE6(v38) == 2)
                                              {
                                                v22 = a1[5];
                                                ++WORD2(v38);
                                                *(v37 + v21) = v22;
                                                if (HIBYTE(v38))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v23 = WORD2(v38);
                                                  if (WORD1(v38) > WORD2(v38))
                                                  {
                                                    if (BYTE6(v38) == 2)
                                                    {
                                                      v24 = a1[6];
                                                      ++WORD2(v38);
                                                      *(v37 + v23) = v24;
                                                      if (HIBYTE(v38))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v25 = WORD2(v38);
                                                        if (WORD1(v38) > WORD2(v38))
                                                        {
                                                          if (BYTE6(v38) == 2)
                                                          {
                                                            v26 = a1[7];
                                                            ++WORD2(v38);
                                                            *(v37 + v25) = v26;
                                                            return sub_100020078(383, v37, BYTE4(v38), a2, sub_100022AD0, v5, v6, v7);
                                                          }

                                                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6901, v36);
                                                        }
                                                      }

                                                      v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_73;
                                                    }

                                                    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6900, v35);
                                                  }
                                                }

                                                v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_69;
                                              }

                                              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6899, v34);
                                            }
                                          }

                                          v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_65;
                                        }

                                        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6898, v33);
                                      }
                                    }

                                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_61;
                                  }

                                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6897, v32);
                                }
                              }

                              v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_57;
                            }

                            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6896, v31);
                          }
                        }

                        v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_53;
                      }

                      v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6895, v30);
                    }
                  }

                  v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_49;
                }

                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6894, v29);
              }

              v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_45;
            }

            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6893, v28);
          }

          v28 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_41;
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6892, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_100286920(int a1, __int16 a2, int a3, char *a4, uint64_t (*a5)())
{
  v28 = 0;
  v29 = 0;
  result = sub_10001FFD8(&v28);
  if (!result)
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v29);
      if (WORD1(v29) > WORD2(v29))
      {
        if (BYTE6(v29) == 2)
        {
          ++WORD2(v29);
          *(v28 + v14) = a1;
          if (HIBYTE(v29))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v29) - WORD2(v29) > 1)
          {
            if (BYTE6(v29) == 2)
            {
              *(v28 + WORD2(v29)) = a2;
              v15 = WORD2(v29);
              v16 = WORD2(v29) + 2;
              WORD2(v29) += 2;
              if (HIBYTE(v29))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v29) > v16)
              {
                if (BYTE6(v29) == 2)
                {
                  v18 = *a4;
                  v17 = a4 + 1;
                  WORD2(v29) = v15 + 3;
                  *(v28 + v16) = v18;
                  v19 = BYTE4(v29);
                  if (a1 != 2)
                  {
                    v20 = WORD2(v29);
                    v21 = v28;
                    if (HIBYTE(v29))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v22 = 0;
                    }

                    else
                    {
                      v22 = WORD1(v29) - WORD2(v29);
                    }

                    v23 = a3 - 1;
                    if (v22 < v23)
                    {
                      v27 = "ByteStream_NumReadBytesAvail(bs) >= (length - 1)";
                    }

                    else
                    {
                      if (BYTE6(v29) == 2)
                      {
                        memmove((v21 + v20), v17, v23);
                        v19 = BYTE4(v29) + v23;
                        WORD2(v29) += v23;
                        return sub_100020078(557, v28, v19, a5, sub_100022AD0, v11, v12, v13);
                      }

                      v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6939, v27);
                  }

                  return sub_100020078(557, v28, v19, a5, sub_100022AD0, v11, v12, v13);
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6934, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_31;
            }

            v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6932, v25);
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_27;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6931, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100286BC8(char a1, uint64_t (*a2)())
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
        *(v9 + WORD2(v10)) = 0xFFFF << (a1 - 1);
        WORD2(v10) += 2;
        return sub_100020078(22, v9, BYTE4(v10), a2, sub_100022AD0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6361, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100286CC8(char a1, uint64_t (*a2)())
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
          return sub_100020078(572, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6118, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100286DA0(int a1, uint64_t a2, char a3, uint64_t (*a4)())
{
  v23 = 0;
  v24 = 0;
  result = sub_10001FFD8(&v23);
  if (!result)
  {
    if (HIBYTE(v24))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v9 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v9) = a1;
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v24) - WORD2(v24) > 5)
          {
            if (BYTE6(v24) == 2)
            {
              sub_1000075EC((v23 + WORD2(v24)), a2, 6uLL);
              v13 = WORD2(v24);
              v14 = WORD2(v24) + 6;
              WORD2(v24) += 6;
              if (a1 != 1)
              {
                if (a1 != 4 && a1 != 2)
                {
                  return sub_100020078(498, v23, BYTE4(v24), a4, sub_100022AD0, v10, v11, v12);
                }

                if (HIBYTE(v24))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v24) > v14)
                {
                  if (BYTE6(v24) == 2)
                  {
                    v15 = v13 + 7;
LABEL_25:
                    WORD2(v24) = v15;
                    *(v23 + v14) = a3;
                    return sub_100020078(498, v23, BYTE4(v24), a4, sub_100022AD0, v10, v11, v12);
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6957, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_39;
              }

              if (HIBYTE(v24))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v24) > v14)
              {
                if (BYTE6(v24) == 2)
                {
                  WORD2(v24) = v13 + 7;
                  *(v23 + v14) = 0;
                  if (HIBYTE(v24))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v16 = WORD2(v24);
                    if (WORD1(v24) > WORD2(v24))
                    {
                      if (BYTE6(v24) == 2)
                      {
                        ++WORD2(v24);
                        *(v23 + v16) = a3;
                        if (HIBYTE(v24))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v14 = WORD2(v24);
                          if (WORD1(v24) > WORD2(v24))
                          {
                            if (BYTE6(v24) == 2)
                            {
                              v15 = WORD2(v24) + 1;
                              goto LABEL_25;
                            }

                            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6962, v22);
                          }
                        }

                        v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_51;
                      }

                      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6961, v21);
                    }
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_47;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6960, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_43;
            }

            v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6954, v18);
          }

          v18 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_35;
        }

        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6953, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_100287104(int a1, char a2, uint64_t (*a3)())
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
          if (a1 != 1)
          {
            return sub_100020078(603, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

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
                return sub_100020078(603, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6980, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_19;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6977, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100287268(char a1, uint64_t a2, uint64_t (*a3)())
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

    else if (WORD1(v15) - WORD2(v15) > 5)
    {
      if (BYTE6(v15) == 2)
      {
        sub_1000075EC((v14 + WORD2(v15)), a2, 6uLL);
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 6;
        WORD2(v15) += 6;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 7;
            *(v14 + v11) = a1;
            return sub_100020078(620, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6993, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6992, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002873D8(char a1, uint64_t (*a2)())
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
          return sub_100020078(635, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7004, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002874B0(char a1, uint64_t (*a2)())
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
      v8 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v8) = 3;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v16) - WORD2(v16) > 2)
          {
            if (BYTE6(v16) == 2)
            {
              v9 = v15 + WORD2(v16);
              *(v9 + 2) = 0;
              *v9 = 0;
              v10 = WORD2(v16);
              v11 = WORD2(v16) + 3;
              WORD2(v16) += 3;
              if (HIBYTE(v16))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v16) > v11)
              {
                if (BYTE6(v16) == 2)
                {
                  WORD2(v16) = v10 + 4;
                  *(v15 + v11) = a1;
                  return sub_100020078(383, v15, BYTE4(v16), a2, sub_100022AD0, v5, v6, v7);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7019, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7018, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7017, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10028768C(_WORD *a1, char a2, char a3, __int16 a4, __int16 a5, uint64_t (*a6)())
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
        *(v25 + WORD2(v26)) = *a1;
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

                  else if (WORD1(v26) - WORD2(v26) > 1)
                  {
                    if (BYTE6(v26) == 2)
                    {
                      *(v25 + WORD2(v26)) = a4;
                      v19 = WORD2(v26) + 2;
                      WORD2(v26) += 2;
                      if (HIBYTE(v26))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v26) - v19 > 1)
                      {
                        if (BYTE6(v26) == 2)
                        {
                          *(v25 + v19) = a5;
                          *(v25 + WORD2(v26) + 1) = HIBYTE(a5);
                          WORD2(v26) += 2;
                          return sub_100020078(518, v25, BYTE4(v26), a6, sub_100022AD0, v13, v14, v15);
                        }

                        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7439, v24);
                      }

                      v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_38;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7438, v23);
                  }

                  v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_34;
                }

                v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7437, v22);
              }
            }

            v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7436, v21);
        }

        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7435, v20);
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002879BC(int a1, uint64_t (*a2)())
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v14 = v3;
  v15 = v3;
  if (!a1)
  {
    BYTE8(v14) = -3;
    BYTE10(v14) = -9;
    BYTE1(v15) = -66;
    BYTE6(v15) = -33;
    WORD4(v15) = 32766;
    BYTE10(v15) = -3;
    BYTE13(v15) = -33;
  }

  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    for (i = 0; i != 32; ++i)
    {
      if (HIBYTE(v13))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_13:
        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_14:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7500, v11);
      }

      v9 = WORD2(v13);
      if (WORD1(v13) <= WORD2(v13))
      {
        goto LABEL_13;
      }

      if (BYTE6(v13) != 2)
      {
        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_14;
      }

      v10 = *(&v14 + i);
      ++WORD2(v13);
      *(v12 + v9) = v10;
    }

    return sub_100020078(259, v12, BYTE4(v13), a2, sub_100022AD0, v5, v6, v7);
  }

  return result;
}

uint64_t sub_100287B10(char a1, char a2, char a3, uint64_t (*a4)())
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

    else
    {
      v12 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v12) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v13 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v13) = a2;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v14 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v14) = a3;
                      return sub_100020078(25, v18, BYTE4(v19), a4, sub_100022AD0, v9, v10, v11);
                    }

                    v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6917, v17);
                  }
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6916, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6915, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100287CE8(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t (*a9)())
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

    else
    {
      v18 = WORD2(v43);
      if (WORD1(v43) > WORD2(v43))
      {
        if (BYTE6(v43) == 2)
        {
          ++WORD2(v43);
          *(v42 + v18) = 78;
          v41[0] = BYTE5(a1);
          v41[1] = BYTE4(a1);
          v41[2] = BYTE3(a1);
          v41[3] = BYTE2(a1);
          v41[4] = BYTE1(a1);
          v41[5] = a1;
          if (HIBYTE(v43))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v43) - WORD2(v43) > 5)
          {
            if (BYTE6(v43) == 2)
            {
              sub_1000075EC((v42 + WORD2(v43)), v41, 6uLL);
              v22 = WORD2(v43);
              v23 = WORD2(v43) + 6;
              WORD2(v43) += 6;
              if (HIBYTE(v43))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v43) > v23)
              {
                if (BYTE6(v43) == 2)
                {
                  WORD2(v43) = v22 + 7;
                  *(v42 + v23) = BYTE6(a1);
                  if (HIBYTE(v43))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v24 = WORD2(v43);
                    if (WORD1(v43) > WORD2(v43))
                    {
                      if (BYTE6(v43) == 2)
                      {
                        ++WORD2(v43);
                        *(v42 + v24) = a2;
                        if (HIBYTE(v43))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v25 = WORD2(v43);
                          if (WORD1(v43) > WORD2(v43))
                          {
                            if (BYTE6(v43) == 2)
                            {
                              ++WORD2(v43);
                              *(v42 + v25) = a3;
                              if (HIBYTE(v43))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v26 = WORD2(v43);
                                if (WORD1(v43) > WORD2(v43))
                                {
                                  if (BYTE6(v43) == 2)
                                  {
                                    ++WORD2(v43);
                                    *(v42 + v26) = a4;
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
                                          *(v42 + v27) = a5;
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
                                                *(v42 + v28) = a6;
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
                                                      *(v42 + v29) = a7;
                                                      if (HIBYTE(v43))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v30 = WORD2(v43);
                                                        if (WORD1(v43) > WORD2(v43))
                                                        {
                                                          if (BYTE6(v43) == 2)
                                                          {
                                                            ++WORD2(v43);
                                                            *(v42 + v30) = a8;
                                                            return sub_100020078(233, v42, BYTE4(v43), a9, sub_10025EF10, v19, v20, v21);
                                                          }

                                                          v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3515, v40);
                                                        }
                                                      }

                                                      v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_73;
                                                    }

                                                    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3514, v39);
                                                  }
                                                }

                                                v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_69;
                                              }

                                              v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3513, v38);
                                            }
                                          }

                                          v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_65;
                                        }

                                        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3512, v37);
                                      }
                                    }

                                    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_61;
                                  }

                                  v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3511, v36);
                                }
                              }

                              v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_57;
                            }

                            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3510, v35);
                          }
                        }

                        v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_53;
                      }

                      v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3509, v34);
                    }
                  }

                  v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_49;
                }

                v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3508, v33);
              }

              v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_45;
            }

            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3507, v32);
          }

          v32 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_41;
        }

        v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3504, v31);
      }
    }

    v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_100288270(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, uint64_t (*a11)())
{
  v48 = 0;
  v49 = 0;
  result = sub_10001FFD8(&v48);
  if (!result)
  {
    if (HIBYTE(v49))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v20 = WORD2(v49);
      if (WORD1(v49) > WORD2(v49))
      {
        if (BYTE6(v49) == 2)
        {
          ++WORD2(v49);
          *(v48 + v20) = 88;
          v47[0] = BYTE5(a1);
          v47[1] = BYTE4(a1);
          v47[2] = BYTE3(a1);
          v47[3] = BYTE2(a1);
          v47[4] = BYTE1(a1);
          v47[5] = a1;
          if (HIBYTE(v49))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v49) - WORD2(v49) > 5)
          {
            if (BYTE6(v49) == 2)
            {
              sub_1000075EC((v48 + WORD2(v49)), v47, 6uLL);
              v24 = WORD2(v49);
              v25 = WORD2(v49) + 6;
              WORD2(v49) += 6;
              if (HIBYTE(v49))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v49) > v25)
              {
                if (BYTE6(v49) == 2)
                {
                  WORD2(v49) = v24 + 7;
                  *(v48 + v25) = BYTE6(a1);
                  if (HIBYTE(v49))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v26 = WORD2(v49);
                    if (WORD1(v49) > WORD2(v49))
                    {
                      if (BYTE6(v49) == 2)
                      {
                        ++WORD2(v49);
                        *(v48 + v26) = a2;
                        if (HIBYTE(v49))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v27 = WORD2(v49);
                          if (WORD1(v49) > WORD2(v49))
                          {
                            if (BYTE6(v49) == 2)
                            {
                              ++WORD2(v49);
                              *(v48 + v27) = a3;
                              if (HIBYTE(v49))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else
                              {
                                v28 = WORD2(v49);
                                if (WORD1(v49) > WORD2(v49))
                                {
                                  if (BYTE6(v49) == 2)
                                  {
                                    ++WORD2(v49);
                                    *(v48 + v28) = a4;
                                    if (HIBYTE(v49))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    }

                                    else
                                    {
                                      v29 = WORD2(v49);
                                      if (WORD1(v49) > WORD2(v49))
                                      {
                                        if (BYTE6(v49) == 2)
                                        {
                                          ++WORD2(v49);
                                          *(v48 + v29) = a5;
                                          if (HIBYTE(v49))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v30 = WORD2(v49);
                                            if (WORD1(v49) > WORD2(v49))
                                            {
                                              if (BYTE6(v49) == 2)
                                              {
                                                ++WORD2(v49);
                                                *(v48 + v30) = a6;
                                                if (HIBYTE(v49))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v31 = WORD2(v49);
                                                  if (WORD1(v49) > WORD2(v49))
                                                  {
                                                    if (BYTE6(v49) == 2)
                                                    {
                                                      ++WORD2(v49);
                                                      *(v48 + v31) = a7;
                                                      if (HIBYTE(v49))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v32 = WORD2(v49);
                                                        if (WORD1(v49) > WORD2(v49))
                                                        {
                                                          if (BYTE6(v49) == 2)
                                                          {
                                                            ++WORD2(v49);
                                                            *(v48 + v32) = a8;
                                                            if (HIBYTE(v49))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else
                                                            {
                                                              v33 = WORD2(v49);
                                                              if (WORD1(v49) > WORD2(v49))
                                                              {
                                                                if (BYTE6(v49) == 2)
                                                                {
                                                                  ++WORD2(v49);
                                                                  *(v48 + v33) = a9;
                                                                  if (HIBYTE(v49))
                                                                  {
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                  }

                                                                  else
                                                                  {
                                                                    v34 = WORD2(v49);
                                                                    if (WORD1(v49) > WORD2(v49))
                                                                    {
                                                                      if (BYTE6(v49) == 2)
                                                                      {
                                                                        ++WORD2(v49);
                                                                        *(v48 + v34) = a10;
                                                                        return sub_100020078(233, v48, BYTE4(v49), a11, sub_10025EF10, v21, v22, v23);
                                                                      }

                                                                      v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3542, v46);
                                                                    }
                                                                  }

                                                                  v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_87;
                                                                }

                                                                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3541, v45);
                                                              }
                                                            }

                                                            v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_83;
                                                          }

                                                          v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3540, v44);
                                                        }
                                                      }

                                                      v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_79;
                                                    }

                                                    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3539, v43);
                                                  }
                                                }

                                                v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_75;
                                              }

                                              v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3538, v42);
                                            }
                                          }

                                          v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_71;
                                        }

                                        v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3537, v41);
                                      }
                                    }

                                    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_67;
                                  }

                                  v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3536, v40);
                                }
                              }

                              v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_63;
                            }

                            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3535, v39);
                          }
                        }

                        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_59;
                      }

                      v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3534, v38);
                    }
                  }

                  v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_55;
                }

                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3533, v37);
              }

              v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_51;
            }

            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3532, v36);
          }

          v36 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_47;
        }

        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3529, v35);
      }
    }

    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1002888F0(char a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, uint64_t (*a7)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v18 = WORD2(v32);
      if (WORD1(v32) > WORD2(v32))
      {
        if (BYTE6(v32) == 2)
        {
          ++WORD2(v32);
          *(v31 + v18) = 81;
          if (HIBYTE(v32))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v19 = WORD2(v32);
            if (WORD1(v32) > WORD2(v32))
            {
              if (BYTE6(v32) == 2)
              {
                ++WORD2(v32);
                *(v31 + v19) = a1;
                if (HIBYTE(v32))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v20 = WORD2(v32);
                  if (WORD1(v32) > WORD2(v32))
                  {
                    if (BYTE6(v32) == 2)
                    {
                      ++WORD2(v32);
                      *(v31 + v20) = a2;
                      if (HIBYTE(v32))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v32) - WORD2(v32) > 1)
                      {
                        if (BYTE6(v32) == 2)
                        {
                          *(v31 + WORD2(v32)) = a3;
                          v21 = WORD2(v32) + 2;
                          WORD2(v32) += 2;
                          if (HIBYTE(v32))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v32) - v21 > 1)
                          {
                            if (BYTE6(v32) == 2)
                            {
                              *(v31 + v21) = a4;
                              *(v31 + WORD2(v32) + 1) = HIBYTE(a4);
                              v22 = WORD2(v32) + 2;
                              WORD2(v32) += 2;
                              if (HIBYTE(v32))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v32) - v22 > 1)
                              {
                                if (BYTE6(v32) == 2)
                                {
                                  *(v31 + v22) = a5;
                                  *(v31 + WORD2(v32) + 1) = HIBYTE(a5);
                                  v23 = WORD2(v32) + 2;
                                  WORD2(v32) += 2;
                                  if (HIBYTE(v32))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v32) - v23 > 1)
                                  {
                                    if (BYTE6(v32) == 2)
                                    {
                                      *(v31 + v23) = a6;
                                      *(v31 + WORD2(v32) + 1) = HIBYTE(a6);
                                      WORD2(v32) += 2;
                                      return sub_100020078(233, v31, BYTE4(v32), a7, sub_10025F04C, v15, v16, v17);
                                    }

                                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3561, v30);
                                  }

                                  v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_52;
                                }

                                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3560, v29);
                              }

                              v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_48;
                            }

                            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3559, v28);
                          }

                          v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_44;
                        }

                        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3558, v27);
                      }

                      v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_40;
                    }

                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3557, v26);
                  }
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3556, v25);
            }
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3555, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_100288D38(int a1, char a2, uint64_t (*a3)())
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

    else if (WORD1(v15) - WORD2(v15) > 3)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        *(v14 + WORD2(v15) + 2) = BYTE2(a1);
        *(v14 + WORD2(v15) + 3) = HIBYTE(a1);
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 4;
        WORD2(v15) += 4;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 5;
            *(v14 + v11) = a2;
            return sub_100020078(77, v14, BYTE4(v15), a3, sub_100083FE4, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3699, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3698, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100288ED8(uint64_t a1, uint64_t (*a2)())
{
  v110 = 0;
  v111 = 0;
  result = sub_10001FFD8(&v110);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_155;
  }

  v5 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_155:
    v84 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_157;
  }

  if (BYTE6(v111) != 2)
  {
    v84 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_157:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7684, v84);
  }

  ++WORD2(v111);
  *(v110 + v5) = 33;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_159;
  }

  if (WORD1(v111) - WORD2(v111) <= 1)
  {
LABEL_159:
    v85 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_161;
  }

  if (BYTE6(v111) != 2)
  {
    v85 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_161:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7686, v85);
  }

  *(v110 + WORD2(v111)) = *(a1 + 1);
  v6 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_163;
  }

  if (WORD1(v111) - v6 <= 1)
  {
LABEL_163:
    v86 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_165;
  }

  if (BYTE6(v111) != 2)
  {
    v86 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_165:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7687, v86);
  }

  *(v110 + v6) = *(a1 + 3);
  *(v110 + WORD2(v111) + 1) = *(a1 + 4);
  v7 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_167;
  }

  if (WORD1(v111) - v7 <= 1)
  {
LABEL_167:
    v87 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_169;
  }

  if (BYTE6(v111) != 2)
  {
    v87 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_169:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7688, v87);
  }

  *(v110 + v7) = *(a1 + 5);
  *(v110 + WORD2(v111) + 1) = *(a1 + 6);
  v8 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_171;
  }

  if (WORD1(v111) - v8 <= 1)
  {
LABEL_171:
    v88 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_173;
  }

  if (BYTE6(v111) != 2)
  {
    v88 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_173:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7689, v88);
  }

  *(v110 + v8) = *(a1 + 7);
  *(v110 + WORD2(v111) + 1) = *(a1 + 8);
  v9 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_175;
  }

  if (WORD1(v111) - v9 <= 1)
  {
LABEL_175:
    v89 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_177;
  }

  if (BYTE6(v111) != 2)
  {
    v89 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_177:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7690, v89);
  }

  *(v110 + v9) = *(a1 + 9);
  *(v110 + WORD2(v111) + 1) = *(a1 + 10);
  v10 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_179;
  }

  if (WORD1(v111) - v10 <= 1)
  {
LABEL_179:
    v90 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_181;
  }

  if (BYTE6(v111) != 2)
  {
    v90 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_181:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7691, v90);
  }

  *(v110 + v10) = *(a1 + 11);
  *(v110 + WORD2(v111) + 1) = *(a1 + 12);
  v11 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_183;
  }

  if (WORD1(v111) - v11 <= 1)
  {
LABEL_183:
    v91 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_185;
  }

  if (BYTE6(v111) != 2)
  {
    v91 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_185:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7692, v91);
  }

  *(v110 + v11) = *(a1 + 13);
  *(v110 + WORD2(v111) + 1) = *(a1 + 14);
  v12 = WORD2(v111);
  v13 = WORD2(v111) + 2;
  WORD2(v111) += 2;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_187;
  }

  if (WORD1(v111) <= v13)
  {
LABEL_187:
    v92 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_189;
  }

  if (BYTE6(v111) != 2)
  {
    v92 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_189:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7694, v92);
  }

  v14 = *(a1 + 15);
  WORD2(v111) = v12 + 3;
  *(v110 + v13) = v14;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_191;
  }

  if (WORD1(v111) - WORD2(v111) <= 5)
  {
LABEL_191:
    v93 = "ByteStream_NumReadBytesAvail(bs) >= (6)";
    goto LABEL_193;
  }

  if (BYTE6(v111) != 2)
  {
    v93 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_193:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7695, v93);
  }

  v15 = v110 + WORD2(v111);
  v16 = *(a1 + 16);
  *(v15 + 4) = *(a1 + 20);
  *v15 = v16;
  v17 = WORD2(v111);
  v18 = WORD2(v111) + 6;
  WORD2(v111) += 6;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_195;
  }

  if (WORD1(v111) <= v18)
  {
LABEL_195:
    v94 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_197;
  }

  if (BYTE6(v111) != 2)
  {
    v94 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_197:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7697, v94);
  }

  v19 = *(a1 + 22);
  WORD2(v111) = v17 + 7;
  *(v110 + v18) = v19;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_199;
  }

  v20 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_199:
    v95 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_201;
  }

  if (BYTE6(v111) != 2)
  {
    v95 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_201:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7698, v95);
  }

  v21 = *(a1 + 23);
  ++WORD2(v111);
  *(v110 + v20) = v21;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_203;
  }

  v22 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_203:
    v96 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_205;
  }

  if (BYTE6(v111) != 2)
  {
    v96 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_205:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7702, v96);
  }

  v23 = *(a1 + 24);
  ++WORD2(v111);
  *(v110 + v22) = v23;
  if (v23)
  {
    v24 = 0;
    while (!HIBYTE(v111))
    {
      v25 = WORD2(v111);
      if (WORD1(v111) <= WORD2(v111))
      {
        goto LABEL_148;
      }

      if (BYTE6(v111) != 2)
      {
        v82 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_149;
      }

      v26 = *(a1 + 25 + v24);
      ++WORD2(v111);
      *(v110 + v25) = v26;
      ++v24;
      v27 = *(a1 + 24);
      if (v24 >= v27)
      {
        goto LABEL_49;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_148:
    v82 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_149:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7705, v82);
  }

  LODWORD(v27) = 0;
LABEL_49:
  v28 = v110;
  v29 = WORD2(v111);
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v30 = 0;
    LODWORD(v27) = *(a1 + 24);
  }

  else
  {
    v30 = WORD1(v111) - WORD2(v111);
  }

  v31 = 25 - v27;
  if (v30 < v31)
  {
    v97 = "ByteStream_NumReadBytesAvail(bs) >= (25 - params->blob_length)";
    goto LABEL_208;
  }

  if (BYTE6(v111) != 2)
  {
    v97 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_208:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7707, v97);
  }

  bzero((v28 + v29), v31);
  LODWORD(v32) = *(a1 + 24);
  v33 = WORD2(v111) - v32 + 25;
  WORD2(v111) = v33;
  if (v32)
  {
    v34 = 0;
    do
    {
      if (HIBYTE(v111))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_152:
        v83 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_153:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7710, v83);
      }

      v35 = WORD2(v111);
      if (WORD1(v111) <= WORD2(v111))
      {
        goto LABEL_152;
      }

      if (BYTE6(v111) != 2)
      {
        v83 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_153;
      }

      v36 = *(a1 + 50 + v34);
      ++WORD2(v111);
      *(v110 + v35) = v36;
      ++v34;
      v32 = *(a1 + 24);
    }

    while (v34 < v32);
    v33 = WORD2(v111);
  }

  v37 = v110;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    v38 = 0;
    LODWORD(v32) = *(a1 + 24);
  }

  else
  {
    v38 = WORD1(v111) - v33;
  }

  v39 = 25 - v32;
  if (v38 < v39)
  {
    v98 = "ByteStream_NumReadBytesAvail(bs) >= (25 - params->blob_length)";
    goto LABEL_211;
  }

  if (BYTE6(v111) != 2)
  {
    v98 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_211:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7712, v98);
  }

  bzero((v37 + v33), v39);
  v43 = WORD2(v111) - *(a1 + 24);
  WORD2(v111) = v43 + 25;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_213;
  }

  if (WORD1(v111) <= (v43 + 25))
  {
LABEL_213:
    v99 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_215;
  }

  if (BYTE6(v111) != 2)
  {
    v99 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_215:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7714, v99);
  }

  v44 = 0;
  v45 = *(a1 + 75);
  WORD2(v111) = v43 + 26;
  *(v110 + (v43 + 25)) = v45;
  do
  {
    if (HIBYTE(v111))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_128:
      v77 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_129:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7718, v77);
    }

    v46 = WORD2(v111);
    if (WORD1(v111) <= WORD2(v111))
    {
      goto LABEL_128;
    }

    if (BYTE6(v111) != 2)
    {
      v77 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_129;
    }

    v47 = *(a1 + 76 + v44);
    ++WORD2(v111);
    *(v110 + v46) = v47;
    ++v44;
  }

  while (v44 != 32);
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_217;
  }

  v48 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_217:
    v100 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_219;
  }

  if (BYTE6(v111) != 2)
  {
    v100 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_219:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7721, v100);
  }

  v49 = *(a1 + 108);
  ++WORD2(v111);
  *(v110 + v48) = v49;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_221;
  }

  if (WORD1(v111) - WORD2(v111) <= 3)
  {
LABEL_221:
    v101 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_223;
  }

  if (BYTE6(v111) != 2)
  {
    v101 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_223:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7724, v101);
  }

  *(v110 + WORD2(v111)) = *(a1 + 109);
  v50 = WORD2(v111);
  v51 = WORD2(v111) + 4;
  WORD2(v111) += 4;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_225;
  }

  if (WORD1(v111) <= v51)
  {
LABEL_225:
    v102 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_227;
  }

  if (BYTE6(v111) != 2)
  {
    v102 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_227:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7726, v102);
  }

  v52 = *(a1 + 113);
  WORD2(v111) = v50 + 5;
  *(v110 + v51) = v52;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_229;
  }

  v53 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_229:
    v103 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_231;
  }

  if (BYTE6(v111) != 2)
  {
    v103 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_231:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7728, v103);
  }

  v54 = *(a1 + 114);
  ++WORD2(v111);
  *(v110 + v53) = v54;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_233;
  }

  v55 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_233:
    v104 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_235;
  }

  if (BYTE6(v111) != 2)
  {
    v104 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_235:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7729, v104);
  }

  v56 = 0;
  v57 = *(a1 + 115);
  ++WORD2(v111);
  *(v110 + v55) = v57;
  do
  {
    if (HIBYTE(v111))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_132:
      v78 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_133:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7732, v78);
    }

    v58 = WORD2(v111);
    if (WORD1(v111) <= WORD2(v111))
    {
      goto LABEL_132;
    }

    if (BYTE6(v111) != 2)
    {
      v78 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_133;
    }

    v59 = *(a1 + 116 + v56);
    ++WORD2(v111);
    *(v110 + v58) = v59;
    ++v56;
  }

  while (v56 != 32);
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_237;
  }

  v60 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_237:
    v105 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_239;
  }

  if (BYTE6(v111) != 2)
  {
    v105 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_239:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7735, v105);
  }

  v61 = 0;
  v62 = *(a1 + 148);
  ++WORD2(v111);
  *(v110 + v60) = v62;
  do
  {
    if (HIBYTE(v111))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_136:
      v79 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_137:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7738, v79);
    }

    v63 = WORD2(v111);
    if (WORD1(v111) <= WORD2(v111))
    {
      goto LABEL_136;
    }

    if (BYTE6(v111) != 2)
    {
      v79 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_137;
    }

    v64 = *(a1 + 149 + v61);
    ++WORD2(v111);
    *(v110 + v63) = v64;
    ++v61;
  }

  while (v61 != 32);
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_241;
  }

  v65 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_241:
    v106 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_243;
  }

  if (BYTE6(v111) != 2)
  {
    v106 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_243:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7741, v106);
  }

  v66 = *(a1 + 181);
  ++WORD2(v111);
  *(v110 + v65) = v66;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_245;
  }

  v67 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_245:
    v107 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_247;
  }

  if (BYTE6(v111) != 2)
  {
    v107 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_247:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7743, v107);
  }

  v68 = *(a1 + 182);
  ++WORD2(v111);
  *(v110 + v67) = v68;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_249;
  }

  v69 = WORD2(v111);
  if (WORD1(v111) <= WORD2(v111))
  {
LABEL_249:
    v108 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_251;
  }

  if (BYTE6(v111) != 2)
  {
    v108 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_251:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7744, v108);
  }

  v70 = *(a1 + 183);
  ++WORD2(v111);
  *(v110 + v69) = v70;
  if (HIBYTE(v111))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_253;
  }

  if (WORD1(v111) - WORD2(v111) <= 1)
  {
LABEL_253:
    v109 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_255;
  }

  if (BYTE6(v111) != 2)
  {
    v109 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_255:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7746, v109);
  }

  v71 = 0;
  *(v110 + WORD2(v111)) = *(a1 + 184);
  WORD2(v111) += 2;
  do
  {
    if (HIBYTE(v111))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_140:
      v80 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_141:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7749, v80);
    }

    v72 = WORD2(v111);
    if (WORD1(v111) <= WORD2(v111))
    {
      goto LABEL_140;
    }

    if (BYTE6(v111) != 2)
    {
      v80 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_141;
    }

    v73 = *(a1 + 186 + v71);
    ++WORD2(v111);
    *(v110 + v72) = v73;
    ++v71;
  }

  while (v71 != 10);
  for (i = 0; i != 10; ++i)
  {
    if (HIBYTE(v111))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_144:
      v81 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_145:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7753, v81);
    }

    v75 = WORD2(v111);
    if (WORD1(v111) <= WORD2(v111))
    {
      goto LABEL_144;
    }

    if (BYTE6(v111) != 2)
    {
      v81 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_145;
    }

    v76 = *(a1 + 196 + i);
    ++WORD2(v111);
    *(v110 + v75) = v76;
  }

  return sub_100020078(610, v110, BYTE4(v111), a2, sub_100022AD0, v40, v41, v42);
}

uint64_t sub_10028A18C(uint64_t a1, int a2)
{
  if (!*(sub_1000B12AC(a1) + 128))
  {
    v4 = sub_1001BBBD8(0x20uLL, 0x1010040DC95CA74uLL);
    *(sub_1000B12AC(a1) + 128) = v4;
  }

  v5 = *(sub_1000B12AC(a1) + 128);
  v6 = *(sub_1000B12AC(a1) + 32);
  *(v5 + 12) = v6 / *(sub_1000B12AC(a1) + 60);
  v7 = *(sub_1000B12AC(a1) + 32);
  v8 = sub_1000B12AC(a1);
  v9 = *(v5 + 12);
  if (v7 % *(v8 + 60))
  {
    *(v5 + 12) = ++v9;
  }

  if ((v9 & 0xF0) != 0)
  {
    result = 104;
  }

  else
  {
    result = 0;
  }

  *v5 = a2;
  return result;
}

uint64_t sub_10028A258(uint64_t a1, int a2, __int16 a3)
{
  if (!*(sub_1000B12AC(a1) + 128))
  {
    v6 = sub_1001BBBD8(0x20uLL, 0x1010040DC95CA74uLL);
    *(sub_1000B12AC(a1) + 128) = v6;
  }

  v7 = *(sub_1000B12AC(a1) + 128);
  *(v7 + 4) = a2;
  *(v7 + 10) = a3;
  return 0;
}

uint64_t sub_10028A2D4(uint64_t a1)
{
  result = sub_1000B12AC(a1);
  v3 = *(result + 128);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      sub_10000C1E8(v4);
      v3[2] = 0;
    }

    sub_10000C1E8(v3);
    result = sub_1000B12AC(a1);
    *(result + 128) = 0;
  }

  return result;
}

uint64_t sub_10028A344(uint64_t a1, int a2)
{
  v4 = sub_1000B12AC(a1);
  if (!a2)
  {
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("LE_L2CAP_IncreaseRemoteCredits credits cannot be 0. Disconnecting.\n", v15, v16, v17, v18, v19, v20, v21, v24);
    v22 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_10080F7A0();
LABEL_9:
    sub_10029135C(*(a1 + 4));
    return 101;
  }

  v5 = *(v4 + 128);
  v6 = *v5 + a2;
  *v5 = v6;
  if (v6 >= 0x10000)
  {
    if (!sub_10000C240())
    {
      goto LABEL_9;
    }

    sub_10000AF54("LE_L2CAP_IncreaseRemoteCredits credits exceed max allowed. Disconnecting.\n", v7, v8, v9, v10, v11, v12, v13, v24);
    v14 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1000BE23C(*(a1 + 4));
  return 0;
}

uint64_t sub_10028A424(uint64_t a1, unsigned int a2)
{
  v3 = *(sub_1000B12AC(a1) + 128);
  if (*v3 < a2)
  {
    return 101;
  }

  result = 0;
  *v3 -= a2;
  return result;
}

uint64_t sub_10028A468(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *(sub_1000B12AC(a1) + 128);
  if (*(v10 + 4))
  {
    v11 = sub_10028A5B4(a1, a2, a3, a4, a5);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_L2CAP_Flow_DataIndication returned %!. Disconnecting L2CAP Channel\n", v13, v14, v15, v16, v17, v18, v19, v12);
        v20 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_10029135C(*(a1 + 4));
    }

    else
    {
      v21 = *(v10 + 8) + 1;
      *(v10 + 8) = v21;
      --*(v10 + 4);
      if ((*(v10 + 10) - 1) >= v21)
      {
        return 0;
      }

      else
      {
        v22 = *sub_1000B12AC(a1);
        v23 = sub_1002AB568();
        sub_1002DDE68(v22, v23, *(a1 + 4), *(v10 + 8));
        v12 = 0;
        *(v10 + 4) += *(v10 + 8);
        *(v10 + 8) = 0;
      }
    }
  }

  else
  {
    sub_10029135C(*(a1 + 4));
    return 408;
  }

  return v12;
}

uint64_t sub_10028A5B4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *(sub_1000B12AC(a1) + 128);
  v12 = (v10 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
LABEL_2:
    v13 = *(v10 + 24);
    if (v13 + a3 <= *(v10 + 28))
    {
      memmove(&v11[v13], a2, a3);
      v32 = *(v10 + 28);
      v33 = *(v10 + 24) + a3;
      *(v10 + 24) = v33;
      v34 = *(v10 + 13) | a4;
      *(v10 + 13) = v34;
      if (v33 != v32)
      {
        return 0;
      }

      sub_100291AF0(*(a1 + 4), *v12, v33, v34 != 0, a5);
      v35 = 0;
      goto LABEL_17;
    }

    if (!sub_10000C240() || (sub_10000AF54("Too much data received (currentPos=%d, new data size=%d, totalSDU size=%d\n", v14, v15, v16, v17, v18, v19, v20, *(v10 + 24)), v21 = sub_10000C050(0x2Fu), !os_log_type_enabled(v21, OS_LOG_TYPE_ERROR)))
    {
LABEL_16:
      v35 = 472;
LABEL_17:
      if (*v12)
      {
        sub_10000C1E8(*v12);
      }

      *(v10 + 13) = 0;
      *v12 = 0;
      *(v10 + 24) = 0;
      return v35;
    }

LABEL_15:
    sub_10080F7A0();
    goto LABEL_16;
  }

  v22 = *a2;
  *(v10 + 28) = v22;
  if (v22 > *(sub_1000B12AC(a1) + 36))
  {
    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    v23 = *(v10 + 28);
    sub_1000B12AC(a1);
    sub_10000AF54("SDU Size exceeds MTU (SDU Size=%d inMTU=%d\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v31 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(sub_1000B12AC(a1) + 72) < a3)
  {
    if (!sub_10000C240())
    {
      goto LABEL_16;
    }

    sub_1000B12AC(a1);
    sub_10000AF54("PDU Size exceeds MaxPDUSize (PDU Size=%d maxPDUSize=%d\n", v36, v37, v38, v39, v40, v41, v42, a3);
    v43 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = sub_100007618(*(v10 + 28), 0xAADE1CEEuLL);
  *(v10 + 16) = v11;
  if (v11)
  {
    ++a2;
    LOWORD(a3) = a3 - 2;
    goto LABEL_2;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate reassemblyPacket memory.\n", v45, v46, v47, v48, v49, v50, v51, v53);
    v52 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 106;
}

uint64_t sub_10028A830(unsigned int a1, unsigned int a2)
{
  v30 = 0;
  v4 = sub_1000ABC7C(a1, &v30);
  if (v4)
  {
    v5 = v4;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_1000E10E0(a1))
  {
    v14 = *(sub_1000B12AC(v30) + 128);
    v15 = *sub_1000B12AC(v30);
    v16 = sub_1002AB568();
    v5 = sub_1002DDE68(v15, v16, *(v30 + 4), a2);
    if (!v5)
    {
      *(v14 + 4) += a2;
      v17 = *(v14 + 8);
      v5 = 0;
      v18 = v17 >= a2;
      v19 = v17 - a2;
      if (v18)
      {
        *(v14 + 8) = v19;
      }

      else
      {
        *(v14 + 8) = 0;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This channel is not LE Credit based", v20, v21, v22, v23, v24, v25, v26, v29);
      v27 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 403;
  }

  return v5;
}

BOOL sub_10028A978()
{
  if (qword_100B60250)
  {
    v0 = off_100BCE0A8 == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

const char *sub_10028A99C(int a1)
{
  if (a1 > 4096)
  {
    if (a1 <= 6151)
    {
      if (a1 > 5124)
      {
        if (a1 <= 5129)
        {
          if (a1 <= 5126)
          {
            if (a1 == 5125)
            {
              return "OI_DHCI_READ_RSSI_OPCODE";
            }

            else
            {
              return "OI_DHCI_READ_AFH_CHAN_MAP_OPCODE";
            }
          }

          else if (a1 == 5127)
          {
            return "OI_DHCI_READ_CLOCK_OPCODE";
          }

          else if (a1 == 5128)
          {
            return "OI_DHCI_CMD_ID_READ_ENCRYPTION_KEY_SIZE_OPCODE";
          }

          else
          {
            return "OI_DHCI_CMD_ID_READ_LOCAL_AMP_INFO_OPCODE";
          }
        }

        if (a1 > 6145)
        {
          switch(a1)
          {
            case 6146:
              return "OI_DHCI_WRITE_LOOPBACK_MODE_OPCODE";
            case 6147:
              return "OI_DHCI_ENABLE_DEV_TEST_MODE_OPCODE";
            case 6151:
              return "OI_DHCI_CMD_ID_ENABLE_AMP_RECEIVER_REPORTS_OPCODE";
          }
        }

        else
        {
          switch(a1)
          {
            case 5130:
              return "OI_DHCI_CMD_ID_READ_LOCAL_AMP_ASSOC_INFO_OPCODE";
            case 5131:
              return "OI_DHCI_CMD_ID_WRITE_LOCAL_AMP_ASSOC_INFO_OPCODE";
            case 6145:
              return "OI_DHCI_READ_LOOPBACK_MODE_OPCODE";
          }
        }
      }

      else if (a1 <= 4102)
      {
        if (a1 <= 4098)
        {
          if (a1 == 4097)
          {
            return "OI_DHCI_READ_LOCAL_VER_INFO_OPCODE";
          }

          else
          {
            return "OI_DHCI_READ_LOCAL_SUP_CMDS_OPCODE";
          }
        }

        switch(a1)
        {
          case 4099:
            return "OI_DHCI_READ_LOCAL_FEATURES_OPCODE";
          case 4100:
            return "OI_DHCI_READ_LOCAL_EXT_FEATURES_OPCODE";
          case 4101:
            return "OI_DHCI_READ_BUFFER_SIZE_OPCODE";
        }
      }

      else if (a1 > 5120)
      {
        switch(a1)
        {
          case 5121:
            return "OI_DHCI_READ_FAILED_CON_CTR_OPCODE";
          case 5122:
            return "OI_DHCI_RESET_FAILED_CON_CTR_OPCODE";
          case 5123:
            return "OI_DHCI_GET_LINK_QUALITY_OPCODE";
        }
      }

      else
      {
        switch(a1)
        {
          case 4103:
            return "OI_DHCI_READ_COUNTRY_CODE_OPCODE";
          case 4105:
            return "OI_DHCI_READ_BD_ADDR_OPCODE";
          case 4106:
            return "OI_DHCI_CMD_ID_READ_DATA_BLOCK_SIZE_OPCODE";
        }
      }

LABEL_318:
      v2 = "Unknown";
      if ((a1 & 0xFC00) == 0xF800)
      {
        v2 = "OI_DHCI_BLUETOOTH_LOGO_TEST_OPCODE";
      }

      if (a1 >> 10 <= 0x3E)
      {
        return v2;
      }

      else
      {
        return "OI_DHCI_VENDOR_OPCODE";
      }
    }

    else
    {
      switch(a1)
      {
        case 8193:
          return "OI_DHCI_CMD_ID_LE_SET_EVENT_MASK_OPCODE";
        case 8194:
          return "OI_DHCI_CMD_ID_LE_READ_BUFFER_SIZE_OPCODE";
        case 8195:
          return "OI_DHCI_CMD_ID_LE_READ_LOCAL_SUPPORTED_FEATURES_PAGE_0_OPCODE";
        case 8196:
        case 8229:
        case 8230:
        case 8231:
        case 8232:
        case 8233:
        case 8234:
        case 8235:
        case 8236:
        case 8237:
        case 8238:
        case 8243:
        case 8244:
        case 8267:
        case 8268:
        case 8269:
        case 8270:
        case 8271:
        case 8272:
        case 8273:
        case 8274:
        case 8275:
        case 8276:
        case 8277:
        case 8278:
        case 8279:
        case 8280:
        case 8286:
        case 8287:
        case 8289:
        case 8301:
        case 8304:
        case 8305:
        case 8306:
        case 8307:
        case 8308:
        case 8309:
        case 8315:
        case 8316:
        case 8319:
        case 8322:
        case 8323:
        case 8324:
        case 8325:
        case 8326:
        case 8341:
          goto LABEL_318;
        case 8197:
          return "OI_DHCI_CMD_ID_LE_SET_RANDOM_ADDRESS_OPCODE";
        case 8198:
          return "OI_DHCI_CMD_ID_LE_SET_ADVERTISING_PARAMETERS_OPCODE";
        case 8199:
          return "OI_DHCI_CMD_ID_LE_READ_ADVERTISING_CHANNEL_TX_POWER_OPCODE";
        case 8200:
          return "OI_DHCI_CMD_ID_LE_SET_ADVERTISING_DATA_OPCODE";
        case 8201:
          return "OI_DHCI_CMD_ID_LE_SET_SCAN_RESPONSE_DATA_OPCODE";
        case 8202:
          return "OI_DHCI_CMD_ID_LE_SET_ADVERTISE_ENABLE_OPCODE";
        case 8203:
          return "OI_DHCI_CMD_ID_LE_SET_SCAN_PARAMETERS_OPCODE";
        case 8204:
          return "OI_DHCI_CMD_ID_LE_SET_SCAN_ENABLE_OPCODE";
        case 8205:
          return "OI_DHCI_CMD_ID_LE_CREATE_CONNECTION_OPCODE";
        case 8206:
          return "OI_DHCI_CMD_ID_LE_CREATE_CONNECTION_CANCEL_OPCODE";
        case 8207:
          return "OI_DHCI_CMD_ID_LE_READ_FILTER_ACCEPT_LIST_SIZE_OPCODE";
        case 8208:
          return "OI_DHCI_CMD_ID_LE_CLEAR_FILTER_ACCEPT_LIST_OPCODE";
        case 8209:
          return "OI_DHCI_CMD_ID_LE_ADD_DEVICE_TO_FILTER_ACCEPT_LIST_OPCODE";
        case 8210:
          return "OI_DHCI_CMD_ID_LE_REMOVE_DEVICE_FROM_FILTER_ACCEPT_LIST_OPCODE";
        case 8211:
          return "OI_DHCI_CMD_ID_LE_CONNECTION_UPDATE_OPCODE";
        case 8212:
          return "OI_DHCI_CMD_ID_LE_SET_HOST_CHANNEL_CLASSIFICATION_OPCODE";
        case 8213:
          return "OI_DHCI_CMD_ID_LE_READ_CHANNEL_MAP_OPCODE";
        case 8214:
          return "OI_DHCI_CMD_ID_LE_READ_REMOTE_FEATURES_PAGE_0_OPCODE";
        case 8215:
          return "OI_DHCI_CMD_ID_LE_ENCRYPT_OPCODE";
        case 8216:
          return "OI_DHCI_CMD_ID_LE_RAND_OPCODE";
        case 8217:
          return "OI_DHCI_CMD_ID_LE_START_ENCRYPTION_OPCODE";
        case 8218:
          return "OI_DHCI_CMD_ID_LE_LONG_TERM_KEY_REQUEST_REPLY_OPCODE";
        case 8219:
          return "OI_DHCI_CMD_ID_LE_LONG_TERM_KEY_REQUEST_NEG_REPLY_OPCODE";
        case 8220:
          return "OI_DHCI_CMD_ID_LE_READ_SUPPORTED_STATES_OPCODE";
        case 8221:
          return "OI_DHCI_CMD_ID_LE_RECEIVER_TEST_OPCODE";
        case 8222:
          return "OI_DHCI_CMD_ID_LE_TRANSMITTER_TEST_OPCODE";
        case 8223:
          return "OI_DHCI_CMD_ID_LE_TEST_END_OPCODE";
        case 8224:
          return "OI_DHCI_CMD_ID_LE_REMOTE_CONNECTION_PARAM_REQ_REPLY_OPCODE";
        case 8225:
          return "OI_DHCI_CMD_ID_LE_REMOTE_CONNECTION_PARAM_REQ_NEG_REPLY_OPCODE";
        case 8226:
          return "OI_DHCI_CMD_ID_LE_SET_DATA_LENGTH_OPCODE";
        case 8227:
          return "OI_DHCI_CMD_ID_LE_READ_SUGGESTED_DEFAULT_DATA_LENGTH_OPCODE";
        case 8228:
          return "OI_DHCI_CMD_ID_LE_WRITE_SUGGESTED_DEFAULT_DATA_LENGTH_OPCODE";
        case 8239:
          return "OI_DHCI_CMD_ID_LE_READ_MAXIMUM_DATA_LENGTH_OPCODE";
        case 8240:
          return "OI_DHCI_CMD_ID_LE_READ_PHY_OPCODE";
        case 8241:
          return "OI_DHCI_CMD_ID_LE_SET_DEFAULT_PHY_OPCODE";
        case 8242:
          return "OI_DHCI_CMD_ID_LE_SET_PHY_OPCODE";
        case 8245:
          return "OI_DHCI_CMD_ID_LE_SET_ADVERTISING_SET_RANDOM_ADDRESS_OPCODE";
        case 8246:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_ADVERTISING_PARAMETERS_OPCODE";
        case 8247:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_ADVERTISING_DATA_OPCODE";
        case 8248:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_SCAN_RESPONSE_DATA_OPCODE";
        case 8249:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_ADVERTISING_ENABLE_OPCODE";
        case 8250:
          return "OI_DHCI_CMD_ID_LE_READ_MAXIMUM_ADVERTISING_DATA_LENGTH_OPCODE";
        case 8251:
          return "OI_DHCI_CMD_ID_LE_READ_NUMBER_OF_SUPPORTED_ADVERTISING_SETS_OPCODE";
        case 8252:
          return "OI_DHCI_CMD_ID_LE_REMOVE_ADVERTISING_SET_OPCODE";
        case 8253:
          return "OI_DHCI_CMD_ID_LE_CLEAR_ADVERTISING_SETS_OPCODE";
        case 8254:
          return "OI_DHCI_CMD_ID_LE_SET_PERIODIC_ADVERTISING_PARAMETERS_OPCODE";
        case 8255:
          return "OI_DHCI_CMD_ID_LE_SET_PERIODIC_ADVERTISING_DATA_OPCODE";
        case 8256:
          return "OI_DHCI_CMD_ID_LE_SET_PERIODIC_ADVERTISING_ENABLE_OPCODE";
        case 8257:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_SCAN_PARAMETERS_OPCODE";
        case 8258:
          return "OI_DHCI_CMD_ID_LE_SET_EXTENDED_SCAN_ENABLE_OPCODE";
        case 8259:
          return "OI_DHCI_CMD_ID_LE_EXTENDED_CREATE_CONNECTION_OPCODE";
        case 8260:
          return "OI_DHCI_CMD_ID_LE_PERIODIC_ADV_CREATE_SYNC_OPCODE";
        case 8261:
          return "OI_DHCI_CMD_ID_LE_PERIODIC_ADV_CREATE_SYNC_CANCEL_OPCODE";
        case 8262:
          return "OI_DHCI_CMD_ID_LE_PERIODIC_ADV_TERMINATE_SYNC_OPCODE";
        case 8263:
          return "OI_DHCI_CMD_ID_LE_ADD_DEVICE_TO_PERIODIC_ADV_LIST_OPCODE";
        case 8264:
          return "OI_DHCI_CMD_ID_LE_REMOVE_DEVICE_FROM_PERIODIC_ADV_LIST_OPCODE";
        case 8265:
          return "OI_DHCI_CMD_ID_LE_CLEAR_PERIODIC_ADV_LIST_OPCODE";
        case 8266:
          return "OI_DHCI_CMD_ID_LE_READ_PERIODIC_ADV_LIST_SIZE_OPCODE";
        case 8281:
          return "OI_DHCI_CMD_ID_LE_SET_PERIODIC_ADVERTISING_RECEIVE_ENABLE_OPCODE";
        case 8282:
          return "OI_DHCI_CMD_ID_LE_PERIODIC_ADVERTISING_SYNC_TRANSFER_OPCODE";
        case 8283:
          return "OI_DHCI_CMD_ID_LE_PERIODIC_ADVERTISING_SET_INFO_TRANSFER_OPCODE";
        case 8284:
          return "OI_DHCI_CMD_ID_LE_SET_PERIODIC_ADVERTISING_SYNC_TRANSFER_PARAMETERS_OPCODE";
        case 8285:
          return "OI_DHCI_CMD_ID_LE_SET_DEFAULT_PERIODIC_ADVERTISING_SYNC_TRANSFER_PARAMETERS_OPCODE";
        case 8288:
          return "OI_DHCI_CMD_ID_LE_READ_BUFFER_SIZE_V2_OPCODE";
        case 8290:
          return "OI_DHCI_CMD_ID_LE_SET_CIG_PARAMETERS_OPCODE";
        case 8291:
          return "OI_DHCI_CMD_ID_LE_SET_CIG_PARAMETERS_TEST_OPCODE";
        case 8292:
          return "OI_DHCI_CMD_ID_LE_CREATE_CIS_OPCODE";
        case 8293:
          return "OI_DHCI_CMD_ID_LE_REMOVE_CIG_OPCODE";
        case 8294:
          return "OI_DHCI_CMD_ID_LE_ACCEPT_CIS_REQUEST_OPCODE";
        case 8295:
          return "OI_DHCI_CMD_ID_LE_REJECT_CIS_REQUEST_OPCODE";
        case 8296:
          return "OI_DHCI_CMD_ID_LE_CREATE_BIG_OPCODE";
        case 8297:
          return "OI_DHCI_CMD_ID_LE_CREATE_BIG_TEST_OPCODE";
        case 8298:
          return "OI_DHCI_CMD_ID_LE_TERMINATE_BIG_OPCODE";
        case 8299:
          return "OI_DHCI_CMD_ID_LE_BIG_CREATE_SYNC_OPCODE";
        case 8300:
          return "OI_DHCI_CMD_ID_LE_BIG_TERMINATE_SYNC_OPCODE";
        case 8302:
          return "OI_DHCI_CMD_ID_LE_SETUP_ISO_DATAPATH_OPCODE";
        case 8303:
          return "OI_DHCI_CMD_ID_LE_REMOVE_ISO_DATAPATH_OPCODE";
        case 8310:
          return "OI_DHCI_CMD_ID_LE_ENHANCED_READ_TRANSMIT_POWER_LEVEL_OPCODE";
        case 8311:
          return "OI_DHCI_CMD_ID_LE_READ_REMOTE_TRANSMIT_POWER_LEVEL_OPCODE";
        case 8312:
          return "OI_DHCI_CMD_ID_LE_SET_PATH_LOSS_REPORTING_PARAMETERS_OPCODE";
        case 8313:
          return "OI_DHCI_CMD_ID_LE_SET_PATH_LOSS_REPORTING_ENABLE_OPCODE";
        case 8314:
          return "OI_DHCI_CMD_ID_LE_SET_TRANSMIT_POWER_REPORTING_ENABLE_OPCODE";
        case 8317:
          return "OI_DHCI_CMD_ID_LE_SET_DEFAULT_SUBRATE_OPCODE";
        case 8318:
          return "OI_DHCI_CMD_ID_LE_SET_HOST_SUBRATING_OPCODE";
        case 8320:
          return "OI_DHCI_CMD_ID_LE_SET_DECISION_DATA_OPCODE";
        case 8321:
          return "OI_DHCI_CMD_ID_LE_SET_DECISION_INSTRUCTIONS_OPCODE";
        case 8327:
          return "OI_DHCI_CMD_ID_LE_READ_ALL_LOCAL_SUPPORTED_FEATURES_OPCODE";
        case 8328:
          return "OI_DHCI_CMD_ID_LE_READ_ALL_REMOTE_FEATURES_OPCODE";
        case 8329:
          return "OI_DHCI_CMD_ID_LE_CS_READ_LOCAL_SUPPORTED_CAPABILITIES_OPCODE";
        case 8330:
          return "OI_DHCI_CMD_ID_LE_CS_READ_REMOTE_SUPPORTED_CAPABILITIES_OPCODE";
        case 8331:
          return "OI_DHCI_CMD_ID_LE_CS_WRITE_CACHED_REMOTE_SUPPORTED_CAPABILITIES_OPCODE";
        case 8332:
          return "OI_DHCI_CMD_ID_LE_CS_SET_SECURITY_ENABLE_OPCODE";
        case 8333:
          return "OI_DHCI_CMD_ID_LE_CS_SET_DEFAULT_SETTINGS_OPCODE";
        case 8334:
          return "OI_DHCI_CMD_ID_LE_CS_READ_REMOTE_FAE_TABLE_OPCODE";
        case 8335:
          return "OI_DHCI_CMD_ID_LE_CS_WRITE_REMOTE_FAE_TABLE_OPCODE";
        case 8336:
          return "OI_DHCI_CMD_ID_LE_CS_CREATE_CONFIG_OPCODE";
        case 8337:
          return "OI_DHCI_CMD_ID_LE_CS_REMOVE_CONFIG_OPCODE";
        case 8338:
          return "OI_DHCI_CMD_ID_LE_CS_SET_AFH_OPCODE";
        case 8339:
          return "OI_DHCI_CMD_ID_LE_CS_SET_PROCEDURE_PARAMETERS_OPCODE";
        case 8340:
          return "OI_DHCI_CMD_ID_LE_CS_SET_PROCEDURE_ENABLE_OPCODE";
        case 8342:
          return "OI_DHCI_CMD_ID_LE_CS_READ_LOCAL_FAE_TABLE_OPCODE";
        default:
          if (a1 == 6152)
          {
            result = "OI_DHCI_CMD_ID_AMP_TEST_END_OPCODE";
          }

          else
          {
            if (a1 != 6153)
            {
              goto LABEL_318;
            }

            result = "OI_DHCI_CMD_ID_AMP_TEST_OPCODE";
          }

          break;
      }
    }
  }

  else if (a1 <= 3072)
  {
    switch(a1)
    {
      case 1025:
        result = "OI_DHCI_INQUIRY_OPCODE";
        break;
      case 1026:
        result = "OI_DHCI_INQUIRY_CANCEL_OPCODE";
        break;
      case 1027:
        result = "OI_DHCI_PERIODIC_INQ_MODE_OPCODE";
        break;
      case 1028:
        result = "OI_DHCI_EXIT_PERIODIC_INQ_MODE_OPCODE";
        break;
      case 1029:
        result = "OI_DHCI_CREATE_CNCT_OPCODE";
        break;
      case 1030:
        result = "OI_DHCI_DISC_OPCODE";
        break;
      case 1031:
        result = "OI_DHCI_ADD_SCO_CNCT_OPCODE";
        break;
      case 1032:
        result = "OI_DHCI_CANCEL_CREATE_CNCT_OPCODE";
        break;
      case 1033:
        result = "OI_DHCI_ACCEPT_CNCT_REQ_OPCODE";
        break;
      case 1034:
        result = "OI_DHCI_REJ_CNCT_REQ_OPCODE";
        break;
      case 1035:
        result = "OI_DHCI_LINK_KEY_REQ_REPLY_OPCODE";
        break;
      case 1036:
        result = "OI_DHCI_LINK_KEY_REQ_NEG_REPLY_OPCODE";
        break;
      case 1037:
        result = "OI_DHCI_PIN_CODE_REQ_REPLY_OPCODE";
        break;
      case 1038:
        result = "OI_DHCI_PIN_CODE_REQ_NEG_REPLY_OPCODE";
        break;
      case 1039:
        result = "OI_DHCI_CHANGE_CNCT_PKT_TYPE_OPCODE";
        break;
      case 1040:
      case 1042:
      case 1044:
      case 1046:
      case 1048:
      case 1054:
      case 1056:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1073:
      case 1074:
        goto LABEL_318;
      case 1041:
        result = "OI_DHCI_AUTHENT_REQ_OPCODE";
        break;
      case 1043:
        result = "OI_DHCI_SET_CNCT_ENCRYPTION_OPCODE";
        break;
      case 1045:
        result = "OI_DHCI_CHANGE_CNCT_LINK_KEY_OPCODE";
        break;
      case 1047:
        result = "OI_DHCI_MASTER_LINK_KEY_OPCODE";
        break;
      case 1049:
        result = "OI_DHCI_REMOTE_NAME_REQ_OPCODE";
        break;
      case 1050:
        result = "OI_DHCI_CANCEL_REMOTE_NAME_REQ_OPCODE";
        break;
      case 1051:
        result = "OI_DHCI_READ_REMOTE_FEATURE_OPCODE";
        break;
      case 1052:
        result = "OI_DHCI_READ_REMOTE_EXT_FEATURE_OPCODE";
        break;
      case 1053:
        result = "OI_DHCI_READ_REMOTE_VER_INFO_OPCODE";
        break;
      case 1055:
        result = "OI_DHCI_READ_CLOCK_OFFSET_OPCODE";
        break;
      case 1064:
        result = "OI_DHCI_SETUP_SYNCHRONOUS_CNCT_OPCODE";
        break;
      case 1065:
        result = "OI_DHCI_ACCEPT_SYNCHRONOUS_CNCT_OPCODE";
        break;
      case 1066:
        result = "OI_DHCI_REJ_SYNCHRONOUS_CNCT_OPCODE";
        break;
      case 1067:
        result = "OI_DHCI_IO_CAP_REQ_REPLY_OPCODE";
        break;
      case 1068:
        result = "OI_DHCI_USER_CONFIRM_REQ_REPLY_OPCODE";
        break;
      case 1069:
        result = "OI_DHCI_USER_CONFIRM_REQ_NEG_REPLY_OPCODE";
        break;
      case 1070:
        result = "OI_DHCI_USER_PASSKEY_REQ_REPLY_OPCODE";
        break;
      case 1071:
        result = "OI_DHCI_USER_PASSKEY_REQ_NEG_REPLY_OPCODE";
        break;
      case 1072:
        result = "OI_DHCI_REMOTE_OOB_DATA_REQ_REPLY_OPCODE";
        break;
      case 1075:
        result = "OI_DHCI_REMOTE_OOB_DATA_REQ_NEG_REPLY_OPCODE";
        break;
      case 1076:
        result = "OI_DHCI_IO_CAP_REQ_NEG_REPLY_OPCODE";
        break;
      case 1077:
        result = "OI_DHCI_CMD_ID_CREATE_PHYSICAL_LINK_OPCODE";
        break;
      case 1078:
        result = "OI_DHCI_CMD_ID_ACCEPT_PHYSICAL_LINK_OPCODE";
        break;
      case 1079:
        result = "OI_DHCI_CMD_ID_DISCONNECT_PHYSICAL_LINK_OPCODE";
        break;
      case 1080:
        result = "OI_DHCI_CMD_ID_CREATE_LOGICAL_LINK_OPCODE";
        break;
      case 1081:
        result = "OI_DHCI_CMD_ID_ACCEPT_LOGICAL_LINK_OPCODE";
        break;
      case 1082:
        result = "OI_DHCI_CMD_ID_DISCONNECT_LOGICAL_LINK_OPCODE";
        break;
      case 1083:
        result = "OI_DHCI_CMD_ID_LOGICAL_LINK_CANCEL_OPCODE";
        break;
      case 1084:
        result = "OI_DHCI_CMD_ID_FLOW_SPEC_MODIFY_OPCODE";
        break;
      default:
        switch(a1)
        {
          case 2049:
            result = "OI_DHCI_HOLD_MODE_OPCODE";
            break;
          case 2050:
          case 2056:
          case 2058:
            goto LABEL_318;
          case 2051:
            result = "OI_DHCI_SNIFF_MODE_OPCODE";
            break;
          case 2052:
            result = "OI_DHCI_EXIT_SNIFF_MODE_OPCODE";
            break;
          case 2053:
            result = "OI_DHCI_PARK_MODE_OPCODE";
            break;
          case 2054:
            result = "OI_DHCI_EXIT_PARK_MODE_OPCODE";
            break;
          case 2055:
            result = "OI_DHCI_QOS_SETUP_OPCODE";
            break;
          case 2057:
            result = "OI_DHCI_ROLE_DISCOVERY_OPCODE";
            break;
          case 2059:
            result = "OI_DHCI_SWITCH_ROLE_OPCODE";
            break;
          case 2060:
            result = "OI_DHCI_READ_LINKPOLICY_OPCODE";
            break;
          case 2061:
            result = "OI_DHCI_WRITE_LINKPOLICY_OPCODE";
            break;
          case 2062:
            result = "OI_DHCI_READ_DEFAULT_LINKPOLICY_OPCODE";
            break;
          case 2063:
            result = "OI_DHCI_WRITE_DEFAULT_LINKPOLICY_OPCODE";
            break;
          case 2064:
            result = "OI_DHCI_WRITE_FLOW_SPECIFICATION_OPCODE";
            break;
          case 2065:
            result = "OI_DHCI_SNIFF_SUBRATING_OPCODE";
            break;
          default:
            if (a1)
            {
              goto LABEL_318;
            }

            result = "OI_DHCI_NOP_OPCODE";
            break;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 3073:
        result = "OI_DHCI_SET_EVT_MASK_OPCODE";
        break;
      case 3075:
        result = "OI_DHCI_RESET_OPCODE";
        break;
      case 3077:
        result = "OI_DHCI_SET_EVT_FILTER_OPCODE";
        break;
      case 3080:
        result = "OI_DHCI_FLUSH_OPCODE";
        break;
      case 3081:
        result = "OI_DHCI_READ_PIN_TYPE_OPCODE";
        break;
      case 3082:
        result = "OI_DHCI_WRITE_PIN_TYPE_OPCODE";
        break;
      case 3083:
        result = "OI_DHCI_CREATE_NEW_UNIT_KEY_OPCODE";
        break;
      case 3085:
        result = "OI_DHCI_READ_STORED_LINK_KEY_OPCODE";
        break;
      case 3089:
        result = "OI_DHCI_WRITE_STORED_LINK_KEY_OPCODE";
        break;
      case 3090:
        result = "OI_DHCI_DELETE_STORED_LINK_KEY_OPCODE";
        break;
      case 3091:
        result = "OI_DHCI_CHANGE_LOCAL_NAME_OPCODE";
        break;
      case 3092:
        result = "OI_DHCI_READ_LOCAL_NAME_OPCODE";
        break;
      case 3093:
        result = "OI_DHCI_READ_CNCT_ACCEPT_TO_OPCODE";
        break;
      case 3094:
        result = "OI_DHCI_WRITE_CNCT_ACCEPT_TO_OPCODE";
        break;
      case 3095:
        result = "OI_DHCI_READ_PAGE_TIMEOUT_OPCODE";
        break;
      case 3096:
        result = "OI_DHCI_WRITE_PAGE_TIMEOUT_OPCODE";
        break;
      case 3097:
        result = "OI_DHCI_READ_SCAN_ENABLE_OPCODE";
        break;
      case 3098:
        result = "OI_DHCI_WRITE_SCAN_ENABLE_OPCODE";
        break;
      case 3099:
        result = "OI_DHCI_READ_PAGESCAN_ACTIVITY_OPCODE";
        break;
      case 3100:
        result = "OI_DHCI_WRITE_PAGESCAN_ACT_OPCODE";
        break;
      case 3101:
        result = "OI_DHCI_READ_INQUIRYSCAN_ACT_OPCODE";
        break;
      case 3102:
        result = "OI_DHCI_WRITE_INQUIRYSCAN_ACT_OPCODE";
        break;
      case 3103:
        result = "OI_DHCI_READ_AUTHENT_ENABLE_OPCODE";
        break;
      case 3104:
        result = "OI_DHCI_WRITE_AUTHENT_ENABLE_OPCODE";
        break;
      case 3105:
        result = "OI_DHCI_READ_ENCRYPTION_MODE_OPCODE";
        break;
      case 3106:
        result = "OI_DHCI_WRITE_ENCRYPTION_MODE_OPCODE";
        break;
      case 3107:
        result = "OI_DHCI_READ_CLASS_OF_DEVICE_OPCODE";
        break;
      case 3108:
        result = "OI_DHCI_WRITE_CLASS_OF_DEVICE_OPCODE";
        break;
      case 3109:
        result = "OI_DHCI_READ_VOICE_SETTING_OPCODE";
        break;
      case 3110:
        result = "OI_DHCI_WRITE_VOICE_SETTING_OPCODE";
        break;
      case 3111:
        result = "OI_DHCI_READ_AUTO_FLUSH_TO_OPCODE";
        break;
      case 3112:
        result = "OI_DHCI_WRITE_AUTO_FLUSH_TO_OPCODE";
        break;
      case 3113:
        result = "OI_DHCI_READ_NUM_BC_RETRANS_OPCODE";
        break;
      case 3114:
        result = "OI_DHCI_WRITE_NUM_BC_RETRANS_OPCODE";
        break;
      case 3115:
        result = "OI_DHCI_READ_HOLD_MODE_ACT_OPCODE";
        break;
      case 3116:
        result = "OI_DHCI_WRITE_HOLD_MODE_ACT_OPCODE";
        break;
      case 3117:
        result = "OI_DHCI_READ_TX_POWER_LEVEL_OPCODE";
        break;
      case 3118:
        result = "OI_DHCI_READ_SCO_FLOW_CTL_ENA_OPCODE";
        break;
      case 3119:
        result = "OI_DHCI_WRITE_SCO_FLOW_CTL_ENA_OPCODE";
        break;
      case 3121:
        result = "OI_DHCI_SET_CNTR_TO_HOST_FLOW_OPCODE";
        break;
      case 3123:
        result = "OI_DHCI_HOST_BUFFER_SIZE_OPCODE";
        break;
      case 3125:
        result = "OI_DHCI_HOST_NUM_COMPLETED_PKTS_OPCODE";
        break;
      case 3126:
        result = "OI_DHCI_READ_LINK_SVISION_TO_OPCODE";
        break;
      case 3127:
        result = "OI_DHCI_WRITE_LINK_SVISION_TO_OPCODE";
        break;
      case 3128:
        result = "OI_DHCI_READ_NUM_SUPPORTED_IAC_OPCODE";
        break;
      case 3129:
        result = "OI_DHCI_READ_CURRENT_IAC_LAP_OPCODE";
        break;
      case 3130:
        result = "OI_DHCI_WRITE_CURRENT_IAC_LAP_OPCODE";
        break;
      case 3131:
        result = "OI_DHCI_READ_PAGESCAN_PRD_MODE_OPCODE";
        break;
      case 3132:
        result = "OI_DHCI_WRITE_PAGESCAN_PRD_MODE_OPCODE";
        break;
      case 3133:
        result = "OI_DHCI_READ_PAGESCAN_MODE_OPCODE";
        break;
      case 3134:
        result = "OI_DHCI_WRITE_PAGESCAN_MODE_OPCODE";
        break;
      case 3135:
        result = "OI_DHCI_SET_AFH_CHAN_CLASS_OPCODE";
        break;
      case 3138:
        result = "OI_DHCI_READ_INQUIRY_SCAN_TYPE_OPCODE";
        break;
      case 3139:
        result = "OI_DHCI_WRITE_INQUIRY_SCAN_TYPE_OPCODE";
        break;
      case 3140:
        result = "OI_DHCI_READ_INQUIRY_MODE_OPCODE";
        break;
      case 3141:
        result = "OI_DHCI_WRITE_INQUIRY_MODE_OPCODE";
        break;
      case 3142:
        result = "OI_DHCI_READ_PAGESCAN_TYPE_OPCODE";
        break;
      case 3143:
        result = "OI_DHCI_WRITE_PAGESCAN_TYPE_OPCODE";
        break;
      case 3144:
        result = "OI_DHCI_READ_AFH_CHAN_ASSESS_MODE_OPCODE";
        break;
      case 3145:
        result = "OI_DHCI_WRITE_AFH_CHAN_ASSESS_MODE_OPCODE";
        break;
      case 3153:
        result = "OI_DHCI_READ_EXT_INQ_RESP_OPCODE";
        break;
      case 3154:
        result = "OI_DHCI_WRITE_EXT_INQ_RESP_OPCODE";
        break;
      case 3155:
        result = "OI_DHCI_REFRESH_ENCRYPTION_KEY_OPCODE";
        break;
      case 3157:
        result = "OI_DHCI_READ_SIMPLE_PAIRING_MODE_OPCODE";
        break;
      case 3158:
        result = "OI_DHCI_WRITE_SIMPLE_PAIRING_MODE_OPCODE";
        break;
      case 3159:
        result = "OI_DHCI_READ_LOCAL_OOB_DATA_OPCODE";
        break;
      case 3160:
        result = "OI_DHCI_READ_INQ_RESP_TX_PWR_OPCODE";
        break;
      case 3161:
        result = "OI_DHCI_WRITE_INQ_RESP_TX_PWR_OPCODE";
        break;
      case 3162:
        result = "OI_DHCI_READ_DEF_ERR_DATA_REPORT_OPCODE";
        break;
      case 3163:
        result = "OI_DHCI_WRITE_DEF_ERR_DATA_REPORT_OPCODE";
        break;
      case 3167:
        result = "OI_DHCI_ENHANCED_FLUSH_OPCODE";
        break;
      case 3168:
        result = "OI_DHCI_SEND_KEY_PRESS_NOTIFY_OPCODE";
        break;
      case 3169:
        result = "OI_DHCI_CMD_ID_READ_LOGICAL_LINK_ACCEPT_TIMEOUT_OPCODE";
        break;
      case 3170:
        result = "OI_DHCI_CMD_ID_WRITE_LOGICAL_LINK_ACCEPT_TIMEOUT_OPCODE";
        break;
      case 3171:
        result = "OI_DHCI_CMD_ID_SET_EVENT_MASK_PAGE_2_OPCODE";
        break;
      case 3172:
        result = "OI_DHCI_CMD_ID_READ_LOCATION_DATA_OPCODE";
        break;
      case 3173:
        result = "OI_DHCI_CMD_ID_WRITE_LOCATION_DATA_OPCODE";
        break;
      case 3174:
        result = "OI_DHCI_CMD_ID_READ_FLOW_CONTROL_MODE_OPCODE";
        break;
      case 3175:
        result = "OI_DHCI_CMD_ID_WRITE_FLOW_CONTROL_MODE_OPCODE";
        break;
      case 3176:
        result = "OI_DHCI_CMD_ID_READ_ENHANCED_TX_POWER_LEVEL_OPCODE";
        break;
      case 3177:
        result = "OI_DHCI_CMD_ID_READ_BEST_EFFORT_FLUSH_TIMEOUT_OPCODE";
        break;
      case 3178:
        result = "OI_DHCI_CMD_ID_WRITE_BEST_EFFORT_FLUSH_TIMEOUT_OPCODE";
        break;
      case 3179:
        result = "OI_DHCI_CMD_ID_SHORT_RANGE_MODE_OPCODE";
        break;
      case 3180:
        result = "OI_DHCI_CMD_ID_READ_LE_HOST_SUPPORTED_OPCODE";
        break;
      case 3181:
        result = "OI_DHCI_CMD_ID_WRITE_LE_HOST_SUPPORTED_OPCODE";
        break;
      case 3182:
        result = "OI_DHCI_CMD_ID_MWS_SET_CHANNEL_PARAMETERS_OPCODE";
        break;
      case 3183:
        result = "OI_DHCI_CMD_ID_MWS_SET_EXTERNAL_FRAME_CONFIG_OPCODE";
        break;
      case 3184:
        result = "OI_DHCI_CMD_ID_MWS_SIGNALING_OPCODE";
        break;
      case 3185:
        result = "OI_DHCI_CMD_ID_MWS_SET_TRANSPORT_LAYER_OPCODE";
        break;
      case 3186:
        result = "OI_DHCI_CMD_ID_MWS_SET_SCAN_FREQ_TABLE_OPCODE";
        break;
      case 3193:
        result = "OI_DHCI_CMD_ID_READ_SECURE_CONNECTION_HOST_SUPPORT_OPCODE";
        break;
      case 3194:
        result = "OI_DHCI_CMD_ID_WRITE_SECURE_CONNECTION_HOST_SUPPORT_OPCODE";
        break;
      case 3195:
        result = "OI_DHCI_CMD_ID_READ_AUTHENTICATION_PAYLOAD_TIMEOUT_OPCODE";
        break;
      case 3196:
        result = "OI_DHCI_CMD_ID_WRITE_AUTHENTICATION_PAYLOAD_TIMEOUT_OPCODE";
        break;
      case 3204:
        result = "OI_DHCI_CMD_ID_SET_MIN_ENCRYPTION_KEY_SIZE_OPCODE";
        break;
      default:
        goto LABEL_318;
    }
  }

  return result;
}

uint64_t sub_10028B954()
{
  if (DWORD2(xmmword_100BCE240))
  {
    return 140;
  }

  v1 = sub_1003045A0(6u);
  qword_100B60258 = sub_1001BBBD8(0x10uLL, 0x1020040EDED9539uLL);
  *qword_100B60258 = sub_1001BBBD8(504 * *v1, 0x10F00406108D155uLL);
  v2 = sub_1003045A0(6u);
  result = 0;
  *(qword_100B60258 + 8) = *v2;
  DWORD2(xmmword_100BCE240) = 1;
  return result;
}

uint64_t sub_10028BA08()
{
  if (!DWORD2(xmmword_100BCE240))
  {
    return 0;
  }

  v0 = *(qword_100B60258 + 8);
  if (!v0)
  {
    return 0;
  }

  v1 = 0;
  v2 = *qword_100B60258;
  while (*(v2 + 504 * v1 + 12))
  {
    if (v0 <= ++v1)
    {
      return 0;
    }
  }

  ++*(qword_100B60258 + 12);
  return v2 + 504 * v1;
}

void sub_10028BA70(uint64_t a1)
{
  if (!DWORD2(xmmword_100BCE240))
  {
    sub_1000D660C();
  }

  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 12) = 0;
  v2 = qword_100B60258;
  v3 = *(qword_100B60258 + 12) - 1;
  *(qword_100B60258 + 12) = v3;
  if (!v3 && DWORD2(xmmword_100BCE240))
  {
    if (*v2)
    {
      sub_10000C1E8(*v2);
      v2 = qword_100B60258;
      *qword_100B60258 = 0;
    }

    sub_10000C1E8(v2);
    qword_100B60258 = 0;
    DWORD2(xmmword_100BCE240) = 0;
  }
}

uint64_t sub_10028BB34(_OWORD *a1, _WORD *a2)
{
  if (DWORD2(xmmword_100BCE240) || (v11 = sub_10028B954(), !v11))
  {
    if (a1)
    {
      v4 = sub_10028BA08();
      if (*(v4 + 12))
      {
        sub_1000D660C();
      }

      *(v4 + 8) = 0;
      *(v4 + 32) = *a1;
      v5 = a1[1];
      v6 = a1[2];
      v7 = a1[4];
      *(v4 + 80) = a1[3];
      *(v4 + 96) = v7;
      *(v4 + 48) = v5;
      *(v4 + 64) = v6;
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[8];
      *(v4 + 144) = a1[7];
      *(v4 + 160) = v10;
      *(v4 + 112) = v8;
      *(v4 + 128) = v9;
      v21 = unk_100AE9928;
      v11 = sub_100307CB0(&v21, off_100AE9900, 0, a2, &unk_1008A46E0, 0);
      if (v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_OBEXSRV_RegisterL2capServer failed with status %!", v12, v13, v14, v15, v16, v17, v18, v11);
          v19 = sub_10000C050(6u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_10028BA70(v4);
      }

      else
      {
        *(v4 + 12) = 1;
        *(v4 + 22) = *a2;
      }
    }

    else
    {
      sub_1000D660C();
      return 101;
    }
  }

  return v11;
}

uint64_t sub_10028BC78(int a1)
{
  if (!DWORD2(xmmword_100BCE240))
  {
    return 408;
  }

  v1 = *(qword_100B60258 + 8);
  if (!v1)
  {
    return 406;
  }

  v2 = 0;
  while (1)
  {
    v3 = *qword_100B60258 + 504 * v2;
    if (*(v3 + 22) == a1)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 406;
    }
  }

  v4 = sub_100308060(a1);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_DeregisterAVRCPServer: %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(6u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  sub_10028BA70(v3);
  return v4;
}

uint64_t sub_10028BD5C(unsigned int a1)
{
  if (!DWORD2(xmmword_100BCE240))
  {
    return 408;
  }

  v1 = *qword_100B60258;
  if (*(*qword_100B60258 + 30) != a1)
  {
    v2 = 0;
    do
    {
      ++v2;
    }

    while (*(v1 + 504 * v2 + 30) != a1);
    v1 += 504 * v2;
  }

  if (*(v1 + 12) >= 2u)
  {
    return sub_1001C3364(a1);
  }

  else
  {
    return 1709;
  }
}

uint64_t sub_10028BDC8(uint64_t a1, int a2)
{
  if (DWORD2(xmmword_100BCE240) && (v3 = *(qword_100B60258 + 8)) != 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = *qword_100B60258 + 504 * v5;
      if (*(v6 + 30) == a1)
      {
        break;
      }

      if (v3 <= ++v5)
      {
        goto LABEL_6;
      }
    }

    if (a2)
    {
      v17 = 0;
    }

    else
    {
      v17 = 3390;
    }

    v18 = sub_1001C2ABC(a1, a2, v17);
    if (v18)
    {
      v15 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXSRV_AcceptConnect failed %!", v19, v20, v21, v22, v23, v24, v25, v15);
        v26 = sub_10000C050(6u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v15 = 0;
      if (a2)
      {
        *(v6 + 12) = 2;
      }
    }
  }

  else
  {
LABEL_6:
    if (sub_10000C240())
    {
      sub_10000AF54("No server registered on OBEX handle %d", v7, v8, v9, v10, v11, v12, v13, a1);
      v14 = sub_10000C050(6u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1709;
  }

  return v15;
}

uint64_t sub_10028BF0C(int a1, uint64_t a2)
{
  v2 = *qword_100B60258;
  if (*(*qword_100B60258 + 30) != a1)
  {
    v3 = 0;
    do
    {
      ++v3;
    }

    while (*(v2 + 504 * v3 + 30) != a1);
    v2 += 504 * v3;
  }

  v4 = *(v2 + 24);
  *(a2 + 4) = *(v2 + 28);
  *a2 = v4;
  return 0;
}

uint64_t sub_10028BF60(int a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, _OWORD *a5, _OWORD *a6, int a7, int a8)
{
  if (!DWORD2(xmmword_100BCE240))
  {
    return 408;
  }

  v9 = *(qword_100B60258 + 8);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *qword_100B60258 + 504 * v10;
      if (*(v11 + 30) == a1)
      {
        break;
      }

      if (v9 <= ++v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  if (a8 && a8 != 1701)
  {
    *(v11 + 12) = 2;
    v14 = *(v11 + 232);
    if (v14)
    {
      sub_10000C1E8(v14);
      *(v11 + 232) = 0;
    }

    v15 = *(v11 + 30);
    v16 = 0;
    goto LABEL_28;
  }

  if (!*(v11 + 16))
  {
    if (a2)
    {
      *(v11 + 360) = 48;
      *(v11 + 368) = *a2;
      v12 = 1;
      if (!a3)
      {
LABEL_18:
        if (a4)
        {
          v18 = v11 + 24 * v12;
          *(v18 + 360) = -61;
          *(v18 + 368) = *a4;
          ++v12;
        }

        if (a5)
        {
          v19 = v11 + 24 * v12;
          *(v19 + 360) = 76;
          *(v19 + 368) = *a5;
          ++v12;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }
    }

    v17 = v11 + 24 * v12;
    *(v17 + 360) = 113;
    *(v17 + 368) = *a3;
    ++v12;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_22:
  if (a6)
  {
    if (a7)
    {
      v20 = 73;
    }

    else
    {
      v20 = 72;
    }

    v21 = v11 + 24 * v12;
    *(v21 + 360) = v20;
    *(v21 + 368) = *a6;
    LOBYTE(v12) = v12 + 1;
  }

  *(v11 + 480) = v11 + 360;
  *(v11 + 488) = v12;
  v15 = *(v11 + 30);
  v16 = v11 + 480;
LABEL_28:

  return sub_1001C25BC(v15, v16, a8);
}

uint64_t sub_10028C134(uint64_t a1, int a2)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (sub_1001C3310(a1, &v24))
  {
    goto LABEL_2;
  }

  if (v24 != 1)
  {
    if (v24)
    {
      goto LABEL_2;
    }

    v21 = 0;
    sub_100226C0C(a1, &v21);
    if (DWORD2(xmmword_100BCE240))
    {
      v13 = *(qword_100B60258 + 8);
      if (v13)
      {
        v14 = 0;
        do
        {
          v15 = *qword_100B60258 + 504 * v14;
          if (*(v15 + 20) == v21)
          {
            goto LABEL_21;
          }
        }

        while (v13 > ++v14);
      }
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v20 = 0;
  sub_100308098(a1, &v20);
  if (!DWORD2(xmmword_100BCE240))
  {
    goto LABEL_20;
  }

  v16 = *(qword_100B60258 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = 0;
  while (1)
  {
    v15 = *qword_100B60258 + 504 * v17;
    if (*(v15 + 22) == v20)
    {
      break;
    }

    if (v16 <= ++v17)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v15)
  {
    result = sub_1001C32B4(a1, &v22);
    *(v15 + 24) = v22;
    *(v15 + 28) = v23;
    *(v15 + 30) = a1;
    v18 = *(v15 + 8);
    if (a2)
    {
      if (v18 > 2)
      {
        return result;
      }

      v19 = *(v15 + 48);
      if (!v19)
      {
        return sub_1001C2F44(a1, 0, 0, 0, 0);
      }
    }

    else
    {
      if (v18 > 2)
      {
        return result;
      }

      v19 = *(v15 + 32);
    }

    return v19(a1);
  }

LABEL_2:
  if (sub_10000C240())
  {
    sub_10000AF54("Rejecting connection with status %!", v4, v5, v6, v7, v8, v9, v10, 1709);
    v11 = sub_10000C050(6u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return sub_1001C2ABC(a1, 0, 1709);
}

void sub_10028C334(int a1)
{
  v1 = *qword_100B60258;
  if (*(*qword_100B60258 + 30) != a1)
  {
    v2 = 0;
    do
    {
      ++v2;
    }

    while (*(v1 + 504 * v2 + 30) != a1);
    v1 += 504 * v2;
  }

  if (*(v1 + 8) <= 2u)
  {
    (*(v1 + 40))();
  }

  v3 = *(v1 + 232);
  if (v3)
  {
    sub_10000C1E8(v3);
    *(v1 + 232) = 0;
  }

  *(v1 + 240) = 0;
  *(v1 + 12) = 1;
  *(v1 + 30) = 0;
}

uint64_t sub_10028C3E0(int a1, uint64_t a2, uint64_t a3, _UNKNOWN **a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a4;
  if (DWORD2(xmmword_100BCE240) && (v9 = *(qword_100B60258 + 8)) != 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = *qword_100B60258 + 504 * v10;
      if (*(v11 + 30) == a1)
      {
        break;
      }

      if (v9 <= ++v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  v12 = *(v11 + 12);
  if (v12 <= 1)
  {
    sub_1000D660C();
    return 408;
  }

  if (a3 && a3 != 1752 && a3 != 1701)
  {
    v14 = v12 == 2;
    if (a2)
    {
      v16 = a4 == &off_100AE99C8;
      sub_1000D660C();
      goto LABEL_21;
    }

LABEL_31:
    if (a3 == 1701)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    if (a3 != 1701 && !v14)
    {
      *(v11 + 16) = 2;
      if (*(v11 + 240))
      {
        *(v11 + 12) = 3;
        sub_10028C810(v11, a3);
      }

      *(v11 + 12) = 2;
      v27 = *(v11 + 232);
      if (v27)
      {
        sub_10000C1E8(v27);
        *(v11 + 232) = 0;
      }

      return a3;
    }

    return v13;
  }

  v14 = v12 == 2;
  if (!a2)
  {
    goto LABEL_31;
  }

  v16 = a3 != 1701 && a4 == &off_100AE99C8;
LABEL_21:
  sub_1001A5834((v11 + 248), a2);
  if (v12 != 2)
  {
    if (*(v11 + 12) != 3)
    {
      sub_1000D660C();
    }

    v28 = 1;
    goto LABEL_44;
  }

  v17 = *(v11 + 256);
  if (!v17)
  {
    if (!sub_10000C240())
    {
      return 1721;
    }

    sub_10000AF54("Type header missing in request", v30, v31, v32, v33, v34, v35, v36, v62);
    v37 = sub_10000C050(6u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return 1721;
    }

LABEL_50:
    sub_10080F7A0();
    return 1721;
  }

  *(v11 + 240) = 0;
  if (!v5)
  {
LABEL_28:
    if (!sub_10000C240())
    {
      return 1721;
    }

    sub_10000AF54("Unknown request type", v19, v20, v21, v22, v23, v24, v25, v62);
    v26 = sub_10000C050(6u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 1721;
    }

    goto LABEL_50;
  }

  v18 = *v17;
  v5 = v5;
  while (v18 != **v6 || memcmp(v17[1], *(*v6 + 1), v18))
  {
    v6 += 2;
    if (!--v5)
    {
      goto LABEL_28;
    }
  }

  *(v11 + 240) = v6;
  if (*(v6 + 2) == 2)
  {
    if (v16 && !*(v11 + 304))
    {
      v6 = &off_100AE99E8;
    }

    else
    {
      v6 = &off_100AE99D8;
    }

    *(v11 + 240) = v6;
  }

  v39 = *(v6 + 2);
  v40 = *(v11 + 8);
  if (v40 == 2)
  {
    v43 = v39 - 1;
    if (v43 >= 0xC || ((0xF89u >> v43) & 1) == 0)
    {
      goto LABEL_76;
    }

    v44 = &unk_1008A4808;
LABEL_70:
    v42 = &v44[8 * v43];
    goto LABEL_71;
  }

  if (v40 == 1)
  {
    v43 = v39 - 1;
    if (v43 >= 0xE || ((0x2F89u >> v43) & 1) == 0)
    {
      goto LABEL_76;
    }

    v44 = &unk_1008A4798;
    goto LABEL_70;
  }

  if (v40)
  {
    goto LABEL_76;
  }

  v41 = v39 - 1;
  if (v41 >= 0x11 || ((0x1FFFDu >> v41) & 1) == 0)
  {
    goto LABEL_76;
  }

  v42 = &unk_1008A4710 + 8 * v41;
LABEL_71:
  if (!*(v11 + *v42))
  {
LABEL_76:
    if (sub_10000C240())
    {
      sub_10000AF54("Unimplemented command requested", v46, v47, v48, v49, v50, v51, v52, v62);
      v53 = sub_10000C050(6u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1717;
  }

  if ((*(v6 + 6) & ~*(v11 + 248)) == 0)
  {
    if (*(v11 + 232))
    {
      sub_1000D660C();
    }

    v45 = sub_1001BBBD8(0x30uLL, 0x1022040C227F61EuLL);
    v28 = 0;
    *(v11 + 232) = v45;
    *(v11 + 12) = 3;
LABEL_44:
    *(v11 + 16) = v28;
    v13 = sub_10028C810(v11, a3);
    if (v13)
    {
      v29 = *(v11 + 232);
      if (v29)
      {
        sub_10000C1E8(v29);
        *(v11 + 232) = 0;
      }

      *(v11 + 12) = 2;
    }

    return v13;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Incomplete request", v54, v55, v56, v57, v58, v59, v60, v62);
    v61 = sub_10000C050(6u);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 1741;
}

uint64_t sub_10028C810(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 12) != 3)
  {
    sub_1000D660C();
  }

  result = 1743;
  switch(*(*(a1 + 240) + 8))
  {
    case 1:
      if (*(a1 + 8) > 2u)
      {
        return 408;
      }

      v5 = *(a1 + 56);
      if (!v5)
      {
        sub_1000D660C();
        v5 = *(a1 + 56);
      }

      v6 = *(a1 + 30);
      v7 = *(a1 + 232);
      v8 = *(a1 + 16);
      goto LABEL_195;
    case 3:
      v37 = *(a1 + 16);
      if (v37)
      {
        if (v37 == 2)
        {
          goto LABEL_131;
        }

        if (v37 != 1)
        {
          goto LABEL_136;
        }

        v38 = *(a1 + 232);
      }

      else
      {
        v38 = *(a1 + 232);
        *v38 = *(a1 + 264);
      }

      *(v38 + 16) = *(a1 + 304);
      *(v38 + 24) = *(a1 + 312);
LABEL_131:
      v52 = *(a1 + 8);
      if (v52 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_245;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support PUT_IMAGE command.\n", v170, v171, v172, v173, v174, v175, v176, v243);
        v177 = sub_10000C050(6u);
        if (!os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_245;
        }
      }

      else
      {
        if (v52 != 1)
        {
          if (v52)
          {
            goto LABEL_136;
          }

          v51 = *(a1 + 64);
          if (!v51)
          {
            sub_1000D660C();
            v51 = *(a1 + 64);
            goto LABEL_248;
          }

          goto LABEL_249;
        }

        if (!sub_10000C240())
        {
          goto LABEL_245;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support PUT_IMAGE command.\n", v144, v145, v146, v147, v148, v149, v150, v243);
        v151 = sub_10000C050(6u);
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_245;
        }
      }

      goto LABEL_244;
    case 4:
      v8 = *(a1 + 16);
      if ((v8 - 1) < 2)
      {
        goto LABEL_39;
      }

      if (v8)
      {
        return 408;
      }

      **(a1 + 232) = *(a1 + 280);
LABEL_39:
      v28 = *(a1 + 8);
      if (v28 == 2)
      {
        v5 = *(a1 + 104);
        if (v5)
        {
          goto LABEL_194;
        }

        sub_1000D660C();
        v5 = *(a1 + 104);
LABEL_193:
        v8 = *(a1 + 16);
LABEL_194:
        v6 = *(a1 + 30);
        v7 = *(a1 + 232);
LABEL_195:
        LODWORD(result) = v5(v6, v7, v8, a2);
        goto LABEL_253;
      }

      if (v28 != 1)
      {
        if (v28)
        {
          return 408;
        }

        v5 = *(a1 + 136);
        if (v5)
        {
          goto LABEL_194;
        }

        sub_1000D660C();
        v5 = *(a1 + 136);
        goto LABEL_193;
      }

      if (!sub_10000C240())
      {
        return 1743;
      }

      sub_10000AF54("REFERENCED_OBJECTS server type does not support DELETE_IMAGE command.\n", v104, v105, v106, v107, v108, v109, v110, v243);
      v111 = sub_10000C050(6u);
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        return 1743;
      }

LABEL_180:
      sub_10080F7A0();
      return 1743;
    case 5:
      v12 = *(a1 + 16);
      if (v12)
      {
        if (v12 == 2)
        {
          goto LABEL_145;
        }

        if (v12 != 1)
        {
          goto LABEL_150;
        }

        v47 = *(a1 + 232);
      }

      else
      {
        v47 = *(a1 + 232);
        *v47 = vextq_s8(*(a1 + 272), *(a1 + 272), 8uLL);
      }

      v47[1].i64[0] = *(a1 + 304);
      v47[1].i8[8] = *(a1 + 312);
LABEL_145:
      v69 = *(a1 + 8);
      if (v69 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support PUT_LINKED_ATTACHEMENT command.\n", v218, v219, v220, v221, v222, v223, v224, v243);
        v225 = sub_10000C050(6u);
        if (!os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }
      }

      else
      {
        if (v69 != 1)
        {
          if (v69)
          {
            goto LABEL_150;
          }

          v16 = *(a1 + 72);
          if (!v16)
          {
            sub_1000D660C();
            v16 = *(a1 + 72);
            goto LABEL_172;
          }

          goto LABEL_173;
        }

        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support PUT_LINKED_ATTACHEMENT command.\n", v186, v187, v188, v189, v190, v191, v192, v243);
        v193 = sub_10000C050(6u);
        if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }
      }

      goto LABEL_234;
    case 6:
      v29 = *(a1 + 16);
      if (v29)
      {
        if (v29 == 2)
        {
          goto LABEL_153;
        }

        if (v29 != 1)
        {
          goto LABEL_158;
        }

        v48 = *(a1 + 232);
      }

      else
      {
        v48 = *(a1 + 232);
        *v48 = *(a1 + 280);
      }

      *(v48 + 8) = *(a1 + 304);
      *(v48 + 16) = *(a1 + 312);
LABEL_153:
      v70 = *(a1 + 8);
      if (v70 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_240;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support PUT_LINKED_THUMBNAIL command.\n", v226, v227, v228, v229, v230, v231, v232, v243);
        v233 = sub_10000C050(6u);
        if (!os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_240;
        }
      }

      else
      {
        if (v70 != 1)
        {
          if (v70)
          {
            goto LABEL_158;
          }

          v43 = *(a1 + 80);
          if (!v43)
          {
            sub_1000D660C();
            v43 = *(a1 + 80);
            goto LABEL_218;
          }

          goto LABEL_219;
        }

        if (!sub_10000C240())
        {
          goto LABEL_240;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support PUT_LINKED_THUMBNAIL command.\n", v194, v195, v196, v197, v198, v199, v200, v243);
        v201 = sub_10000C050(6u);
        if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_240;
        }
      }

      goto LABEL_239;
    case 7:
      v29 = *(a1 + 16);
      if ((v29 - 1) < 2)
      {
        goto LABEL_47;
      }

      if (v29)
      {
        goto LABEL_158;
      }

      v30 = *(a1 + 232);
      *v30 = *(a1 + 280);
      *(v30 + 8) = *(a1 + 333);
LABEL_47:
      v31 = *(a1 + 8);
      if (v31 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_240;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support REMOTE_DISPLAY command.\n", v136, v137, v138, v139, v140, v141, v142, v243);
        v143 = sub_10000C050(6u);
        if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_240;
        }
      }

      else
      {
        if (v31 != 1)
        {
          if (v31)
          {
            goto LABEL_158;
          }

LABEL_127:
          v43 = *(a1 + 88);
          if (!v43)
          {
            sub_1000D660C();
            v43 = *(a1 + 88);
            goto LABEL_218;
          }

          goto LABEL_219;
        }

        if (!sub_10000C240())
        {
          goto LABEL_240;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support REMOTE_DISPLAY command.\n", v112, v113, v114, v115, v116, v117, v118, v243);
        v119 = sub_10000C050(6u);
        if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_240;
        }
      }

      goto LABEL_239;
    case 8:
      v17 = *(a1 + 16);
      if ((v17 - 1) < 2)
      {
        goto LABEL_69;
      }

      if (v17)
      {
        goto LABEL_121;
      }

      v39 = *(a1 + 232);
      *v39 = *(a1 + 314);
      *(v39 + 4) = *(a1 + 318);
      *(v39 + 8) = *(a1 + 272);
LABEL_69:
      v40 = *(a1 + 8);
      if (v40 == 2)
      {
        goto LABEL_123;
      }

      if (v40 != 1)
      {
        if (v40)
        {
          goto LABEL_121;
        }

        v41 = *(a1 + 96);
        if (!v41)
        {
          sub_1000D660C();
          v41 = *(a1 + 96);
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      if (!sub_10000C240())
      {
        goto LABEL_205;
      }

      sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_IMAGES_LIST command.\n", v152, v153, v154, v155, v156, v157, v158, v243);
      v159 = sub_10000C050(6u);
      if (!os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_205;
      }

      goto LABEL_204;
    case 9:
      v29 = *(a1 + 16);
      if ((v29 - 1) < 2)
      {
        goto LABEL_77;
      }

      if (v29)
      {
        goto LABEL_158;
      }

      **(a1 + 232) = *(a1 + 280);
LABEL_77:
      v42 = *(a1 + 8);
      if (v42 == 2)
      {
        v43 = *(a1 + 72);
        if (v43)
        {
          goto LABEL_219;
        }

        sub_1000D660C();
        v43 = *(a1 + 72);
        goto LABEL_218;
      }

      if (v42 != 1)
      {
        if (v42)
        {
          goto LABEL_158;
        }

        v43 = *(a1 + 104);
        if (!v43)
        {
          sub_1000D660C();
          v43 = *(a1 + 104);
          goto LABEL_218;
        }

        goto LABEL_219;
      }

      if (!sub_10000C240())
      {
        goto LABEL_240;
      }

      sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_IMAGE_PROPERTIES command.\n", v162, v163, v164, v165, v166, v167, v168, v243);
      v169 = sub_10000C050(6u);
      if (!os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_240;
      }

      goto LABEL_239;
    case 0xA:
      v37 = *(a1 + 16);
      if ((v37 - 1) < 2)
      {
        goto LABEL_115;
      }

      if (v37)
      {
        goto LABEL_136;
      }

      **(a1 + 232) = vextq_s8(*(a1 + 272), *(a1 + 272), 8uLL);
LABEL_115:
      v50 = *(a1 + 8);
      if (v50 == 2)
      {
        v51 = *(a1 + 80);
        if (v51)
        {
LABEL_249:
          LODWORD(result) = v51(*(a1 + 30), *(a1 + 232), v37, a2);
          goto LABEL_250;
        }

        sub_1000D660C();
        v51 = *(a1 + 80);
LABEL_248:
        v37 = *(a1 + 16);
        goto LABEL_249;
      }

      if (v50 != 1)
      {
        if (v50)
        {
LABEL_136:
          LODWORD(result) = 408;
          goto LABEL_250;
        }

        v51 = *(a1 + 112);
        if (v51)
        {
          goto LABEL_249;
        }

        sub_1000D660C();
        v51 = *(a1 + 112);
        goto LABEL_248;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_IMAGE command.\n", v235, v236, v237, v238, v239, v240, v241, v243);
        v242 = sub_10000C050(6u);
        if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
        {
LABEL_244:
          sub_10080F7A0();
        }
      }

LABEL_245:
      LODWORD(result) = 1743;
LABEL_250:
      v160 = *(a1 + 232);
      *(v160 + 32) = 0;
      goto LABEL_251;
    case 0xB:
      v29 = *(a1 + 16);
      if ((v29 - 1) < 2)
      {
        goto LABEL_107;
      }

      if (v29)
      {
        goto LABEL_158;
      }

      **(a1 + 232) = *(a1 + 280);
LABEL_107:
      v49 = *(a1 + 8);
      if (v49 == 2)
      {
        goto LABEL_127;
      }

      if (v49 == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_LINKED_THUMBNAIL command.\n", v210, v211, v212, v213, v214, v215, v216, v243);
          v217 = sub_10000C050(6u);
          if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
          {
LABEL_239:
            sub_10080F7A0();
          }
        }

LABEL_240:
        LODWORD(result) = 1743;
      }

      else if (v49)
      {
LABEL_158:
        LODWORD(result) = 408;
      }

      else
      {
        v43 = *(a1 + 120);
        if (!v43)
        {
          sub_1000D660C();
          v43 = *(a1 + 120);
LABEL_218:
          v29 = *(a1 + 16);
        }

LABEL_219:
        LODWORD(result) = v43(*(a1 + 30), *(a1 + 232), v29, a2);
      }

      v234 = *(a1 + 232);
      *v234 = 0;
      v234[1] = 0;
      v234[2] = 0;
      goto LABEL_253;
    case 0xC:
      v12 = *(a1 + 16);
      if ((v12 - 1) < 2)
      {
        goto LABEL_22;
      }

      if (v12)
      {
        goto LABEL_150;
      }

      v13 = *(a1 + 232);
      v14 = *(a1 + 264);
      *v13 = *(a1 + 280);
      v13[1] = v14;
LABEL_22:
      v15 = *(a1 + 8);
      if (v15 == 2)
      {
        v16 = *(a1 + 96);
        if (v16)
        {
          goto LABEL_173;
        }

        sub_1000D660C();
        v16 = *(a1 + 96);
        goto LABEL_172;
      }

      if (v15 != 1)
      {
        if (v15)
        {
          goto LABEL_150;
        }

        v16 = *(a1 + 128);
        if (!v16)
        {
          sub_1000D660C();
          v16 = *(a1 + 128);
          goto LABEL_172;
        }

        goto LABEL_173;
      }

      if (!sub_10000C240())
      {
        goto LABEL_235;
      }

      sub_10000AF54("REFERENCED_OBJECTS server type does not support LINKED_ATTACHMENT command.\n", v88, v89, v90, v91, v92, v93, v94, v243);
      v95 = sub_10000C050(6u);
      if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_235;
      }

      goto LABEL_234;
    case 0xD:
      v32 = *(a1 + 16);
      if (v32 == 2)
      {
        goto LABEL_56;
      }

      if (v32 == 1)
      {
        goto LABEL_55;
      }

      if (v32)
      {
        goto LABEL_150;
      }

      **(a1 + 232) = *(a1 + 336);
LABEL_55:
      v33 = *(a1 + 232);
      *(v33 + 16) = *(a1 + 304);
      *(v33 + 24) = *(a1 + 312);
LABEL_56:
      v34 = *(a1 + 8);
      if (v34 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support START_PRINT command.\n", v128, v129, v130, v131, v132, v133, v134, v243);
        v135 = sub_10000C050(6u);
        if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }
      }

      else
      {
        if (v34 != 1)
        {
          if (v34)
          {
            goto LABEL_150;
          }

          v16 = *(a1 + 144);
          if (!v16)
          {
            sub_1000D660C();
            v16 = *(a1 + 144);
          }

          v35 = *(a1 + 30);
          v36 = *(a1 + 232);
          v12 = *(a1 + 16);
          goto LABEL_174;
        }

        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support START_PRINT command.\n", v96, v97, v98, v99, v100, v101, v102, v243);
        v103 = sub_10000C050(6u);
        if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }
      }

      goto LABEL_234;
    case 0xE:
      v17 = *(a1 + 16);
      if ((v17 - 1) < 2)
      {
        goto LABEL_30;
      }

      if (v17)
      {
        goto LABEL_121;
      }

      v18 = *(a1 + 232);
      *v18 = *(a1 + 264);
      v18[1] = *(a1 + 320);
LABEL_30:
      v19 = *(a1 + 8);
      if (v19 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_205;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support GET_PARTIAL_IMAGE command.\n", v120, v121, v122, v123, v124, v125, v126, v243);
        v127 = sub_10000C050(6u);
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      if (v19 != 1)
      {
        if (v19)
        {
LABEL_121:
          LODWORD(result) = 408;
          goto LABEL_206;
        }

        if (!sub_10000C240())
        {
          goto LABEL_205;
        }

        sub_10000AF54("IMAGE_REPONDER server type does not support GET_PARTIAL_IMAGE command.\n", v20, v21, v22, v23, v24, v25, v26, v243);
        v27 = sub_10000C050(6u);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_205;
        }

LABEL_204:
        sub_10080F7A0();
LABEL_205:
        LODWORD(result) = 1743;
        goto LABEL_206;
      }

LABEL_123:
      v41 = *(a1 + 64);
      if (!v41)
      {
        sub_1000D660C();
        v41 = *(a1 + 64);
LABEL_125:
        v17 = *(a1 + 16);
      }

LABEL_126:
      LODWORD(result) = v41(*(a1 + 30), *(a1 + 232), v17, a2);
LABEL_206:
      v160 = *(a1 + 232);
      v161 = 0uLL;
      *(v160 + 32) = 0u;
      goto LABEL_252;
    case 0xF:
      v9 = *(a1 + 16);
      if ((v9 - 1) < 2)
      {
        goto LABEL_13;
      }

      if (v9)
      {
        goto LABEL_122;
      }

      **(a1 + 232) = *(a1 + 336);
LABEL_13:
      v10 = *(a1 + 8);
      if (v10 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_165;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support START_ARCHIVE command.\n", v79, v80, v81, v82, v83, v84, v85, v243);
        v86 = sub_10000C050(6u);
        if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v10 != 1)
        {
          if (v10)
          {
LABEL_122:
            LODWORD(result) = 408;
          }

          else
          {
            v11 = *(a1 + 152);
            if (!v11)
            {
              sub_1000D660C();
              v11 = *(a1 + 152);
            }

            LODWORD(result) = v11(*(a1 + 30), *(a1 + 232), *(a1 + 16), a2);
          }

LABEL_166:
          v87 = *(a1 + 232);
          *v87 = 0;
          v87[1] = 0;
          goto LABEL_253;
        }

        if (!sub_10000C240() || (sub_10000AF54("REFERENCED_OBJECTS server type does not support START_ARCHIVE command.\n", v71, v72, v73, v74, v75, v76, v77, v243), v78 = sub_10000C050(6u), !os_log_type_enabled(v78, OS_LOG_TYPE_ERROR)))
        {
LABEL_165:
          LODWORD(result) = 1743;
          goto LABEL_166;
        }
      }

      sub_10080F7A0();
      goto LABEL_165;
    case 0x10:
      v12 = *(a1 + 16);
      if ((v12 - 1) < 2)
      {
        goto LABEL_85;
      }

      if (v12)
      {
        goto LABEL_150;
      }

      **(a1 + 232) = *(a1 + 352) != 0;
LABEL_85:
      v44 = *(a1 + 8);
      if (v44 == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support GET_MONITORING_IMAGE command.\n", v202, v203, v204, v205, v206, v207, v208, v243);
        v209 = sub_10000C050(6u);
        if (!os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }

LABEL_234:
        sub_10080F7A0();
LABEL_235:
        LODWORD(result) = 1743;
        goto LABEL_236;
      }

      if (v44 == 1)
      {
        if (!sub_10000C240())
        {
          goto LABEL_235;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_MONITORING_IMAGE command.\n", v178, v179, v180, v181, v182, v183, v184, v243);
        v185 = sub_10000C050(6u);
        if (!os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_235;
        }

        goto LABEL_234;
      }

      if (v44)
      {
LABEL_150:
        LODWORD(result) = 408;
      }

      else
      {
        v16 = *(a1 + 168);
        if (!v16)
        {
          sub_1000D660C();
          v16 = *(a1 + 168);
LABEL_172:
          v12 = *(a1 + 16);
        }

LABEL_173:
        v35 = *(a1 + 30);
        v36 = *(a1 + 232);
LABEL_174:
        LODWORD(result) = v16(v35, v36, v12, a2);
      }

LABEL_236:
      v160 = *(a1 + 232);
LABEL_251:
      v161 = 0uLL;
LABEL_252:
      *v160 = v161;
      *(v160 + 16) = v161;
LABEL_253:
      if (result == 1701)
      {
        return 0;
      }

      else
      {
        return result;
      }

    case 0x11:
      v45 = *(a1 + 8);
      if (v45 == 2)
      {
        if (!sub_10000C240())
        {
          return 1743;
        }

        sub_10000AF54("ARCHIVED_OBJECTS server type does not support GET_STATUS command.\n", v61, v62, v63, v64, v65, v66, v67, v243);
        v68 = sub_10000C050(6u);
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          return 1743;
        }
      }

      else
      {
        if (v45 != 1)
        {
          if (v45)
          {
            return 408;
          }

          v46 = *(a1 + 160);
          if (!v46)
          {
            sub_1000D660C();
            v46 = *(a1 + 160);
          }

          LODWORD(result) = v46(*(a1 + 30), a2);
          goto LABEL_253;
        }

        if (!sub_10000C240())
        {
          return 1743;
        }

        sub_10000AF54("REFERENCED_OBJECTS server type does not support GET_STATUS command.\n", v53, v54, v55, v56, v57, v58, v59, v243);
        v60 = sub_10000C050(6u);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          return 1743;
        }
      }

      goto LABEL_180;
    default:
      return result;
  }
}

uint64_t sub_10028D540()
{
  word_100B60268 = *(sub_1003045A0(0x2Fu) + 2);
  v0 = word_100B60268;
  if (word_100B60268 >= 0x101u)
  {
    sub_1000D660C();
    v0 = word_100B60268;
  }

  qword_100B60260 = sub_1001BBBD8(144 * v0, 0x10F0040D5BBB60FuLL);
  if (!qword_100B60260)
  {
    return 106;
  }

  result = 0;
  word_100B6026A = 1;
  return result;
}

uint64_t sub_10028D5C0(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  if (sub_1000ABC7C(a1, &v14))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CID %d", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 403;
  }

  else
  {
    v13 = v14;
    if (*(v14 + 136))
    {
      sub_1000D660C();
    }

    result = 0;
    *(v13 + 136) = a2;
  }

  return result;
}