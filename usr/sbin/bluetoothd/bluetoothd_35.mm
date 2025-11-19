uint64_t sub_1002633E8(_WORD *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t (*a10)())
{
  v34 = 0;
  v35 = 0;
  result = sub_10001FFD8(&v34);
  if (a3)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  if (a4)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  if (a6)
  {
    v25 = 16;
  }

  else
  {
    v25 = 0;
  }

  if (a7)
  {
    v26 = 64;
  }

  else
  {
    v26 = 0;
  }

  if (a8)
  {
    v27 = 0x80;
  }

  else
  {
    v27 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v35))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v35) - WORD2(v35) > 1)
    {
      if (BYTE6(v35) == 2)
      {
        *(v34 + WORD2(v35)) = *a1;
        v28 = WORD2(v35);
        v29 = WORD2(v35) + 2;
        WORD2(v35) += 2;
        if (HIBYTE(v35))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v35) > v29)
        {
          if (BYTE6(v35) == 2)
          {
            WORD2(v35) = v28 + 3;
            *(v34 + v29) = v22 | a2 | v23 | v24 | v25 | v26 | v27;
            if (HIBYTE(v35))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v30 = WORD2(v35);
              if (WORD1(v35) > WORD2(v35))
              {
                if (BYTE6(v35) == 2)
                {
                  ++WORD2(v35);
                  *(v34 + v30) = a9;
                  return sub_100020078(477, v34, BYTE4(v35), a10, sub_100022AD0, v19, v20, v21);
                }

                v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4419, v33);
              }
            }

            v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_42;
          }

          v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4418, v32);
        }

        v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_38;
      }

      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4417, v31);
    }

    v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100263664(int a1, uint64_t (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  v16 = 0;
  v15 = 0;
  if (!result)
  {
    if (a1)
    {
      if (HIBYTE(v14))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else if (WORD1(v14) - WORD2(v14) > 11)
      {
        if (BYTE6(v14) == 2)
        {
          v8 = &qword_1008A45AC;
LABEL_11:
          v9 = v13 + WORD2(v14);
          v10 = *v8;
          *(v9 + 8) = *(v8 + 2);
          *v9 = v10;
          WORD2(v14) += 12;
          return sub_100020078(39, v13, BYTE4(v14), a2, sub_100022AD0, v5, v6, v7);
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4436, v11);
      }

      v11 = "ByteStream_NumReadBytesAvail(bs) >= (12)";
      goto LABEL_16;
    }

    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v14) - WORD2(v14) > 11)
    {
      if (BYTE6(v14) == 2)
      {
        v8 = &v15;
        goto LABEL_11;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4438, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= (12)";
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100263800(int a1, uint64_t (*a2)())
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
          *(v10 + v8) = a1 != 0;
          return sub_100020078(385, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4453, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002638E0(char *a1, uint64_t (*a2)())
{
  v40 = 0;
  v41 = 0;
  result = sub_10001FFD8(&v40);
  if (!result)
  {
    if (HIBYTE(v41))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v41);
      if (WORD1(v41) > WORD2(v41))
      {
        if (BYTE6(v41) == 2)
        {
          v9 = *a1;
          ++WORD2(v41);
          *(v40 + v8) = v9;
          if (HIBYTE(v41))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v41) - WORD2(v41) > 1)
          {
            if (BYTE6(v41) == 2)
            {
              *(v40 + WORD2(v41)) = *(a1 + 1);
              v10 = WORD2(v41);
              LOWORD(v11) = WORD2(v41) + 2;
              WORD2(v41) += 2;
              if (!*a1)
              {
                return sub_100020078(289, v40, v11, a2, sub_100083FE4, v5, v6, v7);
              }

              if (HIBYTE(v41))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v41) > v11)
              {
                if (BYTE6(v41) == 2)
                {
                  v12 = a1[4];
                  WORD2(v41) = v10 + 3;
                  *(v40 + v11) = v12;
                  if (HIBYTE(v41))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v13 = WORD2(v41);
                    if (WORD1(v41) > WORD2(v41))
                    {
                      if (BYTE6(v41) == 2)
                      {
                        v14 = a1[5];
                        ++WORD2(v41);
                        *(v40 + v13) = v14;
                        if (HIBYTE(v41))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v15 = WORD2(v41);
                          if (WORD1(v41) > WORD2(v41))
                          {
                            if (BYTE6(v41) == 2)
                            {
                              v16 = a1[6];
                              ++WORD2(v41);
                              *(v40 + v15) = v16;
                              if (HIBYTE(v41))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v41) - WORD2(v41) > 1)
                              {
                                if (BYTE6(v41) == 2)
                                {
                                  *(v40 + WORD2(v41)) = *(a1 + 4);
                                  v17 = WORD2(v41) + 2;
                                  WORD2(v41) += 2;
                                  if (HIBYTE(v41))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v41) - v17 > 1)
                                  {
                                    if (BYTE6(v41) == 2)
                                    {
                                      *(v40 + v17) = a1[10];
                                      *(v40 + WORD2(v41) + 1) = a1[11];
                                      v18 = WORD2(v41);
                                      v19 = WORD2(v41) + 2;
                                      WORD2(v41) += 2;
                                      if (HIBYTE(v41))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v41) > v19)
                                      {
                                        if (BYTE6(v41) == 2)
                                        {
                                          v20 = a1[12];
                                          WORD2(v41) = v18 + 3;
                                          *(v40 + v19) = v20;
                                          if (HIBYTE(v41))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else
                                          {
                                            v21 = WORD2(v41);
                                            if (WORD1(v41) > WORD2(v41))
                                            {
                                              if (BYTE6(v41) == 2)
                                              {
                                                v22 = a1[13];
                                                ++WORD2(v41);
                                                *(v40 + v21) = v22;
                                                if (HIBYTE(v41))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                }

                                                else
                                                {
                                                  v23 = WORD2(v41);
                                                  if (WORD1(v41) > WORD2(v41))
                                                  {
                                                    if (BYTE6(v41) == 2)
                                                    {
                                                      v24 = a1[14];
                                                      ++WORD2(v41);
                                                      *(v40 + v23) = v24;
                                                      if (HIBYTE(v41))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                      }

                                                      else
                                                      {
                                                        v25 = WORD2(v41);
                                                        if (WORD1(v41) > WORD2(v41))
                                                        {
                                                          if (BYTE6(v41) == 2)
                                                          {
                                                            v26 = a1[15];
                                                            ++WORD2(v41);
                                                            *(v40 + v25) = v26;
                                                            if (HIBYTE(v41))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                            }

                                                            else
                                                            {
                                                              v11 = WORD2(v41);
                                                              if (WORD1(v41) > WORD2(v41))
                                                              {
                                                                if (BYTE6(v41) == 2)
                                                                {
                                                                  v27 = a1[16];
                                                                  ++WORD2(v41);
                                                                  *(v40 + v11) = v27;
                                                                  LOBYTE(v11) = BYTE4(v41);
                                                                  return sub_100020078(289, v40, v11, a2, sub_100083FE4, v5, v6, v7);
                                                                }

                                                                v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4481, v39);
                                                              }
                                                            }

                                                            v39 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                            goto LABEL_89;
                                                          }

                                                          v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4480, v38);
                                                        }
                                                      }

                                                      v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_85;
                                                    }

                                                    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4479, v37);
                                                  }
                                                }

                                                v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_81;
                                              }

                                              v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4478, v36);
                                            }
                                          }

                                          v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_77;
                                        }

                                        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4477, v35);
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                      goto LABEL_73;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4476, v34);
                                  }

                                  v34 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_69;
                                }

                                v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4475, v33);
                              }

                              v33 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                              goto LABEL_65;
                            }

                            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4474, v32);
                          }
                        }

                        v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_61;
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4473, v31);
                    }
                  }

                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_57;
                }

                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4472, v30);
              }

              v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_53;
            }

            v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4469, v29);
          }

          v29 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_49;
        }

        v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4468, v28);
      }
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_45;
  }

  return result;
}

uint64_t *sub_100263F70(uint64_t *result, char *a2)
{
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_18;
  }

  v2 = *(result + 6);
  if (*(result + 5) <= v2)
  {
LABEL_18:
    v13 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
    goto LABEL_20;
  }

  if (*(result + 14) != 2)
  {
    v13 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4493, v13);
  }

  v3 = *a2;
  v4 = *result;
  *(result + 6) = v2 + 1;
  *(v4 + v2) = v3;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_22;
  }

  v5 = *(result + 6);
  if (*(result + 5) <= v5)
  {
LABEL_22:
    v14 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
    goto LABEL_24;
  }

  if (*(result + 14) != 2)
  {
    v14 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4494, v14);
  }

  v6 = a2[1];
  v7 = *result;
  *(result + 6) = v5 + 1;
  *(v7 + v5) = v6;
  for (i = 2; i != 12; ++i)
  {
    if (*(result + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_15:
      v12 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4496, v12);
    }

    v9 = *(result + 6);
    if (*(result + 5) <= v9)
    {
      goto LABEL_15;
    }

    if (*(result + 14) != 2)
    {
      v12 = "(*bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_16;
    }

    v10 = a2[i];
    v11 = *result;
    *(result + 6) = v9 + 1;
    *(v11 + v9) = v10;
  }

  return result;
}

uint64_t sub_100264108(char *a1, uint64_t (*a2)())
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
      v5 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          v6 = *a1;
          ++WORD2(v12);
          *(v11 + v5) = v6;
          sub_100263F70(&v11, a1 + 1);
          sub_100263F70(&v11, a1 + 13);
          sub_100263F70(&v11, a1 + 25);
          sub_100263F70(&v11, a1 + 37);
          return sub_100020078(465, v11, BYTE4(v12), a2, sub_100022AD0, v7, v8, v9);
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4506, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100264220(char *a1, uint64_t (*a2)())
{
  v30 = 0;
  v31 = 0;
  result = sub_10001FFD8(&v30);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_32;
  }

  v8 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_32:
    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v31) != 2)
  {
    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4525, v24);
  }

  v9 = *a1;
  ++WORD2(v31);
  *(v30 + v8) = v9;
  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_36;
  }

  v10 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_36:
    v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_38;
  }

  if (BYTE6(v31) != 2)
  {
    v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4526, v25);
  }

  v11 = a1[1];
  ++WORD2(v31);
  *(v30 + v10) = v11;
  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_40;
  }

  v12 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_40:
    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_42;
  }

  if (BYTE6(v31) != 2)
  {
    v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4527, v26);
  }

  v13 = a1[2];
  ++WORD2(v31);
  *(v30 + v12) = v13;
  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_44;
  }

  v14 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_44:
    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_46;
  }

  if (BYTE6(v31) != 2)
  {
    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4528, v27);
  }

  v15 = a1[3];
  ++WORD2(v31);
  *(v30 + v14) = v15;
  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_48;
  }

  v16 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_48:
    v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_50;
  }

  if (BYTE6(v31) != 2)
  {
    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4529, v28);
  }

  v17 = a1[4];
  ++WORD2(v31);
  *(v30 + v16) = v17;
  if (HIBYTE(v31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_52;
  }

  v18 = WORD2(v31);
  if (WORD1(v31) <= WORD2(v31))
  {
LABEL_52:
    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_54;
  }

  if (BYTE6(v31) != 2)
  {
    v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4530, v29);
  }

  v19 = a1[5];
  ++WORD2(v31);
  *(v30 + v18) = v19;
  for (i = 6; i != 16; ++i)
  {
    if (HIBYTE(v31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_29:
      v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_30:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4532, v23);
    }

    v21 = WORD2(v31);
    if (WORD1(v31) <= WORD2(v31))
    {
      goto LABEL_29;
    }

    if (BYTE6(v31) != 2)
    {
      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_30;
    }

    v22 = a1[i];
    ++WORD2(v31);
    *(v30 + v21) = v22;
  }

  return sub_100020078(478, v30, BYTE4(v31), a2, sub_100022AD0, v5, v6, v7);
}

uint64_t sub_1002645F4(_WORD *a1, __int16 a2, uint64_t (*a3)())
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
        *(v13 + WORD2(v14)) = *a1;
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
            return sub_100020078(371, v13, BYTE4(v14), a3, sub_100022AD0, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4549, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4548, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026478C(__int16 a1, uint64_t (*a2)())
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
        return sub_100020078(411, v9, BYTE4(v10), a2, sub_100022AD0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4564, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100264880(_WORD *a1, char a2, uint64_t (*a3)())
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
            return sub_100020078(394, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4580, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4579, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002649FC(char a1, uint64_t (*a2)())
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
          return sub_100020078(283, v10, BYTE4(v11), a2, sub_100083FE4, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4595, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100264AD4(char a1, uint64_t (*a2)())
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

    else if (WORD1(v12) - WORD2(v12) > 3)
    {
      if (BYTE6(v12) == 2)
      {
        *(v11 + WORD2(v12)) = 27;
        *(v11 + WORD2(v12) + 1) = 0;
        *(v11 + WORD2(v12) + 3) = 0;
        v8 = WORD2(v12) + 4;
        WORD2(v12) += 4;
        if (HIBYTE(v12))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v12) - v8 > 3)
        {
          if (BYTE6(v12) == 2)
          {
            *(v11 + v8) = a1;
            *(v11 + WORD2(v12) + 1) = 0;
            *(v11 + WORD2(v12) + 3) = 0;
            WORD2(v12) += 4;
            return sub_100020078(226, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4611, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4610, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100264C98(int a1, char a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 19;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v12 = WORD2(v21);
        v13 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) > v13)
        {
          if (BYTE6(v21) == 2)
          {
            WORD2(v21) = v12 + 5;
            *(v20 + v13) = a1;
            if (!a1)
            {
              return sub_100020078(226, v20, BYTE4(v21), a4, sub_100083FE4, v9, v10, v11);
            }

            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v14 = WORD2(v21);
              if (WORD1(v21) > WORD2(v21))
              {
                if (BYTE6(v21) == 2)
                {
                  ++WORD2(v21);
                  *(v20 + v14) = a2;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v15 = WORD2(v21);
                    if (WORD1(v21) > WORD2(v21))
                    {
                      if (BYTE6(v21) == 2)
                      {
                        ++WORD2(v21);
                        *(v20 + v15) = a3;
                        return sub_100020078(226, v20, BYTE4(v21), a4, sub_100083FE4, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4631, v19);
                    }
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_33;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4630, v18);
              }
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_29;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4627, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_25;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4626, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100264F28(int a1, char a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 19;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v12 = WORD2(v21);
        v13 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) > v13)
        {
          if (BYTE6(v21) == 2)
          {
            WORD2(v21) = v12 + 5;
            *(v20 + v13) = a1;
            if (!a1)
            {
              return sub_100020078(226, v20, BYTE4(v21), a4, sub_100022AD0, v9, v10, v11);
            }

            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v14 = WORD2(v21);
              if (WORD1(v21) > WORD2(v21))
              {
                if (BYTE6(v21) == 2)
                {
                  ++WORD2(v21);
                  *(v20 + v14) = a2;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v15 = WORD2(v21);
                    if (WORD1(v21) > WORD2(v21))
                    {
                      if (BYTE6(v21) == 2)
                      {
                        ++WORD2(v21);
                        *(v20 + v15) = a3;
                        return sub_100020078(226, v20, BYTE4(v21), a4, sub_100022AD0, v9, v10, v11);
                      }

                      v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4652, v19);
                    }
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_33;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4651, v18);
              }
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_29;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4648, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_25;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4647, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1002651B8(int a1, char a2, char a3, char a4, char a5, char a6, uint64_t (*a7)())
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

    else if (WORD1(v39) - WORD2(v39) > 3)
    {
      if (BYTE6(v39) == 2)
      {
        *(v38 + WORD2(v39)) = 61;
        *(v38 + WORD2(v39) + 1) = 0;
        *(v38 + WORD2(v39) + 3) = 0;
        v18 = WORD2(v39);
        v19 = WORD2(v39) + 4;
        WORD2(v39) += 4;
        if (HIBYTE(v39))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v39) > v19)
        {
          if (BYTE6(v39) == 2)
          {
            WORD2(v39) = v18 + 5;
            *(v38 + v19) = a1;
            if (!a1)
            {
              v27 = BYTE4(v39);
              return sub_100020078(226, v38, v27, a7, sub_100083FE4, v15, v16, v17);
            }

            if (HIBYTE(v39))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v20 = WORD2(v39);
              if (WORD1(v39) > WORD2(v39))
              {
                if (BYTE6(v39) == 2)
                {
                  ++WORD2(v39);
                  *(v38 + v20) = a2;
                  if (HIBYTE(v39))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v21 = WORD2(v39);
                    if (WORD1(v39) > WORD2(v39))
                    {
                      if (BYTE6(v39) == 2)
                      {
                        ++WORD2(v39);
                        *(v38 + v21) = a3;
                        if (HIBYTE(v39))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else
                        {
                          v22 = WORD2(v39);
                          if (WORD1(v39) > WORD2(v39))
                          {
                            if (BYTE6(v39) == 2)
                            {
                              ++WORD2(v39);
                              *(v38 + v22) = a4;
                              if (HIBYTE(v39))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v39) > WORD2(v39))
                              {
                                if (BYTE6(v39) == 2)
                                {
                                  *(v38 + WORD2(v39)) = 0;
                                  v23 = WORD2(v39);
                                  v24 = ++WORD2(v39);
                                  if (HIBYTE(v39))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v39) > v24)
                                  {
                                    if (BYTE6(v39) == 2)
                                    {
                                      WORD2(v39) = v23 + 2;
                                      *(v38 + v24) = a5;
                                      if (HIBYTE(v39))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v39) > WORD2(v39))
                                      {
                                        if (BYTE6(v39) == 2)
                                        {
                                          *(v38 + WORD2(v39)) = 0;
                                          v25 = WORD2(v39);
                                          v26 = ++WORD2(v39);
                                          if (HIBYTE(v39))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else if (WORD1(v39) > v26)
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              WORD2(v39) = v25 + 2;
                                              *(v38 + v26) = a6;
                                              if (HIBYTE(v39))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else if (WORD1(v39) - WORD2(v39) > 1)
                                              {
                                                if (BYTE6(v39) == 2)
                                                {
                                                  *(v38 + WORD2(v39)) = 0;
                                                  v27 = BYTE4(v39) + 2;
                                                  WORD2(v39) += 2;
                                                  return sub_100020078(226, v38, v27, a7, sub_100083FE4, v15, v16, v17);
                                                }

                                                v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4679, v37);
                                              }

                                              v37 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
                                              goto LABEL_76;
                                            }

                                            v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4678, v36);
                                          }

                                          v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_72;
                                        }

                                        v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4677, v35);
                                      }

                                      v35 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                                      goto LABEL_68;
                                    }

                                    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4676, v34);
                                  }

                                  v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_64;
                                }

                                v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4675, v33);
                              }

                              v33 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
                              goto LABEL_60;
                            }

                            v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4674, v32);
                          }
                        }

                        v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_56;
                      }

                      v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4673, v31);
                    }
                  }

                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_52;
                }

                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4672, v30);
              }
            }

            v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_48;
          }

          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4669, v29);
        }

        v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_44;
      }

      v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4668, v28);
    }

    v28 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_10026574C(uint64_t (*a1)())
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
          *(v8 + v6) = -15;
          return sub_100020078(284, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4695, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100265824(uint64_t (*a1)())
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
      v6 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v6) = 80;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v12) - WORD2(v12) > 3)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = 0;
              *(v11 + WORD2(v12) + 1) = 0;
              *(v11 + WORD2(v12) + 3) = 0;
              v7 = WORD2(v12) + 4;
              WORD2(v12) += 4;
              if (HIBYTE(v12))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v12) - v7 > 1)
              {
                if (BYTE6(v12) == 2)
                {
                  *(v11 + v7) = 2;
                  *(v11 + WORD2(v12) + 1) = 0;
                  WORD2(v12) += 2;
                  return sub_100020078(284, v11, BYTE4(v12), a1, sub_100022AD0, v3, v4, v5);
                }

                v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4712, v10);
              }

              v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_24;
            }

            v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4711, v9);
          }

          v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4710, v8);
      }
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100265A40(int a1, int a2, uint64_t (*a3)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (a1)
    {
      if (HIBYTE(v26))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v10 = WORD2(v26);
        if (WORD1(v26) > WORD2(v26))
        {
          if (BYTE6(v26) == 2)
          {
            ++WORD2(v26);
            *(v25 + v10) = 81;
            if (HIBYTE(v26))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v11 = WORD2(v26);
              if (WORD1(v26) > WORD2(v26))
              {
                if (BYTE6(v26) == 2)
                {
                  ++WORD2(v26);
                  *(v25 + v11) = 1;
                  if (HIBYTE(v26))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v26) - WORD2(v26) > 1)
                  {
                    if (BYTE6(v26) == 2)
                    {
                      *(v25 + WORD2(v26)) = __PAIR16__((2 * a2) >> 24, 2 * a2);
                      v12 = WORD2(v26) + 2;
                      WORD2(v26) += 2;
                      if (HIBYTE(v26))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v26) - v12 > 3)
                      {
                        if (BYTE6(v26) == 2)
                        {
                          *(v25 + v12) = 112;
                          *(v25 + WORD2(v26) + 1) = 23;
                          *(v25 + WORD2(v26) + 3) = 0;
                          WORD2(v26) += 4;
                          if (sub_100084230() && sub_100084230() <= 0x7CF && sub_100084230() >= 0x13)
                          {
                            if (HIBYTE(v26))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else if (WORD1(v26) - WORD2(v26) > 3)
                            {
                              if (BYTE6(v26) == 2)
                              {
                                *(v25 + WORD2(v26)) = -112;
                                v13 = 11;
LABEL_33:
                                *(v25 + WORD2(v26) + 1) = v13;
                                *(v25 + WORD2(v26) + 2) = 72;
                                *(v25 + WORD2(v26) + 3) = 4;
                                v16 = BYTE4(v26) + 4;
                                WORD2(v26) += 4;
                                return sub_100020078(284, v25, v16, a3, sub_100022AD0, v7, v8, v9);
                              }

                              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_67:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4733, v24);
                            }

                            v24 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_67;
                          }

                          if (HIBYTE(v26))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v26) - WORD2(v26) > 3)
                          {
                            if (BYTE6(v26) == 2)
                            {
                              v13 = 0;
                              *(v25 + WORD2(v26)) = 0;
                              goto LABEL_33;
                            }

                            v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4735, v23);
                          }

                          v23 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                          goto LABEL_63;
                        }

                        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_59:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4730, v22);
                      }

                      v22 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                      goto LABEL_59;
                    }

                    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4729, v21);
                  }

                  v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_55;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4728, v19);
              }
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_49;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4727, v17);
        }
      }

      v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_41;
    }

    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v14 = WORD2(v26);
      if (WORD1(v26) > WORD2(v26))
      {
        if (BYTE6(v26) == 2)
        {
          ++WORD2(v26);
          *(v25 + v14) = 81;
          if (HIBYTE(v26))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v15 = WORD2(v26);
            if (WORD1(v26) > WORD2(v26))
            {
              if (BYTE6(v26) == 2)
              {
                ++WORD2(v26);
                *(v25 + v15) = 0;
                v16 = BYTE4(v26);
                return sub_100020078(284, v25, v16, a3, sub_100022AD0, v7, v8, v9);
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4742, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_51;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4741, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_100265F4C(int a1, uint64_t (*a2)())
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
          *(v13 + v8) = -7;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v14) - WORD2(v14) > 3)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = a1;
              *(v13 + WORD2(v14) + 2) = BYTE2(a1);
              *(v13 + WORD2(v14) + 3) = HIBYTE(a1);
              v9 = WORD2(v14) + 4;
              WORD2(v14) += 4;
              if (HIBYTE(v14))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v14) - v9 > 3)
              {
                if (BYTE6(v14) == 2)
                {
                  *(v13 + v9) = 0;
                  *(v13 + WORD2(v14) + 1) = 0;
                  *(v13 + WORD2(v14) + 3) = 0;
                  WORD2(v14) += 4;
                  return sub_100020078(284, v13, BYTE4(v14), a2, sub_100022AD0, v5, v6, v7);
                }

                v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4758, v12);
              }

              v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_24;
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4757, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4756, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100266194(char a1, __int16 a2, __int16 a3, char a4, char a5, int a6, char a7, char a8, char a9, uint64_t (*a10)())
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

    else
    {
      v22 = WORD2(v39);
      if (WORD1(v39) > WORD2(v39))
      {
        if (BYTE6(v39) == 2)
        {
          ++WORD2(v39);
          *(v38 + v22) = a1;
          if (HIBYTE(v39))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v39) - WORD2(v39) > 1)
          {
            if (BYTE6(v39) == 2)
            {
              *(v38 + WORD2(v39)) = a2;
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
                  *(v38 + v23) = a3;
                  *(v38 + WORD2(v39) + 1) = HIBYTE(a3);
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
                      *(v38 + v25) = a4;
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
                            *(v38 + v26) = a5;
                            if (!a6)
                            {
                              return sub_100020078(585, v38, BYTE4(v39), a10, sub_100022AD0, v19, v20, v21);
                            }

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
                                  *(v38 + v27) = a7;
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
                                        *(v38 + v28) = a8;
                                        if (HIBYTE(v39))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v29 = WORD2(v39);
                                          if (WORD1(v39) > WORD2(v39))
                                          {
                                            if (BYTE6(v39) == 2)
                                            {
                                              ++WORD2(v39);
                                              *(v38 + v29) = a9;
                                              return sub_100020078(585, v38, BYTE4(v39), a10, sub_100022AD0, v19, v20, v21);
                                            }

                                            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4779, v37);
                                          }
                                        }

                                        v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_61;
                                      }

                                      v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4778, v36);
                                    }
                                  }

                                  v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_57;
                                }

                                v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4777, v35);
                              }
                            }

                            v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_53;
                          }

                          v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4775, v34);
                        }
                      }

                      v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_49;
                    }

                    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4774, v33);
                  }

                  v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_45;
                }

                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4773, v32);
              }

              v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_41;
            }

            v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4772, v31);
          }

          v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_37;
        }

        v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4771, v30);
      }
    }

    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_100266624(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, char a43, char a44, __int16 a45, char a46, uint64_t (*a47)())
{
  v147 = 0;
  v148 = 0;
  result = sub_10001FFD8(&v147);
  if (!result)
  {
    if (HIBYTE(v148))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v59 = WORD2(v148);
      if (WORD1(v148) > WORD2(v148))
      {
        if (BYTE6(v148) == 2)
        {
          ++WORD2(v148);
          *(v147 + v59) = a1;
          if (HIBYTE(v148))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v60 = WORD2(v148);
            if (WORD1(v148) > WORD2(v148))
            {
              if (BYTE6(v148) == 2)
              {
                ++WORD2(v148);
                *(v147 + v60) = a2;
                if (HIBYTE(v148))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v61 = WORD2(v148);
                  if (WORD1(v148) > WORD2(v148))
                  {
                    if (BYTE6(v148) == 2)
                    {
                      ++WORD2(v148);
                      *(v147 + v61) = a3;
                      if (HIBYTE(v148))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v62 = WORD2(v148);
                        if (WORD1(v148) > WORD2(v148))
                        {
                          if (BYTE6(v148) == 2)
                          {
                            ++WORD2(v148);
                            *(v147 + v62) = a4;
                            if (HIBYTE(v148))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v63 = WORD2(v148);
                              if (WORD1(v148) > WORD2(v148))
                              {
                                if (BYTE6(v148) == 2)
                                {
                                  ++WORD2(v148);
                                  *(v147 + v63) = a5;
                                  if (HIBYTE(v148))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else
                                  {
                                    v64 = WORD2(v148);
                                    if (WORD1(v148) > WORD2(v148))
                                    {
                                      if (BYTE6(v148) == 2)
                                      {
                                        ++WORD2(v148);
                                        *(v147 + v64) = a6;
                                        if (HIBYTE(v148))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        }

                                        else
                                        {
                                          v65 = WORD2(v148);
                                          if (WORD1(v148) > WORD2(v148))
                                          {
                                            if (BYTE6(v148) == 2)
                                            {
                                              ++WORD2(v148);
                                              *(v147 + v65) = a7;
                                              if (HIBYTE(v148))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else
                                              {
                                                v66 = WORD2(v148);
                                                if (WORD1(v148) > WORD2(v148))
                                                {
                                                  if (BYTE6(v148) == 2)
                                                  {
                                                    ++WORD2(v148);
                                                    *(v147 + v66) = a8;
                                                    if (HIBYTE(v148))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    }

                                                    else
                                                    {
                                                      v67 = WORD2(v148);
                                                      if (WORD1(v148) > WORD2(v148))
                                                      {
                                                        if (BYTE6(v148) == 2)
                                                        {
                                                          ++WORD2(v148);
                                                          *(v147 + v67) = a9;
                                                          if (HIBYTE(v148))
                                                          {
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                          }

                                                          else
                                                          {
                                                            v68 = WORD2(v148);
                                                            if (WORD1(v148) > WORD2(v148))
                                                            {
                                                              if (BYTE6(v148) == 2)
                                                              {
                                                                ++WORD2(v148);
                                                                *(v147 + v68) = a10;
                                                                if (HIBYTE(v148))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                }

                                                                else
                                                                {
                                                                  v69 = WORD2(v148);
                                                                  if (WORD1(v148) > WORD2(v148))
                                                                  {
                                                                    if (BYTE6(v148) == 2)
                                                                    {
                                                                      ++WORD2(v148);
                                                                      *(v147 + v69) = a11;
                                                                      if (HIBYTE(v148))
                                                                      {
                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                      }

                                                                      else
                                                                      {
                                                                        v70 = WORD2(v148);
                                                                        if (WORD1(v148) > WORD2(v148))
                                                                        {
                                                                          if (BYTE6(v148) == 2)
                                                                          {
                                                                            ++WORD2(v148);
                                                                            *(v147 + v70) = a12;
                                                                            if (HIBYTE(v148))
                                                                            {
                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                            }

                                                                            else
                                                                            {
                                                                              v71 = WORD2(v148);
                                                                              if (WORD1(v148) > WORD2(v148))
                                                                              {
                                                                                if (BYTE6(v148) == 2)
                                                                                {
                                                                                  ++WORD2(v148);
                                                                                  *(v147 + v71) = a13;
                                                                                  if (HIBYTE(v148))
                                                                                  {
                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v72 = WORD2(v148);
                                                                                    if (WORD1(v148) > WORD2(v148))
                                                                                    {
                                                                                      if (BYTE6(v148) == 2)
                                                                                      {
                                                                                        ++WORD2(v148);
                                                                                        *(v147 + v72) = a14;
                                                                                        if (HIBYTE(v148))
                                                                                        {
                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v73 = WORD2(v148);
                                                                                          if (WORD1(v148) > WORD2(v148))
                                                                                          {
                                                                                            if (BYTE6(v148) == 2)
                                                                                            {
                                                                                              ++WORD2(v148);
                                                                                              *(v147 + v73) = a15;
                                                                                              if (HIBYTE(v148))
                                                                                              {
                                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v74 = WORD2(v148);
                                                                                                if (WORD1(v148) > WORD2(v148))
                                                                                                {
                                                                                                  if (BYTE6(v148) == 2)
                                                                                                  {
                                                                                                    ++WORD2(v148);
                                                                                                    *(v147 + v74) = a16;
                                                                                                    if (HIBYTE(v148))
                                                                                                    {
                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                    }

                                                                                                    else if (WORD1(v148) - WORD2(v148) > 3)
                                                                                                    {
                                                                                                      if (BYTE6(v148) == 2)
                                                                                                      {
                                                                                                        *(v147 + WORD2(v148)) = a17;
                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a17 + 1);
                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a17);
                                                                                                        v75 = WORD2(v148) + 4;
                                                                                                        WORD2(v148) += 4;
                                                                                                        if (HIBYTE(v148))
                                                                                                        {
                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                        }

                                                                                                        else if (WORD1(v148) - v75 > 3)
                                                                                                        {
                                                                                                          if (BYTE6(v148) == 2)
                                                                                                          {
                                                                                                            *(v147 + v75) = a18;
                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a18 + 1);
                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a18);
                                                                                                            v76 = WORD2(v148) + 4;
                                                                                                            WORD2(v148) += 4;
                                                                                                            if (HIBYTE(v148))
                                                                                                            {
                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                            }

                                                                                                            else if (WORD1(v148) - v76 > 3)
                                                                                                            {
                                                                                                              if (BYTE6(v148) == 2)
                                                                                                              {
                                                                                                                *(v147 + v76) = a19;
                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a19 + 1);
                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a19);
                                                                                                                v77 = WORD2(v148) + 4;
                                                                                                                WORD2(v148) += 4;
                                                                                                                if (HIBYTE(v148))
                                                                                                                {
                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                }

                                                                                                                else if (WORD1(v148) - v77 > 3)
                                                                                                                {
                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                  {
                                                                                                                    *(v147 + v77) = a20;
                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a20 + 1);
                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a20);
                                                                                                                    v78 = WORD2(v148) + 4;
                                                                                                                    WORD2(v148) += 4;
                                                                                                                    if (HIBYTE(v148))
                                                                                                                    {
                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                    }

                                                                                                                    else if (WORD1(v148) - v78 > 3)
                                                                                                                    {
                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                      {
                                                                                                                        *(v147 + v78) = a21;
                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a21 + 1);
                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a21);
                                                                                                                        v79 = WORD2(v148) + 4;
                                                                                                                        WORD2(v148) += 4;
                                                                                                                        if (HIBYTE(v148))
                                                                                                                        {
                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                        }

                                                                                                                        else if (WORD1(v148) - v79 > 3)
                                                                                                                        {
                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                          {
                                                                                                                            *(v147 + v79) = a22;
                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a22 + 1);
                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a22);
                                                                                                                            v80 = WORD2(v148) + 4;
                                                                                                                            WORD2(v148) += 4;
                                                                                                                            if (HIBYTE(v148))
                                                                                                                            {
                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                            }

                                                                                                                            else if (WORD1(v148) - v80 > 3)
                                                                                                                            {
                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                              {
                                                                                                                                *(v147 + v80) = a23;
                                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a23 + 1);
                                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a23);
                                                                                                                                v81 = WORD2(v148) + 4;
                                                                                                                                WORD2(v148) += 4;
                                                                                                                                if (HIBYTE(v148))
                                                                                                                                {
                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                }

                                                                                                                                else if (WORD1(v148) - v81 > 3)
                                                                                                                                {
                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                  {
                                                                                                                                    *(v147 + v81) = a24;
                                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a24 + 1);
                                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a24);
                                                                                                                                    v82 = WORD2(v148) + 4;
                                                                                                                                    WORD2(v148) += 4;
                                                                                                                                    if (HIBYTE(v148))
                                                                                                                                    {
                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                    }

                                                                                                                                    else if (WORD1(v148) - v82 > 3)
                                                                                                                                    {
                                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                                      {
                                                                                                                                        *(v147 + v82) = a25;
                                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a25 + 1);
                                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a25);
                                                                                                                                        v83 = WORD2(v148) + 4;
                                                                                                                                        WORD2(v148) += 4;
                                                                                                                                        if (HIBYTE(v148))
                                                                                                                                        {
                                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                        }

                                                                                                                                        else if (WORD1(v148) - v83 > 3)
                                                                                                                                        {
                                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                                          {
                                                                                                                                            *(v147 + v83) = a26;
                                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a26 + 1);
                                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a26);
                                                                                                                                            v84 = WORD2(v148) + 4;
                                                                                                                                            WORD2(v148) += 4;
                                                                                                                                            if (HIBYTE(v148))
                                                                                                                                            {
                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                            }

                                                                                                                                            else if (WORD1(v148) - v84 > 3)
                                                                                                                                            {
                                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                                              {
                                                                                                                                                *(v147 + v84) = a27;
                                                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a27 + 1);
                                                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a27);
                                                                                                                                                v85 = WORD2(v148) + 4;
                                                                                                                                                WORD2(v148) += 4;
                                                                                                                                                if (HIBYTE(v148))
                                                                                                                                                {
                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                }

                                                                                                                                                else if (WORD1(v148) - v85 > 3)
                                                                                                                                                {
                                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                                  {
                                                                                                                                                    *(v147 + v85) = a28;
                                                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a28 + 1);
                                                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a28);
                                                                                                                                                    v86 = WORD2(v148) + 4;
                                                                                                                                                    WORD2(v148) += 4;
                                                                                                                                                    if (HIBYTE(v148))
                                                                                                                                                    {
                                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                    }

                                                                                                                                                    else if (WORD1(v148) - v86 > 3)
                                                                                                                                                    {
                                                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                                                      {
                                                                                                                                                        *(v147 + v86) = a29;
                                                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a29 + 1);
                                                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a29);
                                                                                                                                                        v87 = WORD2(v148) + 4;
                                                                                                                                                        WORD2(v148) += 4;
                                                                                                                                                        if (HIBYTE(v148))
                                                                                                                                                        {
                                                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                        }

                                                                                                                                                        else if (WORD1(v148) - v87 > 3)
                                                                                                                                                        {
                                                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                                                          {
                                                                                                                                                            *(v147 + v87) = a30;
                                                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a30 + 1);
                                                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a30);
                                                                                                                                                            v88 = WORD2(v148) + 4;
                                                                                                                                                            WORD2(v148) += 4;
                                                                                                                                                            if (HIBYTE(v148))
                                                                                                                                                            {
                                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                            }

                                                                                                                                                            else if (WORD1(v148) - v88 > 3)
                                                                                                                                                            {
                                                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                                                              {
                                                                                                                                                                *(v147 + v88) = a31;
                                                                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a31 + 1);
                                                                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a31);
                                                                                                                                                                v89 = WORD2(v148) + 4;
                                                                                                                                                                WORD2(v148) += 4;
                                                                                                                                                                if (HIBYTE(v148))
                                                                                                                                                                {
                                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                }

                                                                                                                                                                else if (WORD1(v148) - v89 > 3)
                                                                                                                                                                {
                                                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                                                  {
                                                                                                                                                                    *(v147 + v89) = a32;
                                                                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a32 + 1);
                                                                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a32);
                                                                                                                                                                    v90 = WORD2(v148) + 4;
                                                                                                                                                                    WORD2(v148) += 4;
                                                                                                                                                                    if (HIBYTE(v148))
                                                                                                                                                                    {
                                                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                    }

                                                                                                                                                                    else if (WORD1(v148) - v90 > 3)
                                                                                                                                                                    {
                                                                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                                                                      {
                                                                                                                                                                        *(v147 + v90) = a33;
                                                                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a33 + 1);
                                                                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a33);
                                                                                                                                                                        v91 = WORD2(v148) + 4;
                                                                                                                                                                        WORD2(v148) += 4;
                                                                                                                                                                        if (HIBYTE(v148))
                                                                                                                                                                        {
                                                                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                        }

                                                                                                                                                                        else if (WORD1(v148) - v91 > 3)
                                                                                                                                                                        {
                                                                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                                                                          {
                                                                                                                                                                            *(v147 + v91) = a34;
                                                                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a34 + 1);
                                                                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a34);
                                                                                                                                                                            v92 = WORD2(v148) + 4;
                                                                                                                                                                            WORD2(v148) += 4;
                                                                                                                                                                            if (HIBYTE(v148))
                                                                                                                                                                            {
                                                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                            }

                                                                                                                                                                            else if (WORD1(v148) - v92 > 3)
                                                                                                                                                                            {
                                                                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                                                                              {
                                                                                                                                                                                *(v147 + v92) = a35;
                                                                                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a35 + 1);
                                                                                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a35);
                                                                                                                                                                                v93 = WORD2(v148) + 4;
                                                                                                                                                                                WORD2(v148) += 4;
                                                                                                                                                                                if (HIBYTE(v148))
                                                                                                                                                                                {
                                                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                }

                                                                                                                                                                                else if (WORD1(v148) - v93 > 3)
                                                                                                                                                                                {
                                                                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                                                                  {
                                                                                                                                                                                    *(v147 + v93) = a36;
                                                                                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a36 + 1);
                                                                                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a36);
                                                                                                                                                                                    v94 = WORD2(v148) + 4;
                                                                                                                                                                                    WORD2(v148) += 4;
                                                                                                                                                                                    if (HIBYTE(v148))
                                                                                                                                                                                    {
                                                                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                    }

                                                                                                                                                                                    else if (WORD1(v148) - v94 > 3)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                                                                                      {
                                                                                                                                                                                        *(v147 + v94) = a37;
                                                                                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a37 + 1);
                                                                                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a37);
                                                                                                                                                                                        v95 = WORD2(v148) + 4;
                                                                                                                                                                                        WORD2(v148) += 4;
                                                                                                                                                                                        if (HIBYTE(v148))
                                                                                                                                                                                        {
                                                                                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                        }

                                                                                                                                                                                        else if (WORD1(v148) - v95 > 3)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                                                                                          {
                                                                                                                                                                                            *(v147 + v95) = a38;
                                                                                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a38 + 1);
                                                                                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a38);
                                                                                                                                                                                            v96 = WORD2(v148) + 4;
                                                                                                                                                                                            WORD2(v148) += 4;
                                                                                                                                                                                            if (HIBYTE(v148))
                                                                                                                                                                                            {
                                                                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                            }

                                                                                                                                                                                            else if (WORD1(v148) - v96 > 3)
                                                                                                                                                                                            {
                                                                                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                                                                                              {
                                                                                                                                                                                                *(v147 + v96) = a39;
                                                                                                                                                                                                *(v147 + WORD2(v148) + 1) = *(&a39 + 1);
                                                                                                                                                                                                *(v147 + WORD2(v148) + 3) = HIBYTE(a39);
                                                                                                                                                                                                v97 = WORD2(v148) + 4;
                                                                                                                                                                                                WORD2(v148) += 4;
                                                                                                                                                                                                if (HIBYTE(v148))
                                                                                                                                                                                                {
                                                                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                                }

                                                                                                                                                                                                else if (WORD1(v148) - v97 > 3)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    *(v147 + v97) = a40;
                                                                                                                                                                                                    *(v147 + WORD2(v148) + 1) = *(&a40 + 1);
                                                                                                                                                                                                    *(v147 + WORD2(v148) + 3) = HIBYTE(a40);
                                                                                                                                                                                                    v98 = WORD2(v148) + 4;
                                                                                                                                                                                                    WORD2(v148) += 4;
                                                                                                                                                                                                    if (HIBYTE(v148))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else if (WORD1(v148) - v98 > 3)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (BYTE6(v148) == 2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        *(v147 + v98) = a41;
                                                                                                                                                                                                        *(v147 + WORD2(v148) + 1) = *(&a41 + 1);
                                                                                                                                                                                                        *(v147 + WORD2(v148) + 3) = HIBYTE(a41);
                                                                                                                                                                                                        v99 = WORD2(v148) + 4;
                                                                                                                                                                                                        WORD2(v148) += 4;
                                                                                                                                                                                                        if (HIBYTE(v148))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else if (WORD1(v148) - v99 > 3)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if (BYTE6(v148) == 2)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            *(v147 + v99) = a42;
                                                                                                                                                                                                            *(v147 + WORD2(v148) + 1) = *(&a42 + 1);
                                                                                                                                                                                                            *(v147 + WORD2(v148) + 3) = HIBYTE(a42);
                                                                                                                                                                                                            v100 = WORD2(v148) + 4;
                                                                                                                                                                                                            WORD2(v148) += 4;
                                                                                                                                                                                                            if (HIBYTE(v148))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else if (WORD1(v148) - v100 > 3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (BYTE6(v148) == 2)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                *(v147 + v100) = a43;
                                                                                                                                                                                                                *(v147 + WORD2(v148) + 1) = a44;
                                                                                                                                                                                                                *(v147 + WORD2(v148) + 2) = a45;
                                                                                                                                                                                                                v101 = WORD2(v148);
                                                                                                                                                                                                                v102 = WORD2(v148) + 4;
                                                                                                                                                                                                                WORD2(v148) += 4;
                                                                                                                                                                                                                if (HIBYTE(v148))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else if (WORD1(v148) > v102)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (BYTE6(v148) == 2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    WORD2(v148) = v101 + 5;
                                                                                                                                                                                                                    *(v147 + v102) = a46;
                                                                                                                                                                                                                    return sub_100020078(641, v147, BYTE4(v148), a47, sub_100022AD0, v56, v57, v58);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v146 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_311:
                                                                                                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4850, v146);
                                                                                                                                                                                                                }

                                                                                                                                                                                                                v146 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                                                                                                                                                goto LABEL_311;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              v145 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_307:
                                                                                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4848, v145);
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v145 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                                            goto LABEL_307;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v144 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_303:
                                                                                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4846, v144);
                                                                                                                                                                                                        }

                                                                                                                                                                                                        v144 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                                        goto LABEL_303;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v143 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_299:
                                                                                                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4845, v143);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v143 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                                    goto LABEL_299;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v142 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_295:
                                                                                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4844, v142);
                                                                                                                                                                                                }

                                                                                                                                                                                                v142 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                                goto LABEL_295;
                                                                                                                                                                                              }

                                                                                                                                                                                              v141 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_291:
                                                                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4843, v141);
                                                                                                                                                                                            }

                                                                                                                                                                                            v141 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                            goto LABEL_291;
                                                                                                                                                                                          }

                                                                                                                                                                                          v140 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_287:
                                                                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4841, v140);
                                                                                                                                                                                        }

                                                                                                                                                                                        v140 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                        goto LABEL_287;
                                                                                                                                                                                      }

                                                                                                                                                                                      v139 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_283:
                                                                                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4839, v139);
                                                                                                                                                                                    }

                                                                                                                                                                                    v139 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                    goto LABEL_283;
                                                                                                                                                                                  }

                                                                                                                                                                                  v138 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_279:
                                                                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4838, v138);
                                                                                                                                                                                }

                                                                                                                                                                                v138 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                                goto LABEL_279;
                                                                                                                                                                              }

                                                                                                                                                                              v137 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_275:
                                                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4837, v137);
                                                                                                                                                                            }

                                                                                                                                                                            v137 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                            goto LABEL_275;
                                                                                                                                                                          }

                                                                                                                                                                          v136 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_271:
                                                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4836, v136);
                                                                                                                                                                        }

                                                                                                                                                                        v136 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                        goto LABEL_271;
                                                                                                                                                                      }

                                                                                                                                                                      v135 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_267:
                                                                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4834, v135);
                                                                                                                                                                    }

                                                                                                                                                                    v135 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                    goto LABEL_267;
                                                                                                                                                                  }

                                                                                                                                                                  v134 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_263:
                                                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4833, v134);
                                                                                                                                                                }

                                                                                                                                                                v134 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                                goto LABEL_263;
                                                                                                                                                              }

                                                                                                                                                              v133 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_259:
                                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4832, v133);
                                                                                                                                                            }

                                                                                                                                                            v133 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                            goto LABEL_259;
                                                                                                                                                          }

                                                                                                                                                          v132 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_255:
                                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4831, v132);
                                                                                                                                                        }

                                                                                                                                                        v132 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                        goto LABEL_255;
                                                                                                                                                      }

                                                                                                                                                      v131 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_251:
                                                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4829, v131);
                                                                                                                                                    }

                                                                                                                                                    v131 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                    goto LABEL_251;
                                                                                                                                                  }

                                                                                                                                                  v130 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_247:
                                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4828, v130);
                                                                                                                                                }

                                                                                                                                                v130 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                                goto LABEL_247;
                                                                                                                                              }

                                                                                                                                              v129 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_243:
                                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4827, v129);
                                                                                                                                            }

                                                                                                                                            v129 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                            goto LABEL_243;
                                                                                                                                          }

                                                                                                                                          v128 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_239:
                                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4826, v128);
                                                                                                                                        }

                                                                                                                                        v128 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                        goto LABEL_239;
                                                                                                                                      }

                                                                                                                                      v127 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_235:
                                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4824, v127);
                                                                                                                                    }

                                                                                                                                    v127 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                    goto LABEL_235;
                                                                                                                                  }

                                                                                                                                  v126 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_231:
                                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4822, v126);
                                                                                                                                }

                                                                                                                                v126 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                                goto LABEL_231;
                                                                                                                              }

                                                                                                                              v125 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_227:
                                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4821, v125);
                                                                                                                            }

                                                                                                                            v125 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                            goto LABEL_227;
                                                                                                                          }

                                                                                                                          v124 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_223:
                                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4820, v124);
                                                                                                                        }

                                                                                                                        v124 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                        goto LABEL_223;
                                                                                                                      }

                                                                                                                      v123 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_219:
                                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4819, v123);
                                                                                                                    }

                                                                                                                    v123 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                    goto LABEL_219;
                                                                                                                  }

                                                                                                                  v122 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_215:
                                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4817, v122);
                                                                                                                }

                                                                                                                v122 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                                goto LABEL_215;
                                                                                                              }

                                                                                                              v121 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_211:
                                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4816, v121);
                                                                                                            }

                                                                                                            v121 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                            goto LABEL_211;
                                                                                                          }

                                                                                                          v120 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_207:
                                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4815, v120);
                                                                                                        }

                                                                                                        v120 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                        goto LABEL_207;
                                                                                                      }

                                                                                                      v119 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_203:
                                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4814, v119);
                                                                                                    }

                                                                                                    v119 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                                    goto LABEL_203;
                                                                                                  }

                                                                                                  v118 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_199:
                                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4813, v118);
                                                                                                }
                                                                                              }

                                                                                              v118 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                              goto LABEL_199;
                                                                                            }

                                                                                            v117 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_195:
                                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4812, v117);
                                                                                          }
                                                                                        }

                                                                                        v117 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                        goto LABEL_195;
                                                                                      }

                                                                                      v116 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_191:
                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4811, v116);
                                                                                    }
                                                                                  }

                                                                                  v116 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                  goto LABEL_191;
                                                                                }

                                                                                v115 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_187:
                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4810, v115);
                                                                              }
                                                                            }

                                                                            v115 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                            goto LABEL_187;
                                                                          }

                                                                          v114 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_183:
                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4809, v114);
                                                                        }
                                                                      }

                                                                      v114 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                      goto LABEL_183;
                                                                    }

                                                                    v113 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_179:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4808, v113);
                                                                  }
                                                                }

                                                                v113 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                goto LABEL_179;
                                                              }

                                                              v112 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_175:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4807, v112);
                                                            }
                                                          }

                                                          v112 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                          goto LABEL_175;
                                                        }

                                                        v111 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_171:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4806, v111);
                                                      }
                                                    }

                                                    v111 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                    goto LABEL_171;
                                                  }

                                                  v110 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_167:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4805, v110);
                                                }
                                              }

                                              v110 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                              goto LABEL_167;
                                            }

                                            v109 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_163:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4804, v109);
                                          }
                                        }

                                        v109 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_163;
                                      }

                                      v108 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_159:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4803, v108);
                                    }
                                  }

                                  v108 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_159;
                                }

                                v107 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_155:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4802, v107);
                              }
                            }

                            v107 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_155;
                          }

                          v106 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_151:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4801, v106);
                        }
                      }

                      v106 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_151;
                    }

                    v105 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_147:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4800, v105);
                  }
                }

                v105 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_147;
              }

              v104 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_143:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4799, v104);
            }
          }

          v104 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_143;
        }

        v103 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_139:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4798, v103);
      }
    }

    v103 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_139;
  }

  return result;
}

uint64_t sub_100268310(char a1, uint64_t (*a2)())
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
          return sub_100020078(643, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4868, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002683E8(char a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, __int16 a11, char a12, uint64_t (*a13)())
{
  v47 = 0;
  v48 = 0;
  result = sub_10001FFD8(&v47);
  if (!result)
  {
    if (HIBYTE(v48))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v25 = WORD2(v48);
      if (WORD1(v48) > WORD2(v48))
      {
        if (BYTE6(v48) == 2)
        {
          ++WORD2(v48);
          *(v47 + v25) = 0;
          if (HIBYTE(v48))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v26 = WORD2(v48);
            if (WORD1(v48) > WORD2(v48))
            {
              if (BYTE6(v48) == 2)
              {
                ++WORD2(v48);
                *(v47 + v26) = a1;
                if (HIBYTE(v48))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v27 = WORD2(v48);
                  if (WORD1(v48) > WORD2(v48))
                  {
                    if (BYTE6(v48) == 2)
                    {
                      ++WORD2(v48);
                      *(v47 + v27) = a2;
                      if (HIBYTE(v48))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else if (WORD1(v48) - WORD2(v48) > 3)
                      {
                        if (BYTE6(v48) == 2)
                        {
                          *(v47 + WORD2(v48)) = a3;
                          *(v47 + WORD2(v48) + 2) = BYTE2(a3);
                          *(v47 + WORD2(v48) + 3) = HIBYTE(a3);
                          v28 = WORD2(v48) + 4;
                          WORD2(v48) += 4;
                          if (HIBYTE(v48))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else if (WORD1(v48) - v28 > 3)
                          {
                            if (BYTE6(v48) == 2)
                            {
                              *(v47 + v28) = a4;
                              *(v47 + WORD2(v48) + 1) = BYTE1(a4);
                              *(v47 + WORD2(v48) + 2) = BYTE2(a4);
                              *(v47 + WORD2(v48) + 3) = HIBYTE(a4);
                              v29 = WORD2(v48) + 4;
                              WORD2(v48) += 4;
                              if (HIBYTE(v48))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              }

                              else if (WORD1(v48) - v29 > 3)
                              {
                                if (BYTE6(v48) == 2)
                                {
                                  *(v47 + v29) = a5;
                                  *(v47 + WORD2(v48) + 1) = BYTE1(a5);
                                  *(v47 + WORD2(v48) + 2) = BYTE2(a5);
                                  *(v47 + WORD2(v48) + 3) = HIBYTE(a5);
                                  v30 = WORD2(v48) + 4;
                                  WORD2(v48) += 4;
                                  if (HIBYTE(v48))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  }

                                  else if (WORD1(v48) - v30 > 3)
                                  {
                                    if (BYTE6(v48) == 2)
                                    {
                                      *(v47 + v30) = a6;
                                      *(v47 + WORD2(v48) + 1) = BYTE1(a6);
                                      *(v47 + WORD2(v48) + 2) = BYTE2(a6);
                                      *(v47 + WORD2(v48) + 3) = HIBYTE(a6);
                                      v31 = WORD2(v48) + 4;
                                      WORD2(v48) += 4;
                                      if (HIBYTE(v48))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                      }

                                      else if (WORD1(v48) - v31 > 3)
                                      {
                                        if (BYTE6(v48) == 2)
                                        {
                                          *(v47 + v31) = a7;
                                          *(v47 + WORD2(v48) + 1) = BYTE1(a7);
                                          *(v47 + WORD2(v48) + 2) = BYTE2(a7);
                                          *(v47 + WORD2(v48) + 3) = HIBYTE(a7);
                                          v32 = WORD2(v48) + 4;
                                          WORD2(v48) += 4;
                                          if (HIBYTE(v48))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          }

                                          else if (WORD1(v48) - v32 > 3)
                                          {
                                            if (BYTE6(v48) == 2)
                                            {
                                              *(v47 + v32) = a8;
                                              *(v47 + WORD2(v48) + 1) = BYTE1(a8);
                                              *(v47 + WORD2(v48) + 2) = BYTE2(a8);
                                              *(v47 + WORD2(v48) + 3) = HIBYTE(a8);
                                              v33 = WORD2(v48) + 4;
                                              WORD2(v48) += 4;
                                              if (HIBYTE(v48))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              }

                                              else if (WORD1(v48) - v33 > 3)
                                              {
                                                if (BYTE6(v48) == 2)
                                                {
                                                  *(v47 + v33) = a9;
                                                  *(v47 + WORD2(v48) + 1) = a10;
                                                  *(v47 + WORD2(v48) + 2) = a11;
                                                  v34 = WORD2(v48);
                                                  v35 = WORD2(v48) + 4;
                                                  WORD2(v48) += 4;
                                                  if (HIBYTE(v48))
                                                  {
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  }

                                                  else if (WORD1(v48) > v35)
                                                  {
                                                    if (BYTE6(v48) == 2)
                                                    {
                                                      WORD2(v48) = v34 + 5;
                                                      *(v47 + v35) = a12;
                                                      return sub_100020078(657, v47, BYTE4(v48), a13, sub_100022AD0, v22, v23, v24);
                                                    }

                                                    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4896, v46);
                                                  }

                                                  v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                  goto LABEL_80;
                                                }

                                                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4895, v45);
                                              }

                                              v45 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                              goto LABEL_76;
                                            }

                                            v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4894, v44);
                                          }

                                          v44 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                          goto LABEL_72;
                                        }

                                        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4893, v43);
                                      }

                                      v43 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                      goto LABEL_68;
                                    }

                                    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4892, v42);
                                  }

                                  v42 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                  goto LABEL_64;
                                }

                                v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_60:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4891, v41);
                              }

                              v41 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                              goto LABEL_60;
                            }

                            v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4890, v40);
                          }

                          v40 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                          goto LABEL_56;
                        }

                        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4889, v39);
                      }

                      v39 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                      goto LABEL_52;
                    }

                    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4888, v38);
                  }
                }

                v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_48;
              }

              v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4887, v37);
            }
          }

          v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_44;
        }

        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4886, v36);
      }
    }

    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_100268B84(char a1, char a2, uint64_t (*a3)())
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
                      return sub_100020078(657, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                    }

                    v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4912, v15);
                  }
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4911, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4910, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100268D5C(int a1, uint64_t (*a2)())
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
          *(v11 + v8) = 16;
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
              return sub_100020078(291, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4927, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4926, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100268EF4(char *a1, uint64_t (*a2)())
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
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          v6 = *a1;
          ++WORD2(v13);
          *(v12 + v5) = v6;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), (a1 + 1), 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(328, v12, BYTE4(v13), a2, sub_10025EE04, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4941, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4940, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026905C(char a1, uint64_t (*a2)())
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
          return sub_100020078(329, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4956, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100269134(char a1, __int16 a2, __int16 a3, char a4, char a5, char a6, uint64_t (*a7)())
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

          else if (WORD1(v31) - WORD2(v31) > 1)
          {
            if (BYTE6(v31) == 2)
            {
              *(v30 + WORD2(v31)) = a2;
              v19 = WORD2(v31) + 2;
              WORD2(v31) += 2;
              if (HIBYTE(v31))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v31) - v19 > 1)
              {
                if (BYTE6(v31) == 2)
                {
                  *(v30 + v19) = a3;
                  *(v30 + WORD2(v31) + 1) = HIBYTE(a3);
                  v20 = WORD2(v31);
                  v21 = WORD2(v31) + 2;
                  WORD2(v31) += 2;
                  if (HIBYTE(v31))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v31) > v21)
                  {
                    if (BYTE6(v31) == 2)
                    {
                      WORD2(v31) = v20 + 3;
                      *(v30 + v21) = a4;
                      if (HIBYTE(v31))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                  return sub_100020078(330, v30, BYTE4(v31), a7, sub_100022AD0, v15, v16, v17);
                                }

                                v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4976, v29);
                              }
                            }

                            v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_45;
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4975, v28);
                        }
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_41;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4974, v27);
                  }

                  v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_37;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4973, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_33;
            }

            v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4972, v25);
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4971, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1002694C8(char a1, unsigned int a2, const void *a3, uint64_t (*a4)())
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
      v9 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
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
                if (a2 >= 0x1F)
                {
                  v11 = 31;
                }

                else
                {
                  v11 = a2;
                }

                ++WORD2(v19);
                *(v18 + v10) = v11;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v19) - WORD2(v19) > 30)
                {
                  if (BYTE6(v19) == 2)
                  {
                    memmove((v18 + WORD2(v19)), a3, 0x1FuLL);
                    WORD2(v19) += 31;
                    return sub_100020078(331, v18, BYTE4(v19), a4, sub_100022AD0, v12, v13, v14);
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4993, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= (31)";
                goto LABEL_27;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4992, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 4991, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002696C0(char a1, unsigned int a2, const void *a3, uint64_t (*a4)())
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
      v9 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
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
                if (a2 >= 0x1F)
                {
                  v11 = 31;
                }

                else
                {
                  v11 = a2;
                }

                ++WORD2(v19);
                *(v18 + v10) = v11;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v19) - WORD2(v19) > 30)
                {
                  if (BYTE6(v19) == 2)
                  {
                    memmove((v18 + WORD2(v19)), a3, 0x1FuLL);
                    WORD2(v19) += 31;
                    return sub_100020078(332, v18, BYTE4(v19), a4, sub_100022AD0, v12, v13, v14);
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5010, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= (31)";
                goto LABEL_27;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5009, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5008, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002698B8(char a1, char a2, int a3, char a4, uint64_t (*a5)())
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

                else if (WORD1(v23) - WORD2(v23) > 3)
                {
                  if (BYTE6(v23) == 2)
                  {
                    *(v22 + WORD2(v23)) = a3;
                    *(v22 + WORD2(v23) + 2) = BYTE2(a3);
                    *(v22 + WORD2(v23) + 3) = HIBYTE(a3);
                    v16 = WORD2(v23);
                    v17 = WORD2(v23) + 4;
                    WORD2(v23) += 4;
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v23) > v17)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        WORD2(v23) = v16 + 5;
                        *(v22 + v17) = a4;
                        return sub_100020078(333, v22, BYTE4(v23), a5, sub_100022AD0, v11, v12, v13);
                      }

                      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5028, v21);
                    }

                    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_31;
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5027, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_27;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5026, v19);
            }
          }

          v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5025, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100269B58(char a1, char *a2, uint64_t (*a3)())
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
      v7 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v7) = a1;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v8 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                v9 = *a2;
                ++WORD2(v17);
                *(v16 + v8) = v9;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v17) - WORD2(v17) > 5)
                {
                  if (BYTE6(v17) == 2)
                  {
                    sub_1000075EC((v16 + WORD2(v17)), (a2 + 1), 6uLL);
                    WORD2(v17) += 6;
                    return sub_100020078(334, v16, BYTE4(v17), a3, sub_100022AD0, v10, v11, v12);
                  }

                  v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5046, v15);
                }

                v15 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_24;
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5045, v14);
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5044, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100269D44(void *a1, uint64_t (*a2)())
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

    else if (WORD1(v10) - WORD2(v10) > 7)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 8;
        return sub_100020078(316, v9, BYTE4(v10), a2, sub_100022AD0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5062, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= (8)";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100269E28(char a1, __int16 a2, uint64_t (*a3)())
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
        *(v14 + WORD2(v15) + 1) = a2;
        *(v14 + WORD2(v15)) = HIBYTE(a2);
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
            *(v14 + v11) = a1;
            return sub_100020078(327, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5078, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5077, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100269FA0(__int16 a1, char a2, uint64_t a3, uint64_t (*a4)())
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

    else if (WORD1(v16) - WORD2(v16) > 1)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = a1;
        v11 = WORD2(v16);
        v12 = WORD2(v16) + 2;
        WORD2(v16) += 2;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) > v12)
        {
          if (BYTE6(v16) == 2)
          {
            WORD2(v16) = v11 + 3;
            *(v15 + v12) = a2;
            return sub_100020078(87, v15, BYTE4(v16), a4, sub_100022AD0, v8, v9, v10);
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5094, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5093, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026A118(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 28;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5213, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5212, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026A2A4(char a1, uint64_t (*a2)())
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
          return sub_100020078(431, v10, BYTE4(v11), a2, sub_100022AD0, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5227, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026A37C(__int16 a1, char a2, char a3, char *a4, unsigned int a5, uint64_t (*a6)())
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
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5241, v23);
  }

  *(v26 + WORD2(v27)) = a1;
  v16 = WORD2(v27);
  v17 = WORD2(v27) + 2;
  WORD2(v27) += 2;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5242, v24);
  }

  WORD2(v27) = v16 + 3;
  *(v26 + v17) = a2;
  if (HIBYTE(v27))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5243, v25);
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
        return sub_100020078(586, v26, BYTE4(v27), a6, sub_100022AD0, v13, v14, v15);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_21:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5245, v22);
  }

  return sub_100020078(586, v26, BYTE4(v27), a6, sub_100022AD0, v13, v14, v15);
}

uint64_t sub_10026A60C(char a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, int a16, int a17, char a18, char a19, __int16 a20, char a21, int a22, uint64_t (*a23)())
{
  v70 = 0;
  v71 = 0;
  result = sub_10001FFD8(&v70);
  if (!result)
  {
    if (HIBYTE(v71))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v71) > v37)
              {
                if (BYTE6(v71) == 2)
                {
                  WORD2(v71) = v36 + 3;
                  *(v70 + v37) = a3;
                  if (HIBYTE(v71))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                  }

                                                                  else if (WORD1(v71) > v47)
                                                                  {
                                                                    if (BYTE6(v71) == 2)
                                                                    {
                                                                      WORD2(v71) = v46 + 3;
                                                                      *(v70 + v47) = a15;
                                                                      if (HIBYTE(v71))
                                                                      {
                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
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
                                                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                  }

                                                                                  else if (WORD1(v71) > v51)
                                                                                  {
                                                                                    if (BYTE6(v71) == 2)
                                                                                    {
                                                                                      WORD2(v71) = v50 + 5;
                                                                                      *(v70 + v51) = a21;
                                                                                      if (HIBYTE(v71))
                                                                                      {
                                                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                                                      }

                                                                                      else if (WORD1(v71) - WORD2(v71) > 3)
                                                                                      {
                                                                                        if (BYTE6(v71) == 2)
                                                                                        {
                                                                                          *(v70 + WORD2(v71)) = a22;
                                                                                          *(v70 + WORD2(v71) + 1) = *(&a22 + 1);
                                                                                          *(v70 + WORD2(v71) + 3) = HIBYTE(a22);
                                                                                          WORD2(v71) += 4;
                                                                                          return sub_100020078(616, v70, BYTE4(v71), a23, sub_100022AD0, v32, v33, v34);
                                                                                        }

                                                                                        v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_129:
                                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5276, v69);
                                                                                      }

                                                                                      v69 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                                      goto LABEL_129;
                                                                                    }

                                                                                    v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_125:
                                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5275, v68);
                                                                                  }

                                                                                  v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                  goto LABEL_125;
                                                                                }

                                                                                v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_121:
                                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5274, v67);
                                                                              }

                                                                              v67 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                              goto LABEL_121;
                                                                            }

                                                                            v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_117:
                                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5273, v66);
                                                                          }

                                                                          v66 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                          goto LABEL_117;
                                                                        }

                                                                        v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_113:
                                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5272, v65);
                                                                      }

                                                                      v65 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                                                      goto LABEL_113;
                                                                    }

                                                                    v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
                                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5271, v64);
                                                                  }

                                                                  v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                  goto LABEL_109;
                                                                }

                                                                v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_105:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5270, v63);
                                                              }

                                                              v63 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                              goto LABEL_105;
                                                            }

                                                            v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_101:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5269, v62);
                                                          }

                                                          v62 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                          goto LABEL_101;
                                                        }

                                                        v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_97:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5268, v61);
                                                      }

                                                      v61 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                      goto LABEL_97;
                                                    }

                                                    v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_93:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5267, v60);
                                                  }
                                                }

                                                v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_93;
                                              }

                                              v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_89:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5266, v59);
                                            }
                                          }

                                          v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_89;
                                        }

                                        v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_85:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5265, v58);
                                      }
                                    }

                                    v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_85;
                                  }

                                  v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_81:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5264, v57);
                                }
                              }

                              v57 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_81;
                            }

                            v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_77:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5263, v56);
                          }
                        }

                        v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_77;
                      }

                      v55 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5262, v55);
                    }
                  }

                  v55 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_73;
                }

                v54 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5261, v54);
              }

              v54 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_69;
            }

            v53 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5260, v53);
          }

          v53 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_65;
        }

        v52 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 5259, v52);
      }
    }

    v52 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_10026B0B4(__int16 a1, __int16 a2, uint64_t (*a3)())
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

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 59;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) - v10 > 1)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = a1;
            *(v15 + WORD2(v16) + 1) = HIBYTE(a1);
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
                return sub_100020078(226, v15, BYTE4(v16), a3, sub_100022AD0, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6105, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6104, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6103, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026B2FC(__int16 a1, int a2, __int16 a3, uint64_t (*a4)())
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
        *(v19 + WORD2(v20)) = 70;
        *(v19 + WORD2(v20) + 1) = 0;
        *(v19 + WORD2(v20) + 3) = 0;
        v12 = WORD2(v20) + 4;
        WORD2(v20) += 4;
        if (HIBYTE(v20))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v20) - v12 > 1)
        {
          if (BYTE6(v20) == 2)
          {
            *(v19 + v12) = a1;
            *(v19 + WORD2(v20) + 1) = HIBYTE(a1);
            v13 = WORD2(v20);
            v14 = WORD2(v20) + 2;
            WORD2(v20) += 2;
            if (HIBYTE(v20))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v20) > v14)
            {
              if (BYTE6(v20) == 2)
              {
                WORD2(v20) = v13 + 3;
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
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6346, v18);
                }

                v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_31;
              }

              v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6345, v17);
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6344, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6343, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10026B5C8(__int16 a1, uint64_t (*a2)())
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
          *(v11 + v8) = 9;
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
              return sub_100020078(496, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6376, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6375, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026B738(char a1, char a2, uint64_t (*a3)())
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
                return sub_100020078(392, v14, BYTE4(v15), a3, sub_100022AD0, v7, v8, v9);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6422, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_17;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6421, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026B894(char a1, __int16 a2, const void *a3, unsigned int a4, uint64_t (*a5)())
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
      v11 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v11) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v27) - WORD2(v27) > 1)
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = a2;
              v12 = WORD2(v27) + 2;
              WORD2(v27) += 2;
              v13 = v26;
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v14 = 0;
              }

              else
              {
                v14 = WORD1(v27) - v12;
              }

              if (v14 < a4)
              {
                v24 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
              }

              else
              {
                if (BYTE6(v27) == 2)
                {
                  memmove((v13 + v12), a3, a4);
                  v18 = WORD2(v27) + a4;
                  WORD2(v27) += a4;
                  if (a4 <= 0xE5)
                  {
                    v19 = v26;
                    if (HIBYTE(v27))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v20 = 0;
                    }

                    else
                    {
                      v20 = WORD1(v27) - v18;
                    }

                    v21 = 230 - a4;
                    if (v20 < v21)
                    {
                      v25 = "ByteStream_NumReadBytesAvail(bs) >= (230 - dataLen)";
                    }

                    else
                    {
                      if (BYTE6(v27) == 2)
                      {
                        bzero((v19 + v18), v21);
                        LOBYTE(v18) = BYTE4(v27) + v21;
                        WORD2(v27) += v21;
                        return sub_100020078(407, v26, v18, a5, sub_1002605D4, v15, v16, v17);
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7037, v25);
                  }

                  return sub_100020078(407, v26, v18, a5, sub_1002605D4, v15, v16, v17);
                }

                v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7035, v24);
            }

            v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7034, v23);
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_29;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7033, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10026BB48(const void *a1, int a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    v7 = v14;
    v8 = WORD2(v15);
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      v9 = 0;
    }

    else
    {
      v9 = WORD1(v15) - WORD2(v15);
    }

    if (v9 < a2)
    {
      v13 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
    }

    else
    {
      if (BYTE6(v15) == 2)
      {
        memmove((v7 + v8), a1, a2);
        WORD2(v15) += a2;
        return sub_100020078(408, v14, BYTE4(v15), a3, sub_100022AD0, v10, v11, v12);
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7051, v13);
  }

  return result;
}

uint64_t sub_10026BC50(__int16 a1, const void *a2, int a3, uint64_t (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a1;
        v9 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        v10 = v17;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          v11 = 0;
        }

        else
        {
          v11 = WORD1(v18) - v9;
        }

        if (v11 < a3)
        {
          v16 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
        }

        else
        {
          if (BYTE6(v18) == 2)
          {
            memmove((v10 + v9), a2, a3);
            WORD2(v18) += a3;
            return sub_100020078(525, v17, BYTE4(v18), a4, sub_100022AD0, v12, v13, v14);
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7066, v16);
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7065, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10026BDEC(uint64_t a1, uint64_t (*a2)())
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

    else if (WORD1(v10) - WORD2(v10) > 5)
    {
      if (BYTE6(v10) == 2)
      {
        sub_1000075EC((v9 + WORD2(v10)), a1, 6uLL);
        WORD2(v10) += 6;
        return sub_100020078(1, v9, BYTE4(v10), a2, sub_100022AD0, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7080, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026BED8(__int16 a1, unsigned int a2, char *a3, uint64_t (*a4)())
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
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_24;
  }

  v12 = WORD2(v23);
  if (WORD1(v23) <= WORD2(v23))
  {
LABEL_24:
    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_26;
  }

  if (BYTE6(v23) != 2)
  {
    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7093, v19);
  }

  ++WORD2(v23);
  *(v22 + v12) = 14;
  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_28;
  }

  if (WORD1(v23) - WORD2(v23) <= 1)
  {
LABEL_28:
    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_30;
  }

  if (BYTE6(v23) != 2)
  {
    v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7094, v20);
  }

  *(v22 + WORD2(v23)) = a1;
  v13 = WORD2(v23);
  v14 = WORD2(v23) + 2;
  WORD2(v23) += 2;
  if (HIBYTE(v23))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_32;
  }

  if (WORD1(v23) <= v14)
  {
LABEL_32:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_34;
  }

  if (BYTE6(v23) != 2)
  {
    v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7095, v21);
  }

  WORD2(v23) = v13 + 3;
  *(v22 + v14) = a2;
  if (a2)
  {
    v15 = a2;
    while (!HIBYTE(v23))
    {
      v16 = WORD2(v23);
      if (WORD1(v23) <= WORD2(v23))
      {
        goto LABEL_21;
      }

      if (BYTE6(v23) != 2)
      {
        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_22;
      }

      v17 = *a3++;
      ++WORD2(v23);
      *(v22 + v16) = v17;
      if (!--v15)
      {
        return sub_100020078(291, v22, BYTE4(v23), a4, sub_100022AD0, v9, v10, v11);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_21:
    v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7097, v18);
  }

  return sub_100020078(291, v22, BYTE4(v23), a4, sub_100022AD0, v9, v10, v11);
}

uint64_t sub_10026C15C(__int16 a1, char a2, uint64_t (*a3)())
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
          *(v16 + v10) = 15;
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
                  return sub_100020078(291, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7113, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7112, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7111, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026C350(int a1, uint64_t (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v12))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_11;
  }

  v8 = WORD2(v12);
  if (WORD1(v12) <= WORD2(v12))
  {
LABEL_11:
    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  if (BYTE6(v12) != 2)
  {
    v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7126, v10);
  }

  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  ++WORD2(v12);
  *(v11 + v8) = v9;
  return sub_100020078(569, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
}

uint64_t sub_10026C434(unint64_t a1, uint64_t (*a2)())
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
      v5 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v5) = 4;
          v6 = sub_10009A66C(a1);
          v15 = v6;
          v17 = BYTE6(v6);
          v16 = WORD2(v6);
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v19) - WORD2(v19) > 5)
          {
            if (BYTE6(v19) == 2)
            {
              sub_1000075EC((v18 + WORD2(v19)), &v15 + 1, 6uLL);
              v10 = WORD2(v19);
              v11 = WORD2(v19) + 6;
              WORD2(v19) += 6;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v19) > v11)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v10 + 7;
                  *(v18 + v11) = v15;
                  return sub_100020078(569, v18, BYTE4(v19), a2, sub_100022AD0, v7, v8, v9);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7142, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7141, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7139, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026C638(unint64_t a1, uint64_t (*a2)())
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
      v5 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v5) = 5;
          v6 = sub_10009A66C(a1);
          v15 = v6;
          v17 = BYTE6(v6);
          v16 = WORD2(v6);
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v19) - WORD2(v19) > 5)
          {
            if (BYTE6(v19) == 2)
            {
              sub_1000075EC((v18 + WORD2(v19)), &v15 + 1, 6uLL);
              v10 = WORD2(v19);
              v11 = WORD2(v19) + 6;
              WORD2(v19) += 6;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v19) > v11)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v10 + 7;
                  *(v18 + v11) = v15;
                  return sub_100020078(569, v18, BYTE4(v19), a2, sub_100022AD0, v7, v8, v9);
                }

                v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7158, v14);
              }

              v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7157, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7155, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026C83C(uint64_t (*a1)())
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
          *(v8 + v6) = 3;
          return sub_100020078(569, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7171, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026C914(_WORD *a1, char a2, uint64_t (*a3)())
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
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v17) > v11)
        {
          if (BYTE6(v17) == 2)
          {
            WORD2(v17) = v10 + 3;
            *(v16 + v11) = a2;
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
                  *(v16 + v12) = 3;
                  return sub_100020078(369, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7470, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7469, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7468, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026CB0C(unint64_t a1, int a2, unsigned int a3, const void *a4, uint64_t (*a5)())
{
  if (a3 < 0x10)
  {
    return 101;
  }

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
      v11 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v11) = 8;
          v12 = sub_10009A66C(a1);
          v26 = v12;
          v28 = BYTE6(v12);
          v27 = WORD2(v12);
          if (a2)
          {
            v13 = 3;
          }

          else
          {
            v13 = 1;
          }

          if (a2)
          {
            v14 = 2;
          }

          else
          {
            v14 = 0;
          }

          if ((a1 & 0xFF000000000000) == 0)
          {
            v13 = v14;
          }

          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v15 = WORD2(v30);
            if (WORD1(v30) > WORD2(v30))
            {
              if (BYTE6(v30) == 2)
              {
                ++WORD2(v30);
                *(v29 + v15) = v13;
                if (HIBYTE(v30))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v30) - WORD2(v30) > 5)
                {
                  if (BYTE6(v30) == 2)
                  {
                    sub_1000075EC((v29 + WORD2(v30)), &v26 + 1, 6uLL);
                    v16 = WORD2(v30) + 6;
                    WORD2(v30) += 6;
                    v17 = v29;
                    if (HIBYTE(v30))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v18 = 0;
                    }

                    else
                    {
                      v18 = WORD1(v30) - v16;
                    }

                    if (v18 < a3)
                    {
                      v25 = "ByteStream_NumReadBytesAvail(bs) >= (ltkLen)";
                    }

                    else
                    {
                      if (BYTE6(v30) == 2)
                      {
                        memmove((v17 + v16), a4, a3);
                        WORD2(v30) += a3;
                        return sub_100020078(291, v29, BYTE4(v30), a5, sub_100022AD0, v19, v20, v21);
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7527, v25);
                  }

                  v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7526, v24);
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_39;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7525, v23);
            }
          }

          v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_35;
        }

        v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7517, v22);
      }
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10026CDE8(unint64_t a1, int a2, uint64_t (*a3)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v7 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v7) = 9;
          v8 = sub_10009A66C(a1);
          v18 = v8;
          v20 = BYTE6(v8);
          v19 = WORD2(v8);
          if (a2)
          {
            v9 = 3;
          }

          else
          {
            v9 = 1;
          }

          if (a2)
          {
            v10 = 2;
          }

          else
          {
            v10 = 0;
          }

          if ((a1 & 0xFF000000000000) == 0)
          {
            v9 = v10;
          }

          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v11 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v11) = v9;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v22) - WORD2(v22) > 5)
                {
                  if (BYTE6(v22) == 2)
                  {
                    sub_1000075EC((v21 + WORD2(v22)), &v18 + 1, 6uLL);
                    WORD2(v22) += 6;
                    return sub_100020078(291, v21, BYTE4(v22), a3, sub_100022AD0, v12, v13, v14);
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7551, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_32;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7550, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7542, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10026D014(uint64_t (*a1)())
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
          *(v8 + v6) = 10;
          return sub_100020078(291, v8, BYTE4(v9), a1, sub_10025F0D8, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7566, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026D0EC(unint64_t a1, int a2, char a3, int a4, const void *a5, uint64_t (*a6)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v13 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v13) = 11;
          v14 = sub_10009A66C(a1);
          v33 = v14;
          v35 = BYTE6(v14);
          v34 = WORD2(v14);
          if (a2)
          {
            v15 = 3;
          }

          else
          {
            v15 = 1;
          }

          if (a2)
          {
            v16 = 2;
          }

          else
          {
            v16 = 0;
          }

          if ((a1 & 0xFF000000000000) == 0)
          {
            v15 = v16;
          }

          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v17 = WORD2(v37);
            if (WORD1(v37) > WORD2(v37))
            {
              if (BYTE6(v37) == 2)
              {
                ++WORD2(v37);
                *(v36 + v17) = v15;
                if (HIBYTE(v37))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v37) - WORD2(v37) > 5)
                {
                  if (BYTE6(v37) == 2)
                  {
                    sub_1000075EC((v36 + WORD2(v37)), &v33 + 1, 6uLL);
                    v21 = WORD2(v37);
                    v22 = WORD2(v37) + 6;
                    WORD2(v37) += 6;
                    if (HIBYTE(v37))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v37) > v22)
                    {
                      if (BYTE6(v37) == 2)
                      {
                        if (a4)
                        {
                          v23 = a3;
                        }

                        else
                        {
                          v23 = 1;
                        }

                        WORD2(v37) = v21 + 7;
                        *(v36 + v22) = v23;
                        if (HIBYTE(v37))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v37) - WORD2(v37) > 1)
                        {
                          if (BYTE6(v37) == 2)
                          {
                            *(v36 + WORD2(v37)) = a4;
                            v24 = WORD2(v37) + 2;
                            WORD2(v37) += 2;
                            if (a4)
                            {
                              v25 = v36;
                              if (HIBYTE(v37))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                v26 = 0;
                              }

                              else
                              {
                                v26 = WORD1(v37) - v24;
                              }

                              if (v26 < a4)
                              {
                                v32 = "ByteStream_NumReadBytesAvail(bs) >= (length)";
                              }

                              else
                              {
                                if (BYTE6(v37) == 2)
                                {
                                  memmove((v25 + v24), a5, a4);
                                  LOBYTE(v24) = BYTE4(v37) + a4;
                                  WORD2(v37) += a4;
                                  return sub_100020078(291, v36, v24, a6, sub_100022AD0, v18, v19, v20);
                                }

                                v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                              }

                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7596, v32);
                            }

                            return sub_100020078(291, v36, v24, a6, sub_100022AD0, v18, v19, v20);
                          }

                          v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7594, v31);
                        }

                        v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_56;
                      }

                      v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7593, v30);
                    }

                    v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_52;
                  }

                  v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7592, v29);
                }

                v29 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                goto LABEL_48;
              }

              v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7591, v28);
            }
          }

          v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_44;
        }

        v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7581, v27);
      }
    }

    v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_10026D4D4(__int16 a1, uint64_t (*a2)())
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
          *(v11 + v8) = 12;
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
              return sub_100020078(291, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7612, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7611, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026D644(char a1, char a2, char a3, char a4, char a5, uint64_t (*a6)())
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
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v17 = WORD2(v27);
            if (WORD1(v27) > WORD2(v27))
            {
              if (BYTE6(v27) == 2)
              {
                ++WORD2(v27);
                *(v26 + v17) = a2;
                if (HIBYTE(v27))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v18 = WORD2(v27);
                  if (WORD1(v27) > WORD2(v27))
                  {
                    if (BYTE6(v27) == 2)
                    {
                      ++WORD2(v27);
                      *(v26 + v18) = a3;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v19 = WORD2(v27);
                        if (WORD1(v27) > WORD2(v27))
                        {
                          if (BYTE6(v27) == 2)
                          {
                            ++WORD2(v27);
                            *(v26 + v19) = a4;
                            if (HIBYTE(v27))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            }

                            else
                            {
                              v20 = WORD2(v27);
                              if (WORD1(v27) > WORD2(v27))
                              {
                                if (BYTE6(v27) == 2)
                                {
                                  ++WORD2(v27);
                                  *(v26 + v20) = a5;
                                  return sub_100020078(652, v26, BYTE4(v27), a6, sub_100022AD0, v13, v14, v15);
                                }

                                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7630, v25);
                              }
                            }

                            v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_38;
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7629, v24);
                        }
                      }

                      v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_34;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7628, v23);
                  }
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_30;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7627, v22);
            }
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7626, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10026D91C(unsigned int a1, uint64_t a2, uint64_t (*a3)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_44;
  }

  v10 = WORD2(v25);
  if (WORD1(v25) <= WORD2(v25))
  {
LABEL_44:
    v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_46;
  }

  if (BYTE6(v25) != 2)
  {
    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_46:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7644, v22);
  }

  ++WORD2(v25);
  *(v24 + v10) = 17;
  if (HIBYTE(v25))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_48;
  }

  v11 = WORD2(v25);
  if (WORD1(v25) <= WORD2(v25))
  {
LABEL_48:
    v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_50;
  }

  if (BYTE6(v25) != 2)
  {
    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_50:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7645, v23);
  }

  ++WORD2(v25);
  *(v24 + v11) = a1;
  if (a1)
  {
    v12 = a1;
    v13 = (a2 + 4);
    while (!HIBYTE(v25))
    {
      if (WORD1(v25) - WORD2(v25) <= 1)
      {
        goto LABEL_41;
      }

      if (BYTE6(v25) != 2)
      {
        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_42;
      }

      *(v24 + WORD2(v25)) = *(v13 - 2);
      v14 = WORD2(v25) + 2;
      WORD2(v25) += 2;
      if (HIBYTE(v25))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_37:
        v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_38:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7649, v20);
      }

      if (WORD1(v25) - v14 <= 1)
      {
        goto LABEL_37;
      }

      if (BYTE6(v25) != 2)
      {
        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_38;
      }

      *(v24 + v14) = *(v13 - 2);
      *(v24 + WORD2(v25) + 1) = *(v13 - 1);
      v15 = WORD2(v25) + 2;
      WORD2(v25) += 2;
      if (HIBYTE(v25))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_33:
        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7650, v19);
      }

      if (WORD1(v25) - v15 <= 1)
      {
        goto LABEL_33;
      }

      if (BYTE6(v25) != 2)
      {
        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_34;
      }

      *(v24 + v15) = *v13;
      *(v24 + WORD2(v25) + 1) = v13[1];
      v16 = WORD2(v25) + 2;
      WORD2(v25) += 2;
      if (HIBYTE(v25))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_29:
        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7651, v18);
      }

      if (WORD1(v25) - v16 <= 1)
      {
        goto LABEL_29;
      }

      if (BYTE6(v25) != 2)
      {
        v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_30;
      }

      *(v24 + v16) = v13[2];
      *(v24 + WORD2(v25) + 1) = v13[3];
      v17 = BYTE4(v25) + 2;
      WORD2(v25) += 2;
      v13 += 8;
      if (!--v12)
      {
        return sub_100020078(291, v24, v17, a3, sub_100022AD0, v7, v8, v9);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_41:
    v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7648, v21);
  }

  v17 = BYTE4(v25);
  return sub_100020078(291, v24, v17, a3, sub_100022AD0, v7, v8, v9);
}

uint64_t sub_10026DCFC(uint64_t (*a1)())
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
          return sub_100020078(610, v8, BYTE4(v9), a1, sub_100022AD0, v3, v4, v5);
        }

        v7 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7767, v7);
      }
    }

    v7 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

void (**sub_10026DDD4(void (**result)(uint64_t a1, uint64_t a2), const void *a2))(uint64_t a1, uint64_t a2)
{
  *result = sub_1000A64E0;
  if (a2)
  {
    return memcpy(&off_100B5FE18, a2, 0x218uLL);
  }

  return result;
}

void *sub_10026DDFC(void *a1)
{
  memcpy(a1, off_100AE8940, 0xA50uLL);
  sub_10025793C(sub_10025ED40);
  sub_1002580C4(sub_100022388);

  return sub_100255314(sub_10026DE68);
}

BOOL sub_10026DE68(int a1)
{
  if (a1 == 3075)
  {
    v1 = 1;
  }

  else
  {
    v2 = 0;
    v3 = &word_1008A45BC;
    do
    {
      v4 = v2;
      if (v2 == 5)
      {
        break;
      }

      v5 = *v3;
      v3 += 2;
      ++v2;
    }

    while (v5 != a1);
    v1 = v4 < 5;
  }

  if (sub_10000C240())
  {
    v13 = "disallowing";
    if (v1)
    {
      v13 = "allowing";
    }

    sub_10000AF54("Stack halted, %s cmd opcode 0x%4x", v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v1;
}

void *sub_10026DF88(void *__src)
{
  if (__src)
  {
    return memcpy(&unk_100B60030, __src, 0x218uLL);
  }

  return __src;
}

uint64_t sub_10026DFA4(uint64_t (*a1)())
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
        *(v7 + WORD2(v8)) = 5;
        *(v7 + WORD2(v8) + 1) = 0;
        *(v7 + WORD2(v8) + 3) = 0;
        WORD2(v8) += 4;
        return sub_100020078(226, v7, BYTE4(v8), a1, sub_10025CF64, v3, v4, v5);
      }

      v6 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2629, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026E0B4(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 11;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2597, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2596, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026E240(uint64_t (*a1)())
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
        *(v7 + WORD2(v8)) = 10;
        *(v7 + WORD2(v8) + 1) = 0;
        *(v7 + WORD2(v8) + 3) = 0;
        WORD2(v8) += 4;
        return sub_100020078(226, v7, BYTE4(v8), a1, sub_10025CF64, v3, v4, v5);
      }

      v6 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2615, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10026E350(_WORD *a1, char a2, char a3, uint64_t (*a4)())
{
  v22 = 0;
  v23 = 0;
  if (!sub_10001FFD8(&v22))
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v23) - WORD2(v23) > 3)
    {
      if (BYTE6(v23) == 2)
      {
        *(v22 + WORD2(v23)) = 9;
        *(v22 + WORD2(v23) + 1) = 0;
        *(v22 + WORD2(v23) + 3) = 0;
        v12 = WORD2(v23) + 4;
        WORD2(v23) += 4;
        if (HIBYTE(v23))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v23) - v12 > 3)
        {
          if (BYTE6(v23) == 2)
          {
            *(v22 + v12) = 0;
            v13 = WORD2(v23) + 4;
            WORD2(v23) += 4;
            if (HIBYTE(v23))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v23) > v13)
            {
              if (BYTE6(v23) == 2)
              {
                *(v22 + v13) = 0;
                v14 = WORD2(v23);
                v15 = ++WORD2(v23);
                if (HIBYTE(v23))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v23) > v15)
                {
                  if (BYTE6(v23) == 2)
                  {
                    WORD2(v23) = v14 + 2;
                    *(v22 + v15) = a3 | (16 * a2);
                    if (HIBYTE(v23))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v23) - WORD2(v23) > 1)
                    {
                      if (BYTE6(v23) == 2)
                      {
                        *(v22 + WORD2(v23)) = *a1;
                        v11 = BYTE4(v23) + 2;
                        WORD2(v23) += 2;
                        return sub_100020078(226, v22, v11, a4, sub_100022AD0, v8, v9, v10);
                      }

                      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2646, v21);
                    }

                    v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_39;
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2645, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_35;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2644, v19);
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
            goto LABEL_31;
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2643, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
        goto LABEL_27;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2642, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_23;
  }

  v11 = BYTE4(v23);
  return sub_100020078(226, v22, v11, a4, sub_100022AD0, v8, v9, v10);
}

uint64_t sub_10026E68C(_BYTE *a1, char a2, uint64_t (*a3)())
{
  v16 = 0;
  v17 = 0;
  if (!sub_10001FFD8(&v16))
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v17) - WORD2(v17) > 3)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = 43;
        *(v16 + WORD2(v17) + 1) = 0;
        *(v16 + WORD2(v17) + 3) = 0;
        v9 = WORD2(v17) + 4;
        WORD2(v17) += 4;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v17) - v9 > 1)
        {
          if (BYTE6(v17) == 2)
          {
            *(v16 + v9) = *a1;
            *(v16 + WORD2(v17) + 1) = a1[1];
            v10 = WORD2(v17);
            v11 = WORD2(v17) + 2;
            WORD2(v17) += 2;
            if (HIBYTE(v17))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v17) > v11)
            {
              if (BYTE6(v17) == 2)
              {
                WORD2(v17) = v10 + 3;
                *(v16 + v11) = a2;
                return sub_100020078(226, v16, BYTE4(v17), a3, sub_100022AD0, v6, v7, v8);
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2662, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2661, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2660, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return sub_100020078(226, v16, BYTE4(v17), a3, sub_100022AD0, v6, v7, v8);
}

uint64_t sub_10026E8BC(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 15;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2677, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2676, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026EA48(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 16;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2692, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2691, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026EBD4(char a1, uint64_t (*a2)())
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
        *(v14 + WORD2(v15)) = 25;
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

            else if (WORD1(v15) - WORD2(v15) > 2)
            {
              if (BYTE6(v15) == 2)
              {
                v10 = v14 + WORD2(v15);
                *(v10 + 2) = 0;
                *v10 = 0;
                WORD2(v15) += 3;
                return sub_100020078(226, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2708, v13);
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2707, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2706, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026EDE8(_BYTE *a1, char a2, uint64_t (*a3)())
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
      v10 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v10) = 20;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v19) - WORD2(v19) > 1)
          {
            if (BYTE6(v19) == 2)
            {
              *(v18 + WORD2(v19)) = 0;
              v11 = WORD2(v19) + 2;
              WORD2(v19) += 2;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v19) - v11 > 1)
              {
                if (BYTE6(v19) == 2)
                {
                  *(v18 + v11 + 1) = *a1;
                  *(v18 + WORD2(v19)) = a1[1];
                  v12 = WORD2(v19);
                  v13 = WORD2(v19) + 2;
                  WORD2(v19) += 2;
                  if (HIBYTE(v19))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v19) > v13)
                  {
                    if (BYTE6(v19) == 2)
                    {
                      WORD2(v19) = v12 + 3;
                      *(v18 + v13) = a2;
                      return sub_100020078(226, v18, BYTE4(v19), a3, sub_100022AD0, v7, v8, v9);
                    }

                    v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2728, v17);
                  }

                  v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2727, v16);
              }

              v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_27;
            }

            v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2725, v15);
          }

          v15 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
          goto LABEL_23;
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2724, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10026F05C(unsigned int a1, uint64_t (*a2)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (a1 > 3)
  {
    return 101;
  }

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

            else if (WORD1(v15) - WORD2(v15) > 2)
            {
              if (BYTE6(v15) == 2)
              {
                v10 = v14 + WORD2(v15);
                *(v10 + 2) = 0;
                *v10 = 0;
                WORD2(v15) += 3;
                return sub_100020078(226, v14, BYTE4(v15), a2, sub_100022AD0, v5, v6, v7);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2748, v13);
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
            goto LABEL_26;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2747, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_22;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2746, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10026F27C(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 14;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2898, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2897, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026F408(int a1, uint64_t (*a2)())
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

    else if (WORD1(v12) - WORD2(v12) > 3)
    {
      if (BYTE6(v12) == 2)
      {
        *(v11 + WORD2(v12)) = 30;
        *(v11 + WORD2(v12) + 1) = 0;
        *(v11 + WORD2(v12) + 3) = 0;
        v8 = WORD2(v12) + 4;
        WORD2(v12) += 4;
        if (HIBYTE(v12))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v12) - v8 > 3)
        {
          if (BYTE6(v12) == 2)
          {
            *(v11 + v8) = a1;
            *(v11 + WORD2(v12) + 1) = BYTE1(a1);
            *(v11 + WORD2(v12) + 2) = BYTE2(a1);
            *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
            WORD2(v12) += 4;
            return sub_100020078(226, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2912, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2911, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026F5D8(int a1, uint64_t (*a2)())
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

    else if (WORD1(v12) - WORD2(v12) > 3)
    {
      if (BYTE6(v12) == 2)
      {
        *(v11 + WORD2(v12)) = 4;
        *(v11 + WORD2(v12) + 1) = 0;
        *(v11 + WORD2(v12) + 3) = 0;
        v8 = WORD2(v12) + 4;
        WORD2(v12) += 4;
        if (HIBYTE(v12))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v12) - v8 > 3)
        {
          if (BYTE6(v12) == 2)
          {
            *(v11 + v8) = a1;
            *(v11 + WORD2(v12) + 1) = BYTE1(a1);
            *(v11 + WORD2(v12) + 2) = BYTE2(a1);
            *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
            WORD2(v12) += 4;
            return sub_100020078(226, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2927, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2926, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10026F7A8(int a1, int a2, uint64_t (*a3)())
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

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 31;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = a1;
            *(v15 + WORD2(v16) + 1) = BYTE1(a1);
            *(v15 + WORD2(v16) + 2) = BYTE2(a1);
            *(v15 + WORD2(v16) + 3) = HIBYTE(a1);
            v11 = WORD2(v16) + 4;
            WORD2(v16) += 4;
            if (HIBYTE(v16))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v16) - v11 > 3)
            {
              if (BYTE6(v16) == 2)
              {
                *(v15 + v11) = a2;
                *(v15 + WORD2(v16) + 1) = BYTE1(a2);
                *(v15 + WORD2(v16) + 2) = BYTE2(a2);
                *(v15 + WORD2(v16) + 3) = HIBYTE(a2);
                WORD2(v16) += 4;
                return sub_100020078(226, v15, BYTE4(v16), a3, sub_100022AD0, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2942, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2941, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2940, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10026FA40(_BYTE *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, uint64_t (*a6)())
{
  v27 = 0;
  v28 = 0;
  result = sub_10001FFD8(&v27);
  if (!result)
  {
    if (HIBYTE(v28))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v28) - WORD2(v28) > 3)
    {
      if (BYTE6(v28) == 2)
      {
        *(v27 + WORD2(v28)) = 33;
        *(v27 + WORD2(v28) + 1) = 0;
        *(v27 + WORD2(v28) + 3) = 0;
        v16 = WORD2(v28) + 4;
        WORD2(v28) += 4;
        if (HIBYTE(v28))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v28) - v16 > 1)
        {
          if (BYTE6(v28) == 2)
          {
            *(v27 + v16) = *a1;
            *(v27 + WORD2(v28) + 1) = a1[1];
            v17 = WORD2(v28) + 2;
            WORD2(v28) += 2;
            if (HIBYTE(v28))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v28) - v17 > 1)
            {
              if (BYTE6(v28) == 2)
              {
                *(v27 + v17) = a2;
                *(v27 + WORD2(v28) + 1) = HIBYTE(a2);
                v18 = WORD2(v28) + 2;
                WORD2(v28) += 2;
                if (HIBYTE(v28))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v28) - v18 > 1)
                {
                  if (BYTE6(v28) == 2)
                  {
                    *(v27 + v18) = a3;
                    *(v27 + WORD2(v28) + 1) = HIBYTE(a3);
                    v19 = WORD2(v28) + 2;
                    WORD2(v28) += 2;
                    if (HIBYTE(v28))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v28) - v19 > 1)
                    {
                      if (BYTE6(v28) == 2)
                      {
                        *(v27 + v19) = a4;
                        *(v27 + WORD2(v28) + 1) = HIBYTE(a4);
                        v20 = WORD2(v28) + 2;
                        WORD2(v28) += 2;
                        if (HIBYTE(v28))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v28) - v20 > 1)
                        {
                          if (BYTE6(v28) == 2)
                          {
                            *(v27 + v20) = a5;
                            *(v27 + WORD2(v28) + 1) = HIBYTE(a5);
                            WORD2(v28) += 2;
                            return sub_100020078(226, v27, BYTE4(v28), a6, sub_100022AD0, v13, v14, v15);
                          }

                          v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2961, v26);
                        }

                        v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_45;
                      }

                      v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2960, v25);
                    }

                    v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_41;
                  }

                  v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2959, v24);
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_37;
              }

              v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2958, v23);
            }

            v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2957, v22);
        }

        v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_29;
      }

      v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2956, v21);
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10026FE5C(__int16 a1, __int16 a2, __int16 a3, __int16 a4, uint64_t (*a5)())
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

    else if (WORD1(v24) - WORD2(v24) > 3)
    {
      if (BYTE6(v24) == 2)
      {
        *(v23 + WORD2(v24)) = 34;
        *(v23 + WORD2(v24) + 1) = 0;
        *(v23 + WORD2(v24) + 3) = 0;
        v14 = WORD2(v24) + 4;
        WORD2(v24) += 4;
        if (HIBYTE(v24))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v24) - v14 > 1)
        {
          if (BYTE6(v24) == 2)
          {
            *(v23 + v14) = a1;
            *(v23 + WORD2(v24) + 1) = HIBYTE(a1);
            v15 = WORD2(v24) + 2;
            WORD2(v24) += 2;
            if (HIBYTE(v24))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v24) - v15 > 1)
            {
              if (BYTE6(v24) == 2)
              {
                *(v23 + v15) = a2;
                *(v23 + WORD2(v24) + 1) = HIBYTE(a2);
                v16 = WORD2(v24) + 2;
                WORD2(v24) += 2;
                if (HIBYTE(v24))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v24) - v16 > 1)
                {
                  if (BYTE6(v24) == 2)
                  {
                    *(v23 + v16) = a3;
                    *(v23 + WORD2(v24) + 1) = HIBYTE(a3);
                    v17 = WORD2(v24) + 2;
                    WORD2(v24) += 2;
                    if (HIBYTE(v24))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v24) - v17 > 1)
                    {
                      if (BYTE6(v24) == 2)
                      {
                        *(v23 + v17) = a4;
                        *(v23 + WORD2(v24) + 1) = HIBYTE(a4);
                        WORD2(v24) += 2;
                        return sub_100020078(226, v23, BYTE4(v24), a5, sub_100022AD0, v11, v12, v13);
                      }

                      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2979, v22);
                    }

                    v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_38;
                  }

                  v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2978, v21);
                }

                v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_34;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2977, v20);
            }

            v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_30;
          }

          v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2976, v19);
        }

        v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_26;
      }

      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2975, v18);
    }

    v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002701DC(uint64_t (*a1)())
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
        *(v7 + WORD2(v8)) = 35;
        *(v7 + WORD2(v8) + 1) = 0;
        *(v7 + WORD2(v8) + 3) = 0;
        WORD2(v8) += 4;
        return sub_100020078(226, v7, BYTE4(v8), a1, sub_100022AD0, v3, v4, v5);
      }

      v6 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2993, v6);
    }

    v6 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002702EC(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 37;
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
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3007, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3006, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100270478(char a1, char a2, uint64_t (*a3)())
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

    else if (WORD1(v17) - WORD2(v17) > 3)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = 38;
        *(v16 + WORD2(v17) + 1) = 0;
        *(v16 + WORD2(v17) + 3) = 0;
        v10 = WORD2(v17);
        v11 = WORD2(v17) + 4;
        WORD2(v17) += 4;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v17) > v11)
        {
          if (BYTE6(v17) == 2)
          {
            WORD2(v17) = v10 + 5;
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
                  return sub_100020078(226, v16, BYTE4(v17), a3, sub_100022AD0, v7, v8, v9);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3023, v15);
              }
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3022, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3021, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100270688(char a1, char a2, __int16 a3, __int16 a4, __int16 a5, uint64_t (*a6)())
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
      v16 = WORD2(v26);
      if (WORD1(v26) > WORD2(v26))
      {
        if (BYTE6(v26) == 2)
        {
          ++WORD2(v26);
          *(v25 + v16) = a1;
          if (HIBYTE(v26))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v17 = WORD2(v26);
            if (WORD1(v26) > WORD2(v26))
            {
              if (BYTE6(v26) == 2)
              {
                ++WORD2(v26);
                *(v25 + v17) = a2;
                if (HIBYTE(v26))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v26) - WORD2(v26) > 1)
                {
                  if (BYTE6(v26) == 2)
                  {
                    *(v25 + WORD2(v26)) = a4;
                    v18 = WORD2(v26) + 2;
                    WORD2(v26) += 2;
                    if (HIBYTE(v26))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v26) - v18 > 1)
                    {
                      if (BYTE6(v26) == 2)
                      {
                        *(v25 + v18) = a5;
                        *(v25 + WORD2(v26) + 1) = HIBYTE(a5);
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
                            *(v25 + v19) = a3;
                            *(v25 + WORD2(v26) + 1) = HIBYTE(a3);
                            WORD2(v26) += 2;
                            return sub_100020078(517, v25, BYTE4(v26), a6, sub_100022AD0, v13, v14, v15);
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3040, v24);
                        }

                        v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_38;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3039, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_34;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3038, v22);
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_30;
              }

              v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3037, v21);
            }
          }

          v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3036, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002709B4(char a1, __int16 a2, char a3, __int16 a4, char a5, uint64_t (*a6)())
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

    else if (WORD1(v29) - WORD2(v29) > 3)
    {
      if (BYTE6(v29) == 2)
      {
        *(v28 + WORD2(v29)) = 44;
        *(v28 + WORD2(v29) + 1) = 0;
        *(v28 + WORD2(v29) + 3) = 0;
        v16 = WORD2(v29);
        v17 = WORD2(v29) + 4;
        WORD2(v29) += 4;
        if (HIBYTE(v29))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v29) > v17)
        {
          if (BYTE6(v29) == 2)
          {
            WORD2(v29) = v16 + 5;
            *(v28 + v17) = a1;
            if (HIBYTE(v29))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v29) - WORD2(v29) > 1)
            {
              if (BYTE6(v29) == 2)
              {
                *(v28 + WORD2(v29)) = a2;
                v18 = WORD2(v29);
                v19 = WORD2(v29) + 2;
                WORD2(v29) += 2;
                if (HIBYTE(v29))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v29) > v19)
                {
                  if (BYTE6(v29) == 2)
                  {
                    WORD2(v29) = v18 + 3;
                    *(v28 + v19) = a3;
                    if (HIBYTE(v29))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v29) - WORD2(v29) > 1)
                    {
                      if (BYTE6(v29) == 2)
                      {
                        *(v28 + WORD2(v29)) = a4;
                        v20 = WORD2(v29);
                        v21 = WORD2(v29) + 2;
                        WORD2(v29) += 2;
                        if (HIBYTE(v29))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        }

                        else if (WORD1(v29) > v21)
                        {
                          if (BYTE6(v29) == 2)
                          {
                            WORD2(v29) = v20 + 3;
                            *(v28 + v21) = a5;
                            return sub_100020078(226, v28, BYTE4(v29), a6, sub_100083FE4, v13, v14, v15);
                          }

                          v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6200, v27);
                        }

                        v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_45;
                      }

                      v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6199, v26);
                    }

                    v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_41;
                  }

                  v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6198, v25);
                }

                v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_37;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6197, v24);
            }

            v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6196, v23);
        }

        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_29;
      }

      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6195, v22);
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100270D78(char a1, __int16 a2, uint64_t (*a3)())
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

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 46;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v10 = WORD2(v16);
        v11 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) > v11)
        {
          if (BYTE6(v16) == 2)
          {
            WORD2(v16) = v10 + 5;
            *(v15 + v11) = a1;
            if (HIBYTE(v16))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v16) - WORD2(v16) > 1)
            {
              if (BYTE6(v16) == 2)
              {
                *(v15 + WORD2(v16)) = a2;
                WORD2(v16) += 2;
                return sub_100020078(226, v15, BYTE4(v16), a3, sub_100083FE4, v7, v8, v9);
              }

              v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6232, v14);
            }

            v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_24;
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6231, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6230, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100270FA4(char a1, __int16 a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 49;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v12 = WORD2(v21);
        v13 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) > v13)
        {
          if (BYTE6(v21) == 2)
          {
            WORD2(v21) = v12 + 5;
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
                    return sub_100020078(226, v20, BYTE4(v21), a4, sub_100083FE4, v9, v10, v11);
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6268, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_31;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6267, v18);
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_27;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6266, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_23;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6265, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10027124C(char a1, _BYTE *a2, uint64_t (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v18) - WORD2(v18) > 3)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = 48;
        *(v17 + WORD2(v18) + 1) = 0;
        *(v17 + WORD2(v18) + 3) = 0;
        v10 = WORD2(v18);
        v11 = WORD2(v18) + 4;
        WORD2(v18) += 4;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v18) > v11)
        {
          if (BYTE6(v18) == 2)
          {
            WORD2(v18) = v10 + 5;
            *(v17 + v11) = a1;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v18) > WORD2(v18))
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + WORD2(v18)) = 0;
                v12 = ++WORD2(v18);
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v18) - v12 > 1)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + v12) = *a2;
                    *(v17 + WORD2(v18) + 1) = a2[1];
                    WORD2(v18) += 2;
                    return sub_100020078(226, v17, BYTE4(v18), a3, sub_100022AD0, v7, v8, v9);
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2488, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_31;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2487, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
            goto LABEL_27;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2486, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_23;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2484, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002714F8(__int16 a1, char a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 47;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v12 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) - v12 > 1)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v12) = a1;
            *(v20 + WORD2(v21) + 1) = HIBYTE(a1);
            v13 = WORD2(v21);
            v14 = WORD2(v21) + 2;
            WORD2(v21) += 2;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v21) > v14)
            {
              if (BYTE6(v21) == 2)
              {
                WORD2(v21) = v13 + 3;
                *(v20 + v14) = a2;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v15 = WORD2(v21);
                  if (WORD1(v21) > WORD2(v21))
                  {
                    if (BYTE6(v21) == 2)
                    {
                      ++WORD2(v21);
                      *(v20 + v15) = a3;
                      return sub_100020078(226, v20, BYTE4(v21), a4, sub_100083FE4, v9, v10, v11);
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6250, v19);
                  }
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_31;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6249, v18);
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6248, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6247, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002717A0(unsigned int a1, unsigned int a2, uint64_t (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v18) - WORD2(v18) > 3)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = 50;
        *(v17 + WORD2(v18) + 1) = 0;
        *(v17 + WORD2(v18) + 3) = 0;
        v10 = WORD2(v18) + 4;
        WORD2(v18) += 4;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v18) - v10 > 3)
        {
          if (BYTE6(v18) == 2)
          {
            v11 = a1 / 1.25;
            *(v17 + v10) = v11;
            *(v17 + WORD2(v18) + 1) = v11 >> 8;
            *(v17 + WORD2(v18) + 2) = v11 >> 16;
            *(v17 + WORD2(v18) + 3) = v11 >> 24;
            v12 = WORD2(v18) + 4;
            WORD2(v18) += 4;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v18) - v12 > 3)
            {
              if (BYTE6(v18) == 2)
              {
                v13 = a2 / 1.25;
                *(v17 + v12) = v13;
                *(v17 + WORD2(v18) + 1) = v13 >> 8;
                *(v17 + WORD2(v18) + 2) = v13 >> 16;
                *(v17 + WORD2(v18) + 3) = v13 >> 24;
                WORD2(v18) += 4;
                return sub_100020078(226, v17, BYTE4(v18), a3, sub_100022AD0, v7, v8, v9);
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2511, v16);
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_24;
          }

          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2510, v15);
        }

        v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_20;
      }

      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2508, v14);
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100271A54(char a1, uint64_t (*a2)())
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

    else if (WORD1(v12) - WORD2(v12) > 3)
    {
      if (BYTE6(v12) == 2)
      {
        *(v11 + WORD2(v12)) = 51;
        *(v11 + WORD2(v12) + 1) = 0;
        *(v11 + WORD2(v12) + 3) = 0;
        v8 = WORD2(v12) + 4;
        WORD2(v12) += 4;
        if (HIBYTE(v12))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v12) - v8 > 3)
        {
          if (BYTE6(v12) == 2)
          {
            *(v11 + v8) = a1;
            *(v11 + WORD2(v12) + 1) = 0;
            *(v11 + WORD2(v12) + 3) = 0;
            WORD2(v12) += 4;
            return sub_100020078(226, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
          }

          v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2530, v10);
        }

        v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_17;
      }

      v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2529, v9);
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100271C18(int a1, _WORD *a2, uint64_t (*a3)())
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
        *(v18 + WORD2(v19)) = 53;
        *(v18 + WORD2(v19) + 1) = 0;
        *(v18 + WORD2(v19) + 3) = 0;
        v10 = WORD2(v19);
        v11 = WORD2(v19) + 4;
        WORD2(v19) += 4;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v19) > v11)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v10 + 5;
            *(v18 + v11) = 1;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v19) - WORD2(v19) > 1)
            {
              if (BYTE6(v19) == 2)
              {
                *(v18 + WORD2(v19)) = *a2;
                v12 = WORD2(v19) + 2;
                WORD2(v19) += 2;
                if (a1)
                {
                  if (HIBYTE(v19))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v19) - v12 > 3)
                  {
                    if (BYTE6(v19) == 2)
                    {
                      *(v18 + v12) = 0;
LABEL_20:
                      WORD2(v19) += 4;
                      return sub_100020078(226, v18, BYTE4(v19), a3, sub_100022AD0, v7, v8, v9);
                    }

                    v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2552, v16);
                  }

                  v16 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
                  goto LABEL_39;
                }

                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v19) - v12 > 3)
                {
                  if (BYTE6(v19) == 2)
                  {
                    *(v18 + v12) = 0x80;
                    *(v18 + WORD2(v19) + 1) = 0;
                    *(v18 + WORD2(v19) + 3) = 0;
                    goto LABEL_20;
                  }

                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2554, v17);
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_41;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2549, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2548, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_29;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2547, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100271F7C(uint64_t a1, uint64_t (*a2)())
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

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = 52;
        *(v15 + WORD2(v16) + 1) = 0;
        *(v15 + WORD2(v16) + 3) = 0;
        v5 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        v14[0] = BYTE5(a1);
        v14[1] = BYTE4(a1);
        v14[2] = BYTE3(a1);
        v14[3] = BYTE2(a1);
        v14[4] = BYTE1(a1);
        v14[5] = a1;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v16) - v5 > 5)
        {
          if (BYTE6(v16) == 2)
          {
            sub_1000075EC((v15 + v5), v14, 6uLL);
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
                *(v15 + v10) = BYTE6(a1);
                return sub_100020078(226, v15, BYTE4(v16), a2, sub_100022AD0, v6, v7, v8);
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2577, v13);
            }

            v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2576, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
        goto LABEL_20;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2573, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1002721C0(__int16 a1, char a2, char a3, uint64_t (*a4)())
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

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 57;
        *(v20 + WORD2(v21) + 1) = 0;
        *(v20 + WORD2(v21) + 3) = 0;
        v12 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v21) - v12 > 1)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v12) = a1;
            *(v20 + WORD2(v21) + 1) = HIBYTE(a1);
            v13 = WORD2(v21);
            v14 = WORD2(v21) + 2;
            WORD2(v21) += 2;
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v21) > v14)
            {
              if (BYTE6(v21) == 2)
              {
                WORD2(v21) = v13 + 3;
                *(v20 + v14) = a2;
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v15 = WORD2(v21);
                  if (WORD1(v21) > WORD2(v21))
                  {
                    if (BYTE6(v21) == 2)
                    {
                      ++WORD2(v21);
                      *(v20 + v15) = a3;
                      return sub_100020078(226, v20, BYTE4(v21), a4, sub_100083FE4, v9, v10, v11);
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6300, v19);
                  }
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_31;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6299, v18);
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_27;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6298, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6297, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100272468(__int16 a1, char a2, uint64_t (*a3)())
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

    else if (WORD1(v17) - WORD2(v17) > 3)
    {
      if (BYTE6(v17) == 2)
      {
        *(v16 + WORD2(v17)) = 64;
        *(v16 + WORD2(v17) + 1) = 0;
        *(v16 + WORD2(v17) + 3) = 0;
        v10 = WORD2(v17) + 4;
        WORD2(v17) += 4;
        if (HIBYTE(v17))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v17) - v10 > 1)
        {
          if (BYTE6(v17) == 2)
          {
            *(v16 + v10) = a1;
            *(v16 + WORD2(v17) + 1) = HIBYTE(a1);
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
                return sub_100020078(226, v16, BYTE4(v17), a3, sub_100083FE4, v7, v8, v9);
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6316, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6315, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_20;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6314, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100272694(char a1, uint64_t (*a2)())
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
        *(v12 + WORD2(v13)) = 66;
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
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_100083FE4, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6330, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6329, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100272820(char a1, _BYTE *a2, _WORD *a3, char a4, char a5, uint64_t (*a6)())
{
  v28 = 0;
  v29 = 0;
  if (!sub_10001FFD8(&v28))
  {
    if (HIBYTE(v29))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else if (WORD1(v29) - WORD2(v29) > 3)
    {
      if (BYTE6(v29) == 2)
      {
        *(v28 + WORD2(v29)) = 60;
        *(v28 + WORD2(v29) + 1) = 0;
        *(v28 + WORD2(v29) + 3) = 0;
        v15 = WORD2(v29);
        v16 = WORD2(v29) + 4;
        WORD2(v29) += 4;
        if (HIBYTE(v29))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        }

        else if (WORD1(v29) > v16)
        {
          if (BYTE6(v29) == 2)
          {
            WORD2(v29) = v15 + 5;
            *(v28 + v16) = a1;
            if (HIBYTE(v29))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else if (WORD1(v29) - WORD2(v29) > 1)
            {
              if (BYTE6(v29) == 2)
              {
                *(v28 + WORD2(v29)) = *a3;
                v17 = WORD2(v29) + 2;
                WORD2(v29) += 2;
                if (HIBYTE(v29))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else if (WORD1(v29) - v17 > 1)
                {
                  if (BYTE6(v29) == 2)
                  {
                    *(v28 + v17) = *a2;
                    *(v28 + WORD2(v29) + 1) = a2[1];
                    v18 = WORD2(v29);
                    v19 = WORD2(v29) + 2;
                    WORD2(v29) += 2;
                    if (HIBYTE(v29))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else if (WORD1(v29) > v19)
                    {
                      if (BYTE6(v29) == 2)
                      {
                        WORD2(v29) = v18 + 3;
                        *(v28 + v19) = a4;
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
                              *(v28 + v20) = a5;
                              return sub_100020078(226, v28, BYTE4(v29), a6, sub_100022AD0, v12, v13, v14);
                            }

                            v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7671, v27);
                          }
                        }

                        v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_45;
                      }

                      v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_41:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7670, v26);
                    }

                    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_41;
                  }

                  v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_37:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7669, v25);
                }

                v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_37;
              }

              v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_33:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7668, v24);
            }

            v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_33;
          }

          v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_29:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7667, v23);
        }

        v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_29;
      }

      v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 7666, v22);
    }

    v22 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_25;
  }

  return sub_100020078(226, v28, BYTE4(v29), a6, sub_100022AD0, v12, v13, v14);
}

uint64_t sub_100272BEC(char a1, uint64_t a2, const void *a3, int a4, uint64_t (*a5)())
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
      v11 = WORD2(v24);
      if (WORD1(v24) > WORD2(v24))
      {
        if (BYTE6(v24) == 2)
        {
          ++WORD2(v24);
          *(v23 + v11) = 2;
          v12 = v23;
          v13 = WORD2(v24);
          if (HIBYTE(v24))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            v14 = 0;
          }

          else
          {
            v14 = WORD1(v24) - WORD2(v24);
          }

          if (v14 < a4)
          {
            v20 = "ByteStream_NumReadBytesAvail(bs) >= (IrkLength)";
          }

          else
          {
            if (BYTE6(v24) == 2)
            {
              memmove((v12 + v13), a3, a4);
              v15 = WORD2(v24) + a4;
              WORD2(v24) += a4;
              if (HIBYTE(v24))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v24) > v15)
              {
                if (BYTE6(v24) == 2)
                {
                  WORD2(v24) = v15 + 1;
                  *(v23 + v15) = a1;
                  if (HIBYTE(v24))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else if (WORD1(v24) - WORD2(v24) > 5)
                  {
                    if (BYTE6(v24) == 2)
                    {
                      sub_1000075EC((v23 + WORD2(v24)), a2, 6uLL);
                      WORD2(v24) += 6;
                      return sub_100020078(233, v23, BYTE4(v24), a5, sub_100022AD0, v16, v17, v18);
                    }

                    v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3154, v22);
                  }

                  v22 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                  goto LABEL_32;
                }

                v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3153, v21);
              }

              v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_28;
            }

            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3152, v20);
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3151, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_21;
  }

  return result;
}