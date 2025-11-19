void ServiceCallback(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a2 + 112);
  v12 = v11 + 2408;
  if (!a3 && v12 != a2)
  {
    return;
  }

  if (a3 != -65792)
  {
    if (a3 == -65548)
    {
      *(v11 + 16) = 1;

      mDNS_DeregisterService_drt(a1, v11, 0, a4, a5, a6, a7, a8);
      return;
    }

    v16 = 1;
LABEL_33:
    v17 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v18 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_63:
        if ((*(v11 + 1404) & 0xFFFFFFFE) != 4)
        {
          IsSubdomain(*(v11 + 1272), "\x05local");
        }

        if (*v11)
        {
          (*v11)(a1, v11, v8);
        }

        return;
      }

      v19 = "";
      if (!v16)
      {
        v19 = "un";
      }

      v20 = *(v11 + 1272);
      if (v20)
      {
        v21 = *(v11 + 1272);
        while (1)
        {
          if (!v21 || (v22 = *v21, v22 > 0x3F))
          {
LABEL_47:
            v23 = 257;
            goto LABEL_62;
          }

          if (!*v21)
          {
            break;
          }

          v21 += v22 + 1;
          if (&v21[-v20] >= 256)
          {
            goto LABEL_47;
          }
        }

        v23 = (v21 - v20 + 1);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v19 = "";
      if (!v16)
      {
        v19 = "un";
      }

      v20 = *(v11 + 1272);
      if (v20)
      {
        v25 = *(v11 + 1272);
        while (1)
        {
          if (!v25 || (v26 = *v25, v26 > 0x3F))
          {
LABEL_57:
            v23 = 257;
            goto LABEL_62;
          }

          if (!*v25)
          {
            break;
          }

          v25 += v26 + 1;
          if (&v25[-v20] >= 256)
          {
            goto LABEL_57;
          }
        }

        v23 = (v25 - v20 + 1);
      }

      else
      {
        v23 = 0;
      }
    }

LABEL_62:
    v27 = 136446979;
    v28 = v19;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 1040;
    v32 = v23;
    v33 = 2101;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ServiceCallback: All records %{public}sregistered for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v27, 0x26u);
    goto LABEL_63;
  }

  if (*(v11 + 2416) || *(v11 + 3592) || *(v11 + 1240) || *(v11 + 64))
  {
    return;
  }

  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  if (v14)
  {
    v15 = (*(v11 + 40) + 8);
    while (!*v15)
    {
      v15 += 1176;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!v13)
    {
LABEL_20:
      if (*(v11 + 16))
      {
        v8 = 4294901748;
      }

      else
      {
        v8 = 4294901504;
      }

      if (*(v11 + 2712))
      {
        CompleteRDataUpdate(a1, v12, a3, a4, a5, a6, a7, a8);
      }

      if (*(v11 + 3888))
      {
        CompleteRDataUpdate(a1, v11 + 3584, a3, a4, a5, a6, a7, a8);
      }

      if (*(v11 + 1536))
      {
        CompleteRDataUpdate(a1, v11 + 1232, a3, a4, a5, a6, a7, a8);
      }

      if (*(v11 + 360))
      {
        CompleteRDataUpdate(a1, v11 + 56, a3, a4, a5, a6, a7, a8);
      }

      v16 = 0;
      goto LABEL_33;
    }

    while (!*(v13 + 24))
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t GetServiceTarget(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 120))
  {
    return *(a2 + 48) + 10;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    do
    {
      ++v6;
      v7 = &v4[v5];
      v8 = v7[1];
      v4 = v7 + 1;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 14680);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v10 + 202);
      v14 = v13 == 2 || v13 == 5;
      if (v14 || ((v15 = *(v10 + 496), v15 != 5) ? (v16 = v15 == 2) : (v16 = 1), v16))
      {
        v17 = *(v10 + 208);
        if (*(v10 + 208))
        {
          v18 = 0;
          v19 = v10 + 26;
          do
          {
            ++v18;
            v20 = v19 + v17;
            v21 = *(v20 + 1);
            v19 = (v20 + 1);
            v17 = v21;
          }

          while (v21);
        }

        else
        {
          v18 = 0;
        }

        v22 = v18 >= v6 ? v6 : v18;
        if (v22 >= 1 && v22 > v11)
        {
          v24 = v6 + 1 - v22;
          v25 = v18 - v22 + 1;
          do
          {
            v26 = *(a2 + 40);
            if (v6 - v22 >= 1)
            {
              v27 = v24;
              do
              {
                if (!*v26)
                {
                  break;
                }

                v26 += *v26 + 1;
                --v27;
              }

              while (v27 > 1);
            }

            v28 = (v10 + 26);
            if (v18 - v22 >= 1)
            {
              v29 = v25;
              v28 = (v10 + 26);
              do
              {
                if (!*v28)
                {
                  break;
                }

                v28 += *v28 + 1;
                --v29;
              }

              while (v29 > 1);
            }

            if (SameDomainNameBytes(v26, v28))
            {
              v12 = v10;
              v11 = v22;
            }

            if (v22 < 2)
            {
              break;
            }

            --v22;
            ++v24;
            ++v25;
          }

          while (v22 > v11);
        }
      }

      v10 = *v10;
    }

    while (v10);
    v3 = a1;
    if (v12)
    {
      return (v12 + 26);
    }
  }

  if (*(v3 + 14168))
  {
    return v3 + 14168;
  }

  if (*(v3 + 12980) == -1 && *(v3 + 12720))
  {
    memset(v60, 0, 30);
    bzero((v3 + 12768), 0x2B8uLL);
    mDNS_snprintf(v60);
    *(v3 + 13144) = 0;
    if (AppendDNSNameString((v3 + 13144), v60, v30, v31, v32, v33, v34, v35))
    {
      *(v3 + 12904) = 0;
      *(v3 + 13092) = 0;
      *(v3 + 13110) = 65548;
      *(v3 + 13400) = 0x1000000;
      *(v3 + 13404) = 0;
      *(v3 + 13409) = 0;
      *(v3 + 13407) = 0;
      *(v3 + 13421) = 0;
      *(v3 + 13012) = getpid();
      *(v3 + 13016) = 0;
      *(v3 + 12920) = FoundStaticHostname;
      *(v3 + 12944) = 0;
      if (mDNS_LoggingEnabled == 1)
      {
        v41 = mDNSLogCategory_Default;
        DNSTypeName(*(v3 + 13110));
        LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "GetStaticHostname: %##s (%s)", v42, v43, v44, v45, v46, v3 + 13144);
      }

      started = mDNS_StartQuery_internal(v3, v3 + 12768);
      if (started)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: GetStaticHostname - StartQuery returned error %d", v48, v49, v50, v51, v52, started);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: GetStaticHostname - bad name %s", v36, v37, v38, v39, v40, v60);
    }
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v53 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (v3 + 47032));
    LogMsgWithLevel(v53, OS_LOG_TYPE_DEFAULT, "GetServiceTarget: Returning NULL for %s", v54, v55, v56, v57, v58, v3 + 47032);
  }

  return 0;
}

void NetworkChanged(uint64_t a1, const __CFArray *a2, unsigned int *a3)
{
  v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
  mDNS_Lock_(a3, "NetworkChanged", 6693);
  Count = CFArrayGetCount(a2);
  v104.location = 0;
  v104.length = Count;
  v82 = CFArrayContainsValue(a2, v104, NetworkChangedKey_Hostnames);
  v105.location = 0;
  v105.length = Count;
  v81 = CFArrayContainsValue(a2, v105, NetworkChangedKey_Computername);
  v106.location = 0;
  v106.length = Count;
  v80 = CFArrayContainsValue(a2, v106, NetworkChangedKey_DNS);
  v107.location = 0;
  v107.length = Count;
  v14 = CFArrayContainsValue(a2, v107, @"Setup:/Network/DynamicDNS");
  v15 = CFArrayGetCount(a2);
  if (v15 >= 1 && (v16 = v15, (Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks)) != 0))
  {
    v18 = Mutable;
    v19 = kSCDynamicStoreDomainSetup;
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
    if (!NetworkServiceEntity)
    {
      goto LABEL_38;
    }

    v21 = NetworkServiceEntity;
    CFArrayAppendValue(v18, NetworkServiceEntity);
    CFRelease(v21);
    v22 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = v22;
    CFArrayAppendValue(v18, v22);
    CFRelease(v23);
    v24 = SCDynamicStoreCopyMultiple(0, 0, v18);
    CFRelease(v18);
    if (v24)
    {
      v25 = CFDictionaryGetCount(v24);
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = 8 * v25;
        if (!v27 || (values = malloc_type_malloc(8 * v25, 0x55AAD57DuLL)) == 0 || (v77 = v26, v84 = a3, (v28 = malloc_type_malloc(v27, 0x9DABD5B5uLL)) == 0))
        {
          __break(1u);
        }

        v29 = v28;
        theDict = v24;
        CFDictionaryGetKeysAndValues(v24, v28, values);
        v74 = 0;
        v30 = 0;
        v75 = v29;
        v76 = v16;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v30);
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          memset(buffer, 0, sizeof(buffer));
          if (CFStringHasPrefix(ValueAtIndex, @"State:/Network/Interface/"))
          {
            if (CFStringHasSuffix(ValueAtIndex, kSCEntNetIPv4))
            {
              v32 = CopyNameFromKey(ValueAtIndex);
              if (v32)
              {
                break;
              }
            }
          }

LABEL_35:
          if (++v30 == v16)
          {
            free(values);
            free(v29);
            suffix = v74 == 0;
            a3 = v84;
            v24 = theDict;
            goto LABEL_40;
          }
        }

        v33 = v32;
        if (mDNS_LoggingEnabled == 1 && !CFStringGetCString(v32, buffer, 256, 0x8000100u))
        {
          buffer[0] = 0;
        }

        v34 = v77;
        v35 = values;
        cf = v33;
        while (1)
        {
          if (!CFStringHasSuffix(*v29, kSCEntNetInterface))
          {
            goto LABEL_33;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(*v35))
          {
            goto LABEL_33;
          }

          Value = CFDictionaryGetValue(*v35, kSCPropNetInterfaceDeviceName);
          if (!Value)
          {
            goto LABEL_33;
          }

          if (!CFEqual(v33, Value))
          {
            goto LABEL_33;
          }

          v38 = CopyNameFromKey(*v29);
          if (!v38)
          {
            goto LABEL_33;
          }

          v39 = v38;
          v40 = v19;
          v41 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, v19, v38, kSCEntNetIPv4);
          CFRelease(v39);
          if (!v41)
          {
            break;
          }

          v42 = CFDictionaryGetValue(theDict, v41);
          CFRelease(v41);
          if (!v42)
          {
            break;
          }

          v43 = CFDictionaryGetTypeID();
          if (v43 != CFGetTypeID(v42))
          {
            break;
          }

          v44 = CFDictionaryGetValue(v42, kSCPropNetIPv4ConfigMethod);
          v19 = v40;
          if (!v44)
          {
            goto LABEL_32;
          }

          v45 = CFEqual(v44, kSCValNetIPv4ConfigMethodLinkLocal);
          v46 = v74;
          if (v45)
          {
            v46 = v74 + 1;
          }

          v74 = v46;
          v33 = cf;
          if (v45)
          {
LABEL_34:
            CFRelease(v33);
            v29 = v75;
            v16 = v76;
            goto LABEL_35;
          }

LABEL_33:
          ++v35;
          ++v29;
          if (!--v34)
          {
            goto LABEL_34;
          }
        }

        v19 = v40;
LABEL_32:
        v33 = cf;
        goto LABEL_33;
      }

      suffix = 1;
LABEL_40:
      CFRelease(v24);
    }

    else
    {
LABEL_38:
      suffix = 1;
    }
  }

  else
  {
    suffix = 1;
  }

  if (Count >= 1)
  {
    v85 = a3;
    v47 = 0;
    while (1)
    {
      v48 = CFArrayGetValueAtIndex(a2, v47);
      if (CFStringHasPrefix(v48, NetworkChangedKey_StateInterfacePrefix) && (CFStringHasSuffix(v48, kSCEntNetIPv6) || CFStringHasSuffix(v48, kSCEntNetIPv4)))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v48, @"/");
        if (!ArrayBySeparatingStrings)
        {
          goto LABEL_54;
        }

        v50 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          memset(buffer, 0, sizeof(buffer));
          v51 = CFArrayGetValueAtIndex(v50, 3);
          if (CFStringGetCString(v51, buffer, 256, 0x8000100u))
          {
            if (strstr(buffer, "p2p") || (getExtendedFlags(buffer) & 0x20100000) != 0 || (util_is_car_play(buffer) & 1) != 0)
            {
              CFRelease(v50);
              v52 = 0;
LABEL_58:
              if (mDNS_LoggingEnabled)
              {
                for (i = 0; i != Count; ++i)
                {
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  memset(buffer, 0, sizeof(buffer));
                  v54 = CFArrayGetValueAtIndex(a2, i);
                  if (!CFStringGetCString(v54, buffer, 256, 0x8000100u))
                  {
                    buffer[0] = 0;
                  }

                  v55 = mDNSLogCategory_State;
                  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    v88 = buffer;
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** SC key: %{public}s", buf, 0xCu);
                  }
                }

                a3 = v85;
LABEL_66:
                v56 = mDNSLogCategory_State;
                if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v82 != 0;
                  if (v82)
                  {
                    v58 = 3;
                  }

                  else
                  {
                    v58 = 2;
                  }

                  if (v81)
                  {
                    v57 = v58;
                  }

                  if (v80)
                  {
                    v57 |= 4u;
                  }

                  if (v14)
                  {
                    v57 |= 8u;
                  }

                  if (!suffix)
                  {
                    v57 |= 0x10u;
                  }

                  *buffer = 134218496;
                  *&buffer[4] = Count;
                  if (!v52)
                  {
                    v57 |= 0x20u;
                  }

                  *&buffer[12] = 1024;
                  *&buffer[14] = 25;
                  *&buffer[18] = 1026;
                  *&buffer[20] = v57;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** -- change count: %ld, delay: %d, flags: %{public, mdnsresponder:net_change_flags}u", buffer, 0x18u);
                }
              }

              goto LABEL_81;
            }
          }
        }

        CFRelease(v50);
      }

      if (Count == ++v47)
      {
LABEL_54:
        v52 = 1;
        goto LABEL_58;
      }
    }
  }

  if (mDNS_LoggingEnabled)
  {
    v52 = 1;
    goto LABEL_66;
  }

LABEL_81:
  SetNetworkChanged(25);
  if (v14)
  {
    v64 = *(mDNSStorage[0] + 500);
    v65 = dword_10016D258 + 25;
    if ((dword_10016D258 + 25) <= 1)
    {
      v65 = 1;
    }

    if (v64)
    {
      v66 = v64 - v65 < 1;
    }

    else
    {
      v66 = 0;
    }

    if (!v66)
    {
      *(mDNSStorage[0] + 500) = v65;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetKeyChainTimer: %d", v59, v60, v61, v62, v63, 25);
      }
    }
  }

  mDNS_Unlock_(a3, "NetworkChanged", 6784);
  KQueueUnlock("NetworkChanged", v67, v68, v69, v70, v71, v72, v73);
}

uint64_t mDNS_StartNATOperation_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (mDNS_LoggingEnabled == 1)
  {
    v19 = bswap32(*(a2 + 176)) >> 16;
    v22 = *(a2 + 180);
    v15 = *(a2 + 172);
    v17 = bswap32(*(a2 + 174)) >> 16;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_StartNATOperation_internal %p Protocol %d IntPort %d RequestedPort %d NATLease %d", a4, a5, a6, a7, a8, a2);
  }

  v10 = *(a1 + 14720);
  v11 = (a1 + 14720);
  if (v10)
  {
    v11 = (a1 + 14720);
    while (v10 != a2)
    {
      if (*(a2 + 172) && *(a2 + 172) == *(v10 + 172))
      {
        v12 = *(a2 + 174);
        if (v12 == *(v10 + 174) && v12 != 5632)
        {
          v24 = *(v10 + 180);
          v23 = *(a2 + 172);
          v20 = *(a2 + 180);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Warning: Created port mapping request %p Prot %d Int %d TTL %d duplicates existing port mapping request %p Prot %d Int %d TTL %d", a4, a5, a6, a7, a8, a2);
          v10 = *v11;
        }
      }

      v11 = v10;
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v16 = *(a2 + 172);
    v18 = bswap32(*(a2 + 174)) >> 16;
    v21 = *(a2 + 180);
    LogFatalError("Error! Tried to add a NAT traversal that's already in the active list: request %p Prot %d Int %d TTL %d", a2, a3, a4, a5, a6, a7, a8, a2);
    return 4294901749;
  }

  else
  {
LABEL_14:
    *a2 = 0;
    *(a2 + 8) = 0xFA00000000;
    *(a2 + 16) = *(a1 + 64);
    *(a2 + 28) = 0;
    *(a2 + 20) = 0;
    *(a2 + 152) = 0xFFFFFFFFLL;
    *(a2 + 160) = 0;
    *(a2 + 164) = 0;
    *(a2 + 168) = 0;
    if (!*(a2 + 180))
    {
      *(a2 + 180) = 7200;
    }

    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 32) = 0u;
    if (!*(a1 + 14720))
    {
      *(a1 + 14740) = *(a1 + 64);
      *(a1 + 14736) = 250;
    }

    if (!*(a2 + 172))
    {
      *(a2 + 156) = *(a1 + 14744);
    }

    result = 0;
    *(a1 + 104) = *(a1 + 64);
    *v11 = a2;
  }

  return result;
}

void send_all(int a1, const void *a2, size_t a3)
{
  v5 = send(a1, a2, a3, 0);
  if ((v5 & 0x8000000000000000) != 0 || v5 < a3)
  {
    v6 = mDNSLogCategory_Default;
    v7 = *__error();
    v8 = __error();
    strerror(*v8);
    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "ERROR: send_all(%d) wrote %ld of %lu errno %d (%s)", v9, v10, v11, v12, v13, a1);
  }
}

void uDNS_SendNATMsg(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    v9 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v30) = 0;
      v11 = "uDNS_SendNATMsg called unexpectedly with NULL info";
    }

    else
    {
      v9 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v30) = 0;
      v11 = "uDNS_SendNATMsg called unexpectedly with NULL info";
    }

    v13 = &v30;
    v14 = v9;
    v15 = 2;
    goto LABEL_17;
  }

  v7 = a1 + 12288;
  v8 = *(a1 + 12700);
  if (v8 != 10)
  {
    if (v8 == 172)
    {
      if ((*(a1 + 12701) & 0xF0) != 0x10)
      {
        return;
      }
    }

    else if (v8 != 192 || *(a1 + 12701) != 168)
    {
      return;
    }
  }

  if (a3)
  {
    v30 = 258;
    v16 = *(a2 + 180);
    v31 = HIBYTE(v16);
    v32 = BYTE2(v16);
    v33 = BYTE1(v16);
    v34 = v16;
    v35 = 0;
    v36 = -65536;
    v37 = *(a1 + 12720);
    v38 = *(a1 + 14748);
    v39 = *(a1 + 14756);
    v17 = *(a2 + 172);
    if (v17 == 1)
    {
      v18 = 17;
    }

    else
    {
      v18 = 6;
    }

    v40 = v18;
    v41 = 0;
    v42 = 0;
    if (v17)
    {
      v19 = (a2 + 174);
    }

    else
    {
      v19 = &DiscardPort;
    }

    v43 = *v19;
    v44 = *(a2 + 176);
    v45 = 0;
    v46 = -65536;
    v47 = *(a2 + 156);
    mDNSPlatformSendUDP(a1, &v30, &v48, 0, 0, a1 + 12696, 0xE714u, 0);
    *(a2 + 28) = 0;
    if (!a4)
    {
      if (!*(v7 + 2746) || !*(v7 + 2748))
      {
        LNT_SendDiscoveryMsg(a1);
        return;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_MapPort", v20, v21, v22, v23, v24, v30);
      }

      if (!*(a2 + 56))
      {
        *(a2 + 48) = a2;
        *(a2 + 136) = 0;
        v25 = SendPortMapRequest(a1, a2);
        if (v25)
        {
          v26 = v25;
          v27 = mDNSLogCategory_NAT;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v49 = 67109120;
            v50 = v26;
            v11 = "uDNS_SendNATMsg: LNT_MapPort returned error %d";
          }

          else
          {
            v27 = mDNSLogCategory_NAT_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v49 = 67109120;
            v50 = v26;
            v11 = "uDNS_SendNATMsg: LNT_MapPort returned error %d";
          }

          v13 = &v49;
          v14 = v27;
          v15 = 8;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v11, v13, v15);
        }
      }
    }
  }

  else if (!*(a2 + 28))
  {
    v28 = *(a2 + 172);
    if (v28)
    {
      uDNS_SendNATMsg_NATPortReq = 0;
      byte_10016218D = v28;
      word_10016218E = 0;
      v29 = bswap32(*(a2 + 180));
      dword_100162190 = *(a2 + 174);
      unk_100162194 = v29;
      mDNSPlatformSendUDP(a1, &uDNS_SendNATMsg_NATPortReq, &uDNS_RequestAddress_req, 0, 0, a1 + 12696, 0xE714u, 0);
    }

    *(a2 + 156) = *(a1 + 14744);
    *(a2 + 28) = 1;
  }
}

void KQueueUnlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = mDNSPlatformRawTime(a1, a2, a3, a4, a5, a6, a7, a8) - *(mDNSStorage + 680);
  if (v9 < WatchDogReportingThreshold)
  {
    goto LABEL_11;
  }

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
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  *buf = 136446466;
  v22 = a1;
  v23 = 1024;
  v24 = v9;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WARNING: %{public}s took %d ms to complete", buf, 0x12u);
LABEL_11:
  pthread_mutex_unlock((mDNSStorage + 616));
  buf[0] = 1;
  if (send(*(mDNSStorage + 684), buf, 1uLL, 0) == -1)
  {
    v13 = mDNSLogCategory_Default;
    v14 = *__error();
    v15 = __error();
    strerror(*v15);
    LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "ERROR: KQueueWake: send failed with error code: %d (%s)", v16, v17, v18, v19, v20, v14);
  }
}

ssize_t KQWokenFlushBytes(int a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  do
  {
    result = recv(a1, v3, 0x64uLL, 128);
  }

  while (result > 0);
  return result;
}

uint64_t mDNS_NewMessageID(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 12616);
  do
  {
LABEL_2:
    v4 = arc4random();
  }

  while (v4 == 0xFFFF);
  result = bswap32(v4 + 1) >> 16;
  v6 = v3;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 179) == result)
    {
      goto LABEL_6;
    }
  }

  v7 = *(a1 + 192);
  if (!v7)
  {
    return result;
  }

  while (*(v7 + 340) != result)
  {
    v7 = *(v7 + 8);
    if (!v7)
    {
      return result;
    }
  }

LABEL_6:
  if (++v2 != 10)
  {
    goto LABEL_2;
  }

  return result;
}

void ActivateUnicastQuery(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 40))
  {
    *(a2 + 353) = 0;
    v6 = *(a2 + 104);
    if (v6)
    {
      CancelGetZoneData(a1, v6);
      *(a2 + 104) = 0;
    }

    if (*(a2 + 632))
    {
      *(a2 + 350) = 1;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      v7 = *(a2 + 112);
      if (v7)
      {
        DisposeTCPConn(v7);
        *(a2 + 112) = 0;
      }
    }

    if (a3)
    {
      v8 = AuthGroupForName(a1 + 6264, *(a2 + 200), (a2 + 376));
      if (v8 && (v15 = v8[2]) != 0)
      {
        while (1)
        {
          if (*(v15 + 172) == 4 && (*(v15 + 8) & 0x32) != 0)
          {
            v16 = *(v15 + 12);
            v17 = v16 > 0x1C;
            v18 = (1 << v16) & 0x10001022;
            v19 = v17 || v18 == 0;
            if (!v19 && LocalOnlyRecordAnswersQuestion(v15, a2, v9, v10, v11, v12, v13, v14))
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

        if (mDNS_LoggingEnabled == 1)
        {
          v20 = mDNSLogCategory_Default;
          DNSTypeName(*(a2 + 342));
          GetRRDisplayString_rdb((v15 + 8), (*(v15 + 48) + 4), (a1 + 47032));
          LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "QuestionHasLocalAnswers: Question %p %##s (%s) has local answer %s", v21, v22, v23, v24, v25, a2);
        }
      }

      else
      {
LABEL_19:
        *(a2 + 208) = *(a1 + 64) - 334;
        *(a2 + 212) = 334;

        SetNextQueryTime(a1, a2);
      }
    }
  }
}

uint64_t *CacheGroupForName(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  for (i = *(a1 + 8 * (a2 % 0x1F3) + 272); i; i = *i)
  {
    if (*(i + 2) == a2 && SameDomainNameBytes(i[4], a3))
    {
      break;
    }
  }

  return i;
}

void MakeNegativeCacheRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, __int16 a6, int a7, uint64_t a8, void *a9, __int16 a10)
{
  if (a1 + 37912 == a2 && *(a1 + 37920))
  {
    GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
    LogFatalError("MakeNegativeCacheRecord: m->rec appears to be already in use for %s", v18, v19, v20, v21, v22, v23, v24, a1 + 47032);
  }

  *(a2 + 8) = -16;
  *(a2 + 32) = a8;
  v25 = *(a2 + 56);
  if (v25)
  {
    os_release(v25);
    *(a2 + 56) = 0;
  }

  if (a9)
  {
    v26 = mdns_cache_metadata_create();
    *(a2 + 56) = v26;
    mdns_dns_push_service_definition_set_srv_name(v26, a9);
  }

  *(a2 + 152) = 0;
  v27 = a2 + 152;
  *(v27 - 140) = a5;
  *(v27 - 138) = a6;
  *(v27 - 136) = a7;
  *(v27 - 132) = 0;
  *(v27 - 128) = a4;
  *(v27 - 124) = 0;
  *(v27 - 112) = a3;
  *(v27 - 104) = v27;
  *(v27 - 88) = 0;
  *(v27 - 80) = 0;
  v28 = *(a1 + 64);
  *(v27 - 72) = v28;
  *(v27 - 68) = 0;
  *(v27 - 64) = v28;
  *(v27 - 44) = 0;
  *(v27 - 60) = 0;
  *(v27 - 52) = 0;
  *(v27 - 40) = 0;
  *(v27 - 32) = 0;
  *(v27 - 42) = a10;
  *(v27 - 143) = HIBYTE(a10) & 0xF;
}

uint64_t GetCacheEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 1;
    v8 = *(a1 + 264);
    if (v8)
    {
      goto LABEL_50;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_20;
    }

    v12 = *(a1 + 240);
    v11 = *(a1 + 244);
    if (v11 == v12)
    {
LABEL_13:
      if (v11 < 0x1389 || (v14 = *(a1 + 252), v14 >= v11 >> 5))
      {
        v16 = *(a1 + 48);
        v17 = *(a1 + 52) + 1;
        *(a1 + 52) = v17;
        mDNS_VerifyLockState("Drop Lock", 0, v16, v17, "GetCacheEntity", 6508);
        (*(a1 + 32))(a1, 4294901506);
        mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "GetCacheEntity", 6510);
        --*(a1 + 52);
        goto LABEL_20;
      }

      v15 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      v35 = 67109376;
      v36 = v11;
      v37 = 1024;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Possible denial-of-service attack in progress: m->rrcache_size %u; m->rrcache_active %u", &v35, 0xEu);
LABEL_20:
      v8 = *(a1 + 264);
      if (v8)
      {
        goto LABEL_50;
      }

      v18 = 0;
      v19 = *(a1 + 244);
      do
      {
        v20 = (a1 + 272 + 8 * v18);
        v21 = *v20;
        if (*v20)
        {
          do
          {
            v23 = v21 + 2;
            v22 = v21[2];
            if (v22)
            {
              do
              {
                if (*(v22 + 96) || *(v22 + 112) || *(v22 + 84) || *(v22 + 128))
                {
                  v23 = v22;
                }

                else
                {
                  *v23 = *v22;
                  ReleaseCacheRecord(a1, v22);
                }

                v22 = *v23;
              }

              while (*v23);
              v21 = *v20;
            }

            v21[3] = v23;
            v24 = *v20;
            if (*v20 != a2 && (*v20)[2] == 0)
            {
              ReleaseCacheGroup(a1, v20);
              v24 = v20;
            }

            v21 = *v24;
            v20 = v24;
          }

          while (*v24);
        }

        ++v18;
      }

      while (v18 != 499);
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
          goto LABEL_49;
        }
      }

      else
      {
        v26 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_49:
          v8 = *(a1 + 264);
          if (!v8)
          {
LABEL_65:
            *(a1 + 56) = 0;
            return v8;
          }

LABEL_50:
          *(a1 + 264) = *v8;
          v30 = *(a1 + 244) + 1;
          *(a1 + 244) = v30;
          if (v30 < *(a1 + 256))
          {
LABEL_64:
            *(v8 + 192) = 0u;
            *(v8 + 208) = 0u;
            *(v8 + 160) = 0u;
            *(v8 + 176) = 0u;
            *(v8 + 128) = 0u;
            *(v8 + 144) = 0u;
            *(v8 + 96) = 0u;
            *(v8 + 112) = 0u;
            *(v8 + 64) = 0u;
            *(v8 + 80) = 0u;
            *(v8 + 32) = 0u;
            *(v8 + 48) = 0u;
            *v8 = 0u;
            *(v8 + 16) = 0u;
            goto LABEL_65;
          }

          v31 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              v36 = v30;
              goto LABEL_57;
            }
          }

          else
          {
            v31 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              v36 = v30;
LABEL_57:
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "RR Cache now using %u objects", &v35, 8u);
            }
          }

          v32 = *(a1 + 256);
          if (v32 >= 0x3E8)
          {
            v33 = 1000;
          }

          else
          {
            v33 = 100;
          }

          if (v32 < 0x64)
          {
            v33 = 10;
          }

          *(a1 + 256) = v32 + v33;
          goto LABEL_64;
        }
      }

      v29 = *(a1 + 244);
      v35 = 67109632;
      v36 = v19 - v29;
      v37 = 1024;
      v38 = v19;
      v39 = 1024;
      v40 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "GetCacheEntity recycled %u records to reduce cache from %u to %u", &v35, 0x14u);
      goto LABEL_49;
    }

    v13 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v35 = 67109376;
        v36 = v11;
        v37 = 1024;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GetFreeCacheRR: count mismatch: m->rrcache_totalused %u != m->rrcache_size %u", &v35, 0xEu);
      }
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    v11 = *(a1 + 240);
    goto LABEL_13;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetFreeCacheRR ERROR! Cache already locked!", a4, a5, a6, a7, a8, v35);
  return 0;
}

BOOL SameNameRecordAnswersQuestion(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 3);
  if ((v9 + 5) <= 3 && v9 != -4)
  {
    v26 = *(a3 + 136);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SameNameRecordAnswersQuestion: ERROR!! called with LocalOnly ResourceRecord %p, Question %p", a4, a5, a6, a7, a8, v9);
    return 0;
  }

  if (*(a3 + 354) && (!*(a3 + 646) || *(a1 + 2) != 5))
  {
    return 0;
  }

  if (v9)
  {
    v13 = *(a3 + 136);
    v14 = v13 == -2 || v13 == 0;
    if (!v14 && v9 != v13)
    {
      return 0;
    }
  }

  v16 = *(a3 + 80);
  if (v16 && (*(v16 + 276) & 0x4000) != 0)
  {
    v19 = *(a1 + 6);
    if (v19)
    {
      v19 = *(v19 + 24);
    }
  }

  else
  {
    v17 = *(a1 + 6);
    v18 = (!v17 || !*(v17 + 24)) && v9 != 0;
    v20 = *(a3 + 340);
    if (v18 | a2)
    {
      if (v18 && *(a3 + 340))
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (!*(a3 + 340))
    {
      return 0;
    }

    if (v17)
    {
      v19 = *(v17 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  if (v19 != v16)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + 2) == 5 && *a1 == 240 && *(a3 + 342) != 5)
  {
    return 0;
  }

  v21 = *(a3 + 144);
  if (v21)
  {
    v22 = *(v21 + 24);
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  result = RRTypeAnswersQuestionType(a1, *(a3 + 342), v23, a4, a5, a6, a7, a8);
  if (result)
  {
    v24 = *(a3 + 344);
    if (*(a1 + 3) == v24 || v24 == 255)
    {
      v25 = *(a1 + 3);
      if (!v25 || v25 == *(a3 + 136) || v25 != AWDLInterfaceID && v25 != WiFiAwareInterfaceID)
      {
        return 1;
      }

      if ((*(a3 + 326) & 0x10) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void CheckCacheExpiration(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!*(a1 + 56))
  {
    v13 = (a3 + 16);
    v12 = *(a3 + 16);
    *(a1 + 56) = 1;
    if (!v12)
    {
LABEL_88:
      *(a3 + 24) = v13;
      *(a1 + 56) = 0;
      return;
    }

    v15 = a1 + 4264;
    while (1)
    {
      if (*(v12 + 109))
      {
        v16 = dword_10016D258 + 939524096;
      }

      else
      {
        v16 = *(v12 + 80) + 1000 * *(v12 + 16);
      }

      v17 = *(a1 + 64);
      if (v17 - v16 < 0)
      {
        v19 = *(v12 + 84);
        if (v19 && v19 - v17 > 0)
        {
          v16 = *(v12 + 84);
        }

        else
        {
          if (v19)
          {
            CacheRecordDeferredAdd(a1, v12, a3, a4, a5, a6, a7, a8);
          }

          if (*(v12 + 96) && *(v12 + 108) <= 3u)
          {
            v20 = *(a1 + 64);
            v21 = *(v12 + 88);
            if (v20 - v21 < 0)
            {
              v54 = 1374389535000 * *(v12 + 16);
              v20 = (v54 >> 36) + (v54 >> 63);
            }

            else
            {
              *(a1 + 92) = v20;
              v21 = 939524096;
            }

            v16 = v20 + v21;
          }
        }

        goto LABEL_84;
      }

      v18 = *(v12 + 96);
      if (v18)
      {
        break;
      }

LABEL_69:
      v52 = *(v12 + 10);
      if (*(v12 + 10) && *(v12 + 16))
      {
        v16 += 604800000;
        if (v52 == 1)
        {
          *(v12 + 10) = 2;
          if (*(v12 + 84))
          {
            *(v12 + 84) = 0;
            v53 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_81;
              }
            }

            else
            {
              v53 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
LABEL_81:
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "CheckCacheExpiration: Resetting DelayDelivery for new ghost", buf, 2u);
              }
            }
          }

LABEL_84:
          if (*(v15 + 4 * a2) - v16 >= 1)
          {
            *(v15 + 4 * a2) = v16;
          }

          v13 = v12;
          goto LABEL_87;
        }

        if (v52 != 2 || *(a1 + 64) - v16 < 0)
        {
          goto LABEL_84;
        }
      }

      *v13 = *v12;
      ReleaseCacheRecord(a1, v12);
LABEL_87:
      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_88;
      }
    }

    if (*(v18 + 340))
    {
      if (!*(v18 + 632))
      {
        goto LABEL_25;
      }
    }

    else if ((*(v12 + 8) & 0x10) != 0)
    {
LABEL_25:
      if (*(v18 + 212) >= 1 && !*(v18 + 40))
      {
        *(v18 + 208) = v17 - 334;
        *(v18 + 212) = 334;
        SetNextQueryTime(a1, v18);
      }
    }

    v22 = *(a1 + 208);
    if (v22)
    {
      v23 = mDNSLogCategory_Default;
      v24 = v22 + 376;
      DNSTypeName(*(v22 + 342));
      LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv ERROR m->CurrentQuestion already set: %##s (%s)", v25, v26, v27, v28, v29, v24);
    }

    v30 = *(a1 + 192);
    *(a1 + 208) = v30;
    if (v30)
    {
      while (1)
      {
        if (v30 == *(a1 + 200))
        {
          goto LABEL_68;
        }

        if (!*(v30 + 354) && RecordAnswersQuestion(v12 + 8, 0, v30, a4, a5, a6, a7, a8))
        {
          *(v30 + 16) = 0;
          *(v30 + 24) = 0;
          v31 = *(v30 + 228);
          if (v31)
          {
            *(v30 + 228) = --v31;
            if (*(v12 + 20) >= 0x401u)
            {
              --*(v30 + 232);
            }

            if ((*(v12 + 8) & 0x10) != 0)
            {
              --*(v30 + 236);
            }
          }

          if (!*(v30 + 340) && v31 < *(v30 + 351))
          {
            *(v30 + 212) = 334;
            *(v30 + 208) = *(a1 + 64) - 334;
            SetNextQueryTime(a1, v30);
            if (mDNS_LoggingEnabled == 1)
            {
              v32 = mDNSLogCategory_Default;
              v33 = DNSTypeName(*(v30 + 342));
              v55 = *(v30 + 351);
              LogMsgWithLevel(v32, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv: (%s) %##s dropped below threshold of %d answers", v34, v35, v36, v37, v38, v33);
            }
          }

          if (**(v12 + 48))
          {
            goto LABEL_44;
          }

          v46 = *(v12 + 64);
          if (v46)
          {
            v47 = *(v46 + 32);
            if (!v47 || v47 == 1 && dnssec_obj_resource_record_member_get_validation_result(v46) == 1)
            {
              break;
            }
          }
        }

LABEL_50:
        v45 = *(a1 + 208);
        if (v45 == v30)
        {
          v45 = *(v30 + 8);
          *(a1 + 208) = v45;
        }

        v30 = v45;
        if (!v45)
        {
          goto LABEL_68;
        }
      }

      v48 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
        {
          v49 = *(v12 + 64);
          if (v49)
          {
            LODWORD(v49) = *(v49 + 32) == 1;
          }

LABEL_67:
          v50 = bswap32(*(v30 + 340));
          v51 = *(v12 + 12);
          *buf = 67109632;
          v57 = HIWORD(v50);
          v58 = 1024;
          v59 = v51;
          v60 = 1024;
          v61 = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "[Q%u] Delivering RMV event for the negative record - rr type: %{mdns:rrtype}d, validated: %{mdns:yesno}d", buf, 0x14u);
        }
      }

      else
      {
        v48 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
        {
          v49 = *(v12 + 64);
          if (v49)
          {
            LODWORD(v49) = *(v49 + 32) == 1;
          }

          goto LABEL_67;
        }
      }

LABEL_44:
      if (!*(v30 + 228) && !*(v30 + 340))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v39 = mDNSLogCategory_Default;
          DNSTypeName(*(v30 + 342));
          LogMsgWithLevel(v39, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv: Last answer for %##s (%s) expired from cache; will reconfirm antecedents", v40, v41, v42, v43, v44, v30 + 376);
        }

        ReconfirmAntecedents(a1, (v30 + 376), *(v30 + 200), *(v12 + 32), 0);
      }

      AnswerCurrentQuestionWithResourceRecord(a1, v12, 0);
      goto LABEL_50;
    }

LABEL_68:
    *(a1 + 208) = 0;
    --*(a1 + 252);
    goto LABEL_69;
  }

  v9 = mDNSLogCategory_Default;

  LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "CheckCacheExpiration ERROR! Cache already locked!", a4, a5, a6, a7, a8, a9);
}

void CacheRecordDeferredAdd(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 84) = 0;
  v10 = a1[26];
  if (v10)
  {
    v11 = mDNSLogCategory_Default;
    v12 = v10 + 376;
    DNSTypeName(*(v10 + 342));
    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "CacheRecordDeferredAdd ERROR m->CurrentQuestion already set: %##s (%s)", v13, v14, v15, v16, v17, v12);
  }

  v18 = a1[24];
  a1[26] = v18;
  if (v18)
  {
    do
    {
      if (v18 == a1[25])
      {
        break;
      }

      if (RecordAnswersQuestion(a2 + 8, 0, v18, a4, a5, a6, a7, a8))
      {
        AnswerCurrentQuestionWithResourceRecord(a1, a2, 1);
      }

      v19 = a1[26];
      if (v19 == v18)
      {
        v19 = *(v18 + 8);
        a1[26] = v19;
      }

      v18 = v19;
    }

    while (v19);
  }

  a1[26] = 0;
}

void AnswerCurrentQuestionWithResourceRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  v7 = FollowCNAME(v6, (a2 + 8), a3);
  if (DNSQuestionNeedsSensitiveLogging(v6))
  {
    if (*(a2 + 129))
    {
      goto LABEL_7;
    }

    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  *(a2 + 129) = v14;
  v15 = *(a2 + 120);
  if (v15)
  {
    *(v15 + 129) = v14;
  }

LABEL_7:
  if (*(v6 + 355))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v16 = mDNSLogCategory_Default;
      DNSTypeName(*(v6 + 342));
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      v75 = *(v6 + 355);
      LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "AnswerCurrentQuestionWithResourceRecord: Question %p %##s (%s) not answering with record %s due to LOAddressAnswers %d", v17, v18, v19, v20, v21, v6);
    }

    return;
  }

  if (a3 == 4 || !*(v6 + 354) || (*(v6 + 646) ? (v22 = !v7) : (v22 = 1), !v22 || *(v6 + 637) && *(a2 + 8) == 240 && *(a1 + 64) - *(v6 + 240) >= 0))
  {
    if (a3 == 1 && *(v6 + 340))
    {
      if (!*(a2 + 10) && *(v6 + 647) - 1 <= 1 && *(a2 + 8) != 240 && !*(v6 + 144) && !*(a2 + 64))
      {
        *(a2 + 10) = 1;
      }
    }

    else if (a3 != 1)
    {
      if (a3 != 2 || *(v6 + 352))
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (*(v6 + 638) || *(v6 + 653))
    {
      if (v7)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v28 = *(v6 + 136) + 5;
      if (v28 <= 3)
      {
        v29 = v28 == 1;
        v30 = *(v6 + 136) + 4 < 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29 || *(v6 + 634) || IsLocalDomain((v6 + 376)) || v7)
      {
        goto LABEL_49;
      }
    }

    if (!*(v6 + 268))
    {
      v23 = *(v6 + 80);
      if (v23 && (*(v23 + 281) - 1) <= 3u)
      {
        v24 = dword_10010D360[(*(v23 + 281) - 1)];
        v9 = *(v6 + 260);
        v25 = *(v6 + 96);
        if (v25 && *(v25 + 16) == &_mdns_querier_kind)
        {
          v26 = atomic_load((v25 + 208));
          v9 = v26 + v9;
          v23 = *(v6 + 80);
        }

        if (v9)
        {
          v27 = *(v6 + 264);
          if (v27)
          {
            dnssd_analytics_update_dns_query_info((*(v23 + 276) >> 3) & 1, (0x203010100uLL >> (8 * v24)), *(v6 + 342), v9, 1000 * (*(a1 + 64) - v27) / 1000, *(a2 + 8) != 240);
          }
        }
      }

      *(v6 + 268) = 1;
    }

LABEL_49:
    if (!*(v6 + 40))
    {
      v35 = *(a2 + 96);
      if (v35 != v6 && *(a2 + 10) != 2)
      {
        if (!v35)
        {
          ++*(a1 + 252);
          AdjustUnansweredQueries(a1, a2);
        }

        *(a2 + 96) = v6;
        SetNextCacheCheckTimeForRecord(a1, a2);
      }
    }

    if (!*(v6 + 633) && (*(a2 + 8) & 0x10) == 0)
    {
LABEL_57:
      if (*(a2 + 84))
      {
        return;
      }

      if (!*(v6 + 340))
      {
        goto LABEL_118;
      }

      v32 = *(v6 + 673);
      if (v32 > 2)
      {
        if (v32 - 4 < 5)
        {
          goto LABEL_118;
        }

        if (v32 == 3)
        {
          v33 = *(a2 + 12);
          if (v33 != 5)
          {
            if (*(a2 + 8) != 240 && v33 == 1 && a3 == 1 && *(a2 + 14) == 1)
            {
              v34 = *(v6 + 80);
              if (v34)
              {
                if (_DNS64TestIPv6Synthesis(a1, v34, (*(a2 + 48) + 4)))
                {
                  *(v6 + 673) = 4;
                  goto LABEL_118;
                }
              }
            }

            goto LABEL_101;
          }

LABEL_118:
          v37 = *(a2 + 8);
          goto LABEL_119;
        }

LABEL_108:
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS64StateMachine: unrecognized DNS64 state %d", v9, v10, v11, v12, v13, *(v6 + 673));
        goto LABEL_118;
      }

      if (*(v6 + 673))
      {
        if (v32 != 1)
        {
          if (v32 == 2)
          {
            mDNS_StopQuery_internal(a1, v6);
            *(v6 + 673) = 6;
            v36 = 12;
LABEL_102:
            *(v6 + 342) = v36;

            mDNS_StartQuery_internal(a1, v6);
            return;
          }

          goto LABEL_108;
        }

        if (a3 != 1 || *(a2 + 8) == 240 || *(a2 + 12) != 28 || *(a2 + 14) != 1)
        {
LABEL_101:
          mDNS_StopQuery_internal(a1, v6);
          *(v6 + 673) = 5;
          v36 = 28;
          goto LABEL_102;
        }

        v41 = a1;
        v42 = v6;
        v43 = 3;
      }

      else
      {
        v37 = *(a2 + 8);
        if (a3 != 1 || v37 != 240)
        {
LABEL_119:
          if (v37 == 240)
          {
            v90 = 0u;
            v91 = 0u;
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
            __src = 0u;
            v77 = 0u;
            if (PerformNextPunycodeConversion(v6, &__src))
            {
              v45 = *(v6 + 72);
              v46 = *(v6 + 340);
              *(v6 + 72) = 0;
              mDNS_StopQuery_internal(a1, v6);
              p_src = &__src;
              do
              {
                if (!p_src)
                {
                  break;
                }

                v48 = *p_src;
                if (v48 > 0x3F)
                {
                  break;
                }

                if (!*p_src)
                {
                  v63 = p_src - &__src + 1;
                  if (v63 <= 0x100u)
                  {
                    memcpy((v6 + 376), &__src, v63);
                    goto LABEL_165;
                  }

                  break;
                }

                p_src = (p_src + v48 + 1);
              }

              while (p_src - &__src <= 255);
              *(v6 + 376) = 0;
LABEL_165:
              *(v6 + 200) = DomainNameHashValue(v6 + 376);
              mDNS_StartQuery_internal(a1, v6);
              if (v45)
              {
                if (*(v6 + 40))
                {
                  CloseSocketSet(v45);
                  free(v45);
                }

                else
                {
                  *(v6 + 72) = v45;
                  *(v6 + 340) = v46;
                }
              }

              return;
            }

            v49 = *(a2 + 8) == 240;
          }

          else
          {
            v49 = 0;
          }

          v50 = *(v6 + 342);
          v51 = v50 != 47 && *(a2 + 12) == 47 && RRAssertsExistence(a2 + 8, v50, v8, v9, v10, v11, v12, v13) == 0;
          if (v49 || v51)
          {
            if ((a3 - 1) >= 2)
            {
              if (!a3)
              {
                v52 = *(v6 + 144);
                if (!v52 || (*(v52 + 24) & 1) == 0)
                {
                  return;
                }

                goto LABEL_145;
              }
            }

            else if (!*(v6 + 635))
            {
              return;
            }
          }

          else if (!a3)
          {
LABEL_145:
            if (*(v6 + 152) && (!v7 || *(v6 + 635) || *(v6 + 647) == 1))
            {
              v53 = *(a1 + 48);
              v54 = *(a1 + 52) + 1;
              *(a1 + 52) = v54;
              mDNS_VerifyLockState("Drop Lock", 0, v53, v54, "AnswerCurrentQuestionWithResourceRecord", 5540);
              v61 = *(v6 + 342);
              if (v61 == 47 || *(a2 + 12) != 47 || RRAssertsExistence(a2 + 8, v61, v55, v56, v57, v58, v59, v60))
              {
                if (*(v6 + 673) - 3 <= 1 && *(a2 + 12) == 1)
                {
                  DNS64AnswerCurrentQuestion(a1, a2 + 8, a3);
                }

                else
                {
                  (*(v6 + 152))(a1, v6, a2 + 8, a3);
                }
              }

              else if (!*(v6 + 340))
              {
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
                __src = 0u;
                v77 = 0u;
                MakeNegativeCacheRecordForQuestion(a1, &__src, v6, *(a2 + 32));
                (*(v6 + 152))(a1, v6, &__src + 8, a3);
              }

              mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerCurrentQuestionWithResourceRecord", 5566);
              --*(a1 + 52);
            }

            if (*(a1 + 208) == v6 && v7)
            {
              AnswerQuestionByFollowingCNAME(a1, v6, a2 + 8);
            }

            return;
          }

          if (!*(v6 + 40) && !*(v6 + 340))
          {
            if (!*(v6 + 268))
            {
              *(v6 + 268) = 1;
            }

            v64 = *(a1 + 12656);
            if (v64)
            {
              while (!*(v64 + 16))
              {
                v64 = *v64;
                if (!v64)
                {
                  goto LABEL_145;
                }
              }

LABEL_177:
              v65 = v64[1];
              if (v65 && v64[444] == *(a2 + 32))
              {
                if (*(v6 + 357))
                {
                  v66 = *(v6 + 264);
                  if (v66)
                  {
                    v67 = *(a1 + 64) - v66;
                    if (v67 >= 1)
                    {
                      v68 = 1000 * (v67 % 0x3E8u) / 0x3E8 + 1000 * (v67 / 0x3E8u);
                      v69 = v68 >> 3;
                      v70 = 15;
                      if (v68 >> 5 >= 0x271)
                      {
                        v70 = 16;
                      }

                      v71 = v68 / 0x3E8u;
                      if (v69 > 0x752)
                      {
                        v71 = v70;
                      }

                      v72 = v65 + 28;
                      v73 = *(v72 + 2 * v71);
                      if (v73 != 0xFFFF)
                      {
                        *(v72 + 2 * v71) = v73 + 1;
                      }
                    }
                  }
                }

                else
                {
                  v74 = *(v65 + 24);
                  if (v74 != -1)
                  {
                    *(v65 + 24) = v74 + 1;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v64 = *v64;
                  if (!v64)
                  {
                    break;
                  }

                  if (*(v64 + 16))
                  {
                    goto LABEL_177;
                  }
                }
              }
            }
          }

          goto LABEL_145;
        }

        v38 = *(v6 + 342);
        if (v38 == 28)
        {
          if (*(a2 + 12) == 28 && *(a2 + 14) == 1)
          {
            v39 = *(v6 + 200);
            if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
            {
              dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
            }

            if (v39 != _DNS64IPv4OnlyFQDNHash_sHash || !SameDomainNameBytes((v6 + 376), "\bipv4only\x04arpa"))
            {
              v40 = *(v6 + 80);
              if (v40)
              {
                if (*(v40 + 282) == 2 && (*(v40 + 276) & 0x30) == 0x20)
                {
                  v41 = a1;
                  v42 = v6;
                  v43 = 1;
                  goto LABEL_98;
                }
              }
            }
          }

          v38 = *(v6 + 342);
        }

        if (v38 != 12)
        {
          goto LABEL_118;
        }

        if (*(a2 + 12) != 12)
        {
          goto LABEL_118;
        }

        if (*(a2 + 14) != 1)
        {
          goto LABEL_118;
        }

        v44 = *(v6 + 80);
        if (!v44 || *(v44 + 282) != 2 || (*(v44 + 276) & 0x30) != 0x20 || !GetReverseIPv6Addr((v6 + 376), 0))
        {
          goto LABEL_118;
        }

        v41 = a1;
        v42 = v6;
        v43 = 2;
      }

LABEL_98:

      _DNS64RestartQuestion(v41, v42, v43);
      return;
    }

LABEL_52:
    if (*(v6 + 212) >= 1 && !*(v6 + 40) && (!*(v6 + 340) || !*(v6 + 632)))
    {
      v31 = *(a1 + 64);
      *(v6 + 256) = v31;
      *(v6 + 224) = 0;
      *(v6 + 208) = v31;
      *(v6 + 212) = 3600000;
      *(v6 + 352) = 0;
      *(v6 + 649) = 0;
    }

    goto LABEL_57;
  }
}

char *create_reply(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0xFFFFFFFC) > 0xBuLL)
  {
    v8 = a2;
    v9 = a2 + 44;
    if (v9 && (v11 = result, (result = malloc_type_calloc(1uLL, v9, 0x12F86626uLL)) != 0))
    {
      *result = 0;
      *(result + 2) = v8 + 28;
      *(result + 12) = &_mh_execute_header;
      *(result + 5) = v8;
      *(result + 6) = 0;
      *(result + 7) = v11;
      *(result + 4) = *(a3 + 232);
      *(result + 10) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: create_reply - data length less than length of required fields", a4, a5, a6, a7, a8, v12);
    return 0;
  }

  return result;
}

uint64_t mDNSPlatformInterfaceIndexfromInterfaceID(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = a2 + 5;
  if (a2 + 5) < 6 && ((0x2Du >> v10))
  {
    return dword_10010DF70[v10];
  }

  v11 = **a1;
  if (v11)
  {
    while (*(v11 + 3720) != a2)
    {
      v11 = *(v11 + 3680);
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (!a3)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Interface index for InterfaceID %p not found; Updating interface list", a4, a5, a6, a7, a8, a2);
      }

      mDNSMacOSXNetworkChanged(a1, a2, a3, a4, a5, a6, a7, a8);
      v12 = **a1;
      if (v12)
      {
        while (*(v12 + 3720) != v8)
        {
          v12 = *(v12 + 3680);
          if (!v12)
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

  return v8;
}

void abort_request(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
LABEL_11:
    if (*a1)
    {
      Querier_DeregisterCustomDNSService(*a1);
      *a1 = 0;
    }

    v5 = *(a1 + 184);
    if (v5 < 0)
    {
      v15 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v16 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      v23 = *(a1 + 200);
      *buf = 67109632;
      v37 = v23;
      v38 = 2048;
      *v39 = a1;
      *&v39[8] = 1024;
      LODWORD(v40) = v5;
      v19 = "[R%u] abort_request: ERROR: Attempt to abort operation %p with invalid fd %d";
      v20 = v15;
      v21 = 24;
      goto LABEL_36;
    }

    if (*(a1 + 24))
    {
LABEL_56:
      *(a1 + 192) = -1;
      *(a1 + 184) = -1;
      *(a1 + 112) = -1;
      return;
    }

    v6 = *(a1 + 192);
    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    if (v6 == v5)
    {
      if (v9)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v7 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      v24 = *(a1 + 200);
      *buf = 67109376;
      v37 = v24;
      v38 = 1024;
      *v39 = v5;
      v25 = "[R%u] Removing FD %d";
      v26 = v7;
      v27 = 14;
    }

    else
    {
      if (v9)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v7 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      v28 = *(a1 + 200);
      *buf = 67109632;
      v37 = v28;
      v38 = 1024;
      *v39 = v5;
      *&v39[4] = 1024;
      *&v39[6] = v6;
      v25 = "[R%u] Removing FD %d and closing errsd %d";
      v26 = v7;
      v27 = 20;
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
LABEL_45:
    v29 = *(a1 + 184);
    v30 = &gEventSources;
    while (1)
    {
      v31 = v30;
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      if (*(v30 + 2) == v29)
      {
        *v31 = *v30;
        close(v29);
        free(v30);
        goto LABEL_50;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsSupportRemoveFDFromEventLoop: ERROR fd %d not found in EventLoop source list", v10, v11, v12, v13, v14, *(a1 + 184));
LABEL_50:
    v32 = *(a1 + 192);
    if (v32 != *(a1 + 184))
    {
      close(v32);
      *(a1 + 192) = *(a1 + 184);
    }

    v34 = (a1 + 96);
    v33 = *(a1 + 96);
    if (v33)
    {
      do
      {
        v35 = *v33;
        *v34 = *v33;
        if (!v35)
        {
          *(a1 + 104) = v34;
        }

        free(v33);
        v33 = *v34;
      }

      while (*v34);
    }

    goto LABEL_56;
  }

  if (v2 != -1)
  {
    v2(a1);
    goto LABEL_11;
  }

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
      return;
    }

    goto LABEL_33;
  }

  v3 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_33:
    v18 = *(a1 + 200);
    *buf = 67109632;
    v37 = v18;
    v38 = 2048;
    *v39 = a1;
    *&v39[8] = 2048;
    v40 = -1;
    v19 = "[R%u] abort_request: ERROR: Attempt to abort operation %p with req->terminate %p";
    v20 = v3;
    v21 = 28;
LABEL_36:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
  }
}

void queryrecord_termination_callback(uint64_t a1)
{
  v2 = (*(a1 + 144) + 376);
  v3 = IsLocalDomain(v2);
  v4 = *(*(a1 + 144) + 342);
  if (!_shouldLogFullRequestInfo((a1 + 204), (a1 + 208)))
  {
    if (!mDNS_SensitiveLoggingEnableCount || (v3 ? (v20 = mDNSLogCategory_mDNS) : (v20 = mDNSLogCategory_Default), v20 == mDNSLogCategory_State))
    {
      if (v3)
      {
        v21 = mDNSLogCategory_mDNS;
      }

      else
      {
        v21 = mDNSLogCategory_Default;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v3)
      {
        v21 = mDNSLogCategory_mDNS;
      }

      else
      {
        v21 = mDNSLogCategory_Default_redacted;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }
    }

    v22 = *(a1 + 200);
    v23 = mDNS_DomainNameFNV1aHash(v2);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v24 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v22;
    *&__tp[8] = 1024;
    *&__tp[10] = v23;
    *&__tp[14] = 1024;
    *&__tp[16] = v24;
    v25 = "[R%u] DNSServiceQueryRecord STOP -- name hash: %x, duration: %{mdns:time_duration}u";
    v26 = v21;
    v27 = 20;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, __tp, v27);
    goto LABEL_46;
  }

  if (!mDNS_SensitiveLoggingEnableCount || (v3 ? (v5 = mDNSLogCategory_mDNS) : (v5 = mDNSLogCategory_Default), v5 == mDNSLogCategory_State))
  {
    if (v3)
    {
      v6 = mDNSLogCategory_mDNS;
    }

    else
    {
      v6 = mDNSLogCategory_Default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 200);
      v18 = v2;
      while (1)
      {
        if (!v18 || (v19 = *v18, v19 > 0x3F))
        {
LABEL_26:
          v17 = 257;
          goto LABEL_44;
        }

        if (!*v18)
        {
          break;
        }

        v18 += v19 + 1;
        if (v18 - v2 >= 256)
        {
          goto LABEL_26;
        }
      }

      v17 = (v18 - v2 + 1);
      goto LABEL_44;
    }
  }

  else
  {
    if (v3)
    {
      v6 = mDNSLogCategory_mDNS;
    }

    else
    {
      v6 = mDNSLogCategory_Default_redacted;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 200);
      v15 = v2;
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_16:
          v17 = 257;
          goto LABEL_44;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (v15 - v2 >= 256)
        {
          goto LABEL_16;
        }
      }

      v17 = (v15 - v2 + 1);
LABEL_44:
      v38 = v17;
      v28 = *(a1 + 248);
      v29 = *(a1 + 252);
      v30 = *(a1 + 188);
      v31 = mDNS_DomainNameFNV1aHash(v2);
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v32 = *__tp - *(a1 + 204);
      *__tp = 67111683;
      *&__tp[4] = v14;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      v40 = v38;
      v41 = 2101;
      v42 = v2;
      v43 = 1024;
      v44 = v4;
      v45 = 1024;
      v46 = v28;
      v47 = 1024;
      v48 = v29;
      v49 = 1024;
      v50 = v30;
      v51 = 2082;
      v52 = a1 + 256;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v32;
      v25 = "[R%u] DNSServiceQueryRecord STOP -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
      v26 = v6;
      v27 = 80;
      goto LABEL_45;
    }
  }

LABEL_46:
  QueryRecordClientRequestStop(*(a1 + 144), v7, v8, v9, v10, v11, v12, v13, v37);
  v33 = *(a1 + 8);
  if (v33)
  {
    v34 = *(a1 + 252);
    if (v34)
    {
      v35 = AWDLInterfaceID == v34 || WiFiAwareInterfaceID == v34;
    }

    else
    {
      v35 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v2, __tp);
    _mdns_powerlog_bonjour_event(9u, v35, (a1 + 256), service_type_from_domain_name, v33);
    *(a1 + 8) = 0;
  }
}

void mDNS_StopQuery(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_StopQuery", 16005);
  mDNS_StopQuery_internal(a1, a2);

  mDNS_Unlock_(a1, "mDNS_StopQuery", 16007);
}

uint64_t mDNS_StopQuery_internal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (v4 && *(v4 + 24) == 1)
  {
    v5 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    if (!*(a2 + 656))
    {
      if (v7)
      {
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v5 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }

      *buf = 136447234;
      *v157 = "question->enableDNSSEC";
      *&v157[8] = 2082;
      *&v157[10] = "";
      *&v157[18] = 2082;
      *&v157[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
      *&v157[28] = 1024;
      *&v157[30] = 126;
      *&v157[34] = 2048;
      *&v157[36] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      goto LABEL_29;
    }

    if (v7)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
      {
        v8 = bswap32(*(a2 + 340)) >> 16;
        v9 = a2 + 376;
        v10 = (a2 + 376);
        while (1)
        {
          if (!v10 || (v11 = *v10, v11 > 0x3F))
          {
LABEL_17:
            v12 = 257;
            goto LABEL_27;
          }

          if (!*v10)
          {
            break;
          }

          v10 += v11 + 1;
          if (&v10[-v9] >= 256)
          {
            goto LABEL_17;
          }
        }

        v12 = (v10 - v9 + 1);
LABEL_27:
        v16 = DNSTypeName(*(a2 + 342));
        *buf = 67110403;
        *v157 = v8;
        *&v157[4] = 2160;
        *&v157[6] = 1752392040;
        *&v157[14] = 1040;
        *&v157[16] = v12;
        *&v157[20] = 2101;
        *&v157[22] = a2 + 376;
        *&v157[30] = 2160;
        *&v157[32] = 1752392040;
        *&v157[40] = 2085;
        *&v157[42] = v16;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Q%u] Stopping Primary DNSSEC question - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s", buf, 0x36u);
      }
    }

    else
    {
      v5 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
      {
        v8 = bswap32(*(a2 + 340)) >> 16;
        v13 = a2 + 376;
        v14 = (a2 + 376);
        while (1)
        {
          if (!v14 || (v15 = *v14, v15 > 0x3F))
          {
LABEL_24:
            v12 = 257;
            goto LABEL_27;
          }

          if (!*v14)
          {
            break;
          }

          v14 += v15 + 1;
          if (&v14[-v13] >= 256)
          {
            goto LABEL_24;
          }
        }

        v12 = (v14 - v13 + 1);
        goto LABEL_27;
      }
    }

    v17 = *(*(a2 + 144) + 16);
    *(a2 + 152) = *(v17 + 40);
    *(a2 + 635) = *(v17 + 36);
  }

LABEL_29:
  if (*(a1 + 232) != a2 && *(a2 + 184))
  {
    dns_push_handle_question_stop(a1, a2);
  }

  v18 = (a2 + 376);
  v19 = CacheGroupForName(a1, *(a2 + 200), (a2 + 376));
  v25 = (a1 + 192);
  v26 = *(a2 + 252);
  v27 = *(a2 + 136);
  v29 = v27 == -5 || v27 == -3 || v27 == -2;
  v30 = (a1 + 216);
  if (!v29)
  {
    v30 = (a1 + 192);
  }

  do
  {
    v31 = v30;
    v32 = *v30;
    v30 = (*v30 + 8);
    if (v32)
    {
      v33 = v32 == a2;
    }

    else
    {
      v33 = 1;
    }
  }

  while (!v33);
  if (!v32)
  {
    v38 = 4294901755;
    if ((*(a2 + 212) & 0x80000000) != 0)
    {
      return v38;
    }

    v39 = __rev16(*(a2 + 340));
    v40 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v41 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return v38;
      }

      v42 = (a2 + 376);
      while (1)
      {
        if (!v42 || (v43 = *v42, v43 > 0x3F))
        {
LABEL_67:
          v44 = 257;
          goto LABEL_245;
        }

        if (!*v42)
        {
          break;
        }

        v42 += v43 + 1;
        if (v42 - v18 >= 256)
        {
          goto LABEL_67;
        }
      }

      v44 = (v42 - v18 + 1);
    }

    else
    {
      v40 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return v38;
      }

      v100 = (a2 + 376);
      while (1)
      {
        if (!v100 || (v101 = *v100, v101 > 0x3F))
        {
LABEL_181:
          v44 = 257;
          goto LABEL_245;
        }

        if (!*v100)
        {
          break;
        }

        v100 += v101 + 1;
        if (v100 - v18 >= 256)
        {
          goto LABEL_181;
        }
      }

      v44 = (v100 - v18 + 1);
    }

LABEL_245:
    v121 = DNSTypeName(*(a2 + 342));
    *buf = 67110403;
    *v157 = v26;
    *&v157[4] = 1024;
    *&v157[6] = v39;
    *&v157[10] = 2160;
    *&v157[12] = 1752392040;
    *&v157[20] = 1040;
    *&v157[22] = v44;
    *&v157[26] = 2101;
    *&v157[28] = a2 + 376;
    *&v157[36] = 2082;
    *&v157[38] = v121;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "[R%u->Q%u] mDNS_StopQuery_internal: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) not found in active list.", buf, 0x32u);
    return v38;
  }

  *v31 = *v30;
  v34 = *(a2 + 136) + 5;
  if (v34 <= 3)
  {
    v35 = v34 == 1;
    v36 = *(a2 + 136) + 4 < 0;
  }

  else
  {
    v35 = 1;
  }

  if (v35 && !*(a2 + 340))
  {
    v45 = *(a1 + 19908);
    if (v45 + *(a1 + 19904) == 1)
    {
      v46 = *(a1 + 64) + 60000;
      if (v46 <= 1)
      {
        v46 = 1;
      }

      *(a1 + 116) = v46;
    }

    *(a1 + 19908) = v45 - 1;
  }

  v155 = v19;
  if (!v26)
  {
    v37 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v37 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }
    }

    v47 = bswap32(*(a2 + 340)) >> 16;
    v48 = mDNS_DomainNameFNV1aHash((a2 + 376));
    *buf = 67109376;
    *v157 = v47;
    *&v157[4] = 1024;
    *&v157[6] = v48;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StopQuery_internal STOP -- name hash: %x", buf, 0xEu);
  }

LABEL_76:
  v49 = *(a2 + 40);
  v50 = &unk_100178000;
  if (!v49)
  {
    v56 = *v25;
    if (!*v25)
    {
      goto LABEL_199;
    }

    v57 = 0;
    v58 = a2 + 284;
    v59 = (a2 + 96);
    while (1)
    {
      if (*(v56 + 40) != a2)
      {
        goto LABEL_166;
      }

      *(v56 + 40) = v57;
      if (v57)
      {
        goto LABEL_166;
      }

      *(v56 + 208) = *(a2 + 208);
      *(v56 + 224) = *(a2 + 224);
      *(v56 + 352) = *(a2 + 352);
      *(v56 + 256) = *(a2 + 256);
      *(v56 + 104) = *(a2 + 104);
      v60 = *v58;
      *(v56 + 300) = *(v58 + 16);
      *(v56 + 284) = v60;
      *(v56 + 336) = *(a2 + 336);
      v61 = *(a2 + 80);
      if (v61)
      {
        os_retain(v61);
      }

      v62 = *(v56 + 80);
      if (v62)
      {
        os_release(v62);
      }

      v63 = *(a2 + 80);
      *(v56 + 80) = v63;
      if (v63)
      {
        os_release(v63);
        *(a2 + 80) = 0;
      }

      v65 = (v56 + 96);
      v64 = *(v56 + 96);
      if (v64)
      {
        mdns_client_invalidate(v64);
        os_release(*v65);
        *v65 = 0;
      }

      if (!*v59)
      {
        goto LABEL_103;
      }

      os_retain(*v59);
      if (*v65)
      {
        os_release(*v65);
      }

      v66 = *v59;
      *v65 = *v59;
      if (v66)
      {
        break;
      }

LABEL_104:
      *(v56 + 192) = *(a2 + 192);
      *(a2 + 192) = 0;
      v67 = *(a2 + 144);
      if (!v67 || *(v67 + 24) != 1)
      {
        goto LABEL_117;
      }

      v68 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
        {
LABEL_111:
          v69 = bswap32(*(v56 + 340));
          v70 = bswap32(*(a2 + 340));
          *buf = 67109376;
          *v157 = HIWORD(v69);
          *&v157[4] = 1024;
          *&v157[6] = HIWORD(v70);
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[Q%u->Q%u] Non-primary DNSSEC question becomes primary due to primary question cancelation.", buf, 0xEu);
        }
      }

      else
      {
        v68 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
        {
          goto LABEL_111;
        }
      }

      v71 = *(a2 + 144);
      if (v71)
      {
        ++*v71;
      }

      if (*(v56 + 144))
      {
        ref_count_obj_release(*(v56 + 144));
        *(v56 + 144) = 0;
        v71 = *(a2 + 144);
      }

      *(v56 + 144) = v71;
      ref_count_obj_release(v71);
      *(a2 + 144) = 0;
      v72 = *(v56 + 152);
      v73 = *(*(v56 + 144) + 16);
      v74 = *(v56 + 635) != 0;
      *(v73 + 24) = v56;
      *(v73 + 40) = v72;
      *(v73 + 36) = v74;
      *(v56 + 152) = dnssec_query_record_result_reply;
      *(v56 + 635) = 1;
      *(v56 + 228) = *(a2 + 228);
LABEL_117:
      *(v56 + 340) = *(a2 + 340);
      *(v56 + 350) = *(a2 + 350);
      *(v56 + 272) = *(a2 + 272);
      *(v56 + 348) = *(a2 + 348);
      *(v56 + 328) = *(a2 + 328);
      *(a2 + 104) = 0;
      if (!*(a2 + 40) && !*(a2 + 340))
      {
        v75 = *(a2 + 260);
        *(v56 + 268) = *(a2 + 268);
        *(v56 + 260) = v75;
      }

      if (*(v56 + 104))
      {
        v76 = *(v50 + 434);
        if (!mDNS_SensitiveLoggingEnableCount || v76 == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(*(v50 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v77 = v50;
            v82 = v56 + 376;
            v83 = (v56 + 376);
            while (1)
            {
              if (!v83 || (v84 = *v83, v84 > 0x3F))
              {
LABEL_136:
                v81 = 257;
                goto LABEL_139;
              }

              if (!*v83)
              {
                break;
              }

              v83 += v84 + 1;
              if (&v83[-v82] >= 256)
              {
                goto LABEL_136;
              }
            }

            v81 = (v83 - v82 + 1);
LABEL_139:
            v85 = DNSTypeName(*(v56 + 342));
            *buf = 141558787;
            *v157 = 1752392040;
            *&v157[8] = 1040;
            *&v157[10] = v81;
            *&v157[14] = 2101;
            *&v157[16] = v56 + 376;
            *&v157[24] = 2082;
            *&v157[26] = v85;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates transferred nta pointer for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
            v50 = v77;
            v58 = a2 + 284;
          }
        }

        else
        {
          v76 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v77 = v50;
            v78 = v56 + 376;
            v79 = (v56 + 376);
            while (1)
            {
              if (!v79 || (v80 = *v79, v80 > 0x3F))
              {
LABEL_129:
                v81 = 257;
                goto LABEL_139;
              }

              if (!*v79)
              {
                break;
              }

              v79 += v80 + 1;
              if (&v79[-v78] >= 256)
              {
                goto LABEL_129;
              }
            }

            v81 = (v79 - v78 + 1);
            goto LABEL_139;
          }
        }

        *(*(v56 + 104) + 824) = v56;
      }

      if (*(a2 + 112) && mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(*(v50 + 434), OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates did not transfer tcp pointer", v20, v21, v22, v23, v24, v151);
      }

      if (*(a2 + 350) != 22)
      {
        goto LABEL_165;
      }

      v86 = *(v50 + 434);
      if (!mDNS_SensitiveLoggingEnableCount || v86 == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(*(v50 + 434), OS_LOG_TYPE_DEFAULT))
        {
          v87 = v50;
          v92 = v56 + 376;
          v93 = (v56 + 376);
          while (1)
          {
            if (!v93 || (v94 = *v93, v94 > 0x3F))
            {
LABEL_160:
              v91 = 257;
              goto LABEL_163;
            }

            if (!*v93)
            {
              break;
            }

            v93 += v94 + 1;
            if (&v93[-v92] >= 256)
            {
              goto LABEL_160;
            }
          }

          v91 = (v93 - v92 + 1);
          goto LABEL_163;
        }
      }

      else
      {
        v86 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v50;
          v88 = v56 + 376;
          v89 = (v56 + 376);
          while (1)
          {
            if (!v89 || (v90 = *v89, v90 > 0x3F))
            {
LABEL_153:
              v91 = 257;
              goto LABEL_163;
            }

            if (!*v89)
            {
              break;
            }

            v89 += v90 + 1;
            if (&v89[-v88] >= 256)
            {
              goto LABEL_153;
            }
          }

          v91 = (v89 - v88 + 1);
LABEL_163:
          v95 = DNSTypeName(*(v56 + 342));
          *buf = 141558787;
          *v157 = 1752392040;
          *&v157[8] = 1040;
          *&v157[10] = v91;
          *&v157[14] = 2101;
          *&v157[16] = v56 + 376;
          *&v157[24] = 2082;
          *&v157[26] = v95;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates transferred LLQ state for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
          v50 = v87;
          v58 = a2 + 284;
        }
      }

      *(a2 + 350) = 0;
LABEL_165:
      SetNextQueryTime(a1, v56);
      v57 = v56;
LABEL_166:
      v56 = *(v56 + 8);
      if (!v56)
      {
        goto LABEL_199;
      }
    }

    os_release(v66);
    v65 = (a2 + 96);
LABEL_103:
    *v65 = 0;
    goto LABEL_104;
  }

  v51 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a2 + 252);
      v96 = (a2 + 376);
      v154 = bswap32(*(a2 + 340)) >> 16;
      v153 = bswap32(*(v49 + 340)) >> 16;
      while (1)
      {
        if (!v96 || (v97 = *v96, v97 > 0x3F))
        {
LABEL_174:
          v98 = 257;
          goto LABEL_183;
        }

        if (!*v96)
        {
          break;
        }

        v96 += v97 + 1;
        if (v96 - v18 >= 256)
        {
          goto LABEL_174;
        }
      }

      v98 = (v96 - v18 + 1);
LABEL_183:
      v152 = v98;
      v102 = DNSTypeName(*(a2 + 342));
      v103 = *(a2 + 40);
      v104 = v103 + 376;
      v105 = (v103 + 376);
      while (1)
      {
        if (!v105 || (v106 = *v105, v106 > 0x3F))
        {
LABEL_188:
          v107 = 257;
          goto LABEL_198;
        }

        if (!*v105)
        {
          break;
        }

        v105 += v106 + 1;
        if (&v105[-v104] >= 256)
        {
          goto LABEL_188;
        }
      }

      v107 = (v105 - v104 + 1);
      goto LABEL_198;
    }
  }

  else
  {
    v51 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a2 + 252);
      v53 = (a2 + 376);
      v154 = bswap32(*(a2 + 340)) >> 16;
      v153 = bswap32(*(v49 + 340)) >> 16;
      while (1)
      {
        if (!v53 || (v54 = *v53, v54 > 0x3F))
        {
LABEL_85:
          v55 = 257;
          goto LABEL_191;
        }

        if (!*v53)
        {
          break;
        }

        v53 += v54 + 1;
        if (v53 - v18 >= 256)
        {
          goto LABEL_85;
        }
      }

      v55 = (v53 - v18 + 1);
LABEL_191:
      v152 = v55;
      v102 = DNSTypeName(*(a2 + 342));
      v103 = *(a2 + 40);
      v108 = v103 + 376;
      v109 = (v103 + 376);
      while (1)
      {
        if (!v109 || (v110 = *v109, v110 > 0x3F))
        {
LABEL_196:
          v107 = 257;
          goto LABEL_198;
        }

        if (!*v109)
        {
          break;
        }

        v109 += v110 + 1;
        if (&v109[-v108] >= 256)
        {
          goto LABEL_196;
        }
      }

      v107 = (v109 - v108 + 1);
LABEL_198:
      v111 = DNSTypeName(*(v103 + 342));
      *buf = 67112195;
      *v157 = v52;
      *&v157[4] = 1024;
      *&v157[6] = v154;
      *&v157[10] = 1024;
      *&v157[12] = v153;
      *&v157[16] = 2048;
      *&v157[18] = a2;
      *&v157[26] = 2160;
      *&v157[28] = 1752392040;
      *&v157[36] = 1040;
      *&v157[38] = v152;
      *&v157[42] = 2101;
      *&v157[44] = a2 + 376;
      v158 = 2082;
      v159 = v102;
      v160 = 2048;
      v161 = v103;
      v162 = 2160;
      v163 = 1752392040;
      v164 = 1040;
      v165 = v107;
      v166 = 2101;
      v167 = v103 + 376;
      v168 = 2082;
      v169 = v111;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "[R%u->DupQ%d->Q%d] UpdateQuestionDuplicates: question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) duplicate of %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x70u);
      v50 = &unk_100178000;
    }
  }

LABEL_199:
  *(a2 + 212) = -1;
  if (v155)
  {
    for (i = v155[2]; i; i = *i)
    {
      if (i[12] == a2)
      {
        v113 = *v25;
        if (*v25)
        {
          v114 = 0;
          do
          {
            if (v113 == *(a1 + 200))
            {
              break;
            }

            if (!*(v113 + 40) && !*(v113 + 354) && RecordAnswersQuestion((i + 1), 0, v113, v20, v21, v22, v23, v24))
            {
              if (*(v113 + 212) >= 1)
              {
                i[12] = v113;
                goto LABEL_216;
              }

              if (!v114)
              {
                v114 = v113;
              }
            }

            v113 = *(v113 + 8);
          }

          while (v113);
          i[12] = v114;
          if (v114)
          {
            continue;
          }
        }

        else
        {
          i[12] = 0;
        }

        --*(a1 + 252);
      }

LABEL_216:
      ;
    }
  }

  if (*(a1 + 208) == a2)
  {
    *(a1 + 208) = *(a2 + 8);
  }

  if (*(a1 + 200) == a2)
  {
    *(a1 + 200) = *(a2 + 8);
  }

  if (*(a1 + 224) == a2)
  {
    *(a1 + 224) = *(a2 + 8);
  }

  if (*(a1 + 232) == a2)
  {
    v115 = *(v50 + 434);
    if (!mDNS_SensitiveLoggingEnableCount || v115 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(*(v50 + 434), OS_LOG_TYPE_DEFAULT))
      {
        v119 = (a2 + 376);
        while (1)
        {
          if (!v119 || (v120 = *v119, v120 > 0x3F))
          {
LABEL_241:
            v118 = 257;
            goto LABEL_247;
          }

          if (!*v119)
          {
            break;
          }

          v119 += v120 + 1;
          if (v119 - v18 >= 256)
          {
            goto LABEL_241;
          }
        }

        v118 = (v119 - v18 + 1);
        goto LABEL_247;
      }
    }

    else
    {
      v115 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v116 = (a2 + 376);
        while (1)
        {
          if (!v116 || (v117 = *v116, v117 > 0x3F))
          {
LABEL_234:
            v118 = 257;
            goto LABEL_247;
          }

          if (!*v116)
          {
            break;
          }

          v116 += v117 + 1;
          if (v116 - v18 >= 256)
          {
            goto LABEL_234;
          }
        }

        v118 = (v116 - v18 + 1);
LABEL_247:
        v122 = DNSTypeName(*(a2 + 342));
        *buf = 141558787;
        *v157 = 1752392040;
        *&v157[8] = 1040;
        *&v157[10] = v118;
        *&v157[14] = 2101;
        *&v157[16] = a2 + 376;
        *&v157[24] = 2082;
        *&v157[26] = v122;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "mDNS_StopQuery_internal: Just deleted the current restart question: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
      }
    }

    *(a1 + 232) = *(a2 + 8);
  }

  *(a2 + 8) = 0;
  v123 = *(a2 + 112);
  if (v123)
  {
    DisposeTCPConn(v123);
    *(a2 + 112) = 0;
  }

  v124 = *(a2 + 72);
  if (v124)
  {
    CloseSocketSet(*(a2 + 72));
    free(v124);
    *(a2 + 72) = 0;
  }

  v125 = *(a2 + 104);
  if (v125)
  {
    CancelGetZoneData(a1, v125);
    *(a2 + 104) = 0;
  }

  v126 = *(a2 + 96);
  if (!v126)
  {
    goto LABEL_278;
  }

  v127 = *(v126 + 16);
  if (v127 == &_mdns_querier_kind)
  {
    if (*(v126 + 248))
    {
      goto LABEL_276;
    }

    v129 = 0;
    v128 = *(a2 + 96);
  }

  else
  {
    if (v127 != &_mdns_subscriber_kind)
    {
      goto LABEL_276;
    }

    v128 = 0;
    v129 = *(a2 + 96);
  }

  if (*(*(v126 + 32) + 276))
  {
    goto LABEL_276;
  }

  OrphanedClientSet = _Querier_GetOrphanedClientSet(v127 == &_mdns_querier_kind);
  if (OrphanedClientSet)
  {
    v131 = OrphanedClientSet;
    Count = CFSetGetCount(OrphanedClientSet);
    v126 = *(a2 + 96);
    if (Count <= 9)
    {
      CFSetAddValue(v131, v126);
      v133 = *(v50 + 434);
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v134 = v133 == mDNSLogCategory_State;
      }

      else
      {
        v134 = 1;
      }

      v135 = v134;
      if (v127 != &_mdns_querier_kind)
      {
        if (v135)
        {
          if (os_log_type_enabled(*(v50 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v136 = *(v129 + 128);
            *buf = 134217984;
            *v157 = v136;
LABEL_308:
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Keeping orphaned subscriber for up to 30 seconds", buf, 0xCu);
          }
        }

        else
        {
          v133 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v148 = *(v129 + 128);
            *buf = 134217984;
            *v157 = v148;
            goto LABEL_308;
          }
        }

        v149 = 30000;
        goto LABEL_314;
      }

      if (v135)
      {
        if (os_log_type_enabled(*(v50 + 434), OS_LOG_TYPE_DEFAULT))
        {
          v147 = *(v128 + 232);
          *buf = 67109120;
          *v157 = v147;
LABEL_312:
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "[Q%u] Keeping orphaned querier for up to 5 seconds", buf, 8u);
        }
      }

      else
      {
        v133 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v150 = *(v128 + 232);
          *buf = 67109120;
          *v157 = v150;
          goto LABEL_312;
        }
      }

      v149 = 5000;
LABEL_314:
      mdns_client_set_time_limit_ms(*(a2 + 96), v149);
      v137 = *(a2 + 96);
      if (!v137)
      {
        goto LABEL_278;
      }

      goto LABEL_277;
    }
  }

  else
  {
    v126 = *(a2 + 96);
  }

  if (v126)
  {
LABEL_276:
    mdns_client_invalidate(v126);
    v137 = *(a2 + 96);
LABEL_277:
    os_release(v137);
    *(a2 + 96) = 0;
  }

LABEL_278:
  v138 = *(a2 + 80);
  if (v138)
  {
    os_release(v138);
    *(a2 + 80) = 0;
  }

  if (DPCFeatureEnabled_sOnce != -1)
  {
    dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
  }

  if (DPCFeatureEnabled_sEnabled)
  {
    v139 = *(a2 + 192);
    if (v139)
    {
      mdns_cfset_enumerate(v139, &__block_literal_global_33);
      CFSetRemoveAllValues(*(a2 + 192));
      v140 = *(a2 + 192);
      if (v140)
      {
        CFRelease(v140);
        *(a2 + 192) = 0;
      }
    }
  }

  *(a2 + 268) = 0;
  *(a2 + 260) = 0;
  v141 = *(a2 + 673);
  if (v141 > 4)
  {
    if (v141 - 5 >= 4)
    {
      LogMsgWithLevel(*(v50 + 434), OS_LOG_TYPE_DEFAULT, "DNS64ResetState: unrecognized DNS64 state %d", v20, v21, v22, v23, v24, *(a2 + 673));
    }
  }

  else if (*(a2 + 673) > 2u)
  {
    *(a2 + 342) = 28;
  }

  else if (*(a2 + 673))
  {
    if (v141 != 1)
    {
      *(a2 + 342) = 12;
    }

    *v18 = *(a2 + 674);
    *(a2 + 383) = *(a2 + 681);
    *(a2 + 200) = DomainNameHashValue(a2 + 376);
  }

  *(a2 + 673) = 0;
  if (DNSQuestionNeedsSensitiveLogging(a2))
  {
    mDNSDisableSensitiveLoggingForQuestion(bswap32(*(a2 + 340)) >> 16);
  }

  v142 = *(a1 + 48);
  v143 = *(a1 + 52) + 1;
  *(a1 + 52) = v143;
  mDNS_VerifyLockState("Drop Lock", 0, v142, v143, "mDNS_StopQuery_internal", 15981);
  v144 = *(a2 + 144);
  if (v144)
  {
    ref_count_obj_release(v144);
    *(a2 + 144) = 0;
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_StopQuery_internal", 15983);
  --*(a1 + 52);
  v145 = *(a2 + 56);
  if (!v145)
  {
    return 0;
  }

  free(v145);
  v38 = 0;
  *(a2 + 56) = 0;
  return v38;
}

_BYTE *putQuestion(unint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  result = putDomainNameAsLabels(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    result += 4;
    if (result >= a3)
    {
      return 0;
    }

    else
    {
      *v13 = HIBYTE(v9);
      v13[1] = v9;
      v13[2] = HIBYTE(v8);
      v13[3] = v8;
      ++*(a1 + 4);
    }
  }

  return result;
}

_BYTE *putDomainNameAsLabels(unint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = *a4;
    if (*a4)
    {
      v10 = a4;
      v11 = a2;
      while (1)
      {
        if (v8 >= 0x40)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Malformed domain name %##s (label more than 63 bytes)", a4, a5, a6, a7, a8, a4);
          return 0;
        }

        if (&v10[v8 + 1] >= a4 + 256)
        {
          break;
        }

        if (a1)
        {
          v12 = (a2 - v8);
LABEL_8:
          while ((v12 - 1) >= a1)
          {
            v13 = v12--;
            if (*(v13 - 1) == v8 && *v13 == v10[1] && &v12[v8] < a2)
            {
              LODWORD(v15) = v8;
              v16 = v12;
              v17 = v10;
LABEL_15:
              v18 = v15 + 1;
              a5 = v16;
              a6 = v17;
              a7 = v18;
              while (1)
              {
                v19 = *a5++;
                a8 = v19;
                v20 = *a6++;
                if (a8 != v20)
                {
                  break;
                }

                if (!--a7)
                {
                  v16 += v18;
                  v17 += v18;
                  v15 = *v17;
                  a5 = *v16;
                  if (!*v17)
                  {
                    if (*v16)
                    {
                      goto LABEL_8;
                    }

                    if ((v11 + 2) <= a3)
                    {
                      v23 = v12 - a1;
                      *v11 = HIBYTE(v23) | 0xC0;
                      v11[1] = v23;
                      return v11 + 2;
                    }

                    return 0;
                  }

                  if (a5 < 0x40 || a5 >= 0xC0 && (a6 = (v16 + 1), (v16 + 1) < a2) && (a6 = v16[1], a5 = a1 + ((a5 & 0x3F) << 8) + a6, v16 >= a5) && (a6 = *a5, v16 = a5, a6 <= 0x3F))
                  {
                    a5 = &v16[v15];
                    if (&v16[v15] < a2)
                    {
                      goto LABEL_15;
                    }
                  }

                  goto LABEL_8;
                }
              }
            }
          }
        }

        if (&v11[v8 + 1] >= a3)
        {
          return 0;
        }

        *v11++ = v8;
        ++v10;
        do
        {
          v21 = *v10++;
          *v11++ = v21;
          --v8;
        }

        while (v8);
        v8 = *v10;
        if (!*v10)
        {
          goto LABEL_35;
        }
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Malformed domain name %##s (more than 256 bytes)", a4, a5, a6, a7, a8, a4);
    }

    else
    {
      v11 = a2;
      if (a2 < a3)
      {
LABEL_35:
        *v11 = 0;
        return v11 + 1;
      }
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "putDomainNameAsLabels %##s ptr is null", a4, a5, a6, a7, a8, a4);
  }

  return 0;
}

unint64_t PutResourceRecordTTLWithLimit(unint64_t a1, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v12 = a2;
  if (*a1 && (*(a1 + 2) & 0x78) == 0x28 && *(a4 + 4) == 33)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1;
  }

  if (*a4)
  {
    if (!a2)
    {
      v32 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v33 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v34 = *(a4 + 32);
        if (v34)
        {
          v35 = *(a4 + 32);
          while (1)
          {
            if (!v35 || (v36 = *v35, v36 > 0x3F))
            {
LABEL_48:
              v37 = 257;
              goto LABEL_125;
            }

            if (!*v35)
            {
              break;
            }

            v35 += v36 + 1;
            if (&v35[-v34] >= 256)
            {
              goto LABEL_48;
            }
          }

          v37 = (v35 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v32 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v34 = *(a4 + 32);
        if (v34)
        {
          v44 = *(a4 + 32);
          while (1)
          {
            if (!v44 || (v45 = *v44, v45 > 0x3F))
            {
LABEL_72:
              v37 = 257;
              goto LABEL_125;
            }

            if (!*v44)
            {
              break;
            }

            v44 += v45 + 1;
            if (&v44[-v34] >= 256)
            {
              goto LABEL_72;
            }
          }

          v37 = (v44 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }
      }

LABEL_125:
      v65 = DNSTypeName(*(a4 + 4));
      v69 = 141558787;
      v70 = 1752392040;
      v71 = 1040;
      v72 = v37;
      v73 = 2101;
      v74 = v34;
      v75 = 2082;
      v76 = v65;
      v61 = "Pointer to message is NULL while filling resource record %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
      v62 = v32;
      v63 = OS_LOG_TYPE_ERROR;
      v64 = 38;
      goto LABEL_126;
    }

    v14 = putDomainNameAsLabels(a1, a2, a6, *(a4 + 32), a5, a6, a7, a8);
    v19 = v14;
    if (v14 && (v14 + 10) < a6)
    {
      *v14 = *(a4 + 5);
      v14[1] = *(a4 + 4);
      v14[2] = *(a4 + 7);
      v14[3] = *(a4 + 6);
      v14[4] = HIBYTE(v9);
      v14[5] = BYTE2(v9);
      v14[6] = BYTE1(v9);
      v14[7] = v9;
      v20 = putRData(v13, v14 + 10, a6, a4, v15, v16, v17, v18);
      if (v20)
      {
        v12 = v20;
        *(v19 + 4) = bswap32(v20 - v19 - 10) >> 16;
        if (a3)
        {
          ++*a3;
          return v12;
        }

        v21 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            return v12;
          }

          v50 = *(a4 + 32);
          if (v50)
          {
            v58 = *(a4 + 32);
            while (1)
            {
              if (!v58 || (v59 = *v58, v59 > 0x3F))
              {
LABEL_118:
                v53 = 257;
                goto LABEL_137;
              }

              if (!*v58)
              {
                break;
              }

              v58 += v59 + 1;
              if (&v58[-v50] >= 256)
              {
                goto LABEL_118;
              }
            }

            v53 = (v58 - v50 + 1);
          }

          else
          {
            v53 = 0;
          }
        }

        else
        {
          v21 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            return v12;
          }

          v50 = *(a4 + 32);
          if (v50)
          {
            v51 = *(a4 + 32);
            while (1)
            {
              if (!v51 || (v52 = *v51, v52 > 0x3F))
              {
LABEL_94:
                v53 = 257;
                goto LABEL_137;
              }

              if (!*v51)
              {
                break;
              }

              v51 += v52 + 1;
              if (&v51[-v50] >= 256)
              {
                goto LABEL_94;
              }
            }

            v53 = (v51 - v50 + 1);
          }

          else
          {
            v53 = 0;
          }
        }

LABEL_137:
        v68 = DNSTypeName(*(a4 + 4));
        v69 = 141558787;
        v70 = 1752392040;
        v71 = 1040;
        v72 = v53;
        v73 = 2101;
        v74 = v50;
        v75 = 2082;
        v76 = v68;
        v57 = "No target count to update for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
LABEL_110:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v57, &v69, 0x26u);
        return v12;
      }

      v27 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v46 = *(a4 + 32);
          if (v46)
          {
            v54 = *(a4 + 32);
            while (1)
            {
              if (!v54 || (v55 = *v54, v55 > 0x3F))
              {
LABEL_104:
                v49 = 257;
                goto LABEL_134;
              }

              if (!*v54)
              {
                break;
              }

              v54 += v55 + 1;
              if (&v54[-v46] >= 256)
              {
                goto LABEL_104;
              }
            }

            v49 = (v54 - v46 + 1);
          }

          else
          {
            v49 = 0;
          }

          goto LABEL_134;
        }
      }

      else
      {
        v27 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          v46 = *(a4 + 32);
          if (v46)
          {
            v47 = *(a4 + 32);
            while (1)
            {
              if (!v47 || (v48 = *v47, v48 > 0x3F))
              {
LABEL_82:
                v49 = 257;
                goto LABEL_134;
              }

              if (!*v47)
              {
                break;
              }

              v47 += v48 + 1;
              if (&v47[-v46] >= 256)
              {
                goto LABEL_82;
              }
            }

            v49 = (v47 - v46 + 1);
          }

          else
          {
            v49 = 0;
          }

LABEL_134:
          v67 = DNSTypeName(*(a4 + 4));
          v69 = 141559043;
          v70 = 1752392040;
          v71 = 1040;
          v72 = v49;
          v73 = 2101;
          v74 = v46;
          v75 = 2082;
          v76 = v67;
          v77 = 2048;
          v78 = a6 - v19 - 10;
          v61 = "Can't put more rdata into current message, will possibly put it into the next message - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), remaining space: %ld";
          goto LABEL_122;
        }
      }

      return 0;
    }

    v27 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return 0;
      }

      v28 = *(a4 + 32);
      if (v28)
      {
        v41 = *(a4 + 32);
        while (1)
        {
          if (!v41 || (v42 = *v41, v42 > 0x3F))
          {
LABEL_64:
            v31 = 257;
            goto LABEL_121;
          }

          if (!*v41)
          {
            break;
          }

          v41 += v42 + 1;
          if (&v41[-v28] >= 256)
          {
            goto LABEL_64;
          }
        }

        v31 = (v41 - v28 + 1);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v27 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return 0;
      }

      v28 = *(a4 + 32);
      if (v28)
      {
        v29 = *(a4 + 32);
        while (1)
        {
          if (!v29 || (v30 = *v29, v30 > 0x3F))
          {
LABEL_35:
            v31 = 257;
            goto LABEL_121;
          }

          if (!*v29)
          {
            break;
          }

          v29 += v30 + 1;
          if (&v29[-v28] >= 256)
          {
            goto LABEL_35;
          }
        }

        v31 = (v29 - v28 + 1);
      }

      else
      {
        v31 = 0;
      }
    }

LABEL_121:
    v60 = DNSTypeName(*(a4 + 4));
    v69 = 141559043;
    v70 = 1752392040;
    v71 = 1040;
    v72 = v31;
    v73 = 2101;
    v74 = v28;
    v75 = 2082;
    v76 = v60;
    v77 = 2048;
    v78 = a6 - v19;
    v61 = "Can't put more names into current message, will possibly put it into the next message - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), remaining space: %ld";
LABEL_122:
    v62 = v27;
    v63 = OS_LOG_TYPE_DEBUG;
    v64 = 48;
LABEL_126:
    _os_log_impl(&_mh_execute_header, v62, v63, v61, &v69, v64);
    return 0;
  }

  v21 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v22 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      return v12;
    }

    v23 = *(a4 + 32);
    if (v23)
    {
      v24 = *(a4 + 32);
      while (1)
      {
        if (!v24 || (v25 = *v24, v25 > 0x3F))
        {
LABEL_25:
          v26 = 257;
          goto LABEL_109;
        }

        if (!*v24)
        {
          break;
        }

        v24 += v25 + 1;
        if (&v24[-v23] >= 256)
        {
          goto LABEL_25;
        }
      }

      v26 = (v24 - v23 + 1);
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_109;
  }

  v21 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a4 + 32);
    if (v23)
    {
      v39 = *(a4 + 32);
      while (1)
      {
        if (!v39 || (v40 = *v39, v40 > 0x3F))
        {
LABEL_56:
          v26 = 257;
          goto LABEL_109;
        }

        if (!*v39)
        {
          break;
        }

        v39 += v40 + 1;
        if (&v39[-v23] >= 256)
        {
          goto LABEL_56;
        }
      }

      v26 = (v39 - v23 + 1);
    }

    else
    {
      v26 = 0;
    }

LABEL_109:
    v56 = DNSTypeName(*(a4 + 4));
    v69 = 141558787;
    v70 = 1752392040;
    v71 = 1040;
    v72 = v26;
    v73 = 2101;
    v74 = v23;
    v75 = 2082;
    v76 = v56;
    v57 = "Attempt to put kDNSRecordTypeUnregistered %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
    goto LABEL_110;
  }

  return v12;
}

char *putRData(unint64_t a1, char *__dst, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = __dst;
  v11 = *(a4 + 40);
  v12 = (v11 + 4);
  v13 = a1;
  switch(*(a4 + 4))
  {
    case 1:
      v15 = 0;
      if ((__dst + 4) <= a3 && *(a4 + 12) == 4)
      {
        *__dst = *(v11 + 4);
        __dst[1] = *(v11 + 5);
        __dst[2] = *(v11 + 6);
        __dst[3] = *(v11 + 7);
        return __dst + 4;
      }

      return v15;
    case 2:
    case 5:
    case 0xC:
    case 0x27:
      v16 = (v11 + 4);
      goto LABEL_87;
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0x10:
    case 0x13:
    case 0x14:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x22:
    case 0x23:
    case 0x25:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x30:
    case 0x31:
      goto LABEL_2;
    case 6:
      v33 = putDomainNameAsLabels(a1, __dst, a3, (v11 + 4), a5, a6, a7, a8);
      if (!v33)
      {
        return 0;
      }

      v38 = putDomainNameAsLabels(v13, v33, v9, (v11 + 260), v34, v35, v36, v37);
      v15 = (v38 + 5);
      if (!v38 || v15 > v9)
      {
        return 0;
      }

      *v38 = bswap32(*(v11 + 516));
      v38[1] = bswap32(*(v11 + 520));
      v38[2] = bswap32(*(v11 + 524));
      v38[3] = bswap32(*(v11 + 528));
      v38[4] = bswap32(*(v11 + 532));
      return v15;
    case 0xF:
    case 0x12:
    case 0x15:
    case 0x24:
      if ((__dst + 3) > a3)
      {
        return 0;
      }

      *__dst = bswap32(*(v11 + 4)) >> 16;
      v16 = (v11 + 6);
      __dst += 2;
      goto LABEL_86;
    case 0x11:
      v43 = putDomainNameAsLabels(a1, __dst, a3, (v11 + 4), a5, a6, a7, a8);
      if (!v43)
      {
        return 0;
      }

      __dst = v43;
      v16 = (v11 + 260);
      goto LABEL_85;
    case 0x1A:
      if ((__dst + 5) > a3)
      {
        return 0;
      }

      *__dst = bswap32(*(v11 + 4)) >> 16;
      v17 = putDomainNameAsLabels(a1, (__dst + 2), a3, (v11 + 6), a5, a6, a7, a8);
      if (!v17)
      {
        return 0;
      }

      __dst = v17;
      v16 = (v11 + 262);
      goto LABEL_85;
    case 0x1C:
      if (*(a4 + 12) != 16)
      {
        return 0;
      }

      v15 = __dst + 16;
      if ((__dst + 16) > a3)
      {
        return 0;
      }

      *__dst = *v12;
      return v15;
    case 0x21:
      if ((__dst + 7) > a3)
      {
        return 0;
      }

      *__dst = *(v11 + 5);
      __dst[1] = *(v11 + 4);
      __dst[2] = *(v11 + 7);
      __dst[3] = *(v11 + 6);
      __dst[4] = *(v11 + 8);
      __dst[5] = *(v11 + 9);
      __dst += 6;
      v16 = (v11 + 10);
LABEL_85:
      a1 = v13;
LABEL_86:
      a3 = v9;
LABEL_87:

      return putDomainNameAsLabels(a1, __dst, a3, v16, a5, a6, a7, a8);
    case 0x29:
      v18 = *(a4 + 12);
      v19 = (v12 + v18);
      if (v12 >= (v12 + v18))
      {
        v15 = __dst;
        if (__dst <= a3)
        {
          return v15;
        }

        goto LABEL_94;
      }

      v20 = 0;
      v21 = (v11 + 20);
      while (1)
      {
        v22 = *(v21 - 8);
        if (v22 <= 3)
        {
          if (v22 == 1)
          {
            v23 = 22;
          }

          else
          {
            if (v22 != 2)
            {
              goto LABEL_29;
            }

            v23 = 8;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xFDEAu:
              v23 = 14;
              break;
            case 0xFDE9u:
              v23 = 9;
              break;
            case 4u:
              if (*(v21 - 5) == *(v21 - 2) && *(v21 - 4) == *(v21 - 1))
              {
                if (*(v21 - 3) == *v21)
                {
                  v23 = 12;
                }

                else
                {
                  v23 = 18;
                }
              }

              else
              {
                v23 = 18;
              }

              break;
            default:
LABEL_29:
              v23 = 0x10000;
              break;
          }
        }

        v20 += v23;
        v24 = v21 + 4;
        v21 += 12;
        if (v24 >= v19)
        {
          if (&__dst[v20] <= a3)
          {
            for (i = (v11 + 12); ; i += 12)
            {
              v26 = *(i - 4);
              if (v26 <= 3)
              {
                if (v26 == 1)
                {
                  v27 = 22;
                }

                else
                {
                  if (v26 != 2)
                  {
                    goto LABEL_49;
                  }

                  v27 = 8;
                }
              }

              else
              {
                switch(v26)
                {
                  case 0xFDEAu:
                    v27 = 14;
                    break;
                  case 0xFDE9u:
                    v27 = 9;
                    break;
                  case 4u:
                    if (*(i - 1) == i[2] && *i == i[3])
                    {
                      if (i[1] == i[4])
                      {
                        v27 = 12;
                      }

                      else
                      {
                        v27 = 18;
                      }
                    }

                    else
                    {
                      v27 = 18;
                    }

                    break;
                  default:
LABEL_49:
                    v27 = 0x10000;
                    break;
                }
              }

              *v10 = BYTE1(v26);
              v10[1] = v26;
              v10[2] = (v27 - 4) >> 8;
              v10[3] = v27 - 4;
              v15 = v10 + 4;
              v28 = *(i - 4);
              if (v28 <= 3)
              {
                if (v28 == 1)
                {
                  *(v10 + 2) = bswap32(*(i - 2)) >> 16;
                  *(v10 + 3) = bswap32(*(i - 1)) >> 16;
                  *(v10 + 4) = bswap32(*i) >> 16;
                  *(v10 + 10) = *(i + 2);
                  *(v10 + 18) = bswap32(*(i + 3));
                  v15 = v10 + 22;
                }

                else if (v28 == 2)
                {
                  *(v10 + 1) = bswap32(*(i - 1));
                  v15 = v10 + 8;
                }
              }

              else
              {
                switch(v28)
                {
                  case 4u:
                    v10[4] = *(i - 4);
                    v10[5] = *(i - 3);
                    v29 = *(i - 1);
                    *(v10 + 5) = i[1];
                    *(v10 + 6) = v29;
                    v15 = v10 + 12;
                    if (v27 >= 0x12)
                    {
                      v30 = *(i + 1);
                      *(v10 + 8) = i[4];
                      *v15 = v30;
                      v15 = v10 + 18;
                      v31 = v27 - 18;
                      if (v27 != 18)
                      {
                        memcpy(v15, i + 5, v27 - 18);
                        v15 += v31;
                      }
                    }

                    break;
                  case 0xFDE9u:
                    v10[4] = *(i - 4);
                    *(v10 + 5) = bswap32(*i);
                    v15 = v10 + 9;
                    break;
                  case 0xFDEAu:
                    *__tp = 0;
                    *&__tp[8] = 0;
                    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
                    *(v10 + 1) = bswap32(*__tp - *(i - 1));
                    *(v10 + 2) = bswap32(*i);
                    *(v10 + 6) = bswap32(i[2]) >> 16;
                    v15 = v10 + 14;
                    break;
                }
              }

              v32 = i + 8;
              v10 = v15;
              if (v32 >= v19)
              {
                return v15;
              }
            }
          }

LABEL_94:
          v45 = mDNSLogCategory_Default;
          v46 = "ERROR: putOptRData - out of space";
          goto LABEL_130;
        }
      }

    case 0x2F:
      v40 = (v11 + 4);
      while (1)
      {
        if (!v40 || (v41 = *v40, v41 > 0x3F))
        {
LABEL_77:
          v42 = 257;
          goto LABEL_96;
        }

        if (!*v40)
        {
          break;
        }

        v40 += v41 + 1;
        if (v40 - v12 >= 256)
        {
          goto LABEL_77;
        }
      }

      v42 = v40 - v12 + 1;
LABEL_96:
      v47 = v12 + v42;
      if (RRAssertsExistence(a4, 0x2Fu, a3, a4, a5, a6, a7, a8))
      {
        v14 = *(a4 + 12);
        v48 = v14 - v42;
        if (v14 == v42)
        {
LABEL_102:
          if (&v10[v14] <= v9)
          {
LABEL_3:
            memcpy(v10, v12, v14);
            return &v10[*(a4 + 12)];
          }

          v51 = mDNSLogCategory_Default;
          v52 = *(a4 + 32);
          DNSTypeName(*(a4 + 4));
          v76 = *(a4 + 12);
          LogMsgWithLevel(v51, OS_LOG_TYPE_DEFAULT, "putRData: NSEC rdlength beyond limit %##s (%s), ptr %p, rdlength %d, limit %p", v53, v54, v55, v56, v57, v52);
        }

        else
        {
          while (1)
          {
            v49 = v48 - 2;
            if (v48 <= 2)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "putRData: invalid length %d", a4, a5, a6, a7, a8, v48);
              return 0;
            }

            v50 = v47[1];
            if (v49 < v50 || (v50 - 33) <= 0xFFFFFFDF)
            {
              break;
            }

            v47 += v50 + 2;
            v48 = v49 - v50;
            if (!v48)
            {
              goto LABEL_102;
            }
          }

          v45 = mDNSLogCategory_Default;
          v75 = v47[1];
          v46 = "putRData: invalid window length %d";
LABEL_130:
          LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, v46, a4, a5, a6, a7, a8, v75);
        }

        return 0;
      }

      v60 = v47[1];
      v59 = v47 + 1;
      v58 = v60;
      if (v60)
      {
        while (!v59[v58])
        {
          v61 = __OFSUB__(v58--, 1);
          if (((v58 & 0x80000000) != 0) ^ v61 | (v58 == 0))
          {
            v58 = 0;
            break;
          }
        }
      }

      v62 = putDomainNameAsLabels(v13, v10, v9, *(a4 + 32), a5, a6, a7, a8);
      v15 = v62;
      if (!v58 || !v62)
      {
        goto LABEL_114;
      }

      if (&v62[v58 + 2] <= v9)
      {
        v63 = v59 + 1;
        v64 = v58;
        *v62 = 0;
        v62[1] = v58;
        v15 = v62 + 2;
        do
        {
          v65 = *v63++;
          *v15++ = v65;
          --v64;
        }

        while (v64);
LABEL_114:
        if (v15)
        {
          return v15;
        }
      }

      v66 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v67 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v67 = 1;
      }

      if (v67)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v68 = *(a4 + 32);
        if (v68)
        {
          v69 = *(a4 + 32);
          while (1)
          {
            if (!v69 || (v70 = *v69, v70 > 0x3F))
            {
LABEL_127:
              v71 = 257;
              goto LABEL_145;
            }

            if (!*v69)
            {
              break;
            }

            v69 += v70 + 1;
            if (&v69[-v68] >= 256)
            {
              goto LABEL_127;
            }
          }

          v71 = (v69 - v68 + 1);
        }

        else
        {
          v71 = 0;
        }

        goto LABEL_145;
      }

      v66 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        v68 = *(a4 + 32);
        if (v68)
        {
          v73 = *(a4 + 32);
          while (1)
          {
            if (!v73 || (v74 = *v73, v74 > 0x3F))
            {
LABEL_140:
              v71 = 257;
              goto LABEL_145;
            }

            if (!*v73)
            {
              break;
            }

            v73 += v74 + 1;
            if (&v73[-v68] >= 256)
            {
              goto LABEL_140;
            }
          }

          v71 = (v73 - v68 + 1);
        }

        else
        {
          v71 = 0;
        }

LABEL_145:
        *__tp = 134218755;
        *&__tp[4] = v9 - v10;
        *&__tp[12] = 2160;
        *&__tp[14] = 1752392040;
        v78 = 1040;
        v79 = v71;
        v80 = 2101;
        v81 = v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "The mDNS message does not have enough space for the NSEC record, will add it to the next message (This is not an error message) -- remaining space: %ld, NSEC name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", __tp, 0x26u);
      }

      return 0;
    default:
      if (*(a4 + 4) == 65323)
      {
        *__tp = 0;
        *&__tp[8] = 0;
        clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
        *v10 = bswap32(*__tp - *v12);
        return v10 + 4;
      }

LABEL_2:
      v14 = *(a4 + 12);
      if (&__dst[v14] > v9)
      {
        return 0;
      }

      goto LABEL_3;
  }
}

_WORD *mDNSSendDNSMessage(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned int *a7, unsigned __int16 a8, _DWORD *a9, unsigned __int8 a10)
{
  v12 = a5;
  v14 = a3;
  v17 = a2[5];
  if (*a2)
  {
    ++*(a1 + 168);
  }

  else
  {
    ++*(a1 + 172);
  }

  v18 = a2 + 6;
  v19 = a3 - (a2 + 6);
  if (a3 < (a2 + 6) || v19 >= 8941)
  {
    v23 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v24 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = 4294901756;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return v25;
      }
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      v26 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
      v25 = 4294901756;
      if (!v26)
      {
        return v25;
      }
    }

    *buf = 134218496;
    v83 = v18;
    *v84 = 2048;
    *&v84[2] = v14;
    v85 = 2048;
    v86 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: invalid message %p %p %ld", buf, 0x20u);
    return v25;
  }

  v74 = v17;
  a2[2] = bswap32(a2[2]) >> 16;
  a2[3] = bswap32(a2[3]) >> 16;
  a2[4] = bswap32(a2[4]) >> 16;
  v20 = bswap32(a2[5]) >> 16;
  a2[5] = v20;
  v75 = a6;
  if (a9)
  {
    v77 = __rev16(v20);
    v21 = a9[196] - 1;
    if (v21 > 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = dword_10010D58C[v21];
    }

    bzero(buf, 0x498uLL);
    v80 = 0;
    v79 = 0;
    memset(macOut, 0, sizeof(macOut));
    memset(&ctx, 0, sizeof(ctx));
    CCHmacInit(&ctx, v22, a9 + 198, a9[197]);
    CCHmacUpdate(&ctx, a2, v14 - a2);
    BYTE4(v83) = 32;
    v87 = 0;
    v88 = v122;
    *v84 = 0x1194000100FALL;
    v123 = 264;
    v90 = 0;
    v89 = &v123;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    v103 = v122;
    v118 = 0;
    v119 = 0;
    v121 = 0;
    v120 = 0u;
    v117 = 0;
    v122[0] = 0;
    v27 = a9 + 67;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    memset(v116, 0, sizeof(v116));
    v28 = a9 + 67;
    do
    {
      if (!v28)
      {
        break;
      }

      v29 = *v28;
      if (v29 > 0x3F)
      {
        break;
      }

      if (!*v28)
      {
        v30 = v28 - v27 + 1;
        if (v30 <= 0x100u)
        {
          memcpy(v122, a9 + 67, v30);
        }

        break;
      }

      v28 += v29 + 1;
    }

    while (v28 - v27 <= 255);
    v31 = 257;
    v32 = a9 + 67;
    v12 = a5;
    do
    {
      if (!v32)
      {
        break;
      }

      v33 = *v32;
      if (v33 > 0x3F)
      {
        break;
      }

      if (!*v32)
      {
        v31 = (v32 - v27 + 1);
        break;
      }

      v32 += v33 + 1;
    }

    while (v32 - v27 < 256);
    CCHmacUpdate(&ctx, a9 + 67, v31);
    *&v84[2] = 255;
    data = -256;
    CCHmacUpdate(&ctx, &data, 2uLL);
    *&v84[4] = 0;
    CCHmacUpdate(&ctx, &v84[4], 4uLL);
    if (v21 > 5)
    {
      v34 = "\fhmac-invalid";
    }

    else
    {
      v34 = off_100150130[v21];
    }

    v35 = v34;
    do
    {
      if (!v35)
      {
        break;
      }

      v36 = *v35;
      if (v36 > 0x3F)
      {
        break;
      }

      if (!*v35)
      {
        v37 = v35 - v34 + 1;
        if (v37 <= 0x100u)
        {
          memcpy(v89 + 2, v34, v37);
          goto LABEL_46;
        }

        break;
      }

      v35 += v36 + 1;
    }

    while (v35 - v34 <= 255);
    *(v89 + 4) = 0;
LABEL_46:
    v38 = 257;
    v39 = v34;
    v73 = a8;
    while (1)
    {
      if (!v39 || (v40 = *v39, v40 > 0x3F))
      {
LABEL_51:
        v41 = a7;
        goto LABEL_53;
      }

      if (!*v39)
      {
        break;
      }

      v39 += v40 + 1;
      if (v39 - v34 >= 256)
      {
        goto LABEL_51;
      }
    }

    v41 = a7;
    v38 = (v39 - v34 + 1);
LABEL_53:
    v42 = v89 + v38 + 4;
    CCHmacUpdate(&ctx, v34, v38);
    v48 = time(0);
    if (v48 == -1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: DNSDigest_SignMessage - mDNSPlatformUTC returned bad time -1", v43, v44, v45, v46, v47, v70);
    }

    LOWORD(v79) = 0;
    BYTE2(v79) = HIBYTE(v48);
    HIBYTE(v79) = BYTE2(v48);
    LOBYTE(v80) = BYTE1(v48);
    HIBYTE(v80) = v48;
    v49 = v79;
    *(v42 + 4) = v80;
    *v42 = v49;
    CCHmacUpdate(&ctx, &v79, 6uLL);
    *(v42 + 6) = 11265;
    CCHmacUpdate(&ctx, (v42 + 6), 2uLL);
    data = 0;
    CCHmacUpdate(&ctx, &data, 2uLL);
    data = 0;
    CCHmacUpdate(&ctx, &data, 2uLL);
    CCHmacFinal(&ctx, macOut);
    v50 = 0;
    if (v21 <= 5)
    {
      v50 = word_10010D580[v21];
    }

    *(v42 + 8) = __rev16(v50);
    memcpy((v42 + 10), macOut, v50);
    v51 = v42 + 10 + v50;
    *v51 = *a2;
    *(v51 + 1) = *(a2 + 1);
    *(v51 + 2) = 0;
    *&v84[8] = v51 - v89 + 2;
    v14 = PutResourceRecordTTLWithLimit(a2, v14, &v77, &v83 + 4, 0, (a2 + 4476), v52, v53);
    if (v14)
    {
      a2[5] = bswap32(v77) >> 16;
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: DNSDigest_SignMessage - could not put TSIG", v54, v55, v56, v57, v58, v70);
    }

    a7 = v41;
    a8 = v73;
    a6 = v75;
  }

  if (!v14)
  {
    v65 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      v25 = 4294901757;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 0;
    }

    else
    {
      v65 = mDNSLogCategory_Default_redacted;
      v25 = 4294901757;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_81:
        a2[2] = bswap32(a2[2]) >> 16;
        a2[3] = bswap32(a2[3]) >> 16;
        a2[4] = bswap32(a2[4]) >> 16;
        a2[5] = bswap32(a2[5]) >> 16;
        if (v75)
        {
          v68 = *v75;
        }

        else
        {
          v68 = 59668;
        }

        if (v12)
        {
          if (*(v12 + 1))
          {
            v69 = "TLS";
          }

          else
          {
            v69 = "TCP";
          }

          v68 = *v12;
        }

        else
        {
          v69 = "UDP";
        }

        DumpPacket(v25, 1, v69, 0, v68, a7, a8, a2, v14, a4);
        a2[5] = v74;
        return v25;
      }

      *buf = 0;
    }

    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: DNSDigest_SignMessage failed", buf, 2u);
    goto LABEL_81;
  }

  if (!v12)
  {
    v25 = mDNSPlatformSendUDP(a1, a2, v14, a4, a6, a7, a8, a10);
    goto LABEL_81;
  }

  v71 = a4;
  v59 = a8;
  v60 = a7;
  v61 = (v14 - a2);
  result = malloc_type_malloc((v61 + 2), 0x86C1EF79uLL);
  if (result)
  {
    v63 = result;
    *result = bswap32(v14 - a2) >> 16;
    memcpy(result + 1, a2, (v14 - a2));
    v64 = mDNSPlatformWriteTCP(v12, v63, (v61 + 2));
    if (v64 == v61 + 2)
    {
      v25 = 0;
LABEL_80:
      a7 = v60;
      free(v63);
      a8 = v59;
      a4 = v71;
      goto LABEL_81;
    }

    v66 = v64;
    v25 = 4294901508;
    v67 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v67 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }
    }

    *buf = 134218240;
    v83 = v66;
    *v84 = 1024;
    *&v84[2] = (v14 - a2);
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: write message failed %ld/%d", buf, 0x12u);
    goto LABEL_80;
  }

  __break(1u);
  return result;
}

uint64_t mDNSPlatformSendUDP(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  memset(v136, 0, sizeof(v136));
  if (a4)
  {
    v14 = *mDNSStorage;
    if (!*mDNSStorage)
    {
LABEL_6:
      v15 = mDNSLogCategory_NAT;
      v16 = 4294901756;
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
          return v16;
        }

        *buf = 134217984;
        *v113 = a4;
        v18 = "mDNSPlatformSendUDP: Invalid interface index %p";
      }

      else
      {
        v15 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v16;
        }

        *buf = 134217984;
        *v113 = a4;
        v18 = "mDNSPlatformSendUDP: Invalid interface index %p";
      }

      v22 = v15;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 12;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v22, v23, v18, buf, v24);
      return v16;
    }

    while (!*(v14 + 3768) || *(v14 + 3720) != a4)
    {
      v14 = *(v14 + 3680);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v19 = (v14 + 3606);
  }

  else
  {
    v19 = "unicast";
  }

  if (*a6 == 6)
  {
    *&v136[0].sa_len = 7708;
    *v136[0].sa_data = a7;
    *&v136[0].sa_data[6] = *(a6 + 4);
    if (v14)
    {
      v25 = *(v14 + 3720);
    }

    else
    {
      v25 = 0;
    }

    *&v136[1].sa_data[6] = v25;
    v111 = a1;
    if (a5)
    {
      v31 = (a5 + 48);
    }

    else
    {
      v31 = (*a1 + 56);
    }

    v28 = *v31;
    if (!v14)
    {
      goto LABEL_84;
    }

    v109 = v19;
    if (!mDNSAddrIsDNSMulticast(a6))
    {
      goto LABEL_79;
    }

    v32 = (v14 + 3720);
    v33 = setsockopt(v28, 41, 9, (v14 + 3720), 4u);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    v34 = v33;
    __errnum = *__error();
    *v134 = 0;
    v135 = 0;
    v35 = if_indextoname(*v32, v134);
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v36 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    if (v35)
    {
      if (v37)
      {
        v38 = mDNSLogCategory_NAT;
        if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v38 = mDNSLogCategory_NAT_redacted;
        if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
        {
LABEL_67:
          v104 = bswap32(*a2) >> 16;
          *buf = 67109890;
          *v113 = v104;
          *&v113[4] = 1024;
          *&v113[6] = v34;
          *&v113[10] = 1024;
          *&v113[12] = __errnum;
          *&v113[16] = 2082;
          *&v113[18] = strerror(__errnum);
          v44 = "[Q%u] setsockopt - IPV6_MULTICAST_IF error %d errno %d (%{public}s)";
          v45 = v38;
          v46 = 30;
LABEL_78:
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
        }
      }

LABEL_79:
      if (mDNSAddrIsDNSMulticast(a6))
      {
        goto LABEL_80;
      }

      v19 = v109;
      if (!*(v14 + 3720))
      {
        v82 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        else
        {
          v82 = mDNSLogCategory_NAT_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        v85 = bswap32(*a2);
        *buf = 67109634;
        *v113 = HIWORD(v85);
        *&v113[4] = 2048;
        *&v113[6] = v14;
        *&v113[14] = 2082;
        *&v113[16] = v109;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[Q%u] IPV6_BOUND_IF socket option not set -- info %p (%{public}s) scope_id is zero", buf, 0x1Cu);
LABEL_84:
        if (v28 < 0)
        {
          return 4294901747;
        }

        if (a8)
        {
          *buf = 100;
          setsockopt(v28, 0xFFFF, 4230, buf, 4u);
        }

        v56 = sendto(v28, a2, a3 - a2, 0, v136, v136[0].sa_len);
        v57 = 0;
        if (v56 < 0)
        {
          v57 = *__error();
        }

        if (a8)
        {
          *buf = 900;
          setsockopt(v28, 0xFFFF, 4230, buf, 4u);
        }

        if ((v56 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v110 = v19;
        v58 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          v59 = os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR);
          if (!v59)
          {
            goto LABEL_101;
          }

          v71 = bswap32(*a2) >> 16;
          v72 = *a6;
          v73 = strerror(v57);
          v74 = *(v111 + 16);
          *buf = 67112451;
          *v113 = v71;
          *&v113[4] = 1024;
          *&v113[6] = v28;
          *&v113[10] = 2048;
          *&v113[12] = a4;
          *&v113[20] = 2082;
          *&v113[22] = v110;
          v114 = 1024;
          v115 = v72;
          v116 = 2160;
          *v117 = 1752392040;
          *&v117[8] = 1045;
          *&v117[10] = 20;
          v118 = 2101;
          v119 = a6;
          v120 = 1024;
          v121 = bswap32(a7) >> 16;
          v122 = 1024;
          v123 = v28;
          v124 = 2048;
          v125 = v56;
          v126 = 1024;
          v127 = v57;
          v128 = 2082;
          v129 = v73;
          v130 = 1024;
          v131 = v74;
        }

        else
        {
          v58 = mDNSLogCategory_NAT_redacted;
          v59 = os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR);
          if (!v59)
          {
            goto LABEL_101;
          }

          v67 = bswap32(*a2) >> 16;
          v68 = *a6;
          v69 = strerror(v57);
          v70 = *(v111 + 16);
          *buf = 67112451;
          *v113 = v67;
          *&v113[4] = 1024;
          *&v113[6] = v28;
          *&v113[10] = 2048;
          *&v113[12] = a4;
          *&v113[20] = 2082;
          *&v113[22] = v110;
          v114 = 1024;
          v115 = v68;
          v116 = 2160;
          *v117 = 1752392040;
          *&v117[8] = 1045;
          *&v117[10] = 20;
          v118 = 2101;
          v119 = a6;
          v120 = 1024;
          v121 = bswap32(a7) >> 16;
          v122 = 1024;
          v123 = v28;
          v124 = 2048;
          v125 = v56;
          v126 = 1024;
          v127 = v57;
          v128 = 2082;
          v129 = v69;
          v130 = 1024;
          v131 = v70;
        }

        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformSendUDP -> sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u", buf, 0x6Eu);
LABEL_101:
        v75 = *a6;
        if (*a6 == 6)
        {
          if (*(a6 + 4) != 767 || *(a6 + 8) || *(a6 + 12))
          {
            goto LABEL_113;
          }

          v76 = *(a6 + 16);
          v77 = -83886080;
        }

        else
        {
          if (v75 != 4)
          {
            goto LABEL_113;
          }

          v76 = *(a6 + 4);
          v77 = -83885856;
        }

        if (v76 == v77)
        {
          if (v57 != 49)
          {
            if (v57 != 50)
            {
              if (v57 == 65)
              {
                if (mDNSPlatformRawTime(v59, v60, v61, v62, v63, v64, v65, v66) >= 0x2BF20)
                {
                  goto LABEL_136;
                }

                return 4294901734;
              }

LABEL_120:
              v78 = ++mDNSPlatformSendUDP_MessageCount;
              v79 = mDNSLogCategory_Default;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v80 = mDNSLogCategory_Default == mDNSLogCategory_State;
              }

              else
              {
                v80 = 1;
              }

              v81 = v80;
              if (v78 > 49)
              {
                if (v81)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    return 4294901759;
                  }
                }

                else
                {
                  v79 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    return 4294901759;
                  }
                }

                v97 = bswap32(*a2) >> 16;
                v98 = strerror(v57);
                v99 = *(v111 + 16);
                *buf = 67112707;
                *v113 = v97;
                *&v113[4] = 1024;
                *&v113[6] = v28;
                *&v113[10] = 2048;
                *&v113[12] = a4;
                *&v113[20] = 2082;
                *&v113[22] = v110;
                v114 = 1024;
                v115 = v75;
                v116 = 2160;
                *v117 = 1752392040;
                *&v117[8] = 1045;
                *&v117[10] = 20;
                v118 = 2101;
                v119 = a6;
                v120 = 1024;
                v121 = bswap32(a7) >> 16;
                v122 = 1024;
                v123 = v28;
                v124 = 2048;
                v125 = v56;
                v126 = 1024;
                v127 = v57;
                v128 = 2082;
                v129 = v98;
                v130 = 1024;
                v131 = v99;
                v132 = 1024;
                v133 = mDNSPlatformSendUDP_MessageCount;
                v90 = "[Q%u] mDNSPlatformSendUDP: sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u MessageCount is %d";
                v91 = v79;
                v92 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                if (v81)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                  {
                    return 4294901759;
                  }
                }

                else
                {
                  v79 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                  {
                    return 4294901759;
                  }
                }

                v94 = bswap32(*a2) >> 16;
                v95 = strerror(v57);
                v96 = *(v111 + 16);
                *buf = 67112707;
                *v113 = v94;
                *&v113[4] = 1024;
                *&v113[6] = v28;
                *&v113[10] = 2048;
                *&v113[12] = a4;
                *&v113[20] = 2082;
                *&v113[22] = v110;
                v114 = 1024;
                v115 = v75;
                v116 = 2160;
                *v117 = 1752392040;
                *&v117[8] = 1045;
                *&v117[10] = 20;
                v118 = 2101;
                v119 = a6;
                v120 = 1024;
                v121 = bswap32(a7) >> 16;
                v122 = 1024;
                v123 = v28;
                v124 = 2048;
                v125 = v56;
                v126 = 1024;
                v127 = v57;
                v128 = 2082;
                v129 = v95;
                v130 = 1024;
                v131 = v96;
                v132 = 1024;
                v133 = mDNSPlatformSendUDP_MessageCount;
                v90 = "[Q%u] mDNSPlatformSendUDP: sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u MessageCount is %d";
                v91 = v79;
                v92 = OS_LOG_TYPE_ERROR;
              }

              v93 = 116;
              goto LABEL_152;
            }

LABEL_136:
            v83 = mDNSLogCategory_NAT;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
            {
              v84 = v110;
              if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
              {
LABEL_146:
                v86 = bswap32(*a2) >> 16;
                v87 = *a6;
                v88 = strerror(v57);
                v89 = *(v111 + 16);
                *buf = 67112451;
                *v113 = v86;
                *&v113[4] = 1024;
                *&v113[6] = v28;
                *&v113[10] = 2048;
                *&v113[12] = a4;
                *&v113[20] = 2082;
                *&v113[22] = v84;
                v114 = 1024;
                v115 = v87;
                v116 = 2160;
                *v117 = 1752392040;
                *&v117[8] = 1045;
                *&v117[10] = 20;
                v118 = 2101;
                v119 = a6;
                v120 = 1024;
                v121 = bswap32(a7) >> 16;
                v122 = 1024;
                v123 = v28;
                v124 = 2048;
                v125 = v56;
                v126 = 1024;
                v127 = v57;
                v128 = 2082;
                v129 = v88;
                v130 = 1024;
                v131 = v89;
                v90 = "[Q%u] mDNSPlatformSendUDP sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u";
                v91 = v83;
                v92 = OS_LOG_TYPE_ERROR;
                v93 = 110;
LABEL_152:
                _os_log_impl(&_mh_execute_header, v91, v92, v90, buf, v93);
              }
            }

            else
            {
              v83 = mDNSLogCategory_NAT_redacted;
              v84 = v110;
              if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_146;
              }
            }

            return 4294901759;
          }

LABEL_134:
          if (*(v111 + 2))
          {
            return 4294901734;
          }

          goto LABEL_136;
        }

LABEL_113:
        if (v57 > 50)
        {
          v16 = 4294901510;
          switch(v57)
          {
            case '3':
              return v16;
            case '@':
              return 4294901734;
            case 'A':
              return v16;
          }

          goto LABEL_120;
        }

        if (v57 != 49)
        {
          if (v57 == 50)
          {
            return 4294901734;
          }

          goto LABEL_120;
        }

        goto LABEL_134;
      }

      v39 = (v14 + 3720);
      v40 = v28;
      v41 = 41;
      v42 = 125;
LABEL_83:
      setsockopt(v40, v41, v42, v39, 4u);
      goto LABEL_84;
    }

    if (v37)
    {
      v43 = mDNSLogCategory_NAT;
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    else
    {
      v43 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    v54 = bswap32(*a2);
    v55 = *v32;
    *buf = 67109376;
    *v113 = HIWORD(v54);
    *&v113[4] = 1024;
    *&v113[6] = v55;
    v44 = "[Q%u] setsockopt - IPV6_MUTLICAST_IF scopeid %u, not a valid interface";
    v45 = v43;
    v46 = 14;
    goto LABEL_78;
  }

  if (*a6 == 4)
  {
    *&v136[0].sa_len = 528;
    *v136[0].sa_data = a7;
    *&v136[0].sa_data[2] = *(a6 + 4);
    v111 = a1;
    if (a5)
    {
      v20 = (a5 + 16);
    }

    else
    {
      v20 = (*a1 + 24);
    }

    v28 = *v20;
    if (mDNSAddrIsDNSMulticast(a6))
    {
      if (v14 && setsockopt(v28, 0, 66, (v14 + 3720), 4u) < 0)
      {
        v109 = v19;
        if (*__error() != 42)
        {
          v29 = mDNSLogCategory_NAT;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
            {
LABEL_69:
              __errnuma = bswap32(*a2) >> 16;
              v47 = *__error();
              v48 = __error();
              v49 = strerror(*v48);
              *buf = 67109634;
              *v113 = __errnuma;
              *&v113[4] = 1024;
              *&v113[6] = v47;
              *&v113[10] = 2082;
              *&v113[12] = v49;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformSendUDP: setsockopt: IP_MUTLTICAST_IFINDEX returned %d (%{public}s)", buf, 0x18u);
            }
          }

          else
          {
            v29 = mDNSLogCategory_NAT_redacted;
            if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_69;
            }
          }
        }

        v50 = v14 + 3716;
        v51 = setsockopt(v28, 0, 9, (v14 + 3716), 4u);
        if ((v51 & 0x80000000) == 0 || *(v111 + 2))
        {
          goto LABEL_80;
        }

        v52 = v51;
        v53 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
          {
LABEL_157:
            __errnumb = v53;
            v101 = bswap32(*a2) >> 16;
            v105 = *__error();
            v102 = __error();
            v103 = strerror(*v102);
            *buf = 67110659;
            *v113 = v101;
            *&v113[4] = 2160;
            *&v113[6] = 1752392040;
            *&v113[14] = 1045;
            *&v113[16] = 4;
            *&v113[20] = 2101;
            *&v113[22] = v50;
            v114 = 1024;
            v115 = v52;
            v116 = 1024;
            *v117 = v105;
            *&v117[4] = 2082;
            *&v117[6] = v103;
            _os_log_impl(&_mh_execute_header, __errnumb, OS_LOG_TYPE_ERROR, "[Q%u] setsockopt - IP_MULTICAST_IF error %{sensitive, mask.hash, network:in_addr}.4P %d errno %d (%{public}s)", buf, 0x38u);
          }
        }

        else
        {
          v53 = mDNSLogCategory_NAT_redacted;
          if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }
        }

LABEL_80:
        v19 = v109;
        goto LABEL_84;
      }

      goto LABEL_84;
    }

    if (v14)
    {
      v30 = *(v14 + 3720);
    }

    else
    {
      v30 = 0;
    }

    *buf = v30;
    v39 = buf;
    v40 = v28;
    v41 = 0;
    v42 = 25;
    goto LABEL_83;
  }

  v16 = 4294901756;
  v26 = mDNSLogCategory_NAT;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_FAULT))
    {
LABEL_31:
      v27 = bswap32(*a2) >> 16;
      *buf = 67109120;
      *v113 = v27;
      v18 = "[Q%u] mDNSPlatformSendUDP: dst is not an IPv4 or IPv6 address!";
      v22 = v26;
      v23 = OS_LOG_TYPE_FAULT;
      v24 = 8;
      goto LABEL_32;
    }
  }

  else
  {
    v26 = mDNSLogCategory_NAT_redacted;
    if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_31;
    }
  }

  return v16;
}

BOOL mDNSAddrIsDNSMulticast(unsigned int *a1)
{
  v1 = -83886080;
  v2 = *a1;
  if (v2 == 4)
  {
    v1 = -83885856;
  }

  else
  {
    if (v2 != 6 || a1[1] != 767 || a1[2] || a1[3])
    {
      return 0;
    }

    v2 = 16;
  }

  return *(a1 + v2) == v1;
}

void myKQSocketCallBack(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a1;
  v11 = *(a3 + 1);
  v129 = 0;
  if (a2 != -1)
  {
    v120 = 0xFFFFFFFFLL;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: Why is filter %d not EVFILT_READ (%d)?", a4, a5, a6, a7, a8, a2);
  }

  if (*(a3 + 4) != v10 && *(a3 + 12) != v10)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: native socket %d", a4, a5, a6, a7, a8, v10);
    v120 = *(a3 + 12);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: sktv4 %d sktv6 %d", v12, v13, v14, v15, v16, *(a3 + 4));
  }

  if (!v8)
  {
    IsDNSMulticast = mDNSPlatformRawTime(a1, a2, a3, a4, a5, a6, a7, a8);
    v125 = IsDNSMulticast;
    v26 = 0;
    v126 = (v11 + 2501);
    v27 = 1;
    for (i = v10; ; v10 = i)
    {
      v33 = mDNSPlatformRawTime(IsDNSMulticast, v19, v20, v21, v22, v23, v24, v25) - v125;
      if (v33 >= 125 && v26 != 0 || v129 != 0)
      {
        v65 = 0;
        v66 = &unk_100178000;
        goto LABEL_109;
      }

      memset(v128, 0, sizeof(v128));
      memset(v127, 0, 20);
      memset(v135, 0, sizeof(v135));
      *__s2 = 0;
      v134 = 0;
      *v131 = v126;
      v132 = 8952;
      memset(&v130.msg_namelen, 0, 24);
      bzero(buf, 0x400uLL);
      v130.msg_name = v135;
      v130.msg_namelen = 128;
      v130.msg_iov = v131;
      v130.msg_iovlen = 1;
      v130.msg_control = buf;
      *&v130.msg_controllen = 1024;
      v41 = recvmsg(v10, &v130, 0);
      if (v41 < 0)
      {
        v66 = &unk_100178000;
        if (*__error() != 35)
        {
          v67 = myrecvfrom_numLogMessages++;
          if (v67 <= 0x63)
          {
            v68 = mDNSLogCategory_Default;
            v120 = v41;
            v121 = *__error();
            v119 = v10;
            v69 = "mDNSMacOSX.c: recvmsg(%d) returned error %d errno %d";
LABEL_104:
            v71 = v68;
LABEL_107:
            LogMsgWithLevel(v71, OS_LOG_TYPE_DEFAULT, v69, v36, v37, v38, v39, v40, v119);
          }
        }

LABEL_108:
        v65 = *__error();
        v27 = 1;
LABEL_109:
        if (v33 >= 125)
        {
          v73 = *(*v11 + 6);
          v74 = *(*v11 + 14);
          v75 = *(v66 + 434);
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v76 = v75 == mDNSLogCategory_State;
          }

          else
          {
            v76 = 1;
          }

          v77 = v76;
          if (v73 == v10 || v74 == v10)
          {
            if (v77)
            {
              if (!os_log_type_enabled(*(v66 + 434), OS_LOG_TYPE_INFO))
              {
                goto LABEL_137;
              }

              buf[0].fds_bits[0] = 67109632;
              if (v73 == v10)
              {
                v79 = 4;
              }

              else
              {
                v79 = 6;
              }
            }

            else
            {
              v75 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
              {
                goto LABEL_137;
              }

              buf[0].fds_bits[0] = 67109632;
              if (v73 == v10)
              {
                v79 = 4;
              }

              else
              {
                v79 = 6;
              }
            }

            buf[0].fds_bits[1] = v26;
            LOWORD(buf[0].fds_bits[2]) = 1024;
            *(&buf[0].fds_bits[2] + 2) = v79;
            HIWORD(buf[0].fds_bits[3]) = 1024;
            buf[0].fds_bits[4] = v33;
            v80 = "WARNING: Processed %d messages from IPv%d mDNS socket in %d ms";
            goto LABEL_136;
          }

          if (v77)
          {
            if (os_log_type_enabled(*(v66 + 434), OS_LOG_TYPE_INFO))
            {
LABEL_135:
              buf[0].fds_bits[0] = 67109632;
              buf[0].fds_bits[1] = v26;
              LOWORD(buf[0].fds_bits[2]) = 1024;
              *(&buf[0].fds_bits[2] + 2) = v10;
              HIWORD(buf[0].fds_bits[3]) = 1024;
              buf[0].fds_bits[4] = v33;
              v80 = "WARNING: Processed %d messages from socket %d in %d ms";
LABEL_136:
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, v80, buf, 0x14u);
            }
          }

          else
          {
            v75 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
            {
              goto LABEL_135;
            }
          }
        }

LABEL_137:
        if ((v27 & (v65 == 57)) == 1)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(*(v66 + 434), OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: ENOTCONN, closing socket", v28, v29, v30, v31, v32, v118);
          }

          close(v10);
        }

        else
        {
          if (v26)
          {
            v81 = v65 == 35;
          }

          else
          {
            v81 = 0;
          }

          v82 = !v81;
          if ((v27 & v82) == 1)
          {
            LODWORD(v130.msg_name) = -1;
            *v128 = -1;
            v127[0] = -1;
            *&v135[0].tv_usec = 0;
            memset(buf, 0, 128);
            if (__darwin_check_fd_set_overflow(v10, buf, 0))
            {
              *(buf[0].fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
            }

            v135[0].tv_sec = 0;
            select(v10 + 1, buf, 0, 0, v135);
            v131[0] = 4;
            if (getsockopt(v10, 0xFFFF, 4103, &v130, v131) == -1)
            {
              v83 = *(v66 + 434);
              v84 = __error();
              LogMsgWithLevel(v83, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack getsockopt(SO_ERROR) error %d", v85, v86, v87, v88, v89, *v84);
            }

            v131[0] = 4;
            if (getsockopt(v10, 0xFFFF, 4128, v128, v131) == -1)
            {
              v90 = *(v66 + 434);
              v91 = __error();
              LogMsgWithLevel(v90, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack getsockopt(SO_NREAD) error %d", v92, v93, v94, v95, v96, *v91);
            }

            if (ioctl(v10, 0x4004667FuLL, v127, v120, v121, v122, v123) == -1)
            {
              v103 = *(v66 + 434);
              v104 = __error();
              LogMsgWithLevel(v103, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack ioctl(FIONREAD) error %d", v105, v106, v107, v108, v109, *v104);
            }

            v110 = myKQSocketCallBack_numLogMessages;
            v111 = ++myKQSocketCallBack_numLogMessages;
            if (v110 <= 0x63)
            {
              v112 = *(v66 + 434);
              strerror(v65);
              if (__darwin_check_fd_set_overflow(v10, buf, 0))
              {
                *(buf[0].fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL));
              }

              LogMsgWithLevel(v112, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack recvfrom skt %d error %d errno %d (%s) select %d (%spackets waiting) so_error %d so_nread %d fionread %d count %d", v113, v114, v115, v116, v117, v10);
              v111 = myKQSocketCallBack_numLogMessages;
            }

            if (v111 >= 6)
            {
              NotifyOfElusiveBug("Flaw in Kernel (select/recvfrom mismatch)", "Congratulations, you've reproduced an elusive bug.\rPlease send email to radar-3387020@group.apple.com.)\rIf possible, please leave your machine undisturbed so that someone can come to investigate the problem.", v97, v98, v99, v100, v101, v102);
            }

            sleep(1u);
          }
        }

        return;
      }

      msg_controllen = v130.msg_controllen;
      if (v130.msg_controllen <= 0xB)
      {
        v70 = myrecvfrom_numLogMessages++;
        v66 = &unk_100178000;
        if (v70 > 0x63)
        {
          goto LABEL_108;
        }

        v68 = mDNSLogCategory_Default;
        v123 = *__error();
        v121 = msg_controllen;
        v122 = 12;
        v119 = v10;
        v120 = v41;
        v69 = "mDNSMacOSX.c: recvmsg(%d) returned %d msg.msg_controllen %d < sizeof(struct cmsghdr) %lu, errno %d";
        goto LABEL_104;
      }

      if ((v130.msg_flags & 0x20) != 0)
      {
        v72 = myrecvfrom_numLogMessages++;
        v66 = &unk_100178000;
        if (v72 > 0x63)
        {
          goto LABEL_108;
        }

        v71 = mDNSLogCategory_Default;
        v119 = v10;
        v69 = "mDNSMacOSX.c: recvmsg(%d) msg.msg_flags & MSG_CTRUNC";
        goto LABEL_107;
      }

      msg_control = v130.msg_control;
      if (v130.msg_control)
      {
        LODWORD(v44) = 0;
        do
        {
          v45 = msg_control[1];
          switch(v45)
          {
            case 0xFFFFu:
              if (msg_control[2] == 7)
              {
                v50 = *(msg_control + 3);
                if (mdns_mach_ticks_per_second_s_once != -1)
                {
                  dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
                }

                v44 = v50 / mdns_mach_ticks_per_second_s_ticks_per_second;
              }

              break;
            case 0x29u:
              if (msg_control[2] == 46)
              {
                v127[0] = 6;
                *&v127[1] = *(msg_control + 3);
                v47 = msg_control[7];
                v48 = myGetIfAddrs_ifa;
                if (myGetIfAddrs_ifa || (getifaddrs(&myGetIfAddrs_ifa), (v48 = myGetIfAddrs_ifa) != 0))
                {
                  while (1)
                  {
                    v49 = v48[3];
                    if (v49)
                    {
                      if (*(v49 + 1) == 18 && *(v49 + 2) == v47)
                      {
                        break;
                      }
                    }

                    v48 = *v48;
                    if (!v48)
                    {
                      goto LABEL_48;
                    }
                  }

                  v51 = v48[1];
                  if (!v51)
                  {
                    __break(1u);
                  }

                  v52 = __s2;
                  v53 = 15;
                  while (1)
                  {
                    v54 = *v51;
                    *v52 = v54;
                    if (!v54)
                    {
                      break;
                    }

                    ++v52;
                    ++v51;
                    if (!--v53)
                    {
                      *v52 = 0;
                      goto LABEL_48;
                    }
                  }
                }
              }

              break;
            case 0u:
              v46 = msg_control[2];
              if (v46 == 20)
              {
                if (*(msg_control + 17) <= 0xFuLL)
                {
                  __memcpy_chk();
                  __s2[*(msg_control + 17)] = 0;
                }
              }

              else if (v46 == 7)
              {
                v127[0] = 4;
                v127[1] = msg_control[3];
              }

              break;
          }

LABEL_48:
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if (msg_control)
          {
            v55 = (msg_control + 3) > v130.msg_control + v130.msg_controllen;
          }

          else
          {
            v55 = 1;
          }
        }

        while (!v55);
        v56 = v26;
      }

      else
      {
        v56 = v26;
        LODWORD(v44) = 0;
      }

      v57 = v127[0];
      if (v127[0] == 4)
      {
        if ((v127[1] & 0xF0) == 0xE0)
        {
          goto LABEL_60;
        }
      }

      else if (v127[0] == 6 && LOBYTE(v127[1]) == 255)
      {
LABEL_60:
        ++*(*v11 + 26);
      }

      if (BYTE1(v135[0].tv_sec) == 30)
      {
        *v128 = 6;
        *&v128[4] = *&v135[0].tv_usec;
      }

      else
      {
        if (BYTE1(v135[0].tv_sec) != 2)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack from is unknown address family %d", v36, v37, v38, v39, v40, BYTE1(v135[0].tv_sec));
          return;
        }

        *v128 = 4;
        *&v128[4] = HIDWORD(v135[0].tv_sec);
      }

      v58 = WORD1(v135[0].tv_sec);
      v59 = v11;
      v60 = *v11;
      v61 = **v11;
      if (v61)
      {
        while (!*(v61 + 3696) || strcmp((v61 + 3606), __s2))
        {
          v61 = *(v61 + 3680);
          if (!v61)
          {
            goto LABEL_69;
          }
        }

        v62 = *(v61 + 3552);
        v11 = v59;
        if (v62)
        {
          goto LABEL_87;
        }
      }

      else
      {
LABEL_69:
        IsDNSMulticast = mDNSAddrIsDNSMulticast(v127);
        v11 = v59;
        if (IsDNSMulticast)
        {
          goto LABEL_92;
        }
      }

      if (v57 == 6)
      {
        v63 = xmmword_100170388;
        if (xmmword_100170388)
        {
          while (*(v63 + 890) != 6 || !*(v63 + 3671) || *(v63 + 3564) != *&v127[1])
          {
            v63 = *v63;
            if (!v63)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_93;
        }
      }

      else if (v57 == 4)
      {
        v63 = xmmword_100170388;
        if (xmmword_100170388)
        {
          while (*(v63 + 890) != 4 || !*(v63 + 3671) || *(v63 + 891) != v127[1])
          {
            v63 = *v63;
            if (!v63)
            {
              goto LABEL_85;
            }
          }

LABEL_93:
          v64 = v63 + 444;
          goto LABEL_86;
        }
      }

LABEL_85:
      v64 = &mDNSInterface_Any;
LABEL_86:
      v62 = *v64;
LABEL_87:
      *(a3 + 10) = &v129;
      if (*(a3 + 88))
      {
        v118 = 0;
        IsDNSMulticast = (v60[122])(v60 + 176, v126, &v126[v41], v128, v58, v127, *a3, v62);
      }

      else
      {
        mDNSCoreReceive(v11, v126, &v126[v41], v128, v58, v127, *a3, v62, v44);
      }

      if (!v129)
      {
        *(a3 + 10) = 0;
      }

LABEL_92:
      v27 = 0;
      v26 = v56 + 1;
    }
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: socket %d is no longer readable (EOF)", a4, a5, a6, a7, a8, v10);
  if (*(a3 + 4) == v10)
  {
    *(a3 + 89) = 1;
    v17 = a3 + 12;
  }

  else
  {
    if (*(a3 + 12) != v10)
    {
      return;
    }

    *(a3 + 90) = 1;
    v17 = a3 + 28;
  }

  KQueueSet(v10, 2u, -1, v17);
}

void mDNSCoreReceive(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int *a4, uint64_t a5, unsigned int *a6, unsigned __int16 a7, uint64_t a8, int a9)
{
  if (a6 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a6;
  }

  v17 = a1 + 12696;
  if (!mDNSSameAddress(a4, (a1 + 12696)))
  {
    v156 = a1;
    v34 = *(a1 + 15024);
    if (v34 && *v34 == a7)
    {
      return;
    }

    goto LABEL_19;
  }

  v23 = a1;
  v24 = a1 + 12288;
  if (a5 != 27655)
  {
    v25 = *(v23 + 15024);
    if (!v25 || *v25 != a7)
    {
      v156 = v23;
      if (a5 == 59156)
      {
        mDNS_Lock_(v23, "mDNSCoreReceive", 13974);
        v40 = (a3 - a2);
        if (a3 == a2)
        {
          v74 = mDNSLogCategory_Default;
          v75 = "uDNS_ReceiveNATPacket: zero length packet";
        }

        else
        {
          if (*a2)
          {
            if (*a2 != 2)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPacket: packet with version %u (expected %u or %u)", v35, v36, v37, v38, v39, *a2);
              goto LABEL_102;
            }

            v41 = (a3 - a2);
            if (v40 <= 0x17)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: message too short (%d bytes)", v35, v36, v37, v38, v39, (a3 - a2));
              goto LABEL_102;
            }

            v80 = a2[1];
            if ((v80 & 0x80000000) == 0 || (v81 = v80 & 0x7F, v81 >= 2))
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: unhandled opCode %u", v35, v36, v37, v38, v39, a2[1]);
              goto LABEL_102;
            }

            v106 = *(v156 + 14768);
            v107 = bswap32(*(a2 + 2));
            *(a2 + 1) = bswap32(*(a2 + 1));
            *(a2 + 2) = v107;
            v108 = *(v156 + 64);
            v153 = *(v156 + 14772);
            v155 = v106;
            if (v107 <= 1)
            {
              v109 = 1;
            }

            else
            {
              v109 = v107;
            }

            *(v156 + 14768) = v109;
            *(v156 + 14772) = v108;
            LNT_ClearState(v156);
            v115 = *(v156 + 15024);
            if (v115)
            {
              CloseSocketSet(*(v156 + 15024));
              free(v115);
              *(v156 + 15024) = 0;
            }

            if (v155)
            {
              v116 = (v108 - v153) / 1000;
              v117 = v107 - v155;
              if (v116 + 2 < v117 - (v117 >> 4) || v117 + 2 < v116 - (v116 >> 4))
              {
                if (v81)
                {
                  v118 = 0;
                  v119 = v156;
                }

                else
                {
                  v119 = v156;
                  do
                  {
                    v118 = arc4random() & 0x1FFF;
                  }

                  while (v118 > 0x1388);
                }

                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: Epoch invalid, %#a likely rebooted, waiting %u ticks", v110, v111, v112, v113, v114, v17);
                RecreateNATMappings(v119, v118);
                goto LABEL_102;
              }
            }

            if (!v81)
            {
LABEL_102:
              v32 = v156;
              v33 = 13976;
              goto LABEL_103;
            }

            v132 = a2[3];
            *(v24 + 2488) = v132;
            if (v132)
            {
              if (mDNS_LoggingEnabled == 1)
              {
                v151 = *(a2 + 1);
                v152 = *(a2 + 2);
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: error received from server. opcode %X result %X lifetime %X epoch %X", v110, v111, v112, v113, v114, a2[1]);
              }

              v133 = v156;
              v134 = 0;
              if (v40 < 0x3C)
              {
                v136 = 0;
                v137 = 0;
                v135 = 0;
              }

              else
              {
                v135 = 0;
                v136 = a2[36];
                v137 = *(a2 + 20);
              }

              goto LABEL_209;
            }

            if (v40 <= 0x3B)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: mapping response too short (%d bytes)", v110, v111, v112, v113, v114, v41);
              goto LABEL_102;
            }

            if (*(a2 + 3) != *(v156 + 14748) || (v146 = *(a2 + 7), *(a2 + 8) != *(v156 + 14756)))
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: invalid nonce, ignoring. received { %x %x %x } expected { %x %x %x }", v110, v111, v112, v113, v114, *(a2 + 6));
              goto LABEL_102;
            }

            v136 = a2[36];
            v137 = *(a2 + 20);
            v135 = *(a2 + 21);
            if (*(a2 + 11) || *(a2 + 12) || *(a2 + 26) || *(a2 + 27) != -1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: unexpected external address: %.16a", v110, v111, v112, v113, v114, a2 + 44);
              v134 = 0;
            }

            else
            {
              v134 = *(a2 + 14);
              if (v134)
              {
                goto LABEL_236;
              }
            }

            a2[3] = 3;
LABEL_236:
            v133 = v156;
LABEL_209:
            v141 = *(v133 + 14720);
            if (v141)
            {
              v142 = v134;
              do
              {
                if ((*(v141 + 172) & 2) != 0)
                {
                  v143 = 6;
                }

                else
                {
                  v143 = 17;
                }

                if (v143 == v136 && *(v141 + 174) == v137 || (!*(v141 + 172) ? (v144 = v136 == 6) : (v144 = 0), v144 && v137 == 2304))
                {
                  if (a2[3])
                  {
                    v145 = 3;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  natTraversalHandlePortMapReplyWithAddress(v156, v141, a8, v145, v142, v135, *(a2 + 1), 3);
                }

                v141 = *v141;
              }

              while (v141);
            }

            goto LABEL_102;
          }

          if (v40 <= 3)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP message too short (%d bytes)", v35, v36, v37, v38, v39, (a3 - a2));
            goto LABEL_102;
          }

          v82 = __rev16(*(a2 + 1));
          *(a2 + 1) = v82;
          if (v82 == 1)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP version unsupported message received", v35, v36, v37, v38, v39, v147);
            }

            for (i = *(v156 + 14720); i; i = *i)
            {
              uDNS_SendNATMsg(v156, i, 0, 0);
            }

            *(v156 + 104) = *(v156 + 64);
            goto LABEL_102;
          }

          if (v40 > 7)
          {
            v84 = bswap32(*(a2 + 1));
            *(a2 + 1) = v84;
            v85 = *(v156 + 14768);
            v86 = v84 - v85;
            if (v84 < v85 || (v87 = *(v156 + 64), v88 = 274877907 * (v87 - *(v156 + 14772)), LODWORD(v88) = (v88 >> 38) + (v88 >> 63), v86 + 2 < v88 - (v88 >> 3)))
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP epoch time check failed: assuming NAT gateway %#a rebooted", v35, v36, v37, v38, v39, v17);
              RecreateNATMappings(v156, 0);
              v84 = *(a2 + 1);
              v87 = *(v156 + 64);
            }

            *(v156 + 14768) = v84;
            *(v156 + 14772) = v87;
            LNT_ClearState(v156);
            v94 = a2[1];
            if ((v94 - 129) >= 2)
            {
              if (v94 != 128)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received NAT-PMP response with unknown opcode 0x%X", v89, v90, v91, v92, v93, a2[1]);
                goto LABEL_102;
              }

              if (mDNS_LoggingEnabled == 1)
              {
                v120 = "failure";
                if (!*(a2 + 1))
                {
                  v120 = "success";
                }

                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPMPPacket: AddressRequest %s error %d", v89, v90, v91, v92, v93, v120);
              }

              if (v40 <= 0xB && !*(a2 + 1))
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP AddrResponse message too short (%d bytes)", v89, v90, v91, v92, v93, (a3 - a2));
                goto LABEL_102;
              }

              v138 = v156;
              natTraversalHandleAddressReply(v156, *(a2 + 1), *(a2 + 2), v89, v90, v91, v92, v93);
            }

            else
            {
              if (mDNS_LoggingEnabled == 1)
              {
                v95 = "failure";
                if (!*(a2 + 1))
                {
                  v95 = "success";
                }

                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPMPPacket: PortMapRequest %s %s - error %d", v89, v90, v91, v92, v93, v95);
              }

              v96 = *(a2 + 1);
              if (!v96)
              {
                if (v40 <= 0xF)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP PortMapReply message too short (%d bytes)", v89, v90, v91, v92, v93, (a3 - a2));
                  goto LABEL_102;
                }

                *(a2 + 3) = bswap32(*(a2 + 3));
              }

              *(v24 + 2488) = v96;
              v138 = v156;
              for (j = *(v156 + 14720); j; j = *j)
              {
                if (*(j + 172) == (v94 & 0x7F) && *(j + 174) == *(a2 + 4))
                {
                  natTraversalHandlePortMapReplyWithAddress(v156, j, a8, *(a2 + 1), *(v156 + 14744), *(a2 + 5), *(a2 + 3), 1);
                }
              }
            }

            v140 = *(v138 + 15024);
            if (v140)
            {
              CloseSocketSet(*(v138 + 15024));
              free(v140);
              *(v156 + 15024) = 0;
            }

            goto LABEL_102;
          }

          v74 = mDNSLogCategory_Default;
          v149 = a2[1];
          v147 = (a3 - a2);
          v75 = "NAT-PMP message too short (%d bytes) 0x%X 0x%X";
        }

        LogMsgWithLevel(v74, OS_LOG_TYPE_DEFAULT, v75, v35, v36, v37, v38, v39, v147);
        goto LABEL_102;
      }

LABEL_19:
      v42 = a3 - a2;
      if (((a3 - a2) & 0xFFFFFFFC) <= 0xB)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS Message from %#a:%d to %#a:%d length %d too short", v18, v19, v20, v21, v22, a4);
        return;
      }

      v43 = a2[2];
      *(a2 + 2) = bswap32(*(a2 + 2)) >> 16;
      *(a2 + 3) = bswap32(*(a2 + 3)) >> 16;
      *(a2 + 4) = bswap32(*(a2 + 4)) >> 16;
      *(a2 + 5) = bswap32(*(a2 + 5)) >> 16;
      if (*a4 == 6)
      {
        v61 = a4[1];
        v62 = a4[2];
        v63 = a4[3];
        v64 = a4[4];
        if (!(v62 | v61 | v63 | v64) || (v62 & v61 & v63 & v64) == 0xFFFFFFFF)
        {
          return;
        }
      }

      else if (*a4 != 4 || (a4[1] + 1) < 2)
      {
        return;
      }

      v154 = v43 & 0xF8;
      mDNS_Lock_(v156, "mDNSCoreReceive", 14004);
      ++*(v156 + 132);
      if (*a2 || (++*(v156 + 136), IsLocalSubnet = mDNS_AddressIsLocalSubnet(v156, a8, a4), !v16) || IsLocalSubnet)
      {
        if (!v16)
        {
          v79 = "TCP";
          v70 = v154;
LABEL_127:
          v73 = a8;
          if (*a2)
          {
            if (mDNS_PacketLoggingEnabled)
            {
              if (a6 == 1)
              {
                v97 = "TLS";
              }

              else
              {
                v97 = v79;
              }

              v98 = a5;
              DumpPacket(0, 0, v97, a4, a5, v16, a7, a2, a3, a8);
            }

            else
            {
              v98 = a5;
            }

            uDNS_ReceiveMsg(v156, a2, a3, a4, v98, v67, v68, v73);
            v73 = 0;
            v70 = v154;
          }

LABEL_135:
          if (v70 > 127)
          {
            if (v70 == 128)
            {
              mDNSCoreReceiveResponse(v156, a2, a3, a4, a5, v16, a7, 0, 0, v73, a9);
              goto LABEL_156;
            }

            if (v70 == 168)
            {
              mDNSCoreReceiveUpdateR();
              goto LABEL_156;
            }
          }

          else
          {
            if (!v70)
            {
              mDNSCoreReceiveQuery(v156, a2, a3, a4, a5, v16, a7, v73);
              goto LABEL_156;
            }

            if (v70 == 40)
            {
              mDNSCoreReceiveUpdate(v156, a2, a3, a4, a5, v16, a7, a8);
LABEL_156:
              mDNS_Unlock_(v156, "mDNSCoreReceive", 14065);
              return;
            }
          }

          if (mDNS_LoggingEnabled == 1 && mDNSCoreReceive_msgCount <= 999)
          {
            ++mDNSCoreReceive_msgCount;
            v150 = a2[3];
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Unknown DNS packet type %02X%02X from %#-15a:%-5d to %#-15a:%-5d length %d on %p (ignored)", v65, v66, v67, v68, v73, a2[2]);
            if (v42 >= 1)
            {
              v99 = 0;
              do
              {
                memset(v158, 0, sizeof(v158));
                v105 = v158 + mDNS_snprintf(v158);
                do
                {
                  if (v99 < v42)
                  {
                    v148 = a2[v99];
                    v105 += mDNS_snprintf(v105);
                  }

                  ++v99;
                }

                while ((v99 & 0xF) != 0);
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s", v100, v101, v102, v103, v104, v158);
                }
              }

              while (v99 < v42);
            }
          }

          goto LABEL_156;
        }

        v69 = *v16;
        v70 = v154;
        goto LABEL_62;
      }

      v69 = *v16;
      if (*v16 == 6)
      {
        v70 = v154;
        if (v16[1] != 767)
        {
          goto LABEL_125;
        }

        if (v16[2] || v16[3] || v16[4] != -83886080)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v70 = v154;
        if (v69 != 4)
        {
LABEL_62:
          if (v69 != 6)
          {
            if (v69 != 4)
            {
              goto LABEL_125;
            }

            v71 = v16[1];
            v72 = -83885856;
            goto LABEL_65;
          }

          if (v16[1] != 767)
          {
            goto LABEL_125;
          }

LABEL_96:
          if (v16[2] || v16[3])
          {
            goto LABEL_125;
          }

          v71 = v16[4];
          v72 = -83886080;
LABEL_65:
          v73 = a8;
          if (v71 == v72)
          {
            goto LABEL_135;
          }

LABEL_125:
          v79 = "UDP";
          if (v70 != 168)
          {
            v73 = a8;
            if (v70 != 128)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_127;
        }

        if (v16[1] != -83885856)
        {
          goto LABEL_125;
        }
      }

      ++*(v156 + 176);
      goto LABEL_62;
    }
  }

  v26 = v23;
  mDNS_Lock_(v23, "mDNSCoreReceive", 13966);
  if (*(v24 + 2746))
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v44 = (a3 - a2);
  if (a3 == a2)
  {
    goto LABEL_9;
  }

  v45 = &a2[(a3 - a2)];
  v46 = v44 - 1;
  v47 = v44 - 1;
  v48 = a2;
  do
  {
    if ((*v48 & 0xDF) == 0x57 && !strncasecmp(v48, "WANIPConnection:1", 0x11uLL))
    {
      break;
    }

    if (!++v48)
    {
      break;
    }
  }

  while (v47--);
  if (v48 == v45)
  {
    v76 = v46;
    v48 = a2;
    do
    {
      if ((*v48 & 0xDF) == 0x57 && !strncasecmp(v48, "WANPPPConnection:1", 0x12uLL))
      {
        break;
      }

      if (!++v48)
      {
        break;
      }
    }

    while (v76--);
  }

  if (!v48 || v48 == v45)
  {
    goto LABEL_9;
  }

  do
  {
    if ((*a2 & 0xDF) == 0x4C && !strncasecmp(a2, "Location:", 9uLL))
    {
      break;
    }

    if (!++a2)
    {
      break;
    }
  }

  while (v46--);
  if (a2 && a2 != v45)
  {
    v51 = a2 + 9;
    do
    {
      v52 = v51;
      v54 = *v51++;
      v53 = v54;
    }

    while (v52 < v45 && v53 == 32);
    if (v52 >= v45)
    {
      goto LABEL_9;
    }

    v55 = (v51 - 1);
    v56 = v51 - 1;
    while (*v56 != 13)
    {
      if (++v56 == v45)
      {
        v56 = v45;
        break;
      }
    }

    *(v24 + 2746) = 20480;
    v57 = v26[1883];
    if (v57)
    {
      free(v57);
      v26[1883] = 0;
    }

    v58 = v26[1880];
    if (v58)
    {
      free(v58);
      v26[1880] = 0;
    }

    if (ParseHttpUrl(v55, v56, v26 + 1883, (v24 + 2746), v26 + 1880))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v59 = mDNSLogCategory_Default;
        v60 = "LNT_ConfigureRouterInfo: Failed to parse URL";
LABEL_78:
        LogMsgWithLevel(v59, OS_LOG_TYPE_DEFAULT, v60, v27, v28, v29, v30, v31, v147);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v26[1877] = a8;
    if (v26[1883])
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router address string [%s]", v27, v28, v29, v30, v31, v26[1883]);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: UPnPRouterAddressString is NULL", v27, v28, v29, v30, v31, v147);
    }

    if (v26[1880])
    {
      if (mDNS_LoggingEnabled != 1)
      {
LABEL_184:
        v131 = v26[1878];
        if (v131)
        {
          CloseSocketSet(v26[1878]);
          free(v131);
          v26[1878] = 0;
        }

        GetDeviceDescription(v26, (v26 + 1862));
        goto LABEL_9;
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router URL [%s]", v27, v28, v29, v30, v31, v26[1880]);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: UPnPRouterURL is NULL", v27, v28, v29, v30, v31, v147);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router port %d", v121, v122, v123, v124, v125, bswap32(*(v24 + 2746)) >> 16);
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router interface %d", v126, v127, v128, v129, v130, v26[1877]);
      }
    }

    goto LABEL_184;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v59 = mDNSLogCategory_Default;
    v60 = "LNT_ConfigureRouterInfo: Location field not found";
    goto LABEL_78;
  }

LABEL_9:
  v32 = v26;
  v33 = 13968;
LABEL_103:

  mDNS_Unlock_(v32, "mDNSCoreReceive", v33);
}

void mDNSCoreReceiveQuery(uint64_t a1, _WORD *a2, unint64_t a3, __int128 *a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v335 = a2;
  if (!a4 || !a6)
  {
    if (!a6)
    {
LABEL_43:
      a2[2];
      a2[3];
      a2[4];
      v50 = "s";
      if (a2[5] == 1)
      {
        v50 = " ";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring Query from %#-15a:%-5d to %#-15a:%-5d on 0x%p with %2d Question%s %2d Answer%s %2d Authorit%s %2d Additional%s %d bytes (%s)", v50, a5, a6, a7, a8, a4);
      return;
    }

    v312 = a7;
LABEL_8:
    v13 = 0;
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v312 = a7;
  if (mDNSAddrIsDNSMulticast(a6))
  {
    goto LABEL_8;
  }

  v13 = mDNS_AddressIsLocalSubnet(a1, a8, a4) != 0;
  if (!a8)
  {
LABEL_9:
    if (mDNSAddrIsDNSMulticast(a6))
    {
      a2 = v335;
      a7 = v312;
      goto LABEL_43;
    }
  }

LABEL_11:
  v14 = (a1 + 37920);
  v316 = (a1 + 28960);
  v15 = (a1 + 19924);
  v16 = a5 != 59668;
  v305 = a6;
  IsDNSMulticast = mDNSAddrIsDNSMulticast(a6);
  IsLocalSubnet = mDNS_AddressIsLocalSubnet(a1, a8, a4);
  v342 = &v343;
  v343 = 0;
  IsD2D = mDNSPlatformInterfaceIsD2D(a8, v18, v19, v20, v21, v22, v23, v24);
  v340 = 0;
  v341 = 0;
  v339 = 0;
  OptRR = LocateOptRR(v335, a3, 12);
  v313 = a4;
  v338 = a3;
  v326 = (a1 + 19924);
  if (!OptRR)
  {
    goto LABEL_55;
  }

  if (!GetLargeResourceRecord(a1, v335, OptRR, a3, a8, 128, a1 + 37912))
  {
    goto LABEL_53;
  }

  if (*v14 == 240)
  {
    goto LABEL_53;
  }

  if (*(a1 + 37924) != 41)
  {
    goto LABEL_53;
  }

  v30 = *(a1 + 37960);
  v31 = v30 + 4 + *(a1 + 37932);
  if (v30 + 4 >= v31)
  {
    goto LABEL_53;
  }

  v32 = 0;
  v329 = 0;
  v33 = v30 + 8;
  v331 = v30 + 4 + *(a1 + 37932);
  do
  {
    v34 = *(v33 - 4);
    if (v34 == 65002)
    {
      v333 = v32 + 1;
      v35 = *(v33 + 8);
      v36 = DomainNamePtrAtTSRIndex(v335, v338, v35);
      if (v36)
      {
        v37 = UnsafeBufferPointer(v335, v36, v338, v33 - 4);
        if (v37)
        {
          *v37 = v329;
          v339 = v37;
          v329 = v37;
LABEL_25:
          v31 = v331;
          v32 = v333;
          goto LABEL_39;
        }

        v40 = mDNSLogCategory_mDNS;
        v32 = v333;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          v31 = v331;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v40 = mDNSLogCategory_mDNS_redacted;
          v31 = v331;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }

        v46 = *(a1 + 37944);
        v47 = *v33;
        v48 = *(v33 + 4);
        v49 = *(v33 + 8);
        *buf = 67110144;
        *v358 = v333;
        *&v358[4] = 2048;
        *&v358[6] = v46;
        v359 = 1024;
        *v360 = v47;
        *&v360[4] = 1024;
        *&v360[6] = v48;
        LOWORD(v361) = 1024;
        *(&v361 + 2) = v49;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "ProcessQuery: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d", buf, 0x24u);
      }

      else
      {
        v38 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v39 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v38 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }
        }

        v42 = *(a1 + 37944);
        v43 = *v33;
        v44 = *(v33 + 4);
        *buf = 67110144;
        *v358 = v333;
        *&v358[4] = 2048;
        *&v358[6] = v42;
        v359 = 1024;
        *v360 = v43;
        *&v360[4] = 1024;
        *&v360[6] = v44;
        LOWORD(v361) = 1024;
        *(&v361 + 2) = v35;
        v32 = v333;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "ProcessQuery: No Domain Name for TSR(%u) if %p tsrTime %d tsrHost %x recIndex %d", buf, 0x24u);
        v31 = v331;
      }
    }

    else if (v34 == 4 && !*v33 && *(v33 + 2))
    {
      ClearProxyRecords(a1, v33, *(a1 + 12624));
      ClearProxyRecords(a1, v33, *(a1 + 12616));
    }

LABEL_39:
    v45 = v33 + 20;
    v33 += 24;
  }

  while (v45 < v31);
  a3 = v338;
  if (v329)
  {
    v51 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v51 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
LABEL_52:
        v52 = *(a1 + 37944);
        GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
        *buf = 67109634;
        *v358 = v32;
        *&v358[4] = 2048;
        *&v358[6] = v52;
        a3 = v338;
        v359 = 2082;
        *v360 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "ProcessQuery: Received TSR(%u) if %p %{public}s", buf, 0x1Cu);
      }
    }
  }

LABEL_53:
  *v14 = 0;
  *(a1 + 38022) = 0;
  v53 = *(a1 + 37976);
  v15 = (a1 + 19924);
  v16 = a5 != 59668;
  if (v53)
  {
    ref_count_obj_release(v53);
    *(a1 + 37976) = 0;
  }

LABEL_55:
  v328 = (v335 + 12);
  if (*(v335 + 4))
  {
    v321 = 0;
    v54 = 0;
    v55 = a5 != 59668;
    if (!IsDNSMulticast)
    {
      v55 = 1;
    }

    v325 = v55;
    v323 = (a1 + 47032);
    v315 = IsDNSMulticast || v13;
    if (IsLocalSubnet | v16)
    {
      v56 = 1;
    }

    else
    {
      v56 = !IsDNSMulticast;
    }

    v322 = v56;
    v304 = &v340;
    v57 = &v341;
    v58 = &unk_100178000;
    v59 = (v335 + 12);
    v60 = v335;
    while (1)
    {
      bzero(buf, 0x2B8uLL);
      Question = getQuestion(v60, v59, v338, a8, buf);
      if (!Question)
      {
        v337 = 0;
        goto LABEL_351;
      }

      v59 = Question;
      v64 = v375;
      v65 = v325;
      if ((v375 & 0x8000u) != 0)
      {
        v65 = 1;
      }

      v336 = v65;
      v334 = v57;
      if (v375 < 0)
      {
        ++v15[3];
      }

      else
      {
        ++v15[4];
      }

      v375 = v64 & 0x7FFF;
      v66 = *(a1 + 12640);
      if (v66)
      {
        v67 = *(v58 + 434);
        GetRRDisplayString_rdb((v66 + 8), (*(v66 + 48) + 4), v323);
        LogMsgWithLevel(v67, OS_LOG_TYPE_DEFAULT, "ProcessQuery ERROR m->CurrentRecord already set %s", v68, v69, v70, v71, v72, v323);
      }

      v73 = *(a1 + 12616);
      *(a1 + 12640) = v73;
      if (!v73)
      {
LABEL_315:
        v321 = 1000;
        goto LABEL_316;
      }

      v332 = 0;
      v330 = 0;
      v74 = -2;
      if (a5 != 59668)
      {
        v74 = v59;
      }

      v320 = v74;
      do
      {
        *(a1 + 12640) = *v73;
        v75 = *(v73 + 32);
        if ((v75 + 3) < 2)
        {
LABEL_77:
          LogMsgWithLevel(*(v58 + 434), OS_LOG_TYPE_DEFAULT, "AnyTypeRecordAnswersQuestion: ERROR!! called with LocalOnly ResourceRecord %p, Question %p", v63, v26, v27, v28, v29, *(v73 + 32));
          goto LABEL_78;
        }

        if (v75)
        {
          if (v75 == -5)
          {
            goto LABEL_77;
          }

          v76 = v371 == -2 || v371 == 0;
          if (!v76 && v75 != v371)
          {
            goto LABEL_78;
          }
        }

        if (v370 && (*(v370 + 276) & 0x4000) != 0)
        {
          v80 = *(v73 + 56);
          if (v80)
          {
            v80 = *(v80 + 24);
          }

          if (v80 != v370)
          {
            goto LABEL_78;
          }

          goto LABEL_106;
        }

        v78 = *(v73 + 56);
        if (v78)
        {
          if (*(v78 + 24))
          {
            v79 = 1;
          }

          else
          {
            v79 = v75 == 0;
          }

          if (v79)
          {
            v75 = *(v78 + 24);
LABEL_97:
            if (v75 != v370 || !mDNSPlatformValidRecordForInterface(v73, v371, v62, v63, v26, v27, v28, v29))
            {
              goto LABEL_78;
            }

            goto LABEL_106;
          }
        }

        else if (!v75)
        {
          goto LABEL_97;
        }

        if (v373)
        {
          goto LABEL_78;
        }

LABEL_106:
        if (*(v73 + 14) != v375 && v375 != 255 || *(v73 + 24) != v372 || !SameDomainNameBytes(*(v73 + 40), v376) || !v315 && !*(v73 + 121))
        {
          goto LABEL_78;
        }

        ++v15[5];
        if (!RRTypeAnswersQuestionType(v73 + 8, v374, 0, v63, v26, v27, v28, v29))
        {
          if ((*(v73 + 8) & 0x30) != 0)
          {
            IsValidAnswer = ResourceRecordIsValidAnswer(v73);
            v84 = v332;
            if (v332)
            {
              v85 = 1;
            }

            else
            {
              v85 = !IsValidAnswer;
            }

            if (!v85)
            {
              v84 = v73;
            }

            v332 = v84;
          }

          goto LABEL_78;
        }

        v81 = *(v73 + 40);
        v82 = &v339;
        v314 = v59;
        while (1)
        {
          v82 = *v82;
          if (!v82)
          {
            break;
          }

          if (SameDomainNameBytes(v82 + 20, v81))
          {
            v317 = (v82 + 1);
            goto LABEL_125;
          }
        }

        v317 = 0;
LABEL_125:
        v86 = *(v73 + 8);
        Authorities = LocateAuthorities(v60, v338);
        v88 = Authorities;
        v15 = (a1 + 19924);
        if (v86 == 2)
        {
          if (!*(v60 + 8))
          {
            v124 = 1;
LABEL_187:
            v59 = v314;
            if (v124 && mDNS_LoggingEnabled)
            {
              v134 = *(v58 + 434);
              v303 = *(v73 + 40);
              DNSTypeName(*(v73 + 12));
              v15 = (a1 + 19924);
              LogMsgWithLevel(v134, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %##s (%s): No Update Record found", v135, v136, v137, v138, v139, v303);
            }

LABEL_190:
            *v14 = 0;
            *(a1 + 38022) = 0;
            v140 = *(a1 + 37976);
            if (v140)
            {
              ref_count_obj_release(v140);
              *(a1 + 37976) = 0;
            }

            goto LABEL_78;
          }

          v89 = 0;
          v90 = 0;
          v310 = v54;
          while (2)
          {
            LargeResourceRecord = GetLargeResourceRecord(a1, v60, v88, v338, v371, 160, a1 + 37912);
            if (!LargeResourceRecord)
            {
LABEL_164:
              v124 = v90 == 0;
              v15 = (a1 + 19924);
              goto LABEL_187;
            }

            v88 = LargeResourceRecord;
            if (*v14 != 240 && RecordAnswersQuestion(a1 + 37920, 0, buf, v63, v26, v27, v28, v29))
            {
              if (v317)
              {
                v92 = mDNSGetTSRForAuthRecordNamed(*(a1 + 12616), *(v73 + 40), *(v73 + 24));
                if (v92)
                {
                  v93 = CheckTSRForResourceRecord(v317, (v92 + 1));
                  if (v93)
                  {
                    v15 = (a1 + 19924);
                    v59 = v314;
                    if (v93 != -1)
                    {
                      goto LABEL_190;
                    }

                    v151 = mDNSLogCategory_mDNS;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                      {
                        v152 = *(v73 + 40);
                        if (v152)
                        {
                          v158 = *(v73 + 40);
                          while (1)
                          {
                            if (!v158 || (v159 = *v158, v159 > 0x3F))
                            {
LABEL_229:
                              v155 = v314;
                              v156 = 257;
                              goto LABEL_259;
                            }

                            if (!*v158)
                            {
                              break;
                            }

                            v158 += v159 + 1;
                            if (&v158[-v152] >= 256)
                            {
                              goto LABEL_229;
                            }
                          }

                          v155 = v314;
                          v156 = (v158 - v152 + 1);
                        }

                        else
                        {
                          v155 = v314;
                          v156 = 0;
                        }

LABEL_259:
                        v171 = DNSTypeName(*(v73 + 12));
                        v172 = *(v73 + 32);
                        *__dst = 141559043;
                        *&__dst[4] = 1752392040;
                        *&__dst[12] = 1040;
                        *&__dst[14] = v156;
                        *&__dst[18] = 2101;
                        *&__dst[20] = v152;
                        *&__dst[28] = 2082;
                        *&__dst[30] = v171;
                        *&__dst[38] = 2048;
                        *&__dst[40] = v172;
                        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface id: %p due to TSR conflict", __dst, 0x30u);
                        v15 = (a1 + 19924);
                        v59 = v155;
                        v54 = v310;
                      }
                    }

                    else
                    {
                      v151 = mDNSLogCategory_mDNS_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                      {
                        v152 = *(v73 + 40);
                        if (v152)
                        {
                          v153 = *(v73 + 40);
                          while (1)
                          {
                            if (!v153 || (v154 = *v153, v154 > 0x3F))
                            {
LABEL_218:
                              v155 = v314;
                              v156 = 257;
                              goto LABEL_259;
                            }

                            if (!*v153)
                            {
                              break;
                            }

                            v153 += v154 + 1;
                            if (&v153[-v152] >= 256)
                            {
                              goto LABEL_218;
                            }
                          }

                          v155 = v314;
                          v156 = (v153 - v152 + 1);
                        }

                        else
                        {
                          v155 = v314;
                          v156 = 0;
                        }

                        goto LABEL_259;
                      }
                    }

                    mDNS_Deregister_internal(a1, v73, 4);
                    goto LABEL_190;
                  }
                }
              }

              if (!PacketRRConflict(a1, v73, a1 + 37912))
              {
                v90 = 1;
                goto LABEL_161;
              }

              v94 = *(v73 + 14);
              v95 = *(a1 + 37926);
              v96 = v94 - v95;
              if (v94 == v95)
              {
                v96 = *(v73 + 12) - *(a1 + 37924);
                if (!v96)
                {
                  goto LABEL_141;
                }
              }

              else
              {
                if (v96)
                {
                  goto LABEL_137;
                }

LABEL_141:
                memset(__dst, 0, sizeof(__dst));
                v346 = 0u;
                v347 = 0u;
                v348 = 0u;
                v349 = 0u;
                v350 = 0u;
                v351 = 0u;
                v352 = 0u;
                v353 = 0u;
                v354 = 0u;
                v355 = 0u;
                v356 = 0u;
                memset(v344, 0, sizeof(v344));
                v111 = __dst;
                v112 = putRData(0, __dst, buf, v73 + 8, v26, v27, v28, v29);
                v113 = v344;
                v118 = putRData(0, v344, __dst, a1 + 37920, v114, v115, v116, v117);
                v119 = v344 < v118;
                v120 = __dst < v112;
                if (__dst >= v112 || v344 >= v118)
                {
LABEL_147:
                  if (v120)
                  {
                    v96 = 1;
                  }

                  else
                  {
                    v96 = (v120 || v119) << 31 >> 31;
                  }

                  v58 = &unk_100178000;
                  if (v120 && v119)
                  {
                    v122 = *v113;
                    v121 = *v111;
                    goto LABEL_154;
                  }
                }

                else
                {
                  v111 = __dst;
                  v113 = v344;
                  while (1)
                  {
                    v121 = *v111;
                    v122 = *v113;
                    if (v121 != v122)
                    {
                      break;
                    }

                    ++v111;
                    v119 = ++v113 < v118;
                    v120 = v111 < v112;
                    if (v111 >= v112 || v113 >= v118)
                    {
                      goto LABEL_147;
                    }
                  }

                  v58 = &unk_100178000;
LABEL_154:
                  if (v122 <= v121)
                  {
                    if (v122 < v121)
                    {
                      v96 = 1;
                      goto LABEL_159;
                    }

                    LogMsgWithLevel(*(v58 + 434), OS_LOG_TYPE_DEFAULT, "CompareRData ERROR: Invalid state", v63, v26, v27, v28, v29, v302);
                  }

                  v96 = -1;
                }

LABEL_159:
                v54 = v310;
                if (!v96)
                {
                  v90 = 1;
                  v60 = v335;
                  goto LABEL_161;
                }
              }

LABEL_137:
              v308 = *(v58 + 434);
              v97 = v371;
              v98 = *(a1 + 37940);
              GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), v323);
              LogMsgWithLevel(v308, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %p Pkt Record:        %08lX %s", v99, v100, v101, v102, v103, v97);
              v307 = *(v73 + 32);
              v309 = mDNSLogCategory_Default;
              v104 = *(v73 + 190);
              v105 = *(v73 + 28);
              GetRRDisplayString_rdb((v73 + 8), (*(v73 + 48) + 4), v323);
              LogMsgWithLevel(v309, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %p Our Record %d %s %08lX %s", v106, v107, v108, v109, v110, v307);
              if (v96 < 0)
              {
                v157 = *(a1 + 64) + 1000;
                if (v157 <= 1)
                {
                  v157 = 1;
                }

                *(a1 + 12672) = v157;
                *(v73 + 190) = 1027;
                InitializeLastAPTime(a1, v73);
                v60 = v335;
                v15 = (a1 + 19924);
                v59 = v314;
                v54 = v310;
                v58 = &unk_100178000;
                goto LABEL_190;
              }

              v90 = 1;
              v60 = v335;
              v54 = v310;
              v58 = &unk_100178000;
            }

LABEL_161:
            *v14 = 0;
            *(a1 + 38022) = 0;
            v123 = *(a1 + 37976);
            if (v123)
            {
              ref_count_obj_release(v123);
              *(a1 + 37976) = 0;
            }

            if (++v89 >= *(v60 + 8))
            {
              goto LABEL_164;
            }

            continue;
          }
        }

        v125 = v338;
        if (Authorities && *(v60 + 8))
        {
          v126 = 0;
          while (1)
          {
            v127 = GetLargeResourceRecord(a1, v60, v88, v125, v371, 160, a1 + 37912);
            if (!v127)
            {
              goto LABEL_178;
            }

            v88 = v127;
            v128 = *(a1 + 37976);
            if (resource_records_have_same_dnssec_rr_category(v128, *(v73 + 64)))
            {
              if (*(a1 + 37924) == *(v73 + 12) && *(a1 + 37926) == *(v73 + 14) && *(a1 + 37932) == *(v73 + 20) && *(a1 + 37940) == *(v73 + 28))
              {
                v129 = SameRDataBody(a1 + 37920, (*(v73 + 48) + 4), SameDomainName);
                v128 = *(a1 + 37976);
                if (v129)
                {
                  break;
                }
              }
            }

            *v14 = 0;
            *(a1 + 38022) = 0;
            if (v128)
            {
              ref_count_obj_release(v128);
              *(a1 + 37976) = 0;
            }

            ++v126;
            v125 = v338;
            if (v126 >= *(v60 + 8))
            {
              goto LABEL_178;
            }
          }

          *v14 = 0;
          *(a1 + 38022) = 0;
          if (v128)
          {
            ref_count_obj_release(v128);
            *(a1 + 37976) = 0;
          }

          v59 = v314;
          v58 = &unk_100178000;
        }

        else
        {
LABEL_178:
          v130 = LocateAuthorities(v60, v125);
          v58 = &unk_100178000;
          if (v130)
          {
            if (*(v60 + 8))
            {
              v131 = v130;
              v132 = mDNSGetTSRForAuthRecordNamed(*(a1 + 12616), *(v73 + 40), *(v73 + 24));
              if (v132)
              {
                if (CheckTSRForResourceRecord(v317, (v132 + 1)) == -1 && *(v60 + 8))
                {
                  v142 = 0;
                  while (1)
                  {
                    v143 = GetLargeResourceRecord(a1, v60, v131, v338, v371, 160, a1 + 37912);
                    if (!v143)
                    {
                      goto LABEL_182;
                    }

                    v131 = v143;
                    if (PacketRRMatchesSignature(a1 + 37912, v73, v144, v145, v146, v147, v148, v149))
                    {
                      if ((*(v73 + 8) & 0x32) != 0)
                      {
                        break;
                      }
                    }

                    *v14 = 0;
                    *(a1 + 38022) = 0;
                    v150 = *(a1 + 37976);
                    if (v150)
                    {
                      ref_count_obj_release(v150);
                      *(a1 + 37976) = 0;
                    }

                    if (++v142 >= *(v60 + 8))
                    {
                      goto LABEL_182;
                    }
                  }

                  *v14 = 0;
                  *(a1 + 38022) = 0;
                  v160 = *(a1 + 37976);
                  if (v160)
                  {
                    ref_count_obj_release(v160);
                    *(a1 + 37976) = 0;
                  }

                  v161 = mDNSLogCategory_mDNS;
                  v311 = v54;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v162 = v371;
                      v168 = DNSTypeName(*(a1 + 37924));
                      v164 = *(a1 + 37952);
                      v318 = v168;
                      if (v164)
                      {
                        v169 = *(a1 + 37952);
                        while (1)
                        {
                          if (!v169 || (v170 = *v169, v170 > 0x3F))
                          {
LABEL_249:
                            v167 = 257;
                            goto LABEL_263;
                          }

                          if (!*v169)
                          {
                            break;
                          }

                          v169 += v170 + 1;
                          if (&v169[-v164] >= 256)
                          {
                            goto LABEL_249;
                          }
                        }

                        v167 = (v169 - v164 + 1);
                      }

                      else
                      {
                        v167 = 0;
                      }

LABEL_263:
                      GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), v323);
                      *__dst = 134219779;
                      *&__dst[4] = v162;
                      *&__dst[12] = 2160;
                      *&__dst[14] = 1752392040;
                      *&__dst[22] = 2085;
                      *&__dst[24] = v318;
                      *&__dst[32] = 2160;
                      *&__dst[34] = 1752392040;
                      *&__dst[42] = 1040;
                      *&__dst[44] = v167;
                      *&__dst[48] = 2101;
                      *&__dst[50] = v164;
                      *&__dst[58] = 2160;
                      *&__dst[60] = 1752392040;
                      *&__dst[68] = 2085;
                      *&__dst[70] = a1 + 47032;
                      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "ProbeRRMatchAndTSRCheck: pkt ar on interface  %p rrtype: %{sensitive, mask.hash}s, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash}s", __dst, 0x4Eu);
                      v15 = (a1 + 19924);
                      v54 = v311;
                      v58 = &unk_100178000;
                    }
                  }

                  else
                  {
                    v161 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v162 = v371;
                      v163 = DNSTypeName(*(a1 + 37924));
                      v164 = *(a1 + 37952);
                      v318 = v163;
                      if (v164)
                      {
                        v165 = *(a1 + 37952);
                        while (1)
                        {
                          if (!v165 || (v166 = *v165, v166 > 0x3F))
                          {
LABEL_241:
                            v167 = 257;
                            goto LABEL_263;
                          }

                          if (!*v165)
                          {
                            break;
                          }

                          v165 += v166 + 1;
                          if (&v165[-v164] >= 256)
                          {
                            goto LABEL_241;
                          }
                        }

                        v167 = (v165 - v164 + 1);
                      }

                      else
                      {
                        v167 = 0;
                      }

                      goto LABEL_263;
                    }
                  }

                  v173 = mDNSLogCategory_mDNS;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v174 = *(v73 + 32);
                      v180 = DNSTypeName(*(v73 + 12));
                      v176 = *(v73 + 40);
                      v319 = v180;
                      if (v176)
                      {
                        v181 = *(v73 + 40);
                        while (1)
                        {
                          if (!v181 || (v182 = *v181, v182 > 0x3F))
                          {
LABEL_281:
                            v179 = 257;
                            goto LABEL_286;
                          }

                          if (!*v181)
                          {
                            break;
                          }

                          v181 += v182 + 1;
                          if (&v181[-v176] >= 256)
                          {
                            goto LABEL_281;
                          }
                        }

                        v179 = (v181 - v176 + 1);
                      }

                      else
                      {
                        v179 = 0;
                      }

LABEL_286:
                      GetRRDisplayString_rdb((v73 + 8), (*(v73 + 48) + 4), v323);
                      *__dst = 134219779;
                      *&__dst[4] = v174;
                      *&__dst[12] = 2160;
                      *&__dst[14] = 1752392040;
                      *&__dst[22] = 2085;
                      *&__dst[24] = v319;
                      *&__dst[32] = 2160;
                      *&__dst[34] = 1752392040;
                      *&__dst[42] = 1040;
                      *&__dst[44] = v179;
                      *&__dst[48] = 2101;
                      *&__dst[50] = v176;
                      *&__dst[58] = 2160;
                      *&__dst[60] = 1752392040;
                      *&__dst[68] = 2085;
                      *&__dst[70] = a1 + 47032;
                      _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "ProbeRRMatchAndTSRCheck: Conflict with our ar %p rrtype: %{sensitive, mask.hash}s, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash}s", __dst, 0x4Eu);
                      v15 = (a1 + 19924);
                      v54 = v311;
                      v58 = &unk_100178000;
                    }
                  }

                  else
                  {
                    v173 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v174 = *(v73 + 32);
                      v175 = DNSTypeName(*(v73 + 12));
                      v176 = *(v73 + 40);
                      v319 = v175;
                      if (v176)
                      {
                        v177 = *(v73 + 40);
                        while (1)
                        {
                          if (!v177 || (v178 = *v177, v178 > 0x3F))
                          {
LABEL_273:
                            v179 = 257;
                            goto LABEL_286;
                          }

                          if (!*v177)
                          {
                            break;
                          }

                          v177 += v178 + 1;
                          if (&v177[-v176] >= 256)
                          {
                            goto LABEL_273;
                          }
                        }

                        v179 = (v177 - v176 + 1);
                      }

                      else
                      {
                        v179 = 0;
                      }

                      goto LABEL_286;
                    }
                  }

                  v183 = mDNSLogCategory_mDNS;
                  v59 = v314;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v184 = *(v73 + 40);
                      if (v184)
                      {
                        v189 = *(v73 + 40);
                        while (1)
                        {
                          if (!v189 || (v190 = *v189, v190 > 0x3F))
                          {
LABEL_304:
                            v187 = v314;
                            v188 = 257;
                            goto LABEL_309;
                          }

                          if (!*v189)
                          {
                            break;
                          }

                          v189 += v190 + 1;
                          if (&v189[-v184] >= 256)
                          {
                            goto LABEL_304;
                          }
                        }

                        v187 = v314;
                        v188 = (v189 - v184 + 1);
                      }

                      else
                      {
                        v187 = v314;
                        v188 = 0;
                      }

LABEL_309:
                      v191 = DNSTypeName(*(v73 + 12));
                      v192 = *(v73 + 32);
                      *__dst = 141559043;
                      *&__dst[4] = 1752392040;
                      *&__dst[12] = 1040;
                      *&__dst[14] = v188;
                      *&__dst[18] = 2101;
                      *&__dst[20] = v184;
                      *&__dst[28] = 2082;
                      *&__dst[30] = v191;
                      *&__dst[38] = 2048;
                      *&__dst[40] = v192;
                      _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "ProcessQuery - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface id: %p due to TSR conflict", __dst, 0x30u);
                      v15 = (a1 + 19924);
                      v59 = v187;
                      v54 = v311;
                    }
                  }

                  else
                  {
                    v183 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v184 = *(v73 + 40);
                      if (v184)
                      {
                        v185 = *(v73 + 40);
                        while (1)
                        {
                          if (!v185 || (v186 = *v185, v186 > 0x3F))
                          {
LABEL_296:
                            v187 = v314;
                            v188 = 257;
                            goto LABEL_309;
                          }

                          if (!*v185)
                          {
                            break;
                          }

                          v185 += v186 + 1;
                          if (&v185[-v184] >= 256)
                          {
                            goto LABEL_296;
                          }
                        }

                        v187 = v314;
                        v188 = (v185 - v184 + 1);
                      }

                      else
                      {
                        v187 = v314;
                        v188 = 0;
                      }

                      goto LABEL_309;
                    }
                  }

                  mDNS_Deregister_internal(a1, v73, 4);
                  goto LABEL_78;
                }
              }
            }
          }

LABEL_182:
          if (ResourceRecordIsValidAnswer(v73))
          {
            v59 = v314;
            ++v330;
            if (v336 & v322)
            {
              if (*(v73 + 264))
              {
                goto LABEL_78;
              }

              v133 = v320;
              goto LABEL_198;
            }

            if ((*(a1 + 64) - *(v73 + 288)) > 0x3E7 || (v141 = *(v73 + 296), v141 != a8) && v141 != -1)
            {
              v133 = -1;
LABEL_198:
              *(v73 + 264) = v133;
            }
          }

          else
          {
            v59 = v314;
          }
        }

LABEL_78:
        v73 = *(a1 + 12640);
      }

      while (v73);
      if (v330 || !v332)
      {
        if (!v330)
        {
          goto LABEL_315;
        }
      }

      else
      {
        *(v332 + 200) = a8;
        *(a1 + 100) = *(a1 + 64);
      }

LABEL_316:
      if ((*(v60 + 2) & 2) != 0)
      {
        ++v15[1];
      }

      v57 = v334;
      if ((v336 & 1) == 0 && (*(v60 + 2) & 2) == 0)
      {
        if (!IsD2D)
        {
          v195 = CacheGroupForName(a1, v372, v376);
          if (v195)
          {
            for (i = v195[2]; i; i = *i)
            {
              if (SameNameRecordAnswersQuestion((i + 8), 0, buf, v196, v26, v27, v28, v29) && *(i + 20) <= 0x400u && !*(i + 72) && v57 != (i + 72))
              {
                *v57 = i;
                v57 = (i + 72);
              }
            }
          }
        }

        for (j = *(a1 + 192); j; j = *(j + 8))
        {
          if (!QuestionSendsMDNSQueriesViaUnicast(j) && *(j + 212) >= 1 && !*(j + 40) && *(a1 + 64) - *(j + 256) >= 251)
          {
            v194 = *(j + 136);
            if (!v194 || v194 == a8)
            {
              if (!*(j + 48) && v304 != (j + 48) && *(j + 342) == v374 && *(j + 344) == v375 && *(j + 200) == v372 && SameDomainNameBytes((j + 376), v376))
              {
                *v304 = j;
                v304 = (j + 48);
              }

              v58 = &unk_100178000;
            }
          }
        }
      }

      if (++v54 >= *(v60 + 4))
      {
        v199 = v342;
        a3 = v338;
        goto LABEL_352;
      }
    }
  }

  v321 = 0;
  v199 = &v343;
  v59 = (v335 + 12);
  v60 = v335;
LABEL_352:
  for (k = *(a1 + 12616); k; k = *k)
  {
    if (k[33])
    {
      if (!k[32] && v199 != k + 32)
      {
        *v199 = k;
        k[34] = 0;
        v199 = k + 32;
      }
    }
  }

  v342 = v199;
  AddAdditionalsToResponseList(a1, v343, &v342, a8, v26, v27, v28, v29);
  if (*(v60 + 6))
  {
    v206 = 0;
    do
    {
      v207 = GetLargeResourceRecord(a1, v60, v59, a3, a8, 192, a1 + 37912);
      if (!v207)
      {
        v337 = 0;
        goto LABEL_488;
      }

      v208 = v207;
      if (*v14 != 240)
      {
        v209 = v343;
        if (v343)
        {
          do
          {
            if ((*(v209 + 264) || *(v209 + 272)) && *(a1 + 37936) == *(v209 + 24) && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), *(v209 + 64)) && *(a1 + 37924) == *(v209 + 12) && *(a1 + 37926) == *(v209 + 14) && *(a1 + 37932) == *(v209 + 20) && *(a1 + 37940) == *(v209 + 28) && SameRDataBody(a1 + 37920, (*(v209 + 48) + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), *(v209 + 40)) && *(a1 + 37928) >= *(v209 + 16) >> 1)
            {
              ++*v326;
              *(v209 + 264) = 0;
              *(v209 + 272) = 0;
            }

            v209 = *(v209 + 256);
          }

          while (v209);
        }

        for (m = *(a1 + 12616); m; m = *m)
        {
          if (m[26] == a8 && *(a1 + 37936) == *(m + 6) && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), m[8]) && *(a1 + 37924) == *(m + 6) && *(a1 + 37926) == *(m + 7) && *(a1 + 37932) == *(m + 10) && *(a1 + 37940) == *(m + 7) && SameRDataBody(a1 + 37920, (m[6] + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), m[5]) && *(a1 + 37928) >= *(m + 4) >> 1)
          {
            if (*v313 == 6)
            {
              if (*(m + 59) == *(v313 + 1) && *(m + 60) == *(v313 + 2) && *(m + 61) == *(v313 + 3) && *(m + 62) == *(v313 + 4))
              {
                *(m + 236) = 0;
                *(m + 244) = 0;
              }
            }

            else if (*v313 == 4 && *(m + 58) == *(v313 + 1))
            {
              *(m + 58) = 0;
            }

            if (!*(m + 58) && !*&vorr_s8(*(m + 236), *&vextq_s8(*(m + 236), *(m + 236), 8uLL)))
            {
              ++*v326;
              m[26] = 0;
              *(m + 195) = 0;
            }
          }
        }

        IdenticalRecordInCache = FindIdenticalRecordInCache(a1, a1 + 37920);
        if (!IsD2D)
        {
          v213 = v341;
          if (v341)
          {
            v214 = &v341;
            do
            {
              if (*&v213[4] == a8 && *(a1 + 37936) == v213[3].i32[0] && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), *&v213[8]) && *(a1 + 37924) == v213[1].u16[2] && *(a1 + 37926) == v213[1].u16[3] && *(a1 + 37932) == v213[2].u16[2] && *(a1 + 37940) == v213[3].i32[1] && SameRDataBody(a1 + 37920, (*&v213[6] + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), *&v213[5]))
              {
                *v214 = v213[9];
                v213[9] = 0;
              }

              else
              {
                v214 = &v213[9];
              }

              v213 = *v214;
            }

            while (*v214);
          }
        }

        a3 = v338;
        if (!IdenticalRecordInCache)
        {
          v215 = v340;
          if (v340)
          {
            v216 = &v340;
            do
            {
              v217 = RecordAnswersQuestion(a1 + 37920, 0, v215, v202, v203, v211, v204, v205);
              v218 = (v215 + 48);
              if (v217)
              {
                *v216 = *v218;
                *v218 = 0;
              }

              else
              {
                v216 = (v215 + 48);
              }

              v215 = *v216;
            }

            while (*v216);
          }
        }
      }

      *v14 = 0;
      *(a1 + 38022) = 0;
      v219 = *(a1 + 37976);
      if (v219)
      {
        ref_count_obj_release(v219);
        *(a1 + 37976) = 0;
      }

      ++v206;
      v59 = v208;
    }

    while (v206 < *(v60 + 6));
  }

  v220 = v343;
  if (!v343)
  {
    v337 = 0;
    v240 = 1;
    v222 = v321;
    if (!v321)
    {
      goto LABEL_487;
    }

LABEL_486:
    if (*(a1 + 76))
    {
      goto LABEL_487;
    }

    v278 = *(a1 + 84);
    v279 = *(a1 + 64);
    if (v278)
    {
      v280 = v222 + 49;
      if (v278 - v279 >= ((v222 + 49) / 0x32u))
      {
        goto LABEL_487;
      }
    }

    else
    {
      v280 = v222 + 49;
    }

    do
    {
      v281 = arc4random() & 0x1FFF;
    }

    while (v281 > 0x1388);
    v282 = (v281 + v280) / 0x32 + v279;
    if (v282 <= 1)
    {
      v282 = 1;
    }

    *(a1 + 84) = v282;
    if (!v240)
    {
      goto LABEL_574;
    }

LABEL_488:
    v198 = 0;
    goto LABEL_489;
  }

  v221 = v343;
  v202 = a1 + 19924;
  v203 = IsDNSMulticast;
  v222 = v321;
  v204 = v313;
  do
  {
    v223 = v221[34];
    if (v223 && !*(v223 + 264) && !*(v223 + 272))
    {
      v221[33] = 0;
      v221[34] = 0;
    }

    v221 = v221[32];
  }

  while (v221);
  v224 = 0;
  while (2)
  {
    v225 = *(v220 + 264);
    if (v225)
    {
      v226 = *(a1 + 64);
      v228 = IsDNSMulticast && v226 - *(v220 + 288) >= (1000 * *(v220 + 16)) >> 2;
      if (v225 == -2 && v228 != 0)
      {
        ++*(a1 + 19956);
        v225 = -1;
        *(v220 + 264) = -1;
      }

      if (v225 == -2)
      {
        ++*(a1 + 19948);
        *(a1 + 100) = v226;
        v231 = (v220 + 208);
        v232 = *(v220 + 208);
        if (!v232 || v232 == a8)
        {
          *(v220 + 208) = a8;
          *(v220 + 195) = 1;
          goto LABEL_460;
        }

        goto LABEL_471;
      }

      if (v225 == -1)
      {
        ++*(a1 + 19952);
LABEL_457:
        *(a1 + 100) = v226;
        v231 = (v220 + 208);
        v233 = *(v220 + 208);
        if (v233 && v233 != a8)
        {
          goto LABEL_471;
        }

        *v231 = a8;
LABEL_460:
        if (*v313 != 6)
        {
          if (*v313 == 4)
          {
            v234 = *(v220 + 232);
            v235 = *(v313 + 1);
            if (v234)
            {
              if (v234 != v235)
              {
                *(v220 + 232) = -1;
              }
            }

            else
            {
              *(v220 + 232) = v235;
            }
          }

          goto LABEL_472;
        }

        v236 = *(v220 + 236);
        v237 = *(v220 + 240);
        v231 = (v220 + 236);
        v239 = *(v220 + 244);
        v238 = *(v220 + 248);
        if (!(v237 | v236 | v239 | v238))
        {
          *v231 = *(v313 + 4);
          goto LABEL_472;
        }

        if (v236 != *(v313 + 1) || v237 != *(v313 + 2) || v239 != *(v313 + 3) || v238 != *(v313 + 4))
        {
          *(v220 + 244) = -1;
LABEL_471:
          *v231 = -1;
        }

LABEL_472:
        v224 = 1;
      }

      else
      {
        LODWORD(v221) = 1;
        if (v228)
        {
          goto LABEL_457;
        }
      }

      if ((*(v60 + 2) & 2) != 0)
      {
        v222 = 20000;
      }

      else if (*(v220 + 8) == 8)
      {
        v222 = 1000;
      }

      else
      {
        v222 = v222;
      }
    }

    else
    {
      v230 = *(v220 + 272);
      if (v230 && *(v230 + 264) == -1)
      {
        *(v220 + 216) = a8;
      }
    }

    v220 = *(v220 + 256);
    if (v220)
    {
      continue;
    }

    break;
  }

  v337 = v224;
  v240 = v221 == 0;
  if (v222)
  {
    goto LABEL_486;
  }

LABEL_487:
  if (v240)
  {
    goto LABEL_488;
  }

LABEL_574:
  v283 = v60;
  v284 = v343;
  v285 = a1 + 28972;
  if (a8)
  {
    v286 = 4500;
  }

  else
  {
    v286 = 3600;
  }

  *v316 = *v283;
  *(a1 + 28962) = 132;
  *(a1 + 28964) = 0;
  v15 = (a1 + 19924);
  if (a5 != 59668)
  {
    if (v283[2])
    {
      v287 = 0;
      v198 = (a1 + 28972);
      v288 = v335;
      do
      {
        bzero(buf, 0x2B8uLL);
        v289 = getQuestion(v288, v328, v338, a8, buf);
        v15 = (a1 + 19924);
        v328 = v289;
        if (!v289)
        {
          goto LABEL_351;
        }

        if (v284)
        {
          v290 = v284;
          while (*(v290 + 264) != v289)
          {
            v290 = *(v290 + 256);
            if (!v290)
            {
              goto LABEL_587;
            }
          }

          v198 = putQuestion(v316, v198, a1 + 37912, v376, v374, v375, v204, v205);
          if (!v198)
          {
            goto LABEL_351;
          }
        }

LABEL_587:
        ++v287;
        v288 = v335;
      }

      while (v287 < *(v335 + 4));
      v15 = (a1 + 19924);
      if (*(a1 + 28964))
      {
        v286 = 10;
        goto LABEL_591;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GenerateUnicastResponse: ERROR! Why no questions?", v202, v203, v222, v204, v205, v302);
LABEL_351:
    v198 = 0;
    goto LABEL_490;
  }

  v198 = (a1 + 28972);
LABEL_591:
  if (!v284)
  {
LABEL_489:
    v15 = (a1 + 19924);
    goto LABEL_490;
  }

  v291 = v284;
  v292 = (a1 + 28960);
  do
  {
    v293 = v198;
    if (!*(v291 + 264))
    {
      goto LABEL_602;
    }

    v294 = *(v291 + 16);
    if (v286 >= v294)
    {
      v295 = v294;
    }

    else
    {
      v295 = v286;
    }

    if (v292[3] || v292[4])
    {
      v296 = 1440;
    }

    else
    {
      v296 = 1440;
      if (!v292[5])
      {
        v296 = 8940;
      }
    }

    v297 = PutResourceRecordTTLWithLimit(v292, v198, v292 + 3, v291 + 8, v295, v285 + v296, v204, v205);
    v292 = (a1 + 28960);
    v198 = v297;
    if (!v297)
    {
      *(a1 + 28962) |= 2u;
LABEL_602:
      v198 = v293;
    }

    v291 = *(v291 + 256);
  }

  while (v291);
  v15 = (a1 + 19924);
  do
  {
    if (*(v284 + 272) && !*(v284 + 264))
    {
      v298 = *(v284 + 16);
      v299 = v286 >= v298 ? v298 : v286;
      if (v292[3] || v292[4])
      {
        v300 = 1440;
      }

      else
      {
        v300 = v292[5] ? 1440 : 8940;
      }

      v301 = PutResourceRecordTTLWithLimit(v292, v198, v292 + 5, v284 + 8, v299, v285 + v300, v204, v205);
      v292 = (a1 + 28960);
      if (v301)
      {
        v198 = v301;
      }
    }

    v284 = *(v284 + 256);
  }

  while (v284);
LABEL_490:
  *v14 = 0;
  *(a1 + 38022) = 0;
  v241 = *(a1 + 37976);
  if (v241)
  {
    ref_count_obj_release(v241);
    *(a1 + 37976) = 0;
  }

  v242 = v343;
  if (v343)
  {
    do
    {
      v243 = v242[32];
      v242[33] = 0;
      v242[34] = 0;
      v242[32] = 0;
      v242 = v243;
    }

    while (v243);
    v343 = 0;
  }

  v244 = v341;
  if (v341)
  {
    v245 = IsD2D == 0;
  }

  else
  {
    v245 = 0;
  }

  if (v245)
  {
    do
    {
      v341 = v244[9];
      v244[9] = 0;
      if ((*(v335 + 2) & 2) == 0)
      {
        v255 = *(a1 + 64);
        if (!v244[13].i8[4] || v255 - v244[13].i32[0] >= 750)
        {
          ++v244[13].i8[4];
          v244[13].i32[0] = v255;
          SetNextCacheCheckTimeForRecord(a1, v244);
        }
      }

      v256 = v244[13].u8[4];
      if (v256 < 4)
      {
        goto LABEL_540;
      }

      if (v244[13].i8[5])
      {
        if (dword_10016D258 - *(a1 + 64) + 939524096 >= 7667 && mDNS_LoggingEnabled != 0)
        {
LABEL_537:
          v258 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb(&v244[1], (*&v244[6] + 4), (a1 + 47032));
          v15 = (a1 + 19924);
          LogMsgWithLevel(v258, OS_LOG_TYPE_DEFAULT, "ProcessQuery: UnansweredQueries %lu interface %lu TTL %lu mDNS_Reconfirm() for %s", v259, v260, v261, v262, v263, v256);
        }
      }

      else if (v244[10].i32[0] + 1000 * v244[2].i32[0] - *(a1 + 64) >= 7667 && (mDNS_LoggingEnabled & 1) != 0)
      {
        goto LABEL_537;
      }

      ++v15[2];
      mDNS_Reconfirm_internal(a1, v244, 0x1388u);
      v264 = v244[12];
      if (!*&v264 || v244[16].i8[2])
      {
        goto LABEL_540;
      }

      v266 = &v244[16] + 4;
      v265 = v244[16].i32[1];
      if (v265 == 6)
      {
        if (!*&vorr_s8(v244[17], *&vextq_s8(*v244[17].i8, *v244[17].i8, 8uLL)))
        {
          goto LABEL_540;
        }
      }

      else if (v265 != 4 || !v244[17].i32[0])
      {
        goto LABEL_540;
      }

      v267 = *(a1 + 64);
      v244[11].i32[0] = v267;
      *(a1 + 92) = v267;
      v244[16].i8[2] = 2;
      v268 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
        {
          v273 = *&v264 + 376;
          v274 = (*&v264 + 376);
          while (1)
          {
            if (!v274 || (v275 = *v274, v275 > 0x3F))
            {
LABEL_562:
              v272 = 257;
              goto LABEL_565;
            }

            if (!*v274)
            {
              break;
            }

            v274 += v275 + 1;
            if (&v274[-v273] >= 256)
            {
              goto LABEL_562;
            }
          }

          v272 = (v274 - v273 + 1);
          goto LABEL_565;
        }
      }

      else
      {
        v268 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
        {
          v269 = *&v264 + 376;
          v270 = (*&v264 + 376);
          while (1)
          {
            if (!v270 || (v271 = *v270, v271 > 0x3F))
            {
LABEL_555:
              v272 = 257;
              goto LABEL_565;
            }

            if (!*v270)
            {
              break;
            }

            v270 += v271 + 1;
            if (&v270[-v269] >= 256)
            {
              goto LABEL_555;
            }
          }

          v272 = (v270 - v269 + 1);
LABEL_565:
          v276 = *(*&v264 + 342);
          v277 = *(*&v264 + 200);
          *buf = 141559811;
          *v358 = 1752392040;
          *&v358[8] = 1045;
          *&v358[10] = 20;
          v359 = 2101;
          *v360 = v266;
          *&v360[8] = 2160;
          v361 = 1752392040;
          v362 = 1040;
          v363 = v272;
          v364 = 2101;
          v365 = *&v264 + 376;
          v366 = 1024;
          v367 = v276;
          v368 = 1024;
          v369 = v277;
          _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_INFO, "ProcessQuery: Preparing unicast assist query (max unanswered) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x42u);
        }
      }

LABEL_540:
      v244 = v341;
    }

    while (v341);
  }

  for (n = v340; v340; n = v340)
  {
    v247 = *(n + 56);
    v340 = *(n + 48);
    *(n + 48) = 0;
    v248 = *(a1 + 64);
    v249 = *v313;
    if (v247)
    {
      v250 = 0;
      while (1)
      {
        if (*&v247[v250] == a8)
        {
          v251 = &v247[v250];
          if (*&v247[v250 + 12] == v249)
          {
            break;
          }
        }

        v250 += 16;
        if (v250 == 128)
        {
          goto LABEL_508;
        }
      }
    }

    else
    {
      v247 = malloc_type_calloc(1uLL, 0x80uLL, 0x2A1147ACuLL);
      if (!v247)
      {
        __break(1u);
      }

      *(n + 56) = v247;
LABEL_508:
      v252 = 8;
      v251 = v247;
      while (*v247)
      {
        if (*(v247 + 2) - *(v251 + 2) < 0)
        {
          v251 = v247;
        }

        v247 += 16;
        if (!--v252)
        {
          goto LABEL_515;
        }
      }

      v251 = v247;
    }

LABEL_515:
    *v251 = a8;
    *(v251 + 2) = v248;
    *(v251 + 3) = v249;
  }

  v253 = v339;
  if (v339)
  {
    do
    {
      v254 = *v253;
      free(v253);
      v253 = v254;
    }

    while (v254);
  }

  if (v337)
  {
    DumpPacket(0, 0, "N/A", v313, a5, v305, v312, v335, v338, a8);
  }

  if (v198)
  {
    mDNSSendDNSMessage(a1, v316, v198, a8, 0, 0, v313, a5, 0, 0);
  }
}