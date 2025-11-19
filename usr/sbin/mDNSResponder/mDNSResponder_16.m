uint64_t ParseHTTPResponseCode(const char **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (a2 - *a1 < 5)
  {
    return -1;
  }

  if (strncasecmp(*a1, "HTTP/", 5uLL))
  {
    return -3;
  }

  v12 = (v2 + 5);
  if (v2 != -5 && v12 != a2)
  {
    while (1)
    {
      v19 = *v12;
      if (v19 == 10)
      {
        return -3;
      }

      if (v19 != 32)
      {
        if (++v12)
        {
          if (v12 != a2)
          {
            continue;
          }
        }
      }

      break;
    }
  }

  if (v12 == a2)
  {
    return -1;
  }

  v14 = v12 + 1;
  if (a2 - (v12 + 1) < 3)
  {
    return -1;
  }

  v15 = v12 + 4;
  if (v12 != -4)
  {
    do
    {
      if (v15 == a2)
      {
        break;
      }

      if (*v15 == 10)
      {
        break;
      }

      ++v15;
    }

    while (v15);
  }

  if (v15 == a2)
  {
    return -1;
  }

  *a1 = (v15 + 1);
  if (*v14 == 12338 && v12[3] == 48)
  {
    return 200;
  }

  else if (*v14 == 12340 && v12[3] == 52)
  {
    return 404;
  }

  else if (*v14 == 12341 && v12[3] == 48)
  {
    return 500;
  }

  else
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v20 = v12[2];
      v21 = v12[3];
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ParseHTTPResponseCode found unexpected result code: %c%c%c", v6, v7, v8, v9, v10, v12[1]);
    }

    return -2;
  }
}

uint64_t ParseHttpUrl(uint64_t result, unint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v8 = result;
  if ((a2 - result) < 7)
  {
    goto LABEL_3;
  }

  v5 = a3;
  result = strncasecmp(result, "http://", 7uLL);
  if (result)
  {
    goto LABEL_3;
  }

  v19 = v8 + 7;
  if ((v8 + 7) >= a2)
  {
    v15 = 4294901756;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ParseHttpUrl: past end of buffer parsing host:port", v10, v11, v12, v13, v14, v28);
    }

    return v15;
  }

  if (v8 != -7)
  {
    v20 = 0;
    v8 += 7;
    do
    {
      if (*v8 == 47)
      {
        break;
      }

      ++v20;
      if (!++v8)
      {
        break;
      }
    }

    while (v8 != a2);
    v21 = v20 + 1;
    if (v20 != -1)
    {
      v22 = v21;
      result = malloc_type_malloc(v21, 0xD58F63CuLL);
      if (result)
      {
        *v5 = result;
        if (v20)
        {
          v23 = v19;
          while (1)
          {
            v24 = *v23;
            *result = v24;
            if (!v24)
            {
              break;
            }

            ++result;
            ++v23;
            if (--v22 <= 1)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
LABEL_24:
          *result = 0;
        }

        v25 = v8 - 1;
        while (v25 > v19)
        {
          v26 = v25--;
          v27 = *v26;
          result = (v26 + 1);
          if (v27 == 58)
          {
            result = strtol(result, 0, 10);
            *a4 = bswap32(result) >> 16;
            break;
          }
        }

LABEL_3:
        v15 = 0;
        if (a5 && v8 < a2)
        {
          v16 = a2 - v8;
          v17 = (a2 - v8 + 1);
          if (v16 != -1)
          {
            result = malloc_type_malloc((v16 + 1), 0x187D57FDuLL);
            if (result)
            {
              *a5 = result;
              if (v8)
              {
                if (v17 == 1)
                {
LABEL_11:
                  v15 = 0;
                  *result = 0;
                }

                else
                {
                  while (1)
                  {
                    v18 = *v8;
                    *result = v18;
                    if (!v18)
                    {
                      return 0;
                    }

                    ++result;
                    ++v8;
                    if (--v17 <= 1)
                    {
                      goto LABEL_11;
                    }
                  }
                }

                return v15;
              }
            }
          }

          goto LABEL_34;
        }

        return v15;
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = malloc_type_malloc(1uLL, 0xD58F63CuLL);
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_35:
  *v5 = result;
  __break(1u);
  return result;
}

void AllocAndCopy(void *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (__s)
  {
    v11 = strlen(__s);
    v17 = v11 + 1;
    if ((v11 + 1) >> 32)
    {
      v18 = mDNSLogCategory_Default;

      LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, "AllocAndCopy: can't allocate string", v12, v13, v14, v15, v16, a9);
    }

    else if (v11 == -1 || (v19 = malloc_type_malloc(v11 + 1, 0xDDCB1BE0uLL)) == 0)
    {
      __break(1u);
    }

    else
    {
      *a1 = v19;

      memcpy(v19, __s, v17);
    }
  }
}

void GetDeviceDescription(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 12288;
  if (!*(a1 + 15036))
  {
    if (!*(a1 + 15040) || !*(a1 + 15064))
    {
      v7 = mDNSLogCategory_NAT;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v8 = mDNSLogCategory_NAT == mDNSLogCategory_State;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
      }

      else
      {
        v7 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
      }

      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GetDeviceDescription: no router URL or address string!", buf, 2u);
      return;
    }

    v5 = *(a2 + 64);
    if (v5)
    {
      bzero(v5, 0x2000uLL);
      v6 = *(a2 + 64);
    }

    else
    {
      v6 = malloc_type_malloc(0x2000uLL, 0xFDD85A49uLL);
      if (!v6)
      {
        __break(1u);
        return;
      }

      *(a2 + 64) = v6;
    }

    v13 = *(a1 + 15040);
    v14 = *(a1 + 15064);
    *(a2 + 72) = mDNS_snprintf(v6);
    v10 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a2 + 64);
        *buf = 136446210;
        v16 = v12;
        goto LABEL_25;
      }
    }

    else
    {
      v10 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 64);
        *buf = 136446210;
        v16 = v11;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Describe Device: [%{public}s]", buf, 0xCu);
      }
    }

    MakeTCPConnection(a1, a2, (a1 + 12696), *(v2 + 2746), 1);
  }
}

void LNT_SendDiscoveryMsg(uint64_t a1)
{
  if (!*(a1 + 141))
  {
    v2 = a1 + 12288;
    if (*(a1 + 15034))
    {
      v3 = *(a1 + 15024);
      if (v3)
      {
        CloseSocketSet(*(a1 + 15024));
        free(v3);
        *(a1 + 15024) = 0;
      }

      if (!*(v2 + 2748) && !*(a1 + 14920))
      {

        GetDeviceDescription(a1, a1 + 14896);
      }
    }

    else
    {
      v4 = a1 + 28960;
      if (*(a1 + 14736) < 251)
      {
        *(a1 + 15032) = 0;
      }

      else
      {
        *(a1 + 15032);
      }

      v5 = mDNS_snprintf((a1 + 28960));
      if (*(a1 + 12700))
      {
        v6 = v5;
        v7 = *(a1 + 15024);
        if (!v7)
        {
          v7 = mDNSPlatformUDPSocket(0);
          *(a1 + 15024) = v7;
        }

        v8 = v4 + v6;
        mDNSPlatformSendUDP(a1, (a1 + 28960), v8, 0, v7, a1 + 12696, 0x6C07u, 0);
        mDNSPlatformSendUDP(a1, (a1 + 28960), v8, 0, *(a1 + 15024), &LNT_SendDiscoveryMsg_multicastDest, 0x6C07u, 0);
      }

      *(v2 + 2744) = *(v2 + 2744) == 0;
    }
  }
}

uint64_t dump_state_to_fd(int a1)
{
  v1311 = time(0);
  v1310 = mDNS_TimeNow(mDNSStorage, v2, v3, v4, v5, v6, v7, v8);
  memset(v1327, 0, sizeof(v1327));
  LogToFD(a1, "---- BEGIN STATE LOG ---- %s %s %d", v9, v10, v11, v12, v13, v14, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
  v1330.tv_sec = 0;
  *&v1330.tv_usec = 0;
  gettimeofday(&v1330, 0);
  getLocalTimestampFromTimeval(&v1330, v1327);
  LogToFD(a1, "Date: %s", v15, v16, v17, v18, v19, v20, v1327);
  v21 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1330.tv_sec) = 136446210;
      *(&v1330.tv_sec + 4) = v1327;
      goto LABEL_7;
    }
  }

  else
  {
    v21 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1330.tv_sec) = 136446210;
      *(&v1330.tv_sec + 4) = v1327;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "---- BEGIN STATE LOG ---- (%{public}s)", &v1330, 0xCu);
    }
  }

  v29 = mDNS_TimeNow(mDNSStorage, v22, v23, v24, v25, v26, v27, v28);
  LODWORD(v1330.tv_sec) = 0;
  LODWORD(v1328[0]) = 0;
  v1326 = 0;
  LogToFD(a1, "------------ Cache -------------", v30, v31, v32, v33, v34, v35, v1243);
  v1323 = a1;
  LogToFD(a1, "Slt Q     TTL if     U Type     DNSSEC                                   rdlen", v36, v37, v38, v39, v40, v41, v1244);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v1321 = v29;
  v51 = a1;
  do
  {
    v52 = mDNSStorage[v48 + 34];
    if (v52)
    {
      do
      {
        v1314 = v52;
        v1317 = v50;
        for (i = *(v52 + 16); i; v29 = v1321)
        {
          v54 = *(i + 32);
          if (v54)
          {
            v55 = (&v1326 + 4);
          }

          else
          {
            v55 = &v1326;
          }

          v56 = *(i + 56);
          if (v56)
          {
            if (!v54)
            {
              v57 = *(v56 + 24);
              if (v57)
              {
                v58 = *(v57 + 280);
                if (v58 == 5 || v58 == 2)
                {
                  v54 = *(v57 + 256);
                }

                else
                {
                  v54 = 0;
                }
              }
            }
          }

          v60 = *(i + 16);
          v61 = -274877907 * (v29 - *(i + 80));
          v62 = (v61 >> 63) + (SHIDWORD(v61) >> 6);
          v63 = &xmmword_100170388;
          while (1)
          {
            v63 = *v63;
            if (!v63)
            {
              break;
            }

            v64 = v63;
            if (*(v63 + 444) == v54)
            {
              goto LABEL_28;
            }
          }

          v64 = 0;
LABEL_28:
          if (v63)
          {
            v65 = v64 + 3606;
          }

          else
          {
            v65 = 0;
          }

          if (*(i + 96))
          {
            ++v49;
          }

          PrintOneCacheRecordToFD(v51, i, v48, (v62 + v60), v65, v55);
          v66 = *(i + 120);
          if (v66)
          {
            PrintOneCacheRecordToFD(v51, v66, v48, (v62 + v60), v65, v55);
          }

          i = *i;
        }

        v50 = v1317 + 1;
        v52 = *v1314;
      }

      while (*v1314);
    }

    ++v48;
  }

  while (v48 != 499);
  if (dword_10016D30C != HIDWORD(v1326) + v50 + v1326)
  {
    LogToFD(v1323, "Cache use mismatch: rrcache_totalused is %lu, true count %lu", v42, v43, v44, v45, v46, v47, dword_10016D30C);
  }

  if (qword_10016D314 != v49)
  {
    LogToFD(v1323, "Cache use mismatch: rrcache_active is %lu, true count %lu", v42, v43, v44, v45, v46, v47, qword_10016D314);
  }

  v67 = v1323;
  LogToFD(v1323, "Cache size %u entities; %u in use (%u group, %u multicast, %u unicast); %u referenced by active questions", v42, v43, v44, v45, v46, v47, dword_10016D308);
  LogToFD(v1323, "--------- Auth Records ---------", v68, v69, v70, v71, v72, v73, v1245);
  LogAuthRecordsToFD(v1323, v29, xmmword_100170360, 0, v74, v75, v76, v77);
  LogToFD(v1323, "--------- LocalOnly, P2P Auth Records ---------", v78, v79, v80, v81, v82, v83, v1246);
  v90 = 0;
  v91 = 1;
  do
  {
    v1318 = v90;
    for (j = mDNSStorage[v90 + 786]; j; j = *j)
    {
      for (k = j[2]; k; k = *k)
      {
        if (k[13] != FreeEtcHosts)
        {
          if (v91)
          {
            LogToFD(v67, "  State       Interface", v84, v85, v86, v87, v88, v89, v1247);
          }

          v94 = *(k + 43);
          if (v94 == 5)
          {
            v102 = k[4];
            v103 = RecordTypeName(*(k + 8));
            GetRRDisplayString_rdb(k + 8, (k[6] + 4), word_1001789D0);
            if (v102 == -5)
            {
              v67 = v1323;
              LogToFD(v1323, " %s   BLE %s", v104, v105, v106, v107, v108, v109, v103);
            }

            else
            {
              v67 = v1323;
              LogToFD(v1323, " %s   PP  %s", v104, v105, v106, v107, v108, v109, v103);
            }
          }

          else if (v94 == 4)
          {
            v95 = RecordTypeName(*(k + 8));
            GetRRDisplayString_rdb(k + 8, (k[6] + 4), word_1001789D0);
            LogToFD(v67, " %s   LO  %s", v96, v97, v98, v99, v100, v101, v95);
          }

          v91 = 0;
        }
      }
    }

    v90 = v1318 + 1;
  }

  while (v1318 != 498);
  if (v91)
  {
    LogToFD(v67, "<None>", v84, v85, v86, v87, v88, v89, v1247);
  }

  LogToFD(v67, "--------- /etc/hosts ---------", v84, v85, v86, v87, v88, v89, v1247);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 1;
  do
  {
    v121 = mDNSStorage[v116 + 786];
    if (v121)
    {
      ++v118;
    }

    for (m = v118; v121; v119 = v123)
    {
      v122 = v121[2];
      if (v122)
      {
        do
        {
          if (*(v122 + 13) == FreeEtcHosts)
          {
            if (v120)
            {
              LogToFD(v1323, "  State       Interface", v110, v111, v112, v113, v114, v115, v1248);
            }

            v123 = (v119 + 1);
            if (v119 <= 49)
            {
              if (*(v122 + 43) == 4)
              {
                if (*(v122 + 4) == -2)
                {
                  v131 = RecordTypeName(v122[8]);
                  GetRRDisplayString_rdb(v122 + 8, (*(v122 + 6) + 4), word_1001789D0);
                  LogToFD(v1323, " %s   LO %s", v132, v133, v134, v135, v136, v137, v131);
                }

                else
                {
                  v124 = RecordTypeName(v122[8]);
                  GetRRDisplayString_rdb(v122 + 8, (*(v122 + 6) + 4), word_1001789D0);
                  LogToFD(v1323, " %s   %u  %s", v125, v126, v127, v128, v129, v130, v124);
                }
              }

              v120 = 0;
            }

            else
            {
              v120 = 0;
              v117 = 1;
            }
          }

          else
          {
            v123 = v119;
          }

          v122 = *v122;
          v119 = v123;
        }

        while (v122);
      }

      else
      {
        v123 = v119;
      }

      v121 = *v121;
    }

    ++v116;
    v118 = m;
  }

  while (v116 != 499);
  if (v120)
  {
    v138 = v1323;
    LogToFD(v1323, "<None>", v110, v111, v112, v113, v114, v115, v1248);
    v139 = v1321;
  }

  else
  {
    v138 = v1323;
    v139 = v1321;
    if (v117)
    {
      LogToFD(v1323, "<Truncated: to 50 records, Total records %d, Total Auth Groups %d, Auth Slots %d>", v110, v111, v112, v113, v114, v115, v119);
    }
  }

  LogToFD(v138, "------ Duplicate Records -------", v110, v111, v112, v113, v114, v115, v1248);
  LogAuthRecordsToFD(v138, v139, *(&xmmword_100170360 + 1), 0, v140, v141, v142, v143);
  LogToFD(v138, "----- Auth Records Proxied -----", v144, v145, v146, v147, v148, v149, v1249);
  LogAuthRecordsToFD(v138, v139, xmmword_100170360, &v1330, v150, v151, v152, v153);
  LogToFD(v138, "-- Duplicate Records Proxied ---", v154, v155, v156, v157, v158, v159, v1250);
  LogAuthRecordsToFD(v138, v139, *(&xmmword_100170360 + 1), v1328, v160, v161, v162, v163);
  LogToFD(v138, "---------- Questions -----------", v164, v165, v166, v167, v168, v169, v1251);
  if (xmmword_10016D2D8)
  {
    LogToFD(v138, "   Int  Next if     T NumAns Qptr               DupOf              SU SQ DNSSEC Type    Name", v170, v171, v172, v173, v174, v175, v1252);
    v182 = xmmword_10016D2D8;
    v183 = 0;
    for (n = 0; v182; v182 = *(v182 + 8))
    {
      v185 = *(v182 + 212);
      v1320 = v185 / 1000;
      v1315 = ((v185 - v1321 + *(v182 + 208)) / 1000);
      v186 = &xmmword_100170388;
      do
      {
        v186 = *v186;
      }

      while (v186 && *(v186 + 444) != *(v182 + 136));
      ++v183;
      if (v185)
      {
        ++n;
      }

      v187 = *(v182 + 690);
      *(v182 + 632);
      *(v182 + 632);
      *(v182 + 340);
      v188 = *(v182 + 40);
      v189 = *(v182 + 636);
      v138 = *(v182 + 354);
      *(v182 + 144);
      v190 = *(v182 + 228);
      DNSTypeName(*(v182 + 342));
      *(v182 + 40);
      LODWORD(v138) = v1323;
      LogToFD(v1323, "%6d%6d %-7s%s %6d 0x%p 0x%p %1d %2d  %-7s%-8s%##s%s", v191, v192, v193, v194, v195, v196, v1320);
    }

    LogToFD(v138, "%lu question%s; %lu active", v176, v177, v178, v179, v180, v181, v183);
  }

  else
  {
    LogToFD(v138, "<None>", v170, v171, v172, v173, v174, v175, v1252);
  }

  LogToFD(v138, "----- LocalOnly, P2P Questions -----", v197, v198, v199, v200, v201, v202, v1253);
  v209 = unk_10016D2F0;
  if (unk_10016D2F0)
  {
    do
    {
      v210 = *(v209 + 136);
      v211 = "P2P";
      if (v210 == -5)
      {
        v211 = "BLE";
      }

      if (v210 == -2)
      {
        v212 = "LO ";
      }

      else
      {
        LODWORD(v212) = v211;
      }

      v213 = *(v209 + 228);
      DNSTypeName(*(v209 + 342));
      *(v209 + 40);
      LogToFD(v138, "                 %3s   %5d  %-6s%##s%s", v214, v215, v216, v217, v218, v219, v212);
      v209 = *(v209 + 8);
    }

    while (v209);
  }

  else
  {
    LogToFD(v138, "<None>", v203, v204, v205, v206, v207, v208, v1254);
  }

  LogToFD(v138, "---- Active UDS Client Requests ----", v220, v221, v222, v223, v224, v225, v1255);
  v232 = all_requests;
  if (all_requests)
  {
    do
    {
      v233 = *(v232 + 24);
      if (v233)
      {
        for (ii = all_requests; ii && ii != v232; ii = *(ii + 16))
        {
          if (ii == v233)
          {
            goto LABEL_115;
          }
        }

        LogToFD(v1323, "%3d: Orhpan operation %p; parent %p not found in request list", v226, v227, v228, v229, v230, v231, *(v232 + 184));
      }

      LogClientInfoToFD(v1323, v232);
LABEL_115:
      v232 = *(v232 + 16);
    }

    while (v232);
  }

  else
  {
    LogToFD(v138, "<None>", v226, v227, v228, v229, v230, v231, v1256);
  }

  LogToFD(v1323, "-------- NAT Traversals --------", v226, v227, v228, v229, v230, v231, v1256);
  LogToFD(v1323, "ExtAddress %.4a Retry %d Interval %d", v236, v237, v238, v239, v240, v241, &dword_100170BB0);
  for (jj = xmmword_100170B98; jj; jj = *jj)
  {
    *(jj + 172);
    *(jj + 172);
    v249 = *(jj + 6);
    if (v249 < 3)
    {
      v250 = off_100150538[v249];
    }

    v251 = bswap32(*(jj + 87)) >> 16;
    v252 = *(jj + 42);
    *(jj + 4);
    v253 = *(jj + 2);
    v1306 = (*(jj + 3) / 1000);
    v1309 = bswap32(*(jj + 80)) >> 16;
    v1308 = bswap32(*(jj + 88)) >> 16;
    LogToFD(v1323, "%p %s Int %5d %s Err %d Retry %5d Interval %5d Expire %5d Req %.4a:%d Ext %.4a:%d", v242, v243, v244, v245, v246, v247, jj);
  }

  LogToFD(v1323, "--------- AuthInfoList ---------", v242, v243, v244, v245, v246, v247, v1257);
  v260 = qword_1001703F0;
  if (qword_1001703F0)
  {
    v261 = v1321;
    do
    {
      v262 = __rev16(*(v260 + 780));
      *(v260 + 8);
      LogToFD(v1323, "%##s %##s %##s %d %d", v254, v255, v256, v257, v258, v259, v260 + 12);
      v260 = *v260;
    }

    while (v260);
  }

  else
  {
    LogToFD(v1323, "<None>", v254, v255, v256, v257, v258, v259, v1258);
    v261 = v1321;
  }

  LogToFD(v1323, "---------- Misc State ----------", v254, v255, v256, v257, v258, v259, v1259);
  LogToFD(v1323, "PrimaryMAC:   %.6a", v263, v264, v265, v266, v267, v268, &dword_10016D230);
  LogToFD(v1323, "m->SleepState %d (%s) seq %d", v269, v270, v271, v272, v273, v274, BYTE1(dword_10016D2A4));
  if (*(&dword_10016D2A4 + &loc_100003A80 + 2 + 2))
  {
    LogToFD(v1323, "Offering Sleep Proxy Service: %#s", v275, v276, v277, v278, v279, v280, qword_1001716C0);
  }

  else
  {
    LogToFD(v1323, "Not offering Sleep Proxy Service", v275, v276, v277, v278, v279, v280, v1260);
  }

  if (dword_100171FC8 == LODWORD(v1328[0]) + LODWORD(v1330.tv_sec))
  {
    LogToFD(v1323, "ProxyRecords: %d + %d = %d", v281, v282, v283, v284, v285, v286, v1330.tv_sec);
  }

  else
  {
    LogToFD(v1323, "ProxyRecords: MISMATCH %d + %d = %d ≠ %d", v281, v282, v283, v284, v285, v286, v1330.tv_sec);
  }

  LogToFD(v1323, "------ Auto Browse Domains -----", v287, v288, v289, v290, v291, v292, v1261);
  v299 = AutoBrowseDomains;
  if (AutoBrowseDomains)
  {
    do
    {
      LogToFD(v1323, "%##s", v293, v294, v295, v296, v297, v298, v299 + 12);
      v299 = *v299;
    }

    while (v299);
  }

  else
  {
    LogToFD(v1323, "<None>", v293, v294, v295, v296, v297, v298, v1262);
  }

  LogToFD(v1323, "--- Auto Registration Domains --", v293, v294, v295, v296, v297, v298, v1263);
  v306 = AutoRegistrationDomains;
  if (AutoRegistrationDomains)
  {
    do
    {
      LogToFD(v1323, "%##s", v300, v301, v302, v303, v304, v305, v306 + 12);
      v306 = *v306;
    }

    while (v306);
  }

  else
  {
    LogToFD(v1323, "<None>", v300, v301, v302, v303, v304, v305, v1264);
  }

  LogToFD(v1323, "--- Search Domains --", v300, v301, v302, v303, v304, v305, v1265);
  v313 = SearchList;
  if (SearchList)
  {
    do
    {
      v314 = &xmmword_100170388;
      do
      {
        v314 = *v314;
      }

      while (v314 && *(v314 + 444) != v313[34]);
      LogToFD(v1323, "%##s %s", v307, v308, v309, v310, v311, v312, v313 + 8);
      v313 = *v313;
    }

    while (v313);
  }

  else
  {
    LogToFD(v1323, "<None>", v307, v308, v309, v310, v311, v312, v1266);
  }

  v315 = v1323;
  LogToFD(v1323, "--- MDNS Statistics ---", v307, v308, v309, v310, v311, v312, v1267);
  LogToFD(v1323, "Name Conflicts                 %u", v316, v317, v318, v319, v320, v321, *&byte_10016D290[&loc_100004D50]);
  LogToFD(v1323, "KnownUnique Name Conflicts     %u", v322, v323, v324, v325, v326, v327, *&byte_10016D290[&loc_100004D54]);
  LogToFD(v1323, "Duplicate Query Suppressions   %u", v328, v329, v330, v331, v332, v333, *&byte_10016D290[&loc_100004D58]);
  LogToFD(v1323, "KA Suppressions                %u", v334, v335, v336, v337, v338, v339, *&byte_10016D290[&loc_100004D5C]);
  LogToFD(v1323, "KA Multiple Packets            %u", v340, v341, v342, v343, v344, v345, *&byte_10016D290[&loc_100004D60]);
  LogToFD(v1323, "Poof Cache Deletions           %u", v346, v347, v348, v349, v350, v351, *&byte_10016D290[&loc_100004D64]);
  LogToFD(v1323, "--------------------------------", v352, v353, v354, v355, v356, v357, v1268);
  LogToFD(v1323, "Multicast packets Sent         %u", v358, v359, v360, v361, v362, v363, dword_10016D2C4);
  LogToFD(v1323, "Multicast packets Received     %u", v364, v365, v366, v367, v368, v369, dword_10016D2A0);
  LogToFD(v1323, "Remote Subnet packets          %u", v370, v371, v372, v373, v374, v375, dword_10016D2C8);
  LogToFD(v1323, "QU questions  received         %u", v376, v377, v378, v379, v380, v381, *&byte_10016D290[&loc_100004D68]);
  LogToFD(v1323, "Normal multicast questions     %u", v382, v383, v384, v385, v386, v387, *&byte_10016D290[&loc_100004D68 + 4]);
  LogToFD(v1323, "Answers for questions          %u", v388, v389, v390, v391, v392, v393, *&byte_10016D290[&loc_100004D70]);
  LogToFD(v1323, "Unicast responses              %u", v394, v395, v396, v397, v398, v399, *&byte_10016D290[&loc_100004D74]);
  LogToFD(v1323, "Multicast responses            %u", v400, v401, v402, v403, v404, v405, *&byte_10016D290[&loc_100004D78]);
  LogToFD(v1323, "Unicast response Demotions     %u", v406, v407, v408, v409, v410, v411, *&byte_10016D290[&loc_100004D78 + 4]);
  LogToFD(v1323, "--------------------------------", v412, v413, v414, v415, v416, v417, v1269);
  LogToFD(v1323, "Sleeps                         %u", v418, v419, v420, v421, v422, v423, *&byte_10016D290[&loc_100004D80]);
  LogToFD(v1323, "Wakeups                        %u", v424, v425, v426, v427, v428, v429, *&byte_10016D290[&loc_100004D84]);
  LogToFD(v1323, "Interface UP events            %u", v430, v431, v432, v433, v434, v435, *&byte_10016D290[&loc_100004D84 + 4]);
  LogToFD(v1323, "Interface UP Flap events       %u", v436, v437, v438, v439, v440, v441, *&byte_10016D290[&loc_100004D8C]);
  LogToFD(v1323, "Interface Down events          %u", v442, v443, v444, v445, v446, v447, *&byte_10016D290[&loc_100004D90]);
  LogToFD(v1323, "Interface DownFlap events      %u", v448, v449, v450, v451, v452, v453, *&byte_10016D290[&loc_100004D94]);
  LogToFD(v1323, "Cache refresh queries          %u", v454, v455, v456, v457, v458, v459, *&byte_10016D290[&loc_100004D98]);
  LogToFD(v1323, "Cache refreshed                %u", v460, v461, v462, v463, v464, v465, *&byte_10016D290[&loc_100004D9C]);
  LogToFD(v1323, "Wakeup on Resolves             %u", v466, v467, v468, v469, v470, v471, *&byte_10016D290[&loc_100004DA0]);
  LogToFD(v1323, "---- Task Scheduling Timers ----", v472, v473, v474, v475, v476, v477, v1270);
  LogToFD(v1323, "BonjourEnabled %d", v478, v479, v480, v481, v482, v483, byte_10016D290[0]);
  if (*(&xmmword_10016D2D8 + 1))
  {
    v490 = *(*(&xmmword_10016D2D8 + 1) + 204);
    DNSTypeName(*(*(&xmmword_10016D2D8 + 1) + 342));
    v315 = v1323;
    LogToFD(v1323, "NewQuestion DelayAnswering %d %d %##s (%s)", v491, v492, v493, v494, v495, v496, v490);
  }

  else
  {
    LogToFD(v1323, "NewQuestion <NONE>", v484, v485, v486, v487, v488, v489, v1271);
  }

  if (qword_10016D2F8)
  {
    v503 = qword_10016D2F8 + 376;
    DNSTypeName(*(qword_10016D2F8 + 342));
    v315 = v1323;
    LogToFD(v1323, "NewLocalOnlyQuestions %##s (%s)", v504, v505, v506, v507, v508, v509, v503);
  }

  else
  {
    LogToFD(v315, "NewLocalOnlyQuestions <NONE>", v497, v498, v499, v500, v501, v502, v1272);
  }

  if (qword_100170370)
  {
    v516 = *(qword_100170370 + 8);
    GetRRDisplayString_rdb((qword_100170370 + 8), (*(qword_100170370 + 48) + 4), word_1001789D0);
    LogToFD(v315, "NewLocalRecords %02X %s", v517, v518, v519, v520, v521, v522, v516);
  }

  else
  {
    LogToFD(v315, "NewLocalRecords <NONE>", v510, v511, v512, v513, v514, v515, v1273);
  }

  if (xmmword_100170D20)
  {
    v529 = "";
  }

  else
  {
    v529 = " <NONE>";
  }

  LogToFD(v315, "SPSProxyListChanged%s", v523, v524, v525, v526, v527, v528, v529);
  if (dword_10016D2A4)
  {
    v536 = "";
  }

  else
  {
    v536 = " <NONE>";
  }

  LogToFD(v315, "LocalRemoveEvents%s", v530, v531, v532, v533, v534, v535, v536);
  LogToFD(v315, "m->WABBrowseQueriesCount %d", v537, v538, v539, v540, v541, v542, SDWORD2(xmmword_100170B70));
  LogToFD(v315, "m->WABLBrowseQueriesCount %d", v543, v544, v545, v546, v547, v548, SHIDWORD(xmmword_100170B70));
  LogToFD(v315, "m->WABRegQueriesCount %d", v549, v550, v551, v552, v553, v554, dword_100170B80);
  LogToFD(v315, "m->AutoTargetServices %u", v555, v556, v557, v558, v559, v560, *(mDNSStorage + &loc_100004DBC));
  LogToFD(v315, "m->AutoTargetAWDLIncludedCount %u", v561, v562, v563, v564, v565, v566, dword_10016FCC0);
  LogToFD(v315, "m->AutoTargetAWDLOnlyCount     %u", v567, v568, v569, v570, v571, v572, dword_10016FCC4);
  LogToFD(v315, "                         ABS (hex)  ABS (dec)  REL (hex)  REL (dec)", v573, v574, v575, v576, v577, v578, v1274);
  LogToFD(v315, "m->timenow               %08X %11d", v579, v580, v581, v582, v583, v584, v261);
  LogToFD(v315, "m->timenow_adjust        %08X %11d", v585, v586, v587, v588, v589, v590, dword_10016D254);
  LogToFD(v315, "m->NextScheduledEvent    %08X %11d  %08X %11d", v591, v592, v593, v594, v595, v596, dword_10016D260);
  LogToFD(v315, "m->NextuDNSEvent         %08X %11d  %08X %11d", v597, v598, v599, v600, v601, v602, dword_1001703A0);
  LogToFD(v315, "m->NextSRVUpdate         %08X %11d  %08X %11d", v603, v604, v605, v606, v607, v608, dword_1001703A4);
  LogToFD(v315, "m->NextScheduledNATOp    %08X %11d  %08X %11d", v609, v610, v611, v612, v613, v614, dword_10016D280);
  LogToFD(v315, "m->retryGetAddr          %08X %11d  %08X %11d", v615, v616, v617, v618, v619, v620, dword_100170BAC);
  LogToFD(v315, "m->NextCacheCheck        %08X %11d  %08X %11d", v621, v622, v623, v624, v625, v626, dword_10016D270);
  LogToFD(v315, "m->NextScheduledSPS      %08X %11d  %08X %11d", v627, v628, v629, v630, v631, v632, dword_10016D284);
  LogToFD(v315, "m->NextScheduledKA       %08X %11d  %08X %11d", v633, v634, v635, v636, v637, v638, dword_10016D288);
  LogToFD(v315, "m->NextBonjourDisableTime  %08X %11d  %08X %11d", v639, v640, v641, v642, v643, v644, dword_10016D28C);
  LogToFD(v315, "m->NextScheduledSPRetry  %08X %11d  %08X %11d", v645, v646, v647, v648, v649, v650, dword_10016D2CC);
  LogToFD(v315, "m->DelaySleep            %08X %11d  %08X %11d", v651, v652, v653, v654, v655, v656, qword_10016D2AC);
  LogToFD(v315, "m->NextScheduledQuery    %08X %11d  %08X %11d", v657, v658, v659, v660, v661, v662, dword_10016D274);
  LogToFD(v315, "m->NextScheduledProbe    %08X %11d  %08X %11d", v663, v664, v665, v666, v667, v668, dword_10016D278);
  LogToFD(v315, "m->NextScheduledResponse %08X %11d  %08X %11d", v669, v670, v671, v672, v673, v674, dword_10016D27C);
  LogToFD(v315, "m->SuppressQueries       %08X %11d  %08X %11d", v675, v676, v677, v678, v679, v680, qword_10016D268);
  LogToFD(v315, "m->SuppressResponses     %08X %11d  %08X %11d", v681, v682, v683, v684, v685, v686, SHIDWORD(qword_10016D268));
  LogToFD(v315, "m->SuppressProbes        %08X %11d  %08X %11d", v687, v688, v689, v690, v691, v692, dword_100170398);
  LogToFD(v315, "m->ProbeFailTime         %08X %11d  %08X %11d", v693, v694, v695, v696, v697, v698, SDWORD2(xmmword_100170388));
  LogToFD(v315, "m->DelaySleep            %08X %11d  %08X %11d", v699, v700, v701, v702, v703, v704, qword_10016D2AC);
  LogToFD(v315, "m->SleepLimit            %08X %11d  %08X %11d", v705, v706, v707, v708, v709, v710, SHIDWORD(qword_10016D2AC));
  LogToFD(v315, "m->NextScheduledStopTime  %08X %11d  %08X %11d", v711, v712, v713, v714, v715, v716, dword_10016D2D0);
  LogToFD(v315, "----- Platform Timers -----", v717, v718, v719, v720, v721, v722, v1275);
  LogToFD(v315, "m->NextCacheCheck        %08X %11d  %08X %11d", v723, v724, v725, v726, v727, v728, dword_10016D270);
  LogToFD(v315, "m->NetworkChanged        %08X %11d  %08X %11d", v729, v730, v731, v732, v733, v734, dword_10016D220);
  LogToFD(v315, "m->p->NotifyUser         %08X %11d  %08X %11d", v735, v736, v737, v738, v739, v740, *(mDNSStorage[0] + 492));
  LogToFD(v315, "m->p->HostNameConflict   %08X %11d  %08X %11d", v741, v742, v743, v744, v745, v746, *(mDNSStorage[0] + 496));
  LogToFD(v315, "m->p->KeyChainTimer      %08X %11d  %08X %11d", v747, v748, v749, v750, v751, v752, *(mDNSStorage[0] + 500));
  LogToFD(v315, "----- KQSocketEventSources -----", v753, v754, v755, v756, v757, v758, v1276);
  v765 = gEventSources;
  if (gEventSources)
  {
    do
    {
      v766 = *(v765 + 32);
      *(v765 + 8);
      LogToFD(v315, "%3d %s %s", v759, v760, v761, v762, v763, v764, *(v765 + 8));
      v765 = *v765;
    }

    while (v765);
  }

  else
  {
    LogToFD(v315, "<None>", v759, v760, v761, v762, v763, v764, v1277);
  }

  LogToFD(v315, "------ Network Interfaces ------", v759, v760, v761, v762, v763, v764, v1278);
  if (*mDNSStorage[0])
  {
    LogToFD(v315, "Struct addr          Registered                     MAC               BSSID                                Functional Type  Interface Address", v767, v768, v769, v770, v771, v772, v1279);
    for (kk = *mDNSStorage[0]; kk; kk = *(kk + 3680))
    {
      v780 = *(kk + 3552);
      v781 = *(kk + 3768);
      *(kk + 3730);
      if (*(kk + 3696))
      {
        *(kk + 16);
        *(kk + 17);
        *(kk + 18);
        *(kk + 3670);
        *(kk + 3671);
        if (*(kk + 16))
        {
          *(kk + 3672);
        }

        v782 = *(kk + 3748);
        v783 = "Unrecognized";
        if (v782 <= 7)
        {
          v783 = off_100152328[v782];
        }

        LogToFD(v1323, "%p %2ld, %p,  %s %-8.8s %.6a %.6a %s %s %s %s %s %s %-16.16s %#a", v783, kk + 3560, v775, v776, v777, v778, kk);
      }

      else
      {
        v1307 = (v1311 - *(kk + 3704));
        LogToFD(v1323, "%p %2ld, %p,  %s %-6s %.6a %.6a %#-14a dormant for %d seconds", v773, v774, v775, v776, v777, v778, kk);
      }
    }
  }

  else
  {
    LogToFD(v315, "<None>", v767, v768, v769, v770, v771, v772, v1279);
  }

  LogToFD(v1323, "----------- DNS Services -----------", v773, v774, v775, v776, v777, v778, v1280);
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (DNSServiceManager)
  {
    v1324[0] = _NSConcreteStackBlock;
    v1324[1] = 0x40000000;
    v1324[2] = __dump_state_to_fd_block_invoke;
    v1324[3] = &__block_descriptor_tmp_5199;
    v1325 = v1323;
    mdns_dns_service_manager_enumerate(DNSServiceManager, v1324);
  }

  LogToFD(v1323, "v4answers %d", v785, v786, v787, v788, v789, v790, *(mDNSStorage[0] + 688));
  LogToFD(v1323, "v6answers %d", v791, v792, v793, v794, v795, v796, *(mDNSStorage[0] + 689));
  LogToFD(v1323, "Last DNS Trigger: %d ms ago", v797, v798, v799, v800, v801, v802, v1310 - *(mDNSStorage[0] + 692));
  LogToFD(v1323, "--------- Mcast Resolvers ----------", v803, v804, v805, v806, v807, v808, v1281);
  v815 = qword_1001703A8;
  if (qword_1001703A8)
  {
    do
    {
      v1304 = *(v815 + 276);
      LogToFD(v1323, "Mcast Resolver %##s timeout %u", v809, v810, v811, v812, v813, v814, v815 + 20);
      v815 = *v815;
    }

    while (v815);
  }

  else
  {
    LogToFD(v1323, "<None>", v809, v810, v811, v812, v813, v814, v1282);
  }

  LogToFD(v1323, "------------ Hostnames -------------", v809, v810, v811, v812, v813, v814, v1283);
  v822 = xmmword_100170B70;
  if (xmmword_100170B70)
  {
    do
    {
      v823 = *(v822 + 202);
      GetRRDisplayString_rdb(v822 + 472, (*(v822 + 64) + 4), word_1001789D0);
      LogToFD(v1323, "%##s v4 %d %s", v824, v825, v826, v827, v828, v829, v822 + 208);
      v830 = *(v822 + 496);
      GetRRDisplayString_rdb(v822 + 1648, (*(v822 + 211) + 4), word_1001789D0);
      LogToFD(v1323, "%##s v6 %d %s", v831, v832, v833, v834, v835, v836, v822 + 208);
      v822 = *v822;
    }

    while (v822);
  }

  else
  {
    LogToFD(v1323, "<None>", v816, v817, v818, v819, v820, v821, v1284);
  }

  LogToFD(v1323, "--------------- FQDN ---------------", v837, v838, v839, v840, v841, v842, v1285);
  if (byte_100170A70[0])
  {
    LogToFD(v1323, "%##s", v843, v844, v845, v846, v847, v848, byte_100170A70);
  }

  else
  {
    LogToFD(v1323, "<None>", v843, v844, v845, v846, v847, v848, v1286);
  }

  LogToFD(v1323, "----    DNS Cache Analytics     -----", v849, v850, v851, v852, v853, v854, v1287);
  LogToFD(v1323, "----    Unicast Requests", v855, v856, v857, v858, v859, v860, v1288);
  LogToFD(v1323, "Cache Hit: %llu", v861, v862, v863, v864, v865, v866, sCacheRequest_UnicastHitCount);
  LogToFD(v1323, "Cache Miss: %llu", v867, v868, v869, v870, v871, v872, sCacheRequest_UnicastMissCount);
  LogToFD(v1323, "----    Unicast Usage", v873, v874, v875, v876, v877, v878, v1289);
  LogToFD(v1323, "Cache Hit: %llu", v879, v880, v881, v882, v883, v884, sCacheUsage_UnicastHitCount);
  LogToFD(v1323, "Cache Miss: %llu", v885, v886, v887, v888, v889, v890, sCacheUsage_UnicastMissCount);
  LogToFD(v1323, "----    Multicast Requests", v891, v892, v893, v894, v895, v896, v1290);
  LogToFD(v1323, "Cache Hit: %llu", v897, v898, v899, v900, v901, v902, sCacheRequest_MulticastHitCount);
  LogToFD(v1323, "Cache Miss: %llu", v903, v904, v905, v906, v907, v908, sCacheRequest_MulticastMissCount);
  LogToFD(v1323, "----    Multicast Usage", v909, v910, v911, v912, v913, v914, v1291);
  LogToFD(v1323, "Cache Hit: %llu", v915, v916, v917, v918, v919, v920, sCacheUsage_MulticastHitCount);
  LogToFD(v1323, "Cache Miss: %llu", v921, v922, v923, v924, v925, v926, sCacheUsage_MulticastMissCount);
  LogToFD(v1323, "----    DNS Query Analytics     -----", v927, v928, v929, v930, v931, v932, v1292);
  v939 = 0;
  v940 = &qword_100178C00;
  do
  {
    if (*(v940 - 6))
    {
      LogToFD(v1323, "----    Network:   %s\n        Transport: %s", v933, v934, v935, v936, v937, v938, off_100153BE8[v939]);
      LogToFD(v1323, "Latency: %llums", v941, v942, v943, v944, v945, v946, *(v940 - 5) / *(v940 - 6));
      LogToFD(v1323, "Query Bytes: %llu", v947, v948, v949, v950, v951, v952, *(v940 - 4));
      LogToFD(v1323, "Reply Bytes: %llu", v953, v954, v955, v956, v957, v958, *(v940 - 3));
      LogToFD(v1323, "----    V4", v959, v960, v961, v962, v963, v964, v1294);
      LogToFD(v1323, "Queries: %llu", v965, v966, v967, v968, v969, v970, *(v940 - 2));
      LogToFD(v1323, "Reply Pos: %llu", v971, v972, v973, v974, v975, v976, *(v940 - 1));
      LogToFD(v1323, "Reply Neg: %llu", v977, v978, v979, v980, v981, v982, *v940);
      LogToFD(v1323, "----    V6", v983, v984, v985, v986, v987, v988, v1295);
      LogToFD(v1323, "Queries: %llu", v989, v990, v991, v992, v993, v994, v940[1]);
      LogToFD(v1323, "Reply Pos: %llu", v995, v996, v997, v998, v999, v1000, v940[2]);
      LogToFD(v1323, "Reply Neg: %llu", v1001, v1002, v1003, v1004, v1005, v1006, v940[3]);
      LogToFD(v1323, "----    HTTPS", v1007, v1008, v1009, v1010, v1011, v1012, v1296);
      LogToFD(v1323, "Queries: %llu", v1013, v1014, v1015, v1016, v1017, v1018, v940[4]);
      LogToFD(v1323, "Reply Pos: %llu", v1019, v1020, v1021, v1022, v1023, v1024, v940[5]);
      LogToFD(v1323, "Reply Neg: %llu", v1025, v1026, v1027, v1028, v1029, v1030, v940[6]);
    }

    ++v939;
    v940 += 13;
  }

  while (v939 != 4);
  v1031 = v1323;
  LogToFD(v1323, "----    Unicast Assist", v933, v934, v935, v936, v937, v938, v1293);
  LogToFD(v1323, "Assist Unicast: %llu", v1032, v1033, v1034, v1035, v1036, v1037, sUnicastAssist_UnicastCount);
  LogToFD(v1323, "Assist Multicast: %llu", v1038, v1039, v1040, v1041, v1042, v1043, sUnicastAssist_MulticastCount);
  LogToFD(v1323, "Non-assist Unicast: %llu", v1044, v1045, v1046, v1047, v1048, v1049, sNonUnicastAssist_UnicastCount);
  LogToFD(v1323, "Non-assist Multicast: %llu", v1050, v1051, v1052, v1053, v1054, v1055, sNonUnicastAssist_MulticastCount);
  LogToFD(v1323, "----    Unicast Assist Presence", v1056, v1057, v1058, v1059, v1060, v1061, v1297);
  LogToFD(v1323, "Enabled: %llu", v1062, v1063, v1064, v1065, v1066, v1067, sUAPresence_Count_enabled);
  LogToFD(v1323, "Asserts: %llu", v1068, v1069, v1070, v1071, v1072, v1073, sUAPresence_Count_assert);
  LogToFD(v1323, "Assert addrs: %llu", v1074, v1075, v1076, v1077, v1078, v1079, sUAPresence_Count_assert_addrs);
  LogToFD(v1323, "Assert hashes: %llu", v1080, v1081, v1082, v1083, v1084, v1085, sUAPresence_Count_assert_hashes);
  LogToFD(v1323, "Updates received: %llu", v1086, v1087, v1088, v1089, v1090, v1091, sUAPresence_Count_update);
  LogToFD(v1323, "Update devices: %llu", v1092, v1093, v1094, v1095, v1096, v1097, sUAPresence_Count_update_devices);
  LogToFD(v1323, "Update devices old: %llu", v1098, v1099, v1100, v1101, v1102, v1103, sUAPresence_Count_update_devices_old);
  LogToFD(v1323, "Update devices invalid: %llu", v1104, v1105, v1106, v1107, v1108, v1109, sUAPresence_Count_update_devices_invalid);
  LogToFD(v1323, "Update devices missing: %llu", v1110, v1111, v1112, v1113, v1114, v1115, sUAPresence_Count_update_devices_missing);
  LogToFD(v1323, "Addrs: %llu", v1116, v1117, v1118, v1119, v1120, v1121, sUAPresence_Count_addrs);
  LogToFD(v1323, "Invalid addrs: %llu", v1122, v1123, v1124, v1125, v1126, v1127, sUAPresence_Count_addrs_invalid);
  LogToFD(v1323, "Qhashes: %llu", v1128, v1129, v1130, v1131, v1132, v1133, sUAPresence_Count_qhashes);
  LogToFD(v1323, "Qhashes found via multicast: %llu", v1134, v1135, v1136, v1137, v1138, v1139, sUAPresence_Count_qhashes_found_multicast);
  LogToFD(v1323, "Qhashes found via unicast: %llu", v1140, v1141, v1142, v1143, v1144, v1145, sUAPresence_Count_qhashes_found_unicast);
  LogToFD(v1323, "Qhashes not found: %llu", v1146, v1147, v1148, v1149, v1150, v1151, sUAPresence_Count_qhashes_not_found);
  if (_os_feature_enabled_impl())
  {
    v1159 = mDNS_TimeNow(mDNSStorage, v1152, v1153, v1154, v1155, v1156, v1157, v1158);
    if (v1159 <= 1)
    {
      v1160 = 1;
    }

    else
    {
      v1160 = v1159;
    }

    v1322 = v1160;
    bzero(&v1330, 0x400uLL);
    v1329 = 0;
    memset(v1328, 0, sizeof(v1328));
    LogToFD(v1323, "----    Unicast Assist Cache    -----", v1161, v1162, v1163, v1164, v1165, v1166, v1298);
    LogToFD(v1323, "----    p=presence, P=presence-only", v1167, v1168, v1169, v1170, v1171, v1172, v1299);
    LogToFD(v1323, "----    Cache Records", v1173, v1174, v1175, v1176, v1177, v1178, v1300);
    v1185 = s_interface_head_0;
    if (s_interface_head_0)
    {
      v1186 = 0;
      v1187 = 0;
      v1188 = 0;
      v1189 = 0;
      do
      {
        v1313 = v1186;
        v1305 = *(v1185 + 24);
        LogToFD(v1031, "ifhash %x ifid %2.2d", v1179, v1180, v1181, v1182, v1183, v1184, *(v1185 + 32));
        v1187 += 40;
        v1312 = v1185;
        v1190 = *(v1185 + 8);
        if (v1190)
        {
          do
          {
            *(v1190 + 4);
            mDNS_snprintf(v1328);
            LOBYTE(v1330.tv_sec) = 0;
            v1191 = mDNS_snprintf(&v1330);
            v1187 += 40;
            v1316 = v1190;
            v1198 = v1190[1];
            if (v1198)
            {
              v1199 = 0;
              v1200 = v1191;
              do
              {
                if ((v1199 + 1) < 6)
                {
                  ++v1199;
                }

                else
                {
                  v1200 += mDNS_snprintf(&v1330 + v1200);
                  v1199 -= 4;
                }

                v1201 = (v1322 - *(v1198 + 3)) / 1000;
                v1202 = mDNS_snprintf(&v1330 + v1200) + v1200;
                v1203 = mDNS_snprintf(&v1330 + v1202) + v1202;
                v1302 = *(v1198 + 2);
                v1200 = mDNS_snprintf(&v1330 + v1203) + v1203;
                if (*(v1198 + 18) == 1)
                {
                  *(v1198 + 19);
                  v1200 += mDNS_snprintf(&v1330 + v1200);
                }

                v1187 += 24;
                ++v1188;
                v1198 = *v1198;
              }

              while (v1198);
            }

            ++v1189;
            v1031 = v1323;
            LogToFD(v1323, "  %s", v1192, v1193, v1194, v1195, v1196, v1197, &v1330);
            v1190 = *v1190;
          }

          while (*v1316);
        }

        v1186 = v1313 + 1;
        v1185 = *v1312;
      }

      while (*v1312);
    }

    else
    {
      v1189 = 0;
      v1188 = 0;
      LODWORD(v1187) = 0;
      LODWORD(v1186) = 0;
    }

    LogToFD(v1031, "----    Cache Record Stats", v1179, v1180, v1181, v1182, v1183, v1184, v1301);
    LogToFD(v1031, "If Hash Count: %lu", v1211, v1212, v1213, v1214, v1215, v1216, v1186);
    LogToFD(v1031, "Addr Count:    %lu", v1217, v1218, v1219, v1220, v1221, v1222, v1189);
    LogToFD(v1031, "Qhash Count:   %lu", v1223, v1224, v1225, v1226, v1227, v1228, v1188);
    v1303 = v1187;
    v1210 = "Total Size:    %lu bytes";
  }

  else
  {
    LogToFD(v1323, "----    Unicast Assist Cache    -----", v1153, v1154, v1155, v1156, v1157, v1158, v1298);
    v1210 = "Feature Flag: mDNSResponder/unicast_assist_cache DISABLED";
  }

  LogToFD(v1031, v1210, v1204, v1205, v1206, v1207, v1208, v1209, v1303);
  LogToFD(v1031, "Date: %s", v1229, v1230, v1231, v1232, v1233, v1234, v1327);
  v1235 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1330.tv_sec) = 136446210;
      *(&v1330.tv_sec + 4) = v1327;
      goto LABEL_223;
    }
  }

  else
  {
    v1235 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1330.tv_sec) = 136446210;
      *(&v1330.tv_sec + 4) = v1327;
LABEL_223:
      _os_log_impl(&_mh_execute_header, v1235, OS_LOG_TYPE_DEFAULT, "---- END STATE LOG ---- (%{public}s)", &v1330, 0xCu);
    }
  }

  return LogToFD(v1031, "----  END STATE LOG  ---- %s %s %d", v1236, v1237, v1238, v1239, v1240, v1241, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
}

uint64_t __dump_state_to_fd_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a2 + 16);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    v10 = v9[3];
    if (v10)
    {
      v11 = v10(a2, 0, 0);
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = "<missing description>";
  if (v11)
  {
    LODWORD(v12) = v11;
  }

  LogToFD(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, v12);
  if (v11)
  {
    free(v11);
  }

  return 1;
}

void UpdateDebugState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v43 = 0;
  valuePtr = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v15 = Mutable;
    v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v16)
    {
      v22 = v16;
      v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
      if (v23)
      {
        v29 = v23;
        if (mDNS_LoggingEnabled)
        {
          v30 = v22;
        }

        else
        {
          v30 = v23;
        }

        CFDictionarySetValue(v15, @"VerboseLogging", v30);
        if (mDNS_PacketLoggingEnabled)
        {
          v31 = v22;
        }

        else
        {
          v31 = v29;
        }

        CFDictionarySetValue(v15, @"PacketLogging", v31);
        if (mDNS_McastLoggingEnabled)
        {
          v32 = v22;
        }

        else
        {
          v32 = v29;
        }

        CFDictionarySetValue(v15, @"McastLogging", v32);
        if (mDNS_McastTracingEnabled)
        {
          v33 = v22;
        }

        else
        {
          v33 = v29;
        }

        CFDictionarySetValue(v15, @"McastTracing", v33);
        CFRelease(v22);
        CFRelease(v29);
        mDNSDynamicStoreSetConfig(6, v15, v34, v35, v36, v37, v38, v39, v42);
        v40 = v15;
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create CFNumber zero", v24, v25, v26, v27, v28, v42);
        v40 = v22;
      }

      CFRelease(v40);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create CFNumber one", v17, v18, v19, v20, v21, v42);
    }
  }

  else
  {
    v41 = mDNSLogCategory_Default;

    LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create dict", v10, v11, v12, v13, v14, a9);
  }
}

BOOL PreferencesGetValueBool(const __CFString *a1, _BOOL8 a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.mDNSResponder");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      a2 = CFBooleanGetValue(v4) != 0;
    }

    CFRelease(v4);
  }

  return a2;
}

uint64_t PreferencesGetValueInt(const __CFString *a1, uint64_t a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.mDNSResponder");
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberIntType, &valuePtr))
      {
        a2 = valuePtr;
      }

      else
      {
        a2 = a2;
      }
    }

    CFRelease(v4);
  }

  return a2;
}

void mDNSPreferencesSetNames(int a1, __int128 *a2, __int128 *a3)
{
  v6 = (mDNSStorage[0] + 364);
  v7 = (mDNSStorage[0] + 428);
  v8 = (mDNSStorage[0] + 236);
  v9 = (mDNSStorage[0] + 300);
  if (a1 == 1)
  {
    v10 = (mDNSStorage[0] + 428);
  }

  else
  {
    v10 = (mDNSStorage[0] + 300);
  }

  if (a1 == 1)
  {
    v11 = (mDNSStorage[0] + 364);
  }

  else
  {
    v11 = (mDNSStorage[0] + 236);
  }

  if (a2 && a3)
  {
    v12 = *a2;
    if (v12 == *a3 && !memcmp(a2 + 1, a3 + 1, *a2) && v12 == *v11 && !memcmp(a2 + 1, v11 + 1, v12) && v12 == *v10 && !memcmp(a3 + 1, v10 + 1, v12))
    {
      return;
    }
  }

  else if (!a2)
  {
    *v11 = 0;
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  *(v11 + 2) = a2[2];
  *(v11 + 3) = v15;
  *v11 = v13;
  *(v11 + 1) = v14;
  if (a3)
  {
LABEL_18:
    v16 = *a3;
    v17 = a3[1];
    v18 = a3[3];
    v10[2] = a3[2];
    v10[3] = v18;
    *v10 = v16;
    v10[1] = v17;
    goto LABEL_21;
  }

LABEL_20:
  *v10 = 0;
LABEL_21:
  v19 = mDNSLogCategory_State;
  v20 = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
  if (a1 != 1)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    v25 = *v8 + 1;
    v26 = *v9 + 1;
    if (a2)
    {
      v27 = *a2 + 1;
      if (a3)
      {
LABEL_29:
        v28 = *a3 + 1;
LABEL_35:
        *buf = 141560835;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v25;
        *&buf[18] = 2101;
        *&buf[20] = v8;
        *&buf[28] = 2160;
        *&buf[30] = 1752392040;
        *&buf[38] = 1040;
        *&buf[40] = v26;
        *&buf[44] = 2101;
        *&buf[46] = v9;
        *&buf[54] = 2160;
        *&buf[56] = 1752392040;
        LOWORD(v57) = 1040;
        *(&v57 + 2) = v27;
        WORD3(v57) = 2101;
        *(&v57 + 1) = a2;
        LOWORD(v58) = 2160;
        *(&v58 + 2) = 1752392040;
        WORD5(v58) = 1040;
        HIDWORD(v58) = v28;
        LOWORD(v59) = 2101;
        *(&v59 + 2) = a3;
        v29 = "mDNSPreferencesSetNames: changing local host name -- last change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P, current change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P";
        goto LABEL_36;
      }
    }

    else
    {
      v27 = 0;
      if (a3)
      {
        goto LABEL_29;
      }
    }

    v28 = 0;
    goto LABEL_35;
  }

  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = *v6 + 1;
  v22 = *v7 + 1;
  if (!a2)
  {
    v23 = 0;
    if (a3)
    {
      goto LABEL_25;
    }

LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  v23 = *a2 + 1;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_25:
  v24 = *a3 + 1;
LABEL_32:
  *buf = 141560835;
  *&buf[4] = 1752392040;
  *&buf[12] = 1040;
  *&buf[14] = v21;
  *&buf[18] = 2101;
  *&buf[20] = v6;
  *&buf[28] = 2160;
  *&buf[30] = 1752392040;
  *&buf[38] = 1040;
  *&buf[40] = v22;
  *&buf[44] = 2101;
  *&buf[46] = v7;
  *&buf[54] = 2160;
  *&buf[56] = 1752392040;
  LOWORD(v57) = 1040;
  *(&v57 + 2) = v23;
  WORD3(v57) = 2101;
  *(&v57 + 1) = a2;
  LOWORD(v58) = 2160;
  *(&v58 + 2) = 1752392040;
  WORD5(v58) = 1040;
  HIDWORD(v58) = v24;
  LOWORD(v59) = 2101;
  *(&v59 + 2) = a3;
  v29 = "mDNSPreferencesSetNames: changing computer name -- last change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P, current change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P";
LABEL_36:
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v29, buf, 0x6Au);
LABEL_37:
  v32 = *a2;
  v31 = a2 + 1;
  v30 = v32;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v32 <= 0x3FuLL)
  {
    if (v31 >= &v31[v30])
    {
      v33 = buf;
    }

    else
    {
      v33 = buf;
      do
      {
        v34 = *v31++;
        *v33++ = v34;
        --v30;
      }

      while (v30);
    }

    *v33 = 0;
  }

  if (a3)
  {
    v37 = *a3;
    v36 = a3 + 1;
    v35 = v37;
    if (v37 <= 0x3FuLL)
    {
      v38 = &v57;
      if (v36 < &v36[v35])
      {
        v38 = &v57;
        do
        {
          v39 = *v36++;
          *v38 = v39;
          v38 = (v38 + 1);
          --v35;
        }

        while (v35);
      }

      *v38 = 0;
    }
  }

  if (v57 && strcmp(buf, &v57))
  {
    v40 = CFStringCreateWithCString(kCFAllocatorDefault, &v57, 0x8000100u);
    v41 = v40;
    if (a1 == 1)
    {
      if (!v40)
      {
        v48 = -6700;
LABEL_70:
        v49 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v49 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        nameEncoding = 141558531;
        v62 = 1752392040;
        v63 = 2085;
        v64 = &v57;
        v65 = 2048;
        v66 = v48;
        v50 = "Failed to set computer name -- name: %{sensitive, mask.hash}s, error: %ld";
LABEL_86:
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, v50, &nameEncoding, 0x20u);
        return;
      }

      v55 = 0;
      v42 = _mdns_system_create_locked_prefs(&v55);
      v54 = v42;
      if (!v55)
      {
        v43 = v42;
        nameEncoding = 0;
        v44 = SCDynamicStoreCopyComputerName(0, &nameEncoding);
        if (v44)
        {
          v45 = nameEncoding;
        }

        else
        {
          v45 = 134217984;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (SCPreferencesSetComputerName(v43, v41, v45))
        {
          v55 = 0;
LABEL_68:
          v55 = _mdns_system_commit_and_apply_prefs(v43);
          goto LABEL_69;
        }

        if (SCError())
        {
          v55 = SCError();
          if (!v55)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v55 = -6700;
        }

        if (mdns_system_log_s_once != -1)
        {
          dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
        }

        v52 = mdns_system_log_s_log;
        if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
        {
          nameEncoding = 138412802;
          v62 = v41;
          v63 = 2048;
          v64 = v45;
          v65 = 2048;
          v66 = v55;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "SCPreferencesSetComputerName failed -- name: '%@', encoding: 0x%lX, error: %{mdns:err}ld", &nameEncoding, 0x20u);
        }
      }

LABEL_69:
      _mdns_system_unlock_and_forget_prefs(&v54);
      v48 = v55;
      CFRelease(v41);
      if (!v48)
      {
        return;
      }

      goto LABEL_70;
    }

    if (!v40)
    {
      v51 = -6700;
LABEL_78:
      v49 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        v49 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      nameEncoding = 141558531;
      v62 = 1752392040;
      v63 = 2085;
      v64 = &v57;
      v65 = 2048;
      v66 = v51;
      v50 = "Failed to set local hostname -- name: %{sensitive, mask.hash}s, error: %ld";
      goto LABEL_86;
    }

    v55 = 0;
    v46 = _mdns_system_create_locked_prefs(&v55);
    v54 = v46;
    if (!v55)
    {
      v47 = v46;
      if (SCPreferencesSetLocalHostName(v46, v41))
      {
        v55 = 0;
LABEL_76:
        v55 = _mdns_system_commit_and_apply_prefs(v47);
        goto LABEL_77;
      }

      if (SCError())
      {
        v55 = SCError();
        if (!v55)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v55 = -6700;
      }

      if (mdns_system_log_s_once != -1)
      {
        dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
      }

      v53 = mdns_system_log_s_log;
      if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
      {
        nameEncoding = 138412546;
        v62 = v41;
        v63 = 2048;
        v64 = v55;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "SCPreferencesSetLocalHostName failed -- name: '%@', error: %{mdns:err}ld", &nameEncoding, 0x16u);
      }
    }

LABEL_77:
    _mdns_system_unlock_and_forget_prefs(&v54);
    v51 = v55;
    CFRelease(v41);
    if (!v51)
    {
      return;
    }

    goto LABEL_78;
  }
}

void SetLowWater(uint64_t a1, int a2)
{
  v23 = a2;
  v3 = *(a1 + 16);
  if ((v3 & 0x80000000) == 0 && setsockopt(v3, 0xFFFF, 4100, &v23, 4u) < 0)
  {
    v4 = mDNSLogCategory_Default;
    v5 = *(a1 + 16);
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "SO_RCVLOWAT IPv4 %d error %d errno %d (%s)", v8, v9, v10, v11, v12, v5);
  }

  v13 = *(a1 + 48);
  if ((v13 & 0x80000000) == 0 && setsockopt(v13, 0xFFFF, 4100, &v23, 4u) < 0)
  {
    v14 = mDNSLogCategory_Default;
    v15 = *(a1 + 48);
    v16 = *__error();
    v17 = __error();
    strerror(*v17);
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "SO_RCVLOWAT IPv6 %d error %d errno %d (%s)", v18, v19, v20, v21, v22, v15);
  }
}

void EnableSocketReadEvent(int a1, void *a2)
{
  v3 = KQueueSet(a1, 4u, -1, a2);
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v3)
  {
    v7 = v3;
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    v12 = 67109376;
    v13 = a1;
    v14 = 2048;
    v15 = v7;
    v8 = "Failed to enable read kevent for socket -- socket: %d, error: %{mdns:err}ld";
    v9 = v4;
    v10 = OS_LOG_TYPE_FAULT;
    v11 = 18;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v12 = 67109120;
      v13 = a1;
      v8 = "Enabled read kevent for socket -- socket: %d";
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v12 = 67109120;
      v13 = a1;
      v8 = "Enabled read kevent for socket -- socket: %d";
    }

    v9 = v4;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 8;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v8, &v12, v11);
}

void SignalCallback(uint64_t a1, uint64_t a2)
{
  v3 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a2 + 20);
  if (v11 > 26)
  {
    if (v11 > 28)
    {
      if (v11 == 29)
      {
        v34 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          LOWORD(v71) = 0;
          v35 = "Sending SIGINFO to mDNSResponder daemon is deprecated. To trigger state dump, please use 'dns-sd -O', enter 'dns-sd -h' for more information";
        }

        else
        {
          v34 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          LOWORD(v71) = 0;
          v35 = "Sending SIGINFO to mDNSResponder daemon is deprecated. To trigger state dump, please use 'dns-sd -O', enter 'dns-sd -h' for more information";
        }

LABEL_131:
        v69 = v34;
        v70 = 2;
LABEL_135:
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v35, &v71, v70);
        goto LABEL_136;
      }

      if (v11 != 30)
      {
        if (v11 == 31)
        {
          mDNS_PacketLoggingEnabled = 1;
          v12 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            v71 = 136446210;
            v72 = "Enabled";
          }

          else
          {
            v12 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            v71 = 136446210;
            v72 = "Enabled";
          }

          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SIGUSR2: Packet Logging %{public}s on Apple Platforms", &v71, 0xCu);
LABEL_103:
          if (mDNS_McastLoggingEnabled)
          {
            v65 = mDNS_PacketLoggingEnabled;
          }

          else
          {
            v65 = 0;
          }

          mDNS_McastTracingEnabled = v65;
          v62 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            v14 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              v67 = "Disabled";
              if (v65)
              {
                v67 = "Enabled";
              }

              v71 = 136446210;
              v72 = v67;
              v22 = "SIGUSR2: Multicast Tracing is %{public}s";
              goto LABEL_116;
            }
          }

          else
          {
            v62 = mDNSLogCategory_Default_redacted;
            v14 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              v66 = "Disabled";
              if (v65)
              {
                v66 = "Enabled";
              }

              v71 = 136446210;
              v72 = v66;
              v22 = "SIGUSR2: Multicast Tracing is %{public}s";
LABEL_116:
              v54 = v62;
              v55 = 12;
              goto LABEL_117;
            }
          }

LABEL_118:
          UpdateDebugState(v14, v15, v16, v17, v18, v19, v20, v21, v71);
          goto LABEL_136;
        }

        goto LABEL_57;
      }

      mDNS_LoggingEnabled = 1;
      v44 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        v45 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
        if (!v45)
        {
          goto LABEL_122;
        }

        v71 = 136446210;
        v72 = "Enabled";
      }

      else
      {
        v44 = mDNSLogCategory_Default_redacted;
        v45 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
        if (!v45)
        {
          goto LABEL_122;
        }

        v71 = 136446210;
        v72 = "Enabled";
      }

      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "SIGUSR1: Logging %{public}s on Apple Platforms", &v71, 0xCu);
LABEL_122:
      if (mDNS_LoggingEnabled)
      {
        v68 = 50;
      }

      else
      {
        v68 = 250;
      }

      WatchDogReportingThreshold = v68;
      UpdateDebugState(v45, v46, v47, v48, v49, v50, v51, v52, v71);
      v34 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        LOWORD(v71) = 0;
        v35 = "USR1 Logging Enabled";
      }

      else
      {
        v34 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        LOWORD(v71) = 0;
        v35 = "USR1 Logging Enabled";
      }

      goto LABEL_131;
    }

    if (v11 != 27)
    {
      v23 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        LOWORD(v71) = 0;
      }

      else
      {
        v23 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        LOWORD(v71) = 0;
      }

      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SIGWINCH: Purge unicast assist cache", &v71, 2u);
LABEL_67:
      if (_os_feature_enabled_impl())
      {
        while (1)
        {
          v56 = s_interface_head_0;
          if (!s_interface_head_0)
          {
            break;
          }

          s_interface_head_0 = *s_interface_head_0;
          _unicast_assist_cache_free_interface(v56);
        }
      }

      goto LABEL_136;
    }

    v36 = mDNS_McastLoggingEnabled;
    mDNS_McastLoggingEnabled = mDNS_McastLoggingEnabled == 0;
    v37 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      v60 = "Disabled";
      if (!v36)
      {
        v60 = "Enabled";
      }

      v71 = 136446210;
      v72 = v60;
    }

    else
    {
      v37 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      v43 = "Disabled";
      if (!v36)
      {
        v43 = "Enabled";
      }

      v71 = 136446210;
      v72 = v43;
    }

    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "SIGPROF: Multicast Logging %{public}s", &v71, 0xCu);
LABEL_87:
    LogMcastStateInfo(0, 1, 1, v38, v39, v40, v41, v42, v71);
    if (mDNS_McastLoggingEnabled)
    {
      v61 = mDNS_PacketLoggingEnabled;
    }

    else
    {
      v61 = 0;
    }

    mDNS_McastTracingEnabled = v61;
    v62 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      v14 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v64 = "Disabled";
        if (v61)
        {
          v64 = "Enabled";
        }

        v71 = 136446210;
        v72 = v64;
        v22 = "SIGPROF: Multicast Tracing is %{public}s";
        goto LABEL_116;
      }
    }

    else
    {
      v62 = mDNSLogCategory_Default_redacted;
      v14 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v63 = "Disabled";
        if (v61)
        {
          v63 = "Enabled";
        }

        v71 = 136446210;
        v72 = v63;
        v22 = "SIGPROF: Multicast Tracing is %{public}s";
        goto LABEL_116;
      }
    }

    goto LABEL_118;
  }

  if (v11 > 14)
  {
    if (v11 != 15)
    {
      if (v11 == 18)
      {
        mDNS_McastTracingEnabled = 0;
        mDNS_McastLoggingEnabled = 0;
        mDNS_PacketLoggingEnabled = 0;
        mDNS_LoggingEnabled = 0;
        v13 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          v14 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
          if (!v14)
          {
            goto LABEL_118;
          }

          LOWORD(v71) = 0;
          v22 = "All mDNSResponder Debug Logging/Tracing Disabled (USR1/USR2/PROF)";
        }

        else
        {
          v13 = mDNSLogCategory_Default_redacted;
          v14 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
          if (!v14)
          {
            goto LABEL_118;
          }

          LOWORD(v71) = 0;
          v22 = "All mDNSResponder Debug Logging/Tracing Disabled (USR1/USR2/PROF)";
        }

        v54 = v13;
        v55 = 2;
LABEL_117:
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v22, &v71, v55);
        goto LABEL_118;
      }

      goto LABEL_57;
    }

LABEL_25:
    v24 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 136446210;
        v72 = "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)";
        goto LABEL_31;
      }
    }

    else
    {
      v24 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 136446210;
        v72 = "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s stopping", &v71, 0xCu);
      }
    }

    while (all_requests)
    {
      AbortUnlinkAndFree(all_requests);
    }

    for (i = LocalDomainEnumRecords; LocalDomainEnumRecords; i = LocalDomainEnumRecords)
    {
      LocalDomainEnumRecords = *i;
      mDNS_Deregister(mDNSStorage, (i + 1));
    }

    if ((listenfd & 0x80000000) == 0)
    {
      close(listenfd);
      unlink("/var/run/mDNSResponder");
    }

    mDNS_StartExit();
    goto LABEL_136;
  }

  if (v11 == 1)
  {
    v33 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      LOWORD(v71) = 0;
    }

    else
    {
      v33 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      LOWORD(v71) = 0;
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SIGHUP: Purge cache", &v71, 2u);
LABEL_73:
    mDNS_Lock_(mDNSStorage, "SignalCallback", 637);
    for (j = 0; j != 499; ++j)
    {
      for (k = mDNSStorage[j + 34]; k; k = *k)
      {
        for (m = k[2]; m; m = *m)
        {
          mDNS_PurgeCacheResourceRecord(mDNSStorage, m);
        }
      }
    }

    mDNSCoreRestartQueries(mDNSStorage);
    mDNS_Unlock_(mDNSStorage, "SignalCallback", 649);
    goto LABEL_136;
  }

  if (v11 == 2)
  {
    goto LABEL_25;
  }

LABEL_57:
  v53 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_136;
    }

    v71 = 67109120;
    LODWORD(v72) = v11;
    v35 = "SignalCallback: Unknown signal %d";
    goto LABEL_134;
  }

  v53 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 67109120;
    LODWORD(v72) = v11;
    v35 = "SignalCallback: Unknown signal %d";
LABEL_134:
    v69 = v53;
    v70 = 8;
    goto LABEL_135;
  }

LABEL_136:
  KQueueUnlock("Unix Signal", v26, v27, v28, v29, v30, v31, v32);
}

void HandleSIG(mach_msg_id_t a1)
{
  msg.msgh_remote_port = signal_port;
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000014;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = a1;
  v2 = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
  if (v2)
  {
    if (v2 == 268435460)
    {
      mach_msg_destroy(&msg);
    }

    if (a1 == 15 || a1 == 2)
    {
      exit(-1);
    }
  }
}

uint64_t SendDict_ToServer(void *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = -3;
  HelperLog("SendDict_ToServer Sending msg to Daemon", a1);
  mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", HelperQueue, 2uLL);
  if (mach_service)
  {
    v3 = mach_service;
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_5437);
    xpc_connection_activate(v3);
    v4 = dispatch_semaphore_create(0);
    if (v4)
    {
      v5 = v4;
      dispatch_retain(v4);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = __SendDict_ToServer_block_invoke;
      handler[3] = &unk_100152370;
      handler[4] = &v17;
      handler[5] = &v21;
      handler[6] = v5;
      xpc_connection_send_message_with_reply(v3, a1, HelperQueue, handler);
      v6 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v5, v6))
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer: UNEXPECTED WAIT_TIME in dispatch_semaphore_wait", v7, v8, v9, v10, v11, v15);
        xpc_connection_cancel(v3);
        dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      }

      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer returning with errorcode[%d]", v7, v8, v9, v10, v11, *(v18 + 6));
      }

      xpc_connection_cancel(v3);
      xpc_release(v3);
      dispatch_release(v5);
    }

    else
    {
      xpc_connection_cancel(v3);
      xpc_release(v3);
    }
  }

  v12 = v22[3];
  if (v12)
  {
    xpc_release(v12);
    v22[3] = 0;
  }

  v13 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v13;
}

void HelperLog(int a1, xpc_object_t object)
{
  v8 = xpc_copy_description(object);
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HelperLog %s: %s", v3, v4, v5, v6, v7, a1);
  }

  if (v8)
  {

    free(v8);
  }
}

char *_mdns_obj_copy_description(void *a1)
{
  v2 = 0;
  asprintf(&v2, "<%s: %p>", *(a1[2] + 8), a1);
  return v2;
}

const char *_mdns_obj_copy_description_as_cfstring(uint64_t a1)
{
  v1 = (a1 + 16);
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }

    v2 = v1[3];
  }

  while (!v2);
  result = v2();
  if (result)
  {
    v4 = result;
    result = CFStringCreateWithCStringNoCopy(0, result, 0x8000100u, kCFAllocatorMalloc);
    if (!result)
    {
      free(v4);
      return 0;
    }
  }

  return result;
}

char *_dnssec_obj_rr_rrsig_copy_rdata_rfc_description(uint64_t a1, int *a2)
{
  memset(v42, 0, 15);
  memset(v41, 0, 15);
  v4 = *(a1 + 24);
  v39 = bswap32(*(v4 + 12));
  v38 = bswap32(*(v4 + 8));
  memset(&v37, 0, sizeof(v37));
  gmtime_r(&v39, &v37);
  strftime(v42, 0xFuLL, "%Y%m%d%H%M%S", &v37);
  gmtime_r(&v38, &v37);
  strftime(v41, 0xFuLL, "%Y%m%d%H%M%S", &v37);
  v5 = *(a1 + 80);
  v6 = v40;
  bzero(v40, 0x3F1uLL);
  v7 = *(v5 + 16);
  v8 = *v7;
  if (*v7)
  {
    v9 = &v7[*(v5 + 24)];
    v6 = v40;
    v10 = *(v5 + 16);
    do
    {
      if (v8 > 0x3F || (v11 = v8 + 1, v12 = &v10[v11], &v10[v11] - v7 > 255))
      {
        v26 = 0;
        v29 = -6742;
        goto LABEL_143;
      }

      if (v12 >= v9)
      {
        v26 = 0;
        v29 = -6750;
        goto LABEL_143;
      }

      v13 = v10 + 1;
      if (v10 + 1 < v12)
      {
        v14 = v11 - 1;
        do
        {
          v15 = *v13;
          v16 = v15 - 32;
          if ((v15 - 32) > 0x5E)
          {
            *v6 = 92;
            v6[1] = (*v13 / 0x64u) | 0x30;
            v6[2] = (*v13 / 0xAu - 10 * ((26 * (*v13 / 0xAu)) >> 8)) | 0x30;
            v6[3] = (*v13 % 0xAu) | 0x30;
            v6 += 4;
          }

          else
          {
            v17 = v16 > 0x3C;
            v18 = (1 << v16) & 0x1000000000004001;
            if (!v17 && v18 != 0)
            {
              *v6++ = 92;
            }

            *v6++ = v15;
          }

          ++v13;
          --v14;
        }

        while (v14);
      }

      *v6++ = 46;
      v8 = *v12;
      v10 = v12;
    }

    while (*v12);
    if (v12 != v7)
    {
      goto LABEL_20;
    }
  }

  *v6++ = 46;
LABEL_20:
  *v6 = 0;
  v20 = *(a1 + 24);
  v21 = *(v20 + 18);
  v22 = v20 + 9;
  if (*(v20 + 18))
  {
    v22 = v20 + 9;
    do
    {
      v23 = v22 + v21;
      v24 = v23[1];
      v22 = (v23 + 1);
      v21 = v24;
    }

    while (v24);
  }

  v25 = (~(v22 - (v20 + 18)) + *(a1 + 36) - 18);
  v26 = (4 * (((v25 + 2) * 0x5555555555555556uLL) >> 64));
  v27 = __rev16(*v20);
  if (v27 > 248)
  {
    if (v27 <= 255)
    {
      if (v27 <= 251)
      {
        if (v27 == 249)
        {
          v28 = "TKEY";
        }

        else if (v27 == 250)
        {
          v28 = "TSIG";
        }

        else
        {
          v28 = "IXFR";
        }
      }

      else if (v27 > 253)
      {
        if (v27 == 254)
        {
          v28 = "MAILA";
        }

        else
        {
          v28 = "ANY";
        }
      }

      else if (v27 == 252)
      {
        v28 = "AXFR";
      }

      else
      {
        v28 = "MAILB";
      }
    }

    else
    {
      if (v27 > 259)
      {
        if (v27 > 0x8000)
        {
          if (v27 == 32769)
          {
            v28 = "DLV";
            goto LABEL_132;
          }

          if (v27 == 0xFFFF)
          {
            v28 = "Reserved";
            goto LABEL_132;
          }
        }

        else
        {
          if (v27 == 260)
          {
            v28 = "AMTRELAY";
            goto LABEL_132;
          }

          if (v27 == 0x8000)
          {
            v28 = "TA";
            goto LABEL_132;
          }
        }

LABEL_131:
        v28 = 0;
        goto LABEL_132;
      }

      if (v27 > 257)
      {
        if (v27 == 258)
        {
          v28 = "AVC";
        }

        else
        {
          v28 = "DOA";
        }
      }

      else if (v27 == 256)
      {
        v28 = "URI";
      }

      else
      {
        v28 = "CAA";
      }
    }
  }

  else
  {
    v28 = "A";
    switch(v27)
    {
      case 1:
        break;
      case 2:
        v28 = "NS";
        break;
      case 3:
        v28 = "MD";
        break;
      case 4:
        v28 = "MF";
        break;
      case 5:
        v28 = "CNAME";
        break;
      case 6:
        v28 = "SOA";
        break;
      case 7:
        v28 = "MB";
        break;
      case 8:
        v28 = "MG";
        break;
      case 9:
        v28 = "MR";
        break;
      case 10:
        v28 = "NULL";
        break;
      case 11:
        v28 = "WKS";
        break;
      case 12:
        v28 = "PTR";
        break;
      case 13:
        v28 = "HINFO";
        break;
      case 14:
        v28 = "MINFO";
        break;
      case 15:
        v28 = "MX";
        break;
      case 16:
        v28 = "TXT";
        break;
      case 17:
        v28 = "RP";
        break;
      case 18:
        v28 = "AFSDB";
        break;
      case 19:
        v28 = "X25";
        break;
      case 20:
        v28 = "ISDN";
        break;
      case 21:
        v28 = "RT";
        break;
      case 22:
        v28 = "NSAP";
        break;
      case 23:
        v28 = "NSAP-PTR";
        break;
      case 24:
        v28 = "SIG";
        break;
      case 25:
        v28 = "KEY";
        break;
      case 26:
        v28 = "PX";
        break;
      case 27:
        v28 = "GPOS";
        break;
      case 28:
        v28 = "AAAA";
        break;
      case 29:
        v28 = "LOC";
        break;
      case 30:
        v28 = "NXT";
        break;
      case 31:
        v28 = "EID";
        break;
      case 32:
        v28 = "NIMLOC";
        break;
      case 33:
        v28 = "SRV";
        break;
      case 34:
        v28 = "ATMA";
        break;
      case 35:
        v28 = "NAPTR";
        break;
      case 36:
        v28 = "KX";
        break;
      case 37:
        v28 = "CERT";
        break;
      case 38:
        v28 = "A6";
        break;
      case 39:
        v28 = "DNAME";
        break;
      case 40:
        v28 = "SINK";
        break;
      case 41:
        v28 = "OPT";
        break;
      case 42:
        v28 = "APL";
        break;
      case 43:
        v28 = "DS";
        break;
      case 44:
        v28 = "SSHFP";
        break;
      case 45:
        v28 = "IPSECKEY";
        break;
      case 46:
        v28 = "RRSIG";
        break;
      case 47:
        v28 = "NSEC";
        break;
      case 48:
        v28 = "DNSKEY";
        break;
      case 49:
        v28 = "DHCID";
        break;
      case 50:
        v28 = "NSEC3";
        break;
      case 51:
        v28 = "NSEC3PARAM";
        break;
      case 52:
        v28 = "TLSA";
        break;
      case 53:
        v28 = "SMIMEA";
        break;
      case 55:
        v28 = "HIP";
        break;
      case 56:
        v28 = "NINFO";
        break;
      case 57:
        v28 = "RKEY";
        break;
      case 58:
        v28 = "TALINK";
        break;
      case 59:
        v28 = "CDS";
        break;
      case 60:
        v28 = "CDNSKEY";
        break;
      case 61:
        v28 = "OPENPGPKEY";
        break;
      case 62:
        v28 = "CSYNC";
        break;
      case 63:
        v28 = "ZONEMD";
        break;
      case 64:
        v28 = "SVCB";
        break;
      case 65:
        v28 = "HTTPS";
        break;
      case 99:
        v28 = "SPF";
        break;
      case 100:
        v28 = "UINFO";
        break;
      case 101:
        v28 = "UID";
        break;
      case 102:
        v28 = "GID";
        break;
      case 103:
        v28 = "UNSPEC";
        break;
      case 104:
        v28 = "NID";
        break;
      case 105:
        v28 = "L32";
        break;
      case 106:
        v28 = "L64";
        break;
      case 107:
        v28 = "LP";
        break;
      case 108:
        v28 = "EUI48";
        break;
      case 109:
        v28 = "EUI64";
        break;
      default:
        goto LABEL_131;
    }
  }

LABEL_132:
  v30 = &v26[snprintf(0, 0, "%s %u %u %u %s %s %u %s ", v28, *(v20 + 2), *(v20 + 3), bswap32(*(v20 + 1)), v42, v41, __rev16(v20[8]), v40)];
  v31 = (v30 + 1);
  if (v30 == -1 || (v32 = malloc_type_calloc(1uLL, (v30 + 1), 0x3824D972uLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v32;
    v33 = snprintf(v32, v31, "%s %u %u %u %s %s %u %s ", v28, *(*(a1 + 24) + 2), *(*(a1 + 24) + 3), bswap32(*(*(a1 + 24) + 4)), v42, v41, __rev16(*(*(a1 + 24) + 16)), v40);
    if (v33 >= 1)
    {
      base_x_encode(0, v22 + 1, v25, &v26[v33]);
      v34 = 0;
      v29 = 0;
      if (!a2)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }
  }

  v29 = -6700;
LABEL_143:
  v34 = 1;
  if (a2)
  {
LABEL_136:
    *a2 = v29;
  }

LABEL_137:
  v35 = v34 ^ 1;
  if (!v26)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    free(v26);
    return 0;
  }

  return v26;
}

void _dnssec_obj_rr_rrsig_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

void *dnssec_obj_rr_rrsig_create(unsigned __int8 *a1, const void *a2, unsigned int a3, int a4, int *a5)
{
  v17 = 0;
  if (!rdata_parser_rrsig_check_validity(a2, a3))
  {
    v15 = 0;
    v16 = 0;
    v14 = -6705;
    v17 = -6705;
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  result = malloc_type_calloc(1uLL, 0x58uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = &_dnssec_obj_rr_rrsig_kind;
  result[1] = &_dnssec_obj_rr_rrsig_kind;
  do
  {
    v13 = v12[2];
    if (v13)
    {
      v13(v11);
    }

    v12 = *v12;
  }

  while (v12);
  ++*v11;
  dnssec_obj_rr_init_fields(v11, a1, 46, 1, a2, a3, a4, _dnssec_obj_rr_rrsig_copy_rdata_rfc_description, &v17);
  *(v11 + 80) = dnssec_obj_domain_name_create_with_labels((*(v11 + 24) + 18), 0, &v17);
  v14 = v17;
  if (v17)
  {
    v15 = v11;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v17)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  if (a5)
  {
LABEL_14:
    *a5 = v14;
  }

LABEL_15:
  if (v15)
  {
    ref_count_obj_release(v15);
  }

  return v16;
}

BOOL dnssec_obj_rr_rrsig_covers_rr(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = -90005;
  v5 = *(a1 + 24);
  if (*(a2 + 32) == bswap32(*v5) >> 16)
  {
    v8 = *(a2 + 16);
    v9 = *(v8 + 16);
    v10 = *v9;
    if (*v9)
    {
      v11 = 0;
      do
      {
        ++v11;
        v12 = &v9[v10];
        v13 = v12[1];
        v9 = v12 + 1;
        v10 = v13;
      }

      while (v13);
    }

    else
    {
      v11 = 0;
    }

    if (v11 < *(v5 + 3))
    {
      result = 0;
      v4 = -90002;
    }

    else if (ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1))
    {
      result = 0;
      v4 = -90003;
    }

    else if (*(a1 + 34) == *(a2 + 34))
    {
      v14 = *(a1 + 80);
      if (!ref_count_obj_compare(v8, v14, 1) || (result = dnssec_obj_domain_name_is_sub_domain_of(*(v8 + 16), *(v14 + 16))))
      {
        v4 = 0;
        result = 1;
      }
    }

    else
    {
      result = 0;
      v4 = -90004;
    }
  }

  else
  {
    result = 0;
    v4 = -90001;
  }

  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t DNSMessageExtractDomainName(unint64_t a1, uint64_t a2, char *__src, char *__dst, void *a5)
{
  if (__dst)
  {
    v6 = __dst + 256;
  }

  else
  {
    v6 = 0;
  }

  result = 4294960586;
  if (__src < a1)
  {
    return result;
  }

  v8 = a1 + a2;
  if (a1 + a2 <= __src)
  {
    return result;
  }

  v10 = __dst;
  v11 = *__src;
  if (*__src)
  {
    v12 = 0;
    do
    {
      if (v11 > 0x3F)
      {
        if ((~v11 & 0xC0) != 0)
        {
          return 4294960554;
        }

        if ((v8 - __src) < 2)
        {
          return 4294960546;
        }

        if (!v12)
        {
          v12 = __src + 2;
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        __src = (a1 + (__src[1] | ((v11 & 0x3F) << 8)));
        if (__src >= v8)
        {
          return 4294960546;
        }

        v11 = *__src;
        if (v11 > 0xBF)
        {
          return 4294960554;
        }
      }

      else
      {
        v13 = &__src[v11 + 1];
        if (v13 >= v8)
        {
          return 4294960546;
        }

        if (v10)
        {
          v14 = v11 + 1;
          if (v6 - v10 <= v14)
          {
            return 4294960545;
          }

          memcpy(v10, __src, v11 + 1);
          v10 += v14;
        }

        v11 = *v13;
        __src = v13;
      }
    }

    while (v11);
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = 0;
  if (__dst)
  {
LABEL_22:
    *v10 = 0;
  }

LABEL_23:
  result = 0;
  if (a5)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = __src + 1;
    }

    *a5 = v15;
  }

  return result;
}

uint64_t DNSMessageExtractDomainNameString(unint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, void *a5)
{
  v8 = 0;
  memset(__dst, 0, sizeof(__dst));
  result = DNSMessageExtractDomainName(a1, a2, a3, __dst, &v8);
  if (!result)
  {
    result = DomainNameToString(__dst, 0, a4, 0);
    if (a5)
    {
      if (!result)
      {
        *a5 = v8;
      }
    }
  }

  return result;
}

uint64_t DomainNameToString(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2 && (a2 - a1) < 1)
  {
    return 4294960546;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1;
    do
    {
      if (v4 > 0x3F)
      {
        return 4294960554;
      }

      v6 = v4 + 1;
      v7 = &v5[v6];
      if (&v5[v6] - a1 > 255)
      {
        return 4294960554;
      }

      if (a2 && v7 >= a2)
      {
        return 4294960546;
      }

      v8 = v5 + 1;
      if (v5 + 1 < v7)
      {
        for (i = v6 - 1; i; --i)
        {
          v10 = *v8;
          if ((*v8 - 32) > 0x5E)
          {
            if ((*v8 & 0x80) == 0)
            {
              *a3 = 92;
              if (v10 <= 0x63u)
              {
                v12 = 48;
              }

              else
              {
                v12 = 49;
              }

              a3[1] = v12;
              if (v10 >= 0x64u)
              {
                v13 = v10 / 0xAu - 10;
              }

              else
              {
                v13 = v10 / 0xAu;
              }

              a3[2] = v13 + 48;
              a3[3] = (v10 % 0xAu) | 0x30;
              a3 += 4;
              goto LABEL_26;
            }
          }

          else if (*v8 - 32 <= 0x3C && ((1 << (v10 - 32)) & 0x1000000000004001) != 0)
          {
            *a3++ = 92;
          }

          *a3++ = v10;
LABEL_26:
          ++v8;
        }
      }

      *a3++ = 46;
      v4 = *v7;
      v5 = v7;
    }

    while (*v7);
    if (v7 != a1)
    {
      goto LABEL_30;
    }
  }

  *a3++ = 46;
  v7 = a1;
LABEL_30:
  *a3 = 0;
  result = 0;
  if (a4)
  {
    *a4 = v7 + 1;
  }

  return result;
}

uint64_t DNSMessageExtractQuestion(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, void *a7)
{
  v14 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v14);
  if (!result)
  {
    v13 = v14;
    if (a1 + a2 - v14 < 4)
    {
      return 4294960546;
    }

    else
    {
      if (a5)
      {
        *a5 = bswap32(*v14) >> 16;
      }

      if (a6)
      {
        *a6 = bswap32(v13[1]) >> 16;
      }

      result = 0;
      if (a7)
      {
        *a7 = v13 + 2;
      }
    }
  }

  return result;
}

uint64_t _DNSMessageExtractRecordEx(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, _DWORD *a7, unsigned __int16 **a8, unint64_t *a9, char *a10, size_t a11, void *a12, void *a13, void *a14)
{
  v27 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v27);
  if (!result)
  {
    v20 = v27;
    if (a1 + a2 - v27 < 0xA)
    {
      return 4294960546;
    }

    v21 = (v27 + 10);
    v22 = __rev16(*(v27 + 4));
    if (a1 + a2 - (v27 + 10) < v22)
    {
      return 4294960546;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = bswap32(*v27) >> 16;
      if (!a11 && !a13 || (result = DNSMessageExtractRData(a1, a2, v27 + 10, v22, v23, a10, a11, &v26, &v25), !result))
      {
        if (a5)
        {
          *a5 = v23;
        }

        if (a6)
        {
          *a6 = bswap32(*(v20 + 1)) >> 16;
        }

        if (a7)
        {
          *a7 = bswap32(*(v20 + 1));
        }

        if (a8)
        {
          *a8 = v21;
        }

        if (a9)
        {
          *a9 = v22;
        }

        if (a12)
        {
          *a12 = v26;
        }

        if (a13)
        {
          *a13 = v25;
        }

        result = 0;
        if (a14)
        {
          *a14 = v21 + v22;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageExtractRData(unint64_t a1, uint64_t a2, char *__src, unint64_t a4, int a5, char *a6, size_t a7, size_t *a8, unint64_t *a9)
{
  v10 = a7;
  v12 = a4;
  v76 = 0;
  memset(__srca, 0, 256);
  memset(__dst, 0, sizeof(__dst));
  v16 = &__src[a4];
  switch(a5)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 12:
    case 39:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v18 = __srca[0];
        v19 = __srca;
        if (__srca[0])
        {
          do
          {
            v20 = &v19[v18];
            v21 = v20[1];
            v19 = v20 + 1;
            v18 = v21;
          }

          while (v21);
        }

        v12 = v19 - __srca + 1;
        if (v12 < v10)
        {
          v10 = v19 - __srca + 1;
        }

        v22 = __srca;
        v23 = a6;
        goto LABEL_9;
      }

      break;
    case 6:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v76, __dst, &v76);
        if (!result)
        {
          v59 = v76;
          if (v16 - v76 != 20)
          {
            goto LABEL_80;
          }

          v60 = __srca[0];
          v61 = __srca;
          if (__srca[0])
          {
            do
            {
              v62 = &v61[v60];
              v63 = v62[1];
              v61 = v62 + 1;
              v60 = v63;
            }

            while (v63);
          }

          v64 = &a6[v10];
          v65 = v61 - __srca;
          v66 = LOBYTE(__dst[0]);
          v67 = __dst;
          if (LOBYTE(__dst[0]))
          {
            do
            {
              v68 = &v67[v66];
              v69 = v68[1];
              v67 = v68 + 1;
              v66 = v69;
            }

            while (v69);
          }

          v70 = v67 - __dst;
          v71 = v67 - __dst + 1;
          v12 = v65 + v71 + 21;
          if (v65 + 1 >= v10)
          {
            v72 = v10;
          }

          else
          {
            v72 = v65 + 1;
          }

          memcpy(a6, __srca, v72);
          if (v10 - v72 >= v71)
          {
            v73 = v70 + 1;
          }

          else
          {
            v73 = v10 - v72;
          }

          memcpy(&a6[v72], __dst, v73);
          v74 = &a6[v72 + v73];
          if ((v64 - v74) >= 0x14)
          {
            v75 = 20;
          }

          else
          {
            v75 = v64 - v74;
          }

          memcpy(v74, v59, v75);
          v10 = &v74[v75] - a6;
          goto LABEL_75;
        }
      }

      break;
    case 14:
    case 17:
    case 26:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v76, __dst, &v76);
        if (!result)
        {
          if (v76 != v16)
          {
            goto LABEL_80;
          }

          v36 = __srca[0];
          v37 = __srca;
          if (__srca[0])
          {
            do
            {
              v38 = &v37[v36];
              v39 = v38[1];
              v37 = v38 + 1;
              v36 = v39;
            }

            while (v39);
          }

          v40 = v37 - __srca + 1;
          v41 = LOBYTE(__dst[0]);
          v42 = __dst;
          if (LOBYTE(__dst[0]))
          {
            do
            {
              v43 = &v42[v41];
              v44 = v43[1];
              v42 = v43 + 1;
              v41 = v44;
            }

            while (v44);
          }

          v45 = v42 - __dst;
          v46 = v42 - __dst + 1;
          v12 = v46 + v40;
          if (v40 >= v10)
          {
            v47 = v10;
          }

          else
          {
            v47 = v37 - __srca + 1;
          }

          memcpy(a6, __srca, v47);
          if (v10 - v47 >= v46)
          {
            v48 = v45 + 1;
          }

          else
          {
            v48 = v10 - v47;
          }

          memcpy(&a6[v47], __dst, v48);
          v10 = v48 + v47;
          goto LABEL_75;
        }
      }

      break;
    case 15:
    case 18:
    case 21:
    case 36:
      if (a4 < 3)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 2, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v24 = __srca[0];
        v25 = __srca;
        if (__srca[0])
        {
          do
          {
            v26 = &v25[v24];
            v27 = v26[1];
            v25 = v26 + 1;
            v24 = v27;
          }

          while (v27);
        }

        v28 = v25 - __srca;
        v29 = v25 - __srca + 1;
        v12 = v25 - __srca + 3;
        v30 = v10 >= 2;
        v31 = 2;
        goto LABEL_16;
      }

      break;
    case 33:
      if (a4 < 7)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 6, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v49 = __srca[0];
        v50 = __srca;
        if (__srca[0])
        {
          do
          {
            v51 = &v50[v49];
            v52 = v51[1];
            v50 = v51 + 1;
            v49 = v52;
          }

          while (v52);
        }

        v28 = v50 - __srca;
        v29 = v50 - __srca + 1;
        v12 = v50 - __srca + 7;
        v30 = v10 >= 6;
        v31 = 6;
LABEL_16:
        if (v30)
        {
          v32 = v31;
        }

        else
        {
          v32 = v10;
        }

        memcpy(a6, __src, v32);
        if (v10 - v32 >= v29)
        {
          v33 = v28 + 1;
        }

        else
        {
          v33 = v10 - v32;
        }

        v34 = &a6[v32];
        v35 = __srca;
        goto LABEL_23;
      }

      break;
    case 47:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        v53 = v76;
        if (v76 <= v16)
        {
          v54 = __srca[0];
          v55 = __srca;
          if (__srca[0])
          {
            do
            {
              v56 = &v55[v54];
              v57 = v56[1];
              v55 = v56 + 1;
              v54 = v57;
            }

            while (v57);
          }

          v58 = v16 - v76;
          v12 = v55 - __srca + 1 + v16 - v76;
          if (v55 - __srca + 1 < v10)
          {
            v32 = v55 - __srca + 1;
          }

          else
          {
            v32 = v10;
          }

          memcpy(a6, __srca, v32);
          if (v10 - v32 >= v58)
          {
            v33 = v16 - v53;
          }

          else
          {
            v33 = v10 - v32;
          }

          v34 = &a6[v32];
          v35 = v53;
LABEL_23:
          memcpy(v34, v35, v33);
          v10 = v33 + v32;
          goto LABEL_75;
        }

LABEL_80:
        result = 4294960554;
      }

      break;
    default:
      if (a7 >= a4)
      {
        v10 = a4;
      }

      v23 = a6;
      v22 = __src;
LABEL_9:
      memcpy(v23, v22, v10);
LABEL_75:
      if (a8)
      {
        *a8 = v10;
      }

      result = 0;
      if (a9)
      {
        *a9 = v12;
      }

      break;
  }

  return result;
}

uint64_t DNSMessageGetAnswerSection(unint64_t a1, unint64_t a2, char **a3)
{
  if (a2 < 0xC)
  {
    return 4294960553;
  }

  v12[7] = v3;
  v12[8] = v4;
  v7 = __rev16(*(a1 + 4));
  v8 = (a1 + 12);
  if (v7)
  {
    v10 = a1 + a2;
    while (1)
    {
      v12[0] = 0;
      result = DNSMessageExtractDomainName(a1, a2, v8, 0, v12);
      if (result)
      {
        break;
      }

      if (v10 - v12[0] <= 3)
      {
        return 4294960546;
      }

      v8 = (v12[0] + 4);
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

char *DNSMessageCollapse(unint64_t a1, unint64_t a2, void *a3, char **a4)
{
  v53 = 0;
  v52 = 0;
  memset(__src, 0, 256);
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 0xC)
  {
LABEL_68:
    v20 = 0;
    v36 = 0;
    DomainName = -6743;
  }

  else if (__rev16(*(a1 + 4)) == 1)
  {
    v53 = (a1 + 12);
    DomainName = DNSMessageExtractQuestion(a1, a2, (a1 + 12), __src, &v52 + 1, &v52, &v53);
    if (DomainName)
    {
LABEL_57:
      v20 = 0;
      v36 = 0;
      goto LABEL_61;
    }

    if (v52 == 1)
    {
      v9 = __src[0];
      v38 = a3;
      v10 = __src;
      if (__src[0])
      {
        do
        {
          v11 = &v10[v9];
          v12 = v11[1];
          v10 = v11 + 1;
          v9 = v12;
        }

        while (v12);
      }

      v13 = v10 - __src;
      __n = v10 - __src + 1;
      v41 = v53;
      __memcpy_chk();
      v14 = __rev16(*(a1 + 6));
      if (v14)
      {
        v15 = 0;
        v43 = -1;
LABEL_9:
        v16 = 0;
        v53 = v41;
        v17 = 1;
        while (1)
        {
          v51 = 0;
          LODWORD(v49) = 0;
          LOWORD(v48) = 0;
          v50 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          DomainName = _DNSMessageExtractRecordEx(a1, a2, v53, &v54, &v48, &v50, &v49, &v51, 0, 0, 0, 0, 0, &v53);
          if (DomainName)
          {
            goto LABEL_57;
          }

          if (v48 == 5 && v50 == v52 && DomainNameEqual(&v54, __dst))
          {
            DomainName = DNSMessageExtractDomainName(a1, a2, v51, __dst, 0);
            if (DomainName)
            {
              goto LABEL_57;
            }

            v17 = 0;
            v18 = v43;
            if (v43 >= v49)
            {
              v18 = v49;
            }

            v43 = v18;
            if (++v16 == v14)
            {
              goto LABEL_22;
            }
          }

          else if (v14 == ++v16)
          {
            if (v17)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (++v15 != v14)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }
        }
      }

      v43 = -1;
LABEL_25:
      v39 = a4;
      v46 = 0;
      v19 = 0;
      v20 = 0;
      size = v13 + 17;
      v21 = 1;
      a4 = &v53;
      while (1)
      {
        v42 = v21;
        v53 = v41;
        if (v14)
        {
          break;
        }

        v45 = 0;
        if (v20)
        {
          goto LABEL_52;
        }

LABEL_45:
        if (!size || (v29 = malloc_type_calloc(1uLL, size, 0x56016498uLL)) == 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v20 = v29;
        if (size < 0xC)
        {
          goto LABEL_66;
        }

        v30 = *a1;
        *(v29 + 2) = *(a1 + 4);
        *v29 = v30;
        *(v29 + 6) = 0;
        *(v29 + 5) = 0;
        if (size - 12 < __n)
        {
          goto LABEL_66;
        }

        v31 = &v29[size];
        v32 = v29 + 12;
        memcpy(v29 + 12, __src, __n);
        v33 = &v32[__n];
        v46 = v31;
        if ((v31 - &v32[__n]) < 4)
        {
          goto LABEL_66;
        }

        v21 = 0;
        v34 = BYTE2(v52);
        v35 = v52;
        *v33 = HIBYTE(v52);
        v33[1] = v34;
        v33[2] = HIBYTE(v35);
        v33[3] = v35;
        v19 = v33 + 4;
        *(v20 + 2) = 256;
        if ((v42 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v45 = 0;
      v22 = v14;
      do
      {
        v51 = 0;
        v49 = 0;
        v48 = 0;
        v50 = 0;
        v47 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v23 = v53;
        DomainName = _DNSMessageExtractRecordEx(a1, a2, v53, &v54, &v50, &v47, &v48, 0, 0, 0, 0, 0, &v49, &v53);
        if (DomainName)
        {
          goto LABEL_59;
        }

        if (v50 == HIWORD(v52) && v47 == v52 && DomainNameEqual(&v54, __dst))
        {
          if (v20)
          {
            if (v46 - v19 < 2)
            {
              goto LABEL_58;
            }

            *v19 = 3264;
            if ((v46 - v19 - 2) < 0xA)
            {
              goto LABEL_58;
            }

            v24 = v48;
            if (v48 >= v43)
            {
              v24 = v43;
            }

            v48 = v24;
            v25 = v50;
            v26 = v47;
            v27 = v49;
            v19[2] = HIBYTE(v50);
            v19[3] = v25;
            v19[4] = HIBYTE(v26);
            v19[5] = v26;
            v19[6] = HIBYTE(v24);
            v19[7] = BYTE2(v24);
            v19[8] = BYTE1(v24);
            v19[9] = v24;
            v19[10] = HIBYTE(v27);
            v19[11] = v27;
            v28 = v19 + 12;
            if (v46 - v28 < v49)
            {
LABEL_58:
              DomainName = -6762;
LABEL_59:
              v36 = 0;
              goto LABEL_60;
            }

            DomainName = _DNSMessageExtractRecordEx(a1, a2, v23, 0, 0, 0, 0, 0, 0, v28, v49, &v51, 0, 0);
            if (DomainName)
            {
              goto LABEL_59;
            }

            v19 = &v51[v28];
            ++v45;
          }

          else
          {
            size += v49 + 12;
          }
        }

        --v22;
      }

      while (v22);
      if (!v20)
      {
        goto LABEL_45;
      }

LABEL_52:
      if (size >= 0xC)
      {
        *(v20 + 3) = bswap32(v45) >> 16;
LABEL_54:
        v36 = v20;
        a4 = v39;
        v20 = 0;
        DomainName = 0;
        if (v38)
        {
          *v38 = v19 - v36;
        }

        goto LABEL_61;
      }

LABEL_66:
      v36 = 0;
      DomainName = -6762;
LABEL_60:
      a4 = v39;
    }

    else
    {
      v20 = 0;
      v36 = 0;
      DomainName = -6756;
    }
  }

  else
  {
    v20 = 0;
    v36 = 0;
    DomainName = -6764;
  }

LABEL_61:
  if (a4)
  {
    *a4 = DomainName;
  }

  if (v20)
  {
    free(v20);
  }

  return v36;
}

uint64_t DomainNameEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (v3 != v2 && (v4 != *v2 || mdns_memcmp_us_ascii_case_insensitive(v3 + 1, v2 + 1, *v3)))
    {
      break;
    }

    v3 += v4 + 1;
    v2 += v4 + 1;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

_BYTE *DomainNameDupEx(_BYTE *result, void *a2, size_t *a3)
{
  v5 = result;
  v6 = *result;
  v7 = result;
  if (*result)
  {
    v7 = result;
    do
    {
      v8 = &v7[v6];
      v9 = v8[1];
      v7 = v8 + 1;
      v6 = v9;
    }

    while (v9);
  }

  v10 = v7 - result + 1;
  if (v7 - result == -1 || (result = malloc_type_malloc(v7 - result + 1, 0x1F4B2FEBuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    result = memcpy(result, v5, v10);
    *a2 = v11;
    if (a3)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t DomainNameFromString(_BYTE *a1, char *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2)
  {
    if (v2 == 46)
    {
      v2 = a2[1];
      if (!a2[1])
      {
        return v2;
      }

      LOBYTE(v2) = 46;
    }

    v3 = (a1 + 255);
    while (2)
    {
      if ((a1 + 64) >= v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = a1 + 64;
      }

      v5 = a1 + 1;
      v6 = a1 + 1;
      v7 = a2;
      do
      {
        a2 = (v7 + 1);
        if (v2 == 92)
        {
          v8 = *a2;
          if (!*a2)
          {
            return 4294960546;
          }

          LOBYTE(v2) = *a2;
          a2 = (v7 + 2);
          if (v8 - 48 <= 9)
          {
            v9 = *a2;
            if ((v9 - 48) <= 9)
            {
              v10 = v7[3];
              if ((v10 - 48) <= 9)
              {
                v11 = 100 * v8 + 10 * v9 + v10;
                v12 = (v7 + 4);
                if (v11 < 5584)
                {
                  a2 = v12;
                  LOBYTE(v2) = v11 + 48;
                }
              }
            }
          }
        }

        else if (v2 == 46)
        {
          break;
        }

        if (v6 >= v4)
        {
          return 4294960545;
        }

        *v6++ = v2;
        LOBYTE(v2) = *a2;
        v7 = a2;
      }

      while (*a2);
      if (v6 == v5)
      {
        return 4294960554;
      }

      else
      {
        *a1 = v6 - v5;
        *v6 = 0;
        v2 = *a2;
        a1 = v6;
        if (*a2)
        {
          continue;
        }
      }

      break;
    }
  }

  return v2;
}

const char *DNSRecordTypeValueToString(int a1)
{
  if (a1 > 248)
  {
    switch(a1)
    {
      case 249:
        result = "TKEY";
        break;
      case 250:
        result = "TSIG";
        break;
      case 251:
        result = "IXFR";
        break;
      case 252:
        result = "AXFR";
        break;
      case 253:
        result = "MAILB";
        break;
      case 254:
        result = "MAILA";
        break;
      case 255:
        result = "ANY";
        break;
      case 256:
        result = "URI";
        break;
      case 257:
        result = "CAA";
        break;
      case 258:
        result = "AVC";
        break;
      case 259:
        result = "DOA";
        break;
      case 260:
        result = "AMTRELAY";
        break;
      case 261:
        result = "RESINFO";
        break;
      case 262:
        result = "WALLET";
        break;
      case 263:
        result = "CLA";
        break;
      case 264:
        result = "IPN";
        break;
      default:
        if (a1 == 0x8000)
        {
          result = "TA";
        }

        else if (a1 == 32769)
        {
          result = "DLV";
        }

        else
        {
LABEL_101:
          result = 0;
        }

        break;
    }
  }

  else
  {
    result = "Reserved";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "A";
        break;
      case 2:
        result = "NS";
        break;
      case 3:
        result = "MD";
        break;
      case 4:
        result = "MF";
        break;
      case 5:
        result = "CNAME";
        break;
      case 6:
        result = "SOA";
        break;
      case 7:
        result = "MB";
        break;
      case 8:
        result = "MG";
        break;
      case 9:
        result = "MR";
        break;
      case 10:
        result = "NULL";
        break;
      case 11:
        result = "WKS";
        break;
      case 12:
        result = "PTR";
        break;
      case 13:
        result = "HINFO";
        break;
      case 14:
        result = "MINFO";
        break;
      case 15:
        result = "MX";
        break;
      case 16:
        result = "TXT";
        break;
      case 17:
        result = "RP";
        break;
      case 18:
        result = "AFSDB";
        break;
      case 19:
        result = "X25";
        break;
      case 20:
        result = "ISDN";
        break;
      case 21:
        result = "RT";
        break;
      case 22:
        result = "NSAP";
        break;
      case 23:
        result = "NSAP-PTR";
        break;
      case 24:
        result = "SIG";
        break;
      case 25:
        result = "KEY";
        break;
      case 26:
        result = "PX";
        break;
      case 27:
        result = "GPOS";
        break;
      case 28:
        result = "AAAA";
        break;
      case 29:
        result = "LOC";
        break;
      case 30:
        result = "NXT";
        break;
      case 31:
        result = "EID";
        break;
      case 32:
        result = "NIMLOC";
        break;
      case 33:
        result = "SRV";
        break;
      case 34:
        result = "ATMA";
        break;
      case 35:
        result = "NAPTR";
        break;
      case 36:
        result = "KX";
        break;
      case 37:
        result = "CERT";
        break;
      case 38:
        result = "A6";
        break;
      case 39:
        result = "DNAME";
        break;
      case 40:
        result = "SINK";
        break;
      case 41:
        result = "OPT";
        break;
      case 42:
        result = "APL";
        break;
      case 43:
        result = "DS";
        break;
      case 44:
        result = "SSHFP";
        break;
      case 45:
        result = "IPSECKEY";
        break;
      case 46:
        result = "RRSIG";
        break;
      case 47:
        result = "NSEC";
        break;
      case 48:
        result = "DNSKEY";
        break;
      case 49:
        result = "DHCID";
        break;
      case 50:
        result = "NSEC3";
        break;
      case 51:
        result = "NSEC3PARAM";
        break;
      case 52:
        result = "TLSA";
        break;
      case 53:
        result = "SMIMEA";
        break;
      case 55:
        result = "HIP";
        break;
      case 56:
        result = "NINFO";
        break;
      case 57:
        result = "RKEY";
        break;
      case 58:
        result = "TALINK";
        break;
      case 59:
        result = "CDS";
        break;
      case 60:
        result = "CDNSKEY";
        break;
      case 61:
        result = "OPENPGPKEY";
        break;
      case 62:
        result = "CSYNC";
        break;
      case 63:
        result = "ZONEMD";
        break;
      case 64:
        result = "SVCB";
        break;
      case 65:
        result = "HTTPS";
        break;
      case 66:
        result = "DSYNC";
        break;
      case 99:
        result = "SPF";
        break;
      case 100:
        result = "UINFO";
        break;
      case 101:
        result = "UID";
        break;
      case 102:
        result = "GID";
        break;
      case 103:
        result = "UNSPEC";
        break;
      case 104:
        result = "NID";
        break;
      case 105:
        result = "L32";
        break;
      case 106:
        result = "L64";
        break;
      case 107:
        result = "LP";
        break;
      case 108:
        result = "EUI48";
        break;
      case 109:
        result = "EUI64";
        break;
      case 128:
        result = "NXNAME";
        break;
      default:
        goto LABEL_101;
    }
  }

  return result;
}

void DNSMessageToString(char *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v126 = 0;
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_5688);
  }

  v129 = 0;
  memset(v128, 0, sizeof(v128));
  v127 = 0;
  v125 = 0;
  memset(v139, 0, sizeof(v139));
  bzero(v138, 0x3F1uLL);
  memset(v137, 0, 256);
  memset(v136, 0, sizeof(v136));
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_647;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v128, v139, 512, -1);
  if (a2 < 0xC)
  {
    goto LABEL_647;
  }

  v114 = (a1[2] >> 3) & 0xF;
  v117 = a1[5];
  v111 = a1[4];
  v5 = v117 & 0xFFFF00FF | (v111 << 8);
  v109 = a1[6];
  v110 = a1[7];
  v116 = _byteswap_ushort(*(a1 + 3));
  v115 = __rev16(*(a1 + 4));
  v113 = __rev16(*(a1 + 5));
  v6 = "";
  if ((a3 & 0x20) != 0)
  {
LABEL_74:
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_639;
    }

    goto LABEL_75;
  }

  v7 = a1[2] << 8;
  v8 = a1[3] | (a1[2] << 8);
  v9 = __rev16(*a1);
  if ((a3 & 4) != 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v10 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
    v13 = 81;
    if (v7 < 0)
    {
      v13 = 82;
    }

    v107 = v8;
    v108 = v13;
    v106 = v9;
    v12 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "ID:               0x%04X (%u)\n", v9, v9))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v10 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
    v11 = 81;
    if (v7 < 0)
    {
      v11 = 82;
    }

    v106 = v11;
    v12 = "Flags:            0x%04X %c/";
  }

  if (v10(v128, v12))
  {
    goto LABEL_647;
  }

  if (v114 > 6 || v114 == 3)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "OPCODE%d");
  }

  else
  {
    v15 = _DNSOpCodeToString_sNames[v114];
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
  }

  if (CUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_647;
  }

  v16 = &word_100152418;
  v17 = 7;
  do
  {
    if ((*v16 & v8) != 0)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, ", %s", *(v16 - 1)))
      {
        goto LABEL_647;
      }
    }

    v16 += 8;
    --v17;
  }

  while (v17);
  if ((v8 & 0xF) > 0xB)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v104 = (v8 & 0xF);
    v19 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, ", RCODE%d");
  }

  else
  {
    v18 = (&off_100154018)[v8 & 0xF];
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v104 = v18;
    v19 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, ", %s");
  }

  if (v19)
  {
    goto LABEL_647;
  }

  if ((a3 & 4) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\n", v104, v106))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "Question count:   %u\n", v5))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "Answer count:     %u\n", v116))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "Authority count:  %u\n", v115))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "Additional count: %u\n", v113))
    {
      goto LABEL_647;
    }

    v6 = "";
    goto LABEL_74;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, ")", v104, v106))
  {
    goto LABEL_647;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, ", counts: %u/%u/%u/%u", v5, v116, v115, v113))
  {
    goto LABEL_647;
  }

  v6 = ", ";
  if ((a3 & 0x10) != 0)
  {
    goto LABEL_639;
  }

LABEL_75:
  v121 = v6;
  v123 = (a3 >> 3) & 1;
  v127 = a1 + 12;
  if (!v5)
  {
    v21 = 0;
    v27 = v137;
    v23 = a2;
LABEL_200:
    if (v113 + v115 + v116)
    {
      v43 = 0;
      while (1)
      {
        __src[0] = 0;
        v140[0] = 0;
        LODWORD(v135) = 0;
        LOWORD(v134) = 0;
        LOWORD(v133) = 0;
        if (_DNSMessageExtractRecordEx(a1, v23, v127, v27, &v134, &v133, &v135, __src, v140, 0, 0, 0, 0, &v127) || DomainNameToString(v27, 0, v138, 0))
        {
          goto LABEL_647;
        }

        v44 = v133 < 0;
        if (a3)
        {
          LOWORD(v133) = v133 & 0x7FFF;
        }

        v45 = a3 & v44;
        if ((a3 & 4) == 0)
        {
          break;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s", v121))
        {
          goto LABEL_647;
        }

        if (v21 && (DomainNameEqual(v27, v21) & 1) != 0)
        {
          v47 = v27;
          v27 = v21;
        }

        else
        {
          if (DomainNameToString(v27, 0, v138, 0))
          {
            goto LABEL_647;
          }

          if (v123 && _NameIsPrivate(v138))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s ");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s ");
          }

          if (v48)
          {
            goto LABEL_647;
          }

          if (v27 == v137)
          {
            v47 = v136;
          }

          else
          {
            v47 = v137;
          }

          *v47 = 0;
        }

        if (v134 == 41)
        {
          if (v45)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "CF "))
            {
              goto LABEL_647;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "OPT %u", v133))
          {
            goto LABEL_647;
          }

          if (v135)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v49 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " 0x%08X");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v49 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " 0");
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%u", v135))
          {
            goto LABEL_647;
          }

          if (v45)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CF"))
            {
              goto LABEL_647;
            }
          }

          v50 = "ANY";
          if (v133 != 255)
          {
            v50 = 0;
          }

          if (v133 == 1)
          {
            v51 = "IN";
          }

          else
          {
            v51 = v50;
          }

          if (v51)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v52 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v52 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
          }

          if (v52)
          {
            goto LABEL_647;
          }

          if (DNSRecordTypeValueToString(v134))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v49 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v49 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u");
          }
        }

        if (v49)
        {
          goto LABEL_647;
        }

        v21 = v27;
        v121 = ", ";
        if ((a3 & 2) == 0)
        {
LABEL_365:
          DNSRecordDataToStringEx(__src[0], v140[0], v134, a1, v23, v123, &v126);
        }

LABEL_366:
        if (v126)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s", v126))
          {
            goto LABEL_647;
          }

          if (v126)
          {
            free(v126);
            v126 = 0;
          }
        }

        else
        {
          if (v123)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v103 = v140[0];
            v61 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " [%zu B]");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v105 = v140[0];
            v107 = v140[0];
            v103 = __src[0];
            v61 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %#H");
          }

          if (v61)
          {
            goto LABEL_647;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v134 == 5)
          {
            DomainName = DNSMessageExtractDomainName(a1, v23, __src[0], v47, 0);
            v63 = v137;
            if (v47 == v137)
            {
              v63 = v136;
            }

            if (!DomainName)
            {
              v21 = v47;
              v47 = v63;
            }

            *v47 = 0;
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\n"))
          {
            goto LABEL_647;
          }
        }

        ++v43;
        v27 = v47;
        if (v43 >= v113 + v115 + v116)
        {
          goto LABEL_404;
        }
      }

      if (!v116 || v43)
      {
        if (v115 && ((v109 << 8) + v110) == v43)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v46 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\nAUTHORITY SECTION\n");
        }

        else
        {
          if (v115 + v116 != v43)
          {
            goto LABEL_282;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v46 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\nADDITIONAL SECTION\n");
        }
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v46 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\nANSWER SECTION\n");
      }

      if (v46)
      {
        goto LABEL_647;
      }

LABEL_282:
      if (v134 == 41)
      {
        if (v123 && _NameIsPrivate(v138))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v53 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v53 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
        }

        if (v53)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v55 = "";
        if (v45)
        {
          v55 = " CF";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s OPT %u", v55, v133))
        {
          goto LABEL_647;
        }

        if (v135)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v56 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " 0x%08X");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v56 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " 0");
        }
      }

      else
      {
        if (v123)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v54 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~-42s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v54 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%-42s");
        }

        if (v54)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v57 = "";
        if (v45)
        {
          v57 = "CF";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %6u %2s", v135, v57))
        {
          goto LABEL_647;
        }

        v58 = "ANY";
        if (v133 != 255)
        {
          v58 = 0;
        }

        if (v133 == 1)
        {
          v59 = "IN";
        }

        else
        {
          v59 = v58;
        }

        if (v59)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v60 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v60 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
        }

        if (v60)
        {
          goto LABEL_647;
        }

        if (DNSRecordTypeValueToString(v134))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v56 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %-5s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v56 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u");
        }
      }

      v47 = v27;
      if (v56)
      {
        goto LABEL_647;
      }

      if ((a3 & 2) == 0)
      {
        goto LABEL_365;
      }

      goto LABEL_366;
    }

LABEL_404:
    if (v114 == 6)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "["))
      {
        goto LABEL_647;
      }

      v64 = v127;
      v122 = &a1[a2];
      if (v127 < &a1[a2])
      {
        if ((a3 >> 2))
        {
          v65 = "";
        }

        else
        {
          v65 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v66 = ", ";
        }

        else
        {
          v66 = ",\n\t";
        }

        v119 = v66;
        do
        {
          if (v64 < a1)
          {
            goto LABEL_647;
          }

          if (v122 - v64 < 4)
          {
            goto LABEL_647;
          }

          v67 = __rev16(*(v64 + 1));
          v68 = v64 + 4;
          if ((v122 - (v64 + 4)) < v67)
          {
            goto LABEL_647;
          }

          v69 = *v64;
          v70 = &v68[v67];
          v127 = &v68[v67];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s", v65))
          {
            goto LABEL_647;
          }

          v71 = __rev16(v69);
          if (v71 > 63)
          {
            if (v71 <= 65)
            {
              if (v71 == 64)
              {
                v72 = "SUBSCRIBE";
              }

              else
              {
                v72 = "PUSH";
              }

              goto LABEL_441;
            }

            if (v71 == 66)
            {
              v72 = "UNSUBSCRIBE";
              goto LABEL_441;
            }

            if (v71 == 67)
            {
              v72 = "RECONFIRM";
              goto LABEL_441;
            }
          }

          else if (v71 > 1)
          {
            if (v71 == 2)
            {
              v72 = "Retry Delay";
              goto LABEL_441;
            }

            if (v71 == 3)
            {
              v72 = "Encryption Padding";
              goto LABEL_441;
            }
          }

          else
          {
            v72 = "Reserved";
            if (!v71)
            {
              goto LABEL_441;
            }

            if (v71 == 1)
            {
              v72 = "KeepAlive";
LABEL_441:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_647;
              }

              v103 = v72;
              v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s: ");
              goto LABEL_445;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v103 = v71;
          v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "DSO-TYPE%u: ");
LABEL_445:
          if (v73)
          {
            goto LABEL_647;
          }

          v134 = 0;
          v135 = (v64 + 4);
          bzero(__src, 0x3F1uLL);
          if (v71 > 65)
          {
            if (v71 == 66)
            {
              if (v67 != 2)
              {
                goto LABEL_647;
              }

              v85 = *(v64 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%u", __rev16(v85));
                goto LABEL_578;
              }

              goto LABEL_631;
            }

            if (v71 != 67)
            {
LABEL_522:
              if (v123)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v103 = v67;
                  v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "[%u B]");
                  goto LABEL_578;
                }
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v105 = v67;
                  v107 = v67;
                  v103 = (v64 + 4);
                  v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "'%H'");
LABEL_578:
                  v92 = v82;
                  goto LABEL_626;
                }
              }

              goto LABEL_631;
            }

            v82 = DNSMessageExtractDomainNameString(a1, a2, v64 + 4, __src, &v135);
            if (v82)
            {
              goto LABEL_578;
            }

            v83 = v135;
            if (v70 - v135 >= 4)
            {
              v135 += 4;
              if (v123 && _NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = __src;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = __src;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
              }

              if (v82)
              {
                goto LABEL_578;
              }

              v86 = __rev16(*(v83 + 1));
              v87 = "ANY";
              if (v86 != 255)
              {
                v87 = 0;
              }

              if (v86 == 1)
              {
                v88 = "IN";
              }

              else
              {
                v88 = v87;
              }

              if (v88)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = v88;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = v86;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
              }

              if (v82)
              {
                goto LABEL_578;
              }

              v93 = __rev16(*v83);
              v94 = DNSRecordTypeValueToString(v93);
              if (v94)
              {
                v95 = v94;
                v96 = a2;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = v95;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
              }

              else
              {
                v96 = a2;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v103 = v93;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u");
              }

              if (v82)
              {
                goto LABEL_578;
              }

              v100 = v135;
              v101 = v70 - v135;
              DNSRecordDataToStringEx(v135, v70 - v135, v93, a1, v96, v123, &v134);
              if (v134)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s", v134);
                  if (v82)
                  {
                    goto LABEL_578;
                  }

                  if (v134)
                  {
                    free(v134);
                    v134 = 0;
                  }

LABEL_625:
                  v92 = 0;
                  goto LABEL_626;
                }
              }

              else if (v123)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v103 = v101;
                  v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " [%zu B]");
                  goto LABEL_624;
                }
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v105 = v101;
                  v107 = v101;
                  v103 = v100;
                  v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " '%H'");
                  goto LABEL_624;
                }
              }
            }
          }

          else if (v71 == 64)
          {
            v82 = DNSMessageExtractDomainNameString(a1, a2, v64 + 4, __src, &v135);
            if (v82)
            {
              goto LABEL_578;
            }

            v84 = v135;
            if (v70 - v135 != 4)
            {
              goto LABEL_631;
            }

            if (v123 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v103 = __src;
              v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v103 = __src;
              v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
            }

            if (v82)
            {
              goto LABEL_578;
            }

            v89 = __rev16(*(v84 + 1));
            v90 = "ANY";
            if (v89 != 255)
            {
              v90 = 0;
            }

            if (v89 == 1)
            {
              v91 = "IN";
            }

            else
            {
              v91 = v90;
            }

            if (v91)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v103 = v91;
              v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v103 = v89;
              v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
            }

            if (v82)
            {
              goto LABEL_578;
            }

            v97 = __rev16(*v84);
            v98 = DNSRecordTypeValueToString(v97);
            if (v98)
            {
              v99 = v98;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v103 = v99;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
                goto LABEL_624;
              }
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v103 = v97;
                v82 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u");
LABEL_624:
                if (v82)
                {
                  goto LABEL_578;
                }

                goto LABEL_625;
              }
            }
          }

          else
          {
            if (v71 != 65)
            {
              goto LABEL_522;
            }

            if (v70 <= v68)
            {
              goto LABEL_647;
            }

            while (1)
            {
              v132 = 0;
              v133 = 0;
              v130 = 0;
              v131 = 0;
              memset(v140, 0, sizeof(v140));
              if (_DNSMessageExtractRecordEx(a1, a2, v68, v140, &v130 + 1, &v130, &v131, &v133, &v132, 0, 0, 0, 0, &v135) || v135 > v70 || DomainNameToString(v140, 0, __src, 0))
              {
                break;
              }

              if (v123 && _NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = __src;
                v74 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = __src;
                v74 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
              }

              if (v74)
              {
                break;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " 0x%08X", v131))
              {
                break;
              }

              v75 = "ANY";
              if (v130 != 255)
              {
                v75 = 0;
              }

              if (v130 == 1)
              {
                v76 = "IN";
              }

              else
              {
                v76 = v75;
              }

              if (v76)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = v76;
                v77 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = v130;
                v77 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
              }

              if (v77)
              {
                break;
              }

              v78 = DNSRecordTypeValueToString(HIWORD(v130));
              if (v78)
              {
                v79 = v78;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = v79;
                v80 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v103 = HIWORD(v130);
                v80 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u");
              }

              if (v80)
              {
                break;
              }

              DNSRecordDataToStringEx(v133, v132, HIWORD(v130), a1, a2, v123, &v134);
              if (v134)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s", v134))
                {
                  break;
                }

                if (v134)
                {
                  free(v134);
                  v134 = 0;
                }
              }

              else
              {
                if (v123)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    break;
                  }

                  v103 = v132;
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " [%zu B]");
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    break;
                  }

                  v105 = v132;
                  v107 = v132;
                  v103 = v133;
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %#H");
                }

                if (v81)
                {
                  break;
                }
              }

              v68 = v135;
              if (v135 >= v70)
              {
                goto LABEL_625;
              }
            }
          }

LABEL_631:
          v92 = -6735;
LABEL_626:
          if (v134)
          {
            free(v134);
          }

          if (v92)
          {
            goto LABEL_647;
          }

          v64 = v127;
          v65 = v119;
        }

        while (v127 < v122);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_647;
      }

      if (((a3 >> 2) & 1) != 0 ? _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "]", v103, v105, v107, v108) : _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\n]", v103, v105, v107, v108))
      {
        goto LABEL_647;
      }
    }

LABEL_639:
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (_GetCUSymAddr_DataBuffer_Append_sAddr && !_GetCUSymAddr_DataBuffer_Append_sAddr(v128, "", 1))
    {
      if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
      }

      if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
      {
        _GetCUSymAddr_DataBuffer_Detach_sAddr(v128, a4, &v125);
      }
    }

    goto LABEL_647;
  }

  v20 = 0;
  v21 = 0;
  v118 = (v111 << 8) + v117;
  v22 = v137;
  v23 = a2;
  while (1)
  {
    LOWORD(__src[0]) = 0;
    LOWORD(v140[0]) = 0;
    if (DNSMessageExtractQuestion(a1, v23, v127, v22, __src, v140, &v127))
    {
      break;
    }

    v24 = SLOWORD(v140[0]) < 0;
    if (a3)
    {
      LOWORD(v140[0]) &= ~0x8000u;
    }

    v25 = a3 & v24;
    if ((a3 & 4) != 0)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s", v121))
      {
        break;
      }

      if (v21 && (DomainNameEqual(v22, v21) & 1) != 0)
      {
        v27 = v22;
        v22 = v21;
      }

      else
      {
        if (DomainNameToString(v22, 0, v138, 0))
        {
          break;
        }

        if (v123 && _NameIsPrivate(v138))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v32 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~s ");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v32 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s ");
        }

        if (v32)
        {
          break;
        }

        if (v22 == v137)
        {
          v27 = v136;
        }

        else
        {
          v27 = v137;
        }

        *v27 = 0;
      }

      v33 = "ANY";
      if (LOWORD(v140[0]) != 255)
      {
        v33 = 0;
      }

      if (LOWORD(v140[0]) == 1)
      {
        v34 = "IN";
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v35 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v35 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "CLASS%u");
      }

      if (v35)
      {
        break;
      }

      if (a3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v36 = "QM";
        if (v25)
        {
          v36 = "QU";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s", v36))
        {
          break;
        }
      }

      v37 = DNSRecordTypeValueToString(LOWORD(__src[0]));
      if (v37)
      {
        v38 = v37;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v103 = v38;
        v39 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s?");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v103 = LOWORD(__src[0]);
        v39 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u?");
      }

      if (v39)
      {
        break;
      }

      v21 = v22;
      v121 = ", ";
    }

    else
    {
      if (!v20)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "\nQUESTION SECTION\n"))
        {
          break;
        }
      }

      if (DomainNameToString(v22, 0, v138, 0))
      {
        break;
      }

      if (v123 && _NameIsPrivate(v138))
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v26 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%~-30s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v26 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, "%-30s");
      }

      if (v26)
      {
        break;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        break;
      }

      v28 = "QM";
      if (v25)
      {
        v28 = "QU";
      }

      if ((a3 & 1) == 0)
      {
        v28 = "";
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %2s", v28))
      {
        break;
      }

      v29 = "ANY";
      if (LOWORD(v140[0]) != 255)
      {
        v29 = 0;
      }

      if (LOWORD(v140[0]) == 1)
      {
        v30 = "IN";
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v31 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v31 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " CLASS%u");
      }

      if (v31)
      {
        break;
      }

      v40 = DNSRecordTypeValueToString(LOWORD(__src[0]));
      if (v40)
      {
        v41 = v40;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v103 = v41;
        v42 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " %-5s\n");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v103 = LOWORD(__src[0]);
        v42 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v128, " TYPE%u\n");
      }

      v27 = v22;
      if (v42)
      {
        break;
      }
    }

    ++v20;
    v22 = v27;
    v23 = a2;
    if (v118 == v20)
    {
      goto LABEL_200;
    }
  }

LABEL_647:
  if (v126)
  {
    free(v126);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v128);
  }
}

uint64_t _NameIsPrivate(const char *a1)
{
  result = strcasecmp(a1, ".");
  if (result)
  {
    return strcasecmp(a1, "ipv4only.arpa.") != 0;
  }

  return result;
}

uint64_t DNSRecordDataToStringEx(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_5688);
  }

  v102 = 0;
  *v103 = 0;
  memset(v101, 0, sizeof(v101));
  v100 = 0;
  memset(v106, 0, sizeof(v106));
  bzero(v105, 0x3F1uLL);
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_464;
  }

  v95 = a7;
  v13 = &a1[a2];
  _GetCUSymAddr_DataBuffer_Init_sAddr(v101, v106, 256, -1);
  CUSymAddr_DataBuffer_Append_sAddr = 4294960582;
  if (a3 <= 32)
  {
    if (a3 <= 12)
    {
      if (a3 > 4)
      {
        if (a3 == 5)
        {
          goto LABEL_84;
        }

        if (a3 != 6)
        {
          if (a3 != 12)
          {
            goto LABEL_442;
          }

LABEL_84:
          if (a4)
          {
            DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v105, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          else
          {
            DomainNameString = DomainNameToString(a1, &a1[a2], v105, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

LABEL_384:
          v83 = 0;
          goto LABEL_432;
        }

        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (*v103 >= v13)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendDomainNameStringEx(v101, 0, a6, v105);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, *v103, v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendDomainNameStringEx(v101, 0, a6, v105);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DomainNameToString(*v103, &a1[a2], v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        DomainNameString = _AppendDomainNameStringEx(v101, " ", a6, v105);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v82 = *v103;
        if (v13 - *v103 == 20)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          v93 = bswap32(v82[3]);
          v94 = bswap32(v82[4]);
          v91 = bswap32(v82[1]);
          v92 = bswap32(v82[2]);
          v89 = bswap32(*v82);
          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %u %u %u %u %u");
          goto LABEL_377;
        }

LABEL_467:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960554;
        goto LABEL_442;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_442;
        }

        goto LABEL_84;
      }

      if (a2 != 4)
      {
        goto LABEL_467;
      }

      DomainNameString = _AppendIPv4Address(v101, 0, a1, a6);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

LABEL_433:
      if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
      }

      if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v101, "", 1);
      if (!DomainNameString)
      {
        if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
        }

        if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
        {
          DomainNameString = _GetCUSymAddr_DataBuffer_Detach_sAddr(v101, v95, &v100);
          goto LABEL_441;
        }

LABEL_464:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
        goto LABEL_442;
      }

      goto LABEL_441;
    }

    if (a3 > 15)
    {
      if (a3 != 16)
      {
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_442;
          }

          if (a2 != 16)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendIPv6Address(v101, 0, a1, a6);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

LABEL_227:
        if (a2 < 5)
        {
          goto LABEL_467;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        *v103 = a1 + 4;
        v107[0] = 0;
        if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_5771);
        }

        if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v103, v13 - *v103, 0, v107, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_421;
        }

        goto LABEL_468;
      }

LABEL_240:
      if (a2)
      {
        if (a6)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "[%zu B]");
        }

        else if (a2 == 1)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%#H");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%#{txt}");
        }

LABEL_377:
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        goto LABEL_433;
      }

      goto LABEL_467;
    }

    if (a3 == 13)
    {
      goto LABEL_240;
    }

    if (a3 != 15)
    {
      goto LABEL_442;
    }

    if (a2 < 3)
    {
      goto LABEL_467;
    }

    v41 = *a1;
    v40 = (a1 + 2);
    v39 = v41;
    if (a4)
    {
      DomainNameString = DNSMessageExtractDomainNameString(a4, a5, v40, v105, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    else
    {
      DomainNameString = DomainNameToString(v40, v13, v105, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u", __rev16(v39));
    if (!DomainNameString)
    {
LABEL_431:
      v83 = " ";
LABEL_432:
      DomainNameString = _AppendDomainNameStringEx(v101, v83, a6, v105);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      goto LABEL_433;
    }

LABEL_441:
    CUSymAddr_DataBuffer_Append_sAddr = DomainNameString;
    goto LABEL_442;
  }

  if (a3 > 46)
  {
    if (a3 <= 63)
    {
      if (a3 == 47)
      {
        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v105, v103);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        if (*v103 < v13)
        {
          DomainNameString = _AppendDomainNameStringEx(v101, 0, a6, v105);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          v21 = *v103;
LABEL_371:
          DomainNameString = _DNSRecordDataAppendTypeBitMap(v101, v21, v13);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

        goto LABEL_467;
      }

      if (a3 == 48)
      {
        goto LABEL_227;
      }

      if (a3 != 50)
      {
        goto LABEL_442;
      }

      if (a2 < 5)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u %u %u", *a1, a1[1], __rev16(*(a1 + 1)));
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      *v103 = a1 + 4;
      if ((a2 - 4) < 1)
      {
        goto LABEL_467;
      }

      *v103 = a1 + 5;
      v16 = a1[4];
      if (a2 - 5 < v16)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %.4H", *v103, v16, v16);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v17 = (*v103 + v16);
      *v103 = v17;
      if ((v13 - v17) < 1)
      {
        goto LABEL_467;
      }

      v18 = v17 + 1;
      *v103 = v17 + 1;
      v19 = *v17;
      if (v13 - (v17 + 1) < v19)
      {
        goto LABEL_467;
      }

      if (*v17)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v18 = *v103;
      }

      v20 = &v18[v19];
      while (1)
      {
        v21 = *v103;
        v22 = &v20[-*v103];
        if (v20 == *v103)
        {
          goto LABEL_371;
        }

        v107[0] = 0;
        if (v22 > 2)
        {
          if (v22 == 4)
          {
            v27 = 0;
            goto LABEL_64;
          }

          if (v22 != 3)
          {
            goto LABEL_61;
          }

          v26 = *(*v103 + 2);
          v24 = (v26 << 16) | (*(*v103 + 1) << 24);
          v25 = v24 | (**v103 << 32);
          *v103 += 3;
          BYTE4(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[2 * (v26 & 0xF)];
          v23 = 5;
        }

        else
        {
          if (v22 == 1)
          {
            v28 = 0;
            v25 = **v103 << 32;
            ++*v103;
            goto LABEL_74;
          }

          if (v22 != 2)
          {
LABEL_61:
            v27 = *(*v103 + 4);
LABEL_64:
            v29 = *(*v103 + 3);
            v30 = v27 | (v29 << 8);
            v24 = (*(*v103 + 1) << 24) | (*(*v103 + 2) << 16) | v30;
            v25 = v24 | (**v103 << 32);
            if (v22 >= 5)
            {
              v31 = 5;
            }

            else
            {
              v31 = &v20[-*v103];
            }

            *v103 += v31;
            if (v22 == 4)
            {
              v23 = 7;
            }

            else
            {
              HIBYTE(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v27 & 0x1F];
              v23 = 8;
            }

            v32 = DNSRecordDataToStringEx_kBase32ExtendedHex[(v29 >> 2) & 0x1F];
            BYTE6(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v30 >> 5) & 0x1F];
            BYTE5(v107[0]) = v32;
            BYTE4(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 15) & 0x1F];
            goto LABEL_71;
          }

          v23 = 0;
          v24 = *(*v103 + 1) << 24;
          v25 = v24 | (**v103 << 32);
          *v103 += 2;
        }

LABEL_71:
        BYTE3(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 20) & 0x1F];
        BYTE2(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 25) & 0x1F];
        if (v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

LABEL_74:
        BYTE1(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v25 >> 30) & 0x1F];
        LOBYTE(v107[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v25 >> 35];
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_464;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 2;
        }

        CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v101, v107, v33);
        if (CUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_442;
        }
      }
    }

    if ((a3 - 64) >= 2)
    {
      goto LABEL_442;
    }

    if (v13 < a1)
    {
      goto LABEL_463;
    }

    if (a2 < 2)
    {
      goto LABEL_467;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u", __rev16(*a1));
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    bzero(v107, 0x3F1uLL);
    *v104 = a1 + 2;
    DomainNameString = DomainNameToString(a1 + 2, v13, v107, v104);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    DomainNameString = _AppendDomainNameStringEx(v101, " ", a6, v107);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    while (1)
    {
      v42 = *v104;
      if (*v104 >= v13)
      {
        goto LABEL_433;
      }

      if (v13 - *v104 < 4)
      {
        goto LABEL_462;
      }

      v43 = __rev16(**v104);
      v44 = *(*v104 + 2);
      v45 = _DNSSVCBKeyToString(v43);
      if (v45)
      {
        v46 = v45;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v88 = v46;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %s=");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v88 = v43;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " key%u=");
      }

      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v47 = __rev16(v44);
      v48 = v42 + 4;
      *v104 = v42 + 4;
      if (v13 - (v42 + 4) < v47)
      {
LABEL_462:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960546;
        goto LABEL_442;
      }

      if (v43 > 4)
      {
        if (v43 > 32766)
        {
          if (v43 != 0x7FFF)
          {
            if (v43 == 32769)
            {
LABEL_163:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v88 = *v104;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%.4H");
LABEL_218:
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            else
            {
LABEL_213:
              if (a6)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v88 = v47;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "<%u redacted bytes>");
                goto LABEL_218;
              }

              DomainNameString = _AppendEscapedASCIIString(v101, v42 + 4, &v48[v47], "");
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            *v104 += v47;
            goto LABEL_220;
          }

          v67 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v68 = 0;
            v69 = 1;
            do
            {
              if ((v69 & 1) == 0)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s", v68);
                if (DomainNameString)
                {
                  goto LABEL_441;
                }

                v48 = *v104;
              }

              v70 = *v48;
              if (v70 > 2)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v88 = v70;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "sla%u");
              }

              else
              {
                v71 = off_1001526F8[*v48];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v88 = v71;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s");
              }

              if (DomainNameString)
              {
                goto LABEL_441;
              }

              v69 = 0;
              v48 = (*v104 + 1);
              *v104 = v48;
              v68 = ",";
            }

            while (v48 < v67);
          }
        }

        else
        {
          if (v43 == 5)
          {
            goto LABEL_163;
          }

          if (v43 != 6)
          {
            goto LABEL_213;
          }

          if ((v47 & 0xF) != 0)
          {
            goto LABEL_467;
          }

          v55 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v56 = "";
            v57 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv6Address(v101, v56, v57, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v57 = *v104 + 16;
              *v104 = v57;
              if (v57 >= v55)
              {
                break;
              }

              v56 = ",";
            }
          }
        }
      }

      else if (v43 > 2)
      {
        if (v43 == 3)
        {
          if (v47 != 2)
          {
            goto LABEL_467;
          }

          v66 = *(v42 + 2);
          *v104 = &v48[v47];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u", __rev16(v66));
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          if ((v47 & 3) != 0)
          {
            goto LABEL_467;
          }

          v58 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v59 = "";
            v60 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv4Address(v101, v59, v60, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v60 = (*v104 + 4);
              *v104 = v60;
              if (v60 >= v58)
              {
                break;
              }

              v59 = ",";
            }
          }
        }
      }

      else if (v43)
      {
        if (v43 != 1)
        {
          goto LABEL_213;
        }

        v49 = 0;
        v50 = &v48[v47];
        v51 = 1;
        while (*v104 < v50)
        {
          v53 = (*v104 + 1);
          v52 = **v104;
          if (*v104 + 1 > v50)
          {
            goto LABEL_463;
          }

          if (v50 - v53 < v52)
          {
            goto LABEL_462;
          }

          v54 = &v53[v52];
          *v104 = &v53[v52];
          if ((v51 & 1) == 0)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s", v49);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v54 = *v104;
          }

          DomainNameString = _AppendEscapedASCIIString(v101, v53, v54, ",");
          v51 = 0;
          v49 = ",";
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_467;
        }

        v61 = &v48[v47];
        if (v48 < v61)
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = __rev16(*v48);
            *v104 = v48 + 2;
            v65 = _DNSSVCBKeyToString(v64);
            if ((v63 & 1) == 0)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s", v62);
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            if (v65)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v88 = v65;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v88 = v64;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "key%u");
            }

            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v63 = 0;
            v48 = *v104;
            v62 = ",";
          }

          while (*v104 < v61);
        }
      }

LABEL_220:
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "", v88);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }
  }

  if (a3 <= 40)
  {
    if (a3 == 33)
    {
      if (a2 < 7)
      {
        goto LABEL_467;
      }

      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1 + 6, v105, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1 + 6, &a1[a2], v105, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u %u %u ", __rev16(*a1), __rev16(*(a1 + 1)), __rev16(*(a1 + 2)));
      if (!DomainNameString)
      {
        goto LABEL_384;
      }

      goto LABEL_441;
    }

    if (a3 != 35)
    {
      goto LABEL_442;
    }

    v34 = 1;
    *v103 = a1;
    while (1)
    {
      v35 = v34;
      if (*v103 > v13)
      {
        goto LABEL_463;
      }

      if (v13 - *v103 < 2)
      {
        goto LABEL_462;
      }

      v36 = **v103;
      *v103 += 2;
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      v37 = __rev16(v36);
      if (v35)
      {
        v38 = "";
      }

      else
      {
        v38 = " ";
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s%u", v38, v37);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v34 = 0;
      if ((v35 & 1) == 0)
      {
        v85 = 3;
        while (*v103 <= v13)
        {
          if (v13 == *v103)
          {
            goto LABEL_462;
          }

          v87 = (*v103 + 1);
          v86 = **v103;
          if (*v103 + 1 > v13)
          {
            break;
          }

          if (v13 - v87 < v86)
          {
            goto LABEL_462;
          }

          *v103 = &v87[v86];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " ");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendEscapedASCIIString(v101, v87, *v103, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (!--v85)
          {
            DomainNameString = DomainNameToString(*v103, v13, v105, v103);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            goto LABEL_431;
          }
        }

        goto LABEL_463;
      }
    }
  }

  if (a3 == 41)
  {
    if (v13 >= a1)
    {
      v72 = "";
      while (1)
      {
        if (a1 >= v13)
        {
          goto LABEL_433;
        }

        if (v13 - a1 < 4)
        {
          goto LABEL_462;
        }

        v73 = a1 + 4;
        v74 = __rev16(*(a1 + 1));
        if (v13 - (a1 + 4) < v74)
        {
          goto LABEL_462;
        }

        v75 = *a1;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s{", v72);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v76 = __rev16(v75);
        if (v76 == 12)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "Padding");
        }

        else if (v76 == 15)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "EDE");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "CODE%u");
        }

        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, ", ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v77 = &v73[v74];
        if (v76 != 15 || !v74)
        {
          break;
        }

        if (v74 < 2)
        {
          goto LABEL_462;
        }

        v78 = *(a1 + 2);
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v79 = __rev16(v78);
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "code: %u", v79);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v80 = (v77 - (a1 + 6));
        if (v80 | v79)
        {
          if (v79 <= 0x18)
          {
            v81 = off_100152710[v79];
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " (%s)", v81);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          if (v80)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, ", extra-text: ");
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            if (a6)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "«REDACTED»");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "'%.*s'");
            }

LABEL_333:
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "}");
        a1 = v77;
        v72 = ", ";
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      if (a6)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "[%u B]");
      }

      else if (v76 == 12 && v74 && !*v73 && !memcmp(a1 + 4, a1 + 5, v74 - 1))
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "<%u zero bytes>");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "'%H'");
      }

      goto LABEL_333;
    }

LABEL_463:
    CUSymAddr_DataBuffer_Append_sAddr = 4294960586;
    goto LABEL_442;
  }

  if (a3 == 43)
  {
    if (a2 >= 4)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      if (a2 != 4)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %.4H", a1 + 4, a2 - 4, a2 - 4);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      goto LABEL_433;
    }

    goto LABEL_467;
  }

  if (a3 != 46)
  {
    goto LABEL_442;
  }

  v104[0] = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  if (a2 < 0x13)
  {
    goto LABEL_467;
  }

  if (DNSRecordTypeValueToString(__rev16(*a1)))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "%s");
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    v90 = __rev16(*a1);
    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, "TYPE%u");
  }

  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %u %u %u", a1[2], a1[3], bswap32(*(a1 + 1)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v104[0] = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 2)) + 0xE77934880, v104, &v99 + 4, &v99, &v98 + 4, &v98, &v97);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %u%02u%02u%02u%02u%02u", v104[0], HIDWORD(v99), v99, HIDWORD(v98), v98, v97);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 3)) + 0xE77934880, v104, &v99 + 4, &v99, &v98 + 4, &v98, &v97);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %u%02u%02u%02u%02u%02u", v104[0], HIDWORD(v99), v99, HIDWORD(v98), v98, v97);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %u", __rev16(*(a1 + 8)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  *v103 = a1 + 18;
  DomainNameString = DomainNameToString(a1 + 18, v13, v105, v103);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  DomainNameString = _AppendDomainNameStringEx(v101, " ", a6, v105);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v107[0] = 0;
  if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_5771);
  }

  if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v103, v13 - *v103, 0, v107, 0);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
LABEL_421:
    CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v101, " %s", v107[0]);
    goto LABEL_422;
  }

LABEL_468:
  CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
LABEL_422:
  if (v107[0])
  {
    free(v107[0]);
  }

  if (!CUSymAddr_DataBuffer_Append_sAddr)
  {
    goto LABEL_433;
  }

LABEL_442:
  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v101);
  }

  return CUSymAddr_DataBuffer_Append_sAddr;
}

uint64_t _AppendIPv4Address(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4)
  {
    v4 = bswap32(*a3);
    if (v4)
    {
      v5 = v4 == 2130706433;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 4, v6);
}

uint64_t _AppendIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (*a3 | *(a3 + 7))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a3 + 15) > 1u;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 16, v5);
}

uint64_t _AppendDomainNameStringEx(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  if (a3 && _NameIsPrivate(a4))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%~s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  return 4294960561;
}

uint64_t _DNSRecordDataAppendTypeBitMap(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 - a2 >= 1)
  {
    while (2)
    {
      if (v3 < 3)
      {
        return 4294960554;
      }

      v5 = a2[1];
      if ((v5 - 33) < 0xFFFFFFE0)
      {
        return 4294960554;
      }

      v6 = a2 + 2;
      if (a3 - (a2 + 2) < v5)
      {
        return 4294960554;
      }

      v13 = a3 - (a2 + 2);
      v14 = a2[1];
      v7 = 0;
      v8 = 8 * v5;
      v9 = *a2 << 8;
      v10 = 1;
      while (1)
      {
        if ((v6[v7 >> 3] >> (~v7 & 7)))
        {
          *__str = 0u;
          v17 = 0u;
          v11 = DNSRecordTypeValueToString(v9 + v7);
          if (!v11)
          {
            v11 = __str;
            snprintf(__str, 0x20uLL, "TYPE%d", v9 + v7);
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            return 4294960561;
          }

          result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, " %s", v11);
          if (result)
          {
            break;
          }
        }

        v10 = ++v7 < v8;
        if (v8 == v7)
        {
          v6 += v14;
          v3 = a3 - v6;
          goto LABEL_16;
        }
      }

      v3 = v13;
      if (v10)
      {
        return result;
      }

LABEL_16:
      a2 = v6;
      if (v3 > 0)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

const char *_DNSSVCBKeyToString(int a1)
{
  if (a1 > 4)
  {
    if (a1 > 32766)
    {
      switch(a1)
      {
        case 32767:
          return "sla";
        case 32768:
          return "dohuri";
        case 32769:
          return "odohconfig";
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          return "echconfig";
        case 6:
          return "ipv6hint";
        case 7:
          return "dohpath";
      }
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "mandatory";
    }

    if (a1 == 1)
    {
      return "alpn";
    }

    return 0;
  }

  if (a1 == 2)
  {
    return "no-default-alpn";
  }

  if (a1 == 3)
  {
    return "port";
  }

  return "ipv4hint";
}

uint64_t _AppendEscapedASCIIString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *__s)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v6 = a2;
  while (v6 < a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = v6[v8];
      if (v9 == 92 || (v9 - 127) < 0xFFFFFFA1 || __s && strchr(__s, v9))
      {
        break;
      }

      if (a3 - v6 == ++v8)
      {
        v8 = a3 - v6;
        break;
      }
    }

    if (!v8)
    {
      break;
    }

    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_Append_sAddr(a1, v6, v8);
    if (result)
    {
      return result;
    }

    v6 += v8;
LABEL_27:
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v11 = *v6++;
  if ((v11 - 32) <= 0x5E)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%c");
    goto LABEL_26;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%03d");
LABEL_26:
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  return 4294960561;
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4 != 16 && a4 != 4)
  {
    return 4294960553;
  }

  if (!a5)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%.*a");
    }

    return 4294960561;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    return 4294960561;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v9, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%~s");
    }

    return 4294960561;
  }

  return result;
}

uint64_t DNSMessagePrintObfuscatedString(uint64_t a1, const char *a2)
{
  if (_NameIsPrivate(a2))
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      v3 = "%~s";
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, v3);
    }
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      v3 = "%s";
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, v3);
    }
  }

  return 4294960561;
}

uint64_t _DNSMessagePrintObfuscatedIPAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 16 && a3 != 4)
  {
    return 4294960553;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    return 4294960561;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  result = _GetCUSymAddr_SNPrintF_sAddr(v7, 33, "%.4H", a2, a3, a3);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, "%~s", v7);
    }

    return 4294960561;
  }

  return result;
}