_BYTE *AppendDomainName(_BYTE *a1, _BYTE *a2)
{
  v3 = 257;
  v4 = a1;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    if (v5 > 0x3F)
    {
      break;
    }

    if (!*v4)
    {
      v3 = (v4 - a1 + 1);
      break;
    }

    v4 += v5 + 1;
  }

  while (v4 - a1 < 256);
  result = &a1[v3 - 1];
  v7 = *a2;
  if (*a2)
  {
    v8 = (a1 + 255);
    while (&result[v7 + 1] <= v8)
    {
      v9 = 0;
      do
      {
        result[v9] = a2[v9];
        v10 = v9 + 1;
      }

      while (v9++ < *a2);
      result += v10;
      *result = 0;
      a2 += v10;
      v7 = *a2;
      if (!*a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mDNS_StartQuery_internal(uint64_t a1, uint64_t a2)
{
  v2 = 4294901749;
  if (!*(a1 + 240))
  {
    return 4294901750;
  }

  v5 = a1 + 0x4000;
  v6 = (a2 + 376);
  v7 = (a2 + 376);
  while (1)
  {
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = *v7;
    if (v8 > 0x3F)
    {
      goto LABEL_22;
    }

    if (!*v7)
    {
      break;
    }

    v7 += v8 + 1;
    if (v7 - v6 > 255)
    {
      goto LABEL_22;
    }
  }

  if ((v7 - v6 + 1) > 0x100u)
  {
LABEL_22:
    v19 = mDNSLogCategory_Default;
    DNSTypeName(*(a2 + 342));
    LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "ValidateParameters: Attempt to start query with invalid qname %##s (%s)", v20, v21, v22, v23, v24, v6);
    return 4294901747;
  }

  v9 = *(a2 + 136);
  if (v9 != 0 && v9 < 0xFFFFFFFFFFFFFFFBLL || ((1 << (v9 + 5)) & 0x2D) == 0)
  {
    v26 = (a1 + 12656);
    while (1)
    {
      v26 = *v26;
      if (!v26)
      {
        break;
      }

      if (v26[444] == v9)
      {
        goto LABEL_14;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v29 = mDNSLogCategory_Default;
      DNSTypeName(*(a2 + 342));
      LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "ValidateParameters: Note: InterfaceID %d for question %##s (%s) not currently found in active interface list", v30, v31, v32, v33, v34, v9);
    }
  }

LABEL_14:
  v11 = *v6;
  if (*v6)
  {
    v12 = v6;
    do
    {
      v13 = v12;
      v14 = &v12[v11];
      v15 = v14[1];
      v12 = v14 + 1;
      v11 = v15;
    }

    while (v15);
    v16 = *v13;
    if (*v13)
    {
      v17 = v13 + 1;
      while (1)
      {
        v18 = *v17++;
        if (v18 < 0)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_40;
        }
      }

      memset(__src, 0, 256);
      if (PerformNextPunycodeConversion(a2, __src))
      {
        v27 = __src;
        do
        {
          if (!v27)
          {
            break;
          }

          v28 = *v27;
          if (v28 > 0x3F)
          {
            break;
          }

          if (!*v27)
          {
            v35 = v27 - __src + 1;
            if (v35 <= 0x100u)
            {
              memcpy(v6, __src, v35);
              goto LABEL_40;
            }

            break;
          }

          v27 += v28 + 1;
        }

        while (v27 - __src <= 255);
        *v6 = 0;
      }
    }
  }

LABEL_40:
  if (IsSubdomain(v6, "\tlocalhost"))
  {
    v36 = "\tlocalhost";
    do
    {
      if (!v36)
      {
        break;
      }

      v37 = *v36;
      if (v37 > 0x3F)
      {
        break;
      }

      if (!*v36)
      {
        v38 = v36 - "\tlocalhost" + 1;
        if (v38 <= 0x100u)
        {
          memcpy(v6, "\tlocalhost", v38);
          goto LABEL_50;
        }

        break;
      }

      v36 += v37 + 1;
    }

    while (v36 - "\tlocalhost" <= 255);
    *v6 = 0;
  }

LABEL_50:
  if (*(a2 + 638) || *(a2 + 653) || ((v69 = *(a2 + 136) + 5, v69 <= 3) ? (v70 = v69 == 1, v71 = *(a2 + 136) + 4 < 0) : (v70 = 1), v70 && !*(a2 + 634) && !IsLocalDomain(v6)))
  {
    v39 = mDNS_NewMessageID(a1);
  }

  else
  {
    v39 = 0;
  }

  *(a2 + 340) = v39;
  if (DNSQuestionIsEligibleForMDNSAlternativeService(a2) && Querier_IsMDNSAlternativeServiceAvailableForQuestion(a2))
  {
    *(a2 + 340) = mDNS_NewMessageID(a1);
  }

  if (DNSQuestionNeedsSensitiveLogging(a2))
  {
    mDNSEnableSensitiveLoggingForQuestion(bswap32(*(a2 + 340)) >> 16);
  }

  v40 = *(a2 + 136);
  v43 = v40 == -2 || v40 == -3 || v40 == -5;
  if (!&_NEHelperTrackerGetAppInfo || !*(a2 + 340) || *(a2 + 344) != 1 || (v40 + 5) <= 3 && v40 != -4)
  {
    goto LABEL_72;
  }

  v79 = *(a2 + 342);
  if (v79 > 0x1C || ((1 << v79) & 0x10000022) == 0)
  {
    goto LABEL_72;
  }

  v80 = &s_head_0;
  while (1)
  {
    v80 = *v80;
    if (!v80)
    {
      break;
    }

    if (v80[1] == a2)
    {
      v81 = kCFAllocatorDefault;
LABEL_206:
      bzero(__src, 0x3F1uLL);
      ConvertDomainNameToCString_withescape(v6, __src);
      v115 = CFStringCreateWithCString(v81, __src, 0x8000100u);
      if (v115)
      {
        v116 = v115;
        v117 = v80[5];
        v270.length = CFArrayGetCount(v117);
        v270.location = 0;
        if (CFArrayGetFirstIndexOfValue(v117, v270, v116) == -1)
        {
          CFArrayInsertValueAtIndex(v80[5], 0, v116);
        }

        CFRelease(v116);
      }

      goto LABEL_72;
    }
  }

  v112 = malloc_type_calloc(1uLL, 0x38uLL, 0xAEA45FD1uLL);
  if (!v112)
  {
    goto LABEL_552;
  }

  v80 = v112;
  v81 = kCFAllocatorDefault;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v80[5] = Mutable;
  if (Mutable)
  {
    v114 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v80[6] = v114;
    if (v114)
    {
      *v80 = s_head_0;
      v80[1] = a2;
      s_head_0 = v80;
      goto LABEL_206;
    }

    v263 = v80[5];
    if (v263)
    {
      CFRelease(v263);
      v80[5] = 0;
    }
  }

  v264 = v80[6];
  if (v264)
  {
    CFRelease(v264);
  }

  free(v80);
LABEL_72:
  v44 = 192;
  if (v43)
  {
    v44 = 216;
  }

    ;
  }

  if (!i)
  {
    v52 = *(a2 + 632);
    v53 = Querier_QuestionBelongsToSelf(a2);
    v54 = IsLocalDomain(v6);
    if (v52)
    {
      if (!v53 && !v54)
      {
        DNSServiceManager = Querier_GetDNSServiceManager(v54);
        if ((!DNSServiceManager || !_Querier_GetCustomPushService(DNSServiceManager, a2)) && !*(a2 + 184) && dns_push_handle_question_start(a1, a2))
        {
          return 4294901756;
        }
      }
    }

    *(a2 + 8) = 0;
    *(a2 + 212) = 334;
    v56 = DomainNameHashValue(v6);
    *(a2 + 200) = v56;
    if (*(a2 + 340))
    {
      v62 = 0;
    }

    else
    {
      v62 = CheckForSoonToExpireRecordsEx(a1, v6, v56, *(a2 + 342), *(a2 + 344), *(a2 + 136));
    }

    *(a2 + 204) = v62;
    *(a2 + 208) = *(a1 + 64);
    *(a2 + 216) = 0;
    v66 = *(a1 + 132);
    *(a2 + 224) = 0;
    *(a2 + 220) = v66;
    v67 = *(a2 + 324);
    if ((v67 & 0x2000000) != 0)
    {
      v68 = 1;
    }

    else
    {
      if ((v67 & 0x4000000) == 0)
      {
        *(a2 + 351) = 0;
        goto LABEL_120;
      }

      v68 = 20;
    }

    *(a2 + 351) = v68;
LABEL_120:
    *(a2 + 359) = 0;
    *(a2 + 232) = 0;
    *(a2 + 355) = 0;
    *(a2 + 655) = 0;
    v43 = &unk_10016D000;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    if ((v67 & 0x10000000) != 0)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v73 = mDNSLogCategory_Default;
        DNSTypeName(*(a2 + 342));
        v266 = *(a2 + 248);
        v267 = *(a2 + 280);
        v265 = *(a2 + 244);
        LogMsgWithLevel(v73, OS_LOG_TYPE_DEFAULT, "InitCommonState: Query for %##s (%s), PID[%d], EUID[%d], ServiceID[%d] is already set by client", v74, v75, v76, v77, v78, v6);
      }

LABEL_140:
      v84 = *(a2 + 80);
      if (v84)
      {
        os_release(v84);
        *(a2 + 80) = 0;
      }

      *(a2 + 649) = 0;
      v85 = *(a2 + 637);
      if (*(a2 + 637))
      {
        v86 = *(a2 + 240);
      }

      else
      {
        v86 = 0;
      }

      *(a2 + 240) = v86;
      *(a2 + 268) = 0;
      *(a2 + 260) = 0;
      if ((*(a2 + 136) + 5) <= 3 && *(a2 + 136) != -4)
      {
        if (!v85)
        {
LABEL_348:
          if (*(a2 + 152) == GetZoneData_QuestionCallback || *(a2 + 342) == 6)
          {
            AuthInfoForName_internal = 0;
          }

          else
          {
            AuthInfoForName_internal = GetAuthInfoForName_internal(a1, v6);
          }

          *(a2 + 32) = AuthInfoForName_internal;
          if (*(a2 + 340))
          {
            Suppression = DetermineUnicastQuerySuppression(a2, *(a2 + 80));
          }

          else
          {
            Suppression = 0;
          }

          *(a2 + 354) = Suppression != 0;
          if (*(a2 + 645))
          {
            v183 = Suppression == 6;
          }

          else
          {
            v183 = 0;
          }

          v184 = v183;
          *(a2 + 646) = v184;
          *(a2 + 48) = 0;
          *(a2 + 64) = 0;
          *(a2 + 358) = 0;
          *(a2 + 352) = 2;
          *(a2 + 256) = *(a1 + 64);
          if (*(a2 + 639))
          {
            v185 = 3;
          }

          else
          {
            v185 = 0;
          }

          *(a2 + 356) = v185;
          *(a2 + 144) = 0;
          v186 = *(a2 + 204);
          if (v186 && *(v43 + 208))
          {
            v187 = mDNSLogCategory_Default;
            v188 = v186 - *(a1 + 64);
            DNSTypeName(*(a2 + 342));
            LogMsgWithLevel(v187, OS_LOG_TYPE_DEFAULT, "InitCommonState: Delaying answering for %d ticks while cache stabilizes for %##s (%s)", v189, v190, v191, v192, v193, v188);
          }

          *(a2 + 72) = 0;
          v194 = *(a2 + 96);
          if (v194)
          {
            mdns_client_invalidate(v194);
            os_release(*(a2 + 96));
            *(a2 + 96) = 0;
          }

          *(a2 + 300) = 0;
          *(a2 + 284) = 0u;
          *(a2 + 336) = 0;
          *(a2 + 104) = 0u;
          *(a2 + 350) = 1;
          *(a2 + 272) = 0;
          *(a2 + 328) = 0;
          *(a2 + 346) = 0;
          v2 = *(a1 + 192);
          if (!v2 || v2 == a2)
          {
LABEL_413:
            v2 = 0;
            *(a2 + 40) = 0;
            v203 = 1;
            goto LABEL_414;
          }

          v195 = QuestionSendsMDNSQueriesViaUnicast(a2);
          while (1)
          {
            if ((*(v2 + 340) == 0) == (*(a2 + 340) != 0) || *(v2 + 200) != *(a2 + 200) || *(v2 + 136) != *(a2 + 136) || *(v2 + 342) != *(a2 + 342) || *(v2 + 344) != *(a2 + 344))
            {
              goto LABEL_408;
            }

            v196 = !*(a2 + 340) || *(a2 + 632) == 0;
            v197 = !v196;
            v198 = !*(v2 + 340) || *(v2 + 632) == 0;
            v199 = v198;
            if (v199 == v197 || *(v2 + 32) && !*(a2 + 32))
            {
              goto LABEL_408;
            }

            if ((*(v2 + 354) == 0) == (*(a2 + 354) != 0))
            {
              goto LABEL_408;
            }

            if (*(v2 + 351) != *(a2 + 351))
            {
              goto LABEL_408;
            }

            if (((*(a2 + 324) ^ *(v2 + 324)) & 0x100000) != 0)
            {
              goto LABEL_408;
            }

            if (*(v2 + 80) != *(a2 + 80))
            {
              goto LABEL_408;
            }

            if ((*(v2 + 656) == 0) == (*(a2 + 656) != 0))
            {
              goto LABEL_408;
            }

            if (*(v2 + 656))
            {
              v200 = *(v2 + 144);
              if (!v200 || *(v200 + 24) != 1)
              {
                goto LABEL_408;
              }
            }

            if (!SameDomainNameBytes((v2 + 376), v6))
            {
              goto LABEL_408;
            }

            v201 = QuestionSendsMDNSQueriesViaUnicast(v2);
            if (!v195)
            {
              break;
            }

            if (v201 && mDNSSameAddress((a2 + 304), (v2 + 304)))
            {
              goto LABEL_406;
            }

LABEL_408:
            v2 = *(v2 + 8);
            if (v2)
            {
              v202 = v2 == a2;
            }

            else
            {
              v202 = 1;
            }

            if (v202)
            {
              goto LABEL_413;
            }
          }

          if (v201)
          {
            goto LABEL_408;
          }

LABEL_406:
          if ((*(v2 + 184) != 0) != (*(a2 + 184) != 0) || (*(v2 + 644) == 0) == (*(a2 + 644) != 0))
          {
            goto LABEL_408;
          }

          v203 = 0;
          *(a2 + 40) = v2;
          *(a2 + 32) = *(v2 + 32);
LABEL_414:
          v204 = *(a2 + 136) + 5;
          if (v204 > 3)
          {
            v206 = (&xmmword_10016D2D4 + 4);
            v205 = (&xmmword_10016D2D4 + 12);
          }

          else
          {
            v205 = (&off_100153F78)[v204];
            v206 = *(&off_100153F98 + v204);
          }

          v207 = *v205;
          v208 = *v206;
          if (*v206)
          {
            v209 = 0;
            v210 = 0;
            do
            {
              if (v207)
              {
                if (v210 || v208 == v207)
                {
                  v211 = *(v208 + 204);
                  if (v211)
                  {
                    if (v209)
                    {
                      v212 = 1;
                    }

                    else
                    {
                      v212 = v203;
                    }

                    if (v212 != 1)
                    {
                      v210 = 1;
LABEL_435:
                      v209 = v208 == v2;
                      goto LABEL_436;
                    }

                    v213 = *(a2 + 204);
                    if (!v213)
                    {
                      v213 = dword_10016D258;
                    }

                    if (v211 - v213 > 0)
                    {
                      break;
                    }
                  }

                  v210 = 1;
                }

                else
                {
                  v210 = 0;
                }

                if (!v209)
                {
                  goto LABEL_435;
                }

                v209 = 1;
              }

LABEL_436:
              v206 = (v208 + 8);
              v208 = *(v208 + 8);
            }

            while (v208);
          }

          *(a2 + 8) = v208;
          *v206 = a2;
          if (!v207 || v207 == v208)
          {
            *v205 = a2;
          }

          if (!*(a2 + 656))
          {
LABEL_474:
            if (!*(a2 + 252))
            {
              v236 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  v237 = bswap32(*(a2 + 340)) >> 16;
                  v241 = v6;
                  while (1)
                  {
                    if (!v241 || (v242 = *v241, v242 > 0x3F))
                    {
LABEL_490:
                      v240 = 257;
                      goto LABEL_493;
                    }

                    if (!*v241)
                    {
                      break;
                    }

                    v241 += v242 + 1;
                    if (v241 - v6 >= 256)
                    {
                      goto LABEL_490;
                    }
                  }

                  v240 = (v241 - v6 + 1);
                  goto LABEL_493;
                }
              }

              else
              {
                v236 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  v237 = bswap32(*(a2 + 340)) >> 16;
                  v238 = v6;
                  while (1)
                  {
                    if (!v238 || (v239 = *v238, v239 > 0x3F))
                    {
LABEL_483:
                      v240 = 257;
                      goto LABEL_493;
                    }

                    if (!*v238)
                    {
                      break;
                    }

                    v238 += v239 + 1;
                    if (v238 - v6 >= 256)
                    {
                      goto LABEL_483;
                    }
                  }

                  v240 = (v238 - v6 + 1);
LABEL_493:
                  v243 = mDNS_DomainNameFNV1aHash(v6);
                  v244 = *(a2 + 342);
                  LODWORD(__src[0]) = 67110403;
                  DWORD1(__src[0]) = v237;
                  WORD4(__src[0]) = 2160;
                  *(__src + 10) = 1752392040;
                  WORD1(__src[1]) = 1040;
                  DWORD1(__src[1]) = v240;
                  WORD4(__src[1]) = 2101;
                  *(&__src[1] + 10) = v6;
                  WORD1(__src[2]) = 1024;
                  DWORD1(__src[2]) = v243;
                  WORD4(__src[2]) = 1024;
                  *(&__src[2] + 10) = v244;
                  _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StartQuery_internal START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), qtype: %{mdns:rrtype}d", __src, 0x2Eu);
                }
              }
            }

            if ((v40 + 5) <= 3 && v40 != -4)
            {
              return 0;
            }

            if (*(a2 + 340))
            {
              v245 = *(a2 + 40);
              if (v245)
              {
                v246 = *(v245 + 80);
                if (v246)
                {
                  os_retain(v246);
                }

                v247 = *(a2 + 80);
                if (v247)
                {
                  os_release(v247);
                }

                *(a2 + 80) = *(v245 + 80);
                v248 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    v249 = *(a2 + 252);
                    v250 = bswap32(*(a2 + 340)) >> 16;
                    v251 = bswap32(*(v245 + 340)) >> 16;
                    v257 = v6;
                    while (1)
                    {
                      if (!v257 || (v258 = *v257, v258 > 0x3F))
                      {
LABEL_526:
                        v254 = 257;
                        goto LABEL_532;
                      }

                      if (!*v257)
                      {
                        break;
                      }

                      v257 += v258 + 1;
                      if (v257 - v6 >= 256)
                      {
                        goto LABEL_526;
                      }
                    }

                    v254 = (v257 - v6 + 1);
                    goto LABEL_532;
                  }
                }

                else
                {
                  v248 = mDNSLogCategory_Default_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    v249 = *(a2 + 252);
                    v250 = bswap32(*(a2 + 340)) >> 16;
                    v251 = bswap32(*(v245 + 340)) >> 16;
                    v252 = v6;
                    while (1)
                    {
                      if (!v252 || (v253 = *v252, v253 > 0x3F))
                      {
LABEL_511:
                        v254 = 257;
                        goto LABEL_532;
                      }

                      if (!*v252)
                      {
                        break;
                      }

                      v252 += v253 + 1;
                      if (v252 - v6 >= 256)
                      {
                        goto LABEL_511;
                      }
                    }

                    v254 = (v252 - v6 + 1);
LABEL_532:
                    v260 = DNSTypeName(*(a2 + 342));
                    LODWORD(__src[0]) = 67110659;
                    DWORD1(__src[0]) = v249;
                    WORD4(__src[0]) = 1024;
                    *(__src + 10) = v250;
                    HIWORD(__src[0]) = 1024;
                    LODWORD(__src[1]) = v251;
                    WORD2(__src[1]) = 2160;
                    *(&__src[1] + 6) = 1752392040;
                    HIWORD(__src[1]) = 1040;
                    LODWORD(__src[2]) = v254;
                    WORD2(__src[2]) = 2101;
                    *(&__src[2] + 6) = v6;
                    HIWORD(__src[2]) = 2082;
                    *&__src[3] = v260;
                    _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "[R%u->DupQ%u->Q%u] Duplicate question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x38u);
                  }
                }
              }

              ActivateUnicastQuery(a1, a2, 0);
              return 0;
            }

            v255 = *(v5 + 3524) + 1;
            *(v5 + 3524) = v255;
            if (*(v5 + 3520) + v255 == 1)
            {
              *(a1 + 116) = 0;
              if (!*(a1 + 120))
              {
                *(a1 + 120) = 1;
                *(a1 + 8) = *(a1 + 64);
              }
            }

            if (!*(a2 + 639))
            {
              return 0;
            }

            v256 = mDNSLogCategory_mDNS;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
LABEL_528:
                v259 = bswap32(*(a2 + 340)) >> 16;
                LODWORD(__src[0]) = 67109120;
                DWORD1(__src[0]) = v259;
                _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StartQuery_internal: Purging records before resolving", __src, 8u);
              }
            }

            else
            {
              v256 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_528;
              }
            }

            mDNS_PurgeBeforeResolve(a1, a2);
            return 0;
          }

          v214 = *(a2 + 40);
          v215 = malloc_type_calloc(1uLL, 0x20uLL, 0xB7BBD98FuLL);
          if (!v215)
          {
            goto LABEL_552;
          }

          v2 = v215;
          v216 = &_dnssec_obj_dns_question_member_kind;
          v215[1] = &_dnssec_obj_dns_question_member_kind;
          do
          {
            v217 = v216[2];
            if (v217)
            {
              v217(v2);
            }

            v216 = *v216;
          }

          while (v216);
          v218 = *v2;
          *(v2 + 16) = 0;
          *(v2 + 24) = v214 == 0;
          *v2 = v218 + 2;
          ref_count_obj_release(v2);
          if (v214)
          {
            ++*v2;
            v219 = *(a2 + 144);
            if (v219)
            {
              ref_count_obj_release(v219);
            }

            *(a2 + 144) = v2;
LABEL_473:
            ref_count_obj_release(v2);
            goto LABEL_474;
          }

          v220 = *(a2 + 152);
          v221 = *(a2 + 635) != 0;
          LODWORD(__src[0]) = 0;
          if (v220)
          {
            v222 = malloc_type_calloc(1uLL, 0x48uLL, 0xB7BBD98FuLL);
            if (!v222)
            {
              goto LABEL_552;
            }

            v223 = v222;
            v224 = &_dnssec_obj_context_kind;
            v222[1] = &_dnssec_obj_context_kind;
            do
            {
              v225 = v224[2];
              if (v225)
              {
                v225(v223);
              }

              v224 = *v224;
            }

            while (v224);
            ++*v223;
            v223[2] = a1;
            v223[3] = a2;
            v226 = *(a2 + 136);
            v227 = v226 + 5;
            if (v226 + 5) < 6 && ((0x2Du >> v227))
            {
              LODWORD(v226) = dword_10010DE80[v227];
            }

            *(v223 + 8) = v226;
            v223[5] = v220;
            *(v223 + 36) = v221;
            *(v223 + 12) = 0;
            v228 = dnssec_obj_domain_name_create_with_labels(v6, 1, __src);
            if (!LODWORD(__src[0]))
            {
              v268 = v40;
              v43 = *(v223 + 12);
              v229 = malloc_type_calloc(1uLL, 0x98uLL, 0xB7BBD98FuLL);
              if (v229)
              {
                v230 = v229;
                v231 = &_dnssec_obj_validation_manager_kind;
                v229[1] = &_dnssec_obj_validation_manager_kind;
                do
                {
                  v232 = v231[2];
                  if (v232)
                  {
                    v232(v230);
                  }

                  v231 = *v231;
                }

                while (v231);
                ++*v230;
                v230[2] = v228;
                ++*v228;
                v230[4] = 0;
                v230[5] = 0;
                *(v230 + 12) = 0;
                *(v230 + 13) = -6718;
                *(v230 + 28) = 0;
                v230[7] = 0;
                v230[8] = 0;
                v230[11] = 0;
                v230[12] = 0;
                v230[10] = 0;
                v230[15] = 0;
                v230[16] = 0;
                *(v230 + 34) = v43;
                *(v230 + 35) = 0;
                *(v230 + 144) = 0;
                ++*v230;
                LODWORD(__src[0]) = 0;
                ref_count_obj_release(v230);
                v233 = __src[0];
                if (LODWORD(__src[0]))
                {
                  v43 = 0;
                }

                else
                {
                  v223[8] = v230;
                  ++*v230;
                  ++*v223;
                  v43 = v223;
                }

                ref_count_obj_release(v223);
                ref_count_obj_release(v228);
                ref_count_obj_release(v230);
                if (!v233)
                {
                  *(v43 + 48) = 0;
                  ++*v43;
                  v234 = *(v2 + 16);
                  if (v234)
                  {
                    ref_count_obj_release(v234);
                  }

                  *(v2 + 16) = v43;
                  ++*v2;
                  v235 = *(a2 + 144);
                  v40 = v268;
                  if (v235)
                  {
                    ref_count_obj_release(v235);
                  }

                  *(a2 + 144) = v2;
                  *(a2 + 152) = dnssec_query_record_result_reply;
                  *(a2 + 635) = 1;
                  ref_count_obj_release(v2);
                  v2 = v43;
                  goto LABEL_473;
                }

                goto LABEL_553;
              }

LABEL_552:
              __break(1u);
LABEL_553:
              ref_count_obj_release(v2);
              if (!v43)
              {
                return 4294901759;
              }

              v262 = v43;
LABEL_543:
              ref_count_obj_release(v262);
              return 4294901759;
            }

            ref_count_obj_release(v223);
            if (v228)
            {
              ref_count_obj_release(v228);
            }
          }

          v262 = v2;
          goto LABEL_543;
        }

        v87 = *(a2 + 340);
        if (!*(a2 + 340))
        {
          if (v86)
          {
            goto LABEL_343;
          }

          goto LABEL_150;
        }

LABEL_164:
        if (!v86)
        {
          v96 = *(a1 + 64) + 30000;
          if (v96 <= 1)
          {
            v96 = 1;
          }

          *(a2 + 240) = v96;
          v97 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              v98 = __rev16(v87);
              v107 = v6;
              while (1)
              {
                if (!v107 || (v108 = *v107, v108 > 0x3F))
                {
LABEL_191:
                  v101 = 257;
                  goto LABEL_212;
                }

                if (!*v107)
                {
                  break;
                }

                v107 += v108 + 1;
                if (v107 - v6 >= 256)
                {
                  goto LABEL_191;
                }
              }

              v101 = (v107 - v6 + 1);
              goto LABEL_212;
            }
          }

          else
          {
            v97 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              v98 = __rev16(v87);
              v99 = v6;
              while (1)
              {
                if (!v99 || (v100 = *v99, v100 > 0x3F))
                {
LABEL_175:
                  v101 = 257;
                  goto LABEL_212;
                }

                if (!*v99)
                {
                  break;
                }

                v99 += v100 + 1;
                if (v99 - v6 >= 256)
                {
                  goto LABEL_175;
                }
              }

              v101 = (v99 - v6 + 1);
LABEL_212:
              v118 = DNSTypeName(*(a2 + 342));
              LODWORD(__src[0]) = 67110403;
              DWORD1(__src[0]) = v98;
              WORD4(__src[0]) = 2048;
              *(__src + 10) = a2;
              WORD1(__src[1]) = 2160;
              *(&__src[1] + 4) = 1752392040;
              WORD6(__src[1]) = 1040;
              *(&__src[1] + 14) = v101;
              WORD1(__src[2]) = 2101;
              *(&__src[2] + 4) = v6;
              WORD6(__src[2]) = 2082;
              *(&__src[2] + 14) = v118;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "[Q%u] InitDNSConfig: Setting StopTime on the uDNS question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x36u);
            }
          }
        }

LABEL_213:
        v2 = _Querier_ExcludeEncryptedDNSServices(a2);
        if (!uuid_is_null((a2 + 360)) && v2)
        {
          uuid_clear((a2 + 360));
          v119 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_234;
            }

            v120 = *(a2 + 252);
            v121 = bswap32(*(a2 + 340)) >> 16;
            v125 = v6;
            while (1)
            {
              if (!v125 || (v126 = *v125, v126 > 0x3F))
              {
LABEL_230:
                v124 = 257;
                goto LABEL_233;
              }

              if (!*v125)
              {
                break;
              }

              v125 += v126 + 1;
              if (v125 - v6 >= 256)
              {
                goto LABEL_230;
              }
            }

            v124 = (v125 - v6 + 1);
          }

          else
          {
            v119 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_234;
            }

            v120 = *(a2 + 252);
            v121 = bswap32(*(a2 + 340)) >> 16;
            v122 = v6;
            while (1)
            {
              if (!v122 || (v123 = *v122, v123 > 0x3F))
              {
LABEL_223:
                v124 = 257;
                goto LABEL_233;
              }

              if (!*v122)
              {
                break;
              }

              v122 += v123 + 1;
              if (v122 - v6 >= 256)
              {
                goto LABEL_223;
              }
            }

            v124 = (v122 - v6 + 1);
          }

LABEL_233:
          v127 = DNSTypeName(*(a2 + 342));
          LODWORD(__src[0]) = 67110403;
          DWORD1(__src[0]) = v120;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v121;
          HIWORD(__src[0]) = 2160;
          *&__src[1] = 1752392040;
          WORD4(__src[1]) = 1040;
          *(&__src[1] + 10) = v124;
          HIWORD(__src[1]) = 2101;
          *&__src[2] = v6;
          WORD4(__src[2]) = 2082;
          *(&__src[2] + 10) = v127;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Cleared resolver UUID for question: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x32u);
          v43 = 0x10016D000;
        }

LABEL_234:
        v128 = *(a2 + 80);
        if (v128)
        {
          os_release(v128);
          *(a2 + 80) = 0;
        }

        DNSService = _Querier_GetDNSService(a2, v2);
        v130 = DNSService;
        if (v2)
        {
LABEL_237:
          *(a2 + 80) = v130;
          if (!v130)
          {
            goto LABEL_251;
          }

LABEL_296:
          os_retain(v130);
          v153 = *(a2 + 80);
          v133 = *(a2 + 144);
          if (v153)
          {
            v154 = *(v153 + 112);
            if (v154)
            {
              v155 = mach_continuous_time();
              v156 = v155 - *v154;
              if (mdns_mach_ticks_per_second_s_once != -1)
              {
                dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
              }

              if (v156 / mdns_mach_ticks_per_second_s_ticks_per_second < 0x3C)
              {
                v168 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_342;
                  }

                  v169 = *(a2 + 252);
                  v170 = bswap32(*(a2 + 340)) >> 16;
                  v171 = *(a2 + 80);
                  if (v171)
                  {
                    v171 = *(v171 + 24);
                  }
                }

                else
                {
                  v168 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_342;
                  }

                  v169 = *(a2 + 252);
                  v170 = bswap32(*(a2 + 340)) >> 16;
                  v171 = *(a2 + 80);
                  if (v171)
                  {
                    v171 = *(v171 + 24);
                  }
                }

                LODWORD(__src[0]) = 67109632;
                DWORD1(__src[0]) = v169;
                WORD4(__src[0]) = 1024;
                *(__src + 10) = v170;
                HIWORD(__src[0]) = 2048;
                *&__src[1] = v171;
                v172 = "[R%u->Q%u] Question assigned DNS service %llu";
                v173 = v168;
                v174 = OS_LOG_TYPE_DEFAULT;
                v175 = 24;
                goto LABEL_341;
              }

              *v154 = v155;
            }

            else
            {
              v157 = malloc_type_malloc(8uLL, 0xD7E1CE3CuLL);
              if (!v157)
              {
                goto LABEL_552;
              }

              v158 = v157;
              *v157 = mach_continuous_time();
              *(v153 + 112) = v158;
              *(v153 + 120) = mdns_free_context_finalizer;
            }
          }

LABEL_304:
          v159 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_342;
            }

            v165 = *(a2 + 252);
            v161 = bswap32(*(a2 + 340)) >> 16;
            v166 = v6;
            while (1)
            {
              if (!v166 || (v167 = *v166, v167 > 0x3F))
              {
LABEL_319:
                v164 = 257;
                goto LABEL_331;
              }

              if (!*v166)
              {
                break;
              }

              v166 += v167 + 1;
              if (v166 - v6 >= 256)
              {
                goto LABEL_319;
              }
            }

            v164 = (v166 - v6 + 1);
LABEL_331:
            v176 = DNSTypeName(*(a2 + 342));
            v177 = *(a2 + 80);
            v178 = ", DNSSEC";
            LODWORD(__src[0]) = 67110915;
            DWORD1(__src[0]) = v165;
            if (!v133)
            {
              v178 = "";
            }
          }

          else
          {
            v159 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_342;
            }

            v160 = *(a2 + 252);
            v161 = bswap32(*(a2 + 340)) >> 16;
            v162 = v6;
            while (1)
            {
              if (!v162 || (v163 = *v162, v163 > 0x3F))
              {
LABEL_312:
                v164 = 257;
                goto LABEL_335;
              }

              if (!*v162)
              {
                break;
              }

              v162 += v163 + 1;
              if (v162 - v6 >= 256)
              {
                goto LABEL_312;
              }
            }

            v164 = (v162 - v6 + 1);
LABEL_335:
            v176 = DNSTypeName(*(a2 + 342));
            v177 = *(a2 + 80);
            v178 = ", DNSSEC";
            LODWORD(__src[0]) = 67110915;
            DWORD1(__src[0]) = v160;
            if (!v133)
            {
              v178 = "";
            }
          }

          WORD4(__src[0]) = 1024;
          *(__src + 10) = v161;
          HIWORD(__src[0]) = 2160;
          *&__src[1] = 1752392040;
          WORD4(__src[1]) = 1040;
          *(&__src[1] + 10) = v164;
          HIWORD(__src[1]) = 2101;
          *&__src[2] = v6;
          WORD4(__src[2]) = 2082;
          *(&__src[2] + 10) = v176;
          WORD1(__src[3]) = 2082;
          *(&__src[3] + 4) = v178;
          WORD6(__src[3]) = 2112;
          *(&__src[3] + 14) = v177;
          _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s%{public}s) assigned DNS service -- %@", __src, 0x46u);
          v43 = 0x10016D000;
LABEL_342:
          if (!*(a2 + 240))
          {
LABEL_345:
            if ((*(a2 + 136) + 5) > 3 || *(a2 + 136) == -4)
            {
              SetNextQueryTime(a1, a2);
            }

            goto LABEL_348;
          }

LABEL_343:
          mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SetNextQueryStopTime", 398);
          v180 = *(a2 + 240);
          if (*(a1 + 184) - v180 >= 1)
          {
            *(a1 + 184) = v180;
          }

          goto LABEL_345;
        }

        if (DNSService)
        {
          if ((*(a2 + 327) & 0x40) != 0)
          {
            v131 = *(a2 + 88);
            if (v131)
            {
              if (!*(a2 + 136) && *(DNSService + 282) != 1)
              {
                if (*(DNSService + 24) != v131 && *(DNSService + 280) == 1 && *(DNSService + 281) - 2 >= 4 && (*(DNSService + 276) & 0x200) == 0)
                {
                  v132 = "avoid non-private DNS service";
                  goto LABEL_253;
                }

                if (!uuid_is_null((a2 + 360)) && _Querier_VPNDNSServiceExistsForQName(v6))
                {
                  v132 = "QNAME is in a VPN DNS service's domain";
                  goto LABEL_253;
                }
              }
            }
          }

          *(a2 + 80) = v130;
          goto LABEL_296;
        }

        if (uuid_is_null((a2 + 360)))
        {
          *(a2 + 80) = 0;
LABEL_251:
          v133 = *(a2 + 144);
          goto LABEL_304;
        }

        v132 = "ResolverUUID may be stale";
LABEL_253:
        v2 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
          {
            v134 = *(a2 + 252);
            v135 = bswap32(*(a2 + 340)) >> 16;
            v139 = v6;
            while (1)
            {
              if (!v139 || (v140 = *v139, v140 > 0x3F))
              {
LABEL_268:
                v138 = 257;
                goto LABEL_538;
              }

              if (!*v139)
              {
                break;
              }

              v139 += v140 + 1;
              if (v139 - v6 >= 256)
              {
                goto LABEL_268;
              }
            }

            v138 = (v139 - v6 + 1);
            goto LABEL_538;
          }
        }

        else
        {
          v2 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
          {
            v134 = *(a2 + 252);
            v135 = bswap32(*(a2 + 340)) >> 16;
            v136 = v6;
            while (1)
            {
              if (!v136 || (v137 = *v136, v137 > 0x3F))
              {
LABEL_261:
                v138 = 257;
                goto LABEL_538;
              }

              if (!*v136)
              {
                break;
              }

              v136 += v137 + 1;
              if (v136 - v6 >= 256)
              {
                goto LABEL_261;
              }
            }

            v138 = (v136 - v6 + 1);
LABEL_538:
            v261 = DNSTypeName(*(a2 + 342));
            LODWORD(__src[0]) = 67110659;
            DWORD1(__src[0]) = v134;
            WORD4(__src[0]) = 1024;
            *(__src + 10) = v135;
            HIWORD(__src[0]) = 2160;
            *&__src[1] = 1752392040;
            WORD4(__src[1]) = 1040;
            *(&__src[1] + 10) = v138;
            HIWORD(__src[1]) = 2101;
            *&__src[2] = v6;
            WORD4(__src[2]) = 2082;
            *(&__src[2] + 10) = v261;
            WORD1(__src[3]) = 2082;
            *(&__src[3] + 4) = v132;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[R%u->Q%u] Retrying path evaluation -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, reason: %{public}s", __src, 0x3Cu);
            v43 = 0x10016D000;
          }
        }

        mDNSPlatformGetDNSRoutePolicy(a2);
        v130 = _Querier_GetDNSService(a2, 0);
        goto LABEL_237;
      }

      v87 = *(a2 + 340);
      if (*(a2 + 340))
      {
        if (!v85)
        {
          goto LABEL_213;
        }

        goto LABEL_164;
      }

      if (!v85)
      {
        goto LABEL_342;
      }

      if (v86)
      {
        goto LABEL_343;
      }

      v102 = *v6;
      if (*v6)
      {
        v103 = 0;
        v104 = v6;
        do
        {
          ++v103;
          v105 = &v104[v102];
          v106 = v105[1];
          v104 = v105 + 1;
          v102 = v106;
        }

        while (v106);
      }

      else
      {
        v103 = 0;
      }

      v141 = *(a1 + 12688);
      if (v141)
      {
        v142 = 0;
        v143 = -1;
        do
        {
          v144 = *(v141 + 20);
          if (*(v141 + 20))
          {
            v145 = 0;
            v146 = v141 + 20;
            do
            {
              ++v145;
              v147 = v146 + v144;
              v148 = *(v147 + 1);
              v146 = v147 + 1;
              v144 = v148;
            }

            while (v148);
          }

          else
          {
            v145 = 0;
          }

          if (v103 >= v145 && v145 >= v143)
          {
            v149 = v6;
            if (v103 - v145 >= 1)
            {
              v150 = v103 + 1 - v145;
              v149 = v6;
              do
              {
                if (!*v149)
                {
                  break;
                }

                v149 += *v149 + 1;
                --v150;
              }

              while (v150 > 1);
            }

            if (SameDomainNameBytes(v149, v141 + 20) != 0 && v143 != v145)
            {
              v143 = v145;
              v142 = v141;
            }
          }

          v141 = *v141;
        }

        while (v141);
        v43 = &unk_10016D000;
        if ((mDNS_LoggingEnabled & 1) == 0)
        {
LABEL_292:
          if (v142)
          {
            v88 = 1000 * *(v142 + 69);
            goto LABEL_151;
          }

LABEL_150:
          v88 = 5000;
LABEL_151:
          v89 = v88 + *(a1 + 64);
          if (v89 <= 1)
          {
            v89 = 1;
          }

          *(a2 + 240) = v89;
          v90 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_342;
            }

            v91 = *(a2 + 252);
            v92 = bswap32(*(a2 + 340)) >> 16;
            v110 = v6;
            while (1)
            {
              if (!v110 || (v111 = *v110, v111 > 0x3F))
              {
LABEL_201:
                v95 = 257;
                goto LABEL_340;
              }

              if (!*v110)
              {
                break;
              }

              v110 += v111 + 1;
              if (v110 - v6 >= 256)
              {
                goto LABEL_201;
              }
            }

            v95 = (v110 - v6 + 1);
          }

          else
          {
            v90 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_342;
            }

            v91 = *(a2 + 252);
            v92 = bswap32(*(a2 + 340)) >> 16;
            v93 = v6;
            while (1)
            {
              if (!v93 || (v94 = *v93, v94 > 0x3F))
              {
LABEL_161:
                v95 = 257;
                goto LABEL_340;
              }

              if (!*v93)
              {
                break;
              }

              v93 += v94 + 1;
              if (v93 - v6 >= 256)
              {
                goto LABEL_161;
              }
            }

            v95 = (v93 - v6 + 1);
          }

LABEL_340:
          v179 = DNSTypeName(*(a2 + 342));
          LODWORD(__src[0]) = 67110659;
          DWORD1(__src[0]) = v91;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v92;
          HIWORD(__src[0]) = 2048;
          *&__src[1] = a2;
          WORD4(__src[1]) = 2160;
          *(&__src[1] + 10) = 1752392040;
          WORD1(__src[2]) = 1040;
          DWORD1(__src[2]) = v95;
          WORD4(__src[2]) = 2101;
          *(&__src[2] + 10) = v6;
          WORD1(__src[3]) = 2082;
          *(&__src[3] + 4) = v179;
          v172 = "[R%u->Q%u] InitDNSConfig: Setting StopTime on the uDNS question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
          v173 = v90;
          v174 = OS_LOG_TYPE_DEBUG;
          v175 = 60;
LABEL_341:
          _os_log_impl(&_mh_execute_header, v173, v174, v172, __src, v175);
          goto LABEL_342;
        }

        v151 = mDNSLogCategory_Default;
        if (v142)
        {
          v152 = *(v142 + 69);
        }
      }

      else
      {
        if (mDNS_LoggingEnabled != 1)
        {
          goto LABEL_150;
        }

        v142 = 0;
        v151 = mDNSLogCategory_Default;
      }

      LogMsgWithLevel(v151, OS_LOG_TYPE_DEFAULT, "GetTimeoutForMcastQuestion: question %##s curmatch %p, Timeout %d", v57, v58, v59, v60, v61, v6);
      goto LABEL_292;
    }

    *(a2 + 280) = -1;
    if ((v67 & 0x40000000) != 0)
    {
      if (!*(a2 + 642))
      {
        goto LABEL_140;
      }

      v72 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_138:
          v82 = *(a2 + 252);
          v83 = bswap32(*(a2 + 340)) >> 16;
          LODWORD(__src[0]) = 67109376;
          DWORD1(__src[0]) = v82;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v83;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Forcing another path evaluation", __src, 0xEu);
        }
      }

      else
      {
        v72 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_138;
        }
      }
    }

    *(a2 + 642) = 0;
    mDNSPlatformGetDNSRoutePolicy(a2);
    goto LABEL_140;
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
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v6;
      while (1)
      {
        if (!v49 || (v50 = *v49, v50 > 0x3F))
        {
LABEL_92:
          v51 = 257;
          goto LABEL_194;
        }

        if (!*v49)
        {
          break;
        }

        v49 += v50 + 1;
        if (v49 - v6 >= 256)
        {
          goto LABEL_92;
        }
      }

      v51 = (v49 - v6 + 1);
      goto LABEL_194;
    }
  }

  else
  {
    v47 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v6;
      while (1)
      {
        if (!v64 || (v65 = *v64, v65 > 0x3F))
        {
LABEL_107:
          v51 = 257;
          goto LABEL_194;
        }

        if (!*v64)
        {
          break;
        }

        v64 += v65 + 1;
        if (v64 - v6 >= 256)
        {
          goto LABEL_107;
        }
      }

      v51 = (v64 - v6 + 1);
LABEL_194:
      v109 = DNSTypeName(*(a2 + 342));
      LODWORD(__src[0]) = 141559043;
      *(__src + 4) = 1752392040;
      WORD6(__src[0]) = 1040;
      *(__src + 14) = v51;
      WORD1(__src[1]) = 2101;
      *(&__src[1] + 4) = v6;
      WORD6(__src[1]) = 2082;
      *(&__src[1] + 14) = v109;
      WORD3(__src[2]) = 2048;
      *(&__src[2] + 1) = a2;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "mDNS_StartQuery_internal: Error! Tried to add a question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) %p that's already in the active list", __src, 0x30u);
    }
  }

  return v2;
}

BOOL IsLocalDomain(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1;
    v7 = v3;
    v8 = v2;
    v9 = &a1[v1];
    v10 = v9[1];
    a1 = v9 + 1;
    v1 = v10;
    v2 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v6;
  }

  while (v10);
  return SameDomainNameBytes(v6, "\x05local") || v7 && SameDomainNameBytes(v7, "\x03254\x03169\ain-addr\x04arpa") || v8 && (SameDomainNameBytes(v8, "\x018\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x019\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x01a\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x01b\x01e\x01f\x03ip6\x04arpa"));
}

uint64_t *GetAuthInfoForName_internal(uint64_t a1, _BYTE *a2)
{
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "GetAuthInfoForName_internal", 398);
  v3 = *(a1 + 12760);
  if (v3)
  {
    v4 = (a1 + 12760);
    while (1)
    {
      v5 = *(v3 + 2);
      if (v5)
      {
        if (*(a1 + 64) - v5 >= 0)
        {
          break;
        }
      }

      v4 = v3;
LABEL_47:
      v3 = *v4;
      if (!*v4)
      {
        return GetAuthInfoForName_direct(a1, a2);
      }
    }

    v6 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        *v4 = *v3;
        for (i = *(a1 + 192); i; i = *(i + 8))
        {
          if (*(i + 32) == v3)
          {
            *(i + 32) = GetAuthInfoForName_direct(a1, (i + 376));
          }
        }

        free(v3);
        goto LABEL_47;
      }

      v8 = v3 + 12;
      v9 = v3 + 12;
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_16:
          v11 = 257;
          goto LABEL_26;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (v9 - v8 >= 256)
        {
          goto LABEL_16;
        }
      }

      v11 = (v9 - v8 + 1);
LABEL_26:
      v16 = v3 + 268;
      v17 = v3 + 268;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_31:
          v19 = 257;
          goto LABEL_41;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (v17 - v16 >= 256)
        {
          goto LABEL_31;
        }
      }

      v19 = (v17 - v16 + 1);
    }

    else
    {
      v6 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v13 = v3 + 12;
      v14 = v3 + 12;
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_24:
          v11 = 257;
          goto LABEL_33;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (v14 - v13 >= 256)
        {
          goto LABEL_24;
        }
      }

      v11 = (v14 - v13 + 1);
LABEL_33:
      v20 = v3 + 268;
      v21 = v3 + 268;
      while (1)
      {
        if (!v21 || (v22 = *v21, v22 > 0x3F))
        {
LABEL_38:
          v19 = 257;
          goto LABEL_41;
        }

        if (!*v21)
        {
          break;
        }

        v21 += v22 + 1;
        if (v21 - v20 >= 256)
        {
          goto LABEL_38;
        }
      }

      v19 = (v21 - v20 + 1);
    }

LABEL_41:
    *buf = 141559299;
    v27 = 1752392040;
    v28 = 1040;
    v29 = v11;
    v30 = 2101;
    v31 = v3 + 12;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1040;
    v35 = v19;
    v36 = 2101;
    v37 = v3 + 268;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GetAuthInfoForName_internal deleting expired key %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x36u);
    goto LABEL_42;
  }

  return GetAuthInfoForName_direct(a1, a2);
}

void SetNextQueryTime(uint64_t a1, uint64_t a2)
{
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SetNextQueryTime", 406);
  v4 = *(a2 + 212);
  if (v4 >= 1 && !*(a2 + 40))
  {
    v5 = 12680;
    if (!*(a2 + 340))
    {
      v5 = 92;
    }

    v6 = *(a2 + 208) + v4;
    if (*(a1 + v5) - v6 >= 1)
    {
      *(a1 + v5) = v6;
    }
  }
}

unsigned __int8 *ConvertDomainLabelToCString_withescape(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 > 0x3FuLL)
  {
    return 0;
  }

  if (v3 < &v3[v4])
  {
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (a3)
      {
        if (v6 == 46 || v6 == a3)
        {
          *a2++ = a3;
        }

        else if (v6 <= 0x20u)
        {
          *a2 = a3;
          a2[1] = 48;
          a2[2] = (v6 / 0xAu) | 0x30;
          a2 += 3;
          v6 = (v6 % 0xAu) | 0x30;
        }
      }

      *a2++ = v6;
      --v4;
    }

    while (v4);
  }

  *a2 = 0;
  return a2;
}

void mDNSDynamicStoreSetConfig(int a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  DeepCopy = CFPropertyListCreateDeepCopy(0, a2, 0);
  if (DeepCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mDNSDynamicStoreSetConfig_block_invoke;
    block[3] = &__block_descriptor_tmp_3583;
    v18 = a1;
    block[4] = DeepCopy;
    block[5] = 0;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v16 = mDNSLogCategory_Default;

    LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "mDNSDynamicStoreSetConfig: ERROR valueCopy NULL", v11, v12, v13, v14, v15, a9);
  }
}

unsigned __int8 *ConvertDomainNameToCString_withescape(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = *a1;
  if (*a1 || (*a2 = 46, ++a2, (v3 = *a1) != 0))
  {
    v4 = (a1 + 256);
    while (&v2[v3 + 1] < v4)
    {
      v5 = ConvertDomainLabelToCString_withescape(v2, a2, 92);
      v6 = v5;
      if (!v5)
      {
        return v6;
      }

      v7 = &v2[*v2];
      *v5 = 46;
      a2 = v5 + 1;
      v8 = v7[1];
      v2 = v7 + 1;
      v3 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    *a2 = 0;
    return a2 + 1;
  }
}

void mDNS_StatusCallback(size_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= -65549)
  {
    if (a2 == -65791)
    {
      mDNSPreferencesSetNames(1, (*a1 + 172), (a1 + 10280));
      mDNSPreferencesSetNames(2, (*a1 + 108), (a1 + 10344));

      udsserver_handle_configchange(a1);
    }

    else if (a2 == -65790 && mDNS_StatusCallback_allocated <= 0xF423F)
    {
      mDNS_StatusCallback_allocated += 32704;
      v9 = malloc_type_malloc(0x7FC0uLL, 0x74551A1FuLL);
      if (v9)
      {
        v10 = v9;
        mDNS_Lock_(a1, "mDNS_GrowCache", 18576);
        v11 = xmmword_10010D320;
        v12 = vdupq_n_s64(0x92uLL);
        v13 = vdupq_n_s64(1uLL);
        v14 = 0x1FFFFFFFFFFFF008;
        v15 = vdupq_n_s64(2uLL);
        do
        {
          v16 = vaddq_s64(v11, v13);
          if (vmovn_s64(vcgtq_u64(v12, v11)).u8[0])
          {
            v10[v14 + 4088] = &v10[28 * v16.i64[0]];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), *&v11)).i32[1])
          {
            v10[v14 + 4116] = &v10[28 * v16.i64[1]];
          }

          v11 = vaddq_s64(v11, v15);
          v14 += 56;
        }

        while (v14 * 8);
        v10[4060] = *(a1 + 264);
        *(a1 + 264) = v10;
        *(a1 + 240) += 146;

        mDNS_Unlock_(a1, "mDNS_GrowCache", 18578);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (a2 != -65548)
  {
    if (a2)
    {
      return;
    }

    v18 = (*a1 + 108);
    v17 = *v18;
    if (v17 == *(a1 + 10344))
    {
      if (!memcmp((*a1 + 109), (a1 + 10345), v17) || (mDNS_LoggingEnabled & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (mDNS_LoggingEnabled != 1)
    {
LABEL_33:
      v22 = dword_10016D258 + 1000;
      if ((dword_10016D258 + 1000) <= 1)
      {
        v22 = 1;
      }

      *(mDNSStorage[0] + 492) = v22;
      return;
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname changed from %#s.local to %#s.local", a4, a5, a6, a7, a8, v18);
    goto LABEL_33;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname conflict for %#s.local", a4, a5, a6, a7, a8, a1 + 10344);
  }

  v19 = *a1;
  v20 = *(*a1 + 496);
  v21 = *(a1 + 64);
  if (v20)
  {
    if ((v21 - v20) >= 60001)
    {

      mDNSPreferencesSetNames(2, (v19 + 108), 0);
    }
  }

  else
  {
    if (v21 <= 1)
    {
      v21 = 1;
    }

    *(v19 + 496) = v21;
  }
}

void uDNS_SetupDNSConfig()
{
  memset(v47, 0, 20);
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, 20);
  memset(v48, 0, sizeof(v48));
  uDNS_SetupWABQueries();
  mDNS_Lock_(mDNSStorage, "uDNS_SetupDNSConfig", 19033);
  for (i = qword_1001703A8; i; i = *i)
  {
    *(i + 16) |= 1u;
  }

  if (!mDNSPlatformSetDNSConfig(1, 0, v48, 0, 0, 1))
  {
    SetDynDNSHostNameIfChanged(v48);
    for (j = qword_1001703A8; j; j = *j)
    {
      *(j + 16) &= ~1u;
    }

    mDNS_Unlock_(mDNSStorage, "uDNS_SetupDNSConfig", 19047);
    v14 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buffer[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "uDNS_SetupDNSConfig: No configuration change", buffer, 2u);
    }

    return;
  }

  v1 = qword_1001703A8;
  if (qword_1001703A8)
  {
    v2 = &qword_1001703A8;
    do
    {
      v3 = v1[4];
      if (v3)
      {
        *v2 = *v1;
        free(v1);
      }

      else
      {
        v1[4] = v3 & 0xFFFFFFFC;
        v2 = v1;
      }

      v1 = *v2;
    }

    while (*v2);
  }

  Querier_ProcessDNSServiceChanges(0);
  SetDynDNSHostNameIfChanged(v48);
  mDNS_Unlock_(mDNSStorage, "uDNS_SetupDNSConfig", 19329);
  *(v45 + 4) = 0uLL;
  memset(v46, 0, sizeof(v46));
  *&v47[1] = 0uLL;
  LODWORD(v45[0]) = 4;
  v47[0] = 4;
  v4 = SCDynamicStoreCopyValue(0, NetworkChangedKey_IPv4);
  if (!v4)
  {
    v12 = 1;
    goto LABEL_69;
  }

  v5 = v4;
  memset(buffer, 0, sizeof(buffer));
  v45[0] = 4;
  Value = CFDictionaryGetValue(v4, kSCPropNetIPv4Router);
  if (!Value)
  {
    goto LABEL_20;
  }

  if (!CFStringGetCString(Value, buffer, 256, 0x8000100u))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Could not convert router to CString", v7, v8, v9, v10, v11, v43);
LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

  v49 = 0x210uLL;
  inet_aton(buffer, &v49 + 1);
  HIDWORD(v45[0]) = DWORD1(v49);
  v12 = DWORD1(v49) == 0;
LABEL_21:
  v15 = CFDictionaryGetValue(v5, kSCDynamicStorePropNetPrimaryInterface);
  if (!v15)
  {
    goto LABEL_64;
  }

  v16 = v15;
  IfAddrs = myGetIfAddrs();
  memset(v46, 0, sizeof(v46));
  memset(v47, 0, 20);
  if (!CFStringGetCString(v16, buffer, 256, 0x8000100u))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Could not convert router to CString", v18, v19, v20, v21, v22, v43);
    goto LABEL_64;
  }

  if (!IfAddrs)
  {
LABEL_64:
    v26 = 0;
    v25 = 0;
    goto LABEL_65;
  }

  v44 = v12;
  v23 = 0;
  do
  {
    v24 = v47[1];
    v25 = LOBYTE(v47[1]);
    v26 = BYTE1(v47[1]);
    v28 = BYTE1(v47[1]) == 254 || v23 == 0;
    while (1)
    {
      if (v24)
      {
        if (v25 == 169)
        {
          if (!v28)
          {
            goto LABEL_62;
          }
        }

        else if (v23)
        {
          goto LABEL_62;
        }
      }

      v29 = *(IfAddrs + 24);
      if (v29)
      {
        break;
      }

      v30 = *(IfAddrs + 8);
      if (!v30)
      {
        v30 = "name not found";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Skip interface, %s, since ifa_addr is not set.", v18, v19, v20, v21, v22, v30);
      IfAddrs = *IfAddrs;
      if (!IfAddrs)
      {
        goto LABEL_62;
      }
    }

    v50 = 0;
    v49 = 0uLL;
    if (!strcmp(buffer, *(IfAddrs + 8)))
    {
      v32 = *(v29 + 1);
      if (v32 == 30)
      {
        SetupAddr(&v49, v29, v31, v18, v19, v20, v21, v22);
        if ((BYTE4(v49) & 0xE0) == 0x20)
        {
          *v46 = v49;
          *&v46[16] = v50;
LABEL_43:
          v23 = 1;
        }
      }

      else if (v32 == 2 && (!v24 || v25 == 169 && v26 == 254))
      {
        SetupAddr(v47, v29, v31, v18, v19, v20, v21, v22);
      }
    }

    else
    {
      if (v23)
      {
        goto LABEL_43;
      }

      v33 = *(v29 + 1) == 30 && v46[4] == 0;
      if (v33 && (SetupAddr(&v49, v29, v31, v18, v19, v20, v21, v22), (BYTE4(v49) & 0xE0) == 0x20))
      {
        v23 = 0;
        *v46 = v49;
        *&v46[16] = v50;
      }

      else
      {
        v23 = 0;
      }
    }

    IfAddrs = *IfAddrs;
  }

  while (IfAddrs);
  v25 = LOBYTE(v47[1]);
  v26 = BYTE1(v47[1]);
LABEL_62:
  v12 = v44;
LABEL_65:
  CFRelease(v5);
  if (v25 == 169 && v26 == 254)
  {
    mDNS_SetPrimaryInterfaceInfo(0, 0, 0);
    if (byte_100170A70[0])
    {
      mDNSPlatformDynDNSHostNameStatusChanged(byte_100170A70, 1, v34, v35, v36, v37, v38, v39);
    }

    return;
  }

LABEL_69:
  if (v47[1])
  {
    v40 = v47;
  }

  else
  {
    v40 = 0;
  }

  if (vorr_s8(*&v46[4], *&vextq_s8(*&v46[4], *&v46[4], 8uLL)))
  {
    v41 = v46;
  }

  else
  {
    v41 = 0;
  }

  if (v12)
  {
    v42 = 0;
  }

  else
  {
    v42 = v45;
  }

  mDNS_SetPrimaryInterfaceInfo(v40, v41, v42);
}

uint64_t mDNSPlatformSetDNSConfig(int a1, int a2, _BYTE *a3, void *a4, void *a5, int a6)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v151, 0, sizeof(v151));
  v11 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    *&buf[14] = 1024;
    *&buf[16] = a3 != 0;
    *&buf[20] = 1024;
    *&buf[22] = a4 != 0;
    *&buf[26] = 1024;
    *&buf[28] = a5 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig new updates -- setservers: %{mdns:yesno}d, setsearch: %{mdns:yesno}d, fqdn: %{mdns:yesno}d, RegDomains: %{mdns:yesno}d, BrowseDomains: %{mdns:yesno}d", buf, 0x20u);
  }

  if (a2)
  {
    *&v151.A = xmmword_10010D300;
    *&v151.Nl = 0;
    v151.num = 0;
    v154 = 0;
    *bytes = 528;
    v153 = DWORD1(xmmword_1001703B0);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = CFDataCreate(0, bytes, 16);
    CFDictionarySetValue(Mutable, @"remote-address", v13);
    CFDictionarySetValue(Mutable, @"ServerBypass", kCFBooleanTrue);
    v19 = SCNetworkReachabilityCreateWithOptions();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v19)
    {
      *buf = 0;
      if (SCNetworkReachabilityGetFlags(v19, buf))
      {
        v25 = buf[0];
        CFRelease(v19);
        if ((v25 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: AddrRequiresPPPConnection - SCNetworkReachabilityGetFlags", v20, v21, v22, v23, v24, v145);
        CFRelease(v19);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: RequiresConnection - SCNetworkReachabilityCreateWithOptions", v14, v15, v16, v17, v18, v145);
    }

    IfAddrs = myGetIfAddrs();
    if (IfAddrs)
    {
      v33 = IfAddrs;
      v34 = 0uLL;
      do
      {
        v149[0] = 0;
        v149[1] = 0;
        v150 = 0;
        v147[0] = 0;
        v147[1] = 0;
        v148 = 0;
        v157 = v34;
        v158 = v34;
        v155 = v34;
        v156 = v34;
        v35 = *(v33 + 24);
        if (*(v35 + 1) == 2)
        {
          if (*(v33 + 32))
          {
            if ((*(v33 + 16) & 8) == 0)
            {
              v36 = SetupAddr(v149, v35, v27, v28, v29, v30, v31, v32);
              v34 = 0uLL;
              if (!v36 && (BYTE4(v149[0]) != 169 || BYTE5(v149[0]) != 254))
              {
                v37 = *(v33 + 32);
                *(v37 + 1) = *(*(v33 + 24) + 1);
                SetupAddr(v147, v37, v27, v28, v29, v30, v31, v32);
                v145 = (HIBYTE(v147[0]) & HIBYTE(v149[0]));
                mDNS_snprintf(&v155);
                UpdateSearchDomainHash(&v151, &v155, 0);
                v183 = 0u;
                v184 = 0u;
                v181 = 0u;
                v182 = 0u;
                v179 = 0u;
                v180 = 0u;
                v177 = 0u;
                v178 = 0u;
                v175 = 0u;
                v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                v172 = 0u;
                memset(buf, 0, sizeof(buf));
                if (AppendDNSNameString(buf, &v155, v38, v39, v40, v41, v42, v43) && buf[0])
                {
                  mDNS_AddSearchDomain(buf, 0);
                }

                v34 = 0uLL;
              }
            }
          }
        }

        v33 = *v33;
      }

      while (v33);
    }
  }

LABEL_33:
  if (!(a2 | a1))
  {
    goto LABEL_101;
  }

  v44 = dns_configuration_copy();
  if (!v44)
  {
    if (mDNSPlatformRawTime(0, v45, v46, v47, v48, v49, v50, v51) >= 0x2BF21)
    {
      v71 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "mDNSPlatformSetDNSConfig Error: dns_configuration_copy returned NULL", buf, 2u);
      }
    }

    goto LABEL_101;
  }

  v52 = v44;
  v53 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    v60 = *v52;
    v61 = *(v52 + 24);
    v62 = *(mDNSStorage[0] + 696);
    *buf = 67109888;
    *&buf[4] = v60;
    *&buf[8] = 2048;
    *&buf[10] = v61;
    *&buf[18] = 2048;
    *&buf[20] = v62;
    *&buf[28] = 1024;
    *&buf[30] = v61 != v62;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig -- config->n_resolver: %d, this config generagtion: %llu, last config generation: %llu, changed: %{mdns:yesno}d", buf, 0x22u);
  }

  if (a1 && *(mDNSStorage[0] + 696) == *(v52 + 24))
  {
    dns_configuration_free();
    v63 = 0;
    goto LABEL_102;
  }

  if (*v52 && (v64 = **(v52 + 4), (v65 = *v64) != 0) && *(v64 + 8) && **(v64 + 12))
  {
    ActiveDirectoryPrimaryDomain[0] = 0;
    AppendDNSNameString(ActiveDirectoryPrimaryDomain, v65, v54, v55, v56, v57, v58, v59);
    v66 = ActiveDirectoryPrimaryDomain[0];
    if (ActiveDirectoryPrimaryDomain[0])
    {
      v67 = ActiveDirectoryPrimaryDomain;
      v68 = -1;
      do
      {
        v69 = &v67[v66];
        v70 = v69[1];
        v67 = v69 + 1;
        v66 = v70;
        ++v68;
      }

      while (v70);
      goto LABEL_53;
    }
  }

  else
  {
    ActiveDirectoryPrimaryDomain[0] = 0;
  }

  v68 = -1;
  if (!*v52 || !*(**(v52 + 4) + 8))
  {
    goto LABEL_63;
  }

LABEL_53:
  if (v68 < 1)
  {
    v73 = ActiveDirectoryPrimaryDomain;
  }

  else
  {
    v72 = v68 + 1;
    v73 = ActiveDirectoryPrimaryDomain;
    do
    {
      if (!*v73)
      {
        break;
      }

      v73 += *v73 + 1;
      --v72;
    }

    while (v72 > 1);
  }

  if (SameDomainNameBytes(v73, "\x05local"))
  {
    SetupAddr(&ActiveDirectoryPrimaryDomainServer, **(**(v52 + 4) + 12), v74, v75, v76, v77, v78, v79);
  }

  else
  {
LABEL_63:
    ActiveDirectoryPrimaryDomain[0] = 0;
    ActiveDirectoryPrimaryDomainServer = 0;
    unk_100164840 = 0;
    dword_100164848 = 0;
  }

  if (a1)
  {
    DNSServiceManager = Querier_GetDNSServiceManager();
    if (DNSServiceManager)
    {
      v81 = DNSServiceManager;
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = __mdns_dns_service_manager_apply_dns_config_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_12_855;
      *&buf[32] = v81;
      *&buf[40] = v52;
      dispatch_sync(_mdns_dns_service_queue_s_queue, buf);
      _Querier_LogDNSServices(v81);
    }

    a1 = 1;
  }

  ConfigResolvers(v52, 0, a2, a1, &v151);
  ConfigResolvers(v52, 1, a2, a1, &v151);
  ConfigResolvers(v52, 2, a2, a1, &v151);
  if (a6)
  {
    *(mDNSStorage[0] + 696) = *(v52 + 24);
    v82 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig: acking configuration", buf, 2u);
    }

    AckConfigd(v52);
  }

  dns_configuration_free();
  if (a2)
  {
    num = v151.num;
    v84 = v151.num >> 2;
    v85 = v151.num & 3;
    if ((v151.num & 3) != 0)
    {
      v86 = v151.data[v84];
      v87 = &MD5_Final_end;
      if (v85 == 3)
      {
        goto LABEL_82;
      }

      if (v85 == 2)
      {
LABEL_81:
        v89 = *v87++;
        v86 |= v89 << 16;
LABEL_82:
        v151.data[v84] = v86 | (*v87 << 24);
        if (num < 0x38)
        {
          if (num > 0x33)
          {
            goto LABEL_89;
          }

          v90 = v84 + 1;
        }

        else
        {
          if (num <= 0x3B)
          {
            v151.data[15] = 0;
          }

          md5_block_host_order(&v151, v151.data);
          v90 = 0;
        }

        bzero(&v151.data[v90], (52 - 4 * v90) + 4);
LABEL_89:
        *&v151.data[14] = *&v151.Nl;
        md5_block_host_order(&v151, v151.data);
        *&buf[4] = *&v151.B;
        *buf = v151.A;
        *&buf[12] = v151.D;
        v151.num = 0;
        if (*buf != xmmword_100170B84 || *&buf[8] != *(&xmmword_100170B84 + 1))
        {
          *(&xmmword_10016D2D4 + &loc_1000038A8 + 4 + 4) = *buf;
          v97 = *(&xmmword_10016D2D4 + 4);
          if (*(&xmmword_10016D2D4 + 4))
          {
            while (!*(v97 + 641))
            {
              v97 = *(v97 + 8);
              if (!v97)
              {
                goto LABEL_96;
              }
            }

            if (mDNS_LoggingEnabled == 1)
            {
              v98 = mDNSLogCategory_Default;
              v99 = v97 + 376;
              DNSTypeName(*(v97 + 342));
              LogMsgWithLevel(v98, OS_LOG_TYPE_DEFAULT, "RetrySearchDomainQuestions: Question with AppendSearchDomain found %##s (%s)", v100, v101, v102, v103, v104, v99);
            }

            mDNSCoreRestartAddressQueries(1, FlushAddressCacheRecords, 0, 0);
          }

          else
          {
LABEL_96:
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RetrySearchDomainQuestions: Questions with AppendSearchDomain not found", v91, v92, v93, v94, v95, v145);
            }
          }
        }

        goto LABEL_101;
      }
    }

    else
    {
      v87 = &byte_10010D57D;
      v86 = 128;
    }

    v88 = *v87++;
    v86 |= v88 << 8;
    goto LABEL_81;
  }

LABEL_101:
  v63 = 1;
LABEL_102:
  v149[0] = a4;
  v147[0] = a5;
  v105 = SCDynamicStoreCopyValue(0, @"Setup:/Network/DynamicDNS");
  if (v105)
  {
    v106 = v105;
    bzero(buf, 0x3F1uLL);
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    if (a3)
    {
      Value = CFDictionaryGetValue(v106, @"HostNames");
      if (Value)
      {
        v108 = Value;
        if (CFArrayGetCount(Value) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v108, 0);
          if (ValueAtIndex)
          {
            v110 = ValueAtIndex;
            if (DictionaryIsEnabled(ValueAtIndex))
            {
              v111 = CFDictionaryGetValue(v110, @"Domain");
              if (v111)
              {
                if (!CFStringGetCString(v111, buf, 1009, 0x8000100u) || (*a3 = 0, !AppendDNSNameString(a3, buf, v112, v113, v114, v115, v116, v117)) || !*a3)
                {
                  if (buf[0])
                  {
                    v118 = buf;
                  }

                  else
                  {
                    v118 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS host name: %s", v113, v114, v115, v116, v117, v118);
                }
              }
            }
          }
        }
      }
    }

    if (a4)
    {
      v119 = CFDictionaryGetValue(v106, @"RegistrationDomains");
      if (v119)
      {
        v120 = v119;
        if (CFArrayGetCount(v119) >= 1)
        {
          v121 = CFArrayGetValueAtIndex(v120, 0);
          if (v121)
          {
            v122 = v121;
            if (DictionaryIsEnabled(v121))
            {
              v123 = CFDictionaryGetValue(v122, @"Domain");
              if (v123)
              {
                if (CFStringGetCString(v123, buf, 1009, 0x8000100u) && (LOBYTE(v155) = 0, AppendDNSNameString(&v155, buf, v124, v125, v126, v127, v128, v129)) && v155)
                {
                  AppendDNameListElem(v149, &v155);
                }

                else
                {
                  if (buf[0])
                  {
                    v130 = buf;
                  }

                  else
                  {
                    v130 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS registration domain: %s", v125, v126, v127, v128, v129, v130);
                }
              }
            }
          }
        }
      }
    }

    if (a5)
    {
      v131 = CFDictionaryGetValue(v106, @"BrowseDomains");
      if (v131)
      {
        v132 = v131;
        for (i = 0; CFArrayGetCount(v132) > i; ++i)
        {
          v134 = CFArrayGetValueAtIndex(v132, i);
          if (v134)
          {
            v135 = v134;
            if (DictionaryIsEnabled(v134))
            {
              v136 = CFDictionaryGetValue(v135, @"Domain");
              if (v136)
              {
                if (CFStringGetCString(v136, buf, 1009, 0x8000100u) && (LOBYTE(v155) = 0, AppendDNSNameString(&v155, buf, v137, v138, v139, v140, v141, v142)) && v155)
                {
                  AppendDNameListElem(v147, &v155);
                }

                else
                {
                  if (buf[0])
                  {
                    v143 = buf;
                  }

                  else
                  {
                    v143 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS browsing domain: %s", v138, v139, v140, v141, v142, v143);
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v106);
  }

  return v63;
}

void mDNS_SetPrimaryInterfaceInfo(__int128 *a1, __int128 *a2, uint64_t a3)
{
  mDNS_Lock_(mDNSStorage, "mDNS_SetPrimaryInterfaceInfo", 2709);
  if (a1 && *a1 != 4)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo v4 address - incorrect type.  Discarding. %#a", v6, v7, v8, v9, v10, a1);
  }

  else if (a2 && *a2 != 6)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo v6 address - incorrect type.  Discarding. %#a", v6, v7, v8, v9, v10, a2);
  }

  else if (a3 && *a3 != 4)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo passed non-v4 router.  Discarding. %#a", v6, v7, v8, v9, v10, a3);
  }

  else
  {
    v11 = &zerov4Addr;
    if (a1)
    {
      v12 = a1 + 1;
    }

    else
    {
      v12 = &zerov4Addr;
    }

    v13 = a2 + 1;
    if (!a2)
    {
      v13 = &zerov6Addr;
    }

    if (qword_1001703DC != *v13)
    {
      goto LABEL_23;
    }

    v14 = a2 + 2;
    if (!a2)
    {
      v14 = &unk_10010D538;
    }

    if (HIDWORD(qword_1001703DC) != *v14)
    {
      goto LABEL_23;
    }

    v15 = a2 + 3;
    if (!a2)
    {
      v15 = &unk_10010D53C;
    }

    if (dword_1001703E4 == *v15)
    {
      v16 = &unk_10010D540;
      if (a2)
      {
        v16 = a2 + 1;
      }

      v17 = dword_1001703E8 != *v16;
    }

    else
    {
LABEL_23:
      v17 = 1;
    }

    v18 = dword_1001703C8;
    v19 = *v12;
    if (a3)
    {
      v11 = (a3 + 4);
    }

    v20 = *v11;
    if (a1)
    {
      v21 = *a1;
      unk_1001703D4 = *(a1 + 4);
      unk_1001703C4 = v21;
    }

    else
    {
      dword_1001703C8 = 0;
    }

    if (a2)
    {
      v22 = *a2;
      dword_1001703E8 = *(a2 + 4);
      unk_1001703D8 = v22;
    }

    else
    {
      qword_1001703DC = 0;
      *&dword_1001703E4 = 0;
    }

    v23 = DWORD1(xmmword_1001703B0);
    if (a3)
    {
      v24 = *a3;
      dword_1001703C0 = *(a3 + 16);
      xmmword_1001703B0 = v24;
    }

    else
    {
      DWORD1(xmmword_1001703B0) = 0;
    }

    v26 = v18 != v19 || v23 != v20;
    if (v26 || v17)
    {
      v55 = v26;
      if (mDNS_LoggingEnabled == 1)
      {
        v27 = "v4Changed ";
        if (v18 == v19)
        {
          v27 = "";
        }

        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo: %s%s%s%#a %#a %#a", v6, v7, v8, v9, v10, v27);
      }

      v54 = v18;
      for (i = xmmword_100170B70; i; i = *i)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo updating host name registrations for %##s", v6, v7, v8, v9, v10, i + 208);
        }

        if (*(i + 472) >= 2u)
        {
          v29 = *(i + 512);
          v31 = *(v29 + 4);
          v30 = (v29 + 4);
          if (v31 != dword_1001703C8)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v32 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((i + 472), v30, word_1001789D0);
              LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo deregistering %s", v33, v34, v35, v36, v37, word_1001789D0);
            }

            mDNS_Deregister_internal(mDNSStorage, i + 464, 0);
          }
        }

        if (*(i + 1648) >= 2u)
        {
          v38 = *(i + 1688);
          if (*(v38 + 4) != qword_1001703DC || *(v38 + 12) != dword_1001703E4 || *(v38 + 16) != dword_1001703E8)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v39 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((i + 1648), (v38 + 4), word_1001789D0);
              LogMsgWithLevel(v39, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo deregistering %s", v40, v41, v42, v43, v44, word_1001789D0);
            }

            mDNS_Deregister_internal(mDNSStorage, i + 1640, 0);
          }
        }

        AdvertiseHostname(mDNSStorage, i);
      }

      if (v55)
      {
        if (a1)
        {
          v45 = 0;
        }

        else
        {
          v45 = 5;
        }

        dword_100170BB0 = 0;
        *(mDNSStorage + &loc_1000039B8) = 0;
        RecreateNATMappings(mDNSStorage, 1000 * v45);
        for (j = xmmword_100170B98; j; j = *j)
        {
          *(j + 39) = 0;
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v52 = " v4Changed";
          if (v54 == v19)
          {
            v52 = "";
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo:%s%s: recreating NAT mappings in %d seconds", v46, v47, v48, v49, v50, v52);
        }
      }

      if (dword_1001704CC != -1)
      {
        mDNS_StopQuery_internal(mDNSStorage, mDNSStorage + &loc_1000031E0);
      }

      *(&dword_10016D258 + &loc_100003718) = 0;
      v53 = dword_10016D258;
      if (dword_10016D258 <= 1)
      {
        v53 = 1;
      }

      dword_1001703A4 = v53;
    }
  }

  mDNS_Unlock_(mDNSStorage, "mDNS_SetPrimaryInterfaceInfo", 2786);
}

uint64_t udsSupportAddFDToEventLoop(int a1, uint64_t a2, uint64_t a3)
{
  v6 = &gEventSources;
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v6 = *v6;
    if (*(v7 + 8) == a1)
    {
      v8 = 4294901749;
      v9 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v10 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 67109120;
          v19 = a1;
          goto LABEL_19;
        }
      }

      else
      {
        v9 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 67109120;
          v19 = a1;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "udsSupportAddFDToEventLoop: ERROR fd %d already has EventLoop source entry", &v18, 8u);
        }
      }

      return v8;
    }
  }

  result = malloc_type_calloc(1uLL, 0x38uLL, 0xA1733B4AuLL);
  if (result)
  {
    v12 = result;
    *result = 0;
    *(result + 8) = a1;
    *(result + 40) = a2;
    *(result + 48) = a3;
    *(result + 16) = kqUDSEventCallback;
    *(result + 24) = result;
    *(result + 32) = "UDS client";
    if (!KQueueSet(a1, 1u, -1, (result + 16)))
    {
      v8 = 0;
      *v6 = v12;
      return v8;
    }

    v13 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:
        v15 = *__error();
        v16 = __error();
        v17 = strerror(*v16);
        v18 = 67109634;
        v19 = a1;
        v20 = 1024;
        v21 = v15;
        v22 = 2082;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "KQueueSet failed for fd %d errno %d (%{public}s)", &v18, 0x18u);
      }
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    free(v12);
    return 4294901756;
  }

  __break(1u);
  return result;
}

uint64_t mDNS_GetDomains(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  mDNS_Lock_(mDNSStorage, "mDNS_GetDomains", 16191);
  Domains_Internal = mDNS_GetDomains_Internal(mDNSStorage, a1, a2, a3, a4, a5, a6);
  mDNS_Unlock_(mDNSStorage, "mDNS_GetDomains", 16193);
  return Domains_Internal;
}

uint64_t mDNS_StartQuery(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_StartQuery", 15996);
  started = mDNS_StartQuery_internal(a1, a2);
  mDNS_Unlock_(a1, "mDNS_StartQuery", 15998);
  return started;
}

void RegisterLocalOnlyDomainEnumPTR(unsigned int *a1, _BYTE *a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x4A0uLL, 0x332D235AuLL);
  if (v6)
  {
    v7 = v6;
    mDNS_SetupResourceRecord((v6 + 1), 0, -2, 12, 0x1C20u, 8, 4, FreeARElemCallback_2637, v6);
    v8 = mDNS_DomainTypeNames[a3];
    *(v7 + 660) = 0;
    AppendDNSNameString(v7 + 660, v8, v9, v10, v11, v12, v13, v14);
    AppendDNSNameString(v7 + 660, "local", v15, v16, v17, v18, v19, v20);
    v21 = a2;
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
        v23 = v21 - a2 + 1;
        if (v23 <= 0x100u)
        {
          memcpy((v7[7] + 4), a2, v23);
          goto LABEL_11;
        }

        break;
      }

      v21 += v22 + 1;
    }

    while (v21 - a2 <= 255);
    *(v7[7] + 4) = 0;
LABEL_11:
    v24 = mDNS_Register(a1, (v7 + 1));
    if (v24)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetSCPrefsBrowseDomain: mDNS_Register returned error %d", v25, v26, v27, v28, v29, v24);

      free(v7);
    }

    else
    {
      *v7 = LocalDomainEnumRecords;
      LocalDomainEnumRecords = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

size_t mDNS_Register(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_Register", 16514);
  v10 = mDNS_Register_internal(a1, a2, v4, v5, v6, v7, v8, v9);
  mDNS_Unlock_(a1, "mDNS_Register", 16516);
  return v10;
}

void AddAutoBrowseDomain(int a1, _BYTE *a2)
{
  v4 = AutoBrowseDomains;
  if (!AutoBrowseDomains)
  {
LABEL_5:
    v5 = malloc_type_calloc(1uLL, 0x110uLL, 0x66CAE357uLL);
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = a2;
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *v7;
      if (v8 > 0x3F)
      {
        break;
      }

      if (!*v7)
      {
        v9 = v7 - a2 + 1;
        if (v9 <= 0x100u)
        {
          memcpy(v5 + 12, a2, v9);
          goto LABEL_15;
        }

        break;
      }

      v7 += v8 + 1;
    }

    while (v7 - a2 <= 255);
    v5[12] = 0;
LABEL_15:
    *(v6 + 8) = a1;
    *v6 = AutoBrowseDomains;
    AutoBrowseDomains = v6;
    v10 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:
        udsserver_automatic_browse_domain_changed(v6, 1, v16, v17, v18, v19, v20, v21);
        return;
      }

      if (a2)
      {
        v12 = a2;
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_27:
            v14 = 257;
            goto LABEL_40;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (v12 - a2 >= 256)
          {
            goto LABEL_27;
          }
        }

        v14 = (v12 - a2 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      if (a2)
      {
        v22 = a2;
        while (1)
        {
          if (!v22 || (v23 = *v22, v23 > 0x3F))
          {
LABEL_35:
            v14 = 257;
            goto LABEL_40;
          }

          if (!*v22)
          {
            break;
          }

          v22 += v23 + 1;
          if (v22 - a2 >= 256)
          {
            goto LABEL_35;
          }
        }

        v14 = (v22 - a2 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_40:
    v24 = 141558787;
    v25 = 1752392040;
    v26 = 1040;
    v27 = v14;
    v28 = 2101;
    v29 = a2;
    v30 = 1024;
    v31 = a1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain is added - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u", &v24, 0x22u);
    goto LABEL_41;
  }

  while (!SameDomainNameBytes(a2, (v4 + 12)) || *(v4 + 8) != a1)
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }
}

void udsserver_automatic_browse_domain_changed(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = all_requests;
  if (all_requests)
  {
    v11 = (a1 + 12);
    v12 = &unk_100162000;
    while (1)
    {
      if (*(v8 + 112) != browse_termination_callback)
      {
        goto LABEL_4;
      }

      v13 = *(v8 + 152);
      if (!*(v13 + 8))
      {
        goto LABEL_4;
      }

      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = *(v8 + 196);
        if (v15 >= 0x1F5 && v15 != v14)
        {
          goto LABEL_4;
        }
      }

      v17 = (v13 + 272);
      v18 = *(v13 + 272);
      if (v18)
      {
        while (1)
        {
          v19 = SameDomainNameBytes((v18 + 8), v11);
          v20 = *v17;
          if (v19)
          {
            break;
          }

          v18 = *v20;
          v17 = *v17;
          if (!*v20)
          {
            v21 = 0;
            v17 = v20;
            if (a2)
            {
              goto LABEL_19;
            }

            goto LABEL_22;
          }
        }

        v21 = *v17;
        if (a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        if (a2)
        {
LABEL_19:
          if (!v21)
          {
            add_domain_to_browser(v8, v11);
          }

          goto LABEL_4;
        }
      }

LABEL_22:
      if (!v21)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_automatic_browse_domain_changed ERROR %##s not found", a4, a5, a6, a7, a8, v11);
        goto LABEL_4;
      }

      v22 = v12[139];
      if (v22)
      {
        while (1)
        {
          v23 = *(v22 + 2);
          if (!v23 || ((v24 = *(v8 + 196), v24 >= 0x1F5) ? (v25 = v24 == v23) : (v25 = 1), v25))
          {
            if (SameDomainNameBytes(v11, v22 + 12))
            {
              goto LABEL_4;
            }
          }

          v22 = *v22;
          if (!v22)
          {
            v21 = *v17;
            break;
          }
        }
      }

      *v17 = *v21;
      v26 = v21 + 33;
      mDNS_Lock_(mDNSStorage, "mDNS_StopQueryWithRemoves", 16043);
      v27 = &xmmword_10016D2D8 + 1;
      do
      {
        v28 = *v27;
        v27 = (*v27 + 8);
        if (v28)
        {
          v29 = v28 == v26;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
      v30 = v21[50];
      v32 = v30 == -5 || v30 == -3 || v30 == -2;
      v33 = 24;
      if (v32)
      {
        v33 = 27;
      }

      v34 = &mDNSStorage[v33];
      do
      {
        v35 = *v34;
        v34 = (*v34 + 8);
        if (v35)
        {
          v36 = v35 == v26;
        }

        else
        {
          v36 = 1;
        }
      }

      while (!v36);
      if (v35)
      {
        break;
      }

      if ((*(v21 + 119) & 0x80000000) == 0)
      {
        v37 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v38 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          v37 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_56;
          }

          v57 = v21 + 80;
          v58 = v21 + 80;
          while (1)
          {
            if (!v58 || (v59 = *v58, v59 > 0x3F))
            {
LABEL_93:
              v42 = v12;
              v43 = 257;
              goto LABEL_97;
            }

            if (!*v58)
            {
              break;
            }

            v58 += v59 + 1;
            if (v58 - v57 >= 256)
            {
              goto LABEL_93;
            }
          }

          v42 = v12;
          v43 = (v58 - v57 + 1);
          goto LABEL_97;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          v39 = v21 + 80;
          v40 = v21 + 80;
          while (1)
          {
            if (!v40 || (v41 = *v40, v41 > 0x3F))
            {
LABEL_70:
              v42 = v12;
              v43 = 257;
              goto LABEL_97;
            }

            if (!*v40)
            {
              break;
            }

            v40 += v41 + 1;
            if (v40 - v39 >= 256)
            {
              goto LABEL_70;
            }
          }

          v42 = v12;
          v43 = (v40 - v39 + 1);
LABEL_97:
          v60 = DNSTypeName(*(v21 + 303));
          *buf = 141558787;
          *v68 = 1752392040;
          *&v68[8] = 1040;
          *&v68[10] = v43;
          v69 = 2101;
          *v70 = v21 + 80;
          *&v70[8] = 2082;
          *&v70[10] = v60;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Question not found in the active list - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s.", buf, 0x26u);
          v12 = v42;
        }
      }

LABEL_56:
      mDNS_Unlock_(mDNSStorage, "mDNS_StopQueryWithRemoves", 16080);
      free(v21);
LABEL_4:
      v8 = *(v8 + 16);
      if (!v8)
      {
        return;
      }
    }

    if (v28)
    {
LABEL_55:
      mDNS_StopQuery_internal(mDNSStorage, (v21 + 33));
      goto LABEL_56;
    }

    v44 = v21 + 80;
    v66 = CacheGroupForName(mDNSStorage, *(v21 + 116), v21 + 640);
    v45 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v21 + 80;
        v65 = bswap32(*(v21 + 302)) >> 16;
        while (1)
        {
          if (!v54 || (v55 = *v54, v55 > 0x3F))
          {
LABEL_86:
            v53 = 257;
            goto LABEL_99;
          }

          if (!*v54)
          {
            break;
          }

          v54 += v55 + 1;
          if (v54 - v44 >= 256)
          {
            goto LABEL_86;
          }
        }

        v53 = (v54 - v44 + 1);
        goto LABEL_99;
      }
    }

    else
    {
      v45 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v21 + 80;
        v65 = bswap32(*(v21 + 302)) >> 16;
        while (1)
        {
          if (!v51 || (v52 = *v51, v52 > 0x3F))
          {
LABEL_79:
            v53 = 257;
            goto LABEL_99;
          }

          if (!*v51)
          {
            break;
          }

          v51 += v52 + 1;
          if (v51 - v44 >= 256)
          {
            goto LABEL_79;
          }
        }

        v53 = (v51 - v44 + 1);
LABEL_99:
        v64 = v53;
        v61 = DNSTypeName(*(v21 + 303));
        *buf = 67110147;
        *v68 = v65;
        *&v68[4] = 2160;
        *&v68[6] = 1752392040;
        v69 = 1040;
        *v70 = v64;
        *&v70[4] = 2101;
        *&v70[6] = v21 + 80;
        *&v70[14] = 2082;
        *&v70[16] = v61;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[Q%u] Generating RMV events because the question will be stopped - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s.", buf, 0x2Cu);
      }
    }

    if (v66)
    {
      for (i = v66[2]; i; i = *i)
      {
        if (*(i + 8) != 240 && SameNameRecordAnswersQuestion((i + 8), 0, (v21 + 33), v46, v47, v48, v49, v50))
        {
          v63 = v21[52];
          if (v63)
          {
            v63(mDNSStorage, v21 + 33, i + 8, 0);
          }
        }
      }
    }

    goto LABEL_55;
  }
}

void udsserver_handle_configchange(size_t a1)
{
  v38 = 0;
  v39 = 0;
  UpdateDeviceInfoRecord(a1);
  v7 = all_requests;
  if (all_requests)
  {
    v8 = (a1 + 10280);
    do
    {
      if (*(v7 + 112) == regservice_termination_callback)
      {
        v9 = *(v7 + 128);
        if (*(v9 + 1612))
        {
          v10 = *(v9 + 26);
          if (v10 != *v8 || memcmp((v9 + 27), (a1 + 10281), v10))
          {
            v11 = *v8;
            v12 = *(a1 + 10296);
            v13 = *(a1 + 10328);
            *(v9 + 58) = *(a1 + 10312);
            *(v9 + 74) = v13;
            *(v9 + 26) = v11;
            *(v9 + 42) = v12;
            for (i = *(v9 + 1624); i; i = *i)
            {
              *(i + 24) = 1;
              if (*(i + 25))
              {
                SendServiceRemovalNotification((i + 36));
              }

              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_handle_configchange: Calling deregister for Service %##s", v2, v3, v4, v5, v6, i[195]);
              }

              if (mDNS_DeregisterService_drt(a1, (i + 36), 1, v2, v3, v4, v5, v6))
              {
                regservice_callback(a1, (i + 36), 0xFFFEFF00, v2, v3, v4, v5, v6);
              }
            }
          }
        }
      }

      v7 = *(v7 + 16);
    }

    while (v7);
  }

  mDNS_Lock_(a1, "udsserver_handle_configchange", 4051);
  mDNSPlatformSetDNSConfig(0, 0, 0, &v39, &v38, 0);
  mDNS_Unlock_(a1, "udsserver_handle_configchange", 4053);
  if (v39)
  {
    SetPrefsBrowseDomains(a1, v39, 1);
  }

  if (AutoRegistrationDomains)
  {
    SetPrefsBrowseDomains(a1, AutoRegistrationDomains, 0);
  }

  for (j = v39; j; j = *j)
  {
    v20 = AutoRegistrationDomains;
    if (!AutoRegistrationDomains)
    {
      goto LABEL_28;
    }

    v21 = &AutoRegistrationDomains;
    while (1)
    {
      if (*(v20 + 2) == *(j + 2))
      {
        v22 = SameDomainNameBytes(v20 + 12, j + 12);
        v20 = *v21;
        if (v22)
        {
          break;
        }
      }

      v21 = v20;
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    if (v20)
    {
      *v21 = *v20;
      free(v20);
    }

    else
    {
LABEL_28:
      RegisterLocalOnlyDomainEnumPTR(a1, j + 12, 3);
      udsserver_default_reg_domain_changed(j, 1, v23, v24, v25, v26, v27, v28);
    }
  }

  while (1)
  {
    v35 = AutoRegistrationDomains;
    if (!AutoRegistrationDomains)
    {
      break;
    }

    AutoRegistrationDomains = *AutoRegistrationDomains;
    DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v35 + 12, 3, 0, v15, v16, v17, v18);
    udsserver_default_reg_domain_changed(v35, 0, v29, v30, v31, v32, v33, v34);
    free(v35);
  }

  AutoRegistrationDomains = v39;
  if (v38)
  {
    SetPrefsBrowseDomains(a1, v38, 1);
  }

  if (SCPrefBrowseDomains)
  {
    SetPrefsBrowseDomains(a1, SCPrefBrowseDomains, 0);
    v36 = SCPrefBrowseDomains;
    if (SCPrefBrowseDomains)
    {
      do
      {
        v37 = *v36;
        free(v36);
        v36 = v37;
      }

      while (v37);
    }
  }

  SCPrefBrowseDomains = v38;
}

size_t UpdateDeviceInfoRecord(size_t result)
{
  v1 = result;
  v2 = result + 0x2000;
  v3 = all_requests;
  if (!all_requests)
  {
    if (!*(result + 11448))
    {
      return result;
    }

    v4 = 0;
    v5 = result + 11440;
    v6 = (result + 11448);
    goto LABEL_15;
  }

  v4 = 0;
  do
  {
    if (*(v3 + 112) == regservice_termination_callback && *(*(v3 + 128) + 1612) && *(v3 + 252) != -1)
    {
      ++v4;
    }

    v3 = *(v3 + 16);
  }

  while (v3);
  v5 = result + 11440;
  if (!*(result + 11448))
  {
    goto LABEL_43;
  }

  v6 = (result + 11448);
  if (!v4 || (v7 = *(result + 11480), v8 = *v7, v8 != *(result + 10280)) || (result = memcmp(v7 + 1, (result + 10281), v8), result))
  {
LABEL_15:
    v9 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v11 = *(v1 + 11480);
      if (v11)
      {
        v12 = *(v1 + 11480);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_27:
            v14 = 257;
            goto LABEL_41;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_27;
          }
        }

        v14 = (v12 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v9 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        result = mDNS_Deregister(v1, v5);
        if (*v6)
        {
          return result;
        }

LABEL_43:
        if (v4 < 1)
        {
          return result;
        }

        mDNS_SetupResourceRecord(v5, 0, 0, 16, 0x1194u, 4, 0, 0, 0);
        ConstructServiceName((v1 + 12092), (v1 + 10280), "\f_device-info\x04_tcp", "\x05local");
        v18 = *(v1 + 11488);
        if (*(v2 + 2736) >= 0xDBu)
        {
          v19 = 219;
        }

        else
        {
          v19 = *(v2 + 2736);
        }

        *(v18 + 4) = v19 + 6;
        v20 = v18 + 4;
        *(v20 + 1) = 1701080941;
        *(v20 + 5) = 15724;
        memcpy((v20 + 7), (v1 + 10929), v19);
        v21 = v20 + 7 + v19;
        if (OSXVers)
        {
          buf[2] = 0;
          *buf = 0;
          *v21 = 10;
          *(v21 + 1) = 0x3D7372657678736FLL;
          snprintf(buf, 3uLL, "%d", OSXVers);
          *(v21 + 9) = *buf;
          LOWORD(v21) = v21 + 11;
        }

        *(v2 + 3268) = v21 - v20;
        v22 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v1 + 11480);
            if (v23)
            {
              v27 = *(v1 + 11480);
              while (1)
              {
                if (!v27 || (v28 = *v27, v28 > 0x3F))
                {
LABEL_66:
                  v26 = 257;
                  goto LABEL_71;
                }

                if (!*v27)
                {
                  break;
                }

                v27 += v28 + 1;
                if (&v27[-v23] >= 256)
                {
                  goto LABEL_66;
                }
              }

              v26 = (v27 - v23 + 1);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v22 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v1 + 11480);
            if (v23)
            {
              v24 = *(v1 + 11480);
              while (1)
              {
                if (!v24 || (v25 = *v24, v25 > 0x3F))
                {
LABEL_58:
                  v26 = 257;
                  goto LABEL_71;
                }

                if (!*v24)
                {
                  break;
                }

                v24 += v25 + 1;
                if (&v24[-v23] >= 256)
                {
                  goto LABEL_58;
                }
              }

              v26 = (v24 - v23 + 1);
            }

            else
            {
              v26 = 0;
            }

LABEL_71:
            *buf = 141558531;
            v30 = 1752392040;
            v31 = 1040;
            v32 = v26;
            v33 = 2101;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UpdateDeviceInfoRecord Register %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
          }
        }

        return mDNS_Register(v1, v5);
      }

      v11 = *(v1 + 11480);
      if (v11)
      {
        v16 = *(v1 + 11480);
        while (1)
        {
          if (!v16 || (v17 = *v16, v17 > 0x3F))
          {
LABEL_35:
            v14 = 257;
            goto LABEL_41;
          }

          if (!*v16)
          {
            break;
          }

          v16 += v17 + 1;
          if (&v16[-v11] >= 256)
          {
            goto LABEL_35;
          }
        }

        v14 = (v16 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_41:
    *buf = 141558531;
    v30 = 1752392040;
    v31 = 1040;
    v32 = v14;
    v33 = 2101;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateDeviceInfoRecord Deregister %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
    goto LABEL_42;
  }

  return result;
}

uint64_t AppendDNameListElem(void **a1, _BYTE *a2)
{
  result = malloc_type_calloc(1uLL, 0x110uLL, 0x79DFFD8AuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  *result = 0;
  *(result + 8) = 0;
  v6 = a2;
  while (1)
  {
    if (!v6 || (v7 = *v6, v7 > 0x3F))
    {
LABEL_7:
      result += 12;
LABEL_8:
      *result = 0;
      goto LABEL_9;
    }

    if (!*v6)
    {
      break;
    }

    v6 += v7 + 1;
    if (v6 - a2 >= 256)
    {
      goto LABEL_7;
    }
  }

  result += 12;
  if ((v6 - a2 + 1) > 0x100u)
  {
    goto LABEL_8;
  }

  result = __memcpy_chk();
LABEL_9:
  **a1 = v5;
  *a1 = v5;
  return result;
}

void SetPrefsBrowseDomains(unsigned int *a1, uint64_t *a2, int a3)
{
  if (a3)
  {
    v6 = "add";
  }

  else
  {
    v6 = "remove";
  }

  do
  {
    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v9 = a2 + 12;
      v10 = a2 + 12;
      while (1)
      {
        if (!v10 || (v11 = *v10, v11 > 0x3F))
        {
LABEL_15:
          v12 = 257;
          goto LABEL_25;
        }

        if (!*v10)
        {
          break;
        }

        v10 += v11 + 1;
        if (&v10[-v9] >= 256)
        {
          goto LABEL_15;
        }
      }

      v12 = (v10 - v9 + 1);
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v18 = a2 + 12;
      v19 = a2 + 12;
      while (1)
      {
        if (!v19 || (v20 = *v19, v20 > 0x3F))
        {
LABEL_22:
          v12 = 257;
          goto LABEL_25;
        }

        if (!*v19)
        {
          break;
        }

        v19 += v20 + 1;
        if (&v19[-v18] >= 256)
        {
          goto LABEL_22;
        }
      }

      v12 = (v19 - v18 + 1);
    }

LABEL_25:
    v21 = *(a2 + 2);
    *buf = 141559043;
    v32 = 1752392040;
    v33 = 1040;
    v34 = v12;
    v35 = 2101;
    v36 = a2 + 12;
    v37 = 1024;
    v38 = v21;
    v39 = 2082;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetPrefsBrowseDomains is adding/removing domain for Browsing and Automatic Browsing domains - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u, result: %{public}s", buf, 0x2Cu);
LABEL_26:
    v22 = a2 + 12;
    if (a3)
    {
      RegisterLocalOnlyDomainEnumPTR(a1, v22, 0);
      v23 = *(a2 + 2);
      if (v23)
      {
        AddAutoBrowseDomain(v23, a2 + 12);
      }

      else
      {
        RegisterLocalOnlyDomainEnumPTR(a1, a2 + 12, 2);
      }
    }

    else
    {
      DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v22, 0, 0, v14, v15, v16, v17);
      v30 = *(a2 + 2);
      if (v30)
      {
        RmvAutoBrowseDomain(v30, a2 + 12, v24, v25, v26, v27, v28, v29);
      }

      else
      {
        DeregisterLocalOnlyDomainEnumPTR_Internal(a1, a2 + 12, 2, 0, v26, v27, v28, v29);
      }
    }

    a2 = *a2;
  }

  while (a2);
}

void udsserver_default_reg_domain_changed(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = "Adding";
  if (!a2)
  {
    v10 = "Removing";
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s registration domain %##s", a4, a5, a6, a7, a8, v10);
  for (i = all_requests; i; i = *(i + 16))
  {
    if (*(i + 112) == regservice_termination_callback)
    {
      v17 = *(i + 128);
      if (*(v17 + 1355))
      {
        v18 = *(a1 + 8);
        if (!v18 || ((v19 = *(i + 196), v19 >= 0x1F5) ? (v20 = v19 == v18) : (v20 = 1), v20))
        {
          v21 = (v17 + 1624);
          v22 = *(v17 + 1624);
          if (v22)
          {
            while (1)
            {
              v23 = SameDomainNameBytes((v22 + 28), (a1 + 12));
              v24 = *v21;
              if (v23)
              {
                break;
              }

              v22 = *v24;
              v21 = *v21;
              if (!*v24)
              {
                v25 = 0;
                v21 = v24;
                if (a2)
                {
                  goto LABEL_20;
                }

                goto LABEL_23;
              }
            }

            v25 = *v21;
            if (a2)
            {
              goto LABEL_20;
            }

LABEL_23:
            if (v25)
            {
              v26 = AutoRegistrationDomains;
              if (AutoRegistrationDomains)
              {
                while (1)
                {
                  v27 = *(v26 + 8);
                  if (!v27 || ((v28 = *(i + 196), v28 >= 0x1F5) ? (v29 = v28 == v27) : (v29 = 1), v29))
                  {
                    if (SameDomainNameBytes((a1 + 12), (v26 + 12)))
                    {
                      break;
                    }
                  }

                  v26 = *v26;
                  if (!v26)
                  {
                    v25 = *v21;
                    goto LABEL_34;
                  }
                }
              }

              else
              {
LABEL_34:
                *v21 = *v25;
                if (*(v25 + 25))
                {
                  SendServiceRemovalNotification((v25 + 36));
                }

                v25[1] = 0;
                v30 = mDNS_DeregisterService_drt(mDNSStorage, (v25 + 36), 0, v11, v12, v13, v14, v15);
                if (v30)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_default_reg_domain_changed err %d", v11, v12, v13, v14, v15, v30);
                  unlink_and_free_service_instance(v25, v31, v32, v33, v34, v35, v36, v37);
                }
              }
            }

            else
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_default_reg_domain_changed domain %##s not found for service %#s type %s", v11, v12, v13, v14, v15, a1 + 12);
            }

            continue;
          }

          v25 = 0;
          if (!a2)
          {
            goto LABEL_23;
          }

LABEL_20:
          if (!v25)
          {
            register_service_instance(i, (a1 + 12));
          }
        }
      }
    }
  }
}

void mDNSMacOSXNetworkChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_10016D220)
  {
    v8 = mDNS_TimeNow(mDNSStorage, a2, a3, a4, a5, a6, a7, a8);
    v9 = dword_10016D220;
    v10 = v8 - dword_10016D220;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v9;
    *&buf[8] = 1024;
    *&buf[10] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** -- network changed: %{mdns:yesno}d, delay: %d ticks", buf, 0xEu);
  }

  dword_10016D220 = 0;
  v12 = socket(30, 2, 0);
  if (v12 < 1)
  {
    goto LABEL_21;
  }

  v13 = v12;
  IfAddrs = myGetIfAddrs();
  if (!IfAddrs)
  {
LABEL_19:
    close(v13);
    v22 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change ***  No IPv6 address TENTATIVE, will continue", buf, 2u);
    }

LABEL_21:
    v23 = time(0);
    SystemWakeForNetworkAccess();
    *(&dword_10016D2A4 + 3) = 0;
    for (i = *mDNSStorage[0]; i; i = *(i + 3680))
    {
      if (*(i + 3696))
      {
        *(i + 3704) = v23;
      }

      *(i + 3696) = 0;
    }

    UpdateInterfaceList(v23);
    ClearInactiveInterfaces(v23);
    SetupActiveInterfaces(v23);
    v25 = OfferSleepProxyService;
    if (OfferSleepProxyService)
    {
      *buf = -1;
      v26 = SCDynamicStoreCreate(0, @"mDNSResponder:GetSystemSleepTimerSetting", 0, 0);
      if (v26)
      {
        v27 = v26;
        v28 = SCDynamicStoreCopyValue(v26, @"State:/IOKit/PowerManagement/CurrentSettings");
        if (v28)
        {
          v29 = v28;
          Value = CFDictionaryGetValue(v28, @"System Sleep Timer");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
          }

          CFRelease(v29);
        }

        CFRelease(v27);
        if (*buf)
        {
          v25 = 0;
        }

        else
        {
          v25 = 80;
        }
      }

      else
      {
        v31 = mDNSLogCategory_Default;
        v32 = SCError();
        v33 = SCErrorString(v32);
        LogMsgWithLevel(v31, OS_LOG_TYPE_DEFAULT, "GetSystemSleepTimerSetting: SCDynamicStoreCreate failed: %s", v34, v35, v36, v37, v38, v33);
        v25 = 0;
      }
    }

    if (SPMetricMarginalPower <= 0x3Cu && v25 == 0)
    {
      v25 = 70;
    }

    if (OfferSleepProxyService)
    {
      v40 = OfferSleepProxyService < 100;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    if (((v25 != 0) & v41) != 0)
    {
      v42 = OfferSleepProxyService;
    }

    else
    {
      v42 = v25;
    }

    mDNS_Lock_(mDNSStorage, "SetSPS", 6023);
    mDNSCoreBeSleepProxyServer_internal(mDNSStorage, v42, SPMetricPortability, SPMetricMarginalPower, SPMetricTotalPower, 1u);
    mDNS_Unlock_(mDNSStorage, "SetSPS", 6023);
    v48 = *mDNSStorage[0];
    if (!*mDNSStorage[0])
    {
LABEL_79:
      uDNS_SetupDNSConfig();
      v58 = mDNS_ConfigChanged(mDNSStorage);
      if (mDNS_McastTracingEnabled)
      {
        mDNS_McastTracingEnabled = 0;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXNetworkChanged: Multicast Tracing %s", v61, v62, v63, v64, v65, "Disabled");
        }

        UpdateDebugState(v58, v59, v60, v61, v62, v63, v64, v65, v67);
      }

      return;
    }

    v49 = &unk_100178000;
    while (1)
    {
      if (!*(&xmmword_100170D20 + 1))
      {
        if ((*(v48 + 3732) & 0x80000000) == 0 && !CountProxyTargets(v48, 0, 0, v43, v44, v45, v46, v47))
        {
          CloseBPF(v48, v52, v53, v43, v44, v45, v46, v47);
        }

        goto LABEL_68;
      }

      if (*(v48 + 3696) && *(v48 + 3768) == v48 && *(v48 + 3671) && (*(v48 + 3712) & 8) == 0 && !*(v48 + 3699) && *(v48 + 3732) == -1)
      {
        break;
      }

LABEL_68:
      v48 = *(v48 + 3680);
      if (!v48)
      {
        goto LABEL_79;
      }
    }

    LogMsgWithLevel(v49[434], OS_LOG_TYPE_DEFAULT, "%s mDNSMacOSXNetworkChanged: requesting BPF", v43, v44, v45, v46, v47, v48 + 3606);
    *(v48 + 3732) = -2;
    if (mDNSMacOSXNetworkChanged_once != -1)
    {
      dispatch_once(&mDNSMacOSXNetworkChanged_once, &__block_literal_global_3614);
    }

    v50 = mDNSMacOSXNetworkChanged_queue;
    v51 = v49[434];
    if (!mDNS_SensitiveLoggingEnableCount || v51 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
LABEL_71:
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Requesting BPF from helper", buf, 2u);
      }
    }

    else
    {
      v51 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_71;
      }
    }

    v54 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v54, "command", "bpf_open");
    xpc_dictionary_set_int64(v54, "open_flags", 2);
    dispatch_retain(v50);
    v55 = _Block_copy(&__block_literal_global_138);
    *aBlock = _NSConcreteStackBlock;
    *&aBlock[8] = 0x40000000;
    *&aBlock[16] = __mhc_bpf_open_block_invoke;
    *&aBlock[24] = &unk_100153168;
    v87 = v55;
    v88 = v50;
    if (_mhc_queue_s_once != -1)
    {
      dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", _mhc_queue_s_queue, 2uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mhc_create_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_11_6682;
    handler[4] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    xpc_retain(v54);
    v57 = _Block_copy(aBlock);
    if (_mhc_queue_s_once != -1)
    {
      dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&v70[0] = ___mhc_send_message_with_reply_block_invoke;
    *(&v70[0] + 1) = &unk_1001531D0;
    *(&v70[1] + 1) = mach_service;
    *&v71 = v54;
    *&v70[1] = v57;
    xpc_connection_send_message_with_reply(mach_service, v54, _mhc_queue_s_queue, buf);
    if (v54)
    {
      xpc_release(v54);
    }

    v49 = &unk_100178000;
    goto LABEL_68;
  }

  v15 = IfAddrs;
  while (1)
  {
    v16 = v15[3];
    if (v16 && *(v16 + 1) == 30)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      *buf = 0u;
      memset(v70, 0, sizeof(v70));
      v17 = v15[1];
      if (!v17)
      {
        __break(1u);
      }

      v18 = 0;
      while (1)
      {
        v19 = *(v17 + v18);
        buf[v18] = v19;
        if (!v19)
        {
          break;
        }

        if (++v18 == 15)
        {
          buf[15] = 0;
          break;
        }
      }

      v20 = v15[3];
      v21 = *v20;
      *(v70 + 12) = *(v20 + 12);
      v70[0] = v21;
      if (ioctl(v13, 0xC1206949uLL, buf) != -1 && (v70[0] & 2) != 0)
      {
        break;
      }
    }

    v15 = *v15;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v66 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *aBlock = 141558531;
    *&aBlock[4] = 1752392040;
    *&aBlock[12] = 1045;
    *&aBlock[14] = 16;
    *&aBlock[18] = 2101;
    *&aBlock[20] = v70 + 8;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change ***  IPv6 address %{sensitive, mask.hash, network:in6_addr}.16P TENTATIVE, will retry", aBlock, 0x1Cu);
  }

  close(v13);
  mDNS_Lock_(mDNSStorage, "mDNSMacOSXNetworkChanged", 6461);
  SetNetworkChanged(500);
  mDNS_Unlock_(mDNSStorage, "mDNSMacOSXNetworkChanged", 6463);
}

uint64_t mDNSSameAddress(int *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 6)
    {
      if (a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
      {
        v3 = a1[4];
        v4 = a2[4];
        return v3 == v4;
      }
    }

    else if (v2 == 4)
    {
      v3 = a1[1];
      v4 = a2[1];
      return v3 == v4;
    }

    return 0;
  }

  return 1;
}

void ClearInactiveInterfaces(int a1)
{
  v1 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    return;
  }

  v2 = a1;
  v3 = &unk_100178000;
  do
  {
    v4 = SearchForInterfaceByName((v1 + 3606), 0);
    v5 = *(v1 + 3768);
    if (v5)
    {
      v6 = v4;
      if ((*(v1 + 3696) | 2) == 2 || v5 != v4)
      {
        v8 = (*(v1 + 3712) & 8) == 0 && v2 - *(v1 + 3700) < 60;
        *(v1 + 3697) = v8;
        v9 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v1 + 3720);
          v11 = *(v1 + 3552);
          v12 = CountMaskBits((v1 + 3580));
          v13 = *(v1 + 3698);
          v14 = *(v1 + 16);
          *buf = 136449795;
          *v85 = v1 + 3606;
          *&v85[8] = 1024;
          *&v85[10] = v10;
          *&v85[14] = 2160;
          *&v85[16] = 1752392040;
          v86 = 1045;
          *v87 = 6;
          *&v87[4] = 2101;
          *&v87[6] = v1 + 3724;
          v3 = &unk_100178000;
          v88 = 2048;
          v89 = v11;
          v90 = 2048;
          v91 = v1;
          v92 = 2048;
          v93 = v6;
          v94 = 2160;
          *v95 = 1752392040;
          *&v95[8] = 1045;
          *&v95[10] = 20;
          v96 = 2101;
          *v97 = v1 + 3560;
          v2 = a1;
          *&v97[8] = 1024;
          *v98 = v12;
          *&v98[4] = 1024;
          v99 = v8;
          v100 = 1024;
          v101 = v13;
          v102 = 1024;
          v103 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ClearInactiveInterfaces: Deregistering %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p), primary %p, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d -- flashing: %{mdns:yesno}d, occulting: %{mdns:yesno}d, primary: %{mdns:yesno}d", buf, 0x7Cu);
        }

        if (*(v1 + 3606) == 112 && *(v1 + 3607) == 50 && *(v1 + 3608) == 112 || *(v1 + 3676))
        {
          v15 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v85 = v1 + 3606;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ClearInactiveInterfaces: %{public}s DirectLink interface deregistering", buf, 0xCu);
          }
        }

        mDNS_Lock_(mDNSStorage, "mDNS_DeregisterInterface", 17321);
        v16 = (mDNSStorage + &loc_100003170);
        do
        {
          v17 = v16;
          v16 = *v16;
          if (v16)
          {
            v18 = v16 == v1;
          }

          else
          {
            v18 = 1;
          }
        }

        while (!v18);
        if (v16)
        {
          *v17 = *v16;
          *v1 = 0;
          if (!*(v1 + 16))
          {
            for (i = xmmword_100170388; i; i = *i)
            {
              if (*(i + 16) && *(i + 3552) == *(v1 + 3552))
              {
                UpdateInterfaceProtocols(i);
              }
            }

            goto LABEL_52;
          }

          v19 = *(v1 + 3552);
          v20 = &xmmword_100170388;
          do
          {
            v20 = *v20;
          }

          while (v20 && *(v20 + 444) != v19);
          v21 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v22 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
          }

          else
          {
            v22 = 1;
          }

          v23 = v22;
          if (v20)
          {
            if (v23)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }
            }

            else
            {
              v21 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }
            }

            *buf = 67110147;
            *v85 = v19;
            *&v85[4] = 2082;
            *&v85[6] = v1 + 3606;
            *&v85[14] = 2160;
            *&v85[16] = 1752392040;
            v86 = 1045;
            *v87 = 20;
            *&v87[4] = 2101;
            *&v87[6] = v1 + 3560;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Another representative of InterfaceID exists - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
LABEL_61:
            if (*(v20 + 16))
            {
              v31 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                {
LABEL_67:
                  *buf = 136446979;
                  *v85 = v1 + 3606;
                  *&v85[8] = 2160;
                  *&v85[10] = 1752392040;
                  *&v85[18] = 1045;
                  *&v85[20] = 20;
                  v86 = 2101;
                  *v87 = v1 + 3560;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "intf->InterfaceActive already set for interface - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
                }
              }

              else
              {
                v31 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_67;
                }
              }
            }

            v27 = 1;
            *(v20 + 16) = 1;
            UpdateInterfaceProtocols(v20);
            v32 = xmmword_100170388;
            if (!xmmword_100170388)
            {
              goto LABEL_107;
            }

            while (v32[444] != *(v1 + 3552) || *(v32 + 890) != *(v1 + 3560))
            {
              v32 = *v32;
              if (!v32)
              {
                v27 = 1;
                goto LABEL_107;
              }
            }

LABEL_52:
            v27 = 0;
LABEL_107:
            AdjustAddressRecordSetsEx(v1, 0);
            AdjustAddressRecordSetsEx(v1, 1);
            if (*(v1 + 3670))
            {
              DeadvertiseInterface(mDNSStorage, v1, 3);
            }

            if (dword_10016D264)
            {
              v54 = 0;
            }

            else
            {
              v54 = v27;
            }

            if (v54 == 1)
            {
              for (j = 0; j != 499; ++j)
              {
                for (k = mDNSStorage[j + 34]; k; k = *k)
                {
                  for (m = k[2]; m; m = *m)
                  {
                    if (m[4] == *(v1 + 3552))
                    {
                      mDNS_Reconfirm_internal(mDNSStorage, m, 0x2710u);
                    }
                  }
                }
              }
            }

            mDNS_UpdateAllowSleep(mDNSStorage);
            v29 = 17496;
            goto LABEL_122;
          }

          if (v23)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            *buf = 67110147;
            *v85 = v19;
            *&v85[4] = 2082;
            *&v85[6] = v1 + 3606;
            *&v85[14] = 2160;
            *&v85[16] = 1752392040;
            v86 = 1045;
            *v87 = 20;
            *&v87[4] = 2101;
            *&v87[6] = v1 + 3560;
            v30 = v21;
          }

          else
          {
            v33 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            *buf = 67110147;
            *v85 = v19;
            *&v85[4] = 2082;
            *&v85[6] = v1 + 3606;
            *&v85[14] = 2160;
            *&v85[16] = 1752392040;
            v86 = 1045;
            *v87 = 20;
            *&v87[4] = 2101;
            *&v87[6] = v1 + 3560;
            v30 = v33;
          }

          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Last representative of InterfaceID deregistered; marking questions etc. dormant - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
LABEL_76:
          ++dword_100172020;
          v34 = *(v1 + 3552);
          if (DPCFeatureEnabled_sOnce != -1)
          {
            dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
          }

          if (DPCFeatureEnabled_sEnabled)
          {
            _DPCRemovePushServer(v34);
          }

          v35 = xmmword_10016D2D8;
          if (!xmmword_10016D2D8)
          {
LABEL_88:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            do
            {
              for (n = mDNSStorage[v39 + 34]; n; n = *n)
              {
                for (ii = n[2]; ii; ii = *ii)
                {
                  if (*(ii + 32) == *(v1 + 3552))
                  {
                    v46 = *(ii + 56);
                    if (v46)
                    {
                      v47 = *(v46 + 24) == 0;
                    }

                    else
                    {
                      v47 = 1;
                    }

                    v48 = !v47;
                    v49 = v42 + v47;
                    v50 = *(ii + 92);
                    v51 = v40 + !v47;
                    v52 = v43 + v47;
                    v53 = v41 + v48;
                    if (v50)
                    {
                      v43 = v52;
                    }

                    else
                    {
                      v42 = v49;
                    }

                    if (v50)
                    {
                      v41 = v53;
                    }

                    else
                    {
                      v40 = v51;
                    }

                    mDNS_PurgeCacheResourceRecord(mDNSStorage, ii);
                  }
                }
              }

              ++v39;
            }

            while (v39 != 499);
            v27 = 0;
            sCacheUsage_MulticastHitCount += v43;
            sCacheUsage_MulticastMissCount += v42;
            sCacheUsage_UnicastHitCount += v41;
            sCacheUsage_UnicastMissCount += v40;
            v3 = &unk_100178000;
            goto LABEL_107;
          }

          while (1)
          {
            if (!*(v35 + 340))
            {
              v36 = *(v35 + 136);
              v37 = *(v1 + 3552);
              if (v36 == v37)
              {
                *(v35 + 212) = 0;
LABEL_86:
                v38 = *(v35 + 16);
                *(v35 + 16) = v37;
                *(v35 + 24) = v38;
                goto LABEL_87;
              }

              if (!v36)
              {
                goto LABEL_86;
              }
            }

LABEL_87:
            v35 = *(v35 + 8);
            if (!v35)
            {
              goto LABEL_88;
            }
          }
        }

        v24 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v25 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
          {
LABEL_55:
            v29 = 17328;
LABEL_122:
            mDNS_Unlock_(mDNSStorage, "mDNS_DeregisterInterface", v29);
            *(v1 + 3768) = 0;
            goto LABEL_123;
          }
        }

        else
        {
          v24 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_55;
          }
        }

        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "NetworkInterfaceInfo not found in list", buf, 2u);
        goto LABEL_55;
      }
    }

LABEL_123:
    v1 = *(v1 + 3680);
  }

  while (v1);
  v58 = mDNSStorage[0];
  v59 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    v60 = v2 - 1;
    do
    {
      while (*(v59 + 3696))
      {
LABEL_142:
        v58 = (v59 + 3680);
        v59 = *(v59 + 3680);
        if (!v59)
        {
          return;
        }
      }

      v61 = *(v59 + 3704);
      if (v61 == v2)
      {
        *(v59 + 3704) = v60;
        v61 = v60;
      }

      v62 = v2 - v61;
      v63 = *(v3 + 435);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      if (v62 < 60)
      {
        if (!v64)
        {
          goto LABEL_135;
        }

        v78 = *(v59 + 3720);
        v79 = *(v59 + 3552);
        v80 = CountMaskBits((v59 + 3580));
        v81 = *(v59 + 16);
        *buf = 136449283;
        *v85 = v59 + 3606;
        v2 = a1;
        *&v85[8] = 1024;
        *&v85[10] = v78;
        *&v85[14] = 2160;
        *&v85[16] = 1752392040;
        v86 = 1045;
        *v87 = 6;
        *&v87[4] = 2101;
        *&v87[6] = v59 + 3724;
        v3 = &unk_100178000;
        v88 = 2048;
        v89 = v79;
        v90 = 2048;
        v91 = v59;
        v92 = 2160;
        v93 = 1752392040;
        v94 = 1045;
        *v95 = 20;
        *&v95[4] = 2101;
        *&v95[6] = v59 + 3560;
        v96 = 1024;
        *v97 = v80;
        *&v97[4] = 1024;
        *&v97[6] = v62;
        *v98 = 1024;
        *&v98[2] = v81;
        v76 = v63;
        v77 = "ClearInactiveInterfaces: Holding %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p) %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d Age %d -- primary: %{mdns:yesno}d";
      }

      else
      {
        if (!v64)
        {
          goto LABEL_135;
        }

        v72 = *(v59 + 3720);
        v73 = *(v59 + 3552);
        v74 = CountMaskBits((v59 + 3580));
        v75 = *(v59 + 16);
        *buf = 136449283;
        *v85 = v59 + 3606;
        *&v85[8] = 1024;
        *&v85[10] = v72;
        *&v85[14] = 2160;
        *&v85[16] = 1752392040;
        v86 = 1045;
        *v87 = 6;
        *&v87[4] = 2101;
        *&v87[6] = v59 + 3724;
        v2 = a1;
        v88 = 2048;
        v89 = v73;
        v3 = &unk_100178000;
        v90 = 2048;
        v91 = v59;
        v92 = 2160;
        v93 = 1752392040;
        v94 = 1045;
        *v95 = 20;
        *&v95[4] = 2101;
        *&v95[6] = v59 + 3560;
        v96 = 1024;
        *v97 = v74;
        *&v97[4] = 1024;
        *&v97[6] = v62;
        *v98 = 1024;
        *&v98[2] = v75;
        v76 = v63;
        v77 = "ClearInactiveInterfaces: Deleting %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p) %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d Age %d -- primary: %{mdns:yesno}d";
      }

      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, v77, buf, 0x6Cu);
LABEL_135:
      if ((*(v59 + 3732) & 0x80000000) == 0)
      {
        CloseBPF(v59, v65, v66, v67, v68, v69, v70, v71);
      }

      if (v62 < 60)
      {
        goto LABEL_142;
      }

      *v58 = *(v59 + 3680);
      v82 = *(v59 + 8);
      if (v82)
      {
        os_release(v82);
      }

      free(v59);
      v59 = *v58;
    }

    while (*v58);
  }
}

uint64_t mDNS_ConfigChanged(uint64_t result)
{
  v1 = result;
  v2 = (result + 12288);
  if (*(result + 15109) == 1)
  {
    memset(v17, 0, sizeof(v17));
    memset(&v16[256], 0, 64);
    DeconstructServiceName(*(result + 17576), v17, v16, v15);
    v14 = v2[2820];
    v12 = v2[2818];
    v13 = v2[2819];
    v10 = v2[2816];
    v11 = v2[2817];
    v3 = mDNS_snprintf(&v16[257]);
    v16[256] = v3;
    if (LOBYTE(v17[0]) != v3 || (result = memcmp(v17 + 1, &v16[257], v3), result))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Renaming SPS from “%#s” to “%#s”", v4, v5, v6, v7, v8, v17);
      }

      v2[2821] = 2;
      result = mDNS_DeregisterService_drt(v1, v1 + 15128, 1, v4, v5, v6, v7, v8);
    }
  }

  v9 = *(v1 + 32);
  if (v9)
  {
    return v9(v1, 4294901505);
  }

  return result;
}

uint64_t SameRDataBody(uint64_t a1, unsigned __int16 *a2, uint64_t (*a3)(uint64_t, unsigned __int16 *))
{
  v3 = a2;
  v5 = *(a1 + 40);
  v6 = (v5 + 4);
  v7 = *(a1 + 4) - 2;
  result = 0;
  switch(v7)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 10:
    case 21:
    case 37:

      return SameDomainNameBytes((v5 + 4), a2);
    case 4:
      if (*(v5 + 516) != *(a2 + 128) || *(v5 + 520) != *(a2 + 129) || *(v5 + 524) != *(a2 + 130) || *(v5 + 528) != *(a2 + 131) || *(v5 + 532) != *(a2 + 132))
      {
        return 0;
      }

      goto LABEL_17;
    case 12:
    case 15:
LABEL_17:
      result = a3(v5 + 4, a2);
      if (!result)
      {
        return result;
      }

      v10 = v5 + 260;
      v11 = v3 + 128;
      return a3(v10, v11) != 0;
    case 13:
    case 16:
    case 19:
    case 34:
      if (*v6 != *a2)
      {
        return 0;
      }

      v10 = v5 + 6;
      v11 = a2 + 1;
      return a3(v10, v11) != 0;
    case 24:
      if (*v6 != *a2)
      {
        return 0;
      }

      result = a3(v5 + 6, a2 + 1);
      if (!result)
      {
        return result;
      }

      v10 = v5 + 262;
      v11 = v3 + 129;
      return a3(v10, v11) != 0;
    case 31:
      if (*v6 != *a2 || *(v5 + 6) != a2[1] || *(v5 + 8) != a2[2])
      {
        return 0;
      }

      v10 = v5 + 10;
      v11 = a2 + 3;
      return a3(v10, v11) != 0;
    case 39:
      return result;
    case 45:
      v14 = (v5 + 4);
      break;
    default:
      v12 = *(a1 + 12);
      v13 = (v5 + 4);
      return memcmp(v13, a2, v12) == 0;
  }

  while (1)
  {
    if (!v14 || (v15 = *v14, v15 > 0x3F))
    {
LABEL_25:
      v16 = 257;
      goto LABEL_30;
    }

    if (!*v14)
    {
      break;
    }

    v14 += v15 + 1;
    if (v14 - v6 >= 256)
    {
      goto LABEL_25;
    }
  }

  v16 = v14 - v6 + 1;
LABEL_30:
  v17 = v16;
  v18 = a2;
  while (1)
  {
    if (!v18 || (v19 = *v18, v19 > 0x3F))
    {
LABEL_35:
      v20 = 257;
      goto LABEL_37;
    }

    if (!*v18)
    {
      break;
    }

    v18 += v19 + 1;
    if (v18 - a2 >= 256)
    {
      goto LABEL_35;
    }
  }

  v20 = v18 - a2 + 1;
LABEL_37:
  if (v17 != v20)
  {
    return 0;
  }

  result = a3(v6, a2);
  if (result)
  {
    v12 = *(a1 + 12) - v17;
    v13 = v6 + v17;
    a2 = (v3 + v17);
    return memcmp(v13, a2, v12) == 0;
  }

  return result;
}

uint64_t mDNS_Deregister(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_Deregister", 16592);
  v4 = mDNS_Deregister_internal(a1, a2, 0);
  mDNS_Unlock_(a1, "mDNS_Deregister", 16594);
  return v4;
}

uint64_t mDNS_Deregister_internal(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a2 + 8);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = (a1 + 0x4000);
  v10 = (a1 + 12616);
  memset(__dst, 0, sizeof(__dst));
  v11 = *(a2 + 40);
  v12 = v11;
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
        memcpy(__dst, *(a2 + 40), v14);
      }

      break;
    }

    v12 += v13 + 1;
  }

  while (v12 - v11 <= 255);
  v15 = *(a2 + 12);
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v16 = AuthGroupForName(a1 + 6264, v8, v11);
    if (!v16)
    {
      return 0;
    }

    v145 = v9;
    v146 = v15;
    v147 = v10;
    v10 = v16 + 2;
    do
    {
      v17 = v10;
      v10 = *v10;
      if (v10)
      {
        v18 = v10 == a2;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
  }

  else
  {
    v145 = v9;
    v146 = *(a2 + 12);
    v147 = v10;
    do
    {
      v17 = v10;
      v10 = *v10;
      if (v10)
      {
        v19 = v10 == a2;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  if (!v10)
  {
    v26 = (a1 + 12624);
    do
    {
      v17 = v26;
      v26 = *v26;
      if (v26)
      {
        v27 = v26 == a2;
      }

      else
      {
        v27 = 1;
      }
    }

    while (!v27);
    if (v26)
    {
      *(a2 + 130) = 0;
      *(a2 + 126) = 0;
      *(a2 + 192) = 0;
      *(a2 + 8) = 1;
      goto LABEL_109;
    }

LABEL_130:
    v51 = 4294901755;
    if (a3 == 3)
    {
      return v51;
    }

    v52 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v51;
    }

    v53 = (a1 + 47032);
    GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), v53);
    *buf = 134218499;
    *v149 = a2;
    *&v149[8] = 2160;
    *&v149[10] = 1752392040;
    *&v149[18] = 2085;
    *&v149[20] = v53;
    v54 = "mDNS_Deregister_internal: Record %p not found in list %{sensitive, mask.hash}s";
    v55 = v52;
    v56 = 32;
LABEL_135:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    return v51;
  }

  if (a3 == 4)
  {
    v28 = v8;
    v29 = *(a2 + 32);
    *(a2 + 32) = 0;
    for (i = *(a1 + 12624); i; i = *i)
    {
      if (i[4] == *(a2 + 32))
      {
        v31 = *(i + 8);
        v32 = *v6;
        v33 = v32 == 1 || v31 == 1;
        v34 = v33 || v31 == v32;
        v35 = v34 || (v32 | v31) == 18;
        if (v35 && *(i + 6) == *(a2 + 24) && resource_records_have_same_dnssec_rr_category(i[8], *(a2 + 64)) && *(i + 6) == *(a2 + 12) && *(i + 7) == *(a2 + 14) && *(i + 10) == *(a2 + 20) && *(i + 7) == *(a2 + 28) && SameRDataBody((i + 1), (*(a2 + 48) + 4), SameDomainName) && SameDomainNameBytes(i[5], *(a2 + 40)))
        {
          *(i + 190) = -1;
        }
      }
    }

    *(a2 + 32) = v29;
    v8 = v28;
    goto LABEL_109;
  }

  if (a3 == 2)
  {
    for (j = *(a1 + 12624); j; j = *j)
    {
      if (j[4] == *(a2 + 32))
      {
        v21 = *(j + 8);
        v22 = *v6;
        v23 = v22 == 1 || v21 == 1;
        v24 = v23 || v21 == v22;
        v25 = v24 || (v22 | v21) == 18;
        if (v25 && *(j + 6) == *(a2 + 24) && resource_records_have_same_dnssec_rr_category(j[8], *(a2 + 64)) && *(j + 6) == *(a2 + 12) && *(j + 7) == *(a2 + 14) && *(j + 10) == *(a2 + 20) && *(j + 7) == *(a2 + 28) && SameRDataBody((j + 1), (*(a2 + 48) + 4), SameDomainName) && SameDomainNameBytes(j[5], *(a2 + 40)))
        {
          *(j + 190) = -1;
        }
      }
    }

    goto LABEL_109;
  }

  v143 = v8;
  v36 = *(a1 + 12624);
  if (!v36)
  {
    goto LABEL_108;
  }

  v37 = (a1 + 12624);
  while (1)
  {
    if (*(v36 + 32) != *(a2 + 32))
    {
      goto LABEL_107;
    }

    v38 = *(v36 + 8);
    v39 = *v6;
    v40 = v39 == 1 || v38 == 1;
    v41 = v40 || v38 == v39;
    v42 = v41 || (v39 | v38) == 18;
    if (!v42 || *(v36 + 24) != *(a2 + 24) || !resource_records_have_same_dnssec_rr_category(*(v36 + 64), *(a2 + 64)) || *(v36 + 12) != *(a2 + 12) || *(v36 + 14) != *(a2 + 14) || *(v36 + 20) != *(a2 + 20) || *(v36 + 28) != *(a2 + 28))
    {
      goto LABEL_107;
    }

    if (!SameRDataBody(v36 + 8, (*(a2 + 48) + 4), SameDomainName))
    {
      v36 = *v37;
      goto LABEL_107;
    }

    v43 = SameDomainNameBytes(*(v36 + 40), *(a2 + 40));
    v36 = *v37;
    if (v43)
    {
      break;
    }

LABEL_107:
    v37 = v36;
    v36 = *v36;
    if (!v36)
    {
      goto LABEL_108;
    }
  }

  if (v36)
  {
    *v37 = *v36;
    if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
    {
      *v36 = 0;
      if (!InsertAuthRecord(a1 + 6264, v36))
      {
        v139 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          GetRRDisplayString_rdb((v36 + 8), (*(v36 + 48) + 4), (a1 + 47032));
          *buf = 141558275;
          *v149 = 1752392040;
          *&v149[8] = 2085;
          *&v149[10] = a1 + 47032;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: ERROR!! cannot insert %{sensitive, mask.hash}s", buf, 0x16u);
        }
      }
    }

    else
    {
      *v36 = *a2;
      *a2 = v36;
    }

    *(v36 + 8) = *(a2 + 8);
    *(v36 + 189) = *(a2 + 189);
    *(v36 + 193) = *(a2 + 193);
    *(v36 + 195) = *(a2 + 195);
    *(v36 + 208) = *(a2 + 208);
    *(v36 + 232) = *(a2 + 232);
    *(v36 + 236) = *(a2 + 236);
    *(v36 + 280) = *(a2 + 280);
    *(v36 + 288) = *(a2 + 288);
    *(v36 + 296) = *(a2 + 296);
    *(v36 + 356) = *(a2 + 356);
    *(v36 + 344) = *(a2 + 344);
    *(a2 + 192) = 0;
  }

LABEL_108:
  v8 = v143;
LABEL_109:
  if (!*v17)
  {
    goto LABEL_130;
  }

  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    if (*(a2 + 192))
    {
      v84 = *(a2 + 384);
      if (v84)
      {
        DisposeTCPConn(v84);
        *(a2 + 384) = 0;
      }

      *(a2 + 8) = 1;
      *(a1 + 140) = 1;
      uDNS_DeregisterRecord(a1, a2);
      return 0;
    }

    *(a2 + 358) = 0;
    if (*(a2 + 584))
    {
      mDNS_StopNATOperation_internal(a1, a2 + 392);
      *(a2 + 584) = 0;
    }

    v105 = *(a2 + 376);
    if (v105)
    {
      CancelGetZoneData(a1, v105);
      *(a2 + 376) = 0;
    }

    v106 = *(a2 + 384);
    if (v106)
    {
      DisposeTCPConn(v106);
      *(a2 + 384) = 0;
    }
  }

  if (v7 == 1)
  {
    v51 = 4294901755;
    v57 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v51;
    }

    v58 = (a1 + 47032);
    GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), v58);
    *buf = 141558275;
    *v149 = 1752392040;
    *&v149[8] = 2085;
    *&v149[10] = v58;
    v54 = "mDNS_Deregister_internal: %{sensitive, mask.hash}s already marked kDNSRecordTypeDeregistering";
    v55 = v57;
    v56 = 22;
    goto LABEL_135;
  }

  if (!v7)
  {
    v44 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 141558275;
      *v149 = 1752392040;
      *&v149[8] = 2085;
      *&v149[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: %{sensitive, mask.hash}s already marked kDNSRecordTypeUnregistered", buf, 0x16u);
    }
  }

  v45 = *(a2 + 126);
  if (v45 || (v7 == 8 || *(a2 + 172) == 4) && (*(a2 + 192) || *(a2 + 193)))
  {
    *(a2 + 8) = 1;
    *(a2 + 16) = 0;
    if (a3 == 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = 3;
    }

    if (v45)
    {
      v47 = 18;
    }

    else
    {
      v47 = v46;
    }

    *(a2 + 191) = v47;
    *(a2 + 280) = 2000;
    v48 = *(a1 + 64);
    *(a2 + 284) = v48 - 2000;
    *(a1 + 140) = 1;
    v49 = v48 + 100;
    v50 = 0;
    if (*(a1 + 100) - v49 >= 0)
    {
      *(a1 + 100) = v49;
    }

    v59 = v147;
    v60 = v146;
    goto LABEL_137;
  }

  if (v10)
  {
    if ((*(a2 + 172) & 0xFFFFFFFE) == 4 || (*v6 & 0x32) == 0)
    {
      v50 = 0;
    }

    else
    {
      v69 = CacheGroupForName(a1, *(a2 + 24), *(a2 + 40));
      v50 = v69;
      if (v69)
      {
        v76 = v8;
        for (k = v69[2]; k; k = *k)
        {
          v78 = *(k + 32);
          v79 = *(a2 + 32);
          if (v79)
          {
            if (v79 == v78)
            {
              goto LABEL_174;
            }
          }

          else if (mDNSPlatformValidRecordForInterface(a2, *(k + 32), v70, v71, v72, v73, v74, v75))
          {
LABEL_174:
            if (resource_records_have_same_dnssec_rr_category(*(k + 64), *(a2 + 64)) && *(k + 12) == *(a2 + 12) && *(k + 14) == *(a2 + 14) && *(k + 20) == *(a2 + 20) && *(k + 28) == *(a2 + 28) && SameRDataBody(k + 8, (*(a2 + 48) + 4), SameDomainName))
            {
              v141 = mDNSLogCategory_State;
              if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
              {
                v80 = &xmmword_100170388;
                while (1)
                {
                  v80 = *v80;
                  if (!v80)
                  {
                    break;
                  }

                  v81 = v80;
                  if (*(v80 + 444) == v78)
                  {
                    goto LABEL_186;
                  }
                }

                v81 = 0;
LABEL_186:
                v82 = v81 + 3606;
                v18 = v80 == 0;
                v83 = "";
                if (!v18)
                {
                  v83 = v82;
                }

                v140 = v83;
                GetRRDisplayString_rdb((k + 8), (*(k + 48) + 4), (a1 + 47032));
                *buf = 136446979;
                *v149 = v140;
                *&v149[8] = 1024;
                *&v149[10] = v78;
                *&v149[14] = 2160;
                *&v149[16] = 1752392040;
                *&v149[24] = 2085;
                *&v149[26] = a1 + 47032;
                _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEBUG, "mDNS_Deregister_internal: Purging cached record that matches deregistered AuthRecord -- interface: %{public}s/%u, record: %{sensitive, mask.hash}s", buf, 0x26u);
              }

              mDNS_PurgeCacheResourceRecord(a1, k);
            }
          }
        }

        v8 = v76;
      }
    }

    if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
    {
      v86 = RemoveAuthRecord(a1, a1 + 6264, a2);
      if (v86[5] == a2)
      {
        v86[5] = *a2;
      }

      goto LABEL_273;
    }
  }

  else
  {
    v50 = 0;
  }

  v93 = *a2;
  *v17 = *a2;
  if (*(a1 + 12632) == a2)
  {
    *(a1 + 12632) = v93;
  }

  v94 = v8;
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v95 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 136446210;
      *v149 = a1 + 47032;
      v96 = "DecrementAutoTargetServices: called for RRLocalOnly() record: %{public}s";
      v97 = v95;
      v98 = 12;
      goto LABEL_271;
    }

    goto LABEL_272;
  }

  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)) || *(a2 + 12) != 33 || *(a2 + 120) != 1)
  {
    goto LABEL_262;
  }

  v99 = *(a2 + 172) & 0xFFFFFFFE;
  if (v99 == 2)
  {
    v100 = *(a1 + 10920) - 1;
    *(a1 + 10920) = v100;
    v101 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 67109635;
      *v149 = v100;
      *&v149[4] = 2160;
      *&v149[6] = 1752392040;
      *&v149[14] = 2085;
      *&v149[16] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetAWDLIncludedCount %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
      v100 = *(a1 + 10920);
    }

    if (v100)
    {
      goto LABEL_262;
    }

    v144 = 2;
    v102 = *(a1 + 10924);
    v103 = v102 == 0;
    v104 = 2 * (v102 == 0);
    v142 = 2;
  }

  else
  {
    v107 = *(a2 + 32);
    if ((!AWDLInterfaceID || AWDLInterfaceID != v107) && (!WiFiAwareInterfaceID || WiFiAwareInterfaceID != v107))
    {
      v115 = v145[879] - 1;
      v145[879] = v115;
      v116 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
      {
        GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
        *buf = 67109635;
        *v149 = v115;
        *&v149[4] = 2160;
        *&v149[6] = 1752392040;
        *&v149[14] = 2085;
        *&v149[16] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetServices %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
        v115 = v145[879];
      }

      if (!v115)
      {
        for (m = *(a1 + 12656); m; m = *m)
        {
          if (*(m + 3670))
          {
            DeadvertiseInterface(a1, m, 1);
          }
        }
      }

      goto LABEL_262;
    }

    v108 = *(a1 + 10924) - 1;
    *(a1 + 10924) = v108;
    v109 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 67109635;
      *v149 = v108;
      *&v149[4] = 2160;
      *&v149[6] = 1752392040;
      *&v149[14] = 2085;
      *&v149[16] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetAWDLOnlyCount %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
    }

    if (*(a1 + 10920))
    {
      goto LABEL_262;
    }

    v102 = *(a1 + 10924);
    if (v102)
    {
      goto LABEL_262;
    }

    v144 = v99;
    v142 = 0;
    LOBYTE(v103) = 1;
    v104 = 2;
  }

  v110 = *(a1 + 12656);
  if (!v110)
  {
LABEL_253:
    if (!v102)
    {
      GetRandomUUIDLocalHostname((a1 + 10664));
    }

    goto LABEL_262;
  }

  while (2)
  {
    if (*(v110 + 3670))
    {
      v111 = *(v110 + 3552);
      if (AWDLInterfaceID)
      {
        v112 = AWDLInterfaceID == v111;
      }

      else
      {
        v112 = 0;
      }

      if (v112 || (WiFiAwareInterfaceID ? (v113 = WiFiAwareInterfaceID == v111) : (v113 = 0), v113))
      {
        v114 = v104;
        if (!v103)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v114 = v142;
        if (v144 != 2)
        {
          goto LABEL_250;
        }
      }

      DeadvertiseInterface(a1, v110, v114);
    }

LABEL_250:
    v110 = *v110;
    if (v110)
    {
      continue;
    }

    break;
  }

  if (!*(a1 + 10920))
  {
    v102 = *(a1 + 10924);
    goto LABEL_253;
  }

LABEL_262:
  if (*(a2 + 32) || *(a2 + 122) || IsLocalDomain(*(a2 + 40)))
  {
    v118 = v145[880];
    v119 = v145[881];
    if (v119 + v118 == 1)
    {
      v120 = *(a1 + 64) + 60000;
      if (v120 <= 1)
      {
        v120 = 1;
      }

      *(a1 + 116) = v120;
    }

    v121 = v118 - 1;
    v145[880] = v118 - 1;
    v122 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 67109891;
      *v149 = v121;
      *&v149[4] = 1024;
      *&v149[6] = v119;
      *&v149[10] = 2160;
      *&v149[12] = 1752392040;
      *&v149[20] = 2085;
      *&v149[22] = a1 + 47032;
      v96 = "DecrementAutoTargetServices: NumAllInterfaceRecords %u NumAllInterfaceQuestions %u %{sensitive, mask.hash}s";
      v97 = v122;
      v98 = 34;
LABEL_271:
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, v96, buf, v98);
    }
  }

LABEL_272:
  v8 = v94;
LABEL_273:
  v59 = v147;
  v60 = v146;
  if (*(a1 + 12640) == a2)
  {
    *(a1 + 12640) = *a2;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(a2 + 304))
  {
    CompleteRDataUpdate(a1, a2, v87, v88, v89, v90, v91, v92);
  }

  if (a3 == 2 || a3 == 4)
  {
    if (a3 == 2)
    {
      v123 = 4294901748;
    }

    else
    {
      v123 = 4294901724;
    }

    RecordProbeFailure(a1, a2);
    v124 = *(a1 + 48);
    v125 = *(a1 + 52) + 1;
    *(a1 + 52) = v125;
    mDNS_VerifyLockState("Drop Lock", 0, v124, v125, "mDNS_Deregister_internal", 2530);
    v126 = *(a2 + 104);
    if (v126)
    {
      v126(a1, a2, v123);
    }

    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_Deregister_internal", 2533);
    --*(a1 + 52);
    for (n = *(a1 + 12624); n; n = *n)
    {
      if (*(n + 190) == 255)
      {
        D2D_stop_advertising_record(n, v127, v128, v129, v130, v131, v132, v133);
        mDNS_Deregister_internal(a1, n, v123);
        n = a1 + 12624;
      }
    }
  }

  else
  {
    v135 = *(a1 + 48);
    v136 = *(a1 + 52) + 1;
    *(a1 + 52) = v136;
    mDNS_VerifyLockState("Drop Lock", 0, v135, v136, "mDNS_Deregister_internal", 2520);
    v137 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      GetRRDisplayString_rdb(v6, (*(a2 + 48) + 4), (a1 + 47032));
      *buf = 141558275;
      *v149 = 1752392040;
      *&v149[8] = 2085;
      *&v149[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: callback with mStatus_MemFree for %{sensitive, mask.hash}s", buf, 0x16u);
    }

    v138 = *(a2 + 104);
    if (v138)
    {
      v138(a1, a2, 4294901504);
    }

    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_Deregister_internal", 2524);
    --*(a1 + 52);
  }

LABEL_137:
  mDNS_UpdateAllowSleep(a1);
  if (v60 == 41)
  {
    return 0;
  }

  v61 = mDNSGetTSRForAuthRecordNamed(*v59, __dst, v8);
  v62 = v61;
  v63 = *v59;
  if (*v59 && v61)
  {
    do
    {
      if (*(v63 + 6) != 41 && *(v63 + 6) == v8 && SameDomainNameBytes(v63[5], __dst))
      {
        v62 = 0;
      }

      v63 = *v63;
      if (v63)
      {
        v64 = v62 == 0;
      }

      else
      {
        v64 = 1;
      }
    }

    while (!v64);
  }

  if (!v62)
  {
    return 0;
  }

  v65 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_158;
    }
  }

  else
  {
    v65 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
LABEL_158:
      GetRRDisplayString_rdb(v62 + 8, (v62[6] + 4), (a1 + 47032));
      *buf = 141558275;
      *v149 = 1752392040;
      *&v149[8] = 2085;
      *&v149[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Deregistering orphaned TSR - %{sensitive, mask.hash}s", buf, 0x16u);
    }
  }

  mDNS_Deregister_internal(a1, v62, 3);
  if (!v50)
  {
    return 0;
  }

  v51 = mDNSGetTSRForCacheGroup(v50);
  if (v51)
  {
    v68 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_197;
      }
    }

    else
    {
      v68 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
LABEL_197:
        GetRRDisplayString_rdb((v51 + 8), (*(v51 + 48) + 4), (a1 + 47032));
        *buf = 141558275;
        *v149 = 1752392040;
        *&v149[8] = 2085;
        *&v149[10] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "Purging cached TSR record that matches orphaned TSR -- %{sensitive, mask.hash}s", buf, 0x16u);
      }
    }

    mDNS_PurgeCacheResourceRecord(a1, v51);
    return 0;
  }

  return v51;
}

void RmvAutoBrowseDomain(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = AutoBrowseDomains;
  if (AutoBrowseDomains)
  {
    v11 = &AutoBrowseDomains;
    while (1)
    {
      v12 = SameDomainNameBytes((v9 + 12), a2);
      v14 = *v11;
      if (v12)
      {
        if (v14[2] == a1)
        {
          break;
        }
      }

      v9 = *v14;
      v11 = *v11;
      if (!*v14)
      {
        goto LABEL_6;
      }
    }

    *v11 = *v14;
    udsserver_automatic_browse_domain_changed(v14, 0, v13, a4, a5, a6, a7, a8);
    free(v14);
    v15 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v19 = a2;
          while (1)
          {
            if (!v19 || (v20 = *v19, v20 > 0x3F))
            {
LABEL_25:
              v18 = 257;
              goto LABEL_30;
            }

            if (!*v19)
            {
              break;
            }

            v19 += v20 + 1;
            if (v19 - a2 >= 256)
            {
              goto LABEL_25;
            }
          }

          v18 = (v19 - a2 + 1);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v15 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v16 = a2;
          while (1)
          {
            if (!v16 || (v17 = *v16, v17 > 0x3F))
            {
LABEL_17:
              v18 = 257;
              goto LABEL_30;
            }

            if (!*v16)
            {
              break;
            }

            v16 += v17 + 1;
            if (v16 - a2 >= 256)
            {
              goto LABEL_17;
            }
          }

          v18 = (v16 - a2 + 1);
        }

        else
        {
          v18 = 0;
        }

LABEL_30:
        *buf = 141558787;
        v22 = 1752392040;
        v23 = 1040;
        v24 = v18;
        v25 = 2101;
        v26 = a2;
        v27 = 1024;
        v28 = a1;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain is removed - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u", buf, 0x22u);
      }
    }
  }

  else
  {
LABEL_6:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RmvAutoBrowseDomain: Got remove event for domain %##s not in list", a4, a5, a6, a7, a8, a2);
  }
}

void KQueueLoop(uint64_t a1)
{
  if (dnssd_server_init_s_once != -1)
  {
    dispatch_once(&dnssd_server_init_s_once, &__block_literal_global_982);
  }

  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_dns_service_registration_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_4_4323;
  *&block[32] = kMRCSServerDNSServiceRegistrationHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_dns_proxy_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_4318;
  *&block[32] = kMRCSServerDNSProxyHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_discovery_proxy_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_5_4324;
  *&block[32] = kMRCSServerDiscoveryProxyHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_record_cache_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_6_4325;
  *&block[32] = kMRCServerRecordCacheHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  dispatch_async(_mrcs_server_queue_s_queue, &__block_literal_global_4326);
  pthread_mutex_lock(&stru_100164CC8);
  v2 = &unk_100178000;
  v3 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    v4 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
LABEL_18:
      *block = 67109376;
      *&block[4] = dword_10016D25C;
      *&block[8] = 1024;
      *&block[10] = dword_10016D25C;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting time value 0x%08X (%d)", block, 0xEu);
    }
  }

  else
  {
    v3 = mDNSLogCategory_Default_redacted;
    v4 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      goto LABEL_18;
    }
  }

  v416 = (a1 + 10344);
  v417 = (a1 + 10280);
  v12 = (a1 + 47032);
  v418 = a1;
  v420 = (a1 + 47032);
LABEL_20:
  memset(&eventlist, 0, sizeof(eventlist));
  v419 = mDNSPlatformRawTime(v4, v5, v6, v7, v8, v9, v10, v11);
  v20 = mDNS_TimeNow(a1, v13, v14, v15, v16, v17, v18, v19);
  v28 = v20;
  v29 = *(*a1 + 500);
  if (v29 && ((v20 - v29) & 0x80000000) == 0)
  {
    *(*a1 + 500) = 0;
    mDNS_Lock_(a1, "mDNSDaemonIdle", 865);
    LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Note: SetDomainSecrets: no keychain support", v30, v31, v32, v33, v34, v409);
    mDNS_Unlock_(a1, "mDNSDaemonIdle", 867);
  }

  v35 = *(a1 + 8);
  if (v35 && ((v28 - v35) & 0x80000000) == 0)
  {
    mDNSMacOSXNetworkChanged(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  v36 = *(*a1 + 608);
  if (v36 && ((v28 - v36) & 0x80000000) == 0)
  {
    *(*a1 + 608) = 0;
    mdns_power_cancel_all_events(@"com.apple.mDNSResponder");
    v37 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v37, "HelperMode", 5uLL);
    xpc_dictionary_set_uint64(v37, "powerreq_key", 0);
    xpc_dictionary_set_uint64(v37, "powerreq_interval", 0);
    v43 = SendDict_ToServer(v37);
    if (v37)
    {
      xpc_release(v37);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "mDNSPowerRequest: Using XPC IPC returning error_code %d", v38, v39, v40, v41, v42, v43);
    }
  }

  v44 = mDNS_Execute(a1);
  v52 = *(a1 + 8);
  if ((v44 - v52) <= 0 || v52 == 0)
  {
    v52 = v44;
  }

  v54 = *a1;
  v55 = *(*a1 + 500);
  if ((v52 - v55) > 0 && v55 != 0)
  {
    v52 = *(*a1 + 500);
  }

  v57 = *(v54 + 608);
  if ((v52 - v57) > 0 && v57 != 0)
  {
    v52 = *(v54 + 608);
  }

  v422 = v52;
  v59 = *(v54 + 492);
  if (v59)
  {
    if (v59 - v28 < 0)
    {
      v61 = *(v54 + 172);
      if (v61 != *v417 || memcmp((v54 + 173), (a1 + 10281), v61))
      {
        LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Name Conflict: Updated Computer Name from %#s to %#s", v47, v48, v49, v50, v51, v54 + 172);
        mDNSPreferencesSetNames(1, (*a1 + 172), v417);
        v62 = *a1;
        v63 = *v417;
        v64 = v417[1];
        v65 = v417[2];
        *(v62 + 220) = v417[3];
        *(v62 + 204) = v65;
        *(v62 + 188) = v64;
        *(v62 + 172) = v63;
        v54 = *a1;
      }

      v66 = *(v54 + 108);
      if (v66 != *v416 || memcmp((v54 + 109), (a1 + 10345), v66))
      {
        LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Name Conflict: Updated Local Hostname from %#s.local to %#s.local", v47, v48, v49, v50, v51, v54 + 108);
        mDNSPreferencesSetNames(2, (*a1 + 108), v416);
        v67 = *a1;
        *(v67 + 496) = 0;
        v68 = *v416;
        v69 = v416[1];
        v70 = v416[2];
        *(v67 + 156) = v416[3];
        *(v67 + 140) = v70;
        *(v67 + 124) = v69;
        *(v67 + 108) = v68;
        v54 = *a1;
      }

      *(v54 + 492) = 0;
    }

    else
    {
      v60 = v422;
      if ((v422 - v59) > 0)
      {
        v60 = *(v54 + 492);
      }

      v422 = v60;
    }
  }

  v71 = mDNS_TimeNow(mDNSStorage, v45, v46, v47, v48, v49, v50, v51);
  v77 = all_requests;
  if (!all_requests)
  {
    goto LABEL_118;
  }

  v78 = v71;
  if (v71 <= 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = v71;
  }

  v435 = v71 + 1000;
  v80 = &all_requests;
  do
  {
    timeout.tv_sec = v77;
    if (*(v77 + 112) == resolve_termination_callback)
    {
      v90 = *(v77 + 136);
      v91 = *(v90 + 1408);
      if (v91)
      {
        if (((v78 - v91) & 0x80000000) == 0)
        {
          *(v90 + 1408) = 0;
          v92 = *(v90 + 1421) || *(v90 + 1392) != 0;
          v93 = *(v90 + 1422) || *(v90 + 1400) != 0;
          if (v92 && v93)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Client application PID[%d](%s) has received results for DNSServiceResolve(%##s) yet remains active over two minutes.", v72, v73, v74, v75, v76, *(v77 + 188));
          }
        }
      }
    }

    v82 = (v77 + 96);
    v81 = *(v77 + 96);
    if (!v81)
    {
      goto LABEL_106;
    }

    while (1)
    {
      if (v81->i64[0])
      {
        v81[2].i32[3] |= 0x1000000u;
      }

      v83 = v81->u32[3];
      v84 = (v81->i32[2] - v83);
      v81[1] = vrev32q_s8(v81[1]);
      v81[2].i32[2] = bswap32(v81[2].u32[2]);
      v85 = send(*(v77 + 184), &v81[1].i8[v83], v84, 0);
      v81[1] = vrev32q_s8(v81[1]);
      v81[2].i32[2] = bswap32(v81[2].u32[2]);
      if (v85 < 0)
      {
        break;
      }

LABEL_73:
      v86 = v81->i32[2];
      v87 = v81->i32[3] + v85;
      v81->i32[3] = v87;
      if (v87 != v86)
      {
        goto LABEL_95;
      }

      v88 = *v82;
      if (!*v82)
      {
        *(v77 + 244) = 0;
        *(v77 + 293) = 0;
        goto LABEL_106;
      }

      v89 = *v88;
      *v82 = *v88;
      if (!v89)
      {
        *(v77 + 104) = v82;
      }

      free(v88);
      v81 = *(v77 + 96);
      *(v77 + 244) = 0;
      *(v77 + 293) = 0;
      if (!v81)
      {
        goto LABEL_106;
      }
    }

    if (*__error() == 4 || *__error() == 35)
    {
      LODWORD(v85) = 0;
      goto LABEL_73;
    }

    if (*__error() == 32)
    {
      *(v77 + 291) = 4;
      if (mDNS_LoggingEnabled == 1)
      {
        v411 = *(v77 + 188);
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) because connection is terminated by the client", v94, v95, v96, v97, v98, *(v77 + 184));
      }
    }

    else
    {
      v429 = v81->u32[2];
      v432 = mDNSLogCategory_Default;
      v99 = v79;
      v100 = *(v77 + 184);
      v101 = a1;
      v102 = *__error();
      v103 = __error();
      strerror(*v103);
      a1 = v101;
      v79 = v99;
      LogMsgWithLevel(v432, OS_LOG_TYPE_DEFAULT, "send_msg ERROR: failed to write %u of %d bytes to fd %d errno %d (%s)", v104, v105, v106, v107, v108, v84);
      v12 = v420;
      v412 = *(v77 + 188);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) because of error - aborting connection", v109, v110, v111, v112, v113, *(v77 + 184));
      LogClientInfo(v77);
    }

    abort_request(v77);
LABEL_95:
    if (*v82)
    {
      v114 = v422;
      if ((v422 - v78) > 1000)
      {
        v114 = v435;
      }

      v422 = v114;
      v115 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }
      }

      else
      {
        v115 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_103:
          v116 = *(v77 + 200);
          *block = 67109376;
          *&block[4] = v116;
          *&block[8] = 1024;
          *&block[10] = v422 - v78;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[R%u] Could not send all replies. Will try again in %d ticks.", block, 0xEu);
        }
      }

      if (BYTE1(dword_10016D2A4))
      {
        *(v77 + 244) = 0;
      }

      else
      {
        v117 = *(v77 + 244);
        if (v117)
        {
          if ((v78 - v117) >= 10000 * *(v77 + 293) + 10000)
          {
            v118 = -1;
            do
            {
              v82 = *v82;
              ++v118;
            }

            while (v82);
            v413 = *(v77 + 188);
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) after %ld seconds, %d repl%s waiting", v72, v73, v74, v75, v76, *(v77 + 184));
            v119 = ++*(v77 + 293);
            if (v119 >= 0x3C)
            {
              v414 = *(v77 + 188);
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Client PID[%d](%s) unresponsive; aborting connection", v72, v73, v74, v75, v76, *(v77 + 184));
              LogClientInfo(v77);
              abort_request(v77);
            }
          }
        }

        else
        {
          *(v77 + 244) = v79;
        }
      }
    }

LABEL_106:
    if ((*(v77 + 184) & 0x80000000) != 0)
    {
      *v80 = *(v77 + 16);
      request_state_forget(&timeout);
    }

    else
    {
      v80 = (v77 + 16);
    }

    v77 = *v80;
  }

  while (*v80);
LABEL_118:
  if (dnssd_server_idle_s_once != -1)
  {
    dispatch_once(&dnssd_server_idle_s_once, &__block_literal_global_16);
  }

  v120 = 0x100178000;
  dispatch_source_merge_data(dnssd_server_idle_s_source, 1uLL);
  v121 = _os_feature_enabled_impl();
  if (!v121)
  {
    goto LABEL_215;
  }

  v129 = mDNS_TimeNow(mDNSStorage, v122, v123, v124, v125, v126, v127, v128);
  if (v129 <= 1)
  {
    v130 = 1;
  }

  else
  {
    v130 = v129;
  }

  if (!s_interface_head_0)
  {
    goto LABEL_196;
  }

  v131 = s_interface_head_0;
  v430 = 0;
  v421 = 0;
  v132 = 0;
  while (2)
  {
    v423 = *v131;
    v424 = v132;
    v430 += 40;
    v425 = v131;
    v133 = (v131 + 1);
    v134 = v131[1];
    if (!v134)
    {
      goto LABEL_165;
    }

    v427 = 0;
    v135 = 0;
    v426 = (v131 + 1);
    while (2)
    {
      v136 = *v134;
      v138 = (v134 + 1);
      v137 = v134[1];
      if (!v137)
      {
        goto LABEL_150;
      }

      v139 = 0;
      v140 = 0;
      v433 = *v134;
      while (2)
      {
        v141 = *v137;
        v142 = v130 - *(v137 + 3);
        v143 = "aged";
        if (v142 > 86399999 || v142 >= 10000 && (v143 = "pending", (v137[16] & 1) != 0))
        {
          if (v137[18])
          {
            v137[19] = 0;
            if (v137[16] == 1)
            {
              v137[16] = 0;
              ++sUAPresence_Count_qhashes_not_found;
              v144 = _unicast_assist_cache_log();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
              {
                v149 = *(v137 + 2);
                *block = 136316163;
                *&block[4] = v143;
                *&block[12] = 2160;
                *&block[14] = 1752392040;
                *&block[22] = 1045;
                *&block[24] = 20;
                *&block[28] = 2101;
                *&block[30] = v134 + 2;
                *&block[38] = 1024;
                *&block[40] = v149;
                _os_log_debug_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEBUG, "unicast assist qhash (%s) keeping presence - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P qhash %x", block, 0x2Cu);
              }
            }

            goto LABEL_138;
          }

          v145 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
          {
            v148 = *(v137 + 2);
            *block = 136316163;
            *&block[4] = v143;
            *&block[12] = 2160;
            *&block[14] = 1752392040;
            *&block[22] = 1045;
            *&block[24] = 20;
            *&block[28] = 2101;
            *&block[30] = v134 + 2;
            *&block[38] = 1024;
            *&block[40] = v148;
            _os_log_debug_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEBUG, "unicast assist qhash flushed (%s) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P qhash %x", block, 0x2Cu);
          }

          v146 = *v138;
          if (*v138 == v137)
          {
            v147 = v134 + 1;
          }

          else
          {
            v146 = *v139;
            v147 = v139;
          }

          *v147 = *v146;
          free(v137);
          v137 = 0;
        }

        else
        {
LABEL_138:
          ++v140;
        }

        if (v137)
        {
          v139 = v137;
        }

        v137 = v141;
        if (v141)
        {
          continue;
        }

        break;
      }

      v133 = v426;
      v136 = v433;
      if (v140)
      {
        ++v427;
        v430 += 24 * v140 + 40;
        goto LABEL_156;
      }

LABEL_150:
      v150 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
      {
        v155 = v425[3];
        v156 = *(v425 + 8);
        *block = 141559043;
        *&block[4] = 1752392040;
        *&block[12] = 1045;
        *&block[14] = 20;
        *&block[18] = 2101;
        *&block[20] = v134 + 2;
        *&block[28] = 1024;
        *&block[30] = v155;
        *&block[34] = 1024;
        *&block[36] = v156;
        _os_log_debug_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEBUG, "unicast assist record flushed (0 qhashes) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %2.2u ifhash %x", block, 0x28u);
      }

      v151 = *v133;
      if (*v133 == v134)
      {
        v154 = *v151;
        *v133 = *v151;
        v153 = v133;
        if (!v154)
        {
LABEL_154:
          v425[2] = v153;
        }
      }

      else
      {
        v152 = **v135;
        *v135 = v152;
        v153 = v135;
        if (!v152)
        {
          goto LABEL_154;
        }
      }

      _unicast_assist_cache_free_addr(v134);
      v134 = 0;
LABEL_156:
      if (v134)
      {
        v135 = v134;
      }

      v134 = v136;
      if (v136)
      {
        continue;
      }

      break;
    }

    if (v427)
    {
      v421 += v427;
      v120 = 0x100178000;
      v132 = v424;
      v157 = v425;
      goto LABEL_170;
    }

    v120 = &unk_100178000;
LABEL_165:
    v132 = v424;
    v158 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
    {
      v161 = v425[3];
      v162 = *(v425 + 8);
      *block = 67109376;
      *&block[4] = v161;
      *&block[8] = 1024;
      *&block[10] = v162;
      _os_log_debug_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEBUG, "unicast assist interface flushed (0 addrs) - interface %2.2u ifhash %x", block, 0xEu);
    }

    v159 = &s_interface_head_0;
    v160 = s_interface_head_0;
    if (s_interface_head_0 != v425)
    {
      v160 = *v424;
      v159 = v424;
    }

    *v159 = *v160;
    _unicast_assist_cache_free_interface(v425);
    v157 = 0;
LABEL_170:
    if (v157)
    {
      v132 = v157;
    }

    v131 = v423;
    if (v423)
    {
      continue;
    }

    break;
  }

  a1 = v418;
  v12 = v420;
  if (v430 > 0x8000)
  {
    v163 = 0;
    v164 = v421;
    while (1)
    {
      v165 = a1;
      v166 = s_interface_head_0;
      if (!s_interface_head_0)
      {
        break;
      }

      v167 = 0;
      v168 = 0;
      do
      {
        v169 = v166[1];
        if (v169)
        {
          v170 = *(v169 + 8);
          if (v170)
          {
            v171 = v130 - *(v170 + 12);
            if (v171 > v167)
            {
              v168 = v166;
              v167 = v171;
            }
          }
        }

        v166 = *v166;
      }

      while (v166);
      if (!v168)
      {
        break;
      }

      v173 = (v168 + 1);
      v172 = v168[1];
      if (!v172)
      {
        break;
      }

      v174 = v167 / 0x3E8u;
      v175 = v172 + 1;
      v163 += 16;
      do
      {
        v175 = *v175;
        v163 += 24;
      }

      while (v175);
      v176 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
      {
        v177 = v168[3];
        v178 = *(v168 + 8);
        *block = 67110146;
        *&block[4] = v174;
        *&block[8] = 1042;
        *&block[10] = 20;
        *&block[14] = 2098;
        *&block[16] = v172 + 2;
        *&block[24] = 1024;
        *&block[26] = v177;
        *&block[30] = 1024;
        *&block[32] = v178;
        _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_INFO, "unicast assist cache maintenance record flushed (memory) - age %ds %{public, mdnsresponder:ip_addr}.20P %2.2u ifhash %x", block, 0x24u);
      }

      v179 = **v173;
      *v173 = v179;
      if (!v179)
      {
        v168[2] = v173;
      }

      _unicast_assist_cache_free_addr(v172);
      --v164;
      v180 = v430 - v163;
      a1 = v418;
      v12 = v420;
      if (v430 - v163 <= 0x8000)
      {
        goto LABEL_193;
      }
    }

    v180 = v430 - v163;
    a1 = v165;
LABEL_193:
    v181 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
    {
      *block = 134218752;
      *&block[4] = v430;
      *&block[12] = 2048;
      *&block[14] = v421;
      *&block[22] = 2048;
      *&block[24] = v180;
      *&block[32] = 2048;
      *&block[34] = v164;
      _os_log_debug_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEBUG, "unicast assist cache maintenance - (Was) size %zu count %zu | (Is) size %zu count %zu", block, 0x2Au);
    }
  }

LABEL_196:
  v182 = objc_autoreleasePoolPush();
  if (v130 / 1000 != _unicast_assist_presence_idle_last_idle)
  {
    _unicast_assist_presence_idle_last_idle = v130 / 1000;
    if (_unicast_assist_should_activate_presence_s_once != -1)
    {
      dispatch_once(&_unicast_assist_should_activate_presence_s_once, &__block_literal_global_322);
    }

    v183 = s_presence;
    if (_unicast_assist_should_activate_presence_should_activate == 1 && !s_presence)
    {
      v184 = objc_alloc_init(UAPresenceManager);
      v185 = s_presence;
      s_presence = v184;

      goto LABEL_214;
    }

    if (s_presence)
    {
      if (s_shared_cache_enabled == 1)
      {
        v186 = [s_presence presenceReady];
        v183 = s_presence;
        if (v186)
        {
          if ([s_presence presenceSubscribed])
          {
            v183 = s_presence;
          }

          else
          {
            v187 = _unicast_assist_network_ready_for_presence();
            v183 = s_presence;
            if (v187)
            {
              [s_presence retainSubscription];
              ++sUAPresence_Count_enabled;
              goto LABEL_214;
            }
          }
        }
      }
    }

    if (![v183 presenceSubscribed] || s_shared_cache_enabled == 1 && ((v130 - objc_msgSend(s_presence, "lastUnsubscribeTime")) < 21600001 || (_unicast_assist_network_ready_for_presence() & 1) != 0))
    {
      [s_presence idlePresence:v130];
    }

    else
    {
      [s_presence setLastUnsubscribeTime:v130];
      [s_presence releaseSubscriptions];
    }
  }

LABEL_214:
  objc_autoreleasePoolPop(v182);
LABEL_215:
  v195 = mDNSPlatformRawTime(v121, v122, v123, v124, v125, v126, v127, v128) - v419;
  if (v195 >= WatchDogReportingThreshold)
  {
    v196 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v120 + 3480))
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_221;
      }
    }

    else
    {
      v196 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_221:
        *block = 67109120;
        *&block[4] = v195;
        _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "WARNING: Idle task took %d ms to complete", block, 8u);
      }
    }
  }

  v197 = mDNS_TimeNow(a1, v188, v189, v190, v191, v192, v193, v194);
  v198 = *(a1 + 76);
  if (v198)
  {
    v199 = xmmword_100170360;
    if (xmmword_100170360)
    {
      while (1)
      {
        v200 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != *(v120 + 3480))
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_232;
        }

LABEL_233:
        if (mDNS_LoggingEnabled == 1)
        {
          usleep(0x2710u);
        }

        v199 = *v199;
        if (!v199)
        {
          v198 = *(a1 + 76);
          goto LABEL_237;
        }
      }

      v200 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_233;
      }

LABEL_232:
      GetRRDisplayString_rdb(v199 + 8, (*(v199 + 6) + 4), v12);
      *block = 141558275;
      *&block[4] = 1752392040;
      *&block[12] = 2085;
      *&block[14] = v12;
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "Cannot exit yet; Resource Record still exists: %{sensitive, mask.hash}s", block, 0x16u);
      goto LABEL_233;
    }

LABEL_237:
    if (v197 - v198 >= 0 || !*(a1 + 12616))
    {
      goto LABEL_512;
    }

    v203 = v422;
    if ((v422 - v198) >= 0)
    {
      v203 = v198;
    }

    v422 = v203;
  }

  if (!*(a1 + 152))
  {
    goto LABEL_375;
  }

  mDNS_Lock_(mDNSStorage, "mDNSCoreReadyForSleep", 8575);
  if (!qword_10016D2AC && (HIDWORD(qword_10016D2AC) - v197 < 1 || dword_10016D2CC - v197 <= 0))
  {
    dword_10016D2CC = v197 + 0x40000000;
    v206 = xmmword_10016D2D8;
    if (xmmword_10016D2D8)
    {
      while (!*(v206 + 340) || !*(v206 + 632) || *(v206 + 272) || !*(v206 + 112))
      {
        v206 = *(v206 + 8);
        if (!v206)
        {
          goto LABEL_253;
        }
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v386 = mDNSLogCategory_Default;
        v387 = v206 + 376;
        DNSTypeName(*(v206 + 342));
        LogMsgWithLevel(v386, OS_LOG_TYPE_DEFAULT, "mDNSCoreReadyForSleep: waiting for LLQ %##s (%s)", v388, v389, v390, v391, v392, v387);
      }
    }

    else
    {
LABEL_253:
      v207 = xmmword_100170360;
      if (!xmmword_100170360)
      {
LABEL_260:
        v436 = 0;
        v204 = 1;
        v205 = 8640;
LABEL_261:
        mDNS_Unlock_(mDNSStorage, "mDNSCoreReadyForSleep", v205);
        v216 = BYTE1(dword_10016D2A4);
        if (!BYTE1(dword_10016D2A4) || (v204 & 1) != 0)
        {
          *(mDNSStorage[0] + 600) = 0;
          if (!v216)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Sleep request was canceled with %d ticks remaining", v211, v212, v213, v214, v215, HIDWORD(qword_10016D2AC) - v197);
            v273 = 1;
LABEL_368:
            if (mDNS_LoggingEnabled == 1)
            {
              v311 = "IOCancelPowerChange";
              if (v273)
              {
                v311 = "IOAllowPowerChange";
              }

              v312 = *(mDNSStorage[0] + 592);
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: %s(%lX) %s at %ld (%d ticks remaining)", v274, v275, v276, v277, v278, v311);
            }

            HIDWORD(qword_10016D2AC) = 0;
            dword_10016D2B4 = time(0);
            v313 = *(mDNSStorage[0] + 568);
            v314 = *(mDNSStorage[0] + 592);
            if (v273)
            {
              IOAllowPowerChange(v313, v314);
            }

            else
            {
              IOCancelPowerChange(v313, v314);
            }

            goto LABEL_375;
          }

LABEL_266:
          if (HIBYTE(dword_10016D2A4) && (HaveAdvertisedMulticastServices = mDNSCoreHaveAdvertisedMulticastServices(xmmword_100170360), HaveAdvertisedMulticastServices))
          {
            *block = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetDHCP);
            if (!*block)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: SCDynamicStoreKeyCreateNetworkServiceEntity failed\n", v217, v218, v219, v220, v221, v409);
              LODWORD(v120) = 86400;
              goto LABEL_319;
            }

            v227 = CFArrayCreate(0, block, 1, &kCFTypeArrayCallBacks);
            if (*block)
            {
              CFRelease(*block);
              *block = 0;
            }

            LODWORD(v120) = 86400;
            if (v227)
            {
              v228 = SCDynamicStoreCreate(0, @"DHCP-LEASES", 0, 0);
              LODWORD(v120) = 86400;
              if (!v228)
              {
                goto LABEL_318;
              }

              v229 = v228;
              v230 = SCDynamicStoreCopyMultiple(v228, 0, v227);
              LODWORD(v120) = 86400;
              if (!v230)
              {
                goto LABEL_317;
              }

              v231 = v230;
              Count = CFDictionaryGetCount(v230);
              v120 = 86400;
              if (Count < 1)
              {
                goto LABEL_316;
              }

              v233 = Count;
              if (!(Count >> 61))
              {
                v431 = v229;
                v434 = v231;
                v234 = malloc_type_calloc(Count, 8uLL, 0x483A91E7uLL);
                if (v234)
                {
                  v235 = v234;
                  v428 = v227;
                  CFDictionaryGetKeysAndValues(v231, 0, v234);
                  v236 = 0;
                  LODWORD(v120) = 86400;
                  while (1)
                  {
                    v237 = v235[v236];
                    if (v237)
                    {
                      break;
                    }

LABEL_290:
                    if (v233 == ++v236)
                    {
                      free(v235);
                      v227 = v428;
                      v229 = v431;
                      v231 = v434;
LABEL_316:
                      CFRelease(v231);
LABEL_317:
                      CFRelease(v229);
LABEL_318:
                      CFRelease(v227);
                      goto LABEL_319;
                    }
                  }

                  LeaseStartTime = DHCPInfoGetLeaseStartTime(v235[v236]);
                  OptionData = DHCPInfoGetOptionData(v237, 0x33u);
                  v245 = OptionData;
                  if (LeaseStartTime)
                  {
                    v246 = OptionData == 0;
                  }

                  else
                  {
                    v246 = 1;
                  }

                  if (v246)
                  {
                    v247 = mDNSLogCategory_Default;
                    if (!OptionData)
                    {
                      goto LABEL_289;
                    }
                  }

                  else
                  {
                    if (CFDataGetLength(OptionData) > 3)
                    {
                      BytePtr = CFDataGetBytePtr(v245);
                      if (BytePtr)
                      {
                        v254 = BytePtr;
                        Current = CFAbsoluteTimeGetCurrent();
                        v261 = Current - CFDateGetAbsoluteTime(LeaseStartTime);
                        v262 = fmin(v261, 4294967300.0);
                        if (v261 < 0.0)
                        {
                          v262 = 0;
                        }

                        v263 = bswap32(*v254);
                        v264 = v263 - v262;
                        if (v263 < v262)
                        {
                          v264 = 0;
                        }

                        if (v264 < 0x3D)
                        {
                          v265 = 54;
                        }

                        else
                        {
                          v265 = v264 - v264 / 0xA;
                        }

                        if (mDNS_LoggingEnabled == 1)
                        {
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCP Address Lease Elapsed %6u Lifetime %6u Remaining %6u Wake %6u", v256, v257, v258, v259, v260, v262);
                        }

                        if (v120 >= v265)
                        {
                          LODWORD(v120) = v265;
                        }
                      }

                      else
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: CFDataGetBytePtr %ld failed", v249, v250, v251, v252, v253, v236);
                      }

                      goto LABEL_290;
                    }

                    v247 = mDNSLogCategory_Default;
                  }

                  CFDataGetLength(v245);
LABEL_289:
                  LogMsgWithLevel(v247, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: SCDynamicStoreCopyDHCPInfo index %d failed CFDateRef start %p CFDataRef lease %p CFDataGetLength(lease) %d", v240, v241, v242, v243, v244, v236);
                  goto LABEL_290;
                }
              }

              __break(1u);
LABEL_512:
              v408 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v120 + 3480))
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_519;
                }

                *block = 0;
              }

              else
              {
                v408 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_519;
                }

                *block = 0;
              }

              _os_log_impl(&_mh_execute_header, v408, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit", block, 2u);
LABEL_519:
              mDNS_FinalExit();
              usleep(0x3E8u);
              exit(0);
            }

LABEL_319:
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: DHCP Wake %d", v222, v223, v224, v225, v226, v120);
            }

            v280 = v197 + 7200000;
            for (i = xmmword_100170B98; i; i = *i)
            {
              if (*(i + 172))
              {
                v282 = *(i + 2);
                if (v282)
                {
                  if (v282 - v197 >= 4001)
                  {
                    v283 = (v282 - v197) / -10 + v282;
                    if (v280 - v283 > 0)
                    {
                      v280 = v283;
                    }

                    if (mDNS_LoggingEnabled == 1)
                    {
                      *(i + 172);
                      v284 = bswap32(*(i + 87)) >> 16;
                      v285 = bswap32(*(i + 80)) >> 16;
                      v286 = *(i + 3);
                      *(i + 4);
                      v415 = *(i + 42);
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: %p %s Int %5d Ext %5d Err %d Retry %5d Interval %5d Expire %5d Wake %5d", v222, v223, v224, v225, v226, i);
                    }
                  }
                }
              }
            }

            for (j = xmmword_100170360; j; j = *j)
            {
              v288 = *(j + 88);
              if (v288 && v288 - v197 >= 4001)
              {
                v289 = (v288 - v197) / -10 + v288;
                if (v280 - v289 > 0)
                {
                  v280 = v289;
                }

                if (mDNS_LoggingEnabled == 1)
                {
                  v290 = mDNSLogCategory_Default;
                  v291 = 274877907 * (*(j + 70) - v197 + *(j + 71));
                  GetRRDisplayString_rdb(j + 8, (j[6] + 4), word_1001789D0);
                  v12 = v420;
                  a1 = v418;
                  LogMsgWithLevel(v290, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: %p Int %7d Next %7d Expire %7d Wake %7d %s", v292, v293, v294, v295, v296, j);
                }
              }
            }

            if ((v280 - v197) / 1000 >= v120)
            {
              v297 = v120;
            }

            else
            {
              v297 = (v280 - v197) / 1000;
            }

            if (v280 - v197 <= -1000)
            {
              v298 = (v280 - v197) / 1000;
            }

            else
            {
              v298 = v297;
            }

            if (v298 <= 60)
            {
              v298 = 60;
            }

            if (v298 >= 3600)
            {
              v299 = 3600;
            }

            else
            {
              v299 = v298;
            }

            if (v436)
            {
              v300 = v299;
            }

            else
            {
              v300 = v298;
            }

            mdns_power_cancel_all_events(@"com.apple.mDNSResponder");
            v301 = mdns_power_schedule_wake(v300);
            v307 = v301;
            if (v301)
            {
              v120 = &unk_100178000;
              if (v301 != -536870184)
              {
                goto LABEL_365;
              }

              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds unsuccessful; retrying with longer intervals", v302, v303, v304, v305, v306, v300);
              do
              {
                v308 = v300 + 3;
                if (v300 + 3 < 0)
                {
                  v308 = v300 + 6;
                }

                v309 = v308 >> 2;
                if (v300 < 20)
                {
                  v309 = 1;
                }

                v300 += v309;
                v310 = mdns_power_schedule_wake(v300);
              }

              while (v310 == -536870184);
              if (v310)
              {
LABEL_365:
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds unsuccessful: %d %X", v302, v303, v304, v305, v306, v300);
              }

              else if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested later wakeup in %d seconds; will also attempt IOCancelPowerChange", v302, v303, v304, v305, v306, v300);
              }
            }

            else
            {
              v120 = 0x100178000;
              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds", v302, v303, v304, v305, v306, v300);
              }
            }

            HaveAdvertisedMulticastServices = time(0);
            *(mDNSStorage[0] + 600) = v300 + HaveAdvertisedMulticastServices;
            v273 = v307 == 0;
          }

          else
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v266 = mDNSLogCategory_Default;
              if (HIBYTE(dword_10016D2A4))
              {
                v267 = "is";
              }

              else
              {
                v267 = "not";
              }

              mDNSCoreHaveAdvertisedMulticastServices(*(&dword_10016D2A4 + &loc_1000030B8 + 3));
              LogMsgWithLevel(v266, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Not scheduling wakeup: SystemWakeOnLAN %s enabled; %s advertised services", v268, v269, v270, v271, v272, v267);
            }

            v273 = 1;
          }

          BYTE1(dword_10016D2A4) = 2;
          mDNSMacOSXNetworkChanged(HaveAdvertisedMulticastServices, v209, v210, v211, v212, v213, v214, v215);
          goto LABEL_368;
        }

        if (v197 - HIDWORD(qword_10016D2AC) >= 0)
        {
          *(mDNSStorage[0] + 600) = 0;
          goto LABEL_266;
        }

        v279 = v422;
        if ((v422 - *(a1 + 152)) >= 0)
        {
          v279 = *(a1 + 152);
        }

        v422 = v279;
LABEL_375:
        v315 = v422 - v197;
        if ((v422 - v197) <= 1)
        {
          if (++KQueueLoop_RepeatedBusy < 1000)
          {
            v315 = 1;
LABEL_439:
            pthread_mutex_unlock(&stru_100164CC8);
            if (*(*a1 + 104))
            {
              SetLowWater(*a1 + 8, 0x10000);
              if (v315 >= 125)
              {
                v315 = 125;
              }
            }

            timeout.tv_sec = v315 / 1000;
            timeout.tv_nsec = 1000000 * (v315 % 1000);
            if ((kevent(KQueueFD, 0, 0, &eventlist, 1, &timeout) & 0x80000000) == 0)
            {
              goto LABEL_450;
            }

            v355 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v120 + 3480))
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
LABEL_448:
                v356 = KQueueFD;
                v357 = *__error();
                v358 = __error();
                v359 = strerror(*v358);
                *block = 67109634;
                *&block[4] = v356;
                *&block[8] = 1024;
                *&block[10] = v357;
                *&block[14] = 2082;
                *&block[16] = v359;
                _os_log_impl(&_mh_execute_header, v355, OS_LOG_TYPE_DEFAULT, "kevent(%d) failed errno %d (%{public}s)", block, 0x18u);
              }
            }

            else
            {
              v355 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_448;
              }
            }

            sleep(1u);
LABEL_450:
            pthread_mutex_lock(&stru_100164CC8);
            if (*(*a1 + 104))
            {
              SetLowWater(*a1 + 8, 1);
              *(*a1 + 104) = 0;
            }

            v360 = 0;
            v361 = 0;
            while (1)
            {
              do
              {
                while (1)
                {
                  v4 = kevent(KQueueFD, 0, 0, &eventlist, 1, &KQueueLoop_zero_timeout);
                  if (!v4)
                  {
                    if (v360)
                    {
                      EnableSocketReadEvent(*(*a1 + 24), (*a1 + 32));
                    }

                    if (v361)
                    {
                      EnableSocketReadEvent(*(*a1 + 56), (*a1 + 64));
                    }

                    v2 = &unk_100178000;
                    goto LABEL_20;
                  }

                  if (v4 > 1)
                  {
                    goto LABEL_501;
                  }

                  if ((v4 & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (*__error() != 4)
                  {
LABEL_501:
                    v403 = *__error();
                    v404 = mDNSLogCategory_Default;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v405 = mDNSLogCategory_Default == mDNSLogCategory_State;
                    }

                    else
                    {
                      v405 = 1;
                    }

                    if (v405)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_509;
                      }
                    }

                    else
                    {
                      v404 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_509:
                        v407 = strerror(v403);
                        *block = 67109378;
                        *&block[4] = v403;
                        *&block[8] = 2082;
                        *&block[10] = v407;
                        _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "ERROR: KQueueLoop - kevent failed errno %d (%{public}s)", block, 0x12u);
                      }
                    }

                    exit(v403);
                  }
                }
              }

              while (v4 != 1);
              udata = eventlist.udata;
              v363 = mDNSPlatformRawTime(v4, v5, v6, v7, v8, v9, v10, v11);
              v364 = udata[2];
              v365 = (*udata)(LODWORD(eventlist.ident), eventlist.filter, udata[1], eventlist.flags >> 15);
              v373 = mDNSPlatformRawTime(v365, v366, v367, v368, v369, v370, v371, v372) - v363;
              if (v373 < WatchDogReportingThreshold)
              {
                goto LABEL_466;
              }

              v374 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_466;
                }
              }

              else
              {
                v374 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_466;
                }
              }

              *block = 136446466;
              *&block[4] = v364;
              *&block[12] = 1024;
              *&block[14] = v373;
              _os_log_impl(&_mh_execute_header, v374, OS_LOG_TYPE_DEFAULT, "WARNING: %{public}s took %d ms to complete", block, 0x12u);
LABEL_466:
              if (eventlist.filter == -1)
              {
                v375 = *a1 + 32;
                if (udata == v375 || udata == (*a1 + 64))
                {
                  ident = eventlist.ident;
                  v377 = KQueueSet(eventlist.ident, 8u, -1, udata);
                  v378 = mDNSLogCategory_Default;
                  if (mDNS_SensitiveLoggingEnableCount)
                  {
                    v379 = mDNSLogCategory_Default == mDNSLogCategory_State;
                  }

                  else
                  {
                    v379 = 1;
                  }

                  v380 = v379;
                  if (v377)
                  {
                    v381 = v377;
                    if (v380)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                      {
                        *block = 67109376;
                        *&block[4] = ident;
                        *&block[8] = 2048;
                        *&block[10] = v381;
                        v382 = v378;
                        goto LABEL_484;
                      }
                    }

                    else
                    {
                      v384 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                      {
                        *block = 67109376;
                        *&block[4] = ident;
                        *&block[8] = 2048;
                        *&block[10] = v381;
                        v382 = v384;
LABEL_484:
                        _os_log_impl(&_mh_execute_header, v382, OS_LOG_TYPE_ERROR, "Failed to disable read kevent for mDNS socket -- socket: %d, error: %{mdns:err}ld", block, 0x12u);
                      }
                    }
                  }

                  else
                  {
                    if (v380)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                      {
                        *block = 67109120;
                        *&block[4] = ident;
                        v383 = v378;
LABEL_487:
                        _os_log_impl(&_mh_execute_header, v383, OS_LOG_TYPE_DEBUG, "Temporarily disabled read kevent for mDNS socket -- socket: %d", block, 8u);
                      }
                    }

                    else
                    {
                      v385 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        *block = 67109120;
                        *&block[4] = ident;
                        v383 = v385;
                        goto LABEL_487;
                      }
                    }

                    if (udata == v375)
                    {
                      v360 = 1;
                    }

                    else
                    {
                      v361 = 1;
                    }
                  }
                }
              }
            }
          }

          mDNS_Lock_(mDNSStorage, "ShowTaskSchedulingError", 5636);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** Continuously busy for more than a second", v316, v317, v318, v319, v320, v409);
          if (!*(&xmmword_10016D2D8 + 1) || (v326 = *(*(&xmmword_10016D2D8 + 1) + 204)) != 0 && dword_10016D258 - v326 < 0)
          {
            v334 = 0;
          }

          else
          {
            v327 = mDNSLogCategory_Default;
            v328 = DWORD2(xmmword_10016D2D8) + 376;
            DNSTypeName(*(*(&xmmword_10016D2D8 + 1) + 342));
            LogMsgWithLevel(v327, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewQuestion %##s (%s)", v329, v330, v331, v332, v333, v328);
            v334 = 1;
          }

          if (qword_10016D2F8)
          {
            ++v334;
            v335 = mDNSLogCategory_Default;
            v336 = qword_10016D2F8 + 376;
            DNSTypeName(*(qword_10016D2F8 + 342));
            LogMsgWithLevel(v335, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalOnlyQuestions %##s (%s)", v337, v338, v339, v340, v341, v336);
          }

          v342 = qword_100170370;
          if (qword_100170370)
          {
            while (*(v342 + 8) == 2)
            {
              v342 = *v342;
              if (!v342)
              {
                goto LABEL_390;
              }
            }

            ++v334;
            v343 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v342 + 8), (*(v342 + 48) + 4), word_1001789D0);
            LogMsgWithLevel(v343, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalRecords %s", v344, v345, v346, v347, v348, word_1001789D0);
          }

LABEL_390:
          if (byte_100170380)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalOnlyRecords", v321, v322, v323, v324, v325, v410);
          }

          if (xmmword_100170D20)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: SPSProxyListChanged", v321, v322, v323, v324, v325, v410);
          }

          if (dword_10016D2A4)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: LocalRemoveEvents", v321, v322, v323, v324, v325, v410);
          }

          v349 = dword_10016D258;
          if (dword_10016D258 - dword_1001703A0 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextuDNSEvent %d", v321, v322, v323, v324, v325, dword_10016D258 - dword_1001703A0);
            v349 = dword_10016D258;
          }

          if (v349 - dword_10016D280 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledNATOp %d", v321, v322, v323, v324, v325, v349 - dword_10016D280);
            v349 = dword_10016D258;
          }

          if (dword_1001703A4 && v349 - dword_1001703A4 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextSRVUpdate %d", v321, v322, v323, v324, v325, v349 - dword_1001703A4);
            v349 = dword_10016D258;
          }

          if (v349 - dword_10016D270 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextCacheCheck %d", v321, v322, v323, v324, v325, v349 - dword_10016D270);
            v349 = dword_10016D258;
          }

          if (v349 - dword_10016D284 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledSPS %d", v321, v322, v323, v324, v325, v349 - dword_10016D284);
            v349 = dword_10016D258;
          }

          v350 = v349 - dword_10016D288;
          if (v350 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledKA %d", v321, v322, v323, v324, v325, v350);
          }

          v351 = qword_10016D2AC;
          if (qword_10016D2AC || HIDWORD(qword_10016D2AC) && dword_10016D258 - dword_10016D2CC >= 0 && (++v334, LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledSPRetry %d", v321, v322, v323, v324, v325, dword_10016D258 - dword_10016D2CC), (v351 = qword_10016D2AC) != 0))
          {
            v352 = dword_10016D258 - v351;
            if (v352 >= 0)
            {
              ++v334;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->DelaySleep %d", v321, v322, v323, v324, v325, v352);
            }
          }

          v353 = dword_10016D258;
          if (qword_10016D268 && dword_10016D258 - qword_10016D268 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->SuppressQueries %d", v321, v322, v323, v324, v325, dword_10016D258 - qword_10016D268);
            v353 = dword_10016D258;
          }

          if (HIDWORD(qword_10016D268) && v353 - HIDWORD(qword_10016D268) >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->SuppressResponses %d", v321, v322, v323, v324, v325, v353 - HIDWORD(qword_10016D268));
            v353 = dword_10016D258;
          }

          if (v353 - dword_10016D274 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledQuery %d", v321, v322, v323, v324, v325, v353 - dword_10016D274);
            v353 = dword_10016D258;
          }

          if (v353 - dword_10016D278 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledProbe %d", v321, v322, v323, v324, v325, v353 - dword_10016D278);
            v353 = dword_10016D258;
          }

          if (v353 - dword_10016D27C >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledResponse %d", v321, v322, v323, v324, v325, v353 - dword_10016D27C);
            v353 = dword_10016D258;
          }

          if (v353 - dword_10016D2D0 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledStopTime %d", v321, v322, v323, v324, v325, v353 - dword_10016D2D0);
            v353 = dword_10016D258;
          }

          v354 = v353 - dword_10016D260;
          if (v354 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledEvent %d", v321, v322, v323, v324, v325, v354);
          }

          if (dword_10016D220 && dword_10016D258 - dword_10016D220 >= 0)
          {
            ++v334;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NetworkChanged %d", v321, v322, v323, v324, v325, dword_10016D258 - dword_10016D220);
          }

          if (v334)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** %d potential cause%s identified (significant only if the same cause consistently appears)", v321, v322, v323, v324, v325, v334);
          }

          else
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** No likely causes identified", v321, v322, v323, v324, v325, v410);
          }

          mDNS_Unlock_(mDNSStorage, "ShowTaskSchedulingError", 5704);
          v315 = 1;
        }

        KQueueLoop_RepeatedBusy = 0;
        goto LABEL_439;
      }

      while (v207[4] || *(v207 + 122) || IsLocalDomain(v207[5]) || *(v207 + 86) != 5 || !v207[48])
      {
        v207 = *v207;
        if (!v207)
        {
          goto LABEL_260;
        }
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v393 = mDNSLogCategory_Default;
        v394 = bswap32(*(v207 + 179)) >> 16;
        v395 = *(v207 + 91);
        v396 = a1;
        v397 = *(v207 + 90);
        GetRRDisplayString_rdb(v207 + 8, (v207[6] + 4), word_1001789D0);
        a1 = v396;
        LogMsgWithLevel(v393, OS_LOG_TYPE_DEFAULT, "mDNSCoreReadyForSleep: waiting for Record updateIntID 0x%x 0x%x (updateid %d) %s", v398, v399, v400, v401, v402, v395);
      }
    }
  }

  v204 = 0;
  v436 = 1;
  v205 = 8682;
  goto LABEL_261;
}

uint64_t mDNS_TimeNow(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1[12])
  {
    goto LABEL_20;
  }

  v9 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v10 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v16) = 0;
    goto LABEL_11;
  }

  v9 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Lock failure: mDNS_TimeNow called while holding mDNS lock. This is incorrect. Code protected by lock should just use m->timenow.", &v16, 2u);
  }

LABEL_12:
  if (a1[16])
  {
    goto LABEL_20;
  }

  v12 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v14 = a1[12];
    v16 = 67109120;
    v17 = v14;
  }

  else
  {
    v12 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v13 = a1[12];
    v16 = 67109120;
    v17 = v13;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Lock failure: mDNS_TimeNow: m->mDNS_busy is %u but m->timenow not set", &v16, 8u);
LABEL_20:
  result = a1[16];
  if (!result)
  {
    return a1[15] + mDNSPlatformRawTime(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t mDNS_Execute(uint64_t a1)
{
  mDNS_Lock_(a1, "mDNS_Execute", 6835);
  if (*(a1 + 64) - *(a1 + 72) < 0)
  {
    goto LABEL_1483;
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    v10 = mDNSLogCategory_Default;
    v11 = v9 + 376;
    DNSTypeName(*(v9 + 342));
    LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR m->CurrentQuestion already set: %##s (%s)", v12, v13, v14, v15, v16, v11);
  }

  v17 = *(a1 + 12640);
  if (v17)
  {
    v18 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR m->CurrentRecord already set: %s", v19, v20, v21, v22, v23, a1 + 47032);
  }

  v24 = *(a1 + 12672);
  v25 = *(a1 + 64);
  if (v24 && ((v25 - v24) & 0x80000000) == 0)
  {
    *(a1 + 12672) = 0;
  }

  if (*(a1 + 12668) && v25 - *(a1 + 12664) >= 10000)
  {
    *(a1 + 12668) = 0;
  }

  if (*(a1 + 240) && v25 - *(a1 + 88) >= 0)
  {
    v26 = 0;
    *(a1 + 88) = v25 + 939524096;
    v27 = a1 + 4264;
    do
    {
      v28 = *(a1 + 64);
      v29 = *(v27 + 4 * v26);
      if (v28 - v29 >= 0)
      {
        v30 = (a1 + 272 + 8 * v26);
        v29 = v28 + 939524096;
        *(v27 + 4 * v26) = v28 + 939524096;
        v3 = *v30;
        if (*v30)
        {
          do
          {
            CheckCacheExpiration(a1, v26, v3, v4, v5, v6, v7, v8, v836);
            v31 = *v30;
            if (!(*v30)[2])
            {
              ReleaseCacheGroup(a1, v30);
              v31 = v30;
            }

            v3 = *v31;
            v30 = v31;
          }

          while (*v31);
          v29 = *(v27 + 4 * v26);
        }
      }

      if (*(a1 + 88) - v29 >= 1)
      {
        *(a1 + 88) = v29;
      }

      ++v26;
    }

    while (v26 != 499);
    v25 = *(a1 + 64);
  }

  if (v25 - *(a1 + 108) >= 0)
  {
    *(a1 + 108) = v25 + 939524096;
    CheckProxyRecords(a1, *(a1 + 12624), v3, v4, v5, v6, v7, v8);
    CheckProxyRecords(a1, *(a1 + 12616), v32, v33, v34, v35, v36, v37);
  }

  v38 = *(a1 + 15112);
  if (v38)
  {
    mDNSPlatformUpdateProxyList(v38, v2, v3, v4, v5, v6, v7, v8);
  }

  *(a1 + 15112) = 0;
  v39 = *(a1 + 64);
  if (v39 - *(a1 + 112) >= 0)
  {
    *(a1 + 112) = v39 + 939524096;
    mDNS_SendKeepalives(a1);
  }

  v40 = *(a1 + 116);
  if (v40)
  {
    v41 = *(a1 + 64);
    if (v41 - v40 >= 0)
    {
      *(a1 + 8) = v41;
      *(a1 + 116) = 0;
      *(a1 + 120) = 0;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: Scheduled network changed processing to leave multicast group.", v4, v5, v6, v7, v8, v836);
      }
    }
  }

  for (i = *(a1 + 14160); i; i = *(i + 296))
  {
    for (j = 0; j != 5; ++j)
    {
      mDNS_SetUpDomainEnumeration(a1, i, j);
    }
  }

  if (!g_discover_resolvers)
  {
    goto LABEL_179;
  }

  v44 = *g_discover_resolvers;
  if (!*g_discover_resolvers)
  {
    goto LABEL_179;
  }

  v45 = dword_10016D258;
  v879 = dword_10016D258;
  do
  {
    v47 = v44;
    v44 = *v44;
    v46 = v47[1];
    if (!v46)
    {
      continue;
    }

    v48 = *(v46 + 272);
    if (!v48)
    {
      continue;
    }

    v49 = *(v48 + 696);
    if (!v49)
    {
      continue;
    }

    v50 = *(v49 + 1664);
    v51 = v50 && v50 - v45 <= 0;
    if (!v51)
    {
      continue;
    }

    v52 = *(v49 + 1672);
    if (v52)
    {
      DNSServiceManager = Querier_GetDNSServiceManager();
      if (DNSServiceManager)
      {
        mdns_dns_service_manager_deregister_native_service(DNSServiceManager, v52);
      }

      *(v49 + 1672) = 0;
    }

    v54 = *(v49 + 256);
    v55 = v54 + 5;
    if (v54 + 5) < 6 && ((0x2Du >> v55))
    {
      LODWORD(v54) = dword_10010DE98[v55];
    }

    v56 = mdns_dns_service_definition_create();
    if (!v56)
    {
      goto LABEL_135;
    }

    v57 = v56;
    mdns_dns_service_definition_set_interface_index(v56, v54, 2);
    bzero(buf, 0x3F1uLL);
    ConvertDomainNameToCString_withescape(v46, buf);
    v58 = mdns_domain_name_create(buf, 0);
    if (!v58)
    {
      os_release(v57);
LABEL_135:
      v78 = -1;
      v79 = &unk_100178000;
      goto LABEL_109;
    }

    v59 = v58;
    v882 = v52;
    CFSetAddValue(*(v57 + 32), v58);
    *(v57 + 53) = 1;
    os_release(v59);
    v60 = *(v49 + 1656);
    if (!v60)
    {
LABEL_105:
      if (v882)
      {
        v78 = 3;
      }

      else
      {
        v78 = 0;
      }

      goto LABEL_108;
    }

    v61 = 0;
    do
    {
      while (1)
      {
        v62 = *v60;
        if (*v60 == 6)
        {
          if (*(v60 + 4) == 254)
          {
            if ((*(v60 + 5) & 0xC0) == 0x80)
            {
              v74 = v54;
            }

            else
            {
              v74 = 0;
            }
          }

          else
          {
            v74 = 0;
          }

          v75 = _mdns_address_new();
          if (!v75)
          {
LABEL_133:
            v78 = -1;
            goto LABEL_108;
          }

          v73 = v75;
          *(v75 + 24) = 7708;
          *(v75 + 32) = *(v60 + 1);
          *(v75 + 48) = v74;
          goto LABEL_96;
        }

        if (v62 != 4)
        {
          break;
        }

        v71 = v60[1];
        v72 = _mdns_address_new();
        if (!v72)
        {
          goto LABEL_133;
        }

        v73 = v72;
        *(v72 + 24) = 528;
        *(v72 + 28) = v71;
LABEL_96:
        CFArrayAppendValue(*(v57 + 24), v73);
        os_release(v73);
        v60 = *(v60 + 3);
        v61 = 1;
        if (!v60)
        {
          goto LABEL_99;
        }
      }

      v63 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v64 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v64 = 1;
      }

      if (v64)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_85;
        }

        v65 = v49;
        while (1)
        {
          if (!v65 || (v66 = *v65, v66 > 0x3F))
          {
LABEL_74:
            v67 = 257;
            goto LABEL_84;
          }

          if (!*v65)
          {
            break;
          }

          v65 += v66 + 1;
          if (&v65[-v49] >= 256)
          {
            goto LABEL_74;
          }
        }

        v67 = (v65 - v49 + 1);
        goto LABEL_84;
      }

      v63 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        v69 = v49;
        while (1)
        {
          if (!v69 || (v70 = *v69, v70 > 0x3F))
          {
LABEL_81:
            v67 = 257;
            goto LABEL_84;
          }

          if (!*v69)
          {
            break;
          }

          v69 += v70 + 1;
          if (&v69[-v49] >= 256)
          {
            goto LABEL_81;
          }
        }

        v67 = (v69 - v49 + 1);
LABEL_84:
        *buf = 141559043;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v67;
        *&buf[18] = 2101;
        *&buf[20] = v49;
        *&buf[28] = 1024;
        *&buf[30] = v54;
        *&buf[34] = 1024;
        *&buf[36] = v62;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "Invalid mDNSAddrType - domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, interface index: %u, mDNSAddrType: v%d.", buf, 0x28u);
      }

LABEL_85:
      v60 = *(v60 + 3);
    }

    while (v60);
    if ((v61 & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_99:
    v76 = Querier_RegisterNativeDNSService(v57);
    *(v49 + 1672) = v76;
    if (v882)
    {
      v77 = 2;
    }

    else
    {
      v77 = 1;
    }

    if (v76)
    {
      v78 = v77;
    }

    else
    {
      v78 = -1;
    }

LABEL_108:
    os_release(v57);
    v79 = &unk_100178000;
    v45 = v879;
LABEL_109:
    v80 = *(v79 + 434);
    if (!mDNS_SensitiveLoggingEnableCount || v80 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(*(v79 + 434), OS_LOG_TYPE_DEFAULT))
      {
        v85 = v46;
        while (1)
        {
          if (!v85 || (v86 = *v85, v86 > 0x3F))
          {
LABEL_124:
            v87 = 257;
            goto LABEL_126;
          }

          if (!*v85)
          {
            break;
          }

          v85 += v86 + 1;
          if (&v85[-v46] >= 256)
          {
            goto LABEL_124;
          }
        }

        v87 = (v85 - v46 + 1);
LABEL_126:
        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v87;
        *&buf[18] = 2101;
        *&buf[20] = v46;
        *&buf[28] = 1024;
        *&buf[30] = v78;
        v88 = v80;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Discovered local resolver configuration updated - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, result: %d", buf, 0x22u);
      }
    }

    else
    {
      v81 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v46;
        while (1)
        {
          if (!v82 || (v83 = *v82, v83 > 0x3F))
          {
LABEL_117:
            v84 = 257;
            goto LABEL_128;
          }

          if (!*v82)
          {
            break;
          }

          v82 += v83 + 1;
          if (&v82[-v46] >= 256)
          {
            goto LABEL_117;
          }
        }

        v84 = (v82 - v46 + 1);
LABEL_128:
        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v84;
        *&buf[18] = 2101;
        *&buf[20] = v46;
        *&buf[28] = 1024;
        *&buf[30] = v78;
        v88 = v81;
        goto LABEL_129;
      }
    }

    *(v49 + 1664) = 0;
  }

  while (v44);
  if (g_discover_resolvers)
  {
    v89 = *g_discover_resolvers;
    if (*g_discover_resolvers)
    {
      v90 = dword_10016D258;
      while (2)
      {
        v91 = v89;
        v89 = *v89;
        v92 = v91[1];
        if (*(v92 + 264))
        {
          goto LABEL_178;
        }

        v93 = *(v92 + 256);
        if (!v93 || v90 - v93 < 0)
        {
          goto LABEL_178;
        }

        v94 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v95 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v95 = 1;
        }

        if (v95)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v96 = v92;
            while (1)
            {
              if (!v96 || (v97 = *v96, v97 > 0x3F))
              {
LABEL_153:
                v98 = 257;
                goto LABEL_163;
              }

              if (!*v96)
              {
                break;
              }

              v96 += v97 + 1;
              if (&v96[-v92] >= 256)
              {
                goto LABEL_153;
              }
            }

            v98 = (v96 - v92 + 1);
LABEL_163:
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v98;
            *&buf[18] = 2101;
            *&buf[20] = v92;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Stopping the resolver discovery -- domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
          }
        }

        else
        {
          v94 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v100 = v92;
            while (1)
            {
              if (!v100 || (v101 = *v100, v101 > 0x3F))
              {
LABEL_160:
                v98 = 257;
                goto LABEL_163;
              }

              if (!*v100)
              {
                break;
              }

              v100 += v101 + 1;
              if (&v100[-v92] >= 256)
              {
                goto LABEL_160;
              }
            }

            v98 = (v100 - v92 + 1);
            goto LABEL_163;
          }
        }

        v102 = v91[1];
        if (v102)
        {
          v103 = *(v102 + 260) - 1;
          *(v102 + 260) = v103;
          v104 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_170;
            }
          }

          else
          {
            v104 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
LABEL_170:
              *buf = 67109120;
              *&buf[4] = v103;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "discover_resolver_t released - ref count after releasing: %u.", buf, 8u);
            }
          }

          v105 = v91[1];
          if (v105 && !*(v105 + 260))
          {
            (*(v105 + 280))();
          }
        }

        v106 = g_discover_resolvers;
        for (k = *g_discover_resolvers; k != v91; k = *k)
        {
          v106 = k;
        }

        *v106 = *k;
        free(v91);
LABEL_178:
        if (!v89)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_179:
  v108 = *(a1 + 148);
  if (v108)
  {
    if (*(a1 + 64) - v108 >= 0)
    {
      *(a1 + 148) = 0;
      if (*(a1 + 141) == 1)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Re-sleep delay passed; now checking for Sleep Proxy Servers", v4, v5, v6, v7, v8, v836);
        }

        BeginSleepProcessing(a1);
      }
    }
  }

  v109 = *(a1 + 160);
  if (v109)
  {
    if (*(a1 + 64) - v109 >= 0)
    {
      *(a1 + 160) = 0;
      v110 = *(a1 + 192);
      if (v110)
      {
        while (2)
        {
          if (v110 == *(a1 + 200))
          {
            goto LABEL_270;
          }

          v111 = *(v110 + 144);
          if (!v111)
          {
            goto LABEL_269;
          }

          if (*(v111 + 24) != 1)
          {
            goto LABEL_269;
          }

          v112 = *(*(v111 + 16) + 64);
          v113 = bswap32(*(v110 + 340));
          v114 = HIWORD(v113);
          *(v112 + 24) = HIWORD(v113);
          if ((*(v112 + 48) - 3) < 0xFFFFFFFE)
          {
            goto LABEL_269;
          }

          v115 = *(v112 + 32);
          if (v115)
          {
            v116 = *(v115 + 24);
            if (v116)
            {
              while (*(*v116 + 8))
              {
                v116 = v116[1];
                if (!v116)
                {
                  goto LABEL_196;
                }
              }

LABEL_217:
              v126 = mDNSLogCategory_DNSSEC;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v127 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
              }

              else
              {
                v127 = 1;
              }

              if (v127)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                {
                  v128 = *(v112 + 16);
                  if (v128)
                  {
                    v129 = *(v128 + 24);
                    v128 = *(v128 + 16);
                  }

                  else
                  {
                    v129 = 0;
                  }

LABEL_268:
                  *buf = 67109891;
                  *&buf[4] = v114;
                  *&buf[8] = 2160;
                  *&buf[10] = 1752392040;
                  *&buf[18] = 1040;
                  *&buf[20] = v129;
                  *&buf[24] = 2101;
                  *&buf[26] = v128;
                  _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "[Q%u] Current DNSSEC validation manager contains record(s) that are to be removed soon, wait for the coming update before updating the cache - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x22u);
                }
              }

              else
              {
                v126 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                {
                  v128 = *(v112 + 16);
                  if (v128)
                  {
                    v129 = *(v128 + 24);
                    v128 = *(v128 + 16);
                  }

                  else
                  {
                    v129 = 0;
                  }

                  goto LABEL_268;
                }
              }

              goto LABEL_269;
            }
          }

LABEL_196:
          v117 = *(v112 + 40);
          if (v117)
          {
            v118 = *(v117 + 24);
            if (v118)
            {
              while (*(*v118 + 8))
              {
                v118 = v118[1];
                if (!v118)
                {
                  goto LABEL_200;
                }
              }

              goto LABEL_217;
            }
          }

LABEL_200:
          v119 = *(v112 + 64);
          if (v119)
          {
            v120 = *(v119 + 24);
            if (v120)
            {
              while (*(*v120 + 8))
              {
                v120 = v120[1];
                if (!v120)
                {
                  goto LABEL_204;
                }
              }

              goto LABEL_217;
            }
          }

LABEL_204:
          v121 = *(v112 + 88);
          if (v121 && !*(v121 + 8))
          {
            goto LABEL_217;
          }

          if (*(v112 + 52))
          {
            goto LABEL_269;
          }

          if (v115)
          {
            v122 = dword_10016D258;
            rr_expire_time = dnssec_obj_rrset_get_rr_expire_time(v115);
            if (rr_expire_time - dword_10016D258 < 1)
            {
              goto LABEL_269;
            }

            if (v122 + 939524096 - rr_expire_time <= 0 || rr_expire_time == 0)
            {
              v125 = v122 + 939524096;
            }

            else
            {
              v125 = rr_expire_time;
            }

            v117 = *(v112 + 40);
            if (!v117)
            {
LABEL_236:
              v133 = *(v112 + 64);
              if (v133)
              {
                v134 = dnssec_obj_rrset_get_rr_expire_time(v133);
                if (v134 - dword_10016D258 < 1)
                {
                  goto LABEL_269;
                }

                if (v125 - v134 > 0 && v134 != 0)
                {
                  v125 = v134;
                }
              }

              if (*(v112 + 112))
              {
                v136 = *(v112 + 88);
                if (!v136)
                {
                  goto LABEL_269;
                }

                expiration_time = resource_record_get_expiration_time(*(v136 + 56));
                if (expiration_time - dword_10016D258 < 1)
                {
                  goto LABEL_269;
                }

                if (v125 - expiration_time > 0 && expiration_time != 0)
                {
                  v125 = expiration_time;
                }
              }

              v139 = *(v112 + 32);
              if (!v139)
              {
                v139 = *(v112 + 40);
              }

              v140 = v125 - dnssec_obj_rrset_get_time_received(v139);
              if (v140 >= 1000)
              {
                v141 = v140 / 0x3E8u;
                if (v141 >= 0xE10)
                {
                  v141 = 3600;
                }

                v142 = v141 + (v141 >> 2) + 2;
                if (v142 <= 0xF)
                {
                  v143 = 15;
                }

                else
                {
                  v143 = v142;
                }

                v144 = *(v112 + 32);
                if (v144 && dnssec_obj_rrset_needs_to_update_cache(v144, v143))
                {
                  v145 = *(v112 + 32);
                }

                else
                {
                  v146 = *(v112 + 40);
                  if (!v146 || !dnssec_obj_rrset_needs_to_update_cache(v146, v143))
                  {
                    goto LABEL_269;
                  }

                  v145 = *(v112 + 40);
                }

                _update_validated_cache_with_rrset(v145, v143);
              }

LABEL_269:
              v110 = *(v110 + 8);
              if (!v110)
              {
                goto LABEL_270;
              }

              continue;
            }
          }

          else
          {
            if (!v117)
            {
              goto LABEL_269;
            }

            v125 = dword_10016D258 + 939524096;
          }

          break;
        }

        v131 = dnssec_obj_rrset_get_rr_expire_time(v117);
        if (v131 - dword_10016D258 < 1)
        {
          goto LABEL_269;
        }

        if (v125 - v131 > 0 && v131 != 0)
        {
          v125 = v131;
        }

        goto LABEL_236;
      }
    }
  }

LABEL_270:
  v147 = *(a1 + 164);
  if (v147 && *(a1 + 64) - v147 >= 0)
  {
    v148 = *(a1 + 12656);
    if (v148)
    {
      while (!*(v148 + 16))
      {
        v148 = *v148;
        if (!v148)
        {
          goto LABEL_275;
        }
      }

      v304 = 0;
      v305 = 0uLL;
      v306 = &unk_100164000;
LABEL_576:
      v307 = v148[1];
      if (!v307)
      {
        goto LABEL_607;
      }

      v308 = 0;
      for (m = 28; m != 62; m += 2)
      {
        v308 += *(v307 + m);
      }

      if (v308)
      {
        v310 = v306;
        v311 = v306[320];
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v312 = v311 == mDNSLogCategory_State;
        }

        else
        {
          v312 = 1;
        }

        if (v312)
        {
          if (os_log_type_enabled(v306[320], OS_LOG_TYPE_DEFAULT))
          {
            v313 = v148[444];
            v314 = v313 + 5;
            if (v313 + 5) < 6 && ((0x2Du >> v314))
            {
              LODWORD(v313) = dword_10010DEB0[v314];
            }

LABEL_594:
            *buf = 136446722;
            *&buf[4] = v148 + 3606;
            *&buf[12] = 1024;
            *&buf[14] = v313;
            *&buf[18] = 2112;
            *&buf[20] = v307;
            _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_DEFAULT, "mDNS response delay distribution - interface name: %{public}s, interface index: %u, report: %@", buf, 0x1Cu);
          }
        }

        else
        {
          v311 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v313 = v148[444];
            v316 = v313 + 5;
            if (v313 + 5) < 6 && ((0x2Du >> v316))
            {
              LODWORD(v313) = dword_10010DEC8[v316];
            }

            goto LABEL_594;
          }
        }

        v305 = 0uLL;
        if (v304)
        {
          v304 = 1;
          goto LABEL_605;
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = __mDNSPostResponseDelayMetrics_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_536;
        *&buf[32] = v307;
        if ((analytics_send_event_lazy() & 1) == 0)
        {
          v317 = v310[320];
          if (!mDNS_SensitiveLoggingEnableCount || v317 == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(v310[320], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_603;
            }
          }

          else
          {
            v317 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
LABEL_603:
              *__dst = 0;
              _os_log_impl(&_mh_execute_header, v317, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.mDNSResponseDelayEvent: Analytic not posted", __dst, 2u);
            }
          }
        }

        v304 = 1;
        v305 = 0uLL;
LABEL_605:
        v306 = v310;
      }

      *(v307 + 54) = 0;
      *(v307 + 40) = v305;
      *(v307 + 24) = v305;
LABEL_607:
      while (1)
      {
        v148 = *v148;
        if (!v148)
        {
          break;
        }

        if (*(v148 + 16))
        {
          goto LABEL_576;
        }
      }
    }

LABEL_275:
    *(a1 + 164) = *(a1 + 64) + 1800000;
  }

  v887 = (a1 + 28960);
  v858 = (a1 + 12648);
  v149 = (a1 + 200);
  v150 = *(a1 + 200);
  v151 = &unk_100178000;
  v867 = (a1 + 200);
  if (!v150)
  {
    goto LABEL_483;
  }

  v152 = 0;
  v153 = (a1 + 47032);
  while (2)
  {
    v154 = v152;
    v155 = *(v150 + 204);
    if (v155)
    {
      if (*(a1 + 64) - v155 < 0)
      {
        goto LABEL_483;
      }
    }

    if (!*(v150 + 340))
    {
      goto LABEL_290;
    }

    if (*(v150 + 673) != 6)
    {
      goto LABEL_290;
    }

    *(v150 + 673) = 8;
    *__dst = 0;
    *&__dst[8] = 0;
    if (!*(v150 + 80))
    {
      goto LABEL_290;
    }

    if (!GetReverseIPv6Addr((v150 + 376), __dst))
    {
      goto LABEL_290;
    }

    v892[0] = 0;
    LODWORD(v893) = 0;
    LODWORD(v891) = 0;
    *buf = 0;
    *&buf[8] = 0;
    *&buf[22] = 0;
    *&buf[16] = 0;
    if (_DNS64GetPrefixes(a1, *(v150 + 80), v892, &v893))
    {
      goto LABEL_290;
    }

    v156 = v893;
    v157 = v892[0];
    v158 = v892[0];
    if (!v893)
    {
LABEL_288:
      if (!v157)
      {
        goto LABEL_290;
      }

      goto LABEL_289;
    }

    while (!nw_nat64_extract_v4())
    {
      v158 += 16;
      if (!--v156)
      {
        goto LABEL_288;
      }
    }

    snprintf(buf, 0x1EuLL, "%u.%u.%u.%u.in-addr.arpa.", BYTE3(v891), BYTE2(v891), BYTE1(v891), v891);
    *(v150 + 376) = 0;
    AppendDNSNameString((v150 + 376), buf, v176, v177, v178, v179, v180, v181);
    *(v150 + 200) = DomainNameHashValue(v150 + 376);
    *(v150 + 673) = 7;
    if (v157)
    {
LABEL_289:
      free(v157);
    }

LABEL_290:
    v159 = CacheGroupForName(a1, *(v150 + 200), (v150 + 376));
    if (v159)
    {
      CheckCacheExpiration(a1, *(v150 + 200) % 0x1F3u, v159, v4, v5, v6, v7, v8, v836);
    }

    if (*v149 == v150)
    {
      *(a1 + 200) = *(v150 + 8);
      if (*(a1 + 56))
      {
        LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "AnswerNewQuestion ERROR! Cache already locked!", v4, v5, v6, v7, v8, v836);
      }

      *(a1 + 56) = 1;
      v162 = *(a1 + 208);
      if (v162)
      {
        v163 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v874 = v154;
            v170 = *(v162 + 252);
            v171 = bswap32(*(v162 + 340)) >> 16;
            v172 = v162 + 376;
            v173 = (v162 + 376);
            while (1)
            {
              if (!v173 || (v174 = *v173, v174 > 0x3F))
              {
LABEL_313:
                v175 = 257;
                goto LABEL_317;
              }

              if (!*v173)
              {
                break;
              }

              v173 += v174 + 1;
              if (&v173[-v172] >= 256)
              {
                goto LABEL_313;
              }
            }

            v175 = (v173 - v172 + 1);
LABEL_317:
            v182 = DNSTypeName(*(v162 + 342));
            *buf = 67110403;
            *&buf[4] = v170;
            *&buf[8] = 1024;
            *&buf[10] = v171;
            *&buf[14] = 2160;
            *&buf[16] = 1752392040;
            *&buf[24] = 1040;
            *&buf[26] = v175;
            *&buf[30] = 2101;
            *&buf[32] = v162 + 376;
            *&buf[40] = 2082;
            *&buf[42] = v182;
            _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] AnswerNewQuestion ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x32u);
            v149 = (a1 + 200);
            v153 = (a1 + 47032);
            v154 = v874;
          }
        }

        else
        {
          v164 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v165 = *(v162 + 252);
            v166 = v162 + 376;
            v167 = (v162 + 376);
            v873 = bswap32(*(v162 + 340)) >> 16;
            while (1)
            {
              if (!v167 || (v168 = *v167, v168 > 0x3F))
              {
LABEL_306:
                v169 = 257;
                goto LABEL_319;
              }

              if (!*v167)
              {
                break;
              }

              v167 += v168 + 1;
              if (&v167[-v166] >= 256)
              {
                goto LABEL_306;
              }
            }

            v169 = (v167 - v166 + 1);
LABEL_319:
            v183 = DNSTypeName(*(v162 + 342));
            *buf = 67110403;
            *&buf[4] = v165;
            *&buf[8] = 1024;
            *&buf[10] = v873;
            *&buf[14] = 2160;
            *&buf[16] = 1752392040;
            *&buf[24] = 1040;
            *&buf[26] = v169;
            *&buf[30] = 2101;
            *&buf[32] = v162 + 376;
            *&buf[40] = 2082;
            *&buf[42] = v183;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] AnswerNewQuestion ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x32u);
            v149 = (a1 + 200);
            v153 = (a1 + 47032);
          }
        }
      }

      *(a1 + 208) = v150;
      v184 = *(a1 + 12640);
      if (v184)
      {
        v185 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v184 + 8), (*(v184 + 48) + 4), v153);
        LogMsgWithLevel(v185, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord ERROR m->CurrentRecord already set %s", v186, v187, v188, v189, v190, v153);
      }

      v191 = AuthGroupForName(a1 + 6264, *(v150 + 200), (v150 + 376));
      v192 = v191;
      if (v191)
      {
        v193 = v191[2];
        if (v193)
        {
          while (1)
          {
            if (v193 == v192[5])
            {
              goto LABEL_333;
            }

            v194 = *v193;
            *(a1 + 12640) = *v193;
            v195 = *(v193 + 172);
            if (v195 == 4)
            {
              goto LABEL_329;
            }

            if (v195 == 5)
            {
              break;
            }

LABEL_332:
            v193 = v194;
            if (!v194)
            {
              goto LABEL_333;
            }
          }

          v196 = *(v150 + 136);
          if (!v196 || v196 == -5)
          {
LABEL_329:
            if (LocalOnlyRecordAnswersQuestion(v193, v150, v3, v4, v5, v6, v7, v8))
            {
              AnswerLocalQuestionWithLocalAuthRecord(a1, v193, 1);
              if (*(a1 + 208) != v150)
              {
                goto LABEL_333;
              }
            }
          }

          v194 = *(a1 + 12640);
          goto LABEL_332;
        }
      }

LABEL_333:
      *(a1 + 12640) = 0;
      if (*(a1 + 208) != v150)
      {
        v151 = &unk_100178000;
        if (mDNS_LoggingEnabled != 1)
        {
          goto LABEL_340;
        }

        v160 = mDNSLogCategory_Default;
        v161 = "AnswerQuestionWithLORecord: Question deleted while while answering LocalOnly record answers";
LABEL_339:
        LogMsgWithLevel(v160, OS_LOG_TYPE_DEFAULT, v161, v4, v5, v6, v7, v8, v836);
        goto LABEL_340;
      }

      if (*(v150 + 355))
      {
        v151 = &unk_100178000;
        if (mDNS_LoggingEnabled != 1)
        {
          goto LABEL_340;
        }

        v197 = mDNSLogCategory_Default;
        DNSTypeName(*(v150 + 342));
        v842 = *(v150 + 355);
        v836 = v150;
        v160 = v197;
        v161 = "AnswerQuestionWithLORecord: Question %p %##s (%s) answered using local auth records LOAddressAnswers %d";
        goto LABEL_339;
      }

      if (v192)
      {
        v198 = v192[5];
        if (v198)
        {
          while (1)
          {
            v151 = &unk_100178000;
            if (*(v198 + 172) == 4 && (*(v198 + 8) & 0x32) != 0)
            {
              v199 = *(v198 + 12);
              v51 = v199 > 0x1C;
              v200 = (1 << v199) & 0x10001022;
              v201 = v51 || v200 == 0;
              if (!v201 && LocalOnlyRecordAnswersQuestion(v198, v150, v3, v4, v5, v6, v7, v8))
              {
                break;
              }
            }

            v198 = *v198;
            if (!v198)
            {
              goto LABEL_353;
            }
          }

          if (mDNS_LoggingEnabled == 1)
          {
            v231 = mDNSLogCategory_Default;
            DNSTypeName(*(v150 + 342));
            v843 = *(v150 + 355);
            LogMsgWithLevel(v231, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord: Question %p %##s (%s) will be answered using new local auth records  LOAddressAnswers %d", v232, v233, v234, v235, v236, v150);
          }

          goto LABEL_340;
        }
      }

LABEL_353:
      v151 = &unk_100178000;
      if (SameDomainNameBytes((v150 + 376), "\tlocalhost"))
      {
        GenerateNegativeResponseEx(a1, *(v150 + 136), 4, 0, v5, v6, v7, v8, v836);
        goto LABEL_340;
      }

      if (*(v150 + 340))
      {
        v202 = *(v150 + 647) == 1;
      }

      else
      {
        v202 = 0;
      }

      v203 = v202;
      if (!*(v150 + 354) || *(v150 + 646))
      {
        if (!v159 || (v204 = v159[2]) == 0)
        {
          v220 = 0;
          v221 = 0;
          v205 = 0;
          v222 = 1;
          LOBYTE(v207) = 1;
          goto LABEL_411;
        }

        v205 = 0;
        v875 = 0;
        v862 = 0;
        v206 = 0;
        LOBYTE(v207) = 1;
        while (1)
        {
          if (!SameNameRecordAnswersQuestion((v204 + 8), 0, v150, v4, v5, v6, v7, v8))
          {
            if (!*(v150 + 340))
            {
              v214 = *(v204 + 12);
              if (v214 == 28 || v214 == 1)
              {
                v216 = *(v150 + 342);
                if (v216 == 28 || v216 == 1)
                {
                  LOBYTE(v207) = 0;
                }
              }
            }

            goto LABEL_396;
          }

          v208 = (*(a1 + 64) - *(v204 + 80)) / 0x3E8u;
          v209 = *(v204 + 16);
          if (v209 <= v208)
          {
            if (!v203)
            {
              goto LABEL_396;
            }

            v210 = *(v204 + 8);
            if (v210 == 240)
            {
              goto LABEL_396;
            }
          }

          else
          {
            v210 = *(v204 + 8);
          }

          if ((v210 & 0x10) != 0 || *(v150 + 633))
          {
            if (v209 > v208)
            {
              LOBYTE(v207) = 0;
            }

            v211 = *(v150 + 144);
            if (v211)
            {
              if (*(v211 + 24) == 1)
              {
                v212 = *(v204 + 64);
                if (v212)
                {
                  if (!*(v212 + 32))
                  {
                    ++v205;
                    if (v210 == 240)
                    {
                      v862 = (*(v212 + 40) & 1) == 0 && (v217 = *(v212 + 48)) != 0 && *(v217 + 16) == 5;
                    }

                    else
                    {
                      if (resource_record_as_rrsig_get_covered_type(v204 + 8) == 5)
                      {
                        v218 = resource_record_as_rrsig_covers_wildcard_rr(v204 + 8);
                        v219 = v875;
                        if (v218)
                        {
                          v219 = 1;
                        }

                        v875 = v219;
                      }

                      if (!v206)
                      {
                        v206 = *(*(v204 + 64) + 24);
                      }
                    }
                  }
                }
              }
            }
          }

          ++*(v150 + 228);
          if (*(v204 + 20) >= 0x401u)
          {
            ++*(v150 + 232);
          }

          if ((*(v204 + 8) & 0x10) != 0)
          {
            ++*(v150 + 236);
          }

          *(v204 + 92) = *(a1 + 64);
          v213 = &sCacheRequest_UnicastHitCount;
          if (!*(v150 + 340))
          {
            v213 = &sCacheRequest_MulticastHitCount;
          }

          ++*v213;
          AnswerCurrentQuestionWithResourceRecord(a1, v204, 1);
          if (*(a1 + 208) != v150)
          {
LABEL_410:
            v221 = v875 != 0;
            v222 = v206 + 1;
            v220 = v862;
            v151 = &unk_100178000;
LABEL_411:
            if (*(a1 + 208) != v150 || (v224 = *(v150 + 144)) == 0 || (*(v224 + 24) == 1 ? (v225 = !v207) : (v225 = 0), !v225))
            {
LABEL_412:
              v223 = !v207;
              goto LABEL_432;
            }

            v226 = v205 != v222 && v221;
            v207 = v205 == 1 && v220;
            if (v226 || v207)
            {
              v227 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_476;
                }
              }

              else
              {
                v227 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_476:
                  v245 = bswap32(*(v150 + 340));
                  *buf = 67109632;
                  *&buf[4] = HIWORD(v245);
                  *&buf[8] = 1024;
                  *&buf[10] = v226;
                  *&buf[14] = 1024;
                  *&buf[16] = v207;
                  _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "[Q%u] Continue sending out query for the primary DNSSEC question due to incomplete answer set - only positive: %{mdns:yesno}d, only negative: %{mdns:yesno}d", buf, 0x14u);
                }
              }

              LOBYTE(v207) = 1;
            }

            v149 = (a1 + 200);
            goto LABEL_412;
          }

LABEL_396:
          v204 = *v204;
          if (!v204)
          {
            goto LABEL_410;
          }
        }
      }

      v223 = 0;
LABEL_432:
      v228 = *(a1 + 208);
      if (v228 != v150)
      {
        goto LABEL_433;
      }

      if (v203)
      {
        if (*(v150 + 168))
        {
          v229 = *(a1 + 48);
          v230 = *(a1 + 52) + 1;
          *(a1 + 52) = v230;
          mDNS_VerifyLockState("Drop Lock", 0, v229, v230, "AnswerNewQuestion", 6330);
          (*(v150 + 168))(v150, 1);
          mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerNewQuestion", 6332);
          --*(a1 + 52);
          v228 = *(a1 + 208);
          if (v228 != v150)
          {
LABEL_433:
            if (v228 != v150)
            {
              goto LABEL_340;
            }

            goto LABEL_445;
          }
        }

        *(v150 + 647) = 2;
      }

      if (*(v150 + 354))
      {
        if (*(v150 + 635))
        {
          GenerateNegativeResponseEx(a1, 0, 4, 0, v5, v6, v7, v8, v836);
          v228 = *(a1 + 208);
          goto LABEL_433;
        }

        *(v150 + 212) = 0;
      }

LABEL_445:
      v237 = *(v150 + 340);
      v238 = &sCacheRequest_UnicastMissCount;
      if (!*(v150 + 340))
      {
        v238 = &sCacheRequest_MulticastMissCount;
      }

      ++*v238;
      *(v150 + 357) = 1;
      if (*(v150 + 644))
      {
        if (*(v150 + 228) || (GenerateNegativeResponseEx(a1, *(v150 + 136), 4, 0, v5, v6, v7, v8, v836), *(a1 + 208) == v150))
        {
          mDNS_StopQuery_internal(a1, v150);
        }
      }

      else
      {
        if (!v223 && *(v150 + 212) >= 1 && !*(v150 + 40))
        {
          *(v150 + 212) = 334;
          v239 = *(a1 + 64) - 334;
          *(v150 + 208) = v239;
          if (!v237)
          {
            v240 = *(a1 + 124);
            if (!v240)
            {
              do
              {
                v241 = arc4random() & 0x1FFF;
              }

              while (v241 > 0x1388);
              v240 = ((85899346 * (v241 + 999)) >> 32) + 1;
              *(a1 + 124) = v240;
              v239 = *(v150 + 208);
            }

            *(v150 + 208) = v240 + v239;
          }
        }

        if (DPCFeatureEnabled_sOnce != -1)
        {
          dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
        }

        if (DPCFeatureEnabled_sEnabled && !*(v150 + 340) && *(v150 + 212) >= 1 && !*(v150 + 40))
        {
          v242 = *(v150 + 136);
          if (v242)
          {
            _DPCSubscribe(v150, v242);
          }

          else if (gDPCPushServers)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = __DPCHandleNewQuestion_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_29_3333;
            *&buf[32] = v150;
            mdns_cfdictionary_apply(gDPCPushServers, buf);
          }
        }

        if (*(v150 + 212) >= 1 && !*(v150 + 40))
        {
          v243 = *(v150 + 184);
          if (v243)
          {
            v244 = *(v243 + 16);
            if (v244)
            {
              if (*(v244 + 68) == 1)
              {
                *(v150 + 632) = 1;
                *(v150 + 350) = 30;
                *(v150 + 212) = 900000;
                *(v150 + 208) = *(a1 + 64) - 899999;
              }
            }
          }
        }

        SetNextQueryTime(a1, v150);
      }

      goto LABEL_340;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v160 = v151[434];
      v161 = "AnswerNewQuestion: Question deleted while doing CheckCacheExpiration";
      goto LABEL_339;
    }

LABEL_340:
    *(a1 + 208) = 0;
    *(a1 + 56) = 0;
    v150 = *(a1 + 200);
    if (v150)
    {
      v152 = v154 + 1;
      if (v154 < 0x3E7)
      {
        continue;
      }
    }

    break;
  }

  if (v154 >= 0x3E7)
  {
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: AnswerNewQuestion exceeded loop limit", v4, v5, v6, v7, v8, v836);
  }

LABEL_483:
  v246 = 0;
  v878 = (a1 + 12616);
  v247 = a1 + 6288;
  while (*(a1 + 140))
  {
    *(a1 + 140) = 0;
    *(a1 + 12640) = *(a1 + 12616);
    CheckRmvEventsForLocalRecords(a1, v2, v3, v4, v5, v6, v7, v8);
    for (n = 0; n != 499; ++n)
    {
      for (ii = *(v247 + 8 * n); ii; ii = *ii)
      {
        v250 = ii[2];
        *(a1 + 12640) = v250;
        if (v250)
        {
          CheckRmvEventsForLocalRecords(a1, v2, v3, v4, v5, v6, v7, v8);
        }
      }
    }

    if (++v246 == 1000)
    {
      LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: m->LocalRemoveEvents exceeded loop limit", v4, v5, v6, v7, v8, v836);
      break;
    }
  }

  v251 = *(a1 + 224);
  if (v251)
  {
    v252 = 0;
    v253 = *(a1 + 208);
    do
    {
      v254 = v252;
      *(a1 + 224) = *(v251 + 8);
      if (v253)
      {
        v255 = mDNSLogCategory_Default;
        v256 = v253 + 376;
        DNSTypeName(*(v253 + 342));
        LogMsgWithLevel(v255, OS_LOG_TYPE_DEFAULT, "AnswerNewLocalOnlyQuestion ERROR m->CurrentQuestion already set: %##s (%s)", v257, v258, v259, v260, v261, v256);
      }

      *(a1 + 208) = v251;
      v262 = *(a1 + 12640);
      if (v262)
      {
        v263 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v262 + 8), (*(v262 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v263, OS_LOG_TYPE_DEFAULT, "AnswerNewLocalOnlyQuestion ERROR m->CurrentRecord already set %s", v264, v265, v266, v267, v268, a1 + 47032);
      }

      v269 = AuthGroupForName(a1 + 6264, *(v251 + 200), (v251 + 376));
      if (v269 && (v270 = v269, v271 = v269[2], (*(a1 + 12640) = v271) != 0))
      {
        v272 = 0;
        do
        {
          if (v271 == v270[5])
          {
            break;
          }

          *(a1 + 12640) = *v271;
          if (LocalOnlyRecordAnswersQuestion(v271, v251, v3, v4, v5, v6, v7, v8))
          {
            v272 = 1;
            AnswerLocalQuestionWithLocalAuthRecord(a1, v271, 1);
            if (*(a1 + 208) != v251)
            {
              break;
            }
          }

          v271 = *(a1 + 12640);
        }

        while (v271);
      }

      else
      {
        v272 = 0;
      }

      if (*(a1 + 208) == v251)
      {
        v273 = *(a1 + 12616);
        *(a1 + 12640) = v273;
        if (v273)
        {
          while (v273 != *(a1 + 12632))
          {
            *(a1 + 12640) = *v273;
            if (RecordAnswersQuestion((v273 + 1), 1, v251, v4, v5, v6, v7, v8))
            {
              v272 = 1;
              AnswerLocalQuestionWithLocalAuthRecord(a1, v273, 1);
              if (*(a1 + 208) != v251)
              {
                goto LABEL_513;
              }
            }

            v273 = *(a1 + 12640);
            if (!v273)
            {
              break;
            }
          }
        }
      }

      if (!v272 && *(a1 + 208) == v251 && *(v251 + 635))
      {
        GenerateNegativeResponseEx(a1, -2, 3, 0, v5, v6, v7, v8, v836);
      }

LABEL_513:
      *(a1 + 208) = 0;
      *(a1 + 12640) = 0;
      v251 = *(a1 + 224);
      if (!v251)
      {
        break;
      }

      v253 = 0;
      v252 = v254 + 1;
    }

    while (v254 < 0x3E7);
    v274 = v254 >= 0x3E7;
    v151 = &unk_100178000;
    if (v274)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: AnswerNewLocalOnlyQuestion exceeded loop limit", v4, v5, v6, v7, v8, v836);
    }
  }

  v275 = 0;
  v276 = 0;
  v277 = 0;
  while (2)
  {
    v278 = *(a1 + 12632);
    if (v278)
    {
      v279 = v278 == v276;
    }

    else
    {
      v279 = 1;
    }

    if (!v279)
    {
      v280 = *v278;
      *(a1 + 12632) = *v278;
      if (*(v278 + 8) == 2)
      {
        v281 = (a1 + 12616);
        if (v280)
        {
          do
          {
            v282 = v281;
            v281 = *v281;
            if (v281)
            {
              v283 = v281 == v278;
            }

            else
            {
              v283 = 1;
            }
          }

          while (!v283);
          if (!v281)
          {
            v285 = v151[434];
            GetRRDisplayString_rdb((v278 + 8), (*(v278 + 48) + 4), (a1 + 47032));
            LogMsgWithLevel(v285, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR!! Cannot find record %s in ResourceRecords list", v286, v287, v288, v289, v290, a1 + 47032);
            break;
          }

          *v282 = v280;
          if (v276)
          {
            *v277 = v278;
            *v278 = 0;
            v277 = v278;
            goto LABEL_546;
          }

          do
          {
            v284 = v280;
            v280 = *v280;
          }

          while (v280);
          *v284 = v278;
          *v278 = 0;
          v277 = v278;
        }

        else if (v276)
        {
          LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR!!: head %p, NewLocalRecords %p", v4, v5, v6, v7, v8, v276);
        }

        v276 = v278;
      }

      else
      {
        AnswerAllLocalQuestionsWithLocalAuthRecord(a1, v278, 1, v4, v5, v6, v7, v8);
      }

LABEL_546:
      if (++v275 == 1000)
      {
        *(a1 + 12632) = v276;
        LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: m->NewLocalRecords exceeded loop limit", v4, v5, v6, v7, v8, v836);
        goto LABEL_550;
      }

      continue;
    }

    break;
  }

  *(a1 + 12632) = v276;
LABEL_550:
  if (*v858)
  {
    v291 = 0;
    *v858 = 0;
    do
    {
      for (jj = *(v247 + 8 * v291); jj; jj = *jj)
      {
        v293 = 100;
        while (1)
        {
          v2 = jj[5];
          if (!v2)
          {
            break;
          }

          jj[5] = *v2;
          if (*(v2 + 8) == 2)
          {
            v294 = v151[434];
            GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
            LogMsgWithLevel(v294, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: LocalOnlyRecord %s not ready", v295, v296, v297, v298, v299, a1 + 47032);
          }

          else
          {
            AnswerAllLocalQuestionsWithLocalAuthRecord(a1, v2, 1, v4, v5, v6, v7, v8);
          }

          if (!--v293)
          {
            LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ag->NewLocalOnlyRecords exceeded loop limit", v4, v5, v6, v7, v8, v836);
            break;
          }
        }
      }

      ++v291;
    }

    while (v291 != 499);
  }

  if (*(a1 + 16) || *(a1 + 141) == 2)
  {
    DiscardDeregistrations(a1);
    v300 = *(a1 + 64);
    v301 = (a1 + 19920);
    if (*(a1 + 16))
    {
      goto LABEL_1146;
    }
  }

  else
  {
    v300 = *(a1 + 64);
    v301 = (a1 + 19920);
  }

  v302 = *(a1 + 80);
  if (v302 && ((v300 - v302) & 0x80000000) != 0)
  {
    goto LABEL_1141;
  }

  *(a1 + 80) = 0;
  if ((v300 - *(a1 + 92)) < 0 && (v300 - *(a1 + 96)) < 0)
  {
    goto LABEL_1139;
  }

  v303 = *(a1 + 12656);
  if (v303)
  {
    while (!*(v303 + 16))
    {
      v303 = *v303;
      if (!v303)
      {
        goto LABEL_574;
      }
    }

    v870 = v303;
  }

  else
  {
LABEL_574:
    v870 = 0;
  }

  v318 = 0;
  v893 = 0;
  v868 = a1 + 272;
  v880 = a1 + 28972;
  while (2)
  {
    v863 = v318;
    v319 = *(v868 + 8 * v318);
    if (v319)
    {
      while (1)
      {
        v320 = v319[2];
        if (v320)
        {
          break;
        }

LABEL_661:
        v319 = *v319;
        if (!v319)
        {
          goto LABEL_662;
        }
      }

      while (2)
      {
        v321 = v320[12];
        if (!v321)
        {
          goto LABEL_660;
        }

        v322 = *(v320 + 108);
        if (v322 >= 4 && *(v320 + 130) != 2)
        {
          goto LABEL_660;
        }

        v323 = 1000 * *(v320 + 4);
        if ((v300 - *(v320 + 22) + v323 / 50) < 0)
        {
          goto LABEL_660;
        }

        v324 = *(v321 + 56);
        v325 = v320[4];
        if (v324)
        {
          v326 = v323 / 20 - v300;
          v327 = 8;
          do
          {
            if (*v324 == v325 && (v326 + *(v324 + 8)) < 0)
            {
              *v324 = 0;
            }

            v324 += 16;
            --v327;
          }

          while (v327);
        }

        if (*(v321 + 340))
        {
          *(v321 + 208) = v300 - *(v321 + 212);
          *(v320 + 108) = v322 + 1;
          ++v301[16];
          if (!*(v321 + 340))
          {
            goto LABEL_631;
          }

LABEL_660:
          v320 = *v320;
          if (!v320)
          {
            goto LABEL_661;
          }

          continue;
        }

        break;
      }

      v328 = *(v321 + 64);
      if (v328)
      {
        if (v328 == v325)
        {
          goto LABEL_631;
        }

        v325 = -1;
      }

      *(v321 + 64) = v325;
LABEL_631:
      v329 = *(v320 + 130);
      if (v329 != 1)
      {
        v330 = *(v320 + 33);
        if (v330 == 6)
        {
          if (vorr_s8(v320[17], *&vextq_s8(*(v320 + 17), *(v320 + 17), 8uLL)))
          {
            goto LABEL_635;
          }
        }

        else if (v330 == 4 && *(v320 + 34))
        {
LABEL_635:
          v331 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
            {
              v334 = v329 == 0;
              v339 = v321 + 376;
              v340 = (v321 + 376);
              while (1)
              {
                if (!v340 || (v341 = *v340, v341 > 0x3F))
                {
LABEL_652:
                  v338 = 257;
                  goto LABEL_655;
                }

                if (!*v340)
                {
                  break;
                }

                v340 += v341 + 1;
                if (&v340[-v339] >= 256)
                {
                  goto LABEL_652;
                }
              }

              v338 = (v340 - v339 + 1);
LABEL_655:
              v342 = *(v321 + 342);
              v343 = *(v321 + 200);
              *buf = 67111427;
              *&buf[4] = 0;
              *&buf[8] = 1024;
              *&buf[10] = v334;
              *&buf[14] = 2160;
              *&buf[16] = 1752392040;
              *&buf[24] = 1045;
              *&buf[26] = 20;
              *&buf[30] = 2101;
              *&buf[32] = v320 + 132;
              *&buf[40] = 2160;
              *&buf[42] = 1752392040;
              *&buf[50] = 1040;
              *&buf[52] = v338;
              v909 = 2101;
              v910 = v321 + 376;
              v911 = 1024;
              v912 = v342;
              LOWORD(v913) = 1024;
              *(&v913 + 2) = v343;
              _os_log_impl(&_mh_execute_header, v331, OS_LOG_TYPE_INFO, "[Q%u] Sending unicast assist query (refresh %{mdns:yesno}d) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x4Eu);
            }
          }

          else
          {
            v331 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
            {
              v334 = v329 == 0;
              v335 = v321 + 376;
              v336 = (v321 + 376);
              while (1)
              {
                if (!v336 || (v337 = *v336, v337 > 0x3F))
                {
LABEL_643:
                  v338 = 257;
                  goto LABEL_655;
                }

                if (!*v336)
                {
                  break;
                }

                v336 += v337 + 1;
                if (&v336[-v335] >= 256)
                {
                  goto LABEL_643;
                }
              }

              v338 = (v336 - v335 + 1);
              goto LABEL_655;
            }
          }

          *v887 = *(v321 + 340);
          *(a1 + 28962) = 0;
          *(a1 + 28964) = 0;
          v344 = putQuestion(v887, v880, a1 + 37912, (v321 + 376), *(v321 + 342), *(v321 + 344) | 0x8000u, v332, v333);
          mDNSSendDNSMessage(a1, v887, v344, v320[4], 0, 0, v320 + 33, 0xE914u, 0, *(v321 + 640));
          v300 = *(a1 + 64);
          *(v321 + 208) = v300;
          *(v321 + 256) = v300;
          *(v321 + 224) = 0;
          if (v300 <= 1)
          {
            v345 = 1;
          }

          else
          {
            v345 = v300;
          }

          *(v321 + 216) = v345;
          *(v321 + 64) = 0;
          *(v320 + 130) = 1;
          *(v320 + 26) = v300;
          v301 = (a1 + 19920);
          goto LABEL_660;
        }
      }

      *(v321 + 359) = 1;
      goto LABEL_660;
    }

LABEL_662:
    v318 = v863 + 1;
    if (v863 != 498)
    {
      continue;
    }

    break;
  }

  v346 = *(a1 + 208);
  if (v346)
  {
    v347 = mDNSLogCategory_Default;
    v348 = v346 + 376;
    DNSTypeName(*(v346 + 342));
    LogMsgWithLevel(v347, OS_LOG_TYPE_DEFAULT, "SendQueries ERROR m->CurrentQuestion already set: %##s (%s)", v349, v350, v351, v352, v353, v348);
  }

  v354 = *(a1 + 192);
  *(a1 + 208) = v354;
  if (!v354)
  {
    *(a1 + 208) = 0;
    v364 = *(a1 + 64) + 939524096;
    *(a1 + 92) = v364;
    goto LABEL_761;
  }

  v355 = 0;
  while (2)
  {
    if (v354 != *v867)
    {
      if (!*(v354 + 340))
      {
        v357 = *(v354 + 212);
        if (v357 >= 1 && !*(v354 + 40) && *(a1 + 64) - (v357 + *(v354 + 208)) >= 0)
        {
          if (QuestionSendsMDNSQueriesViaUnicast(v354))
          {
            *v887 = 0;
            *(a1 + 28964) = 0;
            v358 = putQuestion(v887, v880, a1 + 37912, (v354 + 376), *(v354 + 342), *(v354 + 344) | 0x8000u, v7, v8);
            mDNSSendDNSMessage(a1, v887, v358, *(v354 + 136), 0, 0, (v354 + 304), 0xE914u, 0, *(v354 + 640));
            v359 = 3 * *(v354 + 212);
            if (v359 >= 3600000)
            {
              v359 = 3600000;
            }

            *(v354 + 212) = v359;
            v360 = *(a1 + 64);
            *(v354 + 208) = v360;
            *(v354 + 256) = v360;
            *(v354 + 224) = 0;
            *(v354 + 64) = 0;
            if (v360 <= 1)
            {
              v360 = 1;
            }

            *(v354 + 216) = v360;
          }

          else
          {
            if (!*(v354 + 689))
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = CacheGroupForName(a1, *(v354 + 200), (v354 + 376));
              *__dst = 0;
              *&__dst[8] = __dst;
              *&__dst[16] = 0x2000000000;
              LOBYTE(v895) = 0;
              *(v354 + 689) = 1;
              v361 = *(v354 + 200);
              v362 = *(v354 + 136);
              v892[0] = _NSConcreteStackBlock;
              v892[1] = 0x40000000;
              v892[2] = __SendQueries_block_invoke;
              v892[3] = &unk_10014E0B8;
              v892[6] = v354;
              v892[7] = a1;
              v892[4] = buf;
              v892[5] = __dst;
              unicast_assist_addr_enumerate(v361, v362, v892);
              v363 = *(*&__dst[8] + 24);
              _Block_object_dispose(__dst, 8);
              _Block_object_dispose(buf, 8);
              if (v363)
              {
                goto LABEL_669;
              }

              v357 = *(v354 + 212);
            }

            *(v354 + 64) = -1;
            if (v355 <= v357)
            {
              v355 = v357;
            }
          }
        }
      }

LABEL_669:
      v356 = *(a1 + 208);
      if (v354 == v356)
      {
        v356 = *(v356 + 8);
        *(a1 + 208) = v356;
      }

      v354 = v356;
      if (!v356)
      {
        goto LABEL_692;
      }

      continue;
    }

    break;
  }

  v365 = mDNS_LoggingEnabled;
  do
  {
    if (v365)
    {
      v366 = mDNSLogCategory_Default;
      DNSTypeName(*(v354 + 342));
      LogMsgWithLevel(v366, OS_LOG_TYPE_DEFAULT, "SendQueries question loop 1: Skipping NewQuestion %##s (%s)", v367, v368, v369, v370, v371, v354 + 376);
      v365 = mDNS_LoggingEnabled;
      v354 = *(a1 + 208);
    }

    v354 = *(v354 + 8);
    *(a1 + 208) = v354;
  }

  while (v354);
LABEL_692:
  v372 = *(a1 + 192);
  *(a1 + 208) = 0;
  v364 = *(a1 + 64) + 939524096;
  *(a1 + 92) = v364;
  if (!v372)
  {
    goto LABEL_760;
  }

  while (2)
  {
    if (v372 != *v867)
    {
      if (*(v372 + 340) || QuestionSendsMDNSQueriesViaUnicast(v372))
      {
        goto LABEL_738;
      }

      if (*(v372 + 64))
      {
        v373 = *(a1 + 64);
        v374 = *(v372 + 208);
        goto LABEL_698;
      }

      v377 = *(v372 + 212);
      if (v377 < 1 || *(v372 + 40) || v377 > v355)
      {
        goto LABEL_738;
      }

      v378 = *(a1 + 64);
      v379 = *(v372 + 208) + v377;
      if ((v378 + v377 / 0xAu - v379) >= 0)
      {
        goto LABEL_711;
      }

      if ((v378 + (v377 >> 1) - v379) < 0)
      {
LABEL_738:
        SetNextQueryTime(a1, v372);
        v372 = *(v372 + 8);
        if (!v372)
        {
          break;
        }

        continue;
      }

      v380 = (v372 + 376);
      v381 = (v372 + 376);
      while (1)
      {
        if (!v381 || (v382 = *v381, v382 > 0x3F))
        {
LABEL_719:
          v383 = 261;
          goto LABEL_750;
        }

        if (!*v381)
        {
          break;
        }

        v381 += v382 + 1;
        if (v381 - v380 >= 256)
        {
          goto LABEL_719;
        }
      }

      v383 = (v381 - v380 + 1) + 4;
LABEL_750:
      v400 = CacheGroupForName(a1, *(v372 + 200), v380);
      if (v400)
      {
        for (kk = v400[2]; kk; kk = *kk)
        {
          if (*(kk + 20) <= 0x400u && SameNameRecordAnswersQuestion((kk + 8), 0, v372, v401, v402, v403, v404, v405))
          {
            v407 = *(a1 + 64);
            if (*(kk + 80) - v407 + ((1000 * *(kk + 16)) >> 1) >= 0 && *(kk + 88) - (v407 + *(v372 + 212)) >= 1)
            {
              v383 += *(kk + 22) + 12;
              if (v383 > 0x1FF)
              {
                goto LABEL_738;
              }
            }
          }
        }
      }

LABEL_711:
      v374 = *(v372 + 208);
      v373 = *(a1 + 64);
      if (v374 == v373)
      {
        goto LABEL_738;
      }

LABEL_698:
      v375 = *(v372 + 212);
      if (v373 - v374 - v375 / 2 >= 0)
      {
        if (!*(v372 + 351) || *(v372 + 228) < *(v372 + 351) || *(v372 + 359) || (*(v372 + 327) & 4) != 0 && v375 == 334)
        {
          *(v372 + 64) = -1;
          v376 = 3 * v375;
          *(v372 + 212) = 3 * v375;
          goto LABEL_705;
        }

        *(v372 + 64) = 0;
        *(v372 + 208) = v373;
        *(v372 + 212) = 3600000;
        *(v372 + 352) = 0;
        if (mDNS_LoggingEnabled == 1)
        {
          v384 = mDNSLogCategory_Default;
          v385 = DNSTypeName(*(v372 + 342));
          v840 = *(v372 + 351);
          LogMsgWithLevel(v384, OS_LOG_TYPE_DEFAULT, "SendQueries: (%s) %##s reached threshold of %d answers", v386, v387, v388, v389, v390, v385);
          v376 = *(v372 + 212);
LABEL_705:
          if (v376 > 3600000)
          {
            *(v372 + 212) = 3600000;
            goto LABEL_724;
          }
        }

        else
        {
          v376 = 3600000;
        }

        if (*(v372 + 340))
        {
          goto LABEL_724;
        }

        v398 = *(v372 + 136);
        if (!v398 || *(v372 + 228) || v376 != 9018 || *(v372 + 352))
        {
          goto LABEL_724;
        }

        v399 = *(v372 + 342);
        if (v399 == 28 || v399 == 1)
        {
          if (CacheHasAddressTypeForName(a1, (v372 + 376), *(v372 + 200)))
          {
            goto LABEL_724;
          }

          v398 = *(v372 + 136);
        }

        ReconfirmAntecedents(a1, (v372 + 376), *(v372 + 200), v398, 0);
      }

LABEL_724:
      v391 = *(v372 + 64);
      *(v372 + 358) = v391 == -1;
      if (v391 == -1)
      {
        if (v870)
        {
          v393 = *(v372 + 136);
          if (!v393)
          {
            v393 = *(v870 + 3552);
          }
        }

        else
        {
          v393 = 0;
        }

        *(v372 + 64) = v393;
        v392 = *(a1 + 64);
        *(v372 + 208) = v392;
      }

      else
      {
        v392 = *(a1 + 64);
      }

      v394 = *(v372 + 56);
      if (v394)
      {
        v395 = *(v372 + 212) / 2 - v392;
        v396 = (v394 + 8);
        v397 = 8;
        do
        {
          if (v395 + *v396 < 0)
          {
            *(v396 - 1) = 0;
          }

          v396 += 4;
          --v397;
        }

        while (v397);
      }

      *(v372 + 256) = v392;
      *(v372 + 224) = 0;
      if (*(v372 + 352))
      {
        --*(v372 + 352);
      }

      goto LABEL_738;
    }

    break;
  }

  v364 = *(a1 + 64) + 939524096;
LABEL_760:
  v301 = (a1 + 19920);
LABEL_761:
  *(a1 + 96) = v364;
  v408 = *(a1 + 12640);
  v409 = v870;
  if (v408)
  {
    v410 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v408 + 8), (*(v408 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v410, OS_LOG_TYPE_DEFAULT, "SendQueries ERROR m->CurrentRecord already set %s", v411, v412, v413, v414, v415, a1 + 47032);
  }

  v416 = *v878;
  v417 = (a1 + 200);
  if (*v878)
  {
    while (2)
    {
      *(a1 + 12640) = *v416;
      if (!v416[4] && !*(v416 + 122) && !IsLocalDomain(v416[5]) || *(v416 + 8) != 2 || *(v416 + 6) == 41)
      {
        goto LABEL_817;
      }

      v418 = *(a1 + 64);
      if (v418 - (*(v416 + 71) + *(v416 + 70)) >= 0)
      {
        v419 = *(v416 + 190);
        if (*(v416 + 190))
        {
          v420 = *(v416 + 36);
          if (v420 == 6)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v423 = mDNSLogCategory_Default;
              v424 = (a1 + 12656);
              do
              {
                v424 = *v424;
              }

              while (v424 && v424[444] != v416[4]);
              GetRRDisplayString_rdb(v416 + 8, (v416[6] + 4), (a1 + 47032));
              LogMsgWithLevel(v423, OS_LOG_TYPE_DEFAULT, "SendQueries NDP Probe %d %s %s", v430, v431, v432, v433, v434, v419);
              v417 = (a1 + 200);
              v301 = (a1 + 19920);
            }

            SendNDP(a1, 135, 0, v416, &zerov6Addr, 0, v416 + 148, v416 + 132);
          }

          else if (v420 == 4)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v421 = mDNSLogCategory_Default;
              v422 = (a1 + 12656);
              do
              {
                v422 = *v422;
              }

              while (v422 && v422[444] != v416[4]);
              GetRRDisplayString_rdb(v416 + 8, (v416[6] + 4), (a1 + 47032));
              LogMsgWithLevel(v421, OS_LOG_TYPE_DEFAULT, "SendQueries ARP Probe %d %s %s", v425, v426, v427, v428, v429, v419);
              v417 = (a1 + 200);
              v301 = (a1 + 19920);
            }

            SendARP(a1, 1, v416, &zerov4Addr, &zeroEthAddr, v416 + 148, v416 + 132);
          }

          v409 = v870;
          if (v870 && !*(v416 + 126))
          {
            v435 = v416[4];
            if (!v435)
            {
              v435 = *(v870 + 3552);
            }
          }

          else
          {
            v435 = 0;
          }

          v416[28] = v435;
          *(v416 + 71) = *(a1 + 64);
          v436 = *(v416 + 190);
          if (v436 >= 3)
          {
            LOBYTE(v436) = 3;
          }

          *(v416 + 190) = v436 - 1;
          SetNextAnnounceProbeTime(a1, v416);
          if (!*(v416 + 190))
          {
            for (mm = *(a1 + 12624); mm; mm = *mm)
            {
              if (*(mm + 8) == 2 && mm[4] == v416[4])
              {
                v438 = *(v416 + 8);
                v51 = v438 > 0x12;
                v439 = (1 << v438) & 0x50006;
                v440 = v51 || v439 == 0;
                if (!v440 && *(mm + 6) == *(v416 + 6) && resource_records_have_same_dnssec_rr_category(mm[8], v416[8]) && *(mm + 6) == *(v416 + 6) && *(mm + 7) == *(v416 + 7) && *(mm + 10) == *(v416 + 10) && *(mm + 7) == *(v416 + 7) && SameRDataBody((mm + 1), (v416[6] + 4), SameDomainName) && SameDomainNameBytes(mm[5], v416[5]))
                {
                  *(mm + 190) = 0;
                }
              }
            }

            v301 = (a1 + 19920);
            v409 = v870;
            if (!*(v416 + 188))
            {
              AcknowledgeRecord(a1, v416);
            }
          }

LABEL_817:
          v416 = *(a1 + 12640);
          if (!v416)
          {
            goto LABEL_821;
          }

          continue;
        }

        v409 = v870;
        if (!*(v416 + 188))
        {
          AcknowledgeRecord(a1, v416);
          v418 = *(a1 + 64);
        }

        *(v416 + 8) = 16;
        *(v416 + 70) = 500;
        *(v416 + 71) = v418 - 500;
      }

      break;
    }

    SetNextAnnounceProbeTime(a1, v416);
    goto LABEL_817;
  }

LABEL_821:
  v2 = *(a1 + 12624);
  *(a1 + 12640) = v2;
  v151 = &unk_100178000;
  v441 = a1 + 28960;
  if (v2)
  {
    do
    {
      v442 = *v2;
      *(a1 + 12640) = *v2;
      if (*(v2 + 8) == 2 && !*(v2 + 190) && !*(v2 + 188))
      {
        AcknowledgeRecord(a1, v2);
        v442 = *(a1 + 12640);
      }

      v2 = v442;
    }

    while (v442);
  }

  if (!v409)
  {
    goto LABEL_1093;
  }

  v852 = 0;
  v851 = 0;
  v856 = a1 + 30412;
  v876 = (a1 + 47032);
  while (2)
  {
    v871 = v409;
    v864 = mDNS_McastTracingEnabled;
    if (mDNS_McastTracingEnabled)
    {
      v443 = 20;
    }

    else
    {
      v443 = 0;
    }

    v890 = 0;
    v891 = (a1 + 28972);
    *v441 = 0;
    *(v441 + 4) = 0;
    v444 = v893;
    if (v893)
    {
      LOBYTE(v860) = 0;
      goto LABEL_834;
    }

    v889 = &v893;
    v850 = v443;
    v888 = v443;
    v450 = *(a1 + 192);
    if (!v450)
    {
      LOBYTE(v860) = 0;
      v451 = v871;
      goto LABEL_912;
    }

    v860 = 0;
    v451 = v871;
    while (v450 != *v417)
    {
      if (*(v450 + 340) || *(v450 + 64) != *(v451 + 3552))
      {
        goto LABEL_887;
      }

      if (!mDNSPlatformValidQuestionForInterface(v450, v451, v3, v4, v5, v6, v7, v8))
      {
        goto LABEL_884;
      }

      v452 = *(v451 + 3552);
      if (DPCFeatureEnabled_sOnce != -1)
      {
        dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
      }

      if (DPCFeatureEnabled_sEnabled && _DPCQuestionGetSubscriber(*(v450 + 192), v452))
      {
        goto LABEL_884;
      }

      v453 = *(v450 + 56);
      if (v453)
      {
        v454 = *(v451 + 17) == 0;
        v455 = *(v451 + 18) == 0;
        v456 = 8;
        while (1)
        {
          if (*v453 == *(v451 + 3552))
          {
            v457 = *(v453 + 12);
            v458 = v457 == 6 || v455;
            if (v457 == 4)
            {
              v454 = 1;
            }

            else
            {
              v455 = v458;
            }

            if (v454 && v455)
            {
              break;
            }
          }

          v453 += 16;
          if (!--v456)
          {
            goto LABEL_866;
          }
        }

        ++*v301;
      }

      else
      {
LABEL_866:
        if (!BuildQuestion(a1, v451, v441, &v891, v450, &v889, &v888, v8))
        {
          goto LABEL_887;
        }

        if (!*(v450 + 40) && !*(v450 + 340))
        {
          if (!*(v450 + 264) || *(v450 + 268))
          {
            v459 = *(a1 + 64);
            if (v459 <= 1)
            {
              v459 = 1;
            }

            *(v450 + 264) = v459;
            *(v450 + 268) = 0;
          }

          ++*(v450 + 260);
        }
      }

      if (!*(v450 + 356))
      {
        goto LABEL_881;
      }

      v460 = *(v450 + 136);
      v461 = (v450 + 376);
      if ((v460 == 0 || v460 >= 0xFFFFFFFFFFFFFFFBLL) && ((1 << (v460 + 5)) & 0x2D) != 0)
      {
        v151 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Invalid InterfaceID %p for question %##s", v4, v5, v6, v7, v8, *(v450 + 136));
        goto LABEL_880;
      }

      v464 = *v461;
      if (v464 < 2)
      {
LABEL_902:
        v151 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed WakeOnResolve name %##s", v4, v5, v6, v7, v8, v450 + 376);
        goto LABEL_903;
      }

      v465 = 0;
      v466 = (v450 + 377);
      v467 = 1;
      while (2)
      {
        v469 = *v466++;
        v468 = v469;
        if (v469 == 58)
        {
          ++v465;
LABEL_901:
          if (v464 == ++v467)
          {
            goto LABEL_902;
          }

          continue;
        }

        break;
      }

      if (v468 != 64)
      {
        goto LABEL_901;
      }

      memset(__dst, 0, 18);
      memset(buf, 0, 47);
      if (v465 == 5)
      {
        if (v467 < 0x13)
        {
          v470 = v464 - v467;
          if (v470 < 47)
          {
            memcpy(__dst, (v450 + 377), (v467 - 1));
            __dst[(v467 - 1)] = 0;
            memcpy(buf, &v461[v467 + 1], v470);
            buf[v470] = 0;
            ++v301[18];
            mDNSPlatformSendWakeupPacket(v460, __dst, buf, 3 - *(v450 + 356), v471, v472, v473, v474);
            v151 = &unk_100178000;
          }

          else
          {
            v151 = &unk_100178000;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed IP address %##s, length %d", v4, v5, v6, v7, v8, v450 + 376);
          }
        }

        else
        {
          v151 = &unk_100178000;
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed Ethernet address %##s, length %d", v4, v5, v6, v7, v8, v450 + 376);
        }
      }

      else
      {
        v151 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed Ethernet address %##s, cnt %d", v4, v5, v6, v7, v8, v450 + 376);
      }

LABEL_903:
      v417 = (a1 + 200);
LABEL_880:
      --*(v450 + 356);
      v451 = v871;
LABEL_881:
      v462 = v860;
      if (*(v450 + 640))
      {
        v462 = 1;
      }

      v860 = v462;
LABEL_884:
      if (*(v450 + 136) || !*(v450 + 358))
      {
        v463 = 0;
      }

      else
      {
        v463 = *v451;
        if (*v451)
        {
          while (!*(v463 + 16))
          {
            v463 = *v463;
            if (!v463)
            {
              goto LABEL_886;
            }
          }

          v463 = v463[444];
        }
      }

LABEL_886:
      *(v450 + 64) = v463;
LABEL_887:
      v450 = *(v450 + 8);
      if (v450)
      {
        continue;
      }

      break;
    }

LABEL_912:
    if (DPCFeatureEnabled_sOnce != -1)
    {
      dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
    }

    if (DPCFeatureEnabled_sEnabled)
    {
      v475 = v852 == 0;
    }

    else
    {
      v475 = 0;
    }

    if (v475)
    {
      if (*(v441 + 4))
      {
        v476 = 0;
        v477 = v891;
        v478 = (a1 + 28972);
        while (1)
        {
          bzero(buf, 0x2B8uLL);
          Question = getQuestion(v441, v478, v477, 0, buf);
          if (!Question)
          {
LABEL_930:
            v451 = v871;
            qword_1001624D8 = *(v871 + 3552);
            byte_1001625F8 = 2;
            BuildQuestion(a1, v871, v441, &v891, &DPCBrowse, &v889, &v888, v8);
            qword_1001624D8 = 0;
            v852 = 1;
            goto LABEL_932;
          }

          v478 = Question;
          v480 = v922 & 0x7FFF;
          v922 &= ~0x8000u;
          v481 = v921 == word_1001625EE && v480 == word_1001625F0;
          if (v481 && v920 == dword_100162560 && SameDomainNameBytes(v926, byte_100162610))
          {
            break;
          }

          if (++v476 >= *(v441 + 4))
          {
            goto LABEL_930;
          }
        }

        v852 = 1;
        v451 = v871;
      }

      else
      {
        v852 = 0;
      }
    }

LABEL_932:
    v482 = *v878;
    if (!*v878)
    {
      v504 = v850;
      goto LABEL_1012;
    }

    v853 = 0;
    v483 = 0;
    v849 = v888;
    while (2)
    {
      if (!*(v482 + 194))
      {
        v2 = *(v451 + 3552);
        if (*(v482 + 224) == v2 && *(v482 + 12) != 41)
        {
          if (mDNSPlatformValidRecordForInterface(v482, v2, v3, v4, v5, v6, v7, v8))
          {
            v848 = v483;
            if (*(v482 + 190) < 2u)
            {
              v484 = 0;
              v485 = (a1 + 28972);
            }

            else
            {
              v484 = *(a1 + 12);
              v485 = (a1 + 28972);
              if (*(a1 + 12))
              {
                if (*(v451 + 3677))
                {
                  v484 = 0x8000;
                }

                else
                {
                  v484 = 0;
                }
              }
            }

            v487 = *(v441 + 4);
            v488 = 1440;
            if (!*(v441 + 4))
            {
              v488 = 8940;
            }

            v489 = &v485[v488];
            v490 = *(v482 + 14) | v484;
            bzero(buf, 0x2B8uLL);
            if (v487)
            {
              v491 = 0;
              while (1)
              {
                v485 = getQuestion(v441, v485, v489, 0, buf);
                if (v485)
                {
                  if (v921 == 255 && v922 == v490 && v920 == *(v482 + 24) && SameDomainNameBytes(v926, *(v482 + 40)))
                  {
                    break;
                  }
                }

                v492 = 0;
                if (v485)
                {
                  if (++v491 < *(v441 + 4))
                  {
                    continue;
                  }
                }

                goto LABEL_965;
              }

              v492 = 1;
            }

            else
            {
              v492 = 0;
            }

LABEL_965:
            v493 = mDNSGetTSRForAuthRecordNamed(*v878, *(v482 + 40), *(v482 + 24));
            v494 = UnsafeBufferPointer(v482, v493, &v890);
            v495 = v853;
            if (v853 | v864)
            {
              v496 = 14;
            }

            else
            {
              v496 = 25;
            }

            v497 = v849 + v496;
            if (v494)
            {
              v498 = v497;
            }

            else
            {
              v498 = v849;
            }

            if (v494)
            {
              v495 = v853 + 1;
            }

            v853 = v495;
            for (nn = *v878; nn; nn = *nn)
            {
              if (AddRecordInProbe(v482, v493 != 0, nn, *(v871 + 3552), v5, v6, v7, v8))
              {
                v498 += *(nn + 11) + 12;
              }
            }

            v2 = v891;
            if (v492)
            {
              v417 = (a1 + 200);
              v301 = (a1 + 19920);
              if (&v891[v498] >= v489)
              {
                goto LABEL_995;
              }

              goto LABEL_982;
            }

            v500 = putQuestion(v441, v891, v489 - v498, *(v482 + 40), 0xFFuLL, v490, v7, v8);
            v301 = (a1 + 19920);
            if (v500)
            {
              v891 = v500;
              v417 = (a1 + 200);
LABEL_982:
              v501 = *v878;
              if (*v878)
              {
                v502 = v493 != 0;
                do
                {
                  if (AddRecordInProbe(v482, v502, v501, *(v871 + 3552), v5, v6, v7, v8))
                  {
                    if (*(v482 + 32))
                    {
                      v503 = 0;
                    }

                    else
                    {
                      v503 = v871;
                      while (1)
                      {
                        v503 = *v503;
                        if (!v503)
                        {
                          break;
                        }

                        if (*(v503 + 16))
                        {
                          v503 = *(v503 + 3552);
                          break;
                        }
                      }
                    }

                    v501[28] = v503;
                    *(v501 + 194) = 1;
                  }

                  v501 = *v501;
                }

                while (v501);
              }

              v849 = v498;
LABEL_995:
              v151 = &unk_100178000;
              v451 = v871;
              v483 = v848;
            }

            else
            {
              v483 = v848 + 1;
              v151 = &unk_100178000;
              v417 = (a1 + 200);
              v451 = v871;
            }
          }

          else
          {
            if (*(v482 + 32))
            {
              v486 = 0;
            }

            else
            {
              v486 = *v451;
              if (*v451)
              {
                while (!*(v486 + 16))
                {
                  v486 = *v486;
                  if (!v486)
                  {
                    goto LABEL_945;
                  }
                }

                v486 = v486[444];
              }
            }

LABEL_945:
            *(v482 + 224) = v486;
            *(v482 + 194) = 0;
          }
        }
      }

      v482 = *v482;
      if (v482)
      {
        continue;
      }

      break;
    }

    v504 = v850;
    if (v483)
    {
      v505 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v506 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v506 = 1;
      }

      LOWORD(v482) = v853;
      if (v506)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_1011;
        }
      }

      else
      {
        v505 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
        {
LABEL_1011:
          v508 = *(v451 + 3552);
          *buf = 67109376;
          *&buf[4] = v483;
          *&buf[8] = 2048;
          *&buf[10] = v508;
          _os_log_impl(&_mh_execute_header, v505, OS_LOG_TYPE_DEBUG, "SendQueries: %u questions will be sent in a later request on InterfaceID= %p", buf, 0x12u);
        }
      }
    }

    else
    {
      LOWORD(v482) = v853;
    }

LABEL_1012:
    v444 = v893;
    if (v893)
    {
      v443 = v504 + 14 * v482;
      if (v482)
      {
        v445 = 11;
        goto LABEL_835;
      }

LABEL_834:
      v445 = 0;
LABEL_835:
      if (v864)
      {
        v445 = 0;
      }

      v446 = v856 - (v445 + v443);
      v447 = v891;
      while (1)
      {
        v448 = PutResourceRecordTTLWithLimit(v441, v447, (v441 + 6), v444 + 8, *(v444 + 16) - (*(a1 + 64) - *(v444 + 80)) / 0x3E8u, v446, v7, v8);
        if (!v448)
        {
          break;
        }

        v891 = v448;
        v893 = *(v444 + 72);
        v449 = v893;
        *(v444 + 72) = 0;
        v447 = v448;
        v444 = v449;
        if (!v449)
        {
          v447 = v448;
          goto LABEL_1016;
        }
      }

      if (*(v441 + 4) >= 2u)
      {
        LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "SendQueries:   Put %d answers; No more space for known answers", v4, v5, v6, v7, v8, *(v441 + 6));
      }

      *(v441 + 2) |= 2u;
    }

    else
    {
      v447 = v891;
    }

LABEL_1016:
    v509 = *v878;
    if (*v878)
    {
      LOWORD(v510) = 0;
      v511 = v890;
      do
      {
        if (*(v509 + 194))
        {
          v512 = 30412;
          if (*(v441 + 4) <= 1u)
          {
            v512 = 37912;
          }

          v513 = PutResourceRecordTTLWithLimit(v441, v447, (v441 + 8), (v509 + 1), *(v509 + 4), a1 + v512, v7, v8);
          *(v509 + 194) = 0;
          if (!v513)
          {
            v514 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb(v509 + 8, (v509[6] + 4), v876);
            LogMsgWithLevel(v514, OS_LOG_TYPE_DEFAULT, "SendQueries:   How did we fail to have space for the Update record %s", v515, v516, v517, v518, v519, v876);
            v513 = v447;
          }

          v520 = UnsafeBufferPointer(*v878, v509, &v890);
          if (v520)
          {
            v521 = v520;
            v522 = v509[5];
            v523 = *(v441 + 6);
            v524 = *(v441 + 10);
            v525 = *(v441 + 8);
            v526 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v526)
            {
              __break(1u);
            }

            *(v521 + 4) = v523 + v524 + v525 - 1;
            v526[1] = v521;
            v526[2] = v522;
            LOWORD(v510) = v510 + 1;
            *v526 = v511;
            v890 = v526;
            v511 = v526;
            v447 = v513;
            v441 = a1 + 28960;
            v301 = (a1 + 19920);
          }

          else
          {
            v447 = v513;
          }
        }

        v509 = *v509;
      }

      while (v509);
      v510 = v510;
      v417 = (a1 + 200);
    }

    else
    {
      v510 = 0;
    }

    v891 = v447;
    v151 = &unk_100178000;
    if (v447 <= v880)
    {
      v529 = v871;
      do
      {
        v529 = *v529;
      }

      while (v529 && !*(v529 + 16));
      v852 = 0;
      goto LABEL_1087;
    }

    v527 = v890;
    if (v864 || v890)
    {
      bzero(buf, 0x498uLL);
      buf[8] = 32;
      strcpy(&buf[12], ")");
      *&buf[16] = 4500;
      v932 = 264;
      *&buf[40] = v931;
      *&buf[48] = &v932;
      v923 = 0;
      v924 = 0;
      v913 = 0u;
      v914 = 0u;
      v915 = 0u;
      v916 = 0u;
      v917 = 0u;
      v918 = 0u;
      v919 = 0;
      v925 = v931;
      v927 = 0;
      v929 = 0;
      v930 = 0;
      v928 = 0;
      v931[0] = 0;
      memset(v926, 0, 217);
      *&buf[14] = 1440;
      *&buf[22] = 0;
      if (v864)
      {
        v934 = *(a1 + 12676);
        v935 = -1413927278;
        *&buf[20] = 1572888;
        v933 = 392681;
        v532 = 48;
        v533 = 1;
        if (v527)
        {
          goto LABEL_1040;
        }

LABEL_1042:
        v537 = 4500;
      }

      else
      {
        v533 = 0;
        v532 = 24;
        if (!v527)
        {
          goto LABEL_1042;
        }

LABEL_1040:
        *&buf[20] = v532;
        *&buf[22] = v532;
        v534 = v527[1];
        v535 = &v933 + 6 * v533;
        v535[2] = v534[1];
        *(v535 + 6) = *(v534 + 4);
        v536 = *v534;
        *v535 = 720362;
        v535[1] = v536;
        v890 = *v527;
        free(v527);
        v537 = *&buf[16];
      }

      v528 = PutResourceRecordTTLWithLimit(v441, v447, (v441 + 10), &buf[8], v537, a1 + 37912, v530, v531);
      v891 = v528;
      if (v528 && v890)
      {
        v528 = AddTSRROptsToMessage(&v890, v441, (v447 + 9), v528, a1 + 37912, v6, v7, v8);
        v891 = v528;
      }

      if (!v528)
      {
        v538 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            if (v864)
            {
              v539 = "TRACER";
            }

            else
            {
              v539 = "";
            }

LABEL_1057:
            v540 = *(v441 + 4);
            v541 = *(v441 + 6);
            v542 = *(a1 + 28968);
            v854 = *(a1 + 28970);
            GetRRDisplayString_rdb(&buf[8], (*&buf[48] + 4), v876);
            *__dst = 136316930;
            *&__dst[4] = "";
            *&__dst[12] = 2080;
            *&__dst[14] = v539;
            *&__dst[22] = 1024;
            v895 = v510;
            v896 = 1024;
            *v897 = v540;
            *&v897[4] = 1024;
            *&v897[6] = v541;
            LOWORD(v898) = 1024;
            *(&v898 + 2) = v542;
            v441 = a1 + 28960;
            HIWORD(v898) = 1024;
            LODWORD(v899) = v854;
            WORD2(v899) = 2080;
            *(&v899 + 6) = a1 + 47032;
            v301 = (a1 + 19920);
            _os_log_impl(&_mh_execute_header, v538, OS_LOG_TYPE_ERROR, "SendQueries: How did we fail to have space for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s", __dst, 0x3Eu);
          }
        }

        else
        {
          v538 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            if (v864)
            {
              v539 = "TRACER";
            }

            else
            {
              v539 = "";
            }

            goto LABEL_1057;
          }
        }
      }

      if (v528 > v856)
      {
        v543 = *(v441 + 4);
        if (v543 != 1 || *(v441 + 6) || *(v441 + 8) != 1 || *(v441 + 10) != 1)
        {
          v544 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
              if (v864)
              {
                v545 = "TRACER";
              }

              else
              {
                v545 = "";
              }

LABEL_1073:
              v546 = *(v441 + 6);
              v855 = *(a1 + 28968);
              v865 = *(a1 + 28970);
              GetRRDisplayString_rdb(&buf[8], (*&buf[48] + 4), v876);
              *__dst = 136317698;
              *&__dst[4] = "";
              *&__dst[12] = 2080;
              *&__dst[14] = v545;
              *&__dst[22] = 1024;
              v895 = v510;
              v896 = 2048;
              *v897 = a1 + 28972;
              *&v897[8] = 2048;
              v898 = a1 + 30412;
              LOWORD(v899) = 2048;
              *(&v899 + 2) = v528;
              WORD5(v899) = 1024;
              HIDWORD(v899) = v543;
              v900 = 1024;
              v901 = v546;
              v902 = 1024;
              v903 = v855;
              v441 = a1 + 28960;
              v904 = 1024;
              v905 = v865;
              v906 = 2080;
              v907 = a1 + 47032;
              v301 = (a1 + 19920);
              _os_log_impl(&_mh_execute_header, v544, OS_LOG_TYPE_ERROR, "SendQueries: Why did we generate oversized packet with %s %s TSR(%d) OPT record %p %p %p (%d/%d/%d/%d) %s", __dst, 0x5Cu);
            }
          }

          else
          {
            v544 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
              if (v864)
              {
                v545 = "TRACER";
              }

              else
              {
                v545 = "";
              }

              goto LABEL_1073;
            }
          }
        }
      }

      v417 = (a1 + 200);
      goto LABEL_1075;
    }

    v528 = v447;
LABEL_1075:
    v529 = v871;
    if ((*(v441 + 2) & 2) != 0 && *(v441 + 4) >= 2u)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendQueries: Should not have more than one question (%d) in a truncated packet", v4, v5, v6, v7, v8, *(v441 + 4));
    }

    if (*(v871 + 17))
    {
      mDNSSendDNSMessage(a1, v441, v528, *(v871 + 3552), 0, 0, AllDNSLinkGroup_v4, 0xE914u, 0, v860);
    }

    if (*(v871 + 18))
    {
      mDNSSendDNSMessage(a1, v441, v891, *(v871 + 3552), 0, 0, &AllDNSLinkGroup_v6, 0xE914u, 0, v860);
    }

    v151 = &unk_100178000;
    if (!*(a1 + 80))
    {
      v547 = *(a1 + 64) + 100;
      if (v547 <= 1)
      {
        v547 = 1;
      }

      *(a1 + 80) = v547;
    }

    if (++v851 >= 1000)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendQueries exceeded loop limit %d: giving up", v4, v5, v6, v7, v8, v851);
      break;
    }

LABEL_1087:
    v548 = v529;
    v549 = v890;
    if (v890)
    {
      do
      {
        v550 = *v549;
        free(v549);
        v549 = v550;
      }

      while (v550);
    }

    v409 = v548;
    if (v548)
    {
      continue;
    }

    break;
  }

LABEL_1093:
  for (i1 = *v878; i1; i1 = *i1)
  {
    v552 = i1[28];
    if (v552)
    {
      if ((*(i1 + 43) & 0xFFFFFFFE) != 4 && *(i1 + 6) != 41 && mDNS_LoggingEnabled != 0)
      {
        v554 = v151[434];
        v555 = i1[4];
        GetRRDisplayString_rdb(i1 + 8, (i1[6] + 4), (a1 + 47032));
        LogMsgWithLevel(v554, OS_LOG_TYPE_DEFAULT, "SendQueries: No active interface %d to send probe: %d %s", v556, v557, v558, v559, v560, v552);
      }

      i1[28] = 0;
    }
  }

  for (i2 = 0; i2 != 499; ++i2)
  {
    for (i3 = *(v868 + 8 * i2); i3; i3 = *i3)
    {
      for (i4 = i3[2]; i4; i4 = *i4)
      {
        v564 = *(i4 + 96);
        if (v564)
        {
          v565 = *(i4 + 108);
          if (v565 <= 3)
          {
            v566 = *(a1 + 64);
            v567 = 1374389535000 * *(i4 + 16);
            if ((v566 - *(i4 + 88) + (v567 >> 36) + (v567 >> 63)) >= 0)
            {
              if (*(i4 + 104) != v566)
              {
                *(i4 + 108) = v565 + 1;
              }

              *(v564 + 64) = 0;
              SetNextCacheCheckTimeForRecord(a1, i4);
            }
          }
        }
      }
    }
  }

  for (i5 = *(a1 + 192); i5; i5 = *(i5 + 8))
  {
    v569 = *(i5 + 64);
    if (v569)
    {
      v570 = (a1 + 200);
      do
      {
        v571 = *v570;
        v570 = (*v570 + 8);
        if (v571)
        {
          v572 = v571 == i5;
        }

        else
        {
          v572 = 1;
        }
      }

      while (!v572);
      if (*(i5 + 136) != -5 && mDNS_LoggingEnabled != 0)
      {
        v574 = v151[434];
        DNSTypeName(*(i5 + 342));
        v151 = &unk_100178000;
        LogMsgWithLevel(v574, OS_LOG_TYPE_DEFAULT, "SendQueries: No active interface %d to send %s question: %d %##s (%s)", v575, v576, v577, v578, v579, v569);
      }

      *(i5 + 64) = 0;
    }

    *(i5 + 359) = 0;
  }

  v300 = *(a1 + 64);
  if ((v300 - *(a1 + 92)) >= 0)
  {
    v837 = *(a1 + 92);
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send all its queries (%d - %d = %d) will try again in one second", v4, v5, v6, v7, v8, v300);
    v300 = *(a1 + 64);
    *(a1 + 92) = v300 + 1000;
    v580 = *(a1 + 192);
    if (v580)
    {
      do
      {
        if (v580 == *v867)
        {
          break;
        }

        v581 = *(v580 + 212);
        if (v581 >= 1 && !*(v580 + 40) && *(a1 + 64) - (v581 + *(v580 + 208)) >= 0)
        {
          v582 = v151[434];
          DNSTypeName(*(v580 + 342));
          LogMsgWithLevel(v582, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send %##s (%s)", v583, v584, v585, v586, v587, v580 + 376);
        }

        v580 = *(v580 + 8);
      }

      while (v580);
      v300 = *(a1 + 64);
    }
  }

LABEL_1139:
  if ((v300 - *(a1 + 96)) >= 0)
  {
    v838 = *(a1 + 96);
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send all its probes (%d - %d = %d) will try again in one second", v4, v5, v6, v7, v8, v300);
    v300 = *(a1 + 64);
    *(a1 + 96) = v300 + 1000;
  }

LABEL_1141:
  v588 = *(a1 + 84);
  if (!v588 || ((v300 - v588) & 0x80000000) == 0)
  {
    *(a1 + 84) = 0;
    if ((v300 - *(a1 + 100)) >= 0)
    {
      SendResponses(a1, v2, v3, v4, v5, v6, v7, v8);
      v300 = *(a1 + 64);
      if ((v300 - *(a1 + 100)) >= 0)
      {
        LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendResponses didn't send all its responses; will try again in one second", v4, v5, v6, v7, v8, v836);
        v300 = *(a1 + 64);
        *(a1 + 100) = v300 + 1000;
      }
    }
  }

LABEL_1146:
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  v589 = *(a1 + 184);
  if (v589 && ((v300 - v589) & 0x80000000) == 0)
  {
    *(a1 + 184) = v300 + 939524096;
    TimeoutQuestions_internal(a1, *(a1 + 192), 0, v4, v5, v6, v7, v8);
    TimeoutQuestions_internal(a1, *(a1 + 216), -2, v590, v591, v592, v593, v594);
    v300 = *(a1 + 64);
  }

  v595 = *(a1 + 12684);
  if (v595 && ((v300 - v595) & 0x80000000) == 0)
  {
    *(a1 + 12684) = 0;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "UpdateAllSRVRecords %d", v4, v5, v6, v7, v8, *(a1 + 141));
    }

    v596 = *(a1 + 12640);
    if (v596)
    {
      v597 = v151[434];
      GetRRDisplayString_rdb((v596 + 8), (*(v596 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v597, OS_LOG_TYPE_DEFAULT, "UpdateAllSRVRecords ERROR m->CurrentRecord already set %s", v598, v599, v600, v601, v602, a1 + 47032);
    }

    v603 = *(a1 + 12616);
    *(a1 + 12640) = v603;
    if (v603)
    {
      do
      {
        v604 = *v603;
        *(a1 + 12640) = *v603;
        if (!*(v603 + 32))
        {
          if (!*(v603 + 122) && !IsLocalDomain(*(v603 + 40)) && *(v603 + 12) == 33)
          {
            UpdateOneSRVRecord(a1, v603);
          }

          v604 = *(a1 + 12640);
        }

        v603 = v604;
      }

      while (v604);
    }

    v300 = *(a1 + 64);
  }

  if ((v300 - *(a1 + 104)) < 0)
  {
    goto LABEL_1274;
  }

  v605 = *(a1 + 12720);
  if (v605 == 10)
  {
    goto LABEL_1172;
  }

  if (v605 == 172)
  {
    if ((*(a1 + 12721) & 0xF0) == 0x10)
    {
      goto LABEL_1172;
    }

LABEL_1169:
    v606 = *(a1 + 12720);
    v607 = v606 != 0;
    *(a1 + 104) = v300 + 939524096;
    if (v606)
    {
      *(a1 + 14744) = v606;
    }

    goto LABEL_1176;
  }

  if (v605 != 192 || *(a1 + 12721) != 168)
  {
    goto LABEL_1169;
  }

LABEL_1172:
  *(a1 + 104) = v300 + 939524096;
  if (!*(a1 + 14720))
  {
    v607 = 0;
LABEL_1176:
    v608 = *(a1 + 14760);
    if (v608)
    {
      CloseSocketSet(*(a1 + 14760));
      free(v608);
      *(a1 + 14760) = 0;
    }

    v609 = *(a1 + 15024);
    if (v609)
    {
      CloseSocketSet(*(a1 + 15024));
      free(v609);
      *(a1 + 15024) = 0;
    }

    goto LABEL_1180;
  }

  if (*(a1 + 14760))
  {
    goto LABEL_1174;
  }

  v613 = mDNSPlatformUDPSocket(58900);
  *(a1 + 14760) = v613;
  if (v613)
  {
    v607 = 0;
    CheckNATMappings_needLog = 0;
  }

  else if (CheckNATMappings_needLog)
  {
LABEL_1174:
    v607 = 0;
  }

  else
  {
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "CheckNATMappings: Failed to allocate port 5350 UDP multicast socket for PCP & NAT-PMP announcements", v4, v5, v6, v7, v8, v836);
    v607 = 0;
    CheckNATMappings_needLog = 1;
  }

LABEL_1180:
  v610 = *(a1 + 64);
  if (*(a1 + 14720))
  {
    v611 = *(a1 + 14740);
    if ((v610 - v611) >= 0)
    {
      v612 = *(a1 + 12700);
      if (v612 != 10)
      {
        if (v612 == 172)
        {
          if ((*(a1 + 12701) & 0xF0) != 0x10)
          {
            goto LABEL_1199;
          }
        }

        else if (v612 != 192 || *(a1 + 12701) != 168)
        {
          goto LABEL_1199;
        }
      }

      mDNSPlatformSendUDP(a1, uDNS_RequestAddress_req, &uDNS_RequestAddress_req[1], 0, 0, a1 + 12696, 0xE714u, 0);
      if (*(a1 + 15034) && *(a1 + 15036))
      {
        v614 = SendSOAPMsgControlAction(a1, a1 + 14784, "GetExternalIPAddress", 0, 0, 2);
        if (v614)
        {
          LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "uDNS_RequestAddress: LNT_GetExternalAddress returned error %d", v4, v5, v6, v7, v8, v614);
        }
      }

      else
      {
        LNT_SendDiscoveryMsg(a1);
      }

LABEL_1199:
      v615 = *(a1 + 14736);
      v616 = 2 * v615;
      if (v615 >= 450000)
      {
        v616 = 900000;
      }

      if (v615 >= 250)
      {
        v617 = v616;
      }

      else
      {
        v617 = 250;
      }

      *(a1 + 14736) = v617;
      v611 = *(a1 + 64) + v617;
      if (v611 <= 1)
      {
        v611 = 1;
      }

      *(a1 + 14740) = v611;
    }
  }

  else
  {
    v611 = v610 + 939524096;
    if ((v610 + 939524096) <= 1)
    {
      v611 = 1;
    }

    *(a1 + 14740) = v611;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "uDNS_RequestAddress: Setting retryGetAddr to future", v4, v5, v6, v7, v8, v836);
      v611 = *(a1 + 14740);
    }
  }

  if ((*(a1 + 104) - v611) >= 1)
  {
    *(a1 + 104) = v611;
  }

  if (*(a1 + 14728))
  {
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "WARNING m->CurrentNATTraversal already in use", v4, v5, v6, v7, v8, v836);
  }

  v618 = *(a1 + 14720);
  *(a1 + 14728) = v618;
  if (v618)
  {
    while (2)
    {
      v619 = (v618 + 156);
      v620 = *v618;
      if (v607)
      {
        v619 = (a1 + 12720);
      }

      *buf = *v619;
      *(a1 + 14728) = v620;
      if (v607)
      {
        *(v618 + 8) = 0;
        *(v618 + 20) = 0;
      }

      else
      {
        v621 = *(a1 + 64);
        v622 = *(v618 + 16);
        if (v621 - v622 >= 0)
        {
          v623 = *(v618 + 8);
          if (v623 && v623 - v621 < 0)
          {
            *(v618 + 8) = 0xFA00000000;
          }

          uDNS_SendNATMsg(a1, v618, 1, 0);
          v624 = *(v618 + 8);
          if (v624)
          {
            v625 = (v624 - *(a1 + 64)) / 2;
            if (v625 <= 2000)
            {
              v625 = 2000;
            }

            *(v618 + 12) = v625;
            v622 = *(a1 + 64) + v625;
          }

          else
          {
            v626 = *(v618 + 12);
            v627 = 2 * v626;
            if (v626 >= 450000)
            {
              v627 = 900000;
            }

            if (v626 >= 250)
            {
              v628 = v627;
            }

            else
            {
              v628 = 250;
            }

            *(v618 + 12) = v628;
            v622 = v628 + *(a1 + 64);
          }

          *(v618 + 16) = v622;
        }

        if (*(a1 + 104) - v622 >= 1)
        {
          *(a1 + 104) = v622;
        }
      }

      v629 = *buf;
      if (!*buf && *(v618 + 12) < 2001)
      {
        goto LABEL_1272;
      }

      v630 = *(v618 + 20);
      if (v630)
      {
        if (v607)
        {
          goto LABEL_1237;
        }

LABEL_1246:
        if (*buf)
        {
          if (*(v618 + 8))
          {
            v633 = (v618 + 176);
          }

          else
          {
            v633 = &zeroIPPort;
          }
        }

        else
        {
          v633 = &zeroIPPort;
        }

        v631 = *v633;
        v632 = *(v618 + 172);
        if (*(v618 + 172))
        {
          if (*(v618 + 8) || *(v618 + 12) >= 2001)
          {
            v632 = 1;
            goto LABEL_1255;
          }
        }

        else
        {
LABEL_1255:
          if (*(v618 + 152) != *buf || *(v618 + 160) != v631 || *(v618 + 168) != v630)
          {
            if (v631)
            {
              v632 = 0;
            }

            if (v632 == 1)
            {
              if (*(a1 + 12700) && (v630 || mDNS_LoggingEnabled == 1))
              {
                v847 = *(v618 + 12);
                v844 = bswap32(*(v618 + 174)) >> 16;
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CheckNATMapping: Failed to obtain NAT port mapping %p from router %#a external address %.4a internal port %5d interval %d error %d", v4, v5, v6, v7, v8, v618);
                v629 = *buf;
              }

              v634 = 0;
              *(v618 + 152) = v629;
              *(v618 + 160) = 0;
            }

            else
            {
              v634 = 0;
              *(v618 + 152) = *buf;
              *(v618 + 160) = v631;
              v635 = *(v618 + 8);
              if (v635 && v631)
              {
                v636 = 274877907 * (v635 - *(a1 + 64) + 500);
                v634 = (v636 >> 38) + (v636 >> 63);
              }
            }

            *(v618 + 164) = v634;
            *(v618 + 168) = v630;
            v637 = *(a1 + 48);
            v638 = *(a1 + 52) + 1;
            *(a1 + 52) = v638;
            mDNS_VerifyLockState("Drop Lock", 0, v637, v638, "CheckNATMappings", 5111);
            v639 = *(v618 + 184);
            if (v639)
            {
              v639(a1, v618);
            }

            mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "CheckNATMappings", 5114);
            --*(a1 + 52);
          }
        }

LABEL_1272:
        v618 = *(a1 + 14728);
        v151 = &unk_100178000;
        if (!v618)
        {
          goto LABEL_1273;
        }

        continue;
      }

      break;
    }

    if (buf[0] == 10)
    {
      goto LABEL_1245;
    }

    if (buf[0] == 172)
    {
      if ((buf[1] & 0xF0) == 0x10)
      {
        goto LABEL_1245;
      }

LABEL_1242:
      v630 = 0;
      if (!v607)
      {
        goto LABEL_1246;
      }
    }

    else
    {
      if (buf[0] != 192 || buf[1] != 168)
      {
        goto LABEL_1242;
      }

LABEL_1245:
      v630 = -65558;
      if (!v607)
      {
        goto LABEL_1246;
      }
    }

LABEL_1237:
    v631 = *(v618 + 174);
    v632 = *(v618 + 172) != 0;
    goto LABEL_1255;
  }

LABEL_1273:
  v300 = *(a1 + 64);
LABEL_1274:
  if ((v300 - *(a1 + 12680)) < 0)
  {
    goto LABEL_1483;
  }

  v857 = v300 + 939524096;
  *(a1 + 12680) = v300 + 939524096;
  v640 = *(a1 + 12616);
  if (!v640)
  {
    goto LABEL_1445;
  }

  v881 = (a1 + 47032);
  v861 = a1 + 28972;
LABEL_1279:
  v646 = v640;
  if (!IsRecordMergeable(a1, v640, v300 + 1000))
  {
    v640 = *v640;
    if (v640)
    {
      goto LABEL_1368;
    }

    v745 = *v878;
    if (!*v878)
    {
      goto LABEL_1445;
    }

    v746 = a1 + 37912;
    v747 = "SendRecordDeregistration: Error formatting message for %s";
    while (1)
    {
      if (!v745[4] && !*(v745 + 122) && !IsLocalDomain(v745[5]))
      {
        v748 = *(v745 + 86);
        if (v748 > 8)
        {
          goto LABEL_1441;
        }

        v749 = 1 << v748;
        if ((v749 & 0xAE) != 0)
        {
          if (*(v745 + 70) + *(v745 + 71) - *(a1 + 64) > 0)
          {
            goto LABEL_1441;
          }

          v750 = v745[48];
          if (v750)
          {
            DisposeTCPConn(v750);
            v745[48] = 0;
          }

          v751 = v745[47];
          if (v751)
          {
            if (*(v751 + 792))
            {
              if (*(v745 + 86) == 3)
              {
                mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SendRecordDeregistration", 4294);
                v752 = v745[47];
                if (v752 && *(v752 + 792))
                {
                  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, v745[5]);
                  if (AuthInfoForName_internal)
                  {
                    v754 = AuthInfoForName_internal + 268;
                    v755 = AuthInfoForName_internal + 268;
                    do
                    {
                      if (!v755)
                      {
                        break;
                      }

                      v756 = *v755;
                      if (v756 > 0x3F)
                      {
                        break;
                      }

                      if (!*v755)
                      {
                        v757 = -103 - (v755 - v754 + 1);
                        goto LABEL_1420;
                      }

                      v755 += v756 + 1;
                    }

                    while (v755 - v754 < 256);
                    v757 = -360;
                  }

                  else
                  {
                    v757 = -35;
                  }

LABEL_1420:
                  v766 = mDNS_NewMessageID(a1);
                  *(v745 + 179) = v766;
                  *v887 = v766;
                  *(a1 + 28962) = 40;
                  *(a1 + 28964) = 0;
                  v770 = putZone(v887, v861, v746 + v757, v745[46], bswap32(*(v745 + 7)) >> 16, v767, v768, v769);
                  if (v770 && (updated = BuildUpdateMessage(a1, v770, v745, v746 + v757, v771, v772, v773, v774)) != 0)
                  {
                    v776 = updated;
                    if (*(v745 + 356))
                    {
                      if (!mDNS_LoggingEnabled)
                      {
                        goto LABEL_1427;
                      }

                      v885 = mDNSLogCategory_Default;
                      v777 = v745[48];
                      GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                      LogMsgWithLevel(v885, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration TCP %p %s", v778, v779, v780, v781, v782, v777);
                      v783 = v745[48];
                      if (v783 && mDNS_LoggingEnabled)
                      {
                        v784 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                        LogMsgWithLevel(v784, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration: Disposing existing TCP connection for %s", v785, v786, v787, v788, v789, v881);
LABEL_1427:
                        v783 = v745[48];
                      }

                      if (v783)
                      {
                        DisposeTCPConn(v783);
                        v745[48] = 0;
                      }

                      v790 = v745[47];
                      if (v790)
                      {
                        v745[48] = MakeTCPConn(a1, v887, v776, 1, (v790 + 788), *(v790 + 786), (v790 + 530), 0, v745);
                        goto LABEL_1437;
                      }

                      v807 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                      LogMsgWithLevel(v807, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration:Private:ERROR!! nta is NULL for %s", v808, v809, v810, v811, v812, v881);
                    }

                    else
                    {
                      if (mDNS_LoggingEnabled)
                      {
                        v799 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                        LogMsgWithLevel(v799, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration UDP %s", v800, v801, v802, v803, v804, v881);
                      }

                      v805 = v745[47];
                      if (v805)
                      {
                        v806 = GetAuthInfoForName_internal(a1, v745[5]);
                        mDNSSendDNSMessage(a1, v887, v776, 0, 0, 0, (v805 + 788), *(v805 + 786), v806, 0);
LABEL_1437:
                        SetRecordRetry(a1, v745, 0);
                      }

                      else
                      {
                        v813 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                        LogMsgWithLevel(v813, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration:ERROR!! nta is NULL for %s", v814, v815, v816, v817, v818, v881);
                      }
                    }

                    v747 = "SendRecordDeregistration: Error formatting message for %s";
                  }

                  else
                  {
                    v886 = v746;
                    v791 = v747;
                    v792 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                    v793 = v792;
                    v747 = v791;
                    v746 = v886;
                    LogMsgWithLevel(v793, OS_LOG_TYPE_DEFAULT, v747, v794, v795, v796, v797, v798, v881);
                  }
                }

                else
                {
                  v884 = v746;
                  v758 = v747;
                  v759 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb(v745 + 8, (v745[6] + 4), v881);
                  v839 = *(v745 + 8);
                  v760 = v759;
                  v747 = v758;
                  v746 = v884;
                  LogMsgWithLevel(v760, OS_LOG_TYPE_DEFAULT, "SendRecordDeRegistration: No zone info for Resource record %s RecordType %d", v761, v762, v763, v764, v765, v881);
                }
              }

              else
              {
                SendRecordRegistration(a1, v745);
              }

LABEL_1441:
              v819 = v857;
              if ((v857 - (*(v745 + 70) + *(v745 + 71))) > 0)
              {
                v819 = *(v745 + 70) + *(v745 + 71);
              }

              v857 = v819;
              goto LABEL_1444;
            }

            *(v745 + 179) = 0;
            CancelGetZoneData(a1, v751);
          }

          v745[47] = StartGetZoneData(a1, v745[5], RecordRegistrationGotZoneData, v745);
          SetRecordRetry(a1, v745, 0);
          goto LABEL_1441;
        }

        if ((v749 & 0x140) == 0)
        {
          goto LABEL_1441;
        }
      }

LABEL_1444:
      v745 = *v745;
      if (!v745)
      {
        goto LABEL_1445;
      }
    }
  }

LABEL_1280:
  if (v640[28])
  {
    v647 = v151[434];
    GetRRDisplayString_rdb(v640 + 8, (v640[6] + 4), v881);
    LogMsgWithLevel(v647, OS_LOG_TYPE_DEFAULT, "MarkRRForSending: Resourcerecord %s already marked for sending", v648, v649, v650, v651, v652, v881);
  }

  v640[28] = -4;
LABEL_1283:
  v640 = *v640;
  if (v640)
  {
    goto LABEL_1369;
  }

  v653 = *v878;
  if (!*v878)
  {
    goto LABEL_1445;
  }

  v654 = 0;
  do
  {
    v655 = *(v653 + 86);
    v656 = v655 == 5 || v655 == 2;
    if (v656 && v653[28] != -4 && AreRecordsMergeable(a1, v646, v653, *(a1 + 64) + *(v653 + 70) / 2))
    {
      v653[28] = -4;
      ++v654;
    }

    v653 = *v653;
  }

  while (v653);
  if (v654 && mDNS_LoggingEnabled)
  {
    LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "MarkRRForSending: Accelereated %d records", v641, v642, v643, v644, v645, v654);
  }

  v657 = *v878;
  if (!*v878)
  {
    goto LABEL_1445;
  }

  v869 = 0;
  v872 = 0;
  v658 = 0;
  v859 = 1;
  v659 = a1 + 28972;
  while (2)
  {
    v866 = 0;
    v660 = 0;
    v877 = 0;
    v661 = 0;
    while (2)
    {
      if (v657[28] != -4)
      {
LABEL_1350:
        v657 = *v657;
        if (!v657)
        {
          goto LABEL_1360;
        }

        continue;
      }

      break;
    }

    v657[28] = 0;
    if (v877)
    {
LABEL_1323:
      v684 = *(v657 + 86);
      if (v684 == 7)
      {
        v685 = *(v657 + 309) + *(v657 + 308);
      }

      else
      {
        v685 = *(v657 + 11);
        if (v684 == 3)
        {
          v686 = 12;
          goto LABEL_1333;
        }
      }

      v687 = *(v657 + 8);
      if (v687 == 32)
      {
        v688 = 24;
      }

      else
      {
        v688 = 12;
      }

      if (v687 == 16)
      {
        v686 = 24;
      }

      else
      {
        v686 = v688;
      }

LABEL_1333:
      v689 = v657[5];
      v690 = v689;
      v883 = v660;
      while (1)
      {
        if (!v690 || (v691 = *v690, v691 > 0x3F))
        {
LABEL_1338:
          v692 = 257;
          goto LABEL_1340;
        }

        if (!*v690)
        {
          break;
        }

        v690 += v691 + 1;
        if (&v690[-v689] >= 256)
        {
          goto LABEL_1338;
        }
      }

      v692 = (v690 - v689 + 1);
LABEL_1340:
      v693 = v686 - v661 + v685 + v692 + 4;
      if (v658 - v693 < 0)
      {
        if (v883)
        {
          if (mDNS_LoggingEnabled)
          {
            v709 = v151[434];
            GetRRDisplayString_rdb((v877 + 8), (*(v877 + 48) + 4), v881);
            LogMsgWithLevel(v709, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates:1: Parsed %d records and sending using %s, spaceleft %d, rrSize %d", v710, v711, v712, v713, v714, v883);
          }

          SendGroupRRMessage(a1, v877, v659, v866);
        }

        else
        {
          if (mDNS_LoggingEnabled)
          {
            v715 = v151[434];
            GetRRDisplayString_rdb(v657 + 8, (v657[6] + 4), v881);
            LogMsgWithLevel(v715, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Skipping message %s, spaceleft %d, rrSize %d", v716, v717, v718, v719, v720, v881);
          }

          v877 = 0;
          v859 = 0;
          v657[28] = -4;
          *(v657 + 70) = 1000;
          *(v657 + 71) = *(a1 + 64) - 1000;
          v657 = *v657;
        }

        v660 = v883;
        if (v657)
        {
          continue;
        }

LABEL_1360:
        if (v877)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v721 = v151[434];
            GetRRDisplayString_rdb((v877 + 8), (*(v877 + 48) + 4), v881);
            LogMsgWithLevel(v721, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Parsed %d records and sending using %s", v722, v723, v724, v725, v726, v660);
          }

          SendGroupRRMessage(a1, v877, v659, v866);
        }

        if (!v859)
        {
LABEL_1379:
          v736 = *v878;
          if (!*v878)
          {
            goto LABEL_1445;
          }

          while (1)
          {
LABEL_1380:
            v737 = v736;
            v736 = *v736;
            if (*(v737 + 224) != -4)
            {
              goto LABEL_1383;
            }

            if (*(v737 + 280) + *(v737 + 284) - *(a1 + 64) >= 1)
            {
              break;
            }

            *(v737 + 224) = 0;
            SendRecordRegistration(a1, v737);
            if (!v736)
            {
              goto LABEL_1365;
            }
          }

          v738 = v151[434];
          GetRRDisplayString_rdb((v737 + 8), (*(v737 + 48) + 4), v881);
          LogMsgWithLevel(v738, OS_LOG_TYPE_DEFAULT, "CheckGroupRecordUpdates: ERROR!! Resourcerecord %s not ready", v739, v740, v741, v742, v743, v881);
LABEL_1383:
          if (!v736)
          {
            goto LABEL_1365;
          }

          goto LABEL_1380;
        }

LABEL_1365:
        v640 = *v878;
        if (!*v878)
        {
          goto LABEL_1445;
        }

LABEL_1368:
        v646 = 0;
LABEL_1369:
        v300 = *(a1 + 64);
        if (!v646)
        {
          goto LABEL_1279;
        }

        if (AreRecordsMergeable(a1, v646, v640, v300 + 1000))
        {
          goto LABEL_1280;
        }

        goto LABEL_1283;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v694 = v151[434];
        GetRRDisplayString_rdb(v657 + 8, (v657[6] + 4), v881);
        v841 = *(v657 + 86);
        v845 = *(v657 + 4);
        LogMsgWithLevel(v694, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Building a message with resource record %s, next %p, state %d, ttl %d", v695, v696, v697, v698, v699, v881);
      }

      v700 = BuildUpdateMessage(a1, v659, v657, v872, v642, v643, v644, v645);
      if (!v700)
      {
        v727 = v151[434];
        GetRRDisplayString_rdb(v657 + 8, (v657[6] + 4), v881);
        LogMsgWithLevel(v727, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ptr NULL while building message with %s", v728, v729, v730, v731, v732, v881);
        v733 = *v878;
        if (*v878)
        {
          do
          {
            *(v733 + 149) = 1;
            v733[28] = 0;
            ActivateUnicastRegistration(a1, v733);
            v733 = *v733;
          }

          while (v733);
          goto LABEL_1379;
        }

        goto LABEL_1445;
      }

      v701 = v700;
      if ((v700 - v659) <= v693)
      {
        v658 -= v700 - v659;
      }

      else
      {
        v702 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v657 + 8, (v657[6] + 4), v881);
        v846 = *(v657 + 86);
        LogMsgWithLevel(v702, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR!! Record size estimation is wrong for %s, Estimate %d, Actual %d, state %d", v703, v704, v705, v706, v707, v881);
        v658 -= v693;
      }

      v708 = v657[48];
      if (v708)
      {
        DisposeTCPConn(v708);
        v657[48] = 0;
      }

      v660 = v883 + 1;
      *(v657 + 179) = v869;
      SetRecordRetry(a1, v657, 0);
      v659 = v701;
      v151 = &unk_100178000;
      goto LABEL_1350;
    }

    break;
  }

  v662 = GetAuthInfoForName_internal(a1, v657[46]);
  v668 = v662;
  if (!v662)
  {
    v672 = 35;
LABEL_1313:
    v674 = 1440 - v672;
    v869 = mDNS_NewMessageID(a1);
    *v887 = v869;
    *(a1 + 28962) = 40;
    *(a1 + 28964) = 0;
    v679 = v657[46];
    v680 = v679;
    while (1)
    {
      if (!v680 || (v681 = *v680, v681 > 0x3F))
      {
LABEL_1318:
        v661 = 261;
        goto LABEL_1320;
      }

      if (!*v680)
      {
        break;
      }

      v680 += v681 + 1;
      if (v680 - v679 >= 256)
      {
        goto LABEL_1318;
      }
    }

    v661 = (v680 - v679 + 1) + 4;
LABEL_1320:
    v658 = v674 - v661;
    if (v674 <= v661)
    {
      LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR no space for zone information, disabling merge", v679, v675, v676, v677, v678, v836);
      v734 = *v878;
      if (*v878)
      {
        do
        {
          *(v734 + 149) = 1;
          v734[28] = 0;
          ActivateUnicastRegistration(a1, v734);
          v734 = *v734;
        }

        while (v734);
        goto LABEL_1379;
      }

      goto LABEL_1445;
    }

    v866 = v668;
    v872 = v861 + v674;
    v682 = putZone(v887, v861, v872, v679, bswap32(*(v657 + 7)) >> 16, v676, v677, v678);
    if (!v682)
    {
      LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR! Cannot put zone, disabling merge", v683, v642, v643, v644, v645, v836);
      v735 = *v878;
      if (*v878)
      {
        do
        {
          *(v735 + 149) = 1;
          v735[28] = 0;
          ActivateUnicastRegistration(a1, v735);
          v735 = *v735;
        }

        while (v735);
        goto LABEL_1379;
      }

      goto LABEL_1445;
    }

    v659 = v682;
    v877 = v657;
    goto LABEL_1323;
  }

  v669 = v662 + 268;
  v670 = v662 + 268;
  while (1)
  {
    if (!v670 || (v671 = *v670, v671 > 0x3F))
    {
LABEL_1309:
      v672 = 360;
      goto LABEL_1313;
    }

    if (!*v670)
    {
      break;
    }

    v670 += v671 + 1;
    if (v670 - v669 > 255)
    {
      goto LABEL_1309;
    }
  }

  v673 = (v670 - v669 + 1);
  if (v673 < 0x539)
  {
    v672 = v673 + 103;
    goto LABEL_1313;
  }

  LogMsgWithLevel(v151[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR!!: spaceleft is zero at the beginning", v663, v664, v665, v666, v667, v836);
  v744 = *v878;
  if (*v878)
  {
    do
    {
      *(v744 + 149) = 1;
      v744[28] = 0;
      ActivateUnicastRegistration(a1, v744);
      v744 = *v744;
    }

    while (v744);
    goto LABEL_1379;
  }

LABEL_1445:
  if ((*(a1 + 12680) - v857) >= 1)
  {
    *(a1 + 12680) = v857;
  }

  v820 = *(a1 + 208);
  if (v820)
  {
    v821 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v826 = v820 + 376;
        v827 = (v820 + 376);
        while (1)
        {
          if (!v827 || (v828 = *v827, v828 > 0x3F))
          {
LABEL_1463:
            v825 = 257;
            goto LABEL_1468;
          }

          if (!*v827)
          {
            break;
          }

          v827 += v828 + 1;
          if (&v827[-v826] >= 256)
          {
            goto LABEL_1463;
          }
        }

        v825 = (v827 - v826 + 1);
LABEL_1468:
        v829 = DNSTypeName(*(v820 + 342));
        *buf = 141559043;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v825;
        *&buf[18] = 2101;
        *&buf[20] = v820 + 376;
        *&buf[28] = 2160;
        *&buf[30] = 1752392040;
        *&buf[38] = 2085;
        *&buf[40] = v829;
        _os_log_impl(&_mh_execute_header, v821, OS_LOG_TYPE_DEFAULT, "uDNS_Tasks ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{sensitive, mask.hash}s)", buf, 0x30u);
      }
    }

    else
    {
      v821 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v822 = v820 + 376;
        v823 = (v820 + 376);
        while (1)
        {
          if (!v823 || (v824 = *v823, v824 > 0x3F))
          {
LABEL_1456:
            v825 = 257;
            goto LABEL_1468;
          }

          if (!*v823)
          {
            break;
          }

          v823 += v824 + 1;
          if (&v823[-v822] >= 256)
          {
            goto LABEL_1456;
          }
        }

        v825 = (v823 - v822 + 1);
        goto LABEL_1468;
      }
    }
  }

  v830 = *(a1 + 192);
  *(a1 + 208) = v830;
  if (v830)
  {
    while (v830 != *v867)
    {
      v831 = *(v830 + 212);
      if (v831 < 1 || *(v830 + 40) || !*(v830 + 340))
      {
LABEL_1473:
        v832 = *(v830 + 8);
        *(a1 + 208) = v832;
      }

      else
      {
        v833 = v831 + *(v830 + 208);
        v832 = v830;
        if (*(a1 + 64) - v833 >= 0)
        {
          Querier_HandleUnicastQuestion(v830);
          v832 = *(a1 + 208);
        }

        if (v830 == v832)
        {
          v834 = *(v830 + 212) + *(v830 + 208);
          if (*(a1 + 12680) - v834 >= 1)
          {
            *(a1 + 12680) = v834;
          }

          goto LABEL_1473;
        }
      }

      v830 = v832;
      if (!v832)
      {
        break;
      }

      continue;
    }
  }

  *(a1 + 208) = 0;
LABEL_1483:
  mDNS_Unlock_(a1, "mDNS_Execute", 7154);
  return *(a1 + 72);
}