void PrintOneCacheRecordToFD(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v7 = *(a2 + 64);
  for (i = 64; ; i = v14 + 1)
  {
    v9 = malloc_type_calloc(1uLL, i, 0xF405D1F4uLL);
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    if (!v7)
    {
LABEL_13:
      *v10 = 0;
      goto LABEL_15;
    }

    v11 = *(v7 + 32);
    if (v11 == 1)
    {
      *(v7 + 40);
      *(v7 + 44);
      v13 = snprintf(v9, i, "  validated, %s%s");
      goto LABEL_10;
    }

    if (v11)
    {
      break;
    }

    if (*(v7 + 40) == 1)
    {
      v12 = *(v7 + 24);
      *(v7 + 36);
      v13 = snprintf(v9, i, "to validate, positive, %-4zu%s");
    }

    else
    {
      *(v7 + 48);
      v13 = snprintf(v9, i, "to validate, negative, 1   %s");
    }

LABEL_10:
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if (i > v13)
    {
      goto LABEL_15;
    }

    v14 = v13;
    free(v10);
  }

  free(v9);
  v10 = 0;
LABEL_15:
  v15 = *(a2 + 129);
  *(a2 + 96);
  *(a2 + 8);
  DNSTypeName(*(a2 + 12));
  if (v15 != 1)
  {
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), word_1001789D0);
  }

  LogToFD(a1, "%3d %s%8d %-7s%s %-6s   %-40s%s", v16, v17, v18, v19, v20, v21, a3);
  ++*a6;
  if (v10)
  {

    free(v10);
  }
}

uint64_t LogAuthRecordsToFD(uint64_t result, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  memset(v31, 0, 20);
  if (!a3)
  {
    return LogToFD(v8, "<None>", a3, a4, a5, a6, a7, a8, v30);
  }

  v10 = a3;
  v12 = 1;
  do
  {
    v13 = &xmmword_100170388;
    do
    {
      v13 = *v13;
    }

    while (v13 && *(v13 + 444) != *(v10 + 32));
    if ((a4 != 0) != (*(v10 + 126) == 0))
    {
      if (v12)
      {
        LogToFD(v8, "Time Registered                  Int    Next  Expire if     State", a3, a4, a5, a6, a7, a8, v30);
      }

      if (a4)
      {
        ++*a4;
      }

      if (*&v31[0] != *(v10 + 124) || *(&v31[0] + 1) != *(v10 + 132) || LODWORD(v31[1]) != *(v10 + 140))
      {
        v31[0] = *(v10 + 124);
        LODWORD(v31[1]) = *(v10 + 140);
        if (*(v31 + 14))
        {
          LogToFD(v8, "Proxying for H-MAC %.6a I-MAC %.6a Password %.6a seq %d", a3, a4, a5, a6, a7, a8, v31 + 2);
        }

        else if (WORD1(v31[0]) == WORD4(v31[0]) && WORD2(v31[0]) == WORD5(v31[0]) && WORD3(v31[0]) == WORD6(v31[0]))
        {
          LogToFD(v8, "Proxying for %.6a seq %d", a3, a4, a5, a6, a7, a8, v31 + 2);
        }

        else
        {
          LogToFD(v8, "Proxying for H-MAC %.6a I-MAC %.6a seq %d", a3, a4, a5, a6, a7, a8, v31 + 2);
        }
      }

      if (!*(v10 + 32) && !*(v10 + 122) && !IsLocalDomain(*(v10 + 40)))
      {
        goto LABEL_31;
      }

      v16 = *(v10 + 172);
      if (v16 == 5)
      {
        v23 = *(v10 + 32);
        GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), word_1001789D0);
        if (v23 == -5)
        {
          result = LogToFD(v8, "                             BLE %s", v24, v25, v26, v27, v28, v29, word_1001789D0);
        }

        else
        {
          result = LogToFD(v8, "                             PP %s", v24, v25, v26, v27, v28, v29, word_1001789D0);
        }

        goto LABEL_35;
      }

      if (v16 == 4)
      {
        GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), word_1001789D0);
        result = LogToFD(v8, "                             LO %s", v17, v18, v19, v20, v21, v22, word_1001789D0);
      }

      else
      {
LABEL_31:
        result = LogOneAuthRecordToFD(v8, v10, a2);
      }

LABEL_35:
      v12 = 0;
    }

    v10 = *v10;
  }

  while (v10);
  if (v12)
  {
    return LogToFD(v8, "<None>", a3, a4, a5, a6, a7, a8, v30);
  }

  return result;
}

const char *RecordTypeName(int a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return "Unregistered ";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "Unique       ";
      }

      return "Unknown";
    }

    return "Deregistering";
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return "KnownUnique  ";
      }

      return "Unknown";
    }

    return "Verified     ";
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return "Shared       ";
      }

      return "Unknown";
    }

    return "Advisory     ";
  }
}

uint64_t LogClientInfoToFD(uint64_t a1, uint64_t a2)
{
  *(v85 + 6) = 0;
  v85[0] = 0;
  v83[0] = 0;
  v83[1] = 0;
  v84 = 0;
  v50 = *(a2 + 200);
  mDNS_snprintf(v85);
  *(a2 + 24);
  result = mDNS_snprintf(v83);
  v11 = *(a2 + 112);
  if (!v11)
  {
    return LogToFD(a1, "%s No operation yet on this socket", v5, v6, v7, v8, v9, v10, v83);
  }

  if (v11 == connection_termination)
  {
    v12 = *(a2 + 176);
    if (v12)
    {
      v13 = 0;
      do
      {
        ++v13;
        v12 = *(v12 + 8);
      }

      while (v12);
    }

    v20 = *(a2 + 16);
    if (v20)
    {
      v21 = 0;
      do
      {
        v22 = v20 + 16;
        v20 = *(v20 + 16);
        if (*(v22 + 8) == a2)
        {
          ++v21;
        }
      }

      while (v20);
    }

    v73 = *(a2 + 188);
    result = LogToFD(a1, "%s DNSServiceCreateConnection: %d registered record%s, %d kDNSServiceFlagsShareConnection operation%s PID[%d](%s)", v5, v6, v7, v8, v9, v10, v83);
    for (i = *(a2 + 176); i; i = *(i + 8))
    {
      v24 = *(a2 + 248);
      v25 = *(a2 + 252);
      v26 = *(i + 56);
      GetRRDisplayString_rdb((*(i + 24) + 8), (*(*(i + 24) + 48) + 4), word_1001789D0);
      v69 = *(a2 + 188);
      result = LogToFD(a1, " ->  DNSServiceRegisterRecord   0x%08X %2d %3d %s PID[%d](%s)", v27, v28, v29, v30, v31, v32, v24);
    }

    for (j = *(a2 + 16); j; j = *(j + 16))
    {
      if (*(j + 24) == a2)
      {
        result = LogClientInfoToFD(a1, j);
      }
    }
  }

  else if (v11 == regservice_termination_callback)
  {
    v14 = *(a2 + 128);
    for (k = *(v14 + 1624); k; k = *k)
    {
      if (k == *(v14 + 1624))
      {
        v16 = v83;
      }

      else
      {
        v16 = "";
      }

      v76 = *(a2 + 188);
      v58 = *(a2 + 252);
      v64 = k[342];
      v52 = *(a2 + 248);
      v67 = bswap32(*(v14 + 24)) >> 16;
      v72 = bswap32(*(k[343] + 8)) >> 16;
      result = LogToFD(a1, "%-9s DNSServiceRegister         0x%08X %2d %##s %u/%u PID[%d](%s)", v5, v6, v7, v8, v9, v10, v16);
    }
  }

  else if (v11 == browse_termination_callback)
  {
    v17 = *(a2 + 152);
    for (m = *(v17 + 272); m; m = *m)
    {
      if (m == *(v17 + 272))
      {
        v19 = v83;
      }

      else
      {
        v19 = "";
      }

      v68 = *(a2 + 188);
      v59 = *(a2 + 252);
      v53 = *(a2 + 248);
      result = LogToFD(a1, "%-9s DNSServiceBrowse           0x%08X %2d %##s PID[%d](%s)", v5, v6, v7, v8, v9, v10, v19);
    }
  }

  else if (v11 == resolve_termination_callback)
  {
    v70 = *(a2 + 188);
    v60 = *(a2 + 252);
    v65 = *(a2 + 136) + 1072;
    v54 = *(a2 + 248);
    return LogToFD(a1, "%s DNSServiceResolve          0x%08X %2d %##s PID[%d](%s)", v5, v6, v7, v8, v9, v10, v83);
  }

  else if (v11 == queryrecord_termination_callback)
  {
    v34 = *(a2 + 144);
    *(v34 + 690);
    v35 = *(a2 + 248);
    v36 = *(a2 + 252);
    DNSTypeName(*(v34 + 342));
    v74 = *(a2 + 188);
    return LogToFD(a1, "%s DNSServiceQueryRecord      0x%08X %2d %##s (%s) PID[%d](%s)", v37, v38, v39, v40, v41, v42, v83);
  }

  else if (v11 == enum_termination_callback)
  {
    v71 = *(a2 + 188);
    v61 = *(a2 + 252);
    v66 = *(a2 + 120) + 384;
    v55 = *(a2 + 248);
    return LogToFD(a1, "%s DNSServiceEnumerateDomains 0x%08X %2d %##s PID[%d](%s)", v5, v6, v7, v8, v9, v10, v83);
  }

  else if (v11 == port_mapping_termination_callback)
  {
    v43 = *(a2 + 160);
    *(v43 + 180);
    *(v43 + 180);
    v82 = *(a2 + 188);
    v80 = *(v43 + 47);
    v81 = *(v43 + 43);
    v62 = *(a2 + 252);
    v56 = *(a2 + 248);
    v79 = bswap32(v43[84]) >> 16;
    v75 = bswap32(v43[91]) >> 16;
    v77 = bswap32(*v43) >> 16;
    return LogToFD(a1, "%s DNSServiceNATPortMapping   0x%08X %2d %s%s Int %5d Req %5d Ext %.4a:%5d Req TTL %5d Granted TTL %5d PID[%d](%s)", v5, v6, v7, v8, v9, v10, v83);
  }

  else if (v11 == addrinfo_termination_callback)
  {
    v44 = *(a2 + 168);
    v45 = *(v44 + 16);
    v46 = v45;
    v47 = (v45 || (v46 = *(v44 + 24)) != 0) && *(v46 + 690) == 1;
    v48 = *(v44 + 8);
    if (!v47 && !v45)
    {
      v49 = *(v44 + 24);
    }

    v78 = *(a2 + 188);
    v63 = *(a2 + 252);
    v57 = *(a2 + 248);
    return LogToFD(a1, "%s DNSServiceGetAddrInfo      0x%08X %2d %s%s %##s PID[%d](%s)", v5, v6, v7, v8, v9, v10, v83);
  }

  else
  {
    v51 = *(a2 + 112);
    return LogToFD(a1, "%s Unrecognized operation %p", v5, v6, v7, v8, v9, v10, v83);
  }

  return result;
}

uint64_t LogOneAuthRecordToFD(int a1, uint64_t a2, int a3)
{
  memset(v32, 0, sizeof(v32));
  v6 = *(a2 + 648);
  v29 = 0;
  v30 = 0;
  v31.tv_sec = 0;
  *&v31.tv_usec = 0;
  gettimeofday(&v31, 0);
  v7 = v6 - a3;
  if (v6 - a3 < 1)
  {
    v11 = 274877907000000 * ((a3 - v6) % 1000);
    LODWORD(v11) = (v11 >> 38) + (v11 >> 63);
    v13 = v31.tv_usec - v11;
    v12 = v31.tv_usec < v11;
    v14 = v31.tv_usec < v11;
    if (v12)
    {
      v15 = 1000000;
    }

    else
    {
      v15 = 0;
    }

    v9 = v31.tv_sec - (a3 - v6) / 1000 - v14;
    v10 = v13 + v15;
  }

  else
  {
    v8 = v31.tv_usec + (1000000 * (v7 % 0x3E8)) / 1000;
    v9 = v31.tv_sec + v7 / 0x3E8uLL + v8 / 1000000;
    v10 = v8 % 1000000;
  }

  v29 = v9;
  LODWORD(v30) = v10;
  getLocalTimestampFromTimeval(&v29, v32);
  if (*(a2 + 32) || *(a2 + 122) || IsLocalDomain(*(a2 + 40)))
  {
    if (*(a2 + 191))
    {
      v16 = 274877907 * (*(a2 + 280) - a3 + *(a2 + 284));
    }

    v17 = *(a2 + 168);
    v18 = *(a2 + 8);
    *(a2 + 121);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), word_1001789D0);
    v25 = "%s %7d %7d %7d %-7s 0x%02X %s %s";
  }

  else
  {
    v27 = 274877907 * (*(a2 + 280) - a3 + *(a2 + 284));
    *(a2 + 352);
    *(a2 + 121);
    v28 = *(a2 + 344);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), word_1001789D0);
    v25 = "%s %7d %7d %7d %-7s %4d %s %s";
  }

  return LogToFD(a1, v25, v19, v20, v21, v22, v23, v24, v32);
}

void LogClientInfo(uint64_t a1)
{
  *(v76 + 6) = 0;
  v76[0] = 0;
  v74[0] = 0;
  v74[1] = 0;
  v75 = 0;
  v44 = *(a1 + 200);
  mDNS_snprintf(v76);
  *(a1 + 24);
  mDNS_snprintf(v74);
  v7 = *(a1 + 112);
  if (v7)
  {
    if (v7 == connection_termination)
    {
      v8 = *(a1 + 176);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = v16 + 16;
          v16 = *(v16 + 16);
          if (*(v18 + 8) == a1)
          {
            ++v17;
          }
        }

        while (v16);
      }

      v64 = *(a1 + 188);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s DNSServiceCreateConnection: %d registered record%s, %d kDNSServiceFlagsShareConnection operation%s PID[%d](%s)", v2, v3, v4, v5, v6, v74);
      for (i = *(a1 + 176); i; i = *(i + 8))
      {
        v20 = mDNSLogCategory_Default;
        v21 = *(a1 + 248);
        v22 = *(a1 + 252);
        v23 = *(i + 56);
        GetRRDisplayString_rdb((*(i + 24) + 8), (*(*(i + 24) + 48) + 4), word_1001789D0);
        v60 = *(a1 + 188);
        LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, " ->  DNSServiceRegisterRecord   0x%08X %2d %3d %s PID[%d](%s)", v24, v25, v26, v27, v28, v21);
      }

      for (j = *(a1 + 16); j; j = *(j + 16))
      {
        if (*(j + 24) == a1)
        {
          LogClientInfo(j);
        }
      }
    }

    else if (v7 == regservice_termination_callback)
    {
      v10 = *(a1 + 128);
      for (k = *(v10 + 1624); k; k = *k)
      {
        if (k == *(v10 + 1624))
        {
          v12 = v74;
        }

        else
        {
          v12 = "";
        }

        v67 = *(a1 + 188);
        v50 = *(a1 + 252);
        v55 = k[342];
        v45 = *(a1 + 248);
        v58 = bswap32(*(v10 + 24)) >> 16;
        v63 = bswap32(*(k[343] + 8)) >> 16;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%-9s DNSServiceRegister         0x%08X %2d %##s %u/%u PID[%d](%s)", v2, v3, v4, v5, v6, v12);
      }
    }

    else if (v7 == browse_termination_callback)
    {
      v13 = *(a1 + 152);
      for (m = *(v13 + 272); m; m = *m)
      {
        if (m == *(v13 + 272))
        {
          v15 = v74;
        }

        else
        {
          v15 = "";
        }

        v59 = *(a1 + 188);
        v51 = *(a1 + 252);
        v46 = *(a1 + 248);
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%-9s DNSServiceBrowse           0x%08X %2d %##s PID[%d](%s)", v2, v3, v4, v5, v6, v15);
      }
    }

    else if (v7 == resolve_termination_callback)
    {
      v61 = *(a1 + 188);
      v52 = *(a1 + 252);
      v56 = *(a1 + 136) + 1072;
      v47 = *(a1 + 248);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s DNSServiceResolve          0x%08X %2d %##s PID[%d](%s)", v2, v3, v4, v5, v6, v74);
    }

    else if (v7 == queryrecord_termination_callback)
    {
      v30 = mDNSLogCategory_Default;
      v31 = *(a1 + 248);
      v32 = *(a1 + 252);
      DNSTypeName(*(*(a1 + 144) + 342));
      v65 = *(a1 + 188);
      LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, "%s DNSServiceQueryRecord      0x%08X %2d %##s (%s) PID[%d](%s)", v33, v34, v35, v36, v37, v74);
    }

    else if (v7 == enum_termination_callback)
    {
      v62 = *(a1 + 188);
      v53 = *(a1 + 252);
      v57 = *(a1 + 120) + 384;
      v48 = *(a1 + 248);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s DNSServiceEnumerateDomains 0x%08X %2d %##s PID[%d](%s)", v2, v3, v4, v5, v6, v74);
    }

    else if (v7 == port_mapping_termination_callback)
    {
      v38 = *(a1 + 160);
      *(v38 + 180);
      *(v38 + 180);
      v73 = *(a1 + 188);
      v71 = *(v38 + 47);
      v72 = *(v38 + 43);
      v54 = *(a1 + 252);
      v49 = *(a1 + 248);
      v70 = bswap32(v38[84]) >> 16;
      v66 = bswap32(v38[91]) >> 16;
      v68 = bswap32(*v38) >> 16;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s DNSServiceNATPortMapping   0x%08X %2d %s%s Int %5d Req %5d Ext %.4a:%5d Req TTL %5d Granted TTL %5d PID[%d](%s)", v2, v3, v4, v5, v6, v74);
    }

    else if (v7 == addrinfo_termination_callback)
    {
      v39 = *(a1 + 168);
      v40 = *(a1 + 248);
      v41 = *(a1 + 252);
      v42 = *(v39 + 8);
      if (!*(v39 + 16))
      {
        v43 = *(v39 + 24);
      }

      v69 = *(a1 + 188);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s DNSServiceGetAddrInfo      0x%08X %2d %s%s %##s PID[%d](%s)", v2, v3, v4, v5, v6, v74);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s Unrecognized operation %p", v2, v3, v4, v5, v6, v74);
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s No operation yet on this socket", v2, v3, v4, v5, v6, v74);
  }
}

void _Querier_DNSServiceRegistrationStopHandler(uint64_t a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (DNSServiceManager)
  {
    mdns_dns_service_manager_deregister_native_service(DNSServiceManager, a1);
  }

  v11 = Querier_GetDNSServiceManager();
  if (v11)
  {
    mdns_dns_service_manager_deregister_custom_push_service(v11, a1);
  }

  KQueueUnlock("DNS service registration stop handler", v12, v13, v14, v15, v16, v17, v18);
}

uint64_t Querier_GetDNSServiceManager()
{
  if (_Querier_EnsureNEDNSProxyStateWatchHasStarted_sOnce != -1)
  {
    dispatch_once(&_Querier_EnsureNEDNSProxyStateWatchHasStarted_sOnce, &__block_literal_global_36);
  }

  v0 = Querier_GetDNSServiceManager_sDNSServiceManager;
  if (!Querier_GetDNSServiceManager_sDNSServiceManager)
  {
    if (_Querier_InternalQueue_sOnce != -1)
    {
      dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
    }

    v1 = _Querier_InternalQueue_sQueue;
    v2 = _os_object_alloc();
    v0 = v2;
    if (v2)
    {
      v3 = &_mdns_dns_service_manager_kind;
      *(v2 + 16) = &_mdns_dns_service_manager_kind;
      do
      {
        v4 = v3[2];
        if (v4)
        {
          v4(v0);
        }

        v3 = *v3;
      }

      while (v3);
      if (_mdns_dns_service_manager_enumerate_all_service_array_pointers(v0, &__block_literal_global_833) && (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (*(v0 + 80) = Mutable) != 0))
      {
        *(v0 + 88) = v1;
        dispatch_retain(v1);
        if ((*(v0 + 132) & 1) == 0)
        {
          *(v0 + 128) = 257;
          *(v0 + 120) = PQWorkaroundThreshold;
        }

        if (os_variant_has_internal_diagnostics())
        {
          TypeID = CFNumberGetTypeID();
          v7 = CFPreferencesCopyAppValue(@"DDRRetryIntervalSecs", @"com.apple.mDNSResponder");
          if (v7)
          {
            v8 = v7;
            if (CFGetTypeID(v7) == TypeID)
            {
              if (CFNumberIsFloatType(v8))
              {
                v11 = 0;
                v10 = 1;
              }

              else
              {
                valuePtr[0] = 0;
                Value = CFNumberGetValue(v8, kCFNumberLongLongType, valuePtr);
                v10 = Value == 0;
                if (Value)
                {
                  v11 = valuePtr[0];
                }

                else
                {
                  v11 = 0;
                }
              }

              CFRelease(v8);
              if (v11 >= 0xFFFFFFFFLL)
              {
                v12 = 0xFFFFFFFFLL;
              }

              else
              {
                v12 = v11;
              }

              if (!v10 && v11 >= 1 && (*(v0 + 132) & 1) == 0)
              {
                if (_mdns_os_variant_has_internal_diagnostics_s_once != -1)
                {
                  dispatch_once(&_mdns_os_variant_has_internal_diagnostics_s_once, &__block_literal_global_253);
                }

                if (_mdns_os_variant_has_internal_diagnostics_s_result == 1)
                {
                  *(v0 + 124) = v12 & ~(v12 >> 63);
                }
              }
            }

            else
            {
              CFRelease(v8);
            }
          }
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 0x40000000;
        v16[2] = __Querier_GetDNSServiceManager_block_invoke;
        v16[3] = &__block_descriptor_tmp_3193;
        v16[4] = v0;
        if ((*(v0 + 132) & 1) == 0)
        {
          v13 = _Block_copy(v16);
          v14 = *(v0 + 104);
          if (v14)
          {
            _Block_release(v14);
          }

          *(v0 + 104) = v13;
        }

        Querier_GetDNSServiceManager_sDNSServiceManager = v0;
        os_retain(v0);
        v0 = Querier_GetDNSServiceManager_sDNSServiceManager;
        if ((*(Querier_GetDNSServiceManager_sDNSServiceManager + 132) & 1) == 0)
        {
          *(Querier_GetDNSServiceManager_sDNSServiceManager + 132) = 1;
          if (_mdns_dns_service_queue_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
          }

          valuePtr[0] = _NSConcreteStackBlock;
          valuePtr[1] = 0x40000000;
          valuePtr[2] = __mdns_dns_service_manager_activate_block_invoke;
          valuePtr[3] = &__block_descriptor_tmp_4;
          valuePtr[4] = v0;
          dispatch_sync(_mdns_dns_service_queue_s_queue, valuePtr);
          return Querier_GetDNSServiceManager_sDNSServiceManager;
        }
      }

      else
      {
        os_release(v0);
        return 0;
      }
    }
  }

  return v0;
}

uint64_t Querier_ProcessDNSServiceChanges(uint64_t result)
{
  v1 = result;
  v2 = *(&xmmword_10016D2D4 + 4);
  if (*(&xmmword_10016D2D4 + 4))
  {
    v3 = 0;
    v4 = *(&xmmword_10016D2D4 + 4);
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
    qword_10016D300 = *(&xmmword_10016D2D4 + 4);
    if (v3)
    {
      v5 = 1;
      while (1)
      {
        v6 = *(v2 + 340);
        if (v6)
        {
          if (!v1 || *(v2 + 184))
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = DNSQuestionIsEligibleForMDNSAlternativeService(v2);
          if (result)
          {
            result = Querier_IsMDNSAlternativeServiceAvailableForQuestion(v2);
            if (result)
            {
              *(v2 + 340) = mDNS_NewMessageID(mDNSStorage);
LABEL_13:
              v7 = _Querier_ExcludeEncryptedDNSServices(v2);
              result = _Querier_GetDNSService(v2, v7);
              v8 = result;
              v9 = *(v2 + 80);
              if (v9 == result)
              {
                if (result && *(v9 + 280) == 4)
                {
                  mDNSPlatformGetDNSRoutePolicy(v2);
                  result = _Querier_GetDNSService(v2, v7);
                  v8 = result;
                  v10 = 0;
                  v9 = *(v2 + 80);
                  goto LABEL_16;
                }

                v10 = 0;
              }

              else
              {
                v10 = !*(v2 + 136) && (!result || *(result + 280) == 1 && *(result + 281) - 2 >= 4 && (*(result + 276) & 0x200) == 0);
LABEL_16:
                if (v9 != v8)
                {
                  *(v2 + 340) = v6;
                  v11 = *(v2 + 354);
LABEL_23:
                  if (!v11)
                  {
                    result = CacheRecordRmvEventsForQuestion(v2);
                    if (qword_10016D300 == v2)
                    {
                      result = LocalRecordRmvEventsForQuestion(v2);
                    }
                  }

                  if (qword_10016D300 == v2)
                  {
                    mDNS_StopQuery_internal(mDNSStorage, v2);
                    *(v2 + 642) = v10;
                    *(v2 + 8) = 0;
                    result = mDNS_StartQuery_internal(mDNSStorage, v2);
                  }

LABEL_28:
                  v13 = qword_10016D300;
                  if (qword_10016D300 != v2)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }
              }

              result = DetermineUnicastQuerySuppression(v2, v8);
              v11 = *(v2 + 354);
              v12 = *(v2 + 354) == 0;
              *(v2 + 340) = v6;
              if ((((result != 0) ^ v12) & 1) == 0)
              {
                goto LABEL_23;
              }

              goto LABEL_28;
            }
          }
        }

LABEL_29:
        v13 = *(v2 + 8);
        qword_10016D300 = v13;
LABEL_30:
        if (v5 < v3)
        {
          ++v5;
          v2 = v13;
          if (v13)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  qword_10016D300 = 0;
  if (!v1)
  {
    v14 = 0;
    while (1)
    {
      v15 = mDNSStorage[v14 + 34];
      if (v15)
      {
        break;
      }

LABEL_50:
      if (++v14 == 499)
      {
        return result;
      }
    }

    while (1)
    {
      v16 = v15[2];
      if (v16)
      {
        break;
      }

LABEL_49:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_50;
      }
    }

    while (1)
    {
      if (!v16[4])
      {
        result = v16[7];
        if (result)
        {
          v17 = *(result + 24);
          if (v17 && (*(v17 + 276) & 1) == 0)
          {
            goto LABEL_48;
          }

          os_release(result);
          v16[7] = 0;
        }

        result = mDNS_PurgeCacheResourceRecord(mDNSStorage, v16);
      }

LABEL_48:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_49;
      }
    }
  }

  return result;
}

void _Querier_LogDNSServices(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_count_block_invoke;
  block[3] = &unk_10014E930;
  block[4] = &v8;
  block[5] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v2 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  v3 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block[0]) = 67109120;
      HIDWORD(block[0]) = v2;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block[0]) = 67109120;
      HIDWORD(block[0]) = v2;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updated DNS services (%u)", block, 8u);
    }
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___Querier_LogDNSServices_block_invoke;
  v4[3] = &unk_100150758;
  v4[4] = v6;
  v5 = v2;
  mdns_dns_service_manager_enumerate(a1, v4);
  _Block_object_dispose(v6, 8);
}

uint64_t Querier_IsMDNSAlternativeServiceAvailableForQuestion(uint64_t a1)
{
  result = Querier_GetDNSServiceManager(a1);
  if (result)
  {
    return _Querier_GetMDNSAlternativeService(result, a1) != 0;
  }

  return result;
}

BOOL _Querier_ExcludeEncryptedDNSServices(_BYTE *a1)
{
  if (Querier_QuestionBelongsToSelf(a1) && !a1[644] || a1[651])
  {
    return 1;
  }

  return IsLocalDomain(a1 + 376);
}

uint64_t _Querier_GetDNSService(uint64_t a1, int a2)
{
  DNSServiceManager = Querier_GetDNSServiceManager(a1);
  if (!DNSServiceManager)
  {
    return 0;
  }

  v5 = DNSServiceManager;
  if (*(a1 + 652))
  {
    uuid_scoped_service = mdns_dns_service_manager_get_uuid_scoped_service(DNSServiceManager, a1 + 360, *(a1 + 136));
LABEL_4:
    CustomPushService = uuid_scoped_service;
    goto LABEL_5;
  }

  if (*(a1 + 340) && !*(a1 + 638) && !*(a1 + 653) && ((*(a1 + 136) + 5) <= 3 && *(a1 + 136) != -4 || *(a1 + 634) || IsLocalDomain((a1 + 376))) && !Querier_QuestionBelongsToSelf(a1))
  {
    uuid_scoped_service = _Querier_GetMDNSAlternativeService(v5, a1);
    goto LABEL_4;
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (!v9)
    {
      return 0;
    }

    if ((*(v9 + 68) & 1) == 0)
    {
      v11 = *(v8 + 16);
      if (v11)
      {
        if (*(v11 + 32))
        {
          v12 = *(v11 + 16);
          if (v12)
          {
            uuid_scoped_service = _Querier_GetDiscoveredPushDNSService(v5, *(v12 + 16), *(a1 + 136));
            goto LABEL_4;
          }
        }
      }

      return 0;
    }
  }

  CustomPushService = _Querier_GetCustomPushService(v5, a1);
  if (CustomPushService)
  {
    goto LABEL_54;
  }

  v10 = *(a1 + 136);
  if (v10)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    block = _NSConcreteStackBlock;
    v33 = 0x40000000;
    v34 = __mdns_dns_service_manager_get_interface_scoped_native_service_block_invoke;
    v35 = &unk_10014E640;
    v36 = &v28;
    v37 = v5;
    v38 = a1 + 376;
    v39 = v10;
    dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
    CustomPushService = v29[3];
    _Block_object_dispose(&v28, 8);
    if (CustomPushService)
    {
      goto LABEL_54;
    }
  }

  else
  {
    CustomPushService = mdns_dns_service_manager_get_unscoped_native_service(v5, a1 + 376);
    if (CustomPushService)
    {
      goto LABEL_54;
    }
  }

  v13 = *(a1 + 136);
  v14 = v13;
  if (a2)
  {
    goto LABEL_30;
  }

  if (uuid_is_null((a1 + 360)))
  {
    v14 = *(a1 + 136);
LABEL_30:
    if (v14)
    {
      interface_scoped_system_service_with_options = mdns_dns_service_manager_get_interface_scoped_system_service_with_options(v5, a1 + 376, v13, (a2 | gNEDNSProxyIsRunning) == 0);
LABEL_47:
      CustomPushService = interface_scoped_system_service_with_options;
      goto LABEL_48;
    }

    v16 = *(a1 + 280);
    if ((v16 & 0x80000000) == 0)
    {
      interface_scoped_system_service_with_options = mdns_dns_service_manager_get_service_scoped_system_service(v5, a1 + 376, v16);
      goto LABEL_47;
    }

    v19 = (a2 | gNEDNSProxyIsRunning) == 0;
    if (a2 | gNEDNSProxyIsRunning || (CustomPushService = mdns_dns_service_manager_get_discovered_service(v5, a1 + 376)) == 0)
    {
      interface_scoped_system_service_with_options = mdns_dns_service_manager_get_unscoped_system_service_with_options(v5, a1 + 376, v19);
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  v17 = mdns_dns_service_manager_get_uuid_scoped_service(v5, a1 + 360, v13);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  if (!*(v17 + 96) || nw_resolver_config_get_class() != 4 || *(a1 + 136))
  {
    goto LABEL_42;
  }

  discovered_service = mdns_dns_service_manager_get_discovered_service(v5, a1 + 376);
  if (discovered_service)
  {
    CustomPushService = discovered_service;
    if (*(discovered_service + 96))
    {
      if (nw_resolver_config_get_class() == 3)
      {
        goto LABEL_48;
      }
    }
  }

  discovered_oblivious_service = mdns_dns_service_manager_get_discovered_oblivious_service(v5, v18, a1 + 376);
  if (!discovered_oblivious_service)
  {
LABEL_42:
    CustomPushService = v18;
    goto LABEL_48;
  }

  v27 = discovered_oblivious_service;
  CustomPushService = v18;
  if (*(discovered_oblivious_service + 96))
  {
    if (nw_resolver_config_get_class() == 4)
    {
      CustomPushService = v27;
    }

    else
    {
      CustomPushService = v18;
    }
  }

LABEL_48:
  if (a2 || !CustomPushService)
  {
    goto LABEL_5;
  }

  if ((*(CustomPushService + 276) & 0x200) == 0)
  {
    if (!*(a1 + 648) || *(CustomPushService + 281) - 2 <= 3)
    {
      if ((*(CustomPushService + 276) & 0x800) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_65;
    }

    v21 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_63:
        v22 = *(a1 + 252);
        v23 = bswap32(*(a1 + 340)) >> 16;
        v24 = *(CustomPushService + 24);
        LODWORD(block) = 67109632;
        HIDWORD(block) = v22;
        LOWORD(v33) = 1024;
        *(&v33 + 2) = v23;
        HIWORD(v33) = 2048;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] DNS service %llu lacks required encryption", &block, 0x18u);
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }
    }

    CustomPushService = 0;
LABEL_65:
    if (*a1)
    {
      uuid_scoped_service = mdns_dns_service_manager_get_custom_service(v5, *a1);
      goto LABEL_4;
    }

LABEL_5:
    if (!CustomPushService)
    {
      return CustomPushService;
    }
  }

LABEL_54:
  if ((~*(CustomPushService + 276) & 0x1800) == 0 && *(a1 + 650))
  {
    return 0;
  }

  return CustomPushService;
}

BOOL Querier_QuestionBelongsToSelf(uint64_t a1)
{
  if (*(a1 + 653))
  {
    return 0;
  }

  v2 = *(a1 + 244);
  if (v2)
  {
    if (_Querier_GetMyPID_sOnce != -1)
    {
      v4 = *(a1 + 244);
      dispatch_once(&_Querier_GetMyPID_sOnce, &__block_literal_global_53);
      v2 = v4;
    }

    return v2 == _Querier_GetMyPID_sPID;
  }

  else
  {
    if (_Querier_GetMyUUID_sOnce != -1)
    {
      v5 = a1;
      dispatch_once(&_Querier_GetMyUUID_sOnce, &__block_literal_global_56);
      a1 = v5;
    }

    return uuid_compare((a1 + 657), _Querier_GetMyUUID_sUUID) == 0;
  }
}

uint64_t _Querier_GetMDNSAlternativeService(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = a2 + 376;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v5 = _mdns_dns_service_queue_s_queue;
    v9 = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = __mdns_dns_service_manager_get_interface_scoped_mdns_alternative_service_block_invoke;
    v12 = &unk_10014E748;
    v13 = &v17;
    v14 = a1;
    v15 = v4;
    v16 = v3;
  }

  else
  {
    v6 = a2 + 376;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v5 = _mdns_dns_service_queue_s_queue;
    v9 = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = __mdns_dns_service_manager_get_unscoped_mdns_alternative_service_block_invoke;
    v12 = &unk_10014E7B0;
    v13 = &v17;
    v14 = a1;
    v15 = v6;
  }

  dispatch_sync(v5, &v9);
  v7 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v7;
}

uint64_t _Querier_GetDiscoveredPushDNSService(uint64_t a1, _BYTE *a2, int a3)
{
  v15[0] = xmmword_10010D5A0;
  v15[1] = unk_10010D5B0;
  memset(&v15[2], 0, 224);
  AppendDomainName(v15, a2);
  v5 = mdns_domain_name_create_with_labels(v15, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = __mdns_dns_service_manager_get_discovered_push_service_block_invoke;
  v9[3] = &unk_10014E850;
  v9[4] = &v11;
  v9[5] = a1;
  v9[6] = v6;
  v10 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v9);
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  os_release(v6);
  return v7;
}

uint64_t _Querier_GetCustomPushService(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = a2 + 376;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v5 = _mdns_dns_service_queue_s_queue;
    v9 = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = __mdns_dns_service_manager_get_interface_scoped_custom_push_service_block_invoke;
    v12 = &unk_10014E5F0;
    v13 = &v17;
    v14 = a1;
    v15 = v4;
    v16 = v3;
  }

  else
  {
    v6 = a2 + 376;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v5 = _mdns_dns_service_queue_s_queue;
    v9 = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = __mdns_dns_service_manager_get_unscoped_custom_push_service_block_invoke;
    v12 = &unk_10014E5C8;
    v13 = &v17;
    v14 = a1;
    v15 = v6;
  }

  dispatch_sync(v5, &v9);
  v7 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v7;
}

uint64_t _Querier_DNSServiceRegistrationStartHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v6, v7, v8, v9, v10, v11, v12, v13);
  if (!a1)
  {
    goto LABEL_4;
  }

  v21 = *(a1 + 16);
  if (v21 == &_mdns_dns_service_definition_kind)
  {
    v23 = Querier_RegisterNativeDNSService(a1);
LABEL_7:
    v22 = v23;
    goto LABEL_8;
  }

  if (v21 == &_mdns_dns_push_service_definition_kind)
  {
    v23 = Querier_RegisterCustomPushDNSServiceWithConnectionErrorHandler(a1, a2, a3);
    goto LABEL_7;
  }

LABEL_4:
  v22 = 0;
LABEL_8:
  KQueueUnlock("DNS service registration start handler", v14, v15, v16, v17, v18, v19, v20);
  return v22;
}

uint64_t Querier_RegisterNativeDNSService(uint64_t a1)
{
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (!DNSServiceManager)
  {
    return 0;
  }

  v3 = DNSServiceManager;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_register_native_service_block_invoke;
  block[3] = &unk_10014E400;
  block[4] = &v8;
  block[5] = &v12;
  block[6] = v3;
  block[7] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = *(v13 + 6);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  if (v4)
  {
    v6 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        LODWORD(block[0]) = 67109120;
        HIDWORD(block[0]) = v4;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        LODWORD(block[0]) = 67109120;
        HIDWORD(block[0]) = v4;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to register native DNS service - error: %d.", block, 8u);
      }
    }
  }

  return v5;
}

uint64_t Querier_RegisterCustomPushDNSServiceWithConnectionErrorHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (!DNSServiceManager)
  {
    return 0;
  }

  v7 = DNSServiceManager;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 0x40000000;
  v21 = __mdns_dns_service_manager_register_custom_push_service_block_invoke;
  v22 = &unk_10014E468;
  v25 = &v16;
  v26 = v7;
  v29 = 0;
  v27 = a1;
  v28 = a2;
  v23 = a3;
  v24 = &v12;
  dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
  v8 = *(v17 + 6);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  if (v8)
  {
    v10 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        LODWORD(block) = 134217984;
        *(&block + 4) = v8;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        LODWORD(block) = 134217984;
        *(&block + 4) = v8;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to register custom push service - error: %{mdns:err}ld", &block, 0xCu);
      }
    }
  }

  return v9;
}

uint64_t _Querier_VPNDNSServiceExistsForQName(uint64_t a1)
{
  result = Querier_GetDNSServiceManager(a1);
  if (result)
  {
    unscoped_system_service_with_options = mdns_dns_service_manager_get_unscoped_system_service_with_options(result, a1, 0);
    return unscoped_system_service_with_options && (*(unscoped_system_service_with_options + 276) & 0x200) != 0;
  }

  return result;
}

void Querier_RegisterPathResolver(uint64_t a1)
{
  DNSServiceManager = Querier_GetDNSServiceManager(a1);
  if (DNSServiceManager)
  {
    v3 = DNSServiceManager;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_register_path_resolver_block_invoke;
    v4[3] = &__block_descriptor_tmp_13;
    v4[4] = v3;
    v4[5] = a1;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

uint64_t Querier_RegisterCustomDNSServiceWithPListData(const UInt8 *a1, CFIndex a2)
{
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (DNSServiceManager)
  {
    v5 = DNSServiceManager;
    v6 = CFDataCreate(0, a1, a2);
    if (v6)
    {
      v7 = v6;
      v8 = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
      CFRelease(v7);
      if (v8)
      {
        v9 = CFGetTypeID(v8);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = _CFXPCCreateXPCObjectFromCFObject();
          CFRelease(v8);
          if (v10)
          {
            v11 = mdns_dns_service_manager_register_custom_service(v5, v10);
            xpc_release(v10);
            return v11;
          }
        }

        else
        {
          CFRelease(v8);
        }
      }
    }
  }

  return 0;
}

void Querier_DeregisterCustomDNSService(uint64_t a1)
{
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (DNSServiceManager)
  {
    v3 = DNSServiceManager;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_custom_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_15;
    v4[4] = v3;
    v4[5] = a1;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void Querier_HandleUnicastQuestion(uint64_t a1)
{
  v3 = (a1 + 96);
  v2 = *(a1 + 96);
  if (v2)
  {
    if (*(v2 + 16) == &_mdns_querier_kind)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      *(a1 + 649) = !_mdns_querier_match(v2, (a1 + 376), *(a1 + 342), *(a1 + 344));
      goto LABEL_57;
    }

LABEL_7:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_57;
  }

  v8 = *(a1 + 80);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 281);
  OrphanedClientSet = _Querier_GetOrphanedClientSet(v11 != 5);
  if (v11 == 5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v62;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 0x40000000;
    v62[2] = __Querier_HandleUnicastQuestion_block_invoke;
    v62[3] = &__block_descriptor_tmp_14_3265;
    v63 = v10 & 1;
  }

  v14 = *(a1 + 80);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = _Querier_GetOrphanedClientSet(*(v14 + 281) != 5);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  *buf.val = _NSConcreteStackBlock;
  *&buf.val[2] = 0x40000000;
  *&buf.val[4] = ___Querier_PopMatchedOrphanedClient_block_invoke;
  *&buf.val[6] = &unk_1001507B0;
  v70 = &v64;
  v71 = a1;
  v69 = v13;
  mdns_cfset_enumerate(v15, &buf);
  v16 = v65[3];
  if (!v16)
  {
    _Block_object_dispose(&v64, 8);
LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  os_retain(v16);
  CFSetRemoveValue(v15, v65[3]);
  v7 = v65[3];
  _Block_object_dispose(&v64, 8);
  if (!v7)
  {
    goto LABEL_27;
  }

  mdns_client_replace(v3, v7);
  mdns_client_set_time_limit_ms(v7, 0);
  v17 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v18 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v11 == 5)
  {
    if (v19)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    v40 = bswap32(*(a1 + 340));
    v41 = *(v7 + 128);
    buf.val[0] = 67109376;
    buf.val[1] = HIWORD(v40);
    LOWORD(buf.val[2]) = 2048;
    *(&buf.val[2] + 2) = v41;
    v37 = "[Q%u->Sub%llu] Adopted orphaned subscriber";
    v38 = v17;
    v39 = 18;
  }

  else
  {
    if (v19)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    v35 = bswap32(*(a1 + 340));
    v36 = *(v7 + 232);
    buf.val[0] = 67109376;
    buf.val[1] = HIWORD(v35);
    LOWORD(buf.val[2]) = 1024;
    *(&buf.val[2] + 2) = v36;
    v37 = "[Q%u->Q%u] Adopted orphaned querier";
    v38 = v17;
    v39 = 14;
  }

  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, &buf, v39);
LABEL_27:
  v20 = *v3;
  if (*v3)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    *(a1 + 649) = 0;
    goto LABEL_29;
  }

  v21 = *(a1 + 80);
  if (*(v21 + 281) != 5)
  {
    v27 = *(v21 + 64);
    if (!v27)
    {
      goto LABEL_56;
    }

    querier = mdns_resolver_create_querier(v27);
    if (!querier)
    {
      goto LABEL_56;
    }

    v24 = querier;
    if ((v10 & 1) != 0 && (*(querier + 61) & 1) == 0)
    {
      v29 = *(querier + 96);
      if ((*(v29 + 70) & 0x20) != 0 || (*(v29 + 70) |= 4u, (*(querier + 61) & 1) == 0))
      {
        v30 = *(querier + 96);
        if ((*(v30 + 70) & 0x20) == 0)
        {
          *(v30 + 70) |= 2u;
        }
      }
    }

    v31 = *(a1 + 128);
    if (!v31)
    {
      v42 = *(a1 + 244);
      if (!v42)
      {
        mdns_querier_set_delegator_uuid(querier, (a1 + 657));
        goto LABEL_54;
      }

      v43 = *(a1 + 120);
      if (v43)
      {
        v44 = *(v43 + 40);
        *buf.val = *(v43 + 24);
        *&buf.val[4] = v44;
        v45 = audit_token_to_pid(&buf);
        v42 = *(a1 + 244);
      }

      else
      {
        v45 = 0;
      }

      if (v45 != v42)
      {
        if ((*(v24 + 61) & 1) == 0)
        {
          _mdns_querier_clear_delegation(v24);
          v5 = 0;
          *(v24 + 184) = 1;
          *(v24 + 168) = v42;
          goto LABEL_55;
        }

LABEL_54:
        v5 = 0;
LABEL_55:
        v6 = v24;
        goto LABEL_90;
      }

      v31 = *(a1 + 120);
    }

    mdns_querier_set_delegator_audit_token(v24, v31);
    goto LABEL_54;
  }

  v22 = *(v21 + 72);
  if (!v22 || (subscriber = mdns_push_server_create_subscriber(v22)) == 0)
  {
LABEL_56:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_57;
  }

  v24 = subscriber;
  v25 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_88:
      v46 = bswap32(*(a1 + 340));
      v47 = *(v24 + 128);
      buf.val[0] = 67109376;
      buf.val[1] = HIWORD(v46);
      LOWORD(buf.val[2]) = 2048;
      *(&buf.val[2] + 2) = v47;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Q%u->Sub%llu] Created a subscriber for question", &buf, 0x12u);
    }
  }

  else
  {
    v25 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_88;
    }
  }

  v6 = 0;
  v5 = v24;
LABEL_90:
  v4 = mdns_domain_name_create_with_labels((a1 + 376), 0);
  if (!v4)
  {
    goto LABEL_57;
  }

  if ((*(v24 + 61) & 1) == 0)
  {
    (*(*(v24 + 16) + 56))(v24, v4, *(a1 + 342), *(a1 + 344));
  }

  os_retain(*(a1 + 80));
  if ((*(v24 + 61) & 1) == 0)
  {
    *(v24 + 32) = *(a1 + 80);
    *(v24 + 40) = mdns_object_context_finalizer;
  }

  if (_Querier_InternalQueue_sOnce != -1)
  {
    dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
  }

  mdns_client_set_queue(v24, _Querier_InternalQueue_sQueue);
  if (v6)
  {
    v57 = OrphanedClientSet;
    os_retain(v6);
    v48 = bswap32(*(a1 + 340)) >> 16;
    v49 = DNSQuestionNeedsSensitiveLogging(a1);
    v50 = v49;
    if (v49)
    {
      if ((*(v6 + 61) & 1) == 0)
      {
        *(v6 + 255) = 1;
      }

      mDNSEnableSensitiveLoggingForQuestion(v48);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = __Querier_HandleUnicastQuestion_block_invoke_15;
    aBlock[3] = &__block_descriptor_tmp_18_3273;
    aBlock[4] = v6;
    v61 = v50;
    v60 = v48;
    mdns_querier_set_result_handler(v6, aBlock);
    mdns_querier_set_log_label(v6, "Q%u", v51, v52, v53, v54, v55, v56, v48);
    OrphanedClientSet = v57;
    if ((*(v6 + 61) & 1) == 0)
    {
      *(v6 + 232) = v48;
    }
  }

  if (v5)
  {
    os_retain(v5);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 0x40000000;
    v58[2] = __Querier_HandleUnicastQuestion_block_invoke_2;
    v58[3] = &__block_descriptor_tmp_22_3275;
    v58[4] = v5;
    v58[5] = OrphanedClientSet;
    mdns_subscriber_set_event_handler(v5, v58);
  }

  mdns_client_replace(v3, v24);
  mdns_client_activate(*(a1 + 96));
  v20 = *(a1 + 96);
  *(a1 + 649) = 0;
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_29:
  if (v20[2] != &_mdns_querier_kind || !*(v20[9][2] + 36))
  {
LABEL_30:
    *(a1 + 264) = 0;
    goto LABEL_57;
  }

  if (*(a1 + 268))
  {
    *(a1 + 268) = 0;
    *(a1 + 260) = 0;
  }

  else if (*(a1 + 264))
  {
    goto LABEL_57;
  }

  v26 = dword_10016D258;
  if (dword_10016D258 <= 1)
  {
    v26 = 1;
  }

  *(a1 + 264) = v26;
LABEL_57:
  v32 = *(a1 + 184);
  if (!v32 || (v33 = *(v32 + 16)) == 0 || (*(v33 + 68) & 1) == 0)
  {
    v34 = 939524096;
    if (*(a1 + 80))
    {
      if (*v3)
      {
        v34 = 939524096;
      }

      else
      {
        v34 = 1000;
      }
    }

    *(a1 + 212) = v34;
  }

  *(a1 + 208) = dword_10016D258;
  SetNextQueryTime(mDNSStorage, a1);
  if (v7)
  {
    os_release(v7);
  }

  if (v6)
  {
    os_release(v6);
  }

  if (v5)
  {
    os_release(v5);
  }

  if (v4)
  {
    os_release(v4);
  }
}

CFMutableSetRef _Querier_GetOrphanedClientSet(int a1)
{
  if (a1)
  {
    v1 = &_Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet;
  }

  else
  {
    v1 = &_Querier_GetOrphanedSubscriberSet_sOrphanedSubscriberSet;
  }

  result = *v1;
  if (!*v1)
  {
    result = CFSetCreateMutable(kCFAllocatorDefault, 0, &gMDNSObjectSetCallbacks);
    *v1 = result;
  }

  return result;
}

const __CFArray *_Querier_ApplyUpdate(void *a1)
{
  result = a1[15];
  if (result)
  {
    v3 = a1[4];
    v4 = *(a1[8] + 96);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___Querier_ApplyUpdate_block_invoke;
    v5[3] = &__block_descriptor_tmp_50;
    v5[4] = v3;
    v5[5] = v4;
    v5[6] = a1;
    return mdns_cfarray_enumerate(result, v5);
  }

  return result;
}

void _Querier_HandleSubscriberInvalidation(uint64_t a1)
{
  mDNS_Lock_(mDNSStorage, "_Querier_HandleSubscriberInvalidation", 1846);
  v2 = *((*(*(a1 + 16) + 88))(a1) + 24);
  v3 = DomainNameHashValue(v2);
  v4 = CacheGroupForName(mDNSStorage, v3, v2);
  if (v4)
  {
    v5 = v4[2];
    if (v5)
    {
      v6 = *(a1 + 128);
      while (1)
      {
        if (!*(v5 + 109))
        {
          goto LABEL_35;
        }

        v7 = *(v5 + 56);
        if (v7)
        {
          v7 = *(v7 + 40);
        }

        if (v7 != v6)
        {
          goto LABEL_35;
        }

        v8 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(v5 + 40);
          if (v10)
          {
            v11 = *(v5 + 40);
            while (1)
            {
              if (!v11 || (v12 = *v11, v12 > 0x3F))
              {
LABEL_20:
                v13 = 257;
                goto LABEL_33;
              }

              if (!*v11)
              {
                break;
              }

              v11 += v12 + 1;
              if (&v11[-v10] >= 256)
              {
                goto LABEL_20;
              }
            }

            v13 = (v11 - v10 + 1);
          }

          else
          {
            v13 = 0;
          }

LABEL_33:
          v17 = *(v5 + 12);
          v18 = *(v5 + 16);
          *buf = 134219267;
          v20 = v6;
          v21 = 2160;
          v22 = 1752392040;
          v23 = 1040;
          v24 = v13;
          v25 = 2101;
          v26 = v10;
          v27 = 1024;
          v28 = v17;
          v29 = 1024;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[Sub%llu] Removing record from the cache due to subscriber invalidation -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, TTL: %us", buf, 0x32u);
        }

LABEL_34:
        *(*(v5 + 56) + 40) = 0;
        *(v5 + 109) = 0;
        mDNS_PurgeCacheResourceRecord(mDNSStorage, v5);
LABEL_35:
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_36;
        }
      }

      v8 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v10 = *(v5 + 40);
      if (v10)
      {
        v15 = *(v5 + 40);
        while (1)
        {
          if (!v15 || (v16 = *v15, v16 > 0x3F))
          {
LABEL_28:
            v13 = 257;
            goto LABEL_33;
          }

          if (!*v15)
          {
            break;
          }

          v15 += v16 + 1;
          if (&v15[-v10] >= 256)
          {
            goto LABEL_28;
          }
        }

        v13 = (v15 - v10 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  mDNS_Unlock_(mDNSStorage, "_Querier_HandleSubscriberInvalidation", 1870);
}

void _Querier_RemoveRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 56);
  if (v4 <= 0x2000)
  {
    v9 = *(*(a1 + 24) + 24);
    mDNS_Lock_(mDNSStorage, "_Querier_RemoveRecord", 1683);
    v10 = DomainNameHashValue(v9);
    v11 = CacheGroupForName(mDNSStorage, v10, v9);
    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = *(a1 + 52);
        v14 = *(a1 + 54);
        v15 = &unk_100162000;
        __s2 = *(a1 + 32);
        v16 = *(a2 + 276);
        v36 = v4;
        v37 = a2;
        v35 = v13;
        do
        {
          if (*(v12 + 32) != a3)
          {
            goto LABEL_6;
          }

          if ((v16 & 0x4000) == 0)
          {
            v17 = *(v12 + 56);
            if (v17)
            {
              v17 = *(v17 + 24);
            }

            if (v17 != a2)
            {
              goto LABEL_6;
            }
          }

          if (a4)
          {
            if (v14 != 255)
            {
              if (*(v12 + 14) != v14)
              {
                goto LABEL_6;
              }

              v27 = *(v12 + 12);
              if (v27 != 255 && v27 != v13)
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            if (*(v12 + 12) != v13)
            {
              goto LABEL_6;
            }

            if (*(v12 + 14) != v14)
            {
              goto LABEL_6;
            }

            if (*(v12 + 20) != v4)
            {
              goto LABEL_6;
            }

            __memset_chk();
            putRData(0, _Querier_RemoveRecord_rdataBuf, &_Querier_GetMyPID_sOnce, v12 + 8, v23, v24, v25, v26);
            v15 = &unk_100162000;
            if (memcmp(_Querier_RemoveRecord_rdataBuf, __s2, v4))
            {
              goto LABEL_6;
            }
          }

          v18 = mDNSLogCategory_uDNS;
          if (!v15[256] || mDNSLogCategory_uDNS == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_52;
            }

            v19 = *(v12 + 40);
            if (v19)
            {
              v28 = *(v12 + 40);
              while (1)
              {
                if (!v28 || (v29 = *v28, v29 > 0x3F))
                {
LABEL_40:
                  v22 = 257;
                  goto LABEL_44;
                }

                if (!*v28)
                {
                  break;
                }

                v28 += v29 + 1;
                if (&v28[-v19] >= 256)
                {
                  goto LABEL_40;
                }
              }

              v22 = (v28 - v19 + 1);
            }

            else
            {
              v22 = 0;
            }

LABEL_44:
            v30 = *(v12 + 12);
            v31 = *(v12 + 20);
            if (v31 <= 0x1FE)
            {
LABEL_50:
              v33 = *(v12 + 48);
              word_1001787D0 = __rev16(v30);
              memcpy(&unk_1001787D2, (v33 + 4), v31);
              v32 = &word_1001787D0;
              goto LABEL_51;
            }

            v32 = 0;
          }

          else
          {
            v18 = mDNSLogCategory_uDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_52;
            }

            v19 = *(v12 + 40);
            if (v19)
            {
              v20 = *(v12 + 40);
              while (1)
              {
                if (!v20 || (v21 = *v20, v21 > 0x3F))
                {
LABEL_23:
                  v22 = 257;
                  goto LABEL_48;
                }

                if (!*v20)
                {
                  break;
                }

                v20 += v21 + 1;
                if (&v20[-v19] >= 256)
                {
                  goto LABEL_23;
                }
              }

              v22 = (v20 - v19 + 1);
            }

            else
            {
              v22 = 0;
            }

LABEL_48:
            v30 = *(v12 + 12);
            v31 = *(v12 + 20);
            if (v31 <= 0x1FE)
            {
              goto LABEL_50;
            }

            v32 = 0;
          }

LABEL_51:
          *buf = 141559811;
          v39 = 1752392040;
          v40 = 1040;
          v41 = v22;
          v42 = 2101;
          v43 = v19;
          v44 = 1024;
          v45 = v30;
          v46 = 2160;
          v47 = 1752392040;
          v48 = 1040;
          v49 = v31 + 2;
          v50 = 2101;
          v51 = v32;
          v52 = 1024;
          v53 = a4;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Removing record(s) -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P, collectively: %{mdns:yesno}d", buf, 0x42u);
          v4 = v36;
          a2 = v37;
          v13 = v35;
          v15 = &unk_100162000;
LABEL_52:
          mDNS_PurgeCacheResourceRecord(mDNSStorage, v12);
          if (!a4)
          {
            break;
          }

LABEL_6:
          v12 = *v12;
        }

        while (v12);
      }
    }

    mDNS_Unlock_(mDNSStorage, "_Querier_RemoveRecord", 1754);
  }
}

uint64_t Querier_GetDNSQuestion(uint64_t a1, _BYTE *a2)
{
  result = *(&xmmword_10016D2D4 + 4);
  if (!*(&xmmword_10016D2D4 + 4))
  {
LABEL_8:
    v6 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(result + 96);
    if (!v5 || *(v5 + 16) != &_mdns_querier_kind)
    {
      v5 = 0;
    }

    v4 |= result == *(&xmmword_10016D2D4 + 12);
    if (v5 == a1)
    {
      break;
    }

    result = *(result + 8);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  v6 = v4 & 1;
  if (a2)
  {
LABEL_9:
    *a2 = v6;
  }

  return result;
}

void Querier_ProcessDNSServiceChangesAsync()
{
  if (_Querier_InternalQueue_sOnce != -1)
  {
    dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __Querier_ProcessDNSServiceChangesAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_24_3304;
  v1 = 1;
  dispatch_async(_Querier_InternalQueue_sQueue, block);
}

BOOL Client_SameNameCacheRecordIsAnswer(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a2 + 16) + 96))(a2);
  v5 = *(a1 + 14);
  if (v5 != (*(*(a2 + 16) + 104))(a2))
  {
    return 0;
  }

  if (*(a2 + 16) == &_mdns_querier_kind)
  {
    v13 = *(*(a2 + 96) + 70);
    if ((v13 & 4) != 0)
    {
      v11 = (v13 >> 1) & 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return RRTypeAnswersQuestionType(a1 + 8, v4, v11, v6, v7, v8, v9, v10);
}

void _DPCSubscribe(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (gDPCPushServers)
  {
    Value = CFDictionaryGetValue(gDPCPushServers, a2);
    if (Value)
    {
      v5 = Value;
      Subscriber = _DPCQuestionGetSubscriber(*(a1 + 192), a2);
      v19[3] = Subscriber;
      if (!Subscriber)
      {
        if (*(a1 + 192) || (v7 = CFSetCreateMutable(kCFAllocatorDefault, 0, &gMDNSObjectSetCallbacks), (*(a1 + 192) = v7) != 0))
        {
          v8 = gDPCSubscriberRegistries;
          if (gDPCSubscriberRegistries || (v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &gInterfaceIDDictionaryKeyCallbacks, &kCFTypeDictionaryValueCallBacks), (gDPCSubscriberRegistries = v8) != 0))
          {
            v9 = CFDictionaryGetValue(v8, a2);
            if (!v9)
            {
              Mutable = CFBagCreateMutable(kCFAllocatorDefault, 0, &gMDNSObjectBagCallbacks);
              if (!Mutable)
              {
                goto LABEL_4;
              }

              v9 = Mutable;
              CFDictionarySetValue(gDPCSubscriberRegistries, a2, Mutable);
              CFRelease(v9);
            }

            v11 = _DPCGetRegisteredSubscriber(a2, a1 + 376, *(a1 + 342), *(a1 + 344));
            v19[3] = v11;
            if (v11)
            {
              v12 = 0;
            }

            else
            {
              v13 = mdns_domain_name_create_with_labels((a1 + 376), 0);
              if (!v13)
              {
                goto LABEL_4;
              }

              v12 = v13;
              v14 = mdns_push_server_create_subscriber(v5);
              v19[3] = v14;
              if (!v14)
              {
                goto LABEL_15;
              }

              v15 = v14;
              if ((*(v14 + 61) & 1) == 0)
              {
                (*(*(v14 + 16) + 56))(v14, v12, *(a1 + 342), *(a1 + 344));
                v15 = v19[3];
              }

              if (_Querier_InternalQueue_sOnce != -1)
              {
                dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
              }

              mdns_client_set_queue(v15, _Querier_InternalQueue_sQueue);
              os_retain(v19[3]);
              v16 = v19[3];
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 0x40000000;
              aBlock[2] = ___DPCSubscribe_block_invoke;
              aBlock[3] = &unk_100150878;
              aBlock[4] = &v18;
              mdns_subscriber_set_event_handler(v16, aBlock);
              mdns_client_activate(v19[3]);
              v11 = v19[3];
            }

            CFSetAddValue(*(a1 + 192), v11);
            CFBagAddValue(v9, v19[3]);
            if (v12)
            {
LABEL_15:
              os_release(v12);
            }
          }
        }
      }
    }
  }

LABEL_4:
  _Block_object_dispose(&v18, 8);
}

uint64_t _DPCQuestionGetSubscriber(const __CFSet *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___DPCQuestionGetSubscriber_block_invoke;
    v4[3] = &unk_1001508A0;
    v4[4] = &v5;
    v4[5] = a2;
    mdns_cfset_enumerate(a1, v4);
    v2 = v6[3];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _DPCGetRegisteredSubscriber(void *key, uint64_t a2, __int16 a3, __int16 a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (gDPCSubscriberRegistries)
  {
    Value = CFDictionaryGetValue(gDPCSubscriberRegistries, key);
    if (Value)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = ___DPCGetRegisteredSubscriber_block_invoke;
      v10[3] = &unk_1001508F8;
      v11 = a3;
      v12 = a4;
      v10[4] = &v13;
      v10[5] = a2;
      mdns_cfbag_enumerate(Value, v10);
    }
  }

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

void DPCBrowseHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (DPCFeatureEnabled_sOnce != -1)
  {
    dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
  }

  if (a4 == 1)
  {
    if (DPCFeatureEnabled_sEnabled)
    {
      v6 = *(a3 + 24);
      if (!gDPCPushServers || !CFDictionaryGetValue(gDPCPushServers, *(a3 + 24)))
      {
        v7 = mdns_domain_name_create_with_labels(*(a3 + 32), 0);
        if (v7)
        {
          v8 = v7;
          _DPCRemovePushServer(v6);
          if (gDPCPushServers || (gDPCPushServers = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &gInterfaceIDDictionaryKeyCallbacks, &gMDNSObjectDictionaryValueCallbacks)) != 0)
          {
            v9 = mdns_push_server_create();
            if (v9)
            {
              v10 = v9;
              mdns_push_server_set_srv_name(v9, v8);
              v10[103] = 1;
              CFDictionarySetValue(gDPCPushServers, v6, v10);
              v11 = xmmword_10016D2D8;
              if (xmmword_10016D2D8)
              {
                v12 = *(&xmmword_10016D2D8 + 1);
                if (xmmword_10016D2D8 != *(&xmmword_10016D2D8 + 1))
                {
                  do
                  {
                    if (!*(v11 + 340) && *(v11 + 212) >= 1 && !*(v11 + 40))
                    {
                      v14 = *(v11 + 136);
                      if (v14 == v6 || v14 == 0)
                      {
                        _DPCSubscribe(v11, v6);
                        v12 = *(&xmmword_10016D2D8 + 1);
                      }
                    }

                    v11 = *(v11 + 8);
                    if (v11)
                    {
                      v13 = v11 == v12;
                    }

                    else
                    {
                      v13 = 1;
                    }
                  }

                  while (!v13);
                }
              }

              os_release(v10);
            }
          }

          os_release(v8);
        }
      }
    }
  }
}

void _DPCRemovePushServer(void *key)
{
  v2 = xmmword_10016D2D8;
  if (xmmword_10016D2D8)
  {
    v3 = xmmword_10016D2D8 == *(&xmmword_10016D2D8 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      Subscriber = _DPCQuestionGetSubscriber(*(v2 + 192), key);
      if (Subscriber)
      {
        CFSetRemoveValue(*(v2 + 192), Subscriber);
      }

      v2 = *(v2 + 8);
      if (v2)
      {
        v5 = v2 == *(&xmmword_10016D2D8 + 1);
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
  }

  if (gDPCSubscriberRegistries)
  {
    Value = CFDictionaryGetValue(gDPCSubscriberRegistries, key);
    if (Value)
    {
      v7 = Value;
      mdns_cfbag_enumerate(Value, &__block_literal_global_64);
      CFBagRemoveAllValues(v7);
      CFDictionaryRemoveValue(gDPCSubscriberRegistries, key);
    }
  }

  if (gDPCPushServers)
  {
    v8 = CFDictionaryGetValue(gDPCPushServers, key);
    if (v8)
    {
      mdns_push_server_invalidate(v8);
      v9 = gDPCPushServers;

      CFDictionaryRemoveValue(v9, key);
    }
  }
}

void _dns_push_obj_dns_question_member_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }
}

_BYTE *domain_name_labels_create(_BYTE *a1, int *a2)
{
  v4 = *a1;
  v5 = a1;
  if (*a1)
  {
    v5 = a1;
    do
    {
      v6 = &v5[v4];
      v7 = v6[1];
      v5 = v6 + 1;
      v4 = v7;
    }

    while (v7);
  }

  v8 = v5 - a1 + 1;
  if (v8 > 0x100)
  {
LABEL_18:
    v10 = 0;
    v15 = -6751;
    if (!a2)
    {
      return v10;
    }

    goto LABEL_15;
  }

  if (v5 - a1 == -1 || (v9 = malloc_type_malloc(v5 - a1 + 1, 0xA106BB31uLL)) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  memcpy(v9, a1, v8);
  v11 = *v10;
  if (*v10)
  {
    v12 = v10;
    do
    {
      ++v12;
      v13 = v11 + 1;
      do
      {
        v14 = *v12;
        if ((v14 - 65) <= 0x19)
        {
          *v12 = v14 | 0x20;
        }

        ++v12;
        --v13;
      }

      while (v13 > 1);
      v11 = *v12;
    }

    while (*v12);
  }

  v15 = 0;
  if (a2)
  {
LABEL_15:
    *a2 = v15;
  }

  return v10;
}

_BYTE *domain_name_labels_get_parent(_BYTE *result, unint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = 0;
    v4 = *result;
    v5 = result;
    do
    {
      ++v3;
      v6 = &v5[v4];
      v7 = v6[1];
      v5 = v6 + 1;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v3 = 0;
  }

  if (v3 < a2)
  {
    v14 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v17 = 136447234;
    v18 = "index <= label_count";
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/domain_name_labels.c";
    v23 = 1024;
    v24 = 107;
    v25 = 2048;
    v26 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v17, 0x30u);
    return 0;
  }

  if (*result)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = a2 - 1;
    do
    {
      v10 = &result[v2];
      v11 = v10[1];
      result = v10 + 1;
      v2 = v11;
      v13 = v9-- != 0;
    }

    while (v2 && v13);
  }

  return result;
}

uint64_t domain_name_label_canonical_compare(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v3 = *a1;
  v4 = *a2;
  if (a3 && v3 != v4)
  {
    return 2;
  }

  if (v3 >= v4)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *a1;
  }

  if (v6)
  {
    v7 = a1 + 1;
    v8 = a2 + 1;
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      v11 = v10 + 32;
      v14 = v10 - 65 >= 0x1A;
      v13 = *v8++;
      v12 = v13;
      if (!v14)
      {
        v9 = v11;
      }

      if (v12 - 65 < 0x1A)
      {
        v12 += 32;
      }

      if (v9 < v12)
      {
        return 0xFFFFFFFFLL;
      }

      if (v9 > v12)
      {
        return 1;
      }

      if (!--v6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v14 = v3 >= v4;
    v15 = v3 == v4;
    v16 = v3 != v4;
    v17 = !v15 && v14;
    if (!v14)
    {
      v17 = -1;
    }

    if ((v16 & a3) != 0)
    {
      return 2;
    }

    else
    {
      return v17;
    }
  }
}

uint64_t domain_name_labels_canonical_compare()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *v0;
  v7 = v0;
  if (*v0)
  {
    v7 = v0;
    do
    {
      v8 = &v7[v6];
      v9 = v8[1];
      v7 = v8 + 1;
      v6 = v9;
    }

    while (v9);
  }

  v10 = v7 - v0;
  v11 = v10 + 1;
  v12 = *v1;
  v13 = v1;
  if (*v1)
  {
    v13 = v1;
    do
    {
      v14 = &v13[v12];
      v15 = v14[1];
      v13 = v14 + 1;
      v12 = v15;
    }

    while (v15);
  }

  LODWORD(result) = 3;
  if (v11 > 0x100)
  {
    goto LABEL_42;
  }

  v17 = v13 - v1;
  v18 = v13 - v1 + 1;
  if (v18 > 0x100)
  {
    goto LABEL_42;
  }

  if (v10 != v17 && (v2 & 1) != 0)
  {
    goto LABEL_11;
  }

  v19 = &v5[v11];
  v20 = &v1[v18];
  bzero(v41, 0x800uLL);
  bzero(v40, 0x800uLL);
  if (v19 <= v5)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v41[v21] = v5;
      v22 = v21 + 1;
      v5 += *v5 + 1;
      ++v21;
    }

    while (v5 < v19);
  }

  if (v20 <= v4)
  {
    v24 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_23:
    if (v22 != v24)
    {
LABEL_11:
      LODWORD(result) = 2;
      goto LABEL_42;
    }

    if (v22)
    {
      v25 = v22;
      v26 = v40;
      v27 = v41;
      while (**v27 == **v26)
      {
        ++v26;
        ++v27;
        if (!--v25)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_28;
  }

  v23 = 0;
  do
  {
    v40[v23] = v4;
    v24 = v23 + 1;
    v4 += *v4 + 1;
    ++v23;
  }

  while (v4 < v20);
  if (v3)
  {
    goto LABEL_23;
  }

LABEL_28:
  v28 = 0;
  v29 = v24;
  v30 = v22;
  v31 = &v41[v22 - 1];
  v32 = &v40[v24 - 1];
  while (1)
  {
    v33 = v29 + v28;
    v34 = v30 + v28;
    if (!(v30 + v28) || !v33)
    {
      break;
    }

    LODWORD(result) = domain_name_label_canonical_compare(v31[v28], v32[v28], v3);
    --v28;
    if (result)
    {
      goto LABEL_42;
    }
  }

  v35 = v34 | v33;
  if (v33)
  {
    v36 = 3;
  }

  else
  {
    v36 = 1;
  }

  if (v34)
  {
    v37 = v36;
  }

  else
  {
    v37 = -1;
  }

  if (v35)
  {
    LODWORD(result) = v37;
  }

  else
  {
    LODWORD(result) = 0;
  }

LABEL_42:
  if (result)
  {
    v38 = result == 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  if ((v39 & v3) != 0)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t domain_name_labels_compute_hash(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      v3 = &v2[v1];
      v4 = v3[1];
      v2 = v3 + 1;
      v1 = v4;
    }

    while (v4);
  }

  v5 = 2166136261;
  v6 = v2 - a1;
  if (v6 != -1)
  {
    v7 = v6 + 1;
    do
    {
      v9 = *a1++;
      v8 = v9;
      v10 = v9 + 32;
      if ((v9 - 65) < 0x1A)
      {
        v8 = v10;
      }

      v5 = 16777619 * (v5 ^ v8);
      --v7;
    }

    while (v7);
  }

  return v5;
}

_BYTE *domain_name_labels_concatenate(_BYTE *__src, _BYTE *a2, char *__dst, int *a4)
{
  v7 = *__src;
  v8 = __src;
  if (*__src)
  {
    v8 = __src;
    do
    {
      v9 = &v8[v7];
      v10 = v9[1];
      v8 = v9 + 1;
      v7 = v10;
    }

    while (v10);
  }

  v11 = v8 - __src;
  v12 = *a2;
  v13 = a2;
  if (*a2)
  {
    v13 = a2;
    do
    {
      v14 = &v13[v12];
      v15 = v14[1];
      v13 = v14 + 1;
      v12 = v15;
    }

    while (v15);
  }

  v16 = v13 - a2 + 1;
  if (v16 + v11 > 0x100)
  {
    v18 = -6751;
    if (!a4)
    {
      return __src;
    }
  }

  else
  {
    v17 = v11 + 1;
    memcpy(__dst, __src, v11 + 1);
    __src = memcpy(&__dst[v17 - 1], a2, v16);
    v18 = 0;
    if (!a4)
    {
      return __src;
    }
  }

  *a4 = v18;
  return __src;
}

BOOL IsEntitled()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v12 = 0;
      v5 = &v12;
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v5 = buf;
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IsEntitled: Client Entitlement is NULL", v5, 2u);
    goto LABEL_16;
  }

  v1 = v0;
  if (xpc_get_type(v0) == &_xpc_type_BOOL && xpc_BOOL_get_value(v1))
  {
    xpc_release(v1);
    return 1;
  }

  xpc_release(v1);
LABEL_16:
  v7 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v10 = 0;
    v8 = v10;
  }

  else
  {
    v7 = mDNSLogCategory_Default_redacted;
    result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v8 = &v9;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IsEntitled: Client is missing Entitlement!", v8, 2u);
  return 0;
}

unsigned __int8 *base_x_encode(int a1, unsigned __int8 *a2, unint64_t a3, char *a4)
{
  result = base_x_get_encoded_string_length(a1, a3);
  v9 = result;
  if (!a4)
  {
    result = malloc_type_malloc((result + 1), 0xC2EA051FuLL);
    a4 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v9[a4] = 0;
  if (a1 == 2)
  {
    v10 = 1;
    goto LABEL_23;
  }

  v10 = 0;
  if (a1 == 1)
  {
LABEL_23:

    return base_32_hex_encode(a2, a3, v10, a4);
  }

  for (i = &a2[a3]; a2 < i; a4 += 4)
  {
    v18 = 0;
    v12 = i - a2;
    if (i - a2 == 1)
    {
      v16 = 0;
      v14 = *a2 << 16;
      v15 = 1;
    }

    else
    {
      if (v12 == 2)
      {
        v13 = a2[1] << 8;
        v14 = v13 | (*a2 << 16);
        v15 = 2;
        v16 = 3;
      }

      else
      {
        v17 = a2[2];
        v13 = v17 | (a2[1] << 8);
        v14 = v13 | (*a2 << 16);
        if (v12 >= 3)
        {
          v15 = 3;
        }

        else
        {
          v15 = i - a2;
        }

        HIBYTE(v18) = b64_table[v17 & 0x3F];
        v16 = 4;
      }

      BYTE2(v18) = b64_table[(v13 >> 6) & 0x3F];
    }

    BYTE1(v18) = b64_table[(v14 >> 12) & 0x3F];
    LOBYTE(v18) = b64_table[v14 >> 18];
    if (v16)
    {
      if (v16 > 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 2;
    }

    result = memset(&v18 + v16, 61, 4 - v16);
LABEL_20:
    a2 += v15;
    *a4 = v18;
  }

  return result;
}

unint64_t base_x_get_encoded_string_length(int a1, unint64_t a2)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      if (a2 <= 0x1FFFFFFFFFFFFFFELL)
      {
        return (2 * (((a2 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64)) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else if (a2 <= 0x3FFFFFFFFFFFFFFELL)
    {
      return (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
    }

    return 0;
  }

  if (a2 > 0x1FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  result = 8 * (a2 / 5);
  v3 = a2 % 5;
  if ((a2 % 5) <= 1)
  {
    if (v3)
    {
      result |= 2uLL;
    }
  }

  else if (v3 == 2)
  {
    result |= 4uLL;
  }

  else if (v3 == 3)
  {
    result |= 5uLL;
  }

  else
  {
    result |= 7uLL;
  }

  return result;
}

unsigned __int8 *base_32_hex_encode(unsigned __int8 *result, uint64_t a2, char a3, char *__dst)
{
  v4 = &result[a2];
  if (&result[a2] > result)
  {
    v7 = result;
    do
    {
      v22 = 0;
      v8 = v4 - v7;
      if (v4 - v7 > 2)
      {
        if (v8 == 4)
        {
          v15 = 0;
          goto LABEL_13;
        }

        if (v8 == 3)
        {
          v13 = v7[2];
          v10 = (v13 << 16) | (v7[1] << 24);
          v14 = *v7;
          v7 += 3;
          v12 = v10 | (v14 << 32);
          BYTE4(v22) = b32_hex_table[2 * (v13 & 0xF)];
          v9 = 5;
          goto LABEL_22;
        }
      }

      else
      {
        if (v8 == 1)
        {
          v16 = 0;
          v17 = *v7++;
          v12 = v17 << 32;
          goto LABEL_25;
        }

        if (v8 == 2)
        {
          v9 = 0;
          v10 = v7[1] << 24;
          v11 = *v7;
          v7 += 2;
          v12 = v10 | (v11 << 32);
          goto LABEL_22;
        }
      }

      v15 = v7[4];
LABEL_13:
      v18 = v7[3];
      v19 = v15 | (v18 << 8);
      v10 = (v7[1] << 24) | (v7[2] << 16) | v19;
      v12 = v10 | (*v7 << 32);
      if (v8 >= 5)
      {
        v20 = 5;
      }

      else
      {
        v20 = v4 - v7;
      }

      v7 += v20;
      if (v8 == 1)
      {
        v16 = 0;
        goto LABEL_25;
      }

      if (v8 == 4)
      {
        v9 = 7;
      }

      else
      {
        HIBYTE(v22) = b32_hex_table[v15 & 0x1F];
        v9 = 8;
      }

      v21 = b32_hex_table[(v18 >> 2) & 0x1F];
      BYTE6(v22) = b32_hex_table[(v19 >> 5) & 0x1F];
      BYTE5(v22) = v21;
      BYTE4(v22) = b32_hex_table[(v10 >> 15) & 0x1F];
LABEL_22:
      BYTE3(v22) = b32_hex_table[(v10 >> 20) & 0x1F];
      BYTE2(v22) = b32_hex_table[(v10 >> 25) & 0x1F];
      if (v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = 4;
      }

LABEL_25:
      BYTE1(v22) = b32_hex_table[(v12 >> 30) & 0x1F];
      LOBYTE(v22) = b32_hex_table[v12 >> 35];
      if (v16)
      {
        if ((a3 & 1) == 0)
        {
          if (v16 <= 7)
          {
LABEL_30:
            memset(&v22 + v16, 61, 8 - v16);
          }

          v16 = 8;
        }
      }

      else
      {
        v16 = 2;
        if ((a3 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      result = memcpy(__dst, &v22, v16);
      __dst += v16;
    }

    while (v7 < v4);
  }

  return result;
}

uint64_t get_tlv_uint32(unsigned __int8 *a1, uint64_t a2, int a3, int *a4)
{
  do
  {
    if (a2 - a1 < 4)
    {
      goto LABEL_9;
    }

    v4 = a1;
    result = 0;
    v6 = -1;
    v7 = (v4 + 2);
    if (v4 == -4)
    {
      goto LABEL_10;
    }

    v8 = __rev16(v4[1]);
    if (a2 - v7 < v8)
    {
      goto LABEL_10;
    }

    a1 = &v7[v8];
  }

  while (a3 != bswap32(*v4) >> 16);
  switch(v8)
  {
    case 4:
      v6 = 0;
      result = bswap32(*(v4 + 1));
      break;
    case 2:
      v6 = 0;
      result = __rev16(v4[2]);
      break;
    case 1:
      v6 = 0;
      result = *v7;
      break;
    default:
LABEL_9:
      result = 0;
      v6 = -1;
      break;
  }

LABEL_10:
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

void _dns_push_obj_context_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    ref_count_obj_release(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    ref_count_obj_release(v3);
    a1[3] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    os_release(v4);
    a1[7] = 0;
  }

  if (a1[4])
  {
    DNSServiceManager = Querier_GetDNSServiceManager();
    if (DNSServiceManager)
    {
      v6 = a1[4];

      mdns_dns_service_manager_deregister_discovered_push_service(DNSServiceManager, v6);
    }
  }
}

void dns_push_obj_context_set_interface_monitor(uint64_t a1, void *object)
{
  if (object)
  {
    os_retain(object);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    os_release(v4);
  }

  *(a1 + 56) = object;
}

void __mdns_mach_ticks_per_second_block_invoke(id a1)
{
  v1 = 1000000000;
  info = 0;
  v2 = mach_timebase_info(&info);
  if (v2 || (info.numer ? (v3 = info.denom == 0) : (v3 = 1), v3))
  {
    if (_mdns_ticks_log_s_once != -1)
    {
      dispatch_once(&_mdns_ticks_log_s_once, &__block_literal_global_3);
    }

    v4 = _mdns_ticks_log_s_log;
    if (os_log_type_enabled(_mdns_ticks_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v7 = v2;
      v8 = 1024;
      numer = info.numer;
      v10 = 1024;
      denom = info.denom;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected results from mach_timebase_info: err %d numer %u denom %u", buf, 0x14u);
    }
  }

  else
  {
    v1 = 1000000000 * info.denom / info.numer;
  }

  mdns_mach_ticks_per_second_s_ticks_per_second = v1;
}

unint64_t mdns_ticks_to_milliseconds(unint64_t a1)
{
  if (mdns_mach_ticks_per_second_s_once != -1)
  {
    dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
  }

  return 1000 * (a1 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second + 1000 * (a1 / mdns_mach_ticks_per_second_s_ticks_per_second);
}

uint64_t getLocalTimestampFromTimeval(uint64_t a1, char *a2)
{
  memset(&v7, 0, sizeof(v7));
  *v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  *v5 = 0;
  localtime_r(a1, &v7);
  strftime(v8, 0x14uLL, "%F %T", &v7);
  strftime(v5, 6uLL, "%z", &v7);
  return snprintf(a2, 0x20uLL, "%s.%03d%s", v8, *(a1 + 8) / 1000, v5);
}

void FlushRecordCache(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v27, 0, sizeof(v27));
  AppendDNSNameString(v27, a1, a3, a4, a5, a6, a7, a8);
  v8 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v8, v9, v10, v11, v12, v13, v14, v15);
  mDNS_Lock_(mDNSStorage, "FlushRecordCache", 9432);
  for (i = 0; i != 499; ++i)
  {
    for (j = mDNSStorage[i + 34]; j; j = *j)
    {
      v18 = j[4];
      if (v18)
      {
        if (SameDomainNameBytes(v18, v27))
        {
          for (k = j[2]; k; k = *k)
          {
            mDNS_PurgeCacheResourceRecord(mDNSStorage, k);
          }
        }
      }
    }
  }

  mDNS_Unlock_(mDNSStorage, "FlushRecordCache", 9443);
  KQueueUnlock("FlushRecordCache", v20, v21, v22, v23, v24, v25, v26);
}

void NotifyOfElusiveBug(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *mDNSStorage;
  if (*mDNSStorage)
  {
    while (*(v8 + 3560) != 4 || *(v8 + 3564) != 17)
    {
      v8 = *(v8 + 3680);
      if (!v8)
      {
        return;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NotifyOfElusiveBug: %s", a4, a5, a6, a7, a8, a1);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NotifyOfElusiveBug: %s", v10, v11, v12, v13, v14, a2);
    if (mDNSPlatformRawTime() <= 0x2BF1F)
    {
      v15 = mDNSLogCategory_Default;
      v16 = mDNSPlatformRawTime();
      LogMsgWithLevel(v15, OS_LOG_TYPE_DEFAULT, "Suppressing notification early in boot: %d", v17, v18, v19, v20, v21, v16);
    }
  }
}

void EnumerateLocalRecords(uint64_t a1)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_cf_set_callbacks);
  v3 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v3, v4, v5, v6, v7, v8, v9, v10);
  v18 = xmmword_100170360;
  if (Mutable)
  {
    v19 = xmmword_100170360 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      if (IsSubdomain(v18[5], "\x05local") && ((v18[1] & 0x32) != 0 || IsSubdomain(v18[5], "\f_device-info\x04_tcp\x05local")))
      {
        v20 = mdns_domain_name_create_with_labels(v18[5], 0);
        if (v20)
        {
          v21 = v20;
          CFSetAddValue(Mutable, v20);
          os_release(v21);
        }
      }

      v18 = *v18;
    }

    while (v18);
  }

  for (i = 0; i != 499; ++i)
  {
    v23 = mDNSStorage[i + 34];
    if (!v23)
    {
      continue;
    }

    do
    {
      v24 = *(v23 + 32);
      if (!v24)
      {
        goto LABEL_65;
      }

      if (!IsSubdomain(v24, "\x05local"))
      {
        goto LABEL_65;
      }

      v25 = mdns_domain_name_create_with_labels(*(v23 + 32), 0);
      if (!v25)
      {
        goto LABEL_65;
      }

      v26 = v25;
      if (Mutable && CFSetContainsValue(Mutable, v25))
      {
        goto LABEL_64;
      }

      v27 = IsSubdomain(*(v23 + 32), "\f_device-info\x04_tcp\x05local");
      v28 = *(v23 + 16);
      if (!v28)
      {
        goto LABEL_64;
      }

      LOBYTE(v29) = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = *(v28 + 6);
        if (v32 == 47)
        {
          goto LABEL_48;
        }

        v33 = v28 + 33;
        if (v27)
        {
          if (v32 == 16)
          {
            v34 = (v28 + 1);
            if (*(v28 + 8) != 240)
            {
              goto LABEL_55;
            }
          }
        }

        if (!v30)
        {
          break;
        }

        if (!v29)
        {
          v29 = 0;
          v33 = v30;
          goto LABEL_45;
        }

        if (*v33 == 6)
        {
          if (*(v28 + 136) != 254 || (*(v28 + 137) & 0xC0) != 0x80)
          {
            goto LABEL_44;
          }
        }

        else if (*v33 != 4 || *(v28 + 136) != 169 || *(v28 + 137) != 254)
        {
          goto LABEL_44;
        }

        v31 = 1;
        LOBYTE(v29) = 1;
LABEL_48:
        v28 = *v28;
        if (!v28)
        {
          if (!v31)
          {
            goto LABEL_64;
          }

          v34 = 0;
          memset(v38, 0, sizeof(v38));
          v39 = 0;
          if (v30)
          {
            goto LABEL_56;
          }

          goto LABEL_62;
        }
      }

      if (*v33 != 6)
      {
        if (*v33 != 4)
        {
          v30 = 0;
          v31 = 1;
          goto LABEL_48;
        }

        if (*(v28 + 136) == 169)
        {
          v35 = *(v28 + 137) == 254;
          goto LABEL_41;
        }

LABEL_44:
        v29 = 0;
        goto LABEL_45;
      }

      if (*(v28 + 136) != 254)
      {
        goto LABEL_44;
      }

      v35 = (*(v28 + 137) & 0xC0) == 128;
LABEL_41:
      v29 = v35;
LABEL_45:
      v31 = 1;
      if (v27 || v29)
      {
        v30 = v33;
        goto LABEL_48;
      }

      v34 = 0;
LABEL_55:
      memset(v38, 0, sizeof(v38));
      v39 = 0;
      v30 = v33;
LABEL_56:
      if (*v30 == 6)
      {
        memset(v38 + 4, 0, 20);
        LODWORD(v38[0]) = 7708;
        v39 = 0;
        *&v38[1] = *(v30 + 1);
        if (v34)
        {
LABEL_60:
          v37 = *(v34 + 12);
          v34 = *(v34 + 40) + 4;
          goto LABEL_63;
        }
      }

      else
      {
        if (*v30 == 4)
        {
          v36 = v30[1];
          v38[1] = 0;
          LODWORD(v38[0]) = 528;
          HIDWORD(v38[0]) = v36;
        }

        if (v34)
        {
          goto LABEL_60;
        }
      }

LABEL_62:
      v37 = 0;
LABEL_63:
      (*(a1 + 16))(a1, v26[5], v34, v37, v38);
LABEL_64:
      os_release(v26);
LABEL_65:
      v23 = *v23;
    }

    while (v23);
  }

  KQueueUnlock("enumerate .local records", v11, v12, v13, v14, v15, v16, v17);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void LogFatalError(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  memset(__b, 0, sizeof(__b));
  mDNS_vsnprintf(__b, 512, a1, &a9);
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "!!!! %s !!!!", v9, v10, v11, v12, v13, __b);
}

void __mDNSDynamicStoreSetConfig_block_invoke(uint64_t a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = CFWriteStreamCreateWithAllocatedBuffers(0, 0);
  v16 = v10;
  if (!v10)
  {
    v34 = mDNSLogCategory_Default;
    v35 = "mDNSDynamicStoreSetConfig : CFWriteStreamCreateWithAllocatedBuffers failed (Object creation failed)";
LABEL_11:
    LogMsgWithLevel(v34, OS_LOG_TYPE_DEFAULT, v35, v11, v12, v13, v14, v15, v63);
    v22 = 0;
    goto LABEL_39;
  }

  CFWriteStreamOpen(v10);
  if (!CFPropertyListWrite(*(a1 + 32), v16, kCFPropertyListBinaryFormat_v1_0, 0, 0))
  {
    v34 = mDNSLogCategory_Default;
    v35 = "mDNSDynamicStoreSetConfig : CFPropertyListWriteToStream failed (Could not write property list to stream)";
    goto LABEL_11;
  }

  v22 = CFWriteStreamCopyProperty(v16, kCFStreamPropertyDataWritten);
  if (!v22)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSDynamicStoreSetConfig : CFWriteStreamCopyProperty failed (Object creation failed) ", v17, v18, v19, v20, v21, v63);
    goto LABEL_39;
  }

  CFWriteStreamClose(v16);
  CFRelease(v16);
  BytePtr = CFDataGetBytePtr(v22);
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  Length = CFDataGetLength(v22);
  if (v24 > 3)
  {
    switch(v24)
    {
      case 4:
        v32 = 0;
        Copy = @"State:/Network/BackToMyMac";
        break;
      case 5:
        if (v25)
        {
          v43 = v25;
        }

        else
        {
          v43 = "";
        }

        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
        CFStringAppend(Mutable, @"State:/Network/Interface/");
        CFStringAppendCString(Mutable, v43, 0x8000100u);
        CFStringAppend(Mutable, @"/SleepProxyServers");
        Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v32 = 1;
        break;
      case 6:
        v32 = 0;
        Copy = @"State:/Network/mDNSResponder/DebugState";
        break;
      default:
        goto LABEL_19;
    }

LABEL_27:
    v45 = CFDataCreateWithBytesNoCopy(0, BytePtr, Length, kCFAllocatorNull);
    if (v45)
    {
      v51 = v45;
      v52 = CFPropertyListCreateWithData(0, v45, 0, 0, 0);
      if (v52)
      {
        v58 = v52;
        CFRelease(v51);
        SCDynamicStoreSetValue(0, Copy, v58);
        v59 = v58;
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CFPropertyListCreateWithData of bytes failed", v53, v54, v55, v56, v57, v63);
        v59 = v51;
      }

      CFRelease(v59);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CFDataCreateWithBytesNoCopy of value failed", v46, v47, v48, v49, v50, v63);
    }

    if (Copy)
    {
      v60 = v32;
    }

    else
    {
      v60 = 0;
    }

    if (v60 == 1)
    {
      CFRelease(Copy);
    }

    goto LABEL_38;
  }

  switch(v24)
  {
    case 1:
      v32 = 0;
      Copy = @"State:/Network/MulticastDNS";
      goto LABEL_27;
    case 2:
      v32 = 0;
      Copy = @"State:/Network/DynamicDNS";
      goto LABEL_27;
    case 3:
      v32 = 0;
      Copy = @"State:/Network/PrivateDNS";
      goto LABEL_27;
  }

LABEL_19:
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "unrecognized key %d", v26, v27, v28, v29, v30, v24);
LABEL_38:
  v16 = 0;
LABEL_39:
  v61 = *(a1 + 32);
  if (v61)
  {
    CFRelease(v61);
  }

  if (v16)
  {
    CFWriteStreamClose(v16);
    CFRelease(v16);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v62 = *(a1 + 40);
  if (v62)
  {
    free(v62);
  }

  KQueueUnlock("mDNSDynamicStoreSetConfig", v36, v37, v38, v39, v40, v41, v42);
}

void SetNetworkChanged(int a1)
{
  mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "SetNetworkChanged", 6391);
  v2 = dword_10016D220;
  v3 = dword_10016D258;
  v4 = dword_10016D258 + a1;
  if ((dword_10016D258 + a1) <= 1)
  {
    v4 = 1;
  }

  if (dword_10016D220)
  {
    v5 = dword_10016D220 - v4 < 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v10 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 67109376;
    v12 = v2 - v3;
    v13 = 1024;
    v14 = a1;
    v7 = "SetNetworkChanged: *NOT* increasing delay from %d to %d";
    v8 = v10;
    v9 = 14;
  }

  else
  {
    dword_10016D220 = v4;
    v6 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 67109120;
    v12 = a1;
    v7 = "SetNetworkChanged: Scheduling in %d ticks";
    v8 = v6;
    v9 = 8;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
}

uint64_t CountProxyTargets(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = xmmword_100170360;
  if (xmmword_100170360)
  {
    v12 = 0;
    do
    {
      if (v10[4] == *(a1 + 3552) && *(v10 + 36) == 4)
      {
        if (a2 && mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CountProxyTargets: fd %d %-7s IP%2d %.4a", a4, a5, a6, a7, a8, *(a1 + 3732));
        }

        ++v12;
      }

      v10 = *v10;
    }

    while (v10);
    v13 = xmmword_100170360;
    if (xmmword_100170360)
    {
      v14 = 0;
      do
      {
        if (v13[4] == *(a1 + 3552) && *(v13 + 36) == 6)
        {
          if (a3 && mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CountProxyTargets: fd %d %-7s IP%2d %.16a", a4, a5, a6, a7, a8, *(a1 + 3732));
          }

          ++v14;
        }

        v13 = *v13;
      }

      while (v13);
      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
  if (a2)
  {
LABEL_20:
    *a2 = v12;
  }

LABEL_21:
  if (a3)
  {
    *a3 = v14;
  }

  return (v14 + v12);
}

uint64_t CloseBPF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (mDNS_LoggingEnabled == 1)
  {
    v13 = *(a1 + 3732);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s closing BPF fd %d", a4, a5, a6, a7, a8, a1 + 3606);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopRemoveSource(Main, *(a1 + 3760), kCFRunLoopDefaultMode);
  v10 = *(a1 + 3760);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 3760) = 0;
  }

  CFSocketInvalidate(*(a1 + 3752));
  v11 = *(a1 + 3752);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 3752) = 0;
  }

  *(a1 + 3732) = -1;
  result = *(a1 + 3736);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 3736) = -1;
  }

  return result;
}

void mDNSPlatformUpdateProxyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
LABEL_5:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: ERROR InterfaceID %p not found", a4, a5, a6, a7, a8, a1);
    return;
  }

  while (*(v9 + 3552) != a1 || (*(v9 + 3732) & 0x80000000) != 0)
  {
    v9 = *(v9 + 3680);
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v96 = 0;
  v95 = 0;
  v10 = CountProxyTargets(v9, &v96, &v95, a4, a5, a6, a7, a8);
  v16 = v96;
  v17 = v95;
  if (v10 >= 251)
  {
    v87 = v95;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: ERROR Too many address proxy records v4 %d v6 %d", v11, v12, v13, v14, v15, v96);
    v16 = v96;
    if (v96 >= 251)
    {
      v16 = 250;
      v96 = 250;
    }

    v17 = (250 - v16);
    v95 = 250 - v16;
  }

  v18 = &unk_10016D000;
  if (mDNS_LoggingEnabled == 1)
  {
    v89 = v16;
    v90 = v17;
    v87 = v9 + 3606;
    v88 = (v9 + 3600);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: fd %d %-7s MAC  %.6a %d v4 %d v6", v11, v12, v13, v14, v15, *(v9 + 3732));
    LODWORD(v16) = v96;
    LODWORD(v17) = v95;
  }

  v93 = 0;
  v94 = 0;
  if (v16 | v17)
  {
    v19 = qword_10016015C;
    v20 = &qword_10016015C[v16];
    v21 = &v20[v17];
    v22 = v21 + 2;
    byte_100160137 = (v21 + 16 - &mDNSPlatformUpdateProxyList_filter - 40) >> 3;
    byte_100160147 = (v20 - &mDNSPlatformUpdateProxyList_filter - 48) >> 3;
    v23 = xmmword_100170360;
    if (xmmword_100170360)
    {
      v19 = qword_10016015C;
      do
      {
        if (v23[4] == a1 && *(v23 + 36) == 4)
        {
          v24 = *(v23 + 37);
          *v19 = 21;
          *(v19 + 1) = ((v22 - v19) >> 3);
          *(v19++ + 1) = bswap32(v24);
        }

        v23 = *v23;
      }

      while (v23);
    }

    *v19 = 6;
    if (v19 != v20)
    {
      v87 = (v20 + 1);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: pc %p != chk6 %p", v11, v12, v13, v14, v15, v19 + 8);
    }

    v25 = v19 + 2;
    v19[1] = 0x3200000020;
    v26 = *(v9 + 3736);
    if ((v26 & 0x80000000) == 0)
    {
      close(v26);
    }

    v27 = v21 + 7;
    *(v9 + 3736) = socket(30, 2, 0);
    v33 = xmmword_100170360;
    if (xmmword_100170360)
    {
      v34 = v21 + 48;
      do
      {
        if (v33[4] == a1 && *(v33 + 36) == 6)
        {
          *v25 = 21;
          *(v25 + 2) = (v34 - v25) >> 3;
          *(v25 + 3) = 0;
          *(v25 + 1) = bswap32(*(v33 + 40));
          v92 = *(v9 + 3720);
          v91 = NDP_prefix;
          *(&v91 + 13) = *(v33 + 161);
          HIBYTE(v91) = *(v33 + 163);
          v35 = setsockopt(*(v9 + 3736), 41, 13, &v91, 0x14u);
          if (v35 < 0)
          {
            v36 = v35;
            if (*__error() != 49)
            {
              v37 = mDNSLogCategory_Default;
              v38 = *__error();
              v39 = __error();
              v40 = strerror(*v39);
              v90 = v92;
              v88 = v40;
              v89 = &v91;
              v87 = v38;
              v41 = v37;
              v18 = &unk_10016D000;
              LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: IPV6_LEAVE_GROUP error %d errno %d (%s) group %.16a on %u", v42, v43, v44, v45, v46, v36);
            }
          }

          v47 = setsockopt(*(v9 + 3736), 41, 12, &v91, 0x14u);
          if (v47 < 0)
          {
            v48 = v47;
            if (*__error() != 48)
            {
              v49 = mDNSLogCategory_Default;
              v50 = *__error();
              v51 = __error();
              v52 = strerror(*v51);
              v90 = v92;
              v88 = v52;
              v89 = &v91;
              v87 = v50;
              v53 = v49;
              v18 = &unk_10016D000;
              LogMsgWithLevel(v53, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: IPV6_JOIN_GROUP error %d errno %d (%s) group %.16a on %u", v54, v55, v56, v57, v58, v48);
            }
          }

          if (v18[208] == 1)
          {
            v87 = v33 + 148;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Joined IPv6 ND multicast group %.16a for %.16a", v28, v29, v30, v31, v32, &v91);
          }

          ++v25;
        }

        v33 = *v33;
      }

      while (v33);
    }

    if (v25 == v22)
    {
      *v22 = xmmword_10010D2E0;
      *(v22 + 1) = xmmword_10010D2F0;
      v22[4] = 22;
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: pc %p != fail %p", v28, v29, v30, v31, v32, v25);
      *v25 = 6;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: pc %p != ret4 %p", v59, v60, v61, v62, v63, v25 + 8);
      *(v25 + 1) = xmmword_10010D2C0;
      *(v25 + 3) = xmmword_10010D2D0;
      v87 = v27;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: pc %p != ret6 %p", v64, v65, v66, v67, v68, v25 + 40);
      v27 = v25 + 5;
    }

    *v27 = 0x5E00000006;
    LODWORD(v93) = (v25 - &mDNSPlatformUpdateProxyList_filter + 48) >> 3;
    v94 = &mDNSPlatformUpdateProxyList_filter;
    v71 = *(v9 + 3732);
    goto LABEL_54;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: No need for filter", v11, v12, v13, v14, v15, v86);
  }

  if (!dword_10016D258)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: m->timenow == 0", v11, v12, v13, v14, v15, v86);
  }

  v69 = *(v9 + 3736);
  if ((v69 & 0x80000000) == 0)
  {
    close(v69);
    *(v9 + 3736) = -1;
  }

  if (!dword_10016D220)
  {
    v70 = dword_10016D258 + 2000;
    if ((dword_10016D258 + 2000) <= 1)
    {
      v70 = 1;
    }

    dword_10016D220 = v70;
  }

  v71 = *(v9 + 3732);
  if ((v71 & 0x80000000) == 0)
  {
    LODWORD(v93) = 1;
    v94 = &mDNSPlatformUpdateProxyList_nullfilter;
LABEL_54:
    if (ioctl(v71, 0x8010427EuLL, &v93, v87, v88, v89, v90) < 0)
    {
      v77 = mDNSLogCategory_Default;
      v78 = v93;
      v79 = *__error();
      v80 = __error();
      strerror(*v80);
      LogMsgWithLevel(v77, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: BIOCSETFNR(%d) failed %d (%s)", v81, v82, v83, v84, v85, v78);
    }

    else if (v18[208] == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateProxyList: BIOCSETFNR(%d) successful", v72, v73, v74, v75, v76, v93);
    }
  }
}

void bpf_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v6, v7, v8, v9, v10, v11, v12, v13);
  v21 = *(a5 + 3732);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = read(v21, (*(a5 + 3688) + 20008), *(a5 + 3740));
    if (v22 < 0)
    {
      v76 = __error();
      v82 = mDNSLogCategory_Default;
      if (*v76 == 35)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "bpf_callback got EAGAIN bailing", v77, v78, v79, v80, v81, v98);
      }

      else
      {
        v83 = *(a5 + 3732);
        v84 = *__error();
        v85 = __error();
        strerror(*v85);
        LogMsgWithLevel(v82, OS_LOG_TYPE_DEFAULT, "Closing %s BPF fd %d due to error %d (%s)", v86, v87, v88, v89, v90, a5 + 3606);
        CloseBPF(a5, v91, v92, v93, v94, v95, v96, v97);
      }
    }

    else
    {
      v23 = *(a5 + 3688) + 20008;
      v24 = v23 + v22;
      while (v23 < v24)
      {
        v25 = *(a5 + 3688);
        v26 = v23 + *(v23 + 16);
        v20 = v26 + *(v23 + 8);
        v27 = *(a5 + 3552);
        v28 = (v26 + 14);
        memset(v111, 0, 20);
        memset(v110, 0, 20);
        if (v26 + 42 <= v20 && *(v26 + 12) == 1544 && *v28 == 256 && *(v26 + 16) == 8)
        {
          v29 = v25 + 12656;
          do
          {
            v29 = *v29;
            if (!v29)
            {
              goto LABEL_57;
            }
          }

          while (*(v29 + 3552) != v27);
          mDNS_Lock_(v25, "mDNSCoreReceiveRawARP", 18059);
          if (*(v26 + 20) == 256)
          {
            v30 = (v26 + 38);
            if (*(v26 + 28) != *(v26 + 38))
            {
              v31 = *(v25 + 12616);
              if (v31)
              {
                v105 = (v26 + 22);
                v101 = (v25 + 47032);
                do
                {
                  if (*(v31 + 32) == v27 && *(v31 + 8) != 1 && *(v31 + 144) == 4 && *(v31 + 148) == *v30)
                  {
                    v32 = *v105;
                    if (v32 != *(v31 + 132) || *(v26 + 24) != *(v31 + 134) || (v33 = "ARP Req from owner -- re-probing", *(v26 + 26) != *(v31 + 136)))
                    {
                      v33 = "Ignoring  ARP Request from      ";
                      if (*(v31 + 191) != 4)
                      {
                        if (v32 == *(v29 + 3600) && *(v26 + 24) == *(v29 + 3602))
                        {
                          if (*(v26 + 26) == *(v29 + 3604))
                          {
                            v33 = "Creating Local ARP Cache entry  ";
                          }

                          else
                          {
                            v33 = "Answering ARP Request from      ";
                          }
                        }

                        else
                        {
                          v33 = "Answering ARP Request from      ";
                        }
                      }
                    }

                    v107 = v33;
                    v102 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb((v31 + 8), (*(v31 + 48) + 4), v101);
                    LogMsgWithLevel(v102, OS_LOG_TYPE_DEFAULT, "Arp %-7s %s %.6a %.4a for %.4a -- H-MAC %.6a I-MAC %.6a %s", v34, v35, v36, v37, v38, v29 + 3606);
                    if (v33 == "ARP Req from owner -- re-probing")
                    {
                      if (*(v31 + 189) > 0x13u)
                      {
                        v30 = (v26 + 38);
                        if (mDNS_LoggingEnabled == 1)
                        {
                          v108 = mDNSLogCategory_Default;
                          GetRRDisplayString_rdb((v31 + 8), (*(v31 + 48) + 4), v101);
                          LogMsgWithLevel(v108, OS_LOG_TYPE_DEFAULT, "Reached maximum number of restarts for probing - %s", v45, v46, v47, v48, v49, v101);
                        }

                        goto LABEL_37;
                      }

                      RestartARPProbing(v25, v31);
                    }

                    else
                    {
                      if (v33 != "Creating Local ARP Cache entry  ")
                      {
                        v30 = (v26 + 38);
                        if (v107 == "Answering ARP Request from      ")
                        {
                          v44 = *(v26 + 38);
                          v112 = *(v26 + 28);
                          v113[0] = v44;
                          SendARP(v25, 2, v31, v113, v105, &v112, v105);
                        }

                        goto LABEL_37;
                      }

                      mDNSPlatformSetLocalAddressCacheEntry((v31 + 144), (v31 + 132), v27, v39, v40, v41, v42, v43, v99);
                    }

                    v30 = (v26 + 38);
                  }

LABEL_37:
                  v31 = *v31;
                }

                while (v31);
              }
            }
          }

          if (*(v26 + 22) != *(v29 + 3600) || *(v26 + 24) != *(v29 + 3602) || *(v26 + 26) != *(v29 + 3604))
          {
            v53 = (v26 + 28);
            if (*(v26 + 28))
            {
              v54 = *(v25 + 12616);
              if (v54)
              {
                v55 = v29 + 3606;
                v106 = (v25 + 47032);
                do
                {
                  if (*(v54 + 32) == v27 && *(v54 + 8) != 1 && *(v54 + 144) == 4 && *(v54 + 148) == *v53 && *(v54 + 189) <= 0x13u)
                  {
                    if (*(v54 + 126) || *(v54 + 128) || *(v54 + 130))
                    {
                      RestartARPProbing(v25, v54);
                      if (*(v26 + 22) == *(v54 + 132) && *(v26 + 24) == *(v54 + 134) && *(v26 + 26) == *(v54 + 136))
                      {
                        if (*v53 != *(v26 + 38))
                        {
                          *(v26 + 20);
                        }

                        v109 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v54 + 8), (*(v54 + 48) + 4), v106);
                        LogMsgWithLevel(v109, OS_LOG_TYPE_DEFAULT, "%-7s ARP %s from owner %.6a %.4a for %-15.4a -- re-starting probing for %s", v56, v57, v58, v59, v60, v55);
                      }

                      else
                      {
                        v103 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v54 + 8), (*(v54 + 48) + 4), v106);
                        LogMsgWithLevel(v103, OS_LOG_TYPE_DEFAULT, "%-7s Conflicting ARP from %.6a %.4a for %.4a -- waking H-MAC %.6a I-MAC %.6a %s", v61, v62, v63, v64, v65, v55);
                        ScheduleWakeup(v25, *(v54 + 32), (v54 + 126), v66, v67, v68, v69, v70, v100);
                      }
                    }

                    else
                    {
                      v104 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v54 + 8), (*(v54 + 48) + 4), v106);
                      LogMsgWithLevel(v104, OS_LOG_TYPE_DEFAULT, "%-7s ARP from %.6a %.4a for %.4a -- Invalid H-MAC %.6a I-MAC %.6a %s", v71, v72, v73, v74, v75, v55);
                    }
                  }

                  v54 = *v54;
                }

                while (v54);
              }
            }
          }

          mDNS_Unlock_(v25, "mDNSCoreReceiveRawARP", 18146);
        }

        else if (v26 + 34 > v20 || *(v26 + 12) != 8 || (*(v26 + 20) & 0x1F) != 0 || *(v26 + 21))
        {
          v19 = (v26 + 54);
          if (v26 + 54 <= v20 && *(v26 + 12) == 56710)
          {
            LODWORD(v111[0]) = 6;
            *(v111 + 4) = *(v26 + 22);
            LODWORD(v110[0]) = 6;
            *(v110 + 4) = *(v26 + 38);
            v17 = *(v26 + 20);
            v50 = 24;
            if (v17 != 58)
            {
              v50 = 0;
            }

            if (v17 == 17)
            {
              v50 = 8;
            }

            if (v17 == 6)
            {
              v50 = 20;
            }

            if (v17 == 1)
            {
              v50 = 4;
            }

            if (v19 + v50 <= v20)
            {
              mDNSCoreReceiveRawTransportPacket(v25, (v26 + 6), v111, v110, v17, v26, v19, v20, v27, bswap32(*(v26 + 18)) >> 16);
            }
          }
        }

        else
        {
          v19 = &v28[2 * (*(v26 + 14) & 0xF)];
          v51 = v28 + (bswap32(*(v26 + 16)) >> 16);
          if (v51 <= v20)
          {
            v20 = v51;
          }

          LODWORD(v111[0]) = 4;
          HIDWORD(v111[0]) = *(v26 + 26);
          LODWORD(v110[0]) = 4;
          HIDWORD(v110[0]) = *(v26 + 30);
          v17 = *(v26 + 23);
          v52 = 24;
          if (v17 != 58)
          {
            v52 = 0;
          }

          if (v17 == 17)
          {
            v52 = 8;
          }

          if (v17 == 6)
          {
            v52 = 20;
          }

          if (v17 == 1)
          {
            v52 = 4;
          }

          if (v20 >= v19 + v52)
          {
            mDNSCoreReceiveRawTransportPacket(v25, (v26 + 6), v111, v110, v17, v26, v19, v20, v27, 0);
          }
        }

LABEL_57:
        v23 += (*(v23 + 8) + *(v23 + 16) + 3) & 0x1FFFFFFFCLL;
      }
    }
  }

  KQueueUnlock("bpf_callback", v14, v15, v16, v17, v18, v19, v20);
}

uint64_t CountMaskBits(int *a1)
{
  v2 = 0;
  result = 0;
  v5 = *a1;
  v4 = a1 + 1;
  v6 = 16 * (v5 == 6);
  v7 = 4;
  if (v5 != 4)
  {
    v7 = v6;
  }

  while (v2 != v7)
  {
    v8 = *(v4 + v2);
    if (v8 < 0)
    {
      do
      {
        result = (result + 1);
        v9 = 2 * v8;
        v8 = (2 * v8);
      }

      while (v9 < 0);
    }

    ++v2;
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void mDNSGroupJoinOrLeave(int a1, uint64_t a2, int a3)
{
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  memset(&v37[1], 0, 32);
  v6 = *(a2 + 3720);
  v37[0] = v6;
  v7 = *(a2 + 3730);
  if (v7 != 30)
  {
    if (v7 != 2)
    {
      v12 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v13 = "join";
        v27 = 136446978;
        if (!a3)
        {
          v13 = "leave";
        }
      }

      else
      {
        v12 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v13 = "join";
        v27 = 136446978;
        if (!a3)
        {
          v13 = "leave";
        }
      }

      v28 = v13;
      v29 = 2082;
      *v30 = a2 + 3606;
      *&v30[8] = 1024;
      *&v30[10] = v6;
      v31 = 1024;
      *v32 = v7;
      v22 = "Cannot %{public}s mcast group on %{public}s (%u) for unrecognized address family %d";
      v23 = v12;
      v24 = 34;
LABEL_54:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, &v27, v24);
      return;
    }

    LOWORD(v37[1]) = 528;
    v37[2] = -83885856;
    v8 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "Join";
        v27 = 136447234;
        if (!a3)
        {
          v9 = "Leav";
        }

        goto LABEL_24;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "Join";
        v27 = 136447234;
        if (!a3)
        {
          v9 = "Leav";
        }

LABEL_24:
        v28 = v9;
        v29 = 1042;
        *v30 = 4;
        *&v30[4] = 2098;
        *&v30[6] = &v37[2];
        v31 = 2082;
        *v32 = a2 + 3606;
        *&v32[8] = 1024;
        *&v32[10] = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}sing mcast group %{public, network:in_addr}.4P on %{public}s (%u)", &v27, 0x2Cu);
      }
    }

    v14 = 0;
    v15 = "";
    goto LABEL_31;
  }

  LOWORD(v37[1]) = 7708;
  *&v37[3] = xmmword_10010D748;
  v10 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Join";
      v27 = 136447234;
      if (!a3)
      {
        v11 = "Leav";
      }

      goto LABEL_29;
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Join";
      v27 = 136447234;
      if (!a3)
      {
        v11 = "Leav";
      }

LABEL_29:
      v28 = v11;
      v29 = 1042;
      *v30 = 16;
      *&v30[4] = 2098;
      *&v30[6] = &v37[3];
      v31 = 2082;
      *v32 = a2 + 3606;
      *&v32[8] = 1024;
      *&v32[10] = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}sing mcast group %{public, network:in6_addr}.16P on %{public}s (%u)", &v27, 0x2Cu);
    }
  }

  v14 = 41;
  v15 = "V6";
LABEL_31:
  if (a3)
  {
    v16 = 80;
  }

  else
  {
    v16 = 81;
  }

  v17 = setsockopt(a1, v14, v16, v37, 0x84u);
  if (v17)
  {
    if ((v18 = v17, v19 = *__error(), a3) && v19 != 48 || !a3 && v19 != 49)
    {
      v20 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        if (a3)
        {
          v21 = "JOIN";
        }

        else
        {
          v21 = "LEAVE";
        }
      }

      else
      {
        v20 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        if (a3)
        {
          v21 = "JOIN";
        }

        else
        {
          v21 = "LEAVE";
        }
      }

      v25 = strerror(v19);
      v26 = *(a2 + 3720);
      v27 = 136447746;
      v28 = v15;
      v29 = 2082;
      *v30 = v21;
      *&v30[8] = 1024;
      *&v30[10] = v18;
      v31 = 1024;
      *v32 = v19;
      *&v32[4] = 2080;
      *&v32[6] = v25;
      v33 = 2082;
      v34 = a2 + 3606;
      v35 = 1024;
      v36 = v26;
      v22 = "setsockopt - IPPROTO_IP%{public}s/MCAST_%{public}s_GROUP error %d errno %d (%s) on %{public}s (%u)";
      v23 = v20;
      v24 = 60;
      goto LABEL_54;
    }
  }
}

uint64_t getExtendedFlags(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v15 = mDNSLogCategory_Default;
    v16 = *__error();
    v17 = __error();
    strerror(*v17);
    LogMsgWithLevel(v15, OS_LOG_TYPE_DEFAULT, "getExtendedFlags: socket() call failed, errno = %d (%s)", v18, v19, v20, v21, v22, v16);
    return 0;
  }

  else
  {
    BYTE1(v24) = 2;
    if (!a1)
    {
      __break(1u);
    }

    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + v4);
      *(&v23 + v4) = v5;
      if (!v5)
      {
        break;
      }

      if (++v4 == 15)
      {
        HIBYTE(v23) = 0;
        break;
      }
    }

    if (ioctl(v2, 0xC020698EuLL, &v23) == -1)
    {
      v6 = mDNSLogCategory_Default;
      v7 = *__error();
      v8 = __error();
      strerror(*v8);
      LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "getExtendedFlags: SIOCGIFEFLAGS failed for %s, errno = %d (%s)", v9, v10, v11, v12, v13, a1);
      *&v24 = 0;
    }

    close(v3);
    return v24;
  }
}

CFIndex mDNSDomainLabelFromCFString(const __CFString *a1, _BYTE *a2)
{
  usedBufLen = 0;
  v6.length = CFStringGetLength(a1);
  v6.location = 0;
  result = CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, a2 + 1, 63, &usedBufLen);
  *a2 = usedBufLen;
  return result;
}

uint64_t CheckInterfaceSupport(uint64_t a1, const char *a2)
{
  v3 = IOBSDNameMatching(kIOMainPortDefault, 0, (a1 + 3606));
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v7 = RegistryEntrySearchCFPropertyAndIOObject(v5, v6, 0, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    memset(v10, 0, sizeof(v10));
    IOObjectGetClass(v5, v10);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  IOObjectRelease(v5);
  return v8;
}

uint64_t RegistryEntrySearchCFPropertyAndIOObject(io_object_t a1, const __CFString *a2, void *a3, io_registry_entry_t *a4)
{
  v7 = a1;
  IOObjectRetain(a1);
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v7, a2, kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      break;
    }

    parent = 0;
    if (IORegistryEntryGetParentEntry(v7, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v7);
    v7 = parent;
    if (!parent)
    {
      return 3758097088;
    }
  }

  if (a3)
  {
    *a3 = CFProperty;
    if (a4)
    {
LABEL_9:
      result = 0;
      *a4 = v7;
      return result;
    }
  }

  else
  {
    CFRelease(CFProperty);
    if (a4)
    {
      goto LABEL_9;
    }
  }

  IOObjectRelease(v7);
  return 0;
}

void mDNSPlatformSendRawPacket(void *__buf, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v23) = 0;
      v7 = "mDNSPlatformSendRawPacket: No InterfaceID specified";
    }

    else
    {
      v8 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v23) = 0;
      v7 = "mDNSPlatformSendRawPacket: No InterfaceID specified";
    }

    v11 = v8;
    v12 = 2;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v7, &v23, v12);
    return;
  }

  v4 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
LABEL_6:
    v5 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = 134217984;
      *v24 = a3;
      v7 = "mDNSPlatformSendRawPacket: Invalid interface index %p";
    }

    else
    {
      v5 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = 134217984;
      *v24 = a3;
      v7 = "mDNSPlatformSendRawPacket: Invalid interface index %p";
    }

    v11 = v5;
    v12 = 12;
    goto LABEL_26;
  }

  while (!*(v4 + 3768) || *(v4 + 3720) != a3)
  {
    v4 = *(v4 + 3680);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v14 = *(v4 + 3732);
  if (v14 < 0)
  {
    v16 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v16 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    v23 = 136446466;
    *v24 = v4 + 3606;
    *&v24[8] = 1024;
    *v25 = v14;
    v7 = "mDNSPlatformSendRawPacket: %{public}s BPF_fd %d not ready";
    v11 = v16;
    v12 = 18;
    goto LABEL_26;
  }

  if (write(*(v4 + 3732), __buf, a2 - __buf) < 0)
  {
    v15 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:
        v19 = *(v4 + 3732);
        v20 = *__error();
        v21 = __error();
        v22 = strerror(*v21);
        v23 = 67109634;
        *v24 = v19;
        *&v24[4] = 1024;
        *&v24[6] = v20;
        *v25 = 2082;
        *&v25[2] = v22;
        v7 = "mDNSPlatformSendRawPacket: BPF write(%d) failed %d (%{public}s)";
        v11 = v15;
        v12 = 24;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }
  }
}

void mDNSPlatformSetLocalAddressCacheEntry(int *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3)
  {
    v9 = a3;
    v10 = *mDNSStorage[0];
    if (*mDNSStorage[0])
    {
      while (!*(v10 + 3768) || *(v10 + 3720) != a3)
      {
        v10 = *(v10 + 3680);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      if (mDNS_AddressIsLocalSubnet(mDNSStorage, a3, a1))
      {
        v19 = *a1;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSetLocalAddressCacheEntry: Using XPC IPC calling out to Helper: ifindex is [%d] family is [%d]", v14, v15, v16, v17, v18, v9);
        }

        v20 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v20, "HelperMode", 7uLL);
        xpc_dictionary_set_uint64(v20, "slace_ifindex", v9);
        xpc_dictionary_set_uint64(v20, "slace_family", v19);
        xpc_dictionary_set_data(v20, "slace_ip", a1 + 1, 0x10uLL);
        xpc_dictionary_set_data(v20, "slace_eth", a2, 6uLL);
        v26 = SendDict_ToServer(v20);
        if (v20)
        {
          xpc_release(v20);
        }

        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSetLocalAddressCacheEntry: Using XPC IPC returning error_code %d", v21, v22, v23, v24, v25, v26);
        }

        if (v26)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Set local address cache entry for %s %#a %.6a failed: %d", v21, v22, v23, v24, v25, v10 + 3606);
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Set local address cache entry for %s %#a %.6a", v21, v22, v23, v24, v25, v10 + 3606);
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Don't need address cache entry for %s %#a %.6a", v14, v15, v16, v17, v18, v10 + 3606);
      }
    }

    else
    {
LABEL_6:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetLocalAddressCacheEntry: Invalid interface index %p", a4, a5, a6, a7, a8, a3);
    }
  }

  else
  {
    v13 = mDNSLogCategory_Default;

    LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetLocalAddressCacheEntry: No InterfaceID specified", a4, a5, a6, a7, a8, a9);
  }
}

void mDNSPlatformSendKeepalive(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSendKeepalive called\n", a4, a5, a6, a7, a8, v28);
  v20 = *a3;
  v21 = *a4;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendKeepalive: Using XPC IPC calling out to Helper: lport is[%d] rport is[%d] seq is[%d] ack is[%d] win is[%d]", v15, v16, v17, v18, v19, v20);
  }

  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v32 = 0;
  v29 = 0;
  inet_ntop(30, (a1 + 4), &v32, 0x2Eu);
  inet_ntop(30, (a2 + 4), &v29, 0x2Eu);
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendKeepalive: Using XPC IPC calling out to Helper: sadd is %s, dadd is %s", v22, v23, v24, v25, v26, &v32);
  }

  v27 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v27, "HelperMode", 8uLL);
  xpc_dictionary_set_data(v27, "send_keepalive_sadd", (a1 + 4), 0x10uLL);
  xpc_dictionary_set_data(v27, "send_keepalive_dadd", (a2 + 4), 0x10uLL);
  xpc_dictionary_set_uint64(v27, "send_keepalive_lport", v20);
  xpc_dictionary_set_uint64(v27, "send_keepalive_rport", v21);
  xpc_dictionary_set_uint64(v27, "send_keepalive_seq", v10);
  xpc_dictionary_set_uint64(v27, "send_keepalive_ack", v9);
  xpc_dictionary_set_uint64(v27, "send_keepalive_win", v8);
  SendDict_ToServer(v27);
  if (v27)
  {
    xpc_release(v27);
  }
}

uint64_t GetRemoteMacinternal(int a1, _DWORD *a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  __src = 0uLL;
  while (1)
  {
    memset(v46, 0, sizeof(v46));
    bzero(__buf, 0x25CuLL);
    v7 = socket(17, 3, 0);
    if (v7 < 0)
    {
      v12 = __error();
      v13 = *v12;
      v14 = mDNSLogCategory_Default;
      v15 = strerror(*v12);
      LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "getMACAddress: Can not open the socket - %s", v16, v17, v18, v19, v20, v15);
      goto LABEL_24;
    }

    v8 = v7;
    v48 = 0x300000000;
    __buf[1] = 4357;
    v50 = 6368;
    if (a1 == 2)
    {
      v9 = 0;
      LOWORD(v46[0]) = 528;
      DWORD1(v46[0]) = *a2;
      *v51 = v46[0];
      v10 = v46;
      v11 = &v51[16];
    }

    else
    {
      v10 = 0;
      if (a1 == 30)
      {
        LOWORD(v46[0]) = 7708;
        *(v46 + 8) = *a2;
        *v51 = v46[0];
        *&v51[12] = *(v46 + 12);
        v9 = v46;
        v11 = &v52;
      }

      else
      {
        v9 = 0;
        v11 = v51;
      }
    }

    *v11 = 4628;
    *(v11 + 10) = 0;
    *(v11 + 2) = 0;
    *(v11 + 9) = 0;
    __buf[0] = v11 - __buf + 20;
    if (write(v7, __buf, __buf[0]) < 0)
    {
      v31 = __error();
      v13 = *v31;
      v32 = mDNSLogCategory_Default;
      v33 = strerror(*v31);
      LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "getMACAddress: writing to routing socket: %s", v34, v35, v36, v37, v38, v33);
      close(v8);
LABEL_24:
      if (v13 != -1)
      {
        return v13;
      }

      goto LABEL_36;
    }

    while (1)
    {
      v21 = read(v8, __buf, 0x25CuLL);
      if (v21 < 1)
      {
        break;
      }

      if (v50 == 6368)
      {
        v27 = v49;
        if (v27 == getpid())
        {
          goto LABEL_16;
        }
      }
    }

    if (v21 < 0)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "getMACAddress: Read from routing socket failed", v22, v23, v24, v25, v26, v43);
    }

LABEL_16:
    v28 = v51;
    if (a1 != 2)
    {
      v28 = v10;
      v9 = v51;
      if (a1 != 30)
      {
        v39 = mDNSLogCategory_Default;
        goto LABEL_28;
      }
    }

    v29 = &v51[v51[0]];
    if (v29)
    {
      break;
    }

    v39 = mDNSLogCategory_Default;
LABEL_28:
    LogMsgWithLevel(v39, OS_LOG_TYPE_DEFAULT, "getMACAddress: sdl is NULL for family %d", v22, v23, v24, v25, v26, a1);
LABEL_35:
    close(v8);
LABEL_36:
    if (v5 == 2)
    {
      v40 = 4;
    }

    else
    {
      v40 = 16;
    }

    memcpy(a2, &__src, v40);
    ++v6;
    a1 = v5;
    if (v6 == 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v30 = v29[1];
  if (v30 == 30)
  {
    if (v9)
    {
      __src = *&v9[*v9 + 8];
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "getMACAddress: sin6 is NULL", v22, v23, v24, v25, v26, v43);
    }

    v5 = 30;
    goto LABEL_35;
  }

  if (v30 == 2)
  {
    if (v28)
    {
      LODWORD(__src) = *&v28[*v28 + 4];
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "getMACAddress: sin is NULL", v22, v23, v24, v25, v26, v43);
    }

    v5 = 2;
    goto LABEL_35;
  }

  v42 = &v29[v29[5]];
  *a3 = *(v42 + 2);
  *(a3 + 4) = *(v42 + 6);
  close(v8);
  return 0;
}

void mDNSPlatformGetRemoteMacAddr(int *a1)
{
  v2 = *a1;
  v3 = mDNSLogCategory_NAT;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_NAT == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
  }

  else
  {
    v3 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "mDNSPlatformGetRemoteMacAddr calling mDNSGet_RemoteMAC", buf, 2u);
LABEL_11:
  if (v2 == 4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 30;
  }

  v54 = 0;
  v55 = 0;
  v73 = *(a1 + 1);
  if (!GetRemoteMacinternal(v6, &v73, &v54))
  {
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0xCD7CF3CBuLL);
    if (v7)
    {
      v8 = v7;
      v9 = (v7 + 20);
      snprintf(v7 + 20, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", v54, BYTE1(v54), BYTE2(v54), HIBYTE(v54), v55, HIBYTE(v55));
      if (v2 == 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = 6;
      }

      *v8 = v10;
      *(v8 + 4) = *(a1 + 1);
      v11 = xmmword_100170360;
      for (qword_100170378 = xmmword_100170360; v11; qword_100170378 = v11)
      {
        if (!*(v11 + 126) && *(v11 + 12) == 10)
        {
          v12 = *(v11 + 40);
          v13 = *v12 ? *v12 + 1 : 0;
          if (SameDomainLabelPointer(&v12[v13], "\n_keepalive"))
          {
            v58[0] = 0;
            v58[1] = 0;
            v59 = 0;
            getKeepaliveRaddr(mDNSStorage, v11, v58);
            if (mDNSSameAddress(v58, v8))
            {
              v57 = 0;
              v56 = 0;
              if (GetValueForMACAddr(v9, v8 + 38, &v56, v14, v15, v16, v17, v18))
              {
                if (HIWORD(v56) | v56 | v57)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  v67 = 0;
                  v68 = 0;
                  v69 = 0;
                  v66 = 0;
                  v64 = 0;
                  v65 = 0;
                  v63 = 0;
                  v88 = 0u;
                  v89 = 0u;
                  v86 = 0u;
                  v87 = 0u;
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
                  *buf = 0u;
                  v75 = 0u;
                  mDNS_ExtractKeepaliveInfo(v11, &v63, &v70, &v67, &v65, &v62, &v61, &v64 + 1, &v64, &v60);
                  if (v63 && v70 != 4 && (v70 != 6 || v71 | HIDWORD(v71) | v72 | HIDWORD(v70)) && v67 != 4 && (v67 != 6 || v68 | HIDWORD(v68) | v69 | HIDWORD(v67)) && HIWORD(v64) && v64)
                  {
                    v19 = mDNS_snprintf(&buf[1]);
                    if (v19 == 255)
                    {
                      v20 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v11 + 8), (*(v11 + 48) + 4), word_1001789D0);
                      LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "UpdateKeepaliveRData: could not allocate memory %s", v21, v22, v23, v24, v25, word_1001789D0);
                    }

                    else
                    {
                      buf[0] = v19 + 1;
                      v32 = v19 + 2;
                      if ((v19 + 2) <= 0x108u)
                      {
                        v33 = 264;
                      }

                      else
                      {
                        v33 = (v19 + 2);
                      }

                      v34 = malloc_type_malloc(v33 + 4, 0xA985737FuLL);
                      if (!v34)
                      {
                        goto LABEL_56;
                      }

                      v53 = v34;
                      *v34 = v33;
                      memcpy(v34 + 2, buf, v32);
                      v40 = *(v11 + 48);
                      if (v40 != (v11 + 908))
                      {
                        if (mDNS_LoggingEnabled == 1)
                        {
                          v52 = mDNSLogCategory_Default;
                          GetRRDisplayString_rdb((v11 + 8), v40 + 2, word_1001789D0);
                          LogMsgWithLevel(v52, OS_LOG_TYPE_DEFAULT, "UpdateKeepaliveRData: Freed allocated memory for keep alive packet: %s ", v41, v42, v43, v44, v45, word_1001789D0);
                          v40 = *(v11 + 48);
                        }

                        if (v40)
                        {
                          free(v40);
                        }
                      }

                      SetNewRData(v11 + 8, v53, v32, v35, v36, v37, v38, v39);
                      if (mDNS_LoggingEnabled == 1)
                      {
                        v46 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v11 + 8), (*(v11 + 48) + 4), word_1001789D0);
                        LogMsgWithLevel(v46, OS_LOG_TYPE_DEFAULT, "UpdateKeepaliveRData: successfully updated the record %s", v47, v48, v49, v50, v51, word_1001789D0);
                      }
                    }
                  }

                  else
                  {
                    v26 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb((v11 + 8), (*(v11 + 48) + 4), word_1001789D0);
                    LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "UpdateKeepaliveRData: not a valid record %s for keepalive %#a:%d %#a:%d", v27, v28, v29, v30, v31, word_1001789D0);
                  }
                }
              }
            }
          }
        }

        v11 = *v11;
      }

      free(v8);
    }

    else
    {
LABEL_56:
      __break(1u);
    }
  }
}

const __CFNumber *DictionaryIsEnabled(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"Enabled");
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      return (valuePtr != 0);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: DictionaryIsEnabled - CFNumberGetValue", v2, v3, v4, v5, v6, v7);
      return 0;
    }
  }

  return result;
}

void mDNSPlatformUpdateDNSStatus(uint64_t a1)
{
  if (!*(a1 + 354) && *(a1 + 340) && !*(a1 + 355))
  {
    v1 = *(a1 + 342);
    v2 = mDNSStorage[0];
    if (v1 == 28)
    {
      *(mDNSStorage[0] + 689) = 0;
    }

    else if (v1 == 1)
    {
      *(mDNSStorage[0] + 688) = 0;
    }

    v3 = *(v2 + 688);
    if (*(v2 + 688))
    {
      if (!*(v2 + 689) && (mDNS_LoggingEnabled & 1) != 0)
      {
        goto LABEL_15;
      }
    }

    else if (mDNS_LoggingEnabled == 1)
    {
      v4 = *(v2 + 689);
LABEL_15:
      v5 = mDNSLogCategory_Default;
      DNSTypeName(v1);
      LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUpdateDNSStatus: Trigger needed v4 %d, v6 %d, question %##s (%s)", v6, v7, v8, v9, v10, v3);
    }
  }
}

void mDNSPlatformTriggerDNSRetry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  mDNS_Lock_(mDNSStorage, "mDNSPlatformTriggerDNSRetry", 5111);
  v11 = dword_10016D258;
  v12 = *(mDNSStorage[0] + 692);
  if (v12)
  {
    v13 = dword_10016D258 - v12 <= 179999;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {

    mDNS_Unlock_(mDNSStorage, "mDNSPlatformTriggerDNSRetry", 5120);
  }

  else
  {
    mDNS_Unlock_(mDNSStorage, "mDNSPlatformTriggerDNSRetry", 5123);
    if (a1 && !*(a1 + 354) && *(a1 + 340))
    {
      v14 = 1;
      if (!*(a1 + 355))
      {
        v15 = mDNSStorage[0];
        v16 = *(mDNSStorage[0] + 688);
        *(mDNSStorage[0] + 688) = 1;
        if (!v16)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v17 = mDNSLogCategory_Default;
            v18 = v11 - *(v15 + 692);
            DNSTypeName(*(a1 + 342));
            LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTriggerDNSRetry: Triggering because of IPv4, last trigger %d ms, %##s (%s)", v19, v20, v21, v22, v23, v18);
          }

          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }

    if (!a2 || *(a2 + 354) || !*(a2 + 340) || *(a2 + 355) || (v24 = mDNSStorage[0], v25 = *(mDNSStorage[0] + 689), *(mDNSStorage[0] + 689) = 1, v25))
    {
      if (v14)
      {
        return;
      }
    }

    else if (mDNS_LoggingEnabled == 1)
    {
      v26 = mDNSLogCategory_Default;
      v27 = v11 - *(v24 + 692);
      DNSTypeName(*(a2 + 342));
      LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTriggerDNSRetry: Triggering because of IPv6, last trigger %d ms, %##s (%s)", v28, v29, v30, v31, v32, v27);
    }

    v33 = dns_configuration_copy();
    if (v33)
    {
      v39 = v33;
      mDNS_Lock_(mDNSStorage, "mDNSPlatformTriggerDNSRetry", 5160);
      AckConfigd(v39);
      mDNS_Unlock_(mDNSStorage, "mDNSPlatformTriggerDNSRetry", 5162);

      dns_configuration_free();
    }

    else
    {
      v40 = mDNSLogCategory_Default;

      LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTriggerDNSRetry: ERROR!! configd did not return config", v34, v35, v36, v37, v38, a9);
    }
  }
}

uint64_t AckConfigd(uint64_t a1)
{
  mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "AckConfigd", 5086);
  if (dword_10016D258 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = dword_10016D258;
  }

  *(mDNSStorage[0] + 692) = v2;

  return __dns_configuration_ack(a1, "com.apple.mDNSResponder");
}

uint64_t UpdateSearchDomainHash(_MD5_CTX *a1, const char *a2, uint64_t a3)
{
  *__s = 0;
  v17 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = ".";
  }

  v5 = a3 + 5;
  if (a3 + 5) < 6 && ((0x2Du >> v5))
  {
    v6 = dword_10010DF88[v5];
  }

  else
  {
    v6 = a3;
  }

  v7 = mDNS_snprintf(__s);
  v8 = mDNSLogCategory_State;
  if (v7 >= 0x10 && os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v13) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "UpdateSearchDomainHash: mDNS_snprintf failed for scopeid %u", buf, 8u);
    v8 = mDNSLogCategory_State;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v13 = v4;
    v14 = 2080;
    v15 = __s;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "UpdateSearchDomainHash: buf %s, ifid_buf %s", buf, 0x16u);
  }

  v9 = strlen(v4);
  MD5_Update(a1, v4, v9 + 1);
  v10 = strlen(__s);
  return MD5_Update(a1, __s, v10 + 1);
}

void ConfigResolvers(int *a1, uint64_t a2, int a3, int a4, _MD5_CTX *a5)
{
  v5 = a2;
  if (a2 == 2)
  {
    v6 = (a1 + 9);
    v7 = a1 + 8;
  }

  else if (a2 == 1)
  {
    v6 = (a1 + 4);
    v7 = a1 + 3;
  }

  else
  {
    v7 = a1;
    v6 = (a1 + 1);
  }

  v8 = *v6;
  v9 = *v7;
  qsort(*v6, v9, 8uLL, compare_dns_configs);
  v99 = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = v8[v10];
      v12 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v11;
        v19 = *(v11 + 8);
        *buf = 67241219;
        *&buf[4] = v5;
        *&buf[8] = 1024;
        *&buf[10] = v10;
        *&buf[14] = 2160;
        *&v117[0] = 1752392040;
        WORD4(v117[0]) = 2085;
        *(v117 + 10) = v18;
        WORD1(v117[1]) = 1024;
        DWORD1(v117[1]) = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ConfigResolvers -- scope type: %{public, mdnsresponder:dns_scope_type}u, resolver[%d]: {domain: %{sensitive, mask.hash}s, name server count: %d}", buf, 0x28u);
      }

      v20 = *(v11 + 64);
      if (v20)
      {
        v21 = *mDNSStorage[0];
        if (*mDNSStorage[0])
        {
          while (!*(v21 + 3552) || *(v21 + 3720) != v20)
          {
            v21 = *(v21 + 3680);
            if (!v21)
            {
              goto LABEL_15;
            }
          }

          v20 = *(v21 + 3552);
        }

        else
        {
LABEL_15:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ConfigParseInterfaceID: interface specific index %d not found (interface may not be UP)", v13, v14, v15, v16, v17, *(v11 + 64));
        }
      }

      else
      {
        v20 = 0;
      }

      if (!a3)
      {
        goto LABEL_72;
      }

      v22 = v8;
      v23 = v8[v10];
      v24 = *(a1 + 3);
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117[1] = 0u;
      v118 = 0u;
      v25 = v5;
      v26 = v5 ? v20 : 0;
      *buf = 0uLL;
      v117[0] = 0uLL;
      v27 = v25;
      if (v25 <= 1)
      {
        break;
      }

      v39 = mDNSLogCategory_State;
      v40 = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (!v40)
        {
          goto LABEL_71;
        }

        v41 = &xmmword_100170388;
        while (1)
        {
          v41 = *v41;
          if (!v41)
          {
            break;
          }

          v42 = v41;
          if (*(v41 + 444) == v20)
          {
            goto LABEL_41;
          }
        }

        v42 = 0;
LABEL_41:
        v49 = v42 + 3606;
        *v102 = 67240450;
        if (v41)
        {
          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        *&v102[4] = 2;
        *&v102[8] = 2082;
        *&v102[10] = v50;
        v43 = v39;
        v44 = "ConfigSearchDomains: Ignoring search domains for interface -- scope type: %{public, mdnsresponder:dns_scope_type}u, ifname: %{public}s";
        v45 = 18;
      }

      else
      {
        if (!v40)
        {
          goto LABEL_71;
        }

        *v102 = 67240192;
        *&v102[4] = 2;
        v43 = v39;
        v44 = "ConfigSearchDomains: Ignoring search domains for interface -- scope type: %{public, mdnsresponder:dns_scope_type}u";
        v45 = 8;
      }

      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v44, v102, v45);
LABEL_71:
      v5 = v27;
      v8 = v22;
      if (!a4)
      {
        goto LABEL_76;
      }

LABEL_72:
      if (*(v11 + 20) != 5353 && *(v11 + 8))
      {
        goto LABEL_76;
      }

      v62 = *(v11 + 48);
      if (!v62)
      {
        goto LABEL_76;
      }

      v63 = strlen(*(v11 + 48));
      if (strncmp(v62, "mdns", v63))
      {
        goto LABEL_76;
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      *buf = 0u;
      memset(v117, 0, sizeof(v117));
      if (!AppendDNSNameString(buf, *v11, v64, v65, v66, v67, v68, v69))
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ConfigNonUnicastResolver: config->resolver bad domain %s", v70, v71, v72, v73, v74, *v11);
        goto LABEL_76;
      }

      v75 = *(v11 + 56);
      v76 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v80 = buf;
          while (1)
          {
            if (!v80 || (v81 = *v80, v81 > 0x3F))
            {
LABEL_95:
              v79 = 257;
              goto LABEL_98;
            }

            if (!*v80)
            {
              break;
            }

            v80 += v81 + 1;
            if (v80 - buf >= 256)
            {
              goto LABEL_95;
            }
          }

          v79 = (v80 - buf + 1);
          goto LABEL_98;
        }
      }

      else
      {
        v76 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          v77 = buf;
          while (1)
          {
            if (!v77 || (v78 = *v77, v78 > 0x3F))
            {
LABEL_87:
              v79 = 257;
              goto LABEL_98;
            }

            if (!*v77)
            {
              break;
            }

            v77 += v78 + 1;
            if (v77 - buf >= 256)
            {
              goto LABEL_87;
            }
          }

          v79 = (v77 - buf + 1);
LABEL_98:
          *v102 = 68158466;
          *&v102[4] = v79;
          *&v102[8] = 2098;
          *&v102[10] = buf;
          *&v102[18] = 2048;
          *&v102[20] = 0;
          *&v102[28] = 1024;
          *&v102[30] = v75;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "mDNS_AddMcastResolver: Adding %{public, mdnsresponder:domain_name}.*P, InterfaceID %p, timeout %u", v102, 0x22u);
        }
      }

      mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "mDNS_AddMcastResolver", 14300);
      v82 = qword_1001703A8;
      if (qword_1001703A8)
      {
        v83 = 0;
        v84 = &qword_1001703A8;
        do
        {
          if (*(v82 + 8) || (v85 = SameDomainNameBytes((v82 + 20), buf), v82 = *v84, !v85))
          {
            v84 = v82;
          }

          else
          {
            v91 = *(v82 + 16);
            if ((v91 & 1) == 0)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: Mcast Resolver domain %##s (%p) registered more than once", v86, v87, v88, v89, v90, buf);
              v82 = *v84;
              v91 = *(*v84 + 16);
            }

            *(v82 + 16) = v91 & 0xFFFFFFFE;
            *v84 = *v82;
            *v82 = 0;
            v83 = v82;
          }

          v82 = *v84;
        }

        while (*v84);
        if (v83)
        {
          *v84 = v83;
          goto LABEL_76;
        }
      }

      else
      {
        v84 = (&dword_10016D248 + &loc_100003160);
      }

      v92 = malloc_type_calloc(1uLL, 0x118uLL, 0x6FC8FA58uLL);
      if (!v92)
      {
        __break(1u);
        return;
      }

      *v84 = v92;
      v92[1] = 0;
      v93 = *v84;
      v93[4] = 2;
      v93[69] = v75;
      v94 = buf;
      do
      {
        if (!v94)
        {
          break;
        }

        v95 = *v94;
        if (v95 > 0x3F)
        {
          break;
        }

        if (!*v94)
        {
          v96 = v94 - buf + 1;
          if (v96 <= 0x100u)
          {
            memcpy(v93 + 5, buf, v96);
            goto LABEL_121;
          }

          break;
        }

        v94 += v95 + 1;
      }

      while (v94 - buf <= 255);
      *(v93 + 20) = 0;
LABEL_121:
      **v84 = 0;
LABEL_76:
      if (++v10 == v99)
      {
        return;
      }
    }

    v28 = *(v23 + 24);
    if (v28 < 1)
    {
      goto LABEL_71;
    }

    v29 = mDNSLogCategory_State;
    v30 = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (!v30)
      {
        goto LABEL_52;
      }

      v37 = &xmmword_100170388;
      while (1)
      {
        v37 = *v37;
        if (!v37)
        {
          break;
        }

        v38 = v37;
        if (*(v37 + 444) == v26)
        {
          goto LABEL_47;
        }
      }

      v38 = 0;
LABEL_47:
      v51 = v38 + 3606;
      *v102 = 67109890;
      if (v37)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      *&v102[4] = v28;
      *&v102[8] = 1026;
      *&v102[10] = v27;
      *&v102[14] = 2048;
      *&v102[16] = v24;
      *&v102[24] = 2082;
      *&v102[26] = v52;
      v46 = v29;
      v47 = "ConfigSearchDomains: configuring search domains -- count: %d, scope type: %{public, mdnsresponder:dns_scope_type}u, generation: %llu, ifname: %{public}s";
      v48 = 34;
    }

    else
    {
      if (!v30)
      {
        goto LABEL_52;
      }

      *v102 = 67109632;
      *&v102[4] = v28;
      *&v102[8] = 1026;
      *&v102[10] = v27;
      *&v102[14] = 2048;
      *&v102[16] = v24;
      v46 = v29;
      v47 = "ConfigSearchDomains: configuring search domains -- count: %d, scope type: %{public, mdnsresponder:dns_scope_type}u, generation: %llu";
      v48 = 24;
    }

    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, v102, v48);
LABEL_52:
    if (*(v23 + 24) >= 1)
    {
      v53 = 0;
      do
      {
        v54 = *(*(v23 + 28) + 8 * v53);
        buf[0] = 0;
        appended = AppendDNSNameString(buf, v54, v31, v32, v33, v34, v35, v36);
        v56 = mDNSLogCategory_State;
        if (appended)
        {
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            v57 = buf;
            while (1)
            {
              if (!v57 || (v58 = *v57, v58 > 0x3F))
              {
LABEL_61:
                v59 = 257;
                goto LABEL_65;
              }

              if (!*v57)
              {
                break;
              }

              v57 += v58 + 1;
              if (v57 - buf >= 256)
              {
                goto LABEL_61;
              }
            }

            v59 = (v57 - buf + 1);
LABEL_65:
            *v102 = 141558531;
            *&v102[4] = 1752392040;
            *&v102[12] = 1040;
            *&v102[14] = v59;
            *&v102[18] = 2101;
            *&v102[20] = buf;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "ConfigSearchDomains -- search domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v102, 0x1Cu);
          }

          UpdateSearchDomainHash(a5, *(*(v23 + 28) + 8 * v53), v26);
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          memset(v102, 0, sizeof(v102));
          v61 = *(*(v23 + 28) + 8 * v53);
          if (v61 && AppendDNSNameString(v102, v61, v31, v32, v33, v34, v35, v36) && v102[0])
          {
            mDNS_AddSearchDomain(v102, v26);
          }
        }

        else if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          v60 = *(v23 + 8);
          *v102 = 67109376;
          *&v102[4] = v53;
          *&v102[8] = 1024;
          *&v102[10] = v60;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "ConfigSearchDomains: An invalid search domain was detected -- index: %d, name server count: %d", v102, 0xEu);
        }

        ++v53;
      }

      while (v53 < *(v23 + 24));
    }

    goto LABEL_71;
  }
}

uint64_t compare_dns_configs(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 60);
  v3 = *(*a2 + 60);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void mDNSPlatformDynDNSHostNameStatusChanged(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = a2;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformDynDNSHostNameStatusChanged %d %##s", a4, a5, a6, a7, a8, a2);
  }

  bzero(&cStr, 0x3F1uLL);
  ConvertDomainNameToCString_withescape(a1, &cStr);
  LOBYTE(v9) = cStr;
  if (cStr)
  {
    v10 = &v43;
    do
    {
      v11 = __tolower(v9);
      v9 = *v10;
      if (v11 == 46 && v9 == 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *(v10++ - 1) = v13;
    }

    while (v9);
  }

  v41 = @"HostNames";
  v14 = CFStringCreateWithCString(0, &cStr, 0x8000100u);
  keys = @"Status";
  v40 = v14;
  if (!v14)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetDDNSNameStatus: CFStringCreateWithCString(%s) failed", v15, v16, v17, v18, v19, &cStr);
    return;
  }

  v20 = v14;
  values = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!values)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetDDNSNameStatus: CFNumberCreate(%d) failed", v21, v22, v23, v24, v25, valuePtr);
LABEL_28:
    CFRelease(v20);
    return;
  }

  v37 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v37)
  {
    cf = CFDictionaryCreate(0, &v40, &v37, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (cf)
    {
      v26 = CFDictionaryCreate(0, &v41, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v26)
      {
        v33 = v26;
        mDNSDynamicStoreSetConfig(2, v26, v27, v28, v29, v30, v31, v32, v34);
        CFRelease(v33);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (v37)
    {
      CFRelease(v37);
      v37 = 0;
    }
  }

  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  v20 = v40;
  if (v40)
  {
    goto LABEL_28;
  }
}

uint64_t SupportsInNICProxy(uint64_t a1)
{
  if (!UseInternalSleepProxy)
  {
    v10 = v1;
    v11 = v2;
    v4 = mDNSLogCategory_SPS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v5 = mDNSLogCategory_SPS == mDNSLogCategory_State;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v9 = 0;
      v6 = &v9;
    }

    else
    {
      v4 = mDNSLogCategory_SPS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v8 = 0;
      v6 = &v8;
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SupportsInNICProxy: Internal Sleep Proxy is disabled", v6, 2u);
    return 0;
  }

  return CheckInterfaceSupport(a1, "mDNS_KEY");
}

uint64_t GetPortArray(int a1, unsigned __int16 *a2)
{
  if (a1 == 1)
  {
    v2 = "\x04_udp";
  }

  else
  {
    v2 = "\x04_tcp";
  }

  v3 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (*(v3 + 6) == 33)
    {
      v6 = v3[5];
      v7 = *v6 ? *v6 + 1 : 0;
      v8 = &v6[v7];
      v9 = *v8 ? *v8 + 1 : 0;
      if (SameDomainLabelPointer(&v8[v9], v2))
      {
        if (a2)
        {
          v10 = *(v3[6] + 8);
          if (v5)
          {
            v11 = v5;
            v12 = v5;
            v13 = a2;
            while (1)
            {
              v14 = *v13++;
              if (v14 == v10)
              {
                break;
              }

              if (!--v12)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            v11 = 0;
LABEL_22:
            v5 = (v5 + 1);
            a2[v11] = v10;
          }
        }

        else
        {
          v5 = (v5 + 1);
        }
      }
    }

    v3 = *v3;
  }

  while (v3);
  return v5;
}

uint64_t CountProxyRecords(_DWORD *a1)
{
  *a1 = 0;
  v1 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if ((v1[123] & 1) == 0 && v1[8] >= 2u && !*(v1 + 4) && (v1[122] || IsLocalDomain(*(v1 + 5))))
    {
      v4 = *(v1 + 5);
      v5 = v4;
      while (1)
      {
        if (!v5 || (v6 = *v5, v6 > 0x3F))
        {
LABEL_13:
          v7 = 257;
          goto LABEL_15;
        }

        if (!*v5)
        {
          break;
        }

        v5 += v6 + 1;
        if (v5 - v4 >= 256)
        {
          goto LABEL_13;
        }
      }

      v7 = (v5 - v4 + 1);
LABEL_15:
      *a1 += *(v1 + 11) + v7 + 10;
      if (mDNS_LoggingEnabled == 1)
      {
        v8 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v1 + 8, (*(v1 + 6) + 4), word_1001789D0);
        LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "CountProxyRecords: %3u size %5u total %5u %s", v9, v10, v11, v12, v13, v3);
      }

      v3 = (v3 + 1);
    }

    v1 = *v1;
  }

  while (v1);
  return v3;
}

void GetProxyRecords(unint64_t a1, _DWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a1 + 12;
  v11 = *a2;
  *a1 = 0;
  *(a1 + 4) = 0;
  v12 = xmmword_100170360;
  if (xmmword_100170360)
  {
    v15 = 0;
    v16 = a1 + 12;
    v24 = v11;
    do
    {
      if ((*(v12 + 123) & 1) == 0 && *(v12 + 8) >= 2u && !v12[4] && (*(v12 + 122) || IsLocalDomain(v12[5])))
      {
        *(a3 + 8 * v15) = v16;
        if ((v12[1] & 0x32) != 0)
        {
          *(v12 + 7) |= 0x8000u;
        }

        v16 = PutResourceRecordTTLWithLimit(a1, v16, (a1 + 8), (v12 + 1), *(v12 + 4), v10 + v11, a7, a8);
        *(v12 + 7) &= ~0x8000u;
        if (mDNS_LoggingEnabled == 1)
        {
          v17 = v10;
          v18 = *(a3 + 8 * v15);
          v26 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb(v12 + 8, (v12[6] + 4), word_1001789D0);
          v8 = a4;
          v10 = v17;
          v11 = v24;
          LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "GetProxyRecords: %3d start %p end %p size %5d total %5d %s", v19, v20, v21, v22, v23, v15);
        }

        ++v15;
      }

      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v15 = 0;
    LODWORD(v16) = a1 + 12;
  }

  *a2 = v16 - v10;
  if (v8)
  {
    *v8 = v15;
  }
}

uint64_t scalarSameDomainLabel(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 <= 0x3F && v2 == *a2)
  {
    if (!*a1)
    {
      return 1;
    }

    v3 = a1 + 1;
    v4 = a2 + 1;
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      v8 = *v4++;
      v7 = v8;
      if ((v5 - 65) < 0x1A)
      {
        v5 |= 0x20u;
      }

      if ((v7 - 65) < 0x1A)
      {
        v7 |= 0x20u;
      }

      if (v5 != v7)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void FreeEtcHosts(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v5 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v8 = (a1 + 47032);
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v8);
        v9 = 141558275;
        v10 = 1752392040;
        v11 = 2085;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FreeEtcHosts: %{sensitive, mask.hash}s", &v9, 0x16u);
LABEL_12:
        free(a2);
        return;
      }
    }

    else
    {
      v5 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }
}

_BYTE *GetRandomUUIDLocalHostname(_BYTE *a1)
{
  memset(v3, 0, sizeof(v3));
  GetRandomUUIDLabel(v3);
  *a1 = 0;
  AppendDomainLabel(a1, v3);
  return AppendLiteralLabelString(a1, "local");
}

void SetLocalDomains(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v15 = Mutable;
    CFArrayAppendValue(Mutable, @"local");
    CFArrayAppendValue(v15, @"254.169.in-addr.arpa");
    CFArrayAppendValue(v15, @"8.e.f.ip6.arpa");
    CFArrayAppendValue(v15, @"9.e.f.ip6.arpa");
    CFArrayAppendValue(v15, @"a.e.f.ip6.arpa");
    CFArrayAppendValue(v15, @"b.e.f.ip6.arpa");
    mDNSDynamicStoreSetConfig(1, v15, v16, v17, v18, v19, v20, v21, v23);

    CFRelease(v15);
  }

  else
  {
    v22 = mDNSLogCategory_Default;

    LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, "SetLocalDomains: CFArrayCreateMutable failed", v10, v11, v12, v13, v14, a9);
  }
}

void RegisterLocalOnlyAddressRecord(_BYTE *a1, int a2, const void *a3, unsigned int a4)
{
  v6 = a2;
  if (a2 == 28)
  {
    if (a4 != 16)
    {
      return;
    }
  }

  else if (a2 != 1 || a4 != 4)
  {
    return;
  }

  v8 = malloc_type_calloc(1uLL, 0x498uLL, 0xE49AA2C5uLL);
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  mDNS_SetupResourceRecord(v8, 0, -2, v6, 1u, 32, 4, FreeEtcHosts, 0);
  v10 = a1;
  while (1)
  {
    if (!v10 || (v11 = *v10, v11 > 0x3F))
    {
LABEL_12:
      v12 = (v9 + 652);
LABEL_13:
      *v12 = 0;
      goto LABEL_14;
    }

    if (!*v10)
    {
      break;
    }

    v10 += v11 + 1;
    if (v10 - a1 >= 256)
    {
      goto LABEL_12;
    }
  }

  v12 = (v9 + 652);
  if ((v10 - a1 + 1) > 0x100u)
  {
    goto LABEL_13;
  }

  __memcpy_chk();
LABEL_14:
  memcpy((*(v9 + 48) + 4), a3, a4);
  v19 = mDNS_Register_internal(mDNSStorage, v9, v13, v14, v15, v16, v17, v18);
  if (v19)
  {
    v20 = v19;
    v21 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v9 + 8), (*(v9 + 48) + 4), word_1001789D0);
    LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "RegisterLocalOnlyAddressRecord: mDNS_Register error %d registering %s", v22, v23, v24, v25, v26, v20);

    free(v9);
  }
}

void mDNSMacOSXUpdateEtcHosts_internal()
{
  __chkstk_darwin();
  bzero(v97, 0xFB0uLL);
  if (!mDNSMacOSXGetEtcHostsFD_etcq)
  {
    mDNSMacOSXGetEtcHostsFD_etcq = &_dispatch_main_q;
    dispatch_async(&_dispatch_main_q, &__block_literal_global_486);
    goto LABEL_89;
  }

  v0 = mDNSMacOSXGetEtcHostsFD_hostssrc;
  if (mDNSMacOSXGetEtcHostsFD_hostssrc)
  {
    goto LABEL_3;
  }

  v71 = open("/etc/hosts", 0);
  if (v71 == -1)
  {
    if (mDNSMacOSXGetEtcHostsFD_etcsrc)
    {
      if (mDNS_LoggingEnabled != 1)
      {
        goto LABEL_104;
      }

      v91 = mDNSLogCategory_Default;
      v92 = "mDNSMacOSXGetEtcHostsFD: Returning etcfd because no etchosts";
    }

    else
    {
      v93 = open("/etc", 0);
      if (v93 == -1)
      {
        if (mDNS_LoggingEnabled != 1)
        {
          goto LABEL_104;
        }

        v91 = mDNSLogCategory_Default;
        v92 = "mDNSMacOSXGetEtcHostsFD: etc does not exist";
      }

      else
      {
        v77 = v93;
        v94 = dispatch_source_create(&_dispatch_source_type_vnode, v93, 0x23uLL, mDNSMacOSXGetEtcHostsFD_etcq);
        mDNSMacOSXGetEtcHostsFD_etcsrc = v94;
        if (!v94)
        {
          goto LABEL_126;
        }

        dispatch_source_set_event_handler(v94, &__block_literal_global_493);
        v102[0] = _NSConcreteStackBlock;
        v102[1] = 0x40000000;
        v102[2] = __mDNSMacOSXGetEtcHostsFD_block_invoke_4;
        v102[3] = &__block_descriptor_tmp_498;
        v103 = v77;
        dispatch_source_set_cancel_handler(mDNSMacOSXGetEtcHostsFD_etcsrc, v102);
        dispatch_resume(mDNSMacOSXGetEtcHostsFD_etcsrc);
        v71 = open("/etc/hosts", 0x8000);
        if (v71 != -1)
        {
          goto LABEL_92;
        }

        v91 = mDNSLogCategory_Default;
        v92 = "mDNSMacOSXGetEtcHostsFD etc hosts does not exist, watching etc";
      }
    }

    LogMsgWithLevel(v91, OS_LOG_TYPE_DEFAULT, v92, v72, v73, v74, v75, v76, v95);
    goto LABEL_89;
  }

LABEL_92:
  v77 = v71;
  v78 = dispatch_source_create(&_dispatch_source_type_vnode, v71, 0x7FuLL, mDNSMacOSXGetEtcHostsFD_etcq);
  mDNSMacOSXGetEtcHostsFD_hostssrc = v78;
  if (!v78)
  {
LABEL_126:
    close(v77);
    goto LABEL_89;
  }

  dispatch_source_set_event_handler(v78, &__block_literal_global_502);
  *&v121 = _NSConcreteStackBlock;
  *(&v121 + 1) = 0x40000000;
  *&v122 = __mDNSMacOSXGetEtcHostsFD_block_invoke_7;
  *(&v122 + 1) = &__block_descriptor_tmp_508;
  LODWORD(v123) = v77;
  dispatch_source_set_cancel_handler(mDNSMacOSXGetEtcHostsFD_hostssrc, &v121);
  dispatch_resume(mDNSMacOSXGetEtcHostsFD_hostssrc);
  if (mDNSMacOSXGetEtcHostsFD_etcsrc)
  {
    dispatch_source_cancel(mDNSMacOSXGetEtcHostsFD_etcsrc);
    if (mDNSMacOSXGetEtcHostsFD_etcsrc)
    {
      dispatch_release(mDNSMacOSXGetEtcHostsFD_etcsrc);
      mDNSMacOSXGetEtcHostsFD_etcsrc = 0;
    }
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXGetEtcHostsFD: /etc/hosts being monitored, and not etc", v2, v3, v4, v5, v6, v95);
  }

  v0 = mDNSMacOSXGetEtcHostsFD_hostssrc;
  if (!mDNSMacOSXGetEtcHostsFD_hostssrc)
  {
LABEL_89:
    if ((mDNS_LoggingEnabled & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_102:
    v79 = mDNSLogCategory_Default;
    v80 = "mDNSMacOSXUpdateEtcHosts: /etc/hosts is not present";
LABEL_103:
    LogMsgWithLevel(v79, OS_LOG_TYPE_DEFAULT, v80, v2, v3, v4, v5, v6, v95);
    goto LABEL_104;
  }

LABEL_3:
  handle = dispatch_source_get_handle(v0);
  v7 = &unk_10016D000;
  if (handle == -1)
  {
    if (!mDNS_LoggingEnabled)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  if (mDNS_LoggingEnabled)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXUpdateEtcHosts: Parsing /etc/hosts fd %d", v2, v3, v4, v5, v6, handle);
  }

  v8 = fopen("/etc/hosts", "r");
  if (!v8)
  {
    if (mDNS_LoggingEnabled != 1)
    {
      goto LABEL_104;
    }

    v79 = mDNSLogCategory_Default;
    v80 = "mDNSMacOSXParseEtcHosts: fp is NULL";
    goto LABEL_103;
  }

  v9 = v8;
  bzero(v102, 0x400uLL);
  while (fgets(v102, 1024, v9))
  {
    if (LOBYTE(v102[0]) > 0x23u || ((1 << SLOBYTE(v102[0])) & 0x800002400) == 0)
    {
      v11 = strlen(v102);
      if (!v11)
      {
        break;
      }

      v17 = v11 - 1;
      v18 = *(v102 + v11 - 1);
      if (v18 == 13 || v18 == 10)
      {
        *(v102 + v17) = 0;
        if (v11 == 1)
        {
          goto LABEL_28;
        }

        v20 = v11 - 2;
        v18 = *(v102 + v11 - 2);
      }

      else
      {
        v20 = v11 - 1;
        LODWORD(v17) = v11;
      }

      v21 = v18 == 13 || v18 == 10;
      if (!v21 || (*(v102 + v20) = 0, LODWORD(v17) = v20, v20))
      {
        for (i = v102; ; ++i)
        {
          v23 = *i;
          if (v23 != 9 && v23 != 32)
          {
            break;
          }

          LODWORD(v17) = v17 - 1;
        }

        if (v17 < 1)
        {
          LODWORD(v24) = 0;
          v27 = 0;
        }

        else
        {
          v24 = 0;
          while (1)
          {
            v25 = i[v24];
            if (v25 <= 0x2C && ((1 << v25) & 0x102100000200) != 0)
            {
              break;
            }

            if (v17 == ++v24)
            {
              v27 = 0;
              LODWORD(v24) = v17;
              goto LABEL_47;
            }
          }

          if (v25 == 37)
          {
            v27 = v24 + 1;
          }

          else
          {
            v27 = 0;
          }

          i[v24] = 0;
        }

LABEL_47:
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        memset(v120, 0, sizeof(v120));
        memset(&v99, 0, sizeof(v99));
        v99.ai_flags = 4;
        v98 = 0;
        if (getaddrinfo(i, 0, &v99, &v98))
        {
          if (v7[208] == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHostsLine: getaddrinfo returning null", v28, v29, v30, v31, v32, v95);
          }
        }

        else
        {
          if (v27)
          {
            v96 = &i[v27];
            if (v17 <= v27 + 1)
            {
              LODWORD(v24) = v27 + 1;
            }

            else
            {
              LODWORD(v24) = v17;
            }

            v33 = v27 + 1;
            while (1)
            {
              v34 = v33;
              if (v33 >= v17)
              {
                break;
              }

              v35 = i[v33++];
              ++v27;
              v36 = v35 > 0x2C;
              v37 = (1 << v35) & 0x100100000200;
              if (!v36 && v37 != 0)
              {
                i[v34] = 0;
                LODWORD(v24) = v27;
                break;
              }
            }
          }

          else
          {
            v96 = 0;
          }

          v101 = 0;
          v100 = 0;
          v39 = EtcHostsParseOneName((v24 + 1), v17, i, &v101);
          if (v39 == v17)
          {
            v46 = v101;
            LOBYTE(v121) = 0;
            if (AppendDNSNameString(&v121, v101, v40, v41, v42, v43, v44, v45))
            {
              mDNSMacOSXCreateEtcHostsEntry(&v121, v98->ai_addr, 0, v96, v97, v49, v50, v51);
            }

            else
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHostsLine: ERROR!! cannot convert to domain name %s", v47, v48, v49, v50, v51, v46);
            }

            goto LABEL_83;
          }

          v52 = v39;
          if (v39 == -1)
          {
            goto LABEL_83;
          }

          memset(v119, 0, sizeof(v119));
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          v110 = 0u;
          v109 = 0u;
          v108 = 0u;
          v107 = 0u;
          v106 = 0u;
          v105 = 0u;
          v53 = v101;
          v104 = 0;
          if (AppendDNSNameString(&v104, v101, v40, v41, v42, v43, v44, v45))
          {
            mDNSMacOSXCreateEtcHostsEntry(&v104, v98->ai_addr, 0, v96, v97, v56, v57, v58);
            if (v52 >= v17)
            {
              goto LABEL_81;
            }

            v59 = 0;
            while (1)
            {
              v52 = EtcHostsParseOneName((v52 + 1), v17, i, &v100);
              v53 = v100;
              if (!v100)
              {
                break;
              }

              if (v59 && *i == *v100)
              {
                goto LABEL_81;
              }

              v120[0] = 0;
              if (!AppendDNSNameString(v120, v100, v60, v61, v62, v63, v64, v65))
              {
                goto LABEL_84;
              }

              if (SameDomainNameBytes(&v104, v120))
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHostsLine: Ignoring entry with same names first %##s, name2 %##s", v66, v67, v68, v69, v70, &v104);
                }
              }

              else if (!mDNSMacOSXCreateEtcHostsEntry(v120, 0, &v104, v96, v97, v68, v69, v70))
              {
                goto LABEL_85;
              }

              ++v59;
LABEL_80:
              if (v52 >= v17)
              {
                goto LABEL_81;
              }
            }

            if (v59)
            {
              goto LABEL_80;
            }

            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHostsLine: White space at the end of %##s", v61, v62, v63, v64, v65, &v104);
            }

LABEL_81:
            v7 = &unk_10016D000;
LABEL_83:
            freeaddrinfo(v98);
          }

          else
          {
LABEL_84:
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHostsLine: ERROR!! cannot convert to domain name %s", v54, v55, v56, v57, v58, v53);
LABEL_85:
            freeaddrinfo(v98);
            v7 = &unk_10016D000;
          }
        }
      }

      else
      {
LABEL_28:
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXParseEtcHosts: Length is zero!", v12, v13, v14, v15, v16, v95);
      }
    }
  }

  fclose(v9);
LABEL_104:
  mDNS_Lock_(mDNSStorage, "mDNSMacOSXUpdateEtcHosts_internal", 7898);
  if (EtcHostsAddNewEntries(v97, 1) & 1) != 0 || (EtcHostsDeleteOldEntries(v97, 1))
  {
    mDNSCoreRestartAddressQueries(0, FlushAllCacheRecords, UpdateEtcHosts, v97);
  }

  else if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXUpdateEtcHosts: No work", v81, v82, v83, v84, v85, v95);
  }

  for (j = 0; j != 499; ++j)
  {
    v87 = *&v97[8 * j + 24];
    if (v87)
    {
      do
      {
        v88 = *v87;
        v89 = v87[2];
        if (v89)
        {
          do
          {
            v90 = *v89;
            free(v89);
            v89 = v90;
          }

          while (v90);
        }

        free(v87);
        v87 = v88;
      }

      while (v88);
    }
  }

  mDNS_Unlock_(mDNSStorage, "mDNSMacOSXUpdateEtcHosts_internal", 7932);
}

void __mDNSPlatformInit_setup_block_invoke(uint64_t a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  mDNS_Lock_(*(a1 + 32), "mDNSPlatformInit_setup_block_invoke", 8406);
  SetNetworkChanged(1000);
  mDNS_Unlock_(*(a1 + 32), "mDNSPlatformInit_setup_block_invoke", 8408);

  KQueueUnlock("util_managed_network_change_handler", v10, v11, v12, v13, v14, v15, v16);
}

void *CreatePTRRecord(_BYTE *a1)
{
  result = malloc_type_calloc(1uLL, 0x498uLL, 0x3962EBDFuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  mDNS_SetupResourceRecord(result, 0, -2, 12, 0x1194u, 32, 4, 0, 0);
  v4 = a1;
  while (1)
  {
    if (!v4 || (v5 = *v4, v5 > 0x3F))
    {
LABEL_7:
      v6 = (v3 + 652);
LABEL_8:
      *v6 = 0;
      goto LABEL_9;
    }

    if (!*v4)
    {
      break;
    }

    v4 += v5 + 1;
    if (v4 - a1 >= 256)
    {
      goto LABEL_7;
    }
  }

  v6 = (v3 + 652);
  if ((v4 - a1 + 1) > 0x100u)
  {
    goto LABEL_8;
  }

  __memcpy_chk();
LABEL_9:
  v7 = "\tlocalhost";
  while (1)
  {
    if (!v7 || (v8 = *v7, v8 > 0x3F))
    {
LABEL_14:
      LOWORD(v9) = 257;
      goto LABEL_18;
    }

    if (!*v7)
    {
      break;
    }

    v7 += v8 + 1;
    if (v7 - "\tlocalhost" >= 256)
    {
      goto LABEL_14;
    }
  }

  v9 = v7 - "\tlocalhost" + 1;
LABEL_18:
  *(v3 + 20) = v9;
  *(*(v3 + 48) + 4) = 0;
  v10 = "\tlocalhost";
  while (2)
  {
    if (!v10 || (v11 = *v10, v11 > 0x3F))
    {
LABEL_23:
      v12 = (*(v3 + 48) + 4);
      goto LABEL_24;
    }

    if (*v10)
    {
      v10 += v11 + 1;
      if (v10 - "\tlocalhost" >= 256)
      {
        goto LABEL_23;
      }

      continue;
    }

    break;
  }

  v12 = (*(v3 + 48) + 4);
  if ((v10 - "\tlocalhost" + 1) > 0x100u)
  {
LABEL_24:
    *v12 = 0;
    goto LABEL_25;
  }

  memcpy(v12, "\tlocalhost", (v10 - "\tlocalhost" + 1));
LABEL_25:
  *(v3 + 24) = DomainNameHashValue(*(v3 + 40));
  SetNewRData(v3 + 8, 0, 0, v13, v14, v15, v16, v17);

  return mDNS_Register(mDNSStorage, v3);
}

uint64_t __mDNSMacOSXGetEtcHostsFD_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXGetEtcHostsFD: Closing etchosts fd %d", a4, a5, a6, a7, a8, *(a1 + 32));
  }

  v9 = *(a1 + 32);

  return close(v9);
}

uint64_t EtcHostsParseOneName(uint64_t result, int a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (result >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = result;
  while (1)
  {
    v4 = *(a3 + result);
    if (v4 > 0x22)
    {
      break;
    }

    if (v4 != 9 && v4 != 32)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (a2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v4 == 44)
  {
    goto LABEL_8;
  }

  if (v4 == 35)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  *a4 = a3 + result;
  v5 = result + 1;
  while (1)
  {
    result = (result + 1);
    if (result >= a2)
    {
      break;
    }

    v6 = v5;
    v7 = *(a3 + v5++);
    v8 = v7 > 0x2C;
    v9 = (1 << v7) & 0x100100000200;
    if (!v8 && v9 != 0)
    {
      *(a3 + v6) = 0;
      return result;
    }
  }

  return result;
}

uint64_t mDNSMacOSXCreateEtcHostsEntry(_BYTE *a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v22 = mDNSLogCategory_Default;
    v23 = "mDNSMacOSXCreateEtcHostsEntry: ERROR!! name NULL";
LABEL_17:
    LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, v23, a4, a5, a6, a7, a8, v60);
    return 0;
  }

  if (!(a2 | a3))
  {
    v22 = mDNSLogCategory_Default;
    v23 = "mDNSMacOSXCreateEtcHostsEntry: ERROR!! sa and cname both NULL";
    goto LABEL_17;
  }

  if (a2)
  {
    v12 = *(a2 + 1);
    if (v12 != 2 && v12 != 30)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: ERROR!! sa with bad family %d", a4, a5, a6, a7, a8, *(a2 + 1));
      return 0;
    }
  }

  if (a4)
  {
    v14 = if_nametoindex(a4);
    if (!v14)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: hosts entry %##s with invalid ifname %s", v15, v16, v17, v18, v19, a1);
      return 0;
    }

    v20 = v14;
    if (a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20 = -2;
    if (a2)
    {
LABEL_12:
      if (*(a2 + 1) == 2)
      {
        v21 = 1;
      }

      else
      {
        v21 = 28;
      }

      goto LABEL_21;
    }
  }

  v21 = 5;
LABEL_21:
  v25 = DomainNameHashValue(a1);
  v26 = AuthGroupForName(a5, v25, a1);
  if (v26)
  {
    for (i = v26[2]; i; i = *i)
    {
      if (*(i + 12) == v21)
      {
        if (v21 == 28)
        {
          v33 = *(i + 48);
          if (v33[1] == *(a2 + 8) && v33[2] == *(a2 + 12) && v33[3] == *(a2 + 16) && v33[4] == *(a2 + 20) && v20 == *(i + 32))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: Same IPv6 address and InterfaceID for name %##s ID %d", v27, v28, v29, v30, v31, a1);
            }

            return 0;
          }
        }

        else if (v21 == 5)
        {
          if (SameDomainNameBytes((*(i + 48) + 4), a3))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: Same cname %##s for name %##s", v27, v28, v29, v30, v31, a3);
            }

            return 0;
          }
        }

        else if (*(*(i + 48) + 4) == *(a2 + 4) && v20 == *(i + 32))
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: Same IPv4 address and InterfaceID for name %##s ID %d", v27, v28, v29, v30, v31, a1);
          }

          return 0;
        }
      }
    }
  }

  result = malloc_type_calloc(1uLL, 0x498uLL, 0x8D8F627uLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v34 = result;
  mDNS_SetupResourceRecord(result, 0, v20, v21, 1u, 32, 4, FreeEtcHosts, 0);
  v35 = a1;
  while (1)
  {
    if (!v35 || (v36 = *v35, v36 > 0x3F))
    {
LABEL_43:
      v37 = (v34 + 652);
      goto LABEL_44;
    }

    if (!*v35)
    {
      break;
    }

    v35 += v36 + 1;
    if (v35 - a1 >= 256)
    {
      goto LABEL_43;
    }
  }

  v37 = (v34 + 652);
  if ((v35 - a1 + 1) <= 0x100u)
  {
    __memcpy_chk();
    if (!a2)
    {
      goto LABEL_54;
    }

LABEL_45:
    v38 = *(a2 + 1);
    v39 = *(v34 + 48);
    v40 = v38 == 2;
    if (v38 == 2)
    {
      v41 = 4;
    }

    else
    {
      v41 = 16;
    }

    *(v34 + 20) = v41;
    if (v40)
    {
      *(v39 + 4) = *(a2 + 4);
    }

    else
    {
      *(v39 + 4) = *(a2 + 8);
      *(*(v34 + 48) + 8) = *(a2 + 12);
      *(*(v34 + 48) + 12) = *(a2 + 16);
      *(*(v34 + 48) + 16) = *(a2 + 20);
    }

    goto LABEL_68;
  }

LABEL_44:
  *v37 = 0;
  if (a2)
  {
    goto LABEL_45;
  }

LABEL_54:
  v42 = a3;
  while (1)
  {
    if (!v42 || (v43 = *v42, v43 > 0x3F))
    {
LABEL_59:
      v44 = 257;
      goto LABEL_61;
    }

    if (!*v42)
    {
      break;
    }

    v42 += v43 + 1;
    if (&v42[-a3] >= 256)
    {
      goto LABEL_59;
    }
  }

  v44 = v42 - a3 + 1;
LABEL_61:
  *(v34 + 20) = v44;
  *(*(v34 + 48) + 4) = 0;
  v45 = a3;
  while (1)
  {
    if (!v45 || (v46 = *v45, v46 > 0x3F))
    {
LABEL_66:
      v47 = (*(v34 + 48) + 4);
LABEL_67:
      *v47 = 0;
      goto LABEL_68;
    }

    if (!*v45)
    {
      break;
    }

    v45 += v46 + 1;
    if (&v45[-a3] >= 256)
    {
      goto LABEL_66;
    }
  }

  v59 = v45 - a3 + 1;
  v47 = (*(v34 + 48) + 4);
  if (v59 > 0x100u)
  {
    goto LABEL_67;
  }

  memcpy(v47, a3, v59);
LABEL_68:
  *(v34 + 24) = DomainNameHashValue(*(v34 + 40));
  SetNewRData(v34 + 8, 0, 0, v48, v49, v50, v51, v52);
  if (mDNS_LoggingEnabled == 1)
  {
    v53 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v34 + 8), (*(v34 + 48) + 4), word_1001789D0);
    v61 = *(v34 + 32);
    LogMsgWithLevel(v53, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXCreateEtcHostsEntry: Adding resource record %s ID %d", v54, v55, v56, v57, v58, word_1001789D0);
  }

  InsertAuthRecord(a5, v34);
  return 1;
}

uint64_t EtcHostsAddNewEntries(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = a1 + 24;
  v39 = a1 + 24;
  while (1)
  {
    v40 = v2;
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      break;
    }

LABEL_35:
    v3 = v39;
    v2 = v40 + 1;
    if (v40 == 498)
    {
      return 0;
    }
  }

  while (1)
  {
    v5 = v4[2];
    if (v5)
    {
      break;
    }

LABEL_34:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  v6 = 0;
  while (1)
  {
    v7 = v5;
    v5 = *v5;
    v8 = (v7 + 8);
    if (!IsSubdomain(*(v7 + 40), "\tlocalhost"))
    {
      break;
    }

    v9 = "EtcHostsAddNewEntries: Skipping, locahost sub-domain %s";
    if (mDNS_LoggingEnabled)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (!v5)
    {
      goto LABEL_34;
    }
  }

  v16 = AuthGroupForName(&unk_10016EA90, *(v7 + 24), *(v7 + 40));
  if (v16)
  {
    v17 = v16[2];
    if (v17)
    {
      if (!v6)
      {
        v6 = v16[2];
      }

      while (*(v17 + 24) != *(v7 + 24) || !resource_records_have_same_dnssec_rr_category(*(v17 + 64), *(v7 + 64)) || *(v17 + 12) != *(v7 + 12) || *(v17 + 14) != *(v7 + 14) || *(v17 + 20) != *(v7 + 20) || *(v17 + 28) != *(v7 + 28) || !SameRDataBody(v17 + 8, (*(v7 + 48) + 4), SameDomainName) || !SameDomainNameBytes(*(v17 + 40), *(v7 + 40)) || *(v17 + 32) != *(v7 + 32))
      {
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      v7 = v17;
      v8 = (v17 + 8);
      v9 = "EtcHostsAddNewEntries: Skipping, not adding %s";
      if ((mDNS_LoggingEnabled & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      v10 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb(v8, (*(v7 + 48) + 4), word_1001789D0);
      LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, v9, v11, v12, v13, v14, v15, word_1001789D0);
      goto LABEL_8;
    }
  }

LABEL_24:
  if (!a2)
  {
    RemoveAuthRecord(mDNSStorage, a1, v7);
    if (v6)
    {
      v24 = v6;
    }

    else
    {
      v24 = v7;
    }

    *(v7 + 96) = v24;
    *v7 = 0;
    if (mDNS_LoggingEnabled == 1)
    {
      v25 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v7 + 8), (*(v7 + 48) + 4), word_1001789D0);
      v38 = *(v7 + 32);
      LogMsgWithLevel(v25, OS_LOG_TYPE_DEFAULT, "EtcHostsAddNewEntries: Adding %s ID %d", v26, v27, v28, v29, v30, word_1001789D0);
    }

    v9 = "EtcHostsAddNewEntries: mDNS_Register failed for %s";
    if (!mDNS_Register_internal(mDNSStorage, v7, v18, v19, v20, v21, v22, v23))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v32 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v7 + 8), (*(v7 + 48) + 4), word_1001789D0);
    LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "EtcHostsAddNewEntries: Entry %s not registered with core yet", v33, v34, v35, v36, v37, word_1001789D0);
  }

  return 1;
}

uint64_t EtcHostsDeleteOldEntries(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = mDNSStorage;
  v5 = "\tlocalhost";
  do
  {
    v47 = v3;
    v6 = v4[v3 + 786];
    if (v6)
    {
      while (2)
      {
        v7 = v6[2];
        while (v7)
        {
          v8 = v7;
          v7 = *v7;
          if (*(v8 + 104) == FreeEtcHosts)
          {
            v9 = AuthGroupForName(a1, *(v8 + 24), *(v8 + 40));
            if (v9 && (v10 = v9[2]) != 0)
            {
              while (*(v10 + 24) != *(v8 + 24) || !resource_records_have_same_dnssec_rr_category(*(v10 + 64), *(v8 + 64)) || *(v10 + 12) != *(v8 + 12) || *(v10 + 14) != *(v8 + 14) || *(v10 + 20) != *(v8 + 20) || *(v10 + 28) != *(v8 + 28) || !SameRDataBody(v10 + 8, (*(v8 + 48) + 4), SameDomainName) || !SameDomainNameBytes(*(v10 + 40), *(v8 + 40)))
              {
                v10 = *v10;
                if (!v10)
                {
                  goto LABEL_17;
                }
              }

              if (mDNS_LoggingEnabled == 1)
              {
                v33 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v8 + 8), (*(v8 + 48) + 4), word_1001789D0);
                LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, "EtcHostsDeleteOldEntries: Old record %s found in new, skipping", v34, v35, v36, v37, v38, word_1001789D0);
              }
            }

            else
            {
LABEL_17:
              if (!IsSubdomain(*(v8 + 40), v5))
              {
                if (a2)
                {
                  if (mDNS_LoggingEnabled == 1)
                  {
                    v40 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb((v8 + 8), (*(v8 + 48) + 4), word_1001789D0);
                    LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "EtcHostsDeleteOldEntries: Record %s not found in new, deleting", v41, v42, v43, v44, v45, word_1001789D0);
                  }

                  return 1;
                }

                v11 = v5;
                v12 = v4;
                if (v8 == v6[2])
                {
                  v13 = *v8;
                  if (*v8)
                  {
                    v14 = *v8;
                    do
                    {
                      if (*(v14 + 12) == v8)
                      {
                        if (mDNS_LoggingEnabled == 1)
                        {
                          v15 = mDNSLogCategory_Default;
                          GetRRDisplayString_rdb(v14 + 8, (*(v14 + 6) + 4), word_1001789D0);
                          LogMsgWithLevel(v15, OS_LOG_TYPE_DEFAULT, "EtcHostsDeleteOldEntries: Updating Resource Record %s to primary", v16, v17, v18, v19, v20, word_1001789D0);
                        }

                        *(v14 + 12) = v13;
                      }

                      else
                      {
                        v21 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v14 + 8, (*(v14 + 6) + 4), word_1001789D0);
                        v46 = *(v14 + 5);
                        LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "EtcHostsDeleteOldEntries: ERROR!! Resource Record %s not pointing to primary %##s", v22, v23, v24, v25, v26, word_1001789D0);
                      }

                      v14 = *v14;
                    }

                    while (v14);
                  }
                }

                if (mDNS_LoggingEnabled == 1)
                {
                  v27 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v8 + 8), (*(v8 + 48) + 4), word_1001789D0);
                  LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "EtcHostsDeleteOldEntries: Deleting %s", v28, v29, v30, v31, v32, word_1001789D0);
                }

                v4 = v12;
                mDNS_Deregister_internal(v12, v8, 0);
                v5 = v11;
              }
            }
          }
        }

        v6 = *v6;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = v47 + 1;
  }

  while (v47 != 498);
  return 0;
}

uint64_t UpdateEtcHosts(uint64_t a1, uint64_t a2)
{
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "UpdateEtcHosts", 7842);
  EtcHostsDeleteOldEntries(a2, 0);

  return EtcHostsAddNewEntries(a2, 0);
}

uint64_t FlushAllCacheRecords(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = 0;
  v21 = result + 272;
  v10 = (result + 47032);
  do
  {
    v22 = v9;
    v11 = *(v21 + 8 * v9);
    if (v11)
    {
      while (1)
      {
        v12 = v11[2];
        if (v12)
        {
          break;
        }

LABEL_18:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      while (1)
      {
        if (*(v12 + 32))
        {
          goto LABEL_17;
        }

        if (!RRTypeAnswersQuestionType(v12 + 8, 1u, 3, a4, a5, a6, a7, a8))
        {
          result = RRTypeAnswersQuestionType(v12 + 8, 0x1Cu, 3, v13, v14, v15, v16, v17);
          if (!result)
          {
            goto LABEL_17;
          }
        }

        v18 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

LABEL_16:
        result = mDNS_PurgeCacheResourceRecord(v8, v12);
LABEL_17:
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v18 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_15:
      GetRRDisplayString_rdb((v12 + 8), (*(v12 + 48) + 4), v10);
      *buf = 141558275;
      v24 = 1752392040;
      v25 = 2085;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FlushAllCacheRecords: Purging Resourcerecord - record description: %{sensitive, mask.hash}s.", buf, 0x16u);
      goto LABEL_16;
    }

LABEL_19:
    v9 = v22 + 1;
  }

  while (v22 != 498);
  return result;
}

void __mDNSMacOSXGetEtcHostsFD_block_invoke_5(id a1)
{
  data = dispatch_source_get_data(mDNSMacOSXGetEtcHostsFD_hostssrc);
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXGetEtcHostsFD: /etc/hosts changed 0x%x", v1, v2, v3, v4, v5, data);
  }

  if ((data & 0x21) != 0)
  {
    dispatch_source_cancel(mDNSMacOSXGetEtcHostsFD_hostssrc);
    if (mDNSMacOSXGetEtcHostsFD_hostssrc)
    {
      dispatch_release(mDNSMacOSXGetEtcHostsFD_hostssrc);
      mDNSMacOSXGetEtcHostsFD_hostssrc = 0;
    }

    usleep(0xF4240u);
    v7 = mDNSMacOSXGetEtcHostsFD_etcq;

    dispatch_async(v7, &__block_literal_global_506);
  }

  else if ((data & 2) != 0)
  {
    v8 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v8, v9, v10, v11, v12, v13, v14, v15);
    mDNSMacOSXUpdateEtcHosts_internal();

    KQueueUnlock("/etc/hosts changed", v16, v17, v18, v19, v20, v21, v22);
  }
}

void __mDNSMacOSXGetEtcHostsFD_block_invoke_6(id a1)
{
  v1 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v1, v2, v3, v4, v5, v6, v7, v8);
  mDNSMacOSXUpdateEtcHosts_internal();

  KQueueUnlock("/etc/hosts changed", v9, v10, v11, v12, v13, v14, v15);
}

void __mDNSMacOSXGetEtcHostsFD_block_invoke_2(id a1)
{
  data = dispatch_source_get_data(mDNSMacOSXGetEtcHostsFD_etcsrc);
  v2 = data;
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXGetEtcHostsFD: /etc changed 0x%x", v3, v4, v5, v6, v7, data);
  if ((v2 & 0x21) != 0)
  {
    dispatch_source_cancel(mDNSMacOSXGetEtcHostsFD_etcsrc);
    if (mDNSMacOSXGetEtcHostsFD_etcsrc)
    {
      dispatch_release(mDNSMacOSXGetEtcHostsFD_etcsrc);
      mDNSMacOSXGetEtcHostsFD_etcsrc = 0;
    }

    v8 = mDNSMacOSXGetEtcHostsFD_etcq;

    dispatch_async(v8, &__block_literal_global_497);
  }

  else if ((v2 & 2) != 0 && !mDNSMacOSXGetEtcHostsFD_hostssrc)
  {
    v9 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v9, v10, v11, v12, v13, v14, v15, v16);
    mDNSMacOSXUpdateEtcHosts_internal();

    KQueueUnlock("/etc/hosts changed", v17, v18, v19, v20, v21, v22, v23);
  }
}

void __mDNSMacOSXGetEtcHostsFD_block_invoke_3(id a1)
{
  v1 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v1, v2, v3, v4, v5, v6, v7, v8);
  mDNSMacOSXUpdateEtcHosts_internal();

  KQueueUnlock("/etc/hosts changed", v9, v10, v11, v12, v13, v14, v15);
}

void __mDNSMacOSXGetEtcHostsFD_block_invoke(id a1)
{
  v1 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v1, v2, v3, v4, v5, v6, v7, v8);
  mDNSMacOSXUpdateEtcHosts_internal();

  KQueueUnlock("/etc/hosts changed", v9, v10, v11, v12, v13, v14, v15);
}

void PowerChanged(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v7 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v7, v8, v9, v10, v11, v12, v13, v14);
  SystemWakeForNetworkAccess();
  *(a1 + 143) = 0;
  HIDWORD(v23) = a3 + 536870336;
  LODWORD(v23) = a3 + 536870336;
  v22 = v23 >> 4;
  if (v22 <= 3)
  {
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        if (!mDNS_LoggingEnabled)
        {
          goto LABEL_42;
        }

        v33 = mDNSLogCategory_Default;
        v34 = "PowerChanged kIOMessageSystemWillNotPowerOff (no action)";
      }

      else
      {
        if (!mDNS_LoggingEnabled)
        {
          goto LABEL_42;
        }

        v33 = mDNSLogCategory_Default;
        v34 = "PowerChanged kIOMessageCanSystemSleep";
      }

      goto LABEL_41;
    }

    if (!v22)
    {
      if (!mDNS_LoggingEnabled)
      {
        goto LABEL_42;
      }

      v33 = mDNSLogCategory_Default;
      v34 = "PowerChanged kIOMessageCanSystemPowerOff     (no action)";
      goto LABEL_41;
    }

    if (v22 == 1)
    {
      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged kIOMessageSystemWillPowerOff", v17, v18, v19, v20, v21, v35);
      }

      mDNSCoreMachineSleep(a1, 1);
      if (*(a1 + 141) == 2)
      {
        mDNSMacOSXNetworkChanged(v32, v15, v16, v17, v18, v19, v20, v21);
      }

      goto LABEL_42;
    }

LABEL_39:
    if (!mDNS_LoggingEnabled)
    {
      goto LABEL_42;
    }

    v33 = mDNSLogCategory_Default;
    v35 = a3;
    v34 = "PowerChanged unknown message %X";
    goto LABEL_41;
  }

  if (v22 <= 11)
  {
    if (v22 == 4)
    {
      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged kIOMessageSystemWillSleep", v17, v18, v19, v20, v21, v35);
      }

      mDNSCoreMachineSleep(a1, 1);
      goto LABEL_42;
    }

    if (v22 == 5)
    {
      if (!mDNS_LoggingEnabled)
      {
        goto LABEL_42;
      }

      v33 = mDNSLogCategory_Default;
      v34 = "PowerChanged kIOMessageSystemWillNotSleep    (no action)";
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (v22 != 12)
  {
    if (v22 != 13)
    {
      if (v22 == 14)
      {
        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged kIOMessageSystemWillPowerOn", v17, v18, v19, v20, v21, v35);
        }

        if (*(a1 + 141) != 2)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "kIOMessageSystemWillPowerOn: ERROR m->SleepState %d", v17, v18, v19, v20, v21, *(a1 + 141));
          *(a1 + 141) = 2;
          mDNSMacOSXNetworkChanged(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        PowerOn(a1);
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (!mDNS_LoggingEnabled)
    {
      goto LABEL_42;
    }

    v33 = mDNSLogCategory_Default;
    v34 = "PowerChanged kIOMessageSystemWillRestart     (no action)";
LABEL_41:
    LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, v34, v17, v18, v19, v20, v21, v35);
    goto LABEL_42;
  }

  if (mDNS_LoggingEnabled)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged kIOMessageSystemHasPoweredOn", v17, v18, v19, v20, v21, v35);
  }

  if (*(a1 + 141))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged kIOMessageSystemHasPoweredOn: ERROR m->SleepState %d", v17, v18, v19, v20, v21, *(a1 + 141));
    PowerOn(a1);
  }

  mDNS_Lock_(a1, "PowerChanged", 7081);
  SetNetworkChanged(2000);
  mDNS_Unlock_(a1, "PowerChanged", 7083);
LABEL_42:
  if (a3 == -536870288)
  {
    IOAllowPowerChange(*(*a1 + 568), a4);
  }

  else if (a3 == -536870272)
  {
    *(*a1 + 592) = a4;
  }

  KQueueUnlock("PowerChanged Sleep/Wake", v15, v16, v17, v18, v19, v20, v21);
}

void PowerOn(_DWORD *a1)
{
  mDNSCoreMachineSleep(a1, 0);
  if (*(*a1 + 600))
  {
    v7 = time(0);
    mdns_power_cancel_all_events(@"com.apple.mDNSResponder");
    v10 = *(*a1 + 600);
    v11 = v10 - v7;
    if (v11 < 31)
    {
      v12 = v7 - v10;
      if (v12 < 31)
      {
        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged: Waking for network maintenance operations %d seconds early; re-sleeping in 20 seconds", v2, v3, v4, v5, v6, v11);
        }

        *(*a1 + 608) = mDNS_TimeNow(a1, v8, v9, v2, v3, v4, v5, v6) + 20000;
      }

      else if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged PowerOn %d seconds late, assuming not maintenance wake", v2, v3, v4, v5, v6, v12);
      }
    }

    else if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PowerChanged PowerOn %d seconds early, assuming not maintenance wake", v2, v3, v4, v5, v6, v11);
    }
  }

  if (*(mDNSStorage[0] + 584))
  {
    v13 = mDNS_LoggingEnabled == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Sleep Assertion is already being held. Will not attempt to get it again for %d seconds for %s", v2, v3, v4, v5, v6, 16);
  }
}

void DynamicStoreReconnected(uint64_t a1, uint64_t a2)
{
  v3 = pthread_mutex_lock((mDNSStorage[0] + 616));
  v11 = mDNSPlatformRawTime(v3, v4, v5, v6, v7, v8, v9, v10);
  *(mDNSStorage[0] + 680) = v11;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DynamicStoreReconnected: Reconnected", v14, v15, v16, v17, v18, v26);
  }

  SetLocalDomains(v11, v12, v13, v14, v15, v16, v17, v18, v26);
  if (*(a2 + 14424))
  {
    mDNSPlatformDynDNSHostNameStatusChanged((a2 + 14424), 1, v20, v21, v22, v23, v24, v25);
  }

  KQueueUnlock("DynamicStoreReconnected", v19, v20, v21, v22, v23, v24, v25);
}

CFTypeRef CopyNameFromKey(CFStringRef theString)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v2 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 3);
    v4 = CFRetain(ValueAtIndex);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void GetRandomUUIDLabel(_BYTE *a1)
{
  memset(out, 0, sizeof(out));
  memset(v9, 0, sizeof(v9));
  uuid_generate_random(out);
  uuid_unparse_lower(out, v9);
  v2 = a1 + 64;
  v3 = a1 + 1;
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v3 >= v2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = &v9[1];
    do
    {
      *v3++ = v4;
      v7 = *v6++;
      v4 = v7;
      if (v7)
      {
        v8 = v3 >= v2;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  *a1 = v3 + ~a1;
}

uint64_t vectorSameDomainLabel(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v2 = (a1 + 1);
  v3 = v4;
  if (v4 < 0x40)
  {
    if (v3 == *a2)
    {
      v5 = (a2 + 1);
      if (v3 < 0x10)
      {
LABEL_8:
        if (v3 < 8)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v9 = vceq_s8(vadd_s8(vand_s8(vcgt_s8(vadd_s8(*v2, 0x2525252525252525), 0x6565656565656565), 0x2020202020202020), *v2), vadd_s8(vand_s8(vcgt_s8(vadd_s8(*v5, 0x2525252525252525), 0x6565656565656565), 0x2020202020202020), *v5));
          if (vpmin_u32(v9, v9).u32[0] != -1)
          {
            break;
          }

          ++v5;
          ++v2;
          v3 -= 8;
          if (v3 <= 7)
          {
LABEL_11:
            while (v3)
            {
              v11 = v2->u8[0];
              v2 = (v2 + 1);
              v10 = v11;
              v12 = v5->u8[0];
              v5 = (v5 + 1);
              --v3;
              if ((upper_to_lower_case_table[v10] + v10) != (upper_to_lower_case_table[v12] + v12))
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }

      else
      {
        v6.i64[0] = 0x2525252525252525;
        v6.i64[1] = 0x2525252525252525;
        v7.i64[0] = 0x6565656565656565;
        v7.i64[1] = 0x6565656565656565;
        v8.i64[0] = 0x2020202020202020;
        v8.i64[1] = 0x2020202020202020;
        while (vminvq_u32(vceqq_s8(vaddq_s8(vandq_s8(vcgtq_s8(vaddq_s8(*v2->i8, v6), v7), v8), *v2->i8), vaddq_s8(vandq_s8(vcgtq_s8(vaddq_s8(*v5->i8, v6), v7), v8), *v5->i8))) == -1)
        {
          v5 += 2;
          v2 += 2;
          v3 -= 16;
          if (v3 <= 0xF)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  else
  {
    fwrite("v: Malformed label (too long)\n", 0x1EuLL, 1uLL, __stderrp);
  }

  return 0;
}

void mDNSPlatformSendWakeupPacket(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
LABEL_6:
    v13 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v14 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 134217984;
      v18 = v8;
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 134217984;
      v18 = v8;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "GetInterfaceSupportsWakeOnLANPacket: Invalid interface id %p", buf, 0xCu);
    return;
  }

  v10 = a4;
  while (!*(v9 + 3768) || *(v9 + 3720) != a1)
  {
    v9 = *(v9 + 3680);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  if (*(v9 + 3708) == 2)
  {
    if (a1 > -3)
    {
      if (a1 == -2)
      {
        LODWORD(v8) = -1;
        goto LABEL_27;
      }

      if (!a1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (a1 == -5)
      {
        LODWORD(v8) = -4;
        goto LABEL_27;
      }

      if (a1 == -3)
      {
        LODWORD(v8) = -3;
LABEL_27:
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeupPacket: Entered ethernet address[%s],ip_address[%s], interface_id[%d], iteration[%d]", a4, a5, a6, a7, a8, a2);
        }

        v16 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v16, "HelperMode", 6uLL);
        xpc_dictionary_set_uint64(v16, "interface_index", v8);
        xpc_dictionary_set_string(v16, "ethernet_address", a2);
        xpc_dictionary_set_string(v16, "ip_address", a3);
        xpc_dictionary_set_uint64(v16, "swp_iteration", v10);
        SendDict_ToServer(v16);
        if (v16)
        {

          xpc_release(v16);
        }

        return;
      }
    }

    if (a1)
    {
      goto LABEL_27;
    }

LABEL_24:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSendWakeupPacket: ERROR!! Invalid InterfaceID %u", a4, a5, a6, a7, a8, 0);
  }
}