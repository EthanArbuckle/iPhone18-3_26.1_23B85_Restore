uint64_t IsResponseMDNSEquivalent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 != &_mdns_querier_kind)
  {
    if (v2 == &_mdns_subscriber_kind && a2 != 0)
    {
      return (*(a2 + 276) >> 14) & 1;
    }

    return 1;
  }

  return 0;
}

_BYTE *DomainNamePtrAtTSRIndex(unsigned __int16 *a1, unint64_t a2, unsigned int a3)
{
  v6 = a1[3];
  if (v6 >= a3)
  {
    Answers = LocateAnswers(a1, a2);
    LOWORD(v6) = 0;
    if (!Answers)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v7 = a1[4];
  if (v7 + v6 >= a3)
  {
    Answers = LocateAuthorities(a1, a2);
    if (!Answers)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 + v6 + a1[5] < a3)
  {
    Answers = 0;
    goto LABEL_13;
  }

  Answers = LocateAdditionals(a1, a2);
  LOWORD(v6) = v7 + v6;
  if (Answers)
  {
LABEL_10:
    while (a3 > v6)
    {
      Answers = skipResourceRecord(a1, Answers, a2);
      if (!Answers)
      {
        break;
      }

      LOWORD(v6) = v6 + 1;
    }
  }

LABEL_13:
  if (Answers >= a2)
  {
    return 0;
  }

  else
  {
    return Answers;
  }
}

char *UnsafeBufferPointer(unint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  memset(__src, 0, sizeof(__src));
  if (!getDomainName(a1, a2, a3, __src))
  {
    v9 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v10 = *(a4 + 4);
        v11 = *(a4 + 8);
        v12 = *(a4 + 12);
        v15[0] = 67109632;
        v15[1] = v10;
        v16 = 1024;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TSRDataRecCreate: Bad RR domain name for TSR - tsrTime %d tsrHost %x recIndex %u", v15, 0x14u);
      }
    }

    else
    {
      v9 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x118uLL, 0xD0BE6688uLL);
  if (result)
  {
    v6 = result;
    v7 = __src;
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
        v13 = v7 - __src + 1;
        if (v13 <= 0x100u)
        {
          memcpy(result + 20, __src, v13);
          goto LABEL_19;
        }

        break;
      }

      v7 += v8 + 1;
    }

    while (v7 - __src <= 255);
    result[20] = 0;
LABEL_19:
    v14 = *(a4 + 4);
    *(v6 + 4) = *(a4 + 12);
    *(v6 + 1) = v14;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t PacketRRMatchesSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PacketRRMatchesSignature ERROR: pktrr is NULL", a4, a5, a6, a7, a8, v14);
    return 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(a2 + 32);
    if (v11 && v10 != v11)
    {
      return 0;
    }
  }

  if (((*(a2 + 8) & 0x32) == 0 || *(a2 + 126)) && *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a2 + 32) || (result = mDNSPlatformValidRecordForInterface(a2, v10, a3, a4, a5, a6, a7, a8), result))
  {
    if (*(a1 + 14) == *(a2 + 14) && *(a1 + 24) == *(a2 + 24))
    {
      return SameDomainNameBytes(*(a1 + 40), *(a2 + 40)) != 0;
    }

    return 0;
  }

  return result;
}

BOOL SameNameCacheRecordsMatchInSourceTypeClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (!v2)
  {
    v4 = *(a1 + 56);
    v5 = *(a2 + 56);
    if (v4)
    {
      v4 = *(v4 + 24);
    }

    if (v5)
    {
      v5 = *(v5 + 24);
    }

    if (v4 != v5)
    {
      return 0;
    }
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14);
}

uint64_t RecordInTheRRSet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 4);
  covered_type = resource_record_as_rrsig_get_covered_type(a1);
  v7 = v4 == v5 || covered_type == v4;
  if (!v7 || *(a2 + 8) != *(a1 + 16))
  {
    return 0;
  }

  v8 = *a2;
  v9 = *(a1 + 32);

  return SameDomainNameBytes(v8, v9);
}

void mDNSCoreReceiveUpdate(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v12 = a4;
  v137 = 0uLL;
  v138 = 0;
  if (mDNS_LoggingEnabled == 1)
  {
    *(a2 + 4);
    *(a2 + 6);
    *(a2 + 8);
    *(a2 + 10);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received Update from %#-15a:%-5d to %#-15a:%-5d on 0x%p with %2d Question%s %2d Answer%s %2d Authorit%s %2d Additional%s %d bytes", a4, a5, a6, a7, a8, a4);
  }

  v136 = a3;
  if (v8)
  {
    v16 = *(a1 + 15120);
    if (v16)
    {
      bzero(v139, 0x498uLL);
      if (*v16 == v9)
      {
        v17 = (a1 + 37920);
        if (mDNS_PacketLoggingEnabled == 1)
        {
          DumpPacket(0, 0, "UDP", v12, v11, a6, v9, a2, v136, v8);
        }

        v18 = a1 + 28972;
        v19 = v136;
        OptRR = LocateOptRR(a2, v136, 20);
        if (OptRR)
        {
          v26 = a1 + 28960;
          if (GetLargeResourceRecord(a1, a2, OptRR, v136, 0, 128, a1 + 37912) && *v17 != 240 && *(a1 + 37924) == 41 && (v27 = (*(a1 + 37960) + 4), v28 = (v27 + *(a1 + 37932)), v27 < v28))
          {
            v29 = 0;
            do
            {
              v30 = *v27;
              if (v30 == 4)
              {
                if (!*(v27 + 4))
                {
                  v31 = *(v27 + 2);
                  v138 = *(v27 + 5);
                  v137 = v31;
                }
              }

              else if (v30 == 2)
              {
                v29 = *(v27 + 1);
              }

              v27 += 12;
            }

            while (v27 < v28);
          }

          else
          {
            v29 = 0;
          }

          *v17 = 0;
          *(a1 + 38022) = 0;
          v32 = *(a1 + 37976);
          if (v32)
          {
            ref_count_obj_release(v32);
            *(a1 + 37976) = 0;
          }
        }

        else
        {
          v29 = 0;
          v26 = a1 + 28960;
        }

        *v26 = *a2;
        *(v26 + 2) = 168;
        *(v26 + 4) = 0;
        if (v29 && *(&v137 + 2))
        {
          if (*(a1 + 19888) + *(a2 + 8) < 10001)
          {
            v131 = v11;
            v132 = v12;
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received Update for H-MAC %.6a I-MAC %.6a Password %.6a seq %d", v21, v22, v23, v24, v25, &v137 + 2);
            }

            if (v29 >= 0x15180)
            {
              v35 = 86400;
            }

            else
            {
              v35 = v29;
            }

            v130 = v35;
            Authorities = LocateAuthorities(a2, v136);
            ClearKeepaliveProxyRecords(a1, &v137, *(a1 + 12624), v8);
            ClearKeepaliveProxyRecords(a1, &v137, *(a1 + 12616), v8);
            if (*(a2 + 8) && Authorities && Authorities < v136)
            {
              v42 = 0;
              v133 = v8;
              v134 = 1000 * v130;
              do
              {
                Authorities = GetLargeResourceRecord(a1, a2, Authorities, v19, v8, 160, a1 + 37912);
                if (Authorities && *v17 != 240)
                {
                  v43 = *(a1 + 37924);
                  switch(v43)
                  {
                    case 6:
                      v44 = 532;
                      break;
                    case 26:
                      v44 = 514;
                      break;
                    case 17:
                      v44 = 512;
                      break;
                    default:
                      v44 = *(a1 + 37932);
                      break;
                  }

                  v45 = malloc_type_calloc(1uLL, v44 + 912, 0xAF4C32F7uLL);
                  if (!v45)
                  {
                    __break(1u);
                    return;
                  }

                  v46 = v45;
                  if ((*v17 & 0x10) != 0)
                  {
                    v47 = 2;
                  }

                  else
                  {
                    v47 = 8;
                  }

                  v135 = v47;
                  *(a1 + 37926) &= ~0x8000u;
                  if (*(a1 + 37924) != 10 || ((v48 = *(a1 + 37952), *v48) ? (v49 = *v48 + 1) : (v49 = 0), !SameDomainLabelPointer(&v48[v49], "\n_keepalive")))
                  {
                    ClearIdenticalProxyRecords(a1, &v137, *(a1 + 12624));
                    ClearIdenticalProxyRecords(a1, &v137, *(a1 + 12616));
                  }

                  mDNS_SetupResourceRecord(v46, 0, v8, *(a1 + 37924), *(a1 + 37928), v135, 0, SPSRecordCallback, v46);
                  v56 = *(a1 + 37952);
                  v57 = v56;
                  do
                  {
                    if (!v57)
                    {
                      break;
                    }

                    v58 = *v57;
                    if (v58 > 0x3F)
                    {
                      break;
                    }

                    if (!*v57)
                    {
                      v59 = v57 - v56 + 1;
                      if (v59 <= 0x100u)
                      {
                        memcpy((v46 + 652), v56, v59);
                        goto LABEL_72;
                      }

                      break;
                    }

                    v57 += v58 + 1;
                  }

                  while (v57 - v56 <= 255);
                  *(v46 + 652) = 0;
LABEL_72:
                  *(v46 + 20) = GetRDLength(a1 + 37920, 0, v50, v51, v52, v53, v54, v55);
                  v60 = *(v46 + 48);
                  *v60 = v44;
                  memcpy(v60 + 2, (*(a1 + 37960) + 4), v44);
                  *(v46 + 122) = 1;
                  *(v46 + 140) = v138;
                  *(v46 + 124) = v137;
                  if (*(a1 + 37924) == 12)
                  {
                    v68 = *(a1 + 37952);
                    v69 = *v68;
                    if (*v68)
                    {
                      v70 = 0;
                      v71 = -1;
                      v72 = *(a1 + 37952);
                      do
                      {
                        v73 = v70;
                        v74 = v72 + v69;
                        v75 = *(v74 + 1);
                        v72 = v74 + 1;
                        v69 = v75;
                        ++v71;
                        ++v70;
                      }

                      while (v75);
                      if (v71 - 1 >= 0)
                      {
                        if (v71 != 1)
                        {
                          do
                          {
                            if (!*v68)
                            {
                              break;
                            }

                            v68 += *v68 + 1;
                            --v73;
                          }

                          while (v73 > 1);
                        }

                        if (SameDomainNameBytes(v68, "\ain-addr\x04arpa"))
                        {
                          v81 = *(a1 + 37952);
                          v82 = *v81;
                          if (!*v81)
                          {
                            goto LABEL_105;
                          }

                          v83 = -1;
                          v84 = -2;
                          v85 = -3;
                          v86 = -4;
                          v87 = *(a1 + 37952);
                          do
                          {
                            v88 = v83;
                            v89 = v84;
                            v90 = v85;
                            v91 = v86;
                            v92 = v87 + v82;
                            v93 = *(v92 + 1);
                            v87 = v92 + 1;
                            v82 = v93;
                            ++v83;
                            ++v84;
                            ++v85;
                            ++v86;
                          }

                          while (v93);
                          if (v83 - 5 >= 0)
                          {
                            v94 = *(a1 + 37952);
                            if (v83 - 2 >= 1)
                            {
                              v94 = *(a1 + 37952);
                              do
                              {
                                if (!*v94)
                                {
                                  break;
                                }

                                v94 += *v94 + 1;
                                --v88;
                              }

                              while (v88 > 1);
                            }

                            v129 = *(a1 + 37952);
                            if (!GetLabelDecimalValue(v94, (v46 + 148)))
                            {
                              v95 = v129;
                              if (v83 - 3 >= 1)
                              {
                                v95 = v129;
                                do
                                {
                                  if (!*v95)
                                  {
                                    break;
                                  }

                                  v95 += *v95 + 1;
                                  --v89;
                                }

                                while (v89 > 1);
                              }

                              if (!GetLabelDecimalValue(v95, (v46 + 149)))
                              {
                                v96 = v129;
                                if (v83 - 4 >= 1)
                                {
                                  v96 = v129;
                                  do
                                  {
                                    if (!*v96)
                                    {
                                      break;
                                    }

                                    v96 += *v96 + 1;
                                    --v90;
                                  }

                                  while (v90 > 1);
                                }

                                if (!GetLabelDecimalValue(v96, (v46 + 150)))
                                {
                                  if (v83 == 5)
                                  {
                                    v97 = v129;
                                  }

                                  else
                                  {
                                    v97 = v129;
                                    do
                                    {
                                      if (!*v97)
                                      {
                                        break;
                                      }

                                      v97 += *v97 + 1;
                                      --v91;
                                    }

                                    while (v91 > 1);
                                  }

                                  if (!GetLabelDecimalValue(v97, (v46 + 151)))
                                  {
                                    v114 = 4;
LABEL_133:
                                    *(v46 + 144) = v114;
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
LABEL_105:
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetIPFromName: Need six labels in IPv4 reverse mapping name %##s", v76, v77, v78, v79, v80, *(a1 + 37952));
                          }
                        }

                        else if (SameDomainNameBytes(v68, "\x03ip6\x04arpa"))
                        {
                          v98 = *(a1 + 37952);
                          v99 = *v98;
                          if (!*v98)
                          {
                            goto LABEL_134;
                          }

                          v100 = -1;
                          v101 = -32;
                          v102 = *(a1 + 37952);
                          do
                          {
                            v103 = v101;
                            v104 = v102 + v99;
                            v105 = *(v104 + 1);
                            v102 = v104 + 1;
                            v99 = v105;
                            ++v100;
                            ++v101;
                          }

                          while (v105);
                          if (v100 - 33 >= 0)
                          {
                            if (v100 != 33)
                            {
                              do
                              {
                                if (!*v98)
                                {
                                  break;
                                }

                                v98 += *v98 + 1;
                                --v103;
                              }

                              while (v103 > 1);
                            }

                            v106 = 0;
                            while (*v98 == 1)
                            {
                              v107 = v98[1];
                              v108 = v107 - 48;
                              v109 = v107 - 65;
                              if ((v107 - 97) >= 6)
                              {
                                v110 = -1;
                              }

                              else
                              {
                                v110 = v107 - 87;
                              }

                              v111 = v107 - 55;
                              if (v109 > 5)
                              {
                                v111 = v110;
                              }

                              if (v108 <= 9)
                              {
                                v111 = v108;
                              }

                              if (v98[2] != 1)
                              {
                                break;
                              }

                              v112 = v98[3];
                              if ((v112 - 48) >= 0xA)
                              {
                                if ((v112 - 65) >= 6)
                                {
                                  if ((v112 - 97) > 5)
                                  {
                                    break;
                                  }

                                  v113 = -87;
                                }

                                else
                                {
                                  v113 = -55;
                                }
                              }

                              else
                              {
                                v113 = -48;
                              }

                              if ((v111 & 0x80000000) != 0)
                              {
                                break;
                              }

                              *(v46 + 163 + v106--) = v111 | (16 * (v113 + v112));
                              v98 += 4;
                              if (v106 == -16)
                              {
                                v114 = 6;
                                goto LABEL_133;
                              }
                            }
                          }

                          else
                          {
LABEL_134:
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetIPFromName: Need 34 labels in IPv6 reverse mapping name %##s", v63, v64, v65, v66, v67, *(a1 + 37952));
                          }
                        }
                      }
                    }

                    v8 = v133;
                    v19 = v136;
                    if (*(v46 + 144))
                    {
                      v115 = *(a1 + 15112);
                      if (v115)
                      {
                        v116 = v115 == v133;
                      }

                      else
                      {
                        v116 = 1;
                      }

                      if (!v116)
                      {
                        mDNSPlatformUpdateProxyList(v115, v61, v62, v63, v64, v65, v66, v67);
                      }

                      *(a1 + 15112) = v133;
                    }
                  }

                  v117 = *(a1 + 64);
                  *(v46 + 164) = v117;
                  *(v46 + 168) = v134 + v117;
                  if (*(a1 + 108) - (v134 + v117) >= 1)
                  {
                    *(a1 + 108) = v134 + v117;
                  }

                  *(v46 + 176) = 0;
                  mDNS_Register_internal(a1, v46, v62, v63, v64, v65, v66, v67);
                  ++*(a1 + 19888);
                  mDNS_UpdateAllowSleep(a1);
                  if (mDNS_LoggingEnabled == 1)
                  {
                    v118 = mDNSLogCategory_Default;
                    v119 = *(a1 + 19888);
                    GetRRDisplayString_rdb((v46 + 8), (*(v46 + 48) + 4), (a1 + 47032));
                    v128 = v119;
                    v19 = v136;
                    LogMsgWithLevel(v118, OS_LOG_TYPE_DEFAULT, "SPS Registered %4d %X %s", v120, v121, v122, v123, v124, v128);
                  }
                }

                *v17 = 0;
                *(a1 + 38022) = 0;
                v125 = *(a1 + 37976);
                if (v125)
                {
                  ref_count_obj_release(v125);
                  *(a1 + 37976) = 0;
                }
              }

              while (++v42 < *(a2 + 8) && Authorities != 0 && Authorities < v19);
            }

            v26 = a1 + 28960;
            if ((*(a1 + 28963) & 0xF) != 0)
            {
              v11 = v131;
              v12 = v132;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d: Out of memory", v37, v38, v39, v40, v41, v132);
              ClearProxyRecords(a1, &v137, *(a1 + 12624));
              ClearProxyRecords(a1, &v137, *(a1 + 12616));
              v18 = a1 + 28972;
            }

            else
            {
              v140[0] = 32;
              v145 = 0;
              v146 = v180;
              v141 = 41;
              v181[0] = 264;
              v147 = v181;
              v148 = 0;
              v156 = 0;
              v157 = 0;
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v153 = 0u;
              v154 = 0u;
              v155 = 0;
              v161 = v180;
              v176 = 0;
              v177 = 0;
              v179 = 0;
              v178 = 0u;
              v175 = 0;
              v180[0] = 0;
              v162 = 0u;
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v171 = 0u;
              v172 = 0u;
              v173 = 0u;
              memset(v174, 0, sizeof(v174));
              v142 = 1440;
              v143 = 4500;
              v144 = 1572888;
              v181[2] = 2;
              v182 = v130;
              v18 = PutResourceRecordTTLWithLimit(a1 + 28960, a1 + 28972, (a1 + 28970), v140, 0x1194uLL, a1 + 37912, v40, v41);
              v11 = v131;
              v12 = v132;
              if (!v18)
              {
LABEL_164:
                mDNS_SendKeepalives(a1);
                return;
              }
            }
          }

          else
          {
            v33 = 5;
            if (mDNSCoreReceiveUpdate_msgs_264 <= 99)
            {
              ++mDNSCoreReceiveUpdate_msgs_264;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d: Too many records %d + %d = %d > %d", v21, v22, v23, v24, v25, v12);
              v33 = *(v26 + 3) | 5;
            }

            *(v26 + 3) = v33;
          }
        }

        else
        {
          if (mDNSCoreReceiveUpdate_msgs > 99)
          {
            v34 = 1;
          }

          else
          {
            ++mDNSCoreReceiveUpdate_msgs;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d:%s%s", v21, v22, v23, v24, v25, v12);
            v34 = *(v26 + 3) | 1;
          }

          *(v26 + 3) = v34;
        }

        mDNSSendDNSMessage(a1, v26, v18, v8, 0, *(a1 + 15120), v12, v11, 0, 0);
        goto LABEL_164;
      }
    }
  }
}

void mDNSCoreReceiveUpdateR()
{
  v0 = __chkstk_darwin();
  v5 = v0;
  if (v4)
  {
    v6 = v4;
    v7 = v1;
    v114 = v3;
    v122 = 0;
    PktLease = GetPktLease(v0, v1, v2, &v122);
    if (PktLease)
    {
      v14 = v122;
    }

    else
    {
      v14 = 3600;
    }

    v116 = v14;
    if (PktLease && mDNS_LoggingEnabled)
    {
      v113 = bswap32(*v7) >> 16;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS Update response contains lease option granting %4d seconds, updateid %d, InterfaceID %p", v9, v10, v11, v12, v13, v122);
    }

    v15 = *(v5 + 12640);
    if (v15)
    {
      v16 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v15 + 8), (*(v15 + 48) + 4), (v5 + 47032));
      LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveUpdateR ERROR m->CurrentRecord already set %s", v17, v18, v19, v20, v21, v5 + 47032);
    }

    v22 = *(v5 + 12616);
    *(v5 + 12640) = v22;
    if (v22)
    {
      v23 = 0;
      v115 = (v5 + 47032);
      do
      {
        v24 = *(v22 + 32);
        if ((v24 == v6 || !v24 && (*(v22 + 122) || IsLocalDomain(*(v22 + 40)))) && *(v22 + 358) == *v7)
        {
          if ((v6 + 5 > 3 || v6 == -4) && v6 <= 0x3F)
          {
            *(v22 + 4 * ((v6 >> 5) & 1) + 360) &= ~(1 << v6);
          }

          if (!*(v22 + 360))
          {
            *(v22 + 358) = 0;
          }

          v25 = 1000 * v116 + *(v5 + 64);
          if (v25 <= 1)
          {
            v25 = 1;
          }

          *(v22 + 352) = v25;
          ++v23;
          if (mDNS_LoggingEnabled == 1)
          {
            v26 = "transferred";
            if (!*(v22 + 126))
            {
              v26 = "registered";
            }

            v117 = v26;
            cfa = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v22 + 8), (*(v22 + 48) + 4), v115);
            LogMsgWithLevel(cfa, OS_LOG_TYPE_DEFAULT, "Sleep Proxy %s record %2d %5d 0x%x 0x%x (%d) %s", v27, v28, v29, v30, v31, v117);
          }

          if (*(v22 + 126))
          {
            *(v22 + 130) = 0;
            *(v22 + 126) = 0;
            *(v22 + 192) = 0;
            mDNS_Deregister_internal(v5, v22, 0);
          }
        }

        v32 = *(v5 + 12640);
        if (v32 == v22)
        {
          v32 = *v22;
          *(v5 + 12640) = *v22;
        }

        v22 = v32;
      }

      while (v32);
      if (v23)
      {
        memset(v121, 0, sizeof(v121));
        bzero(bytes, 0x22F8uLL);
        v38 = v5 + 12656;
        v39 = (v5 + 12656);
        while (1)
        {
          v39 = *v39;
          if (!v39)
          {
            break;
          }

          v40 = v39;
          if (v39[444] == v6)
          {
            goto LABEL_41;
          }
        }

        v40 = 0;
LABEL_41:
        v41 = v40 + 3606;
        if (v39)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        *v121 = *v114;
        *&v121[16] = *(v114 + 16);
        v43 = *v121;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformStoreSPSMACAddr : Storing %#a on interface %s", v33, v34, v35, v36, v37, v121);
        }

        if (v43 == 4)
        {
          v44 = 2;
        }

        else
        {
          v44 = 30;
        }

        v168 = *&v121[4];
        v124 = 0;
        v123 = 0;
        memset(v128, 0, 46);
        v45 = SCDynamicStoreCreate(0, @"mDNSResponder:StoreSPSMACAddress", 0, 0);
        v46 = SCDynamicStoreCreate(0, @"mDNSResponder:GetIPv6Addresses", 0, 0);
        v52 = v46;
        v118 = v42;
        if (!v45 || !v46)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: Unable to accesss SC Dynamic Store", v47, v48, v49, v50, v51, v110);
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          cf = 0;
          v67 = 0;
          if (!v45)
          {
LABEL_70:
            if (v52)
            {
              CFRelease(v52);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v61)
            {
              CFRelease(v61);
            }

            if (v59)
            {
              CFRelease(v59);
            }

            if (v60)
            {
              CFRelease(v60);
            }

            if (v58)
            {
              CFRelease(v58);
            }

            if ((v67 & 1) == 0)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSStoreSPSMACAddress : failed", v62, v63, v64, v65, v66, v111);
            }

            *bytes = 8650752;
            v126 = 0;
            bzero(v128, 0x498uLL);
            v128[8] = 32;
            *&v128[12] = 94371881;
            v158 = 264;
            *&v128[40] = v157;
            v129 = &v158;
            v137 = 0;
            v138 = 0;
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0;
            v139 = v157;
            v153 = 0;
            v154 = 0;
            v156 = 0;
            v155 = 0;
            v157[0] = 0;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            v143 = 0u;
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            v149 = 0u;
            v150 = 0u;
            v151 = 0u;
            memset(v152, 0, sizeof(v152));
            *&v128[16] = 0x18001800001194;
            do
            {
              v38 = *v38;
            }

            while (v38 && *(v38 + 3552) != v6);
            v160 = 0;
            v161 = *(v5 + 142);
            v162 = *(v5 + 24);
            v163 = *(v5 + 28);
            v164 = *(v38 + 3600);
            v165 = *(v38 + 3604);
            v166 = 0;
            v167 = 0;
            v159[0] = 4;
            if (*(v5 + 24) == *(v38 + 3600))
            {
              v83 = 14;
              if (*(v5 + 26) == *(v38 + 3602))
              {
                if (*(v5 + 28) == *(v38 + 3604))
                {
                  v83 = 8;
                }

                else
                {
                  v83 = 14;
                }
              }
            }

            else
            {
              v83 = 14;
            }

            v159[1] = v83;
            if (mDNS_LoggingEnabled == 1)
            {
              v84 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb(&v128[8], v159, v115);
              LogMsgWithLevel(v84, OS_LOG_TYPE_DEFAULT, "Generated OPT record : %s", v85, v86, v87, v88, v89, v115);
              v90 = *&v128[16];
            }

            else
            {
              v90 = 4500;
            }

            v91 = PutResourceRecordTTLWithLimit(bytes, v127, &v126 + 3, &v128[8], v90, v128, v81, v82);
            if (v91)
            {
              LOWORD(v126) = bswap32(v126) >> 16;
              WORD1(v126) = bswap32(WORD1(v126)) >> 16;
              WORD2(v126) = bswap32(WORD2(v126)) >> 16;
              HIWORD(v126) = bswap32(HIWORD(v126)) >> 16;
              v97 = v91 - v127;
              if (v91 == v127)
              {
                goto LABEL_112;
              }

              v98 = SCDynamicStoreCreate(0, @"mDNSResponder:StoreOwnerOPTRecord", 0, 0);
              if (v98)
              {
                v99 = v98;
                v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s");
                Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (Mutable)
                {
                  v107 = CFDataCreate(0, bytes, v97 + 12);
                  CFDictionarySetValue(Mutable, @"OwnerOPTRecord", v107);
                  if (v107)
                  {
                    CFRelease(v107);
                  }

                  SCDynamicStoreSetValue(v99, v100, Mutable);
                }

                else
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformStoreOwnerOptRecord: Could not create CFDictionary dictionary to store OPT Record", v101, v102, v103, v104, v105, "State:/Network/Interface/");
                }

                CFRelease(v99);
                if (v100)
                {
                  CFRelease(v100);
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                goto LABEL_112;
              }

              v108 = mDNSLogCategory_Default;
              v109 = "mDNSPlatformStoreOwnerOptRecord: Unable to accesss SC Dynamic Store";
            }

            else
            {
              if (mDNS_LoggingEnabled != 1)
              {
                goto LABEL_112;
              }

              v108 = mDNSLogCategory_Default;
              v109 = "mDNSGenerateOwnerOptForInterface: Failed to generate owner OPT record";
            }

            LogMsgWithLevel(v108, OS_LOG_TYPE_DEFAULT, v109, v92, v93, v94, v95, v96, v111);
            goto LABEL_112;
          }

LABEL_69:
          CFRelease(v45);
          goto LABEL_70;
        }

        v124 = 0;
        v123 = 0;
        if (GetRemoteMacinternal(v44, &v168, &v123))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: Failed to determine the MAC address", v53, v54, v55, v56, v57, v110);
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          cf = 0;
LABEL_68:
          v67 = 0;
          goto LABEL_69;
        }

        v112 = "State:/Network/Interface/";
        cf = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s");
        v61 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v61)
        {
          v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%02x:%02x:%02x:%02x:%02x:%02x", v123, BYTE1(v123), BYTE2(v123), HIBYTE(v123), v124, HIBYTE(v124));
          CFDictionarySetValue(v61, @"MACAddress", v73);
          if (v73)
          {
            CFRelease(v73);
          }

          if (inet_ntop(v44, &v168, v128, 0x2Eu))
          {
            v74 = CFStringCreateWithCString(0, v128, 0x8000100u);
            CFDictionarySetValue(v61, @"IPAddress", v74);
            if (v74)
            {
              CFRelease(v74);
            }

            v60 = CFStringCreateWithFormat(0, 0, @"State:/Network/Interface/%s/IPv6", v118);
            if (v60)
            {
              v75 = SCDynamicStoreCopyValue(v52, v60);
              v59 = v75;
              if (v75)
              {
                Value = CFDictionaryGetValue(v75, @"Addresses");
                if (Value)
                {
                  v58 = CFRetain(Value);
                  CFDictionarySetValue(v61, @"RegisteredAddresses", v58);
LABEL_117:
                  SCDynamicStoreSetValue(v45, cf, v61);
                  v67 = 1;
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v59 = 0;
            }

            v58 = 0;
            goto LABEL_117;
          }

          v79 = mDNSLogCategory_Default;
          v80 = __error();
          LODWORD(v112) = strerror(*v80);
          v78 = "StoreSPSMACAddressinternal: inet_ntop failed: %s";
          v77 = v79;
        }

        else
        {
          v77 = mDNSLogCategory_Default;
          v78 = "StoreSPSMACAddressinternal: SPSCreateDict() Could not create CFDictionary dict";
        }

        LogMsgWithLevel(v77, OS_LOG_TYPE_DEFAULT, v78, v68, v69, v70, v71, v72, v112);
        v58 = 0;
        v59 = 0;
        v60 = 0;
        goto LABEL_68;
      }
    }
  }

LABEL_112:
  if (*(v5 + 152))
  {
    *(v5 + 180) = *(v5 + 64);
  }
}

void ClearKeepaliveProxyRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 12640);
  v9 = &unk_100178000;
  if (v8)
  {
    v10 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v8 + 8), (*(v8 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "ClearKeepaliveProxyRecords ERROR m->CurrentRecord already set %s", v11, v12, v13, v14, v15, a1 + 47032);
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    p_opt_inst_meths = &OBJC_PROTOCOL___NSURLSessionDelegate.opt_inst_meths;
    do
    {
      if (*(a3 + 32) == a4 && *(a2 + 2) == *(a3 + 126) && *(a2 + 4) == *(a3 + 128) && *(a2 + 6) == *(a3 + 130) && *(a1 + 37924) == 10)
      {
        v17 = *(a1 + 37952);
        v18 = *v17 ? *v17 + 1 : 0;
        if ((p_opt_inst_meths[303])(&v17[v18], "\n_keepalive"))
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v30 = *(v9 + 434);
            v19 = p_opt_inst_meths;
            v20 = v9;
            v21 = *(a2 + 1);
            v28 = *(a1 + 19888);
            v29 = *(a3 + 125);
            GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), (a1 + 47032));
            v9 = v20;
            p_opt_inst_meths = v19;
            LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, "ClearKeepaliveProxyRecords: Removing %3d H-MAC %.6a I-MAC %.6a %d %d %s", v22, v23, v24, v25, v26, v28);
          }

          DeregisterProxyRecord(a1, a3);
        }
      }

      v27 = *(a1 + 12640);
      if (v27 == a3)
      {
        v27 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v27;
    }

    while (v27);
  }
}

void ClearIdenticalProxyRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 12640);
  if (v6)
  {
    v7 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "ClearIdenticalProxyRecords ERROR m->CurrentRecord already set %s", v8, v9, v10, v11, v12, a1 + 47032);
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    do
    {
      if (*(a1 + 37944) == *(a3 + 32) && *(a2 + 2) == *(a3 + 126) && *(a2 + 4) == *(a3 + 128) && *(a2 + 6) == *(a3 + 130) && *(a3 + 24) == *(a1 + 37936) && resource_records_have_same_dnssec_rr_category(*(a3 + 64), *(a1 + 37976)) && *(a3 + 12) == *(a1 + 37924) && *(a3 + 14) == *(a1 + 37926) && *(a3 + 20) == *(a1 + 37932) && *(a3 + 28) == *(a1 + 37940) && SameRDataBody(a3 + 8, (*(a1 + 37960) + 4), SameDomainName) && SameDomainNameBytes(*(a3 + 40), *(a1 + 37952)))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v22 = mDNSLogCategory_Default;
          v19 = *(a2 + 1);
          v20 = *(a1 + 19888);
          v21 = *(a3 + 125);
          GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), (a1 + 47032));
          LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, "ClearIdenticalProxyRecords: Removing %3d H-MAC %.6a I-MAC %.6a %d %d %s", v13, v14, v15, v16, v17, v20);
        }

        DeregisterProxyRecord(a1, a3);
      }

      v18 = *(a1 + 12640);
      if (v18 == a3)
      {
        v18 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v18;
    }

    while (v18);
  }
}

uint64_t GetLabelDecimalValue(unsigned __int8 *a1, _BYTE *a2)
{
  result = 4294901747;
  v4 = *a1;
  if ((v4 - 4) >= 0xFFFFFFFD)
  {
    v5 = 0;
    v6 = a1 + 1;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v5 = v7 + 10 * v5 - 48;
      if (!--v4)
      {
        if (v5 <= 255)
        {
          result = 0;
          *a2 = v5;
        }

        return result;
      }
    }
  }

  return result;
}

void SPSRecordCallback(uint64_t a1, char *a2, int a3)
{
  if (a3 == -65792)
  {
    --*(a1 + 19888);
    if (!a2)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!a3)
  {
    return;
  }

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
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_11:
    GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), (a1 + 47032));
    v20 = 67109635;
    *v21 = a3;
    *&v21[4] = 2160;
    *&v21[6] = 1752392040;
    *&v21[14] = 2085;
    *&v21[16] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SPS Callback %d %{sensitive, mask.hash}s", &v20, 0x1Cu);
  }

LABEL_12:
  if (a3 != -65548)
  {
    return;
  }

  mDNS_Lock_(a1, "SPSRecordCallback", 13145);
  v9 = mDNSLogCategory_SPS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (a1 + 12656);
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        v13 = v12;
        if (v12[444] == *(a2 + 4))
        {
          goto LABEL_28;
        }
      }

      v13 = 0;
LABEL_28:
      if (v12)
      {
        v14 = v13 + 3606;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v9 = mDNSLogCategory_SPS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 12656);
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (v10[444] == *(a2 + 4))
        {
          goto LABEL_32;
        }
      }

      v11 = 0;
LABEL_32:
      if (v10)
      {
        v14 = v11 + 3606;
      }

      else
      {
        v14 = 0;
      }

LABEL_35:
      GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), (a1 + 47032));
      v20 = 136447491;
      *v21 = v14;
      *&v21[8] = 2160;
      *&v21[10] = 1752392040;
      *&v21[18] = 1045;
      *&v21[20] = 6;
      v22 = 2101;
      v23 = a2 + 126;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2085;
      v27 = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Conflicting mDNS -- waking %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P %{sensitive, mask.hash}s", &v20, 0x3Au);
    }
  }

  if (*(a2 + 126))
  {
    SendWakeup(a1, *(a2 + 4), a2 + 132, (a2 + 138), 0);
    ScheduleWakeup(a1, *(a2 + 4), a2 + 63, v15, v16, v17, v18, v19, v20);
  }

  mDNS_Unlock_(a1, "SPSRecordCallback", 13153);
  --*(a1 + 19888);
LABEL_39:
  free(a2);
LABEL_40:
  mDNS_UpdateAllowSleep(a1);
}

void ScheduleWakeup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!*a3)
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

      v22 = 0;
      v19 = &v22;
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v21) = 0;
      v19 = &v21;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ScheduleWakeup ERROR: Target HMAC is zero", v19, 2u);
    return;
  }

  ScheduleWakeupForList(a1, a2, a3, *(a1 + 12624), a5, a6, a7, a8, v21);
  v16 = *(a1 + 12616);

  ScheduleWakeupForList(a1, a2, a3, v16, v12, v13, v14, v15, a9);
}

void ScheduleWakeupForList(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*a3)
  {
    v10 = a4;
    *(a1 + 12640) = a4;
    if (a4)
    {
      do
      {
        if (*(v10 + 32) != a2 || *(v10 + 8) == 1 || *(v10 + 126) != *a3 || *(v10 + 128) != a3[1] || *(v10 + 130) != a3[2])
        {
          goto LABEL_11;
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v14 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), (a1 + 47032));
          LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "ScheduleWakeupForList: Scheduling wakeup packets for %s", v15, v16, v17, v18, v19, a1 + 47032);
        }

        mDNS_Deregister_internal(a1, v10, 0);
        v20 = *(a1 + 12640);
        if (v20 == v10)
        {
LABEL_11:
          v20 = *v10;
          *(a1 + 12640) = *v10;
        }

        v10 = v20;
      }

      while (v20);
    }
  }

  else
  {
    v21 = mDNSLogCategory_Default;

    LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "ScheduleWakeupForList ERROR: Target HMAC is zero", a4, a5, a6, a7, a8, a9);
  }
}

void DeregisterProxyRecord(uint64_t a1, uint64_t a2)
{
  *(a2 + 130) = 0;
  *(a2 + 126) = 0;
  *(a2 + 192) = 0;
  mDNS_Deregister_internal(a1, a2, 0);
  v10 = *(a1 + 15112);
  if (v10 && v10 != *(a1 + 37944))
  {
    mDNSPlatformUpdateProxyList(v10, v3, v4, v5, v6, v7, v8, v9);
  }

  *(a1 + 15112) = *(a1 + 37944);
}

void mDNS_StartDomainEnumeration()
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartDomainEnumeration", 16322);
  v0 = qword_100170968;
  if (qword_100170968)
  {
    while (!SameDomainNameBytes(v0, "\x05local"))
    {
      v0 = *(v0 + 296);
      if (!v0)
      {
        goto LABEL_9;
      }
    }

    v1 = *(v0 + 272);
    if (!v1)
    {
      v1 = malloc_type_calloc(1uLL, 0x2D0uLL, 0xAD894E89uLL);
      if (!v1)
      {
        __break(1u);
        return;
      }

      *(v0 + 272) = v1;
    }

    ++v1[177];
    mDNS_SetUpDomainEnumeration(mDNSStorage, v0, 2);
  }

LABEL_9:

  mDNS_Unlock_(mDNSStorage, "mDNS_StartDomainEnumeration", 16355);
}

uint64_t UpdateInterfaceProtocols(uint64_t result)
{
  *(result + 17) = 0;
  v1 = xmmword_100170388;
  if (xmmword_100170388)
  {
    v2 = *(result + 3552);
    do
    {
      if (v1[444] == v2)
      {
        v3 = *(v1 + 890);
        if (v3 == 6)
        {
          if (*(v1 + 3671))
          {
            *(result + 18) = 1;
          }
        }

        else if (v3 == 4)
        {
          if (*(v1 + 3671))
          {
            *(result + 17) = 1;
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void AdjustAddressRecordSetsEx(uint64_t a1, int a2)
{
  v2 = *(a1 + 3552);
  if (AWDLInterfaceID)
  {
    v3 = AWDLInterfaceID == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = &unk_100164000;
    if (!WiFiAwareInterfaceID || WiFiAwareInterfaceID != v2)
    {
      v7 = a2 ? 2376 : 24;
      v8 = xmmword_100170388;
      FirstAddressRecord = GetFirstAddressRecordEx(xmmword_100170388, a2);
      if (v8)
      {
        v10 = FirstAddressRecord;
        do
        {
          v11 = v8[444];
          if (AWDLInterfaceID)
          {
            v12 = AWDLInterfaceID == v11;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            goto LABEL_38;
          }

          v13 = v4[259];
          if (v13 && v13 == v11)
          {
            goto LABEL_38;
          }

          v15 = v8 + v7;
          if (*(v8 + v7 + 96) != a1 + v7)
          {
            goto LABEL_38;
          }

          if (v10)
          {
            v16 = v10;
          }

          else
          {
            v16 = (v8 + v7);
          }

          *(v15 + 12) = v16;
          v17 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_31:
              GetRRDisplayString_rdb(v15 + 8, (*(v15 + 6) + 4), word_1001789D0);
              *buf = 141558275;
              v21 = 1752392040;
              v22 = 2085;
              v23 = word_1001789D0;
              v4 = &unk_100164000;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Changed RRSet for %{sensitive, mask.hash}s", buf, 0x16u);
            }
          }

          else
          {
            v17 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_31;
            }
          }

          v18 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_37:
              v19 = *(v15 + 12);
              *buf = 134217984;
              v21 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "New RRSet:        %lx", buf, 0xCu);
            }
          }

          else
          {
            v18 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_37;
            }
          }

LABEL_38:
          v8 = *v8;
        }

        while (v8);
      }
    }
  }
}

void RestartARPProbing(_DWORD *a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 190) = 3;
  ++*(a2 + 189);
  v2 = a1[16];
  if (*(a2 + 191) == 4 && v2 - *(a2 + 284) >= 0)
  {
    InitializeLastAPTime(a1, a2);
  }

  else
  {
    *(a2 + 191) = 4;
    *(a2 + 280) = 1000;
    *(a2 + 284) = v2 + 9000;
    SetNextAnnounceProbeTime(a1, a2);
  }
}

void mDNSCoreReceiveRawTransportPacket(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x8_t *a7, unint64_t a8, uint64_t a9, unsigned __int16 a10)
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = a1;
  v14 = a5 == 17 || a5 == 6;
  v15 = a7 + 1;
  if (!v14)
  {
    v15 = &zeroIPPort;
  }

  v16 = *v15;
  if (a5 > 16)
  {
    if (a5 != 17)
    {
      if (a5 != 58)
      {
        goto LABEL_49;
      }

      if (a7 + a10 > a8)
      {
        return;
      }

      v29 = (a3 + 4);
      v30 = IPv6CheckSum((a3 + 4), (a4 + 4), a7, a10);
      if (v30)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v142 = v10->u8[2];
          v144 = v10->u8[3];
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "IPv6CheckSum bad %04X %02X%02X from %#a to %#a", v31, v32, v33, v34, v35, v30);
        }

        return;
      }

      v44 = v13 + 12656;
      do
      {
        v44 = *v44;
        if (!v44)
        {
          return;
        }
      }

      while (*(v44 + 3552) != a9);
      v45 = v13;
      mDNS_Lock_(v13, "mDNSCoreReceiveRawND", 18172);
      if (v10->u8[0] != 135 || (v50 = *(v13 + 12616)) == 0)
      {
LABEL_112:
        if (*a2 != *(v44 + 3600) || *(a2 + 1) != *(v44 + 3602) || *(a2 + 2) != *(v44 + 3604))
        {
          v76 = v10->u8[0] == 136 ? &v10[1] : v29;
          if (v76->i32[0] || v76->i32[1] || v76[1].i32[0] || v76[1].i32[1])
          {
            v77 = *(v45 + 12616);
            if (v77)
            {
              v78 = v44 + 3606;
              do
              {
                if (*(v77 + 32) == a9 && *(v77 + 8) != 1 && *(v77 + 144) == 6 && *(v77 + 148) == v76->i32[0] && *(v77 + 152) == v76->i32[1] && *(v77 + 156) == v76[1].i32[0] && *(v77 + 160) == v76[1].i32[1] && *(v77 + 189) <= 0x13u)
                {
                  if (*(v77 + 126) || *(v77 + 128) || *(v77 + 130))
                  {
                    RestartARPProbing(v45, v77);
                    if (*a2 == *(v77 + 132) && *(a2 + 1) == *(v77 + 134) && *(a2 + 2) == *(v77 + 136))
                    {
                      if (mDNS_LoggingEnabled == 1)
                      {
                        v158 = mDNSLogCategory_Default;
                        v10->i8[0];
                        GetRRDisplayString_rdb((v77 + 8), (*(v77 + 48) + 4), (v45 + 47032));
                        LogMsgWithLevel(v158, OS_LOG_TYPE_DEFAULT, "%-7s NDP %s from owner %.6a %.16a for %.16a -- re-starting probing for %s", v79, v80, v81, v82, v83, v78);
                      }
                    }

                    else
                    {
                      v154 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v77 + 8), (*(v77 + 48) + 4), (v45 + 47032));
                      LogMsgWithLevel(v154, OS_LOG_TYPE_DEFAULT, "%-7s Conflicting NDP from %.6a %.16a for %.16a -- waking H-MAC %.6a I-MAC %.6a %s", v84, v85, v86, v87, v88, v78);
                      ScheduleWakeup(v45, *(v77 + 32), (v77 + 126), v89, v90, v91, v92, v93, v140);
                    }
                  }

                  else if (mDNS_LoggingEnabled == 1)
                  {
                    v155 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb((v77 + 8), (*(v77 + 48) + 4), (v45 + 47032));
                    LogMsgWithLevel(v155, OS_LOG_TYPE_DEFAULT, "%-7s NDP from %.6a %.16a for %.16a -- Invalid H-MAC %.6a I-MAC %.6a %s", v94, v95, v96, v97, v98, v78);
                  }
                }

                v77 = *v77;
              }

              while (v77);
            }
          }
        }

        v99 = "mDNSCoreReceiveRawND";
        v100 = v45;
        v101 = 18248;
LABEL_210:

        mDNS_Unlock_(v100, v99, v101);
        return;
      }

      v51 = v44 + 3606;
      v52 = (v13 + 47032);
      v53 = "NDP Req from owner -- re-probing";
      v54 = &unk_10016D000;
      v55 = &unk_100178000;
      v56 = "33";
      while (1)
      {
        if (*(v50 + 32) != a9 || *(v50 + 8) == 1 || *(v50 + 144) != 6 || *(v50 + 148) != v10[1].i32[0] || *(v50 + 152) != v10[1].i32[1] || *(v50 + 156) != v10[2].i32[0] || *(v50 + 160) != v10[2].i32[1])
        {
          goto LABEL_111;
        }

        v57 = *a2;
        v153 = v51;
        if (v57 != *(v50 + 132) || *(a2 + 1) != *(v50 + 134) || (v58 = v53, *(a2 + 2) != *(v50 + 136)))
        {
          v58 = "Ignoring  NDP Request from      ";
          if (*(v50 + 191) != 4)
          {
            if (v57 != *(v44 + 3600) || *(a2 + 1) != *(v44 + 3602) || (v58 = "Creating Local NDP Cache entry  ", *(a2 + 2) != *(v44 + 3604)))
            {
              if (vorr_s8(*v29, *&vextq_s8(*v29->i8, *v29->i8, 8uLL)))
              {
                v58 = "Answering NDP Probe   from      ";
              }

              else
              {
                v58 = "Answering NDP Request from      ";
              }
            }
          }
        }

        v157 = v52;
        if (v54[208] == 1)
        {
          v149 = *(v55 + 434);
          GetRRDisplayString_rdb((v50 + 8), (*(v50 + 48) + 4), v52);
          LogMsgWithLevel(v149, OS_LOG_TYPE_DEFAULT, "%-7s %s %.6a %.16a for %.16a -- H-MAC %.6a I-MAC %.6a %s", v59, v60, v61, v62, v63, v153);
          v56 = "33";
          v55 = &unk_100178000;
          v54 = &unk_10016D000;
          v53 = "NDP Req from owner -- re-probing";
          v52 = v157;
        }

        if (v58 == v53)
        {
          v51 = v153;
          if (*(v50 + 189) > 0x13u)
          {
            if (v54[208] == 1)
            {
              v68 = *(v55 + 434);
              v69 = v52;
              GetRRDisplayString_rdb((v50 + 8), (*(v50 + 48) + 4), v52);
              v70 = v68;
              v51 = v153;
              LogMsgWithLevel(v70, OS_LOG_TYPE_DEFAULT, "Reached maximum number of restarts for probing - %s", v71, v72, v73, v74, v75, v69);
              v56 = "33";
              v55 = &unk_100178000;
              v54 = &unk_10016D000;
              v53 = "NDP Req from owner -- re-probing";
              v52 = v69;
            }

            goto LABEL_111;
          }

          v65 = v53;
          RestartARPProbing(v45, v50);
          v56 = "33";
          v55 = &unk_100178000;
          v54 = &unk_10016D000;
          v53 = v65;
        }

        else
        {
          if (v58 == "Creating Local NDP Cache entry  ")
          {
            v66 = v53;
            v67 = v54;
            mDNSPlatformSetLocalAddressCacheEntry((v50 + 144), (v50 + 132), a9, v46, v47, v48, v49, v56, v139);
LABEL_110:
            v56 = "33";
            v55 = &unk_100178000;
            v54 = v67;
            v53 = v66;
            v51 = v153;
            v52 = v157;
            goto LABEL_111;
          }

          if (v58 == "Answering NDP Request from      ")
          {
            v66 = v53;
            v67 = v54;
            SendNDP(v45, 136, 64, v50, v10 + 1, 0, v29, a2);
            goto LABEL_110;
          }

          v14 = v58 == "Answering NDP Probe   from      ";
          v51 = v153;
          if (!v14)
          {
            goto LABEL_111;
          }

          v64 = v56;
          SendNDP(v45, 136, 0, v50, v10 + 1, 0, &AllHosts_v6, v56);
          v56 = v64;
          v55 = &unk_100178000;
          v54 = &unk_10016D000;
          v53 = "NDP Req from owner -- re-probing";
        }

        v52 = v157;
LABEL_111:
        v50 = *v50;
        if (!v50)
        {
          goto LABEL_112;
        }
      }
    }

    v36 = __rev16(a7->u16[2]);
    if (v36 < 8)
    {
      return;
    }

    v37 = v36 - 8;
    if (v16 == 54028)
    {
      v41 = 0;
      if (&a7[1] + 2 > a8 || v37 < 0x6Eu)
      {
        goto LABEL_152;
      }

      if (a7[1].i8[0] == 19)
      {
        v41 = a7[1].u8[1] == 136;
        goto LABEL_152;
      }
    }

    else
    {
      if (v16 != 37905)
      {
        v41 = 1;
        goto LABEL_152;
      }

      if (&a7[1] + 1 > a8 || v37 != 1 || a7[1].u8[0] != 255)
      {
        if (&a7[1] + 4 > a8 || a7[1].i8[0] || a7[1].i8[1] || a7[1].i8[2])
        {
          v38 = 0;
          v39 = 24;
        }

        else
        {
          v39 = 36;
          if (a7[1].i8[3])
          {
            v39 = 24;
            v38 = 0;
          }

          else
          {
            v38 = -4;
          }
        }

        v40 = &a7[v39];
        v41 = 1;
        if ((v40 + 14) <= a8 && (v38 + v37) >= 0x1Cu && (*(v40 + 17) & 0x10) != 0)
        {
          v42 = *(v40 + 18);
          if (v42 == 34 || v42 == 5)
          {
            v41 = 0;
            v43 = "Ignoring";
          }

          else
          {
            v43 = "Received";
          }

          if (mDNS_LoggingEnabled != 1)
          {
            goto LABEL_156;
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte IKE ExchangeType %d", a4, a5, a6, a7, a8, v43);
        }

LABEL_152:
        if (mDNS_LoggingEnabled == 1)
        {
          v102 = "Received";
          if (!v41)
          {
            v102 = "Ignoring";
          }

          v145 = bswap32(v10->u16[0]) >> 16;
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte UDP from %#a:%d to %#a:%d", a4, a5, a6, a7, a8, v102);
        }

LABEL_156:
        LOBYTE(v10) = 0;
        if (!v41)
        {
          return;
        }

        goto LABEL_157;
      }
    }

    v41 = 0;
    goto LABEL_152;
  }

  if (a5 == 1)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring %d-byte ICMP from %#a to %#a", a4, a5, a6, a7, a8, a8 - a6);
    }

    return;
  }

  if (a5 != 6)
  {
LABEL_49:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring %d-byte IP packet unknown protocol %d from %#a to %#a", a4, a5, a6, a7, a8, a8 - a6);
    }

    return;
  }

  v156 = *v15;
  v17 = *(a1 + 12616);
  if (!v17)
  {
LABEL_29:
    v22 = v10[1].i8[5];
    v24 = (v22 & 4) == 0 && (v22 & 3) != 1;
    v16 = v156;
    if (v156 == 5632)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & ((v22 & 2) >> 1);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v26 = "Received";
      if (!v25)
      {
        v26 = "Ignoring";
      }

      v27 = bswap32(v10->u16[0]) >> 16;
      v10[1].i8[5];
      v10[1].i8[5];
      v10[1].i8[5];
      v12 = a4;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte TCP from %#a:%d to %#a:%d%s%s%s", a4, a5, a6, a7, a8, v26);
      LOBYTE(v10) = 0;
      v13 = a1;
      if (!v25)
      {
        return;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      v13 = a1;
      v12 = a4;
      if (!v25)
      {
        return;
      }
    }

    goto LABEL_157;
  }

  v146 = a7->u16[0];
  while (1)
  {
    v161 = 0;
    v162 = 0;
    v160 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v163 = 0;
    if (*(v17 + 126))
    {
      mDNS_ExtractKeepaliveInfo(v17, &v162, &v168, &v165, v164, &v161 + 1, &v161, &v163 + 1, &v163, &v160);
      if (v162)
      {
        if (v168 != 4 && (v168 != 6 || v169 | HIDWORD(v169) | v170 | HIDWORD(v168)) && v165 != 4 && (v165 != 6 || v166 | HIDWORD(v166) | v167 | HIDWORD(v165)))
        {
          v18 = HIDWORD(v161);
          if (HIDWORD(v161))
          {
            v19 = v161;
            if (v161)
            {
              v20 = HIWORD(v163);
              if (HIWORD(v163))
              {
                v21 = v163;
                if (v163)
                {
                  if (v160 && mDNSSameAddress(&v168, a4) && mDNSSameAddress(&v165, a3) && v20 == v156 && v21 == v146)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v17 = *v17;
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  v16 = v156;
  if (mDNS_LoggingEnabled == 1)
  {
    v143 = bswap32(v10->u16[0]) >> 16;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: Found a Keepalive record from %#a:%d  to %#a:%d", a4, a5, a6, a7, a8, a3);
  }

  v133 = v10[1].i8[5];
  v13 = a1;
  if ((v133 & 5) != 0)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: waking because of RST or FIN th_flags %d", a4, a5, a6, a7, a8, v10[1].u8[5]);
    }

    LODWORD(v10) = 1;
  }

  else
  {
    v134 = bswap32(v18);
    v135 = bswap32(v19);
    v136 = bswap32(v10->u32[1]);
    v137 = a8 - v10 - ((v10[1].u8[4] >> 2) & 0x3C);
    LODWORD(v10) = (bswap32(v10[1].u32[0]) - v134) >= 1 && (v136 - v135) >= 0 && v137 > 0;
    if ((v133 & 0x10) != 0 && v137 <= 0 && v135 - v136 == 1)
    {
      mDNS_SendKeepaliveACK(a1, v17);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: End %p, hlen %d, Datalen %d, pack %u, seq %u, pseq %u, ack %u, wake %d", a4, a5, a6, a7, a8, a8);
    }

    v13 = a1;
  }

  v12 = a4;
  if (v10)
  {
LABEL_157:
    mDNS_Lock_(v13, "mDNSCoreReceiveRawTransportPacket", 18404);
    v103 = *(v13 + 12616);
    if (v103)
    {
      if (v11 == 6)
      {
        v104 = "\x04_tcp";
      }

      else
      {
        v104 = "\x04_udp";
      }

      v150 = v104;
      v159 = v16;
      do
      {
        if (v103[4] == a9 && *(v103 + 8) != 1 && *(v103 + 36) && mDNSSameAddress(v103 + 36, v12))
        {
          v110 = *(v13 + 12616);
          if (v110)
          {
            while (1)
            {
              if (v110[4] == a9 && *(v110 + 63) == *(v103 + 63) && *(v110 + 64) == *(v103 + 64) && *(v110 + 65) == *(v103 + 65) && *(v110 + 8) != 1 && *(v110 + 6) == 33 && *(v110[6] + 8) == v16)
              {
                v111 = v110[5];
                v112 = *v111 ? *v111 + 1 : 0;
                v113 = &v111[v112];
                v114 = *v113 ? *v113 + 1 : 0;
                if (SameDomainLabelPointer(&v113[v114], v150))
                {
                  break;
                }
              }

              v110 = *v110;
              if (!v110)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
LABEL_182:
            if (v16 == 37905)
            {
              v110 = v103;
            }

            else
            {
              v110 = 0;
            }
          }

          if ((v10 & (v110 == 0)) != 0)
          {
            v115 = v103;
          }

          else
          {
            v115 = v110;
          }

          if (v115)
          {
            v116 = mDNSLogCategory_Default;
            v117 = (v13 + 12656);
            while (1)
            {
              v117 = *v117;
              if (!v117)
              {
                break;
              }

              v118 = v117;
              if (v117[444] == v103[4])
              {
                goto LABEL_199;
              }
            }

            v118 = 0;
LABEL_199:
            if (v117)
            {
              v121 = v118 + 3606;
            }

            else
            {
              v121 = 0;
            }

            GetRRDisplayString_rdb(v115 + 8, (*(v115 + 6) + 4), (v13 + 47032));
            LogMsgWithLevel(v116, OS_LOG_TYPE_DEFAULT, "Waking host at %s %#a H-MAC %.6a I-MAC %.6a for %s", v122, v123, v124, v125, v126, v121);
            ScheduleWakeup(v13, v103[4], v103 + 63, v127, v128, v129, v130, v131, v141);
            v16 = v159;
          }

          else if (mDNS_LoggingEnabled == 1)
          {
            v119 = (v13 + 12656);
            while (1)
            {
              v119 = *v119;
              if (!v119)
              {
                break;
              }

              v120 = v119;
              if (v119[444] == v103[4])
              {
                goto LABEL_204;
              }
            }

            v120 = 0;
LABEL_204:
            if (v119)
            {
              v132 = v120 + 3606;
            }

            else
            {
              v132 = 0;
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Sleeping host at %s %#a %.6a has no service on %#s %d", v105, v106, v107, v108, v109, v132);
          }
        }

        v103 = *v103;
      }

      while (v103);
    }

    v99 = "mDNSCoreReceiveRawTransportPacket";
    v100 = v13;
    v101 = 18429;
    goto LABEL_210;
  }
}

void mDNS_SendKeepaliveACK(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v19 = 0;
  v20 = 0;
  mDNS_ExtractKeepaliveInfo(a2, &v30, &v25, &v22, v21, &v29 + 1, &v29, &v20, &v19, &v28);
  if (v30 && v25 != 4 && (v25 != 6 || v26 | HIDWORD(v26) | v27 | HIDWORD(v25)) && v22 != 4 && (v22 != 6 || v23 | HIDWORD(v23) | v24 | HIDWORD(v22)) && HIDWORD(v29) && (v9 = v29, v29) && v20 && v19 && (v10 = v28) != 0)
  {
    HIDWORD(v29) = bswap32(bswap32(HIDWORD(v29)) + 1);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SendKeepaliveACK: laddr %#a raddr %#a lport %d rport %d", v4, v5, v6, v7, v8, &v25);
    mDNSPlatformSendKeepalive(&v25, &v22, &v20, &v19, HIDWORD(v29), v9, v10, v11);
  }

  else if (mDNS_LoggingEnabled == 1)
  {
    v12 = mDNSLogCategory_Default;
    v13 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v13);
    LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "mDNS_SendKeepaliveACK: not a valid record %s for keepalive", v14, v15, v16, v17, v18, v13);
  }
}

void SetDynDNSHostNameIfChanged(_BYTE *a1)
{
  if (!SameDomainNameBytes(a1, byte_100170A70))
  {
    if (byte_100170A70[0])
    {
      mDNS_RemoveDynDNSHostName(byte_100170A70);
    }

    v2 = a1;
    while (1)
    {
      if (!v2)
      {
        goto LABEL_18;
      }

      v3 = *v2;
      if (v3 > 0x3F)
      {
        goto LABEL_18;
      }

      if (!*v2)
      {
        break;
      }

      v2 += v3 + 1;
      if (v2 - a1 > 255)
      {
        goto LABEL_18;
      }
    }

    v4 = v2 - a1 + 1;
    if (v4 >= 0x101u)
    {
LABEL_18:
      byte_100170A70[0] = 0;
      return;
    }

    memcpy(byte_100170A70, a1, v4);
    if (byte_100170A70[0])
    {
      mDNSPlatformDynDNSHostNameStatusChanged(byte_100170A70, 1, v5, v6, v7, v8, v9, v10);
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_AddDynDNSHostName %##s", v11, v12, v13, v14, v15, byte_100170A70);
      }

      v16 = &xmmword_100170B70;
      v17 = xmmword_100170B70;
      if (!xmmword_100170B70)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v18 = SameDomainNameBytes(byte_100170A70, (v17 + 208));
        v24 = *v16;
        if (v18)
        {
          break;
        }

        v17 = *v24;
        v16 = *v16;
        if (!*v24)
        {
          goto LABEL_22;
        }
      }

      if (v24)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DynDNSHostName %##s already in list", v19, v20, v21, v22, v23, byte_100170A70);
      }

      else
      {
LABEL_22:
        v25 = malloc_type_calloc(1uLL, 0xB10uLL, 0x26571802uLL);
        if (v25)
        {
          *v16 = v25;
          v26 = byte_100170A70;
          do
          {
            if (!v26)
            {
              break;
            }

            v27 = *v26;
            if (v27 > 0x3F)
            {
              break;
            }

            if (!*v26)
            {
              v28 = v26 - mDNSStorage - 14423;
              if (v28 <= 0x100u)
              {
                memcpy(v25 + 208, byte_100170A70, v28);
                goto LABEL_32;
              }

              break;
            }

            v26 += v27 + 1;
          }

          while (v26 - mDNSStorage - 14424 <= 255);
          v25[208] = 0;
LABEL_32:
          v29 = *v16;
          *(v29 + 202) = 4;
          *(v29 + 496) = 4;
          *(v29 + 352) = DynDNSHostNameCallback;
          *(*v16 + 2824) = 0;
          v30 = *v16;

          AdvertiseHostname(mDNSStorage, v30);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void mDNS_StartExit()
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartExit", 19391);
  v0 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v1 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    goto LABEL_10;
  }

  v0 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit", buf, 2u);
  }

LABEL_11:
  v3 = dword_10016D258 + 5000;
  if ((dword_10016D258 + 5000) <= 1)
  {
    v3 = 1;
  }

  dword_10016D264 = v3;
  mDNSCoreBeSleepProxyServer_internal(mDNSStorage, 0, 0, 0, 0, 0);
  for (i = xmmword_100170B70; xmmword_100170B70; i = xmmword_100170B70)
  {
    mDNS_RemoveDynDNSHostName((i + 208));
  }

  v10 = SearchList;
  if (SearchList)
  {
    do
    {
      while (1)
      {
        v11 = v10[471];
        if (!v11)
        {
          break;
        }

        v10[471] = *v11;
        mDNS_Deregister_internal(mDNSStorage, (v11 + 1), 0);
      }

      v10 = *v10;
    }

    while (v10);
  }

  for (j = qword_100170968; j; j = *(j + 296))
  {
    v13 = 0;
    do
    {
      mDNS_DeregisterDomainsDiscoveredForDomainEnumeration(mDNSStorage, j, v13, v4, v5, v6, v7, v8);
      v13 = (v13 + 1);
    }

    while (v13 != 5);
  }

  DeadvertiseAllInterfaceRecords(mDNSStorage, 3);
  while (1)
  {
    v14 = xmmword_100170B98;
    if (!xmmword_100170B98)
    {
      break;
    }

    mDNS_StopNATOperation_internal(mDNSStorage, xmmword_100170B98);
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
    *(v14 + 176) = 0;
    *(v14 + 164) = 0;
  }

  v15 = qword_100170378;
  if (qword_100170378)
  {
    v16 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v16 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    GetRRDisplayString_rdb((v15 + 8), (*(v15 + 48) + 4), word_1001789D0);
    *buf = 141558275;
    *v34 = 1752392040;
    *&v34[8] = 2085;
    *&v34[10] = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: ERROR m->CurrentRecord already set %{sensitive, mask.hash}s", buf, 0x16u);
  }

LABEL_36:
  v19 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v20 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_45:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Deregistering duplicate resource records", buf, 2u);
    }
  }

  else
  {
    v19 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_45;
    }
  }

  DeregLoop(*(&xmmword_100170360 + 1));
  v22 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
  }

  else
  {
    v22 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Deregistering resource records", buf, 2u);
LABEL_53:
  DeregLoop(xmmword_100170360);
  if (dword_10016D27C - dword_10016D258 <= 999)
  {
    dword_10016D27C = dword_10016D258;
    HIDWORD(qword_10016D268) = 0;
  }

  v23 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v24 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  if (xmmword_100170360)
  {
    if (v25)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v26 = "mDNS_StartExit: Sending final record deregistrations";
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v26 = "mDNS_StartExit: Sending final record deregistrations";
    }
  }

  else if (v25)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v26 = "mDNS_StartExit: No deregistering records remain";
  }

  else
  {
    v23 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v26 = "mDNS_StartExit: No deregistering records remain";
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
LABEL_73:
  v27 = *(&xmmword_100170360 + 1);
  if (*(&xmmword_100170360 + 1))
  {
    while (1)
    {
      v28 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

LABEL_83:
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_84;
      }
    }

    v28 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

LABEL_82:
    v31 = v27[8];
    GetRRDisplayString_rdb(v27 + 8, (*(v27 + 6) + 4), word_1001789D0);
    *buf = 67109635;
    *v34 = v31;
    *&v34[4] = 2160;
    *&v34[6] = 1752392040;
    *&v34[14] = 2085;
    *&v34[16] = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Should not still have Duplicate Records remaining: %02X %{sensitive, mask.hash}s", buf, 0x1Cu);
    goto LABEL_83;
  }

LABEL_84:
  if (dword_10016D228)
  {
    DiscardDeregistrations(mDNSStorage);
  }

  mDNS_Unlock_(mDNSStorage, "mDNS_StartExit", 19506);
  v32 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  else
  {
    v32 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: done", buf, 2u);
}

void DeregLoop(uint64_t a1)
{
  qword_100170378 = a1;
  if (a1)
  {
    v1 = a1;
    while (1)
    {
      v2 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = (v1 + 8);
        v5 = *(v1 + 8);
        if (v5 == 1)
        {
          v6 = "Accelerating";
        }

        else
        {
          v6 = "Initiating  ";
        }

LABEL_16:
        GetRRDisplayString_rdb(v4, (*(v1 + 48) + 4), word_1001789D0);
        *buf = 136447235;
        v10 = v6;
        v11 = 2048;
        v12 = v1;
        v13 = 1024;
        v14 = v5;
        v15 = 2160;
        v16 = 1752392040;
        v17 = 2085;
        v18 = word_1001789D0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeregLoop: %{public}s deregistration for %p %02X %{sensitive, mask.hash}s", buf, 0x30u);
      }

LABEL_17:
      if (*(v1 + 8) == 1)
      {
        if (*(v1 + 191) >= 2u)
        {
          *(v1 + 191) = 1;
          *(v1 + 284) = dword_10016D258 - *(v1 + 280);
          SetNextAnnounceProbeTime(mDNSStorage, v1);
        }
      }

      else
      {
        mDNS_Deregister_internal(mDNSStorage, v1, 1);
      }

      v8 = qword_100170378;
      if (qword_100170378 == v1)
      {
        v8 = *v1;
        qword_100170378 = *v1;
      }

      v1 = v8;
      if (!v8)
      {
        return;
      }
    }

    v2 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v4 = (v1 + 8);
    v5 = *(v1 + 8);
    if (v5 == 1)
    {
      v6 = "Accelerating";
    }

    else
    {
      v6 = "Initiating  ";
    }

    goto LABEL_16;
  }
}

void mDNS_FinalExit()
{
  v0 = dword_10016D30C;
  v1 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v2 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    goto LABEL_10;
  }

  v1 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit: mDNSPlatformClose", buf, 2u);
  }

LABEL_11:
  v4 = mDNSStorage[0];
  if (*(mDNSStorage[0] + 568))
  {
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(*(mDNSStorage[0] + 560));
    CFRunLoopRemoveSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    IODeregisterForSystemPower((mDNSStorage[0] + 572));
    IOServiceClose(*(mDNSStorage[0] + 568));
    IONotificationPortDestroy(*(mDNSStorage[0] + 560));
    v4 = mDNSStorage[0];
    *(mDNSStorage[0] + 568) = 0;
  }

  if (*(v4 + 504))
  {
    v7 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v7, *(mDNSStorage[0] + 512), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(mDNSStorage[0] + 512));
    v4 = mDNSStorage[0];
    v8 = *(mDNSStorage[0] + 512);
    if (v8)
    {
      CFRelease(v8);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 512) = 0;
    }

    v9 = *(v4 + 504);
    if (v9)
    {
      CFRelease(v9);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 504) = 0;
    }
  }

  if (*(v4 + 520))
  {
    v10 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v10, *(mDNSStorage[0] + 520), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(mDNSStorage[0] + 520));
    v4 = mDNSStorage[0];
    v11 = *(mDNSStorage[0] + 520);
    if (v11)
    {
      CFRelease(v11);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 520) = 0;
    }
  }

  v12 = *(v4 + 528);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
    *(mDNSStorage[0] + 528) = -1;
  }

  if (&_D2DTerminate)
  {
    v13 = D2DTerminate();
    v14 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v13)
    {
      v17 = v13;
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        *v39 = v17;
        v18 = "D2DTerminate failed: %u";
      }

      else
      {
        v14 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        *v39 = v17;
        v18 = "D2DTerminate failed: %u";
      }

      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 8;
    }

    else
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v18 = "D2DTerminate succeeded";
      }

      else
      {
        v14 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v18 = "D2DTerminate succeeded";
      }

      v19 = v14;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 2;
    }

    _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
  }

LABEL_44:
  v22 = time(0);
  for (i = *mDNSStorage[0]; i; i = *(i + 3680))
  {
    if (*(i + 3696))
    {
      *(i + 3704) = v22;
    }

    *(i + 3696) = 0;
  }

  ClearInactiveInterfaces(v22);
  CloseSocketSet(mDNSStorage[0] + 8);
  v24 = 0;
  v25 = 0;
  do
  {
    for (j = &mDNSStorage[v24]; ; ReleaseCacheGroup(mDNSStorage, j + 34))
    {
      v27 = j[34];
      if (!v27)
      {
        break;
      }

      v29 = (v27 + 16);
      v28 = *(v27 + 16);
      if (v28)
      {
        do
        {
          *v29 = *v28;
          if (v28[12])
          {
            ++v25;
          }

          ReleaseCacheRecord(mDNSStorage, v28);
          v28 = *v29;
        }

        while (*v29);
      }

      *(v27 + 24) = v29;
    }

    ++v24;
  }

  while (v24 != 499);
  v30 = qword_10016D314;
  if (v25 != qword_10016D314)
  {
    v31 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }
    }

    else
    {
      v31 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }
    }

    *buf = 67109632;
    *v39 = v0;
    *&v39[4] = 1024;
    *&v39[6] = v25;
    *v40 = 1024;
    *&v40[2] = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "*** ERROR *** rrcache_totalused %u; rrcache_active %u != m->rrcache_active %u", buf, 0x14u);
  }

LABEL_64:
  v32 = xmmword_100170360;
  if (xmmword_100170360)
  {
    while (1)
    {
      v33 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

LABEL_74:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_75;
      }
    }

    v33 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

LABEL_73:
    v36 = v32[8];
    GetRRDisplayString_rdb(v32 + 8, (*(v32 + 6) + 4), word_1001789D0);
    *buf = 134218755;
    *v39 = v32;
    *&v39[8] = 1024;
    *v40 = v36;
    *&v40[4] = 2160;
    v41 = 1752392040;
    v42 = 2085;
    v43 = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit failed to send goodbye for: %p %02X %{sensitive, mask.hash}s", buf, 0x26u);
    goto LABEL_74;
  }

LABEL_75:
  if (qword_100172038)
  {
    ref_count_obj_release(qword_100172038);
    qword_100172038 = 0;
  }

  v37 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  else
  {
    v37 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit: done", buf, 2u);
}

uint64_t _DNS64RestartQuestion(uint64_t a1, uint64_t a2, int a3)
{
  mDNS_StopQuery_internal(a1, a2);
  *(a2 + 673) = a3;
  if ((a3 - 3) >= 2)
  {
    v7 = (a2 + 376);
    *(a2 + 674) = *(a2 + 376);
    *(a2 + 681) = *(a2 + 383);
    v8 = "\bipv4only\x04arpa";
    do
    {
      if (!v8)
      {
        break;
      }

      v9 = *v8;
      if (v9 > 0x3F)
      {
        break;
      }

      if (!*v8)
      {
        v10 = v8 - "\bipv4only\x04arpa" + 1;
        if (v10 <= 0x100u)
        {
          memcpy(v7, "\bipv4only\x04arpa", v10);
          goto LABEL_12;
        }

        break;
      }

      v8 += v9 + 1;
    }

    while (v8 - "\bipv4only\x04arpa" <= 255);
    *v7 = 0;
LABEL_12:
    if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
    {
      dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
    }

    *(a2 + 200) = _DNS64IPv4OnlyFQDNHash_sHash;
    v6 = 28;
  }

  else
  {
    v6 = 1;
  }

  *(a2 + 342) = v6;

  return mDNS_StartQuery_internal(a1, a2);
}

uint64_t _DNS64TestIPv6Synthesis(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = 0;
  v10 = 0;
  if (_DNS64GetPrefixes(a1, a2, &v11, &v10))
  {
    v7 = 0;
    v5 = v11;
    if (!v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v9 = *a3;
  v4 = v10;
  v5 = v11;
  if (!v10)
  {
LABEL_6:
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v6 = v11;
  while (!nw_nat64_synthesize_v6())
  {
    v6 += 16;
    if (!--v4)
    {
      goto LABEL_6;
    }
  }

  v7 = 1;
  if (v5)
  {
LABEL_9:
    free(v5);
  }

  return v7;
}

uint64_t _DNS64GetPrefixes(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
  {
    dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
  }

  v8 = 4294901742;
  v9 = CacheGroupForName(a1, _DNS64IPv4OnlyFQDNHash_sHash, "\bipv4only\x04arpa");
  if (!v9)
  {
    return v8;
  }

  v10 = v9;
  v11 = v9[2];
  if (!v11)
  {
    return v8;
  }

  v12 = 0;
  do
  {
    v13 = *(v11 + 56);
    if (v13)
    {
      v13 = *(v13 + 24);
    }

    if (v13 == a2 && *(v11 + 12) == 28 && *(v11 + 8) != 240 && !*(v11 + 32))
    {
      ++v12;
    }

    v11 = *v11;
  }

  while (v11);
  if (!v12)
  {
    return v8;
  }

  result = malloc_type_calloc(v12, 0x10uLL, 0xE1FCF8BEuLL);
  if (result)
  {
    v15 = result;
    v16 = v10[2];
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = *(v16 + 56);
        if (v18)
        {
          v18 = *(v18 + 24);
        }

        if (v18 == a2 && *(v16 + 12) == 28 && *(v16 + 8) != 240 && !*(v16 + 32))
        {
          *(result + 16 * v17++) = *(*(v16 + 48) + 4);
        }

        v16 = *v16;
        if (v16)
        {
          v19 = v17 >= v12;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
    }

    v20 = nw_nat64_copy_prefixes_from_ipv4only_records();
    free(v15);
    if (v20 < 1)
    {
      return 4294901759;
    }

    v8 = 0;
    *a3 = 0;
    *a4 = v20;
    return v8;
  }

  __break(1u);
  return result;
}

void DNS64AnswerCurrentQuestion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v22, 0, 268);
  v17 = 0;
  v4 = *(a1 + 208);
  v5 = *(v4 + 80);
  if (v5)
  {
    v16 = 0;
    if (_DNS64GetPrefixes(a1, v5, &v17, &v16))
    {
      v12 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_14;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 32);
    v18[0] = *a2;
    v18[1] = v9;
    v10 = *(a2 + 48);
    v19 = v8;
    v21 = v10;
    WORD2(v18[0]) = 28;
    WORD6(v18[0]) = 16;
    LOWORD(v22[0]) = 16;
    v20 = v22;
    v15 = *(*(a2 + 40) + 4);
    v11 = v16;
    v12 = v17;
    if (v16)
    {
      v13 = 0;
      do
      {
        while (!nw_nat64_synthesize_v6())
        {
          if (++v13 >= v11)
          {
            goto LABEL_13;
          }
        }

        *(v22 + 4) = 0uLL;
        (*(v4 + 152))(a1, v4, v18, a3);
        ++v13;
      }

      while (*(a1 + 208) == v4 && v13 < v11);
    }

LABEL_13:
    if (v12)
    {
LABEL_14:
      free(v12);
    }
  }
}

void _dns_obj_domain_name_finalize(uint64_t a1)
{
  if (*(a1 + 37) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    ref_count_obj_release(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _dns_obj_domain_name_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_10;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 32) = domain_name_labels_compute_hash(*(a1 + 16));
    *(a1 + 36) = 1;
  }

  if (*(a2 + 36) == 1)
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = domain_name_labels_compute_hash(v7);
    *(a2 + 32) = v8;
    *(a2 + 36) = 1;
  }

  if (*(a1 + 32) != v8)
  {
LABEL_10:
    if (a3)
    {
      return 2;
    }
  }

  return domain_name_labels_canonical_compare();
}

void *dns_obj_domain_name_create_with_labels(_BYTE *a1, int *a2)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = &_dns_obj_domain_name_kind;
  result[1] = &_dns_obj_domain_name_kind;
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
  ++*v5;
  v15 = 0;
  v8 = domain_name_labels_create(a1, &v15);
  v9 = v15;
  if (v15)
  {
    if (!v8 || (free(v8), (v9 = v15) != 0))
    {
      v14 = 0;
      if (!a2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = *v8;
    v11 = v8;
    if (*v8)
    {
      v11 = v8;
      do
      {
        v12 = &v11[v10];
        v13 = v12[1];
        v11 = v12 + 1;
        v10 = v13;
      }

      while (v13);
    }

    v5[2] = v8;
    v5[3] = v11 - v8 + 1;
    *(v5 + 8) = 0;
    *(v5 + 18) = 256;
    v5[5] = 0;
  }

  v9 = 0;
  v14 = v5;
  v5 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v9;
  }

LABEL_13:
  if (v5)
  {
    ref_count_obj_release(v5);
  }

  return v14;
}

void *dns_obj_domain_name_create_concatenation(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  memset(__dst, 0, sizeof(__dst));
  domain_name_labels_concatenate(a1, a2, __dst, &v5);
  if (v5)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = dns_obj_domain_name_create_with_labels(__dst, &v5);
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v5;
  return result;
}

void *dns_obj_domain_name_create_with_cstring(char *a1, _DWORD *a2)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_23;
  }

  if (v3 == 46)
  {
    if (a1[1])
    {
      LOBYTE(v3) = 46;
      goto LABEL_5;
    }

LABEL_23:
    v16 = 0;
    result = dns_obj_domain_name_create_with_labels(v17, &v16);
    if (a2)
    {
LABEL_24:
      *a2 = v16;
    }

    return result;
  }

LABEL_5:
  v4 = v17;
  while (2)
  {
    if (v4 + 64 >= &v18 + 15)
    {
      v5 = &v18 + 15;
    }

    else
    {
      v5 = v4 + 64;
    }

    v6 = v4 + 1;
    v7 = v4 + 1;
    v8 = a1;
    do
    {
      a1 = (v8 + 1);
      if (v3 == 92)
      {
        v9 = *a1;
        if (!*a1)
        {
          v15 = -6750;
          goto LABEL_28;
        }

        LOBYTE(v3) = *a1;
        a1 = (v8 + 2);
        if (v9 - 48 <= 9)
        {
          v10 = *a1;
          if ((v10 - 48) <= 9)
          {
            v11 = v8[3];
            if ((v11 - 48) <= 9)
            {
              v12 = 100 * v9 + 10 * v10 + v11;
              v13 = (v8 + 4);
              if (v12 < 5584)
              {
                a1 = v13;
                LOBYTE(v3) = v12 + 48;
              }
            }
          }
        }
      }

      else if (v3 == 46)
      {
        break;
      }

      if (v7 >= v5)
      {
        v15 = -6751;
        goto LABEL_28;
      }

      *v7++ = v3;
      LOBYTE(v3) = *a1;
      v8 = a1;
    }

    while (*a1);
    if (v7 != v6)
    {
      *v4 = v7 - v6;
      *v7 = 0;
      LOBYTE(v3) = *a1;
      v4 = v7;
      if (*a1)
      {
        continue;
      }

      goto LABEL_23;
    }

    break;
  }

  v15 = -6742;
LABEL_28:
  result = 0;
  v16 = v15;
  if (a2)
  {
    goto LABEL_24;
  }

  return result;
}

void _mdns_cache_metadata_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    os_release(v3);
    *(a1 + 32) = 0;
  }
}

void *_mdns_cache_metadata_copy_description(void *a1, int a2)
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

uint64_t mdns_cache_metadata_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_cache_metadata_kind;
    *(v0 + 16) = &_mdns_cache_metadata_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  return v1;
}

void mdns_cache_metadata_set_extended_dns_error(uint64_t a1, void *object)
{
  if (object)
  {
    os_retain(object);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    os_release(v4);
  }

  *(a1 + 32) = object;
}

NSObject *_mdns_dispatch_create_monotonic_timer(unsigned int a1, uint64_t a2, unsigned int a3, NSObject *a4)
{
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a4);
  if (v7)
  {
    if (a3 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = a3;
    }

    v9 = (10000 * v8) * a1;
    v10 = dispatch_time(0x8000000000000000, 1000000 * a1);
    dispatch_source_set_timer(v7, v10, a2, v9);
  }

  return v7;
}

char *_mdns_multicast_delay_histogram_copy_description(uint64_t a1)
{
  v2 = 0;
  v12[0] = 0;
  for (i = 28; i != 62; i += 2)
  {
    v2 += *(a1 + i);
  }

  if (v2)
  {
    v10 = *(a1 + 28);
    v9 = *(a1 + 32) + *(a1 + 30) + *(a1 + 34);
    v8 = *(a1 + 38) + *(a1 + 36) + *(a1 + 40);
    v4 = vaddlvq_u16(*(a1 + 42));
    v5 = *(a1 + 58);
    v11 = 100 * *(a1 + 24) / (*(a1 + 24) + v2);
    v6 = *(a1 + 60);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 50);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 75);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 90);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 95);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 99);
    asprintf(v12, "delay distribution: [0] %u(%u%%) [1] %u(%u%%) [4] %u(%u%%) [7] %u(%u%%) [15] %u(%u%%) [20] %u(%u%%) [INF], cache hit rate: %u%%(hit: %u, miss:%u), percentile rank: P50(%us), P75(%us), P90(%us), P95(%us), P99(%us)", v10, 100 * v10 / v2, v9, 100 * v9 / v2, v8, 100 * v8 / v2, v4);
  }

  else
  {
    asprintf(v12, "<< No Data Available >>");
  }

  return v12[0];
}

uint64_t _mdns_multicast_delay_histogram_calculate_percentile_rank(uint64_t a1, int a2)
{
  v2 = 0;
  for (i = 28; i != 62; i += 2)
  {
    v2 += *(a1 + i);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v2 * a2 + 99) / 0x64u;
  while (1)
  {
    v5 += *(a1 + 28 + 2 * v4);
    if (v5 >= v6)
    {
      break;
    }

    if (++v4 == 17)
    {
      return 0;
    }
  }

  if (v4 == 15)
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

  if (v4 <= 0xE)
  {
    return (v4 + 1);
  }

  else
  {
    return v8;
  }
}

uint64_t mdns_multicast_delay_histogram_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_multicast_delay_histogram_kind;
    *(v0 + 16) = &_mdns_multicast_delay_histogram_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v1;
}

const char *mdns_signed_result_get_data(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = *(a1 + 16);
  result = (*(v3 + 48))();
  if (!result)
  {
    if (_mdns_signed_result_log_s_once != -1)
    {
      dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
    }

    v5 = _mdns_signed_result_log_s_log;
    if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v6 = *(v3 + 8);
      *buf = 136446210;
      v9 = v6;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "mdns_signed_result_get_data() failed for %{public}s", buf, 0xCu);
    }

    v7 = 0;
    result = "";
  }

  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

unsigned __int8 *_mdns_signed_browse_result_create_ex(const unsigned __int8 *a1, _BYTE *a2, unsigned int a3, unsigned __int8 *a4, unsigned __int16 a5, int *a6)
{
  bzero(__s, 0x3F1uLL);
  v12 = DomainNameToString(a2, 0, __s, 0);
  if (v12)
  {
    v20 = v12;
    v19 = 0;
    goto LABEL_7;
  }

  v13 = strlen(__s);
  if (v13 >> 16)
  {
    v19 = 0;
    v20 = -6743;
    goto LABEL_7;
  }

  v14 = v13;
  result = malloc_type_calloc(1uLL, v13 + 58, 0xCC385B7BuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  uuid_copy(result + 32, a1);
  v17 = _mdns_signed_result_compute_metadata_hash(v16 + 32, a3, a4, a5);
  *(v16 + 48) = 5;
  *(v16 + 52) = v17;
  *(v16 + 56) = v14;
  memcpy((v16 + 58), __s, v14);
  v18 = _mdns_necp_sign_result(v16, v14 + 58);
  if (v18 || (v18 = _mdns_necp_validate_result(), (v21 = v18) != 0))
  {
    v20 = v18;
    v19 = 0;
    goto LABEL_11;
  }

  v19 = _mdns_signed_browse_result_create_no_copy(a2, v16, v14 + 58, &v21);
  v20 = v21;
  if (v21)
  {
LABEL_11:
    free(v16);
  }

LABEL_7:
  if (a6)
  {
    *a6 = v20;
  }

  return v19;
}

uint64_t _mdns_signed_result_compute_metadata_hash(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = 0;
  v5 = -2128831035;
  do
  {
    v5 = 16777619 * (v5 ^ *(a1 + v4++));
  }

  while (v4 != 16);
  v6 = 0;
  v12 = bswap32(a2);
  v7 = v5;
  do
  {
    v7 = 16777619 * (v7 ^ *(&v12 + v6++));
  }

  while (v6 != 4);
  v8 = 16777619 * ((16777619 * (v5 ^ (a4 >> 8))) ^ a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      v8 = 16777619 * (v8 ^ v10);
      --v9;
    }

    while (v9);
  }

  return v8 & 0xFFFFFF ^ HIBYTE(v8) | ((v7 ^ (v7 >> 8)) << 24);
}

uint64_t _mdns_necp_sign_result(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x20)
  {
    return 4294960546;
  }

  v5 = 0;
  _mdns_necp_get_shared_fd(&v5);
  result = v5;
  if (!v5)
  {
    result = necp_client_action();
    v5 = result;
    if (result)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
      }

      v3 = _mdns_signed_result_log_s_log;
      v4 = os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR);
      result = v5;
      if (v4)
      {
        *buf = 134217984;
        v7 = v5;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to sign data: %{mdns:err}ld", buf, 0xCu);
        return v5;
      }
    }
  }

  return result;
}

uint64_t _mdns_necp_validate_result()
{
  v3 = 0;
  _mdns_necp_get_shared_fd(&v3);
  result = v3;
  if (!v3)
  {
    result = necp_client_action();
    v3 = result;
    if (result)
    {
      if (*__error())
      {
        v3 = *__error();
        if (!v3)
        {
          return 0;
        }
      }

      else
      {
        v3 = -6700;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
      }

      v1 = _mdns_signed_result_log_s_log;
      v2 = os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR);
      result = v3;
      if (v2)
      {
        *buf = 134217984;
        v5 = v3;
        _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to validate data: %{mdns:err}ld", buf, 0xCu);
        return v3;
      }
    }
  }

  return result;
}

uint64_t _mdns_signed_browse_result_create_no_copy(_BYTE *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v14 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v10 = &_mdns_signed_browse_result_kind;
  *(v8 + 16) = &_mdns_signed_browse_result_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  DomainNameDupEx(a1, (v9 + 24), 0);
  v12 = -2128831035;
  for (i = 32; i != 48; ++i)
  {
    v12 = 16777619 * (v12 ^ *(a2 + i));
  }

  v14 = 0;
  *(v9 + 48) = v12;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  if (a4)
  {
LABEL_9:
    *a4 = v14;
  }

  return v9;
}

uint64_t _mdns_signed_browse_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_browse_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_browse_result_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[4], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, service instance: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 58, *(v8 + 56), a3))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

uint64_t _mdns_string_builder_append_domain_name_string(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a3 > 0x3F0)
  {
    return mdns_string_builder_append_formatted(a1, "«TOO LONG: %zu chars»");
  }

  if (!a4)
  {
    return mdns_string_builder_append_formatted(a1, "%.*s");
  }

  memset(v8, 0, 64);
  bzero(v7, 0x3F1uLL);
  __memcpy_chk();
  v7[a3] = 0;
  DNSMessagePrintObfuscatedString(v8, v7);
  return mdns_string_builder_append_formatted(a1, "%s");
}

uint64_t _mdns_necp_get_shared_fd(int *a1)
{
  os_unfair_lock_lock(&_mdns_necp_get_shared_fd_s_lock);
  if ((_mdns_necp_get_shared_fd_s_fd & 0x80000000) == 0 || (_mdns_necp_get_shared_fd_s_fd = necp_open(), (_mdns_necp_get_shared_fd_s_fd & 0x80000000) == 0))
  {
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    v2 = 0;
    goto LABEL_4;
  }

  if (*__error())
  {
    v2 = *__error();
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    v2 = -6700;
  }

  if (_mdns_signed_result_log_s_once != -1)
  {
    dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
  }

  v4 = _mdns_signed_result_log_s_log;
  if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create NECP file descriptor: %{mdns:err}ld", &v5, 0xCu);
  }

LABEL_4:
  if (a1)
  {
    *a1 = v2;
  }

  return _mdns_necp_get_shared_fd_s_fd;
}

uint64_t mdns_signed_browse_result_contains(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }

  v3 = 0;
  v4 = *(*(a1 + 32) + 52);
  v5 = *(a1 + 48);
  v7 = bswap32(a3);
  do
  {
    LOWORD(v5) = 403 * (v5 ^ *(&v7 + v3++));
  }

  while (v3 != 4);
  if (HIBYTE(v4) != (v5 ^ BYTE1(v5)))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }
}

uint64_t _mdns_signed_resolve_result_create_no_copy(_BYTE *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v14 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v10 = &_mdns_signed_resolve_result_kind;
  *(v8 + 16) = &_mdns_signed_resolve_result_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  DomainNameDupEx(a1, (v9 + 24), 0);
  v12 = -2128831035;
  for (i = 32; i != 48; ++i)
  {
    v12 = 16777619 * (v12 ^ *(a2 + i));
  }

  v14 = 0;
  *(v9 + 48) = v12;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  if (a4)
  {
LABEL_9:
    *a4 = v14;
  }

  return v9;
}

uint64_t _mdns_signed_resolve_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_resolve_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_resolve_result_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v8 = a1[4];
    memset(out, 0, 37);
    uuid_unparse((v8 + 32), out);
    if (!mdns_string_builder_append_formatted(v7, "client ID: %s", out))
    {
      v14[0] = "service instance";
      v14[1] = v8 + 62;
      v15 = *(v8 + 56);
      v16 = 0;
      v17 = 0;
      v18[0] = "hostname";
      v18[1] = v8 + 62 + v15;
      v19 = *(v8 + 60);
      v11 = v14;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (mdns_string_builder_append_formatted(v7, ", %s: ", *v11) || _mdns_string_builder_append_domain_name_string(v7, v11[1], *(v11 + 8), a3))
        {
          break;
        }

        v12 = 0;
        v11 = v18;
        if ((v13 & 1) == 0)
        {
          if (mdns_string_builder_append_formatted(v7, ", port: %u", bswap32(*(v8 + 58)) >> 16))
          {
            break;
          }

          v9 = mdns_string_builder_copy_string(v7);
          goto LABEL_6;
        }
      }
    }
  }

  v9 = 0;
LABEL_6:
  os_release(v7);
  return v9;
}

void *mdns_signed_resolve_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v4 = a2 - 62;
  if (a2 < 0x3E)
  {
    result = 0;
    v14 = -6743;
  }

  else if (*(a1 + 48) == 6)
  {
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7 && (v9 = *(a1 + 60), v8 >= v9))
    {
      if (v9 > 0x3F0)
      {
        result = 0;
        v14 = -6744;
      }

      else
      {
        bzero(v17, 0x3F1uLL);
        __memcpy_chk();
        v17[v9] = 0;
        memset(v16, 0, sizeof(v16));
        v11 = DomainNameFromString(v16, v17);
        if (v11 || (v11 = _mdns_necp_validate_result()) != 0)
        {
          v14 = v11;
          result = 0;
        }

        else
        {
          v15 = 0;
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          memcpy(result, a1, a2);
          result = _mdns_signed_resolve_result_create_no_copy(v16, v13, a2, &v15);
          if (!result)
          {
            free(v13);
            result = 0;
          }

          v14 = v15;
        }
      }
    }

    else
    {
      result = 0;
      v14 = -6750;
    }
  }

  else
  {
    result = 0;
    v14 = -6756;
  }

  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t mdns_signed_resolve_result_contains(uint64_t a1, char *a2, unsigned int a3)
{
  v4 = 0;
  v5 = *(*(a1 + 32) + 52);
  v6 = *(a1 + 48);
  v8 = bswap32(a3);
  do
  {
    LOWORD(v6) = 403 * (v6 ^ *(&v8 + v4++));
  }

  while (v4 != 4);
  if (HIBYTE(v5) != (v6 ^ BYTE1(v6)))
  {
    return 0;
  }

  memset(v9, 0, sizeof(v9));
  if (DomainNameFromString(v9, a2))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), v9);
  }
}

unsigned __int8 *mdns_signed_hostname_result_create_ipv4(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = 0;
  *(&v4 + 1) = 0;
  v6 = 0;
  LOWORD(v4) = 528;
  WORD1(v4) = *(*(a1 + 32) + 58);
  DWORD1(v4) = *a2;
  return _mdns_signed_hostname_result_create(a1, &v4, a3);
}

unsigned __int8 *_mdns_signed_hostname_result_create(uint64_t a1, __int128 *a2, int *a3)
{
  v6 = _os_object_alloc();
  v7 = v6;
  if (v6)
  {
    v8 = &_mdns_signed_hostname_result_kind;
    *(v6 + 16) = &_mdns_signed_hostname_result_kind;
    do
    {
      v9 = v8[2];
      if (v9)
      {
        v9(v7);
      }

      v8 = *v8;
    }

    while (v8);
    v10 = *(a1 + 32);
    v11 = *(v10 + 60) + 88;
    *(v7 + 32) = v11;
    result = malloc_type_calloc(1uLL, v11, 0x4F7EAAD2uLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    *(v7 + 24) = result;
    uuid_copy(result + 32, (v10 + 32));
    *(v13 + 6) = 4;
    v14 = *a2;
    *(v13 + 68) = *(a2 + 12);
    *(v13 + 56) = v14;
    v15 = *(v10 + 60);
    *(v13 + 21) = v15;
    memcpy(v13 + 88, (v10 + *(v10 + 56) + 62), v15);
    v16 = _mdns_necp_sign_result(*(v7 + 24), *(v7 + 32));
    if (v16 || (v17 = *(v7 + 24), v18 = *(v7 + 32), (v16 = _mdns_necp_validate_result()) != 0))
    {
      v19 = v7;
      v7 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = -6728;
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (v19)
  {
    os_release(v19);
  }

  return v7;
}

uint64_t _mdns_signed_hostname_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return *(a1 + 24);
}

void _mdns_signed_hostname_result_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
}

void *_mdns_signed_hostname_result_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[3], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, hostname: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 88, *(v8 + 84), a3) || mdns_string_builder_append_formatted(v7, ", address: ") || (v11[0] = *(v8 + 56), *(v11 + 12) = *(v8 + 68), mdns_string_builder_append_sockaddr_description(v7, v11, a3)))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

unsigned __int8 *mdns_signed_hostname_result_create_ipv6(uint64_t a1, _OWORD *a2, int a3, int *a4)
{
  memset(&v5[1], 0, 24);
  LOWORD(v5[0]) = 7708;
  HIWORD(v5[0]) = *(*(a1 + 32) + 58);
  *&v5[2] = *a2;
  if (LOBYTE(v5[2]) == 254 && (BYTE1(v5[2]) & 0xC0) == 0x80)
  {
    v5[6] = a3;
  }

  return _mdns_signed_hostname_result_create(a1, v5, a4);
}

void *_dnssec_obj_rrset_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    do
    {
      v4 = result[1];
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void *dnssec_obj_rrset_create(_DWORD *a1, int a2, _DWORD *a3)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0xB7BBD98FuLL);
  if (result)
  {
    v7 = result;
    v8 = &_dnssec_obj_rrset_kind;
    result[1] = &_dnssec_obj_rrset_kind;
    do
    {
      v9 = v8[2];
      if (v9)
      {
        v9(v7);
      }

      v8 = *v8;
    }

    while (v8);
    ++*v7;
    v7[2] = a1;
    ++*a1;
    v7[4] = 0;
    v7[5] = 0;
    *(v7 + 12) = -6718;
    *(v7 + 60) = 0;
    *(v7 + 14) = a2;
    ++*v7;
    if (a3)
    {
      *a3 = 0;
    }

    ref_count_obj_release(v7);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_type(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = **(a1 + 24);
    result = *(v1 + 4);
    if (result == 46)
    {
      return __rev16(*(*(v1 + 40) + 4));
    }

    return result;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

LABEL_13:
    v5 = 136447234;
    v6 = "rrset->rr_count > 0";
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v11 = 1024;
    v12 = 123;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v5, 0x30u);
    return 0;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_class(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(**(a1 + 24) + 6);
  }

  v2 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_12:
      v4 = 136447234;
      v5 = "me->rr_count > 0";
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v10 = 1024;
      v11 = 138;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v4, 0x30u);
      return 0;
    }
  }

  else
  {
    v2 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_time_received(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v4 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v5 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "me->rr_count > 0";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 147;
    v16 = 2048;
    v17 = 0;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v1 = *(**(a1 + 24) + 56);
  if (!v1)
  {
    v4 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "rr->dnssec != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 149;
    v16 = 2048;
    v17 = 0;
    goto LABEL_33;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v2 + 80);
  }

  v4 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_32:
      v8 = 136447234;
      v9 = "cr != NULL";
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v14 = 1024;
      v15 = 152;
      v16 = 2048;
      v17 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v4 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_expire_time(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v3 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v6 = 136447234;
    v7 = "me->rr_count > 0";
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v12 = 1024;
    v13 = 185;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v6, 0x30u);
    return 0;
  }

  v1 = *(**(a1 + 24) + 56);

  return resource_record_get_expiration_time(v1);
}

void *dnssec_obj_rrset_copy_signer_name(uint64_t a1, int *a2)
{
  v3 = -6727;
  if (!*(a1 + 32) || (v17 = -6727, (v4 = *(a1 + 24)) == 0))
  {
    result = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v5 = *v4;
    if (**v4 == 240)
    {
      break;
    }

    if (*(v5 + 4) == 46)
    {
      v13 = (*(v5 + 40) + 22);
LABEL_17:
      result = dnssec_obj_domain_name_create_with_labels(v13, 1, &v17);
      v3 = v17;
      if (v17)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    result = 0;
LABEL_20:
    v4 = *(v4 + 1);
    if (v4)
    {
      v16 = result == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  v6 = *(v5 + 56);
  if (v6)
  {
    if (*(v6 + 32) || (*(v6 + 40) & 1) != 0 || (v7 = *(v6 + 48)) == 0)
    {
      result = 0;
      v3 = -6709;
      goto LABEL_27;
    }

    v8 = *(v7 + 72);
    if (!*(v7 + 72))
    {
LABEL_30:
      result = 0;
      v3 = -6727;
      goto LABEL_27;
    }

    v9 = (v7 + 104);
    v10 = (v7 + 80);
    while (1)
    {
      if (*v9++)
      {
        v12 = **v10;
        if (v12)
        {
          break;
        }
      }

      ++v10;
      if (!--v8)
      {
        goto LABEL_30;
      }
    }

    v14 = *(v12 + 80);
    v17 = 0;
    v13 = *(v14 + 16);
    goto LABEL_17;
  }

  result = 0;
  v3 = -6700;
LABEL_27:
  if (a2)
  {
    *a2 = v3;
  }

  return result;
}

BOOL dnssec_obj_rrset_is_non_dnskey(uint64_t a1)
{
  if (!*(a1 + 32) || (v1 = *(a1 + 24)) == 0)
  {
    v6 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "me->rr_count > 0 && me->rrs != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 267;
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v2 = *v1;
  if (*v2 == 240)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  if (v4 == 46)
  {
    v5 = __rev16(*(*(v2 + 5) + 4)) == 48;
  }

  else
  {
    v5 = v4 == 48;
  }

  return !v5;
}

BOOL dnssec_obj_rrset_is_dnskey(uint64_t a1)
{
  if (!*(a1 + 32) || (v1 = *(a1 + 24)) == 0)
  {
    v6 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "rrset->rr_count > 0 && rrset->rrs != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 284;
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v2 = *v1;
  if (*v2 == 240)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  if (v4 == 46)
  {
    return __rev16(*(*(v2 + 5) + 4)) == 48;
  }

  else
  {
    return v4 == 48;
  }
}

uint64_t dnssec_obj_rrset_get_denial_of_existence(uint64_t a1, int *a2)
{
  if (*(a1 + 32) != 1)
  {
    goto LABEL_14;
  }

  v2 = **(a1 + 24);
  if (*v2 != 240)
  {
    result = 0;
    v5 = -6727;
    goto LABEL_10;
  }

  v3 = *(v2 + 7);
  if (!v3)
  {
LABEL_14:
    result = 0;
    v5 = -6709;
    goto LABEL_10;
  }

  if (*(v3 + 32) || (*(v3 + 40) & 1) != 0)
  {
    result = 0;
  }

  else
  {
    result = *(v3 + 48);
  }

  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = -6727;
  }

LABEL_10:
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL dnssec_obj_rrset_is_wildcard_answer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2 || v1 == 4)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    while (1)
    {
      v4 = *v3;
      if (*(*v3 + 4) == 46)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        return 0;
      }
    }

    v7 = *(v4 + 32);
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        ++v9;
        v10 = &v7[v8];
        v11 = v10[1];
        v7 = v10 + 1;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    return v9 > *(*(v4 + 40) + 7);
  }

  else
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

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      goto LABEL_22;
    }

    v5 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v13 = 136447234;
      v14 = "dnssec_obj_rrset_is_completed(me)";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v19 = 1024;
      v20 = 396;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  return result;
}

BOOL dnssec_obj_rrset_is_non_wildcard_answer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2 || v1 == 4)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    while (1)
    {
      v4 = *v3;
      if (*(*v3 + 4) == 46)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        return 0;
      }
    }

    v7 = *(v4 + 32);
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        ++v9;
        v10 = &v7[v8];
        v11 = v10[1];
        v7 = v10 + 1;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    return v9 == *(*(v4 + 40) + 7);
  }

  else
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

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      goto LABEL_22;
    }

    v5 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v13 = 136447234;
      v14 = "dnssec_obj_rrset_is_completed(me)";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v19 = 1024;
      v20 = 416;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  return result;
}

uint64_t dnssec_obj_rrset_needs_to_update_cache(uint64_t a1, int a2)
{
  if (!*(a1 + 32))
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "me->rr_count > 0";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 455;
    v22 = 2048;
    v23 = 0;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v14, 0x30u);
    return 0;
  }

  v3 = **(a1 + 24);
  if (*v3 != 240)
  {
    goto LABEL_10;
  }

  v4 = *(v3 + 7);
  if (!v4)
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "me->rrs->rr->dnssec != NULL";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 457;
    v22 = 2048;
    v23 = 0;
    goto LABEL_41;
  }

  if (!*(v4 + 32) && (*(v4 + 40) & 1) == 0)
  {
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6 < 6 && ((0x27u >> v6) & 1) != 0)
      {
        return 0;
      }
    }
  }

LABEL_10:
  if ((*(a1 + 60) & 1) == 0)
  {
    return 1;
  }

  v8 = *(a1 + 52);
  cache_record = resource_record_get_cache_record(*(v3 + 7));
  if (!cache_record)
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "cr != NULL";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 488;
    v22 = 2048;
    v23 = 0;
    goto LABEL_41;
  }

  v10 = *(cache_record + 80) + 1000 * a2;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  return (v10 - v8) > 999;
}

void *dnssec_obj_rrset_copy_rrs(void *result, size_t *a2, _DWORD *a3)
{
  v3 = result[3];
  if (!v3)
  {
    goto LABEL_17;
  }

  v6 = result;
  v7 = 0;
  do
  {
    v8 = *v3;
    v3 = v3[1];
    if (*(v8 + 4) != 46)
    {
      ++v7;
    }
  }

  while (v3);
  if (v7 && !(v7 >> 61) && (result = malloc_type_calloc(v7, 8uLL, 0xC86B52FDuLL)) != 0)
  {
    v9 = v6[3];
    if (v9)
    {
      v10 = 0;
      do
      {
        if (*(*v9 + 4) != 46)
        {
          result[v10++] = *v9;
        }

        v9 = v9[1];
      }

      while (v9);
    }

    *a2 = v7;
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_rrset_copy_dses_with_supported_algorithm(uint64_t a1, size_t *a2, int *a3)
{
  v18 = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  do
  {
    result = *v5;
    if (*(*v5 + 4) == 43)
    {
      result = resource_record_as_ds_refers_to_supported_key_algorithm(result);
      v7 += result;
    }

    v5 = v5[1];
  }

  while (v5);
  if (!v7)
  {
LABEL_18:
    v15 = *(a1 + 40);
    v13 = 0;
    v9 = 0;
    if (v15 == 4 || v15 == 2)
    {
      v14 = -6727;
    }

    else
    {
      v14 = -6745;
    }

    v18 = v14;
LABEL_25:
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!(v7 >> 61))
  {
    result = malloc_type_calloc(v7, 8uLL, 0x50B25FD1uLL);
    if (result)
    {
      v9 = result;
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = 0;
        while (1)
        {
          v12 = *v10;
          if (*(*v10 + 4) == 43)
          {
            goto LABEL_14;
          }

          if ((resource_record_as_ds_refers_to_supported_key_algorithm(v12) & 1) == 0)
          {
            break;
          }

LABEL_16:
          v10 = v10[1];
          if (!v10)
          {
            goto LABEL_38;
          }
        }

        v12 = *v10;
LABEL_14:
        v13 = v11 + 1;
        v9[v11] = dnssec_obj_rr_ds_create(*(v12 + 32), *(v12 + 6), (*(v12 + 40) + 4), *(v12 + 12), 0, &v18);
        v14 = v18;
        if (v18)
        {
          goto LABEL_25;
        }

        ++v11;
        goto LABEL_16;
      }

      v11 = 0;
LABEL_38:
      v14 = 0;
      *a2 = v7;
      v18 = 0;
      v13 = v11;
      if (!a3)
      {
LABEL_27:
        if (v14)
        {
          if (v13)
          {
            v17 = v9;
            do
            {
              if (*v17)
              {
                ref_count_obj_release(*v17);
                *v17 = 0;
              }

              ++v17;
              --v13;
            }

            while (v13);
            goto LABEL_35;
          }

          if (v9)
          {
LABEL_35:
            free(v9);
            return 0;
          }
        }

        return v9;
      }

LABEL_26:
      *a3 = v14;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *dnssec_obj_rrset_copy_dnskeys(void *result, size_t *a2, int *a3)
{
  v3 = result[3];
  if (!v3)
  {
    goto LABEL_28;
  }

  v6 = result;
  v7 = 0;
  do
  {
    v8 = *v3;
    v3 = v3[1];
    if (*(v8 + 4) == 48)
    {
      ++v7;
    }
  }

  while (v3);
  if (v7 && !(v7 >> 61) && (result = malloc_type_calloc(v7, 8uLL, 0x843DE06DuLL)) != 0)
  {
    v9 = result;
    v15 = 0;
    v10 = v6[3];
    if (v10)
    {
      v11 = 0;
      do
      {
        if (*(*v10 + 4) == 48)
        {
          v12 = v11 + 1;
          v9[v11] = dnssec_obj_rr_dnskey_create(*(*v10 + 32), *(*v10 + 6), (*(*v10 + 40) + 4), *(*v10 + 12), &v15);
          v13 = v15;
          if (v15)
          {
            goto LABEL_18;
          }

          ++v11;
        }

        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    *a2 = v7;
    v15 = 0;
    v12 = v11;
LABEL_18:
    if (a3)
    {
      *a3 = v13;
    }

    if (v13)
    {
      if (v12)
      {
        v14 = v9;
        do
        {
          if (*v14)
          {
            ref_count_obj_release(*v14);
            *v14 = 0;
          }

          ++v14;
          --v12;
        }

        while (v12);
      }

      free(v9);
      return 0;
    }

    return v9;
  }

  else
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_rrset_add_rr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 7);
  if (!v2)
  {
    return 4294960591;
  }

  v5 = *(a1 + 40);
  if (v5 == 2)
  {
    if (!*(a1 + 32))
    {
      return 4294960591;
    }
  }

  else if (v5 == 1)
  {
    if (!*(a1 + 32))
    {
      return 4294960587;
    }
  }

  else if (!v5 && *(a1 + 32))
  {
    return 4294960587;
  }

  if (*a2 == 240)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if (v7 == 1)
      {
        if (**(a1 + 24) == a2)
        {
          return 4294960566;
        }

        else
        {
          return 4294960587;
        }
      }

      return 4294960587;
    }

LABEL_20:
    v9 = *(*(a1 + 16) + 16);
    v10 = *(a2 + 4);
    if (domain_name_labels_canonical_compare())
    {
      return 4294960548;
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x5687AE29uLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    *result = a2;
    *(result + 8) = *(a1 + 24);
    *(a1 + 40) = 1;
    v11 = *(a1 + 32) + 1;
    *(a1 + 24) = result;
    *(a1 + 32) = v11;
    if (*a2 == 240 || v11 == v7)
    {
      *(a1 + 40) = 2;
    }

    v12 = *(a2 + 7);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13 == 1)
      {
        validation_result = dnssec_obj_resource_record_member_get_validation_result(v12);
        result = 0;
        *(a1 + 44) = validation_result;
        return result;
      }

      if (!v13)
      {
        result = 0;
        *(a1 + 44) = 0xFFFFE5C200000000;
        return result;
      }
    }

    v14 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        v16 = *(v12 + 32);
        v18 = 67109120;
        v19 = v16;
        goto LABEL_35;
      }
    }

    else
    {
      v14 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        v15 = *(v12 + 32);
        v18 = 67109120;
        v19 = v15;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "DNSSEC aware RR is neither to-be-validated or validated - aware type: %u.", &v18, 8u);
      }
    }

    return 4294960540;
  }

  v7 = *(v2 + 24);
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_19:
    if (*(a1 + 32) < v7)
    {
      goto LABEL_20;
    }

    return 4294960591;
  }

  while (*v8 != a2)
  {
    v8 = v8[1];
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  return 4294960566;
}

uint64_t dnssec_obj_rrset_remove_rr(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a2 + 7))
  {
    return 4294960591;
  }

  v4 = (a1 + 24);
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_10;
  }

  v6 = *a2;
  if (*v3 != a2)
  {
    while (1)
    {
      v7 = v3;
      v3 = v3[1];
      if (!v3)
      {
        break;
      }

      if (*v3 == a2)
      {
        v4 = v7 + 1;
        goto LABEL_7;
      }
    }

LABEL_10:
    v9 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 4294960569;
      }

      v17 = 0;
      v11 = &v17;
    }

    else
    {
      v9 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 4294960569;
      }

      v16 = 0;
      v11 = &v16;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Record to be removed is not found.", v11, 2u);
    return 4294960569;
  }

LABEL_7:
  v8 = *(a1 + 32);
  if (v6 == 240)
  {
    if (v8 != 1)
    {
      return 4294960587;
    }
  }

  else if (!v8)
  {
    return 4294960587;
  }

  if (!*(a1 + 40))
  {
    return 4294960587;
  }

  *v4 = v3[1];
  free(v3);
  *(a1 + 40) = 3;
  v14 = *(a1 + 32) - 1;
  *(a1 + 32) = v14;
  v15 = *(a2 + 7);
  if (v6 == 240)
  {
    *(a1 + 40) = 4;
    if (!v15)
    {
      return 0;
    }
  }

  else if (*(v15 + 36) == 1 && v14 == *(v15 + 24))
  {
    *(a1 + 40) = 4;
  }

  if (*(v15 + 32))
  {
    return 0;
  }

  result = 0;
  *(a1 + 44) = 0xFFFFE5C200000000;
  return result;
}

BOOL dnssec_obj_rrset_matches_dnskey_key_tag(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v24 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v26 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v24 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    *buf = 136447234;
    v29 = "me->rr_count > 0";
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v34 = 1024;
    v35 = 847;
    v36 = 2048;
    v37 = 0;
    goto LABEL_62;
  }

  v5 = *(a1 + 24);
  if (**v5 == 240)
  {
    v27 = 0;
    denial_of_existence = dnssec_obj_rrset_get_denial_of_existence(a1, &v27);
    v7 = v27;
    if (v27)
    {
      v24 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v24 = mDNSLogCategory_DNSSEC_redacted;
        result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      *buf = 136447234;
      v29 = "err == 0";
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v34 = 1024;
      v35 = 867;
      v36 = 2048;
      v37 = v7;
    }

    else
    {
      v8 = *(denial_of_existence + 72);
      if (*(denial_of_existence + 72))
      {
        v9 = 0;
        v10 = denial_of_existence + 104;
        v11 = denial_of_existence + 80;
        while (1)
        {
          v12 = *(v10 + v9);
          if (!*(v10 + v9))
          {
            break;
          }

          v13 = 0;
          do
          {
            while (!a3)
            {
              if (++v13 >= v12)
              {
                return 0;
              }
            }

            v14 = __rev16(*(*(*(*(v11 + 8 * v9) + 8 * v13) + 24) + 16));
            v15 = a2;
            v16 = 1;
            do
            {
              v17 = *v15++;
              v18 = *(v17 + 80);
              result = v18 == v14;
              if (v16 >= a3)
              {
                break;
              }

              ++v16;
            }

            while (v18 != v14);
            ++v13;
          }

          while (v13 < v12 && v18 != v14);
          ++v9;
          if (v18 != v14 || v9 == v8)
          {
            return result;
          }
        }

        v24 = mDNSLogCategory_DNSSEC;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v25 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v24 = mDNSLogCategory_DNSSEC_redacted;
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        *buf = 136447234;
        v29 = "me->nsec_rrsig_count[i] > 0";
        v30 = 2082;
        v31 = "";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_denial_of_existence.c";
        v34 = 1024;
        v35 = 230;
        v36 = 2048;
        v37 = 0;
      }

      else
      {
        v24 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v24 = mDNSLogCategory_DNSSEC_redacted;
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        *buf = 136447234;
        v29 = "me->nsec_count > 0";
        v30 = 2082;
        v31 = "";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_denial_of_existence.c";
        v34 = 1024;
        v35 = 227;
        v36 = 2048;
        v37 = 0;
      }
    }

LABEL_62:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
    return 0;
  }

  while (*(*v5 + 4) != 46 || !a3)
  {
LABEL_28:
    v5 = *(v5 + 1);
    if (!v5)
    {
      return 0;
    }
  }

  v21 = __rev16(*(*(*v5 + 40) + 20));
  v22 = a3;
  v23 = a2;
  while (*(*v23 + 80) != v21)
  {
    ++v23;
    if (!--v22)
    {
      goto LABEL_28;
    }
  }

  return 1;
}

uint64_t dnssec_obj_rrset_matches_ds_key_tag(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    while (*(*result + 4) != 46 || !a3)
    {
LABEL_7:
      result = *(result + 8);
      if (!result)
      {
        return result;
      }
    }

    v3 = __rev16(*(*(*result + 40) + 20));
    v4 = a3;
    v5 = a2;
    while (v3 != bswap32(**(*v5 + 24)) >> 16)
    {
      v5 += 8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

  return result;
}

uint64_t dnssec_obj_rrset_validate_with_dnskeys(uint64_t a1, _DWORD **a2, size_t a3, _DWORD *a4)
{
  v5 = a4;
  v6 = *(a1 + 44);
  if (v6)
  {
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = -6719;
LABEL_16:
    v60 = v19;
    if (!a4)
    {
      goto LABEL_83;
    }

LABEL_82:
    *v5 = v60;
    goto LABEL_83;
  }

  v8 = *(a1 + 40);
  v9 = v8 == 2 || v8 == 4;
  if (!v9 || (v10 = *(a1 + 32)) == 0)
  {
    v6 = 0;
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = -6745;
    goto LABEL_16;
  }

  v13 = *(a1 + 24);
  if (**v13 == 240)
  {
    v14 = *(*v13 + 56);
    if (!v14)
    {
      v4 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = -6736;
LABEL_13:
      v60 = v18;
      v6 = 3;
      if (!a4)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (!*(v14 + 32) && (*(v14 + 40) & 1) == 0)
    {
      v34 = *(v14 + 48);
      if (v34)
      {
        v55 = a1;
        if (*(v34 + 16))
        {
          if (*(v34 + 72))
          {
            v35 = 0;
            v36 = v34 + 104;
            do
            {
              v37 = *(v36 + v35);
              if (!*(v36 + v35))
              {
LABEL_77:
                v6 = 0;
                v50 = -6745;
                goto LABEL_78;
              }

              v38 = 0;
              do
              {
                while (1)
                {
                  v39 = *(*(v34 + 80 + 8 * v35) + 8 * v38);
                  if (!v39)
                  {
                    v6 = 3;
                    v50 = -6750;
                    goto LABEL_78;
                  }

                  if (a3)
                  {
                    break;
                  }

                  if (++v38 >= v37)
                  {
                    goto LABEL_77;
                  }
                }

                v40 = 0;
                v41 = __rev16(*(*(v39 + 24) + 16));
                do
                {
                  v42 = *(a2[v40++] + 40);
                }

                while (v40 < a3 && v41 != v42);
                ++v38;
              }

              while (v38 < v37 && v41 != v42);
              if (v41 != v42)
              {
                goto LABEL_77;
              }

              ++v35;
            }

            while (v35 != *(v34 + 72));
            v4 = a4;
            v6 = 0;
            v44 = 0;
            v62 = -6736;
            while (1)
            {
              v45 = v36 + 8 * v44;
              v46 = *(v45 - 24);
              v47 = *(v36 + v44);
              v48 = *(v34 + 44);
              if (v48 != 2 && v48 != 1)
              {
                goto LABEL_100;
              }

              *v61 = *(v45 - 56);
              v49 = dnssec_obj_rr_validator_create(v61, 1uLL, v46, v47, a2, a3, 0, 0, 0, 0, &v62);
              v6 = dnssec_obj_rr_validator_validate_rrset(v49, &v62);
              ref_count_obj_release(v49);
              if (v6 == 1 && ++v44 < *(v34 + 72))
              {
                continue;
              }

              v50 = v62;
              goto LABEL_101;
            }
          }

          v6 = 3;
          v50 = -6736;
        }

        else
        {
          v6 = 3;
          v50 = -6720;
        }

LABEL_78:
        v4 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v60 = v50;
        goto LABEL_79;
      }
    }

LABEL_12:
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -6709;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *v13;
    v13 = *(v13 + 1);
    if (*(v22 + 2) == 46)
    {
      ++v21;
    }

    else
    {
      ++v20;
    }
  }

  while (v13);
  if (v20 + v21 != v10)
  {
    goto LABEL_12;
  }

  if (!v20 || v20 >> 61 || (v23 = malloc_type_calloc(v20, 8uLL, 0xDB40BCC0uLL)) == 0 || !v21 || v21 >> 61 || (v17 = v23, v54 = v5, (v24 = malloc_type_calloc(v21, 8uLL, 0xC4D96EFBuLL)) == 0))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    v50 = -6736;
LABEL_101:
    v5 = v4;
    goto LABEL_78;
  }

  v15 = v24;
  v60 = -6736;
  v55 = a1;
  v25 = *(a1 + 24);
  if (v25)
  {
    v16 = 0;
    v4 = 0;
    v56 = v24;
    v57 = v17;
    while (1)
    {
      v26 = *v25;
      v27 = *(*v25 + 4);
      v28 = *(*v25 + 32);
      if (v27 == 46)
      {
        v15[v4++] = dnssec_obj_rr_rrsig_create(*(*v25 + 32), (*(v26 + 40) + 4), *(v26 + 12), 0, &v60);
      }

      else
      {
        v29 = *(v26 + 40);
        v58 = *(v26 + 12);
        v59 = *(v26 + 6);
        v61[0] = 0;
        v30 = malloc_type_calloc(1uLL, 0x50uLL, 0xB7BBD98FuLL);
        if (!v30)
        {
          goto LABEL_99;
        }

        v6 = v30;
        v31 = &_dnssec_obj_rr_kind;
        v30[1] = &_dnssec_obj_rr_kind;
        do
        {
          v32 = v31[2];
          if (v32)
          {
            v32(v6);
          }

          v31 = *v31;
        }

        while (v31);
        ++*v6;
        dnssec_obj_rr_init_fields(v6, v28, v27, v59, (v29 + 4), v58, 0, 0, v61);
        if (v61[0])
        {
          v60 = v61[0];
          ref_count_obj_release(v6);
          v6 = 0;
        }

        else
        {
          v60 = 0;
        }

        v15 = v56;
        v17 = v57;
        v57[v16++] = v6;
      }

      if (v60)
      {
        break;
      }

      v25 = v25[1];
      if (!v25)
      {
        goto LABEL_47;
      }
    }

    v6 = 0;
    v5 = v54;
    if (v54)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v4 = 0;
  v16 = 0;
LABEL_47:
  v33 = dnssec_obj_rr_validator_create(v17, v16, v15, v4, a2, a3, 0, 0, 0, 0, &v60);
  v6 = dnssec_obj_rr_validator_validate_rrset(v33, &v60);
  ref_count_obj_release(v33);
  v5 = v54;
LABEL_79:
  *(v55 + 44) = v6;
  if (v6)
  {
    *(v55 + 48) = v60;
  }

  if (v5)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v4)
  {
    v51 = v15;
    do
    {
      if (*v51)
      {
        ref_count_obj_release(*v51);
        *v51 = 0;
      }

      ++v51;
      --v4;
    }

    while (v4);
  }

  if (v16)
  {
    v52 = v17;
    do
    {
      if (*v52)
      {
        ref_count_obj_release(*v52);
        *v52 = 0;
      }

      ++v52;
      --v16;
    }

    while (v16);
  }

  if (v15)
  {
    free(v15);
  }

  if (v17)
  {
    free(v17);
  }

  return v6;
}

uint64_t dnssec_obj_rrset_validate_with_dses_or_trust_anchors(uint64_t a1, _DWORD **a2, size_t a3, _DWORD **a4, size_t a5, _DWORD *a6)
{
  v40 = 0;
  v7 = *(a1 + 44);
  if (v7)
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v30 = -6719;
    goto LABEL_37;
  }

  v9 = *(a1 + 40);
  v10 = v9 == 2 || v9 == 4;
  if (!v10 || !*(a1 + 32))
  {
    goto LABEL_36;
  }

  if (***(a1 + 24) == 240)
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v31 = -6736;
    goto LABEL_42;
  }

  if (!dnssec_obj_rrset_is_dnskey(a1))
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v31 = -6705;
    goto LABEL_42;
  }

  if (!(a5 | a3))
  {
LABEL_36:
    v7 = 0;
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v30 = -6745;
    goto LABEL_37;
  }

  v15 = *(a1 + 16);
  v16 = dnssec_obj_rrset_copy_signer_name(a1, &v40);
  if (v40)
  {
    v7 = 0;
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v30 = -6728;
LABEL_37:
    v40 = v30;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (ref_count_obj_compare(v15, v16, 1))
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v31 = -90005;
LABEL_42:
    v40 = v31;
    v7 = 3;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v17 = *(a1 + 24);
  if (!v17)
  {
    if (*(a1 + 32))
    {
LABEL_41:
      v27 = 0;
      v24 = 0;
      v26 = 0;
      v22 = 0;
      v31 = -6709;
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(*v17 + 4);
    if (v20 == 46)
    {
      ++v19;
    }

    else
    {
      if (v20 != 48)
      {
        goto LABEL_41;
      }

      ++v18;
    }

    v17 = v17[1];
  }

  while (v17);
  if (v18 + v19 != *(a1 + 32))
  {
    goto LABEL_41;
  }

  if (!v18)
  {
    goto LABEL_40;
  }

  if (v18 >> 61)
  {
    goto LABEL_40;
  }

  v21 = malloc_type_calloc(v18, 8uLL, 0x2F6DAC2AuLL);
  if (!v21)
  {
    goto LABEL_40;
  }

  if (!v19)
  {
    goto LABEL_40;
  }

  if (v19 >> 61)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v39 = a6;
  v23 = malloc_type_calloc(v19, 8uLL, 0xF2BA0562uLL);
  if (!v23)
  {
    goto LABEL_40;
  }

  v24 = v23;
  v37 = a4;
  v38 = a2;
  v40 = -6736;
  v25 = *(a1 + 24);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *v25;
      v29 = *(*v25 + 4);
      if (v29 == 46)
      {
        v24[v27++] = dnssec_obj_rr_rrsig_create(*(v28 + 32), (*(v28 + 40) + 4), *(v28 + 12), 0, &v40);
      }

      else
      {
        if (v29 != 48)
        {
          v7 = 0;
          v40 = -6736;
LABEL_69:
          a6 = v39;
          if (!v39)
          {
            goto LABEL_50;
          }

LABEL_49:
          *a6 = v40;
          goto LABEL_50;
        }

        v22[v26++] = dnssec_obj_rr_dnskey_create(*(v28 + 32), *(v28 + 6), (*(v28 + 40) + 4), *(v28 + 12), &v40);
      }

      if (v40)
      {
        goto LABEL_67;
      }

      v25 = v25[1];
      if (!v25)
      {
        goto LABEL_45;
      }
    }
  }

  v27 = 0;
  v26 = 0;
LABEL_45:
  v32 = dnssec_obj_rr_validator_create(v22, v26, v24, v19, v22, v26, v38, a3, v37, a5, &v40);
  if (v40)
  {
LABEL_67:
    v7 = 0;
    goto LABEL_69;
  }

  v33 = v32;
  v7 = dnssec_obj_rr_validator_validate_rrset(v32, &v40);
  ref_count_obj_release(v33);
  *(a1 + 44) = v7;
  a6 = v39;
  if (v7)
  {
    *(a1 + 48) = v40;
  }

  if (v39)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v16)
  {
    ref_count_obj_release(v16);
  }

  if (v27)
  {
    v34 = v24;
    do
    {
      if (*v34)
      {
        ref_count_obj_release(*v34);
        *v34 = 0;
      }

      ++v34;
      --v27;
    }

    while (v27);
  }

  if (v26)
  {
    v35 = v22;
    do
    {
      if (*v35)
      {
        ref_count_obj_release(*v35);
        *v35 = 0;
      }

      ++v35;
      --v26;
    }

    while (v26);
  }

  if (v24)
  {
    free(v24);
  }

  if (v22)
  {
    free(v22);
  }

  return v7;
}

void _mdns_dns_service_manager_finalize(void *a1)
{
  _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, &__block_literal_global_110);
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    dispatch_release(v3);
    a1[11] = 0;
  }

  v4 = a1[13];
  if (v4)
  {
    _Block_release(v4);
    a1[13] = 0;
  }
}

uint64_t _mdns_dns_service_manager_enumerate_all_service_array_pointers(uint64_t a1, uint64_t a2)
{
  v7[0] = a1 + 32;
  v7[1] = a1 + 40;
  v7[2] = a1 + 48;
  v7[3] = a1 + 56;
  v7[4] = a1 + 64;
  v7[5] = a1 + 72;
  result = (*(a2 + 16))(a2);
  if (result)
  {
    v4 = v7;
    v5 = -1;
    while (v5 != 5)
    {
      v6 = *v4++;
      ++v5;
      if (((*(a2 + 16))(a2, v6) & 1) == 0)
      {
        return v5 > 5;
      }
    }

    v5 = 6;
    return v5 > 5;
  }

  return result;
}

BOOL ___mdns_dns_service_manager_finalize_block_invoke(id a1, __CFArray **a2)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return 1;
}

void *_mdns_dns_service_manager_copy_description(void *a1, int a2, char a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1);
      *(v20 + 6) = appended;
      if (appended)
      {
        goto LABEL_7;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "{");
    *(v20 + 6) = v9;
    if (v9)
    {
      goto LABEL_7;
    }

    v16[3] = "\n\t";
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___mdns_dns_service_manager_copy_description_block_invoke;
    v13[3] = &unk_10014EE00;
    v13[4] = &v19;
    v13[5] = &v15;
    v13[6] = v7;
    v14 = a3;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v23[3] = &unk_10014F518;
    v23[4] = v13;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 0x40000000;
    v24[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v24[3] = &unk_10014F4F0;
    v24[4] = v23;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v24);
    if (*(v20 + 6) || (v10 = mdns_string_builder_append_formatted(v7, "\n}"), (*(v20 + 6) = v10) != 0))
    {
LABEL_7:
      v11 = 0;
    }

    else
    {
      v11 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

BOOL ___mdns_dns_service_manager_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ",\n\t";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_manager_enumerate_all_services_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke;
  v4[3] = &unk_10014F540;
  v4[4] = v2;
  return mdns_cfarray_enumerate(a2, v4);
}

uint64_t ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return 1;
  }
}

uint64_t ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (!v5 || (result = mdns_cfarray_enumerate(v5, *(a1 + 32)), result))
    {
      v6 = *(a2 + 144);
      if (v6)
      {
        v7 = *(a1 + 32);

        return mdns_cfarray_enumerate(v6, v7);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void _mdns_dns_service_finalize(void *a1)
{
  if (a1[14])
  {
    v2 = a1[15];
    if (v2)
    {
      v2();
    }

    a1[14] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  while (1)
  {
    v4 = a1[11];
    if (!v4)
    {
      break;
    }

    a1[11] = *v4;
    _domain_item_free(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    nw_release(v5);
    a1[6] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    nw_release(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    free(v7);
    a1[13] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[17];
  if (v9)
  {
    os_release(v9);
    a1[17] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    CFRelease(v10);
    a1[18] = 0;
  }

  v11 = a1[19];
  if (v11)
  {
    CFRelease(v11);
    a1[19] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    xpc_release(v12);
    a1[20] = 0;
  }

  v13 = a1[21];
  if (v13)
  {
    free(v13);
    a1[21] = 0;
  }

  v14 = a1[22];
  if (v14)
  {
    free(v14);
    a1[22] = 0;
  }

  v15 = a1[24];
  if (v15)
  {
    CFRelease(v15);
    a1[24] = 0;
  }

  v16 = a1[26];
  if (v16)
  {
    nw_release(v16);
    a1[26] = 0;
  }

  v17 = a1[27];
  if (v17)
  {
    os_release(v17);
    a1[27] = 0;
  }

  v18 = a1[29];
  if (v18)
  {
    CFRelease(v18);
    a1[29] = 0;
  }
}

void _domain_item_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    os_release(v2);
  }

  free(a1);
}

uint64_t _mdns_dns_service_equal_ex(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = *(a1 + 280);
  if (v5 != *(a2 + 280) || *(a1 + 256) != *(a2 + 256) || v5 == 3 && *(a1 + 260) != *(a2 + 260))
  {
    return 0;
  }

  v7 = *(a1 + 80);
  v8 = *(a2 + 80);
  if (v7 == v8 || (result = 0, v7) && v8 && (result = CFEqual(*(a1 + 80), v8), result))
  {
    if (a3)
    {
      return 1;
    }

    v10 = a1 + 88;
    v11 = a2 + 88;
    while (1)
    {
      v11 = *v11;
      v10 = *v10;
      if (!v10 || v11 == 0)
      {
        break;
      }

      v13 = _domain_item_compare(v10, v11, 0);
      result = 0;
      if (v13)
      {
        return result;
      }
    }

    return !(v10 | v11);
  }

  return result;
}

uint64_t _domain_item_compare(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  v5 = *(a2 + 8);
  v6 = v4 - *(v5 + 48);
  if (v6)
  {
    if (v6 < 1)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (v3 != v5 && v4 >= 1)
    {
      v11 = *(v3 + 24);
      v12 = *(v5 + 24);
      v13 = v4 - 1;
      while (1)
      {
        v14 = v4;
        v15 = __OFSUB__(v4--, 1);
        if (v4 < 0 != v15)
        {
          return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
        }

        v16 = v11;
        v17 = v12;
        if (v4)
        {
          v18 = v13;
          v16 = v11;
          do
          {
            if (!*v16)
            {
              break;
            }

            v16 += *v16 + 1;
            --v18;
          }

          while (v18);
          v19 = v13;
          v17 = v12;
          do
          {
            if (!*v17)
            {
              break;
            }

            v17 += *v17 + 1;
            --v19;
          }

          while (v19);
        }

        v22 = *v16;
        v20 = v16 + 1;
        v21 = v22;
        v25 = *v17;
        v23 = v17 + 1;
        v24 = v25;
        if (v21 >= v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }

        v27 = mdns_memcmp_us_ascii_case_insensitive(v20, v23, v26);
        if (v27)
        {
          goto LABEL_26;
        }

        if (v21 < v24)
        {
          break;
        }

        --v13;
        if (v21 > v24)
        {
          LOBYTE(v27) = 1;
LABEL_26:
          if (v14 < 1)
          {
            return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
          }

          return v27;
        }
      }

      LOBYTE(v27) = -1;
      goto LABEL_26;
    }

    return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
  }
}

void *_mdns_dns_service_copy_description(uint64_t a1, int a2, int a3)
{
  v79 = 0;
  v80 = &v79;
  v81 = 0x2000000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v80 + 6) = appended;
      if (appended)
      {
        goto LABEL_36;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "id: %llu", *(a1 + 24));
    *(v80 + 6) = v9;
    if (v9)
    {
      goto LABEL_36;
    }

    v10 = mdns_string_builder_append_formatted(v7, ", type: ");
    *(v80 + 6) = v10;
    if (v10)
    {
      goto LABEL_36;
    }

    v11 = *(a1 + 281);
    if (v11 > 5)
    {
      v67 = *(a1 + 281);
      v12 = mdns_string_builder_append_formatted(v7, "«INVALID %u»");
    }

    else
    {
      v66 = (&off_1001539A0)[v11];
      v12 = mdns_string_builder_append_formatted(v7, "%s");
    }

    *(v80 + 6) = v12;
    if (v12)
    {
      goto LABEL_36;
    }

    v14 = mdns_string_builder_append_formatted(v7, ", source: ");
    *(v80 + 6) = v14;
    if (v14)
    {
      goto LABEL_36;
    }

    if ((*(a1 + 282) - 1) > 4)
    {
      v70 = *(a1 + 282);
      v15 = mdns_string_builder_append_formatted(v7, "«INVALID %u»");
    }

    else
    {
      v68 = (&off_10014F5E0)[(*(a1 + 282) - 1)];
      v15 = mdns_string_builder_append_formatted(v7, "%s");
    }

    *(v80 + 6) = v15;
    if (v15)
    {
      goto LABEL_36;
    }

    v16 = mdns_string_builder_append_formatted(v7, ", scope: ");
    *(v80 + 6) = v16;
    if (v16)
    {
      goto LABEL_36;
    }

    v17 = *(a1 + 280);
    if (v17 <= 2)
    {
      if (v17 == 1)
      {
        v18 = mdns_string_builder_append_formatted(v7, "none");
        goto LABEL_31;
      }

      if (v17 == 2)
      {
        v18 = mdns_string_builder_append_formatted(v7, "interface", v69);
        goto LABEL_31;
      }
    }

    else
    {
      switch(v17)
      {
        case 3u:
          v19 = *(a1 + 260);
          v18 = mdns_string_builder_append_formatted(v7, "service (%u)");
          goto LABEL_31;
        case 4u:
          v20 = mdns_string_builder_append_formatted(v7, "uuid");
          *(v80 + 6) = v20;
          if (v20)
          {
            goto LABEL_36;
          }

          if (a3)
          {
LABEL_32:
            v22 = "";
            if (*(a1 + 104))
            {
              v22 = *(a1 + 104);
            }

            v23 = mdns_string_builder_append_formatted(v7, ", interface: %s/%u", v22, *(a1 + 256));
            *(v80 + 6) = v23;
            if (!v23)
            {
              v24 = mdns_string_builder_append_formatted(v7, ", servers: {");
              *(v80 + 6) = v24;
              if (!v24)
              {
                v76[3] = 0;
                v26 = *(a1 + 80);
                if (!v26)
                {
                  goto LABEL_109;
                }

                v73[0] = _NSConcreteStackBlock;
                v73[1] = 0x40000000;
                v73[2] = ___mdns_dns_service_copy_description_block_invoke;
                v73[3] = &unk_10014F1B0;
                v73[4] = &v79;
                v73[5] = &v75;
                v73[6] = v7;
                v74 = a3;
                mdns_cfarray_enumerate(v26, v73);
                if (!*(v80 + 6))
                {
LABEL_109:
                  v27 = mdns_string_builder_append_formatted(v7, "}");
                  *(v80 + 6) = v27;
                  if (!v27)
                  {
                    v28 = mdns_string_builder_append_formatted(v7, ", domains: {");
                    *(v80 + 6) = v28;
                    if (!v28)
                    {
                      v76[3] = 0;
                      v29 = *(a1 + 136);
                      if (!v29)
                      {
                        v29 = a1;
                      }

                      v30 = *(v29 + 88);
                      if (v30)
                      {
                        v31 = 0;
                        do
                        {
                          v32 = mdns_string_builder_append_description_with_prefix(v7, v31, v30[1], a3);
                          *(v80 + 6) = v32;
                          if (v32)
                          {
                            goto LABEL_36;
                          }

                          if (*(v30 + 4))
                          {
                            v33 = mdns_string_builder_append_formatted(v7, " (%u)", *(v30 + 4));
                            *(v80 + 6) = v33;
                            if (v33)
                            {
                              goto LABEL_36;
                            }
                          }

                          v76[3] = ", ";
                          v30 = *v30;
                          v31 = ", ";
                        }

                        while (v30);
                      }

                      v34 = mdns_string_builder_append_formatted(v7, "}");
                      *(v80 + 6) = v34;
                      if (!v34)
                      {
                        v35 = mdns_string_builder_append_formatted(v7, ", attributes: {");
                        *(v80 + 6) = v35;
                        if (!v35)
                        {
                          v36 = v76;
                          v37 = &word_10014F1D8;
                          v76[3] = "";
                          v38 = 7;
                          do
                          {
                            if ((*v37 & *(a1 + 276)) != 0)
                            {
                              v39 = mdns_string_builder_append_formatted(v7, "%s%s", v36[3], *(v37 - 1));
                              *(v80 + 6) = v39;
                              if (v39)
                              {
                                goto LABEL_36;
                              }

                              v36 = v76;
                              v76[3] = ", ";
                            }

                            v37 += 8;
                            --v38;
                          }

                          while (v38);
                          if (*(a1 + 96) && nw_resolver_config_get_allow_failover())
                          {
                            v40 = mdns_string_builder_append_formatted(v7, "%sallows-failover", v76[3]);
                            *(v80 + 6) = v40;
                            if (v40)
                            {
                              goto LABEL_36;
                            }

                            v76[3] = ", ";
                          }

                          if (!*(a1 + 240) || !*(a1 + 248) || (v41 = mdns_string_builder_append_formatted(v7, "%sreports-push-connection-error", v76[3]), (*(v80 + 6) = v41) == 0))
                          {
                            v42 = mdns_string_builder_append_formatted(v7, "}");
                            *(v80 + 6) = v42;
                            if (!v42)
                            {
                              v43 = mdns_string_builder_append_formatted(v7, ", interface properties: {");
                              *(v80 + 6) = v43;
                              if (!v43)
                              {
                                v44 = v76;
                                v76[3] = "";
                                v45 = &word_10014F248;
                                v46 = 8;
                                do
                                {
                                  if ((*v45 & *(a1 + 276)) != 0)
                                  {
                                    v47 = mdns_string_builder_append_formatted(v7, "%s%s", v44[3], *(v45 - 1));
                                    *(v80 + 6) = v47;
                                    if (v47)
                                    {
                                      goto LABEL_36;
                                    }

                                    v44 = v76;
                                    v76[3] = ", ";
                                  }

                                  v45 += 8;
                                  --v46;
                                }

                                while (v46);
                                v48 = mdns_string_builder_append_formatted(v7, "}");
                                *(v80 + 6) = v48;
                                if (!v48)
                                {
                                  if (!*(a1 + 96))
                                  {
                                    goto LABEL_106;
                                  }

                                  v49 = mdns_string_builder_append_formatted(v7, ", resolver config: {");
                                  *(v80 + 6) = v49;
                                  if (!v49)
                                  {
                                    v50 = mdns_string_builder_append_formatted(v7, "provider name: ");
                                    *(v80 + 6) = v50;
                                    if (!v50)
                                    {
                                      provider_name_cstr = _mdns_dns_service_get_provider_name_cstr(a1);
                                      if (!provider_name_cstr)
                                      {
                                        goto LABEL_108;
                                      }

                                      v52 = provider_name_cstr;
                                      v84 = 0u;
                                      memset(out, 0, sizeof(out));
                                      if (a3)
                                      {
                                        if (DNSMessagePrintObfuscatedString(out, provider_name_cstr) < 0)
                                        {
                                          v52 = "«REDACTED»";
                                        }

                                        else
                                        {
                                          v52 = out;
                                        }
                                      }

                                      v53 = mdns_string_builder_append_formatted(v7, "%s", v52);
                                      *(v80 + 6) = v53;
                                      if (!v53)
                                      {
LABEL_108:
                                        v54 = mdns_string_builder_append_formatted(v7, ", provider path: ");
                                        *(v80 + 6) = v54;
                                        if (!v54)
                                        {
                                          v55 = *(a1 + 136);
                                          if (!v55 || !*(v55 + 96))
                                          {
                                            v55 = a1;
                                          }

                                          v56 = *(v55 + 168);
                                          if (!v56)
                                          {
                                            goto LABEL_107;
                                          }

                                          v84 = 0u;
                                          memset(out, 0, sizeof(out));
                                          if (a3)
                                          {
                                            if (DNSMessagePrintObfuscatedString(out, v56) < 0)
                                            {
                                              v56 = "«REDACTED»";
                                            }

                                            else
                                            {
                                              v56 = out;
                                            }
                                          }

                                          v57 = mdns_string_builder_append_formatted(v7, "%s", v56);
                                          *(v80 + 6) = v57;
                                          if (!v57)
                                          {
LABEL_107:
                                            v58 = mdns_string_builder_append_formatted(v7, "}");
                                            *(v80 + 6) = v58;
                                            if (!v58)
                                            {
LABEL_106:
                                              if (!*(a1 + 176) || (v59 = mdns_string_builder_append_formatted(v7, ", connection hostname: %s", *(a1 + 176)), (*(v80 + 6) = v59) == 0))
                                              {
                                                if (!*(a1 + 278) || (v60 = mdns_string_builder_append_formatted(v7, ", port: %d", *(a1 + 278)), (*(v80 + 6) = v60) == 0))
                                                {
                                                  v61 = *(a1 + 216);
                                                  if (!v61 || (v62 = mdns_string_builder_append_formatted(v7, ", SRV name: %s", *(v61 + 40)), (*(v80 + 6) = v62) == 0))
                                                  {
                                                    v63 = *(a1 + 136);
                                                    if (v63)
                                                    {
                                                      v72 = *(v63 + 24);
                                                      v64 = mdns_string_builder_append_formatted(v7, ", parent: %llu");
                                                    }

                                                    else
                                                    {
                                                      v65 = *(a1 + 264);
                                                      v64 = mdns_string_builder_append_formatted(v7, ", use count: %d");
                                                    }

                                                    *(v80 + 6) = v64;
                                                    if (!v64)
                                                    {
                                                      v13 = mdns_string_builder_copy_string(v7);
                                                      goto LABEL_37;
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

LABEL_36:
            v13 = 0;
LABEL_37:
            os_release(v7);
            goto LABEL_38;
          }

          *uu = 0;
          v86 = 0;
          v21 = *(a1 + 96);
          nw_resolver_config_get_identifier();
          memset(out, 0, 37);
          uuid_unparse(uu, out);
          v18 = mdns_string_builder_append_formatted(v7, " (%s)");
LABEL_31:
          *(v80 + 6) = v18;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        case 5u:
          v18 = mdns_string_builder_append_formatted(v7, "none+interface", v69);
          goto LABEL_31;
      }
    }

    v71 = *(a1 + 280);
    v18 = mdns_string_builder_append_formatted(v7, "«INVALID %d»");
    goto LABEL_31;
  }

  v13 = 0;
LABEL_38:
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  return v13;
}

BOOL ___mdns_dns_service_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

char *_mdns_dns_service_get_provider_name_cstr(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1 || !*(v1 + 96))
  {
    v1 = a1;
  }

  result = *(v1 + 160);
  if (result)
  {
    return xpc_string_get_string_ptr(result);
  }

  return result;
}

BOOL __mdns_dns_service_manager_create_block_invoke(id a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
  *a2 = Mutable;
  return Mutable != 0;
}

void __mdns_dns_service_manager_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0 && !*(v1 + 96))
  {
    v2 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, *(v1 + 88));
    *(v1 + 96) = v2;
    if (v2)
    {
      os_retain(v1);
      v3 = *(v1 + 96);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_dns_service_manager_activate_internal_block_invoke;
      handler[3] = &__block_descriptor_tmp_5;
      handler[4] = v1;
      dispatch_source_set_event_handler(v3, handler);
      v4 = *(v1 + 96);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = ___mdns_dns_service_manager_activate_internal_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_6;
      v5[4] = v1;
      dispatch_source_set_cancel_handler(v4, v5);
      dispatch_activate(*(v1 + 96));
    }

    else
    {
      _mdns_dns_service_manager_terminate(v1, -6729);
    }
  }
}

uint64_t ___mdns_dns_service_manager_activate_internal_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  if (result)
  {
    return (*(result + 16))(result, 3, 0);
  }

  return result;
}

void _mdns_dns_service_manager_terminate(uint64_t a1, int a2)
{
  if ((*(a1 + 130) & 1) == 0)
  {
    *(a1 + 131) = 1;
    v4 = *(a1 + 96);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 96));
      dispatch_release(v4);
      *(a1 + 96) = 0;
    }

    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        mdns_interface_monitor_invalidate(ValueAtIndex);
      }
    }

    CFArrayRemoveAllValues(*(a1 + 80));
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___mdns_dns_service_manager_terminate_block_invoke;
    v13[3] = &__block_descriptor_tmp_117;
    v13[4] = a1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v14[3] = &unk_10014F4F0;
    v14[4] = v13;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v14);
    v9 = *(a1 + 112);
    if (v9)
    {
      mdns_system_remove_network_policy(v9);
      *(a1 + 112) = 0;
    }

    os_retain(a1);
    v10 = *(a1 + 88);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___mdns_dns_service_manager_terminate_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_118;
    v11[4] = a1;
    v12 = a2;
    dispatch_async(v10, v11);
  }
}

uint64_t ___mdns_dns_service_manager_terminate_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___mdns_dns_service_manager_terminate_services_block_invoke;
  v5[3] = &__block_descriptor_tmp_119;
  v5[4] = v3;
  mdns_cfarray_enumerate(a2, v5);
  CFArrayRemoveAllValues(a2);
  return 1;
}

void ___mdns_dns_service_manager_terminate_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    (*(v3 + 16))(v2[13], v4);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void _mdns_dns_service_manager_terminate_service(uint64_t a1, uint64_t a2)
{
  _mdns_dns_service_clear_use_count(a2);
  _mdns_dns_service_make_defunct(a2);
  if (*(a2 + 96) && *(a2 + 284) == 1)
  {
    *(a2 + 284) = 0;
    _mdns_dns_service_manager_cancel_resolver_config_updates();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___mdns_dns_service_manager_terminate_service_block_invoke;
  v10[3] = &__block_descriptor_tmp_127;
  v10[4] = a1;
  v4 = *(a2 + 128);
  if (v4)
  {
    mdns_cfarray_enumerate(v4, v10);
    v5 = *(a2 + 128);
    if (v5)
    {
      CFRelease(v5);
      *(a2 + 128) = 0;
    }
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    mdns_cfarray_enumerate(v6, v10);
    v7 = *(a2 + 144);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 144) = 0;
    }
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    mdns_cfarray_enumerate(v8, v10);
    v9 = *(a2 + 152);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 152) = 0;
    }
  }
}

void _mdns_dns_service_clear_use_count(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 224));
    dispatch_release(v2);
    *(a1 + 224) = 0;
  }

  *(a1 + 264) = 0;
}

void _mdns_dns_service_make_defunct(uint64_t a1)
{
  *(a1 + 276) |= 1u;
  v2 = *(a1 + 200);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 200));
    dispatch_release(v2);
    *(a1 + 200) = 0;
  }

  _mdns_dns_service_forget_all_ddr_queriers(a1);
  if (*(a1 + 208))
  {
    nw_array_apply();
    v3 = *(a1 + 208);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 208) = 0;
    }
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    mdns_resolver_invalidate(v4);
    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    mdns_push_server_invalidate(v5);
    os_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    v7 = *(a1 + 248);
    if (!v7 || (block[0] = _NSConcreteStackBlock, block[1] = 0x40000000, block[2] = ___mdns_dns_service_make_defunct_block_invoke, block[3] = &unk_10014EFB0, block[4] = v7, dispatch_async(v6, block), (v6 = *(a1 + 240)) != 0))
    {
      dispatch_release(v6);
      *(a1 + 240) = 0;
    }
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 248) = 0;
  }
}

uint64_t _mdns_dns_service_manager_cancel_resolver_config_updates()
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  return nw_resolver_config_cancel_updates();
}

void ___mdns_dns_service_manager_cancel_resolver_config_updates_block_invoke(uint64_t a1)
{
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  nw_release(v2);
}

void _mdns_dns_service_forget_all_ddr_queriers(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    mdns_client_invalidate(v2);
    os_release(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    mdns_cfarray_enumerate(v3, &__block_literal_global_132);
    v4 = *(a1 + 192);

    CFArrayRemoveAllValues(v4);
  }
}

void __mdns_dns_service_manager_register_native_service_block_invoke(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 131) == 1)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = -6752;
    return;
  }

  v3 = *(v2 + 24);
  v4 = a1[7];
  v5 = *(a1[5] + 8);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v6 = *(v4 + 48);
  v7 = *(v4 + 52);
  if (*(v4 + 52))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || v7 > 2)
  {
    v10 = 0;
    v11 = -6705;
LABEL_20:
    *(v21 + 6) = v11;
    goto LABEL_21;
  }

  v12 = _mdns_dns_service_create(1, 1, (0x50201u >> (8 * (v7 & 0x1F))) & 7, &v23);
  v10 = v12;
  if (v12)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v25 = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke;
    v26 = &unk_10014E9B8;
    v27 = &v20;
    v28 = v12;
    mdns_cfarray_enumerate(*(v4 + 24), &buf);
    v13 = *(v21 + 6);
    if (v13)
    {
      goto LABEL_35;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 0x40000000;
    v19[2] = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2;
    v19[3] = &unk_10014E9E0;
    v19[4] = &v20;
    v19[5] = v10;
    mdns_cfset_enumerate(*(v4 + 32), v19);
    v13 = *(v21 + 6);
    if (v13)
    {
LABEL_35:
      os_release(v10);
      _Block_object_dispose(&v20, 8);
      v16 = 0;
      *(v5 + 24) = v13;
      goto LABEL_30;
    }

    *(v10 + 256) = v6;
    if (v6)
    {
      *(v10 + 104) = mdns_system_interface_index_to_name(v6);
    }

    v11 = 0;
    *(v10 + 276) = 6;
    if (*(v4 + 53))
    {
      v14 = 8198;
    }

    else
    {
      v14 = 6;
    }

    *(v10 + 276) = v14;
    goto LABEL_20;
  }

  v11 = *(v21 + 6);
LABEL_21:
  _Block_object_dispose(&v20, 8);
  if (!v11)
  {
    _mdns_dns_service_increment_use_count(v10);
    CFArrayAppendValue(v3, v10);
    _mdns_dns_service_manager_update_interface_properties_for_service(v2, v10);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v17 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registered native service -- %@", &buf, 0xCu);
    }

    v15 = *(v10 + 24);
    *(v5 + 24) = 0;
    goto LABEL_29;
  }

  v15 = 0;
  v16 = 0;
  *(v5 + 24) = v11;
  if (v10)
  {
LABEL_29:
    os_release(v10);
    v16 = v15;
  }

LABEL_30:
  *(*(a1[4] + 8) + 24) = v16;
  if (*(*(a1[4] + 8) + 24))
  {
    v18 = *(a1[6] + 96);
    if (v18)
    {
      dispatch_source_merge_data(v18, 1uLL);
    }
  }
}

uint64_t _mdns_dns_service_create(char a1, char a2, char a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v12 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_7;
  }

  v10 = &_mdns_dns_service_kind;
  *(v8 + 16) = &_mdns_dns_service_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  v12 = 0;
  *(v9 + 24) = atomic_fetch_add_explicit(&_mdns_get_next_dns_service_id_s_next_id, 1uLL, memory_order_relaxed);
  *(v9 + 281) = a1;
  *(v9 + 282) = a2;
  *(v9 + 280) = a3;
  if (a4)
  {
LABEL_7:
    *a4 = v12;
  }

  return v9;
}

BOOL ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2(uint64_t a1, void *a2)
{
  _mdns_dns_service_add_domain(*(a1 + 40), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_increment_use_count(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 224);
  if (v2 == 1)
  {
    if (!v3)
    {
      v2 = 1;
      goto LABEL_7;
    }

    *(a1 + 264) = 0;
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    dispatch_source_cancel(v3);
    dispatch_release(v3);
    *(a1 + 224) = 0;
    v2 = *(a1 + 264);
  }

LABEL_7:
  result = (v2 + 1);
  *(a1 + 264) = result;
  return result;
}

void _mdns_dns_service_manager_update_interface_properties_for_service(CFArrayRef *a1, uint64_t a2)
{
  v4 = *(a2 + 256);
  Count = CFArrayGetCount(a1[10]);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[10], v7);
      if (ValueAtIndex[34] == v4)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v10 = ValueAtIndex;
    goto LABEL_14;
  }

LABEL_5:
  v9 = mdns_interface_monitor_create(v4);
  if (v9)
  {
    v10 = v9;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    mdns_interface_monitor_set_queue(v10, _mdns_dns_service_queue_s_queue);
    os_retain(a1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke;
    v19 = &__block_descriptor_tmp_58;
    v20 = a1;
    v21 = v10;
    mdns_interface_monitor_set_update_handler(v10, buf);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_60;
    v17[4] = v10;
    v17[5] = a1;
    mdns_interface_monitor_set_event_handler(v10, v17);
    if ((*(v10 + 154) & 1) == 0)
    {
      if (*(v10 + 32))
      {
        _mdns_interface_monitor_activate_async(v10);
      }

      *(v10 + 154) = 1;
    }

    CFArrayAppendValue(a1[10], v10);
LABEL_14:
    v11 = *(a2 + 276) & 0xF80F;
    *(a2 + 276) = v11;
    v12 = *(v10 + 144);
    v13 = v11 & 0xFF0F | (16 * (v12 & 0xF));
    if ((v12 & 0xF) != 0)
    {
      *(a2 + 276) = v13;
    }

    if (*(a2 + 282) == 2 && *(a2 + 256) && (v12 & 0x10) != 0)
    {
      v13 |= 0x100u;
      *(a2 + 276) = v13;
    }

    if ((v12 & 0x60) != 0)
    {
      *(a2 + 276) = v13 | (16 * v12) & 0x600;
    }

    return;
  }

  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v14 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a2 + 104);
    if (!v15)
    {
      v15 = "";
    }

    v16 = *(a2 + 256);
    *buf = 136446466;
    *&buf[4] = v15;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get interface monitor for interface %{public}s/%u", buf, 0x12u);
  }
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v18.length = CFArrayGetCount(*(v4 + 80));
    v18.location = 0;
    if (CFArrayContainsValue(*(v4 + 80), v18, v3))
    {
      if (a2 < 0)
      {
        v5 = v3[34];
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v6 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Network change event for interface index %u", buf, 8u);
        }

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = ___mdns_dns_service_manager_handle_network_change_event_block_invoke;
        v11[3] = &__block_descriptor_tmp_61;
        v12 = v5;
        v7 = *(v4 + 40);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v16 = &unk_10014EA88;
        v17 = v11;
        mdns_cfarray_enumerate(v7, buf);
        v8 = *(v4 + 56);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v16 = &unk_10014EA88;
        v17 = v11;
        mdns_cfarray_enumerate(v8, buf);
        v9 = *(v4 + 48);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2;
        v16 = &__block_descriptor_tmp_62;
        LODWORD(v17) = v5;
        mdns_cfarray_enumerate(v9, buf);
      }

      v10 = *(v4 + 96);
      if (v10)
      {
        dispatch_source_merge_data(v10, 1uLL);
      }
    }
  }
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v7.length = CFArrayGetCount(*(*(a1 + 40) + 80));
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(*(a1 + 40) + 80), v7, *(a1 + 32));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 40) + 80), FirstIndexOfValue);
    }

    v5 = *(a1 + 32);

    mdns_interface_monitor_invalidate(v5);
  }

  else if (a2 == 2)
  {
    os_release(*(a1 + 32));
    v3 = *(a1 + 40);

    os_release(v3);
  }
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 286) = 1;
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (v5)
    {
      v6 = *(a1 + 32);

      return mdns_cfarray_enumerate(v5, v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 264) = 0;
  }

  return 1;
}

void _mdns_dns_service_add_domain(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1E572DDFuLL);
  if (v6)
  {
    v7 = v6;
    v6[1] = a2;
    os_retain(a2);
    *(v7 + 16) = a3;
    v8 = a1 + 88;
    do
    {
      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_6;
      }

      v10 = _domain_item_compare(v7, v8, 1);
    }

    while (v10 > 0);
    if (v10)
    {
LABEL_6:
      *v7 = v8;
      *v9 = v7;
      return;
    }

    if (*(v8 + 16) > a3)
    {
      *(v8 + 16) = a3;
    }

    _domain_item_free(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _mdns_dns_service_append_address(uint64_t a1, void *value)
{
  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 80) = Mutable;
    if (!Mutable)
    {
      return 4294960567;
    }
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

void mdns_dns_service_manager_deregister_native_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_native_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_8_849;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_native_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 24), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

uint64_t _mdns_dns_service_manager_get_service_by_id(const __CFArray *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_manager_get_service_by_id_block_invoke;
  v4[3] = &unk_10014EED8;
  v4[4] = &v5;
  v4[5] = a2;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _mdns_dns_service_manager_deregister_service(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 264) - 1;
  *(a2 + 264) = v2;
  if (!v2)
  {
    v5 = *(a2 + 272);
    if (!v5)
    {
      goto LABEL_13;
    }

    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    monotonic_timer = _mdns_dispatch_create_monotonic_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dns_service_queue_s_queue);
    *(a2 + 224) = monotonic_timer;
    v7 = *(a2 + 264);
    if (monotonic_timer)
    {
      *(a2 + 264) = v7 + 1;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = ___mdns_dns_service_decrement_use_count_block_invoke;
      v14[3] = &__block_descriptor_tmp_76;
      v14[4] = a2;
      v14[5] = a1;
      dispatch_source_set_event_handler(monotonic_timer, v14);
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v8 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v9 = *(a2 + 24);
        v10 = *(a2 + 272);
        *buf = 134218240;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Keeping orphaned DNS service %llu for up to %u milliseconds", buf, 0x12u);
      }

      dispatch_activate(*(a2 + 224));
      v7 = *(a2 + 264);
    }

    if (!v7)
    {
LABEL_13:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v11 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v12 = *(a2 + 24);
        *buf = 134217984;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deregistered DNS service -- service id: %llu", buf, 0xCu);
      }

      v13 = *(a1 + 96);
      if (v13)
      {
        dispatch_source_merge_data(v13, 1uLL);
      }
    }
  }
}