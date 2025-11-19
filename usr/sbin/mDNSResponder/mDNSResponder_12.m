void FoundNonLocalOnlyAutomaticBrowseDomain(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 3) + 5;
  if (v8 <= 3)
  {
    v9 = v8 == 1;
    v10 = *(a3 + 3) + 4 < 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = !v9 || a4 > 1;
  if (!v11 && *a3 != 240)
  {
    v15 = (*(a3 + 5) + 4);
    if (a4)
    {
      RegisterLocalOnlyDomainEnumPTR(a1, v15, 2);
      mDNS_Lock_(a1, "mDNS_AddDomainDiscoveredForDomainEnumeration", 16399);
      v16 = *(a1 + 14160);
      if (v16)
      {
        while (!SameDomainNameBytes(v16, "\x05local"))
        {
          v16 = *(v16 + 296);
          if (!v16)
          {
            goto LABEL_37;
          }
        }

        if (*(v16 + 272))
        {
          v18 = malloc_type_calloc(1uLL, 0x108uLL, 0x926E64E8uLL);
          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = v18;
          v20 = v15;
          do
          {
            if (!v20)
            {
              break;
            }

            v21 = *v20;
            if (v21 > 0x3F)
            {
              break;
            }

            if (!*v20)
            {
              v26 = v20 - v15 + 1;
              if (v26 <= 0x100u)
              {
                memcpy(v18, v15, v26);
                goto LABEL_36;
              }

              break;
            }

            v20 += v21 + 1;
          }

          while (v20 - v15 <= 255);
          *v18 = 0;
LABEL_36:
          *(v19 + 32) = **(v16 + 272);
          **(v16 + 272) = v19;
        }
      }

LABEL_37:
      v27 = "mDNS_AddDomainDiscoveredForDomainEnumeration";
      v28 = a1;
      v29 = 16434;
    }

    else
    {
      DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v15, 2, 0, a5, a6, a7, a8);
      mDNS_Lock_(a1, "mDNS_RemoveDomainDiscoveredForDomainEnumeration", 16442);
      v17 = *(a1 + 14160);
      if (v17)
      {
        while (!SameDomainNameBytes(v17, "\x05local"))
        {
          v17 = *(v17 + 296);
          if (!v17)
          {
            goto LABEL_39;
          }
        }

        v22 = *(v17 + 272);
        if (v22)
        {
          v23 = *v22;
          if (*v22)
          {
            while (1)
            {
              v24 = SameDomainNameBytes(v23, v15);
              v25 = *(v23 + 256);
              if (v24)
              {
                break;
              }

              v22 = (v23 + 256);
              v23 = *(v23 + 256);
              if (!v25)
              {
                goto LABEL_39;
              }
            }

            *v22 = v25;
            free(v23);
          }
        }
      }

LABEL_39:
      v27 = "mDNS_RemoveDomainDiscoveredForDomainEnumeration";
      v28 = a1;
      v29 = 16479;
    }

    mDNS_Unlock_(v28, v27, v29);
    v30 = (a1 + 12656);
    while (1)
    {
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      v31 = v30;
      if (v30[444] == *(a3 + 3))
      {
        goto LABEL_45;
      }
    }

    v31 = 0;
LABEL_45:
    if (v30)
    {
      v32 = v31 + 3606;
    }

    else
    {
      v32 = 0;
    }

    v33 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v34 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v35 = "removed";
        if (a4 == 1)
        {
          v35 = "added";
        }

        v36 = v15;
        while (1)
        {
          if (!v36 || (v37 = *v36, v37 > 0x3F))
          {
LABEL_61:
            v38 = 257;
            goto LABEL_73;
          }

          if (!*v36)
          {
            break;
          }

          v36 += v37 + 1;
          if (v36 - v15 >= 256)
          {
            goto LABEL_61;
          }
        }

        v38 = (v36 - v15 + 1);
        goto LABEL_73;
      }
    }

    else
    {
      v33 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v35 = "removed";
        if (a4 == 1)
        {
          v35 = "added";
        }

        v40 = v15;
        while (1)
        {
          if (!v40 || (v41 = *v40, v41 > 0x3F))
          {
LABEL_70:
            v38 = 257;
            goto LABEL_73;
          }

          if (!*v40)
          {
            break;
          }

          v40 += v41 + 1;
          if (v40 - v15 >= 256)
          {
            goto LABEL_70;
          }
        }

        v38 = (v40 - v15 + 1);
LABEL_73:
        v42 = 136447235;
        v43 = v35;
        v44 = 2082;
        v45 = v32;
        v46 = 2160;
        v47 = 1752392040;
        v48 = 1040;
        v49 = v38;
        v50 = 2101;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain discovered via network - change: %{public}s, interface name: %{public}s, browsing domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v42, 0x30u);
      }
    }
  }
}

uint64_t uds_socket_setup(int a1)
{
  v10 = 0x100000001;
  if (setsockopt(a1, 0xFFFF, 4227, &v10, 8u) < 0)
  {
    my_perror("WARNING: could not set sockopt - SO_NP_EXTENSIONS");
  }

  v2 = fcntl(a1, 3, 0);
  if (fcntl(a1, 4, v2 | 4u))
  {
    v3 = "ERROR: could not set listen socket to non-blocking mode";
LABEL_9:
    my_perror(v3);
    return 0;
  }

  if (listen(a1, 100))
  {
    v3 = "ERROR: could not listen on listen socket";
    goto LABEL_9;
  }

  if (udsSupportAddFDToEventLoop(a1, connect_callback, 0))
  {
    v3 = "ERROR: could not add listen socket to event loop";
    goto LABEL_9;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Listening for incoming Unix Domain Socket client requests", v4, v5, v6, v7, v8, a1);
  }

  dword_100171FD0 = a1;
  return 1;
}

void my_perror(int a1)
{
  v2 = mDNSLogCategory_Default;
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "%s: %d (%s)", v5, v6, v7, v8, v9, a1);
}

void AutomaticBrowseDomainChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 24);
  v7 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v8 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v9 = *(a3 + 40) + 4;
    v10 = v9;
    while (1)
    {
      if (!v10 || (v11 = *v10, v11 > 0x3F))
      {
LABEL_12:
        v12 = 257;
        goto LABEL_21;
      }

      if (!*v10)
      {
        break;
      }

      v10 += v11 + 1;
      if (&v10[-v9] >= 256)
      {
        goto LABEL_12;
      }
    }

    v12 = (v10 - v9 + 1);
LABEL_21:
    v24 = "removing";
    v27 = 141559299;
    v28 = 1752392040;
    v29 = 1040;
    if (a4 == 1)
    {
      v24 = "adding";
    }

    v30 = v12;
    v31 = 2101;
    v32 = v9;
    v25 = ", ignored.";
    v33 = 2082;
    if (v6)
    {
      v25 = ".";
    }

    goto LABEL_31;
  }

  v7 = mDNSLogCategory_mDNS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a3 + 40) + 4;
    v21 = v20;
    while (1)
    {
      if (!v21 || (v22 = *v21, v22 > 0x3F))
      {
LABEL_19:
        v23 = 257;
        goto LABEL_27;
      }

      if (!*v21)
      {
        break;
      }

      v21 += v22 + 1;
      if (&v21[-v20] >= 256)
      {
        goto LABEL_19;
      }
    }

    v23 = (v21 - v20 + 1);
LABEL_27:
    v24 = "removing";
    v27 = 141559299;
    v28 = 1752392040;
    v29 = 1040;
    if (a4 == 1)
    {
      v24 = "adding";
    }

    v30 = v23;
    v31 = 2101;
    v32 = v20;
    v25 = ", ignored.";
    v33 = 2082;
    if (v6)
    {
      v25 = ".";
    }

LABEL_31:
    v34 = v24;
    v35 = 2048;
    v36 = v6;
    v37 = 2082;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain changes - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, event: %{public}s, interface ID: %p%{public}s", &v27, 0x3Au);
  }

LABEL_32:
  if (v6)
  {
    v26 = (*(a3 + 40) + 4);
    if (a4)
    {
      AddAutoBrowseDomain(0, v26);
    }

    else
    {
      RmvAutoBrowseDomain(0, v26, v14, v15, v16, v17, v18, v19);
    }
  }
}

uint64_t set_peer_pid(uint64_t a1)
{
  *(a1 + 256) = 0;
  *(a1 + 188) = -1;
  v3 = 4;
  v4 = -1;
  result = *(a1 + 184);
  if ((result & 0x80000000) == 0)
  {
    result = getsockopt(result, 0, 3, &v4, &v3);
    if (!result)
    {
      result = mdns_system_pid_to_name(v4, a1 + 256);
      if (result)
      {
        *(a1 + 188) = v4;
      }
    }
  }

  return result;
}

void *get_signed_browse_tlvs(uint64_t a1)
{
  v19 = 0;
  signed_data_tlvs = _get_signed_data_tlvs(a1, &v19);
  if (!*(a1 + 290))
  {
    return 0;
  }

  v3 = signed_data_tlvs;
  if (!signed_data_tlvs)
  {
    v12 = 4294901747;
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return v12;
      }

      *buf = 0;
      v15 = "get_signed_browse_tlvs data invalid";
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return v12;
      }

      *buf = 0;
      v15 = "get_signed_browse_tlvs data invalid";
    }

    v16 = v13;
    v17 = 2;
    goto LABEL_30;
  }

  v4 = v19;
  if (v19 < 0x3A)
  {
    v10 = -6743;
    goto LABEL_12;
  }

  if (*(signed_data_tlvs + 12) != 5)
  {
    v10 = -6756;
    goto LABEL_12;
  }

  v5 = signed_data_tlvs[28];
  if (v19 - 58 < v5)
  {
    v10 = -6750;
    goto LABEL_12;
  }

  if (v5 > 0x3F0)
  {
    v10 = -6744;
    goto LABEL_12;
  }

  bzero(buf, 0x3F1uLL);
  __memcpy_chk();
  buf[v5] = 0;
  memset(v21, 0, sizeof(v21));
  v6 = DomainNameFromString(v21, buf);
  if (v6 || (v6 = _mdns_necp_validate_result()) != 0)
  {
    v10 = v6;
LABEL_12:
    v11 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      v12 = 4294901747;
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_26:
        *buf = 134218240;
        v23 = v19;
        v24 = 2048;
        v25 = v10;
        v15 = "get_signed_browse_tlvs len %zu data invalid %ld";
        v16 = v11;
        v17 = 22;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
      }
    }

    else
    {
      v12 = 4294901747;
      v11 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }
    }

    return v12;
  }

  v20 = 0;
  result = malloc_type_malloc(v4, 0xFE29915uLL);
  if (result)
  {
    v8 = result;
    memcpy(result, v3, v4);
    v9 = _mdns_signed_browse_result_create_no_copy(v21, v8, v4, &v20);
    if (v9)
    {
      v10 = v20;
      if (!v20)
      {
        v12 = 0;
        *(a1 + 56) = v9;
        return v12;
      }
    }

    else
    {
      free(v8);
      v10 = -6728;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t build_domainname_from_strings(_BYTE *a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v55;
  memset(v55, 0, sizeof(v55));
  LOBYTE(v11) = *a2;
  if (*a2)
  {
    v12 = a2 + 1;
    do
    {
      *v10 = v11;
      v10 = (v10 + 1);
      v13 = *v12++;
      v11 = v13;
      if (v13)
      {
        v14 = v10 >= &v56;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
    v54 = v10 + ~(&vars0 - 104);
    if (v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v54 = v55 + ~(&vars0 - 104);
  }

  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v22 = 0;
  if (!AppendDNSNameString(&v22, a3, a3, a4, a5, a6, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  v38 = 0;
  if (!AppendDNSNameString(&v38, a4, v15, v16, v17, v18, v19, v20))
  {
    return 0xFFFFFFFFLL;
  }

  if (ConstructServiceName(a1, &v54, &v22, &v38))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *_handle_resolve_request_with_trust(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
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
        return _handle_resolve_request_start(a1, a2);
      }
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_resolve_request_start(a1, a2);
      }
    }

    v19 = *(a1 + 200);
    v20 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v19;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_resolve_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_resolve_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v6;
  v7 = mdns_trust_checks_check(buf, 0, 0, a2, 0, 1);
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = v7[9];
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v9 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v5 = _handle_resolve_request_start(a1, a2);
LABEL_30:
      os_release(v8);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v13 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v13;
  v14 = mdns_trust_create(buf, a2, v8);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  result = malloc_type_malloc(0x500uLL, 0x7C31B88FuLL);
  if (result)
  {
    v17 = result;
    memcpy(result, a2, 0x500uLL);
    *(v15 + 56) = v17;
    mdns_interface_monitor_set_update_handler(v15, &__block_literal_global_2990);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v15, _get_trust_results_dispatch_queue_queue);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 0x40000000;
    v21[2] = ___handle_resolve_request_with_trust_block_invoke_2;
    v21[3] = &__block_descriptor_tmp_236_2991;
    v21[4] = v15;
    v21[5] = a1;
    mdns_trust_set_event_handler(v15, v21);
    CFArrayAppendValue(*(a1 + 48), v15);
    os_release(v15);
    if ((*(v15 + 26) & 1) == 0)
    {
      *(v15 + 26) = 1;
      _mdns_trust_activate_if_ready(v15);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t _handle_resolve_request_start(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  started = mDNS_StartQuery(mDNSStorage, v4 + 696);
  if (!started)
  {
    v6 = mDNS_StartQuery(mDNSStorage, v4);
    if (v6)
    {
      started = v6;
      mDNS_StopQuery(mDNSStorage, v4 + 696);
      return started;
    }

    *(a1 + 112) = resolve_termination_callback;
    if (*(a1 + 252) != -1 && IsLocalDomain((a2 + 1009)))
    {
      v12 = *(a1 + 252);
      if (v12)
      {
        v13 = AWDLInterfaceID == v12 || WiFiAwareInterfaceID == v12;
      }

      else
      {
        v13 = (*(a1 + 250) >> 4) & 1;
      }

      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      bzero(v47, 0x3F1uLL);
      service_type_from_domain_name = _mdns_get_service_type_from_domain_name((a2 + 1009), v47);
      _mdns_powerlog_bonjour_event(0xDu, v13, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
      *(a1 + 8) = monotonic_time_ns;
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMcastQuestion(v4 + 696, a1, 1);
    }

    v16 = (a2 + 1009);
    if (!callExternalHelpers(*(a2 + 1272), (a2 + 1009), *(a1 + 248), v7, v8, v9, v10, v11))
    {
      return 0;
    }

    *(v4 + 1420) = 1;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: calling external_start_resolving_service()", v17, v18, v19, v20, v21, v47[0]);
    }

    v22 = *(a2 + 1272);
    v23 = *(a1 + 248);
    v24 = *(a1 + 188);
    memset(&v47[2], 0, 224);
    if (*(a2 + 1009))
    {
      v25 = (a2 + *(a2 + 1009) + 1010);
    }

    else
    {
      v25 = (a2 + 1009);
    }

    memset(v47, 0, 32);
    DomainnameToLower(v25, v47);
    v26 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v34 = v16;
      while (1)
      {
        if (!v34 || (v35 = *v34, v35 > 0x3F))
        {
LABEL_35:
          v33 = 257;
          goto LABEL_38;
        }

        if (!*v34)
        {
          break;
        }

        v34 += v35 + 1;
        if (v34 - v16 >= 256)
        {
          goto LABEL_35;
        }
      }

      v33 = (v34 - v16 + 1);
    }

    else
    {
      v26 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v31 = v16;
      while (1)
      {
        if (!v31 || (v32 = *v31, v32 > 0x3F))
        {
LABEL_28:
          v33 = 257;
          goto LABEL_38;
        }

        if (!*v31)
        {
          break;
        }

        v31 += v32 + 1;
        if (v31 - v16 >= 256)
        {
          goto LABEL_28;
        }
      }

      v33 = (v31 - v16 + 1);
    }

LABEL_38:
    *buf = 141558531;
    v49 = 1752392040;
    v50 = 1040;
    v51 = v33;
    v52 = 2101;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "external_start_resolving_service - fqdn: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
LABEL_39:
    v36 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, v47, v27, v28, v29, v30);
    if (v36)
    {
      *v36 = 3072;
      v36[2] = 1;
      v41 = (v36 + 3);
    }

    else
    {
      v41 = 0;
    }

    *buf = 0;
    v42 = putDomainNameAsLabels(&compression_base_msg, v41, &compression_base_msg + &loc_1000022F8, v16, v37, v38, v39, v40);
    PrintHelper("external_start_resolving_service", byte_10015DD07, (v41 - byte_10015DD07), v41, (v42 - v41));
    v43 = xD2DMapToTransportType(v22, v23, buf);
    if (v43 == 4)
    {
      v44 = 0;
      v45 = *buf;
      do
      {
        if (&_D2DStartResolvingPairOnTransport && v45 != v44)
        {
          if (v44 >= 2)
          {
            _mdns_powerlog_awdl_event(@"startAWDLResolve", v47, 12, v24);
          }

          D2DStartResolvingPairOnTransport();
        }

        ++v44;
      }

      while (v44 != 4);
    }

    else if (&_D2DStartResolvingPairOnTransport)
    {
      if ((v43 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"startAWDLResolve", v47, 12, v24);
      }

      D2DStartResolvingPairOnTransport();
    }

    return 0;
  }

  return started;
}

unsigned __int8 *get_tracker_info_tlvs(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    if ((*(a1 + 224) & 2) != 0)
    {
      result = get_tlv_uint32(result, *(a1 + 88), 8, 0);
      *(a1 + 289) = result != 0;
    }
  }

  return result;
}

uint64_t _handle_queryrecord_request_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 112) = queryrecord_termination_callback;
  v9 = *(a1 + 144);
  RecordClientRequestStart = QueryRecordClientRequestStart(v9, a2, queryrecord_result_reply, a1, a5, a6, a7, a8);
  if (!RecordClientRequestStart && *(a1 + 252) != -1 && IsLocalDomain((v9 + 376)))
  {
    v12 = *(a1 + 252);
    if (v12)
    {
      v13 = AWDLInterfaceID == v12 || WiFiAwareInterfaceID == v12;
    }

    else
    {
      v13 = (*(a1 + 250) >> 4) & 1;
    }

    monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
    bzero(v16, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v9 + 376), v16);
    _mdns_powerlog_bonjour_event(7u, v13, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
    *(a1 + 8) = monotonic_time_ns;
  }

  return RecordClientRequestStart;
}

void ___handle_queryrecord_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return;
  }

  v6 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v6, v7, v8, v9, v10, v11, v12, v13);
  v21 = *(a1 + 32);
  if (!*(v21 + 64) || (*(v21 + 27) & 1) == 0)
  {
    v14 = *(v21 + 56);
    if (v14)
    {
      if (a3 == 1)
      {
        v14 = _handle_queryrecord_request_start(*(a1 + 40), v14, v15, v16, v17, v18, v19, v20);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        LODWORD(v14) = -65570;
      }

      _return_queryrecord_request_error(*(a1 + 40), v14);
    }
  }

LABEL_10:

  KQueueUnlock("_handle_queryrecord_request_with_trust", v14, v15, v16, v17, v18, v19, v20);
}

unsigned __int16 *_get_signed_data_tlvs(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    if ((*(a1 + 224) & 2) != 0)
    {
      v5 = *(a1 + 88);
      if (get_tlv_uint32(*(a1 + 80), v5, 6, 0) == 1)
      {
        *(a1 + 290) = 1;
        while (v5 - v2 >= 4)
        {
          v6 = 0;
          v7 = v2 + 2;
          if (v2 == -4)
          {
            result = 0;
            if (!a2)
            {
              return result;
            }

LABEL_15:
            *a2 = v6;
            return result;
          }

          v8 = __rev16(v2[1]);
          result = 0;
          if (v5 - v7 < v8)
          {
            goto LABEL_14;
          }

          v10 = __rev16(*v2);
          v2 = (v7 + v8);
          if (v10 == 7)
          {
            v6 = v8;
            result = v7;
            if (!a2)
            {
              return result;
            }

            goto LABEL_15;
          }
        }

        v6 = 0;
        result = 0;
LABEL_14:
        if (!a2)
        {
          return result;
        }

        goto LABEL_15;
      }
    }
  }

  return 0;
}

uint64_t _handle_browse_request_with_trust(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 32))
  {
    v20 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v21 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_browse_request_start(a1, a2, v23, v24, v25, v26, v27, v28);
      }
    }

    else
    {
      v20 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_browse_request_start(a1, a2, v23, v24, v25, v26, v27, v28);
      }
    }

    v29 = *(a1 + 200);
    v30 = *(a1 + 188);
    *buf = 67109634;
    v49 = v29;
    v50 = 2080;
    v51 = a1 + 256;
    v52 = 1024;
    v53 = v30;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_browse_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_browse_request_start(a1, a2, v23, v24, v25, v26, v27, v28);
  }

  v4 = 4294901757;
  bzero(buf, 0x3F1uLL);
  v5 = (*(a1 + 152) + 10);
  memset(v46, 0, sizeof(v46));
  if (DeconstructServiceName(v5, v47, v46, v45))
  {
    v6 = v46;
  }

  else
  {
    v6 = v5;
  }

  ConvertDomainNameToCString_withescape(v6, buf);
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *v43 = *(v7 + 24);
  v44 = v8;
  v9 = mdns_trust_checks_check(v43, 0, 0, buf, 0, 1);
  if (v9)
  {
    v16 = v9;
    v17 = v9[8];
    if ((v17 & 2) == 0)
    {
      *(a1 + 290) = 0;
    }

    if ((v17 & 4) == 0)
    {
LABEL_27:
      v32 = v16[9];
      if (v32 > 1)
      {
        if (v32 == 3)
        {
          v4 = 4294901741;
          goto LABEL_44;
        }

        if (v32 != 2)
        {
          goto LABEL_42;
        }
      }

      else if (v32)
      {
        if (v32 == 1)
        {
          v4 = _handle_browse_request_start(a1, a2, v10, v11, v12, v13, v14, v15);
LABEL_44:
          os_release(v16);
          return v4;
        }

LABEL_42:
        v4 = 4294901759;
        goto LABEL_44;
      }

      if (!*(a1 + 48))
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
        *(a1 + 48) = Mutable;
        if (!Mutable)
        {
          goto LABEL_44;
        }
      }

      v34 = *(v7 + 40);
      *v43 = *(v7 + 24);
      v44 = v34;
      v35 = mdns_trust_create(v43, buf, v16);
      if (!v35)
      {
        goto LABEL_44;
      }

      v36 = v35;
      v37 = strlen(a2);
      v38 = v37 + 1;
      if (v37 == -1 || (v39 = malloc_type_malloc(v37 + 1, 0x1409A336uLL)) == 0)
      {
        __break(1u);
      }

      else
      {
        v40 = v39;
        memcpy(v39, a2, v38);
        *(v36 + 56) = v40;
        mdns_interface_monitor_set_update_handler(v36, &__block_literal_global_262);
        if (_get_trust_results_dispatch_queue_once == -1)
        {
LABEL_39:
          mdns_trust_set_queue(v36, _get_trust_results_dispatch_queue_queue);
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 0x40000000;
          v42[2] = ___handle_browse_request_with_trust_block_invoke_2;
          v42[3] = &__block_descriptor_tmp_264;
          v42[4] = v36;
          v42[5] = a1;
          mdns_trust_set_event_handler(v36, v42);
          CFArrayAppendValue(*(a1 + 48), v36);
          os_release(v36);
          if ((*(v36 + 26) & 1) == 0)
          {
            *(v36 + 26) = 1;
            _mdns_trust_activate_if_ready(v36);
          }

          v4 = 0;
          goto LABEL_44;
        }
      }

      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
      goto LABEL_39;
    }

    v18 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 200);
        *v43 = 67109120;
        *&v43[4] = v31;
        goto LABEL_25;
      }
    }

    else
    {
      v18 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 200);
        *v43 = 67109120;
        *&v43[4] = v19;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[R%u] _handle_browse_request_with_trust: has media discovery entitlement", v43, 8u);
      }
    }

    *(a1 + 290) = 1;
    goto LABEL_27;
  }

  return v4;
}

uint64_t _handle_browse_request_start(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  *(a1 + 112) = browse_termination_callback;
  if (*a2)
  {
    v16 = 0;
    if (AppendDNSNameString(&v16, a2, a3, a4, a5, a6, a7, a8))
    {
      return add_domain_to_browser(a1, &v16);
    }

    else
    {
      return 4294901756;
    }
  }

  else
  {
    v10 = AutoBrowseDomains;
    if (AutoBrowseDomains)
    {
      while (1)
      {
        v11 = *(v10 + 8);
        if (!v11 || ((v12 = *(a1 + 196), v12 >= 0x1F5) ? (v13 = v12 == v11) : (v13 = 1), v13))
        {
          v14 = add_domain_to_browser(a1, (v10 + 12));
          if (v14)
          {
            v9 = v14;
            if (SameDomainNameBytes((v10 + 12), "\x05local"))
            {
              break;
            }
          }
        }

        v10 = *v10;
        if (!v10)
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

  return v9;
}

_OWORD *_handle_regservice_request_with_trust(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v11 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_regservice_request_start(a1, a2);
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_regservice_request_start(a1, a2);
      }
    }

    v31 = *(a1 + 200);
    v32 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v31;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v32;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_regservice_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_regservice_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(a1 + 128);
  v7 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v7;
  v8 = mdns_trust_checks_check(buf, 1u, 0, (v6 + 90), 0, 0);
  if (!v8)
  {
    return v5;
  }

  v9 = v8;
  v10 = v8[9];
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v10 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v5 = _handle_regservice_request_start(a1, a2);
LABEL_30:
      os_release(v9);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v14 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v14;
  v15 = mdns_trust_create(buf, (v6 + 90), v9);
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = v15;
  result = malloc_type_malloc(0x100uLL, 0x609DA0FCuLL);
  if (result)
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    result[2] = a2[2];
    result[3] = v20;
    *result = v18;
    result[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    result[6] = a2[6];
    result[7] = v23;
    result[4] = v21;
    result[5] = v22;
    v24 = a2[8];
    v25 = a2[9];
    v26 = a2[11];
    result[10] = a2[10];
    result[11] = v26;
    result[8] = v24;
    result[9] = v25;
    v27 = a2[12];
    v28 = a2[13];
    v29 = a2[15];
    result[14] = a2[14];
    result[15] = v29;
    result[12] = v27;
    result[13] = v28;
    *(v16 + 56) = result;
    mdns_interface_monitor_set_update_handler(v16, &__block_literal_global_281);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v16, _get_trust_results_dispatch_queue_queue);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 0x40000000;
    v33[2] = ___handle_regservice_request_with_trust_block_invoke_2;
    v33[3] = &__block_descriptor_tmp_283;
    v33[4] = v16;
    v33[5] = a1;
    mdns_trust_set_event_handler(v16, v33);
    CFArrayAppendValue(*(a1 + 48), v16);
    os_release(v16);
    if ((*(v16 + 26) & 1) == 0)
    {
      *(v16 + 26) = 1;
      _mdns_trust_activate_if_ready(v16);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t _handle_regservice_request_start(uint64_t a1, _BYTE *a2)
{
  *(a1 + 112) = regservice_termination_callback;
  v3 = register_service_instance(a1, a2);
  if (!v3)
  {
    v5 = *(a1 + 128);
    if (*(v5 + 1612))
    {
      UpdateDeviceInfoRecord(mDNSStorage);
    }

    if (*(v5 + 1355))
    {
      for (i = AutoRegistrationDomains; i; i = *i)
      {
        v7 = *(i + 8);
        if (v7)
        {
          v8 = *(a1 + 196);
          if (v8 >= 0x1F5 && v8 != v7)
          {
            continue;
          }
        }

        register_service_instance(a1, (i + 12));
      }
    }
  }

  return v3;
}

void *_handle_addrinfo_request_with_trust(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
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
        return _handle_addrinfo_request_start(a1, a2);
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_addrinfo_request_start(a1, a2);
      }
    }

    v19 = *(a1 + 200);
    v20 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v19;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_addrinfo_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_addrinfo_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v6;
  v7 = mdns_trust_checks_check(buf, 2u, (a2 + 4), 0, 0, 0);
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = v7[9];
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v9 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v5 = _handle_addrinfo_request_start(a1, a2);
LABEL_30:
      os_release(v8);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v13 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v13;
  v14 = mdns_trust_create(buf, 0, v8);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  result = malloc_type_malloc(0x3F8uLL, 0xA0E6AF8DuLL);
  if (result)
  {
    v17 = result;
    memcpy(result, a2, 0x3F8uLL);
    *(v15 + 56) = v17;
    mdns_interface_monitor_set_update_handler(v15, &__block_literal_global_307);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v15, _get_trust_results_dispatch_queue_queue);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 0x40000000;
    v21[2] = ___handle_addrinfo_request_with_trust_block_invoke_2;
    v21[3] = &__block_descriptor_tmp_309;
    v21[4] = v15;
    v21[5] = a1;
    mdns_trust_set_event_handler(v15, v21);
    CFArrayAppendValue(*(a1 + 48), v15);
    os_release(v15);
    if ((*(v15 + 26) & 1) == 0)
    {
      *(v15 + 26) = 1;
      _mdns_trust_activate_if_ready(v15);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void *_handle_addrinfo_request_start(uint64_t a1, int *a2)
{
  *(a1 + 112) = addrinfo_termination_callback;
  v20 = 0u;
  v21 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  LODWORD(v20) = *(a1 + 200);
  v3 = *a2;
  *(&v20 + 1) = a2 + 1;
  *&v21 = vrev64_s32(*(a1 + 248));
  DWORD2(v21) = v3;
  v4 = *(a1 + 288);
  if (*(a1 + 288))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 188);
  }

  HIDWORD(v21) = v5;
  if (v4)
  {
    v6 = a1 + 272;
  }

  else
  {
    v6 = 0;
  }

  *&v22 = v6;
  DWORD2(v22) = *(a1 + 196);
  LOBYTE(v24) = *(a2 + 1013) != 0;
  *(&v23 + 1) = *a1;
  *(&v24 + 1) = *(a1 + 32);
  get_tracker_info_tlvs(a1);
  AddrInfoClientRequestStart = GetAddrInfoClientRequestStart(*(a1 + 168), &v20, queryrecord_result_reply, a1, v7, v8, v9, v10);
  if (!AddrInfoClientRequestStart && *(a1 + 252) != -1)
  {
    v13 = *(a1 + 168);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v14 + 376);
    }

    else
    {
      v16 = *(v13 + 24);
      v15 = v16 ? (v16 + 376) : "";
    }

    if (IsLocalDomain(v15))
    {
      v17 = *(a1 + 252);
      if (v17)
      {
        v18 = AWDLInterfaceID == v17 || WiFiAwareInterfaceID == v17;
      }

      else
      {
        v18 = (*(a1 + 250) >> 4) & 1;
      }

      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      _mdns_powerlog_bonjour_event(4u, v18, (a1 + 256), 0, monotonic_time_ns);
      *(a1 + 8) = monotonic_time_ns;
    }
  }

  return AddrInfoClientRequestStart;
}

uint64_t _handle_regrecord_request_start(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) == -2 && !IsLocalDomain(*(a2 + 40)) && *(a2 + 14) == 1)
  {
    v4 = *(a2 + 12);
    v5 = v4 > 0x1C;
    v6 = (1 << v4) & 0x10000022;
    if (!v5 && v6 != 0)
    {
      free(a2);
      return 4294901756;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x40uLL, 0xD44DF73DuLL);
  if (!v9)
  {
    goto LABEL_223;
  }

  v10 = v9;
  *(v9 + 14) = *(a1 + 240);
  v9[3] = a2;
  v9[5] = *(a1 + 232);
  v9[2] = a1;
  *(v9 + 60) = 0;
  *(a2 + 104) = regrecord_callback;
  *(a2 + 112) = v9;
  *(a2 + 122) = (*(a1 + 248) & 0x400) != 0;
  v11 = *(a2 + 32);
  v9[4] = v11;
  if (v11 == -3)
  {
    *(a2 + 32) = 0;
  }

  if (!*(a2 + 16))
  {
    *(a2 + 16) = 4500;
  }

  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v13 = *(a2 + 40);
  v14 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v15 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (shouldLogFullRequestInfo)
  {
    if (v13)
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v17 = *(a1 + 200);
        v18 = v13;
        v211 = *(a1 + 200);
        v217 = *(v10 + 14);
        while (1)
        {
          if (!v18 || (v19 = *v18, v19 > 0x3F))
          {
LABEL_29:
            v20 = 257;
            goto LABEL_66;
          }

          if (!*v18)
          {
            break;
          }

          v18 += v19 + 1;
          if (v18 - v13 >= 256)
          {
            goto LABEL_29;
          }
        }

        v20 = (v18 - v13 + 1);
LABEL_66:
        v59 = *(a2 + 12);
        v61 = *(a1 + 248);
        v60 = *(a1 + 252);
        v62 = *(a1 + 188);
        *&__n[3] = 67111683;
        v221 = v211;
        v222 = 1024;
        v223 = v217;
        v224 = 2160;
        *v225 = 1752392040;
        *&v225[8] = 1040;
        *&v225[10] = v20;
        v226 = 2101;
        *v227 = v13;
        *&v227[8] = 1024;
        *&v227[10] = v59;
        v228 = 1024;
        v229 = v61;
        v230 = 1024;
        v231 = v60;
        v232 = 1024;
        *v233 = v62;
        *&v233[4] = 2082;
        *&v233[6] = a1 + 256;
        v234 = 1024;
        LODWORD(v235[0]) = mDNS_DomainNameFNV1aHash(v13);
        v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
      }

      else
      {
        v14 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v34 = *(a1 + 200);
        v35 = v13;
        v212 = *(a1 + 200);
        v218 = *(v10 + 14);
        while (1)
        {
          if (!v35 || (v36 = *v35, v36 > 0x3F))
          {
LABEL_48:
            v37 = 257;
            goto LABEL_68;
          }

          if (!*v35)
          {
            break;
          }

          v35 += v36 + 1;
          if (v35 - v13 >= 256)
          {
            goto LABEL_48;
          }
        }

        v37 = (v35 - v13 + 1);
LABEL_68:
        v63 = *(a2 + 12);
        v65 = *(a1 + 248);
        v64 = *(a1 + 252);
        v66 = *(a1 + 188);
        *&__n[3] = 67111683;
        v221 = v212;
        v222 = 1024;
        v223 = v218;
        v224 = 2160;
        *v225 = 1752392040;
        *&v225[8] = 1040;
        *&v225[10] = v37;
        v226 = 2101;
        *v227 = v13;
        *&v227[8] = 1024;
        *&v227[10] = v63;
        v228 = 1024;
        v229 = v65;
        v230 = 1024;
        v231 = v64;
        v232 = 1024;
        *v233 = v66;
        *&v233[4] = 2082;
        *&v233[6] = a1 + 256;
        v234 = 1024;
        LODWORD(v235[0]) = mDNS_DomainNameFNV1aHash(v13);
        v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
      }

      v33 = v14;
      v52 = 80;
    }

    else
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v26 = *(a1 + 200);
        v27 = *(v10 + 14);
        v28 = *(a2 + 12);
        v29 = *(a1 + 248);
        v30 = *(a1 + 252);
        v31 = *(a1 + 188);
        *&__n[3] = 67111427;
        v221 = v26;
        v222 = 1024;
        v223 = v27;
        v224 = 2160;
        *v225 = 1752392040;
        *&v225[8] = 1040;
        *&v225[10] = 257;
        v226 = 2101;
        *v227 = 0;
        *&v227[8] = 1024;
        *&v227[10] = v28;
        v228 = 1024;
        v229 = v29;
        v230 = 1024;
        v231 = v30;
        v232 = 1024;
        *v233 = v31;
        *&v233[4] = 2082;
        *&v233[6] = a1 + 256;
        v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
        v33 = v14;
      }

      else
      {
        v45 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v46 = *(a1 + 200);
        v47 = *(v10 + 14);
        v48 = *(a2 + 12);
        v49 = *(a1 + 248);
        v50 = *(a1 + 252);
        v51 = *(a1 + 188);
        *&__n[3] = 67111427;
        v221 = v46;
        v222 = 1024;
        v223 = v47;
        v224 = 2160;
        *v225 = 1752392040;
        *&v225[8] = 1040;
        *&v225[10] = 257;
        v226 = 2101;
        *v227 = 0;
        *&v227[8] = 1024;
        *&v227[10] = v48;
        v228 = 1024;
        v229 = v49;
        v230 = 1024;
        v231 = v50;
        v232 = 1024;
        *v233 = v51;
        *&v233[4] = 2082;
        *&v233[6] = a1 + 256;
        v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
        v33 = v45;
      }

      v52 = 74;
    }
  }

  else if (v13)
  {
    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v21 = *(a1 + 200);
      v22 = *(v10 + 14);
      v23 = v13;
      while (1)
      {
        if (!v23 || (v24 = *v23, v24 > 0x3F))
        {
LABEL_38:
          v25 = 257;
          goto LABEL_72;
        }

        if (!*v23)
        {
          break;
        }

        v23 += v24 + 1;
        if (v23 - v13 >= 256)
        {
          goto LABEL_38;
        }
      }

      v25 = (v23 - v13 + 1);
    }

    else
    {
      v14 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v21 = *(a1 + 200);
      v22 = *(v10 + 14);
      v43 = v13;
      while (1)
      {
        if (!v43 || (v44 = *v43, v44 > 0x3F))
        {
LABEL_58:
          v25 = 257;
          goto LABEL_72;
        }

        if (!*v43)
        {
          break;
        }

        v43 += v44 + 1;
        if (v43 - v13 >= 256)
        {
          goto LABEL_58;
        }
      }

      v25 = (v43 - v13 + 1);
    }

LABEL_72:
    v67 = *(a2 + 12);
    v69 = *(a1 + 248);
    v68 = *(a1 + 252);
    *&__n[3] = 67111171;
    v221 = v21;
    v222 = 1024;
    v223 = v22;
    v224 = 2160;
    *v225 = 1752392040;
    *&v225[8] = 1040;
    *&v225[10] = v25;
    v226 = 2101;
    *v227 = v13;
    *&v227[8] = 1024;
    *&v227[10] = v67;
    v228 = 1024;
    v229 = v69;
    v230 = 1024;
    v231 = v68;
    v232 = 1024;
    *v233 = mDNS_DomainNameFNV1aHash(v13);
    v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, name hash: %x";
    v33 = v14;
    v52 = 64;
  }

  else
  {
    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v38 = *(a1 + 200);
      v39 = *(v10 + 14);
      v40 = *(a2 + 12);
      v41 = *(a1 + 248);
      v42 = *(a1 + 252);
      *&__n[3] = 67110915;
      v221 = v38;
      v222 = 1024;
      v223 = v39;
      v224 = 2160;
      *v225 = 1752392040;
      *&v225[8] = 1040;
      *&v225[10] = 257;
      v226 = 2101;
      *v227 = 0;
      *&v227[8] = 1024;
      *&v227[10] = v40;
      v228 = 1024;
      v229 = v41;
      v230 = 1024;
      v231 = v42;
      v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, ";
      v33 = v14;
    }

    else
    {
      v53 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v54 = *(a1 + 200);
      v55 = *(v10 + 14);
      v56 = *(a2 + 12);
      v57 = *(a1 + 248);
      v58 = *(a1 + 252);
      *&__n[3] = 67110915;
      v221 = v54;
      v222 = 1024;
      v223 = v55;
      v224 = 2160;
      *v225 = 1752392040;
      *&v225[8] = 1040;
      *&v225[10] = 257;
      v226 = 2101;
      *v227 = 0;
      *&v227[8] = 1024;
      *&v227[10] = v56;
      v228 = 1024;
      v229 = v57;
      v230 = 1024;
      v231 = v58;
      v32 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, ";
      v33 = v53;
    }

    v52 = 58;
  }

  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, &__n[3], v52);
LABEL_74:
  _shouldLogFullRequestInfo(v10 + 12, v10 + 13);
  v70 = mDNS_Register(mDNSStorage, a2);
  if (v70)
  {
    v8 = v70;
    v79 = mDNS_DomainNameFNV1aHash(*(a2 + 40));
    v80 = *(a2 + 64);
    if (v80)
    {
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v80);
      v83 = (a2 + 20);
      v82 = *(a2 + 20);
      if (validation_result)
      {
        if (v82 >= 0x201)
        {
          v108 = malloc_type_malloc(v82, 0x4C86F1A6uLL);
          if (!v108)
          {
            goto LABEL_223;
          }

          v84 = v108;
          v86 = *v83;
          v85 = v108;
          if (*v83)
          {
LABEL_79:
            *&__n[1] = 0;
            __n[0] = 0;
            RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v85, v86, __n, &__n[1], v76, v77, v78);
            if (!*&__n[1])
            {
              v202 = RDataBytesPointer;
              if (__n[0] < 0x1FFuLL)
              {
                v88 = 0;
                v207 = 512;
                v89 = word_1001789D0;
                goto LABEL_161;
              }

              v207 = __n[0] + 2;
              v89 = malloc_type_malloc(__n[0] + 2, 0x4C86F1A6uLL);
              if (v89)
              {
                v88 = v89;
LABEL_161:
                v199 = v89;
                v219 = v88;
                v134 = mDNSLogCategory_mDNS;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_217;
                  }

                  v216 = v79;
                  v141 = *(a2 + 40);
                  if (v141)
                  {
                    v142 = *(a2 + 40);
                    v143 = v207;
                    while (1)
                    {
                      if (!v142 || (v144 = *v142, v144 > 0x3F))
                      {
LABEL_178:
                        v145 = 257;
                        goto LABEL_206;
                      }

                      if (!*v142)
                      {
                        break;
                      }

                      v142 += v144 + 1;
                      if (&v142[-v141] >= 256)
                      {
                        goto LABEL_178;
                      }
                    }

                    v145 = (v142 - v141 + 1);
                  }

                  else
                  {
                    v145 = 0;
                    v143 = v207;
                  }

LABEL_206:
                  v175 = *(a1 + 200);
                  v176 = *(v10 + 14);
                  v177 = *(a1 + 252);
                  v178 = *(a2 + 12);
                  v179 = __n[0];
                  v180 = __n[0] + 2;
                  if (v180 <= v143)
                  {
                    v181 = v199;
                    v182 = v202;
                    *v199 = __rev16(v178);
                    v193 = v145;
                    logc = v176;
                    v205 = v178;
                    v209 = v180;
                    memcpy(v199 + 1, v182, v179);
                    v145 = v193;
                    v176 = logc;
                    v180 = v209;
                    v178 = v205;
                  }

                  else
                  {
                    v181 = 0;
                  }

                  *&__n[3] = 67111939;
                  v221 = v175;
                  v222 = 1024;
                  v223 = v176;
                  v224 = 1024;
                  *v225 = v177;
                  *&v225[4] = 2160;
                  *&v225[6] = 1752392040;
                  v226 = 1040;
                  *v227 = v145;
                  *&v227[4] = 2101;
                  *&v227[6] = v141;
                  v228 = 1024;
                  v229 = v216;
                  v230 = 1026;
                  v231 = validation_result;
                  v232 = 1024;
                  *v233 = v178;
                  *&v233[4] = 2160;
                  *&v233[6] = 1752392040;
                  v234 = 1040;
                  LODWORD(v235[0]) = v180;
                  WORD2(v235[0]) = 2101;
                  *(v235 + 6) = v181;
                  v161 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  v162 = v134;
                }

                else
                {
                  v135 = mDNSLogCategory_mDNS_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_217;
                  }

                  v215 = v79;
                  v136 = *(a2 + 40);
                  log = v135;
                  if (v136)
                  {
                    v137 = *(a2 + 40);
                    v138 = v207;
                    while (1)
                    {
                      if (!v137 || (v139 = *v137, v139 > 0x3F))
                      {
LABEL_170:
                        v140 = 257;
                        goto LABEL_211;
                      }

                      if (!*v137)
                      {
                        break;
                      }

                      v137 += v139 + 1;
                      if (&v137[-v136] >= 256)
                      {
                        goto LABEL_170;
                      }
                    }

                    v140 = (v137 - v136 + 1);
                  }

                  else
                  {
                    v140 = 0;
                    v138 = v207;
                  }

LABEL_211:
                  v183 = *(a1 + 200);
                  v184 = *(v10 + 14);
                  v185 = *(a1 + 252);
                  v186 = *(a2 + 12);
                  v187 = __n[0];
                  v188 = __n[0] + 2;
                  if (v188 <= v138)
                  {
                    v189 = v199;
                    v190 = v202;
                    *v199 = __rev16(v186);
                    v194 = v140;
                    v210 = v185;
                    v206 = v184;
                    memcpy(v199 + 1, v190, v187);
                    v184 = v206;
                    v185 = v210;
                    v140 = v194;
                  }

                  else
                  {
                    v189 = 0;
                  }

                  *&__n[3] = 67111939;
                  v221 = v183;
                  v222 = 1024;
                  v223 = v184;
                  v224 = 1024;
                  *v225 = v185;
                  *&v225[4] = 2160;
                  *&v225[6] = 1752392040;
                  v226 = 1040;
                  *v227 = v140;
                  *&v227[4] = 2101;
                  *&v227[6] = v136;
                  v228 = 1024;
                  v229 = v215;
                  v230 = 1026;
                  v231 = validation_result;
                  v232 = 1024;
                  *v233 = v186;
                  *&v233[4] = 2160;
                  *&v233[6] = 1752392040;
                  v234 = 1040;
                  LODWORD(v235[0]) = v188;
                  WORD2(v235[0]) = 2101;
                  *(v235 + 6) = v189;
                  v161 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  v162 = log;
                }

                v174 = 90;
LABEL_216:
                _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_ERROR, v161, &__n[3], v174);
LABEL_217:
                if (v219)
                {
                  free(v219);
                }

                goto LABEL_219;
              }

LABEL_223:
              __break(1u);
            }

LABEL_219:
            if (v84)
            {
              free(v84);
            }

            free(v10);
            free(a2);
            return v8;
          }
        }

        else
        {
          v84 = 0;
          v85 = &word_1001787D0;
          v86 = 512;
          if (*(a2 + 20))
          {
            goto LABEL_79;
          }
        }

        v109 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_219;
          }

          v110 = *(a1 + 200);
          v111 = *(v10 + 14);
          v112 = *(a1 + 252);
          v113 = *(a2 + 40);
          if (v113)
          {
            v119 = *(a2 + 40);
            while (1)
            {
              if (!v119 || (v120 = *v119, v120 > 0x3F))
              {
LABEL_133:
                v116 = 257;
                goto LABEL_192;
              }

              if (!*v119)
              {
                break;
              }

              v119 += v120 + 1;
              if (&v119[-v113] >= 256)
              {
                goto LABEL_133;
              }
            }

            v116 = (v119 - v113 + 1);
          }

          else
          {
            v116 = 0;
          }
        }

        else
        {
          v109 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_219;
          }

          v110 = *(a1 + 200);
          v111 = *(v10 + 14);
          v112 = *(a1 + 252);
          v113 = *(a2 + 40);
          if (v113)
          {
            v114 = *(a2 + 40);
            while (1)
            {
              if (!v114 || (v115 = *v114, v115 > 0x3F))
              {
LABEL_116:
                v116 = 257;
                goto LABEL_192;
              }

              if (!*v114)
              {
                break;
              }

              v114 += v115 + 1;
              if (&v114[-v113] >= 256)
              {
                goto LABEL_116;
              }
            }

            v116 = (v114 - v113 + 1);
          }

          else
          {
            v116 = 0;
          }
        }

LABEL_192:
        v150 = *(a2 + 12);
        *&__n[3] = 67111171;
        v221 = v110;
        v222 = 1024;
        v223 = v111;
        v224 = 1024;
        *v225 = v112;
        *&v225[4] = 2160;
        *&v225[6] = 1752392040;
        v226 = 1040;
        *v227 = v116;
        *&v227[4] = 2101;
        *&v227[6] = v113;
        v228 = 1024;
        v229 = v79;
        v230 = 1026;
        v231 = validation_result;
        v232 = 1024;
        *v233 = v150;
        v147 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        v148 = v109;
        v149 = 64;
LABEL_193:
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, v147, &__n[3], v149);
        goto LABEL_219;
      }

      if (v82 >= 0x201)
      {
LABEL_93:
        v99 = malloc_type_malloc(v82, 0x4C86F1A6uLL);
        if (!v99)
        {
          goto LABEL_223;
        }

        v84 = v99;
        v93 = *v83;
        v92 = v99;
        if (!*v83)
        {
          goto LABEL_95;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v83 = (a2 + 20);
      LODWORD(v82) = *(a2 + 20);
      if (v82 >= 0x201)
      {
        goto LABEL_93;
      }
    }

    v84 = 0;
    v92 = &word_1001787D0;
    v93 = 512;
    if (!v82)
    {
LABEL_95:
      v100 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v101 = *(a1 + 200);
        v102 = *(v10 + 14);
        v103 = *(a1 + 252);
        v104 = *(a2 + 40);
        if (v104)
        {
          v117 = *(a2 + 40);
          while (1)
          {
            if (!v117 || (v118 = *v117, v118 > 0x3F))
            {
LABEL_124:
              v107 = 257;
              goto LABEL_187;
            }

            if (!*v117)
            {
              break;
            }

            v117 += v118 + 1;
            if (&v117[-v104] >= 256)
            {
              goto LABEL_124;
            }
          }

          v107 = (v117 - v104 + 1);
        }

        else
        {
          v107 = 0;
        }
      }

      else
      {
        v100 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v101 = *(a1 + 200);
        v102 = *(v10 + 14);
        v103 = *(a1 + 252);
        v104 = *(a2 + 40);
        if (v104)
        {
          v105 = *(a2 + 40);
          while (1)
          {
            if (!v105 || (v106 = *v105, v106 > 0x3F))
            {
LABEL_104:
              v107 = 257;
              goto LABEL_187;
            }

            if (!*v105)
            {
              break;
            }

            v105 += v106 + 1;
            if (&v105[-v104] >= 256)
            {
              goto LABEL_104;
            }
          }

          v107 = (v105 - v104 + 1);
        }

        else
        {
          v107 = 0;
        }
      }

LABEL_187:
      v146 = *(a2 + 12);
      *&__n[3] = 67110915;
      v221 = v101;
      v222 = 1024;
      v223 = v102;
      v224 = 1024;
      *v225 = v103;
      *&v225[4] = 2160;
      *&v225[6] = 1752392040;
      v226 = 1040;
      *v227 = v107;
      *&v227[4] = 2101;
      *&v227[6] = v104;
      v228 = 1024;
      v229 = v79;
      v230 = 1024;
      v231 = v146;
      v147 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>";
      v148 = v100;
      v149 = 58;
      goto LABEL_193;
    }

LABEL_89:
    *&__n[1] = 0;
    __n[0] = 0;
    v94 = ResourceRecordGetRDataBytesPointer(a2 + 8, v92, v93, __n, &__n[1], v76, v77, v78);
    if (!*&__n[1])
    {
      v95 = v94;
      if (__n[0] >= 0x1FFuLL)
      {
        v98 = __n[0] + 2;
        v96 = malloc_type_malloc(__n[0] + 2, 0x4C86F1A6uLL);
        if (!v96)
        {
          goto LABEL_223;
        }

        v97 = v96;
      }

      else
      {
        v96 = 0;
        v97 = word_1001789D0;
        v98 = 512;
      }

      v219 = v96;
      v208 = v97;
      v121 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v214 = v79;
        v127 = *(a2 + 40);
        if (v127)
        {
          v128 = *(a2 + 40);
          while (1)
          {
            if (!v128 || (v129 = *v128, v129 > 0x3F))
            {
LABEL_153:
              v130 = 257;
              goto LABEL_195;
            }

            if (!*v128)
            {
              break;
            }

            v128 += v129 + 1;
            if (&v128[-v127] >= 256)
            {
              goto LABEL_153;
            }
          }

          v130 = (v128 - v127 + 1);
        }

        else
        {
          v130 = 0;
        }

LABEL_195:
        v151 = *(a1 + 200);
        v152 = *(v10 + 14);
        v153 = *(a1 + 252);
        v154 = *(a2 + 12);
        v155 = __n[0];
        v156 = __n[0] + 2;
        if (v156 <= v98)
        {
          v157 = v208;
          *v208 = __rev16(v154);
          v158 = v95;
          loga = v130;
          v159 = v154;
          v204 = v153;
          v200 = v152;
          v160 = v151;
          memcpy(v208 + 1, v158, v155);
          v151 = v160;
          v152 = v200;
          v153 = v204;
          v154 = v159;
          v130 = loga;
        }

        else
        {
          v157 = 0;
        }

        *&__n[3] = 67111683;
        v221 = v151;
        v222 = 1024;
        v223 = v152;
        v224 = 1024;
        *v225 = v153;
        *&v225[4] = 2160;
        *&v225[6] = 1752392040;
        v226 = 1040;
        *v227 = v130;
        *&v227[4] = 2101;
        *&v227[6] = v127;
        v228 = 1024;
        v229 = v214;
        v230 = 1024;
        v231 = v154;
        v232 = 2160;
        *v233 = 1752392040;
        *&v233[8] = 1040;
        *&v233[10] = v156;
        v234 = 2101;
        v235[0] = v157;
        v161 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v162 = v121;
      }

      else
      {
        v122 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v213 = v79;
        v123 = *(a2 + 40);
        v203 = v122;
        if (v123)
        {
          v124 = *(a2 + 40);
          while (1)
          {
            if (!v124 || (v125 = *v124, v125 > 0x3F))
            {
LABEL_145:
              v126 = 257;
              goto LABEL_200;
            }

            if (!*v124)
            {
              break;
            }

            v124 += v125 + 1;
            if (&v124[-v123] >= 256)
            {
              goto LABEL_145;
            }
          }

          v126 = (v124 - v123 + 1);
        }

        else
        {
          v126 = 0;
        }

LABEL_200:
        v163 = *(a1 + 200);
        v164 = *(v10 + 14);
        v165 = *(a1 + 252);
        v166 = *(a2 + 12);
        v167 = __n[0];
        v168 = __n[0] + 2;
        if (v168 <= v98)
        {
          v169 = v208;
          *v208 = __rev16(v166);
          v170 = v95;
          v171 = v126;
          v172 = v166;
          logb = v165;
          v173 = v164;
          v201 = v168;
          memcpy(v208 + 1, v170, v167);
          v168 = v201;
          v164 = v173;
          v165 = logb;
          v166 = v172;
          v126 = v171;
        }

        else
        {
          v169 = 0;
        }

        *&__n[3] = 67111683;
        v221 = v163;
        v222 = 1024;
        v223 = v164;
        v224 = 1024;
        *v225 = v165;
        *&v225[4] = 2160;
        *&v225[6] = 1752392040;
        v226 = 1040;
        *v227 = v126;
        *&v227[4] = 2101;
        *&v227[6] = v123;
        v228 = 1024;
        v229 = v213;
        v230 = 1024;
        v231 = v166;
        v232 = 2160;
        *v233 = 1752392040;
        *&v233[8] = 1040;
        *&v233[10] = v168;
        v234 = 2101;
        v235[0] = v169;
        v161 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v162 = v203;
      }

      v174 = 84;
      goto LABEL_216;
    }

    goto LABEL_219;
  }

  if (*(a2 + 32) != -2 && IsLocalDomain(*(a2 + 40)))
  {
    v90 = *(a1 + 252);
    if (v90)
    {
      v91 = AWDLInterfaceID == v90 || WiFiAwareInterfaceID == v90;
    }

    else
    {
      v91 = (*(a1 + 250) >> 4) & 1;
    }

    v131 = *(a2 + 40);
    monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
    bzero(&__n[3], 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v131, &__n[3]);
    _mdns_powerlog_bonjour_event(0xAu, v91, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
    *v10 = monotonic_time_ns;
  }

  if (mDNS_McastLoggingEnabled)
  {
    LogMcastService(a2, a1, 1, v71, v72, v73, v74, v75, v192);
  }

  v8 = 0;
  v10[1] = *(a1 + 176);
  *(a1 + 176) = v10;
  return v8;
}

void ___handle_regrecord_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    v20 = *(a1 + 32);
    if (*(v20 + 64) && (*(v20 + 27) & 1) != 0)
    {
      goto LABEL_17;
    }

    v13 = *(v20 + 56);
    if (!v13)
    {
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      *(v20 + 56) = 0;
      v21 = _handle_regrecord_request_start(*(a1 + 40), v13);
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = -65570;
    }

    v22 = *(a1 + 40);
    v25 = 0;
    if (GenerateNTDResponse(0, 0, v22, &v25, 0x45, 0, v21))
    {
      v23 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          v24 = *(v22 + 200);
          *buf = 67109376;
          v27 = v24;
          v28 = 1024;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceRegisterRecord _return_regrecord_request_error: error(%d)", buf, 0xEu);
        }
      }

      else
      {
        v23 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      append_reply(v22, v25);
    }

LABEL_17:
    KQueueUnlock("_handle_regrecord_request_with_trust", v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t LocateSubordinateRequest(uint64_t result)
{
  v1 = all_requests;
  if (all_requests)
  {
    while (*(v1 + 24) != result || *(v1 + 232) != *(result + 232) || *(v1 + 236) != *(result + 236))
    {
      v1 = *(v1 + 16);
      if (!v1)
      {
        return result;
      }
    }

    return v1;
  }

  return result;
}

uint64_t handle_tsr_update_request(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(a2 + 40), *(a2 + 24));
  *v29 = 0;
  *&v29[8] = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, v29);
  if (a3 > 0x93A80)
  {
    v9 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        return 4294901756;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v12 = *(a2 + 40);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_14:
            v14 = 257;
            goto LABEL_50;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_14;
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
      v9 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        return 4294901756;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v17 = *(a2 + 40);
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_24:
            v14 = 257;
            goto LABEL_50;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (&v17[-v11] >= 256)
          {
            goto LABEL_24;
          }
        }

        v14 = (v17 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_50:
    *v29 = 67110147;
    *&v29[4] = a3;
    *&v29[8] = 1024;
    *&v29[10] = 604800;
    *&v29[14] = 2160;
    *&v29[16] = 1752392040;
    *&v29[24] = 1040;
    *&v29[26] = v14;
    v30 = 2101;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "tsrTimestamp[%u] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v29, 0x28u);
    return 4294901756;
  }

  if (v8)
  {
    return updateTSRRecord(a1, v8, *v29 - a3, a4);
  }

  v15 = 4294901755;
  v19 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v20 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    v21 = *(a2 + 40);
    if (v21)
    {
      v22 = *(a2 + 40);
      while (1)
      {
        if (!v22 || (v23 = *v22, v23 > 0x3F))
        {
LABEL_37:
          v24 = 257;
          goto LABEL_57;
        }

        if (!*v22)
        {
          break;
        }

        v22 += v23 + 1;
        if (&v22[-v21] >= 256)
        {
          goto LABEL_37;
        }
      }

      v24 = (v22 - v21 + 1);
    }

    else
    {
      v24 = 0;
    }

LABEL_57:
    *v29 = 141558531;
    *&v29[4] = 1752392040;
    *&v29[12] = 1040;
    *&v29[14] = v24;
    *&v29[18] = 2101;
    *&v29[20] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No existing TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v29, 0x1Cu);
    return v15;
  }

  v19 = mDNSLogCategory_mDNS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a2 + 40);
    if (v21)
    {
      v26 = *(a2 + 40);
      while (1)
      {
        if (!v26 || (v27 = *v26, v27 > 0x3F))
        {
LABEL_45:
          v24 = 257;
          goto LABEL_57;
        }

        if (!*v26)
        {
          break;
        }

        v26 += v27 + 1;
        if (&v26[-v21] >= 256)
        {
          goto LABEL_45;
        }
      }

      v24 = (v26 - v21 + 1);
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_57;
  }

  return v15;
}

void ___handle_regrecord_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void queryrecord_result_reply(uint64_t **a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  bzero(__s, 0x3F1uLL);
  v800 = a6;
  if (!a5 || !&_NEHelperTrackerGetAppInfo)
  {
    v16 = 0;
    *&__n[3] = 0;
    goto LABEL_19;
  }

  v13 = *(a3 + 4);
  *&__n[3] = 0;
  if (v13 == 28 || v13 == 1)
  {
    if (!*(a7 + 289))
    {
      v16 = 1;
      goto LABEL_19;
    }

    v16 = 1;
    if (resolved_cache_get_tracker_state(a2, &__n[3], 0, 0, 0) == 2 && !*&__n[3])
    {
      v15 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }

      v17 = *(a7 + 200);
      v18 = bswap32(*(a2 + 340)) >> 16;
      LODWORD(buf.tv_sec) = 67109376;
      HIDWORD(buf.tv_sec) = v17;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[R%u->Q%u] queryrecord_result_reply NULL tracker hostname", &buf, 0xEu);
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_19:
  ConvertDomainNameToCString_withescape(*(a3 + 32), __s);
  v801 = v16;
  if (*(a2 + 144) && (v24 = *(a3 + 56)) != 0)
  {
    validation_result = dnssec_obj_resource_record_member_get_validation_result(v24);
    if (validation_result == 2)
    {
      v26 = 2097184;
    }

    else
    {
      v26 = 0;
    }

    if (validation_result == 1)
    {
      v27 = 2097168;
    }

    else
    {
      v27 = v26;
    }

    v799 = v27;
  }

  else
  {
    v799 = 0;
  }

  v28 = *(a2 + 340);
  v29 = *(a7 + 228);
  v30 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 24), 0, v19, v20, v21, v22, v23);
  v804 = a2;
  v31 = a2 + 376;
  v32 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v33 = *(a7 + 208);
  buf.tv_sec = 0;
  buf.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &buf);
  if (v33)
  {
    v37 = LODWORD(buf.tv_sec) - v33 <= 299;
  }

  else
  {
    v37 = 0;
  }

  v38 = !v37;
  v803 = a7;
  if (v29 != 8)
  {
    if (v38)
    {
      *(a7 + 208) = buf.tv_sec;
      v53 = *(a3 + 56);
      if (v53)
      {
        v54 = v30;
        v55 = dnssec_obj_resource_record_member_get_validation_result(v53);
        v56 = *(v804 + 340);
        v58 = (a3 + 12);
        v57 = *(a3 + 12);
        v59 = v57 < 0x201;
        if (v55)
        {
          if (!*(v804 + 340))
          {
            if (v57 >= 0x201)
            {
              v57 = malloc_type_malloc(v57, 0x7A5A2961uLL);
              if (!v57)
              {
                goto LABEL_1061;
              }

              v46 = v57;
              LODWORD(v57) = *v58;
              v156 = v57;
              v155 = v46;
            }

            else
            {
              v46 = 0;
              v155 = &word_1001787D0;
              v156 = 512;
            }

            v227 = v32;
            if (v57)
            {
              *&__n[1] = 0;
              __n[0] = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v155, v156, __n, &__n[1], v34, v35, v36);
              if (*&__n[1])
              {
                goto LABEL_951;
              }

              v229 = RDataBytesPointer;
              if (__n[0] >= 0x1FFuLL)
              {
                v455 = __n[0] + 2;
                v230 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                if (!v230)
                {
                  goto LABEL_1061;
                }

                v743 = v455;
                v231 = v230;
              }

              else
              {
                v230 = 0;
                v231 = word_1001789D0;
                v743 = 512;
              }

              v726 = v231;
              v769 = v230;
              if (v28)
              {
                v448 = mDNSLogCategory_Default;
              }

              else
              {
                v448 = mDNSLogCategory_mDNS;
              }

              if (mDNS_SensitiveLoggingEnableCount && v448 != mDNSLogCategory_State)
              {
                if (v28)
                {
                  v456 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v456 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v456, OS_LOG_TYPE_DEFAULT))
                {
                  v457 = a5 != 0;
                  v458 = *(v803 + 200);
                  v459 = v31;
                  loga = v456;
                  while (1)
                  {
                    if (!v459 || (v460 = *v459, v460 > 0x3F))
                    {
LABEL_728:
                      v461 = 257;
                      goto LABEL_943;
                    }

                    if (!*v459)
                    {
                      break;
                    }

                    v459 += v460 + 1;
                    if (&v459[-v31] >= 256)
                    {
                      goto LABEL_728;
                    }
                  }

                  v461 = (v459 - v31 + 1);
LABEL_943:
                  v631 = *(a3 + 4);
                  v632 = __n[0];
                  v633 = __n[0] + 2;
                  if (v633 <= v743)
                  {
                    v634 = v726;
                    *v726 = __rev16(v631);
                    v635 = v229;
                    v705 = v631;
                    v636 = v458;
                    v761 = v461;
                    v637 = v633;
                    memcpy(v726 + 1, v635, v632);
                    v631 = v705;
                    v457 = a5 != 0;
                    v633 = v637;
                    v461 = v761;
                    v458 = v636;
                  }

                  else
                  {
                    v634 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67112195;
                  HIDWORD(buf.tv_sec) = v458;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v457;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v807 = a4;
                  *&v807[4] = 1024;
                  *&v807[6] = v54;
                  strcpy(&v808, "p\bhash");
                  HIBYTE(v808) = 0;
                  *v809 = 0;
                  *&v809[2] = 1040;
                  *&v809[4] = v461;
                  *&v809[8] = 2101;
                  *&v809[10] = v31;
                  *&v809[18] = 1024;
                  *&v809[20] = v227;
                  *&v809[24] = 1026;
                  *&v809[26] = v55;
                  *&v809[30] = 1024;
                  *&v809[32] = v631;
                  *&v809[36] = 2160;
                  *&v809[38] = 1752392040;
                  *&v809[46] = 1040;
                  *&v809[48] = v633;
                  *&v809[52] = 2101;
                  *&v809[54] = v634;
                  v616 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  goto LABEL_947;
                }

LABEL_949:
                a7 = v803;
                v561 = v769;
                if (!v769)
                {
                  goto LABEL_951;
                }

                goto LABEL_950;
              }

              if (!os_log_type_enabled(v448, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_949;
              }

              v483 = a5 != 0;
              v484 = *(v803 + 200);
              v485 = v31;
              while (1)
              {
                if (!v485 || (v486 = *v485, v486 > 0x3F))
                {
LABEL_768:
                  v487 = 257;
                  goto LABEL_932;
                }

                if (!*v485)
                {
                  break;
                }

                v485 += v486 + 1;
                if (&v485[-v31] >= 256)
                {
                  goto LABEL_768;
                }
              }

              v487 = (v485 - v31 + 1);
LABEL_932:
              v617 = *(a3 + 4);
              v618 = __n[0];
              v619 = __n[0] + 2;
              if (v619 <= v743)
              {
                v620 = v726;
                *v726 = __rev16(v617);
                v621 = v229;
                logk = v487;
                v759 = v484;
                v622 = v619;
                v703 = v617;
                memcpy(v726 + 1, v621, v618);
                v617 = v703;
                v483 = a5 != 0;
                v619 = v622;
                v487 = logk;
                v484 = v759;
              }

              else
              {
                v620 = 0;
              }

              LODWORD(buf.tv_sec) = 67112195;
              HIDWORD(buf.tv_sec) = v484;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v483;
              HIWORD(buf.tv_nsec) = 1024;
              *v807 = a4;
              *&v807[4] = 1024;
              *&v807[6] = v54;
              strcpy(&v808, "p\bhash");
              HIBYTE(v808) = 0;
              *v809 = 0;
              *&v809[2] = 1040;
              *&v809[4] = v487;
              *&v809[8] = 2101;
              *&v809[10] = v31;
              *&v809[18] = 1024;
              *&v809[20] = v227;
              *&v809[24] = 1026;
              *&v809[26] = v55;
              *&v809[30] = 1024;
              *&v809[32] = v617;
              *&v809[36] = 2160;
              *&v809[38] = 1752392040;
              *&v809[46] = 1040;
              *&v809[48] = v619;
              *&v809[52] = 2101;
              *&v809[54] = v620;
              v616 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_936:
              v623 = v448;
LABEL_948:
              _os_log_impl(&_mh_execute_header, v623, OS_LOG_TYPE_DEFAULT, v616, &buf, 0x60u);
              goto LABEL_949;
            }

            if (v28)
            {
              v125 = mDNSLogCategory_Default;
            }

            else
            {
              v125 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v125 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_951;
              }

              v251 = a5 != 0;
              v252 = *(a7 + 200);
              v402 = v31;
              while (1)
              {
                if (!v402 || (v403 = *v402, v403 > 0x3F))
                {
LABEL_608:
                  v255 = 257;
                  goto LABEL_898;
                }

                if (!*v402)
                {
                  break;
                }

                v402 += v403 + 1;
                if (&v402[-v31] >= 256)
                {
                  goto LABEL_608;
                }
              }

              v255 = (v402 - v31 + 1);
            }

            else
            {
              if (v28)
              {
                v125 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v125 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_951;
              }

              v251 = a5 != 0;
              v252 = *(a7 + 200);
              v253 = v31;
              while (1)
              {
                if (!v253 || (v254 = *v253, v254 > 0x3F))
                {
LABEL_376:
                  v255 = 257;
                  goto LABEL_898;
                }

                if (!*v253)
                {
                  break;
                }

                v253 += v254 + 1;
                if (&v253[-v31] >= 256)
                {
                  goto LABEL_376;
                }
              }

              v255 = (v253 - v31 + 1);
            }

LABEL_898:
            v585 = *(a3 + 4);
            LODWORD(buf.tv_sec) = 67111427;
            HIDWORD(buf.tv_sec) = v252;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v251;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = a4;
            *&v807[4] = 1024;
            *&v807[6] = v54;
            strcpy(&v808, "p\bhash");
            HIBYTE(v808) = 0;
            *v809 = 0;
            *&v809[2] = 1040;
            *&v809[4] = v255;
            *&v809[8] = 2101;
            *&v809[10] = v31;
            *&v809[18] = 1024;
            *&v809[20] = v227;
            *&v809[24] = 1026;
            *&v809[26] = v55;
            *&v809[30] = 1024;
            *&v809[32] = v585;
            v513 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_899:
            v530 = v125;
            v531 = 70;
            goto LABEL_900;
          }

          if (v57 >= 0x201)
          {
            v173 = malloc_type_malloc(v57, 0x7A5A2961uLL);
            if (!v173)
            {
              goto LABEL_1061;
            }

            v46 = v173;
            v61 = *v58;
            v60 = v173;
            if (*v58)
            {
LABEL_51:
              *&__n[1] = 0;
              __n[0] = 0;
              v62 = ResourceRecordGetRDataBytesPointer(a3, v60, v61, __n, &__n[1], v34, v35, v36);
              if (*&__n[1])
              {
                goto LABEL_892;
              }

              v63 = v62;
              v785 = v32;
              if (__n[0] >= 0x1FFuLL)
              {
                v763 = __n[0] + 2;
                v348 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                if (!v348)
                {
                  goto LABEL_1061;
                }

                v51 = v348;
                v64 = v348;
              }

              else
              {
                v51 = 0;
                v64 = word_1001789D0;
                v763 = 512;
              }

              v746 = v64;
              if (v28)
              {
                v340 = mDNSLogCategory_Default;
              }

              else
              {
                v340 = mDNSLogCategory_mDNS;
              }

              if (mDNS_SensitiveLoggingEnableCount && v340 != mDNSLogCategory_State)
              {
                if (v28)
                {
                  v349 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v349 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
                {
                  v350 = a5 != 0;
                  v351 = *(v803 + 200);
                  v352 = bswap32(*(v804 + 340)) >> 16;
                  v353 = v31;
                  log = v349;
                  v724 = v51;
                  while (1)
                  {
                    if (!v353 || (v354 = *v353, v354 > 0x3F))
                    {
LABEL_548:
                      v355 = 257;
                      goto LABEL_883;
                    }

                    if (!*v353)
                    {
                      break;
                    }

                    v353 += v354 + 1;
                    if (&v353[-v31] >= 256)
                    {
                      goto LABEL_548;
                    }
                  }

                  v355 = (v353 - v31 + 1);
LABEL_883:
                  v580 = *(a3 + 4);
                  v581 = __n[0];
                  v582 = __n[0] + 2;
                  if (v582 <= v763)
                  {
                    v583 = v746;
                    LOWORD(v746->isa) = __rev16(v580);
                    v701 = v351;
                    v711 = v582;
                    v781 = v352;
                    memcpy(&v746->isa + 2, v63, v581);
                    v351 = v701;
                    v582 = v711;
                    v352 = v781;
                    v350 = a5 != 0;
                  }

                  else
                  {
                    v583 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67112451;
                  HIDWORD(buf.tv_sec) = v351;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v352;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v807 = v350;
                  *&v807[4] = 1024;
                  *&v807[6] = a4;
                  LOWORD(v808) = 1024;
                  *(&v808 + 2) = v54;
                  HIWORD(v808) = 2160;
                  *v809 = 1752392040;
                  *&v809[8] = 1040;
                  *&v809[10] = v355;
                  *&v809[14] = 2101;
                  *&v809[16] = v31;
                  *&v809[24] = 1024;
                  *&v809[26] = v785;
                  *&v809[30] = 1026;
                  *&v809[32] = v55;
                  *&v809[36] = 1024;
                  *&v809[38] = v580;
                  *&v809[42] = 2160;
                  *&v809[44] = 1752392040;
                  *&v809[52] = 1040;
                  *&v809[54] = v582;
                  *&v809[58] = 2101;
                  *&v809[60] = v583;
                  v568 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  goto LABEL_887;
                }

LABEL_889:
                if (v51)
                {
                  v553 = v51;
                  goto LABEL_891;
                }

                goto LABEL_892;
              }

              if (!os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_889;
              }

              v380 = a5 != 0;
              v381 = *(v803 + 200);
              v382 = bswap32(*(v804 + 340)) >> 16;
              v383 = v31;
              v724 = v51;
              while (1)
              {
                if (!v383 || (v384 = *v383, v384 > 0x3F))
                {
LABEL_588:
                  v385 = 257;
                  goto LABEL_872;
                }

                if (!*v383)
                {
                  break;
                }

                v383 += v384 + 1;
                if (&v383[-v31] >= 256)
                {
                  goto LABEL_588;
                }
              }

              v385 = (v383 - v31 + 1);
LABEL_872:
              v569 = *(a3 + 4);
              v570 = __n[0];
              v571 = __n[0] + 2;
              if (v571 <= v763)
              {
                v572 = v746;
                LOWORD(v746->isa) = __rev16(v569);
                v573 = v63;
                v709 = v571;
                logi = v381;
                v779 = v382;
                v574 = v569;
                memcpy(&v746->isa + 2, v573, v570);
                v569 = v574;
                v571 = v709;
                v381 = logi;
                v382 = v779;
                v380 = a5 != 0;
              }

              else
              {
                v572 = 0;
              }

              LODWORD(buf.tv_sec) = 67112451;
              HIDWORD(buf.tv_sec) = v381;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v382;
              HIWORD(buf.tv_nsec) = 1024;
              *v807 = v380;
              *&v807[4] = 1024;
              *&v807[6] = a4;
              LOWORD(v808) = 1024;
              *(&v808 + 2) = v54;
              HIWORD(v808) = 2160;
              *v809 = 1752392040;
              *&v809[8] = 1040;
              *&v809[10] = v385;
              *&v809[14] = 2101;
              *&v809[16] = v31;
              *&v809[24] = 1024;
              *&v809[26] = v785;
              *&v809[30] = 1026;
              *&v809[32] = v55;
              *&v809[36] = 1024;
              *&v809[38] = v569;
              *&v809[42] = 2160;
              *&v809[44] = 1752392040;
              *&v809[52] = 1040;
              *&v809[54] = v571;
              *&v809[58] = 2101;
              *&v809[60] = v572;
              v568 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_876:
              v575 = v340;
LABEL_888:
              _os_log_impl(&_mh_execute_header, v575, OS_LOG_TYPE_DEFAULT, v568, &buf, 0x66u);
              v51 = v724;
              goto LABEL_889;
            }
          }

          else
          {
            v46 = 0;
            v60 = &word_1001787D0;
            v61 = 512;
            if (*(a3 + 12))
            {
              goto LABEL_51;
            }
          }

          v174 = v32;
          if (v28)
          {
            v166 = mDNSLogCategory_Default;
          }

          else
          {
            v166 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v166 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v175 = a5 != 0;
            v176 = *(a7 + 200);
            v177 = bswap32(*(v804 + 340)) >> 16;
            v261 = v31;
            while (1)
            {
              if (!v261 || (v262 = *v261, v262 > 0x3F))
              {
LABEL_410:
                v180 = 257;
                goto LABEL_819;
              }

              if (!*v261)
              {
                break;
              }

              v261 += v262 + 1;
              if (&v261[-v31] >= 256)
              {
                goto LABEL_410;
              }
            }

            v180 = (v261 - v31 + 1);
          }

          else
          {
            if (v28)
            {
              v166 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v166 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v175 = a5 != 0;
            v176 = *(a7 + 200);
            v177 = bswap32(*(v804 + 340)) >> 16;
            v178 = v31;
            while (1)
            {
              if (!v178 || (v179 = *v178, v179 > 0x3F))
              {
LABEL_206:
                v180 = 257;
                goto LABEL_819;
              }

              if (!*v178)
              {
                break;
              }

              v178 += v179 + 1;
              if (&v178[-v31] >= 256)
              {
                goto LABEL_206;
              }
            }

            v180 = (v178 - v31 + 1);
          }

LABEL_819:
          v529 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67111683;
          HIDWORD(buf.tv_sec) = v176;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v177;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = v175;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v54;
          HIWORD(v808) = 2160;
          *v809 = 1752392040;
          *&v809[8] = 1040;
          *&v809[10] = v180;
          *&v809[14] = 2101;
          *&v809[16] = v31;
          *&v809[24] = 1024;
          *&v809[26] = v174;
          *&v809[30] = 1026;
          *&v809[32] = v55;
          *&v809[36] = 1024;
          *&v809[38] = v529;
          v513 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          goto LABEL_820;
        }

        v30 = v54;
        if (!*(v804 + 340))
        {
LABEL_92:
          if (v59)
          {
            v46 = 0;
            v112 = &word_1001787D0;
            v113 = 512;
          }

          else
          {
            v57 = malloc_type_malloc(v57, 0x7A5A2961uLL);
            if (!v57)
            {
              goto LABEL_1061;
            }

            v46 = v57;
            LODWORD(v57) = *v58;
            v113 = v57;
            v112 = v46;
          }

          v197 = v32;
          if (v57)
          {
            *&__n[1] = 0;
            __n[0] = 0;
            v198 = ResourceRecordGetRDataBytesPointer(a3, v112, v113, __n, &__n[1], v34, v35, v36);
            if (*&__n[1])
            {
              goto LABEL_951;
            }

            v199 = v198;
            v797 = v30;
            if (__n[0] >= 0x1FFuLL)
            {
              v422 = __n[0] + 2;
              v423 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
              if (!v423)
              {
                goto LABEL_1061;
              }

              v195 = v423;
              v765 = v422;
              v200 = v423;
            }

            else
            {
              v195 = 0;
              v200 = word_1001789D0;
              v765 = 512;
            }

            if (v28)
            {
              v415 = mDNSLogCategory_Default;
            }

            else
            {
              v415 = mDNSLogCategory_mDNS;
            }

            if (mDNS_SensitiveLoggingEnableCount && v415 != mDNSLogCategory_State)
            {
              if (v28)
              {
                v424 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v424 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v424, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_924;
              }

              v425 = a5 != 0;
              v426 = *(v803 + 200);
              v427 = v31;
              v748 = v424;
              while (1)
              {
                if (!v427 || (v428 = *v427, v428 > 0x3F))
                {
LABEL_661:
                  v429 = 257;
                  goto LABEL_918;
                }

                if (!*v427)
                {
                  break;
                }

                v427 += v428 + 1;
                if (&v427[-v31] >= 256)
                {
                  goto LABEL_661;
                }
              }

              v429 = (v427 - v31 + 1);
LABEL_918:
              v604 = *(a3 + 4);
              v605 = __n[0];
              v606 = __n[0] + 2;
              if (v606 <= v765)
              {
                v607 = v200;
                *v200 = __rev16(v604);
                v608 = v200 + 1;
                v609 = v426;
                v740 = v429;
                v783 = v606;
                memcpy(v608, v199, v605);
                v606 = v783;
                v429 = v740;
                v426 = v609;
                v425 = a5 != 0;
              }

              else
              {
                v607 = 0;
              }

              LODWORD(buf.tv_sec) = 67111939;
              HIDWORD(buf.tv_sec) = v426;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v425;
              HIWORD(buf.tv_nsec) = 1024;
              *v807 = a4;
              *&v807[4] = 1024;
              *&v807[6] = v797;
              strcpy(&v808, "p\bhash");
              HIBYTE(v808) = 0;
              *v809 = 0;
              *&v809[2] = 1040;
              *&v809[4] = v429;
              *&v809[8] = 2101;
              *&v809[10] = v31;
              *&v809[18] = 1024;
              *&v809[20] = v197;
              *&v809[24] = 1024;
              *&v809[26] = v604;
              *&v809[30] = 2160;
              *&v809[32] = 1752392040;
              *&v809[40] = 1040;
              *&v809[42] = v606;
              *&v809[46] = 2101;
              *&v809[48] = v607;
              v591 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_922:
              v597 = v748;
              goto LABEL_923;
            }

            if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
            {
              v442 = a5 != 0;
              v443 = *(v803 + 200);
              v444 = v31;
              while (1)
              {
                if (!v444 || (v445 = *v444, v445 > 0x3F))
                {
LABEL_691:
                  v446 = 257;
                  goto LABEL_907;
                }

                if (!*v444)
                {
                  break;
                }

                v444 += v445 + 1;
                if (&v444[-v31] >= 256)
                {
                  goto LABEL_691;
                }
              }

              v446 = (v444 - v31 + 1);
LABEL_907:
              v592 = *(a3 + 4);
              v593 = __n[0];
              v594 = __n[0] + 2;
              if (v594 <= v765)
              {
                *v200 = __rev16(v592);
                v595 = v199;
                v738 = v446;
                v596 = v594;
                v757 = v592;
                memcpy(v200 + 1, v595, v593);
                v592 = v757;
                v594 = v596;
                v446 = v738;
                v442 = a5 != 0;
              }

              else
              {
                v200 = 0;
              }

              LODWORD(buf.tv_sec) = 67111939;
              HIDWORD(buf.tv_sec) = v443;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v442;
              HIWORD(buf.tv_nsec) = 1024;
              *v807 = a4;
              *&v807[4] = 1024;
              *&v807[6] = v797;
              strcpy(&v808, "p\bhash");
              HIBYTE(v808) = 0;
              *v809 = 0;
              *&v809[2] = 1040;
              *&v809[4] = v446;
              *&v809[8] = 2101;
              *&v809[10] = v31;
              *&v809[18] = 1024;
              *&v809[20] = v197;
              *&v809[24] = 1024;
              *&v809[26] = v592;
              *&v809[30] = 2160;
              *&v809[32] = 1752392040;
              *&v809[40] = 1040;
              *&v809[42] = v594;
              *&v809[46] = 2101;
              *&v809[48] = v200;
              v591 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              goto LABEL_911;
            }

LABEL_924:
            a7 = v803;
            if (!v195)
            {
              goto LABEL_951;
            }

            v561 = v195;
            goto LABEL_950;
          }

          if (v28)
          {
            v211 = mDNSLogCategory_Default;
          }

          else
          {
            v211 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v211 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v217 = a5 != 0;
            v218 = *(a7 + 200);
            v335 = v31;
            while (1)
            {
              if (!v335 || (v336 = *v335, v336 > 0x3F))
              {
LABEL_511:
                v221 = 257;
                goto LABEL_849;
              }

              if (!*v335)
              {
                break;
              }

              v335 += v336 + 1;
              if (&v335[-v31] >= 256)
              {
                goto LABEL_511;
              }
            }

            v221 = (v335 - v31 + 1);
          }

          else
          {
            if (v28)
            {
              v211 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v211 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v217 = a5 != 0;
            v218 = *(a7 + 200);
            v219 = v31;
            while (1)
            {
              if (!v219 || (v220 = *v219, v220 > 0x3F))
              {
LABEL_294:
                v221 = 257;
                goto LABEL_849;
              }

              if (!*v219)
              {
                break;
              }

              v219 += v220 + 1;
              if (&v219[-v31] >= 256)
              {
                goto LABEL_294;
              }
            }

            v221 = (v219 - v31 + 1);
          }

LABEL_849:
          v555 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67111171;
          HIDWORD(buf.tv_sec) = v218;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v217;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a4;
          *&v807[4] = 1024;
          *&v807[6] = v30;
          strcpy(&v808, "p\bhash");
          HIBYTE(v808) = 0;
          *v809 = 0;
          *&v809[2] = 1040;
          *&v809[4] = v221;
          *&v809[8] = 2101;
          *&v809[10] = v31;
          *&v809[18] = 1024;
          *&v809[20] = v197;
          *&v809[24] = 1024;
          *&v809[26] = v555;
          v513 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
LABEL_850:
          v530 = v211;
          v531 = 64;
          goto LABEL_900;
        }
      }

      else
      {
        v58 = (a3 + 12);
        LODWORD(v57) = *(a3 + 12);
        v59 = v57 < 0x201;
        if (!*(v804 + 340))
        {
          goto LABEL_92;
        }
      }

      if (v59)
      {
        v46 = 0;
        v96 = &word_1001787D0;
        v97 = 512;
        if (v57)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v132 = malloc_type_malloc(v57, 0x7A5A2961uLL);
        if (!v132)
        {
          goto LABEL_1061;
        }

        v46 = v132;
        v97 = *v58;
        v96 = v132;
        if (*v58)
        {
LABEL_76:
          *&__n[1] = 0;
          __n[0] = 0;
          v98 = ResourceRecordGetRDataBytesPointer(a3, v96, v97, __n, &__n[1], v34, v35, v36);
          if (*&__n[1])
          {
            goto LABEL_892;
          }

          v99 = v98;
          v788 = v32;
          v792 = v30;
          if (__n[0] >= 0x1FFuLL)
          {
            v101 = __n[0] + 2;
            v278 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
            if (!v278)
            {
              goto LABEL_1061;
            }

            v93 = v278;
            v100 = v278;
          }

          else
          {
            v93 = 0;
            v100 = word_1001789D0;
            v101 = 512;
          }

          if (v28)
          {
            v269 = mDNSLogCategory_Default;
          }

          else
          {
            v269 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v269 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_842;
            }

            v313 = a5 != 0;
            v314 = *(v803 + 200);
            v315 = bswap32(*(v804 + 340)) >> 16;
            v316 = v31;
            while (1)
            {
              if (!v316 || (v317 = *v316, v317 > 0x3F))
              {
LABEL_489:
                v318 = v101;
                v319 = v100;
                v320 = 257;
                goto LABEL_827;
              }

              if (!*v316)
              {
                break;
              }

              v316 += v317 + 1;
              if (&v316[-v31] >= 256)
              {
                goto LABEL_489;
              }
            }

            v318 = v101;
            v319 = v100;
            v320 = (v316 - v31 + 1);
LABEL_827:
            v538 = *(a3 + 4);
            v539 = __n[0];
            v540 = __n[0] + 2;
            if (v540 <= v318)
            {
              *v319 = __rev16(v538);
              v541 = v99;
              v753 = v315;
              v775 = v540;
              v542 = v538;
              memcpy(v319 + 1, v541, v539);
              v538 = v542;
              v540 = v775;
              v315 = v753;
              v313 = a5 != 0;
            }

            else
            {
              v319 = 0;
            }

            LODWORD(buf.tv_sec) = 67112195;
            HIDWORD(buf.tv_sec) = v314;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v315;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = v313;
            *&v807[4] = 1024;
            *&v807[6] = a4;
            LOWORD(v808) = 1024;
            *(&v808 + 2) = v792;
            HIWORD(v808) = 2160;
            *v809 = 1752392040;
            *&v809[8] = 1040;
            *&v809[10] = v320;
            *&v809[14] = 2101;
            *&v809[16] = v31;
            *&v809[24] = 1024;
            *&v809[26] = v788;
            *&v809[30] = 1024;
            *&v809[32] = v538;
            *&v809[36] = 2160;
            *&v809[38] = 1752392040;
            *&v809[46] = 1040;
            *&v809[48] = v540;
            *&v809[52] = 2101;
            *&v809[54] = v319;
            v537 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_841;
          }

          if (v28)
          {
            v269 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v269 = mDNSLogCategory_mDNS;
          }

          if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
          {
            v279 = a5 != 0;
            v280 = *(v803 + 200);
            v281 = bswap32(*(v804 + 340)) >> 16;
            v282 = v31;
            while (1)
            {
              if (!v282 || (v283 = *v282, v283 > 0x3F))
              {
LABEL_449:
                v284 = v101;
                v285 = v100;
                v286 = 257;
                goto LABEL_837;
              }

              if (!*v282)
              {
                break;
              }

              v282 += v283 + 1;
              if (&v282[-v31] >= 256)
              {
                goto LABEL_449;
              }
            }

            v284 = v101;
            v285 = v100;
            v286 = (v282 - v31 + 1);
LABEL_837:
            v548 = *(a3 + 4);
            v549 = __n[0];
            v550 = __n[0] + 2;
            if (v550 <= v284)
            {
              *v285 = __rev16(v548);
              v777 = v269;
              v551 = v280;
              v552 = v281;
              v732 = v286;
              v755 = v548;
              memcpy(v285 + 1, v99, v549);
              v548 = v755;
              v286 = v732;
              v281 = v552;
              v280 = v551;
              v269 = v777;
              v279 = a5 != 0;
            }

            else
            {
              v285 = 0;
            }

            LODWORD(buf.tv_sec) = 67112195;
            HIDWORD(buf.tv_sec) = v280;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v281;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = v279;
            *&v807[4] = 1024;
            *&v807[6] = a4;
            LOWORD(v808) = 1024;
            *(&v808 + 2) = v792;
            HIWORD(v808) = 2160;
            *v809 = 1752392040;
            *&v809[8] = 1040;
            *&v809[10] = v286;
            *&v809[14] = 2101;
            *&v809[16] = v31;
            *&v809[24] = 1024;
            *&v809[26] = v788;
            *&v809[30] = 1024;
            *&v809[32] = v548;
            *&v809[36] = 2160;
            *&v809[38] = 1752392040;
            *&v809[46] = 1040;
            *&v809[48] = v550;
            *&v809[52] = 2101;
            *&v809[54] = v285;
            v537 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_841;
          }

LABEL_842:
          if (v93)
          {
            v553 = v93;
LABEL_891:
            free(v553);
          }

LABEL_892:
          a7 = v803;
          goto LABEL_951;
        }
      }

      v133 = v32;
      if (v28)
      {
        v125 = mDNSLogCategory_Default;
      }

      else
      {
        v125 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v125 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_951;
        }

        v134 = a5 != 0;
        v135 = *(a7 + 200);
        v136 = bswap32(*(v804 + 340)) >> 16;
        v244 = v31;
        while (1)
        {
          if (!v244 || (v245 = *v244, v245 > 0x3F))
          {
LABEL_342:
            v139 = 257;
            goto LABEL_788;
          }

          if (!*v244)
          {
            break;
          }

          v244 += v245 + 1;
          if (&v244[-v31] >= 256)
          {
            goto LABEL_342;
          }
        }

        v139 = (v244 - v31 + 1);
      }

      else
      {
        if (v28)
        {
          v125 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v125 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_951;
        }

        v134 = a5 != 0;
        v135 = *(a7 + 200);
        v136 = bswap32(*(v804 + 340)) >> 16;
        v137 = v31;
        while (1)
        {
          if (!v137 || (v138 = *v137, v138 > 0x3F))
          {
LABEL_136:
            v139 = 257;
            goto LABEL_788;
          }

          if (!*v137)
          {
            break;
          }

          v137 += v138 + 1;
          if (&v137[-v31] >= 256)
          {
            goto LABEL_136;
          }
        }

        v139 = (v137 - v31 + 1);
      }

LABEL_788:
      v514 = *(a3 + 4);
      LODWORD(buf.tv_sec) = 67111427;
      HIDWORD(buf.tv_sec) = v135;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v136;
      HIWORD(buf.tv_nsec) = 1024;
      *v807 = v134;
      *&v807[4] = 1024;
      *&v807[6] = a4;
      LOWORD(v808) = 1024;
      *(&v808 + 2) = v30;
      HIWORD(v808) = 2160;
      *v809 = 1752392040;
      *&v809[8] = 1040;
      *&v809[10] = v139;
      *&v809[14] = 2101;
      *&v809[16] = v31;
      *&v809[24] = 1024;
      *&v809[26] = v133;
      *&v809[30] = 1024;
      *&v809[32] = v514;
      v513 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_899;
    }

    v75 = *(a3 + 56);
    if (v75)
    {
      v76 = v30;
      v77 = dnssec_obj_resource_record_member_get_validation_result(v75);
      v68 = v804;
      v78 = *(v804 + 340);
      v80 = (a3 + 12);
      v79 = *(a3 + 12);
      v81 = v79 < 0x201;
      if (v77)
      {
        if (*(v804 + 340))
        {
          if (v79 >= 0x201)
          {
            v186 = malloc_type_malloc(v79, 0x7A5A2961uLL);
            if (!v186)
            {
              goto LABEL_1061;
            }

            v83 = v186;
            v46 = v186;
            v82 = *v80;
            if (*v80)
            {
LABEL_64:
              *&__n[1] = 0;
              __n[0] = 0;
              v84 = ResourceRecordGetRDataBytesPointer(a3, v83, v82, __n, &__n[1], v34, v35, v36);
              if (!*&__n[1])
              {
                v85 = v84;
                v786 = v32;
                if (__n[0] >= 0x1FFuLL)
                {
                  v87 = __n[0] + 2;
                  v88 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                  if (!v88)
                  {
                    goto LABEL_1061;
                  }

                  v86 = v88;
                }

                else
                {
                  v86 = 0;
                  v87 = 512;
                  v88 = word_1001789D0;
                }

                v767 = v88;
                if (v28)
                {
                  v356 = mDNSLogCategory_Default;
                }

                else
                {
                  v356 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v356 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_806;
                  }

                  v747 = v86;
                  v386 = a5 != 0;
                  v387 = *(v803 + 200);
                  v388 = bswap32(*(v804 + 340)) >> 16;
                  v389 = *(a3 + 4);
                  v390 = __n[0];
                  v391 = __n[0] + 2;
                  if (v391 <= v87)
                  {
                    v392 = v767;
                    *v767 = __rev16(v389);
                    v727 = v389;
                    logb = v388;
                    memcpy(v767 + 1, v85, v390);
                    v388 = logb;
                    v389 = v727;
                    v386 = a5 != 0;
                  }

                  else
                  {
                    v392 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67111683;
                  HIDWORD(buf.tv_sec) = v387;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v388;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v807 = v386;
                  *&v807[4] = 1024;
                  *&v807[6] = a4;
                  LOWORD(v808) = 1024;
                  *(&v808 + 2) = v76;
                  HIWORD(v808) = 1024;
                  *v809 = v786;
                  *&v809[4] = 1026;
                  *&v809[6] = v77;
                  *&v809[10] = 1024;
                  *&v809[12] = v389;
                  *&v809[16] = 2160;
                  *&v809[18] = 1752392040;
                  *&v809[26] = 1040;
                  *&v809[28] = v391;
                  *&v809[32] = 2101;
                  *&v809[34] = v392;
                  v515 = v356;
                  goto LABEL_797;
                }

                if (v28)
                {
                  v357 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v357 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                {
                  v747 = v86;
                  v358 = a5 != 0;
                  v359 = *(v803 + 200);
                  v360 = bswap32(*(v804 + 340)) >> 16;
                  v361 = *(a3 + 4);
                  v362 = __n[0];
                  v363 = __n[0] + 2;
                  if (v363 <= v87)
                  {
                    v364 = v767;
                    *v767 = __rev16(v361);
                    v729 = v361;
                    logd = v360;
                    memcpy(v767 + 1, v85, v362);
                    v360 = logd;
                    v361 = v729;
                    v358 = a5 != 0;
                  }

                  else
                  {
                    v364 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67111683;
                  HIDWORD(buf.tv_sec) = v359;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v360;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v807 = v358;
                  *&v807[4] = 1024;
                  *&v807[6] = a4;
                  LOWORD(v808) = 1024;
                  *(&v808 + 2) = v76;
                  HIWORD(v808) = 1024;
                  *v809 = v786;
                  *&v809[4] = 1026;
                  *&v809[6] = v77;
                  *&v809[10] = 1024;
                  *&v809[12] = v361;
                  *&v809[16] = 2160;
                  *&v809[18] = 1752392040;
                  *&v809[26] = 1040;
                  *&v809[28] = v363;
                  *&v809[32] = 2101;
                  *&v809[34] = v364;
                  v515 = v357;
LABEL_797:
                  _os_log_impl(&_mh_execute_header, v515, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &buf, 0x4Cu);
                  v86 = v747;
                }

LABEL_806:
                v68 = v804;
                if (v86)
                {
                  free(v86);
                }
              }

LABEL_808:
              a7 = v803;
              goto LABEL_952;
            }
          }

          else
          {
            v46 = 0;
            v82 = 512;
            v83 = &word_1001787D0;
            if (*(a3 + 12))
            {
              goto LABEL_64;
            }
          }

          v187 = v32;
          if (v28)
          {
            v188 = mDNSLogCategory_Default;
          }

          else
          {
            v188 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v188 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          else
          {
            if (v28)
            {
              v188 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v188 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          v189 = *(a7 + 200);
          v190 = bswap32(*(v804 + 340)) >> 16;
          v191 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67110912;
          HIDWORD(buf.tv_sec) = v189;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v190;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a5 != 0;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v76;
          HIWORD(v808) = 1024;
          *v809 = v187;
          *&v809[4] = 1026;
          *&v809[6] = v77;
          *&v809[10] = 1024;
          *&v809[12] = v191;
          v152 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_415:
          v266 = v188;
          v267 = 50;
LABEL_614:
          _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEFAULT, v152, &buf, v267);
          goto LABEL_952;
        }

        if (v79 >= 0x201)
        {
          v79 = malloc_type_malloc(v79, 0x7A5A2961uLL);
          if (!v79)
          {
            goto LABEL_1061;
          }

          v160 = v79;
          LODWORD(v79) = *v80;
          v46 = v160;
          v159 = v79;
        }

        else
        {
          v46 = 0;
          v159 = 512;
          v160 = &word_1001787D0;
        }

        if (!v79)
        {
          v258 = v32;
          if (v28)
          {
            v148 = mDNSLogCategory_Default;
          }

          else
          {
            v148 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v148 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          else
          {
            if (v28)
            {
              v148 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v148 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          v404 = *(a7 + 200);
          v405 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67110656;
          HIDWORD(buf.tv_sec) = v404;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = a5 != 0;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a4;
          *&v807[4] = 1024;
          *&v807[6] = v76;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v258;
          HIWORD(v808) = 1026;
          *v809 = v77;
          *&v809[4] = 1024;
          *&v809[6] = v405;
          v152 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          goto LABEL_613;
        }

        *&__n[1] = 0;
        __n[0] = 0;
        v237 = ResourceRecordGetRDataBytesPointer(a3, v160, v159, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_951;
        }

        v238 = v237;
        v790 = v32;
        if (__n[0] >= 0x1FFuLL)
        {
          v240 = __n[0] + 2;
          v241 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
          if (!v241)
          {
            goto LABEL_1061;
          }

          v239 = v241;
        }

        else
        {
          v239 = 0;
          v240 = 512;
          v241 = word_1001789D0;
        }

        v770 = v241;
        if (v28)
        {
          v470 = mDNSLogCategory_Default;
        }

        else
        {
          v470 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v470 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
          {
LABEL_864:
            a7 = v803;
            if (!v239)
            {
              goto LABEL_951;
            }

            v561 = v239;
LABEL_950:
            free(v561);
            goto LABEL_951;
          }

          v749 = v239;
          v494 = a5 != 0;
          v495 = *(v803 + 200);
          v496 = *(a3 + 4);
          v497 = __n[0];
          v498 = __n[0] + 2;
          if (v498 <= v240)
          {
            v499 = v770;
            *v770 = __rev16(v496);
            v734 = v496;
            memcpy(v770 + 1, v238, v497);
            v496 = v734;
            v494 = a5 != 0;
          }

          else
          {
            v499 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v495;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v494;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a4;
          *&v807[4] = 1024;
          *&v807[6] = v76;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v790;
          HIWORD(v808) = 1026;
          *v809 = v77;
          *&v809[4] = 1024;
          *&v809[6] = v496;
          *&v809[10] = 2160;
          *&v809[12] = 1752392040;
          *&v809[20] = 1040;
          *&v809[22] = v498;
          *&v809[26] = 2101;
          *&v809[28] = v499;
          v558 = v470;
        }

        else
        {
          if (v28)
          {
            v471 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v471 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_864;
          }

          v749 = v239;
          v472 = a5 != 0;
          v473 = *(v803 + 200);
          v474 = *(a3 + 4);
          v475 = __n[0];
          v476 = __n[0] + 2;
          if (v476 <= v240)
          {
            v477 = v770;
            *v770 = __rev16(v474);
            v736 = v474;
            memcpy(v770 + 1, v238, v475);
            v474 = v736;
            v472 = a5 != 0;
          }

          else
          {
            v477 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v473;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v472;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a4;
          *&v807[4] = 1024;
          *&v807[6] = v76;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v790;
          HIWORD(v808) = 1026;
          *v809 = v77;
          *&v809[4] = 1024;
          *&v809[6] = v474;
          *&v809[10] = 2160;
          *&v809[12] = 1752392040;
          *&v809[20] = 1040;
          *&v809[22] = v476;
          *&v809[26] = 2101;
          *&v809[28] = v477;
          v558 = v471;
        }

        _os_log_impl(&_mh_execute_header, v558, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &buf, 0x46u);
        v239 = v749;
        goto LABEL_864;
      }

      v30 = v76;
      if (!*(v804 + 340))
      {
LABEL_98:
        if (v81)
        {
          v46 = 0;
          v116 = 512;
          v117 = &word_1001787D0;
          if (v79)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v206 = malloc_type_malloc(v79, 0x7A5A2961uLL);
          if (!v206)
          {
            goto LABEL_1061;
          }

          v117 = v206;
          v46 = v206;
          v116 = *v80;
          if (*v80)
          {
LABEL_100:
            *&__n[1] = 0;
            __n[0] = 0;
            v118 = ResourceRecordGetRDataBytesPointer(a3, v117, v116, __n, &__n[1], v34, v35, v36);
            if (*&__n[1])
            {
              goto LABEL_808;
            }

            v119 = v118;
            v794 = v30;
            v120 = v32;
            if (__n[0] >= 0x1FFuLL)
            {
              v121 = __n[0] + 2;
              v406 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
              if (!v406)
              {
                goto LABEL_1061;
              }

              v122 = v406;
              v86 = v406;
            }

            else
            {
              v86 = 0;
              v121 = 512;
              v122 = word_1001789D0;
            }

            if (v28)
            {
              v407 = mDNSLogCategory_Default;
            }

            else
            {
              v407 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v407 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_806;
              }

              v766 = v86;
              v408 = a5 != 0;
              v409 = *(v803 + 200);
              v410 = *(a3 + 4);
              v411 = __n[0];
              v412 = __n[0] + 2;
              if (v412 > v121)
              {
                v122 = 0;
                goto LABEL_804;
              }
            }

            else
            {
              if (v28)
              {
                v407 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v407 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_806;
              }

              v766 = v86;
              v408 = a5 != 0;
              v409 = *(v803 + 200);
              v410 = *(a3 + 4);
              v411 = __n[0];
              v412 = __n[0] + 2;
              if (v412 > v121)
              {
                v122 = 0;
LABEL_804:
                LODWORD(buf.tv_sec) = 67111171;
                HIDWORD(buf.tv_sec) = v409;
                LOWORD(buf.tv_nsec) = 1024;
                *(&buf.tv_nsec + 2) = v408;
                HIWORD(buf.tv_nsec) = 1024;
                *v807 = a4;
                *&v807[4] = 1024;
                *&v807[6] = v794;
                LOWORD(v808) = 1024;
                *(&v808 + 2) = v120;
                HIWORD(v808) = 1024;
                *v809 = v410;
                *&v809[4] = 2160;
                *&v809[6] = 1752392040;
                *&v809[14] = 1040;
                *&v809[16] = v412;
                *&v809[20] = 2101;
                *&v809[22] = v122;
                v501 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                v502 = v407;
                v508 = 64;
                goto LABEL_805;
              }
            }

            *v122 = __rev16(v410);
            v523 = v119;
            v524 = v409;
            memcpy(v122 + 1, v523, v411);
            v409 = v524;
            v408 = a5 != 0;
            goto LABEL_804;
          }
        }

        v207 = v32;
        if (v28)
        {
          v208 = mDNSLogCategory_Default;
        }

        else
        {
          v208 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v208 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_952;
          }
        }

        else
        {
          if (v28)
          {
            v208 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v208 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_952;
          }
        }

        v209 = *(a7 + 200);
        v210 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67110400;
        HIDWORD(buf.tv_sec) = v209;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = a5 != 0;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = a4;
        *&v807[4] = 1024;
        *&v807[6] = v30;
        LOWORD(v808) = 1024;
        *(&v808 + 2) = v207;
        HIWORD(v808) = 1024;
        *v809 = v210;
        v152 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_514;
      }
    }

    else
    {
      v68 = v804;
      v80 = (a3 + 12);
      LODWORD(v79) = *(a3 + 12);
      v81 = v79 < 0x201;
      if (!*(v804 + 340))
      {
        goto LABEL_98;
      }
    }

    if (v81)
    {
      v46 = 0;
      v104 = &word_1001787D0;
      v105 = 512;
      if (v79)
      {
LABEL_85:
        *&__n[1] = 0;
        __n[0] = 0;
        v106 = ResourceRecordGetRDataBytesPointer(a3, v104, v105, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_808;
        }

        v107 = v106;
        v789 = v32;
        v793 = v30;
        if (__n[0] >= 0x1FFuLL)
        {
          v108 = __n[0] + 2;
          v287 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
          if (!v287)
          {
            goto LABEL_1061;
          }

          v109 = v287;
          v86 = v287;
        }

        else
        {
          v86 = 0;
          v108 = 512;
          v109 = word_1001789D0;
        }

        if (v28)
        {
          v288 = mDNSLogCategory_Default;
        }

        else
        {
          v288 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v288 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_806;
          }

          v766 = v86;
          v321 = a5 != 0;
          v322 = *(v803 + 200);
          v323 = bswap32(*(v804 + 340)) >> 16;
          v324 = *(a3 + 4);
          v325 = __n[0];
          v326 = __n[0] + 2;
          if (v326 <= v108)
          {
            *v109 = __rev16(v324);
            v500 = v323;
            memcpy(v109 + 1, v107, v325);
            v323 = v500;
            v321 = a5 != 0;
          }

          else
          {
            v109 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v322;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v323;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = v321;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v793;
          HIWORD(v808) = 1024;
          *v809 = v789;
          *&v809[4] = 1024;
          *&v809[6] = v324;
          *&v809[10] = 2160;
          *&v809[12] = 1752392040;
          *&v809[20] = 1040;
          *&v809[22] = v326;
          *&v809[26] = 2101;
          *&v809[28] = v109;
          v501 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v502 = v288;
        }

        else
        {
          if (v28)
          {
            v289 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v289 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_806;
          }

          v766 = v86;
          v290 = a5 != 0;
          v291 = *(v803 + 200);
          v292 = bswap32(*(v804 + 340)) >> 16;
          v293 = *(a3 + 4);
          v294 = __n[0];
          v295 = __n[0] + 2;
          if (v295 <= v108)
          {
            *v109 = __rev16(v293);
            v507 = v292;
            memcpy(v109 + 1, v107, v294);
            v292 = v507;
            v290 = a5 != 0;
          }

          else
          {
            v109 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v291;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v292;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = v290;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v793;
          HIWORD(v808) = 1024;
          *v809 = v789;
          *&v809[4] = 1024;
          *&v809[6] = v293;
          *&v809[10] = 2160;
          *&v809[12] = 1752392040;
          *&v809[20] = 1040;
          *&v809[22] = v295;
          *&v809[26] = 2101;
          *&v809[28] = v109;
          v501 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v502 = v289;
        }

        v508 = 70;
LABEL_805:
        _os_log_impl(&_mh_execute_header, v502, OS_LOG_TYPE_DEFAULT, v501, &buf, v508);
        v86 = v766;
        goto LABEL_806;
      }
    }

    else
    {
      v146 = malloc_type_malloc(v79, 0x7A5A2961uLL);
      if (!v146)
      {
        goto LABEL_1061;
      }

      v46 = v146;
      v105 = *v80;
      v104 = v146;
      if (*v80)
      {
        goto LABEL_85;
      }
    }

    v147 = v32;
    if (v28)
    {
      v148 = mDNSLogCategory_Default;
    }

    else
    {
      v148 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v148 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v28)
      {
        v148 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v148 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v149 = *(a7 + 200);
    v150 = bswap32(*(v68 + 340)) >> 16;
    v151 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v149;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v150;
    HIWORD(buf.tv_nsec) = 1024;
    *v807 = a5 != 0;
    *&v807[4] = 1024;
    *&v807[6] = a4;
    LOWORD(v808) = 1024;
    *(&v808 + 2) = v30;
    HIWORD(v808) = 1024;
    *v809 = v147;
    *&v809[4] = 1024;
    *&v809[6] = v151;
    v152 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_613;
  }

  if (v38)
  {
    *(a7 + 208) = buf.tv_sec;
    v39 = *(a3 + 56);
    if (v39)
    {
      v40 = v30;
      v41 = dnssec_obj_resource_record_member_get_validation_result(v39);
      v42 = *(v804 + 340);
      v44 = (a3 + 12);
      v43 = *(a3 + 12);
      v45 = v43 < 0x201;
      if (v41)
      {
        if (*(v804 + 340))
        {
          if (v43 >= 0x201)
          {
            v164 = malloc_type_malloc(v43, 0x81348F3CuLL);
            if (!v164)
            {
              goto LABEL_1061;
            }

            v46 = v164;
            v48 = *v44;
            v47 = v164;
            if (*v44)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v46 = 0;
            v47 = &word_1001787D0;
            v48 = 512;
            if (*(a3 + 12))
            {
LABEL_42:
              *&__n[1] = 0;
              __n[0] = 0;
              v49 = ResourceRecordGetRDataBytesPointer(a3, v47, v48, __n, &__n[1], v34, v35, v36);
              if (*&__n[1])
              {
                goto LABEL_892;
              }

              v50 = v49;
              v784 = v32;
              if (__n[0] < 0x1FFuLL)
              {
                v51 = 0;
                v52 = word_1001789D0;
                v762 = 512;
LABEL_517:
                v745 = v52;
                if (v28)
                {
                  v340 = mDNSLogCategory_Default;
                }

                else
                {
                  v340 = mDNSLogCategory_mDNS;
                }

                if (mDNS_SensitiveLoggingEnableCount && v340 != mDNSLogCategory_State)
                {
                  if (v28)
                  {
                    v341 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v341 = mDNSLogCategory_mDNS;
                  }

                  if (os_log_type_enabled(v341, OS_LOG_TYPE_DEFAULT))
                  {
                    v342 = a5 != 0;
                    v343 = *(v803 + 200);
                    v344 = bswap32(*(v804 + 340)) >> 16;
                    v345 = v31;
                    log = v341;
                    v724 = v51;
                    while (1)
                    {
                      if (!v345 || (v346 = *v345, v346 > 0x3F))
                      {
LABEL_531:
                        v347 = 257;
                        goto LABEL_878;
                      }

                      if (!*v345)
                      {
                        break;
                      }

                      v345 += v346 + 1;
                      if (&v345[-v31] >= 256)
                      {
                        goto LABEL_531;
                      }
                    }

                    v347 = (v345 - v31 + 1);
LABEL_878:
                    v576 = *(a3 + 4);
                    v577 = __n[0];
                    v578 = __n[0] + 2;
                    if (v578 <= v762)
                    {
                      v579 = v745;
                      LOWORD(v745->isa) = __rev16(v576);
                      v700 = v343;
                      v710 = v578;
                      v780 = v344;
                      memcpy(&v745->isa + 2, v50, v577);
                      v343 = v700;
                      v578 = v710;
                      v344 = v780;
                      v342 = a5 != 0;
                    }

                    else
                    {
                      v579 = 0;
                    }

                    LODWORD(buf.tv_sec) = 67112451;
                    HIDWORD(buf.tv_sec) = v343;
                    LOWORD(buf.tv_nsec) = 1024;
                    *(&buf.tv_nsec + 2) = v344;
                    HIWORD(buf.tv_nsec) = 1024;
                    *v807 = v342;
                    *&v807[4] = 1024;
                    *&v807[6] = a4;
                    LOWORD(v808) = 1024;
                    *(&v808 + 2) = v40;
                    HIWORD(v808) = 2160;
                    *v809 = 1752392040;
                    *&v809[8] = 1040;
                    *&v809[10] = v347;
                    *&v809[14] = 2101;
                    *&v809[16] = v31;
                    *&v809[24] = 1024;
                    *&v809[26] = v784;
                    *&v809[30] = 1026;
                    *&v809[32] = v41;
                    *&v809[36] = 1024;
                    *&v809[38] = v576;
                    *&v809[42] = 2160;
                    *&v809[44] = 1752392040;
                    *&v809[52] = 1040;
                    *&v809[54] = v578;
                    *&v809[58] = 2101;
                    *&v809[60] = v579;
                    v568 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_887:
                    v575 = log;
                    goto LABEL_888;
                  }

                  goto LABEL_889;
                }

                if (!os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_889;
                }

                v374 = a5 != 0;
                v375 = *(v803 + 200);
                v376 = bswap32(*(v804 + 340)) >> 16;
                v377 = v31;
                v724 = v51;
                while (1)
                {
                  if (!v377 || (v378 = *v377, v378 > 0x3F))
                  {
LABEL_581:
                    v379 = 257;
                    goto LABEL_867;
                  }

                  if (!*v377)
                  {
                    break;
                  }

                  v377 += v378 + 1;
                  if (&v377[-v31] >= 256)
                  {
                    goto LABEL_581;
                  }
                }

                v379 = (v377 - v31 + 1);
LABEL_867:
                v562 = *(a3 + 4);
                v563 = __n[0];
                v564 = __n[0] + 2;
                if (v564 <= v762)
                {
                  v565 = v745;
                  LOWORD(v745->isa) = __rev16(v562);
                  v566 = v50;
                  v708 = v564;
                  logh = v375;
                  v778 = v376;
                  v567 = v562;
                  memcpy(&v745->isa + 2, v566, v563);
                  v562 = v567;
                  v564 = v708;
                  v375 = logh;
                  v376 = v778;
                  v374 = a5 != 0;
                }

                else
                {
                  v565 = 0;
                }

                LODWORD(buf.tv_sec) = 67112451;
                HIDWORD(buf.tv_sec) = v375;
                LOWORD(buf.tv_nsec) = 1024;
                *(&buf.tv_nsec + 2) = v376;
                HIWORD(buf.tv_nsec) = 1024;
                *v807 = v374;
                *&v807[4] = 1024;
                *&v807[6] = a4;
                LOWORD(v808) = 1024;
                *(&v808 + 2) = v40;
                HIWORD(v808) = 2160;
                *v809 = 1752392040;
                *&v809[8] = 1040;
                *&v809[10] = v379;
                *&v809[14] = 2101;
                *&v809[16] = v31;
                *&v809[24] = 1024;
                *&v809[26] = v784;
                *&v809[30] = 1026;
                *&v809[32] = v41;
                *&v809[36] = 1024;
                *&v809[38] = v562;
                *&v809[42] = 2160;
                *&v809[44] = 1752392040;
                *&v809[52] = 1040;
                *&v809[54] = v564;
                *&v809[58] = 2101;
                *&v809[60] = v565;
                v568 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                goto LABEL_876;
              }

              v762 = __n[0] + 2;
              v339 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
              if (v339)
              {
                v51 = v339;
                v52 = v339;
                goto LABEL_517;
              }

LABEL_1061:
              __break(1u);
              return;
            }
          }

          v165 = v32;
          if (v28)
          {
            v166 = mDNSLogCategory_Default;
          }

          else
          {
            v166 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v166 != mDNSLogCategory_State)
          {
            if (v28)
            {
              v166 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v166 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v167 = a5 != 0;
            v168 = *(a7 + 200);
            v169 = bswap32(*(v804 + 340)) >> 16;
            v170 = v31;
            while (1)
            {
              if (!v170 || (v171 = *v170, v171 > 0x3F))
              {
LABEL_189:
                v172 = 257;
                goto LABEL_815;
              }

              if (!*v170)
              {
                break;
              }

              v170 += v171 + 1;
              if (&v170[-v31] >= 256)
              {
                goto LABEL_189;
              }
            }

            v172 = (v170 - v31 + 1);
            goto LABEL_815;
          }

          if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
          {
            v167 = a5 != 0;
            v168 = *(a7 + 200);
            v169 = bswap32(*(v804 + 340)) >> 16;
            v259 = v31;
            while (1)
            {
              if (!v259 || (v260 = *v259, v260 > 0x3F))
              {
LABEL_403:
                v172 = 257;
                goto LABEL_815;
              }

              if (!*v259)
              {
                break;
              }

              v259 += v260 + 1;
              if (&v259[-v31] >= 256)
              {
                goto LABEL_403;
              }
            }

            v172 = (v259 - v31 + 1);
LABEL_815:
            v528 = *(a3 + 4);
            LODWORD(buf.tv_sec) = 67111683;
            HIDWORD(buf.tv_sec) = v168;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v169;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = v167;
            *&v807[4] = 1024;
            *&v807[6] = a4;
            LOWORD(v808) = 1024;
            *(&v808 + 2) = v40;
            HIWORD(v808) = 2160;
            *v809 = 1752392040;
            *&v809[8] = 1040;
            *&v809[10] = v172;
            *&v809[14] = 2101;
            *&v809[16] = v31;
            *&v809[24] = 1024;
            *&v809[26] = v165;
            *&v809[30] = 1026;
            *&v809[32] = v41;
            *&v809[36] = 1024;
            *&v809[38] = v528;
            v513 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_820:
            v530 = v166;
            v531 = 76;
LABEL_900:
            _os_log_impl(&_mh_execute_header, v530, OS_LOG_TYPE_DEFAULT, v513, &buf, v531);
          }

LABEL_951:
          v68 = v804;
          goto LABEL_952;
        }

        if (v43 >= 0x201)
        {
          v43 = malloc_type_malloc(v43, 0x81348F3CuLL);
          if (!v43)
          {
            goto LABEL_1061;
          }

          v46 = v43;
          LODWORD(v43) = *v44;
          v154 = v43;
          v153 = v46;
        }

        else
        {
          v46 = 0;
          v153 = &word_1001787D0;
          v154 = 512;
        }

        v222 = v32;
        if (v43)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v223 = ResourceRecordGetRDataBytesPointer(a3, v153, v154, __n, &__n[1], v34, v35, v36);
          if (*&__n[1])
          {
            goto LABEL_951;
          }

          v224 = v223;
          if (__n[0] >= 0x1FFuLL)
          {
            v447 = __n[0] + 2;
            v225 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
            if (!v225)
            {
              goto LABEL_1061;
            }

            v742 = v447;
            v226 = v225;
          }

          else
          {
            v225 = 0;
            v226 = word_1001789D0;
            v742 = 512;
          }

          v725 = v226;
          v769 = v225;
          if (v28)
          {
            v448 = mDNSLogCategory_Default;
          }

          else
          {
            v448 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v448 != mDNSLogCategory_State)
          {
            if (v28)
            {
              v449 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v449 = mDNSLogCategory_mDNS;
            }

            if (os_log_type_enabled(v449, OS_LOG_TYPE_DEFAULT))
            {
              v450 = a5 != 0;
              v451 = *(v803 + 200);
              v452 = v31;
              loga = v449;
              while (1)
              {
                if (!v452 || (v453 = *v452, v453 > 0x3F))
                {
LABEL_711:
                  v454 = 257;
                  goto LABEL_938;
                }

                if (!*v452)
                {
                  break;
                }

                v452 += v453 + 1;
                if (&v452[-v31] >= 256)
                {
                  goto LABEL_711;
                }
              }

              v454 = (v452 - v31 + 1);
LABEL_938:
              v624 = *(a3 + 4);
              v625 = __n[0];
              v626 = __n[0] + 2;
              if (v626 <= v742)
              {
                v627 = v725;
                *v725 = __rev16(v624);
                v628 = v224;
                v704 = v624;
                v629 = v451;
                v760 = v454;
                v630 = v626;
                memcpy(v725 + 1, v628, v625);
                v624 = v704;
                v450 = a5 != 0;
                v626 = v630;
                v454 = v760;
                v451 = v629;
              }

              else
              {
                v627 = 0;
              }

              LODWORD(buf.tv_sec) = 67112195;
              HIDWORD(buf.tv_sec) = v451;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v450;
              HIWORD(buf.tv_nsec) = 1024;
              *v807 = a4;
              *&v807[4] = 1024;
              *&v807[6] = v40;
              strcpy(&v808, "p\bhash");
              HIBYTE(v808) = 0;
              *v809 = 0;
              *&v809[2] = 1040;
              *&v809[4] = v454;
              *&v809[8] = 2101;
              *&v809[10] = v31;
              *&v809[18] = 1024;
              *&v809[20] = v222;
              *&v809[24] = 1026;
              *&v809[26] = v41;
              *&v809[30] = 1024;
              *&v809[32] = v624;
              *&v809[36] = 2160;
              *&v809[38] = 1752392040;
              *&v809[46] = 1040;
              *&v809[48] = v626;
              *&v809[52] = 2101;
              *&v809[54] = v627;
              v616 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_947:
              v623 = loga;
              goto LABEL_948;
            }

            goto LABEL_949;
          }

          if (!os_log_type_enabled(v448, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_949;
          }

          v478 = a5 != 0;
          v479 = *(v803 + 200);
          v480 = v31;
          while (1)
          {
            if (!v480 || (v481 = *v480, v481 > 0x3F))
            {
LABEL_761:
              v482 = 257;
              goto LABEL_927;
            }

            if (!*v480)
            {
              break;
            }

            v480 += v481 + 1;
            if (&v480[-v31] >= 256)
            {
              goto LABEL_761;
            }
          }

          v482 = (v480 - v31 + 1);
LABEL_927:
          v610 = *(a3 + 4);
          v611 = __n[0];
          v612 = __n[0] + 2;
          if (v612 <= v742)
          {
            v613 = v725;
            *v725 = __rev16(v610);
            v614 = v224;
            logj = v482;
            v758 = v479;
            v615 = v612;
            v702 = v610;
            memcpy(v725 + 1, v614, v611);
            v610 = v702;
            v478 = a5 != 0;
            v612 = v615;
            v482 = logj;
            v479 = v758;
          }

          else
          {
            v613 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v479;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v478;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = a4;
          *&v807[4] = 1024;
          *&v807[6] = v40;
          strcpy(&v808, "p\bhash");
          HIBYTE(v808) = 0;
          *v809 = 0;
          *&v809[2] = 1040;
          *&v809[4] = v482;
          *&v809[8] = 2101;
          *&v809[10] = v31;
          *&v809[18] = 1024;
          *&v809[20] = v222;
          *&v809[24] = 1026;
          *&v809[26] = v41;
          *&v809[30] = 1024;
          *&v809[32] = v610;
          *&v809[36] = 2160;
          *&v809[38] = 1752392040;
          *&v809[46] = 1040;
          *&v809[48] = v612;
          *&v809[52] = 2101;
          *&v809[54] = v613;
          v616 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          goto LABEL_936;
        }

        if (v28)
        {
          v125 = mDNSLogCategory_Default;
        }

        else
        {
          v125 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v125 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v246 = a5 != 0;
          v247 = *(a7 + 200);
          v400 = v31;
          while (1)
          {
            if (!v400 || (v401 = *v400, v401 > 0x3F))
            {
LABEL_601:
              v250 = 257;
              goto LABEL_894;
            }

            if (!*v400)
            {
              break;
            }

            v400 += v401 + 1;
            if (&v400[-v31] >= 256)
            {
              goto LABEL_601;
            }
          }

          v250 = (v400 - v31 + 1);
        }

        else
        {
          if (v28)
          {
            v125 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v125 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v246 = a5 != 0;
          v247 = *(a7 + 200);
          v248 = v31;
          while (1)
          {
            if (!v248 || (v249 = *v248, v249 > 0x3F))
            {
LABEL_361:
              v250 = 257;
              goto LABEL_894;
            }

            if (!*v248)
            {
              break;
            }

            v248 += v249 + 1;
            if (&v248[-v31] >= 256)
            {
              goto LABEL_361;
            }
          }

          v250 = (v248 - v31 + 1);
        }

LABEL_894:
        v584 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v247;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v246;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = a4;
        *&v807[4] = 1024;
        *&v807[6] = v40;
        strcpy(&v808, "p\bhash");
        HIBYTE(v808) = 0;
        *v809 = 0;
        *&v809[2] = 1040;
        *&v809[4] = v250;
        *&v809[8] = 2101;
        *&v809[10] = v31;
        *&v809[18] = 1024;
        *&v809[20] = v222;
        *&v809[24] = 1026;
        *&v809[26] = v41;
        *&v809[30] = 1024;
        *&v809[32] = v584;
        v513 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_899;
      }

      v30 = v40;
      if (!*(v804 + 340))
      {
        goto LABEL_89;
      }
    }

    else
    {
      v44 = (a3 + 12);
      LODWORD(v43) = *(a3 + 12);
      v45 = v43 < 0x201;
      if (!*(v804 + 340))
      {
LABEL_89:
        if (v45)
        {
          v46 = 0;
          v110 = &word_1001787D0;
          v111 = 512;
        }

        else
        {
          v43 = malloc_type_malloc(v43, 0x81348F3CuLL);
          if (!v43)
          {
            goto LABEL_1061;
          }

          v46 = v43;
          LODWORD(v43) = *v44;
          v111 = v43;
          v110 = v46;
        }

        v192 = v32;
        if (v43)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v193 = ResourceRecordGetRDataBytesPointer(a3, v110, v111, __n, &__n[1], v34, v35, v36);
          if (*&__n[1])
          {
            goto LABEL_951;
          }

          v194 = v193;
          v796 = v30;
          if (__n[0] >= 0x1FFuLL)
          {
            v413 = __n[0] + 2;
            v414 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
            if (!v414)
            {
              goto LABEL_1061;
            }

            v195 = v414;
            v764 = v413;
            v196 = v414;
          }

          else
          {
            v195 = 0;
            v196 = word_1001789D0;
            v764 = 512;
          }

          if (v28)
          {
            v415 = mDNSLogCategory_Default;
          }

          else
          {
            v415 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v415 != mDNSLogCategory_State)
          {
            if (v28)
            {
              v416 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v416 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v416, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_924;
            }

            v417 = a5 != 0;
            v418 = *(v803 + 200);
            v419 = v31;
            v748 = v416;
            while (1)
            {
              if (!v419 || (v420 = *v419, v420 > 0x3F))
              {
LABEL_644:
                v421 = 257;
                goto LABEL_913;
              }

              if (!*v419)
              {
                break;
              }

              v419 += v420 + 1;
              if (&v419[-v31] >= 256)
              {
                goto LABEL_644;
              }
            }

            v421 = (v419 - v31 + 1);
LABEL_913:
            v598 = *(a3 + 4);
            v599 = __n[0];
            v600 = __n[0] + 2;
            if (v600 <= v764)
            {
              v601 = v196;
              *v196 = __rev16(v598);
              v602 = v196 + 1;
              v603 = v418;
              v739 = v421;
              v782 = v600;
              memcpy(v602, v194, v599);
              v600 = v782;
              v421 = v739;
              v418 = v603;
              v417 = a5 != 0;
            }

            else
            {
              v601 = 0;
            }

            LODWORD(buf.tv_sec) = 67111939;
            HIDWORD(buf.tv_sec) = v418;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v417;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = a4;
            *&v807[4] = 1024;
            *&v807[6] = v796;
            strcpy(&v808, "p\bhash");
            HIBYTE(v808) = 0;
            *v809 = 0;
            *&v809[2] = 1040;
            *&v809[4] = v421;
            *&v809[8] = 2101;
            *&v809[10] = v31;
            *&v809[18] = 1024;
            *&v809[20] = v192;
            *&v809[24] = 1024;
            *&v809[26] = v598;
            *&v809[30] = 2160;
            *&v809[32] = 1752392040;
            *&v809[40] = 1040;
            *&v809[42] = v600;
            *&v809[46] = 2101;
            *&v809[48] = v601;
            v591 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_922;
          }

          if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
          {
            v437 = a5 != 0;
            v438 = *(v803 + 200);
            v439 = v31;
            while (1)
            {
              if (!v439 || (v440 = *v439, v440 > 0x3F))
              {
LABEL_684:
                v441 = 257;
                goto LABEL_902;
              }

              if (!*v439)
              {
                break;
              }

              v439 += v440 + 1;
              if (&v439[-v31] >= 256)
              {
                goto LABEL_684;
              }
            }

            v441 = (v439 - v31 + 1);
LABEL_902:
            v586 = *(a3 + 4);
            v587 = __n[0];
            v588 = __n[0] + 2;
            if (v588 <= v764)
            {
              *v196 = __rev16(v586);
              v589 = v194;
              v737 = v441;
              v590 = v588;
              v756 = v586;
              memcpy(v196 + 1, v589, v587);
              v586 = v756;
              v588 = v590;
              v441 = v737;
              v437 = a5 != 0;
            }

            else
            {
              v196 = 0;
            }

            LODWORD(buf.tv_sec) = 67111939;
            HIDWORD(buf.tv_sec) = v438;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v437;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = a4;
            *&v807[4] = 1024;
            *&v807[6] = v796;
            strcpy(&v808, "p\bhash");
            HIBYTE(v808) = 0;
            *v809 = 0;
            *&v809[2] = 1040;
            *&v809[4] = v441;
            *&v809[8] = 2101;
            *&v809[10] = v31;
            *&v809[18] = 1024;
            *&v809[20] = v192;
            *&v809[24] = 1024;
            *&v809[26] = v586;
            *&v809[30] = 2160;
            *&v809[32] = 1752392040;
            *&v809[40] = 1040;
            *&v809[42] = v588;
            *&v809[46] = 2101;
            *&v809[48] = v196;
            v591 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_911:
            v597 = v415;
LABEL_923:
            _os_log_impl(&_mh_execute_header, v597, OS_LOG_TYPE_DEFAULT, v591, &buf, 0x5Au);
            goto LABEL_924;
          }

          goto LABEL_924;
        }

        if (v28)
        {
          v211 = mDNSLogCategory_Default;
        }

        else
        {
          v211 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v211 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v212 = a5 != 0;
          v213 = *(a7 + 200);
          v333 = v31;
          while (1)
          {
            if (!v333 || (v334 = *v333, v334 > 0x3F))
            {
LABEL_504:
              v216 = 257;
              goto LABEL_845;
            }

            if (!*v333)
            {
              break;
            }

            v333 += v334 + 1;
            if (&v333[-v31] >= 256)
            {
              goto LABEL_504;
            }
          }

          v216 = (v333 - v31 + 1);
        }

        else
        {
          if (v28)
          {
            v211 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v211 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v212 = a5 != 0;
          v213 = *(a7 + 200);
          v214 = v31;
          while (1)
          {
            if (!v214 || (v215 = *v214, v215 > 0x3F))
            {
LABEL_279:
              v216 = 257;
              goto LABEL_845;
            }

            if (!*v214)
            {
              break;
            }

            v214 += v215 + 1;
            if (&v214[-v31] >= 256)
            {
              goto LABEL_279;
            }
          }

          v216 = (v214 - v31 + 1);
        }

LABEL_845:
        v554 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67111171;
        HIDWORD(buf.tv_sec) = v213;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v212;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = a4;
        *&v807[4] = 1024;
        *&v807[6] = v30;
        strcpy(&v808, "p\bhash");
        HIBYTE(v808) = 0;
        *v809 = 0;
        *&v809[2] = 1040;
        *&v809[4] = v216;
        *&v809[8] = 2101;
        *&v809[10] = v31;
        *&v809[18] = 1024;
        *&v809[20] = v192;
        *&v809[24] = 1024;
        *&v809[26] = v554;
        v513 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_850;
      }
    }

    if (v45)
    {
      v46 = 0;
      v89 = &word_1001787D0;
      v90 = 512;
      if (v43)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v123 = malloc_type_malloc(v43, 0x81348F3CuLL);
      if (!v123)
      {
        goto LABEL_1061;
      }

      v46 = v123;
      v90 = *v44;
      v89 = v123;
      if (*v44)
      {
LABEL_70:
        *&__n[1] = 0;
        __n[0] = 0;
        v91 = ResourceRecordGetRDataBytesPointer(a3, v89, v90, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_892;
        }

        v92 = v91;
        v787 = v32;
        v791 = v30;
        if (__n[0] >= 0x1FFuLL)
        {
          v95 = __n[0] + 2;
          v268 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
          if (!v268)
          {
            goto LABEL_1061;
          }

          v93 = v268;
          v94 = v268;
        }

        else
        {
          v93 = 0;
          v94 = word_1001789D0;
          v95 = 512;
        }

        if (v28)
        {
          v269 = mDNSLogCategory_Default;
        }

        else
        {
          v269 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v269 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_842;
          }

          v305 = a5 != 0;
          v306 = *(v803 + 200);
          v307 = bswap32(*(v804 + 340)) >> 16;
          v308 = v31;
          while (1)
          {
            if (!v308 || (v309 = *v308, v309 > 0x3F))
            {
LABEL_482:
              v310 = v95;
              v311 = v94;
              v312 = 257;
              goto LABEL_822;
            }

            if (!*v308)
            {
              break;
            }

            v308 += v309 + 1;
            if (&v308[-v31] >= 256)
            {
              goto LABEL_482;
            }
          }

          v310 = v95;
          v311 = v94;
          v312 = (v308 - v31 + 1);
LABEL_822:
          v532 = *(a3 + 4);
          v533 = __n[0];
          v534 = __n[0] + 2;
          if (v534 <= v310)
          {
            *v311 = __rev16(v532);
            v535 = v92;
            v752 = v307;
            v774 = v534;
            v536 = v532;
            memcpy(v311 + 1, v535, v533);
            v532 = v536;
            v534 = v774;
            v307 = v752;
            v305 = a5 != 0;
          }

          else
          {
            v311 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v306;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v307;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = v305;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v791;
          HIWORD(v808) = 2160;
          *v809 = 1752392040;
          *&v809[8] = 1040;
          *&v809[10] = v312;
          *&v809[14] = 2101;
          *&v809[16] = v31;
          *&v809[24] = 1024;
          *&v809[26] = v787;
          *&v809[30] = 1024;
          *&v809[32] = v532;
          *&v809[36] = 2160;
          *&v809[38] = 1752392040;
          *&v809[46] = 1040;
          *&v809[48] = v534;
          *&v809[52] = 2101;
          *&v809[54] = v311;
          v537 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          goto LABEL_841;
        }

        if (v28)
        {
          v269 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v269 = mDNSLogCategory_mDNS;
        }

        if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
        {
          v270 = a5 != 0;
          v271 = *(v803 + 200);
          v272 = bswap32(*(v804 + 340)) >> 16;
          v273 = v31;
          while (1)
          {
            if (!v273 || (v274 = *v273, v274 > 0x3F))
            {
LABEL_432:
              v275 = v95;
              v276 = v94;
              v277 = 257;
              goto LABEL_832;
            }

            if (!*v273)
            {
              break;
            }

            v273 += v274 + 1;
            if (&v273[-v31] >= 256)
            {
              goto LABEL_432;
            }
          }

          v275 = v95;
          v276 = v94;
          v277 = (v273 - v31 + 1);
LABEL_832:
          v543 = *(a3 + 4);
          v544 = __n[0];
          v545 = __n[0] + 2;
          if (v545 <= v275)
          {
            *v276 = __rev16(v543);
            v776 = v269;
            v546 = v271;
            v547 = v272;
            v731 = v277;
            v754 = v543;
            memcpy(v276 + 1, v92, v544);
            v543 = v754;
            v277 = v731;
            v272 = v547;
            v271 = v546;
            v269 = v776;
            v270 = a5 != 0;
          }

          else
          {
            v276 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v271;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v272;
          HIWORD(buf.tv_nsec) = 1024;
          *v807 = v270;
          *&v807[4] = 1024;
          *&v807[6] = a4;
          LOWORD(v808) = 1024;
          *(&v808 + 2) = v791;
          HIWORD(v808) = 2160;
          *v809 = 1752392040;
          *&v809[8] = 1040;
          *&v809[10] = v277;
          *&v809[14] = 2101;
          *&v809[16] = v31;
          *&v809[24] = 1024;
          *&v809[26] = v787;
          *&v809[30] = 1024;
          *&v809[32] = v543;
          *&v809[36] = 2160;
          *&v809[38] = 1752392040;
          *&v809[46] = 1040;
          *&v809[48] = v545;
          *&v809[52] = 2101;
          *&v809[54] = v276;
          v537 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_841:
          _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, v537, &buf, 0x60u);
          goto LABEL_842;
        }

        goto LABEL_842;
      }
    }

    v124 = v32;
    if (v28)
    {
      v125 = mDNSLogCategory_Default;
    }

    else
    {
      v125 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v125 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_951;
      }

      v126 = a5 != 0;
      v127 = *(a7 + 200);
      v128 = bswap32(*(v804 + 340)) >> 16;
      v242 = v31;
      while (1)
      {
        if (!v242 || (v243 = *v242, v243 > 0x3F))
        {
LABEL_335:
          v131 = 257;
          goto LABEL_786;
        }

        if (!*v242)
        {
          break;
        }

        v242 += v243 + 1;
        if (&v242[-v31] >= 256)
        {
          goto LABEL_335;
        }
      }

      v131 = (v242 - v31 + 1);
    }

    else
    {
      if (v28)
      {
        v125 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v125 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_951;
      }

      v126 = a5 != 0;
      v127 = *(a7 + 200);
      v128 = bswap32(*(v804 + 340)) >> 16;
      v129 = v31;
      while (1)
      {
        if (!v129 || (v130 = *v129, v130 > 0x3F))
        {
LABEL_119:
          v131 = 257;
          goto LABEL_786;
        }

        if (!*v129)
        {
          break;
        }

        v129 += v130 + 1;
        if (&v129[-v31] >= 256)
        {
          goto LABEL_119;
        }
      }

      v131 = (v129 - v31 + 1);
    }

LABEL_786:
    v512 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67111427;
    HIDWORD(buf.tv_sec) = v127;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v128;
    HIWORD(buf.tv_nsec) = 1024;
    *v807 = v126;
    *&v807[4] = 1024;
    *&v807[6] = a4;
    LOWORD(v808) = 1024;
    *(&v808 + 2) = v30;
    HIWORD(v808) = 2160;
    *v809 = 1752392040;
    *&v809[8] = 1040;
    *&v809[10] = v131;
    *&v809[14] = 2101;
    *&v809[16] = v31;
    *&v809[24] = 1024;
    *&v809[26] = v124;
    *&v809[30] = 1024;
    *&v809[32] = v512;
    v513 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_899;
  }

  v65 = *(a3 + 56);
  if (!v65)
  {
    v68 = v804;
    v71 = (a3 + 12);
    LODWORD(v70) = *(a3 + 12);
    v72 = v70 < 0x201;
    if (!*(v804 + 340))
    {
LABEL_95:
      if (v72)
      {
        v46 = 0;
        v114 = &word_1001787D0;
        v115 = 512;
      }

      else
      {
        v70 = malloc_type_malloc(v70, 0x81348F3CuLL);
        if (!v70)
        {
          goto LABEL_1061;
        }

        v46 = v70;
        LODWORD(v70) = *v71;
        v115 = v70;
        v114 = v46;
      }

      v201 = v32;
      if (v70)
      {
        *&__n[1] = 0;
        __n[0] = 0;
        v202 = ResourceRecordGetRDataBytesPointer(a3, v114, v115, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_952;
        }

        v203 = v202;
        v798 = v30;
        if (__n[0] >= 0x1FFuLL)
        {
          v205 = __n[0] + 2;
          v430 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
          if (!v430)
          {
            goto LABEL_1061;
          }

          v143 = v430;
          v204 = v430;
        }

        else
        {
          v143 = 0;
          v204 = word_1001789D0;
          v205 = 512;
        }

        if (v28)
        {
          v431 = mDNSLogCategory_Default;
        }

        else
        {
          v431 = mDNSLogCategory_mDNS;
        }

        if (mDNS_SensitiveLoggingEnableCount && v431 != mDNSLogCategory_State)
        {
          if (v28)
          {
            v431 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v431 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_812;
          }

          v432 = a5 != 0;
          v433 = *(v803 + 200);
          v434 = *(a3 + 4);
          v435 = __n[0];
          v436 = __n[0] + 2;
          if (v436 > v205)
          {
            v204 = 0;
LABEL_810:
            LODWORD(buf.tv_sec) = 67111171;
            HIDWORD(buf.tv_sec) = v433;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v432;
            HIWORD(buf.tv_nsec) = 1024;
            *v807 = a4;
            *&v807[4] = 1024;
            *&v807[6] = v798;
            LOWORD(v808) = 1024;
            *(&v808 + 2) = v201;
            HIWORD(v808) = 1024;
            *v809 = v434;
            *&v809[4] = 2160;
            *&v809[6] = 1752392040;
            *&v809[14] = 1040;
            *&v809[16] = v436;
            *&v809[20] = 2101;
            *&v809[22] = v204;
            v505 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v506 = v431;
            v511 = 64;
            goto LABEL_811;
          }

          goto LABEL_809;
        }

        if (os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
        {
          v432 = a5 != 0;
          v433 = *(v803 + 200);
          v434 = *(a3 + 4);
          v435 = __n[0];
          v436 = __n[0] + 2;
          if (v436 > v205)
          {
            v204 = 0;
            goto LABEL_810;
          }

LABEL_809:
          *v204 = __rev16(v434);
          v525 = v203;
          v526 = v434;
          v773 = v433;
          memcpy(v204 + 1, v525, v435);
          v433 = v773;
          v432 = a5 != 0;
          v434 = v526;
          goto LABEL_810;
        }

LABEL_812:
        a7 = v803;
        v68 = v804;
        if (!v143)
        {
          goto LABEL_952;
        }

        v527 = v143;
LABEL_860:
        free(v527);
        goto LABEL_952;
      }

      if (v28)
      {
        v208 = mDNSLogCategory_Default;
      }

      else
      {
        v208 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v208 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_952;
        }
      }

      else
      {
        if (v28)
        {
          v208 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v208 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_952;
        }
      }

      v337 = *(a7 + 200);
      v338 = *(a3 + 4);
      LODWORD(buf.tv_sec) = 67110400;
      HIDWORD(buf.tv_sec) = v337;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = a5 != 0;
      HIWORD(buf.tv_nsec) = 1024;
      *v807 = a4;
      *&v807[4] = 1024;
      *&v807[6] = v30;
      LOWORD(v808) = 1024;
      *(&v808 + 2) = v201;
      HIWORD(v808) = 1024;
      *v809 = v338;
      v152 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_514:
      v266 = v208;
      v267 = 38;
      goto LABEL_614;
    }

    goto LABEL_80;
  }

  v66 = v30;
  v67 = dnssec_obj_resource_record_member_get_validation_result(v65);
  v68 = v804;
  v69 = *(v804 + 340);
  v71 = (a3 + 12);
  v70 = *(a3 + 12);
  v72 = v70 < 0x201;
  if (!v67)
  {
    v30 = v66;
    if (!*(v804 + 340))
    {
      goto LABEL_95;
    }

LABEL_80:
    if (v72)
    {
      v46 = 0;
      v102 = &word_1001787D0;
      v103 = 512;
    }

    else
    {
      v70 = malloc_type_malloc(v70, 0x81348F3CuLL);
      if (!v70)
      {
        goto LABEL_1061;
      }

      v46 = v70;
      LODWORD(v70) = *v71;
      v103 = v70;
      v102 = v46;
    }

    v140 = v32;
    if (v70)
    {
      *&__n[1] = 0;
      __n[0] = 0;
      v141 = ResourceRecordGetRDataBytesPointer(a3, v102, v103, __n, &__n[1], v34, v35, v36);
      if (*&__n[1])
      {
        goto LABEL_952;
      }

      v142 = v141;
      v795 = v30;
      if (__n[0] >= 0x1FFuLL)
      {
        v145 = __n[0] + 2;
        v296 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
        if (!v296)
        {
          goto LABEL_1061;
        }

        v143 = v296;
        v144 = v296;
      }

      else
      {
        v143 = 0;
        v144 = word_1001789D0;
        v145 = 512;
      }

      if (v28)
      {
        v297 = mDNSLogCategory_Default;
      }

      else
      {
        v297 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v297 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_812;
        }

        v327 = a5 != 0;
        v328 = *(v803 + 200);
        v329 = bswap32(*(v804 + 340)) >> 16;
        v330 = *(a3 + 4);
        v331 = __n[0];
        v332 = __n[0] + 2;
        if (v332 <= v145)
        {
          *v144 = __rev16(v330);
          v503 = v142;
          v750 = v330;
          v771 = v328;
          v504 = v329;
          memcpy(v144 + 1, v503, v331);
          v329 = v504;
          v328 = v771;
          v327 = a5 != 0;
          v330 = v750;
        }

        else
        {
          v144 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v328;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v329;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = v327;
        *&v807[4] = 1024;
        *&v807[6] = a4;
        LOWORD(v808) = 1024;
        *(&v808 + 2) = v795;
        HIWORD(v808) = 1024;
        *v809 = v140;
        *&v809[4] = 1024;
        *&v809[6] = v330;
        *&v809[10] = 2160;
        *&v809[12] = 1752392040;
        *&v809[20] = 1040;
        *&v809[22] = v332;
        *&v809[26] = 2101;
        *&v809[28] = v144;
        v505 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v506 = v297;
      }

      else
      {
        if (v28)
        {
          v298 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v298 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_812;
        }

        v299 = a5 != 0;
        v300 = *(v803 + 200);
        v301 = bswap32(*(v804 + 340)) >> 16;
        v302 = *(a3 + 4);
        v303 = __n[0];
        v304 = __n[0] + 2;
        if (v304 <= v145)
        {
          *v144 = __rev16(v302);
          v509 = v142;
          v751 = v302;
          v772 = v300;
          v510 = v301;
          memcpy(v144 + 1, v509, v303);
          v301 = v510;
          v300 = v772;
          v299 = a5 != 0;
          v302 = v751;
        }

        else
        {
          v144 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v300;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v301;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = v299;
        *&v807[4] = 1024;
        *&v807[6] = a4;
        LOWORD(v808) = 1024;
        *(&v808 + 2) = v795;
        HIWORD(v808) = 1024;
        *v809 = v140;
        *&v809[4] = 1024;
        *&v809[6] = v302;
        *&v809[10] = 2160;
        *&v809[12] = 1752392040;
        *&v809[20] = 1040;
        *&v809[22] = v304;
        *&v809[26] = 2101;
        *&v809[28] = v144;
        v505 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v506 = v298;
      }

      v511 = 70;
LABEL_811:
      _os_log_impl(&_mh_execute_header, v506, OS_LOG_TYPE_DEFAULT, v505, &buf, v511);
      goto LABEL_812;
    }

    if (v28)
    {
      v148 = mDNSLogCategory_Default;
    }

    else
    {
      v148 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v148 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v28)
      {
        v148 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v148 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v161 = *(a7 + 200);
    v162 = bswap32(*(v68 + 340)) >> 16;
    v163 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v161;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v162;
    HIWORD(buf.tv_nsec) = 1024;
    *v807 = a5 != 0;
    *&v807[4] = 1024;
    *&v807[6] = a4;
    LOWORD(v808) = 1024;
    *(&v808 + 2) = v30;
    HIWORD(v808) = 1024;
    *v809 = v140;
    *&v809[4] = 1024;
    *&v809[6] = v163;
    v152 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_613:
    v266 = v148;
    v267 = 44;
    goto LABEL_614;
  }

  if (!*(v804 + 340))
  {
    if (v70 >= 0x201)
    {
      v70 = malloc_type_malloc(v70, 0x81348F3CuLL);
      if (!v70)
      {
        goto LABEL_1061;
      }

      v46 = v70;
      LODWORD(v70) = *v71;
      v158 = v70;
      v157 = v46;
    }

    else
    {
      v46 = 0;
      v157 = &word_1001787D0;
      v158 = 512;
    }

    v232 = v32;
    if (v70)
    {
      *&__n[1] = 0;
      __n[0] = 0;
      v233 = ResourceRecordGetRDataBytesPointer(a3, v157, v158, __n, &__n[1], v34, v35, v36);
      if (*&__n[1])
      {
        goto LABEL_952;
      }

      v234 = v233;
      if (__n[0] >= 0x1FFuLL)
      {
        v236 = __n[0] + 2;
        v235 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
        if (!v235)
        {
          goto LABEL_1061;
        }

        v744 = v235;
      }

      else
      {
        v235 = 0;
        v744 = word_1001789D0;
        v236 = 512;
      }

      v768 = v235;
      if (v28)
      {
        v462 = mDNSLogCategory_Default;
      }

      else
      {
        v462 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v462 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_859;
        }

        v488 = a5 != 0;
        v489 = *(v803 + 200);
        v490 = *(a3 + 4);
        v491 = __n[0];
        v492 = __n[0] + 2;
        if (v492 <= v236)
        {
          v493 = v744;
          LOWORD(v744->isa) = __rev16(v490);
          v556 = v234;
          logf = v490;
          v733 = v492;
          v557 = v489;
          memcpy(&v744->isa + 2, v556, v491);
          v489 = v557;
          v492 = v733;
          v488 = a5 != 0;
          v490 = logf;
        }

        else
        {
          v493 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v489;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v488;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = a4;
        *&v807[4] = 1024;
        *&v807[6] = v66;
        LOWORD(v808) = 1024;
        *(&v808 + 2) = v232;
        HIWORD(v808) = 1026;
        *v809 = v67;
        *&v809[4] = 1024;
        *&v809[6] = v490;
        *&v809[10] = 2160;
        *&v809[12] = 1752392040;
        *&v809[20] = 1040;
        *&v809[22] = v492;
        *&v809[26] = 2101;
        *&v809[28] = v493;
        v518 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v519 = v462;
      }

      else
      {
        if (v28)
        {
          v463 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v463 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v463, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_859;
        }

        v464 = a5 != 0;
        v465 = *(v803 + 200);
        v466 = *(a3 + 4);
        v467 = __n[0];
        v468 = __n[0] + 2;
        if (v468 <= v236)
        {
          v469 = v744;
          LOWORD(v744->isa) = __rev16(v466);
          v559 = v234;
          logg = v466;
          v735 = v468;
          v560 = v465;
          memcpy(&v744->isa + 2, v559, v467);
          v465 = v560;
          v468 = v735;
          v464 = a5 != 0;
          v466 = logg;
        }

        else
        {
          v469 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v465;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v464;
        HIWORD(buf.tv_nsec) = 1024;
        *v807 = a4;
        *&v807[4] = 1024;
        *&v807[6] = v66;
        LOWORD(v808) = 1024;
        *(&v808 + 2) = v232;
        HIWORD(v808) = 1026;
        *v809 = v67;
        *&v809[4] = 1024;
        *&v809[6] = v466;
        *&v809[10] = 2160;
        *&v809[12] = 1752392040;
        *&v809[20] = 1040;
        *&v809[22] = v468;
        *&v809[26] = 2101;
        *&v809[28] = v469;
        v518 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v519 = v463;
      }

      v522 = 70;
      goto LABEL_858;
    }

    if (v28)
    {
      v148 = mDNSLogCategory_Default;
    }

    else
    {
      v148 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v148 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v28)
      {
        v148 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v148 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v256 = *(a7 + 200);
    v257 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v256;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = a5 != 0;
    HIWORD(buf.tv_nsec) = 1024;
    *v807 = a4;
    *&v807[4] = 1024;
    *&v807[6] = v66;
    LOWORD(v808) = 1024;
    *(&v808 + 2) = v232;
    HIWORD(v808) = 1026;
    *v809 = v67;
    *&v809[4] = 1024;
    *&v809[6] = v257;
    v152 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_613;
  }

  if (v70 >= 0x201)
  {
    v70 = malloc_type_malloc(v70, 0x81348F3CuLL);
    if (!v70)
    {
      goto LABEL_1061;
    }

    v46 = v70;
    LODWORD(v70) = *v71;
    v74 = v70;
    v73 = v46;
  }

  else
  {
    v46 = 0;
    v73 = &word_1001787D0;
    v74 = 512;
  }

  v181 = v32;
  if (v70)
  {
    *&__n[1] = 0;
    __n[0] = 0;
    v182 = ResourceRecordGetRDataBytesPointer(a3, v73, v74, __n, &__n[1], v34, v35, v36);
    if (*&__n[1])
    {
      goto LABEL_952;
    }

    v183 = v182;
    if (__n[0] >= 0x1FFuLL)
    {
      v185 = __n[0] + 2;
      v184 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
      if (!v184)
      {
        goto LABEL_1061;
      }

      v741 = v184;
    }

    else
    {
      v184 = 0;
      v741 = word_1001789D0;
      v185 = 512;
    }

    v768 = v184;
    if (v28)
    {
      v365 = mDNSLogCategory_Default;
    }

    else
    {
      v365 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v365 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_859;
      }

      v393 = a5 != 0;
      v394 = *(v803 + 200);
      v395 = bswap32(*(v804 + 340)) >> 16;
      v396 = *(a3 + 4);
      v397 = __n[0];
      v398 = __n[0] + 2;
      if (v398 <= v185)
      {
        v399 = v741;
        LOWORD(v741->isa) = __rev16(v396);
        v516 = v183;
        v706 = v395;
        logc = v396;
        v728 = v398;
        v517 = v394;
        memcpy(&v741->isa + 2, v516, v397);
        v395 = v706;
        v396 = logc;
        v394 = v517;
        v398 = v728;
        v393 = a5 != 0;
      }

      else
      {
        v399 = 0;
      }

      LODWORD(buf.tv_sec) = 67111683;
      HIDWORD(buf.tv_sec) = v394;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v395;
      HIWORD(buf.tv_nsec) = 1024;
      *v807 = v393;
      *&v807[4] = 1024;
      *&v807[6] = a4;
      LOWORD(v808) = 1024;
      *(&v808 + 2) = v66;
      HIWORD(v808) = 1024;
      *v809 = v181;
      *&v809[4] = 1026;
      *&v809[6] = v67;
      *&v809[10] = 1024;
      *&v809[12] = v396;
      *&v809[16] = 2160;
      *&v809[18] = 1752392040;
      *&v809[26] = 1040;
      *&v809[28] = v398;
      *&v809[32] = 2101;
      *&v809[34] = v399;
      v518 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
      v519 = v365;
      goto LABEL_800;
    }

    if (v28)
    {
      v366 = mDNSLogCategory_Default_redacted;
    }

    else
    {
      v366 = mDNSLogCategory_mDNS;
    }

    if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
    {
      v367 = a5 != 0;
      v368 = *(v803 + 200);
      v369 = bswap32(*(v804 + 340)) >> 16;
      v370 = *(a3 + 4);
      v371 = __n[0];
      v372 = __n[0] + 2;
      if (v372 <= v185)
      {
        v373 = v741;
        LOWORD(v741->isa) = __rev16(v370);
        v520 = v183;
        v707 = v369;
        loge = v370;
        v730 = v372;
        v521 = v368;
        memcpy(&v741->isa + 2, v520, v371);
        v369 = v707;
        v370 = loge;
        v368 = v521;
        v372 = v730;
        v367 = a5 != 0;
      }

      else
      {
        v373 = 0;
      }

      LODWORD(buf.tv_sec) = 67111683;
      HIDWORD(buf.tv_sec) = v368;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v369;
      HIWORD(buf.tv_nsec) = 1024;
      *v807 = v367;
      *&v807[4] = 1024;
      *&v807[6] = a4;
      LOWORD(v808) = 1024;
      *(&v808 + 2) = v66;
      HIWORD(v808) = 1024;
      *v809 = v181;
      *&v809[4] = 1026;
      *&v809[6] = v67;
      *&v809[10] = 1024;
      *&v809[12] = v370;
      *&v809[16] = 2160;
      *&v809[18] = 1752392040;
      *&v809[26] = 1040;
      *&v809[28] = v372;
      *&v809[32] = 2101;
      *&v809[34] = v373;
      v518 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
      v519 = v366;
LABEL_800:
      v522 = 76;
LABEL_858:
      _os_log_impl(&_mh_execute_header, v519, OS_LOG_TYPE_DEFAULT, v518, &buf, v522);
    }

LABEL_859:
    a7 = v803;
    v68 = v804;
    v527 = v768;
    if (!v768)
    {
      goto LABEL_952;
    }

    goto LABEL_860;
  }

  if (v28)
  {
    v188 = mDNSLogCategory_Default;
  }

  else
  {
    v188 = mDNSLogCategory_mDNS;
  }

  if (!mDNS_SensitiveLoggingEnableCount || v188 == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_952;
    }

    goto LABEL_414;
  }

  if (v28)
  {
    v188 = mDNSLogCategory_Default_redacted;
  }

  else
  {
    v188 = mDNSLogCategory_mDNS;
  }

  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
  {
LABEL_414:
    v263 = *(a7 + 200);
    v264 = bswap32(*(v804 + 340)) >> 16;
    v265 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110912;
    HIDWORD(buf.tv_sec) = v263;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v264;
    HIWORD(buf.tv_nsec) = 1024;
    *v807 = a5 != 0;
    *&v807[4] = 1024;
    *&v807[6] = a4;
    LOWORD(v808) = 1024;
    *(&v808 + 2) = v66;
    HIWORD(v808) = 1024;
    *v809 = v181;
    *&v809[4] = 1026;
    *&v809[6] = v67;
    *&v809[10] = 1024;
    *&v809[12] = v265;
    v152 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_415;
  }

LABEL_952:
  if (v46)
  {
    free(v46);
  }

  v638 = *(a3 + 24);
  v639 = v638 + 5;
  if (v638 + 5) < 6 && ((0x2Du >> v639))
  {
    LODWORD(v638) = dword_10010DF40[v639];
  }

  v640 = strlen(__s);
  v645 = *(a3 + 12);
  v646 = v640 + v645 + 23;
  if (!*(a7 + 290))
  {
    v648 = 0;
    goto LABEL_992;
  }

  v647 = 0;
  v648 = 0;
  if (!a5 || (v649 = *(a7 + 56)) == 0 || (v647 = 0, v648 = 0, v650 = *(a3 + 4), v650 > 0x1C) || ((1 << v650) & 0x10010002) == 0)
  {
    v655 = 0;
    goto LABEL_993;
  }

  *&__n[1] = 0;
  if (v650 != 28)
  {
    if (v650 == 16)
    {
      if (*(v649 + 16) != &_mdns_signed_browse_result_kind)
      {
        v651 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_985;
          }
        }

        else
        {
          v651 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_985;
          }
        }

        v657 = *(a7 + 200);
        v658 = bswap32(*(v68 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109376;
        HIDWORD(buf.tv_sec) = v657;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v658;
        v654 = "[R%u->Q%u] queryrecord_result_reply mdns_signed_browse_result_downcast failed";
        goto LABEL_984;
      }

      ipv4 = _mdns_signed_browse_result_create_ex((*(v649 + 32) + 32), *(v649 + 24), v638, (*(a3 + 40) + 4), v645, &__n[1]);
      goto LABEL_1050;
    }

    if (v650 != 1)
    {
      goto LABEL_985;
    }
  }

  if (*(v649 + 16) != &_mdns_signed_resolve_result_kind)
  {
    v651 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_969;
      }
    }

    else
    {
      v651 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
LABEL_969:
        v652 = *(a7 + 200);
        v653 = bswap32(*(v68 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109376;
        HIDWORD(buf.tv_sec) = v652;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v653;
        v654 = "[R%u->Q%u] queryrecord_result_reply mdns_signed_resolve_result_downcast failed";
LABEL_984:
        _os_log_impl(&_mh_execute_header, v651, OS_LOG_TYPE_ERROR, v654, &buf, 0xEu);
      }
    }

LABEL_985:
    v648 = 0;
    goto LABEL_986;
  }

  if (v650 == 1)
  {
    ipv4 = mdns_signed_hostname_result_create_ipv4(v649, (*(a3 + 40) + 4), &__n[1]);
  }

  else
  {
    ipv4 = mdns_signed_hostname_result_create_ipv6(v649, (*(a3 + 40) + 4), v638, &__n[1]);
  }

LABEL_1050:
  v648 = ipv4;
  if (!ipv4 || *&__n[1])
  {
LABEL_986:
    v659 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
LABEL_991:
        v660 = *(a7 + 200);
        v661 = bswap32(*(v68 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109632;
        HIDWORD(buf.tv_sec) = v660;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v661;
        HIWORD(buf.tv_nsec) = 2048;
        *v807 = *&__n[1];
        _os_log_impl(&_mh_execute_header, v659, OS_LOG_TYPE_ERROR, "[R%u->Q%u] queryrecord_result_reply signed_result failed %ld", &buf, 0x18u);
      }
    }

    else
    {
      v659 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_991;
      }
    }

LABEL_992:
    v655 = 0;
    v647 = 0;
    goto LABEL_993;
  }

  buf.tv_sec = 0;
  data = mdns_signed_result_get_data(ipv4, &buf);
  tv_sec = buf.tv_sec;
  if (buf.tv_sec >= 0x10000uLL)
  {
    v655 = 0;
  }

  else
  {
    v655 = data;
  }

  if (buf.tv_sec >= 0x10000uLL)
  {
    tv_sec = 0;
  }

  v647 = tv_sec;
  if (buf.tv_sec >= 0x10000uLL)
  {
    v699 = 0;
  }

  else
  {
    v699 = buf.tv_sec + 4;
  }

  v646 += v699;
LABEL_993:
  if (*&__n[3])
  {
    v646 += strlen(*&__n[3]) + 5;
  }

  if (*(v803 + 228) == 8)
  {
    v662 = 68;
  }

  else
  {
    v662 = 72;
  }

  reply = create_reply(v662, v646, v803, v641, v645, v642, v643, v644);
  v664 = reply;
  v665 = v799 | 2;
  if (!a5)
  {
    v665 = v799;
  }

  if (a4)
  {
    v665 |= 0x80000000;
  }

  if (!*(v68 + 357))
  {
    v665 |= 0x40000000u;
  }

  *(reply + 11) = bswap32(v665);
  v666 = reply + 44;
  *(reply + 12) = bswap32(v638);
  *(reply + 13) = bswap32(v800);
  v667 = reply + 56;
  v668 = strlen(__s) + 1;
  memcpy(v667, __s, v668);
  v673 = &v667[v668];
  *v673 = bswap32(*(a3 + 4)) >> 16;
  *(v673 + 1) = bswap32(*(a3 + 6)) >> 16;
  v674 = &v667[v668 + 6];
  *(v673 + 2) = bswap32(*(a3 + 12)) >> 16;
  if (*(a3 + 12) && !putRData(0, v674, &v666[v646], a3, v669, v670, v671, v672))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "queryrecord_result_reply putRData failed %d", v675, v676, v677, v678, v679, v666 + v646 - v674);
  }

  v680 = &v674[*(a3 + 12)];
  if (a5)
  {
    v681 = *(a3 + 8);
  }

  else
  {
    v681 = 0;
  }

  *v680 = bswap32(v681);
  v682 = v680 + 4;
  if (v655)
  {
    if (v680 != -4 && v682 <= &v682[v646] && v646 >= v647 + 4)
    {
      *(v680 + 2) = 1792;
      v680[6] = BYTE1(v647);
      v682 = v680 + 8;
      v680[7] = v647;
      if (v647)
      {
        memcpy(v680 + 8, v655, v647);
        v682 += v647;
      }
    }

    *(v664 + 6) |= 2u;
  }

  if (v648)
  {
    os_release(v648);
  }

  v683 = *&__n[3];
  if (!*&__n[3])
  {
    goto LABEL_1032;
  }

  v684 = strlen(*&__n[3]);
  v685 = v684 + 1;
  if (!((v684 + 1) >> 16))
  {
    if (v682)
    {
      if (v682 <= &v682[v646] && v646 >= v684 + 5)
      {
        *v682 = 2304;
        v682[2] = BYTE1(v685);
        v682[3] = v685;
        if (v684 != -1)
        {
          memcpy(v682 + 4, v683, v685);
        }
      }
    }
  }

  *(v664 + 6) |= 2u;
  v686 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_1032;
    }
  }

  else
  {
    v686 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_1032;
    }
  }

  v687 = *(v803 + 200);
  v688 = bswap32(*(v804 + 340)) >> 16;
  LODWORD(buf.tv_sec) = 67109891;
  HIDWORD(buf.tv_sec) = v687;
  LOWORD(buf.tv_nsec) = 1024;
  *(&buf.tv_nsec + 2) = v688;
  HIWORD(buf.tv_nsec) = 2160;
  *v807 = 1752392040;
  *&v807[8] = 2085;
  v808 = *&__n[3];
  _os_log_impl(&_mh_execute_header, v686, OS_LOG_TYPE_DEBUG, "[R%u->Q%u] queryrecord_result_reply add tracker %{sensitive, mask.hash}s", &buf, 0x22u);
LABEL_1032:
  if (v801 && &_NEHelperTrackerGetAppInfo)
  {
    v689 = &s_head_0;
    while (1)
    {
      v689 = *v689;
      if (!v689)
      {
        break;
      }

      if (v689[1] == v804)
      {
        if (_cache_item_get_tracker_state(v689))
        {
          Count = CFArrayGetCount(v689[6]);
          if (Count >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v689[6], Count - 1);
            CFDataGetLength(ValueAtIndex);
            buf.tv_sec = CFDataGetBytePtr(ValueAtIndex);
            v692 = CFArrayGetCount(v689[5]);
            if (v692)
            {
              CFArrayGetValueAtIndex(v689[5], v692 - 1);
            }

            v693 = *(v689 + 8);
            v694 = v689[2];
            v695 = v689[3];
            NEHelperTrackerAddIPForAllFlowsRedactLogs();
          }
        }

        break;
      }
    }
  }

  if (*(v803 + 292))
  {
    if (v664)
    {
      free(v664);
    }
  }

  else
  {
    v696 = *(v803 + 24);
    if (!v696)
    {
      v696 = v803;
    }

    *v664 = 0;
    **(v696 + 104) = v664;
    *(v696 + 104) = v664;
  }
}

void ___handle_addrinfo_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return;
  }

  v6 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v6, v7, v8, v9, v10, v11, v12, v13);
  v21 = *(a1 + 32);
  if (!*(v21 + 64) || (*(v21 + 27) & 1) == 0)
  {
    v14 = *(v21 + 56);
    if (v14)
    {
      if (a3 == 1)
      {
        v14 = _handle_addrinfo_request_start(*(a1 + 40), v14);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        LODWORD(v14) = -65570;
      }

      _return_queryrecord_request_error(*(a1 + 40), v14);
    }
  }

LABEL_10:

  KQueueUnlock("_handle_addrinfo_request_with_trust", v14, v15, v16, v17, v18, v19, v20);
}

void _return_queryrecord_request_error(uint64_t a1, unsigned int a2)
{
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
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 200);
    if (*(a1 + 228) == 8)
    {
      v7 = "QueryRecord";
    }

    else
    {
      v7 = "GetAddrInfo";
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 200);
    if (*(a1 + 228) == 8)
    {
      v7 = "QueryRecord";
    }

    else
    {
      v7 = "GetAddrInfo";
    }
  }

  v16[0] = 67109634;
  v16[1] = v6;
  v17 = 2082;
  v18 = v7;
  v19 = 1024;
  v20 = a2;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[R%u] DNSService%{public}s _return_queryrecord_request_error: error(%d)", v16, 0x18u);
LABEL_15:
  if (*(a1 + 228) == 8)
  {
    v14 = 68;
  }

  else
  {
    v14 = 72;
  }

  reply = create_reply(v14, 23, a1, v9, v10, v11, v12, v13);
  *(reply + 11) = 0;
  *(reply + 12) = 0;
  *(reply + 13) = bswap32(a2);
  *(reply + 7) = 0;
  *(reply + 63) = 0;
  append_reply(a1, reply);
}

void ___handle_addrinfo_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void port_mapping_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 160);
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
    if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 200);
      if (*(v2 + 180) == 1)
      {
        v6 = 16;
      }

      else
      {
        v6 = 32;
      }

      if (*(v2 + 180))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = mDNSLogCategory_NAT_redacted;
    if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 200);
      if (*(v2 + 180) == 1)
      {
        v9 = 16;
      }

      else
      {
        v9 = 32;
      }

      if (*(v2 + 180))
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

LABEL_20:
      v10 = bswap32(v2[91]) >> 16;
      v11 = bswap32(*v2) >> 16;
      v12 = *(v2 + 47);
      v13 = *(a1 + 188);
      v15.tv_sec = 0;
      v15.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, &v15);
      v14 = LODWORD(v15.tv_sec) - *(a1 + 204);
      LODWORD(v15.tv_sec) = 67110914;
      HIDWORD(v15.tv_sec) = v5;
      LOWORD(v15.tv_nsec) = 1024;
      *(&v15.tv_nsec + 2) = v7;
      HIWORD(v15.tv_nsec) = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 2082;
      v24 = a1 + 256;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) STOP PID[%d](%{public}s) -- duration: %{mdns:time_duration}u", &v15, 0x36u);
    }
  }

  mDNS_Lock_(mDNSStorage, "mDNS_StopNATOperation", 1012);
  mDNS_StopNATOperation_internal(mDNSStorage, (v2 + 4));
  mDNS_Unlock_(mDNSStorage, "mDNS_StopNATOperation", 1014);
}

void port_mapping_create_request_callback(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a2 + 192);
  if (v9)
  {
    reply = create_reply(0x47, 25, v9, a4, a5, a6, a7, a8);
    *(reply + 11) = 0;
    *(reply + 12) = bswap32(mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a2 + 144), 0, v13, v14, v15, v16, v17));
    *(reply + 13) = bswap32(*(a2 + 168));
    v18 = *(v9 + 160);
    reply[56] = *(v18 + 160);
    reply[57] = *(v18 + 161);
    reply[58] = *(v18 + 162);
    reply[59] = *(v18 + 163);
    if (*(v18 + 180) == 1)
    {
      v19 = 16;
    }

    else
    {
      v19 = 32;
    }

    if (*(v18 + 180))
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    reply[60] = v20;
    reply[61] = *(v18 + 182);
    reply[62] = *(v18 + 183);
    reply[63] = *(v18 + 168);
    reply[64] = *(v18 + 169);
    *(reply + 65) = bswap32(*(v18 + 43));
    v21 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v22 = *(v9 + 200);
      v28 = *(v18 + 180);
      if (v28 == 1)
      {
        v24 = 16;
      }

      else
      {
        v24 = 32;
      }

      v25 = v28 == 0;
      v26 = v18[91];
      if (v25)
      {
        v24 = 0;
      }
    }

    else
    {
      v21 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v22 = *(v9 + 200);
      v23 = *(v18 + 180);
      if (v23 == 1)
      {
        v24 = 16;
      }

      else
      {
        v24 = 32;
      }

      v25 = v23 == 0;
      v26 = v18[91];
      if (v25)
      {
        v24 = 0;
      }
    }

    v29 = *(v18 + 47);
    v30 = bswap32(*v18) >> 16;
    v31 = bswap32(v18[84]) >> 16;
    v32 = *(v18 + 43);
    v34[0] = 67111427;
    v34[1] = v22;
    v35 = 1024;
    v36 = v24;
    v37 = 1024;
    v38 = bswap32(v26) >> 16;
    v39 = 1024;
    v40 = v30;
    v41 = 1024;
    v42 = v29;
    v43 = 2160;
    v44 = 1752392040;
    v45 = 1045;
    v46 = 4;
    v47 = 2101;
    v48 = v18 + 80;
    v49 = 1024;
    v50 = v31;
    v51 = 1024;
    v52 = v32;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) RESULT %{sensitive, mask.hash, network:in_addr}.4P:%u TTL %u", v34, 0x46u);
LABEL_27:
    if (*(v9 + 292))
    {
      free(reply);
    }

    else
    {
      v33 = *(v9 + 24);
      if (!v33)
      {
        v33 = v9;
      }

      *reply = 0;
      **(v33 + 104) = reply;
      *(v33 + 104) = reply;
    }

    return;
  }

  v27 = mDNSLogCategory_Default;

  LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "port_mapping_create_request_callback called with unknown request_state object", a4, a5, a6, a7, a8, a9);
}

void enum_termination_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 120);
  if ((*v8 & 0x80) != 0)
  {
    if (mDNS_LoggingEnabled)
    {
      v10 = *(a1 + 188);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumeration Cancel WAB Registration PID[%d](%s)", a4, a5, a6, a7, a8, *(a1 + 184));
    }

    uDNS_StopWABQueries(4, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (mDNS_LoggingEnabled)
    {
      v9 = *(a1 + 188);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumeration Cancel WAB Browse PID[%d](%s)", a4, a5, a6, a7, a8, *(a1 + 184));
    }

    uDNS_StopWABQueries(3, a2, a3, a4, a5, a6, a7, a8);
    mDNS_StopQuery(mDNSStorage, (v8 + 1400));
  }

  mDNS_StopQuery(mDNSStorage, (v8 + 8));

  mDNS_StopQuery(mDNSStorage, (v8 + 704));
}

void ___handle_regservice_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    v20 = *(a1 + 32);
    if (*(v20 + 64) && (*(v20 + 27) & 1) != 0)
    {
      goto LABEL_19;
    }

    v13 = *(v20 + 56);
    if (!v13)
    {
      goto LABEL_19;
    }

    if (a3 == 1)
    {
      v21 = _handle_regservice_request_start(*(a1 + 40), v13);
      if (!v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = -65570;
    }

    v22 = *(a1 + 40);
    v23 = *(v22 + 128);
    v24 = *(v23 + 16);
    if (v24)
    {
      free(v24);
      *(v23 + 16) = 0;
    }

    v27 = 0;
    if (GenerateNTDResponse(0, 0, v22, &v27, 0x41, 0, v21))
    {
      v25 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:
          v26 = *(v22 + 200);
          *buf = 67109376;
          v29 = v26;
          v30 = 1024;
          v31 = v21;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister _return_regservice_request_error: error(%d)", buf, 0xEu);
        }
      }

      else
      {
        v25 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      append_reply(v22, v27);
    }

LABEL_19:
    KQueueUnlock("_register_service_instance_with_trust", v13, v14, v15, v16, v17, v18, v19);
  }
}

void ___handle_regservice_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_browse_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    v20 = *(a1 + 32);
    if (*(v20 + 64) && (*(v20 + 27) & 1) != 0)
    {
      goto LABEL_16;
    }

    v13 = *(v20 + 56);
    if (!v13)
    {
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      v21 = _handle_browse_request_start(*(a1 + 40), v13, v14, v15, v16, v17, v18, v19);
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = -65570;
    }

    v22 = *(a1 + 40);
    v25 = 0;
    GenerateBrowseReply(0, 0, v22, &v25, 0, v21);
    v23 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v24 = *(v22 + 200);
        *buf = 67109376;
        v27 = v24;
        v28 = 1024;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse _return_browse_request_error: error (%d)", buf, 0xEu);
      }
    }

    else
    {
      v23 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    append_reply(v22, v25);
LABEL_16:
    KQueueUnlock("_handle_browse_request_with_trust", v13, v14, v15, v16, v17, v18, v19);
  }
}

void ___handle_browse_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_queryrecord_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_resolve_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    v5 = pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    v20 = *(a1 + 32);
    if (*(v20 + 64) && (*(v20 + 27) & 1) != 0)
    {
      goto LABEL_16;
    }

    v13 = *(v20 + 56);
    if (!v13)
    {
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      v21 = _handle_resolve_request_start(*(a1 + 40), v13);
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = -65570;
    }

    v22 = *(a1 + 40);
    v23 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v29 = *(v22 + 200);
        v31[0] = 67109376;
        v31[1] = v29;
        v32 = 1024;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve _return_resolve_request_error: error(%d)", v31, 0xEu);
      }
    }

    else
    {
      v23 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    reply = create_reply(0x43, 18, v22, v24, v25, v26, v27, v28);
    *(reply + 11) = 0;
    *(reply + 12) = 0;
    *(reply + 52) = bswap32(v21);
    *(reply + 30) = 0;
    append_reply(v22, reply);
LABEL_16:
    KQueueUnlock("_handle_resolve_request_with_trust", v13, v14, v15, v16, v17, v18, v19);
  }
}

void ___handle_resolve_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void resolve_result_callback(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  bzero(__s, 0x3F1uLL);
  bzero(&v460, 0x3F0uLL);
  __src = 48;
  v8 = *(a2 + 176);
  v9 = (a2 + 376);
  v10 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v11 = *(a2 + 340);
  v455 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 3), 0, v12, v13, v14, v15, v16);
  v17 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v18 = *(v8 + 208);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  v454 = a2;
  if (!v18 || LODWORD(__tp.tv_sec) - v18 >= 300)
  {
    *(v8 + 208) = __tp.tv_sec;
    v37 = *(a3 + 7);
    if (v37)
    {
      v38 = v17;
      v39 = v8;
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v37);
      v41 = *(a2 + 340);
      v43 = a3 + 12;
      v42 = *(a3 + 6);
      v44 = v42 < 0x201;
      if (validation_result)
      {
        if (*(a2 + 340))
        {
          if (v42 >= 0x201)
          {
            v101 = malloc_type_malloc(v42, 0xFB8423B4uLL);
            if (!v101)
            {
              goto LABEL_627;
            }

            v28 = v101;
            v46 = *v43;
            v45 = v101;
            if (*v43)
            {
LABEL_16:
              __n_2 = 0;
              __n = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v45, v46, &__n, &__n_2, v19, v20, v21);
              if (!__n_2)
              {
                v48 = RDataBytesPointer;
                v446 = a3;
                if (__n >= 0x1FFuLL)
                {
                  v421 = __n + 2;
                  v167 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
                  if (!v167)
                  {
                    goto LABEL_627;
                  }

                  v434 = v167;
                  v413 = v167;
                }

                else
                {
                  v413 = word_1001789D0;
                  v421 = 512;
                  v434 = 0;
                }

                if (v11)
                {
                  v168 = mDNSLogCategory_Default;
                }

                else
                {
                  v168 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v168 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_440;
                  }

                  v184 = *(v39 + 200);
                  v185 = bswap32(*(v454 + 340)) >> 16;
                  v186 = a4 != 0;
                  v187 = v9;
                  v452 = v10;
                  while (1)
                  {
                    if (!v187 || (v188 = *v187, v188 > 0x3F))
                    {
LABEL_272:
                      v189 = 257;
                      goto LABEL_404;
                    }

                    if (!*v187)
                    {
                      break;
                    }

                    v187 += v188 + 1;
                    if (v187 - v9 >= 256)
                    {
                      goto LABEL_272;
                    }
                  }

                  v189 = (v187 - v9 + 1);
LABEL_404:
                  v260 = *(v446 + 2);
                  v261 = __n;
                  v262 = __n + 2;
                  if (v262 <= v421)
                  {
                    *v413 = __rev16(v260);
                    v264 = v48;
                    v428 = v184;
                    v408 = v262;
                    v265 = v189;
                    memcpy(v413 + 1, v264, v261);
                    v263 = v413;
                    v186 = a4 != 0;
                    v262 = v408;
                    v189 = v265;
                    v184 = v428;
                  }

                  else
                  {
                    v263 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v184;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v185;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v463 = v186;
                  *&v463[4] = 1024;
                  *&v463[6] = 0;
                  *&v463[10] = 1024;
                  *&v463[12] = v455;
                  *&v463[16] = 2160;
                  *&v463[18] = 1752392040;
                  *&v463[26] = 1040;
                  *&v463[28] = v189;
                  *&v463[32] = 2101;
                  *&v463[34] = v9;
                  *&v463[42] = 1024;
                  *&v463[44] = v38;
                  *&v463[48] = 1026;
                  *&v463[50] = validation_result;
                  *&v463[54] = 1024;
                  *&v463[56] = v260;
                  *&v463[60] = 2160;
                  *&v463[62] = 1752392040;
                  *&v463[70] = 1040;
                  *&v463[72] = v262;
                  *&v463[76] = 2101;
                  *&v463[78] = v263;
                  v266 = v168;
                }

                else
                {
                  if (v11)
                  {
                    v169 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v169 = mDNSLogCategory_mDNS;
                  }

                  if (!os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_440:
                    a3 = v446;
                    if (v434)
                    {
                      free(v434);
                    }

                    goto LABEL_442;
                  }

                  v170 = *(v39 + 200);
                  v171 = bswap32(*(v454 + 340)) >> 16;
                  v172 = v9;
                  v452 = v10;
                  while (1)
                  {
                    if (!v172 || (v173 = *v172, v173 > 0x3F))
                    {
LABEL_252:
                      v174 = 257;
                      goto LABEL_409;
                    }

                    if (!*v172)
                    {
                      break;
                    }

                    v172 += v173 + 1;
                    if (v172 - v9 >= 256)
                    {
                      goto LABEL_252;
                    }
                  }

                  v174 = (v172 - v9 + 1);
LABEL_409:
                  v267 = *(v446 + 2);
                  v268 = __n;
                  v269 = __n + 2;
                  if (v269 <= v421)
                  {
                    *v413 = __rev16(v267);
                    v271 = v48;
                    v406 = v170;
                    v409 = v269;
                    v429 = v169;
                    v272 = v171;
                    v273 = v267;
                    memcpy(v413 + 1, v271, v268);
                    v267 = v273;
                    v170 = v406;
                    v269 = v409;
                    v171 = v272;
                    v270 = v413;
                    v169 = v429;
                  }

                  else
                  {
                    v270 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v170;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v171;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v463 = a4 != 0;
                  *&v463[4] = 1024;
                  *&v463[6] = 0;
                  *&v463[10] = 1024;
                  *&v463[12] = v455;
                  *&v463[16] = 2160;
                  *&v463[18] = 1752392040;
                  *&v463[26] = 1040;
                  *&v463[28] = v174;
                  *&v463[32] = 2101;
                  *&v463[34] = v9;
                  *&v463[42] = 1024;
                  *&v463[44] = v38;
                  *&v463[48] = 1026;
                  *&v463[50] = validation_result;
                  *&v463[54] = 1024;
                  *&v463[56] = v267;
                  *&v463[60] = 2160;
                  *&v463[62] = 1752392040;
                  *&v463[70] = 1040;
                  *&v463[72] = v269;
                  *&v463[76] = 2101;
                  *&v463[78] = v270;
                  v266 = v169;
                }

                _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x66u);
LABEL_439:
                v10 = v452;
                goto LABEL_440;
              }

              goto LABEL_442;
            }
          }

          else
          {
            v28 = 0;
            v45 = &word_1001787D0;
            v46 = 512;
            if (*(a3 + 6))
            {
              goto LABEL_16;
            }
          }

          if (v11)
          {
            v102 = mDNSLogCategory_Default;
          }

          else
          {
            v102 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v102 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_442;
            }

            v103 = *(v39 + 200);
            v104 = bswap32(*(v454 + 340)) >> 16;
            v105 = a4 != 0;
            v133 = v9;
            v107 = v455;
            while (1)
            {
              if (!v133 || (v134 = *v133, v134 > 0x3F))
              {
LABEL_184:
                v109 = 257;
                goto LABEL_382;
              }

              if (!*v133)
              {
                break;
              }

              v133 += v134 + 1;
              if (v133 - v9 >= 256)
              {
                goto LABEL_184;
              }
            }

            v109 = (v133 - v9 + 1);
          }

          else
          {
            if (v11)
            {
              v102 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v102 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_442;
            }

            v103 = *(v39 + 200);
            v104 = bswap32(*(v454 + 340)) >> 16;
            v105 = a4 != 0;
            v106 = v9;
            v107 = v455;
            while (1)
            {
              if (!v106 || (v108 = *v106, v108 > 0x3F))
              {
LABEL_98:
                v109 = 257;
                goto LABEL_382;
              }

              if (!*v106)
              {
                break;
              }

              v106 += v108 + 1;
              if (v106 - v9 >= 256)
              {
                goto LABEL_98;
              }
            }

            v109 = (v106 - v9 + 1);
          }

LABEL_382:
          v234 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111683;
          HIDWORD(__tp.tv_sec) = v103;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v104;
          HIWORD(__tp.tv_nsec) = 1024;
          *v463 = v105;
          *&v463[4] = 1024;
          *&v463[6] = 0;
          *&v463[10] = 1024;
          *&v463[12] = v107;
          *&v463[16] = 2160;
          *&v463[18] = 1752392040;
          *&v463[26] = 1040;
          *&v463[28] = v109;
          *&v463[32] = 2101;
          *&v463[34] = v9;
          *&v463[42] = 1024;
          *&v463[44] = v38;
          *&v463[48] = 1026;
          *&v463[50] = validation_result;
          *&v463[54] = 1024;
          *&v463[56] = v234;
          v235 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          v236 = v102;
          v237 = 76;
LABEL_417:
          _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, v235, &__tp, v237);
          goto LABEL_442;
        }

        if (v42 >= 0x201)
        {
          v122 = malloc_type_malloc(v42, 0xFB8423B4uLL);
          if (!v122)
          {
            goto LABEL_627;
          }

          v28 = v122;
          v88 = *v43;
          v87 = v122;
          if (*v43)
          {
LABEL_74:
            __n_2 = 0;
            __n = 0;
            v89 = ResourceRecordGetRDataBytesPointer(a3, v87, v88, &__n, &__n_2, v19, v20, v21);
            if (!__n_2)
            {
              v90 = v89;
              v446 = a3;
              v452 = v10;
              if (__n >= 0x1FFuLL)
              {
                v91 = __n + 2;
                v211 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
                if (!v211)
                {
                  goto LABEL_627;
                }

                v422 = v211;
                v434 = v211;
              }

              else
              {
                v422 = word_1001789D0;
                v434 = 0;
                v91 = 512;
              }

              if (v11)
              {
                v212 = mDNSLogCategory_Default;
              }

              else
              {
                v212 = mDNSLogCategory_mDNS;
              }

              if (!mDNS_SensitiveLoggingEnableCount || v212 == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_439;
                }

                v213 = *(v39 + 200);
                v214 = a4 != 0;
                v225 = v9;
                v402 = a4;
                while (1)
                {
                  if (!v225 || (v226 = *v225, v226 > 0x3F))
                  {
LABEL_362:
                    v217 = 257;
                    goto LABEL_431;
                  }

                  if (!*v225)
                  {
                    break;
                  }

                  v225 += v226 + 1;
                  if (v225 - v9 >= 256)
                  {
                    goto LABEL_362;
                  }
                }

                v217 = (v225 - v9 + 1);
LABEL_431:
                v287 = *(v446 + 2);
                v288 = __n;
                v289 = __n + 2;
                if (v289 <= v91)
                {
                  v290 = v422;
                  *v422 = __rev16(v287);
                  v291 = v90;
                  v292 = v213;
                  v410 = v217;
                  v418 = v289;
                  memcpy(v422 + 1, v291, v288);
                  v289 = v418;
                  v217 = v410;
                  v214 = a4 != 0;
                  v213 = v292;
                }

                else
                {
                  v290 = 0;
                }
              }

              else
              {
                if (v11)
                {
                  v212 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v212 = mDNSLogCategory_mDNS;
                }

                if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_439;
                }

                v213 = *(v39 + 200);
                v214 = a4 != 0;
                v215 = v9;
                v402 = a4;
                while (1)
                {
                  if (!v215 || (v216 = *v215, v216 > 0x3F))
                  {
LABEL_342:
                    v217 = 257;
                    goto LABEL_435;
                  }

                  if (!*v215)
                  {
                    break;
                  }

                  v215 += v216 + 1;
                  if (v215 - v9 >= 256)
                  {
                    goto LABEL_342;
                  }
                }

                v217 = (v215 - v9 + 1);
LABEL_435:
                v287 = *(v446 + 2);
                v293 = __n;
                v289 = __n + 2;
                if (v289 <= v91)
                {
                  v290 = v422;
                  *v422 = __rev16(v287);
                  v294 = v90;
                  v295 = v213;
                  v419 = v212;
                  v296 = v217;
                  v411 = v289;
                  memcpy(v422 + 1, v294, v293);
                  v289 = v411;
                  v217 = v296;
                  v212 = v419;
                  v214 = a4 != 0;
                  v213 = v295;
                }

                else
                {
                  v290 = 0;
                }
              }

              LODWORD(__tp.tv_sec) = 67112195;
              HIDWORD(__tp.tv_sec) = v213;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v214;
              HIWORD(__tp.tv_nsec) = 1024;
              *v463 = 0;
              *&v463[4] = 1024;
              *&v463[6] = v455;
              *&v463[10] = 2160;
              *&v463[12] = 1752392040;
              *&v463[20] = 1040;
              *&v463[22] = v217;
              *&v463[26] = 2101;
              *&v463[28] = v9;
              *&v463[36] = 1024;
              *&v463[38] = v38;
              *&v463[42] = 1026;
              *&v463[44] = validation_result;
              *&v463[48] = 1024;
              *&v463[50] = v287;
              *&v463[54] = 2160;
              *&v463[56] = 1752392040;
              *&v463[64] = 1040;
              *&v463[66] = v289;
              *&v463[70] = 2101;
              *&v463[72] = v290;
              _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x60u);
              a4 = v402;
              goto LABEL_439;
            }

LABEL_442:
            v8 = v39;
            goto LABEL_443;
          }
        }

        else
        {
          v28 = 0;
          v87 = &word_1001787D0;
          v88 = 512;
          if (*(a3 + 6))
          {
            goto LABEL_74;
          }
        }

        if (v11)
        {
          v123 = mDNSLogCategory_Default;
        }

        else
        {
          v123 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v123 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_442;
          }

          v124 = *(v39 + 200);
          v125 = a4 != 0;
          v190 = v9;
          v127 = v455;
          while (1)
          {
            if (!v190 || (v191 = *v190, v191 > 0x3F))
            {
LABEL_282:
              v129 = 257;
              goto LABEL_416;
            }

            if (!*v190)
            {
              break;
            }

            v190 += v191 + 1;
            if (v190 - v9 >= 256)
            {
              goto LABEL_282;
            }
          }

          v129 = (v190 - v9 + 1);
        }

        else
        {
          if (v11)
          {
            v123 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v123 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_442;
          }

          v124 = *(v39 + 200);
          v125 = a4 != 0;
          v126 = v9;
          v127 = v455;
          while (1)
          {
            if (!v126 || (v128 = *v126, v128 > 0x3F))
            {
LABEL_156:
              v129 = 257;
              goto LABEL_416;
            }

            if (!*v126)
            {
              break;
            }

            v126 += v128 + 1;
            if (v126 - v9 >= 256)
            {
              goto LABEL_156;
            }
          }

          v129 = (v126 - v9 + 1);
        }

LABEL_416:
        v274 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111427;
        HIDWORD(__tp.tv_sec) = v124;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v125;
        HIWORD(__tp.tv_nsec) = 1024;
        *v463 = 0;
        *&v463[4] = 1024;
        *&v463[6] = v127;
        *&v463[10] = 2160;
        *&v463[12] = 1752392040;
        *&v463[20] = 1040;
        *&v463[22] = v129;
        *&v463[26] = 2101;
        *&v463[28] = v9;
        *&v463[36] = 1024;
        *&v463[38] = v38;
        *&v463[42] = 1026;
        *&v463[44] = validation_result;
        *&v463[48] = 1024;
        *&v463[50] = v274;
        v235 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        v236 = v123;
        v237 = 70;
        goto LABEL_417;
      }

      v8 = v39;
      v17 = v38;
      if (!*(a2 + 340))
      {
LABEL_33:
        if (v44)
        {
          v28 = 0;
          v61 = &word_1001787D0;
          v62 = 512;
          if (v42)
          {
LABEL_35:
            __n_2 = 0;
            __n = 0;
            v63 = ResourceRecordGetRDataBytesPointer(a3, v61, v62, &__n, &__n_2, v19, v20, v21);
            if (__n_2)
            {
              goto LABEL_443;
            }

            v64 = v63;
            v447 = a3;
            v451 = v10;
            if (__n >= 0x1FFuLL)
            {
              v65 = __n + 2;
              v194 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
              if (!v194)
              {
                goto LABEL_627;
              }

              v53 = v194;
              v437 = v194;
            }

            else
            {
              v53 = 0;
              v437 = word_1001789D0;
              v65 = 512;
            }

            if (v11)
            {
              v195 = mDNSLogCategory_Default;
            }

            else
            {
              v195 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v195 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_428;
              }

              v196 = *(v8 + 200);
              v197 = a4 != 0;
              v209 = v9;
              v444 = v17;
              v401 = a4;
              while (1)
              {
                if (!v209 || (v210 = *v209, v210 > 0x3F))
                {
LABEL_322:
                  v200 = 257;
                  goto LABEL_419;
                }

                if (!*v209)
                {
                  break;
                }

                v209 += v210 + 1;
                if (v209 - v9 >= 256)
                {
                  goto LABEL_322;
                }
              }

              v200 = (v209 - v9 + 1);
LABEL_419:
              v275 = *(v447 + 2);
              v276 = __n;
              v277 = __n + 2;
              if (v277 <= v65)
              {
                v278 = v437;
                *v437 = __rev16(v275);
                v279 = v64;
                v280 = v196;
                v281 = v275;
                v430 = v277;
                memcpy(v437 + 1, v279, v276);
                v277 = v430;
                v275 = v281;
                v197 = a4 != 0;
                v196 = v280;
              }

              else
              {
                v278 = 0;
              }

              goto LABEL_426;
            }

            if (v11)
            {
              v195 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v195 = mDNSLogCategory_mDNS;
            }

            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              v196 = *(v8 + 200);
              v197 = a4 != 0;
              v198 = v9;
              v444 = v17;
              v401 = a4;
              while (1)
              {
                if (!v198 || (v199 = *v198, v199 > 0x3F))
                {
LABEL_302:
                  v200 = 257;
                  goto LABEL_423;
                }

                if (!*v198)
                {
                  break;
                }

                v198 += v199 + 1;
                if (v198 - v9 >= 256)
                {
                  goto LABEL_302;
                }
              }

              v200 = (v198 - v9 + 1);
LABEL_423:
              v275 = *(v447 + 2);
              v282 = __n;
              v277 = __n + 2;
              if (v277 <= v65)
              {
                v278 = v437;
                *v437 = __rev16(v275);
                v283 = v64;
                v284 = v196;
                v431 = v195;
                v285 = v275;
                v286 = v277;
                memcpy(v437 + 1, v283, v282);
                v277 = v286;
                v275 = v285;
                v195 = v431;
                v197 = a4 != 0;
                v196 = v284;
              }

              else
              {
                v278 = 0;
              }

LABEL_426:
              LODWORD(__tp.tv_sec) = 67111939;
              HIDWORD(__tp.tv_sec) = v196;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v197;
              HIWORD(__tp.tv_nsec) = 1024;
              *v463 = 0;
              *&v463[4] = 1024;
              *&v463[6] = v455;
              *&v463[10] = 2160;
              *&v463[12] = 1752392040;
              *&v463[20] = 1040;
              *&v463[22] = v200;
              *&v463[26] = 2101;
              *&v463[28] = v9;
              *&v463[36] = 1024;
              *&v463[38] = v444;
              *&v463[42] = 1024;
              *&v463[44] = v275;
              *&v463[48] = 2160;
              *&v463[50] = 1752392040;
              *&v463[58] = 1040;
              *&v463[60] = v277;
              *&v463[64] = 2101;
              *&v463[66] = v278;
              v246 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v256 = v195;
              v257 = 90;
              goto LABEL_427;
            }

LABEL_428:
            v10 = v451;
            a3 = v447;
            if (v53)
            {
              free(v53);
            }

            goto LABEL_443;
          }
        }

        else
        {
          v112 = malloc_type_malloc(v42, 0xFB8423B4uLL);
          if (!v112)
          {
            goto LABEL_627;
          }

          v28 = v112;
          v62 = *v43;
          v61 = v112;
          if (*v43)
          {
            goto LABEL_35;
          }
        }

        if (v11)
        {
          v113 = mDNSLogCategory_Default;
        }

        else
        {
          v113 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v113 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_443;
          }

          v114 = *(v8 + 200);
          v115 = a4 != 0;
          v163 = v9;
          v117 = v455;
          while (1)
          {
            if (!v163 || (v164 = *v163, v164 > 0x3F))
            {
LABEL_233:
              v119 = 257;
              goto LABEL_396;
            }

            if (!*v163)
            {
              break;
            }

            v163 += v164 + 1;
            if (v163 - v9 >= 256)
            {
              goto LABEL_233;
            }
          }

          v119 = (v163 - v9 + 1);
        }

        else
        {
          if (v11)
          {
            v113 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v113 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_443;
          }

          v114 = *(v8 + 200);
          v115 = a4 != 0;
          v116 = v9;
          v117 = v455;
          while (1)
          {
            if (!v116 || (v118 = *v116, v118 > 0x3F))
            {
LABEL_127:
              v119 = 257;
              goto LABEL_396;
            }

            if (!*v116)
            {
              break;
            }

            v116 += v118 + 1;
            if (v116 - v9 >= 256)
            {
              goto LABEL_127;
            }
          }

          v119 = (v116 - v9 + 1);
        }

LABEL_396:
        v258 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111171;
        HIDWORD(__tp.tv_sec) = v114;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v115;
        HIWORD(__tp.tv_nsec) = 1024;
        *v463 = 0;
        *&v463[4] = 1024;
        *&v463[6] = v117;
        *&v463[10] = 2160;
        *&v463[12] = 1752392040;
        *&v463[20] = 1040;
        *&v463[22] = v119;
        *&v463[26] = 2101;
        *&v463[28] = v9;
        *&v463[36] = 1024;
        *&v463[38] = v17;
        *&v463[42] = 1024;
        *&v463[44] = v258;
        v77 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
        v138 = v113;
        v139 = 64;
        goto LABEL_397;
      }
    }

    else
    {
      v43 = a3 + 12;
      LODWORD(v42) = *(a3 + 6);
      v44 = v42 < 0x201;
      if (!*(a2 + 340))
      {
        goto LABEL_33;
      }
    }

    if (v44)
    {
      v28 = 0;
      v49 = &word_1001787D0;
      v50 = 512;
      if (v42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v78 = malloc_type_malloc(v42, 0xFB8423B4uLL);
      if (!v78)
      {
        goto LABEL_627;
      }

      v28 = v78;
      v50 = *v43;
      v49 = v78;
      if (*v43)
      {
LABEL_22:
        __n_2 = 0;
        __n = 0;
        v51 = ResourceRecordGetRDataBytesPointer(a3, v49, v50, &__n, &__n_2, v19, v20, v21);
        if (__n_2)
        {
          goto LABEL_443;
        }

        v52 = v51;
        v447 = a3;
        v451 = v10;
        if (__n >= 0x1FFuLL)
        {
          v54 = __n + 2;
          v149 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v149)
          {
            goto LABEL_627;
          }

          v53 = v149;
          v435 = v149;
        }

        else
        {
          v53 = 0;
          v435 = word_1001789D0;
          v54 = 512;
        }

        if (v11)
        {
          v150 = mDNSLogCategory_Default;
        }

        else
        {
          v150 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v150 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_428;
          }

          v157 = *(v8 + 200);
          v158 = bswap32(*(v454 + 340)) >> 16;
          v159 = a4 != 0;
          v160 = v9;
          v443 = v17;
          v401 = a4;
          while (1)
          {
            if (!v160 || (v161 = *v160, v161 > 0x3F))
            {
LABEL_226:
              v162 = 257;
              goto LABEL_384;
            }

            if (!*v160)
            {
              break;
            }

            v160 += v161 + 1;
            if (v160 - v9 >= 256)
            {
              goto LABEL_226;
            }
          }

          v162 = (v160 - v9 + 1);
LABEL_384:
          v238 = *(v447 + 2);
          v239 = __n;
          v240 = __n + 2;
          if (v240 <= v54)
          {
            v241 = v435;
            *v435 = __rev16(v238);
            v242 = v52;
            v243 = v157;
            v244 = v158;
            v416 = v159;
            v245 = v162;
            v426 = v238;
            memcpy(v435 + 1, v242, v239);
            v238 = v426;
            v162 = v245;
            v159 = v416;
            v158 = v244;
            v157 = v243;
          }

          else
          {
            v241 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v157;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v158;
          HIWORD(__tp.tv_nsec) = 1024;
          *v463 = v159;
          *&v463[4] = 1024;
          *&v463[6] = 0;
          *&v463[10] = 1024;
          *&v463[12] = v455;
          *&v463[16] = 2160;
          *&v463[18] = 1752392040;
          *&v463[26] = 1040;
          *&v463[28] = v162;
          *&v463[32] = 2101;
          *&v463[34] = v9;
          *&v463[42] = 1024;
          *&v463[44] = v443;
          *&v463[48] = 1024;
          *&v463[50] = v238;
          *&v463[54] = 2160;
          *&v463[56] = 1752392040;
          *&v463[64] = 1040;
          *&v463[66] = v240;
          *&v463[70] = 2101;
          *&v463[72] = v241;
          v246 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        else
        {
          if (v11)
          {
            v150 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v150 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_428;
          }

          v151 = *(v8 + 200);
          v152 = bswap32(*(v454 + 340)) >> 16;
          v153 = a4 != 0;
          v154 = v9;
          v442 = v17;
          v401 = a4;
          while (1)
          {
            if (!v154 || (v155 = *v154, v155 > 0x3F))
            {
LABEL_216:
              v156 = 257;
              goto LABEL_389;
            }

            if (!*v154)
            {
              break;
            }

            v154 += v155 + 1;
            if (v154 - v9 >= 256)
            {
              goto LABEL_216;
            }
          }

          v156 = (v154 - v9 + 1);
LABEL_389:
          v247 = *(v447 + 2);
          v248 = __n;
          v249 = __n + 2;
          if (v249 <= v54)
          {
            v250 = v435;
            *v435 = __rev16(v247);
            v251 = v52;
            v252 = v151;
            v253 = v152;
            v427 = v150;
            v254 = v153;
            v255 = v156;
            v417 = v247;
            memcpy(v435 + 1, v251, v248);
            v247 = v417;
            v156 = v255;
            v153 = v254;
            v150 = v427;
            v152 = v253;
            v151 = v252;
          }

          else
          {
            v250 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v151;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v152;
          HIWORD(__tp.tv_nsec) = 1024;
          *v463 = v153;
          *&v463[4] = 1024;
          *&v463[6] = 0;
          *&v463[10] = 1024;
          *&v463[12] = v455;
          *&v463[16] = 2160;
          *&v463[18] = 1752392040;
          *&v463[26] = 1040;
          *&v463[28] = v156;
          *&v463[32] = 2101;
          *&v463[34] = v9;
          *&v463[42] = 1024;
          *&v463[44] = v442;
          *&v463[48] = 1024;
          *&v463[50] = v247;
          *&v463[54] = 2160;
          *&v463[56] = 1752392040;
          *&v463[64] = 1040;
          *&v463[66] = v249;
          *&v463[70] = 2101;
          *&v463[72] = v250;
          v246 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        v256 = v150;
        v257 = 96;
LABEL_427:
        _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_DEFAULT, v246, &__tp, v257);
        a4 = v401;
        goto LABEL_428;
      }
    }

    if (v11)
    {
      v79 = mDNSLogCategory_Default;
    }

    else
    {
      v79 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v79 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }

      v80 = *(v8 + 200);
      v81 = bswap32(*(v454 + 340)) >> 16;
      v82 = a4 != 0;
      v131 = v9;
      v84 = v455;
      while (1)
      {
        if (!v131 || (v132 = *v131, v132 > 0x3F))
        {
LABEL_177:
          v86 = 257;
          goto LABEL_370;
        }

        if (!*v131)
        {
          break;
        }

        v131 += v132 + 1;
        if (v131 - v9 >= 256)
        {
          goto LABEL_177;
        }
      }

      v86 = (v131 - v9 + 1);
    }

    else
    {
      if (v11)
      {
        v79 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v79 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }

      v80 = *(v8 + 200);
      v81 = bswap32(*(v454 + 340)) >> 16;
      v82 = a4 != 0;
      v83 = v9;
      v84 = v455;
      while (1)
      {
        if (!v83 || (v85 = *v83, v85 > 0x3F))
        {
LABEL_71:
          v86 = 257;
          goto LABEL_370;
        }

        if (!*v83)
        {
          break;
        }

        v83 += v85 + 1;
        if (v83 - v9 >= 256)
        {
          goto LABEL_71;
        }
      }

      v86 = (v83 - v9 + 1);
    }

LABEL_370:
    v230 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67111427;
    HIDWORD(__tp.tv_sec) = v80;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v81;
    HIWORD(__tp.tv_nsec) = 1024;
    *v463 = v82;
    *&v463[4] = 1024;
    *&v463[6] = 0;
    *&v463[10] = 1024;
    *&v463[12] = v84;
    *&v463[16] = 2160;
    *&v463[18] = 1752392040;
    *&v463[26] = 1040;
    *&v463[28] = v86;
    *&v463[32] = 2101;
    *&v463[34] = v9;
    *&v463[42] = 1024;
    *&v463[44] = v17;
    *&v463[48] = 1024;
    *&v463[50] = v230;
    v77 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    v138 = v79;
    v139 = 70;
    goto LABEL_397;
  }

  v22 = *(a3 + 7);
  if (!v22)
  {
    v24 = *(a2 + 340);
    v26 = a3 + 12;
    LODWORD(v25) = *(a3 + 6);
    v27 = v25 < 0x201;
LABEL_26:
    if (v24)
    {
      if (v27)
      {
        v28 = 0;
        v55 = &word_1001787D0;
        v56 = 512;
        if (v25)
        {
LABEL_29:
          v57 = v17;
          __n_2 = 0;
          __n = 0;
          v32 = a3;
          v58 = ResourceRecordGetRDataBytesPointer(a3, v55, v56, &__n, &__n_2, v19, v20, v21);
          if (__n_2)
          {
            goto LABEL_379;
          }

          v59 = v58;
          v450 = v10;
          if (__n >= 0x1FFuLL)
          {
            v60 = __n + 2;
            v140 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
            if (!v140)
            {
              goto LABEL_627;
            }

            v35 = v140;
            v436 = v140;
          }

          else
          {
            v35 = 0;
            v436 = word_1001789D0;
            v60 = 512;
          }

          if (v11)
          {
            v141 = mDNSLogCategory_Default;
          }

          else
          {
            v141 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v141 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_377;
            }

            v404 = v8;
            v142 = *(v8 + 200);
            v143 = bswap32(*(v454 + 340)) >> 16;
            v144 = a4 != 0;
            v145 = *(v32 + 2);
            v146 = __n;
            v147 = __n + 2;
            if (v147 > v60)
            {
              v148 = 0;
              goto LABEL_367;
            }

LABEL_366:
            v148 = v436;
            *v436 = __rev16(v145);
            v414 = v142;
            v423 = v145;
            memcpy(v436 + 1, v59, v146);
            v144 = a4 != 0;
            v145 = v423;
            v142 = v414;
            goto LABEL_367;
          }

          if (v11)
          {
            v141 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v141 = mDNSLogCategory_mDNS;
          }

          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v404 = v8;
            v142 = *(v8 + 200);
            v143 = bswap32(*(v454 + 340)) >> 16;
            v144 = a4 != 0;
            v145 = *(v32 + 2);
            v146 = __n;
            v147 = __n + 2;
            if (v147 > v60)
            {
              v148 = 0;
LABEL_367:
              LODWORD(__tp.tv_sec) = 67111427;
              HIDWORD(__tp.tv_sec) = v142;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v143;
              HIWORD(__tp.tv_nsec) = 1024;
              *v463 = v144;
              *&v463[4] = 1024;
              *&v463[6] = 0;
              *&v463[10] = 1024;
              *&v463[12] = v455;
              *&v463[16] = 1024;
              *&v463[18] = v57;
              *&v463[22] = 1024;
              *&v463[24] = v145;
              *&v463[28] = 2160;
              *&v463[30] = 1752392040;
              *&v463[38] = 1040;
              *&v463[40] = v147;
              *&v463[44] = 2101;
              *&v463[46] = v148;
              v227 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v228 = v141;
              v229 = 70;
LABEL_375:
              _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, v227, &__tp, v229);
              goto LABEL_376;
            }

            goto LABEL_366;
          }

LABEL_377:
          v10 = v450;
          if (v35)
          {
            free(v35);
          }

          goto LABEL_379;
        }
      }

      else
      {
        v72 = malloc_type_malloc(v25, 0xFB8423B4uLL);
        if (!v72)
        {
          goto LABEL_627;
        }

        v28 = v72;
        v56 = *v26;
        v55 = v72;
        if (*v26)
        {
          goto LABEL_29;
        }
      }

      if (v11)
      {
        v73 = mDNSLogCategory_Default;
      }

      else
      {
        v73 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v73 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_443;
        }
      }

      else
      {
        if (v11)
        {
          v73 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v73 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_443;
        }
      }

      v74 = *(v8 + 200);
      v75 = bswap32(*(v454 + 340)) >> 16;
      v76 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110656;
      HIDWORD(__tp.tv_sec) = v74;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = v75;
      HIWORD(__tp.tv_nsec) = 1024;
      *v463 = a4 != 0;
      *&v463[4] = 1024;
      *&v463[6] = 0;
      *&v463[10] = 1024;
      *&v463[12] = v455;
      *&v463[16] = 1024;
      *&v463[18] = v17;
      *&v463[22] = 1024;
      *&v463[24] = v76;
      v77 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_285;
    }

    if (v27)
    {
      v28 = 0;
      v66 = &word_1001787D0;
      v67 = 512;
      if (v25)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v120 = malloc_type_malloc(v25, 0xFB8423B4uLL);
      if (!v120)
      {
        goto LABEL_627;
      }

      v28 = v120;
      v67 = *v26;
      v66 = v120;
      if (*v26)
      {
LABEL_40:
        v68 = v17;
        __n_2 = 0;
        __n = 0;
        v32 = a3;
        v69 = ResourceRecordGetRDataBytesPointer(a3, v66, v67, &__n, &__n_2, v19, v20, v21);
        if (__n_2)
        {
          goto LABEL_379;
        }

        v70 = v69;
        v450 = v10;
        if (__n >= 0x1FFuLL)
        {
          v71 = __n + 2;
          v201 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v201)
          {
            goto LABEL_627;
          }

          v35 = v201;
          v438 = v201;
        }

        else
        {
          v35 = 0;
          v438 = word_1001789D0;
          v71 = 512;
        }

        if (v11)
        {
          v202 = mDNSLogCategory_Default;
        }

        else
        {
          v202 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v202 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_377;
          }

          v404 = v8;
          v203 = *(v8 + 200);
          v204 = a4 != 0;
          v205 = *(v32 + 2);
          v206 = __n;
          v207 = __n + 2;
          if (v207 > v71)
          {
            v208 = 0;
            goto LABEL_374;
          }
        }

        else
        {
          if (v11)
          {
            v202 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v202 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_377;
          }

          v404 = v8;
          v203 = *(v8 + 200);
          v204 = a4 != 0;
          v205 = *(v32 + 2);
          v206 = __n;
          v207 = __n + 2;
          if (v207 > v71)
          {
            v208 = 0;
LABEL_374:
            LODWORD(__tp.tv_sec) = 67111171;
            HIDWORD(__tp.tv_sec) = v203;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v204;
            HIWORD(__tp.tv_nsec) = 1024;
            *v463 = 0;
            *&v463[4] = 1024;
            *&v463[6] = v455;
            *&v463[10] = 1024;
            *&v463[12] = v68;
            *&v463[16] = 1024;
            *&v463[18] = v205;
            *&v463[22] = 2160;
            *&v463[24] = 1752392040;
            *&v463[32] = 1040;
            *&v463[34] = v207;
            *&v463[38] = 2101;
            *&v463[40] = v208;
            v227 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v228 = v202;
            v229 = 64;
            goto LABEL_375;
          }
        }

        v208 = v438;
        *v438 = __rev16(v205);
        v425 = v205;
        memcpy(v438 + 1, v70, v206);
        v205 = v425;
        v204 = a4 != 0;
        goto LABEL_374;
      }
    }

    if (v11)
    {
      v121 = mDNSLogCategory_Default;
    }

    else
    {
      v121 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v121 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    else
    {
      if (v11)
      {
        v121 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v121 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    v165 = *(v8 + 200);
    v166 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110400;
    HIDWORD(__tp.tv_sec) = v165;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = a4 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    *v463 = 0;
    *&v463[4] = 1024;
    *&v463[6] = v455;
    *&v463[10] = 1024;
    *&v463[12] = v17;
    *&v463[16] = 1024;
    *&v463[18] = v166;
    v77 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    v138 = v121;
    v139 = 38;
    goto LABEL_397;
  }

  v23 = dnssec_obj_resource_record_member_get_validation_result(v22);
  v24 = *(a2 + 340);
  v26 = a3 + 12;
  v25 = *(a3 + 6);
  v27 = v25 < 0x201;
  if (!v23)
  {
    goto LABEL_26;
  }

  if (!*(a2 + 340))
  {
    if (v25 >= 0x201)
    {
      v130 = malloc_type_malloc(v25, 0xFB8423B4uLL);
      if (!v130)
      {
        goto LABEL_627;
      }

      v93 = v130;
      v28 = v130;
      v92 = *v26;
      if (*v26)
      {
LABEL_79:
        v94 = v10;
        __n_2 = 0;
        __n = 0;
        v95 = ResourceRecordGetRDataBytesPointer(a3, v93, v92, &__n, &__n_2, v19, v20, v21);
        if (__n_2)
        {
LABEL_402:
          v10 = v94;
          goto LABEL_443;
        }

        v96 = v95;
        v400 = a4;
        v448 = a3;
        v441 = v17;
        if (__n >= 0x1FFuLL)
        {
          v99 = __n + 2;
          v218 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v218)
          {
            goto LABEL_627;
          }

          v100 = v218;
          v97 = v8;
          v98 = v218;
        }

        else
        {
          v97 = v8;
          v98 = 0;
          v99 = 512;
          v100 = word_1001789D0;
        }

        v439 = v98;
        if (v11)
        {
          v219 = mDNSLogCategory_Default;
        }

        else
        {
          v219 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v219 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_400;
          }

          v220 = *(v97 + 200);
          v221 = v400 != 0;
          v222 = *(v448 + 2);
          v223 = __n;
          v224 = __n + 2;
          if (v224 > v99)
          {
            v100 = 0;
            goto LABEL_399;
          }
        }

        else
        {
          if (v11)
          {
            v219 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v219 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
          {
LABEL_400:
            v8 = v97;
            a3 = v448;
            a4 = v400;
            if (v439)
            {
              free(v439);
            }

            goto LABEL_402;
          }

          v220 = *(v97 + 200);
          v221 = v400 != 0;
          v222 = *(v448 + 2);
          v223 = __n;
          v224 = __n + 2;
          if (v224 > v99)
          {
            v100 = 0;
LABEL_399:
            LODWORD(__tp.tv_sec) = 67111427;
            HIDWORD(__tp.tv_sec) = v220;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v221;
            HIWORD(__tp.tv_nsec) = 1024;
            *v463 = 0;
            *&v463[4] = 1024;
            *&v463[6] = v455;
            *&v463[10] = 1024;
            *&v463[12] = v441;
            *&v463[16] = 1026;
            *&v463[18] = v23;
            *&v463[22] = 1024;
            *&v463[24] = v222;
            *&v463[28] = 2160;
            *&v463[30] = 1752392040;
            *&v463[38] = 1040;
            *&v463[40] = v224;
            *&v463[44] = 2101;
            *&v463[46] = v100;
            _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x46u);
            goto LABEL_400;
          }
        }

        *v100 = __rev16(v222);
        v259 = v222;
        memcpy(v100 + 1, v96, v223);
        v221 = v400 != 0;
        v222 = v259;
        goto LABEL_399;
      }
    }

    else
    {
      v28 = 0;
      v92 = 512;
      v93 = &word_1001787D0;
      if (*(a3 + 6))
      {
        goto LABEL_79;
      }
    }

    if (v11)
    {
      v73 = mDNSLogCategory_Default;
    }

    else
    {
      v73 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v73 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    else
    {
      if (v11)
      {
        v73 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v73 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    v192 = *(v8 + 200);
    v193 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110656;
    HIDWORD(__tp.tv_sec) = v192;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = a4 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    *v463 = 0;
    *&v463[4] = 1024;
    *&v463[6] = v455;
    *&v463[10] = 1024;
    *&v463[12] = v17;
    *&v463[16] = 1026;
    *&v463[18] = v23;
    *&v463[22] = 1024;
    *&v463[24] = v193;
    v77 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_285:
    v138 = v73;
    v139 = 44;
    goto LABEL_397;
  }

  if (v25 >= 0x201)
  {
    v110 = malloc_type_malloc(v25, 0xFB8423B4uLL);
    if (!v110)
    {
      goto LABEL_627;
    }

    v28 = v110;
    v30 = *v26;
    v29 = v110;
    if (*v26)
    {
LABEL_8:
      v31 = v17;
      __n_2 = 0;
      __n = 0;
      v32 = a3;
      v33 = ResourceRecordGetRDataBytesPointer(a3, v29, v30, &__n, &__n_2, v19, v20, v21);
      if (!__n_2)
      {
        v34 = v33;
        v404 = v8;
        v450 = v10;
        if (__n >= 0x1FFuLL)
        {
          v36 = __n + 2;
          v175 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v175)
          {
            goto LABEL_627;
          }

          v35 = v175;
          v433 = v175;
        }

        else
        {
          v35 = 0;
          v433 = word_1001789D0;
          v36 = 512;
        }

        if (v11)
        {
          v176 = mDNSLogCategory_Default;
        }

        else
        {
          v176 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v176 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
LABEL_376:
            v8 = v404;
            goto LABEL_377;
          }

          v177 = *(v404 + 200);
          v178 = bswap32(*(v454 + 340)) >> 16;
          v179 = a4 != 0;
          v180 = *(v32 + 2);
          v181 = __n;
          v182 = __n + 2;
          if (v182 > v36)
          {
            v183 = 0;
            goto LABEL_372;
          }
        }

        else
        {
          if (v11)
          {
            v176 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v176 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_376;
          }

          v177 = *(v404 + 200);
          v178 = bswap32(*(v454 + 340)) >> 16;
          v179 = a4 != 0;
          v180 = *(v32 + 2);
          v181 = __n;
          v182 = __n + 2;
          if (v182 > v36)
          {
            v183 = 0;
LABEL_372:
            LODWORD(__tp.tv_sec) = 67111683;
            HIDWORD(__tp.tv_sec) = v177;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v178;
            HIWORD(__tp.tv_nsec) = 1024;
            *v463 = v179;
            *&v463[4] = 1024;
            *&v463[6] = 0;
            *&v463[10] = 1024;
            *&v463[12] = v455;
            *&v463[16] = 1024;
            *&v463[18] = v31;
            *&v463[22] = 1026;
            *&v463[24] = v23;
            *&v463[28] = 1024;
            *&v463[30] = v180;
            *&v463[34] = 2160;
            *&v463[36] = 1752392040;
            *&v463[44] = 1040;
            *&v463[46] = v182;
            *&v463[50] = 2101;
            *&v463[52] = v183;
            v227 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v228 = v176;
            v229 = 76;
            goto LABEL_375;
          }
        }

        v183 = v433;
        *v433 = __rev16(v180);
        v231 = v34;
        v415 = v180;
        v232 = v177;
        v424 = v182;
        v233 = v178;
        memcpy(v433 + 1, v231, v181);
        v179 = a4 != 0;
        v178 = v233;
        v182 = v424;
        v177 = v232;
        v180 = v415;
        goto LABEL_372;
      }

LABEL_379:
      a3 = v32;
      goto LABEL_443;
    }
  }

  else
  {
    v28 = 0;
    v29 = &word_1001787D0;
    v30 = 512;
    if (*(a3 + 6))
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
    v111 = mDNSLogCategory_Default;
  }

  else
  {
    v111 = mDNSLogCategory_mDNS;
  }

  if (!mDNS_SensitiveLoggingEnableCount || v111 == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_443;
    }

    goto LABEL_186;
  }

  if (v11)
  {
    v111 = mDNSLogCategory_Default_redacted;
  }

  else
  {
    v111 = mDNSLogCategory_mDNS;
  }

  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
LABEL_186:
    v135 = *(v8 + 200);
    v136 = bswap32(*(v454 + 340)) >> 16;
    v137 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110912;
    HIDWORD(__tp.tv_sec) = v135;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v136;
    HIWORD(__tp.tv_nsec) = 1024;
    *v463 = a4 != 0;
    *&v463[4] = 1024;
    *&v463[6] = 0;
    *&v463[10] = 1024;
    *&v463[12] = v455;
    *&v463[16] = 1024;
    *&v463[18] = v17;
    *&v463[22] = 1026;
    *&v463[24] = v23;
    *&v463[28] = 1024;
    *&v463[30] = v137;
    v77 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    v138 = v111;
    v139 = 50;
LABEL_397:
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, v77, &__tp, v139);
  }

LABEL_443:
  if (v28)
  {
    free(v28);
  }

  v297 = *(a3 + 2);
  if (v297 == 33 || v297 == 16)
  {
    v298 = *(v8 + 136);
    if (a4)
    {
      v299 = *a3;
      if (v297 == 33)
      {
        v300 = *(v298 + 1392);
        if (v300)
        {
          free(v300);
          *(v298 + 1392) = 0;
        }

        if (v299 == 240)
        {
          *(v298 + 1416) = 0;
          *(v298 + 1421) = 1;
LABEL_457:
          *(v298 + 1412) = 0;
          goto LABEL_493;
        }

        v304 = (*(a3 + 5) + 10);
        v305 = v304;
        while (1)
        {
          if (!v305 || (v306 = *v305, v306 > 0x3F))
          {
LABEL_470:
            LOWORD(v307) = 257;
            goto LABEL_471;
          }

          if (!*v305)
          {
            break;
          }

          v305 += v306 + 1;
          if (v305 - v304 > 255)
          {
            goto LABEL_470;
          }
        }

        v307 = (v305 - v304) + 1;
        if ((v307 & 0x10000) != 0)
        {
          goto LABEL_493;
        }

LABEL_471:
        v308 = malloc_type_calloc(1uLL, v307, 0x5833CE74uLL);
        if (!v308)
        {
          goto LABEL_627;
        }

        *(v298 + 1392) = v308;
        v309 = v304;
        do
        {
          if (!v309)
          {
            break;
          }

          v310 = *v309;
          if (v310 > 0x3F)
          {
            break;
          }

          if (!*v309)
          {
            v315 = v309 - v304 + 1;
            if (v315 <= 0x100u)
            {
              memcpy(v308, v304, v315);
              goto LABEL_489;
            }

            break;
          }

          v309 += v310 + 1;
        }

        while (v309 - v304 <= 255);
        *v308 = 0;
LABEL_489:
        *(v298 + 1416) = *(*(a3 + 5) + 8);
        *(v298 + 1421) = 0;
        v316 = *(a3 + 3);
        v317 = v316 + 5;
        if (v316 + 5) < 6 && ((0x2Du >> v317))
        {
          LODWORD(v316) = dword_10010DF58[v317];
        }

        *(v298 + 1412) = v316;
LABEL_493:
        v318 = *(v298 + 1421);
        if (*(v298 + 1421))
        {
          v319 = 1;
        }

        else
        {
          v319 = *(v298 + 1392) != 0;
        }

        if (*(v298 + 1422))
        {
          v320 = 1;
        }

        else
        {
          v320 = *(v298 + 1400) != 0;
        }

        if (!v319 || !v320)
        {
          return;
        }

        if (*(v298 + 1421))
        {
          v321 = -65554;
        }

        else
        {
          v321 = 0;
        }

        ConvertDomainNameToCString_withescape(*(a3 + 4), __s);
        if (*(v298 + 1421))
        {
          v322 = 0;
          v445 = 0;
          v432 = 0;
          LOBYTE(__n) = 0;
        }

        else
        {
          v323 = *(v298 + 1392);
          ConvertDomainNameToCString_withescape(v323, &__src);
          v322 = mDNS_DomainNameFNV1aHash(v323);
          v324 = *(v298 + 1421);
          LOBYTE(__n) = 0;
          if (!v324)
          {
            p_n = *(v298 + 1392);
            v445 = *(v298 + 1416);
            v432 = *(v298 + 1417);
            goto LABEL_508;
          }

          v445 = 0;
          v432 = 0;
        }

        p_n = &__n;
LABEL_508:
        v449 = a3;
        if (*(v298 + 1422))
        {
          v325 = 0;
          v420 = &__n;
        }

        else
        {
          v420 = *(v298 + 1400);
          v325 = *(v298 + 1418);
        }

        v453 = v10;
        v440 = *(v298 + 1412);
        v326 = strlen(__s);
        v456 = v325;
        v327 = v326 + v325 + strlen(&__src) + 18;
        v407 = v322;
        if (!*(v8 + 290))
        {
          v334 = 0;
          v339 = 0;
          v333 = 0;
          goto LABEL_547;
        }

        v333 = 0;
        v334 = 0;
        if (!a4 || (v335 = *(v8 + 56)) == 0)
        {
          v339 = 0;
          goto LABEL_547;
        }

        v403 = v327;
        if (*(v335 + 16) != &_mdns_signed_browse_result_kind)
        {
          v336 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            v337 = -65549;
            v338 = v454;
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
LABEL_538:
              v355 = *(v8 + 200);
              v356 = bswap32(*(v454 + 340));
              LODWORD(__tp.tv_sec) = 67109376;
              HIDWORD(__tp.tv_sec) = v355;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = HIWORD(v356);
              _os_log_impl(&_mh_execute_header, v336, OS_LOG_TYPE_ERROR, "[R%u->Q%u] resolve_result_callback mdns_signed_resolve_result_downcast failed", &__tp, 0xEu);
            }
          }

          else
          {
            v337 = -65549;
            v336 = mDNSLogCategory_mDNS_redacted;
            v338 = v454;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_538;
            }
          }

          v334 = 0;
          goto LABEL_540;
        }

        v405 = v8;
        bzero(&__tp, 0x3F1uLL);
        v340 = DomainNameToString(p_n, 0, &__tp, 0);
        if (v340)
        {
          v351 = v340;
          v334 = 0;
          goto LABEL_626;
        }

        v341 = *(v335 + 32);
        v342 = strlen(&__tp);
        if (v342 >> 16)
        {
          v334 = 0;
          v351 = -6743;
          goto LABEL_626;
        }

        v343 = v342;
        v344 = v342 + *(v341 + 56);
        v345 = malloc_type_calloc(1uLL, v344 + 62, 0xE7BC5112uLL);
        if (v345)
        {
          v346 = v345;
          uuid_copy(v345 + 32, (v341 + 32));
          v347 = _mdns_signed_result_compute_metadata_hash(v346 + 32, v440, v420, v456);
          *(v346 + 48) = 6;
          *(v346 + 52) = v347;
          v348 = *(v341 + 56);
          *(v346 + 56) = v348;
          *(v346 + 58) = v445 | (v432 << 8);
          *(v346 + 60) = v343;
          memcpy((v346 + 62), (v341 + 58), v348);
          memcpy((v346 + 62 + v348), &__tp, v343);
          v349 = _mdns_necp_sign_result(v346, v344 + 62);
          if (v349 || (v349 = _mdns_necp_validate_result(), __n_2 = v349, v8 = v405, v349))
          {
            v351 = v349;
            v334 = 0;
          }

          else
          {
            v350 = _mdns_signed_resolve_result_create_no_copy(p_n, v346, v344 + 62, &__n_2);
            v334 = v350;
            v351 = __n_2;
            if (!__n_2)
            {
              v338 = v454;
              if (v350)
              {
                __tp.tv_sec = 0;
                data = mdns_signed_result_get_data(v350, &__tp);
                tv_sec = __tp.tv_sec;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  tv_sec = 0;
                }

                v333 = tv_sec;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  v354 = 0;
                }

                else
                {
                  v354 = __tp.tv_sec + 4;
                }

                v327 = v403 + v354;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  v339 = 0;
                }

                else
                {
                  v339 = data;
                }

LABEL_547:
                v360 = v327;
                reply = create_reply(0x43, v327, v8, v328, v329, v330, v331, v332);
                *(reply + 11) = 0;
                *(reply + 12) = bswap32(v440);
                *(reply + 13) = bswap32(v321);
                v362 = strlen(__s) + 1;
                memcpy(reply + 56, __s, v362);
                v363 = &reply[v362 + 56];
                v364 = strlen(&__src) + 1;
                memcpy(v363, &__src, v364);
                v365 = &v363[v364];
                *v365 = v445;
                v365[1] = v432;
                v365[2] = BYTE1(v456);
                v366 = &v363[v364 + 4];
                v365[3] = v456;
                memcpy(v366, v420, v456);
                if (v339)
                {
                  v367 = &v366[v456];
                  if (&v366[v456])
                  {
                    if (v367 <= &v367[v360] && v360 >= v333 + 4)
                    {
                      *v367 = 1792;
                      v367[2] = BYTE1(v333);
                      v367[3] = v333;
                      if (v333)
                      {
                        memcpy(v367 + 4, v339, v333);
                      }
                    }
                  }

                  *(reply + 6) |= 2u;
                }

                if (v334)
                {
                  os_release(v334);
                }

                v368 = mDNSLogCategory_Default;
                if (mDNS_SensitiveLoggingEnableCount)
                {
                  v369 = mDNSLogCategory_Default == mDNSLogCategory_State;
                }

                else
                {
                  v369 = 1;
                }

                v370 = v369;
                if (v318)
                {
                  if (v370)
                  {
                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v371 = *(v8 + 200);
                    v372 = bswap32(*(v298 + 1036)) >> 16;
                    v373 = bswap32(*(v298 + 340)) >> 16;
                    v374 = *(v449 + 4);
                    v375 = v374;
                    while (1)
                    {
                      if (!v375 || (v376 = *v375, v376 > 0x3F))
                      {
LABEL_570:
                        v377 = 257;
                        goto LABEL_596;
                      }

                      if (!*v375)
                      {
                        break;
                      }

                      v375 += v376 + 1;
                      if (v375 - v374 >= 256)
                      {
                        goto LABEL_570;
                      }
                    }

                    v377 = (v375 - v374 + 1);
                  }

                  else
                  {
                    v368 = mDNSLogCategory_Default_redacted;
                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v371 = *(v8 + 200);
                    v372 = bswap32(*(v298 + 1036)) >> 16;
                    v373 = bswap32(*(v298 + 340)) >> 16;
                    v374 = *(v449 + 4);
                    v385 = v374;
                    while (1)
                    {
                      if (!v385 || (v386 = *v385, v386 > 0x3F))
                      {
LABEL_585:
                        v377 = 257;
                        goto LABEL_596;
                      }

                      if (!*v385)
                      {
                        break;
                      }

                      v385 += v386 + 1;
                      if (v385 - v374 >= 256)
                      {
                        goto LABEL_585;
                      }
                    }

                    v377 = (v385 - v374 + 1);
                  }

LABEL_596:
                  LODWORD(__tp.tv_sec) = 67110659;
                  HIDWORD(__tp.tv_sec) = v371;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v372;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v463 = v373;
                  *&v463[4] = 2160;
                  *&v463[6] = 1752392040;
                  *&v463[14] = 1040;
                  *&v463[16] = v377;
                  *&v463[20] = 2101;
                  *&v463[22] = v374;
                  *&v463[30] = 1029;
                  *&v463[32] = v453;
                  v389 = "[R%u->(Q%u, Q%u)] DNSServiceResolve NoSuchRecord -- instance: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x)";
                  v390 = v368;
                  v391 = 52;
                }

                else
                {
                  if (v370)
                  {
                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v378 = *(v8 + 200);
                    v379 = bswap32(*(v298 + 1036)) >> 16;
                    v380 = bswap32(*(v298 + 340)) >> 16;
                    v381 = *(v449 + 4);
                    v382 = v381;
                    while (1)
                    {
                      if (!v382 || (v383 = *v382, v383 > 0x3F))
                      {
LABEL_578:
                        v384 = 257;
                        goto LABEL_598;
                      }

                      if (!*v382)
                      {
                        break;
                      }

                      v382 += v383 + 1;
                      if (v382 - v381 >= 256)
                      {
                        goto LABEL_578;
                      }
                    }

                    v384 = (v382 - v381 + 1);
LABEL_598:
                    v392 = *(v298 + 1392);
                    v393 = v392;
                    while (1)
                    {
                      if (!v393 || (v394 = *v393, v394 > 0x3F))
                      {
LABEL_603:
                        v395 = 257;
                        goto LABEL_613;
                      }

                      if (!*v393)
                      {
                        break;
                      }

                      v393 += v394 + 1;
                      if (v393 - v392 >= 256)
                      {
                        goto LABEL_603;
                      }
                    }

                    v395 = (v393 - v392 + 1);
                  }

                  else
                  {
                    v368 = mDNSLogCategory_Default_redacted;
                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v378 = *(v8 + 200);
                    v379 = bswap32(*(v298 + 1036)) >> 16;
                    v380 = bswap32(*(v298 + 340)) >> 16;
                    v381 = *(v449 + 4);
                    v387 = v381;
                    while (1)
                    {
                      if (!v387 || (v388 = *v387, v388 > 0x3F))
                      {
LABEL_592:
                        v384 = 257;
                        goto LABEL_605;
                      }

                      if (!*v387)
                      {
                        break;
                      }

                      v387 += v388 + 1;
                      if (v387 - v381 >= 256)
                      {
                        goto LABEL_592;
                      }
                    }

                    v384 = (v387 - v381 + 1);
LABEL_605:
                    v392 = *(v298 + 1392);
                    v396 = v392;
                    while (1)
                    {
                      if (!v396 || (v397 = *v396, v397 > 0x3F))
                      {
LABEL_610:
                        v395 = 257;
                        goto LABEL_613;
                      }

                      if (!*v396)
                      {
                        break;
                      }

                      v396 += v397 + 1;
                      if (v396 - v392 >= 256)
                      {
                        goto LABEL_610;
                      }
                    }

                    v395 = (v396 - v392 + 1);
                  }

LABEL_613:
                  v398 = *(v298 + 1422);
                  LODWORD(__tp.tv_sec) = 67112707;
                  HIDWORD(__tp.tv_sec) = v378;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v379;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v463 = v380;
                  *&v463[4] = 2160;
                  *&v463[6] = 1752392040;
                  *&v463[14] = 1040;
                  *&v463[16] = v384;
                  *&v463[20] = 2101;
                  *&v463[22] = v381;
                  *&v463[30] = 1029;
                  *&v463[32] = v453;
                  *&v463[36] = 1024;
                  *&v463[38] = v440;
                  *&v463[42] = 2160;
                  *&v463[44] = 1752392040;
                  *&v463[52] = 1040;
                  *&v463[54] = v395;
                  *&v463[58] = 2101;
                  *&v463[60] = v392;
                  *&v463[68] = 1029;
                  *&v463[70] = v407;
                  *&v463[74] = 1024;
                  *&v463[76] = __rev16(v445 | (v432 << 8));
                  *&v463[80] = 1024;
                  *&v463[82] = v398;
                  v464 = 1024;
                  v465 = v456;
                  v389 = "[R%u->(Q%u, Q%u)] DNSServiceResolve RESULT -- instance: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x), ifindex: %u, target host: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x), port: %u, negative txt: %{mdns:yesno}d, txt rdlength: %u";
                  v390 = v368;
                  v391 = 108;
                }

                _os_log_impl(&_mh_execute_header, v390, OS_LOG_TYPE_DEFAULT, v389, &__tp, v391);
LABEL_615:
                if (*(v8 + 292))
                {
                  if (reply)
                  {
                    free(reply);
                  }
                }

                else
                {
                  v399 = *(v8 + 24);
                  if (!v399)
                  {
                    v399 = v8;
                  }

                  *reply = 0;
                  **(v399 + 104) = reply;
                  *(v399 + 104) = reply;
                }

                return;
              }

              v337 = 0;
LABEL_540:
              v357 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                {
LABEL_545:
                  v358 = *(v8 + 200);
                  v359 = bswap32(*(v338 + 340));
                  LODWORD(__tp.tv_sec) = 67109632;
                  HIDWORD(__tp.tv_sec) = v358;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = HIWORD(v359);
                  HIWORD(__tp.tv_nsec) = 2048;
                  *v463 = v337;
                  _os_log_impl(&_mh_execute_header, v357, OS_LOG_TYPE_ERROR, "[R%u->Q%u] resolve_result_callback signed_resolve failed %ld", &__tp, 0x18u);
                }
              }

              else
              {
                v357 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_545;
                }
              }

              v339 = 0;
              v333 = 0;
              v327 = v403;
              goto LABEL_547;
            }
          }

          free(v346);
LABEL_626:
          v337 = v351;
          v8 = v405;
          v338 = v454;
          goto LABEL_540;
        }

LABEL_627:
        __break(1u);
        return;
      }

      v302 = *(v298 + 1400);
      if (v302)
      {
        free(v302);
        *(v298 + 1400) = 0;
      }

      if (v299 == 240)
      {
        *(v298 + 1418) = 0;
        *(v298 + 1422) = 1;
        goto LABEL_493;
      }

      v311 = *(a3 + 5);
      v312 = *(a3 + 6);
      if (v312 <= 1)
      {
        v313 = 1;
      }

      else
      {
        v313 = *(a3 + 6);
      }

      v314 = malloc_type_calloc(1uLL, v313, 0xDA56D1E6uLL);
      if (!v314)
      {
        goto LABEL_627;
      }

      *(v298 + 1400) = v314;
      memcpy(v314, (v311 + 4), v312);
      *(v298 + 1418) = v312;
    }

    else
    {
      if (v297 == 33)
      {
        v301 = *(v298 + 1392);
        if (v301)
        {
          free(v301);
          *(v298 + 1392) = 0;
        }

        *(v298 + 1416) = 0;
        *(v298 + 1421) = 0;
        goto LABEL_457;
      }

      v303 = *(v298 + 1400);
      if (v303)
      {
        free(v303);
        *(v298 + 1400) = 0;
      }

      *(v298 + 1418) = 0;
    }

    *(v298 + 1422) = 0;
    goto LABEL_493;
  }
}