_BYTE *LocateOptRR(unint64_t a1, unint64_t a2, int a3)
{
  Additionals = LocateAdditionals(a1, a2);
  if (Additionals)
  {
    v7 = *(a1 + 10) + 1;
    while (--v7)
    {
      if (&Additionals[a3 + 11] > a2 || *Additionals || Additionals[1] || Additionals[2] != 41 || a3 > bswap32(*(Additionals + 9)) >> 16)
      {
        Additionals = skipResourceRecord(a1, Additionals, a2);
        if (Additionals)
        {
          continue;
        }
      }

      return Additionals;
    }

    return 0;
  }

  return Additionals;
}

_BYTE *LocateAdditionals(unint64_t a1, unint64_t a2)
{
  Authorities = LocateAuthorities(a1, a2);
  v5 = *(a1 + 8);
  if (*(a1 + 8))
  {
    do
    {
      Authorities = skipResourceRecord(a1, Authorities, a2);
      --v5;
    }

    while (v5);
  }

  return Authorities;
}

_BYTE *LocateAuthorities(unint64_t a1, unint64_t a2)
{
  Answers = LocateAnswers(a1, a2);
  v5 = Answers;
  v6 = *(a1 + 6);
  if (*(a1 + 6))
  {
    v7 = Answers == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    do
    {
      v9 = skipResourceRecord(a1, v5, a2);
      v5 = v9;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (v9);
  }

  return v5;
}

_BYTE *LocateAnswers(unint64_t a1, unint64_t a2)
{
  v3 = (a1 + 12);
  v4 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return (a1 + 12);
  }

  v6 = 1;
  do
  {
    v7 = skipDomainName(a1, v3, a2);
    v3 = v7 + 4;
    if ((v7 + 4) > a2 || v7 == 0)
    {
      result = 0;
    }

    else
    {
      result = v7 + 4;
    }

    if (v6 >= v4)
    {
      break;
    }

    ++v6;
  }

  while (result);
  return result;
}

_BYTE *skipResourceRecord(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = skipDomainName(a1, a2, a3);
  if (result)
  {
    if ((result + 10) <= a3)
    {
      v5 = __rev16(*(result + 4));
      if (&result[v5 + 10] <= a3)
      {
        result += v5 + 10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *getQuestion(unint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, void *a5)
{
  bzero(a5, 0x2B8uLL);
  *(a5 + 17) = a4;
  if (!a4)
  {
    *(a5 + 170) = -1;
  }

  DomainName = getDomainName(a1, a2, a3, a5 + 376);
  if (!DomainName)
  {
    return 0;
  }

  v11 = DomainName;
  v12 = DomainName + 4;
  if ((DomainName + 4) > a3)
  {
    return 0;
  }

  *(a5 + 50) = DomainNameHashValue(a5 + 376);
  *(a5 + 171) = bswap32(*v11) >> 16;
  *(a5 + 172) = bswap32(*(v11 + 1)) >> 16;
  return v12;
}

unsigned __int8 *getDomainName(unint64_t a1, unsigned __int8 *a2, unint64_t a3, _BYTE *a4)
{
  v4 = 0;
  if (a2 >= a1 && a2 < a3)
  {
    *a4 = 0;
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      v7 = (a4 + 256);
      while (1)
      {
        if (v5 >> 6)
        {
          if (v5 >> 6 != 3 || v4 >= a3)
          {
            return 0;
          }

          v4 = (a1 + (*v4 | ((v5 & 0x3F) << 8)));
          if (v4 < a1 || v4 >= a3)
          {
            return 0;
          }

          if (!v6)
          {
            v6 = a2 + 2;
          }

          v5 = *v4;
          if (v5 >= 0x40)
          {
            return 0;
          }
        }

        else
        {
          if (&v4[v5] >= a3 || &a4[v5 + 1] >= v7)
          {
            return 0;
          }

          *a4++ = v5;
          do
          {
            v9 = *v4++;
            *a4++ = v9;
            --v5;
          }

          while (v5);
          *a4 = 0;
          v5 = *v4;
        }

        a2 = v4++;
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    v6 = 0;
LABEL_25:
    if (v6)
    {
      return v6;
    }
  }

  return v4;
}

_BYTE *GetLargeResourceRecord(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a5)
  {
    v13 = 4500;
  }

  else
  {
    v13 = 3600;
  }

  if (a1 + 37912 == a7)
  {
    if (*(a1 + 37920))
    {
      GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
      LogFatalError("GetLargeResourceRecord: m->rec appears to be already in use for %s", v18, v19, v20, v21, v22, v23, v24, a1 + 47032);
    }

    *a7 = 0;
    v14 = (a7 + 8348);
    v15 = (a7 + 8);
    *(a7 + 40) = a7 + 8348;
    v16 = (a7 + 40);
    *(a7 + 72) = 0;
  }

  else
  {
    *a7 = 0;
    v14 = (a7 + 8348);
    v15 = (a7 + 8);
    *(a7 + 40) = a7 + 8348;
    v16 = (a7 + 40);
    *(a7 + 72) = 0;
    if (!a1)
    {
      v17 = 0;
      goto LABEL_11;
    }
  }

  v17 = *(a1 + 64);
LABEL_11:
  *(a7 + 80) = v17;
  *(a7 + 84) = 0;
  *(a7 + 88) = v17;
  *(a7 + 112) = 0;
  *(a7 + 100) = 0;
  *(a7 + 92) = 0;
  *(a7 + 108) = 0;
  *(a7 + 32) = a5;
  v25 = *(a7 + 56);
  if (v25)
  {
    os_release(v25);
    *(a7 + 56) = 0;
  }

  DomainName = getDomainName(a2, a3, a4, v14);
  if (DomainName)
  {
    v27 = DomainName;
    *(a7 + 24) = DomainNameHashValue(*(a7 + 40));
    v33 = v27 + 5;
    if ((v27 + 5) <= a4)
    {
      v34 = bswap32(*v27);
      v35 = HIWORD(v34);
      *(a7 + 12) = HIWORD(v34);
      v36 = *(v27 + 3) | ((v27[1] & 0x7F) << 8);
      *(a7 + 14) = *(v27 + 3) | ((v27[1] & 0x7F) << 8);
      v37 = bswap32(*(v27 + 1));
      v38 = v37 >= v13 ? v13 : v37;
      v39 = v37 == -1 ? -1 : v38;
      *(a7 + 16) = v39;
      v40 = *(v27 + 2) <= -1 || a5 == 0;
      v41 = __rev16(v27[4]);
      v42 = v40 ? a6 | 0x10 : a6;
      v43 = &v33[v41];
      if (&v33[v41] <= a4)
      {
        *(a7 + 152) = 0x2000;
        *(a7 + 48) = a7 + 152;
        if (v41 > 0x2000)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v45 = mDNSLogCategory_Default;
            v46 = DNSTypeName(v35);
            v60 = **(a7 + 48);
            LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "GetLargeResourceRecord: %s rdata size (%d) exceeds storage (%d)", v47, v48, v49, v50, v51, v46);
          }

          goto LABEL_33;
        }

        if (!v41 && v36 == 255)
        {
          *(a7 + 20) = 0;
LABEL_38:
          SetNewRData(v15, 0, 0, v28, v29, v30, v31, v32);
          *v15 = v42;
          return v43;
        }

        if (SetRData(a2, v33, &v33[v41], v15, v41, v30, v31, v32))
        {
          goto LABEL_38;
        }

        v52 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            v53 = *v16;
            if (*v16)
            {
              v57 = *v16;
              while (1)
              {
                if (!v57 || (v58 = *v57, v58 > 0x3F))
                {
LABEL_56:
                  v56 = 257;
                  goto LABEL_61;
                }

                if (!*v57)
                {
                  break;
                }

                v57 += v58 + 1;
                if (v57 - v53 >= 256)
                {
                  goto LABEL_56;
                }
              }

              v56 = (v57 - v53 + 1);
            }

            else
            {
              v56 = 0;
            }

            goto LABEL_61;
          }
        }

        else
        {
          v52 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            v53 = *v16;
            if (*v16)
            {
              v54 = *v16;
              while (1)
              {
                if (!v54 || (v55 = *v54, v55 > 0x3F))
                {
LABEL_48:
                  v56 = 257;
                  goto LABEL_61;
                }

                if (!*v54)
                {
                  break;
                }

                v54 += v55 + 1;
                if (v54 - v53 >= 256)
                {
                  goto LABEL_48;
                }
              }

              v56 = (v54 - v53 + 1);
            }

            else
            {
              v56 = 0;
            }

LABEL_61:
            v59 = DNSTypeName(*(a7 + 12));
            *buf = 141558787;
            v63 = 1752392040;
            v64 = 1040;
            v65 = v56;
            v66 = 2101;
            v67 = v53;
            v68 = 2082;
            v69 = v59;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "GetLargeResourceRecord: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
          }
        }

LABEL_33:
        *(a7 + 8) = -16;
        *(a7 + 20) = 0;
        *(a7 + 28) = 0;
        return v43;
      }
    }
  }

  return 0;
}

BOOL PacketRRConflict(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) & 0x32) == 0 || *(a2 + 88))
  {
    return 0;
  }

  for (i = *(a1 + 12616); i; i = *i)
  {
    if (*(i + 6) == *(a3 + 24))
    {
      if (resource_records_have_same_dnssec_rr_category(i[8], *(a3 + 64)))
      {
        if (*(i + 6) == *(a3 + 12) && *(i + 7) == *(a3 + 14) && *(i + 10) == *(a3 + 20) && *(i + 7) == *(a3 + 28))
        {
          if (SameRDataBody((i + 1), (*(a3 + 48) + 4), SameDomainName))
          {
            if (SameDomainNameBytes(i[5], *(a3 + 40)))
            {
              v7 = i;
              do
              {
                v8 = v7;
                v7 = v7[11];
              }

              while (v7);
              if (v8 == a2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  for (j = *(a1 + 12624); j; j = *j)
  {
    if (*(j + 6) == *(a3 + 24))
    {
      if (resource_records_have_same_dnssec_rr_category(j[8], *(a3 + 64)))
      {
        if (*(j + 6) == *(a3 + 12) && *(j + 7) == *(a3 + 14) && *(j + 10) == *(a3 + 20) && *(j + 7) == *(a3 + 28))
        {
          if (SameRDataBody((j + 1), (*(a3 + 48) + 4), SameDomainName))
          {
            if (SameDomainNameBytes(j[5], *(a3 + 40)))
            {
              v10 = j;
              do
              {
                v11 = v10;
                v10 = v10[11];
              }

              while (v10);
              if (v11 == a2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  v12 = *(a2 + 96) ? *(a2 + 96) : a2;
  v13 = *(a1 + 12616);
  if (v13)
  {
    while (*(v13 + 6) != *(a3 + 24) || !resource_records_have_same_dnssec_rr_category(v13[8], *(a3 + 64)) || *(v13 + 6) != *(a3 + 12) || *(v13 + 7) != *(a3 + 14) || *(v13 + 10) != *(a3 + 20) || *(v13 + 7) != *(a3 + 28) || !SameRDataBody((v13 + 1), (*(a3 + 48) + 4), SameDomainName) || !SameDomainNameBytes(v13[5], *(a3 + 40)))
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_42;
      }
    }

    v14 = v13[12];
    if (!v14)
    {
      v14 = v13;
    }
  }

  else
  {
LABEL_42:
    v14 = 0;
  }

  if (v14 == v12 || v14 && *(a2 + 126))
  {
    return 0;
  }

  if (!SameDomainNameBytes(*(a3 + 40), (a1 + 10408)))
  {
    return 1;
  }

  v16 = time(0);
  v17 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    return 1;
  }

  v18 = v16;
  while (*(v17 + 3768) || !*(v17 + 212) || (v18 - *(v17 + 3704)) > 3 || *(a3 + 24) != *(v17 + 48) || !resource_records_have_same_dnssec_rr_category(*(a3 + 64), *(v17 + 88)) || *(a3 + 12) != *(v17 + 36) || *(a3 + 14) != *(v17 + 38) || *(a3 + 20) != *(v17 + 44) || *(a3 + 28) != *(v17 + 52) || !SameRDataBody(a3 + 8, (*(v17 + 72) + 4), SameDomainName) || !SameDomainNameBytes(*(a3 + 40), *(v17 + 64)))
  {
    v17 = *(v17 + 3680);
    result = 1;
    if (!v17)
    {
      return result;
    }
  }

  v19 = mDNSLogCategory_State;
  result = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v20 = *(a3 + 32);
    v21 = (a1 + 47032);
    GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v21);
    v22[0] = 67109635;
    v22[1] = v20;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2085;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring conflict on interface %d with recently deregistered hostname record: %{sensitive, mask.hash}s", v22, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t AddAdditionalsToResponseList(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = a2;
    v11 = result;
    v12 = result + 11440;
    v13 = (result + 11696);
    while (1)
    {
      v14 = *(v10 + 72);
      if (v14 && ResourceRecordIsValidInterfaceAnswer(v14, a4, a3, a4, a5, a6, a7, a8))
      {
        v15 = *(v10 + 72);
        if (!*(v15 + 256) && *a3 != (v15 + 256))
        {
          **a3 = v15;
          v16 = *(v10 + 272);
          if (!v16)
          {
            v16 = v10;
          }

          *(v15 + 272) = v16;
          *a3 = (v15 + 256);
          v15 = *(v10 + 72);
        }

        AddRRSetAdditionalsToResponseList(v11, a3, v10, v15, a4, a6, a7, a8);
      }

      result = *(v10 + 80);
      if (result)
      {
        result = ResourceRecordIsValidInterfaceAnswer(result, a4, a3, a4, a5, a6, a7, a8);
        if (result)
        {
          v17 = *(v10 + 80);
          if (!*(v17 + 256) && *a3 != (v17 + 256))
          {
            **a3 = v17;
            v18 = *(v10 + 272);
            if (!v18)
            {
              v18 = v10;
            }

            *(v17 + 272) = v18;
            *a3 = (v17 + 256);
            v17 = *(v10 + 80);
          }

          result = AddRRSetAdditionalsToResponseList(v11, a3, v10, v17, a4, a6, a7, a8);
        }
      }

      v19 = *(v10 + 12);
      if (v19 > 0x1B)
      {
        break;
      }

      if (v19 == 1)
      {
        goto LABEL_47;
      }

      if (v19 == 12)
      {
        result = ResourceRecordIsValidInterfaceAnswer(v12, a4, a3, a4, a5, a6, a7, a8);
        if (result)
        {
          result = SameDomainLabelPointer(*(v10 + 48) + 4, v11[1435]);
          if (result)
          {
            if (!*v13 && *a3 != v13)
            {
              **a3 = v12;
              v20 = *(v10 + 272);
              if (!v20)
              {
                v20 = v10;
              }

              v11[1464] = v20;
              *a3 = v13;
            }
          }
        }
      }

LABEL_62:
      v10 = *(v10 + 256);
      if (!v10)
      {
        return result;
      }
    }

    if (v19 != 28)
    {
      if (v19 == 33)
      {
        for (i = v11[1577]; i; i = *i)
        {
          v22 = *(i + 12);
          if (v22 == 28 || v22 == 1)
          {
            result = ResourceRecordIsValidInterfaceAnswer(i, a4, a3, a4, a5, a6, a7, a8);
            if (result)
            {
              if (*(v10 + 28) == *(i + 24))
              {
                result = SameDomainNameBytes((*(v10 + 48) + 10), *(i + 40));
                if (result)
                {
                  if (!*(i + 256) && *a3 != (i + 256))
                  {
                    **a3 = i;
                    v24 = *(v10 + 272);
                    if (!v24)
                    {
                      v24 = v10;
                    }

                    *(i + 272) = v24;
                    *a3 = (i + 256);
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_62;
    }

LABEL_47:
    for (j = v11[1577]; j; j = *j)
    {
      v26 = *(j + 12);
      if (v26 == 28 || v26 == 1)
      {
        result = ResourceRecordIsValidInterfaceAnswer(j, a4, a3, a4, a5, a6, a7, a8);
        if (result)
        {
          if (*(v10 + 24) == *(j + 24))
          {
            result = SameDomainNameBytes(*(v10 + 40), *(j + 40));
            if (result)
            {
              if (!*(j + 256) && *a3 != (j + 256))
              {
                **a3 = j;
                v28 = *(v10 + 272);
                if (!v28)
                {
                  v28 = v10;
                }

                *(j + 272) = v28;
                *a3 = (j + 256);
              }
            }
          }
        }
      }
    }

    goto LABEL_62;
  }

  return result;
}

void mDNS_HostNameCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != -65792)
  {
    if (a3 == -65548)
    {
      v10 = *(a1 + 10360);
      v19[0] = *(a1 + 10344);
      v19[1] = v10;
      v11 = *(a1 + 10392);
      v19[2] = *(a1 + 10376);
      v19[3] = v11;
      v12 = *(a1 + 32);
      if (v12)
      {
        v12(a1, 4294901748);
      }

      if (SameDomainLabelPointer(a1 + 10344, v19))
      {
        IncrementLabelSuffix((a1 + 10344), 0);
      }

      mDNS_SetFQDN(a1);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname %#s.local already in use; will try %#s.local instead", v13, v14, v15, v16, v17, v19);
    }

    else if (a3)
    {
      v18 = *(a2 + 40);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_HostNameCallback: Unknown error %d for registration of record %s", a4, a5, a6, a7, a8, a3);
    }

    else
    {
      v9 = *(a1 + 32);
      if (v9)
      {

        v9();
      }
    }
  }
}

void regservice_callback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = 0;
  if (!a2)
  {
    v15 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v16 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: srs is NULL %d";
    }

    else
    {
      v15 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: srs is NULL %d";
    }

LABEL_90:
    v42 = v15;
    v43 = 8;
LABEL_91:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v17, buf, v43);
    return;
  }

  v10 = *(a2 + 8);
  if (!v10)
  {
    v15 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v18 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: srs->ServiceContext is NULL %d";
    }

    else
    {
      v15 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: srs->ServiceContext is NULL %d";
    }

    goto LABEL_90;
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    v13 = "CALLBACK";
    if (*(*(v12 + 128) + 1355))
    {
      v14 = *(v10 + 26) != 0;
      if (!*(v10 + 26))
      {
        v13 = "suppressed error";
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
    v13 = "CALLBACK";
  }

  if (mDNS_LoggingEnabled == 1)
  {
    memset(v106, 0, sizeof(v106));
    v21 = *(v10 + 8);
    if (v21)
    {
      v22 = *(v21 + 200);
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = 0;
      if (a3)
      {
LABEL_30:
        if (a3 == -65548)
        {
          v23 = "NAME CONFLICT";
        }

        else
        {
          if (a3 != -65792)
          {
            v89 = v13;
            v90 = v106;
            mDNS_snprintf(v106);
            goto LABEL_38;
          }

          v23 = "DEREGISTERED";
        }

LABEL_36:
        v90 = v23;
LABEL_38:
        v24 = *(a2 + 2448);
        v25 = mDNS_DomainNameFNV1aHash(v24);
        v26 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v30 = v24;
              while (1)
              {
                if (!v30 || (v31 = *v30, v31 > 0x3F))
                {
LABEL_55:
                  v29 = 257;
                  goto LABEL_60;
                }

                if (!*v30)
                {
                  break;
                }

                v30 += v31 + 1;
                if (v30 - v24 >= 256)
                {
                  goto LABEL_55;
                }
              }

              v29 = (v30 - v24 + 1);
            }

            else
            {
              v29 = 0;
            }

            goto LABEL_60;
          }
        }

        else
        {
          v26 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v27 = v24;
              while (1)
              {
                if (!v27 || (v28 = *v27, v28 > 0x3F))
                {
LABEL_47:
                  v29 = 257;
                  goto LABEL_60;
                }

                if (!*v27)
                {
                  break;
                }

                v27 += v28 + 1;
                if (v27 - v24 >= 256)
                {
                  goto LABEL_47;
                }
              }

              v29 = (v27 - v24 + 1);
            }

            else
            {
              v29 = 0;
            }

LABEL_60:
            v32 = bswap32(*(*(a2 + 2456) + 8)) >> 16;
            *buf = 67110659;
            v93 = v22;
            v94 = 2160;
            v95 = 1752392040;
            v96 = 1040;
            v97 = v29;
            v98 = 2101;
            v99 = v24;
            v100 = 1024;
            v101 = v25;
            v102 = 1024;
            v103 = v32;
            v104 = 2080;
            v105 = v90;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), %u) %s", buf, 0x38u);
          }
        }

        v12 = *(v10 + 8);
        goto LABEL_62;
      }
    }

    v23 = "REGISTERED";
    goto LABEL_36;
  }

LABEL_62:
  if (a3 != -65792 && !v12)
  {
    v15 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: instance->request is NULL %d";
    }

    else
    {
      v15 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v93 = a3;
      v17 = "regservice_callback: instance->request is NULL %d";
    }

    goto LABEL_90;
  }

  if (a3 == -65792)
  {
    if (v12 && *(v10 + 24))
    {
      external_stop_advertising_helper(v10, a2, v12, a4, a5, a6, a7, a8);
      *(v10 + 24) = 0;
      v45 = mDNS_RenameAndReregisterService(a1, a2, (*(*(v10 + 8) + 128) + 26));
      if (!v45)
      {
        return;
      }

      v46 = v45;
      v47 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v47 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      v70 = *(*(v10 + 8) + 200);
      *buf = 67109376;
      v93 = v70;
      v94 = 1024;
      LODWORD(v95) = v46;
      v17 = "[R%u] ERROR: regservice_callback - RenameAndReregisterService returned %d";
      v42 = v47;
      v43 = 14;
      goto LABEL_91;
    }

    goto LABEL_199;
  }

  if (a3 != -65548)
  {
    if (a3)
    {
      if (!v14)
      {
        return;
      }

      if (!GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v12, &v91, 0x41, 2u, a3))
      {
        append_reply(*(v10 + 8), v91);
        *(v10 + 25) = 1;
        return;
      }

      v48 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v49 = *(*(v10 + 8) + 200);
        v50 = *(a2 + 2448);
        if (v50)
        {
          v68 = *(a2 + 2448);
          while (1)
          {
            if (!v68 || (v69 = *v68, v69 > 0x3F))
            {
LABEL_147:
              v53 = 257;
              goto LABEL_193;
            }

            if (!*v68)
            {
              break;
            }

            v68 += v69 + 1;
            if (v68 - v50 >= 256)
            {
              goto LABEL_147;
            }
          }

          v53 = (v68 - v50 + 1);
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v48 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v49 = *(*(v10 + 8) + 200);
        v50 = *(a2 + 2448);
        if (v50)
        {
          v51 = *(a2 + 2448);
          while (1)
          {
            if (!v51 || (v52 = *v51, v52 > 0x3F))
            {
LABEL_117:
              v53 = 257;
              goto LABEL_193;
            }

            if (!*v51)
            {
              break;
            }

            v51 += v52 + 1;
            if (v51 - v50 >= 256)
            {
              goto LABEL_117;
            }
          }

          v53 = (v51 - v50 + 1);
        }

        else
        {
          v53 = 0;
        }
      }

LABEL_193:
      *buf = 67109891;
      v93 = v49;
      v94 = 2160;
      v95 = 1752392040;
      v96 = 1040;
      v97 = v53;
      v98 = 2101;
      v99 = v50;
      v17 = "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name";
      v42 = v48;
      v43 = 34;
      goto LABEL_91;
    }

    v33 = *(v12 + 128);
    if (*(v33 + 1614))
    {
      *(a2 + 177) = 1;
      *(a2 + 1353) = 1;
      *(a2 + 2529) = 1;
      *(a2 + 3705) = 1;
      for (i = *(v10 + 312); i; i = *i)
      {
        *(i + 137) = 1;
      }
    }

    if (!GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v12, &v91, 0x41, 2u, 0))
    {
      append_reply(*(v10 + 8), v91);
      *(v10 + 25) = 1;
      goto LABEL_167;
    }

    v35 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v36 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      v37 = *(*(v10 + 8) + 200);
      v38 = *(a2 + 2448);
      if (v38)
      {
        v39 = *(a2 + 2448);
        while (1)
        {
          if (!v39 || (v40 = *v39, v40 > 0x3F))
          {
LABEL_87:
            v41 = 257;
            goto LABEL_166;
          }

          if (!*v39)
          {
            break;
          }

          v39 += v40 + 1;
          if (v39 - v38 >= 256)
          {
            goto LABEL_87;
          }
        }

        v41 = (v39 - v38 + 1);
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v35 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_167:
        if (!callExternalHelpers(*v33, (v10 + 28), *(*(v10 + 8) + 248), v61, v62, v63, v64, v65))
        {
LABEL_186:
          if (*(v33 + 1612) && !CountPeerRegistrations(a2))
          {
            v88 = dword_10016D258;
            if (dword_10016D258 <= 1)
            {
              v88 = 1;
            }

            *(mDNSStorage[0] + 492) = v88;
          }

          return;
        }

        v73 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v80 = *(*(v10 + 8) + 200);
          *buf = 67109120;
          v93 = v80;
        }

        else
        {
          v73 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v79 = *(*(v10 + 8) + 200);
          *buf = 67109120;
          v93 = v79;
        }

        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: calling external_start_advertising_helper()", buf, 8u);
LABEL_175:
        v81 = *(v10 + 8);
        v82 = *(v81 + 128);
        if (*(v82 + 24))
        {
          v83 = *(v10 + 16);
          v84 = *(v81 + 188);
          if (*(v10 + 27))
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_start_advertising_helper: external_advertise already set!", v74, v75, v76, v77, v78, v89);
          }

          if (*(v82 + 1616))
          {
            v85 = 0;
            v86 = v83 + 8;
            do
            {
              internal_start_advertising_service(v86, *(*(v10 + 8) + 248), v84);
              ++v85;
              v86 += 1176;
            }

            while (v85 < *(v82 + 1616));
          }

          internal_start_advertising_service(v10 + 1528, *(*(v10 + 8) + 248), v84);
          internal_start_advertising_service(v10 + 2704, *(*(v10 + 8) + 248), v84);
          internal_start_advertising_service(v10 + 3880, *(*(v10 + 8) + 248), v84);
          for (j = *(v10 + 312); j; j = *j)
          {
            internal_start_advertising_service((j + 3), *(*(v10 + 8) + 248), v84);
          }

          *(v10 + 27) = 1;
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_start_advertising_helper: Not registering service with port number zero", v74, v75, v76, v77, v78, v89);
        }

        goto LABEL_186;
      }

      v37 = *(*(v10 + 8) + 200);
      v38 = *(a2 + 2448);
      if (v38)
      {
        v66 = *(a2 + 2448);
        while (1)
        {
          if (!v66 || (v67 = *v66, v67 > 0x3F))
          {
LABEL_138:
            v41 = 257;
            goto LABEL_166;
          }

          if (!*v66)
          {
            break;
          }

          v66 += v67 + 1;
          if (v66 - v38 >= 256)
          {
            goto LABEL_138;
          }
        }

        v41 = (v66 - v38 + 1);
      }

      else
      {
        v41 = 0;
      }
    }

LABEL_166:
    *buf = 67109891;
    v93 = v37;
    v94 = 2160;
    v95 = 1752392040;
    v96 = 1040;
    v97 = v41;
    v98 = 2101;
    v99 = v38;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name", buf, 0x22u);
    goto LABEL_167;
  }

  v44 = *(v12 + 128);
  if (!*(v44 + 1613))
  {
    if (v14)
    {
      if (GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v12, &v91, 0x41, 2u, 0xFFFEFFF4))
      {
        v54 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(*(v10 + 8) + 200);
            v56 = *(a2 + 2448);
            if (v56)
            {
              v71 = *(a2 + 2448);
              while (1)
              {
                if (!v71 || (v72 = *v71, v72 > 0x3F))
                {
LABEL_159:
                  v59 = 257;
                  goto LABEL_198;
                }

                if (!*v71)
                {
                  break;
                }

                v71 += v72 + 1;
                if (v71 - v56 >= 256)
                {
                  goto LABEL_159;
                }
              }

              v59 = (v71 - v56 + 1);
            }

            else
            {
              v59 = 0;
            }

            goto LABEL_198;
          }
        }

        else
        {
          v54 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(*(v10 + 8) + 200);
            v56 = *(a2 + 2448);
            if (v56)
            {
              v57 = *(a2 + 2448);
              while (1)
              {
                if (!v57 || (v58 = *v57, v58 > 0x3F))
                {
LABEL_129:
                  v59 = 257;
                  goto LABEL_198;
                }

                if (!*v57)
                {
                  break;
                }

                v57 += v58 + 1;
                if (v57 - v56 >= 256)
                {
                  goto LABEL_129;
                }
              }

              v59 = (v57 - v56 + 1);
            }

            else
            {
              v59 = 0;
            }

LABEL_198:
            *buf = 67109891;
            v93 = v55;
            v94 = 2160;
            v95 = 1752392040;
            v96 = 1040;
            v97 = v59;
            v98 = 2101;
            v99 = v56;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name", buf, 0x22u);
          }
        }
      }

      else
      {
        append_reply(*(v10 + 8), v91);
        *(v10 + 25) = 1;
      }
    }

LABEL_199:
    unlink_and_free_service_instance(v10, a2, v12, a4, a5, a6, a7, a8);
    return;
  }

  external_stop_advertising_helper(v10, a2, v12, a4, a5, a6, a7, a8);
  if (*(v44 + 1612) && !CountPeerRegistrations(a2))
  {
    IncrementLabelSuffix((a1 + 10280), 1);
    mDNS_ConfigChanged(a1);
  }

  else
  {
    if (*(v10 + 25))
    {
      SendServiceRemovalNotification(a2);
    }

    mDNS_RenameAndReregisterService(a1, a2, 0);
  }
}

uint64_t GenerateNTDResponse(char *a1, uint64_t a2, uint64_t a3, char **a4, char *a5, unsigned int a6, unsigned int a7)
{
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  *a4 = 0;
  if (a1)
  {
    if (!DeconstructServiceName(a1, v59, v58, v57))
    {
      return 4294901747;
    }

    memset(__s, 0, sizeof(__s));
    bzero(&__src, 0x3F1uLL);
    bzero(&v52, 0x3F1uLL);
    v14 = v59[0];
    if (v59[0] <= 0x3FuLL)
    {
      v15 = &v59[1];
      if (&v59[1] >= &v59[v59[0] + 1])
      {
        v16 = __s;
      }

      else
      {
        v16 = __s;
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v14;
        }

        while (v14);
      }

      *v16 = 0;
    }

    v50 = a7;
    ConvertDomainNameToCString_withescape(v58, &__src);
    ConvertDomainNameToCString_withescape(v57, &v52);
  }

  else
  {
    v50 = a7;
    __s[3] = 0uLL;
    *(&__s[2] + 1) = 0uLL;
    *(&__s[1] + 1) = 0uLL;
    *(__s + 1) = 0uLL;
    bzero(&v55, 0x3F0uLL);
    bzero(&v53, 0x3F0uLL);
    LOBYTE(__s[0]) = 0;
    __src = 0;
    v52 = 0;
  }

  v24 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, a2, 0, v18, v19, v20, v21, v22);
  v25 = strlen(__s);
  v26 = strlen(&__src);
  v27 = 0;
  v28 = 0;
  v34 = v25 + v26 + strlen(&v52) + 15;
  if (a1 && *(a3 + 290))
  {
    v51 = 0;
    memset(out, 0, 16);
    uuid_generate_random(out);
    v35 = _mdns_signed_browse_result_create_ex(out, a1, v24, 0, 0, &v51);
    v36 = v35;
    if (v35 && !v51)
    {
      *out = 0;
      data = mdns_signed_result_get_data(v35, out);
      v38 = *out;
      if (*out >= 0x10000uLL)
      {
        v38 = 0;
      }

      v28 = v38;
      if (*out >= 0x10000uLL)
      {
        v27 = 0;
      }

      else
      {
        v27 = data;
      }

      if (*out >= 0x10000uLL)
      {
        v39 = 0;
      }

      else
      {
        v39 = *out + 4;
      }

      v34 += v39;
      goto LABEL_35;
    }

    v40 = v51;
    v41 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        *out = 134217984;
        *&out[4] = v40;
        goto LABEL_33;
      }
    }

    else
    {
      v41 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        *out = 134217984;
        *&out[4] = v40;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "GenerateBrowseReply signed_browse failed %ld", out, 0xCu);
      }
    }

    v28 = 0;
    v27 = 0;
    goto LABEL_35;
  }

  v36 = 0;
LABEL_35:
  reply = create_reply(a5, v34, a3, v29, v30, v31, v32, v33);
  *a4 = reply;
  *(reply + 11) = bswap32(a6);
  *(reply + 12) = bswap32(v24);
  *(reply + 13) = bswap32(v50);
  v43 = reply + 56;
  memcpy(reply + 56, __s, v25 + 1);
  v44 = &v43[v25 + 1];
  v45 = strlen(&__src) + 1;
  memcpy(v44, &__src, v45);
  v46 = &v44[v45];
  v47 = strlen(&v52) + 1;
  memcpy(v46, &v52, v47);
  if (v27)
  {
    v48 = *a4;
    v49 = &v46[v47];
    if (&v46[v47])
    {
      if (v49 <= &v49[v34] && v34 >= v28 + 4)
      {
        *v49 = 1792;
        v49[2] = BYTE1(v28);
        v49[3] = v28;
        if (v28)
        {
          memcpy(v49 + 4, v27, v28);
        }
      }
    }

    *(v48 + 6) |= 2u;
  }

  if (v36)
  {
    os_release(v36);
  }

  return 0;
}

uint64_t DeconstructServiceName(char *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *a1;
  if ((v4 - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  v5 = (a1 + 256);
  v6 = v4 + 1;
  do
  {
    v7 = *a1++;
    *a2++ = v7;
    --v6;
  }

  while (v6);
  v8 = *a1;
  if ((v8 - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  if (a1[1] != 95)
  {
    return 0;
  }

  v9 = v8 + 1;
  do
  {
    v10 = *a1++;
    *a3++ = v10;
    --v9;
  }

  while (v9);
  if (*a1 != 4 || a1[1] != 95)
  {
    return 0;
  }

  v11 = a1[2] & 0xDF;
  if (v11 == 84)
  {
    if ((a1[3] & 0xDF) != 0x43)
    {
      return 0;
    }
  }

  else if (v11 != 85 || (a1[3] & 0xDF) != 0x44)
  {
    return 0;
  }

  if ((a1[4] & 0xDF) != 0x50)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    v13 = *a1++;
    a3[v12++] = v13;
  }

  while (v12 != 5);
  a3[v12] = 0;
  while (1)
  {
    v14 = *a1;
    if (!*a1)
    {
      break;
    }

    v15 = 0;
    if (v14 > 0x3F || &a1[*a1 + 2] >= v5)
    {
      return v15;
    }

    v16 = v14 + 1;
    do
    {
      v17 = *a1++;
      *a4++ = v17;
      --v16;
    }

    while (v16);
  }

  *a4 = 0;
  return 1;
}

uint64_t CountPeerRegistrations(uint64_t a1)
{
  v1 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*(v1 + 6) == 33 && SameDomainNameBytes(v1[5], *(a1 + 2448)))
    {
      if (resource_records_have_same_dnssec_rr_category(v1[8], *(a1 + 2472)) && *(v1 + 6) == *(a1 + 2420) && *(v1 + 7) == *(a1 + 2422) && *(v1 + 10) == *(a1 + 2428) && *(v1 + 7) == *(a1 + 2436))
      {
        v4 = SameRDataBody((v1 + 1), (*(a1 + 2456) + 4), SameDomainName) ^ 1;
      }

      else
      {
        v4 = 1;
      }

      v3 = (v4 + v3);
    }

    v1 = *v1;
  }

  while (v1);
  return v3;
}

void ClearProxyRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 12640);
  v7 = &unk_100178000;
  if (v6)
  {
    v8 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "ClearProxyRecords ERROR m->CurrentRecord already set %s", v9, v10, v11, v12, v13, a1 + 47032);
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    v14 = *(a1 + 37944);
    v15 = &unk_10016D000;
    do
    {
      if (v14 != *(a3 + 32) || *(a2 + 2) != *(a3 + 126) || *(a2 + 4) != *(a3 + 128) || *(a2 + 6) != *(a3 + 130) || *(a2 + 1) == *(a3 + 125) && *(a1 + 64) - *(a3 + 164) < 60001)
      {
        goto LABEL_19;
      }

      if (v15[208] == 1)
      {
        v34 = *(a3 + 191);
        v35 = *(v7 + 434);
        v16 = *(a3 + 8);
        v17 = v7;
        v18 = *(a1 + 19888);
        GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), (a1 + 47032));
        v15 = &unk_10016D000;
        v33 = v18;
        v7 = v17;
        LogMsgWithLevel(v35, OS_LOG_TYPE_DEFAULT, "ClearProxyRecords: Removing %3d AC %2d %02X H-MAC %.6a I-MAC %.6a %d %d %s", v19, v20, v21, v22, v23, v33);
      }

      if (*(a3 + 8) == 1)
      {
        *(a3 + 8) = 8;
      }

      *(a3 + 130) = 0;
      *(a3 + 126) = 0;
      *(a3 + 192) = 0;
      mDNS_Deregister_internal(a1, a3, 0);
      v31 = *(a1 + 15112);
      v14 = *(a1 + 37944);
      if (v31)
      {
        if (v31 != v14)
        {
          mDNSPlatformUpdateProxyList(v31, v24, v25, v26, v27, v28, v29, v30);
          v14 = *(a1 + 37944);
        }
      }

      *(a1 + 15112) = v14;
      v32 = *(a1 + 12640);
      if (v32 == a3)
      {
LABEL_19:
        v32 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v32;
    }

    while (v32);
  }
}

void SendResponses(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 12656);
  if (v9)
  {
    while (!*(v9 + 16))
    {
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v247 = v9;
  }

  else
  {
LABEL_4:
    v247 = 0;
  }

  *(a1 + 100) = *(a1 + 64) + 939524096;
  v10 = *(a1 + 12616);
  if (!v10)
  {
    goto LABEL_160;
  }

  v11 = (a1 + 47032);
  do
  {
    if (*(v10 + 195))
    {
      *v274 = xmmword_10010D568;
      *buf = 6;
      v12 = *(v10 + 58);
      v275 = 0;
      *&v274[4] = v12;
      *v261 = *(v10 + 236);
      if (v12)
      {
        SendDelayedUnicastResponse(v8, v274, v10[26], a4, a5, a6, a7, a8);
      }

      if (vorr_s8(*(v10 + 236), *&vextq_s8(*(v10 + 236), *(v10 + 236), 8uLL)))
      {
        SendDelayedUnicastResponse(v8, buf, v10[26], a4, a5, a6, a7, a8);
      }

      if (*(v10 + 195))
      {
        v13 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v10 + 8, (v10[6] + 4), (v8 + 47032));
        LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "SendResponses: ERROR: rr->ImmedUnicast still set: %s", v14, v15, v16, v17, v18, v8 + 47032);
        *(v10 + 195) = 0;
      }
    }

    v10 = *v10;
  }

  while (v10);
  v19 = *(v8 + 12616);
  if (!v19)
  {
    goto LABEL_160;
  }

  v20 = 0;
  do
  {
    v21 = *(v19 + 332);
    if (v21)
    {
      v22 = *(v8 + 64);
      do
      {
        if ((v22 - v21) < 0)
        {
          break;
        }

        v23 = *(v19 + 328) + 1;
        *(v19 + 328) = v23;
        v21 += 6000;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        v24 = v23 <= 9 ? v21 : 0;
        *(v19 + 332) = v24;
      }

      while (v23 < 0xA);
    }

    v25 = *(v19 + 191);
    if (*(v19 + 191))
    {
      v26 = *(v8 + 64);
      v27 = *(v19 + 280);
      if (v26 - (*(v19 + 284) + v27) >= 0)
      {
        if (*(v19 + 8) == 1)
        {
          if (*(v19 + 126))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v28 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v11);
              v8 = a1;
              LogMsgWithLevel(v28, OS_LOG_TYPE_DEFAULT, "SendResponses: Sending wakeup %2d for %.6a %s", v29, v30, v31, v32, v33, v25 - 3);
              v25 = *(v19 + 191);
            }

            SendWakeup(v8, *(v19 + 32), (v19 + 132), v19 + 138, (v25 - 17) < 2);
            v34 = v19;
            do
            {
              if (*(v34 + 8) == 1)
              {
                v35 = *(v34 + 191);
                if (*(v34 + 191))
                {
                  if (*(v34 + 32) == *(v19 + 32) && *(v34 + 132) == *(v19 + 132) && *(v34 + 134) == *(v19 + 134) && *(v34 + 136) == *(v19 + 136) && (*(v34 + 126) || *(v34 + 128) || *(v34 + 130)))
                  {
                    if (v35 == 18 && *(v34 + 144) == 6)
                    {
                      if (mDNS_LoggingEnabled == 1)
                      {
                        v36 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v34 + 8), (*(v34 + 48) + 4), v11);
                        LogMsgWithLevel(v36, OS_LOG_TYPE_DEFAULT, "NDP Announcement %2d Releasing traffic for H-MAC %.6a I-MAC %.6a %s", v37, v38, v39, v40, v41, 15);
                      }

                      SendNDP(v8, 136, 32, v34, (v34 + 148), (v34 + 132), &AllHosts_v6, "33");
                      LOBYTE(v35) = *(v34 + 191);
                    }

                    *(v34 + 284) = *(v8 + 64);
                    v42 = v35 - 1;
                    *(v34 + 191) = v42;
                    if (v42 <= 3u)
                    {
                      *(v34 + 130) = 0;
                      *(v34 + 126) = 0;
                    }
                  }
                }
              }

              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            *(v19 + 208) = -1;
          }
        }

        else if (ResourceRecordIsValidAnswer(v19))
        {
          v43 = *(v19 + 144);
          if (v43)
          {
            if (*(v19 + 126) || *(v19 + 128) || *(v19 + 130))
            {
              v44 = v25 - 1;
              *(v19 + 191) = v44;
              *(v19 + 280) = 2 * v27;
              *(v19 + 284) = v26;
              if (v43 == 6)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  v51 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v11);
                  v8 = a1;
                  LogMsgWithLevel(v51, OS_LOG_TYPE_DEFAULT, "NDP Announcement %2d Capturing traffic for H-MAC %.6a I-MAC %.6a %s", v52, v53, v54, v55, v56, v44);
                }

                SendNDP(v8, 136, 32, v19, (v19 + 148), 0, &AllHosts_v6, "33");
              }

              else if (v43 == 4)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  v45 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v11);
                  v8 = a1;
                  LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "ARP Announcement %2d Capturing traffic for H-MAC %.6a I-MAC %.6a %s", v46, v47, v48, v49, v50, v44);
                }

                SendARP(v8, 1, v19, v19 + 148, &zeroEthAddr, v19 + 148, onesEthAddr);
              }
            }
          }

          else
          {
            *(v19 + 208) = -1;
            if (v20 <= v27)
            {
              v20 = v27;
            }

            if (*(v19 + 336))
            {
              *(v19 + 336) = 0;
            }
          }
        }
      }
    }

    v19 = *v19;
  }

  while (v19);
  v57 = *(v8 + 12616);
  if (!v57)
  {
    goto LABEL_160;
  }

  do
  {
    if (*(v57 + 32) && *(v57 + 208) || (v58 = *(v57 + 280), v58 <= v20) && *(v57 + 191) && *(v8 + 64) + v58 / 2 - (v58 + *(v57 + 284)) >= 0 && !*(v57 + 144) && ResourceRecordIsValidAnswer(v57))
    {
      *(v57 + 208) = -1;
    }

    v57 = *v57;
  }

  while (v57);
  v59 = *(v8 + 12616);
  if (!v59)
  {
    goto LABEL_160;
  }

  do
  {
    if (v59[26])
    {
      if (*(v59 + 6) != 33)
      {
        goto LABEL_479;
      }

      v60 = *(v8 + 12616);
      if (!v60)
      {
        goto LABEL_479;
      }

      do
      {
        v61 = *(v60 + 12);
        if ((v61 == 28 || v61 == 1) && ResourceRecordIsValidAnswer(v60) && *(v59 + 72) - *(v60 + 288) >= 0 && *(v59 + 7) == *(v60 + 24))
        {
          if (SameDomainNameBytes((v59[6] + 10), *(v60 + 40)))
          {
            v63 = v59[26];
            v64 = *(v60 + 32);
            if (v63 == -1 || v63 == v64)
            {
              *(v60 + 216) = v64;
            }
          }
        }

        v60 = *v60;
      }

      while (v60);
      if (v59[26])
      {
LABEL_479:
        if (*(v59 + 8) == 8 && *(v59 + 6) == 12 && ResourceRecordIsValidAnswer(v8 + 11440) && SameDomainLabelPointer(v59[6] + 4, *(v8 + 11480)))
        {
          if (*(v8 + 11648))
          {
            v65 = -1;
          }

          else
          {
            v65 = v59[26];
          }

          *(v8 + 11648) = v65;
        }
      }
    }

    v59 = *v59;
  }

  while (v59);
  v66 = *(v8 + 12616);
  if (!v66)
  {
    goto LABEL_160;
  }

  do
  {
    if ((*(v66 + 8) & 0x32) == 0)
    {
      goto LABEL_145;
    }

    v67 = (v66 + 208);
    if (!*(v66 + 208))
    {
      if (!*(v66 + 216))
      {
        goto LABEL_145;
      }

      v73 = *(v8 + 12616);
      if (!v73)
      {
        goto LABEL_145;
      }

      while (1)
      {
        if ((*(v73 + 8) & 0x32) == 0 || !ResourceRecordIsValidAnswer(v73) || *(v73 + 216) == *(v66 + 216) || *(v73 + 12) != *(v66 + 12) || !SameResourceRecordNameClassInterface(v73, v66, a3, a4, a5, a6, a7, a8))
        {
          goto LABEL_141;
        }

        v74 = *(v66 + 216);
        v75 = *(v73 + 32);
        if (!v75)
        {
          break;
        }

        if (v75 == v74)
        {
          goto LABEL_140;
        }

LABEL_141:
        v73 = *v73;
        if (!v73)
        {
          goto LABEL_145;
        }
      }

      if (!mDNSPlatformValidRecordForInterface(v73, v74, a3, a4, a5, a6, a7, a8))
      {
        goto LABEL_141;
      }

LABEL_140:
      *(v73 + 216) = *(v66 + 216);
      goto LABEL_141;
    }

    for (i = *(v8 + 12616); i; i = *i)
    {
      if ((*(i + 8) & 0x32) != 0 && ResourceRecordIsValidAnswer(i))
      {
        v69 = *(i + 208);
        if (v69 != -1 && v69 != *v67 && *(i + 12) == *(v66 + 12) && SameResourceRecordNameClassInterface(i, v66, a3, a4, a5, a6, a7, a8))
        {
          v70 = *v67;
          if (*v67 == -1)
          {
            goto LABEL_123;
          }

          v71 = *(i + 32);
          if (v71)
          {
            if (v71 == v70)
            {
              goto LABEL_123;
            }
          }

          else if (mDNSPlatformValidRecordForInterface(i, v70, a3, a4, a5, a6, a7, a8))
          {
LABEL_123:
            if (*(i + 208))
            {
              v72 = &mDNSInterfaceMark;
            }

            else
            {
              v72 = (v66 + 208);
            }

            *(i + 208) = *v72;
          }
        }
      }
    }

LABEL_145:
    v66 = *v66;
  }

  while (v66);
  for (j = *(v8 + 12616); j; j = *j)
  {
    v77 = *(j + 208);
    if (v77)
    {
      if (v77 == -1)
      {
        if (v247)
        {
          v78 = *(j + 32);
          if (!v78)
          {
            v78 = v247[444];
          }
        }

        else
        {
          v78 = 0;
        }

        *(j + 216) = 0;
        *(j + 224) = v78;
        v79 = *(v8 + 64);
        *(j + 288) = v79;
        *(j + 296) = -1;
        *(j + 189) = 0;
        if (*(j + 191))
        {
          v80 = *(j + 280);
          if (v79 + v80 / 2 - (v80 + *(j + 284)) >= 0)
          {
            --*(j + 191);
            if (*(j + 8) != 1)
            {
              *(j + 280) = 2 * v80;
            }

            *(j + 284) = v79;
          }
        }
      }

      else
      {
        *(j + 216) = 0;
        *(j + 224) = v77;
        *(j + 288) = *(v8 + 64);
        *(j + 296) = v77;
      }
    }

    SetNextAnnounceProbeTime(v8, j);
  }

LABEL_160:
  v81 = v247;
  if (!v247)
  {
    goto LABEL_446;
  }

  v249 = 0;
  v82 = v8 + 28960;
  v251 = v8 + 28972;
  v245 = (v8 + 47032);
  v256 = v8 + 28960;
  do
  {
    v83 = mDNS_McastTracingEnabled;
    if (mDNS_McastTracingEnabled)
    {
      v84 = 20;
    }

    else
    {
      v84 = 0;
    }

    v250 = v84;
    v259 = 0;
    *v82 = 8650752;
    *(v82 + 4) = 0;
    v85 = *(v8 + 12616);
    v252 = v83;
    if (!v85)
    {
      LOWORD(v253) = 0;
      v257 = v251;
      goto LABEL_377;
    }

    v253 = 0;
    v257 = v251;
    v248 = v81;
    do
    {
      v86 = *(v85 + 224);
      v87 = v81[444];
      if (v86 == v87)
      {
        if (*(v85 + 32))
        {
          goto LABEL_171;
        }

        if (!mDNSPlatformValidRecordForInterface(v85, v87, a3, a4, a5, a6, a7, a8))
        {
          v120 = v257;
          goto LABEL_248;
        }

        v86 = *(v85 + 224);
        v87 = v81[444];
      }

      if (v86 != v87)
      {
        goto LABEL_243;
      }

LABEL_171:
      v88 = (v85 + 8);
      if (*(v85 + 8) != 1)
      {
        v90 = *(v8 + 141);
        if ((*(v85 + 123) & 1) == 0)
        {
          if (v90 != 2)
          {
            v91 = 0;
            goto LABEL_180;
          }

          v90 = *(v81 + 3675);
        }

        v91 = v90 != 0;
LABEL_180:
        v89 = !v91;
        goto LABEL_181;
      }

      v89 = 0;
LABEL_181:
      v92 = *(v85 + 48);
      v93 = *(v85 + 20);
      v94 = mDNSGetTSRForAuthRecordNamed(*(v8 + 12616), *(v85 + 40), *(v85 + 24));
      v95 = *(v85 + 304);
      if (!v95 || !v89)
      {
        goto LABEL_203;
      }

      if (!ResourceRecordIsValidAnswer(v85) || *v88 != 8 || !*(v85 + 192))
      {
        v106 = v257;
LABEL_202:
        SetNewRData(v85 + 8, v95, *(v85 + 312), a4, a5, a6, a7, a8);
        v257 = v106;
        v82 = v256;
LABEL_203:
        if ((*v88 & 0x32) != 0)
        {
          *(v85 + 14) |= 0x8000u;
        }

        v111 = UnsafeBufferPointer(v85, v94, &v259);
        v112 = v253;
        if (v111)
        {
          v112 = v253 + 1;
        }

        if (v89)
        {
          v113 = *(v85 + 16);
        }

        else
        {
          v113 = 0;
        }

        if (*(v82 + 6) || *(v82 + 8))
        {
          v114 = 1440;
        }

        else
        {
          v114 = 1440;
          if (!*(v82 + 10))
          {
            v114 = 8940;
          }
        }

        if (v112)
        {
          v115 = v252 == 0;
        }

        else
        {
          v115 = 0;
        }

        v116 = v251 + v114;
        v117 = v250 + 14 * v112;
        if (v115)
        {
          v118 = 11;
        }

        else
        {
          v118 = 0;
        }

        v119 = PutResourceRecordTTLWithLimit(v82, v257, (v82 + 6), v85 + 8, v113, v116 - (v117 + v118), v109, v110);
        v120 = v119;
        if (v111)
        {
          if (v119)
          {
            v121 = *(v85 + 40);
            v122 = *(v82 + 6);
            v123 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v123)
            {
              goto LABEL_476;
            }

            ++v253;
            *(v111 + 8) = v122 - 1;
            v123[1] = v111;
            v123[2] = v121;
            *v123 = v259;
            v259 = v123;
            *(v85 + 14) &= ~0x8000u;
            v8 = a1;
            v81 = v248;
LABEL_224:
            v124 = 0;
            *(v85 + 192) = v89;
          }

          else
          {
            *(v85 + 14) &= ~0x8000u;
            v124 = 1;
            v120 = v257;
            v81 = v248;
          }
        }

        else
        {
          *(v85 + 14) &= ~0x8000u;
          v81 = v248;
          if (v119)
          {
            goto LABEL_224;
          }

          v124 = 1;
          v120 = v257;
        }

        if (*(v85 + 304) && v89)
        {
          SetNewRData(v85 + 8, v92, v93, a4, a5, a6, a7, a8);
        }

        if (!v249 && v89 && (*v88 & 0x30) != 0 && !*(v85 + 200))
        {
          *(v85 + 200) = -1;
          if ((v124 & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        else if ((v124 & 1) == 0)
        {
LABEL_238:
          if (*(v85 + 208) != -1 || *(v85 + 32))
          {
            v125 = 0;
            goto LABEL_241;
          }

LABEL_248:
          v125 = *v81;
          if (*v81)
          {
            while (!*(v125 + 16))
            {
              v125 = *v125;
              if (!v125)
              {
                goto LABEL_241;
              }
            }

            v125 = v125[444];
          }

LABEL_241:
          *(v85 + 224) = v125;
        }

        v257 = v120;
        goto LABEL_243;
      }

      v98 = UnsafeBufferPointer(v85, v94, &v259);
      v99 = v253;
      if (v98)
      {
        v99 = v253 + 1;
      }

      if (*(v82 + 6) || *(v82 + 8))
      {
        v100 = 1440;
      }

      else
      {
        v100 = 1440;
        if (!*(v82 + 10))
        {
          v100 = 8940;
        }
      }

      if (v99)
      {
        v101 = v252 == 0;
      }

      else
      {
        v101 = 0;
      }

      v102 = v251 + v100;
      v103 = v250 + 14 * v99;
      if (v101)
      {
        v104 = 11;
      }

      else
      {
        v104 = 0;
      }

      v105 = PutResourceRecordTTLWithLimit(v82, v257, (v82 + 6), v85 + 8, 0, v102 - (v103 + v104), v96, v97);
      v106 = v105;
      if (v98)
      {
        if (v105)
        {
          v258 = *(v85 + 40);
          v107 = *(v256 + 6);
          v108 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
          if (!v108)
          {
            goto LABEL_476;
          }

          ++v253;
          *(v98 + 8) = v107 - 1;
          v108[1] = v98;
          v108[2] = v258;
          *v108 = v259;
          v259 = v108;
          v8 = a1;
LABEL_254:
          *(v85 + 192) = 0;
          v95 = *(v85 + 304);
          goto LABEL_202;
        }

        v81 = v248;
      }

      else
      {
        v81 = v248;
        if (v105)
        {
          goto LABEL_254;
        }
      }

LABEL_243:
      v85 = *v85;
      v82 = v256;
    }

    while (v85);
    v126 = *(v8 + 12616);
    v127 = v257;
    if (!v126)
    {
      goto LABEL_377;
    }

    while (2)
    {
      if (*(v126 + 216) == v81[444] && ResourceRecordIsValidAnswer(v126))
      {
        if (*(v82 + 6))
        {
          goto LABEL_265;
        }

        if ((*(v126 + 8) & 0x32) != 0 && (v143 = *(v8 + 12616)) != 0)
        {
          while (*(v143 + 288) != *(v8 + 64) || *(v143 + 296) != v81[444] || *(v143 + 12) != *(v126 + 12) || !SameResourceRecordNameClassInterface(v143, v126, a3, a4, a5, a6, a7, a8))
          {
            v143 = *v143;
            if (!v143)
            {
              goto LABEL_294;
            }
          }

LABEL_265:
          if (v127)
          {
            v128 = *(v126 + 8);
            if (!v249 && (*(v126 + 8) & 0x30) != 0 && !*(v126 + 200))
            {
              *(v126 + 200) = -1;
            }

            if ((v128 & 0x32) != 0)
            {
              *(v126 + 14) |= 0x8000u;
            }

            v131 = UnsafeBufferPointer(*(v8 + 12616), v126, &v259);
            v132 = v253;
            if (v131)
            {
              v132 = v253 + 1;
            }

            if (*(v82 + 6) || *(v82 + 8))
            {
              v133 = 1440;
            }

            else
            {
              v133 = 1440;
              if (!*(v82 + 10))
              {
                v133 = 8940;
              }
            }

            if (v132)
            {
              v134 = v252 == 0;
            }

            else
            {
              v134 = 0;
            }

            v135 = v251 + v133;
            v136 = v250 + 14 * v132;
            if (v134)
            {
              v137 = 11;
            }

            else
            {
              v137 = 0;
            }

            v138 = PutResourceRecordTTLWithLimit(v82, v127, (v82 + 10), v126 + 8, *(v126 + 16), v135 - (v136 + v137), v129, v130);
            v127 = v138;
            if (v131)
            {
              if (v138)
              {
                v139 = *(v126 + 40);
                v140 = *(v82 + 6);
                v141 = *(v82 + 10);
                v142 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
                if (!v142)
                {
                  goto LABEL_476;
                }

                LOWORD(v253) = v253 + 1;
                *(v131 + 4) = v140 + v141 - 1;
                v142[1] = v131;
                v142[2] = v139;
                *v142 = v259;
                v259 = v142;
                *(v126 + 14) &= ~0x8000u;
                v8 = a1;
                v82 = v256;
LABEL_296:
                *(v126 + 216) = 0;
                *(v126 + 192) = 1;
                *(v126 + 288) = *(v8 + 64);
                *(v126 + 296) = v81[444];
                v257 = v127;
              }

              else
              {
                *(v126 + 14) &= ~0x8000u;
              }
            }

            else
            {
              *(v126 + 14) &= ~0x8000u;
              if (v138)
              {
                goto LABEL_296;
              }
            }
          }
        }

        else
        {
LABEL_294:
          *(v126 + 216) = 0;
        }
      }

      v126 = *v126;
      if (v126)
      {
        continue;
      }

      break;
    }

    v144 = *(v8 + 12616);
    if (!v144)
    {
      goto LABEL_377;
    }

    do
    {
      v145 = *(v144 + 200);
      if (v145 != -1 && v145 != v81[444])
      {
        goto LABEL_334;
      }

      bzero(v274, 0x498uLL);
      v151 = *(v144 + 16);
      if (v151)
      {
        v152 = *(v144 + 16);
      }

      else
      {
        v152 = 4500;
      }

      v274[8] = 2;
      if (v151 <= 0x20C49B)
      {
        v153 = v152;
      }

      else
      {
        v153 = 2147483;
      }

      strcpy(&v274[12], "/");
      v275 = v153;
      v309[0] = 264;
      v279 = v308;
      v280 = v309;
      v288 = 0;
      v289 = 0;
      v281 = 0u;
      v282 = 0u;
      v283 = 0u;
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
      v290 = v308;
      v304 = 0;
      v306 = 0;
      v307 = 0;
      v305 = 0;
      v308[0] = 0;
      v291 = 0u;
      v292 = 0u;
      v293 = 0u;
      v294 = 0u;
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v298 = 0u;
      v299 = 0u;
      v300 = 0u;
      v301 = 0u;
      v302 = 0u;
      memset(v303, 0, sizeof(v303));
      v154 = *(v144 + 40);
      v155 = v154;
      *&v274[14] = -32767;
      do
      {
        if (!v155)
        {
          break;
        }

        v156 = *v155;
        if (v156 > 0x3F)
        {
          break;
        }

        if (!*v155)
        {
          v157 = v155 - v154 + 1;
          if (v157 <= 0x100u)
          {
            memcpy(v308, v154, v157);
          }

          break;
        }

        v155 += v156 + 1;
      }

      while (v155 - v154 <= 255);
      v158 = *(v144 + 40);
      v159 = v158;
      while (1)
      {
        if (!v159 || (v160 = *v159, v160 > 0x3F))
        {
LABEL_323:
          v161 = 291;
          *v276 = 291;
LABEL_324:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendResponses: not enough space (%d)  in authrecord for nsec", v146, v147, v148, v149, v150, v161);
          goto LABEL_325;
        }

        if (!*v159)
        {
          break;
        }

        v159 += v160 + 1;
        if (v159 - v158 >= 256)
        {
          goto LABEL_323;
        }
      }

      v164 = v159 - v158;
      v161 = v164 + 35;
      *v276 = v164 + 35;
      if ((v164 + 35) > 0x108u)
      {
        goto LABEL_324;
      }

      v165 = v164 + 1;
      bzero(&v310, (v164 + 35));
      v166 = *(v144 + 40);
      v167 = v166;
      do
      {
        if (!v167)
        {
          break;
        }

        v168 = *v167;
        if (v168 > 0x3F)
        {
          break;
        }

        if (!*v167)
        {
          v169 = v167 - v166 + 1;
          if (v169 <= 0x100u)
          {
            memcpy(&v310, v166, v169);
            goto LABEL_346;
          }

          break;
        }

        v167 += v168 + 1;
      }

      while (v167 - v166 <= 255);
      LOBYTE(v310) = 0;
LABEL_346:
      v170 = (&v310 + v165);
      *v170 = 0x2000;
      v171 = v170 + 1;
      v172 = *(v8 + 12616);
      if (v172)
      {
        while (1)
        {
          if (ResourceRecordIsValidAnswer(v172) && SameResourceRecordNameClassInterface(v172, v144, v173, v174, v175, v176, v177, v178))
          {
            v179 = *(v172 + 12);
            if (v179 >= 0xFF)
            {
              v196 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v172 + 8), (*(v172 + 48) + 4), v245);
              LogMsgWithLevel(v196, OS_LOG_TYPE_DEFAULT, "SendResponses: Can't create NSEC for record %s", v197, v198, v199, v200, v201, v245);
              v127 = v257;
              goto LABEL_325;
            }

            *(v171 + (v179 >> 3)) |= 0x80u >> (v179 & 7);
          }

          v172 = *v172;
          if (!v172)
          {
            v180 = *(v8 + 12616);
            goto LABEL_354;
          }
        }
      }

      v180 = 0;
LABEL_354:
      v183 = UnsafeBufferPointer(v180, v144, &v259);
      v184 = v253;
      if (v183)
      {
        v184 = v253 + 1;
      }

      if (*(v82 + 6) || *(v82 + 8))
      {
        v185 = 1440;
      }

      else
      {
        v185 = 1440;
        if (!*(v82 + 10))
        {
          v185 = 8940;
        }
      }

      if (v184)
      {
        v186 = v252 == 0;
      }

      else
      {
        v186 = 0;
      }

      v187 = v251 + v185;
      v188 = v250 + 14 * v184;
      if (v186)
      {
        v189 = 11;
      }

      else
      {
        v189 = 0;
      }

      v190 = PutResourceRecordTTLWithLimit(v82, v257, (v82 + 10), &v274[8], v275, v187 - (v188 + v189), v181, v182);
      v127 = v190;
      if (v183 && v190)
      {
        v191 = *(v144 + 40);
        v192 = *(v82 + 6);
        v193 = *(v82 + 10);
        v194 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
        if (v194)
        {
          LOWORD(v253) = v253 + 1;
          *(v183 + 4) = v192 + v193 - 1;
          v194[1] = v183;
          v194[2] = v191;
          *v194 = v259;
          v259 = v194;
          v8 = a1;
          goto LABEL_369;
        }

LABEL_476:
        __break(1u);
      }

LABEL_369:
      v195 = v257;
      if (v127)
      {
        v195 = v127;
      }

      v257 = v195;
LABEL_325:
      if (v127 || *(v144 + 200) == -1)
      {
        *(v144 + 200) = 0;
        v162 = *v144;
        if (*v144)
        {
          do
          {
            if (SameResourceRecordNameClassInterface(v162, v144, a3, a4, a5, a6, a7, a8))
            {
              v163 = v162[25];
              if (v163 == -1 || v163 == v81[444])
              {
                v162[25] = 0;
              }
            }

            v162 = *v162;
          }

          while (v162);
        }
      }

LABEL_334:
      v144 = *v144;
    }

    while (v144);
LABEL_377:
    v202 = *(v82 + 6);
    if (!*(v82 + 6) && !*(v82 + 10))
    {
      do
      {
        v81 = *v81;
      }

      while (v81 && !*(v81 + 16));
      v249 = 0;
      goto LABEL_441;
    }

    v203 = v259;
    if (v252)
    {
      v204 = 0;
    }

    else
    {
      v204 = v259 == 0;
    }

    if (v204)
    {
      goto LABEL_431;
    }

    bzero(v274, 0x498uLL);
    v274[8] = 32;
    strcpy(&v274[12], ")");
    v275 = 4500;
    v309[0] = 264;
    v279 = v308;
    v280 = v309;
    v288 = 0;
    v289 = 0;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    v287 = 0;
    v290 = v308;
    v304 = 0;
    v306 = 0;
    v307 = 0;
    v305 = 0;
    v308[0] = 0;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    memset(v303, 0, sizeof(v303));
    *&v274[14] = 1440;
    *&v276[2] = 0;
    if (v252)
    {
      v311 = *(v8 + 12676);
      v312 = -1413927278;
      *v276 = 1572888;
      v310 = 392681;
      v207 = 48;
      v208 = 1;
      if (v203)
      {
        goto LABEL_385;
      }

LABEL_391:
      v212 = 4500;
      if (!v202)
      {
        goto LABEL_392;
      }

LABEL_393:
      v213 = 1440;
    }

    else
    {
      v208 = 0;
      v207 = 24;
      if (!v203)
      {
        goto LABEL_391;
      }

LABEL_385:
      *v276 = v207;
      *&v276[2] = v207;
      v209 = v203[1];
      v210 = &v310 + 6 * v208;
      v210[2] = v209[1];
      *(v210 + 6) = *(v209 + 4);
      v211 = *v209;
      *v210 = 720362;
      v210[1] = v211;
      v259 = *v203;
      free(v203);
      v212 = v275;
      if (*(v82 + 6))
      {
        goto LABEL_393;
      }

LABEL_392:
      if (*(v82 + 8))
      {
        goto LABEL_393;
      }

      v213 = 1440;
      if (!*(v82 + 10))
      {
        v213 = 8940;
      }
    }

    a4 = PutResourceRecordTTLWithLimit(v82, v257, (v82 + 10), &v274[8], v212, v251 + v213, v205, v206);
    if (a4 && v259)
    {
      a4 = AddTSRROptsToMessage(&v259, v82, (v257 + 9), a4, v8 + 37912, a6, a7, a8);
    }

    if (a4)
    {
      goto LABEL_430;
    }

    v214 = v82;
    v215 = *(v82 + 6);
    v216 = *(v214 + 8);
    v217 = *(v214 + 10);
    v218 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v219 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v219 = 1;
    }

    v220 = v219;
    if (v216 + v215 + v217 != 1)
    {
      if (v220)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_429;
        }

        if (v252)
        {
          v225 = "TRACER";
        }

        else
        {
          v225 = "";
        }
      }

      else
      {
        v218 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_429;
        }

        if (v252)
        {
          v225 = "TRACER";
        }

        else
        {
          v225 = "";
        }
      }

      v226 = v253;
      v255 = *(v256 + 4);
      GetRRDisplayString_rdb(&v274[8], v280 + 2, v245);
      *buf = 136316930;
      *v261 = "";
      *&v261[8] = 2080;
      *&v261[10] = v225;
      v8 = a1;
      v262 = 1024;
      v263 = v226;
      v264 = 1024;
      v265 = v255;
      v266 = 1024;
      v267 = v215;
      v82 = v256;
      v268 = 1024;
      v269 = v216;
      v270 = 1024;
      v271 = v217;
      v272 = 2080;
      v273 = v245;
      v223 = v218;
      v224 = "SendResponses: How did we fail to have space for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s";
      goto LABEL_428;
    }

    if (!v220)
    {
      v218 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_429;
      }

      if (v252)
      {
        v221 = "TRACER";
      }

      else
      {
        v221 = "";
      }

LABEL_410:
      v222 = v253;
      v254 = *(v256 + 4);
      GetRRDisplayString_rdb(&v274[8], v280 + 2, v245);
      *buf = 136316930;
      *v261 = "";
      *&v261[8] = 2080;
      *&v261[10] = v221;
      v8 = a1;
      v262 = 1024;
      v263 = v222;
      v264 = 1024;
      v265 = v254;
      v266 = 1024;
      v267 = v215;
      v82 = v256;
      v268 = 1024;
      v269 = v216;
      v270 = 1024;
      v271 = v217;
      v272 = 2080;
      v273 = v245;
      v223 = v218;
      v224 = "SendResponses: No space in packet for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s";
LABEL_428:
      _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_ERROR, v224, buf, 0x3Eu);
      a4 = v257;
      goto LABEL_430;
    }

    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      if (v252)
      {
        v221 = "TRACER";
      }

      else
      {
        v221 = "";
      }

      goto LABEL_410;
    }

LABEL_429:
    v82 = v256;
    a4 = v257;
LABEL_430:
    v257 = a4;
LABEL_431:
    if (*(v81 + 17))
    {
      mDNSSendDNSMessage(v8, v82, v257, v81[444], 0, 0, AllDNSLinkGroup_v4, 0xE914u, 0, 0);
    }

    if (*(v81 + 18))
    {
      mDNSSendDNSMessage(v8, v82, v257, v81[444], 0, 0, &AllDNSLinkGroup_v6, 0xE914u, 0, 0);
    }

    if (!*(v8 + 84) && !*(v8 + 76))
    {
      v227 = *(v8 + 64) + 100;
      if (v227 <= 1)
      {
        v227 = 1;
      }

      *(v8 + 84) = v227;
    }

    if (++v249 >= 1000)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendResponses exceeded loop limit %d: giving up", a4, a5, a6, a7, a8, v249);
      break;
    }

LABEL_441:
    v228 = v259;
    if (v259)
    {
      do
      {
        v229 = *v228;
        free(v228);
        v228 = v229;
      }

      while (v229);
    }

    v8 = a1;
  }

  while (v81);
LABEL_446:
  v230 = *(v8 + 12640);
  if (v230)
  {
    v231 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v230 + 8), (*(v230 + 48) + 4), (v8 + 47032));
    LogMsgWithLevel(v231, OS_LOG_TYPE_DEFAULT, "SendResponses ERROR m->CurrentRecord already set %s", v232, v233, v234, v235, v236, v8 + 47032);
  }

  v237 = *(v8 + 12616);
  *(v8 + 12640) = v237;
  if (v237)
  {
    v238 = (v8 + 47032);
    while (2)
    {
      *(v8 + 12640) = *v237;
      v239 = *(v237 + 224);
      if (!v239)
      {
        goto LABEL_462;
      }

      if ((*(v237 + 172) & 0xFFFFFFFE) != 4)
      {
        v240 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v241 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v241 = 1;
        }

        if (v241)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
          {
            goto LABEL_460;
          }
        }

        else
        {
          v240 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
          {
LABEL_460:
            v243 = *(v237 + 8);
            v244 = *(v237 + 32);
            GetRRDisplayString_rdb((v237 + 8), (*(v237 + 48) + 4), v238);
            *v274 = 67110147;
            *&v274[4] = v239;
            *&v274[8] = 1024;
            *&v274[10] = v244;
            *&v274[14] = 1024;
            v275 = v243;
            v8 = a1;
            strcpy(v276, "p\bhash");
            v276[7] = 0;
            *&v276[8] = 0;
            v277 = 2085;
            v278 = v238;
            _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_INFO, "SendResponses: No active interface %d to send: %d %02X %{sensitive, mask.hash}s", v274, 0x28u);
          }
        }
      }

      *(v237 + 224) = 0;
LABEL_462:
      if (*(v237 + 208) || *(v237 + 8) == 1)
      {
        if (*(v237 + 304))
        {
          CompleteRDataUpdate(v8, v237, a3, a4, a5, a6, a7, a8);
        }

        if (*(v237 + 8) == 1 && !*(v237 + 191))
        {
          if (*(v237 + 32) || *(v237 + 122) || IsLocalDomain(*(v237 + 40)))
          {
            CompleteDeregistration(v8, v237);
          }
        }

        else
        {
          *(v237 + 208) = 0;
          *(v237 + 195) = 0;
          *(v237 + 232) = 0;
          *(v237 + 240) = 0;
          *(v237 + 248) = 0;
        }
      }

      v237 = *(v8 + 12640);
      if (!v237)
      {
        return;
      }

      continue;
    }
  }
}

void AnswerAllLocalQuestionsWithLocalAuthRecord(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[26];
  if (v11)
  {
    v12 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v14 = v11 + 376;
      v15 = (v11 + 376);
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_13:
          v17 = 257;
          goto LABEL_23;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (&v15[-v14] >= 256)
        {
          goto LABEL_13;
        }
      }

      v17 = (v15 - v14 + 1);
      goto LABEL_23;
    }

    v12 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v11 + 376;
      v20 = (v11 + 376);
      while (1)
      {
        if (!v20 || (v21 = *v20, v21 > 0x3F))
        {
LABEL_20:
          v17 = 257;
          goto LABEL_23;
        }

        if (!*v20)
        {
          break;
        }

        v20 += v21 + 1;
        if (&v20[-v19] >= 256)
        {
          goto LABEL_20;
        }
      }

      v17 = (v20 - v19 + 1);
LABEL_23:
      v22 = DNSTypeName(*(v11 + 342));
      v27 = 141558787;
      v28 = 1752392040;
      v29 = 1040;
      v30 = v17;
      v31 = 2101;
      v32 = v11 + 376;
      v33 = 2082;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AnswerAllLocalQuestionsWithLocalAuthRecord ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", &v27, 0x26u);
    }
  }

LABEL_24:
  v23 = a1[27];
  a1[26] = v23;
  if (v23)
  {
    while (1)
    {
      if (v23 == a1[28])
      {
        goto LABEL_34;
      }

      if (*(a2 + 172) <= 3u)
      {
        break;
      }

      if (LocalOnlyRecordAnswersQuestion(a2, v23, a3, a4, a5, a6, a7, a8))
      {
        goto LABEL_30;
      }

LABEL_31:
      v24 = a1[26];
      if (v24 == v23)
      {
        v24 = *(v23 + 8);
        a1[26] = v24;
      }

      v23 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }
    }

    if (!RecordAnswersQuestion(a2 + 8, 1, v23, a4, a5, a6, a7, a8))
    {
      goto LABEL_31;
    }

LABEL_30:
    AnswerLocalQuestionWithLocalAuthRecord(a1, a2, a3);
    goto LABEL_31;
  }

LABEL_34:
  a1[26] = 0;
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v25 = a1[24];
    a1[26] = v25;
    if (v25)
    {
      while (1)
      {
        if (v25 == a1[25])
        {
          goto LABEL_45;
        }

        if (*(a2 + 172) <= 3u)
        {
          break;
        }

        if (LocalOnlyRecordAnswersQuestion(a2, v25, a3, a4, a5, a6, a7, a8))
        {
          goto LABEL_41;
        }

LABEL_42:
        v26 = a1[26];
        if (v26 == v25)
        {
          v26 = *(v25 + 8);
          a1[26] = v26;
        }

        v25 = v26;
        if (!v26)
        {
          goto LABEL_45;
        }
      }

      if (!RecordAnswersQuestion(a2 + 8, 1, v25, a4, a5, a6, a7, a8))
      {
        goto LABEL_42;
      }

LABEL_41:
      AnswerLocalQuestionWithLocalAuthRecord(a1, a2, a3);
      goto LABEL_42;
    }

LABEL_45:
    a1[26] = 0;
  }
}

void *read_rr_from_ipc_msg(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = v6 + 1;
  if (v6)
  {
    v9 = v8 > v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
LABEL_12:
    *(a1 + 80) = 0;
    bzero(&v88, 0x3F0uLL);
    v26 = 0;
LABEL_13:
    v13 = 0;
    LOWORD(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v87 = 0;
    goto LABEL_14;
  }

  v11 = (v6 + 2);
  v10 = bswap32(*v6);
  *(a1 + 80) = v8;
  if (v6 == -4 || v11 > v7)
  {
    goto LABEL_12;
  }

  v26 = bswap32(v6[1]);
  *(a1 + 80) = v11;
  v27 = &v87;
  bzero(&v87, 0x3F1uLL);
  if (!v11)
  {
    goto LABEL_13;
  }

  do
  {
    if (v11 >= v7 || v27 >= v89)
    {
      v13 = 0;
      LOWORD(v14) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v27[-(v27 == v89)] = 0;
      *(a1 + 80) = 0;
      goto LABEL_14;
    }

    v35 = (v11 + 1);
    *(a1 + 80) = v11 + 1;
    v36 = *v11;
    *v27++ = v36;
    ++v11;
  }

  while (v36);
  v16 = 0;
  LOWORD(v14) = 0;
  v13 = 1;
  if (!v35 || (v35 + 1) > v7)
  {
    v15 = 0;
LABEL_98:
    v17 = 0;
    goto LABEL_14;
  }

  v16 = 0;
  LOWORD(v14) = 0;
  v37 = v35 + 2;
  v15 = bswap32(*v35) >> 16;
  *(a1 + 80) = v35 + 1;
  v13 = 1;
  if (v35 == -2 || v37 > v7)
  {
    goto LABEL_98;
  }

  v17 = 0;
  v16 = 0;
  v14 = bswap32(v35[1]) >> 16;
  *(a1 + 80) = v37;
  v13 = 1;
  if (v35 != -4 && (v35 + 3) <= v7)
  {
    v17 = bswap32(v35[2]) >> 16;
    v13 = 1;
    v16 = v35 + 3;
  }

LABEL_14:
  v18 = v16 + v17;
  if (v18 <= v7)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if (v18 > v7 || v16 == 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = (v16 + v17);
  }

  *(a1 + 80) = v21;
  v22 = 0;
  if (a2)
  {
    v23 = 0;
    if (v21 && (v21 + 1) <= v7)
    {
      v22 = bswap32(*v21);
      v23 = v21 + 1;
    }

    *(a1 + 80) = v23;
    v21 = v23;
  }

  *(a1 + 248) = v10;
  *(a1 + 252) = v26;
  if ((v13 & 1) == 0)
  {
    v24 = mDNSLogCategory_Default;
    v25 = "ERROR: read_rr_from_ipc_msg - get_string";
    goto LABEL_46;
  }

  if (!v21)
  {
    v24 = mDNSLogCategory_Default;
    v25 = "Error reading Resource Record from client";
    goto LABEL_46;
  }

  if (a3 && (v10 & 0x830) == 0)
  {
    v24 = mDNSLogCategory_Default;
    v25 = "ERROR: Bad resource record flags (must be one of either kDNSServiceFlagsShared, kDNSServiceFlagsUnique or kDNSServiceFlagsKnownUnique)";
LABEL_46:
    LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, v25, v30, v31, v32, v33, v34, v75);
    return 0;
  }

  v76 = v15;
  v40 = mDNSPlatformInterfaceIDfromInterfaceIndex(v26, v28, v29, v30, v31, v32, v33, v34);
  if (v26)
  {
    v41 = v40 == 0;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v26 = v26;
  }

  else
  {
    v26 = v40;
  }

  if (v17 <= 0x214)
  {
    v42 = 532;
  }

  else
  {
    v42 = v17;
  }

  result = malloc_type_calloc(1uLL, v42 + 912, 0xB784FAAAuLL);
  if (result)
  {
    v38 = result;
    if (v26 == -2)
    {
      v43 = 4;
    }

    else
    {
      v43 = 5;
      if (v26 != -5 && v26 != -3)
      {
        v44 = (v10 & 0x20000) != 0 && v26 == 0;
        v45 = !v44;
        v46 = (v10 & 0x100000) == 0 || v45;
        v43 = v46 ? 1 : 3;
        if (v45)
        {
          if ((v10 & 0x100000) != 0 && v26 == 0)
          {
            v43 = 2;
          }

          else
          {
            v43 = 0;
          }
        }
      }
    }

    if ((v10 & 0x800) != 0)
    {
      v48 = 32;
    }

    else
    {
      v48 = 2;
    }

    if ((v10 & 0x10) != 0)
    {
      v49 = 8;
    }

    else
    {
      v49 = v48;
    }

    mDNS_SetupResourceRecord(result, 0, v26, v76, 0, v49, v43, 0, 0);
    *(v38 + 652) = 0;
    if (AppendDNSNameString(v38 + 652, &v87, v50, v51, v52, v53, v54, v55))
    {
      if ((v10 & 0x200) != 0)
      {
        *(v38 + 121) = 1;
      }

      *(v38 + 7) = v14;
      *(v38 + 10) = v17;
      **(v38 + 6) = v42;
      if (SetRData(0, v19, v19 + v17, v38 + 8, v17, v58, v59, v60))
      {
        if (a2)
        {
          *(v38 + 4) = v22;
        }

        *(v38 + 6) = DomainNameHashValue(*(v38 + 5));
        SetNewRData(v38 + 8, 0, 0, v61, v62, v63, v64, v65);
        return v38;
      }

      v66 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          v67 = *(a1 + 200);
          v68 = *(v38 + 5);
          if (v68)
          {
            v73 = *(v38 + 5);
            v70 = v76;
            while (1)
            {
              if (!v73 || (v74 = *v73, v74 > 0x3F))
              {
LABEL_116:
                v72 = 257;
                goto LABEL_121;
              }

              if (!*v73)
              {
                break;
              }

              v73 += v74 + 1;
              if (&v73[-v68] >= 256)
              {
                goto LABEL_116;
              }
            }

            v72 = (v73 - v68 + 1);
          }

          else
          {
            v72 = 0;
            v70 = v76;
          }

          goto LABEL_121;
        }
      }

      else
      {
        v66 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          v67 = *(a1 + 200);
          v68 = *(v38 + 5);
          if (v68)
          {
            v69 = *(v38 + 5);
            v70 = v76;
            while (1)
            {
              if (!v69 || (v71 = *v69, v71 > 0x3F))
              {
LABEL_108:
                v72 = 257;
                goto LABEL_121;
              }

              if (!*v69)
              {
                break;
              }

              v69 += v71 + 1;
              if (&v69[-v68] >= 256)
              {
                goto LABEL_108;
              }
            }

            v72 = (v69 - v68 + 1);
          }

          else
          {
            v72 = 0;
            v70 = v76;
          }

LABEL_121:
          *buf = 67110147;
          v78 = v67;
          v79 = 2160;
          v80 = 1752392040;
          v81 = 1040;
          v82 = v72;
          v83 = 2101;
          v84 = v68;
          v85 = 2082;
          v86 = DNSTypeName(v70);
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[R%u] read_rr_from_ipc_msg: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x2Cu);
        }
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: bad name: %s", v56, v57, v58, v59, v60, &v87);
    }

    free(v38);
    return 0;
  }

  __break(1u);
  return result;
}

void regrecord_callback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 112);
  if (!v11)
  {
    if (a3 != -65792)
    {
      if (!a3)
      {
        v27 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v28 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v27 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        *&__n[3] = 141558275;
        *v150 = 1752392040;
        *&v150[8] = 2085;
        v151 = a1 + 47032;
        v45 = "Error: regrecord_callback: successful registration of orphaned record %{sensitive, mask.hash}s";
        v46 = v27;
        v47 = 22;
LABEL_165:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, &__n[3], v47);
        return;
      }

      v29 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v30 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          *&__n[3] = 67109120;
          *v150 = a3;
LABEL_49:
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "regrecord_callback: error %d received after parent termination", &__n[3], 8u);
        }
      }

      else
      {
        v29 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *&__n[3] = 67109120;
          *v150 = a3;
          goto LABEL_49;
        }
      }
    }

    v49 = *(a2 + 48);
    if (v49 != (a2 + 908) && v49 != 0)
    {
      free(v49);
    }

    v51 = a2;
    goto LABEL_147;
  }

  v12 = *(v11 + 16);
  if (mDNS_LoggingEnabled != 1)
  {
    goto LABEL_130;
  }

  v13 = *(a2 + 32);
  v14 = v13 + 5;
  if (v13 + 5) < 6 && ((0x2Du >> v14))
  {
    LODWORD(v13) = dword_10010DF28[v14];
  }

  v15 = mDNS_DomainNameFNV1aHash(*(a2 + 40));
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((v11 + 48), (v11 + 52));
  v20 = *(a2 + 20);
  if (shouldLogFullRequestInfo)
  {
    if (v20 >= 0x201)
    {
      v36 = malloc_type_malloc(v20, 0xF146835EuLL);
      if (!v36)
      {
        goto LABEL_179;
      }

      v21 = v36;
      v23 = *(a2 + 20);
      v22 = v36;
      if (*(a2 + 20))
      {
LABEL_9:
        *&__n[1] = 0;
        __n[0] = 0;
        RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v22, v23, __n, &__n[1], v16, v17, v18);
        if (*&__n[1])
        {
          goto LABEL_128;
        }

        v25 = RDataBytesPointer;
        v147 = v15;
        if (__n[0] < 0x1FFuLL)
        {
          v26 = 0;
          v141 = word_1001789D0;
          v143 = 512;
LABEL_72:
          v57 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              v139 = v26;
              v63 = *(a2 + 40);
              if (v63)
              {
                v64 = *(a2 + 40);
                while (1)
                {
                  if (!v64 || (v65 = *v64, v65 > 0x3F))
                  {
LABEL_89:
                    v66 = 257;
                    goto LABEL_115;
                  }

                  if (!*v64)
                  {
                    break;
                  }

                  v64 += v65 + 1;
                  if (&v64[-v63] >= 256)
                  {
                    goto LABEL_89;
                  }
                }

                v66 = (v64 - v63 + 1);
              }

              else
              {
                v66 = 0;
              }

LABEL_115:
              v85 = v12[50];
              v86 = *(v11 + 56);
              v87 = *(a2 + 12);
              v88 = __n[0];
              v89 = __n[0] + 2;
              if (v89 <= v143)
              {
                v134 = *(v11 + 56);
                logb = *(a2 + 12);
                *v141 = __rev16(v87);
                v91 = v25;
                v145 = v66;
                v92 = v89;
                v131 = v85;
                memcpy(v141 + 1, v91, v88);
                v85 = v131;
                v86 = v134;
                v90 = v141;
                v87 = logb;
                v89 = v92;
                v66 = v145;
              }

              else
              {
                v90 = 0;
              }

              *&__n[3] = 67111939;
              *v150 = v85;
              *&v150[4] = 1024;
              *&v150[6] = v86;
              LOWORD(v151) = 1026;
              *(&v151 + 2) = a3;
              HIWORD(v151) = 1024;
              v152 = v13;
              v153 = 2160;
              *v154 = 1752392040;
              *&v154[8] = 1040;
              LODWORD(v155) = v66;
              WORD2(v155) = 2101;
              *(&v155 + 6) = v63;
              HIWORD(v155) = 1024;
              *v156 = v147;
              *&v156[4] = 1024;
              *&v156[6] = v87;
              v157 = 2160;
              v158 = 1752392040;
              v159 = 1040;
              v160 = v89;
              v161 = 2101;
              v162 = v90;
              v93 = v57;
              goto LABEL_124;
            }
          }

          else
          {
            v58 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              log = v58;
              v139 = v26;
              v59 = *(a2 + 40);
              if (v59)
              {
                v60 = *(a2 + 40);
                while (1)
                {
                  if (!v60 || (v61 = *v60, v61 > 0x3F))
                  {
LABEL_81:
                    v62 = 257;
                    goto LABEL_120;
                  }

                  if (!*v60)
                  {
                    break;
                  }

                  v60 += v61 + 1;
                  if (&v60[-v59] >= 256)
                  {
                    goto LABEL_81;
                  }
                }

                v62 = (v60 - v59 + 1);
              }

              else
              {
                v62 = 0;
              }

LABEL_120:
              v94 = v12[50];
              v95 = *(v11 + 56);
              v96 = *(a2 + 12);
              v97 = __n[0];
              v98 = __n[0] + 2;
              if (v98 <= v143)
              {
                v132 = v62;
                v135 = *(v11 + 56);
                *v141 = __rev16(v96);
                v100 = v25;
                v146 = v98;
                v101 = v94;
                memcpy(v141 + 1, v100, v97);
                v94 = v101;
                v62 = v132;
                v95 = v135;
                v99 = v141;
                v98 = v146;
              }

              else
              {
                v99 = 0;
              }

              *&__n[3] = 67111939;
              *v150 = v94;
              *&v150[4] = 1024;
              *&v150[6] = v95;
              LOWORD(v151) = 1026;
              *(&v151 + 2) = a3;
              HIWORD(v151) = 1024;
              v152 = v13;
              v153 = 2160;
              *v154 = 1752392040;
              *&v154[8] = 1040;
              LODWORD(v155) = v62;
              WORD2(v155) = 2101;
              *(&v155 + 6) = v59;
              HIWORD(v155) = 1024;
              *v156 = v147;
              *&v156[4] = 1024;
              *&v156[6] = v96;
              v157 = 2160;
              v158 = 1752392040;
              v159 = 1040;
              v160 = v98;
              v161 = 2101;
              v162 = v99;
              v93 = log;
LABEL_124:
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n[3], 0x5Au);
              v26 = v139;
            }
          }

          if (!v26)
          {
            goto LABEL_128;
          }

          v83 = v26;
          goto LABEL_127;
        }

        v143 = __n[0] + 2;
        v56 = malloc_type_malloc(__n[0] + 2, 0xF146835EuLL);
        if (v56)
        {
          v26 = v56;
          v141 = v56;
          goto LABEL_72;
        }

LABEL_179:
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = 0;
      v22 = &word_1001787D0;
      v23 = 512;
      if (*(a2 + 20))
      {
        goto LABEL_9;
      }
    }

    v37 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v38 = v12[50];
      v39 = *(v11 + 56);
      v40 = *(a2 + 40);
      if (v40)
      {
        v54 = *(a2 + 40);
        while (1)
        {
          if (!v54 || (v55 = *v54, v55 > 0x3F))
          {
LABEL_69:
            v43 = 257;
            goto LABEL_112;
          }

          if (!*v54)
          {
            break;
          }

          v54 += v55 + 1;
          if (&v54[-v40] >= 256)
          {
            goto LABEL_69;
          }
        }

        v43 = (v54 - v40 + 1);
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v37 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v38 = v12[50];
      v39 = *(v11 + 56);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = *(a2 + 40);
        while (1)
        {
          if (!v41 || (v42 = *v41, v42 > 0x3F))
          {
LABEL_44:
            v43 = 257;
            goto LABEL_112;
          }

          if (!*v41)
          {
            break;
          }

          v41 += v42 + 1;
          if (&v41[-v40] >= 256)
          {
            goto LABEL_44;
          }
        }

        v43 = (v41 - v40 + 1);
      }

      else
      {
        v43 = 0;
      }
    }

LABEL_112:
    v84 = *(a2 + 12);
    *&__n[3] = 67111171;
    *v150 = v38;
    *&v150[4] = 1024;
    *&v150[6] = v39;
    LOWORD(v151) = 1026;
    *(&v151 + 2) = a3;
    HIWORD(v151) = 1024;
    v152 = v13;
    v153 = 2160;
    *v154 = 1752392040;
    *&v154[8] = 1040;
    LODWORD(v155) = v43;
    WORD2(v155) = 2101;
    *(&v155 + 6) = v40;
    HIWORD(v155) = 1024;
    *v156 = v15;
    *&v156[4] = 1024;
    *&v156[6] = v84;
    v70 = "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>";
    v71 = v37;
    v72 = 64;
LABEL_113:
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, v70, &__n[3], v72);
    goto LABEL_128;
  }

  if (v20 < 0x201)
  {
    v21 = 0;
    v31 = &word_1001787D0;
    v32 = 512;
    if (*(a2 + 20))
    {
      goto LABEL_30;
    }

LABEL_58:
    v53 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }
    }

    else
    {
      v53 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }
    }

    v67 = v12[50];
    v68 = *(v11 + 56);
    v69 = *(a2 + 12);
    *&__n[3] = 67110400;
    *v150 = v67;
    *&v150[4] = 1024;
    *&v150[6] = v68;
    LOWORD(v151) = 1026;
    *(&v151 + 2) = a3;
    HIWORD(v151) = 1024;
    v152 = v13;
    v153 = 1024;
    *v154 = v15;
    *&v154[4] = 1024;
    *&v154[6] = v69;
    v70 = "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    v71 = v53;
    v72 = 38;
    goto LABEL_113;
  }

  v52 = malloc_type_malloc(v20, 0x4F3BED33uLL);
  if (!v52)
  {
    goto LABEL_179;
  }

  v21 = v52;
  v32 = *(a2 + 20);
  v31 = v52;
  if (!*(a2 + 20))
  {
    goto LABEL_58;
  }

LABEL_30:
  *&__n[1] = 0;
  __n[0] = 0;
  v33 = ResourceRecordGetRDataBytesPointer(a2 + 8, v31, v32, __n, &__n[1], v16, v17, v18);
  if (*&__n[1])
  {
    goto LABEL_128;
  }

  v34 = v33;
  v148 = v15;
  if (__n[0] >= 0x1FFuLL)
  {
    v35 = __n[0] + 2;
    v73 = malloc_type_malloc(__n[0] + 2, 0x4F3BED33uLL);
    if (!v73)
    {
      goto LABEL_179;
    }

    v142 = v73;
    v144 = v73;
  }

  else
  {
    v142 = word_1001789D0;
    v144 = 0;
    v35 = 512;
  }

  v74 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    v75 = v12[50];
    v76 = *(v11 + 56);
    v77 = *(a2 + 12);
    v78 = __n[0];
    v79 = __n[0] + 2;
    if (v79 > v35)
    {
      v80 = 0;
      goto LABEL_107;
    }

LABEL_106:
    v80 = v142;
    *v142 = __rev16(v77);
    v81 = v34;
    v140 = v79;
    v82 = v77;
    v133 = v75;
    loga = v76;
    memcpy(v142 + 1, v81, v78);
    v75 = v133;
    v76 = loga;
    v77 = v82;
    v79 = v140;
    goto LABEL_107;
  }

  v74 = mDNSLogCategory_mDNS_redacted;
  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_108;
  }

  v75 = v12[50];
  v76 = *(v11 + 56);
  v77 = *(a2 + 12);
  v78 = __n[0];
  v79 = __n[0] + 2;
  if (v79 <= v35)
  {
    goto LABEL_106;
  }

  v80 = 0;
LABEL_107:
  *&__n[3] = 67111171;
  *v150 = v75;
  *&v150[4] = 1024;
  *&v150[6] = v76;
  LOWORD(v151) = 1026;
  *(&v151 + 2) = a3;
  HIWORD(v151) = 1024;
  v152 = v13;
  v153 = 1024;
  *v154 = v148;
  *&v154[4] = 1024;
  *&v154[6] = v77;
  LOWORD(v155) = 2160;
  *(&v155 + 2) = 1752392040;
  WORD5(v155) = 1040;
  HIDWORD(v155) = v79;
  *v156 = 2101;
  *&v156[2] = v80;
  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n[3], 0x40u);
LABEL_108:
  v83 = v144;
  if (v144)
  {
LABEL_127:
    free(v83);
  }

LABEL_128:
  if (v21)
  {
    free(v21);
  }

LABEL_130:
  if (a3 == -65792)
  {
    goto LABEL_137;
  }

  reply = create_reply(0x45, 12, v12, a4, a5, a6, a7, a8);
  *(reply + 4) = *(v11 + 40);
  *(reply + 11) = 0;
  *(reply + 12) = bswap32(mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a2 + 32), 0, v103, v104, v105, v106, v107));
  *(reply + 13) = bswap32(a3);
  append_reply(v12, reply);
  if (!a3)
  {
    if (!*(v11 + 60))
    {
      goto LABEL_169;
    }

    v122 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_169;
      }

      v127 = v12[50];
      *&__n[3] = 67109120;
      *v150 = v127;
    }

    else
    {
      v122 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_169;
      }

      v123 = v12[50];
      *&__n[3] = 67109120;
      *v150 = v123;
    }

    _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[R%u] regrecord_callback: external_advertise already set!", &__n[3], 8u);
LABEL_169:
    if (!callExternalHelpers(*(v11 + 32), (a2 + 652), v12[62], v108, v109, v110, v111, v112))
    {
      return;
    }

    v128 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v130 = v12[50];
        *&__n[3] = 67109120;
        *v150 = v130;
        goto LABEL_176;
      }
    }

    else
    {
      v128 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v129 = v12[50];
        *&__n[3] = 67109120;
        *v150 = v129;
LABEL_176:
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "[R%u] regrecord_callback: calling external_start_advertising_service", &__n[3], 8u);
      }
    }

    internal_start_advertising_service(a2 + 8, v12[62], v12[47]);
    *(v11 + 60) = 1;
    return;
  }

  if (a3 == -65542)
  {
    v113 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v126 = v12[50];
        *&__n[3] = 67109120;
        *v150 = v126;
        v45 = "[R%u] regrecord_callback: Callback with error code mStatus_BadStateErr - not freeing the record.";
        goto LABEL_164;
      }
    }

    else
    {
      v113 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v114 = v12[50];
        *&__n[3] = 67109120;
        *v150 = v114;
        v45 = "[R%u] regrecord_callback: Callback with error code mStatus_BadStateErr - not freeing the record.";
LABEL_164:
        v46 = v113;
        v47 = 8;
        goto LABEL_165;
      }
    }

    return;
  }

LABEL_137:
  v115 = v12 + 44;
  do
  {
    v116 = v115;
    v117 = *v115;
    v115 = (*v115 + 8);
    if (v117)
    {
      v118 = v117 == v11;
    }

    else
    {
      v118 = 1;
    }
  }

  while (!v118);
  if (v117)
  {
    *v116 = *v115;
    v119 = *(v11 + 24);
    if (v119)
    {
      free(v119);
    }

    v51 = v11;
LABEL_147:
    free(v51);
    return;
  }

  v113 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v120 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v120 = 1;
  }

  if (v120)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      v121 = v12[50];
      *&__n[3] = 67109120;
      *v150 = v121;
      v45 = "[R%u] regrecord_callback - record not in list!";
      goto LABEL_164;
    }
  }

  else
  {
    v113 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v12[50];
      *&__n[3] = 67109120;
      *v150 = v125;
      v45 = "[R%u] regrecord_callback - record not in list!";
      goto LABEL_164;
    }
  }
}

_BYTE *StartGetZoneData(unsigned int *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = malloc_type_calloc(1uLL, 0x5F8uLL, 0x495F8AC1uLL);
  if (result)
  {
    v9 = result;
    v10 = a2;
    do
    {
      if (!v10)
      {
        break;
      }

      v11 = *v10;
      if (v11 > 0x3F)
      {
        break;
      }

      if (!*v10)
      {
        v12 = v10 - a2 + 1;
        if (v12 <= 0x100u)
        {
          memcpy(result, a2, v12);
          goto LABEL_11;
        }

        break;
      }

      v10 += v11 + 1;
    }

    while (v10 - a2 <= 255);
    *result = 0;
LABEL_11:
    *(v9 + 256) = 0;
    *(v9 + 264) = v9;
    *(v9 + 272) = 0;
    *(v9 + 528) = 0;
    *(v9 + 530) = 0;
    *(v9 + 786) = 0u;
    *(v9 + 801) = 0;
    *(v9 + 816) = a3;
    *(v9 + 824) = a4;
    *(v9 + 1008) = v9;
    v13 = a1[12];
    v14 = a1[13] + 1;
    a1[13] = v14;
    mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "StartGetZoneData", 1995);
    v15 = *(v9 + 264);
    v16 = v15;
    do
    {
      if (!v16)
      {
        break;
      }

      v17 = *v16;
      if (v17 > 0x3F)
      {
        break;
      }

      if (!*v16)
      {
        v18 = v16 - v15 + 1;
        if (v18 <= 0x100u)
        {
          memcpy((v9 + 1208), v15, v18);
          goto LABEL_20;
        }

        break;
      }

      v16 += v17 + 1;
    }

    while (v16 - v15 <= 255);
    *(v9 + 1208) = 0;
LABEL_20:
    GetZoneData_StartQuery(a1, v9, 6);
    mDNS_VerifyLockState("Reclaim Lock", 0, a1[12], a1[13]--, "StartGetZoneData", 1998);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GetZoneData_StartQuery(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (a3 != 33)
  {
    goto LABEL_21;
  }

  v6 = *(a2 + 256);
  if (v6 == 2)
  {
    v7 = *(a2 + 808);
    v8 = "\f_dns-llq-tls\x04_tcp";
    v9 = "\b_dns-llq\x04_udp";
  }

  else if (v6 == 1)
  {
    v7 = *(a2 + 808);
    v8 = "\x0E_dns-query-tls\x04_tcp";
    v9 = "";
  }

  else
  {
    if (v6)
    {
      v10 = "";
      if (v6 == 3)
      {
        v10 = "\r_dns-push-tls\x04_tcp";
      }

      goto LABEL_13;
    }

    v7 = *(a2 + 808);
    v8 = "\x0F_dns-update-tls\x04_tcp";
    v9 = "\v_dns-update\x04_udp";
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

LABEL_13:
  v11 = v10;
  while (1)
  {
    if (!v11 || (v12 = *v11, v12 > 0x3F))
    {
LABEL_18:
      v13 = (a2 + 1208);
LABEL_19:
      *v13 = 0;
      goto LABEL_20;
    }

    if (!*v11)
    {
      break;
    }

    v11 += v12 + 1;
    if (v11 - v10 >= 256)
    {
      goto LABEL_18;
    }
  }

  v15 = v11 - v10 + 1;
  v13 = (a2 + 1208);
  if (v15 > 0x100u)
  {
    goto LABEL_19;
  }

  switch(v6)
  {
    case 2:
      v16 = *(a2 + 808);
      v17 = "\f_dns-llq-tls\x04_tcp";
      v18 = "\b_dns-llq\x04_udp";
      goto LABEL_31;
    case 1:
      v16 = *(a2 + 808);
      v17 = "\x0E_dns-query-tls\x04_tcp";
      v18 = "";
LABEL_31:
      v19 = v16 == 0;
      goto LABEL_33;
    case 0:
      v16 = *(a2 + 808);
      v17 = "\x0F_dns-update-tls\x04_tcp";
      v18 = "\v_dns-update\x04_udp";
      goto LABEL_31;
  }

  v17 = "";
  v18 = "\r_dns-push-tls\x04_tcp";
  v19 = v6 == 3;
LABEL_33:
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  memcpy((a2 + 1208), v20, v15);
LABEL_20:
  AppendDomainName(v13, (a2 + 272));
LABEL_21:
  *(a2 + 1044) = -1;
  *(a2 + 968) = 0;
  *(a2 + 1156) = 0;
  *(a2 + 1174) = v3;
  *(a2 + 1176) = 1;
  *(a2 + 1464) = 16777472;
  *(a2 + 1468) = 0;
  *(a2 + 1473) = 0;
  *(a2 + 1471) = 0;
  *(a2 + 1485) = 0;
  *(a2 + 1076) = getpid();
  *(a2 + 1080) = 0;
  *(a2 + 984) = GetZoneData_QuestionCallback;
  *(a2 + 1008) = a2;

  return mDNS_StartQuery(a1, a2 + 832);
}

void SetRecordRetry(uint64_t a1, uint64_t a2, uint32_t a3)
{
  v5 = *(a1 + 64);
  *(a2 + 284) = v5;
  v6 = *(a2 + 352);
  if (v6 && (v7 = *(a2 + 600), v7 <= 4))
  {
    v8 = v6 - v5;
    *(a2 + 600) = v7 + 1;
    if (v8 <= 300000)
    {
      *(a2 + 280) = 300000;
      if (mDNS_LoggingEnabled == 1)
      {
        v29 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "SetRecordRetry clamping to min refresh in %d of %d for %s", v30, v31, v32, v33, v34, 300);
      }
    }

    else
    {
      v9 = v8 / 0xAu;
      v10 = 7 * (v8 / 0xAu);
      if (!a3)
      {
        v11 = 1;
        do
        {
          v11 = (2 * v11) | 1;
        }

        while (v11 < v9);
        do
        {
          a3 = arc4random() & v11;
        }

        while (a3 > v9);
      }

      v12 = a3 + v10;
      if ((a3 + v10) <= 300000)
      {
        v12 = 300000;
      }

      *(a2 + 280) = v12;
      if (mDNS_LoggingEnabled == 1)
      {
        v13 = mDNSLogCategory_Default;
        v14 = v12 / 0x3E8;
        v15 = 274877907 * (*(a2 + 352) - *(a1 + 64));
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "SetRecordRetry refresh in %d of %d for %s", v16, v17, v18, v19, v20, v14);
      }
    }
  }

  else
  {
    *(a2 + 352) = 0;
    v21 = 3 * *(a2 + 280);
    if (v21 <= 1000)
    {
      v21 = 1000;
    }

    if (v21 >= 900000)
    {
      v22 = 900000;
    }

    else
    {
      v22 = v21;
    }

    *(a2 + 280) = v22;
    if (mDNS_LoggingEnabled == 1)
    {
      v23 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "SetRecordRetry retry in %d ms for %s", v24, v25, v26, v27, v28, v22);
    }
  }
}

unsigned int *GetZoneData_QuestionCallback(unsigned int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 176);
  if ((a4 == 4 || a4 == 2) && !*(a3 + 12))
  {
    return result;
  }

  v8 = *(a3 + 4);
  if (v8 != *(a2 + 342))
  {
    return result;
  }

  if (v8 == 1)
  {
    mDNS_StopQuery(result, a2);
    if (*(a2 + 212) != -1)
    {
      v32 = mDNSLogCategory_Default;
      DNSTypeName(*(a2 + 342));
      v58 = *(a2 + 212);
      LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", v33, v34, v35, v36, v37, a2 + 376);
    }

    *(v7 + 197) = 4;
    if (*(a3 + 12) == 4)
    {
      v38 = (*(a3 + 40) + 4);
    }

    else
    {
      v38 = &zerov4Addr;
    }

    *(v7 + 198) = *v38;
LABEL_46:
    v39 = *(v7 + 102);
    v40 = v6;
    v41 = 0;
    goto LABEL_47;
  }

  if (v8 != 33)
  {
    if (v8 != 6)
    {
      return result;
    }

    mDNS_StopQuery(result, a2);
    if (*(a2 + 212) != -1)
    {
      v14 = mDNSLogCategory_Default;
      DNSTypeName(*(a2 + 342));
      v56 = *(a2 + 212);
      LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", v15, v16, v17, v18, v19, a2 + 376);
    }

    if (*(a3 + 12))
    {
      v20 = *(a3 + 32);
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
          v50 = v21 - v20 + 1;
          if (v50 <= 0x100u)
          {
            memcpy(v7 + 272, v20, v50);
            goto LABEL_59;
          }

          break;
        }

        v21 += v22 + 1;
      }

      while (v21 - v20 <= 255);
      v7[272] = 0;
LABEL_59:
      *(v7 + 264) = *(a3 + 6);
      v51 = v6;
      v52 = v7;
      v53 = 33;
LABEL_71:

      return GetZoneData_StartQuery(v51, v52, v53);
    }

    v42 = *(v7 + 33);
    if (*v42)
    {
      v43 = &v42[*v42 + 1];
      *(v7 + 33) = v43;
      v44 = v43;
      do
      {
        if (!v44)
        {
          break;
        }

        v45 = *v44;
        if (v45 > 0x3F)
        {
          break;
        }

        if (!*v44)
        {
          v55 = v44 - v43 + 1;
          if (v55 <= 0x100u)
          {
            memcpy(v7 + 1208, v43, v55);
            goto LABEL_70;
          }

          break;
        }

        v44 += v45 + 1;
      }

      while (v44 - v43 <= 255);
      v7[1208] = 0;
LABEL_70:
      v51 = v6;
      v52 = v7;
      v53 = 6;
      goto LABEL_71;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetZoneData recursed to root label of %##s without finding SOA", v9, v10, v11, v12, v13, v7);
    }

    v39 = *(v7 + 102);
    v41 = 4294901758;
    v40 = v6;
    goto LABEL_47;
  }

  mDNS_StopQuery(result, a2);
  if (*(a2 + 212) != -1)
  {
    v23 = mDNSLogCategory_Default;
    DNSTypeName(*(a2 + 342));
    v57 = *(a2 + 212);
    LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", v24, v25, v26, v27, v28, a2 + 376);
  }

  if (*(a3 + 12))
  {
    v29 = (*(a3 + 40) + 10);
    v30 = v29;
    do
    {
      if (!v30)
      {
        break;
      }

      v31 = *v30;
      if (v31 > 0x3F)
      {
        break;
      }

      if (!*v30)
      {
        v46 = v30 - v29 + 1;
        if (v46 <= 0x100u)
        {
          memcpy(v7 + 530, v29, v46);
          goto LABEL_45;
        }

        break;
      }

      v30 += v31 + 1;
    }

    while (v30 - v29 <= 255);
    v7[530] = 0;
LABEL_45:
    *(v7 + 393) = *(*(a3 + 40) + 8);
    if (*(v7 + 64) != 3)
    {
      v47 = v7 + 530;
      v48 = v7 + 530;
      do
      {
        if (!v48)
        {
          break;
        }

        v49 = *v48;
        if (v49 > 0x3F)
        {
          break;
        }

        if (!*v48)
        {
          v54 = v48 - v47 + 1;
          if (v54 <= 0x100u)
          {
            memcpy(v7 + 1208, v47, v54);
            goto LABEL_66;
          }

          break;
        }

        v48 += v49 + 1;
      }

      while (v48 - v47 <= 255);
      v7[1208] = 0;
LABEL_66:
      v51 = v6;
      v52 = v7;
      v53 = 1;
      goto LABEL_71;
    }

    goto LABEL_46;
  }

  v7[530] = 0;
  *(v7 + 786) = 0u;
  *(v7 + 801) = 0;
  v39 = *(v7 + 102);
  v40 = v6;
  v41 = 4294901742;
LABEL_47:

  return v39(v40, v41, v7);
}

void RecordRegistrationGotZoneData(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a3)
  {
    v34 = mDNSLogCategory_Default;

    LogMsgWithLevel(v34, OS_LOG_TYPE_DEFAULT, "ERROR: RecordRegistrationGotZoneData invoked with NULL result and no error", a4, a5, a6, a7, a8, a9);
    return;
  }

  v12 = *(a3 + 824);
  v13 = *(v12 + 376);
  if (v13 != a3)
  {
    v14 = mDNSLogCategory_Default;
    v81 = *(v12 + 40);
    DNSTypeName(*(v12 + 12));
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: nta (%p) != zoneData (%p)  %##s (%s)", v15, v16, v17, v18, v19, v13);
  }

  mDNS_VerifyLockState("Check Lock", 0, *(a1 + 48), *(a1 + 52), "RecordRegistrationGotZoneData", 4148);
  v25 = (a1 + 12616);
  do
  {
    v25 = *v25;
    if (v25)
    {
      v26 = v25 == v12;
    }

    else
    {
      v26 = 1;
    }
  }

  while (!v26);
  if (!v25)
  {
    v35 = mDNSLogCategory_Default;
    v36 = "RecordRegistrationGotZoneData - RR no longer in list.  Discarding.";
    goto LABEL_49;
  }

  if (a2 == -65538)
  {
LABEL_50:
    CancelGetZoneData(a1, *(v12 + 376));
    *(v12 + 376) = 0;
    return;
  }

  if (a2)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: error %d", v20, v21, v22, v23, v24, a2);
    goto LABEL_50;
  }

  if (*(v12 + 14) != *(a3 + 528))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: New resource record's class (%d) does not match zone class (%d)", v20, v21, v22, v23, v24, *(v12 + 14));
    goto LABEL_50;
  }

  v27 = *(a3 + 272);
  if (!*(a3 + 272))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: No name server found claiming responsibility for %##s!", v20, v21, v22, v23, v24, *(v12 + 40));
    }

    goto LABEL_50;
  }

  v28 = *(v12 + 40);
  v29 = *v28;
  if (*v28)
  {
    v30 = 0;
    v31 = *(v12 + 40);
    do
    {
      ++v30;
      v32 = v31 + v29;
      v33 = *(v32 + 1);
      v31 = v32 + 1;
      v29 = v33;
    }

    while (v33);
  }

  else
  {
    v30 = 0;
  }

  v37 = 0;
  v38 = a3 + 272;
  do
  {
    ++v37;
    v39 = v38 + v27;
    v40 = *(v39 + 1);
    v38 = v39 + 1;
    v27 = v40;
  }

  while (v40);
  v41 = v30 - v37;
  if (v30 < v37)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Zone %##s is longer than %##s", v20, v21, v22, v23, v24, a3 + 272);
    goto LABEL_50;
  }

  if (v41 >= 1)
  {
    v42 = v41 + 1;
    do
    {
      if (!*v28)
      {
        break;
      }

      v28 += *v28 + 1;
      --v42;
    }

    while (v42 > 1);
  }

  *(v12 + 368) = v28;
  if (!SameDomainNameBytes(v28, (a3 + 272)))
  {
    v82 = *(v12 + 40);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Zone %##s does not match %##s for %##s", v20, v21, v22, v23, v24, *(v12 + 368));
    goto LABEL_50;
  }

  if (!*(a3 + 786))
  {
    goto LABEL_47;
  }

  v43 = *(a3 + 788);
  if (v43 == 6)
  {
    if (!(*(a3 + 796) | *(a3 + 792) | *(a3 + 800) | *(a3 + 804)))
    {
LABEL_47:
      if (mDNS_LoggingEnabled != 1)
      {
        goto LABEL_50;
      }

      v35 = mDNSLogCategory_Default;
      v79 = *(v12 + 40);
      v36 = "RecordRegistrationGotZoneData: No _dns-update._udp service found for %##s!";
LABEL_49:
      LogMsgWithLevel(v35, OS_LOG_TYPE_DEFAULT, v36, v20, v21, v22, v23, v24, v79);
      goto LABEL_50;
    }
  }

  else if (v43 == 4 && !*(a3 + 792))
  {
    goto LABEL_47;
  }

  if (!*(a3 + 530))
  {
    goto LABEL_47;
  }

  *(v12 + 356) = *(a3 + 808);
  if (*(v12 + 344) == 3)
  {
    mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4222);
    uDNS_DeregisterRecord(a1, v12);
    v44 = a1;
    v45 = 4224;
LABEL_95:

    mDNS_Unlock_(v44, "RecordRegistrationGotZoneData", v45);
    return;
  }

  if (*(v12 + 12) != 33)
  {
LABEL_87:
    mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4267);
    if (*(v12 + 604))
    {
      v66 = *(a1 + 64);
    }

    else
    {
      *(v12 + 280) = 1000;
      v66 = *(a1 + 64);
      *(v12 + 284) = v66 - 1000;
    }

    if (IsRecordMergeable(a1, v12, v66 + 1000))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v67 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v12 + 8), (*(v12 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v67, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Delayed registration for %s", v68, v69, v70, v71, v72, a1 + 47032);
      }

      *(v12 + 284) += 1000;
    }

    v44 = a1;
    v45 = 4285;
    goto LABEL_95;
  }

  mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4233);
  ServiceTarget = GetServiceTarget(a1, v12);
  mDNS_Unlock_(a1, "RecordRegistrationGotZoneData", 4235);
  if (!ServiceTarget || !*ServiceTarget)
  {
    v55 = 0;
    v56 = *(v12 + 12);
    if (v56 <= 0x27)
    {
      if (((1 << v56) & 0x1000248000) != 0)
      {
        v57 = 6;
        goto LABEL_68;
      }

      if (((1 << v56) & 0x8000001024) != 0)
      {
        v57 = 4;
LABEL_68:
        v55 = (*(v12 + 48) + v57);
        goto LABEL_69;
      }

      if (v56 == 33)
      {
        v57 = 10;
        goto LABEL_68;
      }
    }

LABEL_69:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData - no target for %##s", v48, v49, v50, v51, v52, *(v12 + 40));
    }

    if (v55)
    {
      *v55 = 0;
    }

    *(v12 + 20) = 0;
    *(v12 + 344) = 8;
    goto LABEL_50;
  }

  if (*(v12 + 12) != 33)
  {
    goto LABEL_87;
  }

  v53 = *(v12 + 48);
  if (!*(v53 + 8))
  {
    goto LABEL_87;
  }

  v54 = *(a1 + 12720);
  if (v54 != 10)
  {
    if (v54 == 172)
    {
      if ((*(a1 + 12721) & 0xF0) != 0x10)
      {
        goto LABEL_87;
      }
    }

    else if (v54 != 192 || *(a1 + 12721) != 168)
    {
      goto LABEL_87;
    }
  }

  v58 = *(v12 + 376);
  if (!v58)
  {
    goto LABEL_87;
  }

  if (*(v58 + 788) == 4)
  {
    v59 = *(v58 + 792);
    if (v59 == 10)
    {
      goto LABEL_87;
    }

    if (v59 == 172)
    {
      if ((*(v58 + 793) & 0xF0) == 0x10)
      {
        goto LABEL_87;
      }
    }

    else if (v59 == 192 && *(v58 + 793) == 168)
    {
      goto LABEL_87;
    }
  }

  if (*(v12 + 120) != 2)
  {
    goto LABEL_87;
  }

  if (*(v12 + 584))
  {
    if (mDNS_LoggingEnabled)
    {
      v60 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v12 + 8), (v53 + 4), (a1 + 47032));
      v80 = *(v12 + 344);
      v83 = *(v12 + 584);
      LogMsgWithLevel(v60, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: StartRecordNatMap for %s, state %d, context %p", v61, v62, v63, v64, v65, a1 + 47032);
    }

    goto LABEL_87;
  }

  if (mDNS_LoggingEnabled)
  {
    v73 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v12 + 8), (v53 + 4), (a1 + 47032));
    LogMsgWithLevel(v73, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData StartRecordNatMap %s", v74, v75, v76, v77, v78, a1 + 47032);
  }

  *(v12 + 344) = 6;

  StartRecordNatMap(a1, v12, v47, v48, v49, v50, v51, v52);
}

uint64_t FindIdenticalRecordInCache(uint64_t a1, uint64_t a2)
{
  v3 = CacheGroupForName(a1, *(a2 + 16), *(a2 + 32));
  if (!v3)
  {
    return 0;
  }

  for (i = v3[2]; i; i = *i)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v6 = *(i + 32);
    }

    else
    {
      v5 = *(a2 + 48);
      if (v5)
      {
        v5 = *(v5 + 24);
      }

      v6 = *(i + 56);
      if (v6)
      {
        v6 = *(v6 + 24);
      }
    }

    if (v5 == v6 && resource_records_have_same_dnssec_rr_category(*(a2 + 56), *(i + 64)) && *(a2 + 4) == *(i + 12) && *(a2 + 6) == *(i + 14) && *(a2 + 12) == *(i + 20) && *(a2 + 20) == *(i + 28) && SameRDataBody(a2, (*(i + 48) + 4), SameDomainName))
    {
      break;
    }
  }

  return i;
}

void SysEventCallBack(int a1, uint64_t a2, unsigned int *a3)
{
  mDNS_Lock_(a3, "SysEventCallBack", 6891);
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = recv(a1, &v10, 0x11CuLL, 0);
  v6 = mDNSLogCategory_State;
  if (v5 < 0)
  {
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SysEventCallBack error -- error: %{mdns:err}ld", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67240192;
      LODWORD(v9) = DWORD1(v11);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SysEventCallBack -- event: %{public, mdnsresponder:kev_dl_event}u", &v8, 8u);
    }

    if (DWORD1(v11) == 17 || DWORD1(v11) == 13)
    {
      SetNetworkChanged(2000);
    }
  }

  mDNS_Unlock_(a3, "SysEventCallBack", 6914);
}

uint64_t mDNS_PurgeCacheResourceRecord(unsigned int *a1, uint64_t a2)
{
  mDNS_VerifyLockState("Check Lock", 1, a1[12], a1[13], "mDNS_PurgeCacheResourceRecord", 6630);
  *(a2 + 80) = a1[16] - 60000;
  *(a2 + 108) = 4;
  *(a2 + 16) = 0;

  return SetNextCacheCheckTimeForRecord(a1, a2);
}

void DeadvertiseInterface(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 3552);
  if (AWDLInterfaceID)
  {
    v7 = AWDLInterfaceID == v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    if (WiFiAwareInterfaceID)
    {
      v8 = WiFiAwareInterfaceID == v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = !v8;
    if (a3 & 1) != 0 && (v9)
    {
      v9 = 1;
      goto LABEL_18;
    }
  }

  if (a3 & 2) == 0 || (v9)
  {
    goto LABEL_50;
  }

  v9 = 0;
LABEL_18:
  v10 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v12 = "randomized";
      if ((a3 & 2) == 0)
      {
        v12 = "normal";
      }

      goto LABEL_30;
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v12 = "randomized";
      if ((a3 & 2) == 0)
      {
        v12 = "normal";
      }

LABEL_30:
      v17 = 136446466;
      v18 = v12;
      v19 = 2082;
      v20 = a2 + 3606;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "DeadvertiseInterface: Deadvertising %{public}s hostname on interface %{public}s", &v17, 0x16u);
    }
  }

  v14 = *(a2 + 3552);
  if (v14 == AWDLInterfaceID || v14 == WiFiAwareInterfaceID)
  {
    if (!*(a2 + 32) && !*(a2 + 1208))
    {
      goto LABEL_42;
    }

    v15 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = (a2 + 3606);
        goto LABEL_41;
      }
    }

    else
    {
      v15 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = (a2 + 3606);
LABEL_41:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "D2D_stop_advertising_interface - ifname: %{public}s", &v17, 0xCu);
      }
    }

LABEL_42:
    if (*(a2 + 32))
    {
      internal_stop_advertising_service(a2 + 32, 0, 0);
    }

    if (*(a2 + 1208))
    {
      internal_stop_advertising_service(a2 + 1208, 0, 0);
    }
  }

  if (*(a2 + 32))
  {
    mDNS_Deregister_internal(a1, a2 + 24, 0);
  }

  if (*(a2 + 1208))
  {
    mDNS_Deregister_internal(a1, a2 + 1200, 0);
  }

LABEL_50:
  if ((a3 & 2) != 0 && v9)
  {
    v16 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      v17 = 136446210;
      v18 = (a2 + 3606);
    }

    else
    {
      v16 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      v17 = 136446210;
      v18 = (a2 + 3606);
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "DeadvertiseInterface: Deadvertising randomized hostname on interface %{public}s", &v17, 0xCu);
LABEL_59:
    if (*(a2 + 2384))
    {
      mDNS_Deregister_internal(a1, a2 + 2376, 0);
    }
  }
}

void LNT_ClearState(uint64_t a1)
{
  v2 = *(a1 + 14808);
  if (v2)
  {
    mDNSPlatformTCPCloseConnection(v2);
    *(a1 + 14808) = 0;
  }

  v3 = *(a1 + 14920);
  if (v3)
  {
    mDNSPlatformTCPCloseConnection(v3);
    *(a1 + 14920) = 0;
  }

  *(a1 + 15034) = 0;
}

void ReleaseCacheGroup(uint64_t a1, void **a2)
{
  v4 = *a2;
  if ((*a2)[3] == *a2 + 2)
  {
    goto LABEL_12;
  }

  v5 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v6 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 0;
    v7 = &v13;
  }

  else
  {
    v5 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v7 = &v12;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ERROR: (*cp)->members == mDNSNULL but (*cp)->rrcache_tail != &(*cp)->members)", v7, 2u);
LABEL_12:
  v9 = *a2;
  v10 = (*a2)[4];
  if (v10 != *a2 + 5 && v10 != 0)
  {
    free(v10);
    v9 = *a2;
  }

  v9[4] = 0;
  *a2 = **a2;
  *v4 = *(a1 + 264);
  *(a1 + 264) = v4;
  --*(a1 + 244);
}

size_t AdvertiseHostname(size_t result, uint64_t a2)
{
  v3 = result;
  if (!*(result + 12720) || *(a2 + 472))
  {
    goto LABEL_23;
  }

  v4 = (result + 12720);
  mDNS_SetupResourceRecord(a2 + 464, 0, 0, 1, 0x1194u, 0, 0, HostnameCallback, a2);
  v11 = (a2 + 208);
  v12 = (a2 + 208);
  do
  {
    if (!v12)
    {
      break;
    }

    v13 = *v12;
    if (v13 > 0x3F)
    {
      break;
    }

    if (!*v12)
    {
      v14 = v12 - v11 + 1;
      if (v14 <= 0x100u)
      {
        memcpy((a2 + 1116), v11, v14);
        goto LABEL_12;
      }

      break;
    }

    v12 += v13 + 1;
  }

  while (v12 - v11 <= 255);
  *(a2 + 1116) = 0;
LABEL_12:
  *(*(a2 + 512) + 4) = *v4;
  *(a2 + 808) = 4;
  v15 = *v4;
  if (v15 != 10)
  {
    if (v15 == 172)
    {
      if ((*(v3 + 12721) & 0xF0) != 0x10)
      {
LABEL_16:
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Advertising hostname %##s IPv4 %.4a", v6, v7, v8, v9, v10, *(a2 + 504));
        }

        *(a2 + 472) = 32;
        result = mDNS_Register_internal(v3, a2 + 464, v5, v6, v7, v8, v9, v10);
        goto LABEL_23;
      }
    }

    else if (v15 != 192 || *(v3 + 12721) != 168)
    {
      goto LABEL_16;
    }
  }

  if (*(a2 + 200))
  {
    mDNS_StopNATOperation_internal(v3, a2 + 8);
  }

  *(a2 + 180) = 0;
  *(a2 + 182) = 0;
  *(a2 + 188) = 0;
  *(a2 + 192) = hostnameGetPublicAddressCallback;
  *(a2 + 200) = a2;
  result = mDNS_StartNATOperation_internal(v3, a2 + 8, v5, v6, v7, v8, v9, v10);
LABEL_23:
  if (*(v3 + 12744) | *(v3 + 12740) | *(v3 + 12748) | *(v3 + 12752) && !*(a2 + 1648))
  {
    mDNS_SetupResourceRecord(a2 + 1640, 0, 0, 28, 0x1194u, 32, 0, HostnameCallback, a2);
    v22 = (a2 + 208);
    v23 = (a2 + 208);
    do
    {
      if (!v23)
      {
        break;
      }

      v24 = *v23;
      if (v24 > 0x3F)
      {
        break;
      }

      if (!*v23)
      {
        v25 = v23 - v22 + 1;
        if (v25 <= 0x100u)
        {
          memcpy((a2 + 2292), v22, v25);
          goto LABEL_35;
        }

        break;
      }

      v23 += v24 + 1;
    }

    while (v23 - v22 <= 255);
    *(a2 + 2292) = 0;
LABEL_35:
    *(*(a2 + 1688) + 4) = *(v3 + 12740);
    *(a2 + 1984) = 4;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Advertising hostname %##s IPv6 %.16a", v17, v18, v19, v20, v21, *(a2 + 1680));
    }

    return mDNS_Register_internal(v3, a2 + 1640, v16, v17, v18, v19, v20, v21);
  }

  return result;
}

void CancelGetZoneData(uint64_t a1, char *a2)
{
  if (*(a2 + 261) != -1)
  {
    mDNS_StopQuery_internal(a1, (a2 + 832));
    if (*(a2 + 261) != -1)
    {
      v3 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v5 = a2 + 1208;
          v6 = a2 + 1208;
          while (1)
          {
            if (!v6 || (v7 = *v6, v7 > 0x3F))
            {
LABEL_14:
              v8 = 257;
              goto LABEL_24;
            }

            if (!*v6)
            {
              break;
            }

            v6 += v7 + 1;
            if (v6 - v5 >= 256)
            {
              goto LABEL_14;
            }
          }

          v8 = (v6 - v5 + 1);
          goto LABEL_24;
        }
      }

      else
      {
        v3 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v10 = a2 + 1208;
          v11 = a2 + 1208;
          while (1)
          {
            if (!v11 || (v12 = *v11, v12 > 0x3F))
            {
LABEL_21:
              v8 = 257;
              goto LABEL_24;
            }

            if (!*v11)
            {
              break;
            }

            v11 += v12 + 1;
            if (v11 - v10 >= 256)
            {
              goto LABEL_21;
            }
          }

          v8 = (v11 - v10 + 1);
LABEL_24:
          v13 = DNSTypeName(*(a2 + 587));
          v14 = *(a2 + 261);
          v15 = 141559043;
          v16 = 1752392040;
          v17 = 1040;
          v18 = v8;
          v19 = 2101;
          v20 = a2 + 1208;
          v21 = 2082;
          v22 = v13;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CancelGetZoneData: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) ThisQInterval %d not -1", &v15, 0x2Cu);
        }
      }
    }
  }

  free(a2);
}

int *mDNSPlatformUDPSocket(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x91C8E7BFuLL);
  if (result)
  {
    v3 = result;
    *result = 0;
    *(result + 1) = &mDNSStorage;
    result[4] = -1;
    result[12] = -1;
    *(result + 88) = 0;
    v4 = -9999;
    LOWORD(v5) = a1;
    do
    {
      v6 = v4;
      if (!a1)
      {
        v5 = bswap32(arc4random() | 0xC000) >> 16;
      }

      v7 = SetupSocket(v3, v5, 2);
      if (!v7)
      {
        v8 = SetupSocket(v3, v5, 30);
        if (!v8)
        {
          return v3;
        }

        v7 = v8;
        close(v3[4]);
        v3[4] = -1;
      }

      if (v7 != 48)
      {
        break;
      }

      if (a1)
      {
        break;
      }

      v4 = v6 + 1;
    }

    while (v6);
    if (a1 != 58900 || mDNS_LoggingEnabled)
    {
      v9 = mDNSLogCategory_Default;
      v10 = *__error();
      v11 = __error();
      strerror(*v11);
      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUDPSocket: SetupSocket %d failed error %d errno %d (%s)", v12, v13, v14, v15, v16, bswap32(a1) >> 16);
    }

    free(v3);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void uDNS_ReceiveMsg(uint64_t a1, unsigned __int16 *a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[1] & 0xF8;
  if (v10 != 168)
  {
    if (v10 == 128)
    {
      v11 = *(a1 + 192);
      if (v11)
      {
        v12 = a5;
        do
        {
          if ((a2[1] & 2) != 0 && *(v11 + 340) == *a2 && *(a1 + 64) - *(v11 + 208) <= 59999)
          {
            if (a4)
            {
              v14 = *(v11 + 112);
              if (v14)
              {
                DisposeTCPConn(v14);
                *(v11 + 112) = 0;
              }

              *(v11 + 112) = MakeTCPConn(a1, 0, 0, 0, a4, v12, 0, v11, 0);
            }

            else
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveMsg: TCP DNS response had TC bit set: ignoring", a4, a5, a6, a7, a8, v110);
            }
          }

          v11 = *(v11 + 8);
        }

        while (v11);
      }
    }

    return;
  }

  v15 = *(a2 + 3) & 0xF;
  v124 = 0;
  if (GetPktLease(a1, a2, a3, &v124))
  {
    v16 = v124;
  }

  else
  {
    v16 = 3600;
  }

  v120 = 1000 * v16 + *(a1 + 64);
  v121 = v16;
  v17 = 1000 * v16 / 10;
  v18 = 1;
  if (v17 >= 2)
  {
    do
    {
      v18 = (2 * v18) | 1;
    }

    while (v18 < v17);
  }

  do
  {
    v19 = arc4random() & v18;
  }

  while (v19 > v17);
  v20 = *(a1 + 12640);
  if (v20)
  {
    v21 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v20 + 8), (*(v20 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveMsg ERROR m->CurrentRecord already set %s", v22, v23, v24, v25, v26, a1 + 47032);
  }

  v27 = *(a1 + 12616);
  *(a1 + 12640) = v27;
  if (v27)
  {
    v122 = (a1 + 47032);
    v28 = &unk_100178000;
    while (1)
    {
      v29 = *v27;
      *(a1 + 12640) = *v27;
      if (!*(v27 + 32))
      {
        break;
      }

LABEL_146:
      v27 = v29;
      if (!v29)
      {
        return;
      }
    }

    if (*(v27 + 122) || IsLocalDomain(*(v27 + 40)) || *(v27 + 358) != *a2)
    {
      goto LABEL_145;
    }

    v35 = -65554;
    v36 = *(v27 + 40);
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v119 = 0;
        v35 = -65548;
        goto LABEL_54;
      }

      if (v15 == 8)
      {
        LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Reregister refused (NXRRSET): %##s", v30, v31, v32, v33, v34, *(v27 + 40));
        goto LABEL_49;
      }

      if (v15 != 9)
      {
LABEL_45:
        LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Update %##s failed with rcode %d", v30, v31, v32, v33, v34, *(v27 + 40));
        goto LABEL_53;
      }

      v37 = ParseTSIGError(a1, a2, a3, *(v27 + 40));
      if (!v37)
      {
        LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Permission denied (NOAUTH): %##s", v38, v39, v40, v41, v42, v36);
LABEL_53:
        v119 = 0;
        v35 = -65537;
        goto LABEL_54;
      }
    }

    else
    {
      if (!v15)
      {
        v35 = 0;
        v119 = 1;
        if (v121 && *(v27 + 348))
        {
          if (*(v27 + 352) - v120 < 0 && *(v27 + 344) == 7)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            *(v27 + 352) = v120;
            *(v27 + 600) = 0;
          }

          v119 = 1;
        }

LABEL_54:
        mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "hndlRecordUpdateReply", 3501);
        if (mDNS_LoggingEnabled == 1)
        {
          v117 = bswap32(*(v27 + 358)) >> 16;
          v118 = v28[434];
          v48 = *(v27 + 344);
          GetRRDisplayString_rdb((v27 + 8), (*(v27 + 48) + 4), v122);
          LogMsgWithLevel(v118, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: err %d ID %d state %d %s(%p)", v49, v50, v51, v52, v53, v35);
        }

        *(v27 + 604) = v35;
        SetRecordRetry(a1, v27, v19);
        *(v27 + 358) = 0;
        v59 = *(v27 + 376);
        if (v59)
        {
          if (*(v59 + 1044) != -1)
          {
            v60 = v28[434];
            GetRRDisplayString_rdb((v27 + 8), (*(v27 + 48) + 4), v122);
            DNSTypeName(*(*(v27 + 376) + 1174));
            v116 = *(*(v27 + 376) + 1044);
            LogMsgWithLevel(v60, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: ResourceRecord %s, zone info question %##s (%s) interval %d not -1", v61, v62, v63, v64, v65, v122);
            v59 = *(v27 + 376);
          }

          v66 = *(v59 + 786);
          CancelGetZoneData(a1, v59);
          *(v27 + 376) = 0;
          v67 = v66 == 13568;
        }

        else
        {
          v67 = 0;
        }

        if (*(v27 + 8) == 1 && *(v27 + 344) == 3)
        {
          if ((v119 & 1) == 0)
          {
            v111 = *(v27 + 12);
            LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "ERROR: Deregistration of record %##s type %d failed with error %d", v54, v55, v56, v57, v58, *(v27 + 40));
          }

          *(v27 + 344) = 4;
          CompleteDeregistration(a1, v27);
          goto LABEL_145;
        }

        if (*(a1 + 141))
        {
          if (*(v27 + 12) != 33 || *(v27 + 344) != 3)
          {
            goto LABEL_145;
          }

          v68 = 8;
          goto LABEL_70;
        }

        if (*(v27 + 344) == 7)
        {
          if ((v119 & 1) == 0)
          {
            LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Update record failed for %##s (err %d)", v54, v55, v56, v57, v58, *(v27 + 40));
          }

          *(v27 + 344) = 2;
          v69 = *(v27 + 320);
          if (v69)
          {
            v69(a1, v27, *(v27 + 624), *(v27 + 616));
          }

          SetNewRData(v27 + 8, *(v27 + 632), *(v27 + 618), v54, v55, v56, v57, v58);
          *(v27 + 624) = 0u;
        }

        if (*(v27 + 592))
        {
          v70 = *(v27 + 12);
          if (v70 != 33)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v82 = v28;
              v83 = v28[434];
              v84 = *(v27 + 40);
              DNSTypeName(v70);
              v115 = *(v27 + 344);
              v85 = v83;
              v28 = v82;
              LogMsgWithLevel(v85, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Deregistered %##s (%s), state %d", v86, v87, v88, v89, v90, v84);
            }

            *(v27 + 592) = 0;
            if (*(v27 + 344) != 3)
            {
              v91 = v28;
              v92 = v28[434];
              GetRRDisplayString_rdb((v27 + 8), (*(v27 + 48) + 4), v122);
              v112 = *(v27 + 344);
              v93 = v92;
              v28 = v91;
              LogMsgWithLevel(v93, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: ResourceRecord %s not in DeregPending state %d", v94, v95, v96, v97, v98, v122);
            }

            *(v27 + 344) = 8;
            goto LABEL_145;
          }

          v71 = v28;
          ServiceTarget = GetServiceTarget(a1, v27);
          if (ServiceTarget)
          {
            v78 = ServiceTarget;
            if (*ServiceTarget)
            {
              v79 = *(v27 + 344);
              if (v79 != 3)
              {
                if (v79 != 1)
                {
LABEL_127:
                  *(v27 + 592) = 0;
LABEL_144:
                  v28 = v71;
                  goto LABEL_145;
                }

                if (SameDomainNameBytes(ServiceTarget, (*(v27 + 48) + 10)))
                {
                  if (*(v27 + 344) == 1)
                  {
                    *(v27 + 344) = 2;
                  }

                  goto LABEL_127;
                }
              }

              v108 = *(v27 + 12);
              if (v108 <= 0x27)
              {
                if (((1 << v108) & 0x1000248000) != 0)
                {
                  v109 = 6;
                  goto LABEL_140;
                }

                if (((1 << v108) & 0x8000001024) != 0)
                {
                  v109 = 4;
LABEL_140:
                  *(*(v27 + 48) + v109) = 0;
                  goto LABEL_141;
                }

                if (v108 == 33)
                {
                  v109 = 10;
                  goto LABEL_140;
                }
              }

LABEL_141:
              *(v27 + 344) = 8;
              *(v27 + 20) = 0;
              if (mDNS_LoggingEnabled == 1)
              {
                v114 = *(v27 + 40);
                LogMsgWithLevel(v71[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, Valid Target %##s, Registering all records for %##s, state %d", v73, v74, v75, v76, v77, v78);
              }

              *(v27 + 592) = 0;
              UpdateOneSRVRecord(a1, v27);
              goto LABEL_144;
            }
          }

          v99 = *(v27 + 344);
          if (v99 == 1)
          {
            v28 = v71;
            if (mDNS_LoggingEnabled)
            {
              LogMsgWithLevel(v71[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, No Target, Deregistering again %##s, state %d", v73, v74, v75, v76, v77, *(v27 + 40));
            }

            *(v27 + 280) = 1000;
            *(v27 + 284) = *(a1 + 64) - 1000;
            v68 = 3;
LABEL_70:
            *(v27 + 344) = v68;
            goto LABEL_145;
          }

          if (v99 != 3)
          {
            if (mDNS_LoggingEnabled)
            {
              LogMsgWithLevel(v71[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: Not in DeregPending or RegPending state %##s, state %d", v73, v74, v75, v76, v77, *(v27 + 40));
            }

            goto LABEL_127;
          }

          v28 = v71;
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(v71[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, No Target, SRV Deregistered for %##s, state %d", v73, v74, v75, v76, v77, *(v27 + 40));
          }

          *(v27 + 592) = 0;
          v100 = *(v27 + 12);
          if (v100 <= 0x27)
          {
            if (((1 << v100) & 0x1000248000) != 0)
            {
              v101 = 6;
              goto LABEL_136;
            }

            if (((1 << v100) & 0x8000001024) != 0)
            {
              v101 = 4;
LABEL_136:
              *(*(v27 + 48) + v101) = 0;
              goto LABEL_137;
            }

            if (v100 == 33)
            {
              v101 = 10;
              goto LABEL_136;
            }
          }

LABEL_137:
          *(v27 + 344) = 8;
          *(v27 + 20) = 0;
          goto LABEL_145;
        }

        v80 = *(v27 + 344);
        if ((v80 | 4) == 5)
        {
          if (v119)
          {
            v81 = v80 != 5;
            *(v27 + 344) = 2;
LABEL_113:
            v105 = *(v27 + 640);
            if (!v105 || *(v27 + 344) != 2)
            {
              if ((v119 & v81) == 1 && *(v27 + 104))
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Calling record callback on %##s", v54, v55, v56, v57, v58, *(v27 + 40));
                }

                v106 = *(a1 + 48);
                v107 = *(a1 + 52) + 1;
                *(a1 + 52) = v107;
                mDNS_VerifyLockState("Drop Lock", 0, v106, v107, "hndlRecordUpdateReply", 3627);
                (*(v27 + 104))(a1, v27, 0);
                mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "hndlRecordUpdateReply", 3629);
                --*(a1 + 52);
              }

              goto LABEL_145;
            }

            *(v27 + 344) = 7;
            *(v27 + 632) = v105;
            *(v27 + 618) = *(v27 + 620);
            *(v27 + 624) = *(v27 + 48);
            *(v27 + 616) = *(v27 + 20);
            *(v27 + 640) = 0;
            *(v27 + 280) = 1000;
            v104 = *(a1 + 64);
            *(v27 + 284) = v104 - 1000;
            if (*(a1 + 12680) - v104 >= 0)
            {
LABEL_116:
              *(a1 + 12680) = v104;
            }

LABEL_145:
            v29 = *(a1 + 12640);
            goto LABEL_146;
          }

          v113 = *(v27 + 12);
          LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Registration of record %##s type %d failed with error %d", v54, v55, v56, v57, v58, *(v27 + 40));
          if (!*(v27 + 356))
          {
            v102 = v35 != -65537 || *(v27 + 348) == 0;
            v103 = !v102;
            if (v103 && v67)
            {
              LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Will retry update of record %##s without lease option", v54, v55, v56, v57, v58, *(v27 + 40));
              *(v27 + 348) = 0;
              *(v27 + 280) = 1000;
              v104 = *(a1 + 64);
              *(v27 + 284) = v104 - 1000;
              if (*(a1 + 12680) - v104 < 0)
              {
                goto LABEL_145;
              }

              goto LABEL_116;
            }
          }
        }

        v81 = 1;
        goto LABEL_113;
      }

      if (v15 != 1)
      {
        if (v15 == 5)
        {
          LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Update %##s refused", v30, v31, v32, v33, v34, *(v27 + 40));
          v119 = 0;
          v35 = -65553;
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v37 = ParseTSIGError(a1, a2, a3, *(v27 + 40));
      if (!v37)
      {
        LogMsgWithLevel(v28[434], OS_LOG_TYPE_DEFAULT, "Format Error: %##s", v43, v44, v45, v46, v47, v36);
        goto LABEL_53;
      }
    }

    v35 = v37;
LABEL_49:
    v119 = 0;
    goto LABEL_54;
  }
}

uint64_t ExpectingUnicastResponseForQuestion(uint64_t result, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, int a5)
{
  if (result)
  {
    v8 = result;
    v9 = a2;
    while (1)
    {
      if (a5)
      {
        v10 = (v8 + 338);
      }

      else
      {
        v10 = *(v8 + 72);
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      if (*v10 == v9 && *(v8 + 342) == *(a4 + 342) && *(v8 + 344) == *(a4 + 344) && *(v8 + 200) == *(a4 + 200) && SameDomainNameBytes((v8 + 376), (a4 + 376)))
      {
        if (*(v8 + 340) == a3)
        {
          return v8;
        }

        else
        {
          return 0;
        }
      }

LABEL_11:
      v8 = *(v8 + 8);
      if (!v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CloseSocketSet(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    close(v2);
    *(a1 + 16) = -1;
  }

  result = *(a1 + 48);
  if (result != -1)
  {
    result = close(result);
    *(a1 + 48) = -1;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *v4 = 1;
  }

  return result;
}

void SendRecordRegistration(uint64_t a1, uint64_t a2)
{
  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, *(a2 + 40));
  if (AuthInfoForName_internal)
  {
    v5 = AuthInfoForName_internal + 268;
    v6 = AuthInfoForName_internal + 268;
    while (1)
    {
      if (!v6 || (v7 = *v6, v7 > 0x3F))
      {
LABEL_7:
        v8 = -360;
        goto LABEL_10;
      }

      if (!*v6)
      {
        break;
      }

      v6 += v7 + 1;
      if (v6 - v5 >= 256)
      {
        goto LABEL_7;
      }
    }

    v8 = -103 - (v6 - v5 + 1);
  }

  else
  {
    v8 = -35;
  }

LABEL_10:
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SendRecordRegistration", 2994);
  v9 = *(a2 + 376);
  if (!v9 || !*(v9 + 792))
  {
    v37 = mDNSLogCategory_Default;
    v38 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v38);
    LogMsgWithLevel(v37, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: No Zone information, should not happen %s", v39, v40, v41, v42, v43, v38);
    return;
  }

  v10 = a1 + 37912;
  v11 = mDNS_NewMessageID(a1);
  *(a2 + 358) = v11;
  *(a1 + 28960) = v11;
  *(a1 + 28962) = 40;
  *(a1 + 28964) = 0;
  v15 = putZone(a1 + 28960, a1 + 28972, a1 + 37912 + v8, *(a2 + 368), bswap32(*(a2 + 14)) >> 16, v12, v13, v14);
  if (!v15 || (updated = BuildUpdateMessage(a1, v15, a2, v10 + v8, v16, v17, v18, v19)) == 0 || (v21 = updated, *(a2 + 348)) && (v21 = putUpdateLeaseWithLimit(a1 + 28960, updated, v10 + v8)) == 0)
  {
    v44 = mDNSLogCategory_Default;
    v45 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v45);
    LogMsgWithLevel(v44, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: Error formatting message for %s, disabling further updates", v46, v47, v48, v49, v50, v45);
    *(a2 + 344) = 8;
    return;
  }

  if (*(a2 + 356))
  {
    if (mDNS_LoggingEnabled)
    {
      v22 = mDNSLogCategory_Default;
      v23 = (a2 + 384);
      v24 = *(a2 + 384);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration TCP %p %s", v25, v26, v27, v28, v29, v24);
      v30 = *(a2 + 384);
      if (!v30 || !mDNS_LoggingEnabled)
      {
        goto LABEL_29;
      }

      v31 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v31, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: Disposing existing TCP connection for %s", v32, v33, v34, v35, v36, a1 + 47032);
    }

    else
    {
      v23 = (a2 + 384);
    }

    v30 = *v23;
LABEL_29:
    if (v30)
    {
      DisposeTCPConn(v30);
      *v23 = 0;
    }

    v59 = *(a2 + 376);
    if (!v59)
    {
      v60 = mDNSLogCategory_Default;
      v61 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v61);
      LogMsgWithLevel(v60, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration:Private:ERROR!! nta is NULL for %s", v62, v63, v64, v65, v66, v61);
      return;
    }

    *(a2 + 384) = MakeTCPConn(a1, (a1 + 28960), v21, 1, (v59 + 788), *(v59 + 786), (v59 + 530), 0, a2);
    goto LABEL_33;
  }

  if (mDNS_LoggingEnabled)
  {
    v51 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v51, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration UDP %s", v52, v53, v54, v55, v56, a1 + 47032);
  }

  v57 = *(a2 + 376);
  if (!v57)
  {
    v67 = mDNSLogCategory_Default;
    v68 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v68);
    LogMsgWithLevel(v67, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration:ERROR!! nta is NULL for %s", v69, v70, v71, v72, v73, v68);
    return;
  }

  v58 = GetAuthInfoForName_internal(a1, *(a2 + 40));
  mDNSSendDNSMessage(a1, (a1 + 28960), v21, 0, 0, 0, (v57 + 788), *(v57 + 786), v58, 0);
LABEL_33:

  SetRecordRetry(a1, a2, 0);
}

_WORD *putZone(unint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v11 = putDomainNameAsLabels(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = 0;
  if (v11 && (v11 + 2) <= a3)
  {
    *v11 = 1536;
    v11[1] = v8;
    ++*(a1 + 4);
    return v11 + 2;
  }

  return v12;
}

void *MakeTCPConn(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, int *a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  v13 = a4;
  v68 = 0;
  if (a8)
  {
    v17 = *(a8 + 640);
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (!a7 || !*a7)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: TLS connection being setup with NULL hostname", a4, a5, a6, a7, a8, v64);
    return 0;
  }

LABEL_7:
  result = malloc_type_calloc(1uLL, 0x2358uLL, 0xC76966E2uLL);
  if (result)
  {
    v19 = result;
    if (a2)
    {
      v20 = a3 - a2;
      if (a3 < a2 || v20 >= 8953)
      {
        v21 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_17:
            *buf = 134218240;
            v71 = a2;
            v72 = 2048;
            v73 = a3;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MakeTCPConn: invalid DNS message pointers -- msg: %p, end: %p", buf, 0x16u);
          }
        }

        else
        {
          v21 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }

LABEL_26:
        free(v19);
        return 0;
      }

      *(result + 2242) = v20;
      memcpy(result + 2, a2, v20);
    }

    *v19 = a1;
    v22 = mDNSPlatformTCPSocket(v13, *a5, &v68, a7, v17);
    v19[1] = v22;
    v19[1122] = a8;
    v19[1123] = a9;
    v28 = a5[4];
    *(v19 + 562) = *a5;
    *(v19 + 2252) = v28;
    *(v19 + 4506) = v11;
    v19[1127] = 0;
    *(v19 + 4512) = 0;
    v19[1129] = 0;
    *(v19 + 2260) = 0;
    *(v19 + 4507) = v68;
    if (!v22)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: unable to create TCP socket", v23, v24, v25, v26, v27, v64);
      goto LABEL_26;
    }

    if (a8)
    {
      v29 = *(v22 + 4);
      if ((v29 & 0x80000000) == 0)
      {
        bzero(buf, 0x3F1uLL);
        if (*(a8 + 244))
        {
          if (setsockopt(v29, 0xFFFF, 4359, (a8 + 244), 4u) == -1)
          {
            v30 = mDNSLogCategory_Default;
            v31 = __error();
            v65 = strerror(*v31);
            v67 = *(a8 + 244);
            LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: Delegate PID failed %s for PID %d", v32, v33, v34, v35, v36, v65);
          }
        }

        else if (setsockopt(v29, 0xFFFF, 4360, (a8 + 657), 0x10u) == -1)
        {
          v38 = mDNSLogCategory_Default;
          v39 = __error();
          v66 = strerror(*v39);
          LogMsgWithLevel(v38, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: Delegate UUID failed %s", v40, v41, v42, v43, v44, v66);
        }

        ConvertDomainNameToCString_withescape((a8 + 376), buf);
        if ((ne_session_set_socket_attributes() & 1) == 0 && mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: ne_session_set_socket_attributes()-> setting domain failed for %s", v45, v46, v47, v48, v49, buf);
        }

        v69 = 1;
        if (setsockopt(v29, 0xFFFF, 0x10000, &v69, 4u) == -1 && mDNS_LoggingEnabled)
        {
          v50 = mDNSLogCategory_Default;
          v51 = __error();
          v52 = strerror(*v51);
          LogMsgWithLevel(v50, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: SO_NOWAKEFROMSLEEP failed %s", v53, v54, v55, v56, v57, v52);
        }

        v22 = v19[1];
      }

      v37 = *(a8 + 136);
    }

    else
    {
      v37 = 0;
    }

    v58 = mDNSPlatformTCPConnect(v22, a5, v11, v37, tcpCallback, v19);
    if (v58 == -65787)
    {
      return v19;
    }

    if (v58 == -65789)
    {
      tcpCallback(v19[1], v19, 1, 0, v60, v61, v62, v63);
      return v19;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: connection failed", v59, v60, v61, v62, v63, v64);
    }

    DisposeTCPConn(v19);
    return 0;
  }

  __break(1u);
  return result;
}

void *mDNSPlatformTCPSocket(int a1, int a2, _WORD *a3, _BYTE *a4, int a5)
{
  v43 = 0x4000;
  if (a4)
  {
    v10 = 344;
  }

  else
  {
    v10 = 88;
  }

  v11 = malloc_type_calloc(1uLL, v10, 0x40BBCBA5uLL);
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  if (a4)
  {
    v13 = v11 + 88;
    v12[6] = v12 + 11;
    v14 = a4;
    do
    {
      if (!v14)
      {
        break;
      }

      v15 = *v14;
      if (v15 > 0x3F)
      {
        break;
      }

      if (!*v14)
      {
        v16 = v14 - a4 + 1;
        if (v16 <= 0x100u)
        {
          memcpy(v13, a4, v16);
          goto LABEL_15;
        }

        break;
      }

      v14 += v15 + 1;
    }

    while (v14 - a4 <= 255);
    *v13 = 0;
  }

LABEL_15:
  if (a2 == 4)
  {
    v17 = 2;
  }

  else
  {
    v17 = 30;
  }

  v45 = 15384;
  v18 = socket(v17, 1, 6);
  v19 = v18;
  if (v18 < 0)
  {
    if (*__error() != 47)
    {
      v23 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:
          v29 = *__error();
          v30 = __error();
          v31 = strerror(*v30);
          *&v48[0].sa_len = 67109634;
          *&v48[0].sa_data[2] = v19;
          *&v48[0].sa_data[6] = 1024;
          *&v48[0].sa_data[8] = v29;
          *&v48[0].sa_data[12] = 2082;
          *&v48[1].sa_len = v31;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNSPosixTCPSocketSetup: socket error %d errno %d (%{public}s)", &v48[0].sa_len, 0x18u);
        }
      }

      else
      {
        v23 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }
      }
    }

    v19 = -1;
    goto LABEL_48;
  }

  memset(v48, 0, 28);
  if (a3)
  {
    v20 = a2 == 4 ? 16 : 28;
    *&v48[0].sa_data[10] = 0uLL;
    *&v48[0].sa_data[2] = 0;
    v48[0].sa_family = v17;
    v48[0].sa_len = v20;
    *v48[0].sa_data = *a3;
    if (bind(v18, v48, v20) < 0)
    {
      v22 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v22 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }
      }

      v27 = __error();
      v28 = strerror(*v27);
      *buf = 136446210;
      v47 = v28;
      v26 = "mDNSPosixTCPSocketSetup getsockname: %{public}s";
      goto LABEL_66;
    }
  }

  v44 = 28;
  if (getsockname(v19, v48, &v44) < 0)
  {
    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    v24 = __error();
    v25 = strerror(*v24);
    *buf = 136446210;
    v47 = v25;
    v26 = "mDNSPosixTCPSocketSetup getsockname: %{public}s";
LABEL_66:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    goto LABEL_67;
  }

  v21 = *v48[0].sa_data;
  *v12 = *v48[0].sa_data;
  if (a3)
  {
    *a3 = v21;
  }

  if (setsockopt(v19, 6, 513, &v45, 4u) < 0)
  {
    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_65:
        v35 = __error();
        v36 = strerror(*v35);
        *buf = 136446210;
        v47 = v36;
        v26 = "mDNSPosixTCPSocketSetup: TCP_NOTSENT_LOWAT failed: %{public}s";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    close(v19);
    v37 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_72:
        v38 = *(v12 + 4);
        v39 = *__error();
        v40 = __error();
        v41 = strerror(*v40);
        *&v48[0].sa_len = 67109634;
        *&v48[0].sa_data[2] = v38;
        *&v48[0].sa_data[6] = 1024;
        *&v48[0].sa_data[8] = v39;
        *&v48[0].sa_data[12] = 2082;
        *&v48[1].sa_len = v41;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPSocket: socket error %d errno %d (%{public}s)", &v48[0].sa_len, 0x18u);
      }
    }

    else
    {
      v37 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }
    }

    free(v12);
    return 0;
  }

LABEL_48:
  if (a5)
  {
    v32 = 100;
  }

  else
  {
    v32 = 900;
  }

  *&v48[0].sa_len = v32;
  setsockopt(v19, 0xFFFF, 4230, v48, 4u);
  *(v12 + 4) = v19;
  v12[3] = tcpKQSocketCallback;
  v12[4] = v12;
  v12[5] = "mDNSPlatformTCPSocket";
  if (setsockopt(v19, 6, 513, &v43, 4u) < 0)
  {
    v33 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_58:
        v34 = *__error();
        *&v48[0].sa_len = 67109120;
        *&v48[0].sa_data[2] = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPSocket: TCP_NOTSENT_LOWAT returned %d", &v48[0].sa_len, 8u);
      }
    }

    else
    {
      v33 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }
    }

    mDNSPlatformTCPCloseConnection(v12);
    return 0;
  }

  v12[1] = 0;
  *(v12 + 1) = a1;
  v12[7] = 0;
  *(v12 + 32) = 0;
  *(v12 + 17) = 0;
  v12[9] = &mDNSStorage;
  *(v12 + 20) = 0;
  return v12;
}

uint64_t mDNSPlatformTCPConnect(uint64_t a1, _DWORD *a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v46, 0, sizeof(v46));
  *(a1 + 8) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  v9 = a2 + 1;
  if (*a2 == 4)
  {
    *&v46[0].sa_data[2] = *v9;
    v10 = 16;
    v11 = 2;
  }

  else
  {
    memset(&v46[0].sa_data[6], 0, 20);
    *&v46[0].sa_len = 0;
    *&v46[0].sa_data[6] = *v9;
    v10 = 28;
    v11 = 30;
  }

  v46[0].sa_family = v11;
  *v46[0].sa_data = a3;
  v46[0].sa_len = v10;
  if (KQueueSet(*(a1 + 16), 1u, -2, (a1 + 24)))
  {
    v12 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v12 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPlatformTCPConnect - KQueueSet failed", buf, 2u);
      }
    }

    return *__error();
  }

  v13 = *(a1 + 16);
  v14 = fcntl(v13, 3, 0);
  if (fcntl(v13, 4, v14 | 4u) < 0)
  {
    v22 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:
        v24 = __error();
        v25 = strerror(*v24);
        *buf = 136446210;
        *v41 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ERROR: setsockopt O_NONBLOCK - %{public}s", buf, 0xCu);
      }
    }

    else
    {
      v22 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    return 4294901759;
  }

  if (!a4)
  {
    goto LABEL_30;
  }

  for (i = *mDNSStorage; i; i = *(i + 3680))
  {
    if (*(i + 3768) && *(i + 3720) == a4)
    {
      break;
    }
  }

  if (*a2 != 4)
  {
    if (i)
    {
      v16 = *(a1 + 16);
      v17 = (i + 3720);
      v18 = 41;
      v19 = 125;
      goto LABEL_29;
    }

    v27 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    else
    {
      v27 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    return 4294901756;
  }

  if (!i)
  {
    v27 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    else
    {
      v27 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
LABEL_66:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPConnect: Invalid interface index %p", buf, 0xCu);
        return 4294901756;
      }
    }

    return 4294901756;
  }

  v16 = *(a1 + 16);
  v17 = (i + 3720);
  v18 = 0;
  v19 = 25;
LABEL_29:
  setsockopt(v16, v18, v19, v17, 4u);
LABEL_30:
  if ((connect(*(a1 + 16), v46, v10) & 0x80000000) == 0)
  {
    v23 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v23 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NOTE: mDNSPlatformTCPConnect completed synchronously", buf, 2u);
      }
    }

    return 0;
  }

  v20 = 4294901508;
  if (*__error() != 36)
  {
    if (*__error() == 65 || *__error() == 49 || *__error() == 50)
    {
      v26 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      else
      {
        v26 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      v28 = *(a1 + 16);
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      *buf = 67109634;
      *v41 = v28;
      *&v41[4] = 1024;
      *&v41[6] = v29;
      v42 = 2082;
      v43 = v31;
      v32 = "ERROR: mDNSPlatformTCPConnect - connect failed: socket %d: Error %d (%{public}s)";
      v33 = v26;
      v34 = 24;
    }

    else
    {
      v35 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      else
      {
        v35 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      v36 = *(a1 + 16);
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 67109890;
      *v41 = v36;
      *&v41[4] = 1024;
      *&v41[6] = v37;
      v42 = 2082;
      v43 = v39;
      v44 = 1024;
      sa_len = v46[0].sa_len;
      v32 = "ERROR: mDNSPlatformTCPConnect - connect failed: socket %d: Error %d (%{public}s) length %d";
      v33 = v35;
      v34 = 30;
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    return v20;
  }

  return 4294901509;
}

uint64_t tcpKQSocketCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 80) = 0;
  if (a2 != -2)
  {
    goto LABEL_18;
  }

  if (*(a3 + 65))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v9 = mDNSLogCategory_Default;
      v10 = "ERROR: TCPConnectCallback called with write event when socket is connected.";
LABEL_11:
      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, v10, a4, a5, a6, a7, a8, v32);
    }
  }

  else
  {
    v33 = 4;
    __errnum = 0;
    if (getsockopt(a1, 0xFFFF, 4103, &__errnum, &v33) < 0)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v14 = mDNSLogCategory_Default;
        v15 = *(a3 + 16);
        v16 = *__error();
        v17 = __error();
        strerror(*v17);
        LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "ERROR: TCPConnectCallback - unable to get connect error: socket %d: Error %d (%s)", v18, v19, v20, v21, v22, v15);
      }

      *(a3 + 80) = -65788;
      goto LABEL_15;
    }

    v11 = __errnum;
    if (__errnum)
    {
      *(a3 + 80) = -65788;
      if ((v11 - 49) > 0x10 || ((1 << (v11 - 49)) & 0x10003) == 0 || mDNS_LoggingEnabled == 1)
      {
        v12 = mDNSLogCategory_Default;
        v13 = *(a3 + 16);
        strerror(v11);
        v32 = v13;
        v10 = "ERROR: TCPConnectCallback - connect failed: socket %d: Error %d (%s)";
        v9 = v12;
        goto LABEL_11;
      }
    }
  }

LABEL_15:
  KQueueSet(*(a3 + 16), 2u, -2, (a3 + 24));
  if (!*(a3 + 80) && KQueueSet(*(a3 + 16), 1u, -1, (a3 + 24)))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: tcpKQSocketCallback - KQueueSet failed", v23, v24, v25, v26, v27, v32);
    *(a3 + 80) = -65562;
  }

LABEL_18:
  if (*(a3 + 4))
  {
    v28 = 4294901752;
    *(a3 + 80) = -65544;
    v29 = *(a3 + 65) == 0;
  }

  else
  {
    v28 = *(a3 + 80);
    v29 = *(a3 + 65) == 0;
    if (*(a3 + 65))
    {
      v30 = 0;
    }

    else
    {
      v30 = v28 == 0;
    }

    if (v30)
    {
      v28 = 0;
      v29 = 1;
      *(a3 + 65) = 1;
    }
  }

  return (*(a3 + 8))(a3, *(a3 + 56), v29, v28);
}

void tcpCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v121 = 0;
  v12 = *a2;
  v13 = *(a2 + 8976);
  if (v13)
  {
    v14 = (v13 + 112);
  }

  else
  {
    v15 = *(a2 + 8984);
    if (!v15)
    {
      v14 = 0;
      v16 = 1;
      if (a4)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v14 = (v15 + 384);
  }

  if (*v14 != a2)
  {
    v116 = *(a2 + 8976);
    v118 = *(a2 + 8984);
    v111 = *v14;
    v112 = a2;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "tcpCallback: %d backpointer %p incorrect tcpInfo %p question %p rr %p", a4, a5, a6, a7, a8, *(*(a2 + 8) + 16));
  }

  v16 = 0;
  if (v8)
  {
LABEL_8:
    if ((v16 & 1) == 0)
    {
      *v14 = 0;
    }

    mDNS_Lock_(v12, "tcpCallback", 1541);
    if (!v13)
    {
      goto LABEL_152;
    }

    v18 = *(v13 + 212);
    if (v18)
    {
      v19 = *(v13 + 208) + v18;
      v20 = *(v12 + 64);
      v21 = v19 - v20;
      if (*(v13 + 632))
      {
        v22 = 900000;
      }

      else
      {
        v22 = 3600000;
      }

      if (v21 > v22)
      {
        *(v13 + 208) = v20;
        *(v13 + 212) = v22;
        SetNextQueryTime(v12, v13);
        v23 = mDNSLogCategory_Default;
        DNSTypeName(*(v13 + 342));
        v113 = *(v13 + 212);
        LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for %##s (%s) failed, retrying in %d ms", v24, v25, v26, v27, v28, v13 + 376);
      }
    }

    else
    {
      *(v13 + 208) = *(v12 + 64);
      if (*(v13 + 632))
      {
        v29 = *(v13 + 348);
        *(v13 + 212) = 334;
        if (v29 == -1)
        {
          goto LABEL_40;
        }

        v17.i32[0] = v29;
        v30 = xmmword_10010D280;
        v31 = (v29 & 0xFFFFFFFC) + 4;
        v32.i64[0] = 0x300000003;
        v32.i64[1] = 0x300000003;
        do
        {
          v33 = v30;
          v30 = vmulq_s32(v30, v32);
          v31 -= 4;
        }

        while (v31);
        v34 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v29 & 0xFFFFFFFC), xmmword_10010D290), vdupq_lane_s32(v17, 0)), v33, v30);
        *v34.i8 = vmul_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
        *(v13 + 212) = v34.i32[0] * v34.i32[1];
        if (v34.i32[0] * v34.i32[1] <= 900000)
        {
LABEL_40:
          *(v13 + 348) = v29 + 1;
        }

        else
        {
          *(v13 + 212) = 900000;
        }

        v50 = mDNSLogCategory_Default;
        DNSTypeName(*(v13 + 342));
        v114 = *(v13 + 348);
        v117 = *(v13 + 212);
        LogMsgWithLevel(v50, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for LLQ %##s (%s) failed %d times, retrying in %d ms", v51, v52, v53, v54, v55, v13 + 376);
      }

      else
      {
        *(v13 + 212) = 3600000;
        v59 = mDNSLogCategory_Default;
        DNSTypeName(*(v13 + 342));
        v115 = *(v13 + 212);
        LogMsgWithLevel(v59, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for %##s (%s) failed, retrying in %d ms", v60, v61, v62, v63, v64, v13 + 376);
      }

      SetNextQueryTime(v12, v13);
    }

    if (!*(v13 + 632))
    {
      goto LABEL_152;
    }

    v65 = *(v13 + 350);
    if (v65 == 21)
    {
      *(v13 + 350) = 20;
      if (v8 == -65788)
      {
        goto LABEL_152;
      }
    }

    else if (v8 == -65788 || v65 == 30)
    {
      goto LABEL_152;
    }

    v119 = *(v13 + 252);
    v120 = bswap32(*(v13 + 340)) >> 16;
    v66 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v67 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v67 = 1;
    }

    v68 = v67;
    if (*(v13 + 212) != -1)
    {
      if (v68)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_125;
        }

        v69 = v13 + 376;
        v70 = (v13 + 376);
        while (1)
        {
          if (!v70 || (v71 = *v70, v71 > 0x3F))
          {
LABEL_73:
            v72 = 257;
            goto LABEL_124;
          }

          if (!*v70)
          {
            break;
          }

          v70 += v71 + 1;
          if (&v70[-v69] >= 256)
          {
            goto LABEL_73;
          }
        }

        v72 = (v70 - v69 + 1);
      }

      else
      {
        v66 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_125;
        }

        v78 = v13 + 376;
        v79 = (v13 + 376);
        while (1)
        {
          if (!v79 || (v80 = *v79, v80 > 0x3F))
          {
LABEL_95:
            v72 = 257;
            goto LABEL_124;
          }

          if (!*v79)
          {
            break;
          }

          v79 += v80 + 1;
          if (&v79[-v78] >= 256)
          {
            goto LABEL_95;
          }
        }

        v72 = (v79 - v78 + 1);
      }

LABEL_124:
      v95 = DNSTypeName(*(v13 + 342));
      v96 = LLQStateToString(*(v13 + 350));
      *buf = 67110659;
      *&buf[4] = v119;
      *&buf[8] = 1024;
      *&buf[10] = v120;
      *&buf[14] = 2160;
      *v123 = 1752392040;
      *&v123[8] = 1040;
      *&v123[10] = v72;
      v124 = 2101;
      *v125 = v13 + 376;
      *&v125[8] = 2082;
      *&v125[10] = v95;
      *&v125[18] = 2082;
      *&v125[20] = v96;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Starting long-lived query polling - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, LLQ_State: %{public}s.", buf, 0x3Cu);
LABEL_125:
      v97 = *(v13 + 104);
      if (!v97)
      {
LABEL_148:
        *(v13 + 350) = 30;
        *(v13 + 212) = 3000;
        *(v13 + 208) = *(v12 + 64) - 2999;
        SetNextQueryTime(v12, v13);
        goto LABEL_152;
      }

      v98 = bswap32(*(v97 + 1172)) >> 16;
      v99 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v104 = v97 + 1208;
          v105 = (v97 + 1208);
          while (1)
          {
            if (!v105 || (v106 = *v105, v106 > 0x3F))
            {
LABEL_141:
              v103 = 257;
              goto LABEL_146;
            }

            if (!*v105)
            {
              break;
            }

            v105 += v106 + 1;
            if (&v105[-v104] >= 256)
            {
              goto LABEL_141;
            }
          }

          v103 = (v105 - v104 + 1);
          goto LABEL_146;
        }
      }

      else
      {
        v99 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v100 = v97 + 1208;
          v101 = (v97 + 1208);
          while (1)
          {
            if (!v101 || (v102 = *v101, v102 > 0x3F))
            {
LABEL_134:
              v103 = 257;
              goto LABEL_146;
            }

            if (!*v101)
            {
              break;
            }

            v101 += v102 + 1;
            if (&v101[-v100] >= 256)
            {
              goto LABEL_134;
            }
          }

          v103 = (v101 - v100 + 1);
LABEL_146:
          v107 = DNSTypeName(*(v97 + 1174));
          *buf = 67110659;
          *&buf[4] = v119;
          *&buf[8] = 1024;
          *&buf[10] = v120;
          *&buf[14] = 1024;
          *v123 = v98;
          *&v123[4] = 2160;
          *&v123[6] = 1752392040;
          v124 = 1040;
          *v125 = v103;
          *&v125[4] = 2101;
          *&v125[6] = v97 + 1208;
          *&v125[14] = 2082;
          *&v125[16] = v107;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u->subQ%u] Stop getting the zone data - zone qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, zone qtype: %{public}s.", buf, 0x38u);
        }
      }

      CancelGetZoneData(v12, *(v13 + 104));
      *(v13 + 104) = 0;
      goto LABEL_148;
    }

    if (v68)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        v74 = v13 + 376;
        v75 = (v13 + 376);
        while (1)
        {
          if (!v75 || (v76 = *v75, v76 > 0x3F))
          {
LABEL_88:
            v77 = 257;
            goto LABEL_151;
          }

          if (!*v75)
          {
            break;
          }

          v75 += v76 + 1;
          if (&v75[-v74] >= 256)
          {
            goto LABEL_88;
          }
        }

        v77 = (v75 - v74 + 1);
LABEL_151:
        v108 = DNSTypeName(*(v13 + 342));
        v109 = LLQStateToString(*(v13 + 350));
        *buf = 67110659;
        *&buf[4] = v119;
        *&buf[8] = 1024;
        *&buf[10] = v120;
        *&buf[14] = 2160;
        *v123 = 1752392040;
        *&v123[8] = 1040;
        *&v123[10] = v77;
        v124 = 2101;
        *v125 = v13 + 376;
        *&v125[8] = 2082;
        *&v125[10] = v108;
        *&v125[18] = 2082;
        *&v125[20] = v109;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, "[R%u->Q%u] Not starting long-lived query polling since the question has been stopped - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, LLQ_State: %{public}s.", buf, 0x3Cu);
      }
    }

    else
    {
      v66 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        v81 = v13 + 376;
        v82 = (v13 + 376);
        while (1)
        {
          if (!v82 || (v83 = *v82, v83 > 0x3F))
          {
LABEL_102:
            v77 = 257;
            goto LABEL_151;
          }

          if (!*v82)
          {
            break;
          }

          v82 += v83 + 1;
          if (&v82[-v81] >= 256)
          {
            goto LABEL_102;
          }
        }

        v77 = (v82 - v81 + 1);
        goto LABEL_151;
      }
    }

LABEL_152:
    mDNS_Unlock_(v12, "tcpCallback", 1603);
    DisposeTCPConn(a2);
    return;
  }

LABEL_24:
  if (!a3)
  {
    v39 = *(a2 + 9032);
    if (v39 >= 2)
    {
      v56 = *(a2 + 9016);
      v57 = *(a2 + 9032);
    }

    else
    {
      v40 = mDNSPlatformReadTCP(a1, (a2 + 0x2000 + v39 + 832), 2 - v39, &v121);
      if (v40 < 0)
      {
        v8 = -65788;
        v84 = mDNSLogCategory_Default;
        LODWORD(v110) = v40;
        v85 = "ERROR: tcpCallback - attempt to read message length failed (%d)";
        goto LABEL_106;
      }

      if (v121)
      {
LABEL_45:
        if (*(a2 + 9040))
        {
          if ((v16 & 1) == 0)
          {
            *v14 = 0;
          }

          DisposeTCPConn(a2);
          return;
        }

        v8 = -65788;
        v86 = mDNSLogCategory_Default;
        v110 = *(a2 + 9032);
        v85 = "ERROR: socket closed prematurely tcpInfo->nread = %d";
LABEL_108:
        LogMsgWithLevel(v86, OS_LOG_TYPE_DEFAULT, v85, v41, v42, v43, v44, v45, v110);
        goto LABEL_8;
      }

      v46 = *(a2 + 9032) + v40;
      *(a2 + 9032) = v46;
      if (v46 < 2)
      {
        return;
      }

      v47 = __rev16(*(a2 + 9024));
      *(a2 + 9024) = v47;
      if (v47 <= 0xB)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: tcpCallback - length too short (%d bytes)", v41, v42, v43, v44, v45, v47);
LABEL_76:
        v8 = -65537;
        goto LABEL_8;
      }

      v56 = malloc_type_malloc(v47, 0x568240F1uLL);
      if (!v56)
      {
        __break(1u);
        return;
      }

      *(a2 + 9016) = v56;
      v57 = *(a2 + 9032);
    }

    v58 = mDNSPlatformReadTCP(a1, &v56[v57 - 2], *(a2 + 9024) - (v57 - 2), &v121);
    if ((v58 & 0x8000000000000000) == 0)
    {
      if (v121)
      {
        goto LABEL_45;
      }

      v87 = *(a2 + 9032) + v58;
      *(a2 + 9032) = v87;
      v88 = v87 - 2;
      if (v87 - 2 != *(a2 + 9024))
      {
        return;
      }

      v89 = *(a2 + 9016);
      *buf = *(a2 + 8992);
      *v123 = *(a2 + 9008);
      v90 = *(a2 + 9012);
      ++*(a2 + 9040);
      *(a2 + 9016) = 0;
      *(a2 + 9032) = 0;
      *(a2 + 9024) = 0;
      v91 = *(a1 + 4);
      if (v13)
      {
        v92 = *(v13 + 112);
        if (v92)
        {
          v93 = *(v92 + 9014);
          *(v13 + 338) = v93;
        }

        else
        {
          v93 = 0;
        }

        if ((v16 & 1) == 0 && (!*(v13 + 632) || *(v12 + 141)))
        {
          goto LABEL_160;
        }
      }

      else
      {
        v93 = 0;
        if ((v16 & 1) == 0)
        {
LABEL_160:
          *v14 = 0;
          DisposeTCPConn(a2);
        }
      }

      mDNSCoreReceive(v12, v89, &v89[v88], buf, v90, v91 & 1, v93, 0, 0, v111, v112, v116, v118);
      if (v89)
      {
        free(v89);
      }

      return;
    }

    if (v39 < 2)
    {
      return;
    }

    v8 = -65788;
    v84 = mDNSLogCategory_Default;
    LODWORD(v110) = v58;
    v85 = "ERROR: tcpCallback - read returned %d";
LABEL_106:
    v86 = v84;
    goto LABEL_108;
  }

  v35 = *(a2 + 8968);
  v36 = *(a2 + 8984);
  if (v36)
  {
    v37 = *(v36 + 40);
    if (v37 == (v36 + 652))
    {
LABEL_29:
      if (v37 != (v36 + 652))
      {
        return;
      }

      mDNS_Lock_(v12, "GetAuthInfoForName", 434);
      AuthInfoForName_internal = GetAuthInfoForName_internal(v12, v37);
      mDNS_Unlock_(v12, "GetAuthInfoForName", 436);
      goto LABEL_38;
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "tcpCallback: ERROR: tcpInfo->rr->resrec.name %p != &tcpInfo->rr->namestorage %p", a4, a5, a6, a7, a8, v37);
    v36 = *(a2 + 8984);
    if (v36)
    {
      v37 = *(v36 + 40);
      goto LABEL_29;
    }
  }

  AuthInfoForName_internal = 0;
LABEL_38:
  v48 = a2 + 16;
  if (v13)
  {
    *(a2 + 16) = *(v13 + 340);
    *(a2 + 18) = 1;
    *(a2 + 20) = 0;
    v49 = putQuestion(a2 + 16, a2 + 28, a2 + 8968, (v13 + 376), *(v13 + 342), *(v13 + 344), a7, a8);
    AuthInfoForName_internal = *(v13 + 32);
  }

  else
  {
    v49 = (v48 + v35);
  }

  if (mDNSSendDNSMessage(v12, (a2 + 16), v49, 0, a1, 0, (a2 + 8992), *(a2 + 9012), AuthInfoForName_internal, 0))
  {
    goto LABEL_76;
  }

  if (*(a2 + 9012) == 13568)
  {
    if (v13)
    {
      v73 = *(v13 + 80);
      if (v73)
      {
        v73 = (*(v73 + 276) >> 3) & 1;
      }
    }

    else
    {
      LODWORD(v73) = 0;
    }

    v94 = &s_dns_analytics + 104 * v73;
    if (v94)
    {
      *(v94 + 2) += (v49 - v48);
    }
  }

  if (v13)
  {
    mDNS_Lock_(v12, "tcpCallback", 1406);
    *(v13 + 208) = *(v12 + 64);
    if (*(v13 + 212) < 256000)
    {
      *(v13 + 212) = 256000;
    }

    SetNextQueryTime(v12, v13);

    mDNS_Unlock_(v12, "tcpCallback", 1411);
  }
}

int MD5_Update(_MD5_CTX *c, const void *data, size_t len)
{
  if (!len)
  {
    return c;
  }

  v3 = len;
  v4 = data;
  v5 = c;
  v6 = data + len;
  Nl = c->Nl;
  v8 = Nl + 8 * len;
  if (Nl <= v8)
  {
    Nh = c->Nh;
  }

  else
  {
    Nh = c->Nh + 1;
  }

  c->Nl = v8;
  c->Nh = Nh + (len >> 29);
  num = c->num;
  v11 = len;
  v12 = data;
  if (!num)
  {
    goto LABEL_26;
  }

  v13 = c->data;
  v14 = num >> 2;
  v15 = num & 3;
  v16 = num + len;
  if (num + len < 0x40)
  {
    c->num = v16;
    if (v15 + len <= 3)
    {
      v20 = v13[v14];
      if (v15 <= 1)
      {
        if (!v15)
        {
          v21 = *v4++;
          v20 = v21;
          v3 = len - 1;
          if (len == 1)
          {
            goto LABEL_67;
          }
        }

        v22 = *v4++;
        v20 |= v22 << 8;
        if (v3 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (v15 == 2)
      {
LABEL_51:
        v20 |= *v4 << 16;
      }

LABEL_67:
      v13[v14] = v20;
      return c;
    }

    v187 = v16 >> 2;
    v188 = v16 & 3;
    if ((num & 3) != 0)
    {
      v189 = v13[v14];
      v190 = v14;
      v191 = v4;
      if (v15 != 1)
      {
        if (v15 != 2)
        {
LABEL_55:
          v194 = (v191 + 1);
          v13[v190] = v189 | (*v191 << 24);
          if (++v14 < v187 && v6 - v194 >= 4)
          {
            v195 = num >> 2;
            v196 = &v4[len] - v191 - 5;
            do
            {
              v197 = *v194++;
              c->data[v195 + 1] = v197;
              v14 = v195 + 2;
              if (v195 + 2 >= v187)
              {
                break;
              }

              ++v195;
              v27 = v196 <= 3;
              v196 -= 4;
            }

            while (!v27);
          }

          if ((v16 & 3) == 0)
          {
            return c;
          }

          v198 = 0;
          v199 = v194 + (v16 & 3);
          if (v188 != 1)
          {
            if (v188 != 2)
            {
              v200 = *--v199;
              v198 = v200 << 16;
            }

            v201 = *--v199;
            v198 |= v201 << 8;
          }

          v20 = v198 | *(v199 - 1);
          goto LABEL_67;
        }

LABEL_54:
        v193 = *v191++;
        v189 |= v193 << 16;
        goto LABEL_55;
      }
    }

    else
    {
      v191 = v4 + 1;
      v189 = *v4;
      v190 = v14;
    }

    v192 = *v191++;
    v189 |= v192 << 8;
    goto LABEL_54;
  }

  v17 = v13[v14];
  v18 = v4;
  if ((c->num & 3) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((num & 3) == 0)
    {
      v18 = v4 + 1;
      v17 = *v4;
    }

    v19 = *v18++;
    v17 |= v19 << 8;
  }

  v23 = *v18++;
  v17 |= v23 << 16;
LABEL_19:
  v12 = (v18 + 1);
  v13[v14] = v17 | (*v18 << 24);
  if (num <= 0x3B && v6 - v12 >= 4)
  {
    v24 = num >> 2;
    v25 = &v4[len] - v18 - 5;
    do
    {
      v26 = *v12++;
      c->data[v24 + 1] = v26;
      if (v24 > 0xD)
      {
        break;
      }

      ++v24;
      v27 = v25 <= 3;
      v25 -= 4;
    }

    while (!v27);
  }

  LODWORD(c) = md5_block_host_order(c, v13);
  v11 = v3 - (64 - v5->num);
  v5->num = 0;
LABEL_26:
  if ((v11 >> 6) >= 1)
  {
    v204 = v11;
    v205 = v6;
    v206 = v3;
    v207 = v4;
    v29 = v5->C;
    D = v5->D;
    A = v5->A;
    B = v5->B;
    v203 = v11 >> 6;
    v32 = v12;
    v33 = v11 >> 6;
    v208 = v5;
    do
    {
      v34 = v32[1];
      v35 = A + (v29 & B | D & ~B) - 680876936 + *v32;
      v36 = B + (v35 << 7) + (v35 >> 25);
      v37 = D + v34 - 389564586 + (B & v36 | v29 & ~v36);
      v38 = v36 + (v37 << 12) + (v37 >> 20);
      v40 = v32[2];
      v39 = v32[3];
      v41 = v29 + v40 + 606105819 + (v36 & v38 | B & ~v38);
      v42 = v38 + (v41 << 17) + (v41 >> 15);
      v43 = B + v39 - 1044525330 + (v38 & v42 | v36 & ~v42);
      v44 = v42 + (v43 << 22) + (v43 >> 10);
      v46 = v32[4];
      v45 = v32[5];
      v47 = v36 + v46 - 176418897 + (v42 & v44 | v38 & ~v44);
      v48 = v44 + (v47 << 7) + (v47 >> 25);
      v49 = v38 + v45 + 1200080426 + (v44 & v48 | v42 & ~v48);
      v50 = v48 + (v49 << 12) + (v49 >> 20);
      v52 = v32[6];
      v51 = v32[7];
      v53 = v42 + v52 - 1473231341 + (v48 & v50 | v44 & ~v50);
      v54 = v50 + (v53 << 17) + (v53 >> 15);
      v55 = v51 + v44 - 45705983 + (v50 & v54 | v48 & ~v54);
      v56 = v54 + (v55 << 22) + (v55 >> 10);
      v57 = v32[8];
      v58 = v32[9];
      v59 = v57 + v48 + 1770035416 + (v54 & v56 | v50 & ~v56);
      v60 = v56 + (v59 << 7) + (v59 >> 25);
      v61 = v58 + v50 - 1958414417 + (v56 & v60 | v54 & ~v60);
      v62 = v60 + (v61 << 12) + (v61 >> 20);
      v63 = v32[10];
      v64 = v32[11];
      v65 = v63 + v54 - 42063 + (v60 & v62 | v56 & ~v62);
      v66 = v62 + (v65 << 17) + (v65 >> 15);
      v67 = v64 + v56 - 1990404162 + (v62 & v66 | v60 & ~v66);
      v68 = v66 + (v67 << 22) + (v67 >> 10);
      v70 = v32[12];
      v69 = v32[13];
      v71 = v70 + v60 + 1804603682 + (v66 & v68 | v62 & ~v68);
      v72 = v68 + (v71 << 7) + (v71 >> 25);
      v73 = v69 + v62 - 40341101 + (v68 & v72 | v66 & ~v72);
      v74 = v72 + (v73 << 12) + (v73 >> 20);
      v76 = v32[14];
      v75 = v32[15];
      v77 = v76 + v66 - 1502002290 + (v72 & v74 | v68 & ~v74);
      v78 = v74 + (v77 << 17) + (v77 >> 15);
      v79 = v75 + v68 + 1236535329 + (v74 & v78 | v72 & ~v78);
      v80 = v78 + (v79 << 22) + (v79 >> 10);
      v81 = v34 + v72 - 165796510 + (v80 & v74 | v78 & ~v74);
      v82 = v80 + 32 * v81 + (v81 >> 27);
      v83 = v52 + v74 - 1069501632 + (v82 & v78 | v80 & ~v78);
      v84 = v82 + (v83 << 9) + (v83 >> 23);
      v85 = v64 + v78 + 643717713 + (v84 & v80 | v82 & ~v80);
      v86 = v84 + (v85 << 14) + (v85 >> 18);
      v87 = *v32 + v80 - 373897302 + (v86 & v82 | v84 & ~v82);
      v88 = v86 + (v87 << 20) + (v87 >> 12);
      v89 = v45 + v82 - 701558691 + (v88 & v84 | v86 & ~v84);
      v90 = v88 + 32 * v89 + (v89 >> 27);
      v91 = v63 + v84 + 38016083 + (v90 & v86 | v88 & ~v86);
      v92 = v90 + (v91 << 9) + (v91 >> 23);
      v93 = v75 + v86 - 660478335 + (v92 & v88 | v90 & ~v88);
      v94 = v92 + (v93 << 14) + (v93 >> 18);
      v95 = v46 + v88 - 405537848 + (v94 & v90 | v92 & ~v90);
      v96 = v94 + (v95 << 20) + (v95 >> 12);
      v97 = v58 + v90 + 568446438 + (v96 & v92 | v94 & ~v92);
      v98 = v96 + 32 * v97 + (v97 >> 27);
      v99 = v76 + v92 - 1019803690 + (v98 & v94 | v96 & ~v94);
      v100 = v98 + (v99 << 9) + (v99 >> 23);
      v101 = v39 + v94 - 187363961 + (v100 & v96 | v98 & ~v96);
      v102 = v100 + (v101 << 14) + (v101 >> 18);
      v103 = v57 + v96 + 1163531501 + (v102 & v98 | v100 & ~v98);
      v104 = v102 + (v103 << 20) + (v103 >> 12);
      v105 = v69 + v98 - 1444681467 + (v104 & v100 | v102 & ~v100);
      v106 = v104 + 32 * v105 + (v105 >> 27);
      v107 = v40 + v100 - 51403784 + (v106 & v102 | v104 & ~v102);
      v108 = v106 + (v107 << 9) + (v107 >> 23);
      v109 = v51 + v102 + 1735328473 + (v108 & v104 | v106 & ~v104);
      v110 = v108 + (v109 << 14) + (v109 >> 18);
      v111 = v70 + v104 - 1926607734 + ((v110 ^ v108) & v106 ^ v108);
      v112 = v110 + (v111 << 20) + (v111 >> 12);
      v113 = v45 + v106 - 378558 + (v110 ^ v108 ^ v112);
      v114 = v112 + 16 * v113 + (v113 >> 28);
      v115 = v57 + v108 - 2022574463 + (v112 ^ v110 ^ v114);
      v116 = v114 + (v115 << 11) + (v115 >> 21);
      v117 = v64 + v110 + 1839030562 + (v114 ^ v112 ^ v116);
      v118 = v116 + (v117 << 16) + HIWORD(v117);
      v119 = v76 + v112 - 35309556 + (v116 ^ v114 ^ v118);
      v120 = v118 + (v119 << 23) + (v119 >> 9);
      v121 = v34 + v114 - 1530992060 + (v118 ^ v116 ^ v120);
      v122 = v120 + 16 * v121 + (v121 >> 28);
      v123 = v46 + v116 + 1272893353 + (v120 ^ v118 ^ v122);
      v124 = v122 + (v123 << 11) + (v123 >> 21);
      v125 = v51 + v118 - 155497632 + (v122 ^ v120 ^ v124);
      v126 = v124 + (v125 << 16) + HIWORD(v125);
      v127 = v63 + v120 - 1094730640 + (v124 ^ v122 ^ v126);
      v128 = v126 + (v127 << 23) + (v127 >> 9);
      v129 = v69 + v122 + 681279174 + (v126 ^ v124 ^ v128);
      v130 = v128 + 16 * v129 + (v129 >> 28);
      v131 = *v32 + v124 - 358537222 + (v128 ^ v126 ^ v130);
      v132 = v130 + (v131 << 11) + (v131 >> 21);
      v133 = v39 + v126 - 722521979 + (v130 ^ v128 ^ v132);
      v134 = v132 + (v133 << 16) + HIWORD(v133);
      v135 = v52 + v128 + 76029189 + (v132 ^ v130 ^ v134);
      v136 = v134 + (v135 << 23) + (v135 >> 9);
      v137 = v58 + v130 - 640364487 + (v134 ^ v132 ^ v136);
      v138 = v136 + 16 * v137 + (v137 >> 28);
      v139 = v70 + v132 - 421815835 + (v136 ^ v134 ^ v138);
      v140 = v138 + (v139 << 11) + (v139 >> 21);
      v141 = v75 + v134 + 530742520 + (v138 ^ v136 ^ v140);
      v142 = v140 + (v141 << 16) + HIWORD(v141);
      v143 = v40 + v136 - 995338651 + (v140 ^ v138 ^ v142);
      v144 = v142 + (v143 << 23) + (v143 >> 9);
      v145 = *v32 + v138 - 198630844 + ((v144 | ~v140) ^ v142);
      v146 = v144 + (v145 << 6) + (v145 >> 26);
      v147 = v51 + v140 + 1126891415 + ((v146 | ~v142) ^ v144);
      v148 = v146 + (v147 << 10) + (v147 >> 22);
      v149 = v76 + v142 - 1416354905 + ((v148 | ~v144) ^ v146);
      v150 = v148 + (v149 << 15) + (v149 >> 17);
      v151 = v45 + v144 - 57434055 + ((v150 | ~v146) ^ v148);
      v152 = v150 + (v151 << 21) + (v151 >> 11);
      v153 = v70 + v146 + 1700485571 + ((v152 | ~v148) ^ v150);
      v154 = v152 + (v153 << 6) + (v153 >> 26);
      v155 = v39 + v148 - 1894986606 + ((v154 | ~v150) ^ v152);
      v156 = v154 + (v155 << 10) + (v155 >> 22);
      v157 = v63 + v150;
      v5 = v208;
      v158 = v157 - 1051523 + ((v156 | ~v152) ^ v154);
      v159 = v156 + (v158 << 15) + (v158 >> 17);
      v160 = v34 + v152 - 2054922799 + ((v159 | ~v154) ^ v156);
      v161 = v159 + (v160 << 21) + (v160 >> 11);
      v162 = v57 + v154 + 1873313359 + ((v161 | ~v156) ^ v159);
      v163 = v161 + (v162 << 6) + (v162 >> 26);
      v164 = v75 + v156 - 30611744 + ((v163 | ~v159) ^ v161);
      v165 = v163 + (v164 << 10) + (v164 >> 22);
      v166 = v52 + v159 - 1560198380 + ((v165 | ~v161) ^ v163);
      v167 = v165 + (v166 << 15) + (v166 >> 17);
      v168 = v69 + v161 + 1309151649 + ((v167 | ~v163) ^ v165);
      v169 = v167 + (v168 << 21) + (v168 >> 11);
      LODWORD(c) = -145523070;
      v170 = v46 + v163 - 145523070 + ((v169 | ~v165) ^ v167);
      v171 = v169 + (v170 << 6) + (v170 >> 26);
      v172 = v64 + v165 - 1120210379 + ((v171 | ~v167) ^ v169);
      v173 = v171 + (v172 << 10) + (v172 >> 22);
      v174 = v40 + v167 + 718787259 + ((v173 | ~v169) ^ v171);
      v175 = v173 + (v174 << 15) + (v174 >> 17);
      v176 = v58 + v169 - 343485551 + ((v175 | ~v171) ^ v173);
      A += v171;
      B += v175 + (v176 << 21) + (v176 >> 11);
      v29 += v175;
      D += v173;
      v208->A = A;
      v208->B = B;
      v208->C = v29;
      v208->D = D;
      v32 += 16;
      LODWORD(v33) = v33 - 1;
    }

    while (v33);
    v12 = (v12 + (v203 << 6));
    v6 = v205;
    v11 = v204 - (v203 << 6);
    v3 = v206;
    v4 = v207;
  }

  if (v11)
  {
    v177 = v5->data;
    v5->num = v11;
    v178 = v11 & 3;
    if ((v11 >> 2) && v6 - v12 >= 4)
    {
      v179 = (v11 >> 2) - 1;
      v180 = &v4[v3] - v12 - 4;
      do
      {
        v181 = *v12++;
        *v177++ = v181;
        if (v179-- == 0)
        {
          break;
        }

        v27 = v180 <= 3;
        v180 -= 4;
      }

      while (!v27);
    }

    v183 = 0;
    v184 = v12 + (v11 & 3);
    if ((v11 & 3) > 1)
    {
      if (v178 != 2)
      {
        v185 = *--v184;
        v183 = v185 << 16;
      }

      v186 = *--v184;
      v183 |= v186 << 8;
    }

    else if ((v11 & 3) == 0)
    {
      goto LABEL_45;
    }

    v178 = v183 | *(v184 - 1);
LABEL_45:
    *v177 = v178;
  }

  return c;
}

_DWORD *md5_block_host_order(_DWORD *result, int *a2)
{
  v3 = result[2];
  v2 = result[3];
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = *result + *a2 - 680876936 + (v3 & v4 | v2 & ~v4);
  v8 = v4 + (v7 << 7) + (v7 >> 25);
  v9 = v2 + v6 - 389564586 + (v4 & v8 | v3 & ~v8);
  v10 = v8 + (v9 << 12) + (v9 >> 20);
  v11 = a2[2];
  v12 = a2[3];
  v13 = v3 + v11 + 606105819 + (v8 & v10 | v4 & ~v10);
  v14 = v10 + (v13 << 17) + (v13 >> 15);
  v15 = v4 + v12 - 1044525330 + (v10 & v14 | v8 & ~v14);
  v16 = v14 + (v15 << 22) + (v15 >> 10);
  v18 = a2[4];
  v17 = a2[5];
  v19 = v18 + v8 - 176418897 + (v14 & v16 | v10 & ~v16);
  v20 = v16 + (v19 << 7) + (v19 >> 25);
  v21 = v17 + v10 + 1200080426 + (v16 & v20 | v14 & ~v20);
  v22 = v20 + (v21 << 12) + (v21 >> 20);
  v24 = a2[6];
  v23 = a2[7];
  v25 = v24 + v14 - 1473231341 + (v20 & v22 | v16 & ~v22);
  v26 = v22 + (v25 << 17) + (v25 >> 15);
  v27 = v23 + v16 - 45705983 + (v22 & v26 | v20 & ~v26);
  v28 = v26 + (v27 << 22) + (v27 >> 10);
  v29 = a2[8];
  v30 = a2[9];
  v31 = v29 + v20 + 1770035416 + (v26 & v28 | v22 & ~v28);
  v32 = v28 + (v31 << 7) + (v31 >> 25);
  v33 = v30 + v22 - 1958414417 + (v28 & v32 | v26 & ~v32);
  v34 = v32 + (v33 << 12) + (v33 >> 20);
  v36 = a2[10];
  v35 = a2[11];
  v37 = v36 + v26 - 42063 + (v32 & v34 | v28 & ~v34);
  v38 = v34 + (v37 << 17) + (v37 >> 15);
  v39 = v35 + v28 - 1990404162 + (v34 & v38 | v32 & ~v38);
  v40 = v38 + (v39 << 22) + (v39 >> 10);
  v42 = a2[12];
  v41 = a2[13];
  v43 = v42 + v32 + 1804603682 + (v38 & v40 | v34 & ~v40);
  v44 = v40 + (v43 << 7) + (v43 >> 25);
  v45 = v41 + v34 - 40341101 + (v40 & v44 | v38 & ~v44);
  v46 = v44 + (v45 << 12) + (v45 >> 20);
  v48 = a2[14];
  v47 = a2[15];
  v49 = v48 + v38 - 1502002290 + (v44 & v46 | v40 & ~v46);
  v50 = v46 + (v49 << 17) + (v49 >> 15);
  v51 = v47 + v40 + 1236535329 + (v46 & v50 | v44 & ~v50);
  v52 = v50 + (v51 << 22) + (v51 >> 10);
  v53 = v6 + v44 - 165796510 + (v52 & v46 | v50 & ~v46);
  v54 = v52 + 32 * v53 + (v53 >> 27);
  v55 = v24 + v46 - 1069501632 + (v54 & v50 | v52 & ~v50);
  v56 = v54 + (v55 << 9) + (v55 >> 23);
  v57 = v35 + v50 + 643717713 + (v56 & v52 | v54 & ~v52);
  v58 = v56 + (v57 << 14) + (v57 >> 18);
  v59 = v5 + v52 - 373897302 + (v58 & v54 | v56 & ~v54);
  v60 = v58 + (v59 << 20) + (v59 >> 12);
  v61 = v17 + v54 - 701558691 + (v60 & v56 | v58 & ~v56);
  v62 = v60 + 32 * v61 + (v61 >> 27);
  v63 = v36 + v56 + 38016083 + (v62 & v58 | v60 & ~v58);
  v64 = v62 + (v63 << 9) + (v63 >> 23);
  v65 = v47 + v58 - 660478335 + (v64 & v60 | v62 & ~v60);
  v66 = v64 + (v65 << 14) + (v65 >> 18);
  v67 = v18 + v60 - 405537848 + (v66 & v62 | v64 & ~v62);
  v68 = v66 + (v67 << 20) + (v67 >> 12);
  v69 = v30 + v62 + 568446438 + (v68 & v64 | v66 & ~v64);
  v70 = v68 + 32 * v69 + (v69 >> 27);
  v71 = v48 + v64 - 1019803690 + (v70 & v66 | v68 & ~v66);
  v72 = v70 + (v71 << 9) + (v71 >> 23);
  v73 = v12 + v66 - 187363961 + (v72 & v68 | v70 & ~v68);
  v74 = v72 + (v73 << 14) + (v73 >> 18);
  v75 = v29 + v68 + 1163531501 + (v74 & v70 | v72 & ~v70);
  v76 = v74 + (v75 << 20) + (v75 >> 12);
  v77 = v41 + v70 - 1444681467 + (v76 & v72 | v74 & ~v72);
  v78 = v76 + 32 * v77 + (v77 >> 27);
  v79 = v11 + v72 - 51403784 + (v78 & v74 | v76 & ~v74);
  v80 = v78 + (v79 << 9) + (v79 >> 23);
  v81 = v23 + v74 + 1735328473 + (v80 & v76 | v78 & ~v76);
  v82 = v80 + (v81 << 14) + (v81 >> 18);
  v83 = v42 + v76 - 1926607734 + ((v82 ^ v80) & v78 ^ v80);
  v84 = v82 + (v83 << 20) + (v83 >> 12);
  v85 = v17 + v78 - 378558 + (v82 ^ v80 ^ v84);
  v86 = v84 + 16 * v85 + (v85 >> 28);
  v87 = v29 + v80 - 2022574463 + (v84 ^ v82 ^ v86);
  v88 = v86 + (v87 << 11) + (v87 >> 21);
  v89 = v35 + v82 + 1839030562 + (v86 ^ v84 ^ v88);
  v90 = v88 + (v89 << 16) + HIWORD(v89);
  v91 = v48 + v84 - 35309556 + (v88 ^ v86 ^ v90);
  v92 = v90 + (v91 << 23) + (v91 >> 9);
  v93 = v6 + v86 - 1530992060 + (v90 ^ v88 ^ v92);
  v94 = v92 + 16 * v93 + (v93 >> 28);
  v95 = v18 + v88 + 1272893353 + (v92 ^ v90 ^ v94);
  v96 = v94 + (v95 << 11) + (v95 >> 21);
  v97 = v23 + v90 - 155497632 + (v94 ^ v92 ^ v96);
  v98 = v96 + (v97 << 16) + HIWORD(v97);
  v99 = v36 + v92 - 1094730640 + (v96 ^ v94 ^ v98);
  v100 = v98 + (v99 << 23) + (v99 >> 9);
  v101 = v41 + v94 + 681279174 + (v98 ^ v96 ^ v100);
  v102 = v100 + 16 * v101 + (v101 >> 28);
  v103 = v5 + v96 - 358537222 + (v100 ^ v98 ^ v102);
  v104 = v102 + (v103 << 11) + (v103 >> 21);
  v105 = v12 + v98 - 722521979 + (v102 ^ v100 ^ v104);
  v106 = v104 + (v105 << 16) + HIWORD(v105);
  v107 = v24 + v100 + 76029189 + (v104 ^ v102 ^ v106);
  v108 = v106 + (v107 << 23) + (v107 >> 9);
  v109 = v30 + v102 - 640364487 + (v106 ^ v104 ^ v108);
  v110 = v108 + 16 * v109 + (v109 >> 28);
  v111 = v42 + v104 - 421815835 + (v108 ^ v106 ^ v110);
  v112 = v110 + (v111 << 11) + (v111 >> 21);
  v113 = v47 + v106 + 530742520 + (v110 ^ v108 ^ v112);
  v114 = v112 + (v113 << 16) + HIWORD(v113);
  v115 = v11 + v108 - 995338651 + (v112 ^ v110 ^ v114);
  v116 = v114 + (v115 << 23) + (v115 >> 9);
  v117 = v5 + v110 - 198630844 + ((v116 | ~v112) ^ v114);
  v118 = v116 + (v117 << 6) + (v117 >> 26);
  v119 = v23 + v112 + 1126891415 + ((v118 | ~v114) ^ v116);
  v120 = v118 + (v119 << 10) + (v119 >> 22);
  v121 = v48 + v114 - 1416354905 + ((v120 | ~v116) ^ v118);
  v122 = v120 + (v121 << 15) + (v121 >> 17);
  v123 = v17 + v116 - 57434055 + ((v122 | ~v118) ^ v120);
  v124 = v122 + (v123 << 21) + (v123 >> 11);
  v125 = v42 + v118 + 1700485571 + ((v124 | ~v120) ^ v122);
  v126 = v124 + (v125 << 6) + (v125 >> 26);
  v127 = v12 + v120 - 1894986606 + ((v126 | ~v122) ^ v124);
  v128 = v126 + (v127 << 10) + (v127 >> 22);
  v129 = v36 + v122 - 1051523 + ((v128 | ~v124) ^ v126);
  v130 = v128 + (v129 << 15) + (v129 >> 17);
  v131 = v6 + v124 - 2054922799 + ((v130 | ~v126) ^ v128);
  v132 = v130 + (v131 << 21) + (v131 >> 11);
  v133 = v29 + v126 + 1873313359 + ((v132 | ~v128) ^ v130);
  v134 = v132 + (v133 << 6) + (v133 >> 26);
  v135 = v47 + v128 - 30611744 + ((v134 | ~v130) ^ v132);
  v136 = v134 + (v135 << 10) + (v135 >> 22);
  v137 = v24 + v130 - 1560198380 + ((v136 | ~v132) ^ v134);
  v138 = v136 + (v137 << 15) + (v137 >> 17);
  v139 = v41 + v132 + 1309151649 + ((v138 | ~v134) ^ v136);
  v140 = v138 + (v139 << 21) + (v139 >> 11);
  v141 = v18 + v134 - 145523070 + ((v140 | ~v136) ^ v138);
  v142 = v140 + (v141 << 6) + (v141 >> 26);
  v143 = v35 + v136 - 1120210379 + ((v142 | ~v138) ^ v140);
  v144 = v142 + (v143 << 10) + (v143 >> 22);
  v145 = v11 + v138 + 718787259 + ((v144 | ~v140) ^ v142);
  v146 = v144 + (v145 << 15) + (v145 >> 17);
  v147 = v30 + v140 - 343485551 + ((v146 | ~v142) ^ v144);
  *result += v142;
  result[1] = v4 + v146 + (v147 << 21) + (v147 >> 11);
  result[2] = v3 + v146;
  result[3] = v2 + v144;
  return result;
}

ssize_t mDNSPlatformWriteTCP(uint64_t a1, const void *a2, size_t a3)
{
  if (!*(a1 + 65))
  {
    return -65569;
  }

  if (*(a1 + 4))
  {
    return -1;
  }

  result = write(*(a1 + 16), a2, a3);
  if (result < 0)
  {
    if (*__error() == 35)
    {
      return 0;
    }

    else
    {
      v4 = mDNSLogCategory_Default;
      v5 = __error();
      v6 = strerror(*v5);
      LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixWriteTCP - send %s", v7, v8, v9, v10, v11, v6);
      return -1;
    }
  }

  return result;
}

ssize_t mDNSPlatformReadTCP(uint64_t a1, void *a2, size_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (!*(a1 + 65))
  {
    return -65569;
  }

  if (*(a1 + 4))
  {
    *a4 = 1;
    return -1;
  }

  v5 = *(a1 + 16);
  result = recv(v5, a2, a3, 0);
  if (result >= 1)
  {
    mDNSPosixReadTCP_CLOSEDcount = 0;
    mDNSPosixReadTCP_EAGAINcount = 0;
    return result;
  }

  if (!result)
  {
    *a4 = 1;
    ++mDNSPosixReadTCP_CLOSEDcount;
    HIDWORD(v12) = -858993459 * mDNSPosixReadTCP_CLOSEDcount + 429496728;
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 2) <= 0xCCCCCCC)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv %d got CLOSED %d times", v7, v8, v9, v10, v11, v5);
      if (mDNSPosixReadTCP_CLOSEDcount >= 1000)
      {
        __assert_rtn("mDNSPosixReadTCP", "PlatformCommon.c", 694, "CLOSEDcount < 1000");
      }
    }

    return 0;
  }

  if (*__error() == 54)
  {
    result = 0;
    *a4 = 1;
    return result;
  }

  if (*__error() != 35)
  {
    v19 = mDNSLogCategory_Default;
    v20 = *__error();
    v21 = __error();
    strerror(*v21);
    LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv: %d (%s)", v22, v23, v24, v25, v26, v20);
    return -1;
  }

  ++mDNSPosixReadTCP_EAGAINcount;
  HIDWORD(v18) = 652835029 * mDNSPosixReadTCP_EAGAINcount + 17179864;
  LODWORD(v18) = HIDWORD(v18);
  if ((v18 >> 3) <= 0x418936)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv %d got EAGAIN %d times", v13, v14, v15, v16, v17, v5);
    sleep(1u);
  }

  return 0;
}