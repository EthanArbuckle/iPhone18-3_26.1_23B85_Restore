BOOL uarpApplePlatformMessageCheckExpectedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 < 0xB)
  {
    return 0;
  }

  if (*(a5 + 6) != *(a3 + 6) || *(a5 + 8) != *(a3 + 8))
  {
    return 0;
  }

  word_1000D3740 = 2492;
  byte_1000D3742 = 99;
  v10 = *(a5 + 6) == 2492 && *(a5 + 8) == 99;
  if (!v10 || uarpNtohs(*(a5 + 9)) != 33)
  {
    return 0;
  }

  v12 = uarpNtohs(*(a3 + 9));
  result = 0;
  if (a6 >= 0x17 && v12 == 32)
  {
    return *(a5 + 15) == *(a3 + 11);
  }

  return result;
}

uint64_t uarpApplePlatformMessageCheckValidToSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 1;
  }

  word_1000D3740 = 2492;
  byte_1000D3742 = 99;
  if (*(a3 + 6) != 2492 || *(a3 + 8) != 99)
  {
    return 1;
  }

  v11 = uarpNtohs(*(a3 + 9));
  result = 1;
  if (a4 >= 0xF && v11 == 32)
  {
    if (uarpNtohl(*(a3 + 11)) == 2 && (*(a2 + 48) < 2u || *(a2 + 24)))
    {
      v12 = *(v4 + 32);
      if (v12)
      {
LABEL_14:
        v12(*(a1 + 608), *(a2 + 40), 0, 0);
      }
    }

    else
    {
      if (uarpNtohl(*(a3 + 11)) != 1 || *(a2 + 48) >= 2u && !*(a2 + 24))
      {
        return 1;
      }

      v12 = *(v4 + 16);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t uarpApplePlatformMessageExceededRetries(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    word_1000D3740 = 2492;
    byte_1000D3742 = 99;
    if (*(a3 + 6) == 2492 && *(a3 + 8) == 99)
    {
      v9 = result;
      result = uarpHtons(*(a3 + 9));
      if (a4 >= 0xF && result == 32)
      {
        result = uarpHtonl(*(a3 + 11));
        if (result == 1)
        {
          v10 = v4[2];
          if (!v10)
          {
            return result;
          }
        }

        else
        {
          result = uarpHtonl(*(a3 + 11));
          if (result == 2)
          {
            v10 = v4[4];
            if (!v10)
            {
              return result;
            }
          }

          else
          {
            result = uarpHtonl(*(a3 + 11));
            if (result == 3)
            {
              v10 = v4[6];
              if (!v10)
              {
                return result;
              }
            }

            else
            {
              result = uarpHtonl(*(a3 + 11));
              if (result == 4)
              {
                v10 = v4[8];
                if (!v10)
                {
                  return result;
                }
              }

              else
              {
                result = uarpHtonl(*(a3 + 11));
                if (result == 5)
                {
                  v10 = v4[10];
                  if (!v10)
                  {
                    return result;
                  }
                }

                else
                {
                  result = uarpHtonl(*(a3 + 11));
                  if (result == 6)
                  {
                    v10 = v4[12];
                    if (!v10)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = uarpHtonl(*(a3 + 11));
                    if (result == 7)
                    {
                      v10 = v4[14];
                      if (!v10)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = uarpHtonl(*(a3 + 11));
                      if (result == 29)
                      {
                        v10 = v4[16];
                        if (!v10)
                        {
                          return result;
                        }
                      }

                      else
                      {
                        result = uarpHtonl(*(a3 + 11));
                        if (result == 8)
                        {
                          v10 = v4[18];
                          if (!v10)
                          {
                            return result;
                          }
                        }

                        else
                        {
                          result = uarpHtonl(*(a3 + 11));
                          if (result == 9)
                          {
                            v10 = v4[20];
                            if (!v10)
                            {
                              return result;
                            }
                          }

                          else
                          {
                            result = uarpHtonl(*(a3 + 11));
                            if (result == 10)
                            {
                              v10 = v4[22];
                              if (!v10)
                              {
                                return result;
                              }
                            }

                            else
                            {
                              result = uarpHtonl(*(a3 + 11));
                              if (result == 11)
                              {
                                v10 = v4[24];
                                if (!v10)
                                {
                                  return result;
                                }
                              }

                              else
                              {
                                result = uarpHtonl(*(a3 + 11));
                                if (result == 12)
                                {
                                  v10 = v4[26];
                                  if (!v10)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  result = uarpHtonl(*(a3 + 11));
                                  if (result == 13)
                                  {
                                    v10 = v4[28];
                                    if (!v10)
                                    {
                                      return result;
                                    }
                                  }

                                  else
                                  {
                                    result = uarpHtonl(*(a3 + 11));
                                    if (result == 14)
                                    {
                                      v10 = v4[30];
                                      if (!v10)
                                      {
                                        return result;
                                      }
                                    }

                                    else
                                    {
                                      result = uarpHtonl(*(a3 + 11));
                                      if (result == 15)
                                      {
                                        v10 = v4[32];
                                        if (!v10)
                                        {
                                          return result;
                                        }
                                      }

                                      else
                                      {
                                        result = uarpHtonl(*(a3 + 11));
                                        if (result == 16)
                                        {
                                          v10 = v4[34];
                                          if (!v10)
                                          {
                                            return result;
                                          }
                                        }

                                        else
                                        {
                                          result = uarpHtonl(*(a3 + 11));
                                          if (result == 17)
                                          {
                                            v10 = v4[36];
                                            if (!v10)
                                            {
                                              return result;
                                            }
                                          }

                                          else
                                          {
                                            result = uarpHtonl(*(a3 + 11));
                                            if (result == 18)
                                            {
                                              v10 = v4[38];
                                              if (!v10)
                                              {
                                                return result;
                                              }
                                            }

                                            else
                                            {
                                              result = uarpHtonl(*(a3 + 11));
                                              if (result == 19)
                                              {
                                                v10 = v4[40];
                                                if (!v10)
                                                {
                                                  return result;
                                                }
                                              }

                                              else
                                              {
                                                result = uarpHtonl(*(a3 + 11));
                                                if (result == 20)
                                                {
                                                  v10 = v4[42];
                                                  if (!v10)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                else
                                                {
                                                  result = uarpHtonl(*(a3 + 11));
                                                  if (result == 21)
                                                  {
                                                    v10 = v4[44];
                                                    if (!v10)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = uarpHtonl(*(a3 + 11));
                                                    if (result == 22)
                                                    {
                                                      v10 = v4[46];
                                                      if (!v10)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = uarpHtonl(*(a3 + 11));
                                                      if (result == 23)
                                                      {
                                                        v10 = v4[48];
                                                        if (!v10)
                                                        {
                                                          return result;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = uarpHtonl(*(a3 + 11));
                                                        if (result == 24)
                                                        {
                                                          v10 = v4[50];
                                                          if (!v10)
                                                          {
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = uarpHtonl(*(a3 + 11));
                                                          if (result == 30)
                                                          {
                                                            v10 = v4[60];
                                                            if (!v10)
                                                            {
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = uarpHtonl(*(a3 + 11));
                                                            if (result == 31)
                                                            {
                                                              v10 = v4[62];
                                                              if (!v10)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = uarpHtonl(*(a3 + 11));
                                                              if (result == 32)
                                                              {
                                                                v10 = v4[64];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = uarpHtonl(*(a3 + 11));
                                                                if (result != 33)
                                                                {
                                                                  return result;
                                                                }

                                                                v10 = v4[66];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v11 = *(v9 + 608);
        v12 = *(a2 + 40);

        return v10(v11, v12, 0, 0);
      }
    }
  }

  return result;
}

uint64_t uarpCompressionHeaderEndianSwap(unsigned __int16 *a1, uint64_t a2)
{
  *a2 = uarpHtons(*a1);
  *(a2 + 2) = uarpHtonl(*(a1 + 1));
  *(a2 + 6) = uarpHtons(a1[3]);
  result = uarpHtons(a1[4]);
  *(a2 + 8) = result;
  return result;
}

char *uarpAssetTagChdr4cc()
{
  result = aChdr;
  aChdr[4] = 0;
  return result;
}

int *uarpAssetTagStructChdr()
{
  aChdr[4] = 0;
  result = &dword_1000D3744;
  dword_1000D3744 = *aChdr;
  return result;
}

uint64_t uarpPayloadTagUnpack(uint64_t result, char *a2)
{
  v2 = result >> 8;
  v3 = WORD1(result);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 48;
  }

  if (!result)
  {
    LOBYTE(v2) = 48;
    LOBYTE(v3) = 48;
  }

  *a2 = v4;
  a2[1] = v2;
  if (result)
  {
    v5 = BYTE3(result);
  }

  else
  {
    v5 = 48;
  }

  a2[2] = v3;
  a2[3] = v5;
  return result;
}

_BYTE *uarpPayloadTagStructPack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

_BYTE *uarpPayloadTagStructUnpack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

uint64_t uarpVersionCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 2;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 2;
  }

  if (v3 < v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 > v6)
  {
    return 2;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 2;
  }

  else
  {
    return v11;
  }
}

uint64_t uarpAssetCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) == *(a2 + 46) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && *(a1 + 51) == *(a2 + 51) && *(a1 + 68) == *(a2 + 68) && *(a1 + 448) == *(a2 + 448))
  {
    return uarpVersionCompare((a1 + 52), (a2 + 52));
  }

  else
  {
    return 3;
  }
}

uint64_t uarpVersionEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpNtohl(*a1);
  a2[1] = uarpNtohl(a1[1]);
  a2[2] = uarpNtohl(a1[2]);
  result = uarpNtohl(a1[3]);
  a2[3] = result;
  return result;
}

const char *uarpStatusCodeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B8D50[a1];
  }
}

int *uarpAssetTagStructSuperBinary()
{
  result = &dword_1000D3748;
  dword_1000D3748 = 0;
  return result;
}

const char *uarpApplyFlagsToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B8F60[a1 - 1];
  }
}

const char *uarpProcessingFlagsReasonToString(int a1)
{
  HIDWORD(v2) = a1 - 256;
  LODWORD(v2) = a1 - 256;
  v1 = v2 >> 8;
  if (v1 > 0xE)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B8F90[v1];
  }
}

const char *uarpProcessingStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B9008[(a1 - 1)];
  }
}

__int128 *uarpStageStatusToString(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      result = xmmword_1000D374C;
      strcpy(xmmword_1000D374C, "Upload Complete");
      return result;
    }

    if (a1 == 2)
    {
      v1 = "Upload Denied";
      goto LABEL_13;
    }

LABEL_12:
    v1 = "<unknown>";
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = "Asset Not Found";
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = "Asset Corrupt";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v1 = "Upload Abandoned";
LABEL_13:
  v3 = uarpProcessingFlagsReasonToString(a1 & 0xFF00);
  snprintf(xmmword_1000D374C, 0x100uLL, "%s (%s)", v1, v3);
  return xmmword_1000D374C;
}

const char *uarpEndpointRoleToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B9078[a1];
  }
}

const char *uarpLoggingCategoryToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B9030[a1];
  }
}

void *uarpProcessPayloadTLVInternal(void *result, uint64_t a2, uint64_t a3, signed int a4, size_t __size, unsigned int *a6)
{
  v10 = result;
  if (a4 != -858619624)
  {
    if (a4 == -858619625)
    {
      if (__size == 2)
      {
        v12 = uarpNtohs(*a6);
        *(a3 + 76) = v12;
        UARPLayer2HashInfo(v10, v12, (a3 + 88), (a3 + 104));
        v13 = *(a3 + 88);
        if (!v13 || !UARPLayer2RequestBuffer(v10, (a3 + 80), v13, 34952, 850) && *(a3 + 80))
        {
          v14 = *(a3 + 104);
          if (!v14 || !UARPLayer2RequestBuffer(v10, (a3 + 96), v14, 34952, 866) && *(a3 + 96))
          {
            v18 = *(a3 + 76);
            v19 = *(a3 + 80);

            return UARPLayer2HashInit(v10, v18, v19);
          }
        }

        *(a3 + 76) = 0;
      }

LABEL_11:

      return UARPLayer2AssetCorrupt(v10, a2);
    }

    if (*(a3 + 76))
    {
      v21 = uarpHtonl(a4);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v21, 4);
      v20 = uarpHtonl(__size);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v20, 4);
      result = UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), a6, __size);
    }

    if (a4 > -858619631)
    {
      if (a4 == -858619630)
      {
        if (__size == 2)
        {
          result = uarpNtohs(*a6);
          *(a3 + 56) = result;
          return result;
        }
      }

      else
      {
        if (a4 != -858619623)
        {
          return result;
        }

        if (__size == 4)
        {
          result = uarpNtohl(*a6);
          *(a3 + 128) = result;
          return result;
        }
      }
    }

    else if (a4 == -858619641)
    {
      *(a3 + 72) = __size;
      if (!UARPLayer2RequestBuffer(v10, (a3 + 64), __size, 34952, 966))
      {
        v17 = *(a3 + 64);
        if (v17)
        {
          return memcpy(v17, a6, *(a3 + 72));
        }
      }
    }

    else
    {
      if (a4 != -858619636)
      {
        return result;
      }

      if (__size == 4)
      {
        result = uarpNtohl(*a6);
        if (result)
        {
          *(a3 + 52) = 1;
          if (!*(a2 + 656))
          {
            result = UARPLayer2RequestBuffer(v10, (a2 + 656), *(a2 + 648), 34952, 942);
            if (*(a2 + 656))
            {
              *(a2 + 664) = *(a2 + 648);
              *(a2 + 668) = 0;
            }
          }

          return result;
        }
      }
    }

    return UARPLayer2AssetCorrupt(v10, a2);
  }

  *(a3 + 120) = __size;
  if (UARPLayer2RequestBuffer(result, (a3 + 112), __size, 34952, 887))
  {
    goto LABEL_11;
  }

  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a3 + 120);

  return memcpy(v15, a6, v16);
}

uint64_t uarpAssetSuperBinaryVersionForProtocolVersion(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t uarpDownstreamEndpointGetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

void uarpPrintDataResponseDetails(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *(a1 + 608);
    v14 = *(a1 + 616);
    if (v14 > 2)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = off_1000B9078[v14];
    }

    v18 = uarpStatusCodeToString(a4);
    v12(v13, 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v15, v18, a5, a6, a7);
  }

  else
  {
    v16 = *(a1 + 616);
    if (v16 > 2)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = off_1000B9078[v16];
    }

    v19 = uarpStatusCodeToString(a4);
    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v17, v19, a5, a6, a7);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(a1 + 616);
    if (v21 > 2)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = off_1000B9078[v21];
    }

    v20(*(a1 + 608), 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v22, *(a3 + 88), *(a3 + 92));
  }

  else
  {
    v23 = *(a1 + 616);
    if (v23 > 2)
    {
      v24 = "<unknown>";
    }

    else
    {
      v24 = off_1000B9078[v23];
    }

    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v24, *(a3 + 88), *(a3 + 92));
  }
}

uint64_t uarpCopyDefaultInfoString(_DWORD *a1, uint64_t a2)
{
  if (a2 < 7)
  {
    return 0;
  }

  *(a1 + 3) = 1314344782;
  *a1 = 1313558101;
  return a2;
}

uint64_t uarpMessageAdjustedForEndpointID(unsigned __int16 *a1, unsigned int a2, _WORD *a3, void *a4, unsigned int *a5)
{
  result = 30;
  if (a2 >= 6 && a1 && a3 && a4 && a5)
  {
    v10 = a2;
    if (uarpNtohs(*a1) == 27)
    {
      v11 = v10 >= 8;
      v10 -= 8;
      if (!v11)
      {
        return 30;
      }

      *a3 = uarpNtohs(a1[3]);
      *a4 = a1 + 4;
    }

    else
    {
      *a3 = 0;
      *a4 = a1;
    }

    result = 0;
    *a5 = v10;
  }

  return result;
}

const char *uarpMessageTypeToString(__int16 a1)
{
  if ((a1 + 1) > 0x27u)
  {
    return "<unknown>";
  }

  else
  {
    return off_1000B9090[(a1 + 1)];
  }
}

void *uarpAllocateTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = 0;
  v6 = UARPLayer2RequestBuffer(a1, &v12, 0x48uLL, 61166, 61);
  result = 0;
  if (!v6)
  {
    v8 = *a2 + *(a2 + 30) + 26;
    if (v8 <= a3)
    {
      v8 = a3;
    }

    v11 = v8;
    if (UARPLayer2RequestTransmitMsgBuffer(a1, a2, v12 + 1, &v11, 61166, 95))
    {
      UARPLayer2ReturnBuffer(a1, v12, 61166, 101);
      return 0;
    }

    else
    {
      v9 = v11;
      result = v12;
      *(v12 + 4) = v11;
      v10 = *(a2 + 30);
      result[3] = result[1] + v10;
      *(result + 8) = v9 - v10;
      *(result + 18) = 0;
    }
  }

  return result;
}

void *uarpAllocPrepareTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a2 + 104);
  if (v10)
  {
    *(a2 + 104) = *v10;
    v11 = *(v10 + 8);
    if (v11 >= a4)
    {
      goto LABEL_6;
    }

    UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v10[1], 61166, 128);
    UARPLayer2ReturnBuffer(a1, v10, 61166, 133);
  }

  TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, a4);
  v10 = TransmitBuffer2;
  if (!TransmitBuffer2)
  {
    return v10;
  }

  v11 = *(TransmitBuffer2 + 8);
LABEL_6:
  *(v10 + 18) = a4;
  *(v10 + 40) = a5;
  if (a5)
  {
    v13 = *(a2 + 18) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v10 + 39) = v13;
  *(v10 + 32) = *(a2 + 16);
  bzero(v10[3], v11);
  v14 = uarpHtons(a3);
  v15 = v10[3];
  *v15 = v14;
  v15[1] = a4 - 6;
  v16 = uarpHtons((a4 - 6));
  v17 = v10[3];
  *(v17 + 2) = v16;
  *(v17 + 4) = 0;
  return v10;
}

uint64_t uarpAllocateTransmitBuffers(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34))
  {
    v4 = 0;
    do
    {
      TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, 0);
      bzero(TransmitBuffer2[1], *(TransmitBuffer2 + 4));
      *(TransmitBuffer2 + 42) = 0;
      *(TransmitBuffer2 + 9) = 0;
      *(TransmitBuffer2 + 40) = 0;
      TransmitBuffer2[6] = 0;
      TransmitBuffer2[7] = 0;
      *(TransmitBuffer2 + 32) = 0;
      *TransmitBuffer2 = *(a2 + 104);
      *(a2 + 104) = TransmitBuffer2;
      ++v4;
    }

    while (v4 < *(a2 + 34));
  }

  return 0;
}

uint64_t uarpTransmitBuffer2(uint64_t a1, uint64_t a2, void *a3)
{
  UARPLayer2MonotonicClockTime(a1, a3 + 6);
  *a3 = 0;
  v6 = (a2 + 112);
  for (i = *(a2 + 112); i; i = *i)
  {
    v6 = i;
  }

  *v6 = a3;
  if (!*(a2 + 54))
  {
    uarpTransmitQueueService(a1, a2);
  }

  return 0;
}

uint64_t uarpTransmitQueueService(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 644) == 1)
  {
    return 0;
  }

  v20[11] = v2;
  v20[12] = v3;
  UARPLayer2WatchdogCancel(a1, a2);
  v20[0] = 0;
  v6 = UARPLayer2MonotonicClockTime(a1, v20);
  v7 = *(a2 + 112);
  if (!v7)
  {
    uarpTransmitQueueReclaimEntries(v6, a2);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v7 + 42) == 1)
    {
      goto LABEL_5;
    }

    v10 = v7[3];
    if (!v10)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v6 = v11(*(a1 + 608), 6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      else
      {
        uarpLogError(6u, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      goto LABEL_5;
    }

    v6 = uarpNtohs(*v10);
    if (v6 != 0xFFFF)
    {
      break;
    }

    v12 = v7[3];
    v13 = *(v7 + 18);
    v6 = UARPLayer2VendorSpecificCheckValidToSend(a1, a2);
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_5:
    *(v7 + 38) = *(v7 + 39) + 1;
    v7[7] = v20[0];
LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  if (v6 == 3)
  {
    v6 = uarpNtohl(*(v7[3] + 6));
    if (v6 == 9 && *(a2 + 48) <= 2u)
    {
      v6 = UARPLayer2FriendlyNameResponse(a1, a2);
      goto LABEL_5;
    }
  }

LABEL_17:
  v14 = v20[0];
  if (v20[0] && v20[0] - v7[7] < ((8389 * (*(v7 + 32) >> 3)) >> 20))
  {
    goto LABEL_6;
  }

  v15 = *(v7 + 38);
  if (v15 >= *(v7 + 39))
  {
    goto LABEL_6;
  }

  *(v7 + 38) = v15 + 1;
  v7[7] = v14;
  *(v7[3] + 4) = uarpHtons(*(a2 + 62));
  ++*(a2 + 62);
  UARPLayer2SendMessage(a1, a2, v7[1], *(a2 + 30) + *(v7 + 18));
  v16 = v7[3];
  v17 = *(v7 + 18);
  v6 = UARPLayer2LogPacket(a1, a2);
  if (*(v7 + 40) == 1)
  {
    v9 = 1;
  }

  if (++v8 < *(a2 + 20) || !*(v7 + 40))
  {
    goto LABEL_6;
  }

LABEL_26:
  uarpTransmitQueueReclaimEntries(v6, a2);
  if (v8 >= 1 && v9 == 1)
  {
    v18 = *(a2 + 16);
    UARPLayer2WatchdogSet(a1, a2);
  }

  return 0;
}

void uarpTransmitQueueReclaimEntries(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 104);
    while (1)
    {
      v6 = *v3;
      *v3 = 0;
      if (!*(v3 + 40) && *(v3 + 38) >= *(v3 + 39))
      {
        break;
      }

      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        goto LABEL_11;
      }

      v4 = v3;
LABEL_12:
      v3 = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    bzero(v3[1], *(v3 + 4));
    *(v3 + 42) = 0;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0;
    v3[6] = 0;
    v3[7] = 0;
    *(v3 + 32) = 0;
    *v3 = *v5;
    v8 = (a2 + 104);
LABEL_11:
    *v8 = v3;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_15:
  *(a2 + 112) = v4;
}

void uarpTransmitQueuesCleanup(uint64_t a1, uint64_t a2)
{
  UARPLayer2WatchdogCancel(a1, a2);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v4[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v4, 61166, 133);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v6[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v6, 61166, 133);
      v6 = v7;
    }

    while (v7);
  }
}

void uarpTransmitQueueAssetRescinded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      if (uarpNtohs(*v3[3]) == 6)
      {
        v5 = uarpNtohs(*(v3[3] + 6));
        if (!a3 || v5 == *(a3 + 44))
        {
          *(v3 + 42) = 1;
          v3 = *v3;
        }
      }
    }
  }
}

void uarpTransmitQueuePurge(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v2)
  {
    do
    {
      v4 = *v2;
      bzero(v2[1], *(v2 + 4));
      *(v2 + 42) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;
      v2[6] = 0;
      v2[7] = 0;
      *(v2 + 32) = 0;
      *v2 = *(a2 + 104);
      *(a2 + 104) = v2;
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t uarpPlatformDarwinDecompressBuffer(int a1, const uint8_t *__src, size_t src_size, uint8_t *__dst, size_t __n)
{
  result = 50;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = COMPRESSION_LZBITMAP;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v7 = COMPRESSION_LZ4;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v7 = 1538;
LABEL_11:
    if (compression_decode_buffer(__dst, __n, __src, src_size, 0, v7) == __n)
    {
      return 0;
    }

    else
    {
      return 51;
    }
  }

  if (src_size != __n)
  {
    return 51;
  }

  memcpy(__dst, __src, __n);
  return 0;
}

uint64_t uarpPlatformDarwinHashInfo(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = result - 1;
  if ((result - 1) > 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *&aH[4 * v3];
    v5 = 16 * v3 + 32;
  }

  *a2 = v4;
  *a3 = v5;
  return result;
}

uint64_t uarpPlatformDarwinHashInit(uint64_t result, CC_SHA512_CTX *c)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Init(c);
    case 2:
      return CC_SHA384_Init(c);
    case 1:
      return CC_SHA256_Init(c);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashUpdate(uint64_t result, CC_SHA512_CTX *c, void *data, CC_LONG len)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Update(c, data, len);
    case 2:
      return CC_SHA384_Update(c, data, len);
    case 1:
      return CC_SHA256_Update(c, data, len);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashFinal(uint64_t result, CC_SHA512_CTX *a2, unsigned __int8 *md, int a4)
{
  if (result == 2)
  {
    if (a4 == 48)
    {
      return CC_SHA384_Final(md, a2);
    }
  }

  else if (result == 1)
  {
    if (a4 == 32)
    {
      return CC_SHA256_Final(md, a2);
    }
  }

  else if (result == 3 && a4 == 64)
  {
    return CC_SHA512_Final(md, a2);
  }

  return result;
}

void uarpLogError(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_1000D3850, 0x200uLL, __format, va);
  v3 = sub_10002D8D0(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100081C68(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void *sub_10002D8D0(unsigned int a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = uarpLoggingCategoryToString(i);
    qword_1000D4850[i] = os_log_create("com.apple.uarp.embedded", v3);
  }

  if (a1 <= 8)
  {
    return qword_1000D4850[a1];
  }

  else
  {
    return &_os_log_default;
  }
}

void uarpLogDebug(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_1000D3A50, 0x200uLL, __format, va);
  v3 = sub_10002D8D0(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100081CE0(v3);
  }
}

void uarpLogInfo(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_1000D3C50, 0x200uLL, __format, va);
  v3 = sub_10002D8D0(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = byte_1000D3C50;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpLogFault(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_1000D3E50, 0x200uLL, __format, va);
  v3 = sub_10002D8D0(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100081D64(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void uarpPlatformDarwinLogError(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_1000D4050, 0x200uLL, a3, &a9);
  v10 = sub_10002D8D0(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100081DDC(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void uarpPlatformDarwinLogInfo(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_1000D4250, 0x200uLL, a3, &a9);
  v10 = sub_10002D8D0(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = byte_1000D4250;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpPlatformDarwinLogDebug(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_1000D4450, 0x200uLL, a3, &a9);
  v10 = sub_10002D8D0(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100081E54(v10);
  }
}

void uarpPlatformDarwinLogFault(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_1000D4650, 0x200uLL, a3, &a9);
  v10 = sub_10002D8D0(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_100081ED8(v10);
  }
}

uint64_t UARPSuperBinarySetupHeader(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, int a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  result = 30;
  if (a3 >= 2)
  {
    if (v9)
    {
      v16 = 0x2C00000002;
      v18 = *a4;
      v20 = 0x2C00000000;
      v21 = 40 * a5;
      v19 = 40 * a5 + 44;
      v17 = v19;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v16, 44, 0);
      if (!result)
      {
        if (a5)
        {
          v11 = 44;
          while (1)
          {
            v15 = 0;
            v14 = 0u;
            v13 = 0u;
            v12 = 40;
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v12, 40, v11);
            if (result)
            {
              break;
            }

            v11 = (v11 + 40);
            if (!--a5)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddMetaData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  v16 = 0;
  LOWORD(__dst[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &v16, 4, 0, __dst);
  v12 = result;
  if (LOWORD(__dst[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(__dst[0]) != 4)
  {
    return result;
  }

  if (v16 < 2)
  {
    return 30;
  }

  memset(__dst, 0, 44);
  v18 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, __dst, 44, 0, &v18);
  if (!result)
  {
    if (v18 == 44)
    {
      v14 = HIDWORD(__dst[1]);
      v15 = __dst[2];
      v17[0] = uarpHtonl(a3);
      v17[1] = uarpHtonl(a4);
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 8, (v15 + v14));
      if (!result)
      {
        LODWORD(__dst[2]) += 8;
        DWORD2(__dst[0]) += 8;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a5, a4, (HIDWORD(__dst[1]) + LODWORD(__dst[2])));
        if (!result)
        {
          LODWORD(__dst[2]) += a4;
          DWORD2(__dst[0]) += a4;
          return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, __dst, 44, 0);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPreparePayload(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, _OWORD *a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v16[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v16);
  v12 = result;
  if (LOWORD(v16[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v16[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v16, 44, 0, &v19);
  if (!result)
  {
    if (v19 != 44)
    {
      return 11;
    }

    v14 = (DWORD1(v16[2]) + 40 * a3);
    result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 40, v14, &v19);
    if (!result)
    {
      if (v19 == 40)
      {
        DWORD1(v17[0]) = uarpTagStructPack32(a4);
        *(v17 + 8) = *a5;
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 40, v14);
      }

      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 30;
  }

  v12 = v11;
  __dst = 0;
  LOWORD(v21[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v11, &__dst, 4, 0, v21);
  v14 = result;
  if (LOWORD(v21[0]) == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v15;
  }

  if (v14 || LOWORD(v21[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, v21, 44, 0, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 44)
  {
    return 11;
  }

  v16 = (DWORD1(v21[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, &v22, 40, v16, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 40)
  {
    return 11;
  }

  v17 = DWORD2(v23);
  if (!DWORD2(v23))
  {
    v17 = DWORD2(v21[0]);
    DWORD2(v23) = DWORD2(v21[0]);
  }

  v18 = HIDWORD(v23);
  v20[0] = uarpHtonl(a4);
  v20[1] = uarpHtonl(a5);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v20, 8, (v18 + v17));
  if (!result)
  {
    HIDWORD(v23) += 8;
    DWORD2(v21[0]) += 8;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, a6, a5, (DWORD2(v23) + HIDWORD(v23)));
    if (!result)
    {
      HIDWORD(v23) += a5;
      DWORD2(v21[0]) += a5;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, &v22, 40, v16);
      if (!result)
      {
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v21, 44, 0);
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadDataLarge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v10 = 0;
  while (a5)
  {
    if (a5 >= 0xFFFF)
    {
      v11 = 0xFFFF;
    }

    else
    {
      v11 = a5;
    }

    result = UARPSuperBinaryAddPayloadData(a1, a2, a3, a4 + v10, v11);
    v10 += v11;
    a5 -= v11;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t UARPSuperBinaryAddPayloadData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (HIWORD(a5))
  {
    return 39;
  }

  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v17[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v17);
  v12 = result;
  if (LOWORD(v17[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v17[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 44, 0, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 44)
  {
    return 11;
  }

  v14 = (DWORD1(v17[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v18, 40, v14, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 40)
  {
    return 11;
  }

  v15 = v19;
  if (!v19)
  {
    v15 = DWORD2(v17[0]);
    LODWORD(v19) = DWORD2(v17[0]);
  }

  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a4, a5, (HIDWORD(v19) + v15));
  if (!result)
  {
    HIDWORD(v19) += a5;
    DWORD2(v17[0]) += a5;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v18, 40, v14);
    if (!result)
    {
      return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 44, 0);
    }
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeHeader(uint64_t a1, uint64_t a2)
{
  v3 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v3)
  {
    return 30;
  }

  v4 = v3;
  v12 = 0;
  __dst = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v3, &__dst, 4, 0, &v12);
  if (result)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 11;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v13, 44, 0, &v16);
  if (result)
  {
    return result;
  }

  if (v16 != 44)
  {
    return 11;
  }

  v6 = v13[0];
  v7 = v13[1];
  *(v4 + 28) = *(&v13[1] + 12);
  *v4 = v6;
  *(v4 + 16) = v7;
  uarpSuperBinaryHeaderEndianSwap(v13, v13);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v13, 44, 0);
  if (!result)
  {
    v8 = *(v4 + 40);
    if (v8 >= 0x28)
    {
      v9 = v8 / 0x28;
      v10 = *(v4 + 36);
      do
      {
        result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v14, 40, v10, &v16);
        if (result)
        {
          break;
        }

        if (v16 != 40)
        {
          return 11;
        }

        uarpPayloadHeaderEndianSwap(v14, v14);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v14, 40, v10);
        if (result)
        {
          break;
        }

        v10 = (v10 + 40);
        --v9;
      }

      while (v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t uarpPayloadHeader2EndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = a1[1];
  uarpVersionEndianSwap(a1 + 2, a2 + 2);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t UARPSuperBinaryQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(__dst, 0, 44);
  v5 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, a2, __dst, 44, 0, &v5);
  if (!result)
  {
    if (v5 == 44)
    {
      uarpSuperBinaryHeaderEndianSwap(__dst, __dst);
      result = 0;
      *a3 = DWORD2(__dst[0]);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPrepareDynamicAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = a3;
  *(a2 + 20) = a4;
  *(a2 + 8) = 44;
  *a2 = 0x2C00000002;
  *(a2 + 28) = xmmword_1000A5350;
  *(a2 + 48) = a5;
  *(a2 + 448) = 0;
  *(a2 + 632) = 0;
  *(a2 + 720) = 0;
  *(a2 + 672) = 0u;
  return 0;
}

uint64_t UARPSuperBinaryAddSuperBinaryMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5)
{
  v13 = 0;
  v9 = a4;
  UARPLayer2RequestBuffer(a1, &v13, a4 + 24, 39321, 827);
  v10 = v13;
  v11 = (v13 + 3);
  v13[1] = v13 + 3;
  *v10 = a3;
  *(v10 + 1) = a4;
  memcpy(v11, a5, v9);
  v10[2] = *(a2 + 720);
  *(a2 + 720) = v10;
  *(a2 + 8) += a4 + 8;
  *(a2 + 32) += a4 + 8;
  *(a2 + 46) |= 0x80u;
  return 0;
}

uint64_t UARPSuperBinaryAddPayload2(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8, char a9)
{
  v21 = 0;
  UARPLayer2RequestBuffer(a1, &v21, 0xB8uLL, 39321, 881);
  v17 = v21;
  v21[22] = *(a2 + 632);
  *(a2 + 632) = v17;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[4] = 0;
  *v17 = 40;
  *(v17 + 1) = a4;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 9) = a8;
  *(v17 + 7) = 0;
  *(v17 + 31) = a3;
  if (!a9)
  {
    __dst = 0;
    UARPLayer2RequestBuffer(a1, &__dst, a8, 39321, 906);
    v18 = __dst;
    v17[17] = __dst;
    memcpy(v18, a7, a8);
  }

  *(v17 + 148) = a9;
  *(v17 + 36) = a8;
  v17[21] = 0;
  *(a2 + 8) += a8 + 40;
  *(a2 + 40) += 40;
  *(a2 + 28) += 40;
  ++*(a2 + 448);
  return 0;
}

uint64_t UARPSuperBinaryAppendPayloadMetaData(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, const void *a6)
{
  v6 = *(a2 + 448);
  v7 = *(a2 + 632);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 11;
  }

  v14 = 1;
  while (*(v7 + 124) != a3)
  {
    v9 = 11;
    if (v14 < v6)
    {
      v7 = *(v7 + 176);
      ++v14;
      if (v7)
      {
        continue;
      }
    }

    return v9;
  }

  v18 = 0;
  UARPLayer2RequestBuffer(a1, &v18, a5 + 24, 39321, 950);
  v15 = v18;
  v16 = (v18 + 3);
  v18[1] = v18 + 3;
  *v15 = a4;
  *(v15 + 1) = a5;
  memcpy(v16, a6, a5);
  v9 = 0;
  v15[2] = *(v7 + 168);
  *(v7 + 168) = v15;
  *(v7 + 28) += a5 + 8;
  *(a2 + 8) += a5 + 8;
  *(a2 + 684) += a5 + 8;
  *(a2 + 46) |= 8u;
  return v9;
}

uint64_t UARPSuperBinaryAppendPayloadMetaDataBlob(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  v5 = *(a2 + 448);
  v6 = *(a2 + 632);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 11;
  }

  v12 = 1;
  result = 11;
  while (*(v6 + 124) != a3)
  {
    if (v12 < v5)
    {
      v6 = *(v6 + 176);
      ++v12;
      if (v6)
      {
        continue;
      }
    }

    return result;
  }

  if (*(v6 + 152))
  {
    return 27;
  }

  UARPLayer2ReturnBuffer(a1, 0, 39321, 1001);
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  UARPLayer2RequestBuffer(a1, 0, a5, 39321, 1010);
  memcpy(*(v6 + 152), a4, a5);
  result = 0;
  *(v6 + 160) = a5;
  *(v6 + 28) += a5;
  *(a2 + 8) += a5;
  *(a2 + 684) += a5;
  *(a2 + 46) |= 8u;
  return result;
}

uint64_t UARPSuperBinaryBuildMetaData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, unsigned int a5, unsigned int *a6)
{
  v8 = *a6;
  v9 = *a4;
  if (a3)
  {
    v11 = a3;
    while (1)
    {
      v12 = uarpNtohl(*v11);
      v13 = uarpNtohl(*(v11 + 4));
      v8 += *(v11 + 4) + 8;
      if (v8 > a5)
      {
        return 11;
      }

      *v9 = v12 | (v13 << 32);
      v14 = (v9 + 1);
      memcpy(v14, *(v11 + 8), *(v11 + 4));
      v9 = &v14[*(v11 + 4)];
      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a6 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeDynamicAsset(uint64_t a1, uint64_t a2)
{
  uarpSuperBinaryHeaderEndianSwap(a2, a2);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, a2, 44, 0);
  if (!result)
  {
    uarpSuperBinaryHeaderEndianSwap(a2, a2);
    v5 = *(a2 + 4);
    v6 = *(a2 + 32);
    v7 = (a2 + 632);
    v8 = *(a2 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = *(a2 + 40) + v5 + v6;
      v11 = v10 + *(a2 + 684);
      v12 = (a2 + 632);
      while (1)
      {
        v13 = *v12;
        v13[6] = v10;
        v13[8] = v11;
        uarpPayloadHeader2EndianSwap(v13, v13);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v13, 40, v5);
        if (result)
        {
          break;
        }

        uarpPayloadHeader2EndianSwap(v13, v13);
        v5 = *v13 + v5;
        v10 += v13[7];
        v11 += v13[9];
        v12 = (v13 + 44);
        ++v9;
        v8 = *(a2 + 448);
        if (v9 >= v8)
        {
          v6 = *(a2 + 32);
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v6)
      {
        __dst = 0;
        v28 = 0;
        result = UARPLayer2RequestBuffer(a1, &__dst, v6, 39321, 1127);
        if (result)
        {
          return result;
        }

        v27 = __dst;
        result = UARPSuperBinaryBuildMetaData(result, v14, *(a2 + 720), &v27, *(a2 + 32), &v28);
        if (result)
        {
          return result;
        }

        v15 = __dst;
        *(a2 + 672) = __dst;
        v16 = v28;
        *(a2 + 680) = v28;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v15, v16, v5);
        if (result)
        {
          return result;
        }

        v5 = v16 + v5;
        v8 = *(a2 + 448);
      }

      if (!v8)
      {
        return 0;
      }

      v17 = 0;
      v18 = a2 + 632;
      do
      {
        v19 = *v18;
        v20 = *(*v18 + 28);
        if (v20)
        {
          __dst = 0;
          v28 = 0;
          result = UARPLayer2RequestBuffer(a1, &__dst, v20, 39321, 1171);
          if (result)
          {
            return result;
          }

          v21 = __dst;
          v27 = __dst;
          v22 = *(v19 + 152);
          if (v22)
          {
            v21 = memcpy(__dst, v22, *(v19 + 160));
            v28 = *(v19 + 160);
          }

          result = UARPSuperBinaryBuildMetaData(v21, v22, *(v19 + 168), &v27, *(v19 + 28), &v28);
          if (result)
          {
            return result;
          }

          v23 = __dst;
          *(v19 + 152) = __dst;
          v24 = v28;
          *(v19 + 160) = v28;
          result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v23, v24, v5);
          if (result)
          {
            return result;
          }

          v5 = v24 + v5;
          v8 = *(a2 + 448);
        }

        v18 = v19 + 176;
        ++v17;
      }

      while (v17 < v8);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v26 = *v7;
          if (!*(v26 + 148))
          {
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, *(v26 + 136), *(v26 + 144), v5);
            if (result)
            {
              return result;
            }

            v8 = *(a2 + 448);
          }

          result = 0;
          v5 = (*(v26 + 144) + v5);
          v7 = (v26 + 176);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryGetInternalSuperBinaryMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 32);
  if (v7 && ((v8 = *(a2 + 28), v9 = v7 + v8, v10 = a5 >= v8, v11 = a5 - v8, v10) ? (v12 = v9 > a5) : (v12 = 0), v12))
  {
    v15 = v7 - v11;
    if (a4 >= v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = a4;
    }

    memcpy(__dst, (*(a2 + 672) + v11), v13);
    result = 0;
  }

  else
  {
    v13 = 0;
    result = 40;
  }

  *a6 = v13;
  return result;
}

uint64_t UARPSuperBinaryGetInternalPayloadMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 632);
  if (!v7)
  {
LABEL_9:
    v14 = 0;
    result = 40;
    goto LABEL_14;
  }

  while (1)
  {
    v8 = *(v7 + 28);
    if (v8)
    {
      break;
    }

LABEL_8:
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v7 + 24);
  v10 = v8 + v9;
  v11 = a5 >= v9;
  v12 = a5 - v9;
  if (!v11 || v10 <= a5)
  {
    v7 = *(v7 + 176);
    goto LABEL_8;
  }

  v16 = v8 - v12;
  if (a4 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a4;
  }

  memcpy(__dst, (*(v7 + 152) + v12), v14);
  result = 0;
LABEL_14:
  *a6 = v14;
  return result;
}

uint64_t uarpPlatformEndpointInit(char *a1, uint64_t a2, unsigned int a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  result = 30;
  if (a3 <= 2 && a2 && a1 && a4 && a5)
  {
    bzero(a1, 0x2C8uLL);
    memcpy(a1 + 48, a5, 0x230uLL);
    *(a1 + 76) = a2;
    *(a1 + 5) = a6;
    *(a1 + 160) = 1;
    *(a1 + 82) = a7;
    v16 = *a4;
    v15 = a4[1];
    *(a1 + 4) = *(a4 + 4);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 7;
    }

    *(a1 + 154) = a3;
    a1[644] = 0;
    *(a1 + 162) = 1;
    *(a1 + 340) = 1;
    *(a1 + 174) = 1024;
    v17 = calloc(0x20uLL, 0x400uLL);
    result = 0;
    *(a1 + 88) = v17;
  }

  return result;
}

void uarpPlatformEndpointDeinit(uint64_t a1)
{
  UARPLayer2ReturnBuffer(a1, *(a1 + 624), 43690, 85);
  *(a1 + 620) = 0;
  *(a1 + 624) = 0;

  uarpPlatformCleanupAssets(a1);
}

uint64_t uarpPlatformRemoteEndpointAdd(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        *(a2 + 40) = a4;
        v7 = *a1;
        v8 = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *a2 = v7;
        *(a2 + 16) = v8;
        if (!a3 || (v10 = *a3, v9 = a3[1], *(a2 + 32) = *(a3 + 4), *a2 = v10, *(a2 + 16) = v9, (v11 = *(a2 + 4)) != 0) && *a2 && *(a2 + 8) >= v11)
        {
          if (!*(a2 + 12))
          {
            *(a2 + 12) = *(a1 + 12);
          }

          *(a2 + 48) = 0;
          v12 = *(a1 + 648);
          *(a1 + 648) = v12 + 1;
          *(a2 + 56) = v12;
          *(a2 + 60) = 1;
          *(a2 + 62) = 1;
          *(a2 + 28) = 0;
          *(a2 + 88) = 0;
          result = uarpPlatformRemoteEndpointAddEntry(a1, a2);
          if (!result)
          {
            if (!*(a2 + 20))
            {
              *(a2 + 20) = 1;
            }

            result = uarpAllocateTransmitBuffers(a1, a2);
            if (!result)
            {
              if ((*(a1 + 616) - 1) > 1)
              {
                return 0;
              }

              result = uarpPlatformEndpointSendSyncMsg(a1, a2);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointRemove(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    uarpTransmitQueuesCleanup(a1, a2);
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 1);
    uarpPlatformReleaseEndpointIDs(a1);
    v5 = *(a1 + 620);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(a1 + 624);
        if (*(v8 + v6) == a2)
        {
          *(v8 + v6) = 0;
        }

        v6 += 8;
      }

      while (v7 != v6);
    }

    uarpPlatformEndpointStreamingRecvDeinit(a1, a2);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformEndpointRequestInfoProperty(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && a2 && a3 - 13 >= 0xFFFFFFF4)
  {
    return uarpSendInformationRequest(a1, a2, a3);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetIsAcceptable(void *a1, uint64_t a2, _BYTE *a3, __int16 *a4)
{
  ActiveFirmwareVersion = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          *a3 = 1;
          *a4 = 0;
          v16[0] = 0;
          v16[1] = 0;
          ActiveFirmwareVersion = uarpPlatformEndpointQueryActiveFirmwareVersion(a1, a2, v16);
          if (!ActiveFirmwareVersion)
          {
            v9 = uarpVersionCompare(v16, (a2 + 52));
            if (v9 == 1)
            {
              v15[0] = 0;
              v15[1] = 0;
              ActiveFirmwareVersion = uarpPlatformEndpointQueryStagedFirmwareVersion(a1, a2, v15);
              if (ActiveFirmwareVersion)
              {
                return ActiveFirmwareVersion;
              }

              v10 = uarpVersionCompare(v15, (a2 + 52));
              if (v10 == 1)
              {
                return ActiveFirmwareVersion;
              }

              *a3 = 0;
              v11 = v10 == 0;
              v12 = 1280;
              v13 = 768;
            }

            else
            {
              ActiveFirmwareVersion = 0;
              *a3 = 0;
              v11 = v9 == 0;
              v12 = 1536;
              v13 = 1024;
            }

            if (v11)
            {
              v12 = v13;
            }

            *a4 = v12;
          }
        }
      }
    }
  }

  return ActiveFirmwareVersion;
}

uint64_t uarpPlatformEndpointAssetAcceptWithPayloadAndDecompressionWindows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  result = 30;
  if (a1 && a2 && a3 && (!a6 || a7 && *(a2 + 8) <= a7) && (!a8 || a9 && *(a2 + 8) <= a9))
  {
    v15 = *(a1 + 632);
    if (v15)
    {
      v16 = *(a1 + 632);
      while (v16 != a3 || *(v16 + 304))
      {
        v16 = *(v16 + 712);
        if (!v16)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      *(a3 + 712) = v15;
      *(a1 + 632) = a3;
    }

    if (a4)
    {
      *(a3 + 704) = a4;
    }

    *(a3 + 72) = 0;
    if (!a5)
    {
      return 30;
    }

    v17 = a5[1];
    *(a3 + 80) = *a5;
    *(a3 + 96) = v17;
    v18 = a5[2];
    v19 = a5[3];
    v20 = a5[5];
    *(a3 + 144) = a5[4];
    *(a3 + 160) = v20;
    *(a3 + 112) = v18;
    *(a3 + 128) = v19;
    v21 = a5[6];
    v22 = a5[7];
    v23 = a5[9];
    *(a3 + 208) = a5[8];
    *(a3 + 224) = v23;
    *(a3 + 176) = v21;
    *(a3 + 192) = v22;
    v24 = a5[10];
    v25 = a5[11];
    v26 = a5[13];
    *(a3 + 272) = a5[12];
    *(a3 + 288) = v26;
    *(a3 + 240) = v24;
    *(a3 + 256) = v25;
    if (a6)
    {
      if (!*(a3 + 652))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 640), 43690, 425);
      }

      *(a3 + 640) = a6;
      *(a3 + 648) = a7;
      *(a3 + 652) = 1;
    }

    else if (!*(a3 + 640))
    {
      v29 = (a3 + 640);
      *(a3 + 652) = 0;
      v30 = *(a2 + 8);
      *(a3 + 648) = v30;
      result = UARPLayer2RequestBuffer(a1, (a3 + 640), v30, 43690, 443);
      if (result)
      {
        return result;
      }

      if (!*v29)
      {
        return 11;
      }
    }

    if (a8)
    {
      if (!*(a3 + 668))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 656), 43690, 462);
      }

      *(a3 + 656) = a8;
      *(a3 + 664) = a9;
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    *(a3 + 668) = v27;
    if (uarpVersionCompare((a3 + 52), (a3 + 12)) || *(a3 + 68) != *(a3 + 8))
    {

      return uarpPlatformAssetSuperBinaryPullHeader(a1, a3);
    }

    else if (*(a3 + 688) == *(a3 + 32))
    {
      v28 = *(a3 + 452);
      if (v28 == -1)
      {
        UARPLayer2AssetMetaDataComplete(a1, a3);
        return 0;
      }

      else if (v28 == *(a3 + 456))
      {
        if (*(a3 + 512) == *(a3 + 492))
        {
          if (*(a3 + 508) || (result = uarpPlatformAssetPayloadPullData(a1, a3), !result))
          {

            return uarpPlatformAssetRequestData(a1, a3, (a3 + 312));
          }
        }

        else
        {

          return uarpPlatformAssetPayloadPullMetaData(a1, a3);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a3);
      }
    }

    else
    {

      return uarpPlatformAssetSuperBinaryPullMetaData(a1, a3);
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetSetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *(a3 + 16);
      *(a2 + 80) = *a3;
      *(a2 + 96) = v3;
      v4 = *(a3 + 32);
      v5 = *(a3 + 48);
      v6 = *(a3 + 80);
      *(a2 + 144) = *(a3 + 64);
      *(a2 + 160) = v6;
      *(a2 + 112) = v4;
      *(a2 + 128) = v5;
      v7 = *(a3 + 96);
      v8 = *(a3 + 112);
      v9 = *(a3 + 144);
      *(a2 + 208) = *(a3 + 128);
      *(a2 + 224) = v9;
      *(a2 + 176) = v7;
      *(a2 + 192) = v8;
      result = *(a3 + 160);
      v11 = *(a3 + 176);
      v12 = *(a3 + 208);
      *(a2 + 272) = *(a3 + 192);
      *(a2 + 288) = v12;
      *(a2 + 240) = result;
      *(a2 + 256) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetDeny(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6)
{
  v6 = 30;
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *(a3 + 704) = a5;
    }

    if (a6)
    {
      v8 = a6[1];
      *(a3 + 80) = *a6;
      *(a3 + 96) = v8;
      v9 = a6[2];
      v10 = a6[3];
      v11 = a6[5];
      *(a3 + 144) = a6[4];
      *(a3 + 160) = v11;
      *(a3 + 112) = v9;
      *(a3 + 128) = v10;
      v12 = a6[6];
      v13 = a6[7];
      v14 = a6[9];
      *(a3 + 208) = a6[8];
      *(a3 + 224) = v14;
      *(a3 + 176) = v12;
      *(a3 + 192) = v13;
      v15 = a6[10];
      v16 = a6[11];
      v17 = a6[13];
      *(a3 + 272) = a6[12];
      *(a3 + 288) = v17;
      *(a3 + 240) = v15;
      *(a3 + 256) = v16;
      v6 = uarpAssetProcessingComplete(a1, a2, a3, a4 | 2u);
      if (!v6)
      {
        *(a3 + 72) = 1;
      }
    }

    else
    {
      return 30;
    }
  }

  return v6;
}

uint64_t uarpPlatformEndpointAssetRelease(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, *(a3 + 704));

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformEndpointAssetRelease2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, a3);

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformAssetFindByAssetContext(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 632);
    if (v4)
    {
      result = v4;
      while (*(result + 304) != 1 || *(result + 704) != a2)
      {
        result = *(result + 712);
        if (!result)
        {
          while (v4)
          {
            if (!*(v4 + 304) && *(v4 + 704) == a2)
            {
              return v4;
            }

            v4 = *(v4 + 712);
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryNumberOfPayloads(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 448);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryFormatVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetQueryAssetVersion(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      result = *(a2 + 52);
      *a3 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 68);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 48);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetSetPayloadIndex2(void *a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 448) <= a3)
    {
      return 44;
    }

    else
    {
      *(a2 + 456) = a3;
      *(a2 + 508) = 0;
      if (*(a2 + 460) == 1)
      {
        v6 = *(a2 + 632);
        if (v6)
        {
          v7 = (a2 + 464);
          while (1)
          {
            v8 = *(v6 + 31);
            if (v8 == *(a2 + 456))
            {
              *(a2 + 452) = v8;
              v9 = *v6;
              v10 = v6[2];
              *(a2 + 480) = v6[1];
              *(a2 + 496) = v10;
              *v7 = v9;
              v11 = v6[3];
              v12 = v6[4];
              v13 = v6[6];
              *(a2 + 544) = v6[5];
              *(a2 + 560) = v13;
              *(a2 + 512) = v11;
              *(a2 + 528) = v12;
              v14 = v6[7];
              v15 = v6[8];
              v16 = v6[9];
              *(a2 + 624) = *(v6 + 20);
              *(a2 + 592) = v15;
              *(a2 + 608) = v16;
              *(a2 + 576) = v14;
              for (i = *(v6 + 21); i; i = *(i + 16))
              {
                uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, *i, *(i + 4), *(i + 8));
              }

              v18 = *(v6 + 19);
              if (v18)
              {
                UARPLayer2HashFinal(a1, v18, *(v6 + 10), *(v6 + 12), *(v6 + 26));
                if (memcmp(*(v6 + 12), *(v6 + 14), *(v6 + 30)))
                {
                  return 54;
                }
              }
            }

            v6 = *(v6 + 22);
            if (!v6)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          return uarpPlatformEndpointPayloadRequestData(a1, a2);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a2);
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestData(uint64_t a1, uint64_t a2)
{
  v3 = 30;
  if (!a1 || !a2)
  {
    return v3;
  }

  v4 = *(a2 + 500);
  if (v4)
  {
    v4 -= *(a2 + 508);
  }

  if (v4 >= *(a2 + 648))
  {
    v4 = *(a2 + 648);
  }

  if (!v4)
  {
    UARPLayer2PayloadDataComplete2(a1, a2);
    return 0;
  }

  return uarpPlatformAssetPayloadPullData(a1, a2);
}

uint64_t uarpPlatformEndpointAssetPayloadVersion(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 472);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetPayloadTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 468);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(uint64_t a1, uint64_t a2)
{
  *(a2 + 460) = 1;
  if (*(a2 + 448) < 1)
  {
    if (*(a2 + 32))
    {

      return uarpPlatformAssetPullAllMetaData(a1, a2);
    }

    else
    {
      UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
      return 0;
    }
  }

  else
  {

    return uarpPlatformAssetPullAllPayloadHeaders(a1, a2);
  }
}

uint64_t uarpPlatformEndpointAssetSetPayloadOffset(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 30;
  }

  if (a2[113] == -1)
  {
    return 44;
  }

  if (a2[125] <= a3)
  {
    return 43;
  }

  result = 0;
  a2[127] = a3;
  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataPause(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 73) = 1;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataResume(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2 && (v2 = *(a2 + 73), *(a2 + 73)) && (*(a2 + 73) = 0, (v2 = *(a2 + 696)) != 0))
  {
    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  else
  {
    return v2;
  }
}

uint64_t uarpPlatformEndpointAssetFullyStaged(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetProcessingComplete(a1, *(a2 + 696), a2, 1u);
  }

  else
  {
    return 30;
  }
}

double uarpPlatformEndpointSuperBinaryMerge(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *a2;
      v4 = a2[1];
      *(a3 + 28) = *(a2 + 28);
      *a3 = v3;
      *(a3 + 16) = v4;
      *(a2 + 72) = 1;
      *(a3 + 72) = 0;
      *(a3 + 73) = *(a2 + 73);
      *(a3 + 312) = *(a2 + 312);
      v5 = *(a2 + 328);
      v6 = *(a2 + 344);
      v7 = *(a2 + 376);
      *(a3 + 360) = *(a2 + 360);
      *(a3 + 376) = v7;
      *(a3 + 328) = v5;
      *(a3 + 344) = v6;
      v8 = *(a2 + 392);
      v9 = *(a2 + 408);
      v10 = *(a2 + 424);
      *(a3 + 440) = *(a2 + 55);
      *(a3 + 408) = v9;
      *(a3 + 424) = v10;
      *(a3 + 392) = v8;
      *(a3 + 452) = *(a2 + 113);
      *(a3 + 456) = *(a2 + 114);
      v11 = a2[29];
      v12 = a2[31];
      *(a3 + 480) = a2[30];
      *(a3 + 496) = v12;
      *(a3 + 464) = v11;
      v13 = a2[32];
      v14 = a2[33];
      v15 = a2[35];
      *(a3 + 544) = a2[34];
      *(a3 + 560) = v15;
      *(a3 + 512) = v13;
      *(a3 + 528) = v14;
      v16 = a2[36];
      v17 = a2[37];
      v18 = a2[38];
      *(a3 + 624) = *(a2 + 78);
      *(a3 + 592) = v17;
      *(a3 + 608) = v18;
      *(a3 + 576) = v16;
      *(a2 + 78) = 0;
      result = 0.0;
      a2[37] = 0u;
      a2[38] = 0u;
      a2[35] = 0u;
      a2[36] = 0u;
      a2[33] = 0u;
      a2[34] = 0u;
      a2[31] = 0u;
      a2[32] = 0u;
      a2[29] = 0u;
      a2[30] = 0u;
      *(a3 + 640) = *(a2 + 80);
      *(a2 + 80) = 0;
      *(a3 + 652) = *(a2 + 652);
      *(a3 + 648) = *(a2 + 162);
      *(a2 + 162) = 0;
      *(a3 + 656) = *(a2 + 82);
      *(a2 + 82) = 0;
      *(a3 + 668) = *(a2 + 668);
      *(a3 + 664) = *(a2 + 166);
      *(a2 + 166) = 0;
      *(a3 + 688) = *(a2 + 172);
    }
  }

  return result;
}

void uarpPlatformEndpointCleanupAssets(uint64_t a1)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, 0, 0);
  }
}

void uarpPlatformEndpointCleanupAssets2(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 0);
  }
}

uint64_t uarpPlatformEndpointOfferAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = *(a1 + 632);
        if (v6)
        {
          while (*(v6 + 304) != 1 || *(v6 + 704) != a3)
          {
            v6 = *(v6 + 712);
            if (!v6)
            {
              return 30;
            }
          }

          memset(__dst, 0, 44);
          v7 = 0;
          result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v6, __dst, 44, 0, &v7);
          if (!result)
          {
            uarpSuperBinaryHeaderEndianSwap(__dst, v6);
            *(v6 + 52) = *(v6 + 12);
            *(v6 + 68) = *(v6 + 8);
            *(v6 + 448) = *(v6 + 40) / 0x28u;
            return uarpOfferAssetToRemoteEP(a1, a2, v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetContextAndList(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    for (result = *(result + 632); result; result = *(result + 712))
    {
      if (*(result + 304) == a3 && *(result + 704) == a2)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetGetBytesAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *__dst, uint64_t a5, uint64_t a6, unsigned __int16 *a7)
{
  result = 30;
  if (a1 && a3 && __dst && a5)
  {
    v15 = *(a3 + 46);
    if ((v15 & 0x80) != 0)
    {
      result = UARPSuperBinaryGetInternalSuperBinaryMetaData(a1, a3, __dst, a5, a6, a7);
      if (result != 40)
      {
        return result;
      }

      v15 = *(a3 + 46);
    }

    if ((v15 & 8) == 0 || (result = UARPSuperBinaryGetInternalPayloadMetaData(a1, a3, __dst, a5, a6, a7), result == 40))
    {

      return UARPLayer2AssetGetBytesAtOffset2(a1, a2, a3, __dst, a5, a6, a7);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRemoveAssetPayloadWindow(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a2 + 640);
      *(a2 + 640) = 0;
      *a4 = *(a2 + 648);
      *(a2 + 648) = 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointProvideAssetPayloadWindow(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 30;
  if (a3 && a4)
  {
    v9 = *(a2 + 640);
    if (v9)
    {
      if (!*(a2 + 652))
      {
        UARPLayer2ReturnBuffer(a1, v9, 43690, 1180);
      }
    }

    result = 0;
    *(a2 + 640) = a3;
    *(a2 + 648) = a4;
    *(a2 + 652) = 1;
  }

  return result;
}

uint64_t uarpPlatformEndpointDynamicAssetSolicitationDeny(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1 && a2 && a3)
  {
    return uarpSendDynamicAssetPreProcessingStatus(a1, a2, a3, 2u, a4);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetSetBytesAtOffset(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a3 && a4 && a5)
  {
    return UARPLayer2AssetSetBytesAtOffset2(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointWatchDogExpired(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      *(a2 + 54) = 0;
      uarpTransmitQueueService(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRescindAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a3)
  {
    return 30;
  }

  v3 = *(a1 + 632);
  if (!v3)
  {
    return 30;
  }

  while (*(v3 + 304) != 1 || *(v3 + 704) != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 30;
    }
  }

  return uarpAssetRescind(a1, a2, *(v3 + 44));
}

uint64_t uarpPlatformEndpointRescindAllAssets(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetRescind(a1, a2, 0xFFFFu);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v5 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xAu, 6u, 1);
    if (v5)
    {

      return uarpTransmitBuffer2(a1, a2, v5);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPauseAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationPause(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointResumeAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationResume(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a4)
  {
    return 30;
  }

  v4 = *(a1 + 632);
  if (!v4)
  {
    return 30;
  }

  while (*(v4 + 304) || *(v4 + 704) != a4)
  {
    v4 = *(v4 + 712);
    if (!v4)
    {
      return 30;
    }
  }

  return uarpSolicitDynamicAsset(a1, a2, a3);
}

uint64_t uarpPlatformEndpointSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (a1 && a2 && a3 && a5)
  {
    return uarpSendVendorSpecific(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformDownstreamEndpointAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  v6 = *(a1 + 680);
  do
  {
    if (!v6)
    {
      *(a1 + 680) = 1;
      return 11;
    }

    v7 = UARPPlatformDownstreamEndpointByID(a1, a2, v6);
    v8 = *(a1 + 680);
    v6 = v8 + 1;
    *(a1 + 680) = v8 + 1;
  }

  while (!v7 || !v8);

  return uarpPlatformDownstreamEndpointReachable(a1, a2, a3, v8);
}

uint64_t uarpPlatformDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    result = UARPLayer2RequestBuffer(a1, &v10, 0x20uLL, 43690, 1499);
    if (!result)
    {
      *v10 = a2;
      v9 = v10;
      v10[4] = a4;
      v9[2] = a3;
      v9[3] = 0;
      uarpPlatformDownstreamEndpointAddToList(a1, a2, v9);
      return uarpSendDownstreamEndpointReachable(a1, a2, v10[4]);
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UARPPlatformDownstreamEndpointByDelegate(a1, a2, a3);
  if (!v5)
  {
    return 58;
  }

  v6 = *(v5 + 120);

  return uarpSendDownstreamEndpointUnreachable(a1, a2, v6);
}

uint64_t uarpPlatformDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, a4);
  if (!v6)
  {
    return 58;
  }

  v7 = v6;
  result = uarpSendDownstreamEndpointUnreachable(a1, a2, *(v6 + 8));
  if (!result)
  {
    v9 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v7 + 8));
    UARPLayer2ReturnBuffer(a1, v9, 43690, 1593);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v9 = uarpPlatformDownstreamEndpointFindOnListByDelegate(a1, a2, a3);
  if (!v9)
  {
    return 58;
  }

  v10 = *(v9 + 8);

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, v10, a4, a5);
}

uint64_t uarpPlatformDelegateForDownstreamID(uint64_t a1, uint64_t a2, int a3)
{
  result = UARPPlatformDownstreamEndpointByID(a1, a2, a3);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t uarpPlatformNoFirmwareUpdateAvailable(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Du, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformEndpointDiscoverEndpointIDs(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Fu, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformQueryEndpointComponentDiscovery(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x21u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpPlatformEndpointBulkInfoQuery(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        LODWORD(v10) = a5;
        if (a5)
        {
          v11 = a6;
          if (a6)
          {
            v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x23u, (4 * a5 + 16) & 0xFFFC, 1);
            if (v13)
            {
              v14 = v13;
              v15 = v13[3];
              *(v15 + 6) = uarpHtons(a3);
              *(v15 + 8) = *a4;
              *(v15 + 12) = uarpNtohl(v10);
              v16 = (v15 + 16);
              v10 = v10;
              do
              {
                v17 = *v11++;
                *v16++ = uarpHtonl(v17);
                --v10;
              }

              while (v10);

              return uarpTransmitBuffer2(a1, a2, v14);
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointBulkInfoResponseAddTLV(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  v8 = *a5;
  v9 = a7 + 8;
  if (a7 + 8 > a4 - v8)
  {
    return 65;
  }

  v15 = (a3 + v8);
  *v15 = uarpHtonl(a6);
  v15[1] = uarpHtonl(a7);
  v16 = a6 + 2001563387;
  if (v16 <= 0x34)
  {
    if (((1 << (a6 - 5)) & 0x10000000000071) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << (a6 - 5)) & 0x4000000080104) != 0)
    {
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      if (a7 != 8)
      {
        return 39;
      }

      goto LABEL_19;
    }
  }

  if (a6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << a6) & 0x2E1E) != 0)
  {
LABEL_11:
    memcpy(v15 + 2, a8, a7);
    v17 = v9 + v8;
    goto LABEL_12;
  }

  if (((1 << a6) & 0x60) != 0)
  {
    if (a7 == 16)
    {
      v18 = 0uLL;
      uarpVersionEndianSwap(a8, &v18);
      *(v15 + 2) = v18;
      v17 = v8 + 24;
LABEL_12:
      result = 0;
      *a5 = v17;
      return result;
    }

    return 39;
  }

LABEL_13:
  if (a6 == -2001563388)
  {
    if (a7 != 8)
    {
LABEL_15:
      if (a7 == 4)
      {
        v15[2] = uarpHtonl(*a8);
        v17 = v8 + 12;
        goto LABEL_12;
      }

      return 39;
    }

LABEL_19:
    *(v15 + 1) = uarpHtonll(*a8);
    v17 = v8 + 16;
    goto LABEL_12;
  }

  return 10;
}

uint64_t uarpPlatformEndpointBulkInfoResponse(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, const void *a5, unsigned int a6)
{
  result = 30;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x25u, (a6 + 12), 1);
    if (v13)
    {
      v14 = v13;
      v15 = v13[3];
      *(v15 + 6) = uarpHtons(a3);
      *(v15 + 8) = *a4;
      memcpy((v15 + 12), a5, a6);

      return uarpTransmitBuffer2(a1, a2, v14);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpRemoteEndpointIDForAsset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 696)) != 0)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpPlatformRemoteDelegateForAssetDelegate(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 696);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointForAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 696);
  }

  return result;
}

__n128 uarpPlatformAssetSelectedPayloadInfo(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 452) != -1 && *(a1 + 460) != 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = *(a1 + 468);
    result = *(a1 + 472);
    *(a2 + 4) = result;
    v3 = *(a1 + 500);
    *(a2 + 20) = *(a1 + 492);
    *(a2 + 24) = v3;
  }

  return result;
}

uint64_t uarpAssetQuerySuperBinaryMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460))
    {
      return *(a2 + 720);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadMetaData(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460) && (v5 = *(a2 + 632)) != 0)
    {
      while (*(v5 + 124) != a3)
      {
        v5 = *(v5 + 176);
        if (!v5)
        {
          return 0;
        }
      }

      return *(v5 + 168);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (!a4)
    {
      return 26;
    }

    if (*(a2 + 460))
    {
      v6 = *(a2 + 632);
      if (!v6)
      {
        return 54;
      }

      while (*(v6 + 124) != a3)
      {
        v6 = *(v6 + 176);
        if (!v6)
        {
          return 54;
        }
      }

      *a4 = *(v6 + 4);
      *(a4 + 4) = *(v6 + 8);
      v9 = *(v6 + 36);
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = v9;
      v8 = (v6 + 128);
    }

    else
    {
      if (*(a2 + 452) != a3)
      {
        return 44;
      }

      *a4 = *(a2 + 468);
      *(a4 + 4) = *(a2 + 472);
      v7 = *(a2 + 500);
      *(a4 + 20) = *(a2 + 492);
      *(a4 + 24) = v7;
      v8 = (a2 + 592);
    }

    result = 0;
    *(a4 + 28) = *v8;
  }

  return result;
}

uint64_t uarpPlatformAssetQueryAssetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 44);
    }
  }

  return result;
}

__n128 uarpPlatformAssetQueryAssetVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 52);
      *a2 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxRxPayloadLength(uint64_t a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 4) = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxRxPayloadLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t uarpPlatformGetSupportsBulkInfoQueries(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 50);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformGetUseHostPushModel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 52);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformConfigureEndpointIDs(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = a4;
        if (a4)
        {
          if (*(a1 + 672))
          {
            uarpPlatformReleaseEndpointIDs(a1);
          }

          v11 = 0;
          result = UARPLayer2RequestBuffer(a1, &v11, 16 * a3, 43690, 2424);
          if (!result)
          {
            v8 = v11;
            *(a1 + 672) = v11;
            *(a1 + 664) = a3;
            v9 = a3;
            do
            {
              v10 = *v7++;
              *v8 = v10;
              v8 += 8;
              --v9;
            }

            while (v9);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformConfigureEndpointTags(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          v9 = *(a1 + 664);
          if (*(a1 + 664))
          {
            for (i = *(a1 + 672); *i != a3; i += 8)
            {
              if (!--v9)
              {
                return 30;
              }
            }

            if (*(i + 1))
            {
              uarpPlatformReleaseEndpointTags(a1, a2, i);
            }

            v12 = 0;
            result = UARPLayer2RequestBuffer(a1, &v12, (4 * a4), 43690, 2486);
            if (!result)
            {
              v11 = 0;
              *(i + 1) = v12;
              i[1] = a4;
              do
              {
                *(*(i + 1) + 4 * v11) = *(a5 + 4 * v11);
                ++v11;
              }

              while (a4 != v11);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

double uarpEndpointSetupLayer2AssetCallbacks(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *a1 = sub_10003563C;
  *(a1 + 8) = sub_100035644;
  *(a1 + 16) = sub_100035790;
  *(a1 + 24) = sub_100035798;
  *(a1 + 32) = sub_1000357A4;
  *(a1 + 40) = sub_1000357AC;
  *(a1 + 48) = sub_1000358F8;
  *(a1 + 56) = sub_100035900;
  *(a1 + 64) = sub_10003590C;
  *(a1 + 80) = sub_1000359BC;
  *(a1 + 88) = sub_100035A58;
  *(a1 + 96) = sub_100035ACC;
  *(a1 + 104) = j__objc_msgSend_assetRescind_;
  *(a1 + 112) = j__objc_msgSend_assetRescinded_;
  *(a1 + 120) = sub_100035B74;
  *(a1 + 128) = sub_100035B7C;
  *(a1 + 136) = j__objc_msgSend_assetRelease_;
  *(a1 + 144) = sub_100035B88;
  *(a1 + 152) = sub_100035C24;
  *(a1 + 160) = sub_100035C40;
  *(a1 + 168) = sub_100035CDC;
  *(a1 + 176) = nullsub_1;
  return result;
}

void sub_100035644(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [UARPMetaData tlvFromType:a3 length:a4 value:a5];
  if (v11)
  {
    [v9 assetMetaDataTLV:v11 asset:v10];
  }

  else
  {
    v12 = [v10 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "UARPAssetLayer2CallbacksAssetMetaDataTLV";
      v15 = 1024;
      v16 = a3;
      v17 = 1024;
      v18 = a4;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Could not create TLV for 0x%04x of length %u for SuperBinary <%@> for Endpoint <%@>", &v13, 0x2Cu);
    }
  }
}

void sub_1000357AC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [UARPMetaData tlvFromType:a3 length:a4 value:a5];
  if (v11)
  {
    [v9 assetPayloadMetaDataTLV:v11 asset:v10];
  }

  else
  {
    v12 = [v10 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "UARPAssetLayer2CallbacksPayloadMetaDataTLV";
      v15 = 1024;
      v16 = a3;
      v17 = 1024;
      v18 = a4;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Could not create TLV for 0x%04x of length %u for SuperBinary <%@> for Endpoint <%@>", &v13, 0x2Cu);
    }
  }
}

void sub_10003590C(void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a3 && a4)
  {
    v8 = a4;
    v9 = a2;
    v10 = a1;
    v11 = [NSData dataWithBytes:a3 length:v8];
    [v10 assetPayloadData:v11 offset:a5 asset:v9];
  }
}

void sub_1000359BC(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = [NSData dataWithBytes:a3 length:v6];
  [v8 assetPayloadDataComplete:v7 hash:v9];
}

uint64_t sub_100035A58(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, _WORD *a7)
{
  v9 = [a1 assetGetBytes:a5 offset:a6 asset:a3];
  *a7 = [v9 length];
  memcpy(a4, [v9 bytes], *a7);

  return 0;
}

uint64_t sub_100035ACC(void *a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v9 = a5;
  v10 = a3;
  v11 = a1;
  v12 = [NSData dataWithBytes:a4 length:v9];
  v13 = [v11 assetSetData:v12 offset:a6 asset:v10];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 54;
  }

  return v14;
}

uint64_t sub_100035B88(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = [NSString stringWithFormat:@"%s", uarpStageStatusToString(a4)];
  [v7 assetProcessingCompleted:sub_100035CFC(a4) flagsDescription:v8 asset:v6];

  return 0;
}

uint64_t sub_100035C40(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = [NSString stringWithFormat:@"%s", uarpStageStatusToString(a4)];
  [v7 assetPreProcessing:sub_100035CFC(a4) flagsDescription:v8 asset:v6];

  return 0;
}

uint64_t sub_100035CFC(int a1)
{
  if (a1 > 1794)
  {
    if (a1 <= 3073)
    {
      if (a1 <= 2306)
      {
        if (a1 > 2050)
        {
          if (a1 == 2051)
          {
            return 27;
          }

          if (a1 == 2306)
          {
            return 11;
          }
        }

        else
        {
          if (a1 == 1795)
          {
            return 26;
          }

          if (a1 == 2050)
          {
            return 10;
          }
        }
      }

      else if (a1 <= 2562)
      {
        if (a1 == 2307)
        {
          return 28;
        }

        if (a1 == 2562)
        {
          return 12;
        }
      }

      else
      {
        switch(a1)
        {
          case 2563:
            return 29;
          case 2818:
            return 13;
          case 2819:
            return 30;
        }
      }
    }

    else if (a1 > 3586)
    {
      if (a1 <= 3842)
      {
        if (a1 == 3587)
        {
          return 33;
        }

        if (a1 == 3842)
        {
          return 17;
        }
      }

      else
      {
        switch(a1)
        {
          case 3843:
            return 34;
          case 4098:
            return 18;
          case 4099:
            return 35;
        }
      }
    }

    else if (a1 <= 3329)
    {
      if (a1 == 3074)
      {
        return 14;
      }

      if (a1 == 3075)
      {
        return 31;
      }
    }

    else
    {
      switch(a1)
      {
        case 3330:
          return 15;
        case 3331:
          return 32;
        case 3586:
          return 16;
      }
    }

    return 0;
  }

  if (a1 > 769)
  {
    if (a1 <= 1281)
    {
      if (a1 > 1025)
      {
        if (a1 == 1026)
        {
          return 6;
        }

        if (a1 == 1027)
        {
          return 23;
        }
      }

      else
      {
        if (a1 == 770)
        {
          return 5;
        }

        if (a1 == 771)
        {
          return 22;
        }
      }
    }

    else if (a1 <= 1537)
    {
      if (a1 == 1282)
      {
        return 7;
      }

      if (a1 == 1283)
      {
        return 24;
      }
    }

    else
    {
      switch(a1)
      {
        case 1538:
          return 8;
        case 1539:
          return 25;
        case 1794:
          return 9;
      }
    }

    return 0;
  }

  if (a1 > 4)
  {
    if (a1 <= 258)
    {
      if (a1 == 5)
      {
        return 37;
      }

      if (a1 == 258)
      {
        return 3;
      }
    }

    else
    {
      switch(a1)
      {
        case 259:
          return 20;
        case 514:
          return 4;
        case 515:
          return 21;
      }
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 1;
    }

    if (a1 == 2)
    {
      return 2;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return 19;
  }

  else
  {
    return 36;
  }
}

void UARPEndpointLayer3BulkInfoResponse(void *a1, uint64_t a2, uint64_t a3, char *a4, unsigned int *a5, unsigned int a6)
{
  v19 = a1;
  v10 = [[UARPComponentTag alloc] initWithChar1:*a4 char2:a4[1] char3:a4[2] char4:a4[3]];
  v11 = objc_opt_new();
  if (a6 >= 8)
  {
    do
    {
      v12 = uarpHtonl(*a5);
      v13 = uarpHtonl(a5[1]);
      v14 = a6 - 8;
      a6 = a6 - 8 - v13;
      if (v14 < v13)
      {
        break;
      }

      v15 = v13;
      v16 = a5 + 2;
      v17 = [UARPMetaData tlvFromType:v12 length:v13 value:v16];
      if (v17)
      {
        [v11 addObject:v17];
      }

      a5 = (v16 + v15);
    }

    while (a6 > 7);
  }

  v18 = [NSArray arrayWithArray:v11];
  [v19 layer2CallbackBulkInfoResponse:a3 componentTag:v10 tlvs:v18];
}

void uarpEndpointSetupLayer2Callbacks(void *a1)
{
  bzero(a1, 0x230uLL);
  *a1 = sub_10003DB48;
  a1[1] = sub_10003DB88;
  a1[2] = sub_10003DB90;
  a1[3] = j__objc_msgSend_layer2CallbackReturnTransmitMsgBuffer_;
  a1[4] = sub_10003DBE0;
  a1[5] = sub_10003DC04;
  a1[6] = sub_10003DC20;
  a1[7] = sub_10003DC3C;
  a1[8] = sub_10003DC58;
  a1[9] = j__objc_msgSend_layer2CallbackSuperBinaryOffered_;
  a1[10] = sub_10003DC78;
  a1[11] = sub_10003DD1C;
  a1[12] = sub_10003DD48;
  a1[13] = sub_10003DD80;
  a1[14] = sub_10003DE78;
  a1[15] = sub_10003DEFC;
  a1[16] = sub_10003DFF4;
  a1[17] = sub_10003E078;
  a1[18] = sub_10003E170;
  a1[19] = sub_10003E1F4;
  a1[20] = sub_10003E2EC;
  a1[21] = sub_10003E370;
  a1[22] = sub_10003E464;
  a1[23] = sub_10003E4E0;
  a1[24] = sub_10003E5D4;
  a1[25] = sub_10003E650;
  a1[26] = sub_10003E664;
  a1[27] = sub_10003E6DC;
  a1[28] = sub_10003E758;
  a1[29] = j__objc_msgSend_layer2CallbackRescindAllAssets;
  a1[30] = j__objc_msgSend_layer2CallbackRescindedAllAssets;
  a1[31] = sub_10003E7D0;
  a1[32] = sub_10003E7F0;
  a1[33] = sub_10003E80C;
  a1[34] = sub_10003E844;
  a1[35] = sub_10003E84C;
  a1[36] = sub_10003E944;
  a1[37] = sub_10003E9C8;
  a1[38] = sub_10003EABC;
  a1[39] = sub_10003EBCC;
  a1[40] = UARPEndpointLayer3BulkInfoResponse;
  a1[41] = uarpPlatformDarwinDecompressBuffer;
  a1[42] = uarpPlatformDarwinCompressBuffer;
  a1[43] = uarpPlatformDarwinHashInfo;
  a1[44] = uarpPlatformDarwinHashInit;
  a1[45] = uarpPlatformDarwinHashUpdate;
  a1[46] = uarpPlatformDarwinHashFinal;
  a1[47] = uarpPlatformDarwinHashLog;
  a1[48] = 0;
  a1[49] = sub_10003ECD8;
  a1[50] = sub_10003ED74;
  a1[51] = sub_10003EE10;
  a1[52] = sub_10003EEAC;
  a1[53] = sub_10003EF48;
  a1[54] = sub_10003EF64;
  a1[55] = sub_10003EF80;
  a1[56] = j__objc_msgSend_layer2CallbackDownstreamReleased_;
  a1[57] = sub_10003EFA0;
  a1[58] = j__objc_msgSend_layer2CallbackNoFirmwareUpdateAvailable;
  a1[59] = sub_10003F02C;
  a1[60] = sub_10003F0B8;
  a1[61] = sub_10003F144;
  a1[62] = sub_10003F1B8;
}

uint64_t sub_10003DB48(void *a1, void *a2)
{
  if (!a2)
  {
    return 30;
  }

  v3 = [a1 layer2CallbackRequestBuffer:?];
  result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_10003DB90(void *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      v7 = [a1 layer2CallbackRequestTransmitMsgBuffer:*a4];
      result = 0;
      *a3 = v7;
    }
  }

  return result;
}

uint64_t sub_10003DBE0(void *a1)
{
  if ([a1 layer2CallbackSendMessage:? length:?])
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

void sub_10003DC78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [[UARPComponentTag alloc] initWithChar1:*(a3 + 48) char2:*(a3 + 49) char3:*(a3 + 50) char4:*(a3 + 51)];
  v6 = v5;
  if (*(a3 + 704))
  {
    [v4 layer2CallbackSolicitedDynamicAssetOffered:a3 asset:?];
  }

  else
  {
    [v4 layer2CallbackUnsolicitedDynamicAssetOffered:a3 assetTag:v5];
  }
}

uint64_t sub_10003DD48(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a3 - 1) >= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = (a3 - 1);
  }

  [a1 layer2CallbackApplyStagedAssetsResponse:a4 layer3Flags:v5];
  return 0;
}

uint64_t sub_10003DD80(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 manufacturerName];
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v11 = *a3;
  if ([(__CFString *)v10 length]<= v11)
  {
    *a3 = [(__CFString *)v10 length];
    memcpy(a2, [(__CFString *)v10 UTF8String], *a3);
    v12 = 0;
  }

  else
  {
    *a3 = 0;
    v12 = 39;
  }

  return v12;
}

void sub_10003DE78(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackManufacturerNameResponse:v7];
}

uint64_t sub_10003DEFC(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 modelName];
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v11 = *a3;
  if ([(__CFString *)v10 length]<= v11)
  {
    *a3 = [(__CFString *)v10 length];
    memcpy(a2, [(__CFString *)v10 UTF8String], *a3);
    v12 = 0;
  }

  else
  {
    *a3 = 0;
    v12 = 39;
  }

  return v12;
}

void sub_10003DFF4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackModelNameResponse:v7];
}

uint64_t sub_10003E078(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 serialNumber];
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v11 = *a3;
  if ([(__CFString *)v10 length]<= v11)
  {
    *a3 = [(__CFString *)v10 length];
    memcpy(a2, [(__CFString *)v10 UTF8String], *a3);
    v12 = 0;
  }

  else
  {
    *a3 = 0;
    v12 = 39;
  }

  return v12;
}

void sub_10003E170(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackSerialNumberResponse:v7];
}

uint64_t sub_10003E1F4(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 hardwareVersion];
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v11 = *a3;
  if ([(__CFString *)v10 length]<= v11)
  {
    *a3 = [(__CFString *)v10 length];
    memcpy(a2, [(__CFString *)v10 UTF8String], *a3);
    v12 = 0;
  }

  else
  {
    *a3 = 0;
    v12 = 39;
  }

  return v12;
}

void sub_10003E2EC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackHardwareVersionResponse:v7];
}

uint64_t sub_10003E370(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = [[UARPComponentVersion alloc] initWithVersionString:@"0.0.0.0"];
  v6 = [v4 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v4 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 firmwareVersion];

    v5 = v10;
  }

  *a3 = [(UARPComponentVersion *)v5 majorVersion];
  a3[1] = [(UARPComponentVersion *)v5 minorVersion];
  a3[2] = [(UARPComponentVersion *)v5 releaseVersion];
  a3[3] = [(UARPComponentVersion *)v5 buildVersion];

  return 0;
}

void sub_10003E464(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v5 = [[UARPComponentVersion alloc] initWithMajorVersion:*a3 minorVersion:a3[1] releaseVersion:a3[2] buildVersion:a3[3]];
  [v4 layer2CallbackActiveFirmwareVersionResponse:v5];
}

uint64_t sub_10003E4E0(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = [[UARPComponentVersion alloc] initWithVersionString:@"0.0.0.0"];
  v6 = [v4 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v4 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 stagedFirmwareVersion];

    v5 = v10;
  }

  *a3 = [(UARPComponentVersion *)v5 majorVersion];
  a3[1] = [(UARPComponentVersion *)v5 minorVersion];
  a3[2] = [(UARPComponentVersion *)v5 releaseVersion];
  a3[3] = [(UARPComponentVersion *)v5 buildVersion];

  return 0;
}

void sub_10003E5D4(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v5 = [[UARPComponentVersion alloc] initWithMajorVersion:*a3 minorVersion:a3[1] releaseVersion:a3[2] buildVersion:a3[3]];
  [v4 layer2CallbackStagedFirmwareVersionResponse:v5];
}

void sub_10003E664(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v5 = [[UARPLastError alloc] initWithLastAction:*a3 lastError:a3[1]];
  [v4 layer2CallbackLastErrorResponse:v5];
}

void sub_10003E6DC(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a1;
  v5 = [[UARPStatistics alloc] initWithPacketsNoVersionAgreement:*a3 packetsMissed:a3[1] packetsDuplicate:a3[2] packetsOutOfOrder:a3[3]];
  [v4 layer2CallbackStatisticsResponse:v5];
}

uint64_t sub_10003E758(void *a1, uint64_t a2, char *a3)
{
  v4 = a1;
  v5 = [[UARPComponentTag alloc] initWithChar1:*a3 char2:a3[1] char3:a3[2] char4:a3[3]];
  [v4 layer2CallbackAssetSolicitation:v5];

  return 0;
}

__darwin_time_t sub_10003E80C()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    return 0;
  }

  else
  {
    return v1.tv_sec;
  }
}

uint64_t sub_10003E84C(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 configuration];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 configuration];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 friendlyName];
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v11 = *a3;
  if ([(__CFString *)v10 length]<= v11)
  {
    *a3 = [(__CFString *)v10 length];
    memcpy(a2, [(__CFString *)v10 UTF8String], *a3);
    v12 = 0;
  }

  else
  {
    *a3 = 0;
    v12 = 39;
  }

  return v12;
}

void sub_10003E944(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackFriendlyNameResponse:v7];
}

void sub_10003E9C8(void *a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4)
{
  v12 = a1;
  v6 = objc_opt_new();
  if (a3)
  {
    v7 = a3;
    do
    {
      v8 = objc_alloc_init(UARPEndpointConfiguration);
      v9 = *a4++;
      v10 = [NSNumber numberWithUnsignedShort:v9];
      [(UARPEndpointConfiguration *)v8 setEndpointID:v10];

      [v6 addObject:v8];
      --v7;
    }

    while (v7);
  }

  v11 = [NSArray arrayWithArray:v6];
  [v12 layer2CallbackDiscoveredEndpointIDs:v11];
}

void sub_10003EABC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v14 = a1;
  v8 = objc_opt_new();
  if (a4)
  {
    v9 = (a5 + 3);
    v10 = a4;
    do
    {
      v11 = objc_alloc_init(UARPComponentConfiguration);
      v12 = [[UARPComponentTag alloc] initWithChar1:*(v9 - 3) char2:*(v9 - 2) char3:*(v9 - 1) char4:*v9];
      [(UARPComponentConfiguration *)v11 setComponentTag:v12];

      [v8 addObject:v11];
      v9 += 4;
      --v10;
    }

    while (v10);
  }

  v13 = [NSArray arrayWithArray:v8];
  [v14 layer2CallbackDiscoveredEndpointID:a3 components:v13];
}

void sub_10003EBCC(void *a1, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int *a6)
{
  v16 = a1;
  v10 = [[UARPComponentTag alloc] initWithChar1:*a4 char2:a4[1] char3:a4[2] char4:a4[3]];
  v11 = objc_opt_new();
  if (a5)
  {
    v12 = a5;
    do
    {
      v13 = *a6++;
      v14 = [NSNumber numberWithUnsignedLong:v13];
      [v11 addObject:v14];

      --v12;
    }

    while (v12);
  }

  v15 = [NSArray arrayWithArray:v11];
  [v16 layer2CallbackBulkInfoQuery:a3 componentTag:v10 infoProperties:v15];
}

void sub_10003ECD8(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v12 = calloc(0x200uLL, 1uLL);
  vsnprintf(v12, 0x200uLL, a3, &a9);
  v13 = [[NSString alloc] initWithUTF8String:v12];
  free(v12);
  [v11 layer2CallbackLogError:a2 logMsg:v13];
}

void sub_10003ED74(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v12 = calloc(0x200uLL, 1uLL);
  vsnprintf(v12, 0x200uLL, a3, &a9);
  v13 = [[NSString alloc] initWithUTF8String:v12];
  free(v12);
  [v11 layer2CallbackLogInfo:a2 logMsg:v13];
}

void sub_10003EE10(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v12 = calloc(0x200uLL, 1uLL);
  vsnprintf(v12, 0x200uLL, a3, &a9);
  v13 = [[NSString alloc] initWithUTF8String:v12];
  free(v12);
  [v11 layer2CallbackLogDebug:a2 logMsg:v13];
}

void sub_10003EEAC(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v12 = calloc(0x200uLL, 1uLL);
  vsnprintf(v12, 0x200uLL, a3, &a9);
  v13 = [[NSString alloc] initWithUTF8String:v12];
  free(v12);
  [v11 layer2CallbackLogFault:a2 logMsg:v13];
}

uint64_t sub_10003EFA0(void *a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v7 = a5;
  v8 = a3;
  v9 = a1;
  v10 = [NSData dataWithBytes:a4 length:v7];
  [v9 layer2CallbackDownstreamRecvMessage:v8 uarpMsg:v10];

  return 0;
}

uint64_t sub_10003F02C(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  v10 = a1;
  v11 = [v10 layer2Ctx];
  v12 = [v10 layer2RemoteCtx];

  return uarpApplePlatformEndpointRecvMessage(v11, v12, a3, a4, a5, a6);
}

BOOL sub_10003F0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v10 = a1;
  v11 = [v10 layer2Ctx];
  v12 = [v10 layer2RemoteCtx];

  return uarpApplePlatformMessageCheckExpectedResponse(v11, v12, a3, a4, a5, a6);
}

uint64_t sub_10003F144(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [v6 layer2Ctx];
  v8 = [v6 layer2RemoteCtx];

  return uarpApplePlatformMessageCheckValidToSend(v7, v8, a3, a4);
}

uint64_t sub_10003F1B8(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [v6 layer2Ctx];
  v8 = [v6 layer2RemoteCtx];

  return uarpApplePlatformMessageExceededRetries(v7, v8, a3, a4);
}

void uarpEndpointSetupLayer2AppleCallbacks(void *a1)
{
  bzero(a1, 0x210uLL);
  *a1 = sub_10004296C;
  a1[1] = sub_100042A64;
  a1[2] = sub_100042AE8;
  a1[3] = sub_100042BE0;
  a1[4] = sub_100042C64;
  a1[5] = sub_100042D5C;
  a1[6] = sub_100042DE0;
  a1[7] = sub_100042F34;
  a1[8] = sub_100042FDC;
  a1[9] = sub_1000430E4;
  a1[10] = sub_100043168;
  a1[11] = sub_100043270;
  a1[12] = sub_1000432F4;
  a1[13] = sub_1000433FC;
  a1[16] = sub_100043480;
  a1[17] = sub_100043588;
  a1[18] = sub_10004360C;
  a1[19] = sub_100043714;
  a1[20] = sub_100043798;
  a1[21] = sub_1000438A0;
  a1[22] = sub_100043924;
  a1[23] = sub_100043A2C;
  a1[24] = sub_100043AB0;
  a1[25] = sub_100043BB4;
  a1[26] = sub_100043C38;
  a1[27] = sub_100043D3C;
  a1[28] = sub_100043DC0;
  a1[29] = sub_100043EC4;
  a1[30] = sub_100043F48;
  a1[31] = sub_10004404C;
  a1[32] = sub_1000440D0;
  a1[33] = sub_1000441D8;
  a1[34] = sub_10004425C;
  a1[35] = sub_100044354;
  a1[36] = sub_1000443D8;
  a1[37] = sub_1000444DC;
  a1[38] = sub_100044560;
  a1[39] = sub_100044668;
  a1[40] = sub_1000446EC;
  a1[41] = sub_1000447F4;
  a1[42] = sub_100044878;
  a1[43] = sub_100044980;
  a1[44] = sub_100044A04;
  a1[45] = sub_100044B0C;
  a1[46] = sub_100044B90;
  a1[47] = sub_100044C80;
  a1[48] = sub_100044D00;
  a1[49] = sub_100044DF0;
  a1[50] = sub_100044E70;
  a1[51] = sub_100044F74;
  a1[52] = sub_100044FF8;
  a1[53] = sub_1000450FC;
  a1[54] = sub_100045180;
  a1[55] = sub_100045284;
  a1[56] = sub_100045308;
  a1[57] = sub_1000453F8;
  a1[14] = sub_10004547C;
  a1[15] = sub_10004556C;
  a1[58] = sub_1000455EC;
  a1[59] = sub_1000456DC;
  a1[62] = sub_10004575C;
  a1[63] = sub_100045860;
}

uint64_t sub_10004296C(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 appleModelNumber];
  }

  else
  {
    v13 = @"UNKNOWN";
  }

  if ([(__CFString *)v13 length]<= a4)
  {
    *a5 = [(__CFString *)v13 length];
    memcpy(a3, [(__CFString *)v13 UTF8String], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100042A64(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackAppleModelNumberResponse:v7];
}

uint64_t sub_100042AE8(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 hwFusingType];
  }

  else
  {
    v13 = @"UNKNOWN";
  }

  if ([(__CFString *)v13 length]<= a4)
  {
    *a5 = [(__CFString *)v13 length];
    memcpy(a3, [(__CFString *)v13 UTF8String], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100042BE0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackHwFusingTypeResponse:v7];
}

uint64_t sub_100042C64(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 manifestPrefix];
  }

  else
  {
    v13 = @"UNKNOWN";
  }

  if ([(__CFString *)v13 length]<= a4)
  {
    *a5 = [(__CFString *)v13 length];
    memcpy(a3, [(__CFString *)v13 UTF8String], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100042D5C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackManifestPrefixResponse:v7];
}

uint64_t sub_100042DE0(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v17 = 0;
    v12 = 0;
LABEL_8:
    v16 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v13 = [v12 boardID32];

  if (a4 >= 4 && v13)
  {
    v14 = [v12 boardID32];
    v15 = [v14 unsignedLongValue];

    v16 = 0;
    *a3 = v15;
    v17 = 4;
  }

  else
  {
    v19 = [v12 boardID64];

    v17 = 0;
    v16 = 54;
    if (a4 >= 8 && v19)
    {
      v20 = [v12 boardID64];
      v21 = [v20 unsignedLongLongValue];

      v16 = 0;
      *a3 = v21;
      v17 = 8;
    }
  }

LABEL_9:
  *a5 = v17;

  return v16;
}

void sub_100042F34(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  v7 = a1;
  if (a4 == 8)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:*a3];
    [v7 layer2CallbackBoardID64Response:v6];
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_6;
    }

    v6 = [NSNumber numberWithUnsignedLong:*a3];
    [v7 layer2CallbackBoardID32Response:v6];
  }

LABEL_6:
}

uint64_t sub_100042FDC(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 chipID];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 chipID];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000430E4(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackChipIDResponse:v7];
  }
}

uint64_t sub_100043168(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 chipRevision];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 chipRevision];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043270(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackChipRevisionResponse:v7];
  }
}

uint64_t sub_1000432F4(void *a1, uint64_t a2, void *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 ECID];

  v14 = 0;
  v15 = 54;
  if (a4 >= 8 && v13)
  {
    v16 = [v12 ECID];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 8;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000433FC(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (a4 == 8)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLongLong:v5];
    [v6 layer2CallbackEcidResponse:v7];
  }
}

uint64_t sub_100043480(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 securityDomain];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 securityDomain];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043588(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackSecurityDomainResponse:v7];
  }
}

uint64_t sub_10004360C(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 securityMode];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 securityMode];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043714(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackSecurityModeResponse:v7];
  }
}

uint64_t sub_100043798(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 productionMode];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 productionMode];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000438A0(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackProductionModeResponse:v7];
  }
}

uint64_t sub_100043924(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 chipEpoch];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 chipEpoch];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043A2C(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackChipEpochResponse:v7];
  }
}

uint64_t sub_100043AB0(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 enableMixMatch];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 enableMixMatch];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043BB4(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackEnableMixMatchResponse:v7];
  }
}

uint64_t sub_100043C38(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 liveNonce];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 liveNonce];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043D3C(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackSocLiveNonceResponse:v7];
  }
}

uint64_t sub_100043DC0(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 prefixNeedsLUN];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 prefixNeedsLUN];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100043EC4(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackPrefixNeedsLogicalUnitNumberResponse:v7];
  }
}

uint64_t sub_100043F48(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 suffixNeedsLUN];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 suffixNeedsLUN];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_10004404C(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackSuffixNeedsLogicalUnitNumberResponse:v7];
  }
}

uint64_t sub_1000440D0(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 logicalUnitNumber];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 logicalUnitNumber];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000441D8(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackLogicalUnitNumberResponse:v7];
  }
}

uint64_t sub_10004425C(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 ticketLongName];
  }

  else
  {
    v13 = @"UNKNOWN";
  }

  if ([(__CFString *)v13 length]<= a4)
  {
    *a5 = [(__CFString *)v13 length];
    memcpy(a3, [(__CFString *)v13 UTF8String], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100044354(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackTicketLongNameResponse:v7];
}

uint64_t sub_1000443D8(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 requiresPersonalization];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 requiresPersonalization];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000444DC(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackRequiresPersonalizationResponse:v7];
  }
}

uint64_t sub_100044560(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 apBoardID];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 apBoardID];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100044668(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackApBoardIDResponse:v7];
  }
}

uint64_t sub_1000446EC(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 apChipID];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 apChipID];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000447F4(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackApChipIDResponse:v7];
  }
}

uint64_t sub_100044878(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 apProductionMode];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 apProductionMode];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100044980(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackApProductionModeResponse:v7];
  }
}

uint64_t sub_100044A04(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 apSecurityMode];

  v14 = 0;
  v15 = 54;
  if (a4 >= 4 && v13)
  {
    v16 = [v12 apSecurityMode];
    v17 = [v16 unsignedLongValue];

    v15 = 0;
    *a3 = v17;
    v14 = 4;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100044B0C(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 4)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedLong:v5];
    [v6 layer2CallbackApSecurityModeResponse:v7];
  }
}

uint64_t sub_100044B90(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 hardwareSpecific];
  if ([v13 length] <= a4)
  {
    *a5 = [v13 length];
    memcpy(a3, [v13 bytes], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100044C80(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v6 = a1;
  v7 = [NSData dataWithBytes:a3 length:v5];
  [v6 layer2CallbackHardwareSpecificResponse:v7];
}

uint64_t sub_100044D00(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 nonce];
  if ([v13 length] <= a4)
  {
    *a5 = [v13 length];
    memcpy(a3, [v13 bytes], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_100044DF0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v6 = a1;
  v7 = [NSData dataWithBytes:a3 length:v5];
  [v6 layer2CallbackNonceResponse:v7];
}

uint64_t sub_100044E70(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 life];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 life];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100044F74(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackLifeResponse:v7];
  }
}

uint64_t sub_100044FF8(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 provisioning];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 provisioning];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_1000450FC(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackProvisioningResponse:v7];
  }
}

uint64_t sub_100045180(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 manifestEpoch];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 manifestEpoch];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100045284(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackManifestEpochResponse:v7];
  }
}

uint64_t sub_100045308(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 manifestSuffix];
  if ([v13 length] <= a4)
  {
    *a5 = [v13 length];
    memcpy(a3, [v13 UTF8String], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_1000453F8(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a1;
  v7 = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  [v6 layer2CallbackManifestSuffixResponse:v7];
}

uint64_t sub_10004547C(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 ecidData];
  if ([v13 length] <= a4)
  {
    *a5 = [v13 length];
    memcpy(a3, [v13 bytes], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_10004556C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v6 = a1;
  v7 = [NSData dataWithBytes:a3 length:v5];
  [v6 layer2CallbackEcidDataResponse:v7];
}

uint64_t sub_1000455EC(void *a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 configuration];
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 nonceSeed];
  if ([v13 length] <= a4)
  {
    *a5 = [v13 length];
    memcpy(a3, [v13 bytes], *a5);
    v14 = 0;
  }

  else
  {
    *a5 = 0;
    v14 = 39;
  }

  return v14;
}

void sub_1000456DC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v6 = a1;
  v7 = [NSData dataWithBytes:a3 length:v5];
  [v6 layer2CallbackNonceSeedResponse:v7];
}

uint64_t sub_10004575C(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v8 = a1;
  v9 = [v8 configuration];
  v10 = [v9 count];

  if (v10 != 1)
  {
    v14 = 0;
    v12 = 0;
LABEL_8:
    v15 = 54;
    goto LABEL_9;
  }

  v11 = [v8 configuration];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v12 realHdcpKeyPresent];

  v14 = 0;
  v15 = 54;
  if (a4 && v13)
  {
    v16 = [v12 realHdcpKeyPresent];
    v17 = [v16 unsignedCharValue];

    v15 = 0;
    *a3 = v17;
    v14 = 1;
  }

LABEL_9:
  *a5 = v14;

  return v15;
}

void sub_100045860(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 1)
  {
    v5 = *a3;
    v6 = a1;
    v7 = [NSNumber numberWithUnsignedChar:v5];
    [v6 layer2CallbackRealHdcpKeyPresentResponse:v7];
  }
}

void sub_10004BAAC(uint64_t a1, uint64_t a2)
{
  if (qword_1000D48A0 != -1)
  {
    sub_1000825E4();
  }

  v3 = qword_1000D4898;
  if (os_log_type_enabled(qword_1000D4898, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

void sub_10004BFB0(id a1)
{
  qword_1000D4898 = os_log_create("com.apple.uarp.layer3", "personalizer");

  _objc_release_x1();
}

const __CFString *UARPAssetProcessingStatusDescription(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B9328 + a1);
  }
}

const __CFString *UARPLayer3HashAlgorithmDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B9458 + a1);
  }
}

uint64_t UARPLayer3HashAlgorithmValue(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SHA-256"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SHA-384"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SHA-512"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *UARPLayer3PersonalizationStatusDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B9478 + a1);
  }
}

const __CFString *UARPLayer3ApplyStagedAssetsStatusDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B94D0 + a1);
  }
}

const __CFString *UARPLayer3UARPLayer3AssetTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B9500 + a1);
  }
}

NSObject *UARPLayer3UtilsCleanFileHandleForWriting(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSFileManager defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (!v9 || ([v5 path], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "removeItemAtPath:error:", v10, a3), v10, (v11 & 1) != 0))
  {
    v12 = [v5 path];
    v13 = [v12 stringByDeletingLastPathComponent];

    if ([v7 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:a3])
    {
      v14 = [v5 path];
      v15 = [v7 createFileAtPath:v14 contents:0 attributes:0];

      if (v15)
      {
        v16 = [NSFileHandle fileHandleForWritingToURL:v5 error:a3];
        v17 = v16;
        if (v16)
        {
          v17 = v16;
          v18 = v17;
        }

        else
        {
          v20 = v6;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100082920(v5, a3);
          }

          v18 = 0;
        }

        goto LABEL_15;
      }

      v17 = v6;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10008287C(v5);
      }
    }

    else
    {
      v17 = v6;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000827C4(v5, a3);
      }
    }

    v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = v6;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10008270C(v5, a3);
  }

  v18 = 0;
LABEL_16:

  return v18;
}

void sub_100054B0C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000D48A8;
  qword_1000D48A8 = v1;

  v3 = objc_opt_new();
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 tlvType]);
  v5 = qword_1000D48A8;
  v6 = [v3 tlvName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = objc_opt_new();
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 tlvType]);
  v9 = qword_1000D48A8;
  v10 = [v7 tlvName];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = objc_opt_new();
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 tlvType]);
  v13 = qword_1000D48A8;
  v14 = [v11 tlvName];
  [v13 setObject:v12 forKeyedSubscript:v14];

  v15 = objc_opt_new();
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 tlvType]);
  v17 = qword_1000D48A8;
  v18 = [v15 tlvName];
  [v17 setObject:v16 forKeyedSubscript:v18];

  v19 = objc_opt_new();
  v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v19 tlvType]);
  v21 = qword_1000D48A8;
  v22 = [v19 tlvName];
  [v21 setObject:v20 forKeyedSubscript:v22];

  v23 = objc_opt_new();
  v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v23 tlvType]);
  v25 = qword_1000D48A8;
  v26 = [v23 tlvName];
  [v25 setObject:v24 forKeyedSubscript:v26];

  v27 = objc_opt_new();
  v28 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v27 tlvType]);
  v29 = qword_1000D48A8;
  v30 = [v27 tlvName];
  [v29 setObject:v28 forKeyedSubscript:v30];

  v31 = objc_opt_new();
  v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v31 tlvType]);
  v33 = qword_1000D48A8;
  v34 = [v31 tlvName];
  [v33 setObject:v32 forKeyedSubscript:v34];

  v35 = objc_opt_new();
  v36 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v35 tlvType]);
  v37 = qword_1000D48A8;
  v38 = [v35 tlvName];
  [v37 setObject:v36 forKeyedSubscript:v38];

  v39 = objc_opt_new();
  v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v39 tlvType]);
  v41 = qword_1000D48A8;
  v42 = [v39 tlvName];
  [v41 setObject:v40 forKeyedSubscript:v42];

  v43 = objc_opt_new();
  v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v43 tlvType]);
  v45 = qword_1000D48A8;
  v46 = [v43 tlvName];
  [v45 setObject:v44 forKeyedSubscript:v46];

  v47 = objc_opt_new();
  v48 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v47 tlvType]);
  v49 = qword_1000D48A8;
  v50 = [v47 tlvName];
  [v49 setObject:v48 forKeyedSubscript:v50];

  v51 = objc_opt_new();
  v52 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v51 tlvType]);
  v53 = qword_1000D48A8;
  v54 = [v51 tlvName];
  [v53 setObject:v52 forKeyedSubscript:v54];

  v55 = objc_opt_new();
  v56 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v55 tlvType]);
  v57 = qword_1000D48A8;
  v58 = [v55 tlvName];
  [v57 setObject:v56 forKeyedSubscript:v58];

  v59 = objc_opt_new();
  v60 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v59 tlvType]);
  v61 = qword_1000D48A8;
  v62 = [v59 tlvName];
  [v61 setObject:v60 forKeyedSubscript:v62];

  v63 = objc_opt_new();
  v64 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v63 tlvType]);
  v65 = qword_1000D48A8;
  v66 = [v63 tlvName];
  [v65 setObject:v64 forKeyedSubscript:v66];

  v67 = objc_opt_new();
  v68 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v67 tlvType]);
  v69 = qword_1000D48A8;
  v70 = [v67 tlvName];
  [v69 setObject:v68 forKeyedSubscript:v70];

  v71 = objc_opt_new();
  v72 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v71 tlvType]);
  v73 = qword_1000D48A8;
  v74 = [v71 tlvName];
  [v73 setObject:v72 forKeyedSubscript:v74];

  v75 = objc_opt_new();
  v76 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v75 tlvType]);
  v77 = qword_1000D48A8;
  v78 = [v75 tlvName];
  [v77 setObject:v76 forKeyedSubscript:v78];

  v79 = objc_opt_new();
  v80 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v79 tlvType]);
  v81 = qword_1000D48A8;
  v82 = [v79 tlvName];
  [v81 setObject:v80 forKeyedSubscript:v82];

  v83 = objc_opt_new();
  v84 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v83 tlvType]);
  v85 = qword_1000D48A8;
  v86 = [v83 tlvName];
  [v85 setObject:v84 forKeyedSubscript:v86];

  v87 = objc_opt_new();
  v88 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v87 tlvType]);
  v89 = qword_1000D48A8;
  v90 = [v87 tlvName];
  [v89 setObject:v88 forKeyedSubscript:v90];

  v91 = objc_opt_new();
  v92 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v91 tlvType]);
  v93 = qword_1000D48A8;
  v94 = [v91 tlvName];
  [v93 setObject:v92 forKeyedSubscript:v94];

  v95 = objc_opt_new();
  v96 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v95 tlvType]);
  v97 = qword_1000D48A8;
  v98 = [v95 tlvName];
  [v97 setObject:v96 forKeyedSubscript:v98];

  v99 = objc_opt_new();
  v100 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v99 tlvType]);
  v101 = qword_1000D48A8;
  v102 = [v99 tlvName];
  [v101 setObject:v100 forKeyedSubscript:v102];

  v103 = objc_opt_new();
  v104 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v103 tlvType]);
  v105 = qword_1000D48A8;
  v106 = [v103 tlvName];
  [v105 setObject:v104 forKeyedSubscript:v106];

  v107 = objc_opt_new();
  v108 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v107 tlvType]);
  v109 = qword_1000D48A8;
  v110 = [v107 tlvName];
  [v109 setObject:v108 forKeyedSubscript:v110];

  v111 = objc_opt_new();
  v112 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v111 tlvType]);
  v113 = qword_1000D48A8;
  v114 = [v111 tlvName];
  [v113 setObject:v112 forKeyedSubscript:v114];

  v115 = objc_opt_new();
  v116 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v115 tlvType]);
  v117 = qword_1000D48A8;
  v118 = [v115 tlvName];
  [v117 setObject:v116 forKeyedSubscript:v118];

  v119 = objc_opt_new();
  v120 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v119 tlvType]);
  v121 = qword_1000D48A8;
  v122 = [v119 tlvName];
  [v121 setObject:v120 forKeyedSubscript:v122];

  v123 = objc_opt_new();
  v124 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v123 tlvType]);
  v125 = qword_1000D48A8;
  v126 = [v123 tlvName];
  [v125 setObject:v124 forKeyedSubscript:v126];

  v127 = objc_opt_new();
  v128 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v127 tlvType]);
  v129 = qword_1000D48A8;
  v130 = [v127 tlvName];
  [v129 setObject:v128 forKeyedSubscript:v130];

  v131 = objc_opt_new();
  v132 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v131 tlvType]);
  v133 = qword_1000D48A8;
  v134 = [v131 tlvName];
  [v133 setObject:v132 forKeyedSubscript:v134];

  v135 = objc_opt_new();
  v136 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v135 tlvType]);
  v137 = qword_1000D48A8;
  v138 = [v135 tlvName];
  [v137 setObject:v136 forKeyedSubscript:v138];

  v139 = objc_opt_new();
  v140 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v139 tlvType]);
  v141 = qword_1000D48A8;
  v142 = [v139 tlvName];
  [v141 setObject:v140 forKeyedSubscript:v142];

  v143 = objc_opt_new();
  v144 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v143 tlvType]);
  v145 = qword_1000D48A8;
  v146 = [v143 tlvName];
  [v145 setObject:v144 forKeyedSubscript:v146];

  v147 = objc_opt_new();
  v148 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v147 tlvType]);
  v149 = qword_1000D48A8;
  v150 = [v147 tlvName];
  [v149 setObject:v148 forKeyedSubscript:v150];

  v151 = objc_opt_new();
  v152 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v151 tlvType]);
  v153 = qword_1000D48A8;
  v154 = [v151 tlvName];
  [v153 setObject:v152 forKeyedSubscript:v154];

  v155 = objc_opt_new();
  v156 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v155 tlvType]);
  v157 = qword_1000D48A8;
  v158 = [v155 tlvName];
  [v157 setObject:v156 forKeyedSubscript:v158];

  v159 = objc_opt_new();
  v160 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v159 tlvType]);
  v161 = qword_1000D48A8;
  v162 = [v159 tlvName];
  [v161 setObject:v160 forKeyedSubscript:v162];

  v163 = objc_opt_new();
  v164 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v163 tlvType]);
  v165 = qword_1000D48A8;
  v166 = [v163 tlvName];
  [v165 setObject:v164 forKeyedSubscript:v166];

  v167 = objc_opt_new();
  v168 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v167 tlvType]);
  v169 = qword_1000D48A8;
  v170 = [v167 tlvName];
  [v169 setObject:v168 forKeyedSubscript:v170];

  v171 = objc_opt_new();
  v172 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v171 tlvType]);
  v173 = qword_1000D48A8;
  v174 = [v171 tlvName];
  [v173 setObject:v172 forKeyedSubscript:v174];

  v175 = objc_opt_new();
  v176 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v175 tlvType]);
  v177 = qword_1000D48A8;
  v178 = [v175 tlvName];
  [v177 setObject:v176 forKeyedSubscript:v178];

  v179 = objc_opt_new();
  v180 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v179 tlvType]);
  v181 = qword_1000D48A8;
  v182 = [v179 tlvName];
  [v181 setObject:v180 forKeyedSubscript:v182];

  v183 = objc_opt_new();
  v184 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v183 tlvType]);
  v185 = qword_1000D48A8;
  v186 = [v183 tlvName];
  [v185 setObject:v184 forKeyedSubscript:v186];

  v187 = objc_opt_new();
  v188 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v187 tlvType]);
  v189 = qword_1000D48A8;
  v190 = [v187 tlvName];
  [v189 setObject:v188 forKeyedSubscript:v190];

  v191 = objc_opt_new();
  v192 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v191 tlvType]);
  v193 = qword_1000D48A8;
  v194 = [v191 tlvName];
  [v193 setObject:v192 forKeyedSubscript:v194];

  v195 = objc_opt_new();
  v196 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v195 tlvType]);
  v197 = qword_1000D48A8;
  v198 = [v195 tlvName];
  [v197 setObject:v196 forKeyedSubscript:v198];

  v199 = objc_opt_new();
  v200 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v199 tlvType]);
  v201 = qword_1000D48A8;
  v202 = [v199 tlvName];
  [v201 setObject:v200 forKeyedSubscript:v202];

  v203 = objc_opt_new();
  v204 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v203 tlvType]);
  v205 = qword_1000D48A8;
  v206 = [v203 tlvName];
  [v205 setObject:v204 forKeyedSubscript:v206];

  v207 = objc_opt_new();
  v208 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v207 tlvType]);
  v209 = qword_1000D48A8;
  v210 = [v207 tlvName];
  [v209 setObject:v208 forKeyedSubscript:v210];

  v211 = objc_opt_new();
  v212 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v211 tlvType]);
  v213 = qword_1000D48A8;
  v214 = [v211 tlvName];
  [v213 setObject:v212 forKeyedSubscript:v214];

  v215 = objc_opt_new();
  v216 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v215 tlvType]);
  v217 = qword_1000D48A8;
  v218 = [v215 tlvName];
  [v217 setObject:v216 forKeyedSubscript:v218];

  v219 = objc_opt_new();
  v220 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v219 tlvType]);
  v221 = qword_1000D48A8;
  v222 = [v219 tlvName];
  [v221 setObject:v220 forKeyedSubscript:v222];

  v223 = objc_opt_new();
  v224 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v223 tlvType]);
  v225 = qword_1000D48A8;
  v226 = [v223 tlvName];
  [v225 setObject:v224 forKeyedSubscript:v226];

  v227 = objc_opt_new();
  v228 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v227 tlvType]);
  v229 = qword_1000D48A8;
  v230 = [v227 tlvName];
  [v229 setObject:v228 forKeyedSubscript:v230];

  v231 = objc_opt_new();
  v232 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v231 tlvType]);
  v233 = qword_1000D48A8;
  v234 = [v231 tlvName];
  [v233 setObject:v232 forKeyedSubscript:v234];

  v235 = objc_opt_new();
  v236 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v235 tlvType]);
  v237 = qword_1000D48A8;
  v238 = [v235 tlvName];
  [v237 setObject:v236 forKeyedSubscript:v238];

  v239 = objc_opt_new();
  v240 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v239 tlvType]);
  v241 = qword_1000D48A8;
  v242 = [v239 tlvName];
  [v241 setObject:v240 forKeyedSubscript:v242];

  v243 = objc_opt_new();
  v244 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v243 tlvType]);
  v245 = qword_1000D48A8;
  v246 = [v243 tlvName];
  [v245 setObject:v244 forKeyedSubscript:v246];

  v247 = objc_opt_new();
  v248 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v247 tlvType]);
  v249 = qword_1000D48A8;
  v250 = [v247 tlvName];
  [v249 setObject:v248 forKeyedSubscript:v250];

  v251 = objc_opt_new();
  v252 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v251 tlvType]);
  v253 = qword_1000D48A8;
  v254 = [v251 tlvName];
  [v253 setObject:v252 forKeyedSubscript:v254];

  v255 = objc_opt_new();
  v256 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v255 tlvType]);
  v257 = qword_1000D48A8;
  v258 = [v255 tlvName];
  [v257 setObject:v256 forKeyedSubscript:v258];

  v259 = objc_opt_new();
  v260 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v259 tlvType]);
  v261 = qword_1000D48A8;
  v262 = [v259 tlvName];
  [v261 setObject:v260 forKeyedSubscript:v262];

  v263 = objc_opt_new();
  v264 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v263 tlvType]);
  v265 = qword_1000D48A8;
  v266 = [v263 tlvName];
  [v265 setObject:v264 forKeyedSubscript:v266];

  v267 = objc_opt_new();
  v268 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v267 tlvType]);
  v269 = qword_1000D48A8;
  v270 = [v267 tlvName];
  [v269 setObject:v268 forKeyedSubscript:v270];

  v271 = objc_opt_new();
  v272 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v271 tlvType]);
  v273 = qword_1000D48A8;
  v274 = [v271 tlvName];
  [v273 setObject:v272 forKeyedSubscript:v274];

  v275 = objc_opt_new();
  v276 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v275 tlvType]);
  v277 = qword_1000D48A8;
  v278 = [v275 tlvName];
  [v277 setObject:v276 forKeyedSubscript:v278];

  v279 = objc_opt_new();
  v280 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v279 tlvType]);
  v281 = qword_1000D48A8;
  v282 = [v279 tlvName];
  [v281 setObject:v280 forKeyedSubscript:v282];

  v283 = objc_opt_new();
  v284 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v283 tlvType]);
  v285 = qword_1000D48A8;
  v286 = [v283 tlvName];
  [v285 setObject:v284 forKeyedSubscript:v286];

  v287 = objc_opt_new();
  v288 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v287 tlvType]);
  v289 = qword_1000D48A8;
  v290 = [v287 tlvName];
  [v289 setObject:v288 forKeyedSubscript:v290];

  v291 = objc_opt_new();
  v292 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v291 tlvType]);
  v293 = qword_1000D48A8;
  v294 = [v291 tlvName];
  [v293 setObject:v292 forKeyedSubscript:v294];

  v295 = objc_opt_new();
  v296 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v295 tlvType]);
  v297 = qword_1000D48A8;
  v298 = [v295 tlvName];
  [v297 setObject:v296 forKeyedSubscript:v298];

  v299 = objc_opt_new();
  v300 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v299 tlvType]);
  v301 = qword_1000D48A8;
  v302 = [v299 tlvName];
  [v301 setObject:v300 forKeyedSubscript:v302];

  v303 = objc_opt_new();
  v304 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v303 tlvType]);
  v305 = qword_1000D48A8;
  v306 = [v303 tlvName];
  [v305 setObject:v304 forKeyedSubscript:v306];

  v307 = objc_opt_new();
  v308 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v307 tlvType]);
  v309 = qword_1000D48A8;
  v310 = [v307 tlvName];
  [v309 setObject:v308 forKeyedSubscript:v310];

  v311 = objc_opt_new();
  v312 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v311 tlvType]);
  v313 = qword_1000D48A8;
  v314 = [v311 tlvName];
  [v313 setObject:v312 forKeyedSubscript:v314];

  v315 = objc_opt_new();
  v316 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v315 tlvType]);
  v317 = qword_1000D48A8;
  v318 = [v315 tlvName];
  [v317 setObject:v316 forKeyedSubscript:v318];

  v319 = objc_opt_new();
  v320 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v319 tlvType]);
  v321 = qword_1000D48A8;
  v322 = [v319 tlvName];
  [v321 setObject:v320 forKeyedSubscript:v322];

  v323 = objc_opt_new();
  v324 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v323 tlvType]);
  v325 = qword_1000D48A8;
  v326 = [v323 tlvName];
  [v325 setObject:v324 forKeyedSubscript:v326];

  v327 = objc_opt_new();
  v328 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v327 tlvType]);
  v329 = qword_1000D48A8;
  v330 = [v327 tlvName];
  [v329 setObject:v328 forKeyedSubscript:v330];

  v331 = objc_opt_new();
  v332 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v331 tlvType]);
  v333 = qword_1000D48A8;
  v334 = [v331 tlvName];
  [v333 setObject:v332 forKeyedSubscript:v334];

  v335 = objc_opt_new();
  v336 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v335 tlvType]);
  v337 = qword_1000D48A8;
  v338 = [v335 tlvName];
  [v337 setObject:v336 forKeyedSubscript:v338];

  v339 = objc_opt_new();
  v340 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v339 tlvType]);
  v341 = qword_1000D48A8;
  v342 = [v339 tlvName];
  [v341 setObject:v340 forKeyedSubscript:v342];

  v343 = objc_opt_new();
  v344 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v343 tlvType]);
  v345 = qword_1000D48A8;
  v346 = [v343 tlvName];
  [v345 setObject:v344 forKeyedSubscript:v346];

  v347 = objc_opt_new();
  v348 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v347 tlvType]);
  v349 = qword_1000D48A8;
  v350 = [v347 tlvName];
  [v349 setObject:v348 forKeyedSubscript:v350];

  v351 = objc_opt_new();
  v352 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v351 tlvType]);
  v353 = qword_1000D48A8;
  v354 = [v351 tlvName];
  [v353 setObject:v352 forKeyedSubscript:v354];

  v355 = objc_opt_new();
  v356 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v355 tlvType]);
  v357 = qword_1000D48A8;
  v358 = [v355 tlvName];
  [v357 setObject:v356 forKeyedSubscript:v358];

  v359 = objc_opt_new();
  v360 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v359 tlvType]);
  v361 = qword_1000D48A8;
  v362 = [v359 tlvName];
  [v361 setObject:v360 forKeyedSubscript:v362];

  v363 = objc_opt_new();
  v364 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v363 tlvType]);
  v365 = qword_1000D48A8;
  v366 = [v363 tlvName];
  [v365 setObject:v364 forKeyedSubscript:v366];

  v367 = objc_opt_new();
  v368 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v367 tlvType]);
  v369 = qword_1000D48A8;
  v370 = [v367 tlvName];
  [v369 setObject:v368 forKeyedSubscript:v370];

  v371 = objc_opt_new();
  v372 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v371 tlvType]);
  v373 = qword_1000D48A8;
  v374 = [v371 tlvName];
  [v373 setObject:v372 forKeyedSubscript:v374];

  v375 = objc_opt_new();
  v376 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v375 tlvType]);
  v377 = qword_1000D48A8;
  v378 = [v375 tlvName];
  [v377 setObject:v376 forKeyedSubscript:v378];

  v379 = objc_opt_new();
  v380 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v379 tlvType]);
  v381 = qword_1000D48A8;
  v382 = [v379 tlvName];
  [v381 setObject:v380 forKeyedSubscript:v382];

  v383 = objc_opt_new();
  v384 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v383 tlvType]);
  v385 = qword_1000D48A8;
  v386 = [v383 tlvName];
  [v385 setObject:v384 forKeyedSubscript:v386];

  v387 = objc_opt_new();
  v388 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v387 tlvType]);
  v389 = qword_1000D48A8;
  v390 = [v387 tlvName];
  [v389 setObject:v388 forKeyedSubscript:v390];

  v391 = objc_opt_new();
  v392 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v391 tlvType]);
  v393 = qword_1000D48A8;
  v394 = [v391 tlvName];
  [v393 setObject:v392 forKeyedSubscript:v394];

  v395 = objc_opt_new();
  v396 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v395 tlvType]);
  v397 = qword_1000D48A8;
  v398 = [v395 tlvName];
  [v397 setObject:v396 forKeyedSubscript:v398];

  v399 = objc_opt_new();
  v400 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v399 tlvType]);
  v401 = qword_1000D48A8;
  v402 = [v399 tlvName];
  [v401 setObject:v400 forKeyedSubscript:v402];

  v403 = objc_opt_new();
  v404 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v403 tlvType]);
  v405 = qword_1000D48A8;
  v406 = [v403 tlvName];
  [v405 setObject:v404 forKeyedSubscript:v406];

  v407 = objc_opt_new();
  v408 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v407 tlvType]);
  v409 = qword_1000D48A8;
  v410 = [v407 tlvName];
  [v409 setObject:v408 forKeyedSubscript:v410];

  v411 = objc_opt_new();
  v412 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v411 tlvType]);
  v413 = qword_1000D48A8;
  v414 = [v411 tlvName];
  [v413 setObject:v412 forKeyedSubscript:v414];

  v415 = objc_opt_new();
  v416 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v415 tlvType]);
  v417 = qword_1000D48A8;
  v418 = [v415 tlvName];
  [v417 setObject:v416 forKeyedSubscript:v418];

  v419 = objc_opt_new();
  v420 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v419 tlvType]);
  v421 = qword_1000D48A8;
  v422 = [v419 tlvName];
  [v421 setObject:v420 forKeyedSubscript:v422];

  v423 = objc_opt_new();
  v424 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v423 tlvType]);
  v425 = qword_1000D48A8;
  v426 = [v423 tlvName];
  [v425 setObject:v424 forKeyedSubscript:v426];

  v427 = objc_opt_new();
  v428 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v427 tlvType]);
  v429 = qword_1000D48A8;
  v430 = [v427 tlvName];
  [v429 setObject:v428 forKeyedSubscript:v430];

  v431 = objc_opt_new();
  v432 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v431 tlvType]);
  v433 = qword_1000D48A8;
  v434 = [v431 tlvName];
  [v433 setObject:v432 forKeyedSubscript:v434];

  v435 = objc_opt_new();
  v436 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v435 tlvType]);
  v437 = qword_1000D48A8;
  v438 = [v435 tlvName];
  [v437 setObject:v436 forKeyedSubscript:v438];

  v442 = objc_opt_new();
  v439 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v442 tlvType]);
  v440 = qword_1000D48A8;
  v441 = [v442 tlvName];
  [v440 setObject:v439 forKeyedSubscript:v441];
}

void sub_100057420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100057438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100057450(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 unsignedLongValue];
    if (v9 == [*(a1 + 32) unsignedLongValue])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

id UARPSuperBinaryProcessMetaData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v6 = [v3 bytes];
  v7 = [v3 length];
  if (v7)
  {
    *&v8 = 136315650;
    v17 = v8;
    while (v7 > 7)
    {
      v9 = uarpNtohl(*v6);
      v10 = uarpNtohl(v6[1]);
      v11 = v7 - 8;
      v7 = v7 - 8 - v10;
      if (v11 < v10)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000829EC(v4);
        }

        goto LABEL_15;
      }

      v12 = v10;
      v13 = v6 + 2;
      v14 = [UARPMetaData tlvFromType:v9 length:v10 value:v13];
      if (v14)
      {
        [v5 addObject:v14];
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v19 = "UARPSuperBinaryProcessMetaData";
        v20 = 1024;
        v21 = v9;
        v22 = 1024;
        v23 = v12;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Could not create TLV for value 0x%08x, length %u", buf, 0x18u);
      }

      v6 = (v13 + v12);

      if (!v7)
      {
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100082A70(v4);
    }
  }

LABEL_15:
  v15 = [NSArray arrayWithArray:v5, v17];

  return v15;
}

void sub_10005E774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [UARPMetaData tlvsFromKey:a2 value:a3 relativeURL:*(*(a1 + 32) + 144)];
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v11 = v10;
            v12 = [v11 version];
            v13 = *(a1 + 32);
            v14 = *(v13 + 192);
            *(v13 + 192) = v12;
          }

          else
          {
            [*(*(a1 + 32) + 24) addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v15 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = v15;
      }

      while (v15);
    }
  }
}

const char *sub_100060BFC()
{

  return uarpStatusCodeToString(v0);
}

uint64_t sub_100061B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100061BA8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) startUARPLayer2Internal];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_100061F84(uint64_t a1)
{
  if (uarpPlatformRemoteEndpointRemove(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24)))
  {
    v2 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100083E80(v2);
    }
  }

  uarpPlatformEndpointDeinit(*(*(a1 + 32) + 8));
}

void sub_100062638(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = uarpPlatformEndpointRequestInfoProperty(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 40));
  if (v3)
  {
    uarpStatusCodeToString(v3);
    if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
    {
      sub_100083F14(v2);
    }
  }
}

void sub_100062728(uint64_t a1)
{
  v2 = (a1 + 40);
  v8 = uarpHtonl(*(a1 + 40));
  v3 = *(v2 - 1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);
  v6 = uarpOuiAppleGenericFeatures();
  v7 = uarpPlatformEndpointSendVendorSpecific(v4, v5, v6, 0x20u, &v8, 4u);
  if (v7)
  {
    uarpStatusCodeToString(v7);
    if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
    {
      sub_100083F88(v2);
    }
  }
}

void sub_100062840(uint64_t a1)
{
  v1 = a1;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v2 = *(*(a1 + 32) + 856);
  v3 = [v2 countByEnumeratingWithState:&v102 objects:v119 count:16];
  v81 = v1;
  if (v3)
  {
    v4 = *v103;
    v76 = v2;
    while (2)
    {
      v5 = 0;
      v74 = v3;
      do
      {
        if (*v103 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v75 = v5;
        v6 = *(*(&v102 + 1) + 8 * v5);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v7 = v6;
        v8 = [v6 outstandingInfoProperties];
        v9 = [v8 countByEnumeratingWithState:&v98 objects:v118 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v99;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v99 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v98 + 1) + 8 * i);
              v14 = [UARPMetaData tlvNameForType:v13];
              v15 = *(*(v81 + 32) + 1024);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
                v110 = 2112;
                v111 = v14;
                v112 = 2112;
                v113 = v13;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Outstanding Info Property for endpoint configuration: %@ (%@)", buf, 0x20u);
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v98 objects:v118 count:16];
          }

          while (v10);
        }

        v16 = v7;
        v17 = [v7 outstandingInfoProperties];
        v18 = [v17 count];

        if (v18)
        {
          goto LABEL_61;
        }

        v19 = [v7 outstandingAppleProperties];
        v20 = [v19 count];

        if (v20)
        {
          v70 = *(*(v81 + 32) + 1024);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = v70;
            v72 = [v16 outstandingAppleProperties];
            *buf = 136315394;
            v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
            v110 = 2112;
            v111 = v72;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s: Outstanding Apple Properties for endpoint configuration %@", buf, 0x16u);
          }

LABEL_61:

          return;
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = [v7 components];
        v1 = v81;
        v79 = [obj countByEnumeratingWithState:&v94 objects:v117 count:16];
        if (v79)
        {
          v78 = *v95;
          v73 = v4;
          while (2)
          {
            v21 = 0;
            do
            {
              if (*v95 != v78)
              {
                objc_enumerationMutation(obj);
              }

              v80 = v21;
              v22 = *(*(&v94 + 1) + 8 * v21);
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v23 = v22;
              v24 = [v22 preflightInfoProperties];
              v25 = [v24 countByEnumeratingWithState:&v90 objects:v116 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v91;
                do
                {
                  for (j = 0; j != v26; j = j + 1)
                  {
                    if (*v91 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v90 + 1) + 8 * j);
                    v30 = [UARPMetaData tlvNameForType:v29];
                    v31 = *(*(v1 + 32) + 1024);
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      v32 = v31;
                      v33 = [v23 componentTag];
                      *buf = 136315906;
                      v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
                      v110 = 2112;
                      v111 = v30;
                      v112 = 2112;
                      v113 = v29;
                      v114 = 2112;
                      v115 = v33;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s: Outstanding Preflight Info Property %@ (%@) for endpoint component %@ ", buf, 0x2Au);

                      v1 = v81;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v90 objects:v116 count:16];
                }

                while (v26);
              }

              v34 = [v23 preflightInfoProperties];
              v35 = [v34 count];

              if (v35)
              {
                v56 = [v23 outstandingInfoProperties];
                v57 = [v23 preflightInfoProperties];
                [v56 addObjectsFromArray:v57];

                v58 = [v23 preflightInfoProperties];
                [v58 removeAllObjects];

                v59 = *(*(v81 + 32) + 1024);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  v60 = v59;
                  v61 = [v23 componentTag];
                  *buf = 136315394;
                  v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
                  v110 = 2112;
                  v111 = v61;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s: Query Info Properties for endpoint component %@ ", buf, 0x16u);
                }

                [*(v81 + 32) queryOutstandingEndpointIDComponentProperties:v23];
                goto LABEL_60;
              }

              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              v36 = [v23 outstandingInfoProperties];
              v37 = [v36 countByEnumeratingWithState:&v86 objects:v107 count:16];
              v38 = v81;
              if (v37)
              {
                v39 = v37;
                v40 = *v87;
                do
                {
                  for (k = 0; k != v39; k = k + 1)
                  {
                    if (*v87 != v40)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v42 = *(*(&v86 + 1) + 8 * k);
                    v43 = [UARPMetaData tlvNameForType:v42];
                    v44 = *(*(v38 + 32) + 1024);
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                    {
                      v45 = v44;
                      v46 = [v23 componentTag];
                      *buf = 136315906;
                      v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
                      v110 = 2112;
                      v111 = v43;
                      v112 = 2112;
                      v113 = v42;
                      v114 = 2112;
                      v115 = v46;
                      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s: Outstanding Info Property %@ (%@)for endpoint component %@ ", buf, 0x2Au);

                      v38 = v81;
                    }
                  }

                  v39 = [v36 countByEnumeratingWithState:&v86 objects:v107 count:16];
                }

                while (v39);
              }

              v47 = v23;
              v48 = [v23 outstandingInfoProperties];
              v49 = [v48 count];

              if (v49)
              {
                v62 = *(*(v81 + 32) + 1024);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  v63 = v62;
                  v64 = [v47 componentTag];
                  *buf = 136315394;
                  v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
                  v110 = 2112;
                  v111 = v64;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s: Wait for Outstanding Info Properties for endpoint component %@ ", buf, 0x16u);
                }

LABEL_60:

                goto LABEL_61;
              }

              v21 = v80 + 1;
              v1 = v81;
            }

            while ((v80 + 1) != v79);
            v4 = v73;
            v79 = [obj countByEnumeratingWithState:&v94 objects:v117 count:16];
            if (v79)
            {
              continue;
            }

            break;
          }
        }

        v5 = v75 + 1;
        v2 = v76;
      }

      while ((v75 + 1) != v74);
      v3 = [v76 countByEnumeratingWithState:&v102 objects:v119 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v50 = *(v1 + 32);
  if (*(v50 + 968))
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v51 = *(v50 + 920);
    v52 = [v51 countByEnumeratingWithState:&v82 objects:v106 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v83;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v83 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [*(v81 + 32) notifyAssetPersonalizationNeeded:*(*(&v82 + 1) + 8 * m)];
        }

        v53 = [v51 countByEnumeratingWithState:&v82 objects:v106 count:16];
      }

      while (v53);
    }
  }

  else
  {
    *(v50 + 968) = 1;
    v65 = *(*(v1 + 32) + 1024);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = *(*(v1 + 32) + 996);
      v67 = v65;
      v68 = uarpEndpointRoleToString(v66);
      v69 = [*(*(v1 + 32) + 1032) UUIDString];
      *buf = 136315650;
      v109 = "[UARPEndpointLayer3 checkPropertyQueryComplete]_block_invoke";
      v110 = 2080;
      v111 = v68;
      v112 = 2112;
      v113 = v69;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s: Notify Endpoint Reachable, Role %s, %@", buf, 0x20u);
    }

    [*(v1 + 32) notifyEndpointReachable];
  }
}

id sub_1000632F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 url];
    v6 = [v5 path];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 description];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Stage Asset %@. UUID of %@", &v12, 0x16u);
  }

  [*(*(a1 + 32) + 904) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 912) removeObject:*(a1 + 40)];
  [*(a1 + 40) setAssetType:1];
  v9 = uarpPlatformEndpointPrepareSuperBinary(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 40), *(a1 + 32) + 632);
  v10 = *(a1 + 32);
  if (v9)
  {
    if (os_log_type_enabled(*(v10 + 1024), OS_LOG_TYPE_ERROR))
    {
      sub_100083FFC();
    }
  }

  else
  {
    result = uarpPlatformEndpointOfferAsset(*(v10 + 8), *(v10 + 24), *(a1 + 40));
    if (!result)
    {
      return result;
    }
  }

  return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
}

id sub_100063560(id *a1)
{
  v2 = a1 + 4;
  v3 = *(a1[4] + 128);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v5 = v3;
    v6 = [v4 url];
    v7 = [v6 path];
    v8 = [a1[5] uuid];
    v9 = [v8 description];
    *v11 = 138412546;
    *&v11[4] = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Offer Dynamic Asset %@. UUID of %@", v11, 0x16u);
  }

  [*(a1[4] + 117) addObject:a1[5]];
  [a1[5] setAssetType:3];
  v11[0] = [a1[6] char1];
  v11[1] = [a1[6] char2];
  v11[2] = [a1[6] char3];
  v11[3] = [a1[6] char4];
  if (uarpPlatformEndpointPrepareDynamicAsset(*(a1[4] + 1), *(a1[4] + 3), a1[5], v11, a1[4] + 632))
  {
    if (os_log_type_enabled(*(*v2 + 128), OS_LOG_TYPE_ERROR))
    {
      sub_1000840A0();
    }

    [a1[4] assetFullyStaged:a1[5] status:28];
  }

  result = uarpPlatformEndpointOfferAsset(*(a1[4] + 1), *(a1[4] + 3), a1[5]);
  if (result)
  {
    return [a1[4] assetFullyStaged:a1[5] status:28];
  }

  return result;
}

id sub_100063804(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 superbinaryURL];
    v6 = [v5 path];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 description];
    v19 = 136315650;
    v20 = "[UARPEndpointLayer3 personalizeFirmwareSuperBinary:tssServerURL:]_block_invoke";
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Personalize Asset %@. UUID of %@", &v19, 0x20u);
  }

  v9 = [*(a1 + 40) needsHostPersonalization];
  v10 = *(a1 + 32);
  if (v9)
  {
    return [v10 personalizeFirmwareSuperBinaryInternal:*(a1 + 40) tssServerURL:*(a1 + 48)];
  }

  v12 = v10[128];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 40);
    v14 = v12;
    v15 = [v13 superbinaryURL];
    v16 = [v15 path];
    v17 = [*(a1 + 40) uuid];
    v18 = [v17 description];
    v19 = 136315650;
    v20 = "[UARPEndpointLayer3 personalizeFirmwareSuperBinary:tssServerURL:]_block_invoke";
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: asset does not need host personalization %@, UUID of %@", &v19, 0x20u);
  }

  return [*(a1 + 32) notifyAssetPersonalizationComplete:*(a1 + 40) status:{objc_msgSend(*(a1 + 40), "personalizationStatus")}];
}

id sub_100063C04(uint64_t a1)
{
  [*(a1 + 32) personalizationStateCompleted];
  v2 = *(*(a1 + 40) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = UARPLayer3PersonalizationStatusDescription([v3 personalizationStatus]);
    v6 = [*(a1 + 32) uuid];
    v7 = [v6 description];
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Asset Personalization, status is %@. UUID of %@", &v19, 0x16u);
  }

  [*(*(a1 + 40) + 912) addObject:*(a1 + 32)];
  v8 = *(*(a1 + 40) + 1024);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 uuid];
    v12 = [v11 UUIDString];
    v19 = 136315394;
    v20 = "[UARPEndpointLayer3 personalizeFirmwareAssetComplete:]_block_invoke";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Added Personalized Asset - %@", &v19, 0x16u);
  }

  [*(*(a1 + 40) + 920) removeObject:*(a1 + 32)];
  v13 = *(*(a1 + 40) + 1024);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = v13;
    v16 = [v14 uuid];
    v17 = [v16 UUIDString];
    v19 = 136315394;
    v20 = "[UARPEndpointLayer3 personalizeFirmwareAssetComplete:]_block_invoke";
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Removed Personalizing Asset - %@", &v19, 0x16u);
  }

  return [*(a1 + 40) notifyAssetPersonalizationComplete:*(a1 + 32) status:{objc_msgSend(*(a1 + 32), "personalizationStatus")}];
}

id sub_100063F0C(uint64_t a1)
{
  [*(a1 + 32) setProcessingStatus:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = [v5 UUIDString];
    v7 = UARPAssetProcessingStatusDescription([*(a1 + 32) processingStatus]);
    v8 = UARPLayer3UARPLayer3AssetTypeDescription([*(a1 + 32) assetType]);
    v10 = 136315906;
    v11 = "[UARPEndpointLayer3 assetFullyStaged:status:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Asset %@, processing status is %@, asset type is %@", &v10, 0x2Au);
  }

  if ([*(a1 + 32) assetType] == 1)
  {
    return [*(a1 + 40) notifyTxFirmwareFullyStaged:*(a1 + 32)];
  }

  if ([*(a1 + 32) assetType] == 2)
  {
    return [*(a1 + 40) notifyRxFirmwareFullyStaged:*(a1 + 32)];
  }

  if ([*(a1 + 32) assetType] == 3)
  {
    return [*(a1 + 40) notifyTxDynamicAssetFullyStaged:*(a1 + 32)];
  }

  result = [*(a1 + 32) assetType];
  if (result == 4)
  {
    return [*(a1 + 40) notifyRxDynamicAssetFullyStaged:*(a1 + 32)];
  }

  return result;
}

uint64_t sub_100064130(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[UARPEndpointLayer3 applyStagedAssets]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Apply staged assets", &v4, 0xCu);
  }

  return uarpPlatformEndpointApplyStagedAssets(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24));
}

uint64_t sub_10006425C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[UARPEndpointLayer3 rescindAssets]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: rescind assets", &v4, 0xCu);
  }

  return uarpPlatformEndpointRescindAllAssets(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24));
}

id sub_1000643AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[UARPEndpointLayer3 acceptLayer3Asset:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Transfer Asset", &v5, 0xCu);
  }

  result = uarpPlatformEndpointAssetAccept(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), [*(a1 + 40) layer2Context], *(a1 + 40), (*(a1 + 32) + 632));
  if (result)
  {
    v4 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100084144(v4);
    }

    return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
  }

  return result;
}