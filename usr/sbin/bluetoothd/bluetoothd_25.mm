uint64_t sub_1001E20F4(__int16 a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              WORD2(v12) += 2;
              return sub_100020078(65014, v11, BYTE4(v12), a2, sub_1001EFC64, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5063, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5062, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E2264(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65157, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5408, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5407, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E23DC(char a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                return sub_100020078(65476, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5221, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5220, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E2538(__int16 a1, __int16 a2, char a3, char a4, uint64_t (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v23) - WORD2(v23) > 1)
    {
      if (BYTE6(v23) == 2)
      {
        *(v22 + WORD2(v23)) = a1;
        v14 = WORD2(v23) + 2;
        WORD2(v23) += 2;
        if (HIBYTE(v23))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v23) - v14 > 1)
        {
          if (BYTE6(v23) == 2)
          {
            *(v22 + v14) = a2;
            *(v22 + WORD2(v23) + 1) = HIBYTE(a2);
            v15 = WORD2(v23);
            v16 = WORD2(v23) + 2;
            WORD2(v23) += 2;
            if (HIBYTE(v23))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v23) > v16)
            {
              if (BYTE6(v23) == 2)
              {
                WORD2(v23) = v15 + 3;
                *(v22 + v16) = a3;
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                      return sub_100020078(65478, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5252, v21);
                  }
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_31;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5251, v20);
            }

            v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5250, v19);
        }

        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5249, v18);
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E27CC(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          return sub_100020078(65480, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5235, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E28A4(char a1, char a2, uint64_t (*a3)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v10 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v10) = 4;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v20) - WORD2(v20) > 2)
          {
            if (BYTE6(v20) == 2)
            {
              v11 = v19 + WORD2(v20);
              *(v11 + 2) = 0;
              *v11 = 0;
              v12 = WORD2(v20);
              v13 = WORD2(v20) + 3;
              WORD2(v20) += 3;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v20) > v13)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v12 + 4;
                  *(v19 + v13) = a1;
                  if (HIBYTE(v20))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    v14 = WORD2(v20);
                    if (WORD1(v20) > WORD2(v20))
                    {
                      if (BYTE6(v20) == 2)
                      {
                        ++WORD2(v20);
                        *(v19 + v14) = a2;
                        return sub_100020078(65145, v19, BYTE4(v20), a3, sub_1001C62CC, v7, v8, v9);
                      }

                      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2927, v18);
                    }
                  }

                  v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2926, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2925, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2924, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E2B04(char *a1, uint64_t (*a2)())
{
  v37 = 0;
  v38 = 0;
  result = sub_10001FFD8(&v37);
  if (!result)
  {
    if (HIBYTE(v38))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                            return sub_100020078(65145, v37, BYTE4(v38), a2, sub_1001C62CC, v5, v6, v7);
                                                          }

                                                          v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2951, v36);
                                                        }
                                                      }

                                                      v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_73;
                                                    }

                                                    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2950, v35);
                                                  }
                                                }

                                                v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_69;
                                              }

                                              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2949, v34);
                                            }
                                          }

                                          v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_65;
                                        }

                                        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2948, v33);
                                      }
                                    }

                                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_61;
                                  }

                                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2947, v32);
                                }
                              }

                              v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_57;
                            }

                            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2946, v31);
                          }
                        }

                        v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_53;
                      }

                      v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2945, v30);
                    }
                  }

                  v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_49;
                }

                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2944, v29);
              }

              v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_45;
            }

            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2943, v28);
          }

          v28 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_41;
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2942, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1001E3048(char a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 16;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 16;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                      return sub_100020078(65317, v14, BYTE4(v15), a2, sub_1001C62CC, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5114, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5113, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5112, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E3218(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          return sub_100020078(65159, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5419, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E32F0(char a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, __int16 a11, char a12, uint64_t (*a13)())
{
  v45 = 0;
  v46 = 0;
  result = sub_10001FFD8(&v45);
  if (!result)
  {
    if (HIBYTE(v46))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v25 = WORD2(v46);
      if (WORD1(v46) > WORD2(v46))
      {
        if (BYTE6(v46) == 2)
        {
          ++WORD2(v46);
          *(v45 + v25) = a1;
          if (HIBYTE(v46))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v26 = WORD2(v46);
            if (WORD1(v46) > WORD2(v46))
            {
              if (BYTE6(v46) == 2)
              {
                ++WORD2(v46);
                *(v45 + v26) = a2;
                if (HIBYTE(v46))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v46) - WORD2(v46) > 3)
                {
                  if (BYTE6(v46) == 2)
                  {
                    *(v45 + WORD2(v46)) = a3;
                    *(v45 + WORD2(v46) + 2) = BYTE2(a3);
                    *(v45 + WORD2(v46) + 3) = HIBYTE(a3);
                    v27 = WORD2(v46) + 4;
                    WORD2(v46) += 4;
                    if (HIBYTE(v46))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    }

                    else if (WORD1(v46) - v27 > 3)
                    {
                      if (BYTE6(v46) == 2)
                      {
                        *(v45 + v27) = a4;
                        *(v45 + WORD2(v46) + 1) = BYTE1(a4);
                        *(v45 + WORD2(v46) + 2) = BYTE2(a4);
                        *(v45 + WORD2(v46) + 3) = HIBYTE(a4);
                        v28 = WORD2(v46) + 4;
                        WORD2(v46) += 4;
                        if (HIBYTE(v46))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else if (WORD1(v46) - v28 > 3)
                        {
                          if (BYTE6(v46) == 2)
                          {
                            *(v45 + v28) = a5;
                            *(v45 + WORD2(v46) + 1) = BYTE1(a5);
                            *(v45 + WORD2(v46) + 2) = BYTE2(a5);
                            *(v45 + WORD2(v46) + 3) = HIBYTE(a5);
                            v29 = WORD2(v46) + 4;
                            WORD2(v46) += 4;
                            if (HIBYTE(v46))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else if (WORD1(v46) - v29 > 3)
                            {
                              if (BYTE6(v46) == 2)
                              {
                                *(v45 + v29) = a6;
                                *(v45 + WORD2(v46) + 1) = BYTE1(a6);
                                *(v45 + WORD2(v46) + 2) = BYTE2(a6);
                                *(v45 + WORD2(v46) + 3) = HIBYTE(a6);
                                v30 = WORD2(v46) + 4;
                                WORD2(v46) += 4;
                                if (HIBYTE(v46))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                }

                                else if (WORD1(v46) - v30 > 3)
                                {
                                  if (BYTE6(v46) == 2)
                                  {
                                    *(v45 + v30) = a7;
                                    *(v45 + WORD2(v46) + 1) = BYTE1(a7);
                                    *(v45 + WORD2(v46) + 2) = BYTE2(a7);
                                    *(v45 + WORD2(v46) + 3) = HIBYTE(a7);
                                    v31 = WORD2(v46) + 4;
                                    WORD2(v46) += 4;
                                    if (HIBYTE(v46))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else if (WORD1(v46) - v31 > 3)
                                    {
                                      if (BYTE6(v46) == 2)
                                      {
                                        *(v45 + v31) = a8;
                                        *(v45 + WORD2(v46) + 1) = BYTE1(a8);
                                        *(v45 + WORD2(v46) + 2) = BYTE2(a8);
                                        *(v45 + WORD2(v46) + 3) = HIBYTE(a8);
                                        v32 = WORD2(v46) + 4;
                                        WORD2(v46) += 4;
                                        if (HIBYTE(v46))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                        }

                                        else if (WORD1(v46) - v32 > 3)
                                        {
                                          if (BYTE6(v46) == 2)
                                          {
                                            *(v45 + v32) = a9;
                                            *(v45 + WORD2(v46) + 1) = a10;
                                            *(v45 + WORD2(v46) + 2) = a11;
                                            v33 = WORD2(v46);
                                            v34 = WORD2(v46) + 4;
                                            WORD2(v46) += 4;
                                            if (HIBYTE(v46))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                            }

                                            else if (WORD1(v46) > v34)
                                            {
                                              if (BYTE6(v46) == 2)
                                              {
                                                WORD2(v46) = v33 + 5;
                                                *(v45 + v34) = a12;
                                                return sub_100020078(65049, v45, BYTE4(v46), a13, sub_1001C62CC, v22, v23, v24);
                                              }

                                              v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5302, v44);
                                            }

                                            v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                            goto LABEL_73;
                                          }

                                          v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5301, v43);
                                        }

                                        v43 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                        goto LABEL_69;
                                      }

                                      v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5300, v42);
                                    }

                                    v42 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                    goto LABEL_65;
                                  }

                                  v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5299, v41);
                                }

                                v41 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_61;
                              }

                              v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5298, v40);
                            }

                            v40 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_57;
                          }

                          v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5297, v39);
                        }

                        v39 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                        goto LABEL_53;
                      }

                      v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5296, v38);
                    }

                    v38 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                    goto LABEL_49;
                  }

                  v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5295, v37);
                }

                v37 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_45;
              }

              v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5294, v36);
            }
          }

          v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_41;
        }

        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5293, v35);
      }
    }

    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1001E3A14(char a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                return sub_100020078(65050, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5317, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5316, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E3B70(int a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 3)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        *(v9 + WORD2(v10) + 2) = BYTE2(a1);
        *(v9 + WORD2(v10) + 3) = HIBYTE(a1);
        WORD2(v10) += 4;
        return sub_100020078(64931, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4456, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E3C8C(char a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = 0;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v9 = WORD2(v15);
            if (WORD1(v15) > WORD2(v15))
            {
              if (BYTE6(v15) == 2)
              {
                ++WORD2(v15);
                *(v14 + v9) = 1;
                if (HIBYTE(v15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                      return sub_100020078(65520, v14, BYTE4(v15), a2, sub_1001C62CC, v5, v6, v7);
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4477, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4476, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4473, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E3E58(char a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 3)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = 0;
              *(v13 + WORD2(v14) + 1) = 0;
              *(v13 + WORD2(v14) + 3) = 0;
              v9 = WORD2(v14) + 4;
              WORD2(v14) += 4;
              if (HIBYTE(v14))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v14) - v9 > 3)
              {
                if (BYTE6(v14) == 2)
                {
                  *(v13 + v9) = 0;
                  *(v13 + WORD2(v14) + 1) = 0;
                  *(v13 + WORD2(v14) + 3) = 0;
                  WORD2(v14) += 4;
                  return sub_100020078(65428, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
                }

                v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4492, v12);
              }

              v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_24;
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4491, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4490, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E4090(char a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 3)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = 0;
              *(v13 + WORD2(v14) + 1) = 0;
              *(v13 + WORD2(v14) + 3) = 0;
              v9 = WORD2(v14) + 4;
              WORD2(v14) += 4;
              if (HIBYTE(v14))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v14) - v9 > 3)
              {
                if (BYTE6(v14) == 2)
                {
                  *(v13 + v9) = 0;
                  *(v13 + WORD2(v14) + 1) = 0;
                  *(v13 + WORD2(v14) + 3) = 0;
                  WORD2(v14) += 4;
                  return sub_100020078(65429, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
                }

                v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4507, v12);
              }

              v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_24;
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4506, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4505, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E42C8(_OWORD *a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v15) - WORD2(v15) > 0x1F)
    {
      if (BYTE6(v15) == 2)
      {
        v8 = (v14 + WORD2(v15));
        v9 = a1[1];
        *v8 = *a1;
        v8[1] = v9;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 32;
        WORD2(v15) += 32;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 33;
            *(v14 + v11) = -1;
            return sub_100020078(64890, v14, BYTE4(v15), a2, sub_1001C62CC, v5, v6, v7);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4521, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4520, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= (sizeof(VSCTraceMask))";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E442C(_OWORD *a1, uint64_t (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v16) - WORD2(v16) > 0x1F)
    {
      if (BYTE6(v16) == 2)
      {
        v8 = (v15 + WORD2(v16));
        v9 = a1[1];
        *v8 = *a1;
        v8[1] = v9;
        v10 = WORD2(v16) + 32;
        WORD2(v16) += 32;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = 0;
            *(v15 + WORD2(v16) + 1) = 0;
            *(v15 + WORD2(v16) + 3) = 0;
            v11 = WORD2(v16) + 4;
            WORD2(v16) += 4;
            if (HIBYTE(v16))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v16) - v11 > 3)
            {
              if (BYTE6(v16) == 2)
              {
                *(v15 + v11) = 0;
                *(v15 + WORD2(v16) + 1) = 0;
                *(v15 + WORD2(v16) + 3) = 0;
                WORD2(v16) += 4;
                return sub_100020078(65430, v15, BYTE4(v16), a2, sub_1001C62CC, v5, v6, v7);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4536, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4535, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4534, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= (sizeof(VSCTraceMask))";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E4674(int a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 3)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        *(v13 + WORD2(v14) + 2) = BYTE2(a1);
        *(v13 + WORD2(v14) + 3) = HIBYTE(a1);
        v8 = WORD2(v14) + 4;
        WORD2(v14) += 4;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v14) - v8 > 3)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v8) = 0;
            *(v13 + WORD2(v14) + 1) = 0;
            *(v13 + WORD2(v14) + 3) = 0;
            v9 = WORD2(v14) + 4;
            WORD2(v14) += 4;
            if (HIBYTE(v14))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v14) - v9 > 3)
            {
              if (BYTE6(v14) == 2)
              {
                *(v13 + v9) = 0;
                *(v13 + WORD2(v14) + 1) = 0;
                *(v13 + WORD2(v14) + 3) = 0;
                WORD2(v14) += 4;
                return sub_100020078(65431, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4551, v12);
            }

            v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4550, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4549, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E48F0(int a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 3)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        *(v9 + WORD2(v10) + 2) = BYTE2(a1);
        *(v9 + WORD2(v10) + 3) = HIBYTE(a1);
        WORD2(v10) += 4;
        return sub_100020078(65522, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4682, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E4A0C(char a1, void (*a2)(void))
{
  a2(0);
  byte_100B5CD20 = a1;
  return 0;
}

uint64_t sub_1001E4A58(char a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v8 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v8) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 3)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = -1;
              *(v13 + WORD2(v14) + 1) = -1;
              *(v13 + WORD2(v14) + 2) = -1;
              *(v13 + WORD2(v14) + 3) = -1;
              v9 = WORD2(v14) + 4;
              WORD2(v14) += 4;
              if (HIBYTE(v14))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v14) - v9 > 3)
              {
                if (BYTE6(v14) == 2)
                {
                  *(v13 + v9) = -1;
                  *(v13 + WORD2(v14) + 1) = -1;
                  *(v13 + WORD2(v14) + 2) = -1;
                  *(v13 + WORD2(v14) + 3) = -1;
                  WORD2(v14) += 4;
                  return sub_100020078(64898, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
                }

                v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1692, v12);
              }

              v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_24;
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1691, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1690, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E4C94(_WORD *a1, char a2, char a3, __int16 a4, __int16 a5, uint64_t (*a6)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v26) > v17)
        {
          if (BYTE6(v26) == 2)
          {
            WORD2(v26) = v16 + 3;
            *(v25 + v17) = a2;
            if (HIBYTE(v26))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else if (WORD1(v26) - v19 > 1)
                      {
                        if (BYTE6(v26) == 2)
                        {
                          *(v25 + v19) = a5;
                          *(v25 + WORD2(v26) + 1) = HIBYTE(a5);
                          WORD2(v26) += 2;
                          return sub_100020078(65129, v25, BYTE4(v26), a6, sub_1001C62CC, v13, v14, v15);
                        }

                        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5847, v24);
                      }

                      v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_38;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5846, v23);
                  }

                  v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_34;
                }

                v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5845, v22);
              }
            }

            v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5844, v21);
        }

        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5843, v20);
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001E4FC4(_WORD *a1, char a2, uint64_t (*a3)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v17) - WORD2(v17) > 1)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = *a1;
        v10 = WORD2(v17);
        v11 = WORD2(v17) + 2;
        WORD2(v17) += 2;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v17) > v11)
        {
          if (BYTE6(v17) == 2)
          {
            WORD2(v17) = v10 + 3;
            *(v16 + v11) = a2;
            if (HIBYTE(v17))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else
            {
              v12 = WORD2(v17);
              if (WORD1(v17) > WORD2(v17))
              {
                if (BYTE6(v17) == 2)
                {
                  ++WORD2(v17);
                  *(v16 + v12) = 3;
                  return sub_100020078(65173, v16, BYTE4(v17), a3, sub_1001C62CC, v7, v8, v9);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5878, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5877, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5876, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001E51BC(int a1, uint64_t (*a2)())
{
  memset(v13, 0, sizeof(v13));
  if (a1 == 1)
  {
    *(v13 + 1) = -16512;
    BYTE3(v13[0]) = 3;
  }

  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    for (i = 0; i != 4; ++i)
    {
      if (HIBYTE(v12))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_13:
        v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_14:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5831, v10);
      }

      v8 = WORD2(v12);
      if (WORD1(v12) <= WORD2(v12))
      {
        goto LABEL_13;
      }

      if (BYTE6(v12) != 2)
      {
        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_14;
      }

      v9 = *(v13 + i);
      ++WORD2(v12);
      *(v11 + v8) = v9;
    }

    return sub_100020078(65514, v11, BYTE4(v12), a2, sub_1001C62CC, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1001E52F4(__int16 a1, char a2, char a3, char *a4, unsigned int a5, uint64_t (*a6)())
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
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_24;
  }

  if (WORD1(v27) - WORD2(v27) <= 1)
  {
LABEL_24:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_26;
  }

  if (BYTE6(v27) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3534, v23);
  }

  *(v26 + WORD2(v27)) = a1;
  v16 = WORD2(v27);
  v17 = WORD2(v27) + 2;
  WORD2(v27) += 2;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_28;
  }

  if (WORD1(v27) <= v17)
  {
LABEL_28:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  if (BYTE6(v27) != 2)
  {
    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3535, v24);
  }

  WORD2(v27) = v16 + 3;
  *(v26 + v17) = a2;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_32;
  }

  v18 = WORD2(v27);
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
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3536, v25);
  }

  ++WORD2(v27);
  *(v26 + v18) = a3;
  if (a5)
  {
    v19 = a5;
    while (!HIBYTE(v27))
    {
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
      if (!--v19)
      {
        return sub_100020078(65475, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_21:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3538, v22);
  }

  return sub_100020078(65475, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
}

uint64_t sub_1001E5584(int a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v12) - WORD2(v12) > 3)
    {
      if (BYTE6(v12) == 2)
      {
        *(v11 + WORD2(v12)) = a1;
        *(v11 + WORD2(v12) + 2) = BYTE2(a1);
        *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
        v8 = WORD2(v12) + 4;
        WORD2(v12) += 4;
        if (HIBYTE(v12))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v12) - v8 > 3)
        {
          if (BYTE6(v12) == 2)
          {
            *(v11 + v8) = 1;
            *(v11 + WORD2(v12) + 1) = 0;
            *(v11 + WORD2(v12) + 3) = 0;
            WORD2(v12) += 4;
            return sub_100020078(65393, v11, BYTE4(v12), a2, sub_1001C62CC, v5, v6, v7);
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1669, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1668, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E5754(char a1, uint64_t (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v16) - WORD2(v16) > 3)
          {
            if (BYTE6(v16) == 2)
            {
              *(v15 + WORD2(v16)) = -1;
              *(v15 + WORD2(v16) + 1) = -1;
              *(v15 + WORD2(v16) + 2) = -1;
              *(v15 + WORD2(v16) + 3) = -1;
              v9 = WORD2(v16) + 4;
              WORD2(v16) += 4;
              if (HIBYTE(v16))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v16) - v9 > 3)
              {
                if (BYTE6(v16) == 2)
                {
                  *(v15 + v9) = -1;
                  *(v15 + WORD2(v16) + 1) = -1;
                  *(v15 + WORD2(v16) + 2) = -1;
                  *(v15 + WORD2(v16) + 3) = -1;
                  v10 = WORD2(v16) + 4;
                  WORD2(v16) += 4;
                  if (HIBYTE(v16))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v16) - v10 > 3)
                  {
                    if (BYTE6(v16) == 2)
                    {
                      *(v15 + v10) = -1;
                      *(v15 + WORD2(v16) + 1) = -1;
                      *(v15 + WORD2(v16) + 2) = -1;
                      *(v15 + WORD2(v16) + 3) = -1;
                      WORD2(v16) += 4;
                      return sub_100020078(64906, v15, BYTE4(v16), a2, sub_1001C62CC, v5, v6, v7);
                    }

                    v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5206, v14);
                  }

                  v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                  goto LABEL_31;
                }

                v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5205, v13);
              }

              v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_27;
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5204, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5203, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E5A40(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65360, v6, BYTE4(v7), a1, sub_1001C69E8, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001E5A9C(char a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, int a16, int a17, char a18, char a19, __int16 a20, char a21, int a22, uint64_t (*a23)())
{
  v70 = 0;
  v71 = 0;
  result = sub_10001FFD8(&v70);
  if (!result)
  {
    if (HIBYTE(v71))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v35 = WORD2(v71);
      if (WORD1(v71) > WORD2(v71))
      {
        if (BYTE6(v71) == 2)
        {
          ++WORD2(v71);
          *(v70 + v35) = a1;
          if (HIBYTE(v71))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v71) - WORD2(v71) > 1)
          {
            if (BYTE6(v71) == 2)
            {
              *(v70 + WORD2(v71)) = a2;
              v36 = WORD2(v71);
              v37 = WORD2(v71) + 2;
              WORD2(v71) += 2;
              if (HIBYTE(v71))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v71) > v37)
              {
                if (BYTE6(v71) == 2)
                {
                  WORD2(v71) = v36 + 3;
                  *(v70 + v37) = a3;
                  if (HIBYTE(v71))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    v38 = WORD2(v71);
                    if (WORD1(v71) > WORD2(v71))
                    {
                      if (BYTE6(v71) == 2)
                      {
                        ++WORD2(v71);
                        *(v70 + v38) = a4;
                        if (HIBYTE(v71))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v39 = WORD2(v71);
                          if (WORD1(v71) > WORD2(v71))
                          {
                            if (BYTE6(v71) == 2)
                            {
                              ++WORD2(v71);
                              *(v70 + v39) = a5;
                              if (HIBYTE(v71))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                              }

                              else
                              {
                                v40 = WORD2(v71);
                                if (WORD1(v71) > WORD2(v71))
                                {
                                  if (BYTE6(v71) == 2)
                                  {
                                    ++WORD2(v71);
                                    *(v70 + v40) = a6;
                                    if (HIBYTE(v71))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else
                                    {
                                      v41 = WORD2(v71);
                                      if (WORD1(v71) > WORD2(v71))
                                      {
                                        if (BYTE6(v71) == 2)
                                        {
                                          ++WORD2(v71);
                                          *(v70 + v41) = a7;
                                          if (HIBYTE(v71))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                          }

                                          else
                                          {
                                            v42 = WORD2(v71);
                                            if (WORD1(v71) > WORD2(v71))
                                            {
                                              if (BYTE6(v71) == 2)
                                              {
                                                ++WORD2(v71);
                                                *(v70 + v42) = a8;
                                                if (HIBYTE(v71))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                }

                                                else
                                                {
                                                  v43 = WORD2(v71);
                                                  if (WORD1(v71) > WORD2(v71))
                                                  {
                                                    if (BYTE6(v71) == 2)
                                                    {
                                                      ++WORD2(v71);
                                                      *(v70 + v43) = a9;
                                                      if (HIBYTE(v71))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                      }

                                                      else if (WORD1(v71) - WORD2(v71) > 1)
                                                      {
                                                        if (BYTE6(v71) == 2)
                                                        {
                                                          *(v70 + WORD2(v71)) = a10;
                                                          v44 = WORD2(v71) + 2;
                                                          WORD2(v71) += 2;
                                                          if (HIBYTE(v71))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                          }

                                                          else if (WORD1(v71) - v44 > 1)
                                                          {
                                                            if (BYTE6(v71) == 2)
                                                            {
                                                              *(v70 + v44) = a11;
                                                              *(v70 + WORD2(v71) + 1) = a12;
                                                              v45 = WORD2(v71) + 2;
                                                              WORD2(v71) += 2;
                                                              if (HIBYTE(v71))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                              }

                                                              else if (WORD1(v71) - v45 > 1)
                                                              {
                                                                if (BYTE6(v71) == 2)
                                                                {
                                                                  *(v70 + v45) = a13;
                                                                  *(v70 + WORD2(v71) + 1) = a14;
                                                                  v46 = WORD2(v71);
                                                                  v47 = WORD2(v71) + 2;
                                                                  WORD2(v71) += 2;
                                                                  if (HIBYTE(v71))
                                                                  {
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                  }

                                                                  else if (WORD1(v71) > v47)
                                                                  {
                                                                    if (BYTE6(v71) == 2)
                                                                    {
                                                                      WORD2(v71) = v46 + 3;
                                                                      *(v70 + v47) = a15;
                                                                      if (HIBYTE(v71))
                                                                      {
                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                      }

                                                                      else if (WORD1(v71) - WORD2(v71) > 3)
                                                                      {
                                                                        if (BYTE6(v71) == 2)
                                                                        {
                                                                          *(v70 + WORD2(v71)) = a16;
                                                                          *(v70 + WORD2(v71) + 1) = *(&a16 + 1);
                                                                          *(v70 + WORD2(v71) + 3) = HIBYTE(a16);
                                                                          v48 = WORD2(v71) + 4;
                                                                          WORD2(v71) += 4;
                                                                          if (HIBYTE(v71))
                                                                          {
                                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                          }

                                                                          else if (WORD1(v71) - v48 > 3)
                                                                          {
                                                                            if (BYTE6(v71) == 2)
                                                                            {
                                                                              *(v70 + v48) = a17;
                                                                              *(v70 + WORD2(v71) + 1) = *(&a17 + 1);
                                                                              *(v70 + WORD2(v71) + 3) = HIBYTE(a17);
                                                                              v49 = WORD2(v71) + 4;
                                                                              WORD2(v71) += 4;
                                                                              if (HIBYTE(v71))
                                                                              {
                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                              }

                                                                              else if (WORD1(v71) - v49 > 3)
                                                                              {
                                                                                if (BYTE6(v71) == 2)
                                                                                {
                                                                                  *(v70 + v49) = a18;
                                                                                  *(v70 + WORD2(v71) + 1) = a19;
                                                                                  *(v70 + WORD2(v71) + 2) = a20;
                                                                                  v50 = WORD2(v71);
                                                                                  v51 = WORD2(v71) + 4;
                                                                                  WORD2(v71) += 4;
                                                                                  if (HIBYTE(v71))
                                                                                  {
                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                  }

                                                                                  else if (WORD1(v71) > v51)
                                                                                  {
                                                                                    if (BYTE6(v71) == 2)
                                                                                    {
                                                                                      WORD2(v71) = v50 + 5;
                                                                                      *(v70 + v51) = a21;
                                                                                      if (HIBYTE(v71))
                                                                                      {
                                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                      }

                                                                                      else if (WORD1(v71) - WORD2(v71) > 3)
                                                                                      {
                                                                                        if (BYTE6(v71) == 2)
                                                                                        {
                                                                                          *(v70 + WORD2(v71)) = a22;
                                                                                          *(v70 + WORD2(v71) + 1) = *(&a22 + 1);
                                                                                          *(v70 + WORD2(v71) + 3) = HIBYTE(a22);
                                                                                          WORD2(v71) += 4;
                                                                                          return sub_100020078(65481, v70, BYTE4(v71), a23, sub_1001C62CC, v32, v33, v34);
                                                                                        }

                                                                                        v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_129:
                                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3584, v69);
                                                                                      }

                                                                                      v69 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                      goto LABEL_129;
                                                                                    }

                                                                                    v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_125:
                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3583, v68);
                                                                                  }

                                                                                  v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                  goto LABEL_125;
                                                                                }

                                                                                v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_121:
                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3582, v67);
                                                                              }

                                                                              v67 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                              goto LABEL_121;
                                                                            }

                                                                            v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_117:
                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3581, v66);
                                                                          }

                                                                          v66 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                          goto LABEL_117;
                                                                        }

                                                                        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_113:
                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3580, v65);
                                                                      }

                                                                      v65 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                      goto LABEL_113;
                                                                    }

                                                                    v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3579, v64);
                                                                  }

                                                                  v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_109;
                                                                }

                                                                v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3578, v63);
                                                              }

                                                              v63 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                              goto LABEL_105;
                                                            }

                                                            v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3577, v62);
                                                          }

                                                          v62 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                          goto LABEL_101;
                                                        }

                                                        v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3576, v61);
                                                      }

                                                      v61 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                      goto LABEL_97;
                                                    }

                                                    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3575, v60);
                                                  }
                                                }

                                                v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_93;
                                              }

                                              v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3574, v59);
                                            }
                                          }

                                          v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_89;
                                        }

                                        v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3573, v58);
                                      }
                                    }

                                    v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_85;
                                  }

                                  v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3572, v57);
                                }
                              }

                              v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_81;
                            }

                            v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3571, v56);
                          }
                        }

                        v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_77;
                      }

                      v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3570, v55);
                    }
                  }

                  v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_73;
                }

                v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3569, v54);
              }

              v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_69;
            }

            v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3568, v53);
          }

          v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_65;
        }

        v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3567, v52);
      }
    }

    v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_1001E6544(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, uint64_t (*a11)())
{
  v48 = 0;
  v49 = 0;
  result = sub_10001FFD8(&v48);
  if (!result)
  {
    if (HIBYTE(v49))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v49) > v25)
              {
                if (BYTE6(v49) == 2)
                {
                  WORD2(v49) = v24 + 7;
                  *(v48 + v25) = BYTE6(a1);
                  if (HIBYTE(v49))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                                                        return sub_100020078(65017, v48, BYTE4(v49), a11, sub_1001ED778, v21, v22, v23);
                                                                      }

                                                                      v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_87:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3339, v46);
                                                                    }
                                                                  }

                                                                  v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_87;
                                                                }

                                                                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_83:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3338, v45);
                                                              }
                                                            }

                                                            v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_83;
                                                          }

                                                          v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_79:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3337, v44);
                                                        }
                                                      }

                                                      v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_79;
                                                    }

                                                    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_75:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3336, v43);
                                                  }
                                                }

                                                v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_75;
                                              }

                                              v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_71:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3335, v42);
                                            }
                                          }

                                          v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_71;
                                        }

                                        v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3334, v41);
                                      }
                                    }

                                    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_67;
                                  }

                                  v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3333, v40);
                                }
                              }

                              v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_63;
                            }

                            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3332, v39);
                          }
                        }

                        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_59;
                      }

                      v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3331, v38);
                    }
                  }

                  v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_55;
                }

                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3330, v37);
              }

              v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_51;
            }

            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3329, v36);
          }

          v36 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_47;
        }

        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3326, v35);
      }
    }

    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1001E6BC4(char a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, uint64_t (*a7)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  }

                                  else if (WORD1(v32) - v23 > 1)
                                  {
                                    if (BYTE6(v32) == 2)
                                    {
                                      *(v31 + v23) = a6;
                                      *(v31 + WORD2(v32) + 1) = HIBYTE(a6);
                                      WORD2(v32) += 2;
                                      return sub_100020078(65017, v31, BYTE4(v32), a7, sub_1001ED778, v15, v16, v17);
                                    }

                                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3359, v30);
                                  }

                                  v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_52;
                                }

                                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3358, v29);
                              }

                              v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_48;
                            }

                            v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3357, v28);
                          }

                          v28 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_44;
                        }

                        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3356, v27);
                      }

                      v27 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                      goto LABEL_40;
                    }

                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3355, v26);
                  }
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3354, v25);
            }
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3353, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001E700C(char a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                            return sub_100020078(64940, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4413, v21);
                        }
                      }

                      v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_31;
                    }

                    v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4412, v20);
                  }
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4411, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4410, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E7268(int *a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v12) - WORD2(v12) > 5)
    {
      if (BYTE6(v12) == 2)
      {
        v8 = v11 + WORD2(v12);
        v9 = *a1;
        *(v8 + 4) = *(a1 + 2);
        *v8 = v9;
        WORD2(v12) += 6;
        return sub_100020078(64518, v11, BYTE4(v12), a2, sub_1001C62CC, v5, v6, v7);
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6219, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E7358(unint64_t a1, uint64_t a2, unsigned int a3, const void *a4, uint64_t (*a5)())
{
  if (a3 < 0x10)
  {
    return 101;
  }

  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    v10 = sub_10009A66C(a1);
    v21 = v10;
    v23 = BYTE6(v10);
    v22 = WORD2(v10);
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v11 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v11) = (a1 & 0xFF000000000000) != 0;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v25) - WORD2(v25) > 5)
          {
            if (BYTE6(v25) == 2)
            {
              sub_1000075EC((v24 + WORD2(v25)), &v21 + 1, 6uLL);
              v12 = WORD2(v25) + 6;
              WORD2(v25) += 6;
              v13 = v24;
              if (HIBYTE(v25))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                v14 = 0;
              }

              else
              {
                v14 = WORD1(v25) - v12;
              }

              if (v14 < a3)
              {
                v20 = "ByteStream_NumReadBytesAvail(bs) >= (ltkLen)";
              }

              else
              {
                if (BYTE6(v25) == 2)
                {
                  memmove((v13 + v12), a4, a3);
                  WORD2(v25) += a3;
                  return sub_100020078(65180, v24, BYTE4(v25), a5, sub_1001C62CC, v15, v16, v17);
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2646, v20);
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2645, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_24;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2644, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001E75A0(unint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    v6 = sub_10009A66C(a1);
    v13 = v6;
    v15 = BYTE6(v6);
    v14 = WORD2(v6);
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v7 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v7) = (a1 & 0xFF000000000000) != 0;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v17) - WORD2(v17) > 5)
          {
            if (BYTE6(v17) == 2)
            {
              sub_1000075EC((v16 + WORD2(v17)), &v13 + 1, 6uLL);
              WORD2(v17) += 6;
              return sub_100020078(65181, v16, BYTE4(v17), a3, sub_1001C62CC, v8, v9, v10);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2669, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2668, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E7730(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65182, v6, BYTE4(v7), a1, sub_1001EFE14, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001E778C(unint64_t a1, uint64_t a2, char a3, int a4, const void *a5, uint64_t (*a6)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    v12 = sub_10009A66C(a1);
    v28 = v12;
    v30 = BYTE6(v12);
    v29 = WORD2(v12);
    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v13 = WORD2(v32);
      if (WORD1(v32) > WORD2(v32))
      {
        if (BYTE6(v32) == 2)
        {
          ++WORD2(v32);
          *(v31 + v13) = (a1 & 0xFF000000000000) != 0;
          if (HIBYTE(v32))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v32) - WORD2(v32) > 5)
          {
            if (BYTE6(v32) == 2)
            {
              sub_1000075EC((v31 + WORD2(v32)), &v28 + 1, 6uLL);
              v17 = WORD2(v32);
              v18 = WORD2(v32) + 6;
              WORD2(v32) += 6;
              if (HIBYTE(v32))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v32) > v18)
              {
                if (BYTE6(v32) == 2)
                {
                  if (a4)
                  {
                    v19 = a3;
                  }

                  else
                  {
                    v19 = 1;
                  }

                  WORD2(v32) = v17 + 7;
                  *(v31 + v18) = v19;
                  if (HIBYTE(v32))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v32) - WORD2(v32) > 1)
                  {
                    if (BYTE6(v32) == 2)
                    {
                      *(v31 + WORD2(v32)) = a4;
                      v20 = WORD2(v32) + 2;
                      WORD2(v32) += 2;
                      if (a4)
                      {
                        v21 = v31;
                        if (HIBYTE(v32))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                          v22 = 0;
                        }

                        else
                        {
                          v22 = WORD1(v32) - v20;
                        }

                        if (v22 < a4)
                        {
                          v27 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
                        }

                        else
                        {
                          if (BYTE6(v32) == 2)
                          {
                            memmove((v21 + v20), a5, a4);
                            LOBYTE(v20) = BYTE4(v32) + a4;
                            WORD2(v32) += a4;
                            return sub_100020078(65183, v31, v20, a6, sub_1001C62CC, v14, v15, v16);
                          }

                          v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                        }

                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2739, v27);
                      }

                      return sub_100020078(65183, v31, v20, a6, sub_1001C62CC, v14, v15, v16);
                    }

                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2737, v26);
                  }

                  v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_41;
                }

                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2736, v25);
              }

              v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_37;
            }

            v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2735, v24);
          }

          v24 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_33;
        }

        v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2734, v23);
      }
    }

    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1001E7AE0(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65184, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2754, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E7BD4(unsigned int a1, uint64_t a2, uint64_t (*a3)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_41;
  }

  v10 = WORD2(v23);
  if (WORD1(v23) <= WORD2(v23))
  {
LABEL_41:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  if (BYTE6(v23) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2795, v21);
  }

  ++WORD2(v23);
  *(v22 + v10) = a1;
  if (a1)
  {
    v11 = a1;
    v12 = (a2 + 4);
    while (!HIBYTE(v23))
    {
      if (WORD1(v23) - WORD2(v23) <= 1)
      {
        goto LABEL_38;
      }

      if (BYTE6(v23) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_39;
      }

      *(v22 + WORD2(v23)) = *(v12 - 2);
      v13 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_34:
        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_35:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2799, v19);
      }

      if (WORD1(v23) - v13 <= 1)
      {
        goto LABEL_34;
      }

      if (BYTE6(v23) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_35;
      }

      *(v22 + v13) = *(v12 - 2);
      *(v22 + WORD2(v23) + 1) = *(v12 - 1);
      v14 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_30:
        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2800, v18);
      }

      if (WORD1(v23) - v14 <= 1)
      {
        goto LABEL_30;
      }

      if (BYTE6(v23) != 2)
      {
        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_31;
      }

      *(v22 + v14) = *v12;
      *(v22 + WORD2(v23) + 1) = v12[1];
      v15 = WORD2(v23) + 2;
      WORD2(v23) += 2;
      if (HIBYTE(v23))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_26:
        v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2801, v17);
      }

      if (WORD1(v23) - v15 <= 1)
      {
        goto LABEL_26;
      }

      if (BYTE6(v23) != 2)
      {
        v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_27;
      }

      *(v22 + v15) = v12[2];
      *(v22 + WORD2(v23) + 1) = v12[3];
      v16 = BYTE4(v23) + 2;
      WORD2(v23) += 2;
      v12 += 8;
      if (!--v11)
      {
        return sub_100020078(65260, v22, v16, a3, sub_1001C62CC, v7, v8, v9);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_38:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_39:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2798, v20);
  }

  v16 = BYTE4(v23);
  return sub_100020078(65260, v22, v16, a3, sub_1001C62CC, v7, v8, v9);
}

uint64_t sub_1001E7F38(uint64_t (*a1)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 3)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = -1;
        *(v13 + WORD2(v14) + 1) = -1;
        *(v13 + WORD2(v14) + 2) = -1;
        *(v13 + WORD2(v14) + 3) = -1;
        v6 = WORD2(v14) + 4;
        WORD2(v14) += 4;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v14) - v6 > 3)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v6) = -1;
            *(v13 + WORD2(v14) + 1) = -1;
            *(v13 + WORD2(v14) + 2) = -1;
            *(v13 + WORD2(v14) + 3) = -1;
            v7 = WORD2(v14) + 4;
            WORD2(v14) += 4;
            if (HIBYTE(v14))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v14) - v7 > 3)
            {
              if (BYTE6(v14) == 2)
              {
                *(v13 + v7) = -1;
                *(v13 + WORD2(v14) + 1) = -1;
                *(v13 + WORD2(v14) + 2) = -1;
                *(v13 + WORD2(v14) + 3) = -1;
                v8 = WORD2(v14) + 4;
                WORD2(v14) += 4;
                if (HIBYTE(v14))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v14) - v8 > 3)
                {
                  if (BYTE6(v14) == 2)
                  {
                    *(v13 + v8) = -1;
                    *(v13 + WORD2(v14) + 1) = -1;
                    *(v13 + WORD2(v14) + 2) = -1;
                    *(v13 + WORD2(v14) + 3) = -1;
                    WORD2(v14) += 4;
                    return sub_100020078(65291, v13, BYTE4(v14), a1, sub_1001C62CC, v3, v4, v5);
                  }

                  v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6174, v12);
                }

                v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_31;
              }

              v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6173, v11);
            }

            v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_27;
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6172, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_23;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6171, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001E8258(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65528, v6, BYTE4(v7), a1, sub_1001EFFAC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001E82B4(uint64_t a1, uint64_t (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    for (i = 0; i != 24; ++i)
    {
      if (HIBYTE(v13))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_11:
        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_12:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6189, v11);
      }

      v9 = WORD2(v13);
      if (WORD1(v13) <= WORD2(v13))
      {
        goto LABEL_11;
      }

      if (BYTE6(v13) != 2)
      {
        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_12;
      }

      v10 = *(a1 + i);
      ++WORD2(v13);
      *(v12 + v9) = v10;
    }

    return sub_100020078(65092, v12, BYTE4(v13), a2, sub_1001C62CC, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1001E83A0(char *a1, uint64_t (*a2)())
{
  v63 = 0;
  v64 = 0;
  result = sub_10001FFD8(&v63);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v64))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_78;
  }

  v5 = WORD2(v64);
  if (WORD1(v64) <= WORD2(v64))
  {
LABEL_78:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_80;
  }

  if (BYTE6(v64) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5893, v41);
  }

  v6 = *a1;
  ++WORD2(v64);
  *(v63 + v5) = v6;
  if (HIBYTE(v64))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_82;
  }

  v7 = WORD2(v64);
  if (WORD1(v64) <= WORD2(v64))
  {
LABEL_82:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_84;
  }

  if (BYTE6(v64) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5894, v42);
  }

  v8 = a1[1];
  ++WORD2(v64);
  *(v63 + v7) = v8;
  if (HIBYTE(v64))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_86;
  }

  if (WORD1(v64) - WORD2(v64) <= 5)
  {
LABEL_86:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_88;
  }

  if (BYTE6(v64) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5895, v43);
  }

  sub_1000075EC((v63 + WORD2(v64)), *(a1 + 1), 6uLL);
  v9 = WORD2(v64);
  v10 = WORD2(v64) + 6;
  WORD2(v64) += 6;
  if (*a1 == 1)
  {
    if (HIBYTE(v64))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v64) - v10 > 3)
    {
      if (BYTE6(v64) == 2)
      {
        *(v63 + v10) = *(a1 + 4);
        *(v63 + WORD2(v64) + 1) = BYTE1(*(a1 + 4));
        *(v63 + WORD2(v64) + 2) = *(a1 + 9);
        WORD2(v64) += 4;
LABEL_21:
        if (HIBYTE(v64))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v64) - WORD2(v64) > 1)
        {
          if (BYTE6(v64) == 2)
          {
            *(v63 + WORD2(v64)) = *(a1 + 10);
            v12 = WORD2(v64) + 2;
            WORD2(v64) += 2;
            if (HIBYTE(v64))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v64) - v12 > 1)
            {
              if (BYTE6(v64) == 2)
              {
                *(v63 + v12) = a1[22];
                *(v63 + WORD2(v64) + 1) = a1[23];
                v13 = WORD2(v64) + 2;
                WORD2(v64) += 2;
                if (HIBYTE(v64))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v64) - v13 > 1)
                {
                  if (BYTE6(v64) == 2)
                  {
                    *(v63 + v13) = a1[24];
                    *(v63 + WORD2(v64) + 1) = a1[25];
                    v14 = WORD2(v64) + 2;
                    WORD2(v64) += 2;
                    if (HIBYTE(v64))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    }

                    else if (WORD1(v64) - v14 > 1)
                    {
                      if (BYTE6(v64) == 2)
                      {
                        *(v63 + v14) = a1[26];
                        *(v63 + WORD2(v64) + 1) = a1[27];
                        v15 = WORD2(v64) + 2;
                        WORD2(v64) += 2;
                        if (HIBYTE(v64))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else if (WORD1(v64) - v15 > 1)
                        {
                          if (BYTE6(v64) == 2)
                          {
                            *(v63 + v15) = a1[28];
                            *(v63 + WORD2(v64) + 1) = a1[29];
                            v16 = WORD2(v64) + 2;
                            WORD2(v64) += 2;
                            if (HIBYTE(v64))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else if (WORD1(v64) - v16 > 1)
                            {
                              if (BYTE6(v64) == 2)
                              {
                                *(v63 + v16) = a1[30];
                                *(v63 + WORD2(v64) + 1) = a1[31];
                                v17 = WORD2(v64);
                                v18 = WORD2(v64) + 2;
                                WORD2(v64) += 2;
                                if (HIBYTE(v64))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                }

                                else if (WORD1(v64) > v18)
                                {
                                  if (BYTE6(v64) == 2)
                                  {
                                    v19 = a1[32];
                                    WORD2(v64) = v17 + 3;
                                    *(v63 + v18) = v19;
                                    if (HIBYTE(v64))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else if (WORD1(v64) - WORD2(v64) > 5)
                                    {
                                      if (BYTE6(v64) == 2)
                                      {
                                        sub_1000075EC((v63 + WORD2(v64)), *(a1 + 5), 6uLL);
                                        v23 = WORD2(v64);
                                        v24 = WORD2(v64) + 6;
                                        WORD2(v64) += 6;
                                        if (HIBYTE(v64))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                        }

                                        else if (WORD1(v64) > v24)
                                        {
                                          if (BYTE6(v64) == 2)
                                          {
                                            v25 = a1[48];
                                            WORD2(v64) = v23 + 7;
                                            *(v63 + v24) = v25;
                                            if (HIBYTE(v64))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                            }

                                            else if (WORD1(v64) > WORD2(v64))
                                            {
                                              if (BYTE6(v64) == 2)
                                              {
                                                *(v63 + WORD2(v64)) = a1[49];
                                                v26 = WORD2(v64);
                                                v27 = ++WORD2(v64);
                                                if (HIBYTE(v64))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                }

                                                else if (WORD1(v64) > v27)
                                                {
                                                  if (BYTE6(v64) == 2)
                                                  {
                                                    v28 = a1[50];
                                                    WORD2(v64) = v26 + 2;
                                                    *(v63 + v27) = v28;
                                                    if (HIBYTE(v64))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v29 = WORD2(v64);
                                                      if (WORD1(v64) > WORD2(v64))
                                                      {
                                                        if (BYTE6(v64) == 2)
                                                        {
                                                          v30 = a1[51];
                                                          ++WORD2(v64);
                                                          *(v63 + v29) = v30;
                                                          if (*a1 != 1)
                                                          {
                                                            return sub_100020078(65479, v63, BYTE4(v64), a2, sub_1001C62CC, v20, v21, v22);
                                                          }

                                                          if (HIBYTE(v64))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                          }

                                                          else
                                                          {
                                                            v31 = WORD2(v64);
                                                            if (WORD1(v64) > WORD2(v64))
                                                            {
                                                              if (BYTE6(v64) == 2)
                                                              {
                                                                v32 = a1[52];
                                                                ++WORD2(v64);
                                                                *(v63 + v31) = v32;
                                                                if (HIBYTE(v64))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                }

                                                                else
                                                                {
                                                                  v33 = WORD2(v64);
                                                                  if (WORD1(v64) > WORD2(v64))
                                                                  {
                                                                    if (BYTE6(v64) == 2)
                                                                    {
                                                                      v34 = a1[53];
                                                                      ++WORD2(v64);
                                                                      *(v63 + v33) = v34;
                                                                      if (HIBYTE(v64))
                                                                      {
                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                      }

                                                                      else
                                                                      {
                                                                        v35 = WORD2(v64);
                                                                        if (WORD1(v64) > WORD2(v64))
                                                                        {
                                                                          if (BYTE6(v64) == 2)
                                                                          {
                                                                            v36 = a1[54];
                                                                            ++WORD2(v64);
                                                                            *(v63 + v35) = v36;
                                                                            if (HIBYTE(v64))
                                                                            {
                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                            }

                                                                            else
                                                                            {
                                                                              v37 = WORD2(v64);
                                                                              if (WORD1(v64) > WORD2(v64))
                                                                              {
                                                                                if (BYTE6(v64) == 2)
                                                                                {
                                                                                  v38 = a1[55];
                                                                                  ++WORD2(v64);
                                                                                  *(v63 + v37) = v38;
                                                                                  if (HIBYTE(v64))
                                                                                  {
                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v39 = WORD2(v64);
                                                                                    if (WORD1(v64) > WORD2(v64))
                                                                                    {
                                                                                      if (BYTE6(v64) == 2)
                                                                                      {
                                                                                        v40 = a1[56];
                                                                                        ++WORD2(v64);
                                                                                        *(v63 + v39) = v40;
                                                                                        return sub_100020078(65479, v63, BYTE4(v64), a2, sub_1001C62CC, v20, v21, v22);
                                                                                      }

                                                                                      v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_164:
                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5920, v62);
                                                                                    }
                                                                                  }

                                                                                  v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                  goto LABEL_164;
                                                                                }

                                                                                v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_160:
                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5919, v61);
                                                                              }
                                                                            }

                                                                            v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                            goto LABEL_160;
                                                                          }

                                                                          v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_156:
                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5918, v60);
                                                                        }
                                                                      }

                                                                      v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                      goto LABEL_156;
                                                                    }

                                                                    v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_152:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5917, v59);
                                                                  }
                                                                }

                                                                v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                goto LABEL_152;
                                                              }

                                                              v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_148:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5916, v58);
                                                            }
                                                          }

                                                          v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                          goto LABEL_148;
                                                        }

                                                        v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5914, v55);
                                                      }
                                                    }

                                                    v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_136;
                                                  }

                                                  v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5913, v54);
                                                }

                                                v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_132;
                                              }

                                              v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5912, v53);
                                            }

                                            v53 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                            goto LABEL_128;
                                          }

                                          v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5911, v52);
                                        }

                                        v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_124;
                                      }

                                      v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5910, v51);
                                    }

                                    v51 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                                    goto LABEL_120;
                                  }

                                  v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5909, v50);
                                }

                                v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                goto LABEL_116;
                              }

                              v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5908, v49);
                            }

                            v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                            goto LABEL_112;
                          }

                          v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5907, v48);
                        }

                        v48 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_108;
                      }

                      v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5906, v47);
                    }

                    v47 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_104;
                  }

                  v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5905, v46);
                }

                v46 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_100;
              }

              v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5904, v45);
            }

            v45 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_96;
          }

          v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5903, v44);
        }

        v44 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_92;
      }

      v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_144:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5899, v57);
    }

    v57 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_144;
  }

  if (!*a1)
  {
    if (HIBYTE(v64))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v64) > v10)
    {
      if (BYTE6(v64) == 2)
      {
        v11 = *(a1 + 4);
        WORD2(v64) = v9 + 7;
        *(v63 + v10) = v11;
        goto LABEL_21;
      }

      v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_142:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5897, v56);
    }

    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_142;
  }

  return 101;
}

uint64_t sub_1001E8FE4(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t (*a4)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v22))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_26;
  }

  if (WORD1(v22) - WORD2(v22) <= 1)
  {
LABEL_26:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_28;
  }

  if (BYTE6(v22) != 2)
  {
    v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5933, v20);
  }

  v12 = 0;
  *(v21 + WORD2(v22)) = *a3;
  WORD2(v22) += 2;
  do
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_19:
      v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_20:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5935, v18);
    }

    v13 = WORD2(v22);
    if (WORD1(v22) <= WORD2(v22))
    {
      goto LABEL_19;
    }

    if (BYTE6(v22) != 2)
    {
      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_20;
    }

    v14 = *(a1 + v12);
    ++WORD2(v22);
    *(v21 + v13) = v14;
    ++v12;
  }

  while (v12 != 5);
  for (i = 0; i != 5; ++i)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_23:
      v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_24:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5938, v19);
    }

    v16 = WORD2(v22);
    if (WORD1(v22) <= WORD2(v22))
    {
      goto LABEL_23;
    }

    if (BYTE6(v22) != 2)
    {
      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_24;
    }

    v17 = *(a2 + i);
    ++WORD2(v22);
    *(v21 + v16) = v17;
  }

  return sub_100020078(65256, v21, BYTE4(v22), a4, sub_1001C62CC, v9, v10, v11);
}

uint64_t sub_1001E9204(_WORD *a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 2;
        return sub_100020078(65257, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5951, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001E92FC(char a1, char a2, char a3, char a4, char a5, char a6, uint64_t (*a7)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (!result)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v21 = WORD2(v31);
                        if (WORD1(v31) > WORD2(v31))
                        {
                          if (BYTE6(v31) == 2)
                          {
                            ++WORD2(v31);
                            *(v30 + v21) = a4;
                            if (HIBYTE(v31))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else
                            {
                              v22 = WORD2(v31);
                              if (WORD1(v31) > WORD2(v31))
                              {
                                if (BYTE6(v31) == 2)
                                {
                                  ++WORD2(v31);
                                  *(v30 + v22) = a5;
                                  if (HIBYTE(v31))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  }

                                  else
                                  {
                                    v23 = WORD2(v31);
                                    if (WORD1(v31) > WORD2(v31))
                                    {
                                      if (BYTE6(v31) == 2)
                                      {
                                        ++WORD2(v31);
                                        *(v30 + v23) = a6;
                                        return sub_100020078(65091, v30, BYTE4(v31), a7, sub_1001C62CC, v15, v16, v17);
                                      }

                                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5384, v29);
                                    }
                                  }

                                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_45;
                                }

                                v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5383, v28);
                              }
                            }

                            v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_41;
                          }

                          v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5382, v27);
                        }
                      }

                      v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_37;
                    }

                    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5381, v26);
                  }
                }

                v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_33;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5380, v25);
            }
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_29;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5379, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001E9658(__int16 a1, char a2, uint64_t a3, char a4, __int16 a5, char a6, char a7, char a8, uint64_t (*a9)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v18 = WORD2(v40);
      if (WORD1(v40) > WORD2(v40))
      {
        if (BYTE6(v40) == 2)
        {
          ++WORD2(v40);
          *(v39 + v18) = 13;
          if (HIBYTE(v40))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v40) > v20)
              {
                if (BYTE6(v40) == 2)
                {
                  WORD2(v40) = v19 + 3;
                  *(v39 + v20) = a2;
                  if (HIBYTE(v40))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else if (WORD1(v40) > v25)
                      {
                        if (BYTE6(v40) == 2)
                        {
                          WORD2(v40) = v24 + 7;
                          *(v39 + v25) = a4;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                              }

                              else if (WORD1(v40) > v27)
                              {
                                if (BYTE6(v40) == 2)
                                {
                                  WORD2(v40) = v26 + 3;
                                  *(v39 + v27) = a6;
                                  if (HIBYTE(v40))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                                              return sub_100020078(65014, v39, BYTE4(v40), a9, sub_1001F0268, v21, v22, v23);
                                            }

                                            v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5626, v38);
                                          }
                                        }

                                        v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_66;
                                      }

                                      v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5625, v37);
                                    }
                                  }

                                  v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_62;
                                }

                                v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5624, v36);
                              }

                              v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_58;
                            }

                            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5623, v35);
                          }

                          v35 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                          goto LABEL_54;
                        }

                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5622, v34);
                      }

                      v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_50;
                    }

                    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5621, v33);
                  }

                  v33 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                  goto LABEL_46;
                }

                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5620, v32);
              }

              v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_42;
            }

            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5619, v31);
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_38;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5618, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1001E9B70(__int16 a1, __int16 a2, __int16 a3, _BYTE *a4, uint64_t (*a5)())
{
  v64 = 0;
  v65 = 0;
  result = sub_10001FFD8(&v64);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v65))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_114;
  }

  v14 = WORD2(v65);
  if (WORD1(v65) <= WORD2(v65))
  {
LABEL_114:
    v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_116;
  }

  if (BYTE6(v65) != 2)
  {
    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5658, v60);
  }

  ++WORD2(v65);
  *(v64 + v14) = 11;
  if (HIBYTE(v65))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_118;
  }

  if (WORD1(v65) - WORD2(v65) <= 1)
  {
LABEL_118:
    v61 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_120;
  }

  if (BYTE6(v65) != 2)
  {
    v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5659, v61);
  }

  *(v64 + WORD2(v65)) = a1;
  v15 = WORD2(v65);
  v16 = WORD2(v65) + 2;
  WORD2(v65) += 2;
  if (HIBYTE(v65))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_122;
  }

  if (WORD1(v65) <= v16)
  {
LABEL_122:
    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_124;
  }

  if (BYTE6(v65) != 2)
  {
    v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5660, v62);
  }

  WORD2(v65) = v15 + 3;
  *(v64 + v16) = a2;
  if (HIBYTE(v65))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_126;
  }

  v17 = WORD2(v65);
  if (WORD1(v65) <= WORD2(v65))
  {
LABEL_126:
    v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_128;
  }

  if (BYTE6(v65) != 2)
  {
    v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5661, v63);
  }

  ++WORD2(v65);
  *(v64 + v17) = a3;
  v18 = a3 - a2 + 1;
  if (a3 - a2 != 0xFFFF)
  {
    v19 = 0;
    v20 = v18;
    while (!HIBYTE(v65))
    {
      if (WORD1(v65) - WORD2(v65) <= 5)
      {
        goto LABEL_85;
      }

      if (BYTE6(v65) != 2)
      {
        v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_86;
      }

      sub_1000075EC((v64 + WORD2(v65)), a4, 6uLL);
      v21 = WORD2(v65);
      v22 = WORD2(v65) + 6;
      WORD2(v65) += 6;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_81:
        v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_82:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5666, v52);
      }

      if (WORD1(v65) <= v22)
      {
        goto LABEL_81;
      }

      if (BYTE6(v65) != 2)
      {
        v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_82;
      }

      v23 = a4[6];
      WORD2(v65) = v21 + 7;
      *(v64 + v22) = v23;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_77:
        v51 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_78:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5667, v51);
      }

      if (WORD1(v65) - WORD2(v65) <= 5)
      {
        goto LABEL_77;
      }

      if (BYTE6(v65) != 2)
      {
        v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_78;
      }

      sub_1000075EC((v64 + WORD2(v65)), (a4 + 7), 6uLL);
      v24 = WORD2(v65);
      v25 = WORD2(v65) + 6;
      WORD2(v65) += 6;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_73:
        v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_74:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5668, v50);
      }

      if (WORD1(v65) <= v25)
      {
        goto LABEL_73;
      }

      if (BYTE6(v65) != 2)
      {
        v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_74;
      }

      v26 = a4[13];
      WORD2(v65) = v24 + 7;
      *(v64 + v25) = v26;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_69:
        v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_70:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5669, v49);
      }

      v27 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_69;
      }

      if (BYTE6(v65) != 2)
      {
        v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_70;
      }

      v28 = a4[14];
      ++WORD2(v65);
      *(v64 + v27) = v28;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_66:
        v48 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_100:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5670, v48);
      }

      v29 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_66;
      }

      if (BYTE6(v65) != 2)
      {
        v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_100;
      }

      v30 = a4[15];
      ++WORD2(v65);
      *(v64 + v29) = v30;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_97:
        v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_98:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5671, v56);
      }

      v31 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_97;
      }

      if (BYTE6(v65) != 2)
      {
        v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_98;
      }

      v32 = a4[16];
      ++WORD2(v65);
      *(v64 + v31) = v32;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_93:
        v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_94:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5672, v55);
      }

      v33 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_93;
      }

      if (BYTE6(v65) != 2)
      {
        v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_94;
      }

      v34 = a4[17];
      ++WORD2(v65);
      *(v64 + v33) = v34;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_89:
        v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_90:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5673, v54);
      }

      v35 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_89;
      }

      if (BYTE6(v65) != 2)
      {
        v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_90;
      }

      v36 = 0;
      v37 = a4[18];
      ++WORD2(v65);
      *(v64 + v35) = v37;
      do
      {
        if (HIBYTE(v65))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_63:
          v47 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_64:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5675, v47);
        }

        v38 = WORD2(v65);
        if (WORD1(v65) <= WORD2(v65))
        {
          goto LABEL_63;
        }

        if (BYTE6(v65) != 2)
        {
          v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_64;
        }

        v39 = a4[v19 + 19];
        ++WORD2(v65);
        *(v64 + v38) = v39;
      }

      while (v36++ < 4);
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_111:
        v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_112:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5677, v59);
      }

      v41 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_111;
      }

      if (BYTE6(v65) != 2)
      {
        v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_112;
      }

      v42 = a4[24];
      ++WORD2(v65);
      *(v64 + v41) = v42;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_107:
        v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_108:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5678, v58);
      }

      v43 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_107;
      }

      if (BYTE6(v65) != 2)
      {
        v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_108;
      }

      v44 = a4[25];
      ++WORD2(v65);
      *(v64 + v43) = v44;
      if (HIBYTE(v65))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_103:
        v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_104:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5679, v57);
      }

      v45 = WORD2(v65);
      if (WORD1(v65) <= WORD2(v65))
      {
        goto LABEL_103;
      }

      if (BYTE6(v65) != 2)
      {
        v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_104;
      }

      v46 = a4[26];
      ++WORD2(v65);
      *(v64 + v45) = v46;
      a4 += 27;
      if (++v19 >= v20)
      {
        return sub_100020078(65014, v64, BYTE4(v65), a5, sub_1001F03DC, v11, v12, v13);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
LABEL_85:
    v53 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_86:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5665, v53);
  }

  return sub_100020078(65014, v64, BYTE4(v65), a5, sub_1001F03DC, v11, v12, v13);
}

uint64_t sub_1001EA498(char a1, const void *a2, int a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v9 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v9) = a1;
          v10 = v18;
          v11 = WORD2(v19);
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v12 = 0;
          }

          else
          {
            v12 = WORD1(v19) - WORD2(v19);
          }

          if (v12 < a3)
          {
            v17 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
          }

          else
          {
            if (BYTE6(v19) == 2)
            {
              memmove((v10 + v11), a2, a3);
              WORD2(v19) += a3;
              return sub_100020078(64784, v18, BYTE4(v19), a4, sub_1001C62CC, v13, v14, v15);
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2145, v17);
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2144, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1001EA61C(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          return sub_100020078(64819, v10, BYTE4(v11), a2, sub_1001C69E8, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2161, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EA6F4(__int16 a1, char a2, char a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v19) - WORD2(v19) > 1)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = a1;
        v12 = WORD2(v19);
        v13 = WORD2(v19) + 2;
        WORD2(v19) += 2;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v19) > v13)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v12 + 3;
            *(v18 + v13) = a2;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
                  return sub_100020078(65054, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2179, v17);
              }
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2178, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2177, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001EA8E8(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65185, v9, BYTE4(v10), a2, sub_1001F0550, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2219, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EA9DC(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64883, v6, BYTE4(v7), a1, sub_1001C69E8, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001EAA38(char a1, int a2, char a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v19) - WORD2(v19) > 3)
          {
            if (BYTE6(v19) == 2)
            {
              *(v18 + WORD2(v19)) = a2;
              *(v18 + WORD2(v19) + 2) = BYTE2(a2);
              *(v18 + WORD2(v19) + 3) = HIBYTE(a2);
              v13 = WORD2(v19);
              v14 = WORD2(v19) + 4;
              WORD2(v19) += 4;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v19) > v14)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v13 + 5;
                  *(v18 + v14) = a3;
                  return sub_100020078(65258, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2249, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2248, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2247, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001EAC54(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          return sub_100020078(65469, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2265, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EAD2C(__int16 a1, int *a2, uint64_t (*a3)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v21) - WORD2(v21) > 1)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = a1;
        v10 = WORD2(v21);
        v11 = WORD2(v21) + 2;
        WORD2(v21) += 2;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v21) > v11)
        {
          if (BYTE6(v21) == 2)
          {
            v12 = *a2;
            WORD2(v21) = v10 + 3;
            *(v20 + v11) = v12;
            if (*a2 != 1)
            {
              if (*a2 != 2)
              {
                LOBYTE(v15) = BYTE4(v21);
                return sub_100020078(65172, v20, v15, a3, sub_1001C62CC, v7, v8, v9);
              }

              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v21) - WORD2(v21) > 2)
              {
                if (BYTE6(v21) == 2)
                {
                  v13 = v20 + WORD2(v21);
                  v14 = *(a2 + 2);
                  *(v13 + 2) = *(a2 + 6);
                  *v13 = v14;
                  v15 = WORD2(v21) + 3;
LABEL_18:
                  WORD2(v21) = v15;
                  return sub_100020078(65172, v20, v15, a3, sub_1001C62CC, v7, v8, v9);
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2287, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
              goto LABEL_35;
            }

            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v21) > WORD2(v21))
            {
              if (BYTE6(v21) == 2)
              {
                *(v20 + WORD2(v21)) = *(a2 + 4);
                v15 = WORD2(v21) + 1;
                goto LABEL_18;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2284, v19);
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
            goto LABEL_37;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2280, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_29;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2279, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1001EAFD4(__int16 a1, uint64_t a2, uint64_t (*a3)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v10 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          v11 = *a2;
          ++WORD2(v30);
          *(v29 + v10) = v11;
          v12 = *a2;
          if (*a2 <= 3)
          {
            if (v12 < 2)
            {
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v30) - WORD2(v30) > 1)
              {
                if (BYTE6(v30) == 2)
                {
                  *(v29 + WORD2(v30)) = a1;
                  v13 = WORD2(v30) + 2;
                  WORD2(v30) += 2;
                  if (HIBYTE(v30))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v30) > v13)
                  {
                    if (BYTE6(v30) == 2)
                    {
                      *(v29 + v13) = *(a2 + 4);
                      v14 = WORD2(v30) + 1;
LABEL_32:
                      WORD2(v30) = v14;
                      return sub_100020078(65171, v29, v14, a3, sub_1001C62CC, v7, v8, v9);
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2311, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_47;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2310, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_43;
            }

            if (v12 == 2)
            {
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v30) - WORD2(v30) > 2)
              {
                if (BYTE6(v30) == 2)
                {
                  v20 = v29 + WORD2(v30);
                  v21 = *(a2 + 4);
                  *(v20 + 2) = *(a2 + 6);
                  *v20 = v21;
                  v14 = WORD2(v30) + 3;
                  goto LABEL_32;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2314, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
              goto LABEL_57;
            }

LABEL_35:
            LOBYTE(v14) = BYTE4(v30);
            return sub_100020078(65171, v29, v14, a3, sub_1001C62CC, v7, v8, v9);
          }

          if (v12 != 4)
          {
            if (v12 != 5)
            {
              goto LABEL_35;
            }

            if (HIBYTE(v30))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            }

            else if (WORD1(v30) - WORD2(v30) > 1)
            {
              if (BYTE6(v30) == 2)
              {
                *(v29 + WORD2(v30)) = a1;
                v15 = WORD2(v30) + 2;
                WORD2(v30) += 2;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v30) - v15 > 14)
                {
                  if (BYTE6(v30) == 2)
                  {
                    v16 = v29 + v15;
                    v17 = *(a2 + 4);
                    v18 = *(a2 + 12);
                    v19 = *(a2 + 16);
                    *(v16 + 14) = *(a2 + 18);
                    *(v16 + 12) = v19;
                    *(v16 + 8) = v18;
                    *v16 = v17;
                    v14 = WORD2(v30) + 15;
                    goto LABEL_32;
                  }

                  v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2321, v28);
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= (15)";
                goto LABEL_63;
              }

              v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2320, v25);
            }

            v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_55;
          }

          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v30) - WORD2(v30) > 3)
          {
            if (BYTE6(v30) == 2)
            {
              *(v29 + WORD2(v30)) = *(a2 + 4);
              v14 = WORD2(v30) + 4;
              goto LABEL_32;
            }

            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2317, v27);
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
          goto LABEL_59;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2305, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1001EB444(char a1, char a2, char a3, char a4, uint64_t (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v23) > WORD2(v23))
          {
            if (BYTE6(v23) == 2)
            {
              *(v22 + WORD2(v23)) = a2;
              v15 = ++WORD2(v23);
              if (HIBYTE(v23))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v23) > v15)
              {
                if (BYTE6(v23) == 2)
                {
                  *(v22 + v15) = a3;
                  v16 = WORD2(v23);
                  v17 = ++WORD2(v23);
                  if (HIBYTE(v23))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v23) > v17)
                  {
                    if (BYTE6(v23) == 2)
                    {
                      WORD2(v23) = v16 + 2;
                      *(v22 + v17) = a4;
                      return sub_100020078(65196, v22, BYTE4(v23), a5, sub_1001C62CC, v11, v12, v13);
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2342, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2341, v20);
              }

              v20 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
              goto LABEL_27;
            }

            v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2340, v19);
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2339, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001EB6A8(char a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v27) > WORD2(v27))
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = a2;
              v17 = WORD2(v27);
              v18 = ++WORD2(v27);
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v27) > v18)
              {
                if (BYTE6(v27) == 2)
                {
                  WORD2(v27) = v17 + 2;
                  *(v26 + v18) = a3;
                  if (HIBYTE(v27))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else if (WORD1(v27) > WORD2(v27))
                  {
                    if (BYTE6(v27) == 2)
                    {
                      *(v26 + WORD2(v27)) = a4;
                      v19 = WORD2(v27);
                      v20 = ++WORD2(v27);
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else if (WORD1(v27) > v20)
                      {
                        if (BYTE6(v27) == 2)
                        {
                          WORD2(v27) = v19 + 2;
                          *(v26 + v20) = a5;
                          return sub_100020078(65328, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
                        }

                        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2360, v25);
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2359, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                  goto LABEL_34;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2358, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_30;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2357, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2356, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001EB988(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65174, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2375, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2374, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001EBB00(char a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t (*a8)())
{
  v34 = 0;
  v35 = 0;
  result = sub_10001FFD8(&v34);
  if (!result)
  {
    if (HIBYTE(v35))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v20 = WORD2(v35);
      if (WORD1(v35) > WORD2(v35))
      {
        if (BYTE6(v35) == 2)
        {
          ++WORD2(v35);
          *(v34 + v20) = a1;
          if (HIBYTE(v35))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v21 = WORD2(v35);
            if (WORD1(v35) > WORD2(v35))
            {
              if (BYTE6(v35) == 2)
              {
                ++WORD2(v35);
                *(v34 + v21) = a2;
                if (HIBYTE(v35))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else
                {
                  v22 = WORD2(v35);
                  if (WORD1(v35) > WORD2(v35))
                  {
                    if (BYTE6(v35) == 2)
                    {
                      ++WORD2(v35);
                      *(v34 + v22) = a3;
                      if (HIBYTE(v35))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                      }

                      else
                      {
                        v23 = WORD2(v35);
                        if (WORD1(v35) > WORD2(v35))
                        {
                          if (BYTE6(v35) == 2)
                          {
                            ++WORD2(v35);
                            *(v34 + v23) = a4;
                            if (HIBYTE(v35))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                            }

                            else
                            {
                              v24 = WORD2(v35);
                              if (WORD1(v35) > WORD2(v35))
                              {
                                if (BYTE6(v35) == 2)
                                {
                                  ++WORD2(v35);
                                  *(v34 + v24) = a5;
                                  if (HIBYTE(v35))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                  }

                                  else
                                  {
                                    v25 = WORD2(v35);
                                    if (WORD1(v35) > WORD2(v35))
                                    {
                                      if (BYTE6(v35) == 2)
                                      {
                                        ++WORD2(v35);
                                        *(v34 + v25) = a6;
                                        if (HIBYTE(v35))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                        }

                                        else
                                        {
                                          v26 = WORD2(v35);
                                          if (WORD1(v35) > WORD2(v35))
                                          {
                                            if (BYTE6(v35) == 2)
                                            {
                                              ++WORD2(v35);
                                              *(v34 + v26) = a7;
                                              return sub_100020078(65460, v34, BYTE4(v35), a8, sub_1001C62CC, v17, v18, v19);
                                            }

                                            v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2823, v33);
                                          }
                                        }

                                        v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_52;
                                      }

                                      v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2822, v32);
                                    }
                                  }

                                  v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_48;
                                }

                                v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2821, v31);
                              }
                            }

                            v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2820, v30);
                        }
                      }

                      v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2819, v29);
                  }
                }

                v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2818, v28);
            }
          }

          v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2817, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001EBED8(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65138, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2838, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EBFCC(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          return sub_100020078(65193, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2852, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EC0A4(__int16 a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 1)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        WORD2(v10) += 2;
        return sub_100020078(65340, v9, BYTE4(v10), a2, sub_1001F070C, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2894, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EC198(int a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 3)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        *(v9 + WORD2(v10) + 2) = BYTE2(a1);
        *(v9 + WORD2(v10) + 3) = HIBYTE(a1);
        WORD2(v10) += 4;
        return sub_100020078(65084, v9, BYTE4(v10), a2, sub_1001F0938, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2401, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EC2B4(char a1, char a2, __int16 a3, uint64_t (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v12 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v12) = a1;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v13 = WORD2(v18);
            if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                ++WORD2(v18);
                *(v17 + v13) = a2;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v18) - WORD2(v18) > 1)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + WORD2(v18)) = a3;
                    WORD2(v18) += 2;
                    return sub_100020078(64995, v17, BYTE4(v18), a4, sub_1001C62CC, v9, v10, v11);
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6255, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_24;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6254, v15);
            }
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6253, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001EC4A8(int a1, uint64_t (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else if (WORD1(v10) - WORD2(v10) > 3)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = a1;
        *(v9 + WORD2(v10) + 2) = BYTE2(a1);
        *(v9 + WORD2(v10) + 3) = HIBYTE(a1);
        WORD2(v10) += 4;
        return sub_100020078(65083, v9, BYTE4(v10), a2, sub_1001F09E0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2780, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EC5C4(char a1, uint64_t a2, __int16 a3, uint64_t (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v9 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v9) = a1;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v18) - WORD2(v18) > 5)
          {
            if (BYTE6(v18) == 2)
            {
              sub_1000075EC((v17 + WORD2(v18)), a2, 6uLL);
              v13 = WORD2(v18) + 6;
              WORD2(v18) += 6;
              if (HIBYTE(v18))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v18) - v13 > 1)
              {
                if (BYTE6(v18) == 2)
                {
                  *(v17 + v13) = a3;
                  *(v17 + WORD2(v18) + 1) = HIBYTE(a3);
                  WORD2(v18) += 2;
                  return sub_100020078(65087, v17, BYTE4(v18), a4, sub_1001C62CC, v10, v11, v12);
                }

                v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6290, v16);
              }

              v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_24;
            }

            v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6289, v15);
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6288, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001EC7CC()
{
  v4 = 0;
  v5 = 0;
  result = sub_10001FFD8(&v4);
  if (!result)
  {
    if (HIBYTE(v5))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v1 = WORD2(v5);
      if (WORD1(v5) - WORD2(v5) > 3)
      {
        if (BYTE6(v5) == 1)
        {
          WORD2(v5) += 4;
          if (WORD1(v5) - (v1 + 4) > 3)
          {
            WORD2(v5) = v1 + 8;
            if (WORD1(v5) - (v1 + 8) <= 31)
            {
              v2 = "ByteStream_NumReadBytesAvail(bs) >= (32)";
            }

            else
            {
              v2 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4269, v2);
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4268, "ByteStream_NumReadBytesAvail(bs) >= 4");
        }

        v3 = "(bs).__RWFlag == BYTESTREAM_READ";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4267, v3);
      }
    }

    v3 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001EC8C8(uint64_t (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65443, v6, BYTE4(v7), a1, sub_1001C6698, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001EC924(char a1, char a2, __int16 a3, unsigned int a4, unsigned int a5, __int16 a6, char a7, __int16 a8, unsigned int a9, uint64_t (*a10)())
{
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (!result)
  {
    if (HIBYTE(v40))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v22 = WORD2(v40);
      if (WORD1(v40) > WORD2(v40))
      {
        if (BYTE6(v40) == 2)
        {
          ++WORD2(v40);
          *(v39 + v22) = a1;
          if (HIBYTE(v40))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else
          {
            v23 = WORD2(v40);
            if (WORD1(v40) > WORD2(v40))
            {
              if (BYTE6(v40) == 2)
              {
                ++WORD2(v40);
                *(v39 + v23) = a2;
                if (HIBYTE(v40))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                }

                else if (WORD1(v40) - WORD2(v40) > 1)
                {
                  if (BYTE6(v40) == 2)
                  {
                    *(v39 + WORD2(v40)) = a3;
                    v24 = WORD2(v40) + 2;
                    WORD2(v40) += 2;
                    if (HIBYTE(v40))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                    }

                    else if (WORD1(v40) - v24 > 2)
                    {
                      if (BYTE6(v40) == 2)
                      {
                        if (!HIBYTE(a4))
                        {
                          *(v39 + v24) = a4;
                          *(v39 + WORD2(v40) + 1) = BYTE1(a4);
                          *(v39 + WORD2(v40) + 2) = BYTE2(a4);
                          v25 = WORD2(v40) + 3;
                          WORD2(v40) += 3;
                          if (HIBYTE(v40))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                          }

                          else if (WORD1(v40) - v25 > 2)
                          {
                            if (BYTE6(v40) == 2)
                            {
                              if (!HIBYTE(a5))
                              {
                                *(v39 + v25) = a5;
                                *(v39 + WORD2(v40) + 1) = BYTE1(a5);
                                *(v39 + WORD2(v40) + 2) = BYTE2(a5);
                                v26 = WORD2(v40) + 3;
                                WORD2(v40) += 3;
                                if (HIBYTE(v40))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                }

                                else if (WORD1(v40) - v26 > 1)
                                {
                                  if (BYTE6(v40) == 2)
                                  {
                                    *(v39 + v26) = a6;
                                    *(v39 + WORD2(v40) + 1) = HIBYTE(a6);
                                    v27 = WORD2(v40);
                                    v28 = WORD2(v40) + 2;
                                    WORD2(v40) += 2;
                                    if (HIBYTE(v40))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                    }

                                    else if (WORD1(v40) > v28)
                                    {
                                      if (BYTE6(v40) == 2)
                                      {
                                        WORD2(v40) = v27 + 3;
                                        *(v39 + v28) = a7;
                                        if (HIBYTE(v40))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                        }

                                        else if (WORD1(v40) - WORD2(v40) > 1)
                                        {
                                          if (BYTE6(v40) == 2)
                                          {
                                            *(v39 + WORD2(v40)) = a8;
                                            v29 = WORD2(v40) + 2;
                                            WORD2(v40) += 2;
                                            if (HIBYTE(v40))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                            }

                                            else if (WORD1(v40) - v29 > 2)
                                            {
                                              if (BYTE6(v40) == 2)
                                              {
                                                if (!HIBYTE(a9))
                                                {
                                                  *(v39 + v29) = a9;
                                                  *(v39 + WORD2(v40) + 1) = *(&a9 + 1);
                                                  WORD2(v40) += 3;
                                                  return sub_100020078(65167, v39, BYTE4(v40), a10, sub_1001C62CC, v19, v20, v21);
                                                }

                                                v38 = "(0 == ((subeventLenMax) & 0xFF000000))";
                                              }

                                              else
                                              {
                                                v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                              }

LABEL_72:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6351, v38);
                                            }

                                            v38 = "ByteStream_NumReadBytesAvail(bs) >= 3";
                                            goto LABEL_72;
                                          }

                                          v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6350, v37);
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                        goto LABEL_67;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6349, v36);
                                    }

                                    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_63;
                                  }

                                  v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6348, v35);
                                }

                                v35 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                goto LABEL_59;
                              }

                              v34 = "(0 == ((offsetMax) & 0xFF000000))";
                            }

                            else
                            {
                              v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                            }

LABEL_55:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6347, v34);
                          }

                          v34 = "ByteStream_NumReadBytesAvail(bs) >= 3";
                          goto LABEL_55;
                        }

                        v33 = "(0 == ((offsetMin) & 0xFF000000))";
                      }

                      else
                      {
                        v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

LABEL_50:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6346, v33);
                    }

                    v33 = "ByteStream_NumReadBytesAvail(bs) >= 3";
                    goto LABEL_50;
                  }

                  v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6345, v32);
                }

                v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_45;
              }

              v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6344, v31);
            }
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_41;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6343, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1001ECF28(__int16 a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
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
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(64885, v14, BYTE4(v15), a3, sub_1001C69E8, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2968, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2967, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001ED0A0(unsigned __int16 *a1, char a2, char a3, char a4, int a5, const void *a6, uint64_t (*a7)())
{
  v41 = 0;
  v42 = 0;
  v13 = sub_100255698(a1);
  if (v13)
  {
    v14 = v13;
    result = sub_10001FFD8(&v41);
    if (result)
    {
      return result;
    }

    if (HIBYTE(v42))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v16 = WORD2(v42);
      if (WORD1(v42) > WORD2(v42))
      {
        if (BYTE6(v42) == 2)
        {
          ++WORD2(v42);
          *(v41 + v16) = a2;
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
          }

          else if (WORD1(v42) - WORD2(v42) > 1)
          {
            if (BYTE6(v42) == 2)
            {
              *(v41 + WORD2(v42)) = v14;
              v17 = WORD2(v42);
              v18 = WORD2(v42) + 2;
              WORD2(v42) += 2;
              if (HIBYTE(v42))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
              }

              else if (WORD1(v42) > v18)
              {
                if (BYTE6(v42) == 2)
                {
                  WORD2(v42) = v17 + 3;
                  *(v41 + v18) = a3;
                  if (HIBYTE(v42))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                  }

                  else
                  {
                    v19 = WORD2(v42);
                    if (WORD1(v42) > WORD2(v42))
                    {
                      if (BYTE6(v42) == 2)
                      {
                        ++WORD2(v42);
                        *(v41 + v19) = a4;
                        if (HIBYTE(v42))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                        }

                        else
                        {
                          v20 = WORD2(v42);
                          if (WORD1(v42) > WORD2(v42))
                          {
                            if (BYTE6(v42) == 2)
                            {
                              ++WORD2(v42);
                              *(v41 + v20) = a5;
                              v21 = v41;
                              v22 = WORD2(v42);
                              if (HIBYTE(v42))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
                                v23 = 0;
                              }

                              else
                              {
                                v23 = WORD1(v42) - WORD2(v42);
                              }

                              if (v23 < a5)
                              {
                                v40 = "ByteStream_NumReadBytesAvail(bs) >= (lenOptFields)";
                              }

                              else
                              {
                                if (BYTE6(v42) == 2)
                                {
                                  memmove((v21 + v22), a6, a5);
                                  WORD2(v42) += a5;
                                  return sub_100020078(65059, v41, BYTE4(v42), a7, sub_1001C62CC, v32, v33, v34);
                                }

                                v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                              }

                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6112, v40);
                            }

                            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6111, v39);
                          }
                        }

                        v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_48;
                      }

                      v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6110, v38);
                    }
                  }

                  v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_44;
                }

                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6109, v37);
              }

              v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_40;
            }

            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6108, v36);
          }

          v36 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_36;
        }

        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6107, v35);
      }
    }

    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_32;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid connHandle: already disconnected", v24, v25, v26, v27, v28, v29, v30, v41);
    v31 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return 601;
}

void sub_1001ED484(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if (v17 - v18 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 4;
          if (v17 - (v18 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2418, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v15 = *(v19 + (v18 + 4));
          *(a3 + 6) = v18 + 8;
          if (v17 - (v18 + 8) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2419, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v13 = *(v19 + (v18 + 8));
          *(a3 + 6) = v18 + 12;
          if (v17 - (v18 + 12) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2420, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = *(v19 + (v18 + 12));
          *(a3 + 6) = v18 + 16;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v20 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2417, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ReadIpaEpaCount VSC failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v16, v15, v13, v14);
  }
}

void sub_1001ED640(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v14 = *(a3 + 5);
      v15 = *(a3 + 6);
      if (v14 > v15)
      {
        if (*(a3 + 14) == 1)
        {
          *(a3 + 6) = v15 + 1;
          if (v14 <= v15 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 77, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v16 = *a3;
          *(a3 + 6) = v15 + 2;
          v13 = *(v16 + v15 + 1);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 76, v17);
      }
    }

    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d, Byte 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

void sub_1001ED778(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %d, Byte 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_14;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_14:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 58, v16);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (a2)
  {
LABEL_6:
    a2(a1, v13);
  }
}

uint64_t sub_1001ED888(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, void, void, uint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, void, void, void, void, void, void, void), uint64_t *a3)
{
  if (a1)
  {
    result = sub_10000C240();
    if (!result || (sub_10000AF54("EnhancedProfilingStats VSC failed with status %!", v6, v7, v8, v9, v10, v11, v12, a1), v13 = sub_10000C050(0x54u), result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR), !result))
    {
      v65 = 0;
      v66 = 0;
      v14 = 0;
      v64 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      goto LABEL_45;
    }

    sub_10080F604();
LABEL_44:
    v65 = 0;
    v66 = 0;
    v14 = 0;
    v64 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    result = 0;
LABEL_45:
    v54 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_44;
  }

  v37 = *(a3 + 5);
  v38 = *(a3 + 6);
  if (((v37 - v38) & 0x1FFFE) != 0x9C)
  {
    goto LABEL_44;
  }

  if (*(a3 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 214, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v39 = *a3;
  v63 = *(*a3 + v38);
  *(a3 + 6) = v38 + 4;
  if (v37 - (v38 + 4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 215, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v62 = *(v39 + (v38 + 4));
  *(a3 + 6) = v38 + 8;
  if (v37 - (v38 + 8) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 216, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v61 = *(v39 + (v38 + 8));
  *(a3 + 6) = v38 + 12;
  if (v37 - (v38 + 12) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 217, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v40 = *(v39 + (v38 + 12));
  *(a3 + 6) = v38 + 16;
  if (v37 - (v38 + 16) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 218, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v41 = *(v39 + (v38 + 16));
  *(a3 + 6) = v38 + 20;
  if (v37 - (v38 + 20) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 219, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v42 = *(v39 + (v38 + 20));
  *(a3 + 6) = v38 + 24;
  if (v37 - (v38 + 24) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 220, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v43 = *(v39 + (v38 + 24));
  *(a3 + 6) = v38 + 28;
  if (v37 - (v38 + 28) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 221, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v44 = *(v39 + (v38 + 28));
  *(a3 + 6) = v38 + 32;
  if (v37 - (v38 + 32) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 222, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v45 = *(v39 + (v38 + 32));
  *(a3 + 6) = v38 + 36;
  if (v37 - (v38 + 36) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 224, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v32 = *(v39 + (v38 + 36));
  *(a3 + 6) = v38 + 40;
  if (v37 - (v38 + 40) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 225, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v31 = *(v39 + (v38 + 40));
  *(a3 + 6) = v38 + 44;
  if (v37 - (v38 + 44) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 226, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v30 = *(v39 + (v38 + 44));
  *(a3 + 6) = v38 + 48;
  if (v37 - (v38 + 48) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 227, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v46 = *(v39 + (v38 + 48));
  *(a3 + 6) = v38 + 52;
  if (v37 - (v38 + 52) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 228, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v28 = *(v39 + (v38 + 52));
  *(a3 + 6) = v38 + 56;
  if (v37 - (v38 + 56) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 229, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v27 = *(v39 + (v38 + 56));
  *(a3 + 6) = v38 + 60;
  if (v37 - (v38 + 60) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 230, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v47 = *(v39 + (v38 + 60));
  *(a3 + 6) = v38 + 64;
  if (v37 - (v38 + 64) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 231, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v25 = *(v39 + (v38 + 64));
  *(a3 + 6) = v38 + 68;
  if (v37 - (v38 + 68) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 232, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v48 = *(v39 + (v38 + 68));
  *(a3 + 6) = v38 + 72;
  if (v37 - (v38 + 72) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 233, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v49 = *(v39 + (v38 + 72));
  *(a3 + 6) = v38 + 76;
  if (v37 - (v38 + 76) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 234, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v50 = *(v39 + (v38 + 76));
  *(a3 + 6) = v38 + 80;
  if (v37 - (v38 + 80) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 235, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v14 = *(v39 + (v38 + 80));
  *(a3 + 6) = v38 + 84;
  if (v37 - (v38 + 84) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 236, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v51 = *(v39 + (v38 + 84));
  *(a3 + 6) = v38 + 88;
  if (v37 - (v38 + 88) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 237, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v52 = *(v39 + (v38 + 88));
  *(a3 + 6) = v38 + 92;
  if (v37 - (v38 + 92) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 238, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v15 = *(v39 + (v38 + 92));
  *(a3 + 6) = v38 + 96;
  if (v37 - (v38 + 96) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 239, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v59 = v41;
  v60 = v40;
  v53 = *(v39 + (v38 + 96));
  *(a3 + 6) = v38 + 100;
  if (v37 - (v38 + 100) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 240, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v17 = *(v39 + (v38 + 100));
  *(a3 + 6) = v38 + 104;
  if (v37 - (v38 + 104) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 241, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v64 = v52;
  HIDWORD(v65) = v51;
  v18 = *(v39 + (v38 + 104));
  *(a3 + 6) = v38 + 108;
  if (v37 - (v38 + 108) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 242, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v16 = v53;
  v26 = v47;
  LODWORD(v65) = v50;
  v66 = __PAIR64__(v48, v49);
  v19 = *(v39 + (v38 + 108));
  *(a3 + 6) = v38 + 112;
  if (v37 - (v38 + 112) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 243, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v29 = v46;
  v33 = v45;
  v35 = v43;
  v36 = v42;
  result = v59;
  v54 = v60;
  v20 = *(v39 + (v38 + 112));
  *(a3 + 6) = v38 + 116;
  if (v37 - (v38 + 116) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 244, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v34 = v44;
  v21 = *(v39 + (v38 + 116));
  *(a3 + 6) = v38 + 120;
  if (v37 - (v38 + 120) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 245, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v22 = *(v39 + (v38 + 120));
  *(a3 + 6) = v38 + 124;
  if (v37 - (v38 + 124) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 246, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v23 = *(v39 + (v38 + 124));
  *(a3 + 6) = v38 + 128;
  if (v37 - (v38 + 128) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 247, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v24 = *(v39 + (v38 + 128));
  *(a3 + 6) = v38 + 132;
  v56 = v62;
  v55 = v63;
  v57 = v61;
  if (a2)
  {
LABEL_46:
    HIDWORD(v58) = v55;
    LODWORD(v58) = 0;
    return a2(a1, 0, 0, 0, 0, 0, 0, 0, 0, v58, __PAIR64__(v57, v56), __PAIR64__(result, v54), __PAIR64__(v35, v36), __PAIR64__(v33, v34), __PAIR64__(v31, v32), __PAIR64__(v29, v30), __PAIR64__(v27, v28), __PAIR64__(v25, v26), __PAIR64__(v66, HIDWORD(v66)), __PAIR64__(v14, v65), __PAIR64__(v64, HIDWORD(v65)), __PAIR64__(v16, v15), __PAIR64__(v18, v17), __PAIR64__(v20, v19), __PAIR64__(v22, v21), __PAIR64__(v24, v23), 0, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

void sub_1001EE1E0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if (v15 - v16 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v18 = (*a3 + v16);
          v19 = *v18;
          v20 = v18[1];
          *(a3 + 6) = v16 + 2;
          if (v15 - (v16 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4568, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v14 = v19 | (v20 << 8);
          v13 = *(v17 + (v16 + 2));
          *(a3 + 6) = v16 + 4;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4567, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d, ConnectionHandle 0x%x, rssi 0x%x, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v14, v13);
  }
}

void sub_1001EE33C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_13;
  }

  v3 = *(a3 + 6);
  if (*(a3 + 5) <= v3)
  {
LABEL_13:
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_15;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 135, v16);
  }

  v6 = *a3;
  *(a3 + 6) = v3 + 1;
  v7 = *(v6 + v3);
  if (!a1 || !sub_10000C240() || (sub_10000AF54("status %!", v8, v9, v10, v11, v12, v13, v14, a1), v15 = sub_10000C050(0x54u), !os_log_type_enabled(v15, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_8:
    a2(a1, v7);
  }
}

void sub_1001EE444(uint64_t a1, void (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v28 = *(a3 + 5);
      v29 = *(a3 + 6);
      if (v28 - v29 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v30 = *a3;
          v26 = *(*a3 + v29);
          *(a3 + 6) = v29 + 4;
          if (v28 - (v29 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4039, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v25 = *(v30 + (v29 + 4));
          *(a3 + 6) = v29 + 8;
          if (v28 - (v29 + 8) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4040, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v13 = *(v30 + (v29 + 8));
          *(a3 + 6) = v29 + 12;
          if (v28 - (v29 + 12) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4041, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = *(v30 + (v29 + 12));
          *(a3 + 6) = v29 + 16;
          if (v28 - (v29 + 16) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4042, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v15 = *(v30 + (v29 + 16));
          *(a3 + 6) = v29 + 20;
          if (v28 - (v29 + 20) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4043, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v16 = *(v30 + (v29 + 20));
          *(a3 + 6) = v29 + 24;
          if (v28 - (v29 + 24) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4044, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v18 = *(v30 + (v29 + 24));
          *(a3 + 6) = v29 + 28;
          if (v28 - (v29 + 28) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4045, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v17 = *(v30 + (v29 + 28));
          *(a3 + 6) = v29 + 32;
          if (v28 - (v29 + 32) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4046, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v19 = *(v30 + (v29 + 32));
          *(a3 + 6) = v29 + 36;
          if (v28 - (v29 + 36) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4047, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v20 = *(v30 + (v29 + 36));
          *(a3 + 6) = v29 + 40;
          if (v28 - (v29 + 40) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4048, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v21 = *(v30 + (v29 + 40));
          *(a3 + 6) = v29 + 44;
          if (v28 - (v29 + 44) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4049, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v22 = *(v30 + (v29 + 44));
          *(a3 + 6) = v29 + 48;
          if (v28 - (v29 + 48) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4050, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v23 = *(v30 + (v29 + 48));
          *(a3 + 6) = v29 + 52;
          if (v28 - (v29 + 52) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4051, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v24 = *(v30 + (v29 + 52));
          *(a3 + 6) = v29 + 56;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v31 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_29:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4038, v31);
      }
    }

    v31 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_29;
  }

  if (sub_10000C240())
  {
    v38 = a2;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    sub_10000AF54("status %d, durationTotal %d, durationActive %d, durationIdle %d, durationSleep %d disableCounter %d, iPATxBT %d, ePATxBT %d, iPATxLE %d, ePATxLE %d, connectedRxBT %d, connectedRxLE %d, scanRxBT %d scanRxLE %d, totalPHYCal %d, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2)
  {
LABEL_6:
    LODWORD(v32) = v24;
    a2(a1, v26, v25, v13, v14, v15, v16, v17, __PAIR64__(v19, v18), __PAIR64__(v21, v20), __PAIR64__(v23, v22), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
  }
}

void sub_1001EE864(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if (v17 - v18 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 4;
          if (v17 - (v18 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4095, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v15 = *(v19 + (v18 + 4));
          *(a3 + 6) = v18 + 8;
          if (v17 - (v18 + 8) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4096, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v13 = *(v19 + (v18 + 8));
          *(a3 + 6) = v18 + 12;
          if (v17 - (v18 + 12) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4097, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = *(v19 + (v18 + 12));
          *(a3 + 6) = v18 + 16;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v20 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4094, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %d, total %d, successful %d, downgraded %d, involuntaryDowngraded %d, hlCb 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v16, v15, v13, v14);
  }
}

void sub_1001EEA30(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v15 = *(a3 + 5);
      v16 = *(a3 + 6);
      if ((v15 - v16) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v17 = *a3;
          v18 = (*a3 + v16);
          v19 = *v18;
          v20 = v18[1];
          *(a3 + 6) = v16 + 2;
          if (v15 <= (v16 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5353, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v14 = v19 | (v20 << 8);
          *(a3 + 6) = v16 + 3;
          v13 = *(v17 + (v16 + 2));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5352, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, 255, v14, v13);
  }
}

void sub_1001EEB88(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufConfig status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4714, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 1)
  {
    v14 = 1;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufConfig sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EECFC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufReadCommand status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 255;
    v17 = 255;
    goto LABEL_16;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_24;
  }

  v18 = *(a3 + 5);
  v19 = *(a3 + 6);
  if (v18 <= v19)
  {
LABEL_24:
    v29 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_26;
  }

  if (*(a3 + 14) != 1)
  {
    v29 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4753, v29);
  }

  v20 = *a3;
  *(a3 + 6) = v19 + 1;
  if (v18 <= (v19 + 1))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4754, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v16 = *(v20 + v19);
  *(a3 + 6) = v19 + 2;
  if (v18 <= (v19 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4755, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v13 = *(v20 + v19 + 1);
  *(a3 + 6) = v19 + 3;
  if ((v18 - (v19 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4756, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v14 = *(v20 + v19 + 2);
  v15 = *(v20 + v19 + 3);
  *(a3 + 6) = v19 + 5;
  if (v16 == 2)
  {
    v17 = 2;
    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  v17 = v16;
LABEL_16:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufReadCommand sub-opcode incorrect: %d, %!", v21, v22, v23, v24, v25, v26, v27, v16), v28 = sub_10000C050(0x54u), !os_log_type_enabled(v28, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_19:
    a2(a1, v17, v13, v14, v15);
  }
}

void sub_1001EEF20(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchTableConfig status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4789, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 3)
  {
    v14 = 3;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchTableConfig sub-opcode incorrect %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EF094(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchTableConfigV2 status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4828, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 10)
  {
    v14 = 10;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchTableConfigV2 sub-opcode incorrect %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EF208(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchTableConfigV3 status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4882, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 10)
  {
    v14 = 10;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchTableConfigV3 sub-opcode incorrect %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EF37C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufMatchControl status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5075, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 7)
  {
    v14 = 7;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufMatchControl sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EF4F0(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufRSSIBinsThreshold status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5473, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 9)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufRSSIBinsThreshold sub-opcode incorrect: %d, %!", v16, v17, v18, v19, v20, v21, v22, v13), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1);
  }
}

void sub_1001EF64C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    v15 = 255;
    goto LABEL_12;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_20;
  }

  v16 = *(a3 + 5);
  v17 = *(a3 + 6);
  if (v16 <= v17)
  {
LABEL_20:
    v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_22;
  }

  if (*(a3 + 14) != 1)
  {
    v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5547, v27);
  }

  v18 = *a3;
  *(a3 + 6) = v17 + 1;
  if (v16 <= v17 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5548, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v13 = *(v18 + v17);
  *(a3 + 6) = v17 + 2;
  if (v16 <= v17 + 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5549, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v14 = *(v18 + v17 + 1);
  *(a3 + 6) = v17 + 3;
  v15 = *(v18 + v17 + 2);
  if (v13 == 12)
  {
LABEL_14:
    if (!a2)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (!sub_10000C240())
  {
    goto LABEL_14;
  }

  sub_10000AF54("SubOpcode Incorrect %!", v19, v20, v21, v22, v23, v24, v25, a1);
  v26 = sub_10000C050(0x54u);
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_15:
    a2(a1, v13, v14, v15, 255);
  }
}

void sub_1001EF820(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufConfigTimeSlice status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_18;
  }

  v14 = *(a3 + 6);
  if (*(a3 + 5) <= v14)
  {
LABEL_18:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a3 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5508, v24);
  }

  v15 = *a3;
  *(a3 + 6) = v14 + 1;
  v13 = *(v15 + v14);
  if (v13 == 8)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufConfigTimeSlice sub-opcode incorrect: %d, %!", v16, v17, v18, v19, v20, v21, v22, v13), v23 = sub_10000C050(0x54u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
  {
LABEL_12:
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_13:
    a2(a1);
  }
}

void sub_1001EF97C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchTableParams status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4956, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 4)
  {
    v14 = 4;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchTableParams sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EFAF0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchBufferConfig status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5003, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 5)
  {
    v14 = 5;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchBufferConfig sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001EFC64(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchBufferRead status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 255;
    v15 = 255;
    goto LABEL_14;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_22;
  }

  v16 = *(a3 + 5);
  v17 = *(a3 + 6);
  if (v16 <= v17)
  {
LABEL_22:
    v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_24;
  }

  if (*(a3 + 14) != 1)
  {
    v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_24:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5041, v27);
  }

  v18 = *a3;
  *(a3 + 6) = v17 + 1;
  if (v16 <= v17 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5042, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v14 = *(v18 + v17);
  *(a3 + 6) = v17 + 2;
  v13 = *(v18 + v17 + 1);
  if (v14 == 6)
  {
    v15 = 6;
    if (!a2)
    {
      return;
    }

    goto LABEL_17;
  }

  v15 = v14;
LABEL_14:
  if (!sub_10000C240() || (sub_10000AF54("MatchBufferRead sub-opcode incorrect: %d, %!", v19, v20, v21, v22, v23, v24, v25, v14), v26 = sub_10000C050(0x54u), !os_log_type_enabled(v26, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_17;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_17:
    a2(a1, v15, v13);
  }
}

void sub_1001EFE14(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if (v17 > v18)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          *(a3 + 6) = v18 + 1;
          v13 = *(v19 + v18);
          if ((v17 - (v18 + 1)) <= 1)
          {
            *(a3 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
            v14 = 0;
            v21 = 0;
          }

          else
          {
            v20 = v18 + 3;
            v14 = *(v19 + v18 + 1);
            *(a3 + 6) = v20;
            v21 = (v17 - v20);
          }

          if (v21 != v14)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2694, "length == remaining");
          }

          v15 = *a3 + *(a3 + 6);
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v22 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2691, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v13, v14, v15);
  }
}

void sub_1001EFFAC(uint64_t a1, void (*a2)(uint64_t, void, void, void, void, void, void, uint64_t, int), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v21 = *(a3 + 5);
      v22 = *(a3 + 6);
      if (v21 - v22 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v23 = *a3;
          v20 = *(*a3 + v22);
          *(a3 + 6) = v22 + 2;
          if (v21 - (v22 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6136, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v19 = *(v23 + (v22 + 2));
          *(a3 + 6) = v22 + 4;
          if (v21 - (v22 + 4) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6137, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v13 = *(v23 + (v22 + 4));
          *(a3 + 6) = v22 + 6;
          if (v21 - (v22 + 6) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6138, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v14 = *(v23 + (v22 + 6));
          *(a3 + 6) = v22 + 8;
          if (v21 - (v22 + 8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6139, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v15 = *(v23 + (v22 + 8));
          *(a3 + 6) = v22 + 10;
          if (v21 - (v22 + 10) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6140, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v16 = *(v23 + (v22 + 10));
          *(a3 + 6) = v22 + 12;
          if (v21 - (v22 + 12) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6141, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v24 = (v23 + (v22 + 12));
          v25 = *v24;
          v26 = v24[1];
          *(a3 + 6) = v22 + 14;
          if (v21 - (v22 + 14) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6142, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v17 = v25 | (v26 << 8);
          v18 = *(v23 + (v22 + 14));
          *(a3 + 6) = v22 + 16;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v27 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6135, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_23;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a2)
  {
LABEL_6:
    LOWORD(v28) = v18;
    a2(a1, v20, v19, v13, v14, v15, v16, v17, v28);
  }
}

void sub_1001F0268(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AdvBufConfigWithCriteria status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5596, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 13)
  {
    v14 = 13;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("AdvBufConfigWithCriteria sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001F03DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MatchTableParamsExtended status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 255;
    v14 = 255;
    goto LABEL_13;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    goto LABEL_21;
  }

  v15 = *(a3 + 6);
  if (*(a3 + 5) <= v15)
  {
LABEL_21:
    v25 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_23;
  }

  if (*(a3 + 14) != 1)
  {
    v25 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5638, v25);
  }

  v16 = *a3;
  *(a3 + 6) = v15 + 1;
  v13 = *(v16 + v15);
  if (v13 == 11)
  {
    v14 = 11;
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = *(v16 + v15);
LABEL_13:
  if (!sub_10000C240() || (sub_10000AF54("MatchTableParamsExtended sub-opcode incorrect: %d, %!", v17, v18, v19, v20, v21, v22, v23, v13), v24 = sub_10000C050(0x54u), !os_log_type_enabled(v24, OS_LOG_TYPE_ERROR)))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_10080F604();
  if (a2)
  {
LABEL_16:
    a2(a1, v14);
  }
}

void sub_1001F0550(uint64_t a1, void (*a2)(uint64_t, void, void, void, void), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if ((v17 - v18) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 2;
          if (v17 <= (v18 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2202, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v18 + 3;
          if (v17 <= (v18 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2203, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v19 + (v18 + 2));
          *(a3 + 6) = v18 + 4;
          if (v17 <= (v18 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2204, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v13 = *(v19 + (v18 + 3));
          *(a3 + 6) = v18 + 5;
          v14 = *(v19 + (v18 + 4));
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v20 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2201, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ReadRxChainsRSSIEvent VSC failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v16, v15, v13, v14);
  }
}

void sub_1001F070C(uint64_t a1, void (*a2)(uint64_t, void, void, void, void, uint64_t, uint64_t), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c");
    }

    else
    {
      v19 = *(a3 + 5);
      v20 = *(a3 + 6);
      if ((v19 - v20) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v21 = *a3;
          v18 = *(*a3 + v20);
          *(a3 + 6) = v20 + 2;
          if (v19 <= (v20 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2876, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v20 + 3;
          if (v19 <= (v20 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2877, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v17 = *(v21 + (v20 + 2));
          *(a3 + 6) = v20 + 4;
          if (v19 <= (v20 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2878, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v13 = *(v21 + (v20 + 3));
          *(a3 + 6) = v20 + 5;
          if ((v19 - (v20 + 5)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2879, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v14 = *(v21 + (v20 + 4));
          v15 = *(v21 + (v20 + 5));
          *(a3 + 6) = v20 + 9;
          if ((v19 - (v20 + 9)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2880, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v16 = *(v21 + (v20 + 9));
          *(a3 + 6) = v20 + 13;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v22 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2875, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_21;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ReadRxChainsRSSIEvent VSC failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a2)
  {
LABEL_6:
    a2(a1, v18, v17, v13, v14, v15, v16);
  }
}

void sub_1001F0938(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed with status %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a2)
  {
    v13 = *a3 + *(a3 + 12);

    a2(0, v13);
  }
}