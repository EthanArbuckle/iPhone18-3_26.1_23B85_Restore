void DisposeTCPConn(uint64_t a1)
{
  mDNSPlatformTCPCloseConnection(*(a1 + 8));
  v2 = *(a1 + 9016);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void mDNSPlatformTCPCloseConnection(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2 != -1)
    {
      shutdown(v2, 2);
      close(a1[4]);
    }

    free(a1);
  }
}

uint64_t GetPktLease(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  OptRR = LocateOptRR(a2, a3, 8);
  if (!OptRR)
  {
    return 0;
  }

  if (GetLargeResourceRecord(a1, a2, OptRR, a3, 0, 128, a1 + 37912) && *(a1 + 37920) != 240 && *(a1 + 37924) == 41)
  {
    v9 = *(a1 + 37960) + 4;
    v10 = v9 + *(a1 + 37932);
    while (v9 < v10)
    {
      if (*v9 == 2)
      {
        *a4 = *(v9 + 4);
        *(a1 + 37920) = 0;
        *(a1 + 38022) = 0;
        v12 = *(a1 + 37976);
        v11 = 1;
        if (v12)
        {
          goto LABEL_10;
        }

        return v11;
      }

      v9 += 24;
    }
  }

  v11 = 0;
  *(a1 + 37920) = 0;
  *(a1 + 38022) = 0;
  v12 = *(a1 + 37976);
  if (v12)
  {
LABEL_10:
    ref_count_obj_release(v12);
    *(a1 + 37976) = 0;
  }

  return v11;
}

void HostnameCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 112);
  if (a3)
  {
    if (a3 == -65792)
    {
      if (!v11)
      {
        return;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v13 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "HostnameCallback: Got mStatus_MemFree for %p %p %s", v14, v15, v16, v17, v18, v11);
      }

      v19 = (a1 + 14680);
      while (1)
      {
        v19 = *v19;
        if (!v19)
        {
          break;
        }

        if (v19 + 58 == a2 || v19 + 205 == a2)
        {
          mDNS_Lock_(a1, "HostnameCallback", 2500);
          AdvertiseHostname(a1, v19);

          mDNS_Unlock_(a1, "HostnameCallback", 2500);
          return;
        }
      }

      if (*(v11 + 472) || *(v11 + 1648))
      {
        return;
      }

      if (*(v11 + 200))
      {
        mDNS_StopNATOperation_internal(a1, v11 + 8);
      }

      v40 = v11;
      goto LABEL_42;
    }

    v32 = *(a2 + 48) + 4;
    if (*(a2 + 12) == 1)
    {
      v33 = "HostnameCallback: Error %d for registration of %##s IP %.4a";
    }

    else
    {
      v33 = "HostnameCallback: Error %d for registration of %##s IP %.16a";
    }

    v43 = *(a2 + 40);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v33, a4, a5, a6, a7, a8, a3);
    if (!v11)
    {
      v40 = a2;
LABEL_42:

      free(v40);
      return;
    }

    if (*(a2 + 344) != 4)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: HostnameCallback invoked with error code for record not in regState_Unregistered!", v34, v35, v36, v37, v38, v41);
    }

    if (*(v11 + 808) == 4 && *(v11 + 1984) == 4)
    {
      *(a2 + 112) = *(v11 + 2824);
      v28 = *(v11 + 2816);
      if (!v28)
      {
        goto LABEL_27;
      }

      v29 = a1;
      v30 = a2;
      v31 = a3;
LABEL_26:
      v28(v29, v30, v31);
LABEL_27:
      *(a2 + 112) = v11;
    }
  }

  else
  {
    mDNS_Lock_(a1, "HostnameCallback", 2537);
    v21 = *(a1 + 64);
    if (v21 <= 1)
    {
      v21 = 1;
    }

    *(a1 + 12684) = v21;
    mDNS_Unlock_(a1, "HostnameCallback", 2539);
    if (v11)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        if (*(a2 + 12) == 1)
        {
          v27 = "Registered hostname %##s IP %.4a";
        }

        else
        {
          v27 = "Registered hostname %##s IP %.16a";
        }

        v42 = *(a2 + 48) + 4;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v27, v22, v23, v24, v25, v26, *(a2 + 40));
      }

      *(a2 + 112) = *(v11 + 2824);
      v28 = *(v11 + 2816);
      if (!v28)
      {
        goto LABEL_27;
      }

      v29 = a1;
      v30 = a2;
      v31 = 0;
      goto LABEL_26;
    }

    v39 = mDNSLogCategory_Default;

    LogMsgWithLevel(v39, OS_LOG_TYPE_DEFAULT, "HostnameCallback invoked with orphaned address record", v22, v23, v24, v25, v26, a9);
  }
}

void AbortUnlinkAndFree(void *a1)
{
  v9 = a1;
  abort_request(a1);
  v2 = &all_requests;
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 16);
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v4)
  {
    *v3 = a1[2];
    request_state_forget(&v9);
    return;
  }

  v6 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134217984;
    v11 = a1;
    goto LABEL_18;
  }

  v6 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a1;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AbortUnlinkAndFree: ERROR: Attempt to abort operation %p not in list", buf, 0xCu);
  }
}

void *add_domain_to_browser(uint64_t a1, _BYTE *a2)
{
  v117 = 0;
  v118 = &v117;
  v119 = 0x2000000000;
  v120 = 0;
  v4 = *(a1 + 152);
  v5 = (v4 + 272);
  v6 = (v4 + 272);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (SameDomainNameBytes(v6 + 8, a2))
    {
      v7 = 4294901749;
      goto LABEL_151;
    }
  }

  if (!*(a1 + 290) || !SameDomainNameBytes(a2, "\x05local"))
  {
    goto LABEL_121;
  }

  if (*(a1 + 32))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    if (!Mutable)
    {
      goto LABEL_121;
    }

    v107 = (v4 + 272);
    v9 = *(a1 + 32);
    v121[0] = _NSConcreteStackBlock;
    v121[1] = 0x40000000;
    v121[2] = ___get_unicast_discovery_dns_services_block_invoke;
    v121[3] = &__block_descriptor_tmp_188;
    v103 = Mutable;
    v121[4] = Mutable;
    v10 = v121;
    context = objc_autoreleasePoolPush();
    v138 = 0;
    v11 = +[NSMutableSet set];
    v135[0] = _NSConcreteStackBlock;
    v135[1] = 3221225472;
    v135[2] = __util_device_media_access_unicast_addr_enumerate_block_invoke;
    v135[3] = &unk_100152CC8;
    v100 = v11;
    v136 = v100;
    v102 = v10;
    v137 = v10;
    v110 = objc_retainBlock(v135);
    v105 = a2;
    if (objc_opt_class())
    {
      v139[0] = 0;
      v12 = *(v9 + 40);
      buf = *(v9 + 24);
      v147 = v12;
      v13 = [DASession getPartialIPsWithAuditToken:&buf error:v139];
      v14 = v139[0];
      if (v14)
      {
        v15 = _system_util_log();
        v5 = (v4 + 272);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [v14 description];
          v97 = v96 = v4;
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v97;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "DASession getPartialIPsWithAuditToken err %@", &buf, 0xCu);

          v4 = v96;
        }

        v16 = 0;
        a2 = v105;
      }

      else
      {
        v5 = (v4 + 272);
        if ([v13 count] < 0xB)
        {
          v16 = v13;
        }

        else
        {
          v19 = _system_util_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v98 = [v13 count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v98;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "DASession getPartialIPsWithAuditToken returned too many results (%lu)", &buf, 0xCu);
          }

          if ([v13 count] > 9)
          {
            v20 = 10;
          }

          else
          {
            v20 = [v13 count];
          }

          a2 = v105;
          v16 = [v13 subarrayWithRange:{0, v20}];
        }
      }

      v22 = v16;
    }

    else
    {
      v22 = 0;
      v5 = (v4 + 272);
    }

    v106 = v22;
    if (![v22 count])
    {
      goto LABEL_118;
    }

    if (!getifaddrs(&v138))
    {
      goto LABEL_34;
    }

    if (*__error())
    {
      v23 = *__error();
      if (!v23)
      {
LABEL_34:
        v24 = v138;
        if (!v138)
        {
          goto LABEL_120;
        }

        v104 = v4;
        while (1)
        {
          ifa_addr = v24->ifa_addr;
          if (ifa_addr)
          {
            ifa_netmask = v24->ifa_netmask;
            if (ifa_netmask)
            {
              ifa_name = v24->ifa_name;
              if (ifa_name)
              {
                sa_family = ifa_addr->sa_family;
                if (sa_family == 30)
                {
                  v130 = *&ifa_addr->sa_data[6];
                  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v130, xmmword_10010D2A0)))) & 1) != 0 && (v130.i16[0] & 0xC0FF) != 0x80FE)
                  {
                    v111 = v24;
                    v129 = *&ifa_netmask->sa_data[6];
                    v113 = if_nametoindex(ifa_name);
                    v51 = 0;
                    v52 = 0;
                    v53 = 0;
                    while (1)
                    {
                      v54 = *(&v129 + v51) != 0;
                      if (*(&v129 + v51))
                      {
                        ++v53;
                      }

                      else if (v52)
                      {
                        goto LABEL_82;
                      }

                      ++v51;
                      v52 = v54;
                      if (v51 == 16)
                      {
LABEL_82:
                        v127 = 0u;
                        v128 = 0u;
                        v125 = 0u;
                        v126 = 0u;
                        v55 = v106;
                        v56 = [v55 countByEnumeratingWithState:&v125 objects:v139 count:16];
                        if (!v56)
                        {
                          goto LABEL_108;
                        }

                        v57 = v56;
                        v58 = *v126;
                        obja = (v53 + 16);
                        while (1)
                        {
                          for (i = 0; i != v57; i = i + 1)
                          {
                            if (*v126 != v58)
                            {
                              objc_enumerationMutation(v55);
                            }

                            v60 = *(*(&v125 + 1) + 8 * i);
                            v124[0] = 0;
                            v124[1] = 0;
                            v123[0] = 0;
                            v123[1] = 0;
                            v61 = [v60 address];
                            v62 = [v60 mask];
                            if ([v61 length] != 16 || objc_msgSend(v62, "length") != 16)
                            {
                              goto LABEL_106;
                            }

                            [v61 getBytes:v124 length:16];
                            [v62 getBytes:v123 length:16];
                            v63 = 0;
                            v64 = 0;
                            LOBYTE(v65) = 1;
                            do
                            {
                              v65 = v65 & (*(v123 + v63) == 0);
                              if (v65 == 1)
                              {
                                ++v64;
                              }

                              else
                              {
                                *(v123 + v63) = -1;
                              }

                              ++v63;
                            }

                            while (v63 != 16);
                            if (&obja[-v64] <= 0x10)
                            {
                              v66 = _system_util_log();
                              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                              {
                                v67 = v111->ifa_name;
                                *v140 = 136446466;
                                *v141 = v67;
                                *&v141[8] = 1024;
                                *&v141[10] = v113;
                                v68 = v66;
                                v69 = "PartialIP - Mask doesn't overlap IPv6 Interface %{public}s(%u)";
                                goto LABEL_104;
                              }

                              goto LABEL_105;
                            }

                            v70 = 0;
                            v122[0] = 0;
                            v122[1] = 0;
                            do
                            {
                              v71 = v130.u8[v70];
                              v72 = (*(v124 + v70) & *(v123 + v70)) | v71 & (*(v123 + v70) ^ 0xFF);
                              *(v122 + v70) = *(v124 + v70) & *(v123 + v70) | v71 & ~*(v123 + v70);
                              if (((v72 ^ v71) & *(&v129 + v70)) != 0)
                              {
                                v66 = _system_util_log();
                                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                                {
                                  v73 = v111->ifa_name;
                                  *v140 = 136446466;
                                  *v141 = v73;
                                  *&v141[8] = 1024;
                                  *&v141[10] = v113;
                                  v68 = v66;
                                  v69 = "PartialIP - Addr and Mask don't apply to IPv6 Interface %{public}s(%u)";
LABEL_104:
                                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, v69, v140, 0x12u);
                                }

LABEL_105:

                                goto LABEL_106;
                              }

                              ++v70;
                            }

                            while (v70 != 16);
                            if (((v110[2])(v110, 30, v122, v113) & 1) == 0)
                            {

                              goto LABEL_113;
                            }

LABEL_106:
                          }

                          v57 = [v55 countByEnumeratingWithState:&v125 objects:v139 count:16];
                          if (!v57)
                          {
LABEL_108:

                            v4 = v104;
                            a2 = v105;
                            v5 = v107;
                            goto LABEL_110;
                          }
                        }
                      }
                    }
                  }
                }

                else if (sa_family == 2)
                {
                  v29 = bswap32(*&ifa_addr->sa_data[2]);
                  v109 = v29;
                  if (HIBYTE(v29) != 127 && (v29 & 0xFFFF0000) != -1442971648)
                  {
                    v111 = v24;
                    v130.i32[0] = bswap32(*&ifa_netmask->sa_data[2]);
                    v108 = if_nametoindex(ifa_name);
                    v31 = 0;
                    v32 = 0;
                    v33 = 0;
                    do
                    {
                      v34 = v130.i8[v31] != 0;
                      if (v130.i8[v31])
                      {
                        ++v33;
                      }

                      else if (v32)
                      {
                        break;
                      }

                      ++v31;
                      v32 = v34;
                    }

                    while (v31 != 4);
                    v133 = 0u;
                    v134 = 0u;
                    v131 = 0u;
                    v132 = 0u;
                    obj = v106;
                    v35 = [obj countByEnumeratingWithState:&v131 objects:&buf count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = 0;
                      v38 = *v132;
                      v112 = v33 + 4;
                      for (j = *v132; ; j = *v132)
                      {
                        if (j != v38)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v40 = *(*(&v131 + 1) + 8 * v37);
                        LODWORD(v129) = 0;
                        LODWORD(v124[0]) = 0;
                        v41 = [v40 address];
                        v42 = [v40 mask];
                        if ([v41 length] == 4 && objc_msgSend(v42, "length") == 4)
                        {
                          [v41 getBytes:&v129 length:4];
                          [v42 getBytes:v124 length:4];
                          v43 = 0;
                          v44 = 0;
                          LOBYTE(v45) = 1;
                          do
                          {
                            v45 = v45 & (*(v124 + v43) == 0);
                            if (v45 == 1)
                            {
                              ++v44;
                            }

                            else
                            {
                              *(v124 + v43) = -1;
                            }

                            ++v43;
                          }

                          while (v43 != 4);
                          if ((v112 - v44) <= 4)
                          {
                            v46 = _system_util_log();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                            {
                              v47 = v111->ifa_name;
                              *v140 = 67109890;
                              *v141 = v124[0];
                              *&v141[4] = 2082;
                              *&v141[6] = v47;
                              *&v141[14] = 1024;
                              *&v141[16] = v108;
                              v142 = 1024;
                              v143 = v130.i32[0];
                              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "PartialIP - with (Mask 0x%08X) doesn't overlap IPv4 Interface %{public}s(%u) with (Mask 0x%08X)", v140, 0x1Eu);
                            }

LABEL_64:

                            goto LABEL_65;
                          }

                          LODWORD(v123[0]) = bswap32(v129 & LODWORD(v124[0])) | v109 & bswap32(~LODWORD(v124[0]));
                          v49 = v130.i32[0];
                          if (((LODWORD(v123[0]) ^ v109) & v130.i32[0]) != 0)
                          {
                            v46 = _system_util_log();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                            {
                              v50 = v111->ifa_name;
                              *v140 = 67110146;
                              *v141 = v123[0];
                              *&v141[4] = 1024;
                              *&v141[6] = v49;
                              *&v141[10] = 2082;
                              *&v141[12] = v50;
                              v142 = 1024;
                              v143 = v108;
                              v144 = 1024;
                              v145 = v109;
                              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "PartialIP - Addr 0x%08X and (Mask 0x%08X) doesn't apply to Interface %{public}s(%u) with Addr 0x%08X", v140, 0x24u);
                            }

                            goto LABEL_64;
                          }

                          if (((v110[2])(v110, 2, v123, v108) & 1) == 0)
                          {

LABEL_113:
                            v4 = v104;
                            a2 = v105;
                            v5 = v107;
LABEL_118:
                            if (v138)
                            {
                              freeifaddrs(v138);
                              v138 = 0;
                            }

LABEL_120:

                            objc_autoreleasePoolPop(context);
                            *(v118 + 6) = 0;
                            v116[0] = _NSConcreteStackBlock;
                            v116[1] = 0x40000000;
                            v116[2] = __add_domain_to_browser_block_invoke;
                            v116[3] = &unk_100150238;
                            v116[4] = &v117;
                            v116[5] = a2;
                            v116[6] = a1;
                            v116[7] = v4;
                            mdns_cfarray_enumerate(v103, v116);
                            CFRelease(v103);
                            v7 = *(v118 + 6);
                            if (!v7)
                            {
                              goto LABEL_121;
                            }

LABEL_151:
                            _Block_object_dispose(&v117, 8);
                            return v7;
                          }
                        }

LABEL_65:

                        if (++v37 >= v36)
                        {
                          v48 = [obj countByEnumeratingWithState:&v131 objects:&buf count:16];
                          if (!v48)
                          {
                            break;
                          }

                          v36 = v48;
                          v37 = 0;
                        }
                      }
                    }

                    v4 = v104;
                    a2 = v105;
                    v5 = v107;
LABEL_110:
                    v24 = v111;
                  }
                }
              }
            }
          }

          v24 = v24->ifa_next;
          if (!v24)
          {
            goto LABEL_118;
          }
        }
      }
    }

    else
    {
      v23 = -6700;
    }

    v74 = _system_util_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v23;
      _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "getifaddrs() failed: %{mdns:err}ld", &buf, 0xCu);
    }

    goto LABEL_118;
  }

  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v21 = *(a1 + 200);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v21;
  }

  else
  {
    v17 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v18 = *(a1 + 200);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v18;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[R%u] No peer audit token to get unicast discovery IP addresses", &buf, 8u);
LABEL_121:
  result = malloc_type_calloc(1uLL, 0x3C0uLL, 0x2B0832CAuLL);
  if (result)
  {
    v76 = result;
    v77 = a2;
    do
    {
      if (!v77)
      {
        break;
      }

      v78 = *v77;
      if (v78 > 0x3F)
      {
        break;
      }

      if (!*v77)
      {
        v79 = v77 - a2 + 1;
        if (v79 <= 0x100u)
        {
          memcpy(result + 1, a2, v79);
          goto LABEL_131;
        }

        break;
      }

      v77 += v78 + 1;
    }

    while (v77 - a2 <= 255);
    *(result + 8) = 0;
LABEL_131:
    *(v76 + 128) = *(a1 + 196);
    if (*(a1 + 288))
    {
      v80 = 0;
      *(v76 + 921) = *(a1 + 272);
    }

    else
    {
      v80 = *(a1 + 188);
    }

    *(v76 + 127) = v80;
    *(v76 + 129) = *(a1 + 200);
    started = mDNS_StartBrowse((v76 + 33), (v4 + 10), a2, *v4, *(a1 + 248), *(v4 + 9), (*(a1 + 248) & 0x80000) != 0, FoundInstance, a1);
    *(v118 + 6) = started;
    if (started)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_StartBrowse returned %d for type %##s domain %##s", v82, v83, v84, v85, v86, started);
      free(v76);
    }

    else
    {
      *v76 = *v5;
      *v5 = v76;
      if (*(a1 + 252) != -1 && SameDomainNameBytes(a2, "\x05local"))
      {
        v87 = *(a1 + 252);
        if (v87)
        {
          v88 = AWDLInterfaceID == v87 || WiFiAwareInterfaceID == v87;
        }

        else
        {
          v88 = (*(a1 + 250) >> 4) & 1;
        }

        monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
        bzero(&buf, 0x3F1uLL);
        service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v4 + 10), &buf);
        _mdns_powerlog_bonjour_event(1u, v88, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
        *(a1 + 8) = monotonic_time_ns;
      }

      if (mDNS_McastLoggingEnabled)
      {
        LogMcastQuestion((v76 + 33), a1, 1);
      }

      if (callExternalHelpers(*v4, v76 + 8, *(a1 + 248), v82, v83, v84, v85, v86))
      {
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        buf = 0u;
        v147 = 0u;
        ConstructServiceName(&buf, 0, (v4 + 10), v76 + 8);
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG, "add_domain_to_browser: calling external_start_browsing_for_service()", v91, v92, v93, v94, v95, v99);
        }

        external_start_browsing_for_service(*v4, &buf, 12, *(a1 + 248), *(a1 + 188));
      }
    }

    v7 = *(v118 + 6);
    goto LABEL_151;
  }

  __break(1u);
  return result;
}

uint64_t mDNS_StartBrowse(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, int a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartBrowse", 16152);
  started = mDNS_StartBrowse_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  mDNS_Unlock_(mDNSStorage, "mDNS_StartBrowse", 16154);
  return started;
}

uint64_t ReconfirmAntecedents(uint64_t result, _BYTE *a2, int a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v9 = result;
    v10 = 0;
    v19 = result + 272;
    v22 = (result + 47032);
    v21 = result;
    while (1)
    {
      v20 = v10;
      v11 = *(v19 + 8 * v10);
      if (v11)
      {
        break;
      }

LABEL_26:
      v10 = v20 + 1;
      if (v20 == 498)
      {
        return result;
      }
    }

    while (1)
    {
      v12 = v11[2];
      if (v12)
      {
        break;
      }

LABEL_25:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (*(v12 + 109))
      {
        goto LABEL_24;
      }

      if (*(v12 + 32) != a4)
      {
        goto LABEL_24;
      }

      if (*(v12 + 28) != a3)
      {
        goto LABEL_24;
      }

      v13 = *(v12 + 12);
      if (v13 > 0x27)
      {
        goto LABEL_24;
      }

      if (((1 << v13) & 0x1000248000) != 0)
      {
        v14 = 6;
      }

      else if (((1 << v13) & 0x8000001024) != 0)
      {
        v14 = 4;
      }

      else
      {
        if (v13 != 33)
        {
          goto LABEL_24;
        }

        v14 = 10;
      }

      v15 = *(v12 + 48);
      result = SameDomainNameBytes((v15 + v14), a2);
      if (result)
      {
        v16 = mDNS_DomainNameFNV1aHash(*(v12 + 40));
        v17 = mDNS_DomainNameFNV1aHash((v15 + v14));
        v18 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }
        }

        else
        {
          v18 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
LABEL_21:
            GetRRDisplayString_rdb((v12 + 8), (*(v12 + 48) + 4), v22);
            *buf = 67110403;
            v24 = a5;
            v25 = 2048;
            v26 = a4;
            v27 = 1024;
            v28 = v16;
            v29 = 1024;
            v30 = v17;
            v31 = 2160;
            v32 = 1752392040;
            v33 = 2085;
            v34 = v22;
            v9 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ReconfirmAntecedents: Reconfirming (depth=%d, InterfaceID=%p, name_hash=%x, target_name_hash=%x) %{sensitive, mask.hash}s", buf, 0x32u);
          }
        }

        result = mDNS_Reconfirm_internal(v9, v12, 0x1388u);
        if (a5 <= 4)
        {
          result = ReconfirmAntecedents(v9, *(v12 + 40), *(v12 + 24), a4, (a5 + 1));
        }
      }

LABEL_24:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

void FoundInstance(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 176);
  if (*(a3 + 2) != 12)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: FoundInstance: Should not be called with rrtype %d (not a PTR record)", a4, a5, a6, a7, a8, *(v8 + 184));
    return;
  }

  v9 = a4;
  v13 = 2 * (a4 != 0);
  v14 = *(a2 + 340);
  if (!*(a2 + 340) && *(a2 + 351) && *(a2 + 228) >= *(a2 + 351))
  {
    v13 |= 0x2000000u;
  }

  *&__n[3] = 0;
  if (*a3 == 240)
  {
    v15 = *(a3 + 3);
    v16 = (a2 + 376);
    v17 = v8;
    v18 = v13;
    v19 = -65554;
LABEL_12:
    GenerateBrowseReply(v16, v15, v17, &__n[3], v18, v19);
    goto LABEL_13;
  }

  if (GenerateNTDResponse((*(a3 + 5) + 4), *(a3 + 3), v8, &__n[3], 0x42, v13, 0))
  {
    if (!SameDomainNameBytes((*(v8 + 152) + 10), "\t_services\a_dns-sd\x04_udp"))
    {
      v313 = *(a3 + 4);
      v314 = *(a3 + 5) + 4;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: FoundInstance: %##s PTR %##s received from network is not valid DNS-SD service pointer", v25, v26, v27, v28, v29, *(v8 + 184));
      return;
    }

    v15 = *(a3 + 3);
    v16 = (*(a3 + 5) + 4);
    v17 = v8;
    v18 = v13;
    v19 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v30 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 3), 0, v20, v21, v22, v23, v24);
  v31 = (a2 + 376);
  v32 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v33 = *(v8 + 208);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  if (!v33 || LODWORD(__tp.tv_sec) - v33 >= 300)
  {
    *(v8 + 208) = __tp.tv_sec;
    v49 = *(a3 + 7);
    if (v49)
    {
      v348 = v30;
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v49);
      v51 = *(a2 + 340);
      v53 = a3 + 12;
      v52 = *(a3 + 6);
      v54 = v52 < 0x201;
      if (validation_result)
      {
        if (*(a2 + 340))
        {
          if (v52 >= 0x201)
          {
            v94 = malloc_type_malloc(v52, 0x822ABD11uLL);
            if (!v94)
            {
              goto LABEL_465;
            }

            v43 = v94;
            v56 = *v53;
            v55 = v94;
            if (*v53)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v43 = 0;
            v55 = &word_1001787D0;
            v56 = 512;
            if (*(a3 + 6))
            {
LABEL_28:
              *&__n[1] = 0;
              __n[0] = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v55, v56, __n, &__n[1], v34, v35, v36);
              if (!*&__n[1])
              {
                v318 = RDataBytesPointer;
                if (__n[0] >= 0x1FFuLL)
                {
                  v324 = __n[0] + 2;
                  v58 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
                  if (!v58)
                  {
                    goto LABEL_465;
                  }

                  v59 = v58;
                }

                else
                {
                  v58 = 0;
                  v59 = word_1001789D0;
                  v324 = 512;
                }

                v317 = v59;
                v331 = v58;
                if (v14)
                {
                  v167 = mDNSLogCategory_Default;
                }

                else
                {
                  v167 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v167 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_429;
                  }

                  v184 = v9 != 0;
                  v185 = *(v8 + 200);
                  v186 = bswap32(*(a2 + 340)) >> 16;
                  v187 = (a2 + 376);
                  while (1)
                  {
                    if (!v187 || (v188 = *v187, v188 > 0x3F))
                    {
LABEL_289:
                      v189 = 257;
                      goto LABEL_418;
                    }

                    if (!*v187)
                    {
                      break;
                    }

                    v187 += v188 + 1;
                    if (v187 - v31 >= 256)
                    {
                      goto LABEL_289;
                    }
                  }

                  v189 = (v187 - v31 + 1);
LABEL_418:
                  v274 = *(a3 + 2);
                  v275 = __n[0];
                  v276 = __n[0] + 2;
                  if (v276 <= v324)
                  {
                    v277 = v317;
                    v278 = v318;
                    *v317 = __rev16(v274);
                    v315 = v184;
                    v327 = v186;
                    v279 = v189;
                    v321 = v276;
                    memcpy(v317 + 1, v278, v275);
                    v276 = v321;
                    v189 = v279;
                    v186 = v327;
                    v184 = v315;
                  }

                  else
                  {
                    v277 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v185;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v186;
                  HIWORD(__tp.tv_nsec) = 1024;
                  v356 = v184;
                  v357 = 1024;
                  v358 = 0;
                  v359 = 1024;
                  *v360 = v348;
                  *&v360[4] = 2160;
                  *&v360[6] = 1752392040;
                  *&v360[14] = 1040;
                  *&v360[16] = v189;
                  *&v360[20] = 2101;
                  *&v360[22] = v31;
                  *&v360[30] = 1024;
                  *&v360[32] = v32;
                  *&v360[36] = 1026;
                  *&v360[38] = validation_result;
                  *&v360[42] = 1024;
                  *&v360[44] = v274;
                  *&v360[48] = 2160;
                  *&v360[50] = 1752392040;
                  *&v360[58] = 1040;
                  *&v360[60] = v276;
                  *&v360[64] = 2101;
                  *&v360[66] = v277;
                  v244 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                }

                else
                {
                  if (v14)
                  {
                    v167 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v167 = mDNSLogCategory_mDNS;
                  }

                  if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_429;
                  }

                  v168 = v9 != 0;
                  v169 = *(v8 + 200);
                  v170 = bswap32(*(a2 + 340)) >> 16;
                  v171 = (a2 + 376);
                  while (1)
                  {
                    if (!v171 || (v172 = *v171, v172 > 0x3F))
                    {
LABEL_269:
                      v173 = 257;
                      goto LABEL_423;
                    }

                    if (!*v171)
                    {
                      break;
                    }

                    v171 += v172 + 1;
                    if (v171 - v31 >= 256)
                    {
                      goto LABEL_269;
                    }
                  }

                  v173 = (v171 - v31 + 1);
LABEL_423:
                  v280 = *(a3 + 2);
                  v281 = __n[0];
                  v282 = __n[0] + 2;
                  if (v282 <= v324)
                  {
                    v283 = v317;
                    v284 = v318;
                    *v317 = __rev16(v280);
                    v328 = v167;
                    v316 = v170;
                    v285 = v173;
                    v322 = v282;
                    v286 = v280;
                    memcpy(v317 + 1, v284, v281);
                    v280 = v286;
                    v282 = v322;
                    v173 = v285;
                    v170 = v316;
                    v167 = v328;
                  }

                  else
                  {
                    v283 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v169;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v170;
                  HIWORD(__tp.tv_nsec) = 1024;
                  v356 = v168;
                  v357 = 1024;
                  v358 = 0;
                  v359 = 1024;
                  *v360 = v348;
                  *&v360[4] = 2160;
                  *&v360[6] = 1752392040;
                  *&v360[14] = 1040;
                  *&v360[16] = v173;
                  *&v360[20] = 2101;
                  *&v360[22] = v31;
                  *&v360[30] = 1024;
                  *&v360[32] = v32;
                  *&v360[36] = 1026;
                  *&v360[38] = validation_result;
                  *&v360[42] = 1024;
                  *&v360[44] = v280;
                  *&v360[48] = 2160;
                  *&v360[50] = 1752392040;
                  *&v360[58] = 1040;
                  *&v360[60] = v282;
                  *&v360[64] = 2101;
                  *&v360[66] = v283;
                  v244 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                }

                v245 = v167;
                v248 = 102;
                goto LABEL_428;
              }

              goto LABEL_449;
            }
          }

          if (v14)
          {
            v95 = mDNSLogCategory_Default;
          }

          else
          {
            v95 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v95 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v96 = v9 != 0;
            v97 = *(v8 + 200);
            v98 = bswap32(*(a2 + 340)) >> 16;
            v133 = (a2 + 376);
            while (1)
            {
              if (!v133 || (v134 = *v133, v134 > 0x3F))
              {
LABEL_201:
                v101 = 257;
                goto LABEL_400;
              }

              if (!*v133)
              {
                break;
              }

              v133 += v134 + 1;
              if (v133 - v31 >= 256)
              {
                goto LABEL_201;
              }
            }

            v101 = (v133 - v31 + 1);
          }

          else
          {
            if (v14)
            {
              v95 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v95 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v96 = v9 != 0;
            v97 = *(v8 + 200);
            v98 = bswap32(*(a2 + 340)) >> 16;
            v99 = (a2 + 376);
            while (1)
            {
              if (!v99 || (v100 = *v99, v100 > 0x3F))
              {
LABEL_99:
                v101 = 257;
                goto LABEL_400;
              }

              if (!*v99)
              {
                break;
              }

              v99 += v100 + 1;
              if (v99 - v31 >= 256)
              {
                goto LABEL_99;
              }
            }

            v101 = (v99 - v31 + 1);
          }

LABEL_400:
          v252 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111683;
          HIDWORD(__tp.tv_sec) = v97;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v98;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = v96;
          v357 = 1024;
          v358 = 0;
          v359 = 1024;
          *v360 = v348;
          *&v360[4] = 2160;
          *&v360[6] = 1752392040;
          *&v360[14] = 1040;
          *&v360[16] = v101;
          *&v360[20] = 2101;
          *&v360[22] = a2 + 376;
          *&v360[30] = 1024;
          *&v360[32] = v32;
          *&v360[36] = 1026;
          *&v360[38] = validation_result;
          *&v360[42] = 1024;
          *&v360[44] = v252;
          v81 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          v138 = v95;
          v139 = 76;
LABEL_435:
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, v81, &__tp, v139);
          goto LABEL_449;
        }

        if (v52 >= 0x201)
        {
          v52 = malloc_type_malloc(v52, 0x822ABD11uLL);
          if (!v52)
          {
            goto LABEL_465;
          }

          v43 = v52;
          LODWORD(v52) = *v53;
          v91 = v52;
          v90 = v43;
        }

        else
        {
          v43 = 0;
          v90 = &word_1001787D0;
          v91 = 512;
        }

        if (v52)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v118 = ResourceRecordGetRDataBytesPointer(a3, v90, v91, __n, &__n[1], v34, v35, v36);
          if (*&__n[1])
          {
            goto LABEL_449;
          }

          v119 = v118;
          v345 = v32;
          if (__n[0] >= 0x1FFuLL)
          {
            v335 = __n[0] + 2;
            v217 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
            if (!v217)
            {
              goto LABEL_465;
            }

            v120 = v217;
            v325 = v217;
          }

          else
          {
            v120 = 0;
            v325 = word_1001789D0;
            v335 = 512;
          }

          if (v14)
          {
            v218 = mDNSLogCategory_Default;
          }

          else
          {
            v218 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v218 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
            {
LABEL_463:
              if (!v120)
              {
                goto LABEL_449;
              }

              v251 = v120;
              goto LABEL_448;
            }

            v231 = v9 != 0;
            v232 = *(v8 + 200);
            v233 = v31;
            while (1)
            {
              if (!v233 || (v234 = *v233, v234 > 0x3F))
              {
LABEL_379:
                v235 = 257;
                goto LABEL_453;
              }

              if (!*v233)
              {
                break;
              }

              v233 += v234 + 1;
              if (v233 - v31 >= 256)
              {
                goto LABEL_379;
              }
            }

            v235 = (v233 - v31 + 1);
LABEL_453:
            v300 = *(a3 + 2);
            v301 = __n[0];
            v302 = __n[0] + 2;
            if (v302 <= v335)
            {
              *v325 = __rev16(v300);
              v304 = v119;
              v305 = v232;
              v338 = v302;
              memcpy(v325 + 1, v304, v301);
              v303 = v325;
              v302 = v338;
              v232 = v305;
            }

            else
            {
              v303 = 0;
            }

            LODWORD(__tp.tv_sec) = 67112195;
            HIDWORD(__tp.tv_sec) = v232;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v231;
            HIWORD(__tp.tv_nsec) = 1024;
            v356 = 0;
            v357 = 1024;
            v358 = v348;
            v359 = 2160;
            *v360 = 1752392040;
            *&v360[8] = 1040;
            *&v360[10] = v235;
            *&v360[14] = 2101;
            *&v360[16] = v31;
            *&v360[24] = 1024;
            *&v360[26] = v345;
            *&v360[30] = 1026;
            *&v360[32] = validation_result;
            *&v360[36] = 1024;
            *&v360[38] = v300;
            *&v360[42] = 2160;
            *&v360[44] = 1752392040;
            *&v360[52] = 1040;
            *&v360[54] = v302;
            *&v360[58] = 2101;
            *&v360[60] = v303;
          }

          else
          {
            if (v14)
            {
              v218 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v218 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_463;
            }

            v219 = v9 != 0;
            v220 = *(v8 + 200);
            v221 = v31;
            while (1)
            {
              if (!v221 || (v222 = *v221, v222 > 0x3F))
              {
LABEL_359:
                v223 = 257;
                goto LABEL_458;
              }

              if (!*v221)
              {
                break;
              }

              v221 += v222 + 1;
              if (v221 - v31 >= 256)
              {
                goto LABEL_359;
              }
            }

            v223 = (v221 - v31 + 1);
LABEL_458:
            v306 = *(a3 + 2);
            v307 = __n[0];
            v308 = __n[0] + 2;
            if (v308 <= v335)
            {
              *v325 = __rev16(v306);
              v310 = v119;
              v311 = v220;
              v339 = v218;
              v312 = v306;
              memcpy(v325 + 1, v310, v307);
              v306 = v312;
              v309 = v325;
              v218 = v339;
              v220 = v311;
            }

            else
            {
              v309 = 0;
            }

            LODWORD(__tp.tv_sec) = 67112195;
            HIDWORD(__tp.tv_sec) = v220;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v219;
            HIWORD(__tp.tv_nsec) = 1024;
            v356 = 0;
            v357 = 1024;
            v358 = v348;
            v359 = 2160;
            *v360 = 1752392040;
            *&v360[8] = 1040;
            *&v360[10] = v223;
            *&v360[14] = 2101;
            *&v360[16] = v31;
            *&v360[24] = 1024;
            *&v360[26] = v345;
            *&v360[30] = 1026;
            *&v360[32] = validation_result;
            *&v360[36] = 1024;
            *&v360[38] = v306;
            *&v360[42] = 2160;
            *&v360[44] = 1752392040;
            *&v360[52] = 1040;
            *&v360[54] = v308;
            *&v360[58] = 2101;
            *&v360[60] = v309;
          }

          _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x60u);
          goto LABEL_463;
        }

        if (v14)
        {
          v83 = mDNSLogCategory_Default;
        }

        else
        {
          v83 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v83 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v128 = v9 != 0;
          v129 = *(v8 + 200);
          v197 = (a2 + 376);
          while (1)
          {
            if (!v197 || (v198 = *v197, v198 > 0x3F))
            {
LABEL_299:
              v132 = 257;
              goto LABEL_433;
            }

            if (!*v197)
            {
              break;
            }

            v197 += v198 + 1;
            if (v197 - v31 >= 256)
            {
              goto LABEL_299;
            }
          }

          v132 = (v197 - v31 + 1);
        }

        else
        {
          if (v14)
          {
            v83 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v83 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v128 = v9 != 0;
          v129 = *(v8 + 200);
          v130 = (a2 + 376);
          while (1)
          {
            if (!v130 || (v131 = *v130, v131 > 0x3F))
            {
LABEL_184:
              v132 = 257;
              goto LABEL_433;
            }

            if (!*v130)
            {
              break;
            }

            v130 += v131 + 1;
            if (v130 - v31 >= 256)
            {
              goto LABEL_184;
            }
          }

          v132 = (v130 - v31 + 1);
        }

LABEL_433:
        v287 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111427;
        HIDWORD(__tp.tv_sec) = v129;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v128;
        HIWORD(__tp.tv_nsec) = 1024;
        v356 = 0;
        v357 = 1024;
        v358 = v348;
        v359 = 2160;
        *v360 = 1752392040;
        *&v360[8] = 1040;
        *&v360[10] = v132;
        *&v360[14] = 2101;
        *&v360[16] = a2 + 376;
        *&v360[24] = 1024;
        *&v360[26] = v32;
        *&v360[30] = 1026;
        *&v360[32] = validation_result;
        *&v360[36] = 1024;
        *&v360[38] = v287;
        v81 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_434:
        v138 = v83;
        v139 = 70;
        goto LABEL_435;
      }

      v30 = v348;
      if (!*(a2 + 340))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v53 = a3 + 12;
      LODWORD(v52) = *(a3 + 6);
      v54 = v52 < 0x201;
      if (!*(a2 + 340))
      {
LABEL_46:
        if (v54)
        {
          v43 = 0;
          v72 = &word_1001787D0;
          v73 = 512;
        }

        else
        {
          v52 = malloc_type_malloc(v52, 0x822ABD11uLL);
          if (!v52)
          {
            goto LABEL_465;
          }

          v43 = v52;
          LODWORD(v52) = *v53;
          v73 = v52;
          v72 = v43;
        }

        if (!v52)
        {
          if (v14)
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
              goto LABEL_449;
            }

            v112 = v9 != 0;
            v113 = *(v8 + 200);
            v163 = (a2 + 376);
            while (1)
            {
              if (!v163 || (v164 = *v163, v164 > 0x3F))
              {
LABEL_250:
                v116 = 257;
                goto LABEL_414;
              }

              if (!*v163)
              {
                break;
              }

              v163 += v164 + 1;
              if (v163 - v31 >= 256)
              {
                goto LABEL_250;
              }
            }

            v116 = (v163 - v31 + 1);
          }

          else
          {
            if (v14)
            {
              v111 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v111 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v112 = v9 != 0;
            v113 = *(v8 + 200);
            v114 = (a2 + 376);
            while (1)
            {
              if (!v114 || (v115 = *v114, v115 > 0x3F))
              {
LABEL_138:
                v116 = 257;
                goto LABEL_414;
              }

              if (!*v114)
              {
                break;
              }

              v114 += v115 + 1;
              if (v114 - v31 >= 256)
              {
                goto LABEL_138;
              }
            }

            v116 = (v114 - v31 + 1);
          }

LABEL_414:
          v271 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111171;
          HIDWORD(__tp.tv_sec) = v113;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v112;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = 0;
          v357 = 1024;
          v358 = v30;
          v359 = 2160;
          *v360 = 1752392040;
          *&v360[8] = 1040;
          *&v360[10] = v116;
          *&v360[14] = 2101;
          *&v360[16] = a2 + 376;
          *&v360[24] = 1024;
          *&v360[26] = v32;
          *&v360[30] = 1024;
          *&v360[32] = v271;
          v81 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
          v138 = v111;
          v139 = 64;
          goto LABEL_435;
        }

        *&__n[1] = 0;
        __n[0] = 0;
        v104 = ResourceRecordGetRDataBytesPointer(a3, v72, v73, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_449;
        }

        v105 = v104;
        v343 = v32;
        v351 = v30;
        if (__n[0] >= 0x1FFuLL)
        {
          v106 = __n[0] + 2;
          v201 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
          if (!v201)
          {
            goto LABEL_465;
          }

          v64 = v201;
          v334 = v201;
        }

        else
        {
          v64 = 0;
          v334 = word_1001789D0;
          v106 = 512;
        }

        if (v14)
        {
          v202 = mDNSLogCategory_Default;
        }

        else
        {
          v202 = mDNSLogCategory_mDNS;
        }

        if (mDNS_SensitiveLoggingEnableCount && v202 != mDNSLogCategory_State)
        {
          if (v14)
          {
            v202 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v202 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_446;
          }

          v203 = v9 != 0;
          v204 = *(v8 + 200);
          v205 = v31;
          while (1)
          {
            if (!v205 || (v206 = *v205, v206 > 0x3F))
            {
LABEL_319:
              v207 = 257;
              goto LABEL_441;
            }

            if (!*v205)
            {
              break;
            }

            v205 += v206 + 1;
            if (v205 - v31 >= 256)
            {
              goto LABEL_319;
            }
          }

          v207 = (v205 - v31 + 1);
LABEL_441:
          v288 = *(a3 + 2);
          v295 = __n[0];
          v290 = __n[0] + 2;
          if (v290 <= v106)
          {
            v291 = v334;
            *v334 = __rev16(v288);
            v296 = v105;
            v297 = v203;
            v330 = v202;
            v298 = v288;
            v299 = v290;
            memcpy(v334 + 1, v296, v295);
            v290 = v299;
            v288 = v298;
            v202 = v330;
            v203 = v297;
          }

          else
          {
            v291 = 0;
          }

          goto LABEL_444;
        }

        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
        {
          v203 = v9 != 0;
          v204 = *(v8 + 200);
          v215 = v31;
          while (1)
          {
            if (!v215 || (v216 = *v215, v216 > 0x3F))
            {
LABEL_339:
              v207 = 257;
              goto LABEL_437;
            }

            if (!*v215)
            {
              break;
            }

            v215 += v216 + 1;
            if (v215 - v31 >= 256)
            {
              goto LABEL_339;
            }
          }

          v207 = (v215 - v31 + 1);
LABEL_437:
          v288 = *(a3 + 2);
          v289 = __n[0];
          v290 = __n[0] + 2;
          if (v290 <= v106)
          {
            v291 = v334;
            *v334 = __rev16(v288);
            v292 = v105;
            v293 = v203;
            v294 = v288;
            v329 = v290;
            memcpy(v334 + 1, v292, v289);
            v290 = v329;
            v288 = v294;
            v203 = v293;
          }

          else
          {
            v291 = 0;
          }

LABEL_444:
          LODWORD(__tp.tv_sec) = 67111939;
          HIDWORD(__tp.tv_sec) = v204;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v203;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = 0;
          v357 = 1024;
          v358 = v351;
          v359 = 2160;
          *v360 = 1752392040;
          *&v360[8] = 1040;
          *&v360[10] = v207;
          *&v360[14] = 2101;
          *&v360[16] = v31;
          *&v360[24] = 1024;
          *&v360[26] = v343;
          *&v360[30] = 1024;
          *&v360[32] = v288;
          *&v360[36] = 2160;
          *&v360[38] = 1752392040;
          *&v360[46] = 1040;
          *&v360[48] = v290;
          *&v360[52] = 2101;
          *&v360[54] = v291;
          v260 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v269 = v202;
          v270 = 90;
          goto LABEL_445;
        }

LABEL_446:
        if (!v64)
        {
          goto LABEL_449;
        }

        v251 = v64;
        goto LABEL_448;
      }
    }

    if (v54)
    {
      v43 = 0;
      v60 = &word_1001787D0;
      v61 = 512;
      if (v52)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v82 = malloc_type_malloc(v52, 0x822ABD11uLL);
      if (!v82)
      {
        goto LABEL_465;
      }

      v43 = v82;
      v61 = *v53;
      v60 = v82;
      if (*v53)
      {
LABEL_34:
        *&__n[1] = 0;
        __n[0] = 0;
        v62 = ResourceRecordGetRDataBytesPointer(a3, v60, v61, __n, &__n[1], v34, v35, v36);
        if (*&__n[1])
        {
          goto LABEL_449;
        }

        v63 = v62;
        v341 = v32;
        v349 = v30;
        if (__n[0] >= 0x1FFuLL)
        {
          v332 = __n[0] + 2;
          v149 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
          if (!v149)
          {
            goto LABEL_465;
          }

          v64 = v149;
          v65 = v149;
        }

        else
        {
          v64 = 0;
          v65 = word_1001789D0;
          v332 = 512;
        }

        v326 = v65;
        if (v14)
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
            goto LABEL_446;
          }

          v157 = v9 != 0;
          v158 = *(v8 + 200);
          v159 = bswap32(*(a2 + 340)) >> 16;
          v160 = (a2 + 376);
          while (1)
          {
            if (!v160 || (v161 = *v160, v161 > 0x3F))
            {
LABEL_243:
              v162 = 257;
              goto LABEL_402;
            }

            if (!*v160)
            {
              break;
            }

            v160 += v161 + 1;
            if (v160 - v31 >= 256)
            {
              goto LABEL_243;
            }
          }

          v162 = (v160 - v31 + 1);
LABEL_402:
          v253 = *(a3 + 2);
          v254 = __n[0];
          v255 = __n[0] + 2;
          if (v255 <= v332)
          {
            v256 = v326;
            *v326 = __rev16(v253);
            v257 = v63;
            v258 = v157;
            v319 = v159;
            v259 = v162;
            v336 = v255;
            memcpy(v326 + 1, v257, v254);
            v255 = v336;
            v162 = v259;
            v159 = v319;
            v157 = v258;
          }

          else
          {
            v256 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v158;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v159;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = v157;
          v357 = 1024;
          v358 = 0;
          v359 = 1024;
          *v360 = v349;
          *&v360[4] = 2160;
          *&v360[6] = 1752392040;
          *&v360[14] = 1040;
          *&v360[16] = v162;
          *&v360[20] = 2101;
          *&v360[22] = v31;
          *&v360[30] = 1024;
          *&v360[32] = v341;
          *&v360[36] = 1024;
          *&v360[38] = v253;
          *&v360[42] = 2160;
          *&v360[44] = 1752392040;
          *&v360[52] = 1040;
          *&v360[54] = v255;
          *&v360[58] = 2101;
          *&v360[60] = v256;
          v260 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        else
        {
          if (v14)
          {
            v150 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v150 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_446;
          }

          v151 = v9 != 0;
          v152 = *(v8 + 200);
          v153 = bswap32(*(a2 + 340)) >> 16;
          v154 = (a2 + 376);
          while (1)
          {
            if (!v154 || (v155 = *v154, v155 > 0x3F))
            {
LABEL_233:
              v156 = 257;
              goto LABEL_407;
            }

            if (!*v154)
            {
              break;
            }

            v154 += v155 + 1;
            if (v154 - v31 >= 256)
            {
              goto LABEL_233;
            }
          }

          v156 = (v154 - v31 + 1);
LABEL_407:
          v261 = *(a3 + 2);
          v262 = __n[0];
          v263 = __n[0] + 2;
          if (v263 <= v332)
          {
            v264 = v326;
            *v326 = __rev16(v261);
            v265 = v63;
            v266 = v151;
            v337 = v150;
            v320 = v153;
            v267 = v156;
            v268 = v261;
            memcpy(v326 + 1, v265, v262);
            v261 = v268;
            v156 = v267;
            v153 = v320;
            v150 = v337;
            v151 = v266;
          }

          else
          {
            v264 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v152;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v153;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = v151;
          v357 = 1024;
          v358 = 0;
          v359 = 1024;
          *v360 = v349;
          *&v360[4] = 2160;
          *&v360[6] = 1752392040;
          *&v360[14] = 1040;
          *&v360[16] = v156;
          *&v360[20] = 2101;
          *&v360[22] = v31;
          *&v360[30] = 1024;
          *&v360[32] = v341;
          *&v360[36] = 1024;
          *&v360[38] = v261;
          *&v360[42] = 2160;
          *&v360[44] = 1752392040;
          *&v360[52] = 1040;
          *&v360[54] = v263;
          *&v360[58] = 2101;
          *&v360[60] = v264;
          v260 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        v269 = v150;
        v270 = 96;
LABEL_445:
        _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, v260, &__tp, v270);
        goto LABEL_446;
      }
    }

    if (v14)
    {
      v83 = mDNSLogCategory_Default;
    }

    else
    {
      v83 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v83 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }

      v84 = v9 != 0;
      v85 = *(v8 + 200);
      v86 = bswap32(*(a2 + 340)) >> 16;
      v126 = (a2 + 376);
      while (1)
      {
        if (!v126 || (v127 = *v126, v127 > 0x3F))
        {
LABEL_169:
          v89 = 257;
          goto LABEL_386;
        }

        if (!*v126)
        {
          break;
        }

        v126 += v127 + 1;
        if (v126 - v31 >= 256)
        {
          goto LABEL_169;
        }
      }

      v89 = (v126 - v31 + 1);
    }

    else
    {
      if (v14)
      {
        v83 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v83 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }

      v84 = v9 != 0;
      v85 = *(v8 + 200);
      v86 = bswap32(*(a2 + 340)) >> 16;
      v87 = (a2 + 376);
      while (1)
      {
        if (!v87 || (v88 = *v87, v88 > 0x3F))
        {
LABEL_78:
          v89 = 257;
          goto LABEL_386;
        }

        if (!*v87)
        {
          break;
        }

        v87 += v88 + 1;
        if (v87 - v31 >= 256)
        {
          goto LABEL_78;
        }
      }

      v89 = (v87 - v31 + 1);
    }

LABEL_386:
    v241 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67111427;
    HIDWORD(__tp.tv_sec) = v85;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v86;
    HIWORD(__tp.tv_nsec) = 1024;
    v356 = v84;
    v357 = 1024;
    v358 = 0;
    v359 = 1024;
    *v360 = v30;
    *&v360[4] = 2160;
    *&v360[6] = 1752392040;
    *&v360[14] = 1040;
    *&v360[16] = v89;
    *&v360[20] = 2101;
    *&v360[22] = a2 + 376;
    *&v360[30] = 1024;
    *&v360[32] = v32;
    *&v360[36] = 1024;
    *&v360[38] = v241;
    v81 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_434;
  }

  v37 = *(a3 + 7);
  if (!v37)
  {
    v39 = *(a2 + 340);
    v41 = a3 + 12;
    LODWORD(v40) = *(a3 + 6);
    v42 = v40 < 0x201;
LABEL_38:
    if (v39)
    {
      if (v42)
      {
        v43 = 0;
        v66 = &word_1001787D0;
        v67 = 512;
        if (v40)
        {
LABEL_41:
          *&__n[1] = 0;
          __n[0] = 0;
          v68 = ResourceRecordGetRDataBytesPointer(a3, v66, v67, __n, &__n[1], v34, v35, v36);
          if (*&__n[1])
          {
            goto LABEL_449;
          }

          v69 = v68;
          v342 = v32;
          v350 = v30;
          if (__n[0] >= 0x1FFuLL)
          {
            v71 = __n[0] + 2;
            v140 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
            if (!v140)
            {
              goto LABEL_465;
            }

            v70 = v140;
            v333 = v140;
          }

          else
          {
            v70 = 0;
            v333 = word_1001789D0;
            v71 = 512;
          }

          if (v14)
          {
            v141 = mDNSLogCategory_Default;
          }

          else
          {
            v141 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v141 != mDNSLogCategory_State)
          {
            if (v14)
            {
              v141 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v141 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_396;
            }

            v142 = v9 != 0;
            v143 = *(v8 + 200);
            v144 = bswap32(*(a2 + 340)) >> 16;
            v145 = *(a3 + 2);
            v146 = __n[0];
            v147 = __n[0] + 2;
            if (v147 > v71)
            {
              v148 = 0;
LABEL_384:
              LODWORD(__tp.tv_sec) = 67111427;
              HIDWORD(__tp.tv_sec) = v143;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v144;
              HIWORD(__tp.tv_nsec) = 1024;
              v356 = v142;
              v357 = 1024;
              v358 = 0;
              v359 = 1024;
              *v360 = v350;
              *&v360[4] = 1024;
              *&v360[6] = v342;
              *&v360[10] = 1024;
              *&v360[12] = v145;
              *&v360[16] = 2160;
              *&v360[18] = 1752392040;
              *&v360[26] = 1040;
              *&v360[28] = v147;
              *&v360[32] = 2101;
              *&v360[34] = v148;
              v238 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v239 = v141;
              v240 = 70;
LABEL_395:
              _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, v238, &__tp, v240);
              goto LABEL_396;
            }

            goto LABEL_383;
          }

          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v142 = v9 != 0;
            v143 = *(v8 + 200);
            v144 = bswap32(*(a2 + 340)) >> 16;
            v145 = *(a3 + 2);
            v146 = __n[0];
            v147 = __n[0] + 2;
            if (v147 > v71)
            {
              v148 = 0;
              goto LABEL_384;
            }

LABEL_383:
            v148 = v333;
            *v333 = __rev16(v145);
            v236 = v69;
            v237 = v142;
            memcpy(v333 + 1, v236, v146);
            v142 = v237;
            goto LABEL_384;
          }

LABEL_396:
          if (!v70)
          {
            goto LABEL_449;
          }

          v251 = v70;
LABEL_448:
          free(v251);
          goto LABEL_449;
        }
      }

      else
      {
        v76 = malloc_type_malloc(v40, 0x822ABD11uLL);
        if (!v76)
        {
          goto LABEL_465;
        }

        v43 = v76;
        v67 = *v41;
        v66 = v76;
        if (*v41)
        {
          goto LABEL_41;
        }
      }

      if (v14)
      {
        v77 = mDNSLogCategory_Default;
      }

      else
      {
        v77 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v77 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      else
      {
        if (v14)
        {
          v77 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v77 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      v78 = *(v8 + 200);
      v79 = bswap32(*(a2 + 340)) >> 16;
      v80 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110656;
      HIDWORD(__tp.tv_sec) = v78;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = v79;
      HIWORD(__tp.tv_nsec) = 1024;
      v356 = v9 != 0;
      v357 = 1024;
      v358 = 0;
      v359 = 1024;
      *v360 = v30;
      *&v360[4] = 1024;
      *&v360[6] = v32;
      *&v360[10] = 1024;
      *&v360[12] = v80;
      v81 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_302;
    }

    if (v42)
    {
      v43 = 0;
      v74 = &word_1001787D0;
      v75 = 512;
    }

    else
    {
      v40 = malloc_type_malloc(v40, 0x822ABD11uLL);
      if (!v40)
      {
        goto LABEL_465;
      }

      v43 = v40;
      LODWORD(v40) = *v41;
      v75 = v40;
      v74 = v43;
    }

    if (!v40)
    {
      if (v14)
      {
        v117 = mDNSLogCategory_Default;
      }

      else
      {
        v117 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v117 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      else
      {
        if (v14)
        {
          v117 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v117 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      v165 = *(v8 + 200);
      v166 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110400;
      HIDWORD(__tp.tv_sec) = v165;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = v9 != 0;
      HIWORD(__tp.tv_nsec) = 1024;
      v356 = 0;
      v357 = 1024;
      v358 = v30;
      v359 = 1024;
      *v360 = v32;
      *&v360[4] = 1024;
      *&v360[6] = v166;
      v81 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      v138 = v117;
      v139 = 38;
      goto LABEL_435;
    }

    *&__n[1] = 0;
    __n[0] = 0;
    v107 = ResourceRecordGetRDataBytesPointer(a3, v74, v75, __n, &__n[1], v34, v35, v36);
    if (*&__n[1])
    {
      goto LABEL_449;
    }

    v108 = v107;
    v344 = v32;
    v352 = v30;
    if (__n[0] >= 0x1FFuLL)
    {
      v110 = __n[0] + 2;
      v208 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
      if (!v208)
      {
        goto LABEL_465;
      }

      v70 = v208;
      v109 = v208;
    }

    else
    {
      v70 = 0;
      v109 = word_1001789D0;
      v110 = 512;
    }

    if (v14)
    {
      v209 = mDNSLogCategory_Default;
    }

    else
    {
      v209 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v209 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_396;
      }

      v210 = v9 != 0;
      v211 = *(v8 + 200);
      v212 = *(a3 + 2);
      v213 = __n[0];
      v214 = __n[0] + 2;
      if (v214 > v110)
      {
        v109 = 0;
        goto LABEL_394;
      }
    }

    else
    {
      if (v14)
      {
        v209 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v209 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_396;
      }

      v210 = v9 != 0;
      v211 = *(v8 + 200);
      v212 = *(a3 + 2);
      v213 = __n[0];
      v214 = __n[0] + 2;
      if (v214 > v110)
      {
        v109 = 0;
LABEL_394:
        LODWORD(__tp.tv_sec) = 67111171;
        HIDWORD(__tp.tv_sec) = v211;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v210;
        HIWORD(__tp.tv_nsec) = 1024;
        v356 = 0;
        v357 = 1024;
        v358 = v352;
        v359 = 1024;
        *v360 = v344;
        *&v360[4] = 1024;
        *&v360[6] = v212;
        *&v360[10] = 2160;
        *&v360[12] = 1752392040;
        *&v360[20] = 1040;
        *&v360[22] = v214;
        *&v360[26] = 2101;
        *&v360[28] = v109;
        v238 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v239 = v209;
        v240 = 64;
        goto LABEL_395;
      }
    }

    *v109 = __rev16(v212);
    v249 = v108;
    v250 = v210;
    memcpy(v109 + 1, v249, v213);
    v210 = v250;
    goto LABEL_394;
  }

  v38 = dnssec_obj_resource_record_member_get_validation_result(v37);
  v39 = *(a2 + 340);
  v41 = a3 + 12;
  v40 = *(a3 + 6);
  v42 = v40 < 0x201;
  if (!v38)
  {
    goto LABEL_38;
  }

  if (!*(a2 + 340))
  {
    if (v40 >= 0x201)
    {
      v40 = malloc_type_malloc(v40, 0x822ABD11uLL);
      if (!v40)
      {
        goto LABEL_465;
      }

      v93 = v40;
      LODWORD(v40) = *v41;
      v43 = v93;
      v92 = v40;
    }

    else
    {
      v43 = 0;
      v92 = 512;
      v93 = &word_1001787D0;
    }

    if (v40)
    {
      v346 = v32;
      *&__n[1] = 0;
      __n[0] = 0;
      v121 = ResourceRecordGetRDataBytesPointer(a3, v93, v92, __n, &__n[1], v34, v35, v36);
      if (*&__n[1])
      {
        goto LABEL_449;
      }

      v122 = v121;
      v353 = v30;
      if (__n[0] >= 0x1FFuLL)
      {
        v124 = __n[0] + 2;
        v224 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
        if (!v224)
        {
          goto LABEL_465;
        }

        v125 = v224;
        v123 = v224;
      }

      else
      {
        v123 = 0;
        v124 = 512;
        v125 = word_1001789D0;
      }

      v331 = v123;
      if (v14)
      {
        v225 = mDNSLogCategory_Default;
      }

      else
      {
        v225 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v225 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v226 = v9 != 0;
        v227 = *(v8 + 200);
        v228 = *(a3 + 2);
        v229 = __n[0];
        v230 = __n[0] + 2;
        if (v230 > v124)
        {
          v125 = 0;
          goto LABEL_416;
        }
      }

      else
      {
        if (v14)
        {
          v225 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v225 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v226 = v9 != 0;
        v227 = *(v8 + 200);
        v228 = *(a3 + 2);
        v229 = __n[0];
        v230 = __n[0] + 2;
        if (v230 > v124)
        {
          v125 = 0;
LABEL_416:
          LODWORD(__tp.tv_sec) = 67111427;
          HIDWORD(__tp.tv_sec) = v227;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v226;
          HIWORD(__tp.tv_nsec) = 1024;
          v356 = 0;
          v357 = 1024;
          v358 = v353;
          v359 = 1024;
          *v360 = v346;
          *&v360[4] = 1026;
          *&v360[6] = v38;
          *&v360[10] = 1024;
          *&v360[12] = v228;
          *&v360[16] = 2160;
          *&v360[18] = 1752392040;
          *&v360[26] = 1040;
          *&v360[28] = v230;
          *&v360[32] = 2101;
          *&v360[34] = v125;
          v244 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v245 = v225;
          v248 = 70;
          goto LABEL_428;
        }
      }

      *v125 = __rev16(v228);
      v272 = v122;
      v273 = v226;
      memcpy(v125 + 1, v272, v229);
      v226 = v273;
      goto LABEL_416;
    }

    if (v14)
    {
      v77 = mDNSLogCategory_Default;
    }

    else
    {
      v77 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v77 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (v14)
      {
        v77 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v77 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    v199 = *(v8 + 200);
    v200 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110656;
    HIDWORD(__tp.tv_sec) = v199;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v9 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    v356 = 0;
    v357 = 1024;
    v358 = v30;
    v359 = 1024;
    *v360 = v32;
    *&v360[4] = 1026;
    *&v360[6] = v38;
    *&v360[10] = 1024;
    *&v360[12] = v200;
    v81 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_302:
    v138 = v77;
    v139 = 44;
    goto LABEL_435;
  }

  if (v40 < 0x201)
  {
    v43 = 0;
    v44 = 512;
    v45 = &word_1001787D0;
    if (*(a3 + 6))
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

  v102 = malloc_type_malloc(v40, 0x822ABD11uLL);
  if (!v102)
  {
    goto LABEL_465;
  }

  v45 = v102;
  v43 = v102;
  v44 = *v41;
  if (!*v41)
  {
LABEL_102:
    if (v14)
    {
      v103 = mDNSLogCategory_Default;
    }

    else
    {
      v103 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v103 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (v14)
      {
        v103 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v103 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    v135 = *(v8 + 200);
    v136 = bswap32(*(a2 + 340)) >> 16;
    v137 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110912;
    HIDWORD(__tp.tv_sec) = v135;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v136;
    HIWORD(__tp.tv_nsec) = 1024;
    v356 = v9 != 0;
    v357 = 1024;
    v358 = 0;
    v359 = 1024;
    *v360 = v30;
    *&v360[4] = 1024;
    *&v360[6] = v32;
    *&v360[10] = 1026;
    *&v360[12] = v38;
    *&v360[16] = 1024;
    *&v360[18] = v137;
    v81 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    v138 = v103;
    v139 = 50;
    goto LABEL_435;
  }

LABEL_20:
  v340 = v32;
  *&__n[1] = 0;
  __n[0] = 0;
  v46 = ResourceRecordGetRDataBytesPointer(a3, v45, v44, __n, &__n[1], v34, v35, v36);
  if (!*&__n[1])
  {
    v47 = v46;
    v347 = v30;
    if (__n[0] < 0x1FFuLL)
    {
      v48 = 512;
      v323 = word_1001789D0;
      v331 = 0;
LABEL_272:
      if (v14)
      {
        v175 = mDNSLogCategory_Default;
      }

      else
      {
        v175 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v175 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v190 = v9 != 0;
        v191 = *(v8 + 200);
        v192 = bswap32(*(a2 + 340)) >> 16;
        v193 = *(a3 + 2);
        v194 = __n[0];
        v195 = __n[0] + 2;
        if (v195 <= v48)
        {
          v196 = v323;
          *v323 = __rev16(v193);
          v242 = v47;
          v243 = v190;
          memcpy(v323 + 1, v242, v194);
          v190 = v243;
        }

        else
        {
          v196 = 0;
        }

        LODWORD(__tp.tv_sec) = 67111683;
        HIDWORD(__tp.tv_sec) = v191;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v192;
        HIWORD(__tp.tv_nsec) = 1024;
        v356 = v190;
        v357 = 1024;
        v358 = 0;
        v359 = 1024;
        *v360 = v347;
        *&v360[4] = 1024;
        *&v360[6] = v340;
        *&v360[10] = 1026;
        *&v360[12] = v38;
        *&v360[16] = 1024;
        *&v360[18] = v193;
        *&v360[22] = 2160;
        *&v360[24] = 1752392040;
        *&v360[32] = 1040;
        *&v360[34] = v195;
        *&v360[38] = 2101;
        *&v360[40] = v196;
        v244 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v245 = v175;
        goto LABEL_392;
      }

      if (v14)
      {
        v176 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v176 = mDNSLogCategory_mDNS;
      }

      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        v177 = v9 != 0;
        v178 = *(v8 + 200);
        v179 = bswap32(*(a2 + 340)) >> 16;
        v180 = *(a3 + 2);
        v181 = __n[0];
        v182 = __n[0] + 2;
        if (v182 <= v48)
        {
          v183 = v323;
          *v323 = __rev16(v180);
          v246 = v47;
          v247 = v177;
          memcpy(v323 + 1, v246, v181);
          v177 = v247;
        }

        else
        {
          v183 = 0;
        }

        LODWORD(__tp.tv_sec) = 67111683;
        HIDWORD(__tp.tv_sec) = v178;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v179;
        HIWORD(__tp.tv_nsec) = 1024;
        v356 = v177;
        v357 = 1024;
        v358 = 0;
        v359 = 1024;
        *v360 = v347;
        *&v360[4] = 1024;
        *&v360[6] = v340;
        *&v360[10] = 1026;
        *&v360[12] = v38;
        *&v360[16] = 1024;
        *&v360[18] = v180;
        *&v360[22] = 2160;
        *&v360[24] = 1752392040;
        *&v360[32] = 1040;
        *&v360[34] = v182;
        *&v360[38] = 2101;
        *&v360[40] = v183;
        v244 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v245 = v176;
LABEL_392:
        v248 = 76;
LABEL_428:
        _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, v244, &__tp, v248);
      }

LABEL_429:
      v251 = v331;
      if (!v331)
      {
        goto LABEL_449;
      }

      goto LABEL_448;
    }

    v48 = __n[0] + 2;
    v174 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
    if (v174)
    {
      v323 = v174;
      v331 = v174;
      goto LABEL_272;
    }

LABEL_465:
    __break(1u);
    return;
  }

LABEL_449:
  if (v43)
  {
    free(v43);
  }

  append_reply(v8, *&__n[3]);
}

void connection_termination(uint64_t a1)
{
  v2 = mDNSLogCategory_Default;
  v3 = &unk_100178000;
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
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v11 = *(a1 + 200);
    v12 = *(a1 + 188);
    LODWORD(__n_6.tv_sec) = 67109634;
    HIDWORD(__n_6.tv_sec) = v11;
    LOWORD(__n_6.tv_nsec) = 1024;
    *(&__n_6.tv_nsec + 2) = v12;
    HIWORD(__n_6.tv_nsec) = 2082;
    *v116 = a1 + 256;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateConnection STOP PID[%d](%{public}s)", &__n_6, 0x18u);
  }

LABEL_10:
  v13 = all_requests;
  if (all_requests)
  {
    v14 = &all_requests;
    do
    {
      if (*(v13 + 24) == a1)
      {
        __n_6.tv_sec = v13;
        if (v13 == a1)
        {
          v92 = *(v13 + 184);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "connection_termination ERROR (*req)->primary == *req for %p %d", v6, v7, v8, v9, v10, v13);
        }

        if (*(v13 + 96))
        {
          v93 = *(v13 + 184);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "connection_termination ERROR How can subordinate req %p %d have replies queued?", v6, v7, v8, v9, v10, v13);
        }

        abort_request(v13);
        *v14 = *(v13 + 16);
        request_state_forget(&__n_6);
      }

      else
      {
        v14 = (v13 + 16);
      }

      v13 = *v14;
    }

    while (*v14);
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    v16 = &unk_100164000;
    while (1)
    {
      v17 = *(v15 + 3);
      v18 = mDNS_DomainNameFNV1aHash(*(v17 + 40));
      if (_shouldLogFullRequestInfo(v15 + 12, v15 + 13))
      {
        v22 = *(v17 + 20);
        if (v22 < 0x201)
        {
          v23 = 0;
          v24 = 512;
          v25 = &word_1001787D0;
          if (*(v17 + 20))
          {
            goto LABEL_25;
          }

LABEL_37:
          v33 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != v3[435])
          {
            v34 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *(v17 + 40);
              v111 = v18;
              if (v35)
              {
                v36 = *(v17 + 40);
                while (1)
                {
                  if (!v36 || (v37 = *v36, v37 > 0x3F))
                  {
LABEL_46:
                    v38 = 257;
                    goto LABEL_85;
                  }

                  if (!*v36)
                  {
                    break;
                  }

                  v36 += v37 + 1;
                  if (&v36[-v35] >= 256)
                  {
                    goto LABEL_46;
                  }
                }

                v38 = (v36 - v35 + 1);
LABEL_85:
                v109 = v38;
              }

              else
              {
                v109 = 0;
              }

              v65 = *(a1 + 200);
              v66 = v15[14];
              v67 = *(a1 + 252);
              v68 = *(a1 + 188);
              __n_6.tv_sec = 0;
              __n_6.tv_nsec = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
              v69 = LODWORD(__n_6.tv_sec) - v15[12];
              v70 = *(v17 + 12);
              LODWORD(__n_6.tv_sec) = 67111683;
              HIDWORD(__n_6.tv_sec) = v65;
              LOWORD(__n_6.tv_nsec) = 1024;
              *(&__n_6.tv_nsec + 2) = v66;
              HIWORD(__n_6.tv_nsec) = 2160;
              *v116 = 1752392040;
              *&v116[8] = 1040;
              v117 = v109;
              v118 = 2101;
              v119 = v35;
              v120 = 1024;
              v121 = v111;
              v122 = 1024;
              v123 = v67;
              v124 = 2082;
              v125 = a1 + 256;
              v126 = 1024;
              v127 = v68;
              v128 = 1024;
              v129 = v69;
              v130 = 1024;
              v131 = v70;
              v64 = v34;
              goto LABEL_87;
            }

LABEL_102:
            if (v23)
            {
              free(v23);
            }

            goto LABEL_104;
          }

          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_102;
          }

          v43 = *(v17 + 40);
          v112 = v18;
          if (v43)
          {
            v44 = *(v17 + 40);
            while (1)
            {
              if (!v44 || (v45 = *v44, v45 > 0x3F))
              {
LABEL_56:
                v46 = 257;
                goto LABEL_82;
              }

              if (!*v44)
              {
                break;
              }

              v44 += v45 + 1;
              if (&v44[-v43] >= 256)
              {
                goto LABEL_56;
              }
            }

            v46 = (v44 - v43 + 1);
LABEL_82:
            v108 = v46;
          }

          else
          {
            v108 = 0;
          }

          v58 = *(a1 + 200);
          v59 = v15[14];
          v60 = *(a1 + 252);
          v61 = *(a1 + 188);
          __n_6.tv_sec = 0;
          __n_6.tv_nsec = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
          v62 = LODWORD(__n_6.tv_sec) - v15[12];
          v63 = *(v17 + 12);
          LODWORD(__n_6.tv_sec) = 67111683;
          HIDWORD(__n_6.tv_sec) = v58;
          LOWORD(__n_6.tv_nsec) = 1024;
          *(&__n_6.tv_nsec + 2) = v59;
          HIWORD(__n_6.tv_nsec) = 2160;
          *v116 = 1752392040;
          *&v116[8] = 1040;
          v117 = v108;
          v118 = 2101;
          v119 = v43;
          v120 = 1024;
          v121 = v112;
          v122 = 1024;
          v123 = v60;
          v124 = 2082;
          v125 = a1 + 256;
          v126 = 1024;
          v127 = v61;
          v128 = 1024;
          v129 = v62;
          v130 = 1024;
          v131 = v63;
          v64 = v33;
LABEL_87:
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), index: %d, client: %{public}s(pid: %d), duration: %{mdns:time_duration}utype: %{mdns:rrtype}d, rdata: <none>", &__n_6, 0x50u);
          v3 = &unk_100178000;
LABEL_101:
          v16 = &unk_100164000;
          goto LABEL_102;
        }

        v32 = malloc_type_malloc(v22, 0x4574576EuLL);
        if (!v32)
        {
          goto LABEL_117;
        }

        v23 = v32;
        v24 = *(v17 + 20);
        v25 = v32;
        if (!*(v17 + 20))
        {
          goto LABEL_37;
        }

LABEL_25:
        __n_2 = 0;
        __n = 0;
        RDataBytesPointer = ResourceRecordGetRDataBytesPointer(v17 + 8, v25, v24, &__n, &__n_2, v19, v20, v21);
        if (__n_2)
        {
          goto LABEL_101;
        }

        v27 = RDataBytesPointer;
        v110 = v18;
        if (__n >= 0x1FFuLL)
        {
          v29 = __n + 2;
          v47 = malloc_type_malloc(__n + 2, 0x4574576EuLL);
          if (!v47)
          {
LABEL_117:
            __break(1u);
          }

          v28 = v47;
          v107 = v47;
        }

        else
        {
          v28 = 0;
          v29 = 512;
          v107 = word_1001789D0;
        }

        v48 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == v3[435])
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *(v17 + 40);
            __src = v27;
            if (v54)
            {
              v55 = *(v17 + 40);
              while (1)
              {
                if (!v55 || (v56 = *v55, v56 > 0x3F))
                {
LABEL_76:
                  v57 = 257;
                  goto LABEL_89;
                }

                if (!*v55)
                {
                  break;
                }

                v55 += v56 + 1;
                if (&v55[-v54] >= 256)
                {
                  goto LABEL_76;
                }
              }

              v57 = (v55 - v54 + 1);
LABEL_89:
              loga = v57;
            }

            else
            {
              loga = 0;
            }

            v97 = *(a1 + 200);
            v99 = v15[14];
            v101 = *(a1 + 252);
            v104 = *(a1 + 188);
            __n_6.tv_sec = 0;
            __n_6.tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
            v71 = 0;
            tv_sec = __n_6.tv_sec;
            v73 = v15[12];
            v74 = *(v17 + 12);
            v75 = __n;
            v76 = __n + 2;
            if (v76 <= v29)
            {
              *v107 = __rev16(v74);
              v95 = v74;
              memcpy(v107 + 1, __src, v75);
              v74 = v95;
              v71 = v107;
            }

            LODWORD(__n_6.tv_sec) = 67112451;
            HIDWORD(__n_6.tv_sec) = v97;
            LOWORD(__n_6.tv_nsec) = 1024;
            *(&__n_6.tv_nsec + 2) = v99;
            HIWORD(__n_6.tv_nsec) = 2160;
            *v116 = 1752392040;
            *&v116[8] = 1040;
            v117 = loga;
            v118 = 2101;
            v119 = v54;
            v120 = 1024;
            v121 = v110;
            v122 = 1024;
            v123 = v101;
            v124 = 2082;
            v125 = a1 + 256;
            v126 = 1024;
            v127 = v104;
            v128 = 1024;
            v129 = tv_sec - v73;
            v130 = 1024;
            v131 = v74;
            v132 = 2160;
            v133 = 1752392040;
            v134 = 1040;
            v135 = v76;
            v136 = 2101;
            v137 = v71;
            v77 = v48;
LABEL_98:
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), index: %d, client: %{public}s(pid: %d), duration: %{mdns:time_duration}utype: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n_6, 0x6Au);
            v3 = &unk_100178000;
          }
        }

        else
        {
          v49 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v50 = *(v17 + 40);
            log = v49;
            if (v50)
            {
              v51 = *(v17 + 40);
              while (1)
              {
                if (!v51 || (v52 = *v51, v52 > 0x3F))
                {
LABEL_68:
                  v53 = 257;
                  goto LABEL_94;
                }

                if (!*v51)
                {
                  break;
                }

                v51 += v52 + 1;
                if (&v51[-v50] >= 256)
                {
                  goto LABEL_68;
                }
              }

              v53 = (v51 - v50 + 1);
LABEL_94:
              v103 = v53;
            }

            else
            {
              v103 = 0;
            }

            v96 = *(a1 + 200);
            v98 = v15[14];
            v100 = *(a1 + 252);
            v102 = *(a1 + 188);
            __n_6.tv_sec = 0;
            __n_6.tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
            v78 = 0;
            v79 = __n_6.tv_sec;
            v80 = v15[12];
            v81 = *(v17 + 12);
            v82 = __n;
            v83 = __n + 2;
            if (v83 <= v29)
            {
              *v107 = __rev16(v81);
              v84 = v27;
              v85 = v79;
              memcpy(v107 + 1, v84, v82);
              v79 = v85;
              v78 = v107;
            }

            LODWORD(__n_6.tv_sec) = 67112451;
            HIDWORD(__n_6.tv_sec) = v96;
            LOWORD(__n_6.tv_nsec) = 1024;
            *(&__n_6.tv_nsec + 2) = v98;
            HIWORD(__n_6.tv_nsec) = 2160;
            *v116 = 1752392040;
            *&v116[8] = 1040;
            v117 = v103;
            v118 = 2101;
            v119 = v50;
            v120 = 1024;
            v121 = v110;
            v122 = 1024;
            v123 = v100;
            v124 = 2082;
            v125 = a1 + 256;
            v126 = 1024;
            v127 = v102;
            v128 = 1024;
            v129 = v79 - v80;
            v130 = 1024;
            v131 = v81;
            v132 = 2160;
            v133 = 1752392040;
            v134 = 1040;
            v135 = v83;
            v136 = 2101;
            v137 = v78;
            v77 = log;
            goto LABEL_98;
          }
        }

        if (v28)
        {
          free(v28);
        }

        goto LABEL_101;
      }

      v30 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != v3[435])
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

LABEL_104:
      *(a1 + 176) = *(*(a1 + 176) + 8);
      v86 = *(v15 + 3);
      *(v86 + 112) = 0;
      if (*(v15 + 60))
      {
        *(v15 + 60) = 0;
        internal_stop_advertising_service(v86 + 8, *(a1 + 248), *(a1 + 188));
        v86 = *(v15 + 3);
      }

      if (v16[635])
      {
        LogMcastService(v86, a1, 0);
        v86 = *(v15 + 3);
      }

      v87 = *v15;
      if (*v15)
      {
        v88 = *(a1 + 252);
        if (v88)
        {
          v89 = AWDLInterfaceID == v88 || WiFiAwareInterfaceID == v88;
        }

        else
        {
          v89 = (*(a1 + 250) >> 4) & 1;
        }

        v90 = *(v86 + 40);
        bzero(&__n_6, 0x3F1uLL);
        service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v90, &__n_6);
        _mdns_powerlog_bonjour_event(0xCu, v89, (a1 + 256), service_type_from_domain_name, v87);
        v86 = *(v15 + 3);
      }

      mDNS_Deregister(mDNSStorage, v86);
      free(v15);
      v15 = *(a1 + 176);
      if (!v15)
      {
        return;
      }
    }

    v30 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_104;
    }

LABEL_48:
    v40 = *(a1 + 200);
    v41 = v15[14];
    __n_6.tv_sec = 0;
    __n_6.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
    v42 = LODWORD(__n_6.tv_sec) - v15[12];
    __n_6.tv_sec = __PAIR64__(v40, 67109888);
    LOWORD(__n_6.tv_nsec) = 1024;
    *(&__n_6.tv_nsec + 2) = v41;
    HIWORD(__n_6.tv_nsec) = 1024;
    *v116 = v18;
    *&v116[4] = 1024;
    *&v116[6] = v42;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name hash: %x, duration: %{mdns:time_duration}u", &__n_6, 0x1Au);
    goto LABEL_104;
  }
}

void mDNS_AddSearchDomain(_BYTE *a1, uint64_t a2)
{
  v4 = &SearchList;
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      break;
    }

    if (*(v5 + 272) == a2)
    {
      if (SameDomainNameBytes((v5 + 8), a1))
      {
        v6 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          v7 = a1;
          while (1)
          {
            if (!v7 || (v8 = *v7, v8 > 0x3F))
            {
LABEL_13:
              v9 = 257;
              goto LABEL_15;
            }

            if (!*v7)
            {
              break;
            }

            v7 += v8 + 1;
            if (v7 - a1 >= 256)
            {
              goto LABEL_13;
            }
          }

          v9 = (v7 - a1 + 1);
LABEL_15:
          v20 = 141558531;
          v21 = 1752392040;
          v22 = 1040;
          v23 = v9;
          v24 = 2101;
          v25 = a1;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "mDNS_AddSearchDomain: domain already in list -- search domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v20, 0x1Cu);
        }

        v5 = *v4;
        v10 = *(*v4 + 264);
        if (v10)
        {
          *(v5 + 264) = v10 & 0xFFFFFFFE;
        }

        *v4 = *v5;
        *v5 = 0;
        goto LABEL_19;
      }

      v4 = *v4;
    }

    else
    {
      v4 = *v4;
    }
  }

  do
  {
LABEL_19:
    v11 = v4;
    v4 = *v4;
  }

  while (v4);
  if (v5)
  {
    *v11 = v5;
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 0xEC0uLL, 0x9EF88D38uLL);
    if (v12)
    {
      *v11 = v12;
      v13 = a1;
      do
      {
        if (!v13)
        {
          break;
        }

        v14 = *v13;
        if (v14 > 0x3F)
        {
          break;
        }

        if (!*v13)
        {
          v15 = v13 - a1 + 1;
          if (v15 <= 0x100u)
          {
            memcpy(v12 + 8, a1, v15);
            goto LABEL_32;
          }

          break;
        }

        v13 += v14 + 1;
      }

      while (v13 - a1 <= 255);
      v12[8] = 0;
LABEL_32:
      **v11 = 0;
      *(*v11 + 272) = a2;
      v16 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1;
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_38:
            v19 = 257;
            goto LABEL_40;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (v17 - a1 >= 256)
          {
            goto LABEL_38;
          }
        }

        v19 = (v17 - a1 + 1);
LABEL_40:
        v20 = 141558787;
        v21 = 1752392040;
        v22 = 1040;
        v23 = v19;
        v24 = 2101;
        v25 = a1;
        v26 = 2048;
        v27 = a2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mDNS_AddSearchDomain: new search domain added -- search domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, InterfaceID %p", &v20, 0x26u);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void AnswerLocalQuestionWithLocalAuthRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 208);
  if (!v5)
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

    v21 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v21);
    v27 = 136446210;
    v28 = v21;
    v22 = "AnswerLocalQuestionWithLocalAuthRecord: ERROR!! CurrentQuestion NULL while answering with %{public}s";
    v23 = v15;
    v24 = 12;
LABEL_46:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v27, v24);
    return;
  }

  v7 = FollowCNAME(*(a1 + 208), (a2 + 8), a3);
  v8 = *(a2 + 8);
  if ((v8 & 0x3C) == 0)
  {
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
        return;
      }

      if (a3)
      {
        v19 = "Add";
      }

      else
      {
        v19 = "Rmv";
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a3)
      {
        v19 = "Add";
      }

      else
      {
        v19 = "Rmv";
      }
    }

    v26 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v26);
    v27 = 136446979;
    v28 = v19;
    v29 = 1024;
    v30 = v8;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2085;
    v34 = v26;
    v22 = "AnswerLocalQuestionWithLocalAuthRecord: *NOT* delivering %{public}s event for local record type %X %{sensitive, mask.hash}s";
    v23 = v17;
    v24 = 38;
    goto LABEL_46;
  }

  v9 = v7;
  if (a3)
  {
    *(a2 + 193) = 1;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 52) + 1;
  *(a1 + 52) = v11;
  mDNS_VerifyLockState("Drop Lock", 0, v10, v11, "AnswerLocalQuestionWithLocalAuthRecord", 905);
  v12 = *(v5 + 152);
  if (!v12)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  *(v5 + 228) += v13;
  if (*(a2 + 172) != 4 || (*(a2 + 8) & 0x32) == 0 || (v14 = *(a2 + 12), v14 > 0x1C) || ((1 << v14) & 0x10001022) == 0)
  {
    v12(a1, v5, a2 + 8, a3);
LABEL_40:
    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerLocalQuestionWithLocalAuthRecord", 930);
    --*(a1 + 52);
    return;
  }

  if (!v9 || *(v5 + 635))
  {
    *(v5 + 212) = 0;
    *(v5 + 355) += v13;
    v12(a1, v5, a2 + 8, a3);
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerLocalQuestionWithLocalAuthRecord", 918);
  --*(a1 + 52);
  if (v9 && *(a1 + 208) == v5)
  {

    AnswerQuestionByFollowingCNAME(a1, v5, a2 + 8);
  }
}

void enum_result_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 4) != 12)
  {
    return;
  }

  v7 = *(a2 + 176);
  bzero(__s, 0x3F1uLL);
  v8 = *(v7 + 120) + 704;
  if (!a4 && v8 == a2)
  {
    return;
  }

  ConvertDomainNameToCString_withescape((*(a3 + 40) + 4), __s);
  v9 = strlen(__s);
  reply = create_reply(0x40, v9 + 13, v7, v10, v11, v12, v13, v14);
  v16 = reply;
  if (v8 == a2)
  {
    v17 = 100663296;
  }

  else
  {
    v17 = 0x2000000;
  }

  *(reply + 6) = 0;
  if (!a4)
  {
    v17 = 0;
  }

  *(reply + 11) = v17;
  v18 = strlen(__s);
  memcpy(v16 + 56, __s, v18 + 1);
  v19 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  v20 = *(v7 + 200);
  v21 = bswap32(*(a2 + 340));
  v22 = *(a2 + 376) + 1;
  v24[0] = 67110915;
  v24[1] = v20;
  v25 = 1024;
  v26 = HIWORD(v21);
  v27 = 2160;
  v28 = 1752392040;
  v29 = 1040;
  v30 = v22;
  v31 = 2101;
  v32 = a2 + 376;
  v33 = 1024;
  v34 = a4 != 0;
  v35 = 2160;
  v36 = 1752392040;
  v37 = 2085;
  v38 = __s;
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] DNSServiceEnumerateDomains(%{sensitive, mask.hash, mdnsresponder:domain_label}.*P) RESULT %{mdns:addrmv_upper}d: %{sensitive, mask.hash}s", v24, 0x42u);
LABEL_15:
  if (*(v7 + 292))
  {
    free(v16);
  }

  else
  {
    v23 = *(v7 + 24);
    if (!v23)
    {
      v23 = v7;
    }

    *v16 = 0;
    **(v23 + 104) = v16;
    *(v23 + 104) = v16;
  }
}

void SendDelayedUnicastResponse(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 28672;
  v74 = 0;
  v11 = (a1 + 12656);
  do
  {
    v11 = *v11;
  }

  while (v11 && v11[444] != a3);
  v12 = *(a1 + 12616);
  if (v12)
  {
    v13 = &v74;
    while (1)
    {
      v14 = *(v12 + 208);
      if (v14 == -1 || *(v12 + 232) == -1 || *(v12 + 236) == -1 && *(v12 + 240) == -1 && *(v12 + 244) == -1 && *(v12 + 248) == -1)
      {
        *(v12 + 195) = 0;
      }

      v15 = v14 != a3 || *(v12 + 195) == 0;
      if (v15)
      {
        goto LABEL_30;
      }

      if (*a2 == 6)
      {
        if (*(v12 + 236) == a2[1] && *(v12 + 240) == a2[2] && *(v12 + 244) == a2[3])
        {
          v16 = *(v12 + 248);
          v17 = a2[4];
LABEL_20:
          if (v16 == v17)
          {
            *(v12 + 208) = 0;
            *(v12 + 195) = 0;
            *(v12 + 232) = 0;
            *(v12 + 240) = 0;
            *(v12 + 248) = 0;
            if ((!v11 || mDNSPlatformValidRecordForInterface(v12, v11[444], a3, a4, a5, a6, a7, a8)) && !*(v12 + 256) && v13 != (v12 + 256))
            {
              *(v12 + 264) = -1;
              *v13 = v12;
              v13 = (v12 + 256);
            }
          }
        }
      }

      else if (*a2 == 4)
      {
        v16 = *(v12 + 232);
        v17 = a2[1];
        goto LABEL_20;
      }

LABEL_30:
      v12 = *v12;
      if (!v12)
      {
        v18 = v74;
        goto LABEL_33;
      }
    }
  }

  v18 = 0;
  v13 = &v74;
LABEL_33:
  v73 = v13;
  v70 = a3;
  v19 = a3;
  v20 = a1;
  AddAdditionalsToResponseList(a1, v18, &v73, v19, a5, a6, a7, a8);
  v21 = v74;
  if (!v74)
  {
    return;
  }

  v22 = a1 + 28972;
  do
  {
    v23 = 0;
    v72 = 0;
    *(v10 + 288) = 8650752;
    v24 = a1 + 28972;
    *(v10 + 292) = 0;
    do
    {
      if (!*(v21 + 264))
      {
        goto LABEL_66;
      }

      if ((*(v21 + 8) & 0x32) != 0)
      {
        *(v21 + 14) |= 0x8000u;
      }

      v27 = UnsafeBufferPointer(*(v20 + 12616), v21, &v72);
      if (v27)
      {
        v28 = v23 + 1;
      }

      else
      {
        v28 = v23;
      }

      if (*(v10 + 294) || *(v10 + 296))
      {
        v29 = 1440;
      }

      else
      {
        v29 = 1440;
        if (!*(v10 + 298))
        {
          v29 = 8940;
        }
      }

      v30 = v22 + v29;
      v31 = v28;
      v15 = v28 == 0;
      v32 = -11;
      if (v15)
      {
        v32 = 0;
      }

      v33 = PutResourceRecordTTLWithLimit(v10 + 288, v24, (v10 + 294), v21 + 8, *(v21 + 16), v30 - 14 * v31 + v32, v25, v26);
      v34 = v33;
      if (!v27)
      {
        *(v21 + 14) &= ~0x8000u;
        if (v33)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (!v33)
      {
        *(v21 + 14) &= ~0x8000u;
LABEL_54:
        if (!*(v10 + 294))
        {
          v34 = v24;
          goto LABEL_56;
        }

        v21 = v74;
        if (!v74)
        {
          v39 = v72;
          goto LABEL_93;
        }

        while (1)
        {
LABEL_66:
          if (*(v21 + 264))
          {
            v34 = v24;
            goto LABEL_92;
          }

          if ((*(v21 + 8) & 0x32) != 0)
          {
            *(v21 + 14) |= 0x8000u;
          }

          v43 = UnsafeBufferPointer(*(v20 + 12616), v21, &v72);
          if (v43)
          {
            v44 = v23 + 1;
          }

          else
          {
            v44 = v23;
          }

          if (*(v10 + 294) || *(v10 + 296))
          {
            v40 = 1440;
          }

          else
          {
            v40 = 1440;
            if (!*(v10 + 298))
            {
              v40 = 8940;
            }
          }

          v45 = v22 + v40;
          v46 = v44;
          v15 = v44 == 0;
          v47 = -11;
          if (v15)
          {
            v47 = 0;
          }

          v48 = PutResourceRecordTTLWithLimit(v10 + 288, v24, (v10 + 298), v21 + 8, *(v21 + 16), v45 - 14 * v46 + v47, v41, v42);
          v34 = v48;
          if (v43)
          {
            if (!v48)
            {
              *(v21 + 14) &= ~0x8000u;
LABEL_86:
              if ((*(v21 + 8) & 0x32) != 0)
              {
                *(v21 + 208) = -1;
              }

              v34 = v24;
              goto LABEL_89;
            }

            v49 = *(v21 + 40);
            v50 = *(v10 + 294);
            v51 = *(v10 + 298);
            v52 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v52)
            {
              goto LABEL_124;
            }

            ++v23;
            *(v43 + 4) = v50 + v51 - 1;
            v52[1] = v43;
            v52[2] = v49;
            v20 = a1;
            *v52 = v72;
            v72 = v52;
            *(v21 + 14) &= ~0x8000u;
          }

          else
          {
            *(v21 + 14) &= ~0x8000u;
            if (!v48)
            {
              goto LABEL_86;
            }
          }

          if (!*(v10 + 294))
          {
            v24 = v34;
            goto LABEL_86;
          }

          *(v21 + 192) = 1;
LABEL_89:
          v74 = *(v21 + 256);
          v53 = v74;
          *(v21 + 264) = 0;
          *(v21 + 272) = 0;
          *(v21 + 256) = 0;
          v24 = v34;
          v21 = v53;
          if (!v53)
          {
            goto LABEL_92;
          }
        }
      }

      v35 = *(v21 + 40);
      v36 = *(v10 + 294);
      v37 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
      if (!v37)
      {
LABEL_124:
        __break(1u);
      }

      ++v23;
      *(v27 + 4) = v36 - 1;
      v37[1] = v27;
      v37[2] = v35;
      *v37 = v72;
      v72 = v37;
      *(v21 + 14) &= ~0x8000u;
LABEL_56:
      v74 = *(v21 + 256);
      v38 = v74;
      *(v21 + 264) = 0;
      *(v21 + 272) = 0;
      *(v21 + 256) = 0;
      *(v21 + 192) = 1;
      v21 = v38;
      v24 = v34;
    }

    while (v38);
LABEL_92:
    v39 = v72;
    v24 = v34;
    if (*(v10 + 294))
    {
LABEL_93:
      if (v39)
      {
        bzero(v85, 0x498uLL);
        v86[0] = 32;
        v87 = 41;
        v121 = 264;
        v91 = v120;
        v92 = &v121;
        v100 = 0;
        v101 = 0;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0;
        v102 = v120;
        v116 = 0;
        v118 = 0;
        v119 = 0;
        v117 = 0;
        v120[0] = 0;
        v103 = 0u;
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
        memset(v115, 0, sizeof(v115));
        v88 = 1440;
        v89 = 4500;
        v90 = 1572888;
        v54 = v39[1];
        v124 = v54[1];
        v125 = *(v54 + 4);
        v123 = *v54;
        v122 = 720362;
        v72 = *v39;
        free(v39);
        if (*(v10 + 294) || *(v10 + 296))
        {
          v57 = 1440;
        }

        else
        {
          v57 = 1440;
          if (!*(v10 + 298))
          {
            v57 = 8940;
          }
        }

        v58 = PutResourceRecordTTLWithLimit(v10 + 288, v24, (v10 + 298), v86, v89, v22 + v57, v55, v56);
        if (v58 && v72)
        {
          if (*(v10 + 294) || *(v10 + 296))
          {
            v62 = 1440;
          }

          else
          {
            v62 = 1440;
            if (!*(v10 + 298))
            {
              v62 = 8940;
            }
          }

          v58 = AddTSRROptsToMessage(&v72, v10 + 288, (v24 + 9), v58, v22 + v62, v59, v60, v61);
        }

        if (!v58)
        {
          v63 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v63 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
LABEL_109:
              v64 = *(v10 + 292);
              v65 = *(v10 + 294);
              v66 = *(v10 + 296);
              v67 = *(v10 + 298);
              GetRRDisplayString_rdb(v86, v92 + 2, (a1 + 47032));
              *buf = 67110146;
              v76 = v64;
              v77 = 1024;
              v78 = v65;
              v79 = 1024;
              v80 = v66;
              v20 = a1;
              v81 = 1024;
              v82 = v67;
              v83 = 2080;
              v84 = a1 + 47032;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "SendDelayedUnicastResponse: How did we fail to have space for OPT record (%d/%d/%d/%d) %s", buf, 0x24u);
            }
          }

          v58 = v24;
        }

        v24 = v58;
      }

      mDNSSendDNSMessage(v20, (v10 + 288), v24, v70, 0, 0, a2, 0xE914u, 0, 0);
      v39 = v72;
    }

    if (v39)
    {
      do
      {
        v68 = *v39;
        free(v39);
        v39 = v68;
      }

      while (v68);
    }

    v21 = v74;
  }

  while (v74);
}

uint64_t mDNS_Reconfirm_internal(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (a3 <= 0x1388)
  {
    v5 = 5000;
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10000000)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = v5;
  }

  if (*(a2 + 109))
  {
    v7 = dword_10016D258 + 939524096;
  }

  else
  {
    v7 = *(a2 + 80) + 1000 * *(a2 + 16);
  }

  v8 = *(result + 64);
  if (v7 - v8 > ((1431655766 * (4 * v6)) >> 32))
  {
    v9 = *(result + 128);
    if (!v9)
    {
      do
      {
        v10 = arc4random() & 0x3FFFFFFF;
      }

      while (v10 > 0x38000000);
      v9 = v10 + 1;
      *(v4 + 128) = v10 + 1;
      v8 = *(v4 + 64);
    }

    v11 = v9 % (v6 / 3 + 1) + v6;
    *(a2 + 80) = -3 * v11 + v8;
    *(a2 + 16) = (4 * v11 + 999) / 0x3E8;

    return SetNextCacheCheckTimeForRecord(v4, a2);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100162020 == -1)
  {
    if (qword_100162028)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100162028)
    {
      return _availability_version_check();
    }
  }

  if (qword_100162018 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10016200C > a3)
      {
        return 1;
      }

      if (dword_10016200C >= a3)
      {
        return dword_100162010 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_100162028;
  if (qword_100162028)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100162028 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_10016200C, &dword_100162010);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void *_mdns_audit_token_copy_description(uint64_t a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(*(a1 + 16) + 8), a1))
  {
    goto LABEL_5;
  }

  v6 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v6;
  v7 = audit_token_to_auid(&atoken);
  v8 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v8;
  v9 = audit_token_to_euid(&atoken);
  v10 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v10;
  v11 = audit_token_to_egid(&atoken);
  v12 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v12;
  v13 = audit_token_to_ruid(&atoken);
  v14 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v14;
  v15 = audit_token_to_rgid(&atoken);
  v16 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v16;
  v17 = audit_token_to_pid(&atoken);
  v18 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v18;
  v19 = audit_token_to_pidversion(&atoken);
  v20 = *(a1 + 40);
  *atoken.val = *(a1 + 24);
  *&atoken.val[4] = v20;
  v21 = audit_token_to_asid(&atoken);
  if (mdns_string_builder_append_formatted(v5, "audit user id: %u, effective user id: %u, effective group id: %u, real user id: %u, real group id: %u, pid: %d, pid version: %d, audit session id: %d", v7, v9, v11, v13, v15, v17, v19, v21))
  {
LABEL_5:
    v22 = 0;
  }

  else
  {
    v22 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v22;
}

uint64_t mdns_audit_token_create(_OWORD *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mdns_audit_token_kind;
    *(v2 + 16) = &_mdns_audit_token_kind;
    do
    {
      v5 = v4[2];
      if (v5)
      {
        v5(v3);
      }

      v4 = *v4;
    }

    while (v4);
    v6 = a1[1];
    *(v3 + 24) = *a1;
    *(v3 + 40) = v6;
  }

  return v3;
}

void _mdns_message_builder_finalize(uint64_t a1)
{
  _mdns_message_builder_forget_questions_and_records(a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

void _mdns_message_builder_forget_questions_and_records(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 76) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }
}

void *_mdns_message_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

void _mdns_message_builder_write_record(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[3];
  v9 = *(a2 + 24);
  if (a3)
  {
    mdns_domain_name_append_to_copier(v9, a1, a3, a4);
    v10 = a1[2];
    v11 = a1[3];
  }

  else
  {
    v12 = *(v9 + 32);
    v10 = a1[2];
    if (a1[1] - v10 >= v12)
    {
      v13 = *(v9 + 32);
    }

    else
    {
      v13 = a1[1] - v10;
    }

    if (v13)
    {
      memcpy((*a1 + v10), *(v9 + 24), v13);
      v14 = a1[3];
      v10 = a1[2] + v13;
      a1[2] = v10;
    }

    else
    {
      v14 = v8;
    }

    v15 = __CFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      v11 = -1;
    }

    else
    {
      v11 = v16;
    }

    a1[3] = v11;
  }

  v73 = 0;
  __src[0] = bswap32(*(a2 + 52)) >> 16;
  __src[1] = bswap32(*(a2 + 54)) >> 16;
  v72 = bswap32(*(a2 + 40));
  v17 = v11;
  v18 = a1[1] - v10;
  if (v18)
  {
    if (v18 >= 0xA)
    {
      v19 = 10;
    }

    else
    {
      v19 = a1[1] - v10;
    }

    memcpy((*a1 + v10), __src, v19);
    v17 = a1[3];
    a1[2] += v19;
  }

  if (v17 >= 0xFFFFFFFFFFFFFFF6)
  {
    v20 = -1;
  }

  else
  {
    v20 = v17 + 10;
  }

  a1[3] = v20;
  if (__CFADD__(a4, v20 - v8))
  {
    v21 = -1;
  }

  else
  {
    v21 = a4 + v20 - v8;
  }

  v22 = *(a2 + 32);
  v23 = *(a2 + 56);
  if (a3)
  {
    v24 = *(a2 + 52);
    switch(v24)
    {
      case 47:
        *(a2 + 56);
        if (&v22[v23] <= v22)
        {
LABEL_50:
          v38 = 0;
        }

        else
        {
          v36 = *(a2 + 32);
          while (1)
          {
            v37 = *v36;
            if (!*v36)
            {
              break;
            }

            if (v37 > 0x3F)
            {
              goto LABEL_50;
            }

            v38 = 0;
            v39 = v37 + 1;
            v40 = &v36[v37 + 1];
            if (&v22[v23] - v36 >= v39)
            {
              v36 = v40;
              if (v40 - v22 < 256)
              {
                continue;
              }
            }

            goto LABEL_53;
          }

          v38 = v36 - v22 + 1;
        }

LABEL_53:
        if (v23 > (v38 - 1))
        {
          v41 = mdns_domain_name_create_with_labels(*(a2 + 32), 0);
          if (v41)
          {
            v42 = v41;
            mdns_domain_name_append_to_copier(v41, a1, a3, v21);
            v43 = v23 - v38;
            v44 = a1[2];
            if (a1[1] - v44 >= v43)
            {
              v45 = v23 - v38;
            }

            else
            {
              v45 = a1[1] - v44;
            }

            if (v45)
            {
              memcpy((*a1 + v44), &v22[v38], v45);
              a1[2] += v45;
            }

            v46 = a1[3];
            v15 = __CFADD__(v46, v43);
            v47 = v46 + v43;
            if (v15)
            {
              v47 = -1;
            }

            a1[3] = v47;
            goto LABEL_69;
          }
        }

        break;
      case 33:
        if (v23 >= 7)
        {
          v30 = v22 + 6;
          if (&v22[v23] > v22 + 6)
          {
            v31 = v22 + 6;
            while (1)
            {
              v32 = *v31;
              if (!*v31)
              {
                v33 = (v31 - v30 + 1);
                goto LABEL_71;
              }

              if (v32 > 0x3F)
              {
                break;
              }

              v33 = 0;
              v34 = v32 + 1;
              v35 = &v31[v32 + 1];
              if (&v22[v23] - v31 >= v34)
              {
                v31 = v35;
                if (v35 - v30 < 256)
                {
                  continue;
                }
              }

              goto LABEL_71;
            }

            v33 = 0;
LABEL_71:
            if (v23 - 6 == v33)
            {
              v49 = mdns_domain_name_create_with_labels(v30, 0);
              if (v49)
              {
                v42 = v49;
                v15 = __CFADD__(v21, 6);
                v21 += 6;
                if (!v15)
                {
                  v66 = a1[2];
                  v67 = a1[1] - v66;
                  if (v67)
                  {
                    if (v67 >= 6)
                    {
                      v68 = 6;
                    }

                    else
                    {
                      v68 = a1[1] - v66;
                    }

                    memcpy((*a1 + v66), v22, v68);
                    a1[2] += v68;
                  }

                  v69 = a1[3];
                  v15 = __CFADD__(v69, 6);
                  v70 = v69 + 6;
                  if (v15)
                  {
                    v70 = -1;
                  }

                  a1[3] = v70;
                  goto LABEL_68;
                }

                os_release(v49);
              }
            }
          }
        }

        break;
      case 12:
        *(a2 + 56);
        if (&v22[v23] <= v22)
        {
LABEL_51:
          v27 = 0;
        }

        else
        {
          v25 = *(a2 + 32);
          while (1)
          {
            v26 = *v25;
            if (!*v25)
            {
              break;
            }

            if (v26 > 0x3F)
            {
              goto LABEL_51;
            }

            v27 = 0;
            v28 = v26 + 1;
            v29 = &v25[v26 + 1];
            if (&v22[v23] - v25 >= v28)
            {
              v25 = v29;
              if (v29 - v22 < 256)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v27 = v25 - v22 + 1;
        }

LABEL_65:
        if (v23 == v27)
        {
          v48 = mdns_domain_name_create_with_labels(*(a2 + 32), 0);
          if (v48)
          {
            v42 = v48;
LABEL_68:
            mdns_domain_name_append_to_copier(v42, a1, a3, v21);
LABEL_69:
            os_release(v42);
            goto LABEL_85;
          }
        }

        break;
    }
  }

  v50 = a1[2];
  if (a1[1] - v50 >= v23)
  {
    v51 = v23;
  }

  else
  {
    v51 = a1[1] - v50;
  }

  if (v51)
  {
    memcpy((*a1 + v50), v22, v51);
    a1[2] += v51;
  }

  v52 = a1[3];
  v15 = __CFADD__(v52, v23);
  v53 = v52 + v23;
  if (v15)
  {
    v53 = -1;
  }

  a1[3] = v53;
LABEL_85:
  v54 = a1[3];
  v73 = bswap32(v54 - v20) >> 16;
  if (v54 >= v11)
  {
    if (v54 - v11 >= 0xA)
    {
      v55 = 10;
    }

    else
    {
      v55 = v54 - v11;
    }

    v56 = v54 - v11;
    if (v54 != v11)
    {
      v57 = a1[1];
      v58 = v57 > v11;
      v59 = v57 - v11;
      if (v58)
      {
        if (v55 >= v59)
        {
          v60 = v59;
        }

        else
        {
          v60 = v55;
        }

        memcpy((*a1 + v11), __src, v60);
      }
    }

    if (v56 <= 9)
    {
      v61 = 10 - v55;
      v62 = a1[2];
      if (a1[1] - v62 >= 10 - v55)
      {
        v63 = 10 - v55;
      }

      else
      {
        v63 = a1[1] - v62;
      }

      if (v63)
      {
        memcpy((*a1 + v62), __src + v55, v63);
        a1[2] += v63;
      }

      v64 = a1[3];
      v15 = __CFADD__(v64, v61);
      v65 = v64 + v61;
      if (v15)
      {
        v65 = -1;
      }

      a1[3] = v65;
    }
  }
}

uint64_t mdns_message_builder_write_message(uint64_t a1, void *a2, size_t a3)
{
  v37 = 0;
  __src[0] = bswap32(*(a1 + 72)) >> 16;
  __src[1] = bswap32(*(a1 + 74)) >> 16;
  if (*(a1 + 24))
  {
    BYTE1(v37) = 1;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
    v7 = Count >> 8;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  BYTE2(v37) = v7;
  BYTE3(v37) = Count;
  v8 = *(a1 + 48);
  if (v8)
  {
    v8 = CFArrayGetCount(v8);
    v9 = v8 >> 8;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  BYTE4(v37) = v9;
  BYTE5(v37) = v8;
  v10 = *(a1 + 56);
  if (v10)
  {
    v10 = CFArrayGetCount(v10);
    v11 = v10 >> 8;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  BYTE6(v37) = v11;
  HIBYTE(v37) = v10;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3800000000;
  v33 = a3;
  v34 = 0;
  v32 = a2;
  if (a3)
  {
    if (a3 >= 0xC)
    {
      a3 = 12;
    }

    memcpy(a2, __src, a3);
    v34 = a3;
  }

  v35 = 12;
  CFDictionaryRemoveAllValues(*(*(a1 + 32) + 24));
  v12 = *(a1 + 24);
  if (v12)
  {
    mdns_domain_name_append_to_copier(v12, v30 + 3, *(a1 + 32), v30[6]);
    v13 = *(a1 + 76);
    v14 = *(a1 + 78);
    v28[0] = HIBYTE(v13);
    v28[1] = v13;
    v28[2] = HIBYTE(v14);
    v28[3] = v14;
    v15 = v30;
    v16 = v30[5];
    v17 = v30[4] - v16;
    if (v17)
    {
      if (v17 >= 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = v30[4] - v16;
      }

      memcpy((v30[3] + v16), v28, v18);
      v15[5] += v18;
    }

    v19 = v15[6];
    v20 = __CFADD__(v19, 4);
    v21 = v19 + 4;
    if (v20)
    {
      v21 = -1;
    }

    v15[6] = v21;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v27[2] = __mdns_message_builder_write_message_block_invoke;
  v27[3] = &unk_10014DC68;
  v27[4] = &v29;
  v27[5] = a1;
  v22 = *(a1 + 40);
  if (v22)
  {
    mdns_cfarray_enumerate(v22, v27);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    mdns_cfarray_enumerate(v23, v27);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    mdns_cfarray_enumerate(v24, v27);
  }

  CFDictionaryRemoveAllValues(*(*(a1 + 32) + 24));
  v25 = v30[6];
  _Block_object_dispose(&v29, 8);
  return v25;
}

void _dnssec_obj_context_finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    ref_count_obj_release(v3);
    *(a1 + 64) = 0;
  }
}

void _mdns_domain_name_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    free(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _mdns_domain_name_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 61) == 1 && *(a2 + 61) == 1)
  {
    return memcmp(*(a1 + 24), *(a2 + 24), v2) == 0;
  }

  return DomainNameEqual(*(a1 + 24), *(a2 + 24));
}

void *_mdns_domain_name_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    goto LABEL_9;
  }

  memset(v11, 0, sizeof(v11));
  v8 = a1[5];
  if (a3)
  {
    if (DNSMessagePrintObfuscatedString(v11, v8) < 0)
    {
      v8 = "«REDACTED»";
    }

    else
    {
      v8 = v11;
    }
  }

  if (mdns_string_builder_append_formatted(v7, "%s", v8))
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void _mdns_domain_name_offset_map_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_domain_name_offset_map_copy_description(uint64_t a1, int a2, char a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v18 + 6) = appended;
      if (appended)
      {
        goto LABEL_4;
      }
    }

    v10 = mdns_string_builder_append_formatted(v7, "{");
    *(v18 + 6) = v10;
    if (v10)
    {
      goto LABEL_4;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___mdns_domain_name_offset_map_copy_description_block_invoke;
    v13[3] = &unk_10014DDA8;
    v14 = a3;
    v13[4] = v15;
    v13[5] = &v17;
    v13[6] = v7;
    context = v13;
    v22 = 1;
    memset(v23, 0, sizeof(v23));
    CFDictionaryApplyFunction(*(a1 + 24), _mdns_domain_name_offset_map_applier_function, &context);
    if (*(v18 + 6) || (v11 = mdns_string_builder_append_formatted(v7, "\n}"), (*(v18 + 6) = v11) != 0))
    {
LABEL_4:
      v9 = 0;
    }

    else
    {
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

BOOL ___mdns_domain_name_offset_map_copy_description_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = ",";
  }

  else
  {
    v5 = "";
  }

  v6 = (a2 + 16);
  if (*(a1 + 56))
  {
    v7 = "«REDACTED»";
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[3];
      if (v8)
      {
        v9 = a2;
        v10 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = "«NAME»";
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[3];
      if (v8)
      {
        v9 = a2;
        v10 = 0;
LABEL_13:
        v11 = v8(v9, 0, v10);
        v12 = v11;
        if (v11)
        {
          v13 = 0;
          v7 = v11;
          goto LABEL_19;
        }

        v7 = "«NAME»";
        if (*(a1 + 56))
        {
          v7 = "«REDACTED»";
        }

        goto LABEL_18;
      }
    }
  }

  v12 = 0;
LABEL_18:
  v13 = 1;
LABEL_19:
  *(*(*(a1 + 40) + 8) + 24) = mdns_string_builder_append_formatted(*(a1 + 48), "%s\n\t%s: %u", v5, v7, a3);
  if ((v13 & 1) == 0)
  {
    free(v12);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return *(*(*(a1 + 40) + 8) + 24) == 0;
}

uint64_t _mdns_domain_name_offset_map_applier_function(int a1, CFNumberRef number, _BYTE *a3)
{
  if (a3[8] == 1)
  {
    v8 = v3;
    v9 = v4;
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    result = (*(*a3 + 16))();
    a3[8] = result;
  }

  return result;
}

uint64_t _mdns_domain_name_cf_callback_hash(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 52));
  if ((*(a1 + 60) & 1) == 0)
  {
    v2 = -2128831035;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 24);
      do
      {
        v6 = *v4++;
        v5 = v6;
        v7 = v6 + 32;
        if ((v6 - 65) < 0x1A)
        {
          v5 = v7;
        }

        v2 = 16777619 * (v5 ^ v2);
        --v3;
      }

      while (v3);
    }

    *(a1 + 56) = v2;
    *(a1 + 60) = 1;
  }

  os_unfair_lock_unlock((a1 + 52));
  return *(a1 + 56);
}

void *mdns_domain_name_create(char *a1, _DWORD *a2)
{
  memset(v5, 0, sizeof(v5));
  v4 = DomainNameFromString(v5, a1);
  if (v4)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = mdns_domain_name_create_with_labels(v5, &v4);
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v4;
  return result;
}

void *mdns_domain_name_create_with_labels(_BYTE *a1, int *a2)
{
  v8 = 0;
  if (!*a1)
  {
    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v4 = _mdns_domain_name_get_root_s_root;
    if (_mdns_domain_name_get_root_s_root)
    {
      goto LABEL_7;
    }
  }

  v4 = _mdns_domain_name_create(a1, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = 0;
  }

  else
  {
LABEL_7:
    v5 = 0;
    v6 = v4;
    v8 = 0;
    v4 = 0;
  }

  if (a2)
  {
    *a2 = v5;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v6;
}

void *_mdns_domain_name_create(_BYTE *a1, int *a2)
{
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_domain_name_kind;
    v4[2] = &_mdns_domain_name_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    DomainNameDupEx(a1, v5 + 3, v5 + 4);
    bzero(__s1, 0x3F1uLL);
    v8 = DomainNameToString(v5[3], 0, __s1, 0);
    if (v8)
    {
      v19 = v8;
      v4 = v5;
      v5 = 0;
    }

    else
    {
      v9 = strdup(__s1);
      if (!v9)
      {
        __break(1u);
      }

      v5[5] = v9;
      *(v5 + 13) = 0;
      v10 = v5[3];
      v11 = *v10;
      if (*v10)
      {
        v12 = 0;
        v13 = v5[3];
        while (v11 <= 0x3F)
        {
          v13 += v11 + 1;
          if (v13 - v10 > 255)
          {
            break;
          }

          ++v12;
          v11 = *v13;
          if (!*v13)
          {
            goto LABEL_15;
          }
        }

        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

LABEL_15:
      *(v5 + 12) = v12;
      v14 = v5[4];
      if (v14)
      {
        if (*v10 - 65 >= 0x1A)
        {
          v16 = 0;
          v17 = v10 + 1;
          while (v14 - 1 != v16)
          {
            v18 = v17[v16++] - 65;
            if (v18 <= 0x19)
            {
              goto LABEL_24;
            }
          }

          v16 = v5[4];
LABEL_24:
          v15 = v16 >= v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }

      v4 = 0;
      v19 = 0;
      *(v5 + 61) = v15;
    }
  }

  else
  {
    v19 = -6728;
  }

  if (a2)
  {
    *a2 = v19;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

void ___mdns_domain_name_get_root_block_invoke(id a1)
{
  v2 = 0;
  v1 = _mdns_domain_name_create(&v2, 0);
  *(v1 + 2) = 0x7FFFFFFF;
  *(v1 + 3) = 0x7FFFFFFF;
  _mdns_domain_name_get_root_s_root = v1;
}

void mdns_domain_name_append_to_copier(void *object, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = object[3];
  v6 = *v5;
  if (!*v5)
  {
    v33 = a2[2];
    if (a2[1] != v33)
    {
      *(*a2 + v33) = v6;
      ++a2[2];
    }

    v34 = a2[3];
    v20 = __CFADD__(v34, 1);
    v35 = v34 + 1;
    if (v20)
    {
      v35 = -1;
    }

    a2[3] = v35;
    return;
  }

  v9 = 0;
  if (a4 >= 0xFFFF)
  {
    v10 = 0xFFFF;
  }

  else
  {
    v10 = a4;
  }

  v11 = object[3];
  do
  {
    if (v9)
    {
      os_release(v9);
    }

    if (v11 == v5)
    {
      os_retain(object);
      v9 = object;
    }

    else
    {
      v42 = 0;
      v9 = mdns_domain_name_create_with_labels(v11, &v42);
      if (!v9)
      {
        if (_mdns_domain_name_log_s_once != -1)
        {
          dispatch_once(&_mdns_domain_name_log_s_once, &__block_literal_global);
        }

        v12 = _mdns_domain_name_log_s_log;
        if (os_log_type_enabled(_mdns_domain_name_log_s_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v44 = v42;
          _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to create domain name object: %{mdns:err}ld", buf, 0xCu);
        }
      }
    }

    if (v9)
    {
      Value = CFDictionaryGetValue(*(a3 + 24), v9);
      if (Value)
      {
        *buf = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
        v14 = buf[0];
        if ((*buf & 0xC000) == 0)
        {
          buf[0] = buf[1] | 0xC0;
          buf[1] = v14;
          v36 = a2[1];
          v37 = a2[2];
          if (v36 != v37)
          {
            if (v36 - v37 >= 2)
            {
              v38 = 2;
            }

            else
            {
              v38 = v36 - v37;
            }

            memcpy((*a2 + v37), buf, v38);
            v36 = a2[2] + v38;
            a2[2] = v36;
          }

          v39 = a2[3];
          v20 = __CFADD__(v39, 2);
          v40 = v39 + 2;
          if (v20)
          {
            v40 = -1;
          }

          a2[3] = v40;
          if (!*v11)
          {
            if (a2[1] != v36)
            {
              *(*a2 + v36) = 0;
              v40 = a2[3];
              ++a2[2];
            }

            v41 = v40 + 1;
            if (v40 == -1)
            {
              v41 = -1;
            }

            a2[3] = v41;
          }

          goto LABEL_72;
        }
      }

      v15 = v6 + 1;
      v16 = a2[2];
      v17 = a2[1] - v16;
      if (v17)
      {
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = a2[1] - v16;
        }

        memcpy((*a2 + v16), v11, v18);
        a2[2] += v18;
      }

      v19 = a2[3];
      v20 = __CFADD__(v19, v15);
      v21 = v19 + v15;
      if (v20)
      {
        v21 = -1;
      }

      a2[3] = v21;
      if (!(v10 >> 14))
      {
        *buf = v10;
        v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(*(a3 + 24), v9, v22);
          CFRelease(v23);
        }

        else
        {
          if (_mdns_domain_name_log_s_once != -1)
          {
            dispatch_once(&_mdns_domain_name_log_s_once, &__block_literal_global);
          }

          v29 = _mdns_domain_name_log_s_log;
          if (os_log_type_enabled(_mdns_domain_name_log_s_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v44 = -6729;
            _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to insert domain name offset map pair: %{mdns:err}ld", buf, 0xCu);
          }
        }

LABEL_38:
        v10 += v15;
      }
    }

    else
    {
      v15 = v6 + 1;
      v24 = a2[2];
      v25 = a2[1] - v24;
      if (v25)
      {
        if (v25 >= v15)
        {
          v26 = v15;
        }

        else
        {
          v26 = a2[1] - v24;
        }

        memcpy((*a2 + v24), v11, v26);
        a2[2] += v26;
      }

      v27 = a2[3];
      v20 = __CFADD__(v27, v15);
      v28 = v27 + v15;
      if (v20)
      {
        v28 = -1;
      }

      a2[3] = v28;
      if (!(v10 >> 14))
      {
        goto LABEL_38;
      }
    }

    v11 += v15;
    v6 = *v11;
  }

  while (*v11);
  v30 = a2[2];
  if (a2[1] != v30)
  {
    *(*a2 + v30) = v6;
    ++a2[2];
  }

  v31 = a2[3];
  v20 = __CFADD__(v31, 1);
  v32 = v31 + 1;
  if (v20)
  {
    v32 = -1;
  }

  a2[3] = v32;
  if (v9)
  {
LABEL_72:
    os_release(v9);
  }
}

void mdns_system_remove_network_policy(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    [a1 removeAllPolicies];
    [a1 apply];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t mdns_system_is_signed_result_uuid_valid(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (_os_feature_enabled_impl())
  {
    if (objc_opt_class())
    {
      v3 = [[NSUUID alloc] initWithUUIDBytes:a1];
      v9 = 0;
      v4 = [DASession networkingAllowedWithUUID:v3 error:&v9];
      v5 = v9;

      if (mdns_system_log_s_once != -1)
      {
        dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
      }

      v6 = mdns_system_log_s_log;
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v11 = v4;
          v12 = 2112;
          v13 = v5;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed networkingAllowedWithUUID: -- allowed: %{BOOL}d, error: %@", buf, 0x12u);
        }

        v4 = 0;
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v11 = v4;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "networkingAllowedWithUUID: -- allowed: %{BOOL}d", buf, 8u);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t internal_start_advertising_service(uint64_t a1, int a2, unsigned int a3)
{
  memset(v37, 0, sizeof(v37));
  DomainnameToLower(*(a1 + 32), v37);
  v6 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v15 = *(a1 + 32);
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_18:
          v14 = 257;
          goto LABEL_23;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (&v15[-v11] >= 256)
        {
          goto LABEL_18;
        }
      }

      v14 = (v15 - v11 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v6 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(a1 + 32);
      while (1)
      {
        if (!v12 || (v13 = *v12, v13 > 0x3F))
        {
LABEL_10:
          v14 = 257;
          goto LABEL_23;
        }

        if (!*v12)
        {
          break;
        }

        v12 += v13 + 1;
        if (&v12[-v11] >= 256)
        {
          goto LABEL_10;
        }
      }

      v14 = (v12 - v11 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_23:
  v17 = *(a1 + 4);
  v29 = 141558787;
  v30 = 1752392040;
  v31 = 1040;
  v32 = v14;
  v33 = 2101;
  v34 = v11;
  v35 = 1024;
  v36 = v17;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "internal_start_advertising_service - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d", &v29, 0x22u);
LABEL_24:
  v18 = *(a1 + 4);
  v19 = putDomainNameAsLabels(&compression_base_msg, &unk_10015DD07, &compression_base_msg + &loc_1000022F8, v37, v7, v8, v9, v10);
  if (v19)
  {
    *v19 = HIBYTE(v18);
    v19[1] = v18;
    v19[2] = 1;
    v24 = v19 + 3;
  }

  else
  {
    v24 = 0;
  }

  v29 = 0;
  v25 = putRData(&compression_base_msg, v24, &compression_base_msg + &loc_1000022F8, a1, v20, v21, v22, v23);
  PrintHelper("internal_start_advertising_service", &unk_10015DD07, (v24 - &unk_10015DD07), v24, (v25 - v24));
  result = xD2DMapToTransportType(*(a1 + 24), a2, &v29);
  if (result == 4)
  {
    v27 = 0;
    v28 = v29;
    do
    {
      if (&_D2DStartAdvertisingPairOnTransport && v28 != v27)
      {
        if (v27 >= 2)
        {
          _mdns_powerlog_awdl_event(@"startAWDLAdvertise", v37, *(a1 + 4), a3);
        }

        result = D2DStartAdvertisingPairOnTransport();
      }

      ++v27;
    }

    while (v27 != 4);
  }

  else if (&_D2DStartAdvertisingPairOnTransport)
  {
    if ((result & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"startAWDLAdvertise", v37, *(a1 + 4), a3);
    }

    return D2DStartAdvertisingPairOnTransport();
  }

  return result;
}

_BYTE *DomainnameToLower(_BYTE *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    do
    {
      *(a2 + v3 - result) = v2;
      v4 = &(v3++)[a2 - result + 1];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = v6 + 32;
        if ((v6 - 65) < 0x1A)
        {
          v5 = v7;
        }

        *v4++ = v5;
        --v2;
      }

      while (v2);
      v2 = *v3;
    }

    while (*v3);
  }

  else
  {
    v3 = result;
  }

  *(a2 + v3 - result) = 0;
  return result;
}

void PrintHelper(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (mDNS_LoggingEnabled != 1)
  {
    return;
  }

  v10 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
  {
LABEL_10:
    v14 = 136447235;
    v15 = a1;
    v16 = 1024;
    v17 = a3;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 1040;
    v21 = a3;
    v22 = 2101;
    v23 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: LHS: (%d bytes) %{sensitive, mask.hash, mdnsresponder:hex_sequence}.*P", &v14, 0x2Cu);
  }

LABEL_11:
  if (!a4)
  {
    return;
  }

  v13 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  else
  {
    v13 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  v14 = 136447235;
  v15 = a1;
  v16 = 1024;
  v17 = a5;
  v18 = 2160;
  v19 = 1752392040;
  v20 = 1040;
  v21 = a5;
  v22 = 2101;
  v23 = a4;
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: RHS: (%d bytes) %{sensitive, mask.hash, mdnsresponder:hex_sequence}.*P", &v14, 0x2Cu);
}

uint64_t xD2DMapToTransportType(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 1;
  if ((~a2 & 0x120000) == 0)
  {
    v3 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        return 4;
      }

      LOWORD(v19) = 0;
    }

    else
    {
      v3 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return 4;
      }

      LOWORD(v19) = 0;
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: call all active plugins since both kDNSServiceFlagsIncludeP2P and kDNSServiceFlagsIncludeAWDL are set", &v19, 2u);
    return 4;
  }

  if ((a2 & 0x20000) != 0)
  {
    v8 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport since only kDNSServiceFlagsIncludeP2P is set";
    }

    else
    {
      v8 = mDNSLogCategory_D2D_redacted;
      result = os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport since only kDNSServiceFlagsIncludeP2P is set";
    }

LABEL_37:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v19, 2u);
    return 0;
  }

  if ((a2 & 0x100000) != 0)
  {
    v12 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:
        *a3 = 0;
        return 4;
      }

      LOWORD(v19) = 0;
    }

    else
    {
      v12 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LOWORD(v19) = 0;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: call AWDL and NAN plugins since kDNSServiceFlagsIncludeAWDL is set", &v19, 2u);
    goto LABEL_41;
  }

  if (a1 != -3)
  {
    if (AWDLInterfaceID && AWDLInterfaceID == a1)
    {
      v6 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
          goto LABEL_66;
        }
      }

      else
      {
        v6 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
LABEL_66:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: returning D2DAWDLTransport for interface index %p", &v19, 0xCu);
        }
      }

      return 2;
    }

    v16 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (WiFiAwareInterfaceID && WiFiAwareInterfaceID == a1)
    {
      if (v18)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
LABEL_74:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: returning D2DWiFiAwareTransport for interface index %p", &v19, 0xCu);
        }
      }

      else
      {
        v16 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
          goto LABEL_74;
        }
      }

      return 3;
    }

    if (v18)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = a1;
LABEL_70:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: no matching plugins for interface index %p", &v19, 0xCu);
      }
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = a1;
        goto LABEL_70;
      }
    }

    return 1;
  }

  v8 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    result = os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport for interface index mDNSInterface_P2P";
      goto LABEL_37;
    }
  }

  else
  {
    v8 = mDNSLogCategory_D2D_redacted;
    result = os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport for interface index mDNSInterface_P2P";
      goto LABEL_37;
    }
  }

  return result;
}

void internal_stop_advertising_service(uint64_t a1, int a2, unsigned int a3)
{
  memset(v27, 0, sizeof(v27));
  DomainnameToLower(*(a1 + 32), v27);
  v6 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  GetRRDisplayString_rdb(a1, (*(a1 + 40) + 4), word_1001789D0);
  v23 = 141558275;
  v24 = 1752392040;
  v25 = 2085;
  v26 = word_1001789D0;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "internal_stop_advertising_service: %{sensitive, mask.hash}s", &v23, 0x16u);
LABEL_7:
  v11 = *(a1 + 4);
  v12 = putDomainNameAsLabels(&compression_base_msg, &unk_10015DD07, &compression_base_msg + &loc_1000022F8, v27, v7, v8, v9, v10);
  if (v12)
  {
    *v12 = HIBYTE(v11);
    v12[1] = v11;
    v12[2] = 1;
    v17 = v12 + 3;
  }

  else
  {
    v17 = 0;
  }

  v23 = 0;
  v18 = putRData(&compression_base_msg, v17, &compression_base_msg + &loc_1000022F8, a1, v13, v14, v15, v16);
  PrintHelper("internal_stop_advertising_service", &unk_10015DD07, (v17 - &unk_10015DD07), v17, (v18 - v17));
  v19 = xD2DMapToTransportType(*(a1 + 24), a2, &v23);
  if (v19 == 4)
  {
    v20 = 0;
    v21 = v23;
    do
    {
      if (&_D2DStopAdvertisingPairOnTransport && v21 != v20)
      {
        D2DStopAdvertisingPairOnTransport();
        if (v20 >= 2)
        {
          _mdns_powerlog_awdl_event(@"stopAWDLAdvertise", v27, *(a1 + 4), a3);
        }
      }

      ++v20;
    }

    while (v20 != 4);
  }

  else if (&_D2DStopAdvertisingPairOnTransport)
  {
    v22 = v19;
    D2DStopAdvertisingPairOnTransport();
    if ((v22 & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"stopAWDLAdvertise", v27, *(a1 + 4), a3);
    }
  }
}

void D2D_stop_advertising_record(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 172);
  if ((v9 & 0xFFFFFFFD) == 1)
  {
    v10 = 0x20000;
  }

  else
  {
    v10 = (v9 == 2) << 20;
  }

  if (callExternalHelpers(*(a1 + 32), *(a1 + 40), v10, a4, a5, a6, a7, a8))
  {

    internal_stop_advertising_service(a1 + 8, v10, 0);
  }
}

uint64_t D2D_start_advertising_record(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 172);
  if ((v9 & 0xFFFFFFFD) == 1)
  {
    v10 = 0x20000;
  }

  else
  {
    v10 = (v9 == 2) << 20;
  }

  result = callExternalHelpers(*(a1 + 32), *(a1 + 40), v10, a4, a5, a6, a7, a8);
  if (result)
  {

    return internal_start_advertising_service(a1 + 8, v10, 0);
  }

  return result;
}

void external_connection_release(_BYTE *a1)
{
  for (i = D2DRecords; i; i = *i)
  {
    if (*(i + 36) != 12 || !SameDomainNameBytes((i + 936), a1))
    {
      continue;
    }

    v3 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }

    v6 = *(i + 8);
    v7 = *(i + 16);
    *buf = 134218240;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "external_connection_release: Calling D2DRelease - instanceHandle: %p, transportType: %u", buf, 0x12u);
LABEL_13:
    if (&_D2DRelease)
    {
      v8 = *(i + 8);
      v9 = *(i + 16);
      D2DRelease();
    }
  }
}

uint64_t xD2DParseCompressedPacket(_BYTE *a1, unsigned int a2, const void *a3, unsigned int a4, int a5, void *a6)
{
  v12 = 4294901745;
  v13 = &a1[a2];
  v14 = skipDomainName(a1, a1, v13);
  if (v14)
  {
    v15 = v14 + 3 == v13;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 0;
      v18 = "xD2DParseCompressedPacket: Could not parse DNS name in key";
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 0;
      v18 = "xD2DParseCompressedPacket: Could not parse DNS name in key";
    }

    v31 = v16;
    v32 = 2;
LABEL_37:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v18, buf, v32);
    return v12;
  }

  v19 = v14[2];
  if (v19 != 1)
  {
    v33 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 67109120;
      *&buf[4] = v19;
      v18 = "xD2DParseCompressedPacket: Invalid D2D packet version - version: %d";
    }

    else
    {
      v33 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 67109120;
      *&buf[4] = v19;
      v18 = "xD2DParseCompressedPacket: Invalid D2D packet version - version: %d";
    }

    v31 = v33;
    v32 = 8;
    goto LABEL_37;
  }

  v20 = &compression_base_msg + a2 + 39;
  if (&v20[a4 - 7] >= &compression_base_msg + &loc_1000022F8)
  {
    return 4294901757;
  }

  v21 = *v14;
  memcpy(byte_10015DD07, a1, a2);
  if (*(&compression_base_msg + a2 + 38) == 1)
  {
    v22 = __rev16(v21);
    *(&compression_base_msg + a2 + 38) = 384;
    *(&compression_base_msg + a2 + 42) = BYTE1(a5);
    *(&compression_base_msg + a2 + 43) = a5;
    *(&compression_base_msg + a2 + 44) = BYTE1(a4);
    *(&compression_base_msg + a2 + 45) = a4;
    memcpy(&compression_base_msg + a2 + 46, a3, a4);
    *a6 = &compression_base_msg + a2 + a4 + 46;
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
    *buf = 0u;
    v55 = 0u;
    if (!getDomainName(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, buf))
    {
      buf[0] = 0;
    }

    if (v22 != 12)
    {
      goto LABEL_42;
    }

    v23 = buf[0];
    if (!buf[0])
    {
      goto LABEL_42;
    }

    v24 = 0;
    v25 = 0;
    v26 = buf;
    while (1)
    {
      v27 = v25;
      v25 = v24;
      v24 = v26;
      if (v25 | v27)
      {
        if (v25 && v27)
        {
          v34 = SameDomainLabelPointer(v25, "\x04_sub");
          if (v34 && LabelPairIsForService(v24))
          {
LABEL_41:
            *(v20 - 1) = 256;
          }

LABEL_42:
          if (mDNS_LoggingEnabled == 1)
          {
            v35 = mDNSLogCategory_D2D;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
              {
                v39 = buf;
                while (1)
                {
                  if (!v39 || (v40 = *v39, v40 > 0x3F))
                  {
LABEL_58:
                    v38 = 257;
                    goto LABEL_61;
                  }

                  if (!*v39)
                  {
                    break;
                  }

                  v39 += v40 + 1;
                  if (v39 - buf >= 256)
                  {
                    goto LABEL_58;
                  }
                }

                v38 = (v39 - buf + 1);
LABEL_61:
                v42 = 141559299;
                v43 = 1752392040;
                v44 = 1040;
                v45 = v38;
                v46 = 2101;
                v47 = buf;
                v48 = 1024;
                v49 = v22;
                v50 = 1024;
                v51 = a5;
                v52 = 1024;
                v53 = a4;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "xD2DParseCompressedPacket: Our Bytes - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, TTL: %u, rdata length: %u", &v42, 0x2Eu);
              }
            }

            else
            {
              v35 = mDNSLogCategory_D2D_redacted;
              if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
              {
                v36 = buf;
                while (1)
                {
                  if (!v36 || (v37 = *v36, v37 > 0x3F))
                  {
LABEL_51:
                    v38 = 257;
                    goto LABEL_61;
                  }

                  if (!*v36)
                  {
                    break;
                  }

                  v36 += v37 + 1;
                  if (v36 - buf >= 256)
                  {
                    goto LABEL_51;
                  }
                }

                v38 = (v36 - buf + 1);
                goto LABEL_61;
              }
            }
          }

          return 0;
        }
      }

      else if (LabelPairIsForService(v26))
      {
        goto LABEL_41;
      }

      v28 = &v24[v23];
      v29 = v28[1];
      v26 = v28 + 1;
      v23 = v29;
      if (!v29)
      {
        goto LABEL_42;
      }
    }
  }

  return v12;
}

void xD2DReceiveResponse(uint64_t a1, int a2)
{
  mDNS_Lock_(mDNSStorage, "xD2DReceiveResponse", 487);
  v4 = &AWDLInterfaceID;
  if (a2 != 2)
  {
    v4 = &WiFiAwareInterfaceID;
  }

  mDNSCoreReceiveResponse(mDNSStorage, &compression_base_msg, a1, 0, 59668, &AllDNSLinkGroup_v6, 59668, 0, 0, *v4, 0);

  mDNS_Unlock_(mDNSStorage, "xD2DReceiveResponse", 490);
}

char *xD2DParse(_BYTE *a1, unsigned int a2, const void *a3, unsigned int a4, char **a5)
{
  v33 = 0;
  v6 = xD2DParseCompressedPacket(a1, a2, a3, a4, 120, &v33);
  if (v6)
  {
    return v6;
  }

  LargeResourceRecord = GetLargeResourceRecord(mDNSStorage, &compression_base_msg, byte_10015DD07, v33, 0, 192, mDNSStorage + &loc_100009418);
  v8 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (!LargeResourceRecord || *(mDNSStorage + &loc_100009420) == 240)
  {
    if (v10)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = v8;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "xD2DParse: failed to get large RR", buf, 2u);
      }
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = v16;
        goto LABEL_24;
      }
    }

    v6 = 4294901759;
LABEL_53:
    WORD4(xmmword_100176630) = 0;
    HIWORD(xmmword_100176690) = 0;
    if (xmmword_100176670)
    {
      ref_count_obj_release(xmmword_100176670);
      *&xmmword_100176670 = 0;
    }

    return v6;
  }

  if (v10)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v11 = qword_100176658;
    if (qword_100176658)
    {
      v12 = qword_100176658;
      while (1)
      {
        if (!v12 || (v13 = *v12, v13 > 0x3F))
        {
LABEL_18:
          v14 = 257;
          goto LABEL_38;
        }

        if (!*v12)
        {
          break;
        }

        v12 += v13 + 1;
        if (&v12[-qword_100176658] >= 256)
        {
          goto LABEL_18;
        }
      }

      v14 = (v12 - qword_100176658 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v8 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v11 = qword_100176658;
    if (qword_100176658)
    {
      v17 = qword_100176658;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_33:
          v14 = 257;
          goto LABEL_38;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (&v17[-qword_100176658] >= 256)
        {
          goto LABEL_33;
        }
      }

      v14 = (v17 - qword_100176658 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_38:
  v19 = WORD6(xmmword_100176630);
  GetRRDisplayString_rdb(&xmmword_100176630 + 8, (qword_100176660 + 4), &xmmword_100176630 + &loc_100002398 + 8);
  *buf = 141559299;
  v35 = 1752392040;
  v36 = 1040;
  v37 = v14;
  v38 = 2101;
  v39 = v11;
  v40 = 1024;
  v41 = v19;
  v42 = 2160;
  v43 = 1752392040;
  v44 = 2085;
  v45 = &xmmword_100176630 + &loc_100002398 + 8;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "xD2DParse got record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash}s", buf, 0x36u);
LABEL_39:
  if (WORD2(xmmword_100176640) >= 0x109u)
  {
    v20 = WORD2(xmmword_100176640) + 936;
  }

  else
  {
    v20 = 1200;
  }

  result = malloc_type_calloc(1uLL, v20, 0xAD07AB66uLL);
  if (result)
  {
    v22 = result;
    *a5 = result;
    mDNS_SetupResourceRecord((result + 24), 0, -3, SWORD6(xmmword_100176630), 0x1C20u, 8, 5, FreeD2DARElemCallback, 0);
    v23 = &xmmword_100176630 + &loc_100002090 + 12;
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
        v25 = v23 - mDNSStorage + 19277;
        if (v25 <= 0x100u)
        {
          memcpy(v22 + 676, &byte_1001786CC, v25);
          goto LABEL_52;
        }

        break;
      }

      v23 += v24 + 1;
    }

    while (v23 - mDNSStorage - 46260 <= 255);
    v22[676] = 0;
LABEL_52:
    v26 = WORD2(xmmword_100176640);
    *(v22 + 22) = WORD2(xmmword_100176640);
    v27 = *(v22 + 9);
    *v27 = v26;
    memcpy(v27 + 2, (qword_100176660 + 4), v26);
    *(v22 + 12) = DomainNameHashValue(*(v22 + 8));
    SetNewRData((v22 + 32), 0, 0, v28, v29, v30, v31, v32);
    v6 = 0;
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

void FreeD2DARElemCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v5 = &D2DRecords;
    do
    {
      v6 = v5;
      v5 = *v5;
      if (v5)
      {
        v7 = v5 + 3 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    v8 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    if (v5)
    {
      if (v10)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v8 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:
          v11 = (a1 + 47032);
          GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v11);
          v14 = 141558275;
          v15 = 1752392040;
          v16 = 2085;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeD2DARElemCallback: Found in D2DRecords: %{sensitive, mask.hash}s", &v14, 0x16u);
        }
      }

      v12 = *v6;
      *v6 = **v6;
      free(v12);
      return;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v8 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    v13 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v13);
    v14 = 141558275;
    v15 = 1752392040;
    v16 = 2085;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeD2DARElemCallback: Could not find in D2DRecords: %{sensitive, mask.hash}s", &v14, 0x16u);
  }
}

BOOL LabelPairIsForService(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  if (a1[1] != 95)
  {
    return 0;
  }

  if (SameDomainLabelPointer(&v2[v1], "\x04_tcp"))
  {
    return 1;
  }

  return SameDomainLabelPointer(&v2[v1], "\x04_udp") != 0;
}

void external_start_browsing_for_service(uint64_t a1, unsigned __int8 *a2, int a3, int a4, unsigned int a5)
{
  memset(__src, 0, sizeof(__src));
  DomainnameToLower(a2, __src);
  v10 = D2DFindInBrowseList(__src, a3);
  if (*v10 && *(*v10 + 268))
  {
    goto LABEL_38;
  }

  v43 = 0;
  v11 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v19 = __src;
    while (1)
    {
      if (!v19 || (v20 = *v19, v20 > 0x3F))
      {
LABEL_18:
        v18 = 257;
        goto LABEL_21;
      }

      if (!*v19)
      {
        break;
      }

      v19 += v20 + 1;
      if (v19 - __src >= 256)
      {
        goto LABEL_18;
      }
    }

    v18 = (v19 - __src + 1);
  }

  else
  {
    v11 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v16 = __src;
    while (1)
    {
      if (!v16 || (v17 = *v16, v17 > 0x3F))
      {
LABEL_11:
        v18 = 257;
        goto LABEL_21;
      }

      if (!*v16)
      {
        break;
      }

      v16 += v17 + 1;
      if (v16 - __src >= 256)
      {
        goto LABEL_11;
      }
    }

    v18 = (v16 - __src + 1);
  }

LABEL_21:
  *buf = 141558787;
  v46 = 1752392040;
  v47 = 1040;
  v48 = v18;
  v49 = 2101;
  v50 = __src;
  v51 = 1024;
  v52 = a3;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "internal_start_browsing_for_service: starting browse - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x22u);
LABEL_22:
  v21 = putDomainNameAsLabels(&compression_base_msg, &unk_10015DD07, &compression_base_msg + &loc_1000022F8, __src, v12, v13, v14, v15);
  if (v21)
  {
    *v21 = BYTE1(a3);
    v21[1] = a3;
    v21[2] = 1;
    v22 = v21 + 3;
  }

  else
  {
    v22 = 0;
  }

  PrintHelper("internal_start_browsing_for_service", &unk_10015DD07, (v22 - &unk_10015DD07), 0, 0);
  v23 = xD2DMapToTransportType(a1, a4, &v43);
  if (v23 == 4)
  {
    v24 = 0;
    v25 = v43;
    do
    {
      if (&_D2DStartBrowsingForKeyOnTransport && v25 != v24)
      {
        if (v24 >= 2)
        {
          _mdns_powerlog_awdl_event(@"startAWDLBrowse", a2, a3, a5);
        }

        D2DStartBrowsingForKeyOnTransport();
      }

      ++v24;
    }

    while (v24 != 4);
  }

  else if (&_D2DStartBrowsingForKeyOnTransport)
  {
    if ((v23 & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"startAWDLBrowse", a2, a3, a5);
    }

    D2DStartBrowsingForKeyOnTransport();
  }

LABEL_38:
  v26 = D2DFindInBrowseList(__src, a3);
  if (!*v26)
  {
    v27 = malloc_type_calloc(1uLL, 0x110uLL, 0x4D88EC95uLL);
    if (!v27)
    {
      __break(1u);
      return;
    }

    *v26 = v27;
    v27[132] = a3;
    v28 = __src;
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
        v30 = v28 - __src + 1;
        if (v30 <= 0x100u)
        {
          memcpy(v27 + 4, __src, v30);
          goto LABEL_49;
        }

        break;
      }

      v28 += v29 + 1;
    }

    while (v28 - __src <= 255);
    *(v27 + 8) = 0;
  }

LABEL_49:
  v31 = *v26;
  v32 = *(*v26 + 268) + 1;
  *(v31 + 268) = v32;
  v33 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v34 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v35 = (v31 + 8);
    v36 = (v31 + 8);
    while (1)
    {
      if (!v36 || (v37 = *v36, v37 > 0x3F))
      {
LABEL_60:
        v38 = 257;
        goto LABEL_70;
      }

      if (!*v36)
      {
        break;
      }

      v36 += v37 + 1;
      if (v36 - v35 >= 256)
      {
        goto LABEL_60;
      }
    }

    v38 = (v36 - v35 + 1);
    goto LABEL_70;
  }

  v33 = mDNSLogCategory_D2D_redacted;
  if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
  {
    v35 = (v31 + 8);
    v40 = (v31 + 8);
    while (1)
    {
      if (!v40 || (v41 = *v40, v41 > 0x3F))
      {
LABEL_67:
        v38 = 257;
        goto LABEL_70;
      }

      if (!*v40)
      {
        break;
      }

      v40 += v41 + 1;
      if (v40 - v35 >= 256)
      {
        goto LABEL_67;
      }
    }

    v38 = (v40 - v35 + 1);
LABEL_70:
    v42 = *(v31 + 264);
    *buf = 141559043;
    v46 = 1752392040;
    v47 = 1040;
    v48 = v38;
    v49 = 2101;
    v50 = v35;
    v51 = 1024;
    v52 = v42;
    v53 = 1024;
    v54 = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "D2DBrowseListRetain - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, ref count: %u", buf, 0x28u);
  }
}

uint64_t *D2DFindInBrowseList(_BYTE *a1, int a2)
{
  v2 = &D2DBrowseList;
  for (i = D2DBrowseList; i; i = *i)
  {
    if (*(i + 264) == a2)
    {
      if (SameDomainNameBytes((i + 8), a1))
      {
        return v2;
      }

      i = *v2;
    }

    v2 = i;
  }

  return v2;
}

void external_stop_browsing_for_service(uint64_t a1, unsigned __int8 *a2, int a3, int a4, unsigned int a5)
{
  memset(v58, 0, sizeof(v58));
  DomainnameToLower(a2, v58);
  v10 = D2DFindInBrowseList(v58, a3);
  v11 = *v10;
  if (*v10)
  {
    v12 = v10;
    v13 = *(v11 + 268) - 1;
    *(v11 + 268) = v13;
    v14 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v15 = (v11 + 8);
      v23 = (v11 + 8);
      while (1)
      {
        if (!v23 || (v24 = *v23, v24 > 0x3F))
        {
LABEL_26:
          v18 = 257;
          goto LABEL_36;
        }

        if (!*v23)
        {
          break;
        }

        v23 += v24 + 1;
        if (v23 - v15 >= 256)
        {
          goto LABEL_26;
        }
      }

      v18 = (v23 - v15 + 1);
    }

    else
    {
      v14 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v15 = (v11 + 8);
      v16 = (v11 + 8);
      while (1)
      {
        if (!v16 || (v17 = *v16, v17 > 0x3F))
        {
LABEL_10:
          v18 = 257;
          goto LABEL_36;
        }

        if (!*v16)
        {
          break;
        }

        v16 += v17 + 1;
        if (v16 - v15 >= 256)
        {
          goto LABEL_10;
        }
      }

      v18 = (v16 - v15 + 1);
    }

LABEL_36:
    v27 = *(v11 + 264);
    *buf = 141559043;
    v60 = 1752392040;
    v61 = 1040;
    v62 = v18;
    v63 = 2101;
    v64 = v15;
    v65 = 1024;
    v66 = v27;
    v67 = 1024;
    LODWORD(v68) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "D2DBrowseListRelease - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, ref count: %u", buf, 0x28u);
LABEL_37:
    v28 = *v12;
    if (!*(*v12 + 268))
    {
      *v12 = *v28;
      free(v28);
    }

    v29 = D2DFindInBrowseList(v58, a3);
    if (*v29 && *(*v29 + 268))
    {
      return;
    }

    v57 = 0;
    v30 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v38 = v58;
      while (1)
      {
        if (!v38 || (v39 = *v38, v39 > 0x3F))
        {
LABEL_56:
          v37 = 257;
          goto LABEL_59;
        }

        if (!*v38)
        {
          break;
        }

        v38 += v39 + 1;
        if (v38 - v58 >= 256)
        {
          goto LABEL_56;
        }
      }

      v37 = (v38 - v58 + 1);
    }

    else
    {
      v30 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v35 = v58;
      while (1)
      {
        if (!v35 || (v36 = *v35, v36 > 0x3F))
        {
LABEL_49:
          v37 = 257;
          goto LABEL_59;
        }

        if (!*v35)
        {
          break;
        }

        v35 += v36 + 1;
        if (v35 - v58 >= 256)
        {
          goto LABEL_49;
        }
      }

      v37 = (v35 - v58 + 1);
    }

LABEL_59:
    *buf = 141558787;
    v60 = 1752392040;
    v61 = 1040;
    v62 = v37;
    v63 = 2101;
    v64 = v58;
    v65 = 1024;
    v66 = a3;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "internal_stop_browsing_for_service: stopping browse - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x22u);
LABEL_60:
    v40 = putDomainNameAsLabels(&compression_base_msg, &unk_10015DD07, &compression_base_msg + &loc_1000022F8, v58, v31, v32, v33, v34);
    if (v40)
    {
      *v40 = BYTE1(a3);
      v40[1] = a3;
      v40[2] = 1;
      v41 = v40 + 3;
    }

    else
    {
      v41 = 0;
    }

    PrintHelper("internal_stop_browsing_for_service", &unk_10015DD07, (v41 - &unk_10015DD07), 0, 0);
    v42 = xD2DMapToTransportType(a1, a4, &v57);
    if (v42 == 4)
    {
      v43 = 0;
      v44 = v57;
      do
      {
        if (&_D2DStopBrowsingForKeyOnTransport)
        {
          if (v44 != v43)
          {
            D2DStopBrowsingForKeyOnTransport();
            if (v43 >= 2)
            {
              _mdns_powerlog_awdl_event(@"stopAWDLBrowse", a2, a3, a5);
            }
          }
        }

        ++v43;
      }

      while (v43 != 4);
    }

    else if (&_D2DStopBrowsingForKeyOnTransport)
    {
      v45 = v42;
      D2DStopBrowsingForKeyOnTransport();
      if ((v45 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"stopAWDLBrowse", a2, a3, a5);
      }
    }

    v46 = D2DRecords;
    v47 = &unk_100178000;
    if (D2DRecords)
    {
      while (1)
      {
        v48 = v46;
        v46 = *v46;
        if (*(v48 + 18) != a3 || !SameDomainNameBytes(v48 + 676, v58))
        {
          goto LABEL_100;
        }

        v49 = mDNSLogCategory_D2D;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_D2D != v47[435])
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v58;
          while (1)
          {
            if (!v51 || (v52 = *v51, v52 > 0x3F))
            {
LABEL_88:
              v53 = 257;
              goto LABEL_98;
            }

            if (!*v51)
            {
              break;
            }

            v51 += v52 + 1;
            if (v51 - v58 >= 256)
            {
              goto LABEL_88;
            }
          }

          v53 = (v51 - v58 + 1);
LABEL_98:
          GetRRDisplayString_rdb(v48 + 32, (v48[9] + 4), word_1001789D0);
          *buf = 141559299;
          v60 = 1752392040;
          v61 = 1040;
          v62 = v53;
          v63 = 2101;
          v64 = v58;
          v65 = 1024;
          v66 = a3;
          v67 = 2160;
          v68 = 1752392040;
          v69 = 2085;
          v70 = word_1001789D0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "xD2DClearCache: Clearing and deregistering cache record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
          v47 = &unk_100178000;
        }

LABEL_99:
        mDNS_Deregister(mDNSStorage, (v48 + 3));
LABEL_100:
        if (!v46)
        {
          return;
        }
      }

      v49 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      v55 = v58;
      while (1)
      {
        if (!v55 || (v56 = *v55, v56 > 0x3F))
        {
LABEL_95:
          v53 = 257;
          goto LABEL_98;
        }

        if (!*v55)
        {
          break;
        }

        v55 += v56 + 1;
        if (v55 - v58 >= 256)
        {
          goto LABEL_95;
        }
      }

      v53 = (v55 - v58 + 1);
      goto LABEL_98;
    }

    return;
  }

  v19 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v25 = v58;
    while (1)
    {
      if (!v25 || (v26 = *v25, v26 > 0x3F))
      {
LABEL_33:
        v22 = 257;
        goto LABEL_104;
      }

      if (!*v25)
      {
        break;
      }

      v25 += v26 + 1;
      if (v25 - v58 >= 256)
      {
        goto LABEL_33;
      }
    }

    v22 = (v25 - v58 + 1);
  }

  else
  {
    v19 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v20 = v58;
    while (1)
    {
      if (!v20 || (v21 = *v20, v21 > 0x3F))
      {
LABEL_19:
        v22 = 257;
        goto LABEL_104;
      }

      if (!*v20)
      {
        break;
      }

      v20 += v21 + 1;
      if (v20 - v58 >= 256)
      {
        goto LABEL_19;
      }
    }

    v22 = (v20 - v58 + 1);
  }

LABEL_104:
  *buf = 141558787;
  v60 = 1752392040;
  v61 = 1040;
  v62 = v22;
  v63 = 2101;
  v64 = v58;
  v65 = 1024;
  v66 = a3;
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "D2DBrowseListRelease item not found in the list - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", buf, 0x22u);
}

void xD2DServiceCallback(int a1, int a2, uint64_t a3, int a4, _BYTE *a5, unint64_t a6, _OWORD *a7, unint64_t a8)
{
  v16 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v16, v17, v18, v19, v20, v21, v22, v23);
  if (a6 >= 0x10000)
  {
    v24 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v25 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 134217984;
      *&buf[4] = a6;
      goto LABEL_11;
    }

    v24 = mDNSLogCategory_D2D_redacted;
    if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a6;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "xD2DServiceCallback: keySize too large - key size: %zu", buf, 0xCu);
    }
  }

LABEL_12:
  if (a8 < 0x10000)
  {
    goto LABEL_23;
  }

  v27 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v28 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    *&buf[4] = a8;
  }

  else
  {
    v27 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    *&buf[4] = a8;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "xD2DServiceCallback: valueSize too large - value size: %zu", buf, 0xCu);
LABEL_23:
  v30 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v31 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 67240192;
    *&buf[4] = a1;
    goto LABEL_32;
  }

  v30 = mDNSLogCategory_D2D_redacted;
  if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = a1;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "xD2DServiceCallback -- event: %{public, mdnsresponder:d2d_service_event}u", buf, 8u);
  }

LABEL_33:
  PrintHelper("xD2DServiceCallback", a5, a6, a7, a8);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v48 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v49 = mDNSLogCategory_D2D == mDNSLogCategory_State;
      }

      else
      {
        v49 = 1;
      }

      v50 = v49;
      if (a2)
      {
        if (!v50)
        {
          v47 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *buf = 67109120;
          *&buf[4] = a2;
          v43 = "xD2DRetainHappened: Unexpected result - result: %u";
          goto LABEL_158;
        }

        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DRetainHappened: Unexpected result - result: %u";
LABEL_84:
        v44 = buf;
LABEL_239:
        v45 = v48;
        goto LABEL_240;
      }

      if (v50)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v43 = "xD2DRetainHappened: Opening up PAN connection - instanceHandle: %p";
      }

      else
      {
        v48 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v43 = "xD2DRetainHappened: Opening up PAN connection - instanceHandle: %p";
      }
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 != 5 || a2)
        {
          goto LABEL_242;
        }

        if (a4 == 2)
        {
          v46 = &AWDLInterfaceID;
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_242;
          }

          v46 = &WiFiAwareInterfaceID;
        }

        if (a8 != 16)
        {
          goto LABEL_242;
        }

        v57 = *v46;
        *v127 = 6;
        *&v127[4] = *a7;
        mDNS_Lock_(mDNSStorage, "removeCachedPeerRecords", 696);
        v58 = 0;
        while (1)
        {
          v126 = v58;
          v59 = mDNSStorage[v58 + 34];
          if (v59)
          {
            break;
          }

LABEL_146:
          v58 = v126 + 1;
          if (v126 == 498)
          {
            mDNS_Unlock_(mDNSStorage, "removeCachedPeerRecords", 711);
            goto LABEL_242;
          }
        }

        while (1)
        {
          v60 = v59[2];
          if (v60)
          {
            break;
          }

LABEL_145:
          v59 = *v59;
          if (!v59)
          {
            goto LABEL_146;
          }
        }

        while (1)
        {
          if (*(v60 + 32) != v57 || !mDNSSameAddress((v60 + 132), v127))
          {
            goto LABEL_144;
          }

          v61 = mDNSLogCategory_D2D;
          if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_D2D != mDNSLogCategory_State)
          {
            break;
          }

          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_INFO))
          {
            v63 = *(v60 + 40);
            if (v63)
            {
              v64 = *(v60 + 40);
              while (1)
              {
                if (!v64 || (v65 = *v64, v65 > 0x3F))
                {
LABEL_129:
                  v66 = 257;
                  goto LABEL_142;
                }

                if (!*v64)
                {
                  break;
                }

                v64 += v65 + 1;
                if (&v64[-v63] >= 256)
                {
                  goto LABEL_129;
                }
              }

              v66 = (v64 - v63 + 1);
            }

            else
            {
              v66 = 0;
            }

LABEL_142:
            v70 = *(v60 + 12);
            *buf = 141559555;
            *&buf[4] = 1752392040;
            *&buf[12] = 1045;
            *&buf[14] = 20;
            v129 = 2101;
            *v130 = v127;
            *&v130[8] = 2160;
            *&v130[10] = 1752392040;
            *&v130[18] = 1040;
            *&v130[20] = v66;
            *&v130[24] = 2101;
            *&v130[26] = v63;
            *&v130[34] = 1024;
            *&v130[36] = v70;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Removing cached peer record -- peer address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", buf, 0x3Cu);
          }

LABEL_143:
          mDNS_PurgeCacheResourceRecord(mDNSStorage, v60);
LABEL_144:
          v60 = *v60;
          if (!v60)
          {
            goto LABEL_145;
          }
        }

        v61 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_INFO))
        {
          goto LABEL_143;
        }

        v63 = *(v60 + 40);
        if (v63)
        {
          v68 = *(v60 + 40);
          while (1)
          {
            if (!v68 || (v69 = *v68, v69 > 0x3F))
            {
LABEL_137:
              v66 = 257;
              goto LABEL_142;
            }

            if (!*v68)
            {
              break;
            }

            v68 += v69 + 1;
            if (&v68[-v63] >= 256)
            {
              goto LABEL_137;
            }
          }

          v66 = (v68 - v63 + 1);
        }

        else
        {
          v66 = 0;
        }

        goto LABEL_142;
      }

      v48 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v51 = mDNSLogCategory_D2D == mDNSLogCategory_State;
      }

      else
      {
        v51 = 1;
      }

      v52 = v51;
      if (a2)
      {
        if (!v52)
        {
          v47 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *buf = 67109120;
          *&buf[4] = a2;
          v43 = "xD2DReleaseHappened: Unexpected result - result: %u";
          goto LABEL_158;
        }

        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DReleaseHappened: Unexpected result - result: %u";
        goto LABEL_84;
      }

      if (v52)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v43 = "xD2DReleaseHappened: Closing PAN connection - instanceHandle: %p";
      }

      else
      {
        v48 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v43 = "xD2DReleaseHappened: Closing PAN connection - instanceHandle: %p";
      }
    }

    v44 = buf;
    v45 = v48;
    v75 = OS_LOG_TYPE_DEFAULT;
    v76 = 12;
LABEL_241:
    _os_log_impl(&_mh_execute_header, v45, v75, v43, v44, v76);
    goto LABEL_242;
  }

  if (!a1)
  {
    if (a2)
    {
      v47 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DAddToCache: Unexpected result - result: %u";
      }

      else
      {
        v47 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DAddToCache: Unexpected result - result: %u";
      }

LABEL_158:
      v44 = buf;
      v45 = v47;
      goto LABEL_240;
    }

    if (!a8 || !a6 || !a5 || !a7)
    {
      v77 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 0;
        v43 = "xD2DAddToCache: NULL Byte * passed in or length == 0";
      }

      else
      {
        v77 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 0;
        v43 = "xD2DAddToCache: NULL Byte * passed in or length == 0";
      }

LABEL_198:
      v44 = buf;
      v45 = v77;
      v75 = OS_LOG_TYPE_ERROR;
      v76 = 2;
      goto LABEL_241;
    }

    if ((a4 & 0xFFFFFFFE) == 2)
    {
      *buf = 0;
      v53 = xD2DParseCompressedPacket(a5, a6, a7, a8, 4500, buf);
      if (v53)
      {
        v54 = v53;
        v48 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v127 = 67109120;
          *&v127[4] = v54;
          v43 = "xD2DAddToCache: xD2DParseCompressedPacket failed - error: %d";
        }

        else
        {
          v48 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v127 = 67109120;
          *&v127[4] = v54;
          v43 = "xD2DAddToCache: xD2DParseCompressedPacket failed - error: %d";
        }

        goto LABEL_238;
      }

LABEL_182:
      xD2DReceiveResponse(*buf, a4);
      goto LABEL_242;
    }

    *v127 = 0;
    v78 = xD2DParse(a5, a6, a7, a8, v127);
    if (v78)
    {
      v79 = v78;
      v80 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v79;
          goto LABEL_245;
        }
      }

      else
      {
        v80 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v79;
LABEL_245:
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "xD2DAddToCache: xD2DParse failed - error: %d", buf, 8u);
        }
      }

      PrintHelper("xD2DAddToCache", a5, a6, a7, a8);
      v81 = *v127;
      goto LABEL_247;
    }

    v81 = *v127;
    v82 = mDNS_Register(mDNSStorage, *v127 + 24);
    v83 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v84 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v84 = 1;
    }

    v85 = v84;
    if (v82)
    {
      v86 = v82;
      if (v85)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_247;
        }

        v87 = *(v81 + 64);
        if (v87)
        {
          v88 = *(v81 + 64);
          while (1)
          {
            if (!v88 || (v89 = *v88, v89 > 0x3F))
            {
LABEL_214:
              v90 = 257;
              goto LABEL_301;
            }

            if (!*v88)
            {
              break;
            }

            v88 += v89 + 1;
            if (&v88[-v87] >= 256)
            {
              goto LABEL_214;
            }
          }

          v90 = (v88 - v87 + 1);
        }

        else
        {
          v90 = 0;
        }

LABEL_301:
        v113 = *(v81 + 36);
        GetRRDisplayString_rdb((v81 + 32), (*(v81 + 72) + 4), word_1001789D0);
        *buf = 67110659;
        *&buf[4] = v86;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        v129 = 1040;
        *v130 = v90;
        *&v130[4] = 2101;
        *&v130[6] = v87;
        *&v130[14] = 1024;
        *&v130[16] = v113;
        *&v130[20] = 2160;
        *&v130[22] = 1752392040;
        *&v130[30] = 2085;
        *&v130[32] = word_1001789D0;
        v114 = v83;
      }

      else
      {
        v105 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
LABEL_247:
          if (!v81)
          {
            goto LABEL_242;
          }

          goto LABEL_305;
        }

        v106 = *(v81 + 64);
        if (v106)
        {
          v107 = *(v81 + 64);
          while (1)
          {
            if (!v107 || (v108 = *v107, v108 > 0x3F))
            {
LABEL_281:
              v109 = 257;
              goto LABEL_303;
            }

            if (!*v107)
            {
              break;
            }

            v107 += v108 + 1;
            if (&v107[-v106] >= 256)
            {
              goto LABEL_281;
            }
          }

          v109 = (v107 - v106 + 1);
        }

        else
        {
          v109 = 0;
        }

LABEL_303:
        v115 = *(v81 + 36);
        GetRRDisplayString_rdb((v81 + 32), (*(v81 + 72) + 4), word_1001789D0);
        *buf = 67110659;
        *&buf[4] = v86;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        v129 = 1040;
        *v130 = v109;
        *&v130[4] = 2101;
        *&v130[6] = v106;
        *&v130[14] = 1024;
        *&v130[16] = v115;
        *&v130[20] = 2160;
        *&v130[22] = 1752392040;
        *&v130[30] = 2085;
        *&v130[32] = word_1001789D0;
        v114 = v105;
      }

      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "xD2DAddToCache: mDNS_Register failed - error: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x3Cu);
LABEL_305:
      v98 = v81;
      goto LABEL_306;
    }

    if (v85)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v99 = *(v81 + 64);
        if (v99)
        {
          v100 = *(v81 + 64);
          while (1)
          {
            if (!v100 || (v101 = *v100, v101 > 0x3F))
            {
LABEL_262:
              v102 = 257;
              goto LABEL_309;
            }

            if (!*v100)
            {
              break;
            }

            v100 += v101 + 1;
            if (&v100[-v99] >= 256)
            {
              goto LABEL_262;
            }
          }

          v102 = (v100 - v99 + 1);
        }

        else
        {
          v102 = 0;
        }

LABEL_309:
        v116 = *(v81 + 36);
        v117 = *(v81 + 56);
        GetRRDisplayString_rdb((v81 + 32), (*(v81 + 72) + 4), word_1001789D0);
        *buf = 141559555;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v102;
        v129 = 2101;
        *v130 = v99;
        *&v130[8] = 1024;
        *&v130[10] = v116;
        *&v130[14] = 2048;
        *&v130[16] = v117;
        *&v130[24] = 2160;
        *&v130[26] = 1752392040;
        *&v130[34] = 2085;
        *&v130[36] = word_1001789D0;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "xD2DAddToCache: mDNS_Register succeeded - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, Interface ID: %p, auth record: %{sensitive, mask.hash}s", buf, 0x40u);
      }
    }

    else
    {
      v83 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v99 = *(v81 + 64);
        if (v99)
        {
          v110 = *(v81 + 64);
          while (1)
          {
            if (!v110 || (v111 = *v110, v111 > 0x3F))
            {
LABEL_289:
              v102 = 257;
              goto LABEL_309;
            }

            if (!*v110)
            {
              break;
            }

            v110 += v111 + 1;
            if (&v110[-v99] >= 256)
            {
              goto LABEL_289;
            }
          }

          v102 = (v110 - v99 + 1);
        }

        else
        {
          v102 = 0;
        }

        goto LABEL_309;
      }
    }

    *(v81 + 16) = a4;
    *v81 = D2DRecords;
    *(v81 + 8) = a3;
    D2DRecords = v81;
    goto LABEL_242;
  }

  if (a1 == 1)
  {
    if (a2)
    {
      v47 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DRemoveFromCache: Unexpected result - result: %u";
      }

      else
      {
        v47 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v43 = "xD2DRemoveFromCache: Unexpected result - result: %u";
      }

      goto LABEL_158;
    }

    if ((a4 & 0xFFFFFFFE) == 2)
    {
      *buf = 0;
      v55 = xD2DParseCompressedPacket(a5, a6, a7, a8, 0, buf);
      if (v55)
      {
        v56 = v55;
        v48 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v127 = 67109120;
          *&v127[4] = v56;
          v43 = "xD2DRemoveFromCache: xD2DParseCompressedPacket failed - error: %d";
        }

        else
        {
          v48 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v127 = 67109120;
          *&v127[4] = v56;
          v43 = "xD2DRemoveFromCache: xD2DParseCompressedPacket failed - error: %d";
        }

LABEL_238:
        v44 = v127;
        goto LABEL_239;
      }

      goto LABEL_182;
    }

    v71 = D2DRecords;
    *v127 = 0;
    if (a8 && a6 && a5 && a7)
    {
      v72 = xD2DParse(a5, a6, a7, a8, v127);
      if (v72)
      {
        v73 = v72;
        v74 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_252;
          }

          *buf = 67109120;
          *&buf[4] = v73;
        }

        else
        {
          v74 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_252;
          }

          *buf = 67109120;
          *&buf[4] = v73;
        }

        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "xD2DFindInList: xD2DParse failed - error: %d", buf, 8u);
LABEL_252:
        PrintHelper("xD2DFindInList", a5, a6, a7, a8);
        v98 = *v127;
        if (!*v127)
        {
          goto LABEL_242;
        }

        goto LABEL_306;
      }

      if (v71)
      {
        v91 = *v127;
        while (*(v91 + 48) != *(v71 + 48) || !resource_records_have_same_dnssec_rr_category(*(v91 + 88), *(v71 + 88)) || *(v91 + 36) != *(v71 + 36) || *(v91 + 38) != *(v71 + 38) || *(v91 + 44) != *(v71 + 44) || *(v91 + 52) != *(v71 + 52) || !SameRDataBody(v91 + 32, (*(v71 + 72) + 4), SameDomainName) || !SameDomainNameBytes(*(v91 + 64), *(v71 + 64)))
        {
          v71 = *v71;
          if (!v71)
          {
            goto LABEL_226;
          }
        }

        free(v91);
        v118 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
          {
            v119 = *(v71 + 64);
            if (v119)
            {
              v123 = *(v71 + 64);
              while (1)
              {
                if (!v123 || (v124 = *v123, v124 > 0x3F))
                {
LABEL_328:
                  v122 = 257;
                  goto LABEL_333;
                }

                if (!*v123)
                {
                  break;
                }

                v123 += v124 + 1;
                if (&v123[-v119] >= 256)
                {
                  goto LABEL_328;
                }
              }

              v122 = (v123 - v119 + 1);
            }

            else
            {
              v122 = 0;
            }

            goto LABEL_333;
          }
        }

        else
        {
          v118 = mDNSLogCategory_D2D_redacted;
          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v119 = *(v71 + 64);
            if (v119)
            {
              v120 = *(v71 + 64);
              while (1)
              {
                if (!v120 || (v121 = *v120, v121 > 0x3F))
                {
LABEL_320:
                  v122 = 257;
                  goto LABEL_333;
                }

                if (!*v120)
                {
                  break;
                }

                v120 += v121 + 1;
                if (&v120[-v119] >= 256)
                {
                  goto LABEL_320;
                }
              }

              v122 = (v120 - v119 + 1);
            }

            else
            {
              v122 = 0;
            }

LABEL_333:
            v125 = *(v71 + 36);
            GetRRDisplayString_rdb((v71 + 32), (*(v71 + 72) + 4), word_1001789D0);
            *buf = 141559299;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v122;
            v129 = 2101;
            *v130 = v119;
            *&v130[8] = 1024;
            *&v130[10] = v125;
            *&v130[14] = 2160;
            *&v130[16] = 1752392040;
            *&v130[24] = 2085;
            *&v130[26] = word_1001789D0;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "xD2DRemoveFromCache: removing record from cache - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
          }
        }

        mDNS_Deregister(mDNSStorage, v71 + 24);
        goto LABEL_242;
      }

LABEL_226:
      v92 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v93 = *v127;
        if (mDNSLogCategory_D2D != mDNSLogCategory_State)
        {
          v92 = mDNSLogCategory_D2D_redacted;
          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            v94 = *(v93 + 64);
            if (v94)
            {
              v95 = *(v93 + 64);
              while (1)
              {
                if (!v95 || (v96 = *v95, v96 > 0x3F))
                {
LABEL_235:
                  v97 = 257;
                  goto LABEL_298;
                }

                if (!*v95)
                {
                  break;
                }

                v95 += v96 + 1;
                if (&v95[-v94] >= 256)
                {
                  goto LABEL_235;
                }
              }

              v97 = (v95 - v94 + 1);
            }

            else
            {
              v97 = 0;
            }

LABEL_298:
            v112 = *(v93 + 36);
            GetRRDisplayString_rdb((v93 + 32), (*(v93 + 72) + 4), word_1001789D0);
            *buf = 141559299;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v97;
            v129 = 2101;
            *v130 = v94;
            *&v130[8] = 1024;
            *&v130[10] = v112;
            *&v130[14] = 2160;
            *&v130[16] = 1752392040;
            *&v130[24] = 2085;
            *&v130[26] = word_1001789D0;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "xD2DFindInList: Could not find in D2DRecords - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
LABEL_299:
            v98 = v93;
LABEL_306:
            free(v98);
            goto LABEL_242;
          }

          goto LABEL_272;
        }
      }

      else
      {
        v93 = *v127;
      }

      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        v94 = *(v93 + 64);
        if (v94)
        {
          v103 = *(v93 + 64);
          while (1)
          {
            if (!v103 || (v104 = *v103, v104 > 0x3F))
            {
LABEL_271:
              v97 = 257;
              goto LABEL_298;
            }

            if (!*v103)
            {
              break;
            }

            v103 += v104 + 1;
            if (&v103[-v94] >= 256)
            {
              goto LABEL_271;
            }
          }

          v97 = (v103 - v94 + 1);
        }

        else
        {
          v97 = 0;
        }

        goto LABEL_298;
      }

LABEL_272:
      if (!v93)
      {
        goto LABEL_242;
      }

      goto LABEL_299;
    }

    v77 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_242;
      }

      *buf = 0;
      v43 = "xD2DFindInList: NULL Byte * passed in or length == 0";
    }

    else
    {
      v77 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_242;
      }

      *buf = 0;
      v43 = "xD2DFindInList: NULL Byte * passed in or length == 0";
    }

    goto LABEL_198;
  }

  if (a1 != 2)
  {
    goto LABEL_242;
  }

  v40 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v41 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v41 = 1;
  }

  v42 = v41;
  if (!a2)
  {
    if (v42)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 134217984;
      *&buf[4] = a3;
    }

    else
    {
      v40 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 134217984;
      *&buf[4] = a3;
    }

    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "xD2DServiceResolved: Starting up PAN connection - instanceHandle: %p", buf, 0xCu);
LABEL_164:
    if (&_D2DRetain)
    {
      D2DRetain();
    }

    goto LABEL_242;
  }

  if (!v42)
  {
    v47 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_242;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    v43 = "xD2DServiceResolved: Unexpected result - result: %u";
    goto LABEL_158;
  }

  if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    v43 = "xD2DServiceResolved: Unexpected result - result: %u";
    v44 = buf;
    v45 = v40;
LABEL_240:
    v75 = OS_LOG_TYPE_ERROR;
    v76 = 8;
    goto LABEL_241;
  }

LABEL_242:
  KQueueUnlock("xD2DServiceCallback", v33, v34, v35, v36, v37, v38, v39);
}