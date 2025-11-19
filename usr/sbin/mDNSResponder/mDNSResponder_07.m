uint64_t BuildQuestion(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5, uint64_t **a6, unsigned int *a7, uint64_t a8)
{
  if ((*(a5 + 232) || *(a5 + 352)) && *(a1 + 12))
  {
    v14 = a3 + 1452;
    v15 = a3 + 1452 - *a7;
    v16 = *(a2 + 3677) != 0;
    if (*(a2 + 3677))
    {
      v17 = 0x8000;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v14 = a3 + 1452;
    v15 = a3 + 1452 - *a7;
  }

  result = putQuestion(a3, *a4, v15, (a5 + 376), *(a5 + 342), *(a5 + 344) | v17, a7, a8);
  if (result)
  {
    v19 = result;
    v39 = v16;
    v41 = *a7;
    v20 = CacheGroupForName(a1, *(a5 + 200), (a5 + 376));
    v26 = v20;
    v27 = *a6;
    v40 = a6;
    if (v20)
    {
      v38 = v14;
      v28 = v20[2];
      if (v28)
      {
        while (1)
        {
          if (*(v28 + 32) != *(a5 + 64) || (*(v28 + 8) & 0x10) != 0 || ((v29 = (v28 + 72), !*(v28 + 72)) ? (v30 = v27 == v29) : (v30 = 1), v30 || *(v28 + 20) > 0x400u || !SameNameRecordAnswersQuestion((v28 + 8), 0, a5, v21, v22, v23, v24, v25) || *(v28 + 80) - *(a1 + 64) + ((1000 * *(v28 + 16)) >> 1) < 1001))
          {
            v29 = v27;
          }

          else
          {
            *v27 = v28;
            v31 = v41 + *(v28 + 22) + 12;
            v32 = *(a3 + 4);
            v41 += *(v28 + 22) + 12;
            if (v32 >= 2 && v19 + v31 >= v38)
            {
              *(a3 + 4) = v32 - 1;
              v36 = *v40;
              v37 = **v40;
              if (!v37)
              {
                return 0;
              }

              result = 0;
              do
              {
                *v36 = 0;
                v36 = (v37 + 72);
                v37 = *(v37 + 72);
              }

              while (v37);
              return result;
            }
          }

          v28 = *v28;
          v27 = v29;
          if (!v28)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v29 = *a6;
LABEL_27:
    *a4 = v19;
    *a7 = v41;
    *v40 = v29;
    if (v39)
    {
      v33 = *(a1 + 64);
      if (v33 <= 1)
      {
        v33 = 1;
      }

      *(a5 + 216) = v33;
    }

    if (v26)
    {
      for (i = v26[2]; i; i = *i)
      {
        if (*(i + 32) == *(a5 + 64))
        {
          if (*(i + 72))
          {
            v35 = 1;
          }

          else
          {
            v35 = v29 == (i + 72);
          }

          if (!v35 && SameNameRecordAnswersQuestion((i + 8), 0, a5, v21, v22, v23, v24, v25))
          {
            ++*(i + 108);
            *(i + 104) = *(a1 + 64);
            SetNextCacheCheckTimeForRecord(a1, i);
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t UnsafeBufferPointer(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  while (1)
  {
    a3 = *a3;
    if (!a3)
    {
      break;
    }

    if (SameDomainNameBytes(a3[2], v5))
    {
      if (a3[1])
      {
        return 0;
      }

      return *(a2 + 48) + 8;
    }
  }

  return *(a2 + 48) + 8;
}

BOOL AddRecordInProbe(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 194) || *(a3 + 12) == 41 || !a2 && *(a3 + 88))
  {
    return 0;
  }

  v11 = *(a3 + 32);
  if (v11)
  {
    if (v11 != a4)
    {
      return 0;
    }
  }

  else if (!mDNSPlatformValidRecordForInterface(a3, a4, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v12 = *(a1 + 96);
  if (!v12)
  {
    v12 = a1;
  }

  v13 = *(a3 + 96);
  if (!v13)
  {
    v13 = a3;
  }

  if (v12 != v13)
  {
LABEL_16:
    if (*(a3 + 8) != 2 && !*(a3 + 88))
    {
      return 0;
    }
  }

  return SameResourceRecordNameClassInterface(a1, a3, a3, a4, a5, a6, a7, a8);
}

uint64_t *UnsafeBufferPointer(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  result = mDNSGetTSRForAuthRecordNamed(a1, *(a2 + 40), *(a2 + 24));
  if (result)
  {

    return UnsafeBufferPointer(a2, result, a3);
  }

  return result;
}

char *AddTSRROptsToMessage(void *a1, unint64_t a2, _WORD *a3, char *__dst, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = __rev16(*a3);
  LOWORD(v36) = 264;
  memset(v25, 0, sizeof(v25));
  WORD2(v25[0]) = 41;
  *(&v26 + 1) = &v36;
  WORD6(v25[0]) = 24;
  v14 = __dst;
  while (1)
  {
    a1 = *a1;
    if (!a1)
    {
      break;
    }

    v15 = a1[1];
    HIDWORD(v36) = *(v15 + 4);
    LOWORD(v37) = *(v15 + 8);
    LODWORD(v15) = *v15;
    DWORD1(v36) = 720362;
    DWORD2(v36) = v15;
    v14 = putRData(a2, v14, a5, v25, a5, a6, a7, a8);
    if (!v14)
    {
      v16 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          v17 = a1[2];
          if (v17)
          {
            v21 = a1[2];
            while (1)
            {
              if (!v21 || (v22 = *v21, v22 > 0x3F))
              {
LABEL_23:
                v20 = 257;
                goto LABEL_28;
              }

              if (!*v21)
              {
                break;
              }

              v21 += v22 + 1;
              if (&v21[-v17] >= 256)
              {
                goto LABEL_23;
              }
            }

            v20 = (v21 - v17 + 1);
          }

          else
          {
            v20 = 0;
          }

LABEL_28:
          v23 = *(a1[1] + 4);
          *buf = 141558787;
          v29 = 1752392040;
          v30 = 1040;
          v31 = v20;
          v32 = 2101;
          v33 = v17;
          v34 = 1024;
          v35 = v23;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AddTSRRDataToMessage: TSR can't be written -- name %{sensitive, mask.hash, mdnsresponder:domain_name}.*P hashkey %x", buf, 0x22u);
        }
      }

      else
      {
        v16 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          v17 = a1[2];
          if (v17)
          {
            v18 = a1[2];
            while (1)
            {
              if (!v18 || (v19 = *v18, v19 > 0x3F))
              {
LABEL_13:
                v20 = 257;
                goto LABEL_28;
              }

              if (!*v18)
              {
                break;
              }

              v18 += v19 + 1;
              if (&v18[-v17] >= 256)
              {
                goto LABEL_13;
              }
            }

            v20 = (v18 - v17 + 1);
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_28;
        }
      }

      return 0;
    }
  }

  if (v14 != __dst)
  {
    *a3 = bswap32(v14 - __dst + v13) >> 16;
  }

  return v14;
}

void TimeoutQuestions_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 208);
  if (v11)
  {
    v12 = mDNSLogCategory_Default;
    v13 = v11 + 376;
    DNSTypeName(*(v11 + 342));
    LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions ERROR m->CurrentQuestion already set: %##s (%s)", v14, v15, v16, v17, v18, v13);
  }

  *(a1 + 208) = a2;
  if (a2)
  {
    do
    {
      v19 = *(a2 + 240);
      if (v19)
      {
        if (!*(a2 + 637))
        {
          v20 = mDNSLogCategory_Default;
          DNSTypeName(*(a2 + 342));
          LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions: ERROR!! TimeoutQuestion not set, but StopTime set for %##s (%s)", v21, v22, v23, v24, v25, a2 + 376);
          v19 = *(a2 + 240);
        }

        if (*(a1 + 64) - v19 < 0)
        {
          if (*(a1 + 184) - v19 >= 1)
          {
            *(a1 + 184) = v19;
          }
        }

        else
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v28 = (*(a1 + 64) - v19);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions: question %p %##s timed out, time %d", a4, a5, a6, a7, a8, a2);
          }

          *(a2 + 355) = 0;
          GenerateNegativeResponseEx(a1, a3, 3, 0, a5, a6, a7, a8, v27);
          if (*(a1 + 208) == a2)
          {
            *(a2 + 240) = 0;
          }
        }
      }

      v26 = *(a1 + 208);
      if (v26 == a2)
      {
        v26 = *(a2 + 8);
        *(a1 + 208) = v26;
      }

      a2 = v26;
    }

    while (v26);
  }

  *(a1 + 208) = 0;
}

void SendWakeup(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  v7 = (a1 + 28972);
  v8 = (a1 + 12656);
  do
  {
    v8 = *v8;
    if (!v8)
    {
      v22 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v23 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = 134217984;
        v26 = a2;
      }

      else
      {
        v22 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = 134217984;
        v26 = a2;
      }

      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SendARP: No interface with InterfaceID %p found", &v25, 0xCu);
      return;
    }
  }

  while (v8[444] != a2);
  v9 = 6;
  v10 = a3;
  v11 = (a1 + 28972);
  do
  {
    v12 = *v10++;
    *v11++ = v12;
    --v9;
  }

  while (v9);
  v13 = *(v8 + 3600);
  v14 = 6;
  do
  {
    v15 = v11;
    *v11++ = v13;
    --v14;
  }

  while (v14);
  v16 = 0;
  *v11 = 16904;
  *(v15 + 3) = -1;
  *(v15 + 7) = -1;
  v17 = (a1 + 28992);
  do
  {
    v18 = a3;
    v19 = 6;
    do
    {
      v20 = *v18++;
      *v17++ = v20;
      --v19;
    }

    while (v19);
    ++v16;
  }

  while (v16 != 16);
  for (i = 0; i != 6; ++i)
  {
    v17[i] = *(a4 + i);
  }

  mDNSPlatformSendRawPacket((a1 + 28972), (v17 + 6), a2);
  if (!a5)
  {
    v7[2] = -1;
    *v7 = -1;

    mDNSPlatformSendRawPacket(v7, (v17 + 6), a2);
  }
}

uint64_t ResourceRecordIsValidInterfaceAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    result = v9 == a2;
    if (v9 != a2)
    {
      return result;
    }
  }

  else
  {
    result = mDNSPlatformValidRecordForInterface(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }
  }

  return ResourceRecordIsValidAnswer(a1);
}

uint64_t AddRRSetAdditionalsToResponseList(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a4 + 8) & 0x32) != 0)
  {
    for (i = *(result + 12616); i; i = *i)
    {
      if (*(i + 24) == *(a4 + 24) && i != a4 && *(i + 12) == *(a4 + 12) && (*(i + 8) & 0x32) != 0 && *(i + 14) == *(a4 + 14))
      {
        result = ResourceRecordIsValidInterfaceAnswer(i, a5, a3, a4, a5, a6, a7, a8);
        if (result)
        {
          result = SameDomainNameBytes(*(i + 40), *(a4 + 40));
          if (result)
          {
            if (!*(i + 256) && *a2 != (i + 256))
            {
              **a2 = i;
              v13 = *(a3 + 272);
              if (!v13)
              {
                v13 = a3;
              }

              *(i + 272) = v13;
              *a2 = (i + 256);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IPv6CheckSum(__int128 *a1, __int128 *a2, unsigned __int16 *a3, int a4)
{
  v4 = *a1;
  v5 = *a2;
  v16 = 0;
  v17 = BYTE1(a4);
  v18 = a4;
  v19 = 973078528;
  if (a4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a4 + 2;
    do
    {
      v8 = *a3++;
      v6 += v8;
      v7 -= 2;
    }

    while (v7 > 2);
  }

  v9 = ((HIWORD(v6) + v6) >> 16) + (HIWORD(v6) + v6);
  if (v9 == 0xFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v9;
  }

  v10 = &v15;
  for (i = 42; i > 2; i -= 2)
  {
    v12 = *v10++;
    v9 += v12;
  }

  v13 = ((HIWORD(v9) + v9) >> 16) + (HIWORD(v9) + v9);
  if (v13 == 0xFFFF)
  {
    LOWORD(v13) = 0;
  }

  return v13;
}

void SendSleepGoodbyes(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 141) = 2;
  if (a2)
  {
    v9 = *(a1 + 12656);
    if (v9)
    {
      while (!*(v9 + 16))
      {
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_5;
        }
      }

LABEL_28:
      *(v9 + 3675) = 1;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (*(v9 + 16))
        {
          goto LABEL_28;
        }
      }
    }
  }

LABEL_5:
  if (a3)
  {
    for (i = *(a1 + 12616); i; i = *i)
    {
      if (!*(i + 32) && !*(i + 122) && !IsLocalDomain(*(i + 40)))
      {
        v11 = *(i + 376);
        if (v11)
        {
          *(i + 358) = 0;
          CancelGetZoneData(a1, v11);
          *(i + 376) = 0;
        }

        if (*(i + 584))
        {
          mDNS_StopNATOperation_internal(a1, i + 392);
          *(i + 584) = 0;
        }

        if (*(i + 344) == 7)
        {
          *(i + 344) = 2;
          v12 = *(i + 320);
          if (v12)
          {
            v12(a1, i, *(i + 624), *(i + 616));
          }

          SetNewRData(i + 8, *(i + 632), *(i + 618), a4, a5, a6, a7, a8);
          *(i + 624) = 0u;
        }

        uDNS_DeregisterRecord(a1, i);
      }
    }
  }

  for (j = *(a1 + 12616); j; j = *j)
  {
    if (*(j + 8) == 8 && *(j + 192))
    {
      j[26] = -1;
    }
  }

  SendResponses(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t mDNS_GetDomains_Internal(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a2 + 136) = a5;
  *(a2 + 324) = 0;
  *(a2 + 342) = 65548;
  *(a2 + 641) = 0;
  *(a2 + 639) = 0;
  *(a2 + 653) = 0;
  *(a2 + 632) = 0;
  *(a2 + 636) = 0;
  *(a2 + 244) = getpid();
  *(a2 + 248) = 0;
  *(a2 + 152) = a6;
  *(a2 + 176) = a7;
  v13 = mDNS_DomainTypeNames[a3];
  *(a2 + 376) = 0;
  if (!AppendDNSNameString((a2 + 376), v13, v14, v15, v16, v17, v18, v19))
  {
    return 4294901756;
  }

  v20 = a4 ? a4 : "\x05local";
  if (!AppendDomainName((a2 + 376), v20))
  {
    return 4294901756;
  }

  return mDNS_StartQuery_internal(a1, a2);
}

void mDNS_DeregisterDomainsDiscoveredForDomainEnumeration(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 + 256;
  v9 = *(a2 + 256 + 8 * a3);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      do
      {
        v13 = *(v10 + 256);
        DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v10, a3, 1, a5, a6, a7, a8);
        free(v10);
        v10 = v13;
      }

      while (v13);
      v9 = *(v8 + 8 * a3);
    }

    *v9 = 0;
  }
}

void mDNSCoreRestartAddressQueries(int a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *, uint64_t), uint64_t a4)
{
  mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "mDNSCoreRestartAddressQueries", 7227);
  if (a2)
  {
    a2(mDNSStorage);
  }

  if (qword_10016D300)
  {
    v6 = mDNSLogCategory_Default;
    v7 = qword_10016D300 + 376;
    DNSTypeName(*(qword_10016D300 + 342));
    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: ERROR!! m->RestartQuestion already set: %##s (%s)", v8, v9, v10, v11, v12, v7);
  }

  v13 = *(&xmmword_10016D2D4 + 4);
  qword_10016D300 = *(&xmmword_10016D2D4 + 4);
  for (i = 0; qword_10016D300; v13 = qword_10016D300)
  {
    v15 = *(v13 + 8);
    qword_10016D300 = v15;
    if (*(v13 + 152) == GetZoneData_QuestionCallback)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v32 = mDNSLogCategory_Default;
        DNSTypeName(*(v13 + 342));
        LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Skipping GetZoneDataQuestion %p %##s (%s)", v33, v34, v35, v36, v37, v13);
      }

      if (v15)
      {
        v38 = mDNS_LoggingEnabled;
        do
        {
          if (v13 == *(v15 + 104) + 832 && v38 != 0)
          {
            v40 = mDNSLogCategory_Default;
            DNSTypeName(*(v15 + 342));
            LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Question %p %##s (%s) referring to GetZoneDataQuestion %p, not stopping", v41, v42, v43, v44, v45, v15);
            v38 = mDNS_LoggingEnabled;
          }

          v15 = *(v15 + 8);
        }

        while (v15);
      }

      goto LABEL_36;
    }

    v16 = *(v13 + 342);
    v17 = v16 > 0x1C;
    v18 = (1 << v16) & 0x10000022;
    v19 = v17 || v18 == 0;
    if (!v19 && (!a1 || *(v13 + 641)))
    {
      if (CacheRecordRmvEventsForQuestion(v13))
      {
        if (LocalRecordRmvEventsForQuestion(v13))
        {
          if (mDNS_LoggingEnabled)
          {
            v25 = mDNSLogCategory_Default;
            DNSTypeName(*(v13 + 342));
            v56 = *(v13 + 641);
            LogMsgWithLevel(v25, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Stop question %p %##s (%s), AppendSearchDomains %d", v26, v27, v28, v29, v30, v13);
          }

          mDNS_StopQuery_internal(mDNSStorage, v13);
          v31 = *(v13 + 160);
          if (v31)
          {
            v31(v13);
          }

          *(v13 + 8) = i;
          goto LABEL_37;
        }

        if (mDNS_LoggingEnabled)
        {
          v46 = mDNSLogCategory_Default;
          v47 = "mDNSCoreRestartAddressQueries: Question deleted while delivering Local Record RMV events";
          goto LABEL_35;
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        v46 = mDNSLogCategory_Default;
        v47 = "mDNSCoreRestartAddressQueries: Question deleted while delivering Cache Record RMV events";
LABEL_35:
        LogMsgWithLevel(v46, OS_LOG_TYPE_DEFAULT, v47, v20, v21, v22, v23, v24, v55);
      }
    }

LABEL_36:
    v13 = i;
LABEL_37:
    i = v13;
  }

  if (a3)
  {
    a3(mDNSStorage, a4);
  }

  if (i)
  {
    do
    {
      v48 = *(i + 8);
      *(i + 8) = 0;
      if (mDNS_LoggingEnabled == 1)
      {
        v49 = mDNSLogCategory_Default;
        DNSTypeName(*(i + 342));
        LogMsgWithLevel(v49, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Start question %p %##s (%s)", v50, v51, v52, v53, v54, i);
      }

      mDNS_StartQuery_internal(mDNSStorage, i);
      i = v48;
    }

    while (v48);
  }
}

BOOL CacheRecordRmvEventsForQuestion(uint64_t a1)
{
  if (*(&xmmword_10016D2E4 + 4))
  {
    v2 = mDNSLogCategory_Default;
    v3 = DWORD1(xmmword_10016D2E4) + 376;
    DNSTypeName(*(*(&xmmword_10016D2E4 + 4) + 342));
    LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "CacheRecordRmvEventsForQuestion: ERROR m->CurrentQuestion already set: %##s (%s)", v4, v5, v6, v7, v8, v3);
  }

    ;
  }

  if (!i && !*(a1 + 355))
  {
    *(&xmmword_10016D2E4 + 4) = a1;
    v18 = CacheGroupForName(&mDNSStorage, *(a1 + 200), (a1 + 376));
    if (!v18 || (v24 = v18[2]) == 0)
    {
LABEL_84:
      result = *(&xmmword_10016D2E4 + 4) == a1;
      *(&xmmword_10016D2E4 + 4) = 0;
      return result;
    }

    while (*(v24 + 8) == 240)
    {
      v25 = *(a1 + 144);
      if (v25)
      {
        if (*(v25 + 24))
        {
          break;
        }
      }

      v32 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v33 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v32 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        v34 = *(v24 + 40);
        if (v34)
        {
          v42 = *(v24 + 40);
          while (1)
          {
            if (!v42 || (v43 = *v42, v43 > 0x3F))
            {
LABEL_61:
              v37 = 257;
              goto LABEL_80;
            }

            if (!*v42)
            {
              break;
            }

            v42 += v43 + 1;
            if (&v42[-v34] >= 256)
            {
              goto LABEL_61;
            }
          }

          v37 = (v42 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }

LABEL_80:
        v47 = *(v24 + 96);
        if (v47)
        {
          LODWORD(v47) = bswap32(*(v47 + 340)) >> 16;
        }

        goto LABEL_82;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(v24 + 40);
        if (v34)
        {
          v35 = *(v24 + 40);
          while (1)
          {
            if (!v35 || (v36 = *v35, v36 > 0x3F))
            {
LABEL_45:
              v37 = 257;
              goto LABEL_76;
            }

            if (!*v35)
            {
              break;
            }

            v35 += v36 + 1;
            if (&v35[-v34] >= 256)
            {
              goto LABEL_45;
            }
          }

          v37 = (v35 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }

LABEL_76:
        v47 = *(v24 + 96);
        if (v47)
        {
          LODWORD(v47) = bswap32(*(v47 + 340)) >> 16;
        }

LABEL_82:
        v48 = bswap32(*(a1 + 340));
        v49 = *(v24 + 12);
        v50 = *(a1 + 228);
        *buf = 67110659;
        v52 = HIWORD(v48);
        v53 = 2160;
        v54 = 1752392040;
        v55 = 1040;
        v56 = v37;
        v57 = 2101;
        v58 = v34;
        v59 = 1024;
        v60 = v49;
        v61 = 1024;
        v62 = v47;
        v63 = 1024;
        v64 = v50;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Q%u] CacheRecordRmvEventsForCurrentQuestion: Suppressing RMV events for question - rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, current active question: Q%d, current answers: %u", buf, 0x34u);
      }

LABEL_83:
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_84;
      }
    }

    if (!SameNameRecordAnswersQuestion((v24 + 8), 0, a1, v19, v20, v21, v22, v23))
    {
      goto LABEL_83;
    }

    v26 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v27 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v28 = *(v24 + 40);
      if (v28)
      {
        v29 = *(v24 + 40);
        while (1)
        {
          if (!v29 || (v30 = *v29, v30 > 0x3F))
          {
LABEL_32:
            v31 = 257;
            goto LABEL_68;
          }

          if (!*v29)
          {
            break;
          }

          v29 += v30 + 1;
          if (&v29[-v28] >= 256)
          {
            goto LABEL_32;
          }
        }

        v31 = (v29 - v28 + 1);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v26 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_69:
        --*(a1 + 228);
        if (*(v24 + 20) >= 0x401u)
        {
          --*(a1 + 232);
        }

        if ((*(v24 + 8) & 0x10) != 0)
        {
          --*(a1 + 236);
        }

        AnswerCurrentQuestionWithResourceRecord(&mDNSStorage, v24, 0);
        if (*(&xmmword_10016D2E4 + 4) != a1)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      v28 = *(v24 + 40);
      if (v28)
      {
        v39 = *(v24 + 40);
        while (1)
        {
          if (!v39 || (v40 = *v39, v40 > 0x3F))
          {
LABEL_53:
            v31 = 257;
            goto LABEL_68;
          }

          if (!*v39)
          {
            break;
          }

          v39 += v40 + 1;
          if (&v39[-v28] >= 256)
          {
            goto LABEL_53;
          }
        }

        v31 = (v39 - v28 + 1);
      }

      else
      {
        v31 = 0;
      }
    }

LABEL_68:
    v44 = bswap32(*(a1 + 340));
    v45 = *(v24 + 12);
    v46 = *(a1 + 355);
    *buf = 67110403;
    v52 = HIWORD(v44);
    v53 = 2160;
    v54 = 1752392040;
    v55 = 1040;
    v56 = v31;
    v57 = 2101;
    v58 = v28;
    v59 = 1024;
    v60 = v45;
    v61 = 1024;
    v62 = v46;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Q%u] CacheRecordRmvEventsForCurrentQuestion: Calling AnswerCurrentQuestionWithResourceRecord (RMV) for question - rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, local answers: %u", buf, 0x2Eu);
    goto LABEL_69;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v11 = mDNSLogCategory_Default;
    DNSTypeName(*(a1 + 342));
    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "CacheRecordRmvEventsForQuestion: Question %p %##s (%s) is a new question", v12, v13, v14, v15, v16, a1);
  }

  return 1;
}

uint64_t LocalRecordRmvEventsForQuestion(uint64_t a1)
{
  if (*(&xmmword_10016D2E4 + 4))
  {
    v2 = mDNSLogCategory_Default;
    v3 = DWORD1(xmmword_10016D2E4) + 376;
    DNSTypeName(*(*(&xmmword_10016D2E4 + 4) + 342));
    LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: ERROR m->CurrentQuestion already set: %##s (%s)", v4, v5, v6, v7, v8, v3);
  }

    ;
  }

  if (i)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v11 = mDNSLogCategory_Default;
      DNSTypeName(*(a1 + 342));
      LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: New Question %##s (%s)", v12, v13, v14, v15, v16, a1 + 376);
    }
  }

  else
  {
    *(&xmmword_10016D2E4 + 4) = a1;
    v17 = AuthGroupForName(&xmmword_10016D2E4 + &loc_1000017A8 + 4, *(a1 + 200), (a1 + 376));
    if (v17)
    {
      v24 = v17[2];
      if (v24)
      {
        v25 = &unk_10016D000;
        do
        {
          if (*(v24 + 172) == 4 && (*(v24 + 8) & 0x32) != 0)
          {
            v26 = *(v24 + 12);
            v27 = v26 > 0x1C;
            v28 = (1 << v26) & 0x10001022;
            v29 = v27 || v28 == 0;
            if (!v29 && LocalOnlyRecordAnswersQuestion(v24, a1, v18, v19, v20, v21, v22, v23))
            {
              if (v25[208] == 1)
              {
                v30 = v25;
                v31 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v24 + 8), (*(v24 + 48) + 4), word_1001789D0);
                v32 = v31;
                v25 = v30;
                LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: Delivering possible Rmv events with record %s", v33, v34, v35, v36, v37, word_1001789D0);
              }

              if (*(a1 + 228) && *(a1 + 355))
              {
                AnswerLocalQuestionWithLocalAuthRecord(&mDNSStorage, v24, 0);
                if (*(&xmmword_10016D2E4 + 4) != a1)
                {
                  result = 0;
                  *(&xmmword_10016D2E4 + 4) = 0;
                  return result;
                }
              }

              else
              {
                v38 = mDNSLogCategory_Default;
                DNSTypeName(*(a1 + 342));
                v45 = *(a1 + 228);
                v46 = *(a1 + 355);
                LogMsgWithLevel(v38, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: ERROR!! CurrentAnswers or LOAddressAnswers is zero %p %##s (%s) CurrentAnswers %d, LOAddressAnswers %d", v39, v40, v41, v42, v43, a1);
              }
            }
          }

          v24 = *v24;
        }

        while (v24);
      }
    }

    *(&xmmword_10016D2E4 + 4) = 0;
  }

  return 1;
}

void mDNSCoreRestartQueries(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = mDNSLogCategory_Default;
    v4 = v2 + 376;
    DNSTypeName(*(v2 + 342));
    LogMsgWithLevel(v3, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartQueries: ERROR m->CurrentQuestion already set: %##s (%s)", v5, v6, v7, v8, v9, v4);
  }

  v10 = *(a1 + 192);
  *(a1 + 208) = v10;
  if (v10)
  {
    do
    {
      v11 = *(v10 + 8);
      *(a1 + 208) = v11;
      if (*(v10 + 340) && *(v10 + 212) >= 1 && !*(v10 + 40))
      {
        v12 = *(v10 + 96);
        if (v12)
        {
          mdns_client_invalidate(v12);
          os_release(*(v10 + 96));
          *(v10 + 96) = 0;
        }

        ActivateUnicastQuery(a1, v10, 1);
        v11 = *(a1 + 208);
      }

      v10 = v11;
    }

    while (v11);
    for (i = *(a1 + 192); i; i = *(i + 8))
    {
      mDNSCoreRestartQuestion(a1, i);
    }
  }
}

void mDNSCoreRestartRegistration(_DWORD *a1, uint64_t a2, int a3)
{
  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    return;
  }

  v6 = *(a2 + 8);
  if (v6 != 2)
  {
    if (v6 != 16 || *(a2 + 88))
    {
      v7 = 0;
      goto LABEL_10;
    }

    *(a2 + 8) = 2;
  }

  v7 = 3;
LABEL_10:
  *(a2 + 190) = v7;
  if (*(a2 + 12) == 10 && ((v8 = *(a2 + 40), *v8) ? (v9 = *v8 + 1) : (v9 = 0), SameDomainLabelPointer(&v8[v9], "\n_keepalive")))
  {
    *(a2 + 191) = 0;
  }

  else
  {
    if (a3 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = 4;
    }

    if (*(a2 + 191) < v10)
    {
      *(a2 + 191) = v10;
    }
  }

  *(a2 + 200) = 0;

  InitializeLastAPTime(a1, a2);
}

void mDNSCoreMachineSleep(uint64_t a1, int a2)
{
  v4 = (a1 + 19960);
  v5 = (a1 + 15104);
  v6 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v8 = "Sleeping";
    v9 = *(a1 + 141);
    v10 = *(a1 + 64);
    if (!a2)
    {
      v8 = "Waking";
    }

    goto LABEL_13;
  }

  v6 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "Sleeping";
    v9 = *(a1 + 141);
    v10 = *(a1 + 64);
    if (!a2)
    {
      v8 = "Waking";
    }

LABEL_13:
    *buf = 136446722;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s (old state %d) at %d", buf, 0x18u);
  }

LABEL_14:
  if (a2)
  {
    if (*(a1 + 141))
    {
      return;
    }

    mDNS_Lock_(a1, "mDNSCoreMachineSleep", 8361);
    if (*(a1 + 15120))
    {
      v12 = v5[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 52) + 1;
      *(a1 + 52) = v14;
      mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "mDNSCoreMachineSleep", 8366);
      v5[5] = 2;
      if (v12 == 1)
      {
        mDNS_DeregisterService_drt(a1, a1 + 15128, 0, v15, v16, v17, v18, v19);
      }

      mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNSCoreMachineSleep", 8373);
      --*(a1 + 52);
    }

    v20 = *(a1 + 15024);
    if (v20)
    {
      CloseSocketSet(*(a1 + 15024));
      free(v20);
      *(a1 + 15024) = 0;
    }

    *(a1 + 141) = 1;
    if (!*(a1 + 143) || (v21 = *(a1 + 148)) == 0)
    {
      v52 = *(a1 + 64) + 10000;
      if (v52 <= 1)
      {
        v52 = 1;
      }

      *(a1 + 148) = 0;
      *(a1 + 152) = v52;
      ++*v4;
      DNSServiceManager = Querier_GetDNSServiceManager();
      if (DNSServiceManager)
      {
        mdns_dns_service_manager_enumerate(DNSServiceManager, &__block_literal_global_50);
        if (_mdns_resolver_queue_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
        }

        dispatch_async(_mdns_resolver_queue_s_queue, &__block_literal_global_4925);
      }

      BeginSleepProcessing(a1);
LABEL_114:
      v56 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v57 = "?";
          v60 = *(a1 + 141);
          if (v60 == 2)
          {
            v57 = "Sleeping";
          }

          v59 = *(a1 + 142);
          *buf = 67109634;
          *&buf[4] = v60;
          if (v60 == 1)
          {
            v57 = "Transferring";
          }

          goto LABEL_127;
        }
      }

      else
      {
        v56 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          v57 = "?";
          v58 = *(a1 + 141);
          if (v58 == 2)
          {
            v57 = "Sleeping";
          }

          v59 = *(a1 + 142);
          *buf = 67109634;
          *&buf[4] = v58;
          if (v58 == 1)
          {
            v57 = "Transferring";
          }

LABEL_127:
          *&buf[8] = 2082;
          *&buf[10] = v57;
          *&buf[18] = 1024;
          *&buf[20] = v59;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: m->SleepState %d (%{public}s) seq %d", buf, 0x18u);
        }
      }

      v50 = a1;
      v51 = 8409;
      goto LABEL_129;
    }

    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        v54 = v21 - *(a1 + 64);
        *buf = 67109120;
        *&buf[4] = v54;
        goto LABEL_110;
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        v23 = v21 - *(a1 + 64);
        *buf = 67109120;
        *&buf[4] = v23;
LABEL_110:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: Re-sleeping immediately after waking; will delay for %d ticks", buf, 8u);
      }
    }

    v55 = *(a1 + 148) + 10000;
    if (v55 <= 1)
    {
      v55 = 1;
    }

    *(a1 + 152) = v55;
    goto LABEL_114;
  }

  mDNS_Lock_(a1, "mDNSCoreMachineSleep", 8418);
  *(a1 + 152) = 0;
  if (*(a1 + 141))
  {
    *(a1 + 141) = 0;
    ++*(a1 + 142);
    v24 = *(a1 + 64) + 5000;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    *(a1 + 148) = v24;
  }

  if (v5[5] == 3)
  {
    v5[5] = 0;
    mDNSCoreBeSleepProxyServer_internal(a1, *v5, v5[1], v5[2], v5[3], v5[4]);
  }

  ++v4[1];
  v25 = Querier_GetDNSServiceManager();
  if (v25)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = __mdns_dns_service_manager_handle_wake_block_invoke;
    *&v63 = &__block_descriptor_tmp_51;
    *(&v63 + 1) = v25;
    mdns_dns_service_manager_enumerate(v25, buf);
  }

  mDNSCoreRestartQueries(a1);
  v26 = *(a1 + 64);
  if ((v26 + 1000) <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26 + 1000;
  }

  *(a1 + 12684) = v27;
  v28 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
LABEL_44:
      *buf = 67109376;
      *&buf[4] = v27 - v26;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep waking: NextSRVUpdate in %d %d", buf, 0xEu);
    }
  }

  else
  {
    v28 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }
  }

  v29 = time(0);
  v30 = 0;
  v31 = v29 - *(a1 + 156);
  do
  {
    v61 = v30;
    v32 = *(a1 + 272 + 8 * v30);
    if (v32)
    {
      while (1)
      {
        v33 = v32[2];
        if (v33)
        {
          break;
        }

LABEL_80:
        v32 = *v32;
        if (!v32)
        {
          goto LABEL_81;
        }
      }

      while (1)
      {
        if (*(v33 + 32))
        {
          mDNS_Reconfirm_internal(a1, v33, 0x1388u);
          goto LABEL_79;
        }

        if (v31 < 1)
        {
          goto LABEL_79;
        }

        v35 = (4 * *(v33 + 16) - 8) / 5u;
        v36 = *(a1 + 64);
        v37 = *(v33 + 80);
        v38 = (v36 - v37) / -1000 + v35;
        if (v31 > 0x2A300 || v31 >= v38)
        {
          v43 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_78;
            }
          }

          else
          {
            v43 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_78;
            }
          }

          GetRRDisplayString_rdb((v33 + 8), (*(v33 + 48) + 4), (a1 + 47032));
          *buf = 141558787;
          *&buf[4] = 1752392040;
          *&buf[12] = 2085;
          *&buf[14] = a1 + 47032;
          *&buf[22] = 1024;
          LODWORD(v63) = v31;
          WORD2(v63) = 1024;
          *(&v63 + 6) = v38;
          v44 = v43;
          v45 = "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Purging cache entry SleptTime %d, Remaining TTL %d";
          goto LABEL_77;
        }

        v39 = -1000 * v31 + v37;
        *(v33 + 80) = v39;
        v40 = v36 - (v39 + 1000 * v35);
        v34 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v41 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v41 = 1;
        }

        v42 = v41;
        if ((v40 & 0x80000000) == 0)
        {
          if (v42)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_76:
              GetRRDisplayString_rdb((v33 + 8), (*(v33 + 48) + 4), (a1 + 47032));
              *buf = 141558787;
              *&buf[4] = 1752392040;
              *&buf[12] = 2085;
              *&buf[14] = a1 + 47032;
              *&buf[22] = 1024;
              LODWORD(v63) = v38;
              WORD2(v63) = 1024;
              *(&v63 + 6) = v31;
              v44 = v34;
              v45 = "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Purging after adjusting the remaining TTL %d by %d seconds";
LABEL_77:
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, v45, buf, 0x22u);
            }
          }

          else
          {
            v34 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_76;
            }
          }

LABEL_78:
          mDNS_PurgeCacheResourceRecord(a1, v33);
          goto LABEL_79;
        }

        if (v42)
        {
          break;
        }

        v34 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

LABEL_79:
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_80;
        }
      }

      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_79;
      }

LABEL_50:
      GetRRDisplayString_rdb((v33 + 8), (*(v33 + 48) + 4), (a1 + 47032));
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2085;
      *&buf[14] = a1 + 47032;
      *&buf[22] = 1024;
      LODWORD(v63) = v38;
      WORD2(v63) = 1024;
      *(&v63 + 6) = v31;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Adjusted the remain ttl %d by %d seconds", buf, 0x22u);
      goto LABEL_79;
    }

LABEL_81:
    v30 = v61 + 1;
  }

  while (v61 != 498);
  for (i = *(a1 + 12616); i; i = *i)
  {
    if (*(i + 32) || *(i + 122) || IsLocalDomain(*(i + 40)))
    {
      mDNSCoreRestartRegistration(a1, i, -1);
    }

    else
    {
      ActivateUnicastRegistration(a1, i);
    }
  }

  v47 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v48 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v47 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
LABEL_99:
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: recreating NAT mappings in 5 seconds", buf, 2u);
    }
  }

  RecreateNATMappings(a1, 5000);
  v50 = a1;
  v51 = 8554;
LABEL_129:
  mDNS_Unlock_(v50, "mDNSCoreMachineSleep", v51);
}

uint64_t mDNS_DeregisterService_drt(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 2456) + 8))
  {
    if (*(a2 + 1240))
    {
      if (*(a2 + 1240) == 1)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Service set for %##s already in the process of deregistering", a4, a5, a6, a7, a8, *(a2 + 2448));
        }

        result = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        mDNS_Lock_(a1, "mDNS_DeregisterService_drt", 17918);
        v13 = *(a2 + 24);
        mDNS_Deregister_internal(a1, a2 + 2408, 3);
        mDNS_Deregister_internal(a1, a2 + 3584, 3);
        mDNS_Deregister_internal(a1, a2 + 56, a3);
        for (; v13; v13 = *v13)
        {
          mDNS_Deregister_internal(a1, (v13 + 2), 3);
        }

        if (*(a2 + 32))
        {
          v14 = 0;
          v15 = 0;
          do
          {
            mDNS_Deregister_internal(a1, *(a2 + 40) + v14, a3);
            ++v15;
            v14 += 1176;
          }

          while (v15 < *(a2 + 32));
        }

        v16 = mDNS_Deregister_internal(a1, a2 + 1232, a3);
        mDNS_Unlock_(a1, "mDNS_DeregisterService_drt", 17939);
        return v16;
      }
    }

    else
    {
      return 4294901755;
    }
  }

  else
  {
    v11 = a2 + 2408;

    return mDNS_Deregister(a1, v11);
  }

  return result;
}

void mDNSCoreBeSleepProxyServer_internal(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v12 = (a1 + 12288);
  v13 = *(a1 + 48);
  v14 = *(a1 + 52) + 1;
  *(a1 + 52) = v14;
  mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "mDNSCoreBeSleepProxyServer_internal", 18519);
  if (!a2)
  {
    v20 = *(a1 + 15120);
    if (v20)
    {
      CloseSocketSet(*(a1 + 15120));
      free(v20);
      *(a1 + 15120) = 0;
    }
  }

  if (v12[2821] == 1 && v12[2816] != a2)
  {
    v12[2821] = 2;
    mDNS_DeregisterService_drt(a1, a1 + 15128, a2 != 0, v15, v16, v17, v18, v19);
  }

  v12[2816] = a2;
  v12[2817] = a3;
  v12[2818] = a4;
  v12[2819] = a5;
  v12[2820] = a6;
  if (a2)
  {
    if (*(a1 + 15120) || (v21 = mDNSPlatformUDPSocket(0), (*(a1 + 15120) = v21) != 0))
    {
      if (!v12[2821])
      {
        SleepProxyServerCallback(a1, a1 + 15128, -65792, v15, v16, v17, v18, v19);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreBeSleepProxyServer: Failed to allocate SPSSocket", v15, v16, v17, v18, v19, v22);
    }
  }

  else if (v12[2821])
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreBeSleepProxyServer turning off from state %d; will wake clients", v15, v16, v17, v18, v19, v12[2821]);
    }

    *(a1 + 108) = *(a1 + 64);
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNSCoreBeSleepProxyServer_internal", 18555);
  --*(a1 + 52);
}

void SleepProxyServerCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == -65792)
  {
    if (*(a1 + 141))
    {
      *(a1 + 15109) = 3;
    }

    else
    {
      v10 = *(a1 + 15120);
      *(a1 + 15109) = v10 != 0;
      if (v10)
      {
        memset(v16, 0, sizeof(v16));
        v15 = *(a1 + 15108);
        v13 = *(a1 + 15106);
        v14 = *(a1 + 15107);
        v11 = *(a1 + 15104);
        v12 = *(a1 + 15105);
        LOBYTE(v16[0]) = mDNS_snprintf(v16 + 1);
        mDNS_RegisterService(a1, a2, v16, "\f_sleep-proxy\x04_udp", "\x05local", 0, **(a1 + 15120), 0, "", 1u, 0, 0, 0, SleepProxyServerCallback, 0, 0);
      }

      if (mDNS_LoggingEnabled == 1)
      {
        *(a1 + 15109);
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Sleep Proxy Server %#s %s", a4, a5, a6, a7, a8, *(a2 + 2448));
      }
    }
  }

  else if (a3 == -65548)
  {

    mDNS_RenameAndReregisterService(a1, a2, 0);
  }
}

size_t mDNS_RenameAndReregisterService(unsigned int *a1, uint64_t a2, const char *a3)
{
  if (*(a2 + 2528))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(a2 + 2456) + 10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v7 = *(a2 + 24);
  DeconstructServiceName(*(a2 + 2448), &v25, v20, v19);
  if (!a3)
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    a3 = &v21;
    IncrementLabelSuffix(&v21, 1);
  }

  SameDomainNameBytes(v19, "\x05local");
  if (*(a2 + 3888))
  {
    CompleteRDataUpdate(a1, a2 + 3584, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(a2 + 3632);
  if (v14 == a2 + 4492)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a2 + 3632);
  }

  result = mDNS_RegisterService(a1, a2, a3, v20, v19, v6, *(*(a2 + 2456) + 8), v15, (v14 + 4), *(a2 + 3604), *(a2 + 40), *(a2 + 32), *(a2 + 1264), *a2, *(a2 + 8), *(a2 + 48));
  if (!result && v7)
  {
    do
    {
      v17 = *v7;
      result = mDNS_AddRecordToService(a1, a2, v7, *(v7 + 64), *(v7 + 32), 0);
      if (result)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 == 0;
      }

      v7 = v17;
    }

    while (!v18);
  }

  return result;
}

uint64_t NSSCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (*v2)
  {
    return (*v2)();
  }

  return result;
}

size_t mDNS_AddRecordToService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v9 = *(a2 + 1264);
  v10 = (a6 & 0x100000) == 0;
  v11 = (a6 & 0x20000) != 0 && v9 == 0;
  v12 = !v11;
  if (!v11)
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  if (v9)
  {
    v14 = 1;
  }

  else
  {
    v14 = (a6 & 0x100000) == 0;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  if (v12 == 1)
  {
    v13 = v15;
  }

  if (v9 == -5 || v9 == -3)
  {
    v17 = 5;
  }

  else
  {
    v17 = v13;
  }

  if (v9 == -2)
  {
    v18 = 4;
  }

  else
  {
    v18 = v17;
  }

  *a3 = 0;
  mDNS_SetupResourceRecord(a3 + 16, a4, v9, *(a3 + 28), a5, 2, v18, ServiceCallback, a2);
  v19 = a2 + 2416;
  v20 = *(a2 + 2448);
  v21 = v20;
  do
  {
    if (!v21)
    {
      break;
    }

    v22 = *v21;
    if (v22 > 0x3F)
    {
      break;
    }

    if (!*v21)
    {
      v23 = v21 - v20 + 1;
      if (v23 <= 0x100u)
      {
        memcpy((a3 + 668), v20, v23);
        goto LABEL_38;
      }

      break;
    }

    v21 += v22 + 1;
  }

  while (v21 - v20 <= 255);
  *(a3 + 668) = 0;
LABEL_38:
  mDNS_Lock_(a1, "mDNS_AddRecordToService", 17765);
  v30 = *(a3 + 28);
  if (v30 == 33)
  {
    if ((*v19 & 0x32) != 0)
    {
      goto LABEL_49;
    }
  }

  else if (v30 == 16 && (*(a2 + 3592) & 0x32) != 0)
  {
    v19 = a2 + 3592;
    goto LABEL_49;
  }

  v31 = *(a2 + 24);
  if (!v31)
  {
    goto LABEL_51;
  }

  while (*(v31 + 14) != v30 || (v31[3] & 0x32) == 0)
  {
    v31 = *v31;
    if (!v31)
    {
      goto LABEL_51;
    }
  }

  v19 = (v31 + 3);
LABEL_49:
  v32 = *(a3 + 32);
  if (v32 != *(v19 + 8))
  {
    v33 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a3 + 24), (*(a3 + 64) + 4), (a1 + 47032));
    LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, "mDNS_AddRecordToService: Correcting TTL from %4d to %4d for %s", v34, v35, v36, v37, v38, v32);
    *(a3 + 32) = *(v19 + 8);
  }

LABEL_51:
  v39 = (a2 + 24);
  do
  {
    v40 = v39;
    v39 = *v39;
  }

  while (v39);
  *(a3 + 104) = a2 + 2408;
  v41 = mDNS_Register_internal(a1, a3 + 16, v24, v25, v26, v27, v28, v29);
  if (!v41)
  {
    *v40 = a3;
  }

  mDNS_Unlock_(a1, "mDNS_AddRecordToService", 17808);
  return v41;
}

uint64_t CheckTSRForResourceRecord(int *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = *(a2 + 40);
  if (*(v4 + 12) != a1[1])
  {
    return 0;
  }

  v5 = 604800;
  v6 = *(v4 + 8);
  v7 = *a1;
  if (*a1 <= 0x93A80)
  {
    v5 = *a1;
    goto LABEL_14;
  }

  v8 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LODWORD(v16.tv_sec) = 67109120;
    HIDWORD(v16.tv_sec) = v7;
  }

  else
  {
    v8 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LODWORD(v16.tv_sec) = 67109120;
    HIDWORD(v16.tv_sec) = v7;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CheckTSR - Out of range pktTimeSinceReceived %d in Pkt record", &v16, 8u);
LABEL_14:
  v16.tv_sec = 0;
  v16.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &v16);
  v9 = LODWORD(v16.tv_sec) - v5;
  v10 = v6 - v9;
  if (v6 - v9 < 0)
  {
    v10 = v9 - v6;
  }

  if (v10 < 3)
  {
    return 1;
  }

  if (v6 < v9)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 2;
  }

  v11 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[1];
      v13 = "win";
      v14 = *(v4 + 12);
      if (v6 < v9)
      {
        v13 = "lose";
      }

      goto LABEL_30;
    }
  }

  else
  {
    v11 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[1];
      v13 = "win";
      v14 = *(v4 + 12);
      if (v6 < v9)
      {
        v13 = "lose";
      }

LABEL_30:
      LODWORD(v16.tv_sec) = 67110146;
      HIDWORD(v16.tv_sec) = v9;
      LOWORD(v16.tv_nsec) = 1024;
      *(&v16.tv_nsec + 2) = v12;
      HIWORD(v16.tv_nsec) = 2082;
      v17 = v13;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CheckTSR - pktTimeOfReceipt: %d %x %{public}s ourTimeOfReceipt: %d %x", &v16, 0x24u);
    }
  }

  return v2;
}

uint64_t CreateNewCacheEntryEx(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v13 = a1 + 36864;
  v14 = *(a1 + 37924);
  switch(v14)
  {
    case 6:
      v15 = 532;
      break;
    case 26:
      v15 = 514;
      break;
    case 17:
      v15 = 512;
      break;
    default:
      v15 = *(a1 + 37932);
      break;
  }

  v16 = a7;
  if ((a7 & 0xC) != 0)
  {
    v17 = (a7 & 8) >> 2;
    if ((a7 & 4) != 0)
    {
      v17 = 1;
    }

    if ((a7 & 2) != 0)
    {
      return 0;
    }

    v137 = (a7 & 4) == 0;
    v138 = a7 & 0xC;
    v132 = v17;
    v139 = a4;
    v18 = ((a7 & 8) == 0) | ((a7 & 4) >> 2);
  }

  else
  {
    v138 = 0;
    v139 = a4;
    v132 = 0;
    v18 = 1;
    v137 = 1;
  }

  v135 = v18;
  if (!a3)
  {
    v19 = *(a1 + 37952);
    v20 = v19;
    while (1)
    {
      if (!v20 || (v21 = *v20, v21 > 0x3F))
      {
LABEL_20:
        v22 = a6;
        v23 = 257;
        goto LABEL_22;
      }

      if (!*v20)
      {
        break;
      }

      v20 += v21 + 1;
      if (v20 - v19 >= 256)
      {
        goto LABEL_20;
      }
    }

    v22 = a6;
    v23 = v20 - v19 + 1;
LABEL_22:
    CacheEntity = GetCacheEntity(a1, 0, 0, a4, a5, a6, a7, a8);
    if (!CacheEntity)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Failed to allocate memory for %##s", v25, v26, v27, v28, v29, *(v13 + 1088));
LABEL_51:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "No cache space: Delivering non-cached result for %##s", v31, v32, v33, v34, v35, *(v13 + 1088));
      v66 = *(a1 + 208);
      if (v66)
      {
        v67 = mDNSLogCategory_Default;
        v68 = v66 + 376;
        DNSTypeName(*(v66 + 342));
        LogMsgWithLevel(v67, OS_LOG_TYPE_DEFAULT, "NoCacheAnswer ERROR m->CurrentQuestion already set: %##s (%s)", v69, v70, v71, v72, v73, v68);
      }

      v74 = *(a1 + 192);
      *(a1 + 208) = v74;
      if (v74)
      {
        do
        {
          if (RecordAnswersQuestion(a1 + 37920, 0, v74, v61, v62, v63, v64, v65))
          {
            AnswerCurrentQuestionWithResourceRecord(a1, a1 + 37912, 2);
          }

          v75 = *(a1 + 208);
          if (v75 == v74)
          {
            v75 = *(v74 + 8);
            *(a1 + 208) = v75;
          }

          v74 = v75;
        }

        while (v75);
      }

      v22 = 0;
      *(a1 + 208) = 0;
      return v22;
    }

    v11 = CacheEntity;
    *CacheEntity = *(a1 + 272 + 8 * a2);
    *(CacheEntity + 8) = *(v13 + 1072);
    *(CacheEntity + 16) = 0;
    *(CacheEntity + 24) = CacheEntity + 16;
    if (v23 < 0xB9u)
    {
      v30 = (CacheEntity + 40);
      v9 = v22;
    }

    else
    {
      v30 = malloc_type_malloc(v23, 0x4CAE1D07uLL);
      v9 = v22;
      if (!v30)
      {
        goto LABEL_142;
      }
    }

    v11[4] = v30;
    v36 = *(v13 + 1088);
    v37 = v36;
    do
    {
      if (!v37)
      {
        break;
      }

      v38 = *v37;
      if (v38 > 0x3F)
      {
        break;
      }

      if (!*v37)
      {
        v39 = v37 - v36 + 1;
        if (v39 <= 0x100u)
        {
          memcpy(v30, v36, v39);
          goto LABEL_37;
        }

        break;
      }

      v37 += v38 + 1;
    }

    while (v37 - v36 <= 255);
    *v30 = 0;
LABEL_37:
    if (CacheGroupForName(a1, *(v13 + 1072), *(v13 + 1088)))
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Already have CacheGroup for %##s", v40, v41, v42, v43, v44, *(v13 + 1088));
    }

    *(a1 + 272 + 8 * a2) = v11;
    if (CacheGroupForName(a1, *(v13 + 1072), *(v13 + 1088)) != v11)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Not finding CacheGroup for %##s", a4, a5, a6, a7, a8, *(v13 + 1088));
    }
  }

  v45 = GetCacheEntity(a1, v11, a3, a4, a5, a6, a7, a8);
  if (!v45)
  {
    goto LABEL_51;
  }

  v22 = v45;
  v131 = v9;
  v136 = v10;
  v46 = (v45 + 152);
  *(v45 + 48) = v45 + 152;
  v134 = v15;
  v47 = (v45 + 152);
  if (v15 >= 0x45)
  {
    v48 = malloc_type_calloc(1uLL, v15 + 4, 0xA10E7D09uLL);
    if (!v48)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v47 = v48;
    *(v22 + 48) = v48;
    *(v22 + 20) = v15;
    *v48 = v15;
  }

  v49 = *(a1 + 37928);
  *v22 = *(a1 + 37912);
  *(v22 + 16) = v49;
  v50 = *(a1 + 37944);
  v51 = *(a1 + 37960);
  v52 = *(a1 + 37992);
  *(v22 + 64) = *(a1 + 37976);
  *(v22 + 80) = v52;
  *(v22 + 32) = v50;
  *(v22 + 48) = v51;
  v53 = *(a1 + 38008);
  v54 = *(a1 + 38024);
  v55 = *(a1 + 38056);
  *(v22 + 128) = *(a1 + 38040);
  *(v22 + 144) = v55;
  *(v22 + 96) = v53;
  *(v22 + 112) = v54;
  v56 = *(a1 + 38072);
  v57 = *(a1 + 38088);
  v58 = *(a1 + 38120);
  *(v22 + 192) = *(a1 + 38104);
  *(v22 + 208) = v58;
  *(v22 + 160) = v56;
  *(v22 + 176) = v57;
  v59 = *(v22 + 56);
  if (v59)
  {
    os_retain(v59);
  }

  *(v22 + 40) = v11[4];
  *(v22 + 48) = v47;
  *(v22 + 10) = 0;
  if ((v16 & 2) != 0)
  {
    v76 = *(v22 + 8) != 240;
    v77 = _dnssec_obj_resource_record_member_new();
    v77[8] = 0;
    *(v77 + 2) = v22;
    *(v77 + 40) = v76;
LABEL_63:
    ++*v77;
    ref_count_obj_release(v77);
    *(v22 + 64) = v77;
    v47 = *(v22 + 48);
    v60 = v139;
    goto LABEL_64;
  }

  v60 = v139;
  if (v138)
  {
    if (v137 & v135)
    {
      return 0;
    }

    if (!v132)
    {
LABEL_143:
      *(v22 + 64) = 0;
      return 0;
    }

    v77 = _dnssec_obj_resource_record_member_new();
    v77[8] = 1;
    *(v77 + 2) = v22;
    v77[10] = v132;
    *(v77 + 44) = (v16 & 0x10) != 0;
    goto LABEL_63;
  }

LABEL_64:
  *(v22 + 84) = v60;
  if (v47 == v46 && v15 >= 0x45)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "rr->resrec.rdata == &rr->rdatastorage but length > InlineCacheRDSize %##s", v31, v32, v33, v34, v35, *(v13 + 1088));
    v47 = *(v22 + 48);
    v78 = v136;
LABEL_67:
    memcpy(v47, *(v13 + 1096), v134 + 4);
    goto LABEL_72;
  }

  if (v47 == v46 || v15 > 0x44)
  {
    v79 = v15 >= 0x45;
    v78 = v136;
    if (v79)
    {
      goto LABEL_67;
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "rr->resrec.rdata != &rr->rdatastorage but length <= InlineCacheRDSize %##s", v31, v32, v33, v34, v35, *(v13 + 1088));
    v78 = v136;
  }

LABEL_72:
  *v22 = 0;
  *(v22 + 120) = 0;
  if (v131)
  {
    v80 = *v131;
    *(v22 + 148) = *(v131 + 16);
    *(v22 + 132) = v80;
  }

  if (!*(v22 + 32))
  {
    *(a1 + 248) += *(v22 + 20);
  }

  if (v8)
  {
    *(v22 + 109) = 1;
  }

  *(v22 + 129) = 0;
  if (v78)
  {
    AddCacheRecordToCacheGroup(v11, v22);
    for (i = *(a1 + 192); i; i = *(i + 8))
    {
      if (i == *(a1 + 200))
      {
        break;
      }

      if (RecordAnswersQuestion(v22 + 8, 0, i, v81, v82, v83, v84, v85))
      {
        v87 = *(a1 + 132);
        if (*(i + 220) != v87)
        {
          *(i + 220) = v87;
          if (!*(i + 340))
          {
            v96 = *(i + 212);
            if (v96 >= 1 && !*(i + 40))
            {
              v97 = *(i + 224) + 1;
              *(i + 224) = v97;
              if (v97 >= 0xA && v96 >= 9019 && *(a1 + 64) - *(i + 256) <= 999)
              {
                v98 = mDNSLogCategory_Default;
                DNSTypeName(*(i + 342));
                v129 = *(i + 224);
                v130 = *(i + 212);
                LogMsgWithLevel(v98, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd: %##s (%s) got immediate answer burst (%d); restarting exponential backoff sequence (%d)", v99, v100, v101, v102, v103, i + 376);
                v104 = *(a1 + 64);
                do
                {
                  v105 = arc4random() & 0xFFF;
                }

                while (v105 > 0xFA0);
                *(i + 208) = v105 + v104 - 334;
                *(i + 212) = 334;
                SetNextQueryTime(a1, i);
              }
            }
          }
        }

        v88 = *(i + 228) + 1;
        *(i + 228) = v88;
        if (*(v22 + 20) >= 0x401u)
        {
          ++*(i + 232);
        }

        if ((*(v22 + 8) & 0x10) != 0)
        {
          ++*(i + 236);
        }

        if (v88 >= 0xFA1)
        {
          v89 = CacheRecordAdd_msgcount++;
          if (v89 <= 9)
          {
            v90 = mDNSLogCategory_Default;
            DNSTypeName(*(i + 342));
            v128 = *(i + 228);
            LogMsgWithLevel(v90, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd: %##s (%s) has %d answers; shedding records to resist DOS attack", v91, v92, v93, v94, v95, i + 376);
          }

          *(v22 + 16) = 0;
          *(v22 + 108) = 4;
        }
      }
    }

    if (!*(v22 + 84))
    {
      v106 = *(a1 + 208);
      if (v106)
      {
        v107 = mDNSLogCategory_Default;
        v108 = v106 + 376;
        DNSTypeName(*(v106 + 342));
        LogMsgWithLevel(v107, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd ERROR m->CurrentQuestion already set: %##s (%s)", v109, v110, v111, v112, v113, v108);
      }

      v114 = *(a1 + 192);
      *(a1 + 208) = v114;
      if (v114)
      {
        do
        {
          if (v114 == *(a1 + 200))
          {
            break;
          }

          if (RecordAnswersQuestion(v22 + 8, 0, v114, v81, v82, v83, v84, v85))
          {
            AnswerCurrentQuestionWithResourceRecord(a1, v22, 1);
          }

          v115 = *(a1 + 208);
          if (v115 == v114)
          {
            v115 = *(v114 + 8);
            *(a1 + 208) = v115;
          }

          v114 = v115;
        }

        while (v115);
      }

      *(a1 + 208) = 0;
    }

    SetNextCacheCheckTimeForRecord(a1, v22);
    if (*(v22 + 12) != 47)
    {
      v116 = *(v22 + 132);
      if (v116 == 6)
      {
        if (!*&vorr_s8(*(v22 + 136), *&vextq_s8(*(v22 + 136), *(v22 + 136), 8uLL)))
        {
          return v22;
        }
      }

      else if (v116 != 4 || !*(v22 + 136))
      {
        return v22;
      }

      if (mDNS_AddressIsLocalSubnet(a1, *(v22 + 32), (v22 + 132)) && !IsSubdomain(*(v22 + 40), "\x03ip6\x04arpa") && !IsSubdomain(*(v22 + 40), "\ain-addr\x04arpa"))
      {
        unicast_assist_addr_add(*(v22 + 40), *(v22 + 24), *(v22 + 12), *(v22 + 8), (v22 + 132), *(v22 + 32));
      }
    }
  }

  else
  {
    v117 = v11[4];
    v118 = v117;
    while (1)
    {
      if (!v118 || (v119 = *v118, v119 > 0x3F))
      {
LABEL_123:
        LOWORD(v120) = 257;
        goto LABEL_130;
      }

      if (!*v118)
      {
        break;
      }

      v118 += v119 + 1;
      if (&v118[-v117] > 255)
      {
        goto LABEL_123;
      }
    }

    v120 = (v118 - v117) + 1;
    if ((v120 & 0x10000) != 0)
    {
      goto LABEL_142;
    }

LABEL_130:
    v121 = malloc_type_malloc(v120, 0x57C0F561uLL);
    if (!v121)
    {
      goto LABEL_142;
    }

    v122 = v121;
    v123 = v11[4];
    v124 = v123;
    do
    {
      if (!v124)
      {
        break;
      }

      v125 = *v124;
      if (v125 > 0x3F)
      {
        break;
      }

      if (!*v124)
      {
        v126 = v124 - v123 + 1;
        if (v126 <= 0x100u)
        {
          memcpy(v121, v123, v126);
          goto LABEL_140;
        }

        break;
      }

      v124 += v125 + 1;
    }

    while (v124 - v123 <= 255);
    *v121 = 0;
LABEL_140:
    *(v22 + 40) = v122;
  }

  return v22;
}

void *AddCacheRecordToCacheGroup(uint64_t a1, void *a2)
{
  v2 = a2[8];
  if (!v2 || *(v2 + 32))
  {
    v4 = *(a1 + 24);
    result = (a1 + 24);
    *v4 = a2;
LABEL_4:
    *result = a2;
    return result;
  }

  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v5 = v6;
      if (*(v6 + 6) == 5)
      {
        v8 = v6[8];
        if (v8)
        {
          if (!*(v8 + 32))
          {
            break;
          }
        }
      }

      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_13;
      }
    }

    v6 = v5;
    v5 = v7;
  }

LABEL_13:
  *a2 = v6;
  *v5 = a2;
  v9 = *(a1 + 24);
  result = (a1 + 24);
  if (v5 == v9)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t RefreshCacheRecord(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 80) = *(result + 64);
  *(a2 + 16) = a3;
  *(a2 + 108) = 0;
  if (*(a2 + 10))
  {
    *(a2 + 10) = 1;
  }

  v3 = *(result + 37968);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = *(a2 + 56);
      if (v5)
      {
        if (*(v4 + 281) == 5 && v4 == *(v5 + 24))
        {
          *(v5 + 40) = *(v3 + 40);
          *(a2 + 109) = 1;
        }
      }
    }
  }

  return SetNextCacheCheckTimeForRecord(result, a2);
}

void mDNSCoreReceiveForQuerier(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(mDNSStorage + &loc_100004E2C) = bswap32(*(mDNSStorage + &loc_100004E2C)) >> 16;
  *(mDNSStorage + &loc_100004E2C + 2) = bswap32(*(mDNSStorage + &loc_100004E2C + 2)) >> 16;
  *(mDNSStorage + &loc_100004E30) = bswap32(*(mDNSStorage + &loc_100004E30)) >> 16;
  *(mDNSStorage + &loc_100004E30 + 2) = bswap32(*(mDNSStorage + &loc_100004E30 + 2)) >> 16;
  mDNS_Lock_(mDNSStorage, "mDNSCoreReceiveForQuerier", 13939);
  mDNSCoreReceiveResponse(mDNSStorage, mDNSStorage + &loc_100004E28, a1, 0, 0, 0, 0, a2, a3, a4, 0);

  mDNS_Unlock_(mDNSStorage, "mDNSCoreReceiveForQuerier", 13941);
}

void mDNSCoreReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11)
{
  v11 = __chkstk_darwin();
  v15 = v14;
  v852 = v16;
  v17 = v13;
  v878 = v18;
  v19 = v12;
  v21 = v20;
  v23 = v22;
  v24 = v11;
  v25 = a10;
  if (v13)
  {
    IsDNSMulticast = mDNSAddrIsDNSMulticast(v13);
    if (v19)
    {
LABEL_3:
      v26 = mDNS_AddressIsLocalSubnet(v24, a10, v19) != 0;
      goto LABEL_6;
    }
  }

  else
  {
    IsDNSMulticast = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v26 = 1;
LABEL_6:
  v888 = v26;
  v932 = 1;
  if (a10)
  {
    for (i = *(v24 + 12656); i; i = *i)
    {
      if (i[444] == a10 && *(i + 890) == 4 && *(i + 3564) == 169 && *(i + 3565) == 254)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  v916 = v24;
  v871 = i;
  v881 = v17;
  v880 = v19;
  if (v15)
  {
    v28 = *(v15 + 16);
    if (v28 == &_mdns_querier_kind)
    {
      v29 = v15;
    }

    else
    {
      v29 = 0;
    }

    v30 = v15;
    if (v28 == &_mdns_subscriber_kind)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
LABEL_23:
  v928 = v30;
  v908 = v23[3];
  v31 = v23[4];
  v32 = v23[5];
  v917 = IsResponseMDNSEquivalent(v15, a9);
  v931 = 0;
  if (!a10 && !v15 && (v23[1] & 2) != 0 && (!v908 || !(v31 | v32)))
  {
    return;
  }

  v905 = v31 + v908;
  v33 = (v916 + 37920);
  OptRR = LocateOptRR(v23, v21, 14);
  v898 = v23;
  v919 = v21;
  v930 = v29;
  v883 = (v916 + 37920);
  v890 = v15;
  if (!OptRR)
  {
    v38 = 0;
    goto LABEL_69;
  }

  if (!GetLargeResourceRecord(v916, v23, OptRR, v21, a10, 128, v916 + 37912) || *v33 == 240 || *(v916 + 37924) != 41)
  {
    v38 = 0;
    goto LABEL_61;
  }

  v35 = *(v916 + 37960);
  v36 = v35 + 4 + *(v916 + 37932);
  if (v35 + 4 >= v36)
  {
    v38 = 0;
    v931 = 0;
    v25 = a10;
    goto LABEL_61;
  }

  v37 = 0;
  v38 = 0;
  v39 = (v35 + 16);
  do
  {
    if (*(v39 - 6) != -534)
    {
      goto LABEL_51;
    }

    ++v37;
    v40 = *v39;
    v41 = DomainNamePtrAtTSRIndex(v898, v21, v40);
    if (v41)
    {
      v42 = UnsafeBufferPointer(v898, v41, v21, (v39 - 6));
      if (v42)
      {
        *v42 = v38;
        v38 = v42;
        goto LABEL_51;
      }

      v50 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          v57 = *(v916 + 37944);
          v58 = *(v39 - 2);
          v59 = *(v39 - 1);
          v60 = *v39;
          *v981 = 67110144;
          *&v981[4] = v37;
          *&v981[8] = 2048;
          *&v981[10] = v57;
          *&v981[18] = 1024;
          *&v981[20] = v58;
          *&v981[24] = 1024;
          *&v981[26] = v59;
          *&v981[30] = 1024;
          *&v981[32] = v60;
          v48 = v50;
          v49 = "mDNSCoreReceiveResponse: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d";
          goto LABEL_49;
        }
      }

      else
      {
        v51 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          v52 = *(v916 + 37944);
          v53 = *(v39 - 2);
          v54 = *(v39 - 1);
          v55 = *v39;
          *v981 = 67110144;
          *&v981[4] = v37;
          *&v981[8] = 2048;
          *&v981[10] = v52;
          *&v981[18] = 1024;
          *&v981[20] = v53;
          *&v981[24] = 1024;
          *&v981[26] = v54;
          *&v981[30] = 1024;
          *&v981[32] = v55;
          v48 = v51;
          v49 = "mDNSCoreReceiveResponse: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d";
          goto LABEL_49;
        }
      }
    }

    else
    {
      v43 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v44 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v43 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

LABEL_40:
        v45 = *(v916 + 37944);
        v46 = *(v39 - 2);
        v47 = *(v39 - 1);
        *v981 = 67110144;
        *&v981[4] = v37;
        *&v981[8] = 2048;
        *&v981[10] = v45;
        *&v981[18] = 1024;
        *&v981[20] = v46;
        *&v981[24] = 1024;
        *&v981[26] = v47;
        *&v981[30] = 1024;
        *&v981[32] = v40;
        v48 = v43;
        v49 = "mDNSCoreReceiveResponse: No Domain Name for TSR(%u) if %p tsrTime %d tsrHost %x recIndex %d";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v49, v981, 0x24u);
        goto LABEL_50;
      }

      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

LABEL_50:
    v21 = v919;
LABEL_51:
    v61 = v39 + 6;
    v39 += 12;
  }

  while (v61 < v36);
  v931 = v38;
  v25 = a10;
  if (v38)
  {
    v62 = v37;
    v63 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v64 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      v33 = (v916 + 37920);
      v15 = v890;
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_1939;
      }
    }

    else
    {
      v63 = mDNSLogCategory_mDNS_redacted;
      v843 = os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG);
      v33 = (v916 + 37920);
      v15 = v890;
      if (v843)
      {
LABEL_1939:
        v844 = *(v916 + 37944);
        GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), (v916 + 47032));
        *v981 = 67109634;
        *&v981[4] = v62;
        *&v981[8] = 2048;
        *&v981[10] = v844;
        *&v981[18] = 2082;
        *&v981[20] = v916 + 47032;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "mDNSCoreReceiveResponse: Received TSR(%u) if %p %{public}s", v981, 0x1Cu);
      }
    }

    v23 = v898;
    v29 = v930;
  }

  else
  {
    v23 = v898;
    v29 = v930;
    v33 = (v916 + 37920);
    v15 = v890;
  }

LABEL_61:
  *v33 = 0;
  *(v33 + 51) = 0;
  v65 = *(v33 + 7);
  if (v65)
  {
    ref_count_obj_release(v65);
    *(v33 + 7) = 0;
  }

LABEL_69:
  v910 = v905 + v32;
  if (IsDNSMulticast)
  {
    Answers = LocateAnswers(v23, v21);
    v67 = v928;
    goto LABEL_71;
  }

  v69 = 0xFDF6u >> (*(v23 + 3) & 0xF);
  Answers = (v23 + 6);
  v70 = v905 + v32;
  if (((v29 != 0) & v69) != 0)
  {
    v70 = 0;
  }

  v910 = v70;
  v67 = v928;
  if (v23[2] && Answers < v21)
  {
    v71 = 0;
    v72 = 0;
    v920 = (v29 != 0) & v69 ^ v69;
    while (1)
    {
      bzero(v981, 0x2B8uLL);
      Answers = getQuestion(v23, Answers, v21, a10, v981);
      if (Answers)
      {
        if (!v67)
        {
          break;
        }
      }

LABEL_125:
      v91 = ++v71 >= v23[2] || Answers == 0 || Answers >= v21;
      if (v91)
      {
        v25 = a10;
        if (!v72)
        {
          goto LABEL_71;
        }

        v92 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v424 = bswap32(*v23) >> 16;
          v425 = v23[3];
          v426 = "s,";
          v96 = v23[4];
          v97 = v23[5];
          *v981 = 67110658;
          if (v425 == 1)
          {
            v426 = ", ";
          }

          *&v981[4] = v424;
          *&v981[8] = 1024;
          if (v96 == 1)
          {
            v98 = "y,  ";
          }

          else
          {
            v98 = "ies,";
          }

          *&v981[10] = v425;
          v99 = "s";
          *&v981[14] = 2082;
          *&v981[16] = v426;
          if (v97 == 1)
          {
            v99 = "";
          }
        }

        else
        {
          v92 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v93 = bswap32(*v23) >> 16;
          v94 = v23[3];
          v95 = "s,";
          v96 = v23[4];
          v97 = v23[5];
          *v981 = 67110658;
          if (v94 == 1)
          {
            v95 = ", ";
          }

          *&v981[4] = v93;
          *&v981[8] = 1024;
          if (v96 == 1)
          {
            v98 = "y,  ";
          }

          else
          {
            v98 = "ies,";
          }

          *&v981[10] = v94;
          v99 = "s";
          *&v981[14] = 2082;
          *&v981[16] = v95;
          if (v97 == 1)
          {
            v99 = "";
          }
        }

        *&v981[24] = 1024;
        *&v981[26] = v96;
        *&v981[30] = 2082;
        *&v981[32] = v98;
        *&v981[40] = 1024;
        *&v981[42] = v97;
        *&v981[46] = 2082;
        *&v981[48] = v99;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "[Q%d] Ignoring %2d Answer%{public}s %2d Authorit%{public}s %2d Additional%{public}s", v981, 0x38u);
        return;
      }
    }

    if (v15)
    {
      v73 = 0;
      goto LABEL_85;
    }

    v73 = ExpectingUnicastResponseForQuestion(*(v916 + 192), v852, *v23, v981, v881 == 0);
    if (v73)
    {
LABEL_85:
      if ((v920 & 1) == 0)
      {
        v924 = Answers;
        v74 = CacheGroupForName(v916, *(&v986 + 7), v990);
        if (!v74)
        {
          v29 = v930;
          goto LABEL_125;
        }

        v899 = v72;
        v80 = v74[2];
        if (!v80)
        {
LABEL_123:
          v29 = v930;
          Answers = v924;
          v72 = v899;
          goto LABEL_125;
        }

        while (2)
        {
          if (*(v80 + 12) != 5 || *(v80 + 8) == 240 || !*(v80 + 84))
          {
            if (v15)
            {
              v81 = *(v80 + 56);
              if (v81)
              {
                v81 = v81[3];
              }

              if (v81 == a9 && Client_SameNameCacheRecordIsAnswer(v80, v15))
              {
LABEL_101:
                if (!*(v80 + 109))
                {
                  v82 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                    {
                      v86 = v990;
                      v894 = *(&v982 + 7);
                      while (1)
                      {
                        if (!v86 || (v87 = *v86, v87 > 0x3F))
                        {
LABEL_117:
                          v85 = 257;
                          goto LABEL_120;
                        }

                        if (!*v86)
                        {
                          break;
                        }

                        v86 += v87 + 1;
                        if (v86 - v990 >= 256)
                        {
                          goto LABEL_117;
                        }
                      }

                      v85 = (v86 - v990 + 1);
LABEL_120:
                      v88 = DNSTypeName(v989);
                      v89 = *(v80 + 32);
                      GetRRDisplayString_rdb((v80 + 8), (*(v80 + 48) + 4), (v916 + 47032));
                      *v955 = 134220035;
                      *&v955[4] = v894;
                      *&v955[12] = 2160;
                      *&v955[14] = 1752392040;
                      v956 = 1040;
                      v957 = v85;
                      v958 = 2101;
                      v959 = v990;
                      v960 = 2160;
                      v961 = 1752392040;
                      v962 = 2085;
                      v963 = v88;
                      v964 = 2048;
                      v965 = v89;
                      v966 = 2160;
                      v967 = 1752392040;
                      v968 = 2085;
                      v969 = v916 + 47032;
                      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "Making record answered by the current response as expired if it is not refreshed in the response - Q interface ID: %p, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, RR interface ID: %p, RR description: %{sensitive, mask.hash}s.", v955, 0x58u);
                      v23 = v898;
                      v67 = v928;
                      v15 = v890;
                    }
                  }

                  else
                  {
                    v82 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                    {
                      v83 = v990;
                      v894 = *(&v982 + 7);
                      while (1)
                      {
                        if (!v83 || (v84 = *v83, v84 > 0x3F))
                        {
LABEL_110:
                          v85 = 257;
                          goto LABEL_120;
                        }

                        if (!*v83)
                        {
                          break;
                        }

                        v83 += v84 + 1;
                        if (v83 - v990 >= 256)
                        {
                          goto LABEL_110;
                        }
                      }

                      v85 = (v83 - v990 + 1);
                      goto LABEL_120;
                    }
                  }

                  *(v80 + 80) = *(v916 + 64) + ~(1000 * *(v80 + 16));
                  *(v80 + 108) = 4;
                  v21 = v919;
                }
              }
            }

            else if (SameNameRecordAnswersQuestion((v80 + 8), 0, v73, v75, v76, v77, v78, v79))
            {
              goto LABEL_101;
            }
          }

          v80 = *v80;
          if (!v80)
          {
            goto LABEL_123;
          }

          continue;
        }
      }

      v72 = 1;
    }

    v29 = v930;
    goto LABEL_125;
  }

LABEL_71:
  bzero(v938, 0x320uLL);
  bzero(v937, 0x960uLL);
  v903 = 0;
  if (!v917 && v29)
  {
    v68 = *(*(v29 + 96) + 70);
    if ((v68 & 4) != 0)
    {
      v903 = (v68 >> 1) & 1;
    }

    else
    {
      v903 = 0;
    }
  }

  object = 0;
  v895 = 0;
  v100 = 1;
  if (v910 < 1 || !Answers)
  {
    v884 = 0;
    goto LABEL_912;
  }

  v884 = 0;
  if (Answers >= v21)
  {
    goto LABEL_912;
  }

  v101 = v21;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v875 = 0;
  v884 = 0;
  v895 = 0;
  if (v881 | v15)
  {
    v105 = IsDNSMulticast;
  }

  else
  {
    v105 = 1;
  }

  __src = v105;
  v900 = (v29 | v67) != 0;
  v106 = "uni";
  if (IsDNSMulticast)
  {
    v106 = "multi";
  }

  v849 = v106;
  if (v903)
  {
    v107 = 2;
  }

  else
  {
    v107 = 0;
  }

  if (v67)
  {
    ++v107;
  }

  v858 = v107;
  v921 = v916 + 37912;
  v886 = (v916 + 47032);
  v853 = bswap32(v878) >> 16;
  v855 = v916 + 4264;
  if (v881)
  {
    v108 = v880 == 0;
  }

  else
  {
    v108 = 1;
  }

  v109 = !v108;
  v850 = v109;
  v864 = &v932;
  v110 = Answers;
  while (2)
  {
    if (v103)
    {
      v111 = 1;
    }

    else
    {
      v111 = __src;
    }

    if (v102 >= v905)
    {
      v112 = 0x80;
    }

    else
    {
      v112 = -96;
    }

    if (v102 < v908)
    {
      v112 = -64;
    }

    LargeResourceRecord = GetLargeResourceRecord(v916, v23, v110, v101, v25, v112 & 0xE0, v921);
    if (!LargeResourceRecord)
    {
      object = v104;
      v419 = v919;
      v420 = v916 + 37920;
      v421 = v895;
      goto LABEL_972;
    }

    v925 = LargeResourceRecord;
    if (DPCFeatureEnabled_sOnce != -1)
    {
      dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
    }

    if (DPCFeatureEnabled_sEnabled)
    {
      if (v917)
      {
        if (!v67)
        {
          v114 = *(v916 + 37952);
          v115 = *(v916 + 37924);
          v116 = *(v916 + 37926);
          if (DPCFeatureEnabled_sEnabled)
          {
            if (_DPCGetRegisteredSubscriber(v25, v114, v115, v116))
            {
              goto LABEL_794;
            }
          }
        }
      }
    }

    if (v900)
    {
      if (v104)
      {
        goto LABEL_194;
      }

      v121 = mdns_cache_metadata_create();
      v104 = v121;
      if (v29)
      {
        v122 = *(*(*(v29 + 72) + 16) + 144);
        if (v122 == 1)
        {
          if (*(v29 + 250))
          {
            v122 = 2;
          }

          else
          {
            v122 = 1;
          }
        }

        *(v121 + 48) = v122;
        mdns_cache_metadata_set_extended_dns_error(v121, *(v29 + 160));
      }

      if (v67)
      {
        v104[5] = *(v67 + 128);
        mdns_dns_push_service_definition_set_srv_name(v104, a9);
        goto LABEL_194;
      }

      mdns_dns_push_service_definition_set_srv_name(v104, a9);
      if (v104)
      {
LABEL_194:
        os_retain(v104);
      }

      v124 = *(v916 + 37968);
      if (v124)
      {
        os_release(v124);
      }

      v123 = (v916 + 37920);
      *(v916 + 37968) = v104;
    }

    else
    {
      v123 = (v916 + 37920);
    }

    if (*v123 == 240)
    {
      goto LABEL_795;
    }

    objecta = v104;
    if (v903)
    {
      v125 = _dnssec_obj_resource_record_member_new();
      v125[8] = 0;
      *(v125 + 2) = v921;
      *(v125 + 40) = 1;
      ++*v125;
      ref_count_obj_release(v125);
      *(v916 + 37976) = v125;
      v104 = objecta;
    }

    v126 = *(v916 + 37924);
    if (v126 == 5)
    {
      if (SameDomainNameBytes(*(v916 + 37952), (*(v916 + 37960) + 4)))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: CNAME loop domain name %##s", v116, v117, v118, v119, v120, *(v916 + 37952));
        }

        goto LABEL_794;
      }

LABEL_217:
      if (!v917)
      {
        v132 = *(v916 + 37928);
        if (v132 >= 0x189374)
        {
          v132 = 1610612;
        }

        v133 = v132 + (v132 >> 2) + 2;
        if (v133 <= 0xF)
        {
          v133 = 15;
        }

        *(v916 + 37928) = v133;
      }

      if (IsDNSMulticast)
      {
        if (v871 && *(v871 + 3674) && *(v916 + 37924) == 1 && *(v916 + 38068) == 169 && *(v916 + 38069) == 254)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v134 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), v886);
            v135 = v134;
            v104 = objecta;
            LogMsgWithLevel(v135, OS_LOG_TYPE_DEFAULT, "mDNSResponder: Dropping LinkLocal packet %s", v136, v137, v138, v139, v140, v886);
          }

          goto LABEL_794;
        }

        goto LABEL_289;
      }

      if (v881 && (v111 & 1) != 0)
      {
        v111 = 1;
        goto LABEL_289;
      }

      if (v890)
      {
        v141 = (*(*(v890 + 16) + 96))(v890, v114, v115, v116);
        v142 = (*(*(v890 + 16) + 88))(v890);
        if (v142)
        {
          v143 = v142;
          v144 = *(v916 + 37926);
          if (v144 == (*(*(v890 + 16) + 104))(v890))
          {
            if (*(v890 + 16) == &_mdns_querier_kind && (v145 = *(*(v890 + 96) + 70), (v145 & 4) != 0))
            {
              v146 = (v145 >> 1) & 1;
            }

            else
            {
              v146 = 0;
            }

            if (RRTypeAnswersQuestionType(v883, v141, v146, v116, v117, v118, v119, v120) && SameDomainNameBytes(*(v916 + 37952), *(v143 + 24)))
            {
              v111 = 1;
            }
          }
        }

        goto LABEL_288;
      }

      v147 = *(v916 + 192);
      if (!v147)
      {
        goto LABEL_286;
      }

      v148 = *v23;
      while (1)
      {
        if (!*(v147 + 40) && !*(v147 + 354))
        {
          v149 = *(v916 + 37944);
          if ((!v149 || (v150 = *(v147 + 136)) == 0 || v149 == v150) && ((v151 = *(v916 + 37968)) != 0 && *(v151 + 24) || !v149 || !*(v147 + 340)))
          {
            v152 = *(v147 + 144);
            v153 = v152 ? *(v152 + 24) : 0;
            if (RRTypeAnswersQuestionType(v883, *(v147 + 342), v153, v116, v117, v118, v119, v120))
            {
              v154 = *(v147 + 344);
              if ((*(v916 + 37926) == v154 || v154 == 255) && *(v916 + 37936) == *(v147 + 200) && SameDomainNameBytes(*(v916 + 37952), (v147 + 376)))
              {
                if (*(v147 + 340))
                {
                  if (*(v147 + 340) == v148)
                  {
                    if (v881)
                    {
                      v156 = *(v147 + 72);
                      if (!v156)
                      {
                        v156 = &zeroIPPort;
                      }
                    }

                    else
                    {
                      v156 = (v147 + 338);
                    }

                    if (*v156 == v852)
                    {
LABEL_279:
                      v157 = v875;
                      if (v25)
                      {
                        v157 = 1;
                      }

                      v875 = v157;
                      if (v25)
                      {
                        v103 = 1;
                      }

                      v111 = 1;
                      goto LABEL_288;
                    }

                    if (mDNS_LoggingEnabled == 1)
                    {
                      v158 = mDNSLogCategory_Default;
                      DNSTypeName(*(v147 + 342));
                      GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), v886);
                      LogMsgWithLevel(v158, OS_LOG_TYPE_DEFAULT, "WARNING: Ignoring suspect uDNS response for %##s (%s) from %#a:%d %s", v159, v160, v161, v162, v163, v147 + 376);
                    }

LABEL_286:
                    if (!v25)
                    {
                      v111 = 0;
                    }

LABEL_288:
                    v29 = v930;
LABEL_289:
                    v873 = v103;
                    if (!v917 || *(v916 + 37924) == 47)
                    {
                      goto LABEL_486;
                    }

                    v164 = *(v916 + 12640);
                    if (v164)
                    {
                      v165 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v164 + 8), (*(v164 + 48) + 4), v886);
                      LogMsgWithLevel(v165, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse ERROR m->CurrentRecord already set %s", v166, v167, v168, v169, v170, v886);
                    }

                    v171 = *(v916 + 12616);
                    *(v916 + 12640) = v171;
                    if (!v171)
                    {
                      goto LABEL_486;
                    }

                    while (2)
                    {
                      v172 = *v171;
                      *(v916 + 12640) = *v171;
                      if ((v111 & 1) == 0)
                      {
                        if (!v888)
                        {
                          goto LABEL_444;
                        }

                        if (*(v171 + 8) != 2)
                        {
                          goto LABEL_442;
                        }
                      }

                      if (!PacketRRMatchesSignature(v921, v171, v115, v116, v117, v118, v119, v120))
                      {
                        goto LABEL_442;
                      }

                      v173 = *(v916 + 37952);
                      v174 = &v931;
                      do
                      {
                        v174 = *v174;
                        if (!v174)
                        {
                          goto LABEL_315;
                        }
                      }

                      while (!SameDomainNameBytes(v174 + 20, v173));
                      v175 = mDNSGetTSRForAuthRecordNamed(*(v916 + 12616), *(v171 + 40), *(v171 + 24));
                      if (v175)
                      {
                        v176 = CheckTSRForResourceRecord(v174 + 2, (v175 + 1));
                        if (v176)
                        {
                          if (v176 != -1)
                          {
LABEL_442:
                            v191 = v916;
                            goto LABEL_443;
                          }

                          v177 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              v185 = *(v171 + 40);
                              if (v185)
                              {
                                v207 = *(v171 + 40);
                                while (1)
                                {
                                  if (!v207 || (v208 = *v207, v208 > 0x3F))
                                  {
LABEL_383:
                                    v188 = 257;
                                    goto LABEL_433;
                                  }

                                  if (!*v207)
                                  {
                                    break;
                                  }

                                  v207 += v208 + 1;
                                  if (&v207[-v185] >= 256)
                                  {
                                    goto LABEL_383;
                                  }
                                }

                                v188 = (v207 - v185 + 1);
                              }

                              else
                              {
                                v188 = 0;
                              }

LABEL_433:
                              v223 = DNSTypeName(*(v171 + 12));
                              *v981 = 141559043;
                              *&v981[4] = 1752392040;
                              *&v981[12] = 1040;
                              *&v981[14] = v188;
                              *&v981[18] = 2101;
                              *&v981[20] = v185;
                              *&v981[28] = 2082;
                              *&v981[30] = v223;
                              *&v981[38] = 1024;
                              *&v981[40] = v25;
                              _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface %d due to TSR conflict", v981, 0x2Cu);
                              v29 = v930;
                            }
                          }

                          else
                          {
                            v177 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              v185 = *(v171 + 40);
                              if (v185)
                              {
                                v186 = *(v171 + 40);
                                while (1)
                                {
                                  if (!v186 || (v187 = *v186, v187 > 0x3F))
                                  {
LABEL_311:
                                    v188 = 257;
                                    goto LABEL_433;
                                  }

                                  if (!*v186)
                                  {
                                    break;
                                  }

                                  v186 += v187 + 1;
                                  if (&v186[-v185] >= 256)
                                  {
                                    goto LABEL_311;
                                  }
                                }

                                v188 = (v186 - v185 + 1);
                              }

                              else
                              {
                                v188 = 0;
                              }

                              goto LABEL_433;
                            }
                          }

                          D2D_stop_advertising_record(v171, v178, v179, v180, v181, v182, v183, v184);
                          v224 = v171;
                          v191 = v916;
                          mDNS_Deregister_internal(v916, v224, 4);
                          goto LABEL_443;
                        }
                      }

LABEL_315:
                      if (resource_records_have_same_dnssec_rr_category(*(v916 + 37976), *(v171 + 64)) && *(v916 + 37924) == *(v171 + 12) && *(v916 + 37926) == *(v171 + 14) && *(v916 + 37932) == *(v171 + 20) && *(v916 + 37940) == *(v171 + 28) && SameRDataBody(v883, (*(v171 + 48) + 4), SameDomainName))
                      {
                        if (*(v916 + 37928) >= *(v171 + 16) >> 1 || *(v916 + 141))
                        {
                          if (*(v171 + 208) == v25)
                          {
                            *(v171 + 208) = 0;
                            *(v171 + 195) = 0;
                          }

                          goto LABEL_442;
                        }

                        v244 = *(v171 + 208);
                        if (v244)
                        {
                          if (v244 == v25)
                          {
                            goto LABEL_442;
                          }

                          *(v171 + 208) = -1;
                        }

                        else
                        {
                          *(v171 + 208) = v25;
                        }

                        v191 = v916;
                        *(v916 + 100) = *(v916 + 64);
                        goto LABEL_443;
                      }

                      if (!*(v916 + 37928) || !PacketRRConflict(v916, v171, v921))
                      {
                        if (*(v916 + 37924) == *(v171 + 12) && (*v883 & 0x10) != 0)
                        {
                          v190 = *(v916 + 64);
                          if ((v190 - *(v171 + 288)) >= 0x1F5 && ResourceRecordIsValidAnswer(v171))
                          {
                            *(v171 + 208) = -1;
                            v191 = v916;
                            *(v916 + 100) = v190;
                            goto LABEL_443;
                          }
                        }

                        goto LABEL_442;
                      }

                      v189 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_337;
                        }
                      }

                      else
                      {
                        v189 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_337:
                          v192 = *(v916 + 37940);
                          GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), v886);
                          *v981 = 67109891;
                          *&v981[4] = v192;
                          *&v981[8] = 2160;
                          *&v981[10] = 1752392040;
                          *&v981[18] = 2085;
                          *&v981[20] = v916 + 47032;
                          *&v981[28] = 1024;
                          *&v981[30] = v25;
                          _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Pkt Record: %08X %{sensitive, mask.hash}s (interface %d)", v981, 0x22u);
                        }
                      }

                      v193 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_343;
                        }
                      }

                      else
                      {
                        v193 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_343:
                          v194 = *(v171 + 28);
                          GetRRDisplayString_rdb((v171 + 8), (*(v171 + 48) + 4), v886);
                          *v981 = 67109635;
                          *&v981[4] = v194;
                          *&v981[8] = 2160;
                          *&v981[10] = 1752392040;
                          *&v981[18] = 2085;
                          *&v981[20] = v916 + 47032;
                          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Our Record: %08X %{sensitive, mask.hash}s", v981, 0x1Cu);
                        }
                      }

                      if (*(v171 + 88))
                      {
                        do
                        {
                          v195 = v171;
                          v171 = *(v171 + 88);
                        }

                        while (v171);
                        v196 = mDNSLogCategory_mDNS;
                        if (mDNS_SensitiveLoggingEnableCount)
                        {
                          v197 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                        }

                        else
                        {
                          v197 = 1;
                        }

                        if (v197)
                        {
                          v191 = v916;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_355;
                          }
                        }

                        else
                        {
                          v196 = mDNSLogCategory_mDNS_redacted;
                          v198 = os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT);
                          v191 = v916;
                          if (v198)
                          {
LABEL_355:
                            v199 = *(v195 + 28);
                            GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                            *v981 = 67109635;
                            *&v981[4] = v199;
                            *&v981[8] = 2160;
                            *&v981[10] = 1752392040;
                            *&v981[18] = 2085;
                            *&v981[20] = v916 + 47032;
                            _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Dep Record: %08X %{sensitive, mask.hash}s", v981, 0x1Cu);
                          }
                        }
                      }

                      else
                      {
                        v195 = v171;
                        v191 = v916;
                      }

                      v200 = *(v195 + 190);
                      if (v200 >= 4)
                      {
                        v201 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_387;
                          }
                        }

                        else
                        {
                          v201 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_387;
                          }
                        }

                        GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                        *v981 = 141558275;
                        *&v981[4] = 1752392040;
                        *&v981[12] = 2085;
                        *&v981[14] = v916 + 47032;
                        v202 = v201;
                        v203 = "mDNSCoreReceiveResponse: Already reset to Probing: %{sensitive, mask.hash}s";
LABEL_386:
                        _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, v203, v981, 0x16u);
                        goto LABEL_387;
                      }

                      v204 = mDNSLogCategory_mDNS;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v205 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                      }

                      else
                      {
                        v205 = 1;
                      }

                      v206 = v205;
                      if (v200 == 3)
                      {
                        if (v206)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_387;
                          }
                        }

                        else
                        {
                          v204 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_387;
                          }
                        }

                        GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                        *v981 = 141558275;
                        *&v981[4] = 1752392040;
                        *&v981[12] = 2085;
                        *&v981[14] = v916 + 47032;
                        v202 = v204;
                        v203 = "mDNSCoreReceiveResponse: Ignoring response received before we even began probing: %{sensitive, mask.hash}s";
                        goto LABEL_386;
                      }

                      if (v206)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_390:
                          GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), v886);
                          *v981 = 141559299;
                          *&v981[4] = 1752392040;
                          *&v981[12] = 1045;
                          *&v981[14] = 20;
                          *&v981[18] = 2101;
                          *&v981[20] = v880;
                          *&v981[28] = 1024;
                          *&v981[30] = v853;
                          *&v981[34] = 2160;
                          *&v981[36] = 1752392040;
                          *&v981[44] = 2085;
                          *&v981[46] = v916 + 47032;
                          _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Received from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d %{sensitive, mask.hash}s", v981, 0x36u);
                        }
                      }

                      else
                      {
                        v204 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_390;
                        }
                      }

                      v209 = *(v195 + 8);
                      if (v209 != 2)
                      {
                        if (v209 != 32)
                        {
                          if (v209 == 16)
                          {
                            v210 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_426;
                              }
                            }

                            else
                            {
                              v210 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_426:
                                GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                                *v981 = 141558275;
                                *&v981[4] = 1752392040;
                                *&v981[12] = 2085;
                                *&v981[14] = v916 + 47032;
                                _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Resetting to Probing: %{sensitive, mask.hash}s", v981, 0x16u);
                              }
                            }

                            *(v195 + 8) = 2;
                            *(v195 + 190) = 1028;
                            v191 = v916;
                            InitializeLastAPTime(v916, v195);
                            RecordProbeFailure(v916, v195);
                            goto LABEL_387;
                          }

                          v222 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_429;
                            }
                          }

                          else
                          {
                            v222 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
LABEL_429:
                              GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                              *v981 = 67109635;
                              *&v981[4] = v209;
                              *&v981[8] = 2160;
                              *&v981[10] = 1752392040;
                              *&v981[18] = 2085;
                              *&v981[20] = v916 + 47032;
                              _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_ERROR, "mDNSCoreReceiveResponse: Unexpected record type %X %{sensitive, mask.hash}s", v981, 0x1Cu);
                            }
                          }

                          v875 = 1;
                          v191 = v916;
                          goto LABEL_388;
                        }

                        v211 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_423;
                          }
                        }

                        else
                        {
                          v211 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
LABEL_423:
                            GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                            *v981 = 141558275;
                            *&v981[4] = 1752392040;
                            *&v981[12] = 2085;
                            *&v981[14] = v916 + 47032;
                            _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_ERROR, "mDNSCoreReceiveResponse: Unexpected conflict discarding %{sensitive, mask.hash}s", v981, 0x16u);
                          }
                        }

                        ++*(v916 + 19916);
LABEL_475:
                        D2D_stop_advertising_record(v195, v212, v213, v214, v215, v216, v217, v218);
                        v191 = v916;
                        mDNS_Deregister_internal(v916, v195, 2);
                        goto LABEL_387;
                      }

                      v219 = *(v916 + 15096);
                      v29 = v930;
                      if (!v219)
                      {
                        goto LABEL_439;
                      }

                      do
                      {
                        if (*(v219 + 6) == *(v195 + 24) && resource_records_have_same_dnssec_rr_category(v219[8], *(v195 + 64)) && *(v219 + 6) == *(v195 + 12) && *(v219 + 7) == *(v195 + 14) && *(v219 + 10) == *(v195 + 20) && *(v219 + 7) == *(v195 + 28) && SameRDataBody((v219 + 1), (*(v195 + 48) + 4), SameDomainName) && SameDomainNameBytes(v219[5], *(v195 + 40)))
                        {
                          if (mDNS_LoggingEnabled == 1)
                          {
                            v247 = mDNSLogCategory_Default;
                            GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                            v248 = v247;
                            v29 = v930;
                            LogMsgWithLevel(v248, OS_LOG_TYPE_DEFAULT, "mDNSCoreRegisteredProxyRecord: Ignoring packet registered with sleep proxy : %s ", v249, v250, v251, v252, v253, v886);
                          }

                          goto LABEL_441;
                        }

                        v219 = *v219;
                      }

                      while (v219);
                      v220 = *(v916 + 15096);
                      if (v220)
                      {
                        if (mDNS_LoggingEnabled != 1)
                        {
                          v221 = 0;
                          goto LABEL_436;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Stored Proxy records :", v116, v117, v118, v119, v120, v845);
                        v220 = *(v916 + 15096);
                        if (v220)
                        {
                          v221 = mDNS_LoggingEnabled;
                          do
                          {
LABEL_436:
                            if (v221)
                            {
                              v225 = mDNSLogCategory_Default;
                              GetRRDisplayString_rdb(v220 + 8, (*(v220 + 6) + 4), v886);
                              v226 = v225;
                              v29 = v930;
                              LogMsgWithLevel(v226, OS_LOG_TYPE_DEFAULT, "%s", v227, v228, v229, v230, v231, v886);
                              v221 = mDNS_LoggingEnabled;
                            }

                            v220 = *v220;
                          }

                          while (v220);
                        }
                      }

LABEL_439:
                      v232 = *(v195 + 180);
                      if (v232 && *(v916 + 136) == *(v195 + 184))
                      {
LABEL_441:
                        v875 = 1;
                        goto LABEL_442;
                      }

                      v233 = v916 + 12656;
                      while (2)
                      {
                        v233 = *v233;
                        if (!v233)
                        {
                          v234 = v232 + 1;
                          *(v195 + 180) = v232 + 1;
                          *(v195 + 184) = *(v916 + 136);
                          v238 = v232 - 1 < 0;
                          v239 = IsDNSMulticast;
                          if (v238 == __OFSUB__(v234, 2))
                          {
                            v239 = 0;
                          }

                          if (v239)
                          {
                            goto LABEL_455;
                          }

LABEL_465:
                          v240 = mDNSLogCategory_mDNS;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v241 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                          }

                          else
                          {
                            v241 = 1;
                          }

                          if (v241)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_473;
                            }
                          }

                          else
                          {
                            v240 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
LABEL_473:
                              v243 = *(v195 + 190);
                              GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                              *v981 = 67110147;
                              *&v981[4] = v243;
                              *&v981[8] = 2160;
                              *&v981[10] = 1752392040;
                              *&v981[18] = 2085;
                              *&v981[20] = v916 + 47032;
                              *&v981[28] = 2082;
                              *&v981[30] = v849;
                              *&v981[38] = 1024;
                              *&v981[40] = v25;
                              _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: ProbeCount %u; will deregister %{sensitive, mask.hash}s due to %{public}scast conflict via interface %d", v981, 0x2Cu);
                            }
                          }

                          ++*(v916 + 19912);
                          goto LABEL_475;
                        }

                        if (*(v233 + 3552) != v25)
                        {
                          continue;
                        }

                        break;
                      }

                      v234 = v232 + 1;
                      *(v195 + 180) = v232 + 1;
                      *(v195 + 184) = *(v916 + 136);
                      if (!IsDNSMulticast)
                      {
                        goto LABEL_465;
                      }

                      if (!*(v233 + 3677) || v234 > 1)
                      {
                        goto LABEL_465;
                      }

LABEL_455:
                      v236 = mDNSLogCategory_mDNS;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v237 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                      }

                      else
                      {
                        v237 = 1;
                      }

                      if (v237)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_480;
                        }
                      }

                      else
                      {
                        v236 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_480:
                          v246 = *(v195 + 190);
                          GetRRDisplayString_rdb((v195 + 8), (*(v195 + 48) + 4), v886);
                          *v981 = 67110659;
                          *&v981[4] = v246;
                          v23 = v898;
                          *&v981[8] = 1024;
                          *&v981[10] = 1000;
                          *&v981[14] = 1024;
                          *&v981[16] = v234;
                          *&v981[20] = 1024;
                          *&v981[22] = 1;
                          *&v981[26] = 1024;
                          *&v981[28] = v25;
                          *&v981[32] = 2160;
                          *&v981[34] = 1752392040;
                          *&v981[42] = 2085;
                          *&v981[44] = v916 + 47032;
                          _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: ProbeCount %u; restarting probing after %d-tick pause due to possibly spurious multicast conflict (%d/%d) via interface %d for %{sensitive, mask.hash}s", v981, 0x34u);
                        }
                      }

                      *(v195 + 190) = 3;
                      v191 = v916;
                      *(v195 + 284) = *(v916 + 64) - *(v195 + 280) + 1000;
                      SetNextAnnounceProbeTime(v916, v195);
LABEL_387:
                      v875 = 1;
LABEL_388:
                      v29 = v930;
LABEL_443:
                      v172 = *(v191 + 12640);
LABEL_444:
                      v171 = v172;
                      if (v172)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_486:
                    if (v111)
                    {
                      goto LABEL_487;
                    }

                    v266 = v932;
                    if (v932 == 1)
                    {
                      v104 = objecta;
LABEL_530:
                      v103 = v873;
                      goto LABEL_794;
                    }

                    v104 = objecta;
                    v103 = v873;
                    while (2)
                    {
                      v267 = *(v266 + 12);
                      if (v267 > 0x27)
                      {
                        goto LABEL_516;
                      }

                      if (((1 << v267) & 0x1000248000) != 0)
                      {
                        v268 = 6;
                        goto LABEL_514;
                      }

                      if (((1 << v267) & 0x8000001024) == 0)
                      {
                        if (v267 == 33)
                        {
                          v268 = 10;
                          goto LABEL_514;
                        }

                        goto LABEL_516;
                      }

                      v268 = 4;
LABEL_514:
                      if (*(v266 + 28) != *(v916 + 37936) || !SameDomainNameBytes((*(v266 + 48) + v268), *(v916 + 37952)))
                      {
LABEL_516:
                        v266 = *(v266 + 112);
                        if (v266 == 1)
                        {
                          goto LABEL_794;
                        }

                        continue;
                      }

                      break;
                    }

                    v269 = mDNSLogCategory_Default;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                      {
                        v270 = DNSTypeName(*(v916 + 37924));
                        v271 = *(v916 + 37952);
                        if (v271)
                        {
                          v275 = *(v916 + 37952);
                          while (1)
                          {
                            if (!v275 || (v276 = *v275, v276 > 0x3F))
                            {
LABEL_538:
                              v274 = 257;
                              goto LABEL_553;
                            }

                            if (!*v275)
                            {
                              break;
                            }

                            v275 += v276 + 1;
                            if (&v275[-v271] >= 256)
                            {
                              goto LABEL_538;
                            }
                          }

                          v274 = (v275 - v271 + 1);
                        }

                        else
                        {
                          v274 = 0;
                        }

LABEL_553:
                        GetRRDisplayString_rdb((v266 + 8), (*(v266 + 48) + 4), v886);
                        *v981 = 141559555;
                        *&v981[4] = 1752392040;
                        *&v981[12] = 2085;
                        *&v981[14] = v270;
                        *&v981[22] = 2160;
                        *&v981[24] = 1752392040;
                        *&v981[32] = 1040;
                        *&v981[34] = v274;
                        *&v981[38] = 2101;
                        *&v981[40] = v271;
                        *&v981[48] = 2160;
                        *&v981[50] = 1752392040;
                        *&v981[58] = 2085;
                        *&v981[60] = v916 + 47032;
                        _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEBUG, "Found a matching entry in the CacheFlushRecords - new rrtype: %{sensitive, mask.hash}s, matched name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, description: %{sensitive, mask.hash}s", v981, 0x44u);
                      }
                    }

                    else
                    {
                      v269 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        v270 = DNSTypeName(*(v916 + 37924));
                        v271 = *(v916 + 37952);
                        if (v271)
                        {
                          v272 = *(v916 + 37952);
                          while (1)
                          {
                            if (!v272 || (v273 = *v272, v273 > 0x3F))
                            {
LABEL_528:
                              v274 = 257;
                              goto LABEL_553;
                            }

                            if (!*v272)
                            {
                              break;
                            }

                            v272 += v273 + 1;
                            if (&v272[-v271] >= 256)
                            {
                              goto LABEL_528;
                            }
                          }

                          v274 = (v272 - v271 + 1);
                        }

                        else
                        {
                          v274 = 0;
                        }

                        goto LABEL_553;
                      }
                    }

LABEL_487:
                    v254 = *(v916 + 37952);
                    v255 = &v931;
                    v256 = v916;
                    do
                    {
                      v255 = *v255;
                      if (!v255)
                      {
                        goto LABEL_504;
                      }
                    }

                    while (!SameDomainNameBytes(v255 + 20, v254));
                    v257 = CacheGroupForName(v916, *(v916 + 37936), *(v916 + 37952));
                    if (!v257)
                    {
LABEL_504:
                      v265 = 0;
                      v104 = objecta;
                      v103 = v873;
                      goto LABEL_636;
                    }

                    v868 = v257;
                    v258 = mDNSGetTSRForCacheGroup(v257);
                    v104 = objecta;
                    if (!v258)
                    {
                      goto LABEL_569;
                    }

                    v259 = CheckTSRForResourceRecord(v255 + 2, (v258 + 1));
                    if (v259 == 2)
                    {
                      v29 = v930;
                      goto LABEL_530;
                    }

                    if (v259 == -1)
                    {
                      v260 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          v261 = *(v916 + 37952);
                          if (v261)
                          {
                            v277 = *(v916 + 37952);
                            while (1)
                            {
                              if (!v277 || (v278 = *v277, v278 > 0x3F))
                              {
LABEL_546:
                                v264 = 257;
                                goto LABEL_556;
                              }

                              if (!*v277)
                              {
                                break;
                              }

                              v277 += v278 + 1;
                              if (&v277[-v261] >= 256)
                              {
                                goto LABEL_546;
                              }
                            }

                            v264 = (v277 - v261 + 1);
                          }

                          else
                          {
                            v264 = 0;
                          }

LABEL_556:
                          v279 = DNSTypeName(*(v916 + 37924));
                          *v981 = 141559043;
                          *&v981[4] = 1752392040;
                          *&v981[12] = 1040;
                          *&v981[14] = v264;
                          *&v981[18] = 2101;
                          *&v981[20] = v261;
                          *&v981[28] = 2082;
                          *&v981[30] = v279;
                          *&v981[38] = 1024;
                          *&v981[40] = v25;
                          _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - flushing cache group %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface %d due to TSR conflict", v981, 0x2Cu);
                        }
                      }

                      else
                      {
                        v260 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          v261 = *(v916 + 37952);
                          if (v261)
                          {
                            v262 = *(v916 + 37952);
                            while (1)
                            {
                              if (!v262 || (v263 = *v262, v263 > 0x3F))
                              {
LABEL_503:
                                v264 = 257;
                                goto LABEL_556;
                              }

                              if (!*v262)
                              {
                                break;
                              }

                              v262 += v263 + 1;
                              if (&v262[-v261] >= 256)
                              {
                                goto LABEL_503;
                              }
                            }

                            v264 = (v262 - v261 + 1);
                          }

                          else
                          {
                            v264 = 0;
                          }

                          goto LABEL_556;
                        }
                      }

                      v280 = *(v868 + 16);
                      if (v280)
                      {
                        while (2)
                        {
                          if (*(v280 + 12) != 41)
                          {
                            mDNS_PurgeCacheResourceRecord(v916, v280);
                            v281 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v282 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v282 = 1;
                            }

                            if (v282)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_567;
                              }
                            }

                            else
                            {
                              v281 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_567:
                                v284 = *(v280 + 32);
                                GetRRDisplayString_rdb((v280 + 8), (*(v280 + 48) + 4), v886);
                                *v981 = 67109635;
                                *&v981[4] = v284;
                                *&v981[8] = 2160;
                                *&v981[10] = 1752392040;
                                *&v981[18] = 2085;
                                *&v981[20] = v916 + 47032;
                                _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - flushed interface %d %{sensitive, mask.hash}s", v981, 0x1Cu);
                              }
                            }
                          }

                          v280 = *v280;
                          if (!v280)
                          {
                            break;
                          }

                          continue;
                        }
                      }
                    }

LABEL_569:
                    v285 = *(v916 + 37928);
                    v286 = *(v255 + 2);
                    v287 = a11;
                    if (!a11)
                    {
                      *&v981[8] = 0;
                      *v981 = 0;
                      clock_gettime(_CLOCK_MONOTONIC_RAW, v981);
                      v287 = *v981;
                    }

                    if (v286 >= 0x93A81)
                    {
                      v296 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        v297 = v916;
                        v25 = a10;
                        v104 = objecta;
                        v103 = v873;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                        {
                          v298 = *(v868 + 32);
                          if (v298)
                          {
                            v302 = *(v868 + 32);
                            while (1)
                            {
                              if (!v302 || (v303 = *v302, v303 > 0x3F))
                              {
LABEL_602:
                                v301 = 257;
                                goto LABEL_633;
                              }

                              if (!*v302)
                              {
                                break;
                              }

                              v302 += v303 + 1;
                              if (&v302[-v298] >= 256)
                              {
                                goto LABEL_602;
                              }
                            }

                            v301 = (v302 - v298 + 1);
                          }

                          else
                          {
                            v301 = 0;
                          }

LABEL_633:
                          v312 = *(v255 + 2);
                          *v981 = 67110147;
                          *&v981[4] = v312;
                          *&v981[8] = 1024;
                          *&v981[10] = 604800;
                          *&v981[14] = 2160;
                          *&v981[16] = 1752392040;
                          *&v981[24] = 1040;
                          *&v981[26] = v301;
                          *&v981[30] = 2101;
                          *&v981[32] = v298;
                          _os_log_impl(&_mh_execute_header, v296, OS_LOG_TYPE_ERROR, "AddOrUpdateTSRForCacheGroup: tsrTimestamp[%d] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v981, 0x28u);
                        }
                      }

                      else
                      {
                        v296 = mDNSLogCategory_mDNS_redacted;
                        v297 = v916;
                        v25 = a10;
                        v104 = objecta;
                        v103 = v873;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                        {
                          v298 = *(v868 + 32);
                          if (v298)
                          {
                            v299 = *(v868 + 32);
                            while (1)
                            {
                              if (!v299 || (v300 = *v299, v300 > 0x3F))
                              {
LABEL_594:
                                v301 = 257;
                                goto LABEL_633;
                              }

                              if (!*v299)
                              {
                                break;
                              }

                              v299 += v300 + 1;
                              if (&v299[-v298] >= 256)
                              {
                                goto LABEL_594;
                              }
                            }

                            v301 = (v299 - v298 + 1);
                          }

                          else
                          {
                            v301 = 0;
                          }

                          goto LABEL_633;
                        }
                      }

                      v256 = v297;
                      goto LABEL_635;
                    }

                    v288 = v258;
                    if (v258)
                    {
                      goto LABEL_575;
                    }

                    CacheEntity = GetCacheEntity(v916, v868, v115, v116, v117, v118, v119, v120);
                    if (!CacheEntity)
                    {
                      v304 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        v305 = v916;
                        v25 = a10;
                        v104 = objecta;
                        v103 = v873;
                        v265 = v868;
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                        {
                          v306 = *(v868 + 32);
                          if (v306)
                          {
                            v310 = *(v868 + 32);
                            while (1)
                            {
                              if (!v310 || (v311 = *v310, v311 > 0x3F))
                              {
LABEL_630:
                                v309 = 257;
                                goto LABEL_836;
                              }

                              if (!*v310)
                              {
                                break;
                              }

                              v310 += v311 + 1;
                              if (&v310[-v306] >= 256)
                              {
                                goto LABEL_630;
                              }
                            }

                            v309 = (v310 - v306 + 1);
                          }

                          else
                          {
                            v309 = 0;
                          }

LABEL_836:
                          *v981 = 141558531;
                          *&v981[4] = 1752392040;
                          *&v981[12] = 1040;
                          *&v981[14] = v309;
                          *&v981[18] = 2101;
                          *&v981[20] = v306;
                          _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_ERROR, "AddOrUpdateTSRForCacheGroup: No cache record for new TSR %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v981, 0x1Cu);
                        }
                      }

                      else
                      {
                        v304 = mDNSLogCategory_Default_redacted;
                        v305 = v916;
                        v25 = a10;
                        v104 = objecta;
                        v103 = v873;
                        v265 = v868;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                        {
                          v306 = *(v868 + 32);
                          if (v306)
                          {
                            v307 = *(v868 + 32);
                            while (1)
                            {
                              if (!v307 || (v308 = *v307, v308 > 0x3F))
                              {
LABEL_620:
                                v309 = 257;
                                goto LABEL_836;
                              }

                              if (!*v307)
                              {
                                break;
                              }

                              v307 += v308 + 1;
                              if (&v307[-v306] >= 256)
                              {
                                goto LABEL_620;
                              }
                            }

                            v309 = (v307 - v306 + 1);
                          }

                          else
                          {
                            v309 = 0;
                          }

                          goto LABEL_836;
                        }
                      }

                      v256 = v305;
                      goto LABEL_636;
                    }

                    v288 = CacheEntity;
                    *(CacheEntity + 48) = CacheEntity + 152;
                    *(CacheEntity + 12) = 94371881;
                    *(CacheEntity + 40) = *(v868 + 32);
                    v290 = *(v868 + 8);
                    *(CacheEntity + 20) = 917518;
                    *(CacheEntity + 24) = v290;
                    AddCacheRecordToCacheGroup(v868, CacheEntity);
LABEL_575:
                    v291 = v287 - v286;
                    *(v288 + 80) = *(v916 + 64);
                    v292 = *(v288 + 16);
                    if (v292 <= v285)
                    {
                      v292 = v285;
                    }

                    *(v288 + 16) = v292;
                    v293 = *(v288 + 48);
                    if (v258 && v291 - *(v293 + 8) < 1)
                    {
                      v256 = v916;
                      v25 = a10;
                      v104 = objecta;
                    }

                    else
                    {
                      *(v293 + 4) = 720362;
                      *(v293 + 8) = v291;
                      *(v293 + 12) = *(v255 + 3);
                      *(v293 + 16) = 0;
                      v294 = mDNSLogCategory_Default;
                      v25 = a10;
                      v104 = objecta;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                        {
                          if (v258)
                          {
                            v295 = "Updated";
                          }

                          else
                          {
                            v295 = "Added";
                          }

LABEL_607:
                          GetRRDisplayString_rdb((v288 + 8), (*(v288 + 48) + 4), v886);
                          *v981 = 136315651;
                          *&v981[4] = v295;
                          *&v981[12] = 2160;
                          *&v981[14] = 1752392040;
                          *&v981[22] = 2085;
                          *&v981[24] = v916 + 47032;
                          _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_DEBUG, "AddOrUpdateTSRForCacheGroup: %s TSR %{sensitive, mask.hash}s", v981, 0x20u);
                        }
                      }

                      else
                      {
                        v294 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                        {
                          if (v258)
                          {
                            v295 = "Updated";
                          }

                          else
                          {
                            v295 = "Added";
                          }

                          goto LABEL_607;
                        }
                      }

                      v256 = v916;
                    }

                    v103 = v873;
LABEL_635:
                    v265 = v868;
LABEL_636:
                    v313 = *(v256 + 240);
                    if (v917 && v313)
                    {
                      v314 = CacheGroupForName(mDNSStorage, *(v916 + 37936), *(v916 + 37952));
                      if (v314)
                      {
                        v315 = v314[2];
                        if (v315)
                        {
                          v316 = 0;
                          while (!SameNameCacheRecordsMatchInSourceTypeClass(v921, v315) || ++v316 <= 0x7CF)
                          {
                            v315 = *v315;
                            if (!v315)
                            {
                              goto LABEL_646;
                            }
                          }

LABEL_771:
                          v29 = v930;
                          goto LABEL_794;
                        }
                      }
                    }

                    else if (!v313)
                    {
                      goto LABEL_771;
                    }

LABEL_646:
                    IsD2D = mDNSPlatformInterfaceIsD2D(v25, v114, v115, v116, v117, v118, v119, v120);
                    v319 = v875;
                    if (IsD2D)
                    {
                      v319 = 1;
                    }

                    v875 = v319;
                    v320 = *(v916 + 37936);
                    v321 = v320 % 0x1F3;
                    if (v265 || (v265 = CacheGroupForName(v916, v320, *(v916 + 37952))) != 0)
                    {
                      v869 = v265;
                      v323 = v265 + 2;
                      v322 = v265[2];
                      if (v322)
                      {
                        v29 = v930;
                        while (1)
                        {
                          v324 = *(v916 + 37968);
                          if (!v25 || v324 && (v325 = *(v324 + 24)) != 0 && (*(v325 + 276) & 0x6000) == 0x2000)
                          {
                            v326 = *(v322 + 56);
                            if (v326)
                            {
                              v326 = *(v326 + 24);
                            }

                            if (v324)
                            {
                              v324 = *(v324 + 24);
                            }

                            if (v326 != v324)
                            {
                              goto LABEL_679;
                            }
                          }

                          else if (*(v322 + 32) != v25)
                          {
                            goto LABEL_679;
                          }

                          if (resource_records_have_same_dnssec_rr_category(*(v916 + 37976), *(v322 + 64)) && *(v916 + 37924) == *(v322 + 12) && *(v916 + 37926) == *(v322 + 14) && *(v916 + 37932) == *(v322 + 20) && *(v916 + 37940) == *(v322 + 28) && SameRDataBody(v883, (*(v322 + 48) + 4), SameDomainName))
                          {
                            v332 = *v883;
                            if ((*v883 & 0x10) != 0)
                            {
                              v104 = objecta;
                              if (*(v322 + 112))
                              {
                                v350 = v864;
                              }

                              else
                              {
                                v350 = v864;
                                if (v864 != (v322 + 112))
                                {
                                  *v864 = v322;
                                  *(v322 + 112) = 1;
                                  v350 = (v322 + 112);
                                }
                              }

                              v864 = v350;
                              if ((*(v322 + 8) & 0x10) == 0)
                              {
                                v351 = *(v916 + 192);
                                if (v351)
                                {
                                  do
                                  {
                                    if (RecordAnswersQuestion(v322 + 8, 0, v351, v327, v328, v329, v330, v331))
                                    {
                                      ++*(v351 + 236);
                                    }

                                    v351 = *(v351 + 8);
                                  }

                                  while (v351);
                                  v332 = *v883;
                                }

                                *(v322 + 8) = v332;
                                v29 = v930;
                              }
                            }

                            else
                            {
                              v104 = objecta;
                            }

                            if (SameRDataBody(v883, (*(v322 + 48) + 4), SameDomainNameCS))
                            {
                              v379 = *(v916 + 37928);
                              if (v379)
                              {
                                ++*(v916 + 19988);
                                if (*(v322 + 10) == 2 && !*(v322 + 84))
                                {
                                  v380 = *(v916 + 64);
                                  if (v380 <= 1)
                                  {
                                    v380 = 1;
                                  }

                                  *(v322 + 84) = v380;
                                }

                                if (v379 == 120 && *(v322 + 16) == 4500)
                                {
                                  if ((v381 = *(v322 + 32), AWDLInterfaceID) && AWDLInterfaceID == v381 || (v379 = 120, WiFiAwareInterfaceID) && WiFiAwareInterfaceID == v381)
                                  {
                                    v382 = *(v322 + 12);
                                    if (v382 == 33 || v382 == 28)
                                    {
                                      v383 = mDNSLogCategory_Default;
                                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                      {
                                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                        {
                                          goto LABEL_851;
                                        }
                                      }

                                      else
                                      {
                                        v383 = mDNSLogCategory_Default_redacted;
                                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                        {
LABEL_851:
                                          GetRRDisplayString_rdb((v322 + 8), (*(v322 + 48) + 4), v886);
                                          v396 = *(v322 + 32);
                                          *v981 = 141558531;
                                          *&v981[4] = 1752392040;
                                          *&v981[12] = 2085;
                                          *&v981[14] = v916 + 47032;
                                          *&v981[22] = 2048;
                                          *&v981[24] = v396;
                                          _os_log_impl(&_mh_execute_header, v383, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Keeping Standard TTL for %{sensitive, mask.hash}s %p", v981, 0x20u);
                                        }
                                      }

                                      v379 = 4500;
                                      v29 = v930;
                                    }

                                    else
                                    {
                                      v379 = 120;
                                    }
                                  }
                                }

                                RefreshCacheRecord(v916, v322, v379);
                                if (*(v869 + 24) != v322)
                                {
                                  while (1)
                                  {
                                    v402 = v323;
                                    v323 = *v323;
                                    if (!v323)
                                    {
                                      break;
                                    }

                                    if (v323 == v322)
                                    {
                                      *v402 = *v322;
                                      break;
                                    }
                                  }

                                  *v322 = 0;
                                  AddCacheRecordToCacheGroup(v869, v322);
                                }

                                v403 = v23[1];
                                *(v322 + 110) = v403;
                                *(v322 + 9) = HIBYTE(v403) & 0xF;
                                v373 = v864;
                                if (v25)
                                {
LABEL_860:
                                  if ((*(v322 + 8) & 0x10) == 0)
                                  {
                                    goto LABEL_869;
                                  }

                                  v404 = *(v916 + 192);
                                  if (v404)
                                  {
                                    while (*(v404 + 40) || *(v404 + 632) || *(v404 + 212) < 1 || !RecordAnswersQuestion(v322 + 8, 0, v404, v397, v398, v399, v400, v401))
                                    {
                                      v404 = *(v404 + 8);
                                      if (!v404)
                                      {
                                        goto LABEL_867;
                                      }
                                    }

                                    v418 = *(v916 + 64);
                                    *(v404 + 256) = v418;
                                    *(v404 + 224) = 0;
                                    *(v404 + 208) = v418;
                                    *(v404 + 212) = 3600000;
                                    *(v404 + 352) = 0;
                                    *(v404 + 649) = 0;
LABEL_867:
                                    v104 = objecta;
LABEL_868:
                                    v373 = v864;
                                    goto LABEL_869;
                                  }

                                  v104 = objecta;
LABEL_869:
                                  if (!v850 || (v405 = *(v322 + 96)) == 0 || *(v405 + 340))
                                  {
                                    v374 = 0;
                                    goto LABEL_793;
                                  }

                                  v865 = v373;
                                  if (*v880 == 6)
                                  {
                                    if (!*&vorr_s8(*(v880 + 4), *&vextq_s8(*(v880 + 4), *(v880 + 4), 8uLL)))
                                    {
                                      goto LABEL_907;
                                    }
                                  }

                                  else if (*v880 != 4 || !*(v880 + 4))
                                  {
                                    goto LABEL_907;
                                  }

                                  if (*(v322 + 104))
                                  {
                                    v406 = *(v322 + 130);
                                    if (*(v322 + 108))
                                    {
                                      v407 = &sUnicastAssist_MulticastCount;
                                      v408 = &sNonUnicastAssist_MulticastCount;
                                    }

                                    else
                                    {
                                      v415 = mDNSAddrIsDNSMulticast(v881);
                                      v407 = &sUnicastAssist_MulticastCount;
                                      if (!v415)
                                      {
                                        v407 = &sUnicastAssist_UnicastCount;
                                      }

                                      v408 = &sNonUnicastAssist_MulticastCount;
                                      if (!v415)
                                      {
                                        v408 = &sNonUnicastAssist_UnicastCount;
                                      }
                                    }

                                    if (v406 != 1)
                                    {
                                      v407 = v408;
                                    }

                                    ++*v407;
                                  }

                                  v416 = *(v322 + 12);
                                  if (v416 != 47)
                                  {
                                    v417 = *(v322 + 32);
                                    if (mDNS_AddressIsLocalSubnet(v916, v417, v880))
                                    {
                                      unicast_assist_addr_refresh(*(v322 + 40), *(v322 + 24), v416, *(v322 + 8), v880, v417);
                                    }
                                  }

LABEL_907:
                                  v374 = 0;
                                  *(v322 + 130) = 0;
                                  v29 = v930;
                                  v104 = objecta;
                                  v373 = v865;
LABEL_793:
                                  v864 = v373;
                                  if (!v917 && *(v322 + 16) && v884 != 100 && v895 != 100)
                                  {
                                    *(v322 + 128) = 1;
                                    v938[v884] = v322;
                                    if (v895)
                                    {
                                      v375 = v937;
                                      v376 = v895;
                                      while (!RecordInTheRRSet(v322 + 8, v375))
                                      {
                                        v375 += 3;
                                        if (!--v376)
                                        {
                                          goto LABEL_807;
                                        }
                                      }

                                      v378 = *(v375 + 3) + 1;
                                    }

                                    else
                                    {
LABEL_807:
                                      v375 = &v937[3 * v895];
                                      *v375 = *(v322 + 40);
                                      *(v375 + 2) = *(v322 + 24);
                                      v377 = *(v322 + 12);
                                      if (v377 == 46)
                                      {
                                        LOWORD(v377) = resource_record_as_rrsig_get_covered_type(v322 + 8);
                                      }

                                      ++v895;
                                      *(v375 + 8) = v377;
                                      *(v375 + 3) = 0;
                                      v378 = 1;
                                      *(v375 + 18) = 0;
                                    }

                                    v29 = v930;
                                    v103 = v873;
                                    ++v884;
                                    *(v375 + 3) = v378;
                                    *(v375 + 18) = v374;
                                    v104 = objecta;
                                  }

                                  goto LABEL_794;
                                }

                                v409 = mDNSLogCategory_Default;
                                if (mDNS_SensitiveLoggingEnableCount)
                                {
                                  v410 = mDNSLogCategory_Default == mDNSLogCategory_State;
                                }

                                else
                                {
                                  v410 = 1;
                                }

                                if (v410)
                                {
                                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_890;
                                  }
                                }

                                else
                                {
                                  v409 = mDNSLogCategory_Default_redacted;
                                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_890:
                                    v412 = *(v322 + 16);
                                    GetRRDisplayString_rdb((v322 + 8), (*(v322 + 48) + 4), v886);
                                    *v981 = 67109635;
                                    *&v981[4] = v412;
                                    *&v981[8] = 2160;
                                    *&v981[10] = 1752392040;
                                    *&v981[18] = 2085;
                                    *&v981[20] = v916 + 47032;
                                    _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: rescuing RR with new TTL %u: %{sensitive, mask.hash}s", v981, 0x1Cu);
                                  }
                                }

                                v413 = *(v322 + 64);
                                v104 = objecta;
                                v373 = v864;
                                if (v413 && !*(v413 + 32) && *(v322 + 96))
                                {
                                  v414 = *(v916 + 64);
                                  if (v414 <= 1)
                                  {
                                    v414 = 1;
                                  }

                                  *(v916 + 160) = v414;
                                }

                                goto LABEL_860;
                              }

                              v373 = v864;
                              if (*(v322 + 109))
                              {
                                v384 = dword_10016D258 + 939524096;
                              }

                              else
                              {
                                v384 = *(v322 + 80) + 1000 * *(v322 + 16);
                              }

                              if (v384 - *(v916 + 64) < 1001)
                              {
                                goto LABEL_869;
                              }

                              if (*(v322 + 12) == 12)
                              {
                                v385 = *(v322 + 48);
                                v386 = mDNS_DomainNameFNV1aHash(*(v322 + 40));
                                v387 = mDNS_DomainNameFNV1aHash((v385 + 4));
                              }

                              else
                              {
                                v386 = mDNS_DomainNameFNV1aHash(*(v322 + 40));
                                v387 = 0;
                              }

                              *&v955[8] = 0;
                              *v955 = 0;
                              gettimeofday(v955, 0);
                              v393 = mDNSPlatformInterfaceIndexfromInterfaceID(v916, v25, 1, v388, v389, v390, v391, v392);
                              v394 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_848;
                                }
                              }

                              else
                              {
                                v394 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_848:
                                  v395 = *(v322 + 12);
                                  *v981 = 67111171;
                                  *&v981[4] = v386;
                                  *&v981[8] = 1024;
                                  *&v981[10] = v395;
                                  *&v981[14] = 1040;
                                  *&v981[16] = 16;
                                  *&v981[20] = 2098;
                                  *&v981[22] = v955;
                                  *&v981[30] = 1024;
                                  *&v981[32] = v393;
                                  *&v981[36] = 2160;
                                  *&v981[38] = 1752392040;
                                  *&v981[46] = 1045;
                                  *&v981[48] = 20;
                                  *&v981[52] = 2101;
                                  *&v981[54] = v322 + 132;
                                  *&v981[62] = 1024;
                                  *&v981[64] = v387;
                                  _os_log_impl(&_mh_execute_header, v394, OS_LOG_TYPE_DEFAULT, "Received Goodbye packet for cached record -- name hash: %x, type: %{mdns:rrtype}d, last time received: %{public, timeval}.*P, interface index: %u, source address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, name hash if PTR: %x", v981, 0x44u);
                                }
                              }

                              *(v322 + 16) = 1;
                              *(v322 + 80) = *(v916 + 64);
                              *(v322 + 108) = 4;
                              SetNextCacheCheckTimeForRecord(v916, v322);
                              v29 = v930;
                              v104 = objecta;
                              v103 = v873;
                              goto LABEL_868;
                            }

                            *(v322 + 16) = 0;
                            *(v322 + 80) = *(v916 + 64);
                            *(v322 + 108) = 4;
                            SetNextCacheCheckTimeForRecord(v916, v322);
                            v352 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_740;
                              }
                            }

                            else
                            {
                              v352 = mDNSLogCategory_Default_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_740:
                                GetRRDisplayString_rdb((v322 + 8), (*(v322 + 48) + 4), v886);
                                *v981 = 141558275;
                                *&v981[4] = 1752392040;
                                *&v981[12] = 2085;
                                *&v981[14] = v916 + 47032;
                                _os_log_impl(&_mh_execute_header, v352, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change old: %{sensitive, mask.hash}s", v981, 0x16u);
                              }
                            }

                            v353 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_746;
                              }
                            }

                            else
                            {
                              v353 = mDNSLogCategory_Default_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_746:
                                GetRRDisplayString_rdb((v916 + 37920), (*(v916 + 37960) + 4), v886);
                                *v981 = 141558275;
                                *&v981[4] = 1752392040;
                                *&v981[12] = 2085;
                                *&v981[14] = v916 + 47032;
                                _os_log_impl(&_mh_execute_header, v353, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change new: %{sensitive, mask.hash}s", v981, 0x16u);
                              }
                            }

                            v354 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_770;
                              }

                              if (*(v322 + 96))
                              {
                                v358 = *(v322 + 16);
                                v356 = v916 + 4264;
                                if (*(v322 + 108) > 3u)
                                {
                                  if (v358 <= 0xA)
                                  {
                                    if (v358)
                                    {
                                      v357 = 100;
                                    }

                                    else
                                    {
                                      v357 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v357 = 1000;
                                  }
                                }

                                else
                                {
                                  v357 = (1000 * v358) / 50;
                                }
                              }

                              else
                              {
                                v357 = 60000;
                                v356 = v916 + 4264;
                              }
                            }

                            else
                            {
                              v354 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_770;
                              }

                              if (*(v322 + 96))
                              {
                                v355 = *(v322 + 16);
                                v356 = v916 + 4264;
                                if (*(v322 + 108) > 3u)
                                {
                                  if (v355 <= 0xA)
                                  {
                                    if (v355)
                                    {
                                      v357 = 100;
                                    }

                                    else
                                    {
                                      v357 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v357 = 1000;
                                  }
                                }

                                else
                                {
                                  v357 = (1000 * v355) / 50;
                                }
                              }

                              else
                              {
                                v357 = 60000;
                                v356 = v916 + 4264;
                              }
                            }

                            v359 = *(v916 + 64);
                            v360 = v357 + *(v322 + 88) - v359;
                            v361 = *(v356 + 4 * v321) - v359;
                            v362 = *(v916 + 88) - v359;
                            *v981 = 67109888;
                            *&v981[4] = v360;
                            *&v981[8] = 1024;
                            *&v981[10] = v321;
                            *&v981[14] = 1024;
                            *&v981[16] = v361;
                            *&v981[20] = 1024;
                            *&v981[22] = v362;
                            _os_log_impl(&_mh_execute_header, v354, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change in %d slot %3u in %d %d", v981, 0x1Au);
                            goto LABEL_770;
                          }

                          v333 = *(v322 + 12);
                          if (v333 == 5 && *(v322 + 8) != 240 && *(v322 + 84) && *(v916 + 37926) == *(v322 + 14))
                          {
                            goto LABEL_867;
                          }

                          if (resource_records_have_same_dnssec_rr_category(*(v916 + 37976), *(v322 + 64)))
                          {
                            v334 = *(v916 + 37924);
                            if ((v334 == 5 || v333 == 5) && *(v322 + 16) && v334 != v333)
                            {
                              v104 = objecta;
                              if (resource_record_as_rrsig_get_covered_type(v883) == 5)
                              {
                                goto LABEL_679;
                              }

                              if (resource_record_as_rrsig_get_covered_type(v322 + 8) == 5)
                              {
                                goto LABEL_679;
                              }

                              v335 = *(v916 + 37976);
                              if (v335)
                              {
                                if (*v883 == 240 && !*(v335 + 32) && (*(v335 + 40) & 1) == 0)
                                {
                                  v336 = *(v335 + 48);
                                  if (v336)
                                  {
                                    if (*(v336 + 16) == 5)
                                    {
                                      goto LABEL_679;
                                    }
                                  }
                                }
                              }

                              v337 = *(v322 + 64);
                              if (v337)
                              {
                                if (*(v322 + 8) == 240 && !*(v337 + 32) && (*(v337 + 40) & 1) == 0)
                                {
                                  v338 = *(v337 + 48);
                                  if (v338)
                                  {
                                    if (*(v338 + 16) == 5)
                                    {
                                      goto LABEL_679;
                                    }
                                  }
                                }
                              }

                              v339 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  v347 = *(v322 + 10);
                                  v348 = "ghost";
                                  if (v347 == 1)
                                  {
                                    v348 = "immortal";
                                  }

                                  v44 = v347 == 0;
                                  v349 = "mortal";
                                  if (!v44)
                                  {
                                    v349 = v348;
                                  }

                                  v847 = v349;
                                  v848 = v323;
                                  v343 = v916 + 47032;
                                  GetRRDisplayString_rdb((v322 + 8), (*(v322 + 48) + 4), v886);
                                  v846 = DNSTypeName(*(v322 + 12));
                                  if (*(v322 + 8) == 240)
                                  {
                                    v344 = ", Negative";
                                  }

                                  else
                                  {
                                    v344 = "";
                                  }

                                  v345 = DNSTypeName(*(v916 + 37924));
                                  if (*v883 == 240)
                                  {
                                    v346 = ", Negative";
                                  }

                                  else
                                  {
                                    v346 = "";
                                  }

LABEL_721:
                                  *v981 = 136447747;
                                  *&v981[4] = v847;
                                  v104 = objecta;
                                  *&v981[12] = 2160;
                                  *&v981[14] = 1752392040;
                                  *&v981[22] = 2085;
                                  *&v981[24] = v343;
                                  v323 = v848;
                                  *&v981[32] = 2082;
                                  *&v981[34] = v846;
                                  v103 = v873;
                                  *&v981[42] = 2082;
                                  *&v981[44] = v344;
                                  v23 = v898;
                                  *&v981[52] = 2082;
                                  *&v981[54] = v345;
                                  *&v981[62] = 2082;
                                  *&v981[64] = v346;
                                  _os_log_impl(&_mh_execute_header, v339, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding (%{public}s) %{sensitive, mask.hash}s rrtype change from (%{public}s%{public}s) to (%{public}s%{public}s)", v981, 0x48u);
                                }
                              }

                              else
                              {
                                v339 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  v340 = *(v322 + 10);
                                  v341 = "ghost";
                                  if (v340 == 1)
                                  {
                                    v341 = "immortal";
                                  }

                                  v44 = v340 == 0;
                                  v342 = "mortal";
                                  if (!v44)
                                  {
                                    v342 = v341;
                                  }

                                  v847 = v342;
                                  v848 = v323;
                                  v343 = v916 + 47032;
                                  GetRRDisplayString_rdb((v322 + 8), (*(v322 + 48) + 4), v886);
                                  v846 = DNSTypeName(*(v322 + 12));
                                  if (*(v322 + 8) == 240)
                                  {
                                    v344 = ", Negative";
                                  }

                                  else
                                  {
                                    v344 = "";
                                  }

                                  v345 = DNSTypeName(*(v916 + 37924));
                                  if (*v883 == 240)
                                  {
                                    v346 = ", Negative";
                                  }

                                  else
                                  {
                                    v346 = "";
                                  }

                                  goto LABEL_721;
                                }
                              }

                              mDNS_PurgeCacheResourceRecord(v916, v322);
LABEL_770:
                              v29 = v930;
                              goto LABEL_679;
                            }
                          }

                          v104 = objecta;
LABEL_679:
                          v322 = *v322;
                          if (!v322)
                          {
                            v363 = v103;
                            goto LABEL_773;
                          }
                        }
                      }

                      v363 = v103;
                      v29 = v930;
LABEL_773:
                      v364 = v869;
                    }

                    else
                    {
                      v363 = v103;
                      v364 = 0;
                      v29 = v930;
                    }

                    if (*(v916 + 37928))
                    {
                      v365 = v321;
                      v366 = *v883;
                      if ((*v883 & 0x10) != 0)
                      {
                        v367 = v916;
                        v369 = *(v916 + 64) + 1000;
                        v368 = v369 <= 1 ? 1 : v369;
                      }

                      else
                      {
                        v367 = v916;
                        v368 = CheckForSoonToExpireRecordsEx(v916, *(v916 + 37952), *(v916 + 37936), -1, -1, 0);
                      }

                      NewCacheEntry = CreateNewCacheEntryEx(v367, v365, v364, v368, 1, v880, v858, v318);
                      if (NewCacheEntry)
                      {
                        v322 = NewCacheEntry;
                        v371 = v23[1];
                        *(NewCacheEntry + 110) = v371;
                        *(NewCacheEntry + 9) = HIBYTE(v371) & 0xF;
                        if ((v366 & 0x10) != 0)
                        {
                          *v864 = NewCacheEntry;
                          v374 = 1;
                          *(NewCacheEntry + 112) = 1;
                          v373 = (NewCacheEntry + 112);
                        }

                        else
                        {
                          v372 = *(NewCacheEntry + 84);
                          v373 = v864;
                          if (v372)
                          {
                            if (*(v855 + 4 * v365) - v372 >= 1)
                            {
                              *(v855 + 4 * v365) = v372;
                            }

                            v103 = v363;
                            if (*(v916 + 88) - v372 >= 1)
                            {
                              *(v916 + 88) = v372;
                            }

                            v374 = 1;
                            goto LABEL_793;
                          }

                          v374 = 1;
                        }

                        v103 = v363;
                        goto LABEL_793;
                      }
                    }

                    v103 = v363;
LABEL_794:
                    v123 = (v916 + 37920);
LABEL_795:
                    *v123 = 0;
                    *(v123 + 51) = 0;
                    v131 = *(v123 + 7);
                    if (!v131)
                    {
                      goto LABEL_797;
                    }

LABEL_796:
                    ref_count_obj_release(v131);
                    *(v123 + 7) = 0;
                    goto LABEL_797;
                  }
                }

                else if (v888)
                {
                  v155 = *(v147 + 216);
                  if (v155)
                  {
                    if ((*(v916 + 64) - v155) < 0x7D0)
                    {
                      goto LABEL_279;
                    }
                  }
                }
              }
            }
          }
        }

        v147 = *(v147 + 8);
        if (!v147)
        {
          goto LABEL_286;
        }
      }
    }

    if (v126 != 41)
    {
      if (v126 == 250)
      {
        goto LABEL_794;
      }

      goto LABEL_217;
    }

    v127 = *(v916 + 37960);
    v128 = v127 + 4 + *(v916 + 37932);
    if (v127 + 4 < v128)
    {
      v129 = v127 + 8;
      do
      {
        if (*(v129 - 4) == 4 && !*v129 && *(v129 + 2))
        {
          ClearProxyRecords(v916, v129, *(v916 + 12624));
          ClearProxyRecords(v916, v129, *(v916 + 12616));
        }

        v130 = v129 + 20;
        v129 += 24;
      }

      while (v130 < v128);
    }

    v123 = (v916 + 37920);
    *v883 = 0;
    *(v916 + 38022) = 0;
    v131 = *(v916 + 37976);
    v104 = objecta;
    if (v131)
    {
      goto LABEL_796;
    }

LABEL_797:
    ++v102;
    v101 = v919;
    v67 = v928;
    v110 = v925;
    if (v102 < v910 && v925 < v919)
    {
      continue;
    }

    break;
  }

  object = v104;
  v100 = v875 == 0;
  v38 = v931;
LABEL_912:
  v922 = v100;
  v421 = v895;
  if (v38)
  {
    do
    {
      v422 = *v38;
      free(v38);
      v38 = v422;
    }

    while (v422);
    v931 = 0;
  }

  if (!v917)
  {
    if (v884 == 100 || v895 == 100)
    {
      v423 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_932;
        }
      }

      else
      {
        v423 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
        {
LABEL_932:
          *v981 = 67109376;
          *&v981[4] = v884;
          *&v981[8] = 1024;
          *&v981[10] = v895;
          _os_log_impl(&_mh_execute_header, v423, OS_LOG_TYPE_FAULT, "Too many records contained in a single response - cached records: %u, record set: %u", v981, 0xEu);
        }
      }
    }

    if (v884)
    {
      v427 = 0;
      while (1)
      {
        v428 = v938[v427];
        if (v421)
        {
          v429 = v937;
          v430 = v895;
          while (!RecordInTheRRSet(v428 + 8, v429))
          {
            v429 += 3;
            if (!--v430)
            {
              goto LABEL_939;
            }
          }

          v440 = *(v428 + 64);
          if (v440)
          {
            *(v440 + 24) = *(v429 + 3);
            *(v440 + 36) = *(v429 + 18) != 0;
          }

          goto LABEL_967;
        }

LABEL_939:
        v431 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          v433 = *(v428 + 40);
          if (v433)
          {
            v434 = *(v428 + 40);
            while (1)
            {
              if (!v434 || (v435 = *v434, v435 > 0x3F))
              {
LABEL_951:
                v436 = 257;
                goto LABEL_966;
              }

              if (!*v434)
              {
                break;
              }

              v434 += v435 + 1;
              if (&v434[-v433] >= 256)
              {
                goto LABEL_951;
              }
            }

            v436 = (v434 - v433 + 1);
          }

          else
          {
            v436 = 0;
          }

LABEL_966:
          v441 = DNSTypeName(*(v428 + 12));
          *v981 = 141559043;
          *&v981[4] = 1752392040;
          *&v981[12] = 1040;
          *&v981[14] = v436;
          *&v981[18] = 2101;
          *&v981[20] = v433;
          *&v981[28] = 2160;
          *&v981[30] = 1752392040;
          *&v981[38] = 2085;
          *&v981[40] = v441;
          _os_log_impl(&_mh_execute_header, v431, OS_LOG_TYPE_FAULT, "Answer set counter not found for the cached record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{sensitive, mask.hash}s.", v981, 0x30u);
          v421 = v895;
        }

LABEL_967:
        if (++v427 == v884)
        {
          goto LABEL_968;
        }
      }

      v431 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_967;
      }

      v433 = *(v428 + 40);
      if (v433)
      {
        v438 = *(v428 + 40);
        while (1)
        {
          if (!v438 || (v439 = *v438, v439 > 0x3F))
          {
LABEL_959:
            v436 = 257;
            goto LABEL_966;
          }

          if (!*v438)
          {
            break;
          }

          v438 += v439 + 1;
          if (&v438[-v433] >= 256)
          {
            goto LABEL_959;
          }
        }

        v436 = (v438 - v433 + 1);
      }

      else
      {
        v436 = 0;
      }

      goto LABEL_966;
    }
  }

LABEL_968:
  if (v922)
  {
    v23 = v898;
    v419 = v919;
  }

  else
  {
    v419 = v919;
    v23 = v898;
    DumpPacket(0, 0, "N/A", v880, v878, v881, v852, v898, v919, a10);
  }

  v29 = v930;
  v420 = v916 + 37920;
LABEL_972:
  v896 = v421;
  *v420 = 0;
  *(v420 + 102) = 0;
  v442 = *(v420 + 56);
  if (v442)
  {
    ref_count_obj_release(v442);
    *(v420 + 56) = 0;
  }

  v443 = v932;
  v444 = v928;
  if (v932 == 1)
  {
    goto LABEL_1090;
  }

  v926 = (v916 + 47032);
  v911 = bswap32(v878) >> 16;
  v445 = v916 + 4264;
  while (2)
  {
    v446 = *(v443 + 24);
    v447 = CacheGroupForName(v916, v446, *(v443 + 40));
    v932 = *(v932 + 112);
    *(v443 + 112) = 0;
    if (!v447 || ((v454 = v447[2]) != 0 ? (v455 = v444 == 0) : (v455 = 0), !v455))
    {
      v456 = 0;
      goto LABEL_1074;
    }

    v457 = 0;
    while (2)
    {
      if (!*(v454 + 109) && SameNameCacheRecordsMatchInSourceTypeClass(v443, v454))
      {
        if (resource_records_have_same_dnssec_rr_category(*(v443 + 64), *(v454 + 64)))
        {
          v458 = *(v443 + 12);
          if (v458 == *(v454 + 12))
          {
            if (v458 != 46 || (covered_type = resource_record_as_rrsig_get_covered_type(v443 + 8), v44 = covered_type == resource_record_as_rrsig_get_covered_type(v454 + 8), v29 = v930, v44))
            {
              if (!*(v443 + 10) && *(v454 + 10))
              {
                *(v443 + 10) = 1;
              }

              v460 = *(v916 + 64);
              v461 = *(v454 + 80);
              v462 = v460 - v461;
              if ((v460 - v461) <= 999)
              {
                v463 = *(v454 + 109) ? dword_10016D258 + 939524096 : v461 + 1000 * *(v454 + 16);
                if ((v463 - v460) >= 1001)
                {
                  v464 = *(v454 + 16);
                  v465 = *(v443 + 16);
                  if (v464 == v465 || v465 < 2)
                  {
                    goto LABEL_1063;
                  }

                  if (v464 == 240 && v465 == 60)
                  {
                    if (*(v454 + 12) == 16)
                    {
                      goto LABEL_1062;
                    }
                  }

                  else if (v464 == 120 && v465 == 4500)
                  {
                    if (!v917 || *(v454 + 12) == 33)
                    {
                      goto LABEL_1062;
                    }

LABEL_1043:
                    if (mDNSCoreReceiveResponse_lastLogWindowStartTime && v460 - mDNSCoreReceiveResponse_lastLogWindowStartTime < 0x36EE80)
                    {
                      v481 = mDNSCoreReceiveResponse_count;
                    }

                    else
                    {
                      v481 = 0;
                      if (v460 <= 1)
                      {
                        v482 = 1;
                      }

                      else
                      {
                        v482 = *(v916 + 64);
                      }

                      mDNSCoreReceiveResponse_lastLogWindowStartTime = v482;
                    }

                    mDNSCoreReceiveResponse_count = v481 + 1;
                    v483 = mDNSLogCategory_Default;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                    {
                      if (v481 <= 0x63)
                      {
                        v484 = OS_LOG_TYPE_INFO;
                      }

                      else
                      {
                        v484 = OS_LOG_TYPE_DEBUG;
                      }

                      if (!os_log_type_enabled(mDNSLogCategory_Default, v484))
                      {
                        goto LABEL_1062;
                      }
                    }

                    else
                    {
                      v483 = mDNSLogCategory_Default_redacted;
                      if (v481 <= 0x63)
                      {
                        v484 = OS_LOG_TYPE_INFO;
                      }

                      else
                      {
                        v484 = OS_LOG_TYPE_DEBUG;
                      }

                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, v484))
                      {
                        goto LABEL_1062;
                      }
                    }

                    GetRRDisplayString_rdb((v454 + 8), (*(v454 + 48) + 4), v926);
                    *v981 = 67110915;
                    *&v981[4] = v464;
                    *&v981[8] = 1024;
                    *&v981[10] = v465;
                    *&v981[14] = 2160;
                    *&v981[16] = 1752392040;
                    *&v981[24] = 1045;
                    *&v981[26] = 20;
                    *&v981[30] = 2101;
                    *&v981[32] = v880;
                    *&v981[40] = 1024;
                    *&v981[42] = v911;
                    *&v981[46] = 2160;
                    *&v981[48] = 1752392040;
                    *&v981[56] = 2085;
                    *&v981[58] = v916 + 47032;
                    _os_log_impl(&_mh_execute_header, v483, v484, "Correcting TTL from %4u to %4u from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%u for records %{sensitive, mask.hash}s", v981, 0x42u);
LABEL_1062:
                    *(v454 + 16) = *(v443 + 16);
                    v460 = *(v916 + 64);
                    v29 = v930;
LABEL_1063:
                    *(v454 + 80) = v460;
                    SetNextCacheCheckTimeForRecord(v916, v454);
                    v419 = v919;
LABEL_1073:
                    v444 = v928;
                    goto LABEL_984;
                  }

                  if (!v917)
                  {
                    goto LABEL_1062;
                  }

                  goto LABEL_1043;
                }
              }

              v466 = *(v454 + 32);
              if (v466)
              {
                if (AWDLInterfaceID != v466 && WiFiAwareInterfaceID != v466)
                {
                  if (v460 == v461 && *(v454 + 16) == 1 && *(v454 + 108) == 4)
                  {
                    v444 = v928;
                    if (mDNS_LoggingEnabled == 1)
                    {
                      v467 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v454 + 8), (*(v454 + 48) + 4), v926);
                      v468 = v467;
                      v29 = v930;
                      LogMsgWithLevel(v468, OS_LOG_TYPE_DEFAULT, "Cache flush for DE record %s", v469, v470, v471, v472, v473, v926);
                    }

                    *(v454 + 16) = 0;
                  }

                  else
                  {
                    v444 = v928;
                    if (*(v454 + 109))
                    {
                      v480 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v480 = v461 + 1000 * *(v454 + 16);
                    }

                    if ((v480 - v460) >= 1001)
                    {
                      *(v454 + 16) = 1;
                      *(v454 + 108) = 4;
                      *(v454 + 80) = v460 - 1;
                    }
                  }

                  SetNextCacheCheckTimeForRecord(v916, v454);
                  v419 = v919;
                  goto LABEL_984;
                }

                v478 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(v454 + 109))
                    {
                      v479 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v479 = v461 + 1000 * *(v454 + 16);
                    }

                    goto LABEL_1066;
                  }
                }

                else
                {
                  v478 = mDNSLogCategory_Default_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(v454 + 109))
                    {
                      v479 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v479 = v461 + 1000 * *(v454 + 16);
                    }

LABEL_1066:
                    v485 = v479 - v460;
                    GetRRDisplayString_rdb((v454 + 8), (*(v454 + 48) + 4), v926);
                    *v981 = 67109891;
                    *&v981[4] = v462;
                    *&v981[8] = 1024;
                    *&v981[10] = v485;
                    *&v981[14] = 2160;
                    *&v981[16] = 1752392040;
                    *&v981[24] = 2085;
                    *&v981[26] = v916 + 47032;
                    _os_log_impl(&_mh_execute_header, v478, OS_LOG_TYPE_DEBUG, "Fast flushing AWDL cache record -- age: %d ticks, expire: %d ticks, record: %{sensitive, mask.hash}s", v981, 0x22u);
                  }
                }

                mDNS_PurgeCacheResourceRecord(v916, v454);
                v419 = v919;
LABEL_1072:
                v29 = v930;
                goto LABEL_1073;
              }

              v419 = v919;
              if (!v917 && *(v454 + 8) != 240)
              {
                if (v896)
                {
                  v474 = v937;
                  v475 = v896;
                  while (!RecordInTheRRSet(v454 + 8, v474))
                  {
                    v474 += 3;
                    if (!--v475)
                    {
                      goto LABEL_1021;
                    }
                  }

                  v476 = *(v454 + 64);
                  if (!v476)
                  {
                    goto LABEL_1071;
                  }

                  *(v476 + 24) = *(v474 + 3);
                  v477 = *(v474 + 18) != 0;
                  goto LABEL_1070;
                }

LABEL_1021:
                v476 = *(v454 + 64);
                if (v476)
                {
                  *(v476 + 24) = 0;
                  v477 = 1;
LABEL_1070:
                  *(v476 + 36) = v477;
                }
              }

LABEL_1071:
              mDNS_PurgeCacheResourceRecord(v916, v454);
              v457 = 1;
              goto LABEL_1072;
            }
          }
        }
      }

LABEL_984:
      v454 = *v454;
      if (v454)
      {
        continue;
      }

      break;
    }

    v456 = v457 != 0;
    v23 = v898;
LABEL_1074:
    if (*(v443 + 84))
    {
      if (*(v443 + 32))
      {
        v486 = CheckForSoonToExpireRecordsEx(v916, *(v443 + 40), *(v443 + 24), -1, -1, 0);
        *(v443 + 84) = v486;
        if (!v486)
        {
LABEL_1088:
          CacheRecordDeferredAdd(v916, v443, v448, v449, v450, v451, v452, v453);
          goto LABEL_1089;
        }
      }

      else
      {
        if (((v456 | v903) & 1) == 0)
        {
          *(v443 + 84) = 0;
          goto LABEL_1088;
        }

        if (*(v916 + 64) <= 1u)
        {
          v486 = 1;
        }

        else
        {
          v486 = *(v916 + 64);
        }

        *(v443 + 84) = v486;
      }

      if (*(v445 + 4 * (v446 % 0x1F3)) - v486 >= 1)
      {
        *(v445 + 4 * (v446 % 0x1F3)) = v486;
      }

      if (*(v916 + 88) - v486 >= 1)
      {
        *(v916 + 88) = v486;
      }
    }

LABEL_1089:
    v443 = v932;
    if (v932 != 1)
    {
      continue;
    }

    break;
  }

LABEL_1090:
  if (!v917 && v884)
  {
    v487 = v884;
    v488 = v938;
    do
    {
      v489 = *v488++;
      *(v489 + 128) = 0;
      --v487;
    }

    while (v487);
  }

  v490 = v916;
  if (v444)
  {
    goto LABEL_1095;
  }

  v933 = 0;
  v491 = IsResponseMDNSEquivalent(v29, a9);
  v492 = 0;
  v493 = a10;
  if (v29 && !v491)
  {
    v494 = *(*(v29 + 96) + 70);
    if ((v494 & 4) != 0)
    {
      v492 = (v494 >> 1) & 1;
    }

    else
    {
      v492 = 0;
    }
  }

  memset(v980, 0, sizeof(v980));
  memset(v979, 0, sizeof(v979));
  memset(v978, 0, sizeof(v978));
  memset(v977, 0, sizeof(v977));
  if (v23[2])
  {
    Question = (v23 + 6);
    if ((v23 + 6) < v419)
    {
      v889 = v491;
      v496 = 0;
      v927 = 0;
      v918 = 0;
      v497 = v419;
      v906 = 0;
      LOBYTE(v885) = 0;
      LOBYTE(v887) = 0;
      v897 = 0;
      v851 = v881 == 0;
      v882 = (v916 + 47032);
      v929 = v492;
      v870 = v492 ^ 1;
      v498 = &loc_100009418;
      v891 = v916 + 4264;
      while (1)
      {
        bzero(v970, 0x2B8uLL);
        Question = getQuestion(v23, Question, v497, v493, v970);
        if (!Question)
        {
          goto LABEL_1890;
        }

        if (v29)
        {
          DNSQuestion = Querier_GetDNSQuestion(v29, 0);
          v874 = DNSQuestion == 0;
          v500 = v929;
          v923 = DNSQuestion;
          if (DNSQuestion)
          {
            v856 = bswap32(*(DNSQuestion + 340)) >> 16;
          }

          else
          {
            v856 = 0;
          }

          v502 = v971;
          v857 = (*(*(v29 + 16) + 104))(v29);
          v863 = (*(*(v29 + 16) + 96))(v29);
        }

        else
        {
          v501 = ExpectingUnicastResponseForQuestion(*(v490 + 192), v852, *v23, v970, v851);
          v500 = v929;
          if (!v501)
          {
            goto LABEL_1890;
          }

          v857 = 0;
          v874 = 0;
          v863 = 0;
          v502 = v971;
          v923 = v501;
          v856 = bswap32(*(v501 + 340)) >> 16;
        }

        bzero(v955, 0xB00uLL);
        v854 = v496;
        v872 = Question;
        if (v500)
        {
          v503 = v976;
          do
          {
            if (!v503)
            {
              break;
            }

            v504 = *v503;
            if (v504 > 0x3F)
            {
              break;
            }

            if (!*v503)
            {
              v506 = v503 - v976 + 1;
              if (v506 <= 0x100u)
              {
                memcpy(v955, v976, v506);
              }

              break;
            }

            v503 += v504 + 1;
          }

          while (v503 - v976 <= 255);
          v507 = v23[3];
          if (v23[3] && (v508 = LocateAnswers(v23, v919)) != 0)
          {
            v509 = v508;
            bzero(v981, 0x2C00uLL);
            v510 = 0;
            v511 = 0;
            do
            {
              if (v509 >= v919 || v510 >= 0x16)
              {
                break;
              }

              v509 = GetLargeResourceRecord(mDNSStorage, v23, v509, v919, v493, 160, mDNSStorage + v498);
              v512 = *(mDNSStorage + &loc_100009420) != 240 && *(mDNSStorage + &loc_100009424) == 5;
              if (v512 && *qword_100176658 && !SameDomainNameBytes(qword_100176658, (qword_100176660 + 4)))
              {
                v513 = qword_100176658;
                do
                {
                  if (!v513)
                  {
                    break;
                  }

                  v514 = *v513;
                  if (v514 > 0x3F)
                  {
                    break;
                  }

                  if (!*v513)
                  {
                    v515 = v513 - qword_100176658 + 1;
                    if (v515 <= 0x100u)
                    {
                      memcpy(&v981[512 * v510], qword_100176658, v515);
                      goto LABEL_1145;
                    }

                    break;
                  }

                  v513 += v514 + 1;
                }

                while (&v513[-qword_100176658] <= 255);
                v981[512 * v510] = 0;
LABEL_1145:
                v516 = (qword_100176660 + 4);
                v517 = (qword_100176660 + 4);
                do
                {
                  if (!v517)
                  {
                    break;
                  }

                  v518 = *v517;
                  if (v518 > 0x3F)
                  {
                    break;
                  }

                  if (!*v517)
                  {
                    v519 = v517 - v516 + 1;
                    if (v519 <= 0x100u)
                    {
                      memcpy(&v988[512 * v510 + 31], v516, v519);
                      goto LABEL_1154;
                    }

                    break;
                  }

                  v517 += v518 + 1;
                }

                while (v517 - v516 <= 255);
                v988[512 * v510 + 31] = 0;
LABEL_1154:
                ++v510;
              }

              WORD4(xmmword_100176630) = 0;
              HIWORD(xmmword_100176690) = 0;
              if (xmmword_100176670)
              {
                ref_count_obj_release(xmmword_100176670);
                *&xmmword_100176670 = 0;
              }

              ++v511;
            }

            while (v511 != v507);
            v520 = 1;
            v521 = v976;
            v29 = v930;
            while (v520 != v510 + 1)
            {
              v522 = v981;
              v523 = v510;
              while (!*v522 || !SameDomainNameBytes(v521, v522))
              {
                v522 += 512;
                if (!--v523)
                {
                  v23 = v898;
LABEL_1178:
                  v29 = v930;
                  goto LABEL_1179;
                }
              }

              *v522 = 0;
              v521 = v522 + 256;
              v23 = v898;
              if (v522 == -256)
              {
                goto LABEL_1178;
              }

              v524 = v522 + 256;
              v29 = v930;
              do
              {
                if (!v524)
                {
                  break;
                }

                v525 = *v524;
                if (v525 > 0x3F)
                {
                  break;
                }

                if (!*v524)
                {
                  v526 = v524 - v521 + 1;
                  if (v526 <= 0x100u)
                  {
                    memcpy(&v955[256 * v520], v521, v526);
                    goto LABEL_1175;
                  }

                  break;
                }

                v524 += v525 + 1;
              }

              while (v524 - v521 <= 255);
              v955[256 * v520] = 0;
LABEL_1175:
              if (++v520 == 11)
              {
                goto LABEL_1179;
              }
            }

            LODWORD(v520) = v510 + 1;
LABEL_1179:
            v490 = v916;
            v500 = v929;
          }

          else
          {
            LODWORD(v520) = 1;
            v29 = v930;
          }

          v879 = v520;
          v505 = v955;
          v502 = DomainNameHashValue(v955);
        }

        else
        {
          v879 = 1;
          v505 = v976;
        }

        v527 = 0;
        v901 = 0;
        do
        {
LABEL_1182:
          v528 = CacheGroupForName(v490, v502, v505);
          v534 = v528;
          if (!v500)
          {
            v909 = 0;
            v954 = 0u;
            v953 = 0u;
            v952 = 0u;
            v951 = 0u;
            v950 = 0u;
            v949 = 0u;
            v948 = 0u;
            v947 = 0u;
            v946 = 0u;
            v945 = 0u;
            v944 = 0u;
            v943 = 0u;
            v942 = 0u;
            v941 = 0u;
            v893 = 1;
            v912 = 3601;
            v940 = 0u;
            __dst = 0u;
            if (!v528)
            {
              goto LABEL_1251;
            }

            goto LABEL_1224;
          }

          v535 = v23[3];
          v954 = 0u;
          v953 = 0u;
          v952 = 0u;
          v951 = 0u;
          v950 = 0u;
          v949 = 0u;
          v948 = 0u;
          v947 = 0u;
          v946 = 0u;
          v945 = 0u;
          v944 = 0u;
          v943 = 0u;
          v942 = 0u;
          v941 = 0u;
          v940 = 0u;
          __dst = 0u;
          if (!v535)
          {
            v909 = 0;
            v500 = 0;
            v893 = 1;
            v912 = 3601;
            if (!v528)
            {
              goto LABEL_1251;
            }

            goto LABEL_1224;
          }

          if (!v528)
          {
            goto LABEL_1249;
          }

          v536 = v528[2];
          if (!v536)
          {
            goto LABEL_1249;
          }

          v537 = 0;
          v909 = 0;
          v912 = 3601;
          do
          {
            if (v29)
            {
              v538 = *(v536 + 56);
              if (v538)
              {
                v538 = v538[3];
              }

              if (v538 != a9 || !Client_SameNameCacheRecordIsAnswer(v536, v29))
              {
                goto LABEL_1220;
              }
            }

            else if (!SameNameRecordAnswersQuestion((v536 + 8), 0, v923, v529, v530, v531, v532, v533))
            {
              goto LABEL_1220;
            }

            if (*(v536 + 8) != 240)
            {
              v912 = *(v536 + 16);
              v539 = *(v536 + 12);
              if (v539 == 46)
              {
                if (!resource_record_as_rrsig_covers_wildcard_rr(v536 + 8))
                {
                  goto LABEL_1249;
                }

                v540 = v536 + 8;
                if (v909)
                {
                  if (resource_record_as_rrsig_get_covered_type(v540) != v909)
                  {
                    goto LABEL_1249;
                  }

                  v541 = *(v536 + 40);
                  v542 = v541;
                  do
                  {
                    if (!v542)
                    {
                      break;
                    }

                    v543 = *v542;
                    if (v543 > 0x3F)
                    {
                      break;
                    }

                    if (!*v542)
                    {
                      goto LABEL_1216;
                    }

                    v542 += v543 + 1;
                  }

                  while (v542 - v541 <= 255);
                }

                else
                {
                  v909 = resource_record_as_rrsig_get_covered_type(v540);
                  v541 = *(v536 + 40);
                  v542 = v541;
                  do
                  {
                    if (!v542)
                    {
                      break;
                    }

                    v544 = *v542;
                    if (v544 > 0x3F)
                    {
                      break;
                    }

                    if (!*v542)
                    {
LABEL_1216:
                      v545 = v542 - v541 + 1;
                      if (v545 > 0x100u)
                      {
                        break;
                      }

                      memcpy(&__dst, v541, v545);
                      goto LABEL_1219;
                    }

                    v542 += v544 + 1;
                  }

                  while (v542 - v541 <= 255);
                }

                LOBYTE(__dst) = 0;
LABEL_1219:
                v537 = 1;
              }

              else if (v909)
              {
                if (v539 != v909)
                {
                  goto LABEL_1249;
                }
              }

              else
              {
                v909 = *(v536 + 12);
              }
            }

LABEL_1220:
            v536 = *v536;
          }

          while (v536);
          if (v537)
          {
            v893 = 0;
            v500 = 1;
            goto LABEL_1250;
          }

LABEL_1249:
          v912 = 0;
          v909 = 0;
          v500 = 0;
          v893 = 1;
LABEL_1250:
          v23 = v898;
          if (!v534)
          {
LABEL_1251:
            v551 = 1;
            goto LABEL_1256;
          }

LABEL_1224:
          v546 = v534[2];
          if (!v546)
          {
LABEL_1248:
            v551 = 1;
            goto LABEL_1255;
          }

          while (2)
          {
            v547 = v527;
            if (!v29)
            {
              if (SameNameRecordAnswersQuestion((v546 + 8), 0, v923, v529, v530, v531, v532, v533))
              {
                goto LABEL_1233;
              }

              goto LABEL_1246;
            }

            v548 = *(v546 + 56);
            if (v548)
            {
              v548 = v548[3];
            }

            if (v548 != a9 || !Client_SameNameCacheRecordIsAnswer(v546, v29))
            {
              goto LABEL_1246;
            }

LABEL_1233:
            if (*(v546 + 109))
            {
              v549 = dword_10016D258 + 939524096;
            }

            else
            {
              v549 = *(v546 + 80) + 1000 * *(v546 + 16);
            }

            if (((v549 - *(v490 + 64) > 0) & ~v500) == 0)
            {
              v527 = v546;
              if (*(v546 + 8) != 240)
              {
                if (*(v546 + 10) == 2)
                {
                  v550 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_1244;
                    }
                  }

                  else
                  {
                    v550 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_1244:
                      GetRRDisplayString_rdb((v546 + 8), (*(v546 + 48) + 4), v882);
                      *v981 = 141558275;
                      *&v981[4] = 1752392040;
                      *&v981[12] = 2085;
                      *&v981[14] = v916 + 47032;
                      _os_log_impl(&_mh_execute_header, v550, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveNoUnicastAnswers: Removing expired record%{sensitive, mask.hash}s", v981, 0x16u);
                    }
                  }

                  v490 = v916;
                  mDNS_PurgeCacheResourceRecord(v916, v546);
                }

LABEL_1246:
                v527 = v547;
              }

              v546 = *v546;
              v29 = v930;
              if (!v546)
              {
                goto LABEL_1248;
              }

              continue;
            }

            break;
          }

          v551 = 0;
LABEL_1255:
          v23 = v898;
LABEL_1256:
          v552 = v918;
          if (v493 || v974 == 6)
          {
            goto LABEL_1944;
          }

          v553 = IsLocalDomain(v976);
          v554 = v929;
          if (!v553)
          {
            v554 = 1;
          }

          if (v554)
          {
LABEL_1944:
            if (v551)
            {
              if (v974 == 6)
              {
                v555 = SameDomainNameBytes(v976, "\x05local");
                v556 = v870;
                if (!v555)
                {
                  v556 = 0;
                }

                v557 = (v556 & 1) != 0 ? 86400 : 60;
              }

              else
              {
                v557 = 60;
              }

              if (v23[4])
              {
                Authorities = LocateAuthorities(v23, v919);
                if (Authorities)
                {
                  v872 = GetLargeResourceRecord(v490, v23, Authorities, v919, v493, 160, v490 + v498);
                  if (!v872)
                  {
                    goto LABEL_1349;
                  }

                  v29 = v930;
                  if (*v883 == 240 || *(v916 + 37924) != 6)
                  {
                    goto LABEL_1295;
                  }

                  v570 = CacheGroupForName(v490, *(v916 + 37936), *(v916 + 37952));
                  v572 = *(*(v916 + 37960) + 532);
                  if (v572 > *(v916 + 37928) && **(v916 + 37952))
                  {
                    v572 = *(v916 + 37928);
                  }

                  if (v557 <= v572)
                  {
                    v557 = v572;
                  }

                  v927 = CreateNewCacheEntryEx(v490, *(v916 + 37936) % 0x1F3u, v570, 1, 0, 0, 0, v571);
                  if (!v874)
                  {
                    if (*(v923 + 653))
                    {
                      goto LABEL_1295;
                    }
                  }

                  v573 = v929;
                  if (v974 != 6)
                  {
                    v573 = 1;
                  }

                  if (v573)
                  {
LABEL_1295:
                    v574 = 0;
                    goto LABEL_1351;
                  }

                  v585 = v976[0];
                  if (v976[0])
                  {
                    v586 = 0;
                    v587 = v976;
                    do
                    {
                      ++v586;
                      v588 = &v587[v585];
                      v589 = v588[1];
                      v587 = v588 + 1;
                      v585 = v589;
                    }

                    while (v589);
                  }

                  else
                  {
                    v586 = 0;
                  }

                  v593 = *(v916 + 37952);
                  v594 = *v593;
                  if (*v593)
                  {
                    v595 = 0;
                    v596 = *(v916 + 37952);
                    do
                    {
                      ++v595;
                      v597 = v596 + v594;
                      v598 = *(v597 + 1);
                      v596 = v597 + 1;
                      v594 = v598;
                    }

                    while (v598);
                  }

                  else
                  {
                    v595 = 0;
                  }

                  v599 = v586 - 1 - v595;
                  if (v586 - 1 > v595)
                  {
                    v600 = v586 - v595;
                    v601 = v976;
                    if (v600 >= 1)
                    {
                      v602 = v600 + 1;
                      v601 = v976;
                      do
                      {
                        if (!*v601)
                        {
                          break;
                        }

                        v601 += *v601 + 1;
                        --v602;
                      }

                      while (v602 > 1);
                    }

                    v574 = SameDomainNameBytes(v601, v593) ? v599 : 0;
                  }

                  else
                  {
LABEL_1349:
                    v574 = 0;
                  }

                  v29 = v930;
LABEL_1351:
                  *v883 = 0;
                  *(v916 + 38022) = 0;
                  v603 = *(v916 + 37976);
                  if (v603)
                  {
                    ref_count_obj_release(v603);
                    *(v916 + 37976) = 0;
                  }

                  v552 = v918;
                }

                else
                {
                  v574 = 0;
                  v872 = 0;
                  v29 = v930;
                }
              }

              else
              {
                v574 = 0;
              }

              if (v527)
              {
                if (v557 <= 2 * *(v527 + 16))
                {
                  v604 = 2 * *(v527 + 16);
                }

                else
                {
                  v604 = v557;
                }

                if (v604 >= 0xE10)
                {
                  v557 = 3600;
                }

                else
                {
                  v557 = v604;
                }
              }

              v605 = v557 >= 0x189374 ? 1610612 : v557;
              v606 = v605 + (v605 >> 2) + 2;
              v607 = v606 <= 0xF ? 15 : v606;
              v608 = v929;
              v609 = v906 ? 0 : v929;
              if (v609 == 1)
              {
                v876 = v607;
                v933 = 0;
                v904 = v23[4];
                if (v23[4])
                {
                  v610 = LocateAuthorities(v23, v919);
                  v897 = 0;
                  v907 = 3601;
                  LOBYTE(v885) = 0;
                  if (v610)
                  {
                    v611 = v610;
                    LOBYTE(v887) = 0;
                    if (v610 < v919)
                    {
                      v612 = v919;
                      v897 = 0;
                      v885 = 0;
                      v887 = 0;
                      v613 = 0;
                      v934 = 0;
                      v907 = 3601;
                      while (1)
                      {
                        v614 = GetLargeResourceRecord(mDNSStorage, v23, v611, v612, a10, 160, mDNSStorage + &loc_100009418);
                        v611 = v614;
                        if (*(mDNSStorage + &loc_100009420) == 240)
                        {
                          goto LABEL_1376;
                        }

                        v616 = xmmword_100176640;
                        if (xmmword_100176640 == 3601)
                        {
                          v617 = 3600;
                        }

                        else
                        {
                          v617 = xmmword_100176640;
                        }

                        if (v907 < xmmword_100176640)
                        {
                          v616 = v907;
                        }

                        if (v907 == 3601)
                        {
                          v616 = v617;
                        }

                        v907 = v616;
                        if (WORD6(xmmword_100176630) <= 0x2Eu)
                        {
                          break;
                        }

                        v612 = v919;
                        if (WORD6(xmmword_100176630) == 47)
                        {
                          if (v885 == 10)
                          {
                            v885 = 10;
                            goto LABEL_1377;
                          }

                          v867 = v614;
                          v657 = qword_100176658;
                          v658 = WORD2(xmmword_100176640);
                          LODWORD(v992[0]) = 0;
                          if (WORD2(xmmword_100176640) <= 3uLL)
                          {
                            v708 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              v490 = v916;
                              v611 = v614;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1506;
                              }
                            }

                            else
                            {
                              v708 = mDNSLogCategory_Default_redacted;
                              v490 = v916;
                              v611 = v614;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1506;
                              }
                            }

                            *v981 = 136447234;
                            *&v981[4] = "rdata_len >= min_rdata_len_nsec";
                            *&v981[12] = 2082;
                            *&v981[14] = "";
                            *&v981[22] = 2082;
                            *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                            *&v981[32] = 1024;
                            *&v981[34] = 233;
                            *&v981[38] = 2048;
                            *&v981[40] = 0;
                            v704 = v708;
                          }

                          else
                          {
                            v659 = (qword_100176660 + 4);
                            v660 = *(qword_100176660 + 4);
                            v661 = qword_100176660 + 4;
                            if (*(qword_100176660 + 4))
                            {
                              v662 = v659 + WORD2(xmmword_100176640);
                              v663 = *(qword_100176660 + 4);
                              v661 = qword_100176660 + 4;
                              while (!v662 || v661 + v663 + 1 <= v662)
                              {
                                v664 = v663 + v661;
                                v665 = *(v664 + 1);
                                v661 = v664 + 1;
                                v663 = v665;
                                if (!v665)
                                {
                                  goto LABEL_1435;
                                }
                              }

LABEL_1463:
                              v684 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v685 = mDNSLogCategory_Default == mDNSLogCategory_State;
                              }

                              else
                              {
                                v685 = 1;
                              }

                              if (v685)
                              {
                                v490 = v916;
                                v611 = v614;
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1504;
                                }
                              }

                              else
                              {
                                v684 = mDNSLogCategory_Default_redacted;
                                v703 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                                v490 = v916;
                                v611 = v867;
                                if (v703)
                                {
LABEL_1504:
                                  *v981 = 136447234;
                                  *&v981[4] = "next_domain_name_len >= 1";
                                  *&v981[12] = 2082;
                                  *&v981[14] = "";
                                  *&v981[22] = 2082;
                                  *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                  *&v981[32] = 1024;
                                  *&v981[34] = 238;
                                  *&v981[38] = 2048;
                                  *&v981[40] = 0;
                                  v704 = v684;
                                  goto LABEL_1505;
                                }
                              }

LABEL_1506:
                              v672 = 0;
                              v678 = -6705;
                              v29 = v930;
LABEL_1507:
                              v934 = v678;
                              goto LABEL_1508;
                            }

LABEL_1435:
                            v666 = v661 - v659;
                            v91 = __CFADD__(v666, 1);
                            v667 = v666 + 1;
                            if (v91)
                            {
                              goto LABEL_1463;
                            }

                            if (v667 >= WORD2(xmmword_100176640))
                            {
                              v710 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                v490 = v916;
                                v611 = v614;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              else
                              {
                                v710 = mDNSLogCategory_Default_redacted;
                                v490 = v916;
                                v611 = v614;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              *v981 = 136447234;
                              *&v981[4] = "next_domain_name_len < rdata_len";
                              *&v981[12] = 2082;
                              *&v981[14] = "";
                              *&v981[22] = 2082;
                              *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *&v981[32] = 1024;
                              *&v981[34] = 240;
                              *&v981[38] = 2048;
                              *&v981[40] = 0;
                              v704 = v710;
                            }

                            else
                            {
                              v668 = qword_100176660 + 4;
                              if (*(qword_100176660 + 4))
                              {
                                do
                                {
                                  v669 = v668 + v660;
                                  v670 = *(v669 + 1);
                                  v668 = v669 + 1;
                                  v660 = v670;
                                }

                                while (v670);
                              }

                              if (type_bit_maps_check_length(v668 + 1, (~(v668 - v659) + WORD2(xmmword_100176640))))
                              {
                                v671 = malloc_type_calloc(1uLL, 0x60uLL, 0xB7BBD98FuLL);
                                if (!v671)
                                {
                                  goto LABEL_1941;
                                }

                                v672 = v671;
                                v673 = &_dnssec_obj_rr_nsec_kind;
                                v671[1] = &_dnssec_obj_rr_nsec_kind;
                                do
                                {
                                  v674 = v673[2];
                                  if (v674)
                                  {
                                    v674(v672);
                                  }

                                  v673 = *v673;
                                }

                                while (v673);
                                ++*v672;
                                dnssec_obj_rr_init_fields(v672, v657, 47, 1, v659, v658, 1, 0, v992);
                                v675 = v992[0];
                                if (LODWORD(v992[0]))
                                {
                                  v490 = v916;
                                  v29 = v930;
                                  v611 = v867;
                                }

                                else
                                {
                                  v676 = dnssec_obj_domain_name_create_with_labels(*(v672 + 24), 0, v992);
                                  *(v672 + 80) = v676;
                                  v675 = v992[0];
                                  v490 = v916;
                                  v29 = v930;
                                  v611 = v867;
                                  if (!LODWORD(v992[0]))
                                  {
                                    v677 = ref_count_obj_compare(*(v672 + 16), v676, 0);
                                    v678 = 0;
                                    *(v672 + 88) = v677 < 2;
                                    goto LABEL_1507;
                                  }
                                }

                                v934 = v675;
                                ref_count_obj_release(v672);
                                v672 = 0;
                                v678 = v934;
LABEL_1508:
                                *(v979 + v885) = v672;
                                if (v678)
                                {
                                  v705 = v885;
                                }

                                else
                                {
                                  v705 = v885 + 1;
                                }

                                v885 = v705;
                                v23 = v898;
LABEL_1376:
                                v612 = v919;
                                goto LABEL_1377;
                              }

                              v711 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                v490 = v916;
                                v611 = v867;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              else
                              {
                                v711 = mDNSLogCategory_Default_redacted;
                                v490 = v916;
                                v611 = v867;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              *v981 = 136447234;
                              *&v981[4] = "type_bit_maps_is_valid";
                              *&v981[12] = 2082;
                              *&v981[14] = "";
                              *&v981[22] = 2082;
                              *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *&v981[32] = 1024;
                              *&v981[34] = 246;
                              *&v981[38] = 2048;
                              *&v981[40] = 0;
                              v704 = v711;
                            }
                          }

LABEL_1505:
                          _os_log_impl(&_mh_execute_header, v704, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v981, 0x30u);
                          goto LABEL_1506;
                        }

                        if (WORD6(xmmword_100176630) == 50)
                        {
                          if (v887 != 10)
                          {
                            v630 = qword_100176658;
                            v631 = qword_100176660;
                            v632 = WORD2(xmmword_100176640);
                            v935 = 0;
                            v633 = *qword_100176658;
                            if (*qword_100176658)
                            {
                              v634 = 0;
                              v635 = (qword_100176660 + 4);
                              v636 = qword_100176658;
                              do
                              {
                                ++v634;
                                v637 = v636 + v633;
                                v638 = *(v637 + 1);
                                v636 = v637 + 1;
                                v633 = v638;
                              }

                              while (v638);
                              if (v634 < 2)
                              {
                                v646 = 0;
                                v656 = -6705;
                                v490 = v916;
                                v29 = v930;
                                goto LABEL_1458;
                              }

                              if (WORD2(xmmword_100176640) <= 6u)
                              {
                                v712 = mDNSLogCategory_Default;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                {
                                  v490 = v916;
                                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                  {
                                    goto LABEL_1582;
                                  }
                                }

                                else
                                {
                                  v712 = mDNSLogCategory_Default_redacted;
                                  v490 = v916;
                                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                  {
                                    goto LABEL_1582;
                                  }
                                }

                                *v981 = 136447234;
                                *&v981[4] = "rdata_len >= min_rdata_len_nsec3";
                                *&v981[12] = 2082;
                                *&v981[14] = "";
                                *&v981[22] = 2082;
                                *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                *&v981[32] = 1024;
                                *&v981[34] = 652;
                                *&v981[38] = 2048;
                                *&v981[40] = 0;
                                v713 = v712;
                              }

                              else
                              {
                                v639 = &v635[WORD2(xmmword_100176640)];
                                v640 = *(qword_100176660 + 8);
                                v641 = qword_100176660 + 9 + v640;
                                if (v641 >= v639)
                                {
                                  v714 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    v490 = v916;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }
                                  }

                                  else
                                  {
                                    v714 = mDNSLogCategory_Default_redacted;
                                    v490 = v916;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }
                                  }

                                  *v981 = 136447234;
                                  *&v981[4] = "salt + salt_len < limit";
                                  *&v981[12] = 2082;
                                  *&v981[14] = "";
                                  *&v981[22] = 2082;
                                  *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                  *&v981[32] = 1024;
                                  *&v981[34] = 659;
                                  *&v981[38] = 2048;
                                  *&v981[40] = 0;
                                  v713 = v714;
                                }

                                else
                                {
                                  v642 = v641 + v635[v640 + 5] + 1;
                                  if (v642 > v639)
                                  {
                                    v715 = mDNSLogCategory_Default;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                    {
                                      v490 = v916;
                                      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1582;
                                      }
                                    }

                                    else
                                    {
                                      v715 = mDNSLogCategory_Default_redacted;
                                      v490 = v916;
                                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1582;
                                      }
                                    }

                                    *v981 = 136447234;
                                    *&v981[4] = "next_hashed_owner_name + hash_len <= limit";
                                    *&v981[12] = 2082;
                                    *&v981[14] = "";
                                    *&v981[22] = 2082;
                                    *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                    *&v981[32] = 1024;
                                    *&v981[34] = 664;
                                    *&v981[38] = 2048;
                                    *&v981[40] = 0;
                                    v713 = v715;
                                  }

                                  else
                                  {
                                    v859 = qword_100176660 + 9;
                                    if (type_bit_maps_check_length(v642, (v639 - v642)))
                                    {
                                      v860 = v574;
                                      v643 = v631;
                                      v644 = v632;
                                      v866 = v630;
                                      v645 = malloc_type_calloc(1uLL, 0x60uLL, 0xB7BBD98FuLL);
                                      if (!v645)
                                      {
                                        goto LABEL_1941;
                                      }

                                      v646 = v645;
                                      v647 = &_dnssec_obj_rr_nsec3_kind;
                                      v645[1] = &_dnssec_obj_rr_nsec3_kind;
                                      do
                                      {
                                        v648 = v647[2];
                                        if (v648)
                                        {
                                          v648(v646);
                                        }

                                        v647 = *v647;
                                      }

                                      while (v647);
                                      ++*v646;
                                      dnssec_obj_rr_init_fields(v646, v866, 50, 1, v635, v644, 1, 0, &v935);
                                      v649 = v935;
                                      if (v935)
                                      {
                                        v490 = v916;
                                        v653 = v919;
                                        v29 = v930;
                                        v574 = v860;
                                        goto LABEL_1557;
                                      }

                                      v650 = *(v643 + 8);
                                      v651 = v635[v650 + 5];
                                      encoded_string_length = base_x_get_encoded_string_length(2, v651);
                                      v653 = v919;
                                      if (encoded_string_length > 0x3F)
                                      {
                                        v649 = -6705;
                                        v490 = v916;
                                        v29 = v930;
                                        v574 = v860;
                                      }

                                      else
                                      {
                                        v936 = 0;
                                        memset(&v981[1], 0, 128);
                                        v982 = 0u;
                                        v983 = 0u;
                                        v984 = 0u;
                                        v985 = 0u;
                                        v986 = 0u;
                                        v987 = 0u;
                                        memset(v988, 0, 31);
                                        memset(v992, 0, sizeof(v992));
                                        v993 = 0u;
                                        v994 = 0u;
                                        v995 = 0u;
                                        v996 = 0u;
                                        v997 = 0u;
                                        v998 = 0u;
                                        v999 = 0u;
                                        v1000 = 0u;
                                        v1001 = 0u;
                                        v1002 = 0u;
                                        v1003 = 0u;
                                        v1004 = 0u;
                                        v1005 = 0u;
                                        v1006 = 0u;
                                        v981[0] = encoded_string_length;
                                        v981[encoded_string_length + 1] = 0;
                                        base_32_hex_encode((v859 + v650 + 1), v651, 1, &v981[1]);
                                        parent = domain_name_labels_get_parent(v866, 1uLL);
                                        v574 = v860;
                                        if (parent)
                                        {
                                          domain_name_labels_concatenate(v981, parent, v992, &v936);
                                          v649 = v936;
                                          v490 = v916;
                                          v29 = v930;
                                          if (!v936)
                                          {
                                            v655 = dnssec_obj_domain_name_create_with_labels(v992, 1, &v936);
                                            *(v646 + 80) = v655;
                                            v649 = v936;
                                            if (!v936)
                                            {
                                              *(v646 + 88) = ref_count_obj_compare(*(v646 + 16), v655, 0) < 2;
                                              v649 = v936;
                                              v935 = v936;
                                              if (!v936)
                                              {
                                                v656 = 0;
                                                v612 = v919;
                                                goto LABEL_1458;
                                              }

LABEL_1557:
                                              v934 = v649;
                                              ref_count_obj_release(v646);
                                              v646 = 0;
                                              v656 = v934;
                                              v612 = v653;
LABEL_1459:
                                              *(v978 + v887) = v646;
                                              if (v656)
                                              {
                                                v683 = v887;
                                              }

                                              else
                                              {
                                                v683 = v887 + 1;
                                              }

                                              v887 = v683;
                                              v23 = v898;
                                              goto LABEL_1377;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v649 = -6736;
                                          v490 = v916;
                                          v29 = v930;
                                        }
                                      }

                                      v935 = v649;
                                      goto LABEL_1557;
                                    }

                                    v716 = mDNSLogCategory_Default;
                                    if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
                                    {
                                      v716 = mDNSLogCategory_Default_redacted;
                                      v490 = v916;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1552;
                                      }

LABEL_1582:
                                      v646 = 0;
                                      v656 = -6705;
                                      v29 = v930;
                                      v612 = v919;
LABEL_1458:
                                      v934 = v656;
                                      goto LABEL_1459;
                                    }

                                    v490 = v916;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }

LABEL_1552:
                                    *v981 = 136447234;
                                    *&v981[4] = "type_bit_maps_is_valid";
                                    *&v981[12] = 2082;
                                    *&v981[14] = "";
                                    *&v981[22] = 2082;
                                    *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                    *&v981[32] = 1024;
                                    *&v981[34] = 670;
                                    *&v981[38] = 2048;
                                    *&v981[40] = 0;
                                    v713 = v716;
                                  }
                                }
                              }

                              _os_log_impl(&_mh_execute_header, v713, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v981, 0x30u);
                              goto LABEL_1582;
                            }

                            v646 = 0;
                            v656 = -6705;
                            v490 = v916;
                            goto LABEL_1458;
                          }

                          v887 = 10;
                        }

LABEL_1377:
                        WORD4(xmmword_100176630) = 0;
                        HIWORD(xmmword_100176690) = 0;
                        if (xmmword_100176670)
                        {
                          v615 = v612;
                          ref_count_obj_release(xmmword_100176670);
                          v612 = v615;
                          *&xmmword_100176670 = 0;
                        }

                        if (++v613 >= v904 || v611 >= v612)
                        {
                          goto LABEL_1593;
                        }
                      }

                      v612 = v919;
                      if (WORD6(xmmword_100176630) != 6)
                      {
                        if (WORD6(xmmword_100176630) != 46)
                        {
                          goto LABEL_1377;
                        }

                        v618 = dnssec_obj_rr_rrsig_create(qword_100176658, (qword_100176660 + 4), WORD2(xmmword_100176640), 1, &v934);
                        if (v934)
                        {
                          if (!v618)
                          {
                            goto LABEL_1376;
                          }

                          goto LABEL_1456;
                        }

                        v679 = __rev16(*v618[3]);
                        if (v679 == 50 || v679 == 47)
                        {
                          v680 = v933;
                          if (v933 != 30)
                          {
                            v681 = &v933;
                            v682 = v977;
LABEL_1455:
                            *(v682 + v680) = v618;
                            ++*v618;
                            *v681 = v680 + 1;
                          }
                        }

                        else if (v679 == 6)
                        {
                          v680 = HIBYTE(v933);
                          if (HIBYTE(v933) != 30)
                          {
                            v681 = (&v933 + 1);
                            v682 = v980;
                            goto LABEL_1455;
                          }
                        }

LABEL_1456:
                        ref_count_obj_release(v618);
                        goto LABEL_1376;
                      }

                      if (v897)
                      {
                        goto LABEL_1377;
                      }

                      bzero(v981, 0x214uLL);
                      putRData(0, v981, &v991, &xmmword_100176630 + 8, v619, v620, v621, v622);
                      v623 = qword_100176658;
                      v624 = WORD2(xmmword_100176640);
                      v936 = 0;
                      if (WORD2(xmmword_100176640) <= 0x15uLL)
                      {
                        v709 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          v490 = v916;
                          v23 = v898;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1517;
                          }
                        }

                        else
                        {
                          v709 = mDNSLogCategory_Default_redacted;
                          v490 = v916;
                          v23 = v898;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1517;
                          }
                        }

                        LODWORD(v992[0]) = 136447234;
                        *(v992 + 4) = "rdata_len >= min_rdata_len_soa";
                        WORD6(v992[0]) = 2082;
                        *(v992 + 14) = "";
                        WORD3(v992[1]) = 2082;
                        LOWORD(v993) = 1024;
                        *(&v993 + 2) = 117;
                        WORD3(v993) = 2048;
                        *(&v992[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                        *(&v993 + 1) = 0;
                        v696 = v709;
                      }

                      else
                      {
                        v625 = &v981[WORD2(xmmword_100176640)];
                        v626 = v981[0];
                        if (v981[0])
                        {
                          v627 = v981;
                          while (!v625 || &v627[v626 + 1] <= v625)
                          {
                            v628 = &v627[v626];
                            v629 = v628[1];
                            v627 = v628 + 1;
                            v626 = v629;
                            if (!v629)
                            {
                              goto LABEL_1471;
                            }
                          }

                          goto LABEL_1479;
                        }

                        v627 = v981;
LABEL_1471:
                        v686 = v627 - v981;
                        v687 = v686 + 1;
                        if (v686 == -1)
                        {
LABEL_1479:
                          v694 = mDNSLogCategory_Default;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v695 = mDNSLogCategory_Default == mDNSLogCategory_State;
                          }

                          else
                          {
                            v695 = 1;
                          }

                          if (v695)
                          {
                            v490 = v916;
                            v23 = v898;
                            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1517;
                            }
                          }

                          else
                          {
                            v694 = mDNSLogCategory_Default_redacted;
                            v706 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                            v490 = v916;
                            v23 = v898;
                            if (!v706)
                            {
                              goto LABEL_1517;
                            }
                          }

                          LODWORD(v992[0]) = 136447234;
                          *(v992 + 4) = "primary_name_server_len >= 1";
                          WORD6(v992[0]) = 2082;
                          *(v992 + 14) = "";
                          WORD3(v992[1]) = 2082;
                          LOWORD(v993) = 1024;
                          *(&v993 + 2) = 122;
                          WORD3(v993) = 2048;
                          *(&v992[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                          *(&v993 + 1) = 0;
                          v696 = v694;
                        }

                        else
                        {
                          v688 = v686 + 21;
                          if (v688 >= WORD2(xmmword_100176640))
                          {
                            v717 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              v490 = v916;
                              v23 = v898;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }
                            }

                            else
                            {
                              v717 = mDNSLogCategory_Default_redacted;
                              v490 = v916;
                              v23 = v898;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }
                            }

                            LODWORD(v992[0]) = 136447234;
                            *(v992 + 4) = "primary_name_server_len + sizeof(rdata_soa_t) < rdata_len";
                            WORD6(v992[0]) = 2082;
                            *(v992 + 14) = "";
                            WORD3(v992[1]) = 2082;
                            LOWORD(v993) = 1024;
                            *(&v993 + 2) = 123;
                            WORD3(v993) = 2048;
                            *(&v992[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                            *(&v993 + 1) = 0;
                            v696 = v717;
                          }

                          else
                          {
                            v689 = &v981[v687];
                            v690 = *v689;
                            if (*v689)
                            {
                              v691 = v689;
                              while (!v625 || &v691[v690 + 1] <= v625)
                              {
                                v692 = &v691[v690];
                                v693 = v692[1];
                                v691 = v692 + 1;
                                v690 = v693;
                                if (!v693)
                                {
                                  goto LABEL_1487;
                                }
                              }

                              goto LABEL_1496;
                            }

                            v691 = v689;
LABEL_1487:
                            if (v691 - v689 == -1)
                            {
LABEL_1496:
                              v701 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v702 = mDNSLogCategory_Default == mDNSLogCategory_State;
                              }

                              else
                              {
                                v702 = 1;
                              }

                              if (v702)
                              {
                                v490 = v916;
                                v23 = v898;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1517;
                                }
                              }

                              else
                              {
                                v701 = mDNSLogCategory_Default_redacted;
                                v707 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                                v490 = v916;
                                v23 = v898;
                                if (!v707)
                                {
                                  goto LABEL_1517;
                                }
                              }

                              LODWORD(v992[0]) = 136447234;
                              *(v992 + 4) = "mailbox_name_len >= 1";
                              WORD6(v992[0]) = 2082;
                              *(v992 + 14) = "";
                              WORD3(v992[1]) = 2082;
                              LOWORD(v993) = 1024;
                              *(&v993 + 2) = 127;
                              WORD3(v993) = 2048;
                              *(&v992[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *(&v993 + 1) = 0;
                              v696 = v701;
                            }

                            else
                            {
                              if (v688 + v691 - v689 + 1 == WORD2(xmmword_100176640))
                              {
                                v697 = malloc_type_calloc(1uLL, 0x50uLL, 0xB7BBD98FuLL);
                                if (!v697)
                                {
LABEL_1941:
                                  __break(1u);
                                }

                                v698 = &_dnssec_obj_rr_soa_kind;
                                v897 = v697;
                                v697[1] = &_dnssec_obj_rr_soa_kind;
                                do
                                {
                                  v699 = v698[2];
                                  if (v699)
                                  {
                                    v699(v897);
                                  }

                                  v698 = *v698;
                                }

                                while (v698);
                                ++*v897;
                                dnssec_obj_rr_init_fields(v897, v623, 6, 1, v981, v624, 1, 0, &v936);
                                v700 = v936;
                                if (v936)
                                {
                                  v934 = v936;
                                  ref_count_obj_release(v897);
                                  v897 = 0;
                                  v490 = v916;
                                  v23 = v898;
                                  v29 = v930;
                                  goto LABEL_1376;
                                }

                                v490 = v916;
                                v23 = v898;
                                goto LABEL_1518;
                              }

                              v718 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
                              {
                                v718 = mDNSLogCategory_Default_redacted;
                                v490 = v916;
                                v23 = v898;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1569;
                                }

LABEL_1517:
                                v897 = 0;
                                v700 = -6705;
LABEL_1518:
                                v29 = v930;
                                v934 = v700;
                                goto LABEL_1376;
                              }

                              v490 = v916;
                              v23 = v898;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }

LABEL_1569:
                              LODWORD(v992[0]) = 136447234;
                              *(v992 + 4) = "primary_name_server_len + mailbox_name_len + sizeof(rdata_soa_t) == rdata_len";
                              WORD6(v992[0]) = 2082;
                              *(v992 + 14) = "";
                              WORD3(v992[1]) = 2082;
                              LOWORD(v993) = 1024;
                              *(&v993 + 2) = 129;
                              WORD3(v993) = 2048;
                              *(&v992[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *(&v993 + 1) = 0;
                              v696 = v718;
                            }
                          }
                        }
                      }

                      _os_log_impl(&_mh_execute_header, v696, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v992, 0x30u);
                      goto LABEL_1517;
                    }
                  }

                  else
                  {
                    LOBYTE(v887) = 0;
                  }
                }

                else
                {
                  v897 = 0;
                  LOBYTE(v885) = 0;
                  LOBYTE(v887) = 0;
                  v907 = 3601;
                }

LABEL_1593:
                v719 = v912 == 3601 ? v907 : v912;
                v906 = 1;
                v608 = v929;
                v498 = 37912;
                v552 = v918;
                v607 = v876;
              }

              else
              {
                v719 = v912;
              }

              v720 = v608 ^ 1;
              if (!v527)
              {
                v720 = 1;
              }

              if (v720)
              {
                if ((v608 & (v719 != 3601)) != 0)
                {
                  v722 = v719;
                }

                else
                {
                  v722 = v607;
                }

                if (!v527)
                {
                  goto LABEL_1734;
                }

                v723 = 0;
                v493 = a10;
              }

              else
              {
                v721 = *(v527 + 64);
                if (!v721 || *(v721 + 32))
                {
                  v493 = a10;
                  goto LABEL_1603;
                }

                v877 = v607;
                if (!v552)
                {
                  if (v885 | v887)
                  {
                    LODWORD(v992[0]) = 0;
                    if (v893)
                    {
                      p_dst = 0;
                    }

                    else
                    {
                      p_dst = &__dst;
                    }

                    v731 = dnssec_obj_denial_of_existence_create(v505, v857, v863, p_dst, v909, v897, v980, HIBYTE(v933), v979, v885, v978, v887, v977, v933, v992);
                    v552 = v731;
                    v732 = mDNSLogCategory_DNSSEC;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v733 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
                    }

                    else
                    {
                      v733 = 1;
                    }

                    v734 = v733;
                    if (v731)
                    {
                      if (v734)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                        {
                          v735 = v505;
                          while (1)
                          {
                            if (!v735 || (v736 = *v735, v736 > 0x3F))
                            {
LABEL_1644:
                              v737 = v719;
                              v738 = 257;
                              goto LABEL_1674;
                            }

                            if (!*v735)
                            {
                              break;
                            }

                            v735 += v736 + 1;
                            if (v735 - v505 >= 256)
                            {
                              goto LABEL_1644;
                            }
                          }

                          v737 = v719;
                          v738 = (v735 - v505 + 1);
LABEL_1674:
                          v753 = DNSTypeName(v863);
                          v754 = *(v552 + 16);
                          v755 = "<fatal: this should never be returned>";
                          if (v754 <= 6)
                          {
                            v755 = off_100151348[v754];
                          }

                          *v981 = 67110659;
                          *&v981[4] = v856;
                          *&v981[8] = 2160;
                          *&v981[10] = 1752392040;
                          *&v981[18] = 1040;
                          *&v981[20] = v738;
                          *&v981[24] = 2101;
                          *&v981[26] = v505;
                          *&v981[34] = 2160;
                          *&v981[36] = 1752392040;
                          *&v981[44] = 2085;
                          *&v981[46] = v753;
                          *&v981[54] = 2082;
                          *&v981[56] = v755;
                          _os_log_impl(&_mh_execute_header, v732, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v981, 0x40u);
                          v719 = v737;
                        }

                        goto LABEL_1686;
                      }

                      v743 = mDNSLogCategory_DNSSEC_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_1686;
                      }

                      v744 = v505;
                      while (1)
                      {
                        if (!v744 || (v745 = *v744, v745 > 0x3F))
                        {
LABEL_1662:
                          v746 = v719;
                          v747 = 257;
                          goto LABEL_1678;
                        }

                        if (!*v744)
                        {
                          break;
                        }

                        v744 += v745 + 1;
                        if (v744 - v505 >= 256)
                        {
                          goto LABEL_1662;
                        }
                      }

                      v746 = v719;
                      v747 = (v744 - v505 + 1);
LABEL_1678:
                      v756 = DNSTypeName(v863);
                      v757 = *(v552 + 16);
                      v758 = "<fatal: this should never be returned>";
                      if (v757 <= 6)
                      {
                        v758 = off_100151348[v757];
                      }

                      *v981 = 67110659;
                      *&v981[4] = v856;
                      *&v981[8] = 2160;
                      *&v981[10] = 1752392040;
                      *&v981[18] = 1040;
                      *&v981[20] = v747;
                      *&v981[24] = 2101;
                      *&v981[26] = v505;
                      *&v981[34] = 2160;
                      *&v981[36] = 1752392040;
                      *&v981[44] = 2085;
                      *&v981[46] = v756;
                      *&v981[54] = 2082;
                      *&v981[56] = v758;
                      _os_log_impl(&_mh_execute_header, v743, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v981, 0x40u);
LABEL_1685:
                      v719 = v746;
                      goto LABEL_1686;
                    }

                    if (!v734)
                    {
                      v748 = mDNSLogCategory_DNSSEC_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_1686;
                      }

                      v746 = v719;
                      if (LODWORD(v992[0]))
                      {
                        v749 = "Unknown DNSSEC error.";
                      }

                      else
                      {
                        v749 = "No error.";
                      }

                      v750 = v505;
                      while (1)
                      {
                        if (!v750 || (v751 = *v750, v751 > 0x3F))
                        {
LABEL_1672:
                          v752 = 257;
                          goto LABEL_1684;
                        }

                        if (!*v750)
                        {
                          break;
                        }

                        v750 += v751 + 1;
                        if (v750 - v505 >= 256)
                        {
                          goto LABEL_1672;
                        }
                      }

                      v752 = (v750 - v505 + 1);
LABEL_1684:
                      v760 = DNSTypeName(v863);
                      *v981 = 67111683;
                      *&v981[4] = v856;
                      *&v981[8] = 2082;
                      *&v981[10] = v749;
                      *&v981[18] = 2160;
                      *&v981[20] = 1752392040;
                      *&v981[28] = 1040;
                      *&v981[30] = v752;
                      *&v981[34] = 2101;
                      *&v981[36] = v505;
                      *&v981[44] = 2160;
                      *&v981[46] = 1752392040;
                      *&v981[54] = 2085;
                      *&v981[56] = v760;
                      *&v981[64] = 1024;
                      *&v981[66] = HIBYTE(v933);
                      *&v981[70] = 1024;
                      *&v981[72] = v885;
                      *&v981[76] = 1024;
                      *&v981[78] = v887;
                      *&v981[82] = 1024;
                      *&v981[84] = v933;
                      _os_log_impl(&_mh_execute_header, v748, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v981, 0x58u);
                      v490 = v916;
                      goto LABEL_1685;
                    }

                    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                    {
                      v913 = v719;
                      if (LODWORD(v992[0]))
                      {
                        v739 = "Unknown DNSSEC error.";
                      }

                      else
                      {
                        v739 = "No error.";
                      }

                      v740 = v505;
                      while (1)
                      {
                        if (!v740 || (v741 = *v740, v741 > 0x3F))
                        {
LABEL_1655:
                          v742 = 257;
                          goto LABEL_1682;
                        }

                        if (!*v740)
                        {
                          break;
                        }

                        v740 += v741 + 1;
                        if (v740 - v505 >= 256)
                        {
                          goto LABEL_1655;
                        }
                      }

                      v742 = (v740 - v505 + 1);
LABEL_1682:
                      v759 = DNSTypeName(v863);
                      *v981 = 67111683;
                      *&v981[4] = v856;
                      *&v981[8] = 2082;
                      *&v981[10] = v739;
                      *&v981[18] = 2160;
                      *&v981[20] = 1752392040;
                      *&v981[28] = 1040;
                      *&v981[30] = v742;
                      *&v981[34] = 2101;
                      *&v981[36] = v505;
                      *&v981[44] = 2160;
                      *&v981[46] = 1752392040;
                      *&v981[54] = 2085;
                      *&v981[56] = v759;
                      *&v981[64] = 1024;
                      *&v981[66] = HIBYTE(v933);
                      *&v981[70] = 1024;
                      *&v981[72] = v885;
                      *&v981[76] = 1024;
                      *&v981[78] = v887;
                      *&v981[82] = 1024;
                      *&v981[84] = v933;
                      _os_log_impl(&_mh_execute_header, v732, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v981, 0x58u);
                      v719 = v913;
                    }

LABEL_1686:
                    v721 = *(v527 + 64);
                    v23 = v898;
                    v29 = v930;
                    if (!v721)
                    {
                      goto LABEL_1689;
                    }
                  }
                }

                if (*(v721 + 32) || *(v721 + 40) == 1)
                {
LABEL_1689:
                  v761 = 0;
                  v762 = v552 != 0;
LABEL_1690:
                  if (v761 || v762)
                  {
LABEL_1711:
                    v773 = mDNSLogCategory_DNSSEC;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                      {
                        v777 = v505;
                        v915 = v719;
                        while (1)
                        {
                          if (!v777 || (v778 = *v777, v778 > 0x3F))
                          {
LABEL_1726:
                            v776 = 257;
                            goto LABEL_1729;
                          }

                          if (!*v777)
                          {
                            break;
                          }

                          v777 += v778 + 1;
                          if (v777 - v505 >= 256)
                          {
                            goto LABEL_1726;
                          }
                        }

                        v776 = (v777 - v505 + 1);
LABEL_1729:
                        v779 = DNSTypeName(v863);
                        *v981 = 141558787;
                        *&v981[4] = 1752392040;
                        *&v981[12] = 1040;
                        *&v981[14] = v776;
                        *&v981[18] = 2101;
                        *&v981[20] = v505;
                        *&v981[28] = 2082;
                        *&v981[30] = v779;
                        _os_log_impl(&_mh_execute_header, v773, OS_LOG_TYPE_DEBUG, "Denial of existence record changes, purging the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v981, 0x26u);
                        v719 = v915;
                      }
                    }

                    else
                    {
                      v773 = mDNSLogCategory_DNSSEC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        v774 = v505;
                        v915 = v719;
                        while (1)
                        {
                          if (!v774 || (v775 = *v774, v775 > 0x3F))
                          {
LABEL_1719:
                            v776 = 257;
                            goto LABEL_1729;
                          }

                          if (!*v774)
                          {
                            break;
                          }

                          v774 += v775 + 1;
                          if (v774 - v505 >= 256)
                          {
                            goto LABEL_1719;
                          }
                        }

                        v776 = (v774 - v505 + 1);
                        goto LABEL_1729;
                      }
                    }

                    v918 = v552;
                    mDNS_PurgeCacheResourceRecord(v490, v527);
                    if (v719 == 3601)
                    {
                      v722 = v877;
                    }

                    else
                    {
                      v722 = v719;
                    }

                    v29 = v930;
LABEL_1734:
                    v723 = 0;
                    while (2)
                    {
                      MakeNegativeCacheRecord(v490, v490 + v498, v505, v502, v974, v975, v722, 0, a9, v23[1]);
                      if (v29)
                      {
                        v780 = *(v490 + 37968);
                        if (v780)
                        {
                          mdns_cache_metadata_set_extended_dns_error(v780, *(v29 + 160));
                        }
                      }

                      v781 = CacheGroupForName(v490, v502, v505);
                      if (v929)
                      {
                        v783 = *(v490 + 64);
                        if (v783 <= 1)
                        {
                          v784 = 1;
                        }

                        else
                        {
                          v784 = v783;
                        }

                        v785 = 2;
                      }

                      else
                      {
                        v785 = 0;
                        v784 = 1;
                      }

                      v786 = v502 % 0x1F3;
                      v787 = CreateNewCacheEntryEx(v490, v786, v781, v784, 1, 0, v785, v782);
                      v794 = v787;
                      v795 = v929;
                      if (v723)
                      {
                        v795 = 0;
                      }

                      if (v795 == 1)
                      {
                        if ((v787 + 1) < 2)
                        {
                          v723 = -1;
                          goto LABEL_1749;
                        }

                        *(v787 + 128) = 1;
                        v723 = v787;
LABEL_1752:
                        if (v927)
                        {
                          v796 = *(v787 + 120);
                          if (v796)
                          {
                            ReleaseCacheRecord(v490, v796);
                          }

                          *(v794 + 120) = v927;
                        }

                        if (v929)
                        {
                          v797 = *(v794 + 84);
                          if (*(v891 + 4 * v786) - v797 >= 1)
                          {
                            *(v891 + 4 * v786) = v797;
                          }

                          v29 = v930;
                          v927 = 0;
                          if (*(v490 + 88) - v797 >= 1)
                          {
                            *(v490 + 88) = v797;
                          }

                          goto LABEL_1763;
                        }

                        *(v794 + 84) = 0;
                        CacheRecordDeferredAdd(v490, v794, v788, v789, v790, v791, v792, v793);
                        v927 = 0;
                      }

                      else
                      {
LABEL_1749:
                        if (v787)
                        {
                          goto LABEL_1752;
                        }
                      }

                      v29 = v930;
LABEL_1763:
                      *v883 = 0;
                      *(v916 + 38022) = 0;
                      v798 = *(v916 + 37976);
                      if (v798)
                      {
                        ref_count_obj_release(v798);
                        *(v916 + 37976) = 0;
                      }

                      if (!v574)
                      {
                        v527 = 0;
                        v493 = a10;
                        v552 = v918;
                        goto LABEL_1771;
                      }

                      --v574;
                      if (*v505)
                      {
                        v505 += *v505 + 1;
                      }

                      v502 = DomainNameHashValue(v505);
                      continue;
                    }
                  }
                }

                else
                {
                  v772 = *(v721 + 48);
                  v761 = v772 != 0;
                  v762 = v552 != 0;
                  if (!v772 || !v552)
                  {
                    goto LABEL_1690;
                  }

                  if (ref_count_obj_compare(v772, v552, 1))
                  {
                    goto LABEL_1711;
                  }
                }

                v763 = mDNSLogCategory_DNSSEC;
                v918 = v552;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                {
                  v493 = a10;
                  if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                  {
                    v769 = v505;
                    v914 = v719;
                    while (1)
                    {
                      if (!v769 || (v770 = *v769, v770 > 0x3F))
                      {
LABEL_1707:
                        v771 = 257;
                        goto LABEL_1835;
                      }

                      if (!*v769)
                      {
                        break;
                      }

                      v769 += v770 + 1;
                      if (v769 - v505 >= 256)
                      {
                        goto LABEL_1707;
                      }
                    }

                    v771 = (v769 - v505 + 1);
LABEL_1835:
                    v817 = DNSTypeName(v863);
                    *v981 = 141558787;
                    *&v981[4] = 1752392040;
                    *&v981[12] = 1040;
                    *&v981[14] = v771;
                    *&v981[18] = 2101;
                    *&v981[20] = v505;
                    *&v981[28] = 2082;
                    *&v981[30] = v817;
                    _os_log_impl(&_mh_execute_header, v763, OS_LOG_TYPE_DEBUG, "Denial of existence record does not change, rescuing the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v981, 0x26u);
                    v719 = v914;
                  }
                }

                else
                {
                  v764 = mDNSLogCategory_DNSSEC_redacted;
                  v493 = a10;
                  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                  {
                    v765 = v505;
                    while (1)
                    {
                      if (!v765 || (v766 = *v765, v766 > 0x3F))
                      {
LABEL_1700:
                        v767 = v719;
                        v768 = 257;
                        goto LABEL_1837;
                      }

                      if (!*v765)
                      {
                        break;
                      }

                      v765 += v766 + 1;
                      if (v765 - v505 >= 256)
                      {
                        goto LABEL_1700;
                      }
                    }

                    v767 = v719;
                    v768 = (v765 - v505 + 1);
LABEL_1837:
                    v818 = DNSTypeName(v863);
                    *v981 = 141558787;
                    *&v981[4] = 1752392040;
                    *&v981[12] = 1040;
                    *&v981[14] = v768;
                    *&v981[18] = 2101;
                    *&v981[20] = v505;
                    *&v981[28] = 2082;
                    *&v981[30] = v818;
                    _os_log_impl(&_mh_execute_header, v764, OS_LOG_TYPE_DEBUG, "Denial of existence record does not change, rescuing the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v981, 0x26u);
                    v719 = v767;
                  }
                }

                v607 = v877;
LABEL_1603:
                *(v527 + 128) = 1;
                v722 = v719 == 3601 ? v607 : v719;
                v723 = v527;
              }

              v724 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1617;
                }
              }

              else
              {
                v724 = mDNSLogCategory_Default_redacted;
                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_1617:
                  v725 = v972;
                  v726 = bswap32(v973) >> 16;
                  v727 = *(v527 + 16);
                  GetRRDisplayString_rdb((v527 + 8), (*(v527 + 48) + 4), v882);
                  *v981 = 67110403;
                  *&v981[4] = v725;
                  v29 = v930;
                  *&v981[8] = 1024;
                  *&v981[10] = v726;
                  v490 = v916;
                  *&v981[14] = 1024;
                  *&v981[16] = v727;
                  v23 = v898;
                  *&v981[20] = 1024;
                  *&v981[22] = v722;
                  *&v981[26] = 2160;
                  *&v981[28] = 1752392040;
                  *&v981[36] = 2085;
                  *&v981[38] = v916 + 47032;
                  v498 = 37912;
                  _os_log_impl(&_mh_execute_header, v724, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Renewing negative TTL from %u to %u %{sensitive, mask.hash}s", v981, 0x2Eu);
                }
              }

              RefreshCacheRecord(v490, v527, v722);
              if (!v874)
              {
                v728 = *(v490 + 64);
                *(v923 + 256) = v728;
                *(v923 + 224) = 0;
                *(v923 + 208) = v728;
                *(v923 + 212) = 3600000;
                *(v923 + 352) = 0;
                *(v923 + 649) = 0;
              }

              v552 = v918;
              if (v927)
              {
                v729 = *(v527 + 120);
                if (v729)
                {
                  ReleaseCacheRecord(v490, v729);
                }

                *(v527 + 120) = v927;
              }

              v927 = 0;
LABEL_1771:
              v799 = v929;
              if (v723 == -1)
              {
                v799 = 0;
              }

              if (v799 == 1)
              {
                v800 = *(v723 + 64);
                if (v800)
                {
                  *(v723 + 128) = 0;
                  if (*(v800 + 32) || (*(v800 + 40) & 1) != 0 || !*(v800 + 48))
                  {
                    if (v552 || !(v885 | v887))
                    {
                      goto LABEL_1848;
                    }

                    LODWORD(v992[0]) = 0;
                    if (v893)
                    {
                      v801 = 0;
                    }

                    else
                    {
                      v801 = &__dst;
                    }

                    v802 = dnssec_obj_denial_of_existence_create(v505, v857, v863, v801, v909, v897, v980, HIBYTE(v933), v979, v885, v978, v887, v977, v933, v992);
                    v803 = mDNSLogCategory_DNSSEC;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v804 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
                    }

                    else
                    {
                      v804 = 1;
                    }

                    v805 = v804;
                    if (v802)
                    {
                      v552 = v802;
                      if (v805)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                        {
                          if (v505)
                          {
                            v806 = v505;
                            while (1)
                            {
                              if (!v806 || (v807 = *v806, v807 > 0x3F))
                              {
LABEL_1798:
                                v808 = 257;
                                goto LABEL_1840;
                              }

                              if (!*v806)
                              {
                                break;
                              }

                              v806 += v807 + 1;
                              if (v806 - v505 >= 256)
                              {
                                goto LABEL_1798;
                              }
                            }

                            v808 = (v806 - v505 + 1);
                          }

                          else
                          {
                            v808 = 0;
                          }

LABEL_1840:
                          v819 = DNSTypeName(v863);
                          v820 = *(v552 + 16);
                          v821 = "<fatal: this should never be returned>";
                          if (v820 <= 6)
                          {
                            v821 = off_100151348[v820];
                          }

                          goto LABEL_1846;
                        }
                      }

                      else
                      {
                        v803 = mDNSLogCategory_DNSSEC_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          if (v505)
                          {
                            v813 = v505;
                            while (1)
                            {
                              if (!v813 || (v814 = *v813, v814 > 0x3F))
                              {
LABEL_1818:
                                v808 = 257;
                                goto LABEL_1844;
                              }

                              if (!*v813)
                              {
                                break;
                              }

                              v813 += v814 + 1;
                              if (v813 - v505 >= 256)
                              {
                                goto LABEL_1818;
                              }
                            }

                            v808 = (v813 - v505 + 1);
                          }

                          else
                          {
                            v808 = 0;
                          }

LABEL_1844:
                          v819 = DNSTypeName(v863);
                          v822 = *(v552 + 16);
                          v821 = "<fatal: this should never be returned>";
                          if (v822 <= 6)
                          {
                            v821 = off_100151348[v822];
                          }

LABEL_1846:
                          *v981 = 67110659;
                          *&v981[4] = v856;
                          *&v981[8] = 2160;
                          *&v981[10] = 1752392040;
                          *&v981[18] = 1040;
                          *&v981[20] = v808;
                          *&v981[24] = 2101;
                          *&v981[26] = v505;
                          *&v981[34] = 2160;
                          *&v981[36] = 1752392040;
                          *&v981[44] = 2085;
                          *&v981[46] = v819;
                          *&v981[54] = 2082;
                          *&v981[56] = v821;
                          _os_log_impl(&_mh_execute_header, v803, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v981, 0x40u);
                          v29 = v930;
                        }
                      }

                      v800 = *(v723 + 64);
                      if (v800)
                      {
LABEL_1848:
                        if (*(v800 + 32))
                        {
                          v828 = mDNSLogCategory_DNSSEC;
                          v500 = v929;
                          v558 = v901;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          else
                          {
                            v828 = mDNSLogCategory_DNSSEC_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          *v981 = 136447234;
                          *&v981[4] = "me->aware_type == dnssec_aware_rr_to_validate";
                          *&v981[12] = 2082;
                          *&v981[14] = "";
                          *&v981[22] = 2082;
                          *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
                          *&v981[32] = 1024;
                          *&v981[34] = 159;
                          *&v981[38] = 2048;
                          *&v981[40] = 0;
                          v827 = v828;
                        }

                        else
                        {
                          v500 = v929;
                          v558 = v901;
                          if (*(v800 + 40) != 1)
                          {
                            if (v552)
                            {
                              ++*v552;
                            }

                            v823 = *(v800 + 48);
                            if (v823)
                            {
                              ref_count_obj_release(v823);
                            }

                            *(v800 + 48) = v552;
                            goto LABEL_1860;
                          }

                          v829 = mDNSLogCategory_DNSSEC;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          else
                          {
                            v829 = mDNSLogCategory_DNSSEC_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          *v981 = 136447234;
                          *&v981[4] = "!me->u.rr_to_validate.positive";
                          *&v981[12] = 2082;
                          *&v981[14] = "";
                          *&v981[22] = 2082;
                          *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
                          *&v981[32] = 1024;
                          *&v981[34] = 160;
                          *&v981[38] = 2048;
                          *&v981[40] = 0;
                          v827 = v829;
                        }
                      }

                      else
                      {
                        v826 = mDNSLogCategory_DNSSEC;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                        {
                          v500 = v929;
                          v558 = v901;
                          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1860;
                          }
                        }

                        else
                        {
                          v826 = mDNSLogCategory_DNSSEC_redacted;
                          v500 = v929;
                          v558 = v901;
                          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1860;
                          }
                        }

                        *v981 = 136447234;
                        *&v981[4] = "me->dnssec != NULL";
                        *&v981[12] = 2082;
                        *&v981[14] = "";
                        *&v981[22] = 2082;
                        *&v981[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
                        *&v981[32] = 1024;
                        *&v981[34] = 333;
                        *&v981[38] = 2048;
                        *&v981[40] = 0;
                        v827 = v826;
                      }

                      _os_log_impl(&_mh_execute_header, v827, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v981, 0x30u);
                      goto LABEL_1860;
                    }

                    if (v805)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                      {
                        if (LODWORD(v992[0]))
                        {
                          v809 = "Unknown DNSSEC error.";
                        }

                        else
                        {
                          v809 = "No error.";
                        }

                        if (v505)
                        {
                          v810 = v505;
                          while (1)
                          {
                            if (!v810 || (v811 = *v810, v811 > 0x3F))
                            {
LABEL_1810:
                              v812 = 257;
                              goto LABEL_1857;
                            }

                            if (!*v810)
                            {
                              break;
                            }

                            v810 += v811 + 1;
                            if (v810 - v505 >= 256)
                            {
                              goto LABEL_1810;
                            }
                          }

                          v812 = (v810 - v505 + 1);
                        }

                        else
                        {
                          v812 = 0;
                        }

                        goto LABEL_1857;
                      }
                    }

                    else
                    {
                      v803 = mDNSLogCategory_DNSSEC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                      {
                        if (LODWORD(v992[0]))
                        {
                          v809 = "Unknown DNSSEC error.";
                        }

                        else
                        {
                          v809 = "No error.";
                        }

                        if (v505)
                        {
                          v815 = v505;
                          while (1)
                          {
                            if (!v815 || (v816 = *v815, v816 > 0x3F))
                            {
LABEL_1829:
                              v812 = 257;
                              goto LABEL_1857;
                            }

                            if (!*v815)
                            {
                              break;
                            }

                            v815 += v816 + 1;
                            if (v815 - v505 >= 256)
                            {
                              goto LABEL_1829;
                            }
                          }

                          v812 = (v815 - v505 + 1);
                        }

                        else
                        {
                          v812 = 0;
                        }

LABEL_1857:
                        v824 = DNSTypeName(v863);
                        *v981 = 67111683;
                        *&v981[4] = v856;
                        *&v981[8] = 2082;
                        *&v981[10] = v809;
                        *&v981[18] = 2160;
                        *&v981[20] = 1752392040;
                        *&v981[28] = 1040;
                        *&v981[30] = v812;
                        *&v981[34] = 2101;
                        *&v981[36] = v505;
                        *&v981[44] = 2160;
                        *&v981[46] = 1752392040;
                        *&v981[54] = 2085;
                        *&v981[56] = v824;
                        *&v981[64] = 1024;
                        *&v981[66] = HIBYTE(v933);
                        *&v981[70] = 1024;
                        *&v981[72] = v885;
                        *&v981[76] = 1024;
                        *&v981[78] = v887;
                        *&v981[82] = 1024;
                        *&v981[84] = v933;
                        _os_log_impl(&_mh_execute_header, v803, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v981, 0x58u);
                        v29 = v930;
                      }
                    }

                    v552 = 0;
                  }
                }
              }
            }

            v500 = v929;
            v558 = v901;
            goto LABEL_1860;
          }

          if (!v551)
          {
            v575 = mDNSLogCategory_Default;
            v558 = v901;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                v576 = v972;
                v577 = bswap32(v973) >> 16;
                v581 = v976;
                while (1)
                {
                  if (!v581 || (v582 = *v581, v582 > 0x3F))
                  {
LABEL_1313:
                    v580 = 257;
                    goto LABEL_1327;
                  }

                  if (!*v581)
                  {
                    break;
                  }

                  v581 += v582 + 1;
                  if (v581 - v976 >= 256)
                  {
                    goto LABEL_1313;
                  }
                }

                v580 = (v581 - v976 + 1);
LABEL_1327:
                v590 = DNSTypeName(v974);
                *v981 = 67110403;
                *&v981[4] = v576;
                *&v981[8] = 1024;
                *&v981[10] = v577;
                *&v981[14] = 2160;
                *&v981[16] = 1752392040;
                *&v981[24] = 1040;
                *&v981[26] = v580;
                *&v981[30] = 2101;
                *&v981[32] = v976;
                *&v981[40] = 2082;
                *&v981[42] = v590;
                _os_log_impl(&_mh_execute_header, v575, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Skipping check and not creating a negative cache entry for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v981, 0x32u);
                v490 = v916;
                v29 = v930;
              }
            }

            else
            {
              v575 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                v576 = v972;
                v577 = bswap32(v973) >> 16;
                v578 = v976;
                while (1)
                {
                  if (!v578 || (v579 = *v578, v579 > 0x3F))
                  {
LABEL_1305:
                    v580 = 257;
                    goto LABEL_1327;
                  }

                  if (!*v578)
                  {
                    break;
                  }

                  v578 += v579 + 1;
                  if (v578 - v976 >= 256)
                  {
                    goto LABEL_1305;
                  }
                }

                v580 = (v578 - v976 + 1);
                goto LABEL_1327;
              }
            }

LABEL_1328:
            v500 = v929;
            goto LABEL_1860;
          }

          v558 = v901;
          if (v874)
          {
            goto LABEL_1328;
          }

          v559 = mDNSLogCategory_Default;
          v500 = v929;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              v564 = v972;
              v565 = bswap32(v973) >> 16;
              v583 = v976;
              while (1)
              {
                if (!v583 || (v584 = *v583, v584 > 0x3F))
                {
LABEL_1320:
                  v568 = 257;
                  goto LABEL_1331;
                }

                if (!*v583)
                {
                  break;
                }

                v583 += v584 + 1;
                if (v583 - v976 >= 256)
                {
                  goto LABEL_1320;
                }
              }

              v568 = (v583 - v976 + 1);
LABEL_1331:
              v591 = DNSTypeName(v974);
              *v981 = 67110403;
              *&v981[4] = v564;
              *&v981[8] = 1024;
              *&v981[10] = v565;
              *&v981[14] = 2160;
              *&v981[16] = 1752392040;
              *&v981[24] = 1040;
              *&v981[26] = v568;
              *&v981[30] = 2101;
              *&v981[32] = v976;
              *&v981[40] = 2082;
              *&v981[42] = v591;
              _os_log_impl(&_mh_execute_header, v559, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Generate negative response for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v981, 0x32u);
              v490 = v916;
              v29 = v930;
              v500 = v929;
            }
          }

          else
          {
            v559 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v564 = v972;
              v565 = bswap32(v973) >> 16;
              v566 = v976;
              while (1)
              {
                if (!v566 || (v567 = *v566, v567 > 0x3F))
                {
LABEL_1278:
                  v568 = 257;
                  goto LABEL_1331;
                }

                if (!*v566)
                {
                  break;
                }

                v566 += v567 + 1;
                if (v566 - v976 >= 256)
                {
                  goto LABEL_1278;
                }
              }

              v568 = (v566 - v976 + 1);
              goto LABEL_1331;
            }
          }

          *(v490 + 208) = v923;
          v592 = v23[1];
          if (*(v923 + 653))
          {
            *(v923 + 346) = v592;
          }

          GenerateNegativeResponseEx(v490, 0, 3, v592, v560, v561, v562, v563, v845);
          *(v490 + 208) = 0;
LABEL_1860:
          if (v500 && (v825 = (v558 + 1), v901 = v825, v825 < v879))
          {
            v505 = &v955[256 * v825];
            v502 = DomainNameHashValue(v505);
          }

          else
          {
            v502 = 0;
            v505 = 0;
          }

          if (!v889 && v552)
          {
            ref_count_obj_release(v552);
            v918 = 0;
            if (!v505)
            {
              break;
            }

            goto LABEL_1182;
          }

          v918 = v552;
        }

        while (v505);
        v496 = v854;
        Question = v872;
LABEL_1890:
        v830 = ++v496 >= v23[2] || Question == 0;
        v497 = v919;
        if (v830 || Question >= v919)
        {
          if (v927)
          {
            v834 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                *v981 = 0;
LABEL_1909:
                _os_log_impl(&_mh_execute_header, v834, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveNoUnicastAnswers: SOARecord not used", v981, 2u);
              }
            }

            else
            {
              v834 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                *v981 = 0;
                goto LABEL_1909;
              }
            }

            ReleaseCacheRecord(v490, v927);
          }

          if (!v889)
          {
            if (v897)
            {
              ref_count_obj_release(v897);
            }

            v833 = v885;
            v832 = v887;
LABEL_1915:
            v835 = HIBYTE(v933);
            if (HIBYTE(v933))
            {
              v836 = v980;
              do
              {
                if (*v836)
                {
                  ref_count_obj_release(*v836);
                  *v836 = 0;
                }

                ++v836;
                --v835;
              }

              while (v835);
            }

            if (v833)
            {
              v837 = v833;
              v838 = v979;
              do
              {
                if (*v838)
                {
                  ref_count_obj_release(*v838);
                  *v838 = 0;
                }

                ++v838;
                --v837;
              }

              while (v837);
            }

            if (v832)
            {
              v839 = v832;
              v840 = v978;
              do
              {
                if (*v840)
                {
                  ref_count_obj_release(*v840);
                  *v840 = 0;
                }

                ++v840;
                --v839;
              }

              while (v839);
            }

            v841 = v933;
            if (v933)
            {
              v842 = v977;
              do
              {
                if (*v842)
                {
                  ref_count_obj_release(*v842);
                  *v842 = 0;
                }

                ++v842;
                --v841;
              }

              while (v841);
            }
          }

          goto LABEL_1095;
        }
      }
    }
  }

  if (!v491)
  {
    v832 = 0;
    v833 = 0;
    goto LABEL_1915;
  }

LABEL_1095:
  if (object)
  {
    os_release(object);
  }
}