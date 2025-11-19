@interface Querier
@end

@implementation Querier

void __Querier_GetDNSServiceManager_block_invoke(uint64_t a1, int a2)
{
  v4 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v4, v5, v6, v7, v8, v9, v10, v11);
  switch(a2)
  {
    case 3:
      v20 = *(a1 + 32);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      block = _NSConcreteStackBlock;
      v22 = 0x40000000;
      v23 = __mdns_dns_service_manager_apply_pending_updates_block_invoke;
      v24 = &__block_descriptor_tmp_41;
      v25 = v20;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      mDNS_Lock_(mDNSStorage, "Querier_GetDNSServiceManager_block_invoke", 188);
      Querier_ProcessDNSServiceChanges(0);
      _Querier_LogDNSServices(*(a1 + 32));
      mDNS_Unlock_(mDNSStorage, "Querier_GetDNSServiceManager_block_invoke", 191);
      break;
    case 2:
      os_release(*(a1 + 32));
      break;
    case 1:
      v19 = *(a1 + 32);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      block = _NSConcreteStackBlock;
      v22 = 0x40000000;
      v23 = __mdns_dns_service_manager_invalidate_block_invoke;
      v24 = &__block_descriptor_tmp_19_898;
      v25 = v19;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      if (Querier_GetDNSServiceManager_sDNSServiceManager && Querier_GetDNSServiceManager_sDNSServiceManager == *(a1 + 32))
      {
        os_release(Querier_GetDNSServiceManager_sDNSServiceManager);
        Querier_GetDNSServiceManager_sDNSServiceManager = 0;
      }

      break;
  }

  KQueueUnlock("DNS Service Manager event handler", v12, v13, v14, v15, v16, v17, v18);
}

uint64_t ___Querier_LogDNSServices_block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v8 = *(a1 + 40);
      v10[0] = 67109634;
      v10[1] = v7;
      v11 = 1024;
      v12 = v8;
      v13 = 2112;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DNS service (%u/%u) -- %@", v10, 0x18u);
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  return 1;
}

void ___Querier_GetMyUUID_block_invoke(id a1)
{
  if (_Querier_GetMyPID_sOnce != -1)
  {
    dispatch_once(&_Querier_GetMyPID_sOnce, &__block_literal_global_53);
  }

  v2 = _Querier_GetMyPID_sPID;

  mdns_system_pid_to_uuid(v2, _Querier_GetMyUUID_sUUID);
}

void ___Querier_EnsureNEDNSProxyStateWatchHasStarted_block_invoke(id a1)
{
  if (_Querier_InternalQueue_sOnce != -1)
  {
    dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
  }

  v1 = _Querier_InternalQueue_sQueue;
  v2 = &__block_literal_global_40;
  v3 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v4 = _mdns_ne_dns_proxy_state_watch_queue();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __mdns_ne_dns_proxy_state_watch_start_block_invoke;
    v5[3] = &unk_10014FE88;
    v5[4] = v1;
    v5[5] = &__block_literal_global_40;
    dispatch_async(v4, v5);
  }

  objc_autoreleasePoolPop(v3);
}

void ___Querier_StartNEDNSProxyStateWatch_block_invoke(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v3, v4, v5, v6, v7, v8, v9, v10);
  if (((gNEDNSProxyIsRunning == 0) ^ v2))
  {
    goto LABEL_23;
  }

  gNEDNSProxyIsRunning = v2;
  v18 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v19 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v26 = 67109120;
    v27 = v2;
    goto LABEL_11;
  }

  v18 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109120;
    v27 = v2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NEDNSProxy state update -- running: %{mdns:yesno}d", &v26, 8u);
  }

LABEL_12:
  mDNS_Lock_(mDNSStorage, "_Querier_StartNEDNSProxyStateWatch_block_invoke", 104);
  Querier_ProcessDNSServiceChanges(0);
  for (i = 0; i != 499; ++i)
  {
    for (j = mDNSStorage[i + 34]; j; j = *j)
    {
      for (k = j[2]; k; k = *k)
      {
        v24 = k[7];
        if (v24)
        {
          v25 = *(v24 + 24);
          if (v25)
          {
            if (*(v25 + 281) == 1)
            {
              mDNS_PurgeCacheResourceRecord(mDNSStorage, k);
            }
          }
        }
      }
    }
  }

  mDNS_Unlock_(mDNSStorage, "_Querier_StartNEDNSProxyStateWatch_block_invoke", 131);
LABEL_23:
  KQueueUnlock("NetworkExtension DNS proxy state update", v11, v12, v13, v14, v15, v16, v17);
}

BOOL __Querier_HandleUnicastQuestion_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == &_mdns_querier_kind && (v2 = *(*(a2 + 96) + 70), v3 = *(a1 + 32), v3 == ((v2 >> 2) & 1)))
  {
    return v3 == ((v2 >> 1) & 1);
  }

  else
  {
    return 0;
  }
}

BOOL ___Querier_PopMatchedOrphanedClient_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (*(a2 + 32) == *(v3 + 80))
  {
    if ((*(*(a2 + 16) + 72))(a2, v3 + 376, *(v3 + 342), *(v3 + 344)))
    {
      v5 = a1[4];
      if (!v5 || (*(v5 + 16))(v5, a2))
      {
        *(*(a1[5] + 8) + 24) = a2;
      }
    }
  }

  return *(*(a1[5] + 8) + 24) == 0;
}

void __Querier_HandleUnicastQuestion_block_invoke_15(uint64_t a1)
{
  v2 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = *(a1 + 32);
  v11 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (*(v10 + 255) == 1)
  {
    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    v14 = *(v10 + 232);
    v61 = 67109379;
    v62 = v14;
    v63 = 2117;
    v64 = v10;
    v15 = "[Q%u] Handling concluded querier: %{sensitive}@";
  }

  else
  {
    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    v16 = *(v10 + 232);
    v61 = 67109378;
    v62 = v16;
    v63 = 2112;
    v64 = v10;
    v15 = "[Q%u] Handling concluded querier: %@";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, &v61, 0x12u);
LABEL_19:
  v17 = *(*(v10 + 32) + 276);
  v18 = *(*(*(v10 + 72) + 16) + 144);
  if (v18 >= 5)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x203010100uLL >> (8 * v18);
  }

  if (atomic_load((v10 + 208)))
  {
    if (*(*(v10 + 96) + 40) && v19 != 0)
    {
      v22 = 3;
      if (v19 == 1)
      {
        v22 = 1;
      }

      v23 = 2 * (v19 != 1);
      if ((v17 & 8) != 0)
      {
        v23 = v22;
      }

      v24 = &s_dns_analytics + 104 * v23;
      if (v24)
      {
        *(v24 + 2) += *(*(v10 + 96) + 40);
      }
    }
  }

  v25 = *(v10 + 248);
  if (v25 != 1)
  {
    v34 = *(v10 + 32);
    goto LABEL_66;
  }

  if ((*(v10 + 253) & 1) == 0)
  {
    v26 = *(v10 + 136);
    if (v26)
    {
      v27 = *(v26 + 40);
      if (v27 && v19 != 0)
      {
        v12 = v19 == 1;
        v29 = v19 != 1;
        v30 = 3;
        if (v12)
        {
          v30 = 1;
        }

        v31 = 2 * v29;
        if ((v17 & 8) != 0)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        v33 = &s_dns_analytics + 104 * v32;
        if (v33)
        {
          *(v33 + 3) += v27;
        }
      }
    }
  }

  v34 = *(v10 + 32);
  if ((*(v34 + 276) & 1) == 0)
  {
    v35 = *(v10 + 136);
    if (!v35)
    {
      v37 = 0;
LABEL_62:
      __memcpy_chk();
      if ((*(v34 + 276) & 0x2000) != 0)
      {
        v42 = *(v34 + 256);
      }

      else
      {
        v42 = 0;
      }

      mDNSCoreReceiveForQuerier(&unk_100172040 + v37, v10, v34, v42);
      goto LABEL_66;
    }

    v36 = *(v35 + 40);
    v37 = v36;
    if (v36 >= 0x22F9)
    {
      v38 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_58:
          v39 = *(v10 + 232);
          v61 = 67109632;
          v62 = v39;
          v63 = 2048;
          v64 = v37;
          v65 = 2048;
          v37 = 8952;
          v66 = 8952;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[Q%u] Large %lu-byte response will be truncated to fit mDNSCore's %lu-byte message buffer", &v61, 0x1Cu);
          goto LABEL_60;
        }
      }

      else
      {
        v38 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_58;
        }
      }

      v37 = &loc_1000022F8;
    }

LABEL_60:
    v40 = *(v10 + 136);
    if (v40)
    {
      v41 = *(v40 + 32);
    }

    goto LABEL_62;
  }

LABEL_66:
  Mutable = _Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet;
  if (_Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet || (Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &gMDNSObjectSetCallbacks), (_Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet = Mutable) != 0))
  {
    CFSetRemoveValue(Mutable, v10);
  }

  LOBYTE(v61) = 0;
  DNSQuestion = Querier_GetDNSQuestion(v10, &v61);
  if (DNSQuestion)
  {
    v52 = DNSQuestion;
    if (*(*(*(v10 + 72) + 16) + 144))
    {
      v53 = atomic_load((v10 + 208));
      *(DNSQuestion + 260) += v53;
    }

    v55 = (DNSQuestion + 96);
    v54 = *(DNSQuestion + 96);
    if (v54)
    {
      os_release(v54);
      *v55 = 0;
    }

    v56 = *(v52 + 649);
    *(v52 + 649) = 0;
    if (!(*(v52 + 354) | v61))
    {
      if (v25 > 4)
      {
        if (v25 == 6)
        {
          if ((*(v34 + 276) & 0x800) == 0)
          {
            DNSServiceManager = Querier_GetDNSServiceManager();
            if (DNSServiceManager)
            {
              mdns_dns_service_manager_apply_pending_connection_problem_updates(DNSServiceManager);
            }
          }

          mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 1003);
          mdns_client_replace((v52 + 96), v10);
          while (1)
          {
            mDNS_StopQuery_internal(mDNSStorage, v52);
            *(v52 + 650) = 1;
            mDNS_StartQuery_internal(mDNSStorage, v52);
            v59 = Querier_GetDNSQuestion(v10, &v61);
            v52 = v59;
            if (v59)
            {
              if (v61)
              {
                break;
              }
            }

            if (!v59)
            {
              goto LABEL_94;
            }
          }

          v60 = *(v59 + 96);
          if (v60)
          {
            os_release(v60);
            *(v52 + 96) = 0;
          }

LABEL_94:
          v57 = 1024;
        }

        else
        {
          if (v25 != 5)
          {
            goto LABEL_96;
          }

          mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 982);
          *(v52 + 208) = dword_10016D258;
          *(v52 + 212) = 5000;
          SetNextQueryTime(mDNSStorage, v52);
          v57 = 986;
        }
      }

      else
      {
        if (v25 == 1)
        {
          if (!v56)
          {
            goto LABEL_96;
          }
        }

        else if (v25 != 2)
        {
          goto LABEL_96;
        }

        mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 1035);
        Querier_HandleUnicastQuestion(v52);
        v57 = 1037;
      }

      mDNS_Unlock_(mDNSStorage, "_Querier_HandleQuerierResponse", v57);
    }
  }

LABEL_96:
  if (*(a1 + 42) == 1)
  {
    mDNSDisableSensitiveLoggingForQuestion(*(a1 + 40));
  }

  KQueueUnlock("querier result handler", v45, v46, v47, v48, v49, v50, v51);
  os_release(*(a1 + 32));
}

void __Querier_HandleUnicastQuestion_block_invoke_2(uint64_t a1, int a2)
{
  v4 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v4, v5, v6, v7, v8, v9, v10, v11);
  switch(a2)
  {
    case 1:
      CFSetRemoveValue(*(a1 + 40), *(a1 + 32));
      _Querier_HandleSubscriberInvalidation(*(a1 + 32));
      v21 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
        {
          v23 = *(*(a1 + 32) + 128);
          v25 = 134217984;
          v26 = v23;
          goto LABEL_16;
        }
      }

      else
      {
        v21 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
        {
          v22 = *(*(a1 + 32) + 128);
          v25 = 134217984;
          v26 = v22;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[Sub%llu] Subscriber has been invalidated", &v25, 0xCu);
        }
      }

      os_release(*(a1 + 32));
      break;
    case 3:
      if (CFSetContainsValue(*(a1 + 40), *(a1 + 32)))
      {
        CFSetRemoveValue(*(a1 + 40), *(a1 + 32));
        mdns_client_invalidate(*(a1 + 32));
        v19 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          v24 = *(*(a1 + 32) + 128);
          v25 = 134217984;
          v26 = v24;
        }

        else
        {
          v19 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          v20 = *(*(a1 + 32) + 128);
          v25 = 134217984;
          v26 = v20;
        }

        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Orphaned subscriber removed due to timeout", &v25, 0xCu);
      }

      break;
    case 2:
      _Querier_ApplyUpdate(*(a1 + 32));
      break;
  }

  KQueueUnlock("Subscriber event handler", v12, v13, v14, v15, v16, v17, v18);
}

uint64_t ___Querier_ApplyUpdate_block_invoke(uint64_t *a1, _DWORD *a2)
{
  v4 = a2[10];
  if (v4 == -2)
  {
    v5 = *((*(*(a1[6] + 16) + 88))() + 24);
    v6 = (*(*(a1[6] + 16) + 96))();
    v7 = mDNSLogCategory_uDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1[6] + 128);
        v28 = v5;
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_42:
            v11 = 257;
            goto LABEL_60;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (v28 - v5 >= 256)
          {
            goto LABEL_42;
          }
        }

        v11 = (v28 - v5 + 1);
        goto LABEL_60;
      }
    }

    else
    {
      v7 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1[6] + 128);
        v9 = v5;
        while (1)
        {
          if (!v9 || (v10 = *v9, v10 > 0x3F))
          {
LABEL_12:
            v11 = 257;
            goto LABEL_60;
          }

          if (!*v9)
          {
            break;
          }

          v9 += v10 + 1;
          if (v9 - v5 >= 256)
          {
            goto LABEL_12;
          }
        }

        v11 = (v9 - v5 + 1);
LABEL_60:
        *v41 = 134219011;
        *&v41[4] = v8;
        *&v41[12] = 2160;
        *&v41[14] = 1752392040;
        *&v41[22] = 1040;
        *&v41[24] = v11;
        *&v41[28] = 2101;
        *&v41[30] = v5;
        v42 = 1024;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Collectively removing record(s) -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", v41, 0x2Cu);
      }
    }

    v38 = a1[4];
    v39 = a1[5];
    v37 = 1;
    _Querier_RemoveRecord(a2, v38, v39, 1);
    return v37;
  }

  if (v4 != -1)
  {
    v12 = gMessageBuilder;
    if (!gMessageBuilder)
    {
      v13 = _os_object_alloc();
      if (v13)
      {
        v12 = v13;
        v14 = &_mdns_message_builder_kind;
        *(v13 + 16) = &_mdns_message_builder_kind;
        do
        {
          v15 = v14[2];
          if (v15)
          {
            v15(v12);
          }

          v14 = *v14;
        }

        while (v14);
        v16 = _os_object_alloc();
        if (v16)
        {
          v17 = v16;
          v18 = &_mdns_domain_name_offset_map_kind;
          *(v16 + 16) = &_mdns_domain_name_offset_map_kind;
          do
          {
            v19 = v18[2];
            if (v19)
            {
              v19(v17);
            }

            v18 = *v18;
          }

          while (v18);
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_offset_map_create_key_callbacks, &kCFTypeDictionaryValueCallBacks);
          v17[3] = Mutable;
          if (Mutable)
          {
            *(v12 + 32) = v17;
            gMessageBuilder = v12;
            goto LABEL_26;
          }

          os_release(v17);
        }

        *(v12 + 32) = 0;
        os_release(v12);
      }

      v37 = 0;
      gMessageBuilder = 0;
      return v37;
    }

LABEL_26:
    _mdns_message_builder_forget_questions_and_records(v12);
    *(v12 + 64) = 0;
    *(v12 + 80) = 0;
    *(v12 + 72) = 0;
    v21 = gMessageBuilder;
    *(gMessageBuilder + 72) = 0;
    *(v21 + 74) |= 0x8400u;
    v22 = a1[4];
    if (v22 && (*(v22 + 276) & 0x4000) == 0)
    {
      v23 = (*(*(a1[6] + 16) + 88))();
      v24 = (*(*(a1[6] + 16) + 96))();
      v25 = (*(*(a1[6] + 16) + 104))();
      if (v23)
      {
        os_retain(v23);
      }

      v26 = *(v21 + 24);
      if (v26)
      {
        os_release(v26);
      }

      *(v21 + 24) = v23;
      *(v21 + 76) = v24;
      *(v21 + 78) = v25;
      *(v21 + 64) = 0;
      *(v21 + 80) = 0;
      v21 = gMessageBuilder;
    }

    v27 = *(v21 + 40);
    if (v27)
    {
      if (CFArrayGetCount(*(v21 + 40)) >= 0xFFFF)
      {
LABEL_55:
        v36 = mdns_message_builder_write_message(gMessageBuilder, &unk_100172040, 0x22F8uLL);
        if (v36 <= 0x22F8)
        {
          mDNSCoreReceiveForQuerier(mDNSStorage + &loc_100004E28 + v36, a1[6], a1[4], a1[5]);
        }

        return 1;
      }
    }

    else
    {
      v30 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      if (!v30)
      {
        goto LABEL_55;
      }

      v27 = v30;
      *(v21 + 40) = v30;
    }

    v31 = *(v21 + 64);
    if (v31)
    {
      memset(v41, 0, 32);
      _mdns_message_builder_write_record(v41, a2, 0, 0);
      v32 = __CFADD__(v31, *&v41[24]);
      v33 = v31 + *&v41[24];
      v34 = v32;
      CFArrayAppendValue(v27, a2);
      if ((v34 & 1) == 0 && v33)
      {
        v35 = 1;
LABEL_54:
        *(v21 + 64) = v33;
        *(v21 + 80) = v35;
        goto LABEL_55;
      }
    }

    else
    {
      CFArrayAppendValue(v27, a2);
    }

    v33 = mdns_message_builder_write_message(v21, 0, 0);
    v35 = 0;
    goto LABEL_54;
  }

  _Querier_RemoveRecord(a2, a1[4], a1[5], 0);
  return 1;
}

void __Querier_ProcessDNSServiceChangesAsync_block_invoke(uint64_t a1)
{
  v2 = pthread_mutex_lock((mDNSStorage + 616));
  *(mDNSStorage + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  mDNS_Lock_(&mDNSStorage, "Querier_ProcessDNSServiceChangesAsync_block_invoke", 1475);
  Querier_ProcessDNSServiceChanges(*(a1 + 32));
  mDNS_Unlock_(&mDNSStorage, "Querier_ProcessDNSServiceChangesAsync_block_invoke", 1477);

  KQueueUnlock("Querier_ProcessDNSServiceChangesAsync", v10, v11, v12, v13, v14, v15, v16);
}

@end