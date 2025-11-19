unint64_t SanityCheckBitMap(unint64_t result, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result < a2)
  {
    while (1)
    {
      v8 = a3 - 2;
      if (a3 <= 2)
      {
        break;
      }

      v9 = *(result + 1);
      a3 = v8 - v9;
      if (v8 < v9 || (v9 - 33) <= 0xFFFFFFDF)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SanityCheckBitMap: invalid window length %d", a4, a5, a6, a7, a8, v9);
        }

        return 0;
      }

      result += v9 + 2;
      if (result >= a2)
      {
        return result;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SanityCheckBitMap: invalid length %d", a4, a5, a6, a7, a8, a3);
    }

    return 0;
  }

  return result;
}

char **mDNS_snprintf_add(char **result, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *result;
  v10 = a2 - *result;
  if (v10)
  {
    v11 = result;
    result = mDNS_vsnprintf(v9, v10, a3, &a9);
    *v11 = &v9[result];
  }

  return result;
}

void DumpPacket(int a1, int a2, uint64_t a3, __int128 *a4, unsigned int a5, unsigned int *a6, unsigned int a7, unsigned __int8 *a8, unint64_t a9, uint64_t a10)
{
  v135 = xmmword_10010D568;
  v136 = 0;
  memset(v139, 0, sizeof(v139));
  if (a1)
  {
    v123 = a1;
  }

  mDNS_snprintf(v139);
  v16 = &xmmword_100170388;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v17 = v16;
    if (*(v16 + 444) == a10)
    {
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_8:
  v18 = v17 + 3606;
  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = *a8;
  if (*a8)
  {
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        v31 = a8 + 12;
        v32 = 0uLL;
        memset(v198, 0, sizeof(v198));
        v197 = 0u;
        v196 = 0u;
        v195 = 0u;
        v194 = 0u;
        v193 = 0u;
        v192 = 0u;
        v191 = 0u;
        v190 = 0u;
        v189 = 0u;
        v188 = 0u;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        memset(buf, 0, sizeof(buf));
        memset(v183, 0, sizeof(v183));
        v138 = v183;
        if (*(a8 + 2))
        {
          v33 = 0;
          do
          {
            DomainName = getDomainName(a8, v31, a9, buf);
            if (!DomainName)
            {
              return;
            }

            v40 = DomainName;
            if ((a9 - DomainName) < 4)
            {
              return;
            }

            v41 = bswap32(*DomainName) >> 16;
            v42 = *(DomainName + 1);
            if (v41 != 1)
            {
              DNSTypeName(v41);
            }

            v43 = __rev16(v42);
            mDNS_snprintf_add(&v138, buf, " %##s %s", v35, v36, v37, v38, v39, buf);
            if (v43 != 1)
            {
              mDNS_snprintf_add(&v138, buf, "/%u", v44, v45, v46, v47, v48, v43);
            }

            v31 = v40 + 4;
            mDNS_snprintf_add(&v138, buf, "?", v44, v45, v46, v47, v48, v124);
            ++v33;
          }

          while (v33 < *(a8 + 2));
          v49 = buf;
          v32 = 0uLL;
        }

        else
        {
          v49 = 0;
        }

        v182[30] = v32;
        v182[31] = v32;
        v182[28] = v32;
        v182[29] = v32;
        v182[26] = v32;
        v182[27] = v32;
        v182[24] = v32;
        v182[25] = v32;
        v182[22] = v32;
        v182[23] = v32;
        v182[20] = v32;
        v182[21] = v32;
        v182[18] = v32;
        v182[19] = v32;
        v182[16] = v32;
        v182[17] = v32;
        v182[14] = v32;
        v182[15] = v32;
        v182[12] = v32;
        v182[13] = v32;
        v182[10] = v32;
        v182[11] = v32;
        v182[8] = v32;
        v182[9] = v32;
        v182[6] = v32;
        v182[7] = v32;
        v182[4] = v32;
        v182[5] = v32;
        v182[2] = v32;
        v182[3] = v32;
        v182[0] = v32;
        v182[1] = v32;
        v137 = v182;
        v50 = *(a8 + 3);
        v51 = *(a8 + 4);
        v52 = *(a8 + 5);
        if (v51 + v50 + v52)
        {
          v53 = 0;
          v132 = v51 + v52 + v50;
          do
          {
            v54 = &buf[256 * (v49 == buf)];
            v55 = getDomainName(a8, v31, a9, v54);
            if (v55)
            {
              v61 = (a9 - v55) < 10;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
              return;
            }

            v62 = __rev16(*(v55 + 4));
            v63 = v55 + 10;
            if ((a9 - (v55 + 10)) < v62)
            {
              return;
            }

            v64 = *v55;
            v65 = *(v55 + 1);
            v134 = *(v55 + 1);
            if (v53)
            {
              mDNS_snprintf_add(&v137, v183, ",", v56, v57, v58, v59, v60, v123);
            }

            if (!v49 || !SameDomainNameBytes(v54, v49))
            {
              mDNS_snprintf_add(&v137, v183, " %##s", v56, v57, v58, v59, v60, v54);
            }

            v66 = __rev16(v64);
            v67 = "A";
            if (v66 != 1)
            {
              LODWORD(v67) = DNSTypeName(v66);
            }

            v68 = __rev16(v65);
            mDNS_snprintf_add(&v137, v183, " %s", v56, v57, v58, v59, v60, v67);
            if (v68 != 1)
            {
              mDNS_snprintf_add(&v137, v183, "/%u", v69, v70, v71, v72, v73, v68);
            }

            mDNS_snprintf_add(&v137, v183, " ", v69, v70, v71, v72, v73, v125);
            if (v66 > 5)
            {
              if (v66 == 6)
              {
                v89 = getDomainName(a8, v63, a9, buf);
                if (!v89)
                {
                  return;
                }

                v90 = getDomainName(a8, v89, a9, v198);
                if (!v90 || (a9 - v90) < 20)
                {
                  return;
                }

                v129 = bswap32(v90[3]);
                v130 = bswap32(v90[4]);
                v127 = bswap32(v90[1]);
                v128 = bswap32(v90[2]);
                v126 = bswap32(*v90);
                mDNS_snprintf_add(&v137, v183, "%##s %##s %lu %lu %lu %lu %lu", v91, v92, v93, v94, v95, buf);
                v54 = 0;
              }

              else
              {
                if (v66 != 28 || v62 != 16)
                {
                  goto LABEL_80;
                }

                mDNS_snprintf_add(&v137, v183, "%.16a", v74, v75, v76, v77, v78, v63);
              }
            }

            else
            {
              if (v66 != 1)
              {
                if (v66 == 5)
                {
                  if (!getDomainName(a8, v63, a9, v54))
                  {
                    return;
                  }

                  mDNS_snprintf_add(&v137, v183, "%##s", v79, v80, v81, v82, v83, v54);
                  goto LABEL_81;
                }

LABEL_80:
                mDNS_snprintf_add(&v137, v183, "RDATA[%u]: %.*H", v74, v75, v76, v77, v78, v62);
                goto LABEL_81;
              }

              if (v62 != 4)
              {
                goto LABEL_80;
              }

              mDNS_snprintf_add(&v137, v183, "%.4a", v74, v75, v76, v77, v78, v63);
            }

LABEL_81:
            mDNS_snprintf_add(&v137, v183, " (%lu)", v84, v85, v86, v87, v88, bswap32(v134));
            v31 = &v63[v62];
            ++v53;
            v49 = v54;
          }

          while (v132 != v53);
        }

        v96 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v100 = bswap32(*a8);
          v101 = a8[2];
          if ((v101 & 0x78u) >= 0x30)
          {
            v102 = "DSO ";
            if ((v101 & 0x78) != 0x30)
            {
              v102 = "?? ";
            }
          }

          else
          {
            v102 = *(&off_10014FDF8 + (v101 & 0x78));
          }

          v107 = HIWORD(v100);
          if ((v101 & 0x80u) != 0)
          {
            v108 = "Response";
          }

          else
          {
            v108 = "Query";
          }

          v109 = a8[3];
          v110 = v109 & 0xF;
          if ((v109 & 0xFu) >= 0xB)
          {
            v111 = "??";
            if ((v109 & 0xF) == 0xB)
            {
              v111 = "DSOTypeNI";
            }
          }

          else
          {
            v111 = off_10014FE28[v110];
          }

          v112 = *(a8 + 3);
          v113 = " AA";
          v114 = *(a8 + 4);
          v115 = *(a8 + 5);
          if ((v101 & 4) == 0)
          {
            v113 = "";
          }

          *v140 = 67114243;
          v141 = v107;
          if ((v101 & 2) != 0)
          {
            v116 = " TC";
          }

          else
          {
            v116 = "";
          }

          v142 = 2082;
          v143 = v102;
          if (v101)
          {
            v117 = " RD";
          }

          else
          {
            v117 = "";
          }

          v144 = 2082;
          v145 = v108;
          v146 = 2048;
          if ((v109 & 0x80u) != 0)
          {
            v118 = " RA";
          }

          else
          {
            v118 = "";
          }

          v147 = a9 - a8;
          v119 = " AD";
          v148 = 1024;
          if ((v109 & 0x20) == 0)
          {
            v119 = "";
          }

          v149 = v101;
          v120 = " CD";
          v150 = 1024;
          if ((v109 & 0x10) == 0)
          {
            v120 = "";
          }
        }

        else
        {
          v96 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v97 = bswap32(*a8);
          v98 = a8[2];
          if ((v98 & 0x78u) >= 0x30)
          {
            v99 = "DSO ";
            if ((v98 & 0x78) != 0x30)
            {
              v99 = "?? ";
            }
          }

          else
          {
            v99 = *(&off_10014FDF8 + (v98 & 0x78));
          }

          v121 = HIWORD(v97);
          if ((v98 & 0x80u) != 0)
          {
            v122 = "Response";
          }

          else
          {
            v122 = "Query";
          }

          v109 = a8[3];
          v110 = v109 & 0xF;
          if ((v109 & 0xFu) >= 0xB)
          {
            v111 = "??";
            if ((v109 & 0xF) == 0xB)
            {
              v111 = "DSOTypeNI";
            }
          }

          else
          {
            v111 = off_10014FE28[v110];
          }

          v112 = *(a8 + 3);
          v113 = " AA";
          v114 = *(a8 + 4);
          v115 = *(a8 + 5);
          if ((v98 & 4) == 0)
          {
            v113 = "";
          }

          *v140 = 67114243;
          v141 = v121;
          if ((v98 & 2) != 0)
          {
            v116 = " TC";
          }

          else
          {
            v116 = "";
          }

          v142 = 2082;
          v143 = v99;
          if (v98)
          {
            v117 = " RD";
          }

          else
          {
            v117 = "";
          }

          v144 = 2082;
          v145 = v122;
          v146 = 2048;
          if ((v109 & 0x80u) != 0)
          {
            v118 = " RA";
          }

          else
          {
            v118 = "";
          }

          v147 = a9 - a8;
          v119 = " AD";
          v148 = 1024;
          if ((v109 & 0x20) == 0)
          {
            v119 = "";
          }

          v149 = v98;
          v120 = " CD";
          v150 = 1024;
          if ((v109 & 0x10) == 0)
          {
            v120 = "";
          }
        }

        v151 = v109;
        v152 = 2082;
        v153 = v111;
        v154 = 1024;
        v155 = v110;
        v156 = 2082;
        v157 = v113;
        v158 = 2082;
        v159 = v116;
        v160 = 2082;
        v161 = v117;
        v162 = 2082;
        v163 = v118;
        v164 = 2082;
        v165 = v119;
        v166 = 2082;
        v167 = v120;
        v168 = 2160;
        v169 = 1752392040;
        v170 = 2085;
        v171 = v183;
        v172 = 1024;
        v173 = v112;
        v174 = 1024;
        v175 = v114;
        v176 = 1024;
        v177 = v115;
        v178 = 2160;
        v179 = 1752392040;
        v180 = 2085;
        v181 = v182;
        v29 = "[Q%u] DNS %{public}s%{public}s (%lu) (flags %02X%02X) RCODE: %{public}s (%d)%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s:%{sensitive, mask.hash}s %u/%u/%u %{sensitive, mask.hash}s";
        v103 = v140;
        v104 = v96;
        v105 = OS_LOG_TYPE_DEFAULT;
        v106 = 184;
        goto LABEL_153;
      }

      *buf = 67112451;
      v23 = &v135;
      *&buf[4] = __rev16(v20);
      if (a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = &v135;
      }

      *&buf[8] = 2082;
      *&buf[10] = v139;
      v25 = bswap32(a5) >> 16;
      *&buf[18] = 2082;
      if (a6)
      {
        v23 = a6;
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 67112451;
      v23 = &v135;
      *&buf[4] = __rev16(v20);
      if (a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = &v135;
      }

      *&buf[8] = 2082;
      *&buf[10] = v139;
      v25 = bswap32(a5) >> 16;
      *&buf[18] = 2082;
      if (a6)
      {
        v23 = a6;
      }
    }

    *&buf[20] = a3;
    *&buf[28] = 2048;
    *&buf[30] = a9 - a8;
    *&buf[38] = 2160;
    *&buf[40] = 1752392040;
    LOWORD(v185) = 1045;
    *(&v185 + 2) = 20;
    WORD3(v185) = 2101;
    *(&v185 + 1) = v24;
    LOWORD(v186) = 1024;
    *(&v186 + 2) = v25;
    WORD3(v186) = 2160;
    *(&v186 + 1) = 1752392040;
    LOWORD(v187) = 1045;
    *(&v187 + 2) = 20;
    WORD3(v187) = 2101;
    *(&v187 + 1) = v23;
    LOWORD(v188) = 1024;
    *(&v188 + 2) = bswap32(a7) >> 16;
    WORD3(v188) = 2082;
    *(&v188 + 1) = v19;
    LOWORD(v189) = 2048;
    *(&v189 + 2) = a10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Q%u] %{public}s %{public}s DNS Message %lu bytes from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d via %{public}s (%p)", buf, 0x7Au);
    goto LABEL_42;
  }

  DumpMDNSPacket(a2, a8, a9, a4, a5, a6, a7, a10, v19);
  if (!a1)
  {
    return;
  }

  v26 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v27 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (a2)
  {
    if (v28)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = a1;
      v29 = "Sending mDNS message failed - mStatus: %d";
    }

    else
    {
      v26 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = a1;
      v29 = "Sending mDNS message failed - mStatus: %d";
    }
  }

  else if (v28)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a1;
    v29 = "Receiving mDNS message failed - mStatus: %d";
  }

  else
  {
    v26 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a1;
    v29 = "Receiving mDNS message failed - mStatus: %d";
  }

  v103 = buf;
  v104 = v26;
  v105 = OS_LOG_TYPE_ERROR;
  v106 = 8;
LABEL_153:
  _os_log_impl(&_mh_execute_header, v104, v105, v29, v103, v106);
}

void DumpMDNSPacket(int a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4, __int16 a5, unsigned int *a6, unsigned __int16 a7, unsigned int a8, uint64_t a9)
{
  v15 = a2 + 12;
  v16 = (a3 - a2);
  v96 = a2[2];
  if (a6)
  {
    IsDNSMulticast = mDNSAddrIsDNSMulticast(a6);
    v18 = a7 == 59668;
    if (IsDNSMulticast)
    {
      v18 = 0;
    }

    v93 = v18;
  }

  else
  {
    v93 = 0;
  }

  v19 = -2128831035;
  if (v16)
  {
    v20 = a2;
    v21 = v16;
    do
    {
      v22 = *v20++;
      v19 = 16777619 * (v19 ^ v22);
      --v21;
    }

    while (v21);
    v23 = a2;
    v24 = v16;
    do
    {
      v25 = *v23++;
      LODWORD(v21) = v25 + 65599 * v21;
      --v24;
    }

    while (v24);
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v26 = v21;
  v27 = v19;
  if (a4)
  {
    v28 = 0;
    v29 = a4 + 1;
    v30 = v19;
    do
    {
      v30 = 16777619 * (v30 ^ *(v29 + v28++));
    }

    while (v28 != 4);
    v31 = 0;
    v32 = v30 ^ a5;
    v33 = v21;
    do
    {
      v33 = *(v29 + v31++) + 65599 * v33;
    }

    while (v31 != 4);
    v26 = HIBYTE(a5) + 65599 * (a5 + 65599 * v33);
    v27 = 16777619 * ((16777619 * v32) ^ HIBYTE(a5));
  }

  v92 = v16;
  if (a6)
  {
    v34 = 0;
    v35 = a6 + 1;
    do
    {
      v27 = 16777619 * (v27 ^ *(v35 + v34++));
    }

    while (v34 != 4);
    for (i = 0; i != 4; ++i)
    {
      v26 = *(v35 + i) + 65599 * v26;
    }

    v26 = HIBYTE(a7) + 65599 * (a7 + 65599 * v26);
    v27 = 16777619 * ((16777619 * (v27 ^ a7)) ^ HIBYTE(a7));
  }

  v37 = 0;
  v38 = a9;
  *buf = bswap32(a8);
  do
  {
    v27 = 16777619 * (v27 ^ buf[v37++]);
  }

  while (v37 != 4);
  for (j = 0; j != 4; ++j)
  {
    v26 = buf[j] + 65599 * v26;
  }

  v40 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot;
  if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot)
  {
    if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot >= 0x14)
    {
      v41 = 20;
    }

    else
    {
      v41 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot;
    }

    v42 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsg2ndHashes;
    v43 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsgHashes;
    while (1)
    {
      v44 = *v43++;
      if (v44 == v19 && *v42 == v21)
      {
        break;
      }

      ++v42;
      if (!--v41)
      {
        goto LABEL_37;
      }
    }

    v46 = 0;
  }

  else
  {
LABEL_37:
    v45 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsgHashes[DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot] = v19;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsg2ndHashes[v45] = v21;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot = (v45 + 1) % 0x14u;
    if (v40 <= 0x13)
    {
      DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot = v40 + 1;
    }

    v46 = 1;
  }

  v47 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot;
  if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot)
  {
    if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot >= 0x14)
    {
      v48 = 20;
    }

    else
    {
      v48 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot;
    }

    v49 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousComplete2ndHashes;
    v50 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousCompleteHashes;
    while (1)
    {
      v51 = *v50++;
      if (v51 == v27 && *v49 == v26)
      {
        break;
      }

      ++v49;
      if (!--v48)
      {
        goto LABEL_49;
      }
    }

    v53 = 0;
  }

  else
  {
LABEL_49:
    v52 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousCompleteHashes[DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot] = v27;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousComplete2ndHashes[v52] = v26;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot = (v52 + 1) % 0x14u;
    if (v47 <= 0x13)
    {
      DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot = v47 + 1;
    }

    v53 = 1;
  }

  v54 = *(a2 + 2);
  v55 = *(a2 + 3);
  if (!a4)
  {
    if (!a6)
    {
      v56 = 1;
      goto LABEL_60;
    }

LABEL_58:
    v56 = *a6 != 6;
    goto LABEL_60;
  }

  v56 = *a4 != 6;
  if (a6 && *a4 != 6)
  {
    goto LABEL_58;
  }

LABEL_60:
  v57 = a2[3];
  v58 = (v96 << 8) | (*a2 << 24) | (a2[1] << 16);
  v59 = (*(a2 + 2) << 48) & 0xFF00000000000000 | (*(a2 + 2) << 48) | (HIBYTE(*(a2 + 3)) << 40) | (*(a2 + 3) << 32) | (HIBYTE(*(a2 + 4)) << 24) | (*(a2 + 4) << 16);
  v60 = *(a2 + 5);
  memset(v116, 0, 60);
  v90 = a6;
  if (!v46)
  {
    v66 = 0;
    goto LABEL_102;
  }

  v91 = a8;
  v88 = v53;
  v89 = v46;
  v86 = v57;
  v87 = v56;
  v85 = v60;
  if (v54)
  {
    v61 = v58;
    v62 = 0;
    v63 = v116;
    while (1)
    {
      *buf = 0;
      v97 = 0;
      if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
      {
        break;
      }

      *v63 = bswap32(*buf);
      *(v63 + 2) = bswap32(v97) >> 16;
      v64 = skipDomainName(a2, v15, a3);
      v15 = v64 + 4;
      if (v64 == -4 || !v64 || v15 > a3)
      {
        break;
      }

      v63 = (v63 + 6);
      v65 = v62 + 1;
      if (v62 <= 8)
      {
        ++v62;
        if (v65 < *(a2 + 2))
        {
          continue;
        }
      }

      v55 = *(a2 + 3);
      v58 = v61;
      a8 = v91;
      goto LABEL_73;
    }

    v58 = v61;
    a8 = v91;
    goto LABEL_101;
  }

  v65 = 0;
  v63 = v116;
LABEL_73:
  v84 = v58;
  if (v65 <= 9 && v55)
  {
    v67 = 1;
    while (1)
    {
      v62 = v65 + v67 - 1;
      *buf = 0;
      v97 = 0;
      if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
      {
        break;
      }

      *v63 = bswap32(*buf);
      *(v63 + 2) = bswap32(v97) >> 16;
      v68 = skipResourceRecord(a2, v15, a3);
      if (!v68)
      {
LABEL_97:
        v74 = v65 + v67;
LABEL_98:
        v62 = v74 - 1;
        break;
      }

      v15 = v68;
      v63 = (v63 + 6);
      v69 = v67 + 1;
      if (v67 < *(a2 + 3))
      {
        ++v67;
        if (v62 < 9)
        {
          continue;
        }
      }

      v65 = v65 + v69 - 1;
      a8 = v91;
      v58 = v84;
      goto LABEL_81;
    }
  }

  else
  {
LABEL_81:
    if (*(a2 + 4) && v65 <= 9)
    {
      v67 = 1;
      while (1)
      {
        v62 = v65 + v67 - 1;
        *buf = 0;
        v97 = 0;
        if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
        {
          break;
        }

        *v63 = bswap32(*buf);
        *(v63 + 2) = bswap32(v97) >> 16;
        v70 = skipResourceRecord(a2, v15, a3);
        if (!v70)
        {
          goto LABEL_97;
        }

        v15 = v70;
        v63 = (v63 + 6);
        v71 = v67 + 1;
        if (v67 < *(a2 + 4))
        {
          ++v67;
          if (v62 < 9)
          {
            continue;
          }
        }

        v65 = v65 + v71 - 1;
        a8 = v91;
        v58 = v84;
        goto LABEL_89;
      }
    }

    else
    {
LABEL_89:
      if (!*(a2 + 5) || v65 > 9)
      {
        v62 = v65;
        goto LABEL_101;
      }

      v67 = 1;
      while (1)
      {
        v62 = v65 + v67 - 1;
        *buf = 0;
        v97 = 0;
        if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
        {
          break;
        }

        *v63 = bswap32(*buf);
        *(v63 + 2) = bswap32(v97) >> 16;
        v72 = skipResourceRecord(a2, v15, a3);
        if (!v72)
        {
          goto LABEL_97;
        }

        v73 = v67 + 1;
        if (v67 < *(a2 + 5))
        {
          v15 = v72;
          v63 = (v63 + 6);
          ++v67;
          if (v62 < 9)
          {
            continue;
          }
        }

        v74 = v65 + v73;
        goto LABEL_98;
      }
    }
  }

  a8 = v91;
  v58 = v84;
LABEL_101:
  v66 = 6 * v62;
  v38 = a9;
  v53 = v88;
  LOBYTE(v46) = v89;
  v57 = v86;
  v56 = v87;
  v60 = v85;
LABEL_102:
  v75 = v58 | v57;
  v76 = (v59 | v60);
  v77 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v78 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v78 = 1;
  }

  v79 = v78;
  if (!v93)
  {
    if (v56)
    {
      if (!a1)
      {
        if ((v96 & 0x80) != 0)
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[Q(%x, %x)] Received %u-byte IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over multicast";
        }

        else
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[A(%x, %x)] Received %u-byte IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over multicast";
        }

        goto LABEL_348;
      }

      if ((v96 & 0x80) != 0)
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[A(%x, %x)] Sent %u-byte IPv4 mDNS response over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast via %{public}s/%u";
      }

      else
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast";
LABEL_348:
          v82 = v81;
          goto LABEL_349;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[Q(%x, %x)] Sent %u-byte IPv4 mDNS query over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
LABEL_366:
          v82 = v77;
          v83 = 82;
          goto LABEL_402;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast via %{public}s/%u";
      }
    }

    else
    {
      if (!a1)
      {
        if ((v96 & 0x80) != 0)
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[Q(%x, %x)] Received %u-byte IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over multicast";
        }

        else
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[A(%x, %x)] Received %u-byte IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over multicast";
        }

        goto LABEL_348;
      }

      if ((v96 & 0x80) != 0)
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[A(%x, %x)] Sent %u-byte IPv6 mDNS response over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast via %{public}s/%u";
      }

      else
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[Q(%x, %x)] Sent %u-byte IPv6 mDNS query over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast via %{public}s/%u";
      }
    }

    v82 = v77;
    v83 = 30;
    goto LABEL_402;
  }

  if (!v56)
  {
    if (a1)
    {
      if ((v96 & 0x80) != 0)
      {
        if (v53)
        {
          if (v46)
          {
            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67112195;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 1024;
            *v103 = v92;
            *&v103[4] = 2160;
            *&v103[6] = 1752392040;
            v104 = 1045;
            *v105 = 20;
            *&v105[4] = 2101;
            *&v105[6] = v90;
            *&v105[14] = 2082;
            *&v105[16] = v38;
            v106 = 1024;
            *v107 = a8;
            *&v107[4] = 2048;
            *&v107[6] = v75;
            v108 = 2048;
            v109 = v76;
            v110 = 2160;
            v111 = 1752392040;
            v112 = 1040;
            v113 = v66;
            v114 = 2101;
            v115 = v116;
            v80 = "[A(%x, %x)] Sent %u-byte IPv6 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
            goto LABEL_392;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67110659;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 2160;
          *v103 = 1752392040;
          *&v103[8] = 1045;
          *&v103[10] = 20;
          v104 = 2101;
          *v105 = v90;
          *&v105[8] = 2082;
          *&v105[10] = v38;
          *&v105[18] = 1024;
          *&v105[20] = a8;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
          goto LABEL_401;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over unicast";
          goto LABEL_271;
        }

        v81 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over unicast";
      }

      else
      {
        if (v53)
        {
          if (v46)
          {
            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67112195;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 1024;
            *v103 = v92;
            *&v103[4] = 2160;
            *&v103[6] = 1752392040;
            v104 = 1045;
            *v105 = 20;
            *&v105[4] = 2101;
            *&v105[6] = v90;
            *&v105[14] = 2082;
            *&v105[16] = v38;
            v106 = 1024;
            *v107 = a8;
            *&v107[4] = 2048;
            *&v107[6] = v75;
            v108 = 2048;
            v109 = v76;
            v110 = 2160;
            v111 = 1752392040;
            v112 = 1040;
            v113 = v66;
            v114 = 2101;
            v115 = v116;
            v80 = "[Q(%x, %x)] Sent %u-byte IPv6 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
            goto LABEL_392;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67110659;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 2160;
          *v103 = 1752392040;
          *&v103[8] = 1045;
          *&v103[10] = 20;
          v104 = 2101;
          *v105 = v90;
          *&v105[8] = 2082;
          *&v105[10] = v38;
          *&v105[18] = 1024;
          *&v105[20] = a8;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
LABEL_401:
          v82 = v77;
          v83 = 56;
          goto LABEL_402;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over unicast";
          goto LABEL_271;
        }

        v81 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over unicast";
      }
    }

    else if ((v96 & 0x80) != 0)
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[Q(%x, %x)] Received %u-byte IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over unicast";
    }

    else
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[A(%x, %x)] Received %u-byte IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over unicast";
    }

    goto LABEL_348;
  }

  if (!a1)
  {
    if ((v96 & 0x80) != 0)
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[Q(%x, %x)] Received %u-byte IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over unicast";
    }

    else
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[A(%x, %x)] Received %u-byte IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over unicast";
    }

    goto LABEL_348;
  }

  if ((v96 & 0x80) != 0)
  {
    if (v53)
    {
      if (v46)
      {
        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67112195;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 1024;
        *v103 = v92;
        *&v103[4] = 2160;
        *&v103[6] = 1752392040;
        v104 = 1045;
        *v105 = 20;
        *&v105[4] = 2101;
        *&v105[6] = v90;
        *&v105[14] = 2082;
        *&v105[16] = v38;
        v106 = 1024;
        *v107 = a8;
        *&v107[4] = 2048;
        *&v107[6] = v75;
        v108 = 2048;
        v109 = v76;
        v110 = 2160;
        v111 = 1752392040;
        v112 = 1040;
        v113 = v66;
        v114 = 2101;
        v115 = v116;
        v80 = "[A(%x, %x)] Sent %u-byte IPv4 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
        goto LABEL_392;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v77 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      *buf = 67110659;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v102 = 2160;
      *v103 = 1752392040;
      *&v103[8] = 1045;
      *&v103[10] = 20;
      v104 = 2101;
      *v105 = v90;
      *&v105[8] = 2082;
      *&v105[10] = v38;
      *&v105[18] = 1024;
      *&v105[20] = a8;
      v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
      goto LABEL_401;
    }

    if (v79)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over unicast";
      goto LABEL_271;
    }

    v81 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109376;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over unicast";
    goto LABEL_348;
  }

  if (v53)
  {
    if (v46)
    {
      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v77 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      *buf = 67112195;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v102 = 1024;
      *v103 = v92;
      *&v103[4] = 2160;
      *&v103[6] = 1752392040;
      v104 = 1045;
      *v105 = 20;
      *&v105[4] = 2101;
      *&v105[6] = v90;
      *&v105[14] = 2082;
      *&v105[16] = v38;
      v106 = 1024;
      *v107 = a8;
      *&v107[4] = 2048;
      *&v107[6] = v75;
      v108 = 2048;
      v109 = v76;
      v110 = 2160;
      v111 = 1752392040;
      v112 = 1040;
      v113 = v66;
      v114 = 2101;
      v115 = v116;
      v80 = "[Q(%x, %x)] Sent %u-byte IPv4 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
LABEL_392:
      v82 = v77;
      v83 = 108;
      goto LABEL_402;
    }

    if (v79)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v77 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    *buf = 67110659;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v102 = 2160;
    *v103 = 1752392040;
    *&v103[8] = 1045;
    *&v103[10] = 20;
    v104 = 2101;
    *v105 = v90;
    *&v105[8] = 2082;
    *&v105[10] = v38;
    *&v105[18] = 1024;
    *&v105[20] = a8;
    v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
    goto LABEL_401;
  }

  if (!v79)
  {
    v81 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109376;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over unicast";
    goto LABEL_348;
  }

  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  *buf = 67109376;
  v99 = v19;
  v100 = 1024;
  v101 = v27;
  v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over unicast";
LABEL_271:
  v82 = v77;
LABEL_349:
  v83 = 14;
LABEL_402:
  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v80, buf, v83);
}

unsigned __int8 *DumpMDNSPacket_GetNameHashTypeClass(unint64_t a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4, _WORD *a5)
{
  memset(v12, 0, sizeof(v12));
  result = getDomainName(a1, a2, a3, v12);
  if (result)
  {
    v9 = result;
    v10 = mDNS_DomainNameFNV1aHash(v12);
    if ((v9 + 2) <= a3)
    {
      v11 = *v9;
      if (a4)
      {
        *a4 = v10;
      }

      if (a5)
      {
        *a5 = bswap32(v11) >> 16;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL DNSQuestionNeedsSensitiveLogging(uint64_t a1)
{
  if (is_apple_internal_build_s_once != -1)
  {
    dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
  }

  return is_apple_internal_build_is_internal == 1 && *(a1 + 690) == 1;
}

BOOL DNSQuestionIsEligibleForMDNSAlternativeService(uint64_t a1)
{
  if (*(a1 + 340))
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    v4 = AWDLInterfaceID == v2 || WiFiAwareInterfaceID == v2;
  }

  else
  {
    v4 = (*(a1 + 324) >> 20) & 1;
  }

  return v4 == 0;
}

void mDNS_VerifyLockState(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6)
{
  if (!a2)
  {
    if (a3 != a4)
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

      v18 = v17;
      if (a3 <= a4)
      {
        if (v18)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v16 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        v24 = 136447746;
        v25 = a1;
        v26 = 2082;
        *v27 = a5;
        *&v27[8] = 1024;
        *&v27[10] = a6;
        v28 = 2082;
        *v29 = mDNS_VerifyLockState_lastLockOperator;
        *&v29[8] = 1024;
        *v30 = mDNS_VerifyLockState_lineNumberlastLockOperator;
        *&v30[4] = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = a4;
        v12 = "Lock failure: %{public}s, last lock dropper dropped the lock before grabbing it - caller: %{public}s at line %u, last lock dropper: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
      }

      else
      {
        if (v18)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v16 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        v24 = 136447746;
        v25 = a1;
        v26 = 2082;
        *v27 = a5;
        *&v27[8] = 1024;
        *&v27[10] = a6;
        v28 = 2082;
        *v29 = mDNS_VerifyLockState_lastLockOperator;
        *&v29[8] = 1024;
        *v30 = mDNS_VerifyLockState_lineNumberlastLockOperator;
        *&v30[4] = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = a4;
        v12 = "Lock failure: %{public}s, last lock holder still holds the lock - caller: %{public}s at line %u, last successful lock holder: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
      }

      v21 = v16;
      v22 = 56;
      goto LABEL_57;
    }

    v14 = *a1;
    if (v14 <= 0x4B)
    {
      if (v14 == 67)
      {
        return;
      }

      if (v14 == 68)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 == 85 || v14 == 82)
      {
        os_unfair_lock_lock(&mDNS_VerifyLockState_logLock);
        mDNS_VerifyLockState_lastLockOperator = 0;
        mDNS_VerifyLockState_lineNumberlastLockOperator = 0;
        goto LABEL_49;
      }

      if (v14 == 76)
      {
LABEL_15:
        os_unfair_lock_lock(&mDNS_VerifyLockState_logLock);
        mDNS_VerifyLockState_lastLockOperator = a5;
        mDNS_VerifyLockState_lineNumberlastLockOperator = a6;
LABEL_49:

        os_unfair_lock_unlock(&mDNS_VerifyLockState_logLock);
        return;
      }
    }

    v23 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v24 = 136446210;
      v25 = a1;
      v12 = "Invalid lock operation - %{public}s";
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v24 = 136446210;
      v25 = a1;
      v12 = "Invalid lock operation - %{public}s";
    }

    v21 = v23;
    v22 = 12;
    goto LABEL_57;
  }

  if (a4 + 1 >= a3)
  {
    if (a4 + 1 <= a3)
    {
      return;
    }

    v10 = mDNSLogCategory_Default;
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
        return;
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    v24 = 136447490;
    v25 = a5;
    v26 = 1024;
    *v27 = a6;
    *&v27[4] = 2082;
    *&v27[6] = mDNS_VerifyLockState_lastLockOperator;
    v28 = 1024;
    *v29 = mDNS_VerifyLockState_lineNumberlastLockOperator;
    *&v29[4] = 1024;
    *&v29[6] = a3;
    *v30 = 1024;
    *&v30[2] = a4;
    v12 = "Lock failure: Check Lock, last lock dropper dropped the lock before grabbing it - caller: %{public}s at line %u, last lock dropper: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
    goto LABEL_41;
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
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    v24 = 136447490;
    v25 = a5;
    v26 = 1024;
    *v27 = a6;
    *&v27[4] = 2082;
    *&v27[6] = mDNS_VerifyLockState_lastLockOperator;
    v28 = 1024;
    *v29 = mDNS_VerifyLockState_lineNumberlastLockOperator;
    *&v29[4] = 1024;
    *&v29[6] = a3;
    *v30 = 1024;
    *&v30[2] = a4;
    v12 = "Lock failure: Check Lock, lock was grabbed by multiple callers - caller: %{public}s at line %u, last successful lock holder: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
LABEL_41:
    v21 = v10;
    v22 = 46;
LABEL_57:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v12, &v24, v22);
  }
}

uint64_t GetReverseIPv6Addr(_BYTE *a1, _OWORD *a2)
{
  v3 = 0;
  v10 = 0uLL;
  do
  {
    if (*a1 != 1)
    {
      return 0;
    }

    v4 = a1;
    v5 = a1[1];
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 97) >= 6)
      {
        if ((v5 - 65) > 5)
        {
          return 0;
        }

        v6 = -55;
      }

      else
      {
        v6 = -87;
      }
    }

    else
    {
      v6 = -48;
    }

    v7 = 15 - (v3 >> 1);
    v8 = v6 + v5;
    if (v3)
    {
      v8 = *(&v10 + v7) | (16 * v8);
    }

    *(&v10 + v7) = v8;
    ++v3;
    a1 += 2;
  }

  while (v3 != 32);
  result = SameDomainNameBytes(v4 + 2, "\x03ip6\x04arpa");
  if (result)
  {
    if (a2)
    {
      *a2 = v10;
    }

    return 1;
  }

  return result;
}

id _mdns_ne_dns_proxy_state_watch_log()
{
  if (_mdns_ne_dns_proxy_state_watch_log_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_log_s_once, &__block_literal_global_15);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_log_s_log;

  return v1;
}

id _mdns_ne_dns_proxy_state_watch_queue()
{
  if (_mdns_ne_dns_proxy_state_watch_queue_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_queue_s_once, &__block_literal_global_8_2219);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_queue_s_queue;

  return v1;
}

void _mdns_ne_dns_proxy_state_watch_fetch_manager_status(void *a1)
{
  v1 = a1;
  v2 = [g_managers indexOfObjectIdenticalTo:v1];
  v3 = [g_managers count];
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 >= v3)
  {
    if (v5)
    {
      *buf = 134217984;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not fetching status for stale manager -- address: %p", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fetching status for manager -- address: %p", buf, 0xCu);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke;
    v6[3] = &unk_100150028;
    v6[4] = v1;
    [v1 fetchStatusWithCompletionHandler:v6];
  }
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (a2 > 4)
    {
      v6 = "«UNKNOWN STATUS»";
    }

    else
    {
      v6 = off_100150060[a2];
    }

    *buf = 134218498;
    v10 = v5;
    v11 = 2082;
    v12 = v6;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched status for manager -- address: %p, status: %{public}s (%lld)", buf, 0x20u);
  }

  v7 = _mdns_ne_dns_proxy_state_watch_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29;
  v8[3] = &unk_100150000;
  v8[4] = *(a1 + 32);
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = [g_managers indexOfObjectIdenticalTo:v2];
  if (v3 >= [g_managers count])
  {
    v6 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not handling status update for stale manager -- address: %p", &v7, 0xCu);
    }
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [NSNumber numberWithUnsignedInt:v4];
    [g_states setObject:v5 atIndexedSubscript:v3];

    _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  }
}

void _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change()
{
  v0 = g_current_state;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = g_states;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:buf count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) unsignedIntValue];
        if (v7)
        {
          v8 = v7;
          if (v7 == 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:buf count:16];
    }

    while (v3);
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  if (v8 != v0)
  {
    g_current_state = v8;
    v9 = off_100150048[v0];
    v10 = off_100150048[v8];
    v11 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = v9;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "State change: %{public}s -> %{public}s", buf, 0x16u);
    }

    if ((g_current_state - 1) <= 1)
    {
      if (g_user_updater)
      {
        dispatch_source_merge_data(g_user_updater, g_current_state);
      }
    }
  }
}

void ___mdns_ne_dns_proxy_state_watch_queue_block_invoke(id a1)
{
  _mdns_ne_dns_proxy_state_watch_queue_s_queue = dispatch_queue_create("com.apple.mdns.ne-dns-proxy-state-watch", 0);

  _objc_release_x1();
}

void ___mdns_ne_dns_proxy_state_watch_log_block_invoke(id a1)
{
  _mdns_ne_dns_proxy_state_watch_log_s_log = os_log_create("com.apple.mdns", "ne_dns_proxy_state_watch");

  _objc_release_x1();
}

id _mdns_ne_dns_proxy_state_watch_load_managers()
{
  v0 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Loading new manager array", v2, 2u);
  }

  return [NEDNSProxyManager loadAllFromPreferencesWithCompletionHandler:&__block_literal_global_20];
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = _mdns_ne_dns_proxy_state_watch_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2;
  block[3] = &unk_10014FEF0;
  block[4] = v2;
  dispatch_async(v3, block);
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableArray);
  v3 = g_managers;
  g_managers = v2;

  v4 = objc_alloc_init(NSMutableArray);
  v5 = g_states;
  g_states = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([g_managers indexOfObjectIdenticalTo:{v11, v14}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [g_managers addObject:v11];
          [g_states addObject:&off_1001555D8];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  v12 = [g_managers count];
  v13 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated DNS proxy managers -- count: %llu", &buf, 0xCu);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v19 = ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke;
  v20 = &__block_descriptor_40_e34_v32__0__NEDNSProxyManager_8Q16_B24l;
  v21 = v12;
  [g_managers enumerateObjectsUsingBlock:&buf];
}

void ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218754;
    v9 = a3 + 1;
    v10 = 2048;
    v11 = v7;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DNS proxy manager (%llu/%llu) -- address: %p, description: %@", &v8, 0x2Au);
  }

  [v5 setDelegate:g_watcher];
  _mdns_ne_dns_proxy_state_watch_fetch_manager_status(v5);
}

void __mdns_ne_dns_proxy_state_watch_start_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (_mdns_ne_dns_proxy_state_watch_init_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_init_s_once, &__block_literal_global_11);
  }

  if (g_user_updater)
  {
    v4 = g_user_updater;
    dispatch_source_cancel(v4);
    v5 = g_user_updater;
    g_user_updater = 0;
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6 = dispatch_source_create(&_dispatch_source_type_data_replace, 0, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___mdns_ne_dns_proxy_state_watch_start_block_invoke;
  handler[3] = &unk_10014FF38;
  handler[5] = v3;
  handler[6] = v8;
  handler[4] = v6;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_activate(v6);
  objc_storeStrong(&g_user_updater, v6);
  if ((g_current_state - 1) <= 1 && g_user_updater)
  {
    dispatch_source_merge_data(g_user_updater, g_current_state);
  }

  _Block_object_dispose(v8, 8);
}

uintptr_t ___mdns_ne_dns_proxy_state_watch_start_block_invoke(uint64_t a1)
{
  result = dispatch_source_get_data(*(a1 + 32));
  v3 = result;
  if ((result - 1) <= 1 && *(*(*(a1 + 48) + 8) + 24) != result)
  {
    v4 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = v3 == 2;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Calling user's update handler -- running: %{BOOL}d", v5, 8u);
    }

    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = v3;
  }

  return result;
}

void ___mdns_ne_dns_proxy_state_watch_init_block_invoke(id a1)
{
  v1 = objc_alloc_init(MDNSNEDNSProxyWatcher);
  v2 = g_watcher;
  g_watcher = v1;

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:g_watcher selector:"configurationChanged:" name:NEDNSProxyConfigurationDidChangeNotification object:0];

  _mdns_ne_dns_proxy_state_watch_load_managers();
}

void _dnssec_obj_dns_question_member_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t resolver_discovery_get_next_scheduled_event()
{
  if (!g_discover_resolvers)
  {
    return 0;
  }

  v0 = *g_discover_resolvers;
  if (!*g_discover_resolvers)
  {
    return 0;
  }

  v1 = 0;
  v2 = *g_discover_resolvers;
  do
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = *(v3 + 272);
      if (v4)
      {
        v5 = *(v4 + 696);
        if (v5)
        {
          v6 = *(v5 + 1664);
          if (v6)
          {
            if ((v6 - v1) < 0 || v1 == 0)
            {
              v1 = v6;
            }
          }
        }
      }
    }

    v2 = *v2;
  }

  while (v2);
  do
  {
    v8 = v0[1];
    if (!*(v8 + 264))
    {
      v9 = *(v8 + 256);
      if (v9)
      {
        if (v2 - v9 > 0 || v2 == 0)
        {
          LODWORD(v2) = v9;
        }
      }
    }

    v0 = *v0;
  }

  while (v0);
  if ((v2 - v1) < 0 || v1 == 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v1;
  }

  if (v2)
  {
    return v12;
  }

  else
  {
    return v1;
  }
}

void *dns_push_handle_question_start(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 656))
  {
    v4 = 4294960591;
LABEL_42:
    dns_push_handle_question_stop(a1, a2);
    return v4;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    goto LABEL_54;
  }

  v6 = result;
  v7 = &_dns_push_obj_dns_question_member_kind;
  result[1] = &_dns_push_obj_dns_question_member_kind;
  do
  {
    v8 = v7[2];
    if (v8)
    {
      v8(v6);
    }

    v7 = *v7;
  }

  while (v7);
  v9 = (*v6)++;
  v6[2] = 0;
  v10 = *(a2 + 184);
  if (v10 != v6)
  {
    *v6 = v9 + 2;
    if (v10)
    {
      ref_count_obj_release(v10);
    }

    *(a2 + 184) = v6;
  }

  *(a2 + 632) = 0;
  v26 = 0;
  v11 = a2 + 376;
  v12 = dns_obj_domain_name_create_with_labels((a2 + 376), &v26);
  v13 = v12;
  v4 = v26;
  if (v26)
  {
    v16 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = v12[2];
  v15 = *v14 + 2;
  if (v15 != v12[3])
  {
    result = malloc_type_calloc(1uLL, 0x48uLL, 0xB7BBD98FuLL);
    if (!result)
    {
      goto LABEL_54;
    }

    v16 = result;
    v4 = &_dns_push_obj_context_kind;
    result[1] = &_dns_push_obj_context_kind;
    do
    {
      v17 = *(v4 + 16);
      if (v17)
      {
        v17(v16);
      }

      v4 = *v4;
    }

    while (v4);
    ++*v16;
    v16[5] = a2;
    v26 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v23 = *(a2 + 342);
  v24 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
LABEL_52:
      v25 = bswap32(*(a2 + 340));
      *buf = 67110147;
      v28 = HIWORD(v25);
      v29 = 2160;
      v30 = 1752392040;
      v31 = 1040;
      v32 = v15;
      v33 = 2101;
      v34 = v14;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Q%u] Unable to start DNS push server discovery for the single-label name (TLD) -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x28u);
    }
  }

  else
  {
    v24 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }
  }

  v16 = 0;
  v4 = 4294960591;
  v26 = -6705;
LABEL_20:
  ref_count_obj_release(v13);
LABEL_21:
  if (v4)
  {
LABEL_40:
    ref_count_obj_release(v6);
    if (v16)
    {
      ref_count_obj_release(v16);
    }

    goto LABEL_42;
  }

  v18 = v6[2];
  if (v18 != v16)
  {
    if (v16)
    {
      ++*v16;
    }

    if (v18)
    {
      ref_count_obj_release(v18);
    }

    v6[2] = v16;
  }

  result = malloc_type_calloc(1uLL, 0x2B8uLL, 0x101219ECuLL);
  if (result)
  {
    v19 = result;
    result[17] = *(a2 + 136);
    v20 = (a2 + 376);
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
        v22 = v20 - v11 + 1;
        if (v22 <= 0x100u)
        {
          memcpy(result + 47, (a2 + 376), v22);
          goto LABEL_38;
        }

        break;
      }

      v20 += v21 + 1;
    }

    while (&v20[-v11] <= 255);
    *(result + 376) = 0;
LABEL_38:
    *(v19 + 171) = 6;
    *(v19 + 172) = *(a2 + 344);
    *(v19 + 61) = getpid();
    v19[19] = _dns_push_discovery_soa_result_reply;
    v19[22] = v16;
    *(v19 + 635) = 1;
    *(v19 + 632) = 0;
    if (!mDNS_StartQuery_internal(a1, v19))
    {
      v16[6] = v19;
      ref_count_obj_release(v6);
      ref_count_obj_release(v16);
      return 0;
    }

    free(v19);
    v4 = 4294960567;
    goto LABEL_40;
  }

LABEL_54:
  __break(1u);
  return result;
}

void dns_push_handle_question_stop(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 + 184);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v13 = v3[6];
      if (v13)
      {
        _dns_push_discovery_stop(a1, &v13, v3, 0);
        v3[6] = 0;
      }

      v5 = v3[4];
      if (v5)
      {
        DNSServiceManager = Querier_GetDNSServiceManager();
        if (DNSServiceManager)
        {
          mdns_dns_service_manager_deregister_discovered_push_service(DNSServiceManager, v5);
          v3[4] = 0;
        }
      }

      v7 = v3[7];
      if (v7)
      {
        v8 = g_interface_monitors;
        if (!g_interface_monitors)
        {
          goto LABEL_20;
        }

        if (*g_interface_monitors == v7)
        {
          v10 = &g_interface_monitors;
LABEL_15:
          v11 = *(v8 + 8) - 1;
          *(v8 + 8) = v11;
          if (!v11)
          {
            *v10 = *(v8 + 16);
            if (*v8)
            {
              mdns_interface_monitor_invalidate(*v8);
              os_release(*v8);
            }

            free(v8);
            v7 = v3[7];
          }
        }

        else
        {
          while (1)
          {
            v9 = v8;
            v8 = *(v8 + 16);
            if (!v8)
            {
              break;
            }

            if (*v8 == v7)
            {
              v10 = (v9 + 16);
              goto LABEL_15;
            }
          }
        }

        if (v7)
        {
LABEL_20:
          os_release(v7);
        }

        v3[7] = 0;
      }

      v12 = *(a2 + 184);
      if (v12)
      {
        ref_count_obj_release(v12);
        *(a2 + 184) = 0;
      }

      *(a2 + 632) = 1;
    }
  }
}

void _dns_push_discovery_stop(unsigned int *a1, unsigned __int16 **a2, uint64_t a3, int a4)
{
  v8 = *a2;
  if (*a2 != *(a3 + 48))
  {
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
    {
LABEL_10:
      v12 = bswap32(v8[170]) >> 16;
      v13[0] = 67109120;
      v13[1] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "[Q%u] Question being stopped is not the currently active discovery question", v13, 8u);
    }
  }

LABEL_11:
  if (a4)
  {
    mDNS_StopQuery(a1, v8);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  mDNS_StopQuery_internal(a1, v8);
  if (v8)
  {
LABEL_15:
    free(v8);
  }

LABEL_16:
  *a2 = 0;
  *(a3 + 48) = 0;
}

void _dns_push_discovery_soa_result_reply(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v41 = a2;
  if (a4 != 1)
  {
    return;
  }

  v7 = *(a2 + 176);
  v40 = 0;
  if (*a3 != 240)
  {
    if (*(a3 + 2) != 6)
    {
      goto LABEL_59;
    }

    v10 = dns_obj_domain_name_create_with_labels(*(a3 + 4), &v40);
    v11 = v10;
    v12 = v40;
    if (v40)
    {
LABEL_56:
      if (!v11)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (!v10)
    {
      goto LABEL_3;
    }

    ++*v10;
    v13 = *(v7 + 16);
    if (v13)
    {
      ref_count_obj_release(v13);
    }

    *(v7 + 16) = v11;
    _dns_push_discovery_stop(a1, &v41, v7, 1);
    mDNS_Lock_(a1, "_dns_push_discovery_soa_result_reply", 256);
    v14 = *(a3 + 3);
    v15 = v14 + 5;
    if (v14 + 5) < 6 && ((0x2Du >> v15))
    {
      LODWORD(v14) = dword_10010DEF8[v15];
    }

    mDNS_Unlock_(a1, "_dns_push_discovery_soa_result_reply", 258);
    *(v7 + 64) = v14;
    v16 = *(a3 + 3);
    v17 = malloc_type_calloc(1uLL, 0x2B8uLL, 0x73360BF4uLL);
    if (!v17)
    {
      goto LABEL_72;
    }

    v18 = v17;
    v19 = *(v7 + 24);
    if (v19)
    {
LABEL_17:
      v20 = *(v19 + 16);
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
          v27 = v21 - v20 + 1;
          if (v27 <= 0x100u)
          {
            memcpy((v18 + 376), v20, v27);
            goto LABEL_35;
          }

          break;
        }

        v21 += v22 + 1;
      }

      while (v21 - v20 <= 255);
      *(v18 + 376) = 0;
LABEL_35:
      v28 = *(v7 + 40);
      if (!v28)
      {
        goto LABEL_54;
      }

      *(v18 + 342) = 33;
      *(v18 + 344) = *(v28 + 344);
      *(v18 + 136) = v16;
      *(v18 + 244) = getpid();
      *(v18 + 152) = _dns_push_discovery_srv_result_reply;
      *(v18 + 176) = v7;
      *(v18 + 635) = 1;
      *(v18 + 632) = 0;
      v29 = *(v7 + 64);
      v30 = g_interface_monitors;
      if (g_interface_monitors)
      {
        while (1)
        {
          v31 = *v30;
          if (*(*v30 + 136) == v29)
          {
            break;
          }

          v30 = v30[2];
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        os_retain(*v30);
        ++v30[1];
        goto LABEL_51;
      }

LABEL_39:
      v32 = malloc_type_calloc(1uLL, 0x18uLL, 0x9ACE5A8BuLL);
      if (v32)
      {
        v33 = v32;
        v34 = mdns_interface_monitor_create(v29);
        if (v34)
        {
          v31 = v34;
          if (_dns_push_discovery_interface_monitor_queue_s_once != -1)
          {
            dispatch_once(&_dns_push_discovery_interface_monitor_queue_s_once, &__block_literal_global_2296);
          }

          mdns_interface_monitor_set_queue(v31, _dns_push_discovery_interface_monitor_queue_s_queue);
          os_retain(v31);
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 0x40000000;
          aBlock[2] = ___dns_push_discovery_start_mdns_interface_monitor_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_2297;
          aBlock[4] = v31;
          mdns_interface_monitor_set_event_handler(v31, aBlock);
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 0x40000000;
          v42[2] = ___dns_push_discovery_start_mdns_interface_monitor_block_invoke_2;
          v42[3] = &__block_descriptor_tmp_3_2298;
          v42[4] = v31;
          mdns_interface_monitor_set_update_handler(v31, v42);
          if ((*(v31 + 154) & 1) == 0)
          {
            if (*(v31 + 32))
            {
              _mdns_interface_monitor_activate_async(v31);
            }

            *(v31 + 154) = 1;
          }

          *v33 = v31;
          os_retain(v31);
          v35 = &g_interface_monitors;
          do
          {
            v36 = v35;
            v37 = *v35;
            v35 = (*v35 + 16);
          }

          while (v37);
          *v36 = v33;
          ++v33[1];
LABEL_51:
          dns_push_obj_context_set_interface_monitor(v7, v31);
          if (!mDNS_StartQuery(a1, v18))
          {
            os_release(v31);
            *(v7 + 48) = v18;
            if (!v11)
            {
LABEL_58:
              if (!v12)
              {
                return;
              }

              goto LABEL_59;
            }

LABEL_57:
            ref_count_obj_release(v11);
            goto LABEL_58;
          }

          free(v18);
          os_release(v31);
          goto LABEL_55;
        }

        free(v33);
LABEL_54:
        free(v18);
LABEL_55:
        v40 = -6729;
        goto LABEL_56;
      }

LABEL_72:
      __break(1u);
      return;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_54;
    }

    LODWORD(aBlock[0]) = 0;
    v24 = dns_obj_domain_name_create_with_cstring("_dns-push-tls._tcp", aBlock);
    v25 = v24;
    if (LODWORD(aBlock[0]))
    {
      v26 = v24;
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      concatenation = dns_obj_domain_name_create_concatenation(v24[2], *(*(v7 + 16) + 16), aBlock);
      v26 = concatenation;
      if (!LODWORD(aBlock[0]))
      {
        if (concatenation)
        {
          ++*concatenation;
        }

        v39 = *(v7 + 24);
        if (v39)
        {
          ref_count_obj_release(v39);
        }

        *(v7 + 24) = v26;
      }

      ref_count_obj_release(v25);
      if (!v26)
      {
LABEL_30:
        v19 = *(v7 + 24);
        if (!v19)
        {
          goto LABEL_54;
        }

        goto LABEL_17;
      }
    }

    ref_count_obj_release(v26);
    goto LABEL_30;
  }

LABEL_3:
  if (!*(a2 + 376))
  {
LABEL_59:
    _dns_push_discovery_stop(a1, &v41, v7, 1);
    return;
  }

  v8 = dns_obj_domain_name_create_with_labels((*(a2 + 376) + a2 + 376 + 1), &v40);
  v9 = v8;
  if (v40)
  {
    if (v8)
    {
      ref_count_obj_release(v8);
    }

    goto LABEL_59;
  }

  *(a1 + 232) = a2;
  mDNS_StopQuery(a1, a2);
  *(a1 + 232) = 0;
  v23 = v9[3];
  if (v23 >= 0x100)
  {
    fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "labels_length < sizeof(question->qname.c)", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dns_push/dns_push_discovery.c", 385, 0);
  }

  else
  {
    memcpy((a2 + 376), v9[2], v23);
    *(a2 + 200) = DomainNameHashValue(a2 + 376);
    mDNS_StartQuery(a1, a2);
  }

  ref_count_obj_release(v9);
}

void ___dns_push_discovery_start_mdns_interface_monitor_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    _dns_push_discovery_process_interface_changes(*(a1 + 32));
  }

  else if (a2 == 2)
  {
    os_release(*(a1 + 32));
  }
}

void ___dns_push_discovery_start_mdns_interface_monitor_block_invoke_2(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
    _dns_push_discovery_process_interface_changes(*(a1 + 32));
  }
}

void _dns_push_discovery_process_interface_changes(uint64_t a1)
{
  v30 = *(a1 + 136);
  v2 = pthread_mutex_lock((mDNSStorage + 616));
  *(mDNSStorage + 680) = mDNSPlatformRawTime(v2, v3, v4, v5, v6, v7, v8, v9);
  mDNS_Lock_(&mDNSStorage, "_dns_push_discovery_process_interface_changes", 487);
  DNSServiceManager = Querier_GetDNSServiceManager();
  v11 = *(&xmmword_10016D2D4 + 4);
  if (!*(&xmmword_10016D2D4 + 4))
  {
    goto LABEL_20;
  }

  v12 = DNSServiceManager;
  v13 = 0;
  v14 = *(&xmmword_10016D2D4 + 4);
  do
  {
    ++v13;
    v14 = *(v14 + 8);
  }

  while (v14);
  qword_10016D300 = *(&xmmword_10016D2D4 + 4);
  if (v13)
  {
    v15 = 0;
    do
    {
      if (!v11)
      {
        break;
      }

      v16 = *(v11 + 184);
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = *(v16 + 16);
      if (!v17)
      {
        goto LABEL_17;
      }

      v18 = *(v17 + 56);
      if (!v18 || v18 != a1)
      {
        goto LABEL_17;
      }

      v20 = *(v17 + 32);
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2000000000;
      v32 = 0;
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      ++v15;
      block = _NSConcreteStackBlock;
      *&v34 = 0x40000000;
      *(&v34 + 1) = __mdns_dns_service_manager_terminate_discovered_push_service_block_invoke;
      v35 = &unk_10014E580;
      v36 = v31;
      v37 = v12;
      v38 = v20;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      _Block_object_dispose(v31, 8);
      dns_push_handle_question_stop(&mDNSStorage, v11);
      dns_push_handle_question_start(&mDNSStorage, v11);
      v21 = qword_10016D300;
      if (qword_10016D300 == v11)
      {
LABEL_17:
        v21 = *(v11 + 8);
        qword_10016D300 = v21;
      }

      v11 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
LABEL_20:
    v15 = 0;
  }

  qword_10016D300 = 0;
  v22 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:
      LODWORD(block) = 67109376;
      HIDWORD(block) = v30;
      LOWORD(v34) = 2048;
      *(&v34 + 2) = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Network changes, restarting all push questions that are related to the changed interface -- if_index: %u, restarted count: %zu", &block, 0x12u);
    }
  }

  else
  {
    v22 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }
  }

  mDNS_Unlock_(&mDNSStorage, "_dns_push_discovery_process_interface_changes", 529);
  KQueueUnlock("DNS push interface monitor", v23, v24, v25, v26, v27, v28, v29);
}

void _dns_push_discovery_srv_result_reply(unsigned int *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v45 = a2;
  if (a4 != 1)
  {
    return;
  }

  v6 = *(a2 + 176);
  v7 = bswap32(*(*(v6 + 40) + 340)) >> 16;
  if (*a3 == 240)
  {
    v8 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 80);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 80);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

LABEL_24:
        *buf = 67109376;
        v49 = v7;
        v50 = 2048;
        *v51 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Q%u] Current network does not support DNS push, falling back to DNS polling -- service ID: %llu", buf, 0x12u);
      }
    }

    v22 = *(v6 + 40);
    v23 = *(v22 + 252);
    v24 = bswap32(*(v22 + 340)) >> 16;
    v25 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        *buf = 67109376;
        v49 = v23;
        v50 = 1024;
        *v51 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Starting long-lived DNS polling -- polling interval: 15 min", buf, 0xEu);
      }
    }

    else
    {
      v25 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }
    }

    *(v6 + 68) = 1;
LABEL_77:
    Querier_ProcessDNSServiceChangesAsync();
    return;
  }

  v11 = *(v6 + 16);
  if (!v11)
  {
    return;
  }

  mDNS_Lock_(a1, "_dns_push_discovery_srv_result_reply", 311);
  v13 = *(a3 + 3);
  v14 = v13 + 5;
  if (v13 + 5) < 6 && ((0x2Du >> v14))
  {
    LODWORD(v13) = dword_10010DF10[v14];
  }

  mDNS_Unlock_(a1, "_dns_push_discovery_srv_result_reply", 313);
  *buf = 0;
  v47 = 0;
  DNSServiceManager = Querier_GetDNSServiceManager(v15);
  if (!DNSServiceManager)
  {
    v26 = 0;
    v20 = -6729;
    goto LABEL_44;
  }

  v17 = _dns_push_discovery_register_push_service_dns_push_service_type;
  if (!_dns_push_discovery_register_push_service_dns_push_service_type)
  {
    v17 = dns_obj_domain_name_create_with_cstring("_dns-push-tls._tcp", buf);
    _dns_push_discovery_register_push_service_dns_push_service_type = v17;
    v20 = *buf;
    if (*buf)
    {
LABEL_34:
      DNSServiceManager = 0;
      v26 = 0;
      goto LABEL_44;
    }
  }

  concatenation = dns_obj_domain_name_create_concatenation(v17[2], *(v11 + 16), buf);
  v19 = concatenation;
  v20 = *buf;
  if (*buf)
  {
    if (concatenation)
    {
      ref_count_obj_release(concatenation);
    }

    goto LABEL_34;
  }

  v27 = mdns_domain_name_create_with_labels(concatenation[2], 0);
  if (v27)
  {
    v46 = 0;
    v28 = mdns_dns_service_manager_register_discovered_push_service(DNSServiceManager, v27, v13, &v47, &v46);
    DNSServiceManager = v28;
    if (v28)
    {
      *(v6 + 32) = v28;
      if (v47 == 1)
      {
        Querier_ProcessDNSServiceChangesAsync();
      }

      goto LABEL_42;
    }

    v29 = v46;
  }

  else
  {
    DNSServiceManager = 0;
    v29 = -6729;
  }

  *buf = v29;
LABEL_42:
  v26 = v47;
  v20 = *buf;
  ref_count_obj_release(v19);
  if (v27)
  {
    os_release(v27);
  }

LABEL_44:
  if (DNSServiceManager || !v20)
  {
    v31 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v32 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v32 = 1;
    }

    v33 = v32;
    if (v26)
    {
      if (v33)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }
      }

      else
      {
        v31 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_66:
          *buf = 67109632;
          v49 = v7;
          v50 = 2048;
          *v51 = DNSServiceManager;
          *&v51[8] = 1024;
          *&v51[10] = v26;
          v36 = "[Q%u] DNS push discovery finished -- service id: %llu, re registered: %{mdns:yesno}d";
          v37 = v31;
          v38 = 24;
LABEL_69:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
        }
      }

LABEL_70:
      _dns_push_discovery_stop(a1, &v45, v6, 1);
      v41 = *(v6 + 40);
      v42 = *(v41 + 252);
      v43 = bswap32(*(v41 + 340)) >> 16;
      v44 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_75:
          *buf = 67109376;
          v49 = v42;
          v50 = 1024;
          *v51 = v43;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Stopping long-lived DNS polling", buf, 0xEu);
        }
      }

      else
      {
        v44 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_75;
        }
      }

      *(v6 + 68) = 0;
      goto LABEL_77;
    }

    if (v33)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }
    }

    else
    {
      v31 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }
    }

    v40 = *(v11 + 16);
    v39 = *(v11 + 24);
    *buf = 67110146;
    v49 = v7;
    v50 = 1040;
    *v51 = v39;
    *&v51[4] = 2098;
    *&v51[6] = v40;
    v52 = 2048;
    v53 = DNSServiceManager;
    v54 = 1024;
    v55 = 0;
    v36 = "[Q%u] DNS push discovery finished, using service with SRV name _dns-push-tls._tcp.%{public, mdnsresponder:domain_name}.*P -- service id: %llu, re registered: %{mdns:yesno}d";
    v37 = v31;
    v38 = 40;
    goto LABEL_69;
  }

  v30 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
    {
      return;
    }
  }

  else
  {
    v30 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
    {
      return;
    }
  }

  v35 = *(v11 + 16);
  v34 = *(v11 + 24);
  *buf = 67110402;
  v49 = v7;
  v50 = 2048;
  *v51 = 0;
  *&v51[8] = 1040;
  *&v51[10] = v34;
  v52 = 2098;
  v53 = v35;
  v54 = 1024;
  v55 = v13;
  v56 = 2048;
  v57 = v20;
  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "[Q%u] Failed to register push service -- id: %lluauthoritative zone: %{public, mdnsresponder:domain_name}.*P, interface index: %u, error: %{mdns:err}ld", buf, 0x32u);
}

uint64_t LogToFD(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  bzero(__b, 0x400uLL);
  mDNS_vsnprintf(__b, 1024, a2, &a9);
  return dprintf(a1, "%s\n", __b);
}

void mdns_free_context_finalizer(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void _dnssec_obj_rr_nsec_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

uint64_t _dnssec_obj_rr_nsec_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 3;
  }

  else
  {
    return domain_name_label_canonical_compare(*(*(a1 + 16) + 16), *(*(a2 + 16) + 16), 0);
  }
}

uint64_t dnssec_obj_rr_nsec_covers_dns_type(_BYTE *a1, __int16 a2, unsigned int a3)
{
  v3 = *a1;
  v4 = a1;
  if (*a1)
  {
    v4 = a1;
    do
    {
      v5 = &v4[v3];
      v6 = v5[1];
      v4 = v5 + 1;
      v3 = v6;
    }

    while (v6);
  }

  return rdata_parser_type_bit_maps_cover_dns_type(v4 + 1, (~(v4 - a1) + a2), a3);
}

BOOL dnssec_obj_rr_nsec_asserts_name_exists_data_does_not_exist(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 36);
  return (dnssec_obj_rr_nsec_covers_dns_type(v6, v7, a4) & 1) == 0 && (dnssec_obj_rr_nsec_covers_dns_type(v6, v7, 5u) & 1) == 0 && ref_count_obj_compare(*(a1 + 16), a2, 1) == 0;
}

BOOL dnssec_obj_rr_nsec_asserts_name_does_not_exist(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = ref_count_obj_compare(*(a1 + 16), a2, 0);
  if (v5)
  {
    if (v6 == -1)
    {
      return 1;
    }
  }

  else if (v6 != -1)
  {
    return 0;
  }

  return ref_count_obj_compare(a2, v4, 0) == -1;
}

uint64_t _discovery_proxy_stop_handler()
{
  v0 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v0, v1, v2, v3, v4, v5, v6, v7);
  _discovery_proxy_stop_internal();
  KQueueUnlock("discovery_proxy_stop_handler", v8, v9, v10, v11, v12, v13, v14);
  return 0;
}

void _discovery_proxy_stop_internal()
{
  v0 = g_discovery_proxy_service_id;
  if (g_discovery_proxy_service_id)
  {
    DNSServiceManager = Querier_GetDNSServiceManager();
    if (DNSServiceManager)
    {
      mdns_dns_service_manager_deregister_custom_push_service(DNSServiceManager, v0);
    }

    v2 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v3 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        g_discovery_proxy_service_id = 0;
        return;
      }

      v5 = 134217984;
      v6 = g_discovery_proxy_service_id;
    }

    else
    {
      v2 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v5 = 134217984;
      v6 = g_discovery_proxy_service_id;
    }

    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Discovery proxy service deregistered -- id: %llu", &v5, 0xCu);
    goto LABEL_14;
  }
}

uint64_t _discovery_proxy_start_handler(unsigned int a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4)
{
  v8 = pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime(v8, v9, v10, v11, v12, v13, v14, v15);
  _discovery_proxy_stop_internal();
  v16 = mdns_dns_push_service_definition_create();
  if (v16)
  {
    v24 = v16;
    if (a1)
    {
      mdns_dns_push_service_definition_set_interface_index(v16, a1, 2);
      *(v24 + 79) = 257;
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          CFArrayAppendValue(*(v24 + 40), ValueAtIndex);
        }
      }

      v29 = CFArrayGetCount(a3);
      if (v29 >= 1)
      {
        v30 = v29;
        for (j = 0; j != v30; ++j)
        {
          v32 = CFArrayGetValueAtIndex(a3, j);
          CFSetAddValue(*(v24 + 48), v32);
        }
      }

      v33 = CFArrayGetCount(a4);
      if (v33 >= 1)
      {
        v34 = v33;
        for (k = 0; k != v34; ++k)
        {
          v36 = CFArrayGetValueAtIndex(a4, k);
          CFArrayAppendValue(*(v24 + 56), v36);
        }
      }

      v37 = Querier_RegisterCustomPushDNSServiceWithConnectionErrorHandler(v24, 0, 0);
      g_discovery_proxy_service_id = v37;
      if (!v37)
      {
        v40 = 4294960582;
LABEL_24:
        os_release(v24);
        goto LABEL_25;
      }

      v38 = v37;
      v39 = mDNSLogCategory_uDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 134217984;
          v43 = v38;
          goto LABEL_22;
        }
      }

      else
      {
        v39 = mDNSLogCategory_uDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 134217984;
          v43 = v38;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Discovery proxy service registered -- id: %llu", &v42, 0xCu);
        }
      }

      v40 = 0;
      goto LABEL_24;
    }

    os_release(v16);
    v40 = 4294960591;
  }

  else
  {
    v40 = 4294960567;
  }

LABEL_25:
  KQueueUnlock("discovery_proxy_start_handler", v17, v18, v19, v20, v21, v22, v23);
  return v40;
}

const void *mdns_managed_defaults_create(const char *a1, int *a2)
{
  *cStr = 0;
  asprintf(cStr, "/Library/Managed Preferences/mobile/%s.plist", a1);
  if (!*cStr)
  {
    Code = -6728;
    goto LABEL_20;
  }

  v4 = CFStringCreateWithCStringNoCopy(0, *cStr, 0x8000100u, kCFAllocatorMalloc);
  if (!v4)
  {
    if (*cStr)
    {
      free(*cStr);
    }

    goto LABEL_19;
  }

  v5 = v4;
  *cStr = 0;
  v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v4, kCFURLPOSIXPathStyle, 0);
  CFRelease(v5);
  if (!v6)
  {
LABEL_19:
    Code = -6729;
LABEL_20:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v14 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 136446466;
      *&cStr[4] = a1;
      v21 = 2048;
      v22 = Code;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create URL -- domain: %{public}s, error: %{mdns:err}ld", cStr, 0x16u);
    }

    v10 = 0;
    if (a2)
    {
      goto LABEL_14;
    }

    return v10;
  }

  v7 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v6);
  v8 = v7;
  if (!v7)
  {
    Code = -6729;
LABEL_28:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v15 = _mdns_managed_defaults_log_s_log;
    if (v8)
    {
      v16 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, v16))
    {
      *cStr = 138543618;
      *&cStr[4] = v6;
      v21 = 2048;
      v22 = Code;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create read stream -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
    }

    goto LABEL_41;
  }

  if (!CFReadStreamOpen(v7))
  {
    CFRelease(v8);
    Code = -6755;
    goto LABEL_28;
  }

  error = 0;
  v9 = CFPropertyListCreateWithStream(0, v8, 0, 0, 0, &error);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      Code = 0;
    }

    else
    {
      CFRelease(v10);
      v10 = 0;
      Code = -6756;
    }
  }

  else
  {
    if (error)
    {
      Code = CFErrorGetCode(error);
    }

    else
    {
      Code = -6700;
    }

    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v18 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 138543362;
      *&cStr[4] = error;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CFPropertyListCreateWithStream failed: %{public}@", cStr, 0xCu);
    }

    v10 = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  CFRelease(v8);
  if (v10)
  {
    Code = 0;
    goto LABEL_13;
  }

  if (_mdns_managed_defaults_log_s_once != -1)
  {
    dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
  }

  v17 = _mdns_managed_defaults_log_s_log;
  if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
  {
    *cStr = 138543618;
    *&cStr[4] = v6;
    v21 = 2048;
    v22 = Code;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create dictionary -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
  }

LABEL_41:
  v10 = 0;
LABEL_13:
  CFRelease(v6);
  if (a2)
  {
LABEL_14:
    *a2 = Code;
  }

  return v10;
}

CFBooleanRef mdns_managed_defaults_get_BOOL_easy()
{
  v7 = 0;
  v0 = mdns_managed_defaults_create("com.apple.mDNSResponder", &v7);
  v1 = v0;
  if (v7)
  {
    v3 = 0;
    if (!v0)
    {
      return v3;
    }

    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v0, @"EnableStateDump");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFBooleanGetTypeID())
    {
      v5 = 0;
      v3 = (v3 == kCFBooleanTrue);
    }

    else
    {
      v3 = 0;
      v5 = -6756;
    }
  }

  else
  {
    v5 = -6727;
  }

  v7 = v5;
  if (v1)
  {
LABEL_6:
    CFRelease(v1);
  }

  return v3;
}

void _dnssec_obj_trust_anchor_manager_finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  while (v1)
  {
    v2 = v1;
    v1 = *v1;
    do
    {
      v4 = v2[1];
      v3 = v2[2];
      if (v3)
      {
        ref_count_obj_release(v3);
      }

      free(v2);
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t dnssec_obj_trust_anchor_manager_add_anchor(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0xBA270B20uLL);
  if (result)
  {
    v5 = result;
    v6 = *(*(a2 + 16) + 16);
    v7 = (a1 + 16);
    v8 = v7;
    while (1)
    {
      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (!ref_count_obj_compare(*(*(v8[2] + 16) + 16), v6, 1))
      {
        v10 = v8;
        while (ref_count_obj_compare(v10[2], a2, 1))
        {
          v10 = v10[1];
          if (!v10)
          {
            *v9 = v5;
            *v5 = *v8;
            *v8 = 0;
            v5[1] = v8;
            goto LABEL_12;
          }
        }

        free(v5);
        return 4294960566;
      }
    }

    do
    {
      v11 = v7;
      v7 = *v7;
    }

    while (v7 && ref_count_obj_compare(*(*(v7[2] + 16) + 16), v6, 0) != 1);
    *v11 = v5;
    *v5 = v7;
LABEL_12:
    result = 0;
    v5[2] = a2;
    ++*a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LogMcastStateInfo(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a3)
  {
    i_mcount = 0;
    if (a2)
    {
      mcount = 0;
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- START MCAST STATE LOG ---", a4, a5, a6, a7, a8, v21);
    }

    v10 = all_requests;
    if (all_requests)
    {
      do
      {
        v11 = *(v10 + 24);
        if (v11)
        {
          for (i = all_requests; i && i != v10; i = *(i + 16))
          {
            if (i == v11)
            {
              goto LABEL_18;
            }
          }

          if (mDNS_McastLoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Orphan operation; parent not found in request list", a4, a5, a6, a7, a8, *(v10 + 184));
          }
        }

        LogMcastClientInfo(v10, a2, a3, a4, a5, a6, a7, a8, v21);
LABEL_18:
        v10 = *(v10 + 16);
      }

      while (v10);
      if (!mcount)
      {
        mcount = i_mcount;
        if (!i_mcount)
        {
LABEL_38:
          LogMcastStateInfo_i_mpktnum = dword_10016D2A0;
          if (mDNS_McastLoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCOUNT[%d]: IMPKTNUM[%d] ---", a4, a5, a6, a7, a8, 0);
          }
        }
      }
    }

    else
    {
      mcount = 0;
      if (!mDNS_McastLoggingEnabled)
      {
        LogMcastStateInfo_i_mpktnum = dword_10016D2A0;
        goto LABEL_43;
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "<None>", a4, a5, a6, a7, a8, v21);
      if (!mcount)
      {
        goto LABEL_38;
      }
    }

LABEL_43:
    v20 = mDNS_McastLoggingEnabled;
    if (a1 && mDNS_McastLoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCOUNT[%d]: CMPKTNUM[%d] - IMPKTNUM[%d] = [%d]PKTS ---", a4, a5, a6, a7, a8, mcount);
      v20 = mDNS_McastLoggingEnabled;
    }

    if (v20)
    {
      v18 = mDNSLogCategory_Default;
      v19 = "--- END MCAST STATE LOG ---";
LABEL_48:

      LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, v19, a4, a5, a6, a7, a8, a9);
      return;
    }

    return;
  }

  v14 = all_requests;
  if (!all_requests)
  {
    if (!mDNS_McastLoggingEnabled)
    {
      return;
    }

    v18 = mDNSLogCategory_Default;
    v19 = "<None>";
    goto LABEL_48;
  }

  do
  {
    v15 = *(v14 + 24);
    if (v15)
    {
      for (j = all_requests; j && j != v14; j = *(j + 16))
      {
        if (j == v15)
        {
          goto LABEL_32;
        }
      }
    }

    GetMcastClients(v14);
LABEL_32:
    v14 = *(v14 + 16);
  }

  while (v14);
  if (mDNS_McastLoggingEnabled)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCAST RECORDS COUNT[%d] MCAST QUESTIONS COUNT[%d] ---", a4, a5, a6, a7, a8, n_mrecords);
  }

  n_mquests = 0;
  n_mrecords = 0;
}

uint64_t GetMcastClients(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  if (v2 == connection_termination)
  {
    for (i = *(result + 176); i; i = *(i + 8))
    {
      v4 = *(i + 24);
      if (!*(v4 + 32) && !*(v4 + 122))
      {
        result = IsLocalDomain(*(v4 + 40));
        if (!result)
        {
          continue;
        }
      }

      ++n_mrecords;
    }

    for (j = *(v1 + 16); j; j = *(j + 16))
    {
      if (*(j + 24) == v1)
      {
        result = GetMcastClients(j);
      }
    }
  }

  else if (v2 == regservice_termination_callback)
  {
    for (k = *(*(result + 128) + 1624); k; k = *k)
    {
      if (!k[341] && !*(k + 2818))
      {
        result = IsLocalDomain(k[342]);
        if (!result)
        {
          continue;
        }
      }

      ++n_mrecords;
    }
  }

  else if (v2 == browse_termination_callback)
  {
    v7 = *(*(result + 152) + 272);
    if (v7)
    {
      v8 = n_mquests;
      do
      {
        if (!*(v7 + 302))
        {
          n_mquests = ++v8;
        }

        v7 = *v7;
      }

      while (v7);
    }
  }

  else if (v2 == resolve_termination_callback)
  {
    v9 = *(result + 136);
    if (!*(v9 + 1036) && *(v9 + 908) > 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v2 != queryrecord_termination_callback)
    {
      if (v2 != addrinfo_termination_callback)
      {
        return result;
      }

      result = GetAddrInfoClientRequestIsMulticast(*(result + 168));
      if (!result)
      {
        return result;
      }

LABEL_38:
      ++n_mquests;
      return result;
    }

    v10 = *(result + 144);
    if (!*(v10 + 340) && *(v10 + 212) >= 1)
    {
      goto LABEL_38;
    }
  }

  return result;
}

void LogMcastClientInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(a1 + 112);
  if (!v9)
  {
    if (mDNS_McastLoggingEnabled)
    {
      v19 = mDNSLogCategory_Default;

      LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "No operation yet on this socket", a4, a5, a6, a7, a8, a9);
    }

    return;
  }

  if (v9 == connection_termination)
  {
    v20 = *(a1 + 176);
    if (!v20)
    {
LABEL_30:
      for (i = *(a1 + 16); i; i = *(i + 16))
      {
        if (*(i + 24) == a1)
        {
          LogMcastClientInfo(i);
        }
      }

      return;
    }

    while (1)
    {
      v21 = *(v20 + 24);
      if (!*(v21 + 32) && !*(v21 + 122))
      {
        break;
      }

      if (mDNS_McastLoggingEnabled)
      {
        goto LABEL_22;
      }

LABEL_23:
      v20 = *(v20 + 8);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    if (!IsLocalDomain(*(v21 + 40)) || mDNS_McastLoggingEnabled == 0)
    {
      goto LABEL_23;
    }

    v21 = *(v20 + 24);
LABEL_22:
    v22 = mDNSLogCategory_Default;
    v23 = *(v21 + 40);
    DNSTypeName(*(v21 + 12));
    ++i_mcount;
    v56 = *(a1 + 188);
    LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, "R: ->  DNSServiceRegisterRecord:  %##s %s PID[%d](%s)", v24, v25, v26, v27, v28, v23);
    goto LABEL_23;
  }

  if (v9 == regservice_termination_callback)
  {
    v31 = *(a1 + 128);
    v32 = *(v31 + 1624);
    if (!v32)
    {
      return;
    }

    while (v32[341] || *(v32 + 2818))
    {
      if (mDNS_McastLoggingEnabled)
      {
        goto LABEL_39;
      }

LABEL_40:
      v32 = *v32;
      if (!v32)
      {
        return;
      }
    }

    if (!IsLocalDomain(v32[342]) || mDNS_McastLoggingEnabled == 0)
    {
      goto LABEL_40;
    }

LABEL_39:
    v33 = v32[342];
    v34 = bswap32(*(v31 + 24));
    v35 = bswap32(*(v32[343] + 8));
    ++i_mcount;
    v60 = *(a1 + 188);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "R: DNSServiceRegister:  %##s %u/%u PID[%d](%s)", a4, a5, a6, a7, a8, v33);
    goto LABEL_40;
  }

  if (v9 == browse_termination_callback)
  {
    v37 = *(*(a1 + 152) + 272);
    if (v37)
    {
      v38 = mDNS_McastLoggingEnabled;
      do
      {
        if (*(v37 + 302))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38 == 0;
        }

        if (!v39)
        {
          v40 = mDNSLogCategory_Default;
          DNSTypeName(*(v37 + 303));
          ++i_mcount;
          v57 = *(a1 + 188);
          LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "Q: DNSServiceBrowse  %##s %s PID[%d](%s)", v41, v42, v43, v44, v45, v37 + 640);
          v38 = mDNS_McastLoggingEnabled;
        }

        v37 = *v37;
      }

      while (v37);
    }

    return;
  }

  if (v9 == resolve_termination_callback)
  {
    v46 = *(a1 + 136);
    if (*(v46 + 1036))
    {
      return;
    }

    if (*(v46 + 908) < 1 || mDNS_McastLoggingEnabled == 0)
    {
      return;
    }

    v48 = mDNSLogCategory_Default;
    v49 = v46 + 1072;
    DNSTypeName(*(v46 + 1038));
    ++i_mcount;
    v58 = *(a1 + 188);
    v55 = v49;
    v50 = "Q: DNSServiceResolve  %##s %s PID[%d](%s)";
LABEL_69:
    v17 = v48;
LABEL_72:
    LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, v50, v12, v13, v14, v15, v16, v55);
    return;
  }

  if (v9 == queryrecord_termination_callback)
  {
    v51 = *(a1 + 144);
    if (*(v51 + 340))
    {
      return;
    }

    if (*(v51 + 212) < 1 || mDNS_McastLoggingEnabled == 0)
    {
      return;
    }

    v48 = mDNSLogCategory_Default;
    v53 = v51 + 376;
    DNSTypeName(*(v51 + 342));
    ++i_mcount;
    v59 = *(a1 + 188);
    v55 = v53;
    v50 = "Q: DNSServiceQueryRecord  %##s %s PID[%d](%s)";
    goto LABEL_69;
  }

  if (v9 == addrinfo_termination_callback)
  {
    v11 = *(a1 + 168);
    if (GetAddrInfoClientRequestIsMulticast(v11))
    {
      if (mDNS_McastLoggingEnabled)
      {
        v17 = mDNSLogCategory_Default;
        v18 = "v4";
        if ((*(v11 + 8) & 1) == 0)
        {
          v18 = "  ";
        }

        if (!*(v11 + 16))
        {
          v54 = *(v11 + 24);
        }

        ++i_mcount;
        v61 = *(a1 + 188);
        v55 = v18;
        v50 = "Q: DNSServiceGetAddrInfo  %s%s %##s PID[%d](%s)";
        goto LABEL_72;
      }
    }
  }
}

void addrinfo_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 168);
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
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
  if (shouldLogFullRequestInfo)
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v14 = *(v2 + 16);
      if (v14)
      {
        v15 = (v14 + 376);
      }

      else
      {
        v22 = *(v2 + 24);
        if (v22)
        {
          v15 = (v22 + 376);
        }

        else
        {
          v15 = "";
        }
      }

      v23 = *(a1 + 200);
      v24 = v15;
      while (1)
      {
        if (!v24 || (v25 = *v24, v25 > 0x3F))
        {
LABEL_30:
          v26 = 257;
          goto LABEL_41;
        }

        if (!*v24)
        {
          break;
        }

        v24 += v25 + 1;
        if (v24 - v15 >= 256)
        {
          goto LABEL_30;
        }
      }

      v26 = (v24 - v15 + 1);
LABEL_41:
      v50 = v26;
      if (v14)
      {
        v31 = (v14 + 376);
        v32 = *(a1 + 248);
        v33 = *(a1 + 252);
        v34 = a1 + 256;
        v35 = *(a1 + 188);
      }

      else
      {
        v36 = *(v2 + 24);
        if (v36)
        {
          v31 = (v36 + 376);
        }

        else
        {
          v31 = "";
        }

        v32 = *(a1 + 248);
        v33 = *(a1 + 252);
        v35 = *(a1 + 188);
        v34 = a1 + 256;
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v19 = *(v2 + 16);
      if (v19)
      {
        v20 = (v19 + 376);
      }

      else
      {
        v27 = *(v2 + 24);
        if (v27)
        {
          v20 = (v27 + 376);
        }

        else
        {
          v20 = "";
        }
      }

      v23 = *(a1 + 200);
      v28 = v20;
      while (1)
      {
        if (!v28 || (v29 = *v28, v29 > 0x3F))
        {
LABEL_39:
          v30 = 257;
          goto LABEL_48;
        }

        if (!*v28)
        {
          break;
        }

        v28 += v29 + 1;
        if (v28 - v20 >= 256)
        {
          goto LABEL_39;
        }
      }

      v30 = (v28 - v20 + 1);
LABEL_48:
      v50 = v30;
      if (v19)
      {
        v31 = (v19 + 376);
        v32 = *(a1 + 248);
        v33 = *(a1 + 252);
        v34 = a1 + 256;
        v35 = *(a1 + 188);
      }

      else
      {
        v37 = *(v2 + 24);
        if (v37)
        {
          v31 = (v37 + 376);
        }

        else
        {
          v31 = "";
        }

        v32 = *(a1 + 248);
        v33 = *(a1 + 252);
        v35 = *(a1 + 188);
        v34 = a1 + 256;
      }
    }

    v38 = mDNS_DomainNameFNV1aHash(v31);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v39 = *__tp - *(a1 + 204);
    *__tp = 67111427;
    *&__tp[4] = v23;
    *&__tp[8] = 2160;
    *&__tp[10] = 1752392040;
    *&__tp[18] = 1040;
    v52 = v50;
    v53 = 2101;
    v54 = v31;
    v55 = 1024;
    v56 = v32;
    v57 = 1024;
    v58 = v33;
    v59 = 1024;
    v60 = v35;
    v61 = 2082;
    v62 = v34;
    v63 = 1024;
    v64 = v38;
    v65 = 1024;
    v66 = v39;
    v40 = "[R%u] DNSServiceGetAddrInfo STOP -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
    v41 = v4;
    v42 = 74;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v16 = *(a1 + 200);
      v17 = *(v2 + 16);
      if (v17)
      {
        v18 = (v17 + 376);
      }

      else
      {
        v43 = *(v2 + 24);
        if (v43)
        {
          v18 = (v43 + 376);
        }

        else
        {
          v18 = "";
        }
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v16 = *(a1 + 200);
      v21 = *(v2 + 16);
      if (v21)
      {
        v18 = (v21 + 376);
      }

      else
      {
        v44 = *(v2 + 24);
        if (v44)
        {
          v18 = (v44 + 376);
        }

        else
        {
          v18 = "";
        }
      }
    }

    v45 = mDNS_DomainNameFNV1aHash(v18);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v46 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v16;
    *&__tp[8] = 1024;
    *&__tp[10] = v45;
    *&__tp[14] = 1024;
    *&__tp[16] = v46;
    v40 = "[R%u] DNSServiceGetAddrInfo STOP -- name hash: %x, duration: %{mdns:time_duration}u";
    v41 = v4;
    v42 = 20;
  }

  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, __tp, v42);
LABEL_63:
  GetAddrInfoClientRequestStop(v2, v7, v8, v9, v10, v11, v12, v13);
  v47 = *(a1 + 8);
  if (v47)
  {
    v48 = *(a1 + 252);
    if (v48)
    {
      v49 = AWDLInterfaceID == v48 || WiFiAwareInterfaceID == v48;
    }

    else
    {
      v49 = (*(a1 + 250) >> 4) & 1;
    }

    _mdns_powerlog_bonjour_event(6u, v49, (a1 + 256), 0, v47);
    *(a1 + 8) = 0;
  }
}

BOOL _shouldLogFullRequestInfo(int *a1, _DWORD *a2)
{
  v4 = *a1;
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &v7);
  tv_sec = v7.tv_sec;
  if (v4)
  {
    result = LODWORD(v7.tv_sec) - v4 > 299;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v7.tv_sec = 0;
    v7.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &v7);
    *a1 = v7.tv_sec;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  if (result)
  {
    *a2 = tv_sec;
  }

  return result;
}

void resolve_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 136);
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v4 = v2 + 376;
  v5 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v6 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (shouldLogFullRequestInfo)
  {
    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v8 = *(a1 + 200);
      v9 = (v2 + 376);
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_15:
          v11 = 257;
          goto LABEL_29;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (&v9[-v4] >= 256)
        {
          goto LABEL_15;
        }
      }

      v11 = (v9 - v4 + 1);
LABEL_29:
      v59 = v11;
      v20 = *(a1 + 248);
      v19 = *(a1 + 252);
      v21 = *(a1 + 188);
      v22 = mDNS_DomainNameFNV1aHash((v2 + 376));
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v23 = *__tp - *(a1 + 204);
      *__tp = 67111427;
      *&__tp[4] = v8;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      *&__tp[20] = v59;
      *&__tp[24] = 2101;
      *&__tp[26] = v2 + 376;
      *&__tp[34] = 1024;
      *&__tp[36] = v20;
      *&__tp[40] = 1024;
      *&__tp[42] = v19;
      *&__tp[46] = 1024;
      LODWORD(v68) = v21;
      WORD2(v68) = 2082;
      *(&v68 + 6) = a1 + 256;
      HIWORD(v68) = 1024;
      LODWORD(v69) = v22;
      WORD2(v69) = 1024;
      *(&v69 + 6) = v23;
    }

    else
    {
      v5 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v12 = *(a1 + 200);
      v13 = (v2 + 376);
      while (1)
      {
        if (!v13 || (v14 = *v13, v14 > 0x3F))
        {
LABEL_25:
          v15 = 257;
          goto LABEL_31;
        }

        if (!*v13)
        {
          break;
        }

        v13 += v14 + 1;
        if (&v13[-v4] >= 256)
        {
          goto LABEL_25;
        }
      }

      v15 = (v13 - v4 + 1);
LABEL_31:
      v60 = v15;
      v24 = *(a1 + 248);
      v25 = *(a1 + 252);
      v26 = *(a1 + 188);
      v27 = mDNS_DomainNameFNV1aHash((v2 + 376));
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v28 = *__tp - *(a1 + 204);
      *__tp = 67111427;
      *&__tp[4] = v12;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      *&__tp[20] = v60;
      *&__tp[24] = 2101;
      *&__tp[26] = v2 + 376;
      *&__tp[34] = 1024;
      *&__tp[36] = v24;
      *&__tp[40] = 1024;
      *&__tp[42] = v25;
      *&__tp[46] = 1024;
      LODWORD(v68) = v26;
      WORD2(v68) = 2082;
      *(&v68 + 6) = a1 + 256;
      HIWORD(v68) = 1024;
      LODWORD(v69) = v27;
      WORD2(v69) = 1024;
      *(&v69 + 6) = v28;
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x4Au);
  }

  else
  {
    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v5 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    v16 = *(a1 + 200);
    v17 = mDNS_DomainNameFNV1aHash((v2 + 376));
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v18 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v16;
    *&__tp[8] = 1024;
    *&__tp[10] = v17;
    *&__tp[14] = 1024;
    *&__tp[16] = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve STOP -- name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x14u);
  }

LABEL_33:
  mDNS_StopQuery(mDNSStorage, v2);
  mDNS_StopQuery(mDNSStorage, v2 + 696);
  if (mDNS_McastLoggingEnabled)
  {
    LogMcastQuestion(v2 + 696, a1, 0);
  }

  if (*(v2 + 1420))
  {
    v29 = *(v2 + 832);
    v30 = v2 + 1072;
    v31 = *(a1 + 248);
    v32 = *(a1 + 188);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    *&__tp[32] = 0u;
    v68 = 0u;
    if (*(v2 + 1072))
    {
      v33 = (v2 + *(v2 + 1072) + 1073);
    }

    else
    {
      v33 = (v2 + 1072);
    }

    memset(__tp, 0, 32);
    DomainnameToLower(v33, __tp);
    v34 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v42 = (v2 + 1072);
      while (1)
      {
        if (!v42 || (v43 = *v42, v43 > 0x3F))
        {
LABEL_54:
          v41 = 257;
          goto LABEL_57;
        }

        if (!*v42)
        {
          break;
        }

        v42 += v43 + 1;
        if (&v42[-v30] >= 256)
        {
          goto LABEL_54;
        }
      }

      v41 = (v42 - v30 + 1);
    }

    else
    {
      v34 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v39 = (v2 + 1072);
      while (1)
      {
        if (!v39 || (v40 = *v39, v40 > 0x3F))
        {
LABEL_47:
          v41 = 257;
          goto LABEL_57;
        }

        if (!*v39)
        {
          break;
        }

        v39 += v40 + 1;
        if (&v39[-v30] >= 256)
        {
          goto LABEL_47;
        }
      }

      v41 = (v39 - v30 + 1);
    }

LABEL_57:
    *buf = 141558531;
    v62 = 1752392040;
    v63 = 1040;
    v64 = v41;
    v65 = 2101;
    v66 = v2 + 1072;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "external_stop_resolving_service - fqdn: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
LABEL_58:
    v44 = putDomainNameAsLabels(&compression_base_msg, &unk_10015DD07, &compression_base_msg + &loc_1000022F8, __tp, v35, v36, v37, v38);
    if (v44)
    {
      *v44 = 3072;
      v44[2] = 1;
      v49 = (v44 + 3);
    }

    else
    {
      v49 = 0;
    }

    *buf = 0;
    v50 = putDomainNameAsLabels(&compression_base_msg, v49, &compression_base_msg + &loc_1000022F8, (v2 + 1072), v45, v46, v47, v48);
    PrintHelper("external_stop_resolving_service", &unk_10015DD07, (v49 - &unk_10015DD07), v49, (v50 - v49));
    v51 = xD2DMapToTransportType(v29, v31, buf);
    if (v51 == 4)
    {
      v52 = 0;
      v53 = *buf;
      do
      {
        if (&_D2DStopResolvingPairOnTransport)
        {
          if (v53 != v52)
          {
            D2DStopResolvingPairOnTransport();
            if (v52 >= 2)
            {
              _mdns_powerlog_awdl_event(@"stopAWDLResolve", __tp, 12, v32);
            }
          }
        }

        ++v52;
      }

      while (v52 != 4);
    }

    else if (&_D2DStopResolvingPairOnTransport)
    {
      v54 = v51;
      D2DStopResolvingPairOnTransport();
      if ((v54 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"stopAWDLResolve", __tp, 12, v32);
      }
    }
  }

  v55 = *(a1 + 8);
  if (v55)
  {
    v56 = *(a1 + 252);
    if (v56)
    {
      v57 = AWDLInterfaceID == v56 || WiFiAwareInterfaceID == v56;
    }

    else
    {
      v57 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v2 + 1072), __tp);
    _mdns_powerlog_bonjour_event(0xFu, v57, (a1 + 256), service_type_from_domain_name, v55);
    *(a1 + 8) = 0;
  }
}

uint64_t LogMcastQuestion(uint64_t result, uint64_t a2, int a3)
{
  if (!*(result + 340))
  {
    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if (mcount)
    {
      v5 = 0;
    }

    else
    {
      v5 = a3 == 1;
    }

    mcount += v4;
    if (mDNS_McastLoggingEnabled)
    {
      v7 = result;
      v8 = mDNSLogCategory_Default;
      if (a3)
      {
        v9 = "+Question";
      }

      else
      {
        v9 = "-Question";
      }

      DNSTypeName(*(result + 342));
      v15 = *(v7 + 136);
      v16 = v15 + 5;
      if (v15 + 5) < 6 && ((0x2Du >> v16))
      {
        v17 = (&off_100153FB8)[v16];
      }

      else
      {
        v18 = &xmmword_100170388;
        do
        {
          v18 = *v18;
        }

        while (v18 && *(v18 + 444) != v15);
      }

      v19 = *(a2 + 188);
      LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "%s: %##s  (%s) (%s)  Client(%d)[%s]", v10, v11, v12, v13, v14, v9);
    }

    return LogMcastStateInfo(v5, 0, 0);
  }

  return result;
}

void browse_termination_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 152);
  v10 = &unk_100162000;
  v11 = &unk_100164000;
  v12 = &unk_100178000;
  if (!*(v9 + 8))
  {
    goto LABEL_28;
  }

  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
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
  if (!shouldLogFullRequestInfo)
  {
    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v32 = *(a1 + 200);
    __tp[0].tv_sec = 0;
    __tp[0].tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v33 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
    LODWORD(__tp[0].tv_sec) = 67109376;
    HIDWORD(__tp[0].tv_sec) = v32;
    LOWORD(__tp[0].tv_nsec) = 1024;
    *(&__tp[0].tv_nsec + 2) = v33;
    v29 = "[R%u] DNSServiceBrowse Cancel domain enumeration for WAB and mDNS -- , duration: %{mdns:time_duration}u";
    v30 = v14;
    v31 = 14;
    goto LABEL_19;
  }

  if (v16)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v24 = *(a1 + 200);
      v25 = *(a1 + 248);
      v26 = *(a1 + 252);
      v27 = *(a1 + 188);
      __tp[0].tv_sec = 0;
      __tp[0].tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v28 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
      LODWORD(__tp[0].tv_sec) = 67110402;
      HIDWORD(__tp[0].tv_sec) = v24;
      LOWORD(__tp[0].tv_nsec) = 1024;
      *(&__tp[0].tv_nsec + 2) = v25;
      HIWORD(__tp[0].tv_nsec) = 1024;
      LODWORD(__tp[1].tv_sec) = v26;
      v10 = &unk_100162000;
      WORD2(__tp[1].tv_sec) = 1024;
      *(&__tp[1].tv_sec + 6) = v27;
      v11 = &unk_100164000;
      WORD1(__tp[1].tv_nsec) = 2082;
      *(&__tp[1].tv_nsec + 4) = a1 + 256;
      v12 = &unk_100178000;
      WORD2(__tp[2].tv_sec) = 1024;
      *(&__tp[2].tv_sec + 6) = v28;
      v29 = "[R%u] DNSServiceBrowse Cancel domain enumeration for WAB and mDNS -- , flags: 0x%X, interface index: %d, client pid: %d (%{public}s), , duration: %{mdns:time_duration}u";
      v30 = v14;
      v31 = 42;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, __tp, v31);
    }
  }

LABEL_20:
  uDNS_StopWABQueries(2, v17, v18, v19, v20, v21, v22, v23);
  mDNS_Lock_(mDNSStorage, "mDNS_StopDomainEnumeration", 16362);
  v34 = qword_100170968;
  if (qword_100170968)
  {
    while (!SameDomainNameBytes(v34, "\x05local"))
    {
      v34 = *(v34 + 296);
      if (!v34)
      {
        goto LABEL_27;
      }
    }

    v35 = *(v34 + 272);
    if (v35)
    {
      v36 = *(v35 + 708);
      if (v36)
      {
        *(v35 + 708) = v36 - 1;
        mDNS_SetUpDomainEnumeration(mDNSStorage, v34, 2);
      }
    }
  }

LABEL_27:
  mDNS_Unlock_(mDNSStorage, "mDNS_StopDomainEnumeration", 16391);
LABEL_28:
  v37 = *(v9 + 272);
  if (v37)
  {
    v38 = &unk_100164000;
    v71 = v9;
    do
    {
      if (callExternalHelpers(*(v37 + 50), v37 + 8, v37[147], a4, a5, a6, a7, a8))
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
        v73 = 0u;
        memset(__tp, 0, sizeof(__tp));
        ConstructServiceName(__tp, 0, (v9 + 10), v37 + 8);
        external_stop_browsing_for_service(*(v37 + 50), __tp, 12, v37[147], *(a1 + 188));
      }

      v39 = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
      v40 = (v37 + 160);
      v41 = *(v11 + 320);
      if (v10[256])
      {
        v42 = v41 == v12[435];
      }

      else
      {
        v42 = 1;
      }

      v43 = v42;
      if (v39)
      {
        if (v43)
        {
          if (os_log_type_enabled(*(v11 + 320), OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(a1 + 200);
            v45 = v37 + 160;
            while (1)
            {
              if (!v45 || (v46 = *v45, v46 > 0x3F))
              {
LABEL_46:
                v47 = 257;
                goto LABEL_60;
              }

              if (!*v45)
              {
                break;
              }

              v45 += v46 + 1;
              if (v45 - v40 >= 256)
              {
                goto LABEL_46;
              }
            }

            v47 = (v45 - v40 + 1);
LABEL_60:
            v56 = *(a1 + 248);
            v57 = *(a1 + 252);
            v58 = *(a1 + 188);
            v59 = mDNS_DomainNameFNV1aHash(v37 + 640);
            __tp[0].tv_sec = 0;
            __tp[0].tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v60 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
            LODWORD(__tp[0].tv_sec) = 67111427;
            HIDWORD(__tp[0].tv_sec) = v44;
            LOWORD(__tp[0].tv_nsec) = 2160;
            *(&__tp[0].tv_nsec + 2) = 1752392040;
            WORD1(__tp[1].tv_sec) = 1040;
            HIDWORD(__tp[1].tv_sec) = v47;
            LOWORD(__tp[1].tv_nsec) = 2101;
            *(&__tp[1].tv_nsec + 2) = (v37 + 160);
            WORD1(__tp[2].tv_sec) = 1024;
            HIDWORD(__tp[2].tv_sec) = v56;
            LOWORD(__tp[2].tv_nsec) = 1024;
            *(&__tp[2].tv_nsec + 2) = v57;
            HIWORD(__tp[2].tv_nsec) = 1024;
            LODWORD(v73) = v58;
            WORD2(v73) = 2082;
            *(&v73 + 6) = a1 + 256;
            HIWORD(v73) = 1024;
            LODWORD(v74) = v59;
            WORD2(v74) = 1024;
            *(&v74 + 6) = v60;
            v61 = v41;
LABEL_63:
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse STOP -- service name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x4Au);
            v9 = v71;
            v10 = &unk_100162000;
            v11 = &unk_100164000;
            v12 = &unk_100178000;
            v38 = &unk_100164000;
          }
        }

        else
        {
          v48 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a1 + 200);
            v50 = v37 + 160;
            while (1)
            {
              if (!v50 || (v51 = *v50, v51 > 0x3F))
              {
LABEL_56:
                v52 = 257;
                goto LABEL_62;
              }

              if (!*v50)
              {
                break;
              }

              v50 += v51 + 1;
              if (v50 - v40 >= 256)
              {
                goto LABEL_56;
              }
            }

            v52 = (v50 - v40 + 1);
LABEL_62:
            v62 = *(a1 + 248);
            v63 = *(a1 + 252);
            v64 = *(a1 + 188);
            v65 = mDNS_DomainNameFNV1aHash(v37 + 640);
            __tp[0].tv_sec = 0;
            __tp[0].tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v66 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
            LODWORD(__tp[0].tv_sec) = 67111427;
            HIDWORD(__tp[0].tv_sec) = v49;
            LOWORD(__tp[0].tv_nsec) = 2160;
            *(&__tp[0].tv_nsec + 2) = 1752392040;
            WORD1(__tp[1].tv_sec) = 1040;
            HIDWORD(__tp[1].tv_sec) = v52;
            LOWORD(__tp[1].tv_nsec) = 2101;
            *(&__tp[1].tv_nsec + 2) = (v37 + 160);
            WORD1(__tp[2].tv_sec) = 1024;
            HIDWORD(__tp[2].tv_sec) = v62;
            LOWORD(__tp[2].tv_nsec) = 1024;
            *(&__tp[2].tv_nsec + 2) = v63;
            HIWORD(__tp[2].tv_nsec) = 1024;
            LODWORD(v73) = v64;
            WORD2(v73) = 2082;
            *(&v73 + 6) = a1 + 256;
            HIWORD(v73) = 1024;
            LODWORD(v74) = v65;
            WORD2(v74) = 1024;
            *(&v74 + 6) = v66;
            v61 = v48;
            goto LABEL_63;
          }
        }
      }

      else if (v43)
      {
        if (os_log_type_enabled(*(v11 + 320), OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v41 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_58:
          v53 = *(a1 + 200);
          v54 = mDNS_DomainNameFNV1aHash(v37 + 640);
          __tp[0].tv_sec = 0;
          __tp[0].tv_nsec = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
          v55 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
          LODWORD(__tp[0].tv_sec) = 67109632;
          HIDWORD(__tp[0].tv_sec) = v53;
          LOWORD(__tp[0].tv_nsec) = 1024;
          *(&__tp[0].tv_nsec + 2) = v54;
          v38 = &unk_100164000;
          HIWORD(__tp[0].tv_nsec) = 1024;
          LODWORD(__tp[1].tv_sec) = v55;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse STOP -- name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x14u);
        }
      }

      *(v9 + 272) = *v37;
      mDNS_StopQuery(mDNSStorage, (v37 + 66));
      if (v38[635])
      {
        LogMcastQuestion((v37 + 66), a1, 0);
      }

      free(v37);
      v37 = *(v9 + 272);
    }

    while (v37);
  }

  v67 = *(a1 + 8);
  if (v67)
  {
    v68 = *(a1 + 252);
    if (v68)
    {
      v69 = AWDLInterfaceID == v68 || WiFiAwareInterfaceID == v68;
    }

    else
    {
      v69 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v9 + 10), __tp);
    _mdns_powerlog_bonjour_event(3u, v69, (a1 + 256), service_type_from_domain_name, v67);
    *(a1 + 8) = 0;
  }
}

void regservice_termination_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a1)
  {
    v10 = *(a1 + 128);
    v11 = *(v10 + 1624);
    if (v11)
    {
      v12 = (a1 + 256);
      v13 = &unk_100162000;
      v14 = &unk_100164000;
      v15 = &unk_100178000;
      v94 = 67109632;
      v105 = (a1 + 256);
      do
      {
        *(v10 + 1624) = *v11;
        shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
        v17 = v11[342];
        v18 = v17 + 1;
        if (*v17)
        {
          v19 = &v17[*v17 + 1] == 0;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v21 = v14[320];
        if (v13[256])
        {
          v22 = v21 == v15[435];
        }

        else
        {
          v22 = 1;
        }

        v23 = v22;
        if (shouldLogFullRequestInfo)
        {
          if (v20)
          {
            if (v23)
            {
              if (os_log_type_enabled(v14[320], OS_LOG_TYPE_DEFAULT))
              {
                v31 = v17;
                v102 = *(a1 + 200);
                while (1)
                {
                  if (!v31 || (v32 = *v31, v32 > 0x3F))
                  {
LABEL_25:
                    v33 = 257;
                    goto LABEL_73;
                  }

                  if (!*v31)
                  {
                    break;
                  }

                  v31 += v32 + 1;
                  if (v31 - v17 >= 256)
                  {
                    goto LABEL_25;
                  }
                }

                v33 = (v31 - v17 + 1);
LABEL_73:
                v100 = v33;
                v63 = mDNS_DomainNameFNV1aHash(v17);
                v64 = bswap32(*(v11[343] + 8)) >> 16;
                v66 = *(a1 + 248);
                v65 = *(a1 + 252);
                v67 = *(a1 + 188);
                *__tp = 0;
                *&__tp[8] = 0;
                clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
                v68 = *__tp - *(a1 + 204);
                *__tp = 67111683;
                *&__tp[4] = v102;
                *&__tp[8] = 2160;
                *&__tp[10] = 1752392040;
                *&__tp[18] = 1040;
                v107 = v100;
                v108 = 2101;
                v109 = v17;
                v110 = 1024;
                v111 = v63;
                v112 = 1024;
                v113 = v64;
                v114 = 1024;
                v115 = v66;
                v116 = 1024;
                v117 = v65;
                v118 = 1024;
                v119 = v67;
                v120 = 2082;
                v12 = v105;
                v121 = v105;
                v122 = 1024;
                v123 = v68;
                v61 = v21;
                v62 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), , duration: %{mdns:time_duration}u";
                v69 = 80;
                goto LABEL_80;
              }
            }

            else
            {
              v21 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                v43 = v17;
                v102 = *(a1 + 200);
                while (1)
                {
                  if (!v43 || (v44 = *v43, v44 > 0x3F))
                  {
LABEL_49:
                    v33 = 257;
                    goto LABEL_73;
                  }

                  if (!*v43)
                  {
                    break;
                  }

                  v43 += v44 + 1;
                  if (v43 - v17 >= 256)
                  {
                    goto LABEL_49;
                  }
                }

                v33 = (v43 - v17 + 1);
                goto LABEL_73;
              }
            }
          }

          else if (v23)
          {
            if (os_log_type_enabled(v14[320], OS_LOG_TYPE_DEFAULT))
            {
              v38 = v17;
              v103 = *(a1 + 200);
              while (1)
              {
                if (!v38 || (v39 = *v38, v39 > 0x3F))
                {
LABEL_37:
                  v40 = 257;
                  goto LABEL_68;
                }

                if (!*v38)
                {
                  break;
                }

                v38 += v39 + 1;
                if (v38 - v17 >= 256)
                {
                  goto LABEL_37;
                }
              }

              v40 = (v38 - v17 + 1);
LABEL_68:
              v99 = v40;
              v55 = mDNS_DomainNameFNV1aHash(v17);
              v56 = bswap32(*(v11[343] + 8)) >> 16;
              v57 = *(a1 + 248);
              v95 = *(a1 + 252);
              v97 = *(a1 + 188);
              if (*v17)
              {
                v58 = &v18[*v17];
              }

              else
              {
                v58 = v17;
              }

              v59 = mDNS_DomainNameFNV1aHash(v58);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v60 = *__tp - *(a1 + 204);
              *__tp = 67111939;
              *&__tp[4] = v103;
              *&__tp[8] = 2160;
              *&__tp[10] = 1752392040;
              *&__tp[18] = 1040;
              v107 = v99;
              v108 = 2101;
              v109 = v17;
              v110 = 1024;
              v111 = v55;
              v112 = 1024;
              v113 = v56;
              v114 = 1024;
              v115 = v57;
              v116 = 1024;
              v117 = v95;
              v118 = 1024;
              v119 = v97;
              v120 = 2082;
              v12 = v105;
              v121 = v105;
              v122 = 1024;
              v123 = v59;
              v124 = 1024;
              v125 = v60;
              v61 = v21;
              v62 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
              goto LABEL_79;
            }
          }

          else
          {
            v45 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v46 = v17;
              v104 = *(a1 + 200);
              while (1)
              {
                if (!v46 || (v47 = *v46, v47 > 0x3F))
                {
LABEL_56:
                  v48 = 257;
                  goto LABEL_75;
                }

                if (!*v46)
                {
                  break;
                }

                v46 += v47 + 1;
                if (v46 - v17 >= 256)
                {
                  goto LABEL_56;
                }
              }

              v48 = (v46 - v17 + 1);
LABEL_75:
              v101 = v48;
              v70 = mDNS_DomainNameFNV1aHash(v17);
              v71 = bswap32(*(v11[343] + 8)) >> 16;
              v72 = *(a1 + 248);
              v96 = *(a1 + 252);
              v98 = *(a1 + 188);
              if (*v17)
              {
                v73 = &v18[*v17];
              }

              else
              {
                v73 = v17;
              }

              v74 = mDNS_DomainNameFNV1aHash(v73);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v75 = *__tp - *(a1 + 204);
              *__tp = 67111939;
              *&__tp[4] = v104;
              *&__tp[8] = 2160;
              *&__tp[10] = 1752392040;
              *&__tp[18] = 1040;
              v107 = v101;
              v108 = 2101;
              v109 = v17;
              v110 = 1024;
              v111 = v70;
              v112 = 1024;
              v113 = v71;
              v114 = 1024;
              v115 = v72;
              v116 = 1024;
              v117 = v96;
              v118 = 1024;
              v119 = v98;
              v120 = 2082;
              v12 = v105;
              v121 = v105;
              v122 = 1024;
              v123 = v74;
              v124 = 1024;
              v125 = v75;
              v61 = v45;
              v62 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
LABEL_79:
              v69 = 86;
LABEL_80:
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, __tp, v69);
              v13 = &unk_100162000;
              v14 = &unk_100164000;
              v15 = &unk_100178000;
            }
          }
        }

        else if (v20)
        {
          if (v23)
          {
            if (os_log_type_enabled(v14[320], OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 200);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v35 = *__tp - *(a1 + 204);
              *__tp = 67109376;
              *&__tp[4] = v34;
              v15 = &unk_100178000;
              *&__tp[8] = 1024;
              *&__tp[10] = v35;
              v36 = v21;
              v37 = "[R%u] DNSServiceRegister STOP -- , duration: %{mdns:time_duration}u";
LABEL_59:
              v52 = 14;
              goto LABEL_65;
            }
          }

          else
          {
            v49 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v50 = *(a1 + 200);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v51 = *__tp - *(a1 + 204);
              *__tp = 67109376;
              *&__tp[4] = v50;
              v15 = &unk_100178000;
              *&__tp[8] = 1024;
              *&__tp[10] = v51;
              v36 = v49;
              v37 = "[R%u] DNSServiceRegister STOP -- , duration: %{mdns:time_duration}u";
              goto LABEL_59;
            }
          }
        }

        else if (v23)
        {
          if (os_log_type_enabled(v14[320], OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a1 + 200);
            if (*v17)
            {
              v42 = &v18[*v17];
            }

            else
            {
              v42 = v17;
            }

            goto LABEL_64;
          }
        }

        else
        {
          v21 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a1 + 200);
            if (*v17)
            {
              v42 = &v18[*v17];
            }

            else
            {
              v42 = v17;
            }

LABEL_64:
            v53 = mDNS_DomainNameFNV1aHash(v42);
            *__tp = 0;
            *&__tp[8] = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v54 = *__tp - *(a1 + 204);
            *__tp = v94;
            *&__tp[4] = v41;
            v15 = &unk_100178000;
            *&__tp[8] = 1024;
            *&__tp[10] = v53;
            v14 = &unk_100164000;
            *&__tp[14] = 1024;
            *&__tp[16] = v54;
            v36 = v21;
            v37 = "[R%u] DNSServiceRegister STOP -- name hash: %x, duration: %{mdns:time_duration}u";
            v52 = 20;
LABEL_65:
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, __tp, v52);
          }
        }

        external_stop_advertising_helper(v11, v24, v25, v26, v27, v28, v29, v30);
        v11[1] = 0;
        if (mDNS_McastLoggingEnabled)
        {
          LogMcastService((v11 + 337), a1, 0, v76, v77, v78, v79, v80, v94);
        }

        if (mDNS_DeregisterService_drt(mDNSStorage, (v11 + 36), 0, v76, v77, v78, v79, v80))
        {
          unlink_and_free_service_instance(v11, v81, v82, v83, v84, v85, v86, v87);
        }

        v88 = *(a1 + 8);
        if (v88)
        {
          v89 = *(a1 + 252);
          if (v89)
          {
            v90 = AWDLInterfaceID == v89 || WiFiAwareInterfaceID == v89;
          }

          else
          {
            v90 = (*(a1 + 250) >> 4) & 1;
          }

          bzero(__tp, 0x3F1uLL);
          service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v10 + 1099), __tp);
          _mdns_powerlog_bonjour_event(0x12u, v90, v12, service_type_from_domain_name, v88);
          *(a1 + 8) = 0;
        }

        v11 = *(v10 + 1624);
      }

      while (v11);
    }

    v92 = *(v10 + 16);
    if (v92)
    {
      free(v92);
      *(v10 + 16) = 0;
    }

    if (*(v10 + 1612))
    {
      *(v10 + 1612) = 0;
      UpdateDeviceInfoRecord(mDNSStorage);
    }
  }

  else
  {
    v93 = mDNSLogCategory_Default;

    LogMsgWithLevel(v93, OS_LOG_TYPE_DEFAULT, "regservice_termination_callback context is NULL", a4, a5, a6, a7, a8, a9);
  }
}

void external_stop_advertising_helper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 27))
  {
    v9 = *(a1 + 16);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_stop_advertising_helper: calling external_stop_advertising_service", a4, a5, a6, a7, a8, v15);
    }

    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = *(v10 + 188);
      if (*(*(v10 + 128) + 1616))
      {
        v12 = 0;
        v13 = v9 + 8;
        do
        {
          internal_stop_advertising_service(v13, *(v10 + 248), v11);
          ++v12;
          v10 = *(a1 + 8);
          v13 += 1176;
        }

        while (v12 < *(*(v10 + 128) + 1616));
      }

      internal_stop_advertising_service(a1 + 1528, *(v10 + 248), v11);
      internal_stop_advertising_service(a1 + 2704, *(*(a1 + 8) + 248), v11);
      internal_stop_advertising_service(a1 + 3880, *(*(a1 + 8) + 248), v11);
      for (i = *(a1 + 312); i; i = *i)
      {
        internal_stop_advertising_service((i + 3), *(*(a1 + 8) + 248), v11);
      }
    }

    *(a1 + 27) = 0;
  }
}

void LogMcastService(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a1 + 32) || *(a1 + 122) || IsLocalDomain(*(a1 + 40)))
  {
    if (a3 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (mcount)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3 == 1;
    }

    mcount += v12;
    if (mDNS_McastLoggingEnabled)
    {
      v14 = mDNSLogCategory_Default;
      if (a3)
      {
        v15 = "+Service";
      }

      else
      {
        v15 = "-Service";
      }

      v16 = *(a1 + 40);
      DNSTypeName(*(a1 + 12));
      v22 = *(a1 + 32);
      v23 = v22 + 5;
      if (v22 + 5) < 6 && ((0x2Du >> v23))
      {
        v24 = (&off_100153FE8)[v23];
      }

      else
      {
        v25 = &xmmword_100170388;
        do
        {
          v25 = *v25;
        }

        while (v25 && *(v25 + 444) != v22);
      }

      v26 = *(a2 + 188);
      LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "%s: %##s  (%s)  (%s)  Client(%d)[%s]", v17, v18, v19, v20, v21, v15);
    }

    LogMcastStateInfo(v13, 0, 0, a4, a5, a6, a7, a8, a9);
  }
}

void unlink_and_free_service_instance(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[39];
  external_stop_advertising_helper(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = a1[1];
  if (v15)
  {
    v16 = (*(v15 + 128) + 1624);
    while (1)
    {
      v17 = v16;
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16 == a1)
      {
        *v17 = *v16;
        break;
      }
    }
  }

  if (v9)
  {
    do
    {
      v9[16] = v9;
      v18 = *v9;
      FreeExtraRR(mDNSStorage, (v9 + 2), -65792, v10, v11, v12, v13, v14);
      v9 = v18;
    }

    while (v18);
  }

  v19 = a1[490];
  if (v19 != a1 + 4780 && v19 != 0)
  {
    free(v19);
    a1[490] = 0;
  }

  v21 = a1[2];
  if (v21)
  {
    free(v21);
  }

  free(a1);
}

void FreeExtraRR(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == -65792)
  {
    v9 = *(a2 + 112);
    if (mDNS_LoggingEnabled == 1)
    {
      v10 = mDNSLogCategory_Default;
      v11 = a1 + 47032;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "     FreeExtraRR %s", v12, v13, v14, v15, v16, v11);
    }

    v17 = *(a2 + 48);
    if (v17 != (a2 + 908) && v17 != 0)
    {
      free(v17);
      *(a2 + 48) = 0;
    }

    if (v9)
    {

      free(v9);
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: FreeExtraRR invoked with unexpected error %d", a4, a5, a6, a7, a8, a3);
  }
}

void request_state_forget(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[15];
    if (v3)
    {
      free(v3);
      v1[15] = 0;
    }

    v4 = v1[16];
    if (v4)
    {
      free(v4);
      v1[16] = 0;
    }

    v5 = v1[17];
    if (v5)
    {
      v6 = v5[174];
      if (v6)
      {
        free(v6);
        v5[174] = 0;
      }

      v7 = v5[175];
      if (v7)
      {
        free(v7);
      }

      free(v5);
      v1[17] = 0;
    }

    v8 = v1[18];
    if (v8)
    {
      free(v8);
      v1[18] = 0;
    }

    v9 = v1[19];
    if (v9)
    {
      free(v9);
      v1[19] = 0;
    }

    v10 = v1[20];
    if (v10)
    {
      free(v10);
      v1[20] = 0;
    }

    v11 = v1[21];
    if (v11)
    {
      free(v11);
      v1[21] = 0;
    }

    v12 = v1[4];
    if (v12)
    {
      os_release(v12);
      v1[4] = 0;
    }

    v13 = v1[6];
    if (v13)
    {
      mdns_cfarray_enumerate(v13, &__block_literal_global_391);
      v14 = v1[6];
      if (v14)
      {
        CFRelease(v14);
        v1[6] = 0;
      }
    }

    v15 = v1[7];
    if (v15)
    {
      os_release(v15);
    }

    free(v1);
    *a1 = 0;
  }
}

uint64_t CountExistingRegistrations(_BYTE *a1, unsigned __int16 a2)
{
  v2 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2;
  do
  {
    if (*(v2 + 6) == 33 && *(v2[6] + 8) == v5)
    {
      v4 = v4 + SameDomainNameBytes(v2[5], a1);
    }

    v2 = *v2;
  }

  while (v2);
  return v4;
}

uint64_t DeregisterLocalOnlyDomainEnumPTR_Internal(unsigned int *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  memset(v37, 0, sizeof(v37));
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v11 = mDNS_DomainTypeNames[a3];
  v22 = 0;
  AppendDNSNameString(&v22, v11, a3, a4, a5, a6, a7, a8);
  result = AppendDNSNameString(&v22, "local", v12, v13, v14, v15, v16, v17);
  v19 = LocalDomainEnumRecords;
  if (LocalDomainEnumRecords)
  {
    v20 = &LocalDomainEnumRecords;
    while (1)
    {
      result = SameDomainNameBytes((*(v19 + 56) + 4), a2);
      if (result)
      {
        result = SameDomainNameBytes(*(*v20 + 48), &v22);
        if (result)
        {
          break;
        }
      }

      v20 = *v20;
      v19 = *v20;
      if (!*v20)
      {
        return result;
      }
    }

    v21 = *v20 + 8;
    *v20 = **v20;
    if (v8)
    {
      return mDNS_Deregister_internal(a1, v21, 0);
    }

    else
    {
      return mDNS_Deregister(a1, v21);
    }
  }

  return result;
}

void SendServiceRemovalNotification(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 8);
  if (GenerateNTDResponse(*(a1 + 2448), *(a1 + 2440), *(v2 + 8), &v9, 0x41, 0, 0))
  {
    v8 = *(a1 + 2448);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: SendServiceRemovalNotification: %##s is not valid DNS-SD SRV name", v3, v4, v5, v6, v7, *(*(v2 + 8) + 184));
  }

  else
  {
    append_reply(*(v2 + 8), v9);
    *(v2 + 25) = 0;
  }
}

uint64_t get_service_attr_tsr_params(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  if (a3 && a2 && (*(a1 + 224) & 2) != 0)
  {
    v13 = 0;
    v8 = *(a1 + 88);
    *a2 = get_tlv_uint32(v3, v8, 5, &v13);
    if (v13)
    {
      return 0;
    }

    tlv_uint32 = get_tlv_uint32(v3, v8, 11, &v13);
    *a3 = tlv_uint32;
    if (v13)
    {
      return 0;
    }

    v10 = tlv_uint32;
    v11 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:
        v12 = *a2;
        *buf = 67109376;
        v15 = v12;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "get_service_attr_tsr_params timestamp %u hostkeyHash %u", buf, 0xEu);
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }
    }

    return 1;
  }

  return result;
}

uint64_t conflictWithAuthRecordsOrFlush(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  v9 = CheckTSRForResourceRecord(a2, a3 + 8);
  if (v9 == 2)
  {
    return 1;
  }

  if (v9 != -1)
  {
LABEL_10:
    v19 = 0;
    if (!a1 || v9)
    {
      return v19;
    }

    if (*(a1 + 96))
    {
      v20 = *(a1 + 96);
    }

    else
    {
      v20 = a1;
    }

    v21 = xmmword_100170360;
    if (!xmmword_100170360)
    {
      return 0;
    }

    while (1)
    {
      v22 = *(v21 + 96);
      if (!v22)
      {
        v22 = v21;
      }

      v23 = *(v21 + 12) == 41 || v20 == v22;
      if (!v23 && SameResourceRecordNameClassInterface(v21, a1, a3, a4, a5, a6, a7, a8) && (!resource_records_have_same_dnssec_rr_category(*(v21 + 64), *(a1 + 64)) || *(v21 + 12) != *(a1 + 12) || *(v21 + 14) != *(a1 + 14) || *(v21 + 20) != *(a1 + 20) || *(v21 + 28) != *(a1 + 28) || !SameRDataBody(v21 + 8, (*(a1 + 48) + 4), SameDomainName)) && ((*(a1 + 8) & 0x32) != 0 || (*(v21 + 8) & 0x32) != 0))
      {
        break;
      }

      v21 = *v21;
      if (!v21)
      {
        return 0;
      }
    }

    v24 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_68:
        GetRRDisplayString_rdb((v21 + 8), (*(v21 + 48) + 4), word_1001789D0);
        v39 = *(v21 + 32);
        *buf = 141558787;
        v42 = 1752392040;
        v43 = 2085;
        v44 = word_1001789D0;
        v45 = 2048;
        v46 = v21;
        v47 = 2048;
        v48 = v39;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "conflictWithAuthRecordsOrFlush - Conflict with %{sensitive, mask.hash}s (%p), InterfaceID %p", buf, 0x2Au);
      }
    }

    else
    {
      v24 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }
    }

    return 2;
  }

  mDNS_Lock_(mDNSStorage, "conflictWithAuthRecordsOrFlush", 2049);
  v17 = qword_100170378;
  if (!qword_100170378)
  {
    goto LABEL_40;
  }

  v18 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v18 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }
  }

  GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), word_1001789D0);
  *buf = 136315138;
  v42 = word_1001789D0;
  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "conflictWithAuthRecordsOrFlush ERROR m->CurrentRecord already set %s", buf, 0xCu);
LABEL_40:
  if (!a1 || (v25 = *(a1 + 96)) == 0)
  {
    v25 = a1;
  }

  v26 = xmmword_100170360;
  qword_100170378 = xmmword_100170360;
  v19 = 0;
  if (xmmword_100170360)
  {
    do
    {
      v27 = *(v26 + 96);
      if (!v27)
      {
        v27 = v26;
      }

      v28 = *(v26 + 12) == 41 || v25 == v27;
      if (v28 || (!a1 || !SameResourceRecordNameClassInterface(v26, a1, v11, v12, v13, v14, v15, v16) || (*(a1 + 8) & 0x32) == 0 && (*(v26 + 8) & 0x32) == 0) && (*(v26 + 24) != *(a3 + 24) || !SameDomainNameBytes(*(v26 + 40), *(a3 + 40))))
      {
        goto LABEL_63;
      }

      v29 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
LABEL_61:
          GetRRDisplayString_rdb((v26 + 8), (*(v26 + 48) + 4), word_1001789D0);
          v37 = *(v26 + 32);
          *buf = 141558531;
          v42 = 1752392040;
          v43 = 2085;
          v44 = word_1001789D0;
          v45 = 2048;
          v46 = v37;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "conflictWithAuthRecordsOrFlush - deregistering %{sensitive, mask.hash}s InterfaceID %p", buf, 0x20u);
        }
      }

      else
      {
        v29 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }
      }

      D2D_stop_advertising_record(v26, v30, v31, v32, v33, v34, v35, v36);
      mDNS_Deregister_internal(mDNSStorage, v26, 4);
      v19 = 3;
LABEL_63:
      v38 = qword_100170378;
      if (qword_100170378 == v26)
      {
        v38 = *v26;
        qword_100170378 = *v26;
      }

      v26 = v38;
    }

    while (v38);
  }

  mDNS_Unlock_(mDNSStorage, "conflictWithAuthRecordsOrFlush", 2086);
  return v19;
}

uint64_t conflictWithCacheRecordsOrFlush(unsigned int a1, _BYTE *a2, int a3, int a4)
{
  result = CacheGroupForName(mDNSStorage, a1, a2);
  if (result)
  {
    v7 = result;
    v8 = mDNSGetTSRForCacheGroup(result);
    if (v8)
    {
      v15 = a4;
      *v16 = 0;
      *buf = a3;
      if (CheckTSRForResourceRecord(buf, (v8 + 1)) == 2)
      {
        return 1;
      }
    }

    mDNS_Lock_(mDNSStorage, "conflictWithCacheRecordsOrFlush", 2135);
    v9 = *(v7 + 16);
    if (v9)
    {
      while (1)
      {
        mDNS_PurgeCacheResourceRecord(mDNSStorage, v9);
        v10 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

LABEL_15:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

LABEL_14:
      v13 = *(v9 + 32);
      GetRRDisplayString_rdb((v9 + 8), (*(v9 + 48) + 4), word_1001789D0);
      *buf = 67109635;
      v15 = v13;
      strcpy(v16, "p\bhash");
      v16[7] = 0;
      *&v16[8] = 0;
      v17 = 2085;
      v18 = word_1001789D0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "conflictWithCacheRecordsOrFlush - new TSR, flushing interface %d %{sensitive, mask.hash}s", buf, 0x1Cu);
      goto LABEL_15;
    }

LABEL_16:
    mDNS_Unlock_(mDNSStorage, "conflictWithCacheRecordsOrFlush", 2144);
    return 0;
  }

  return result;
}

uint64_t updateTSRRecord(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 + 48);
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
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v11 = *(a2 + 40);
    if (v11)
    {
      v12 = *(a2 + 40);
      while (1)
      {
        if (!v12 || (v13 = *v12, v13 > 0x3F))
        {
LABEL_13:
          v14 = 257;
          goto LABEL_26;
        }

        if (!*v12)
        {
          break;
        }

        v12 += v13 + 1;
        if (&v12[-v11] >= 256)
        {
          goto LABEL_13;
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
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v11 = *(a2 + 40);
    if (v11)
    {
      v16 = *(a2 + 40);
      while (1)
      {
        if (!v16 || (v17 = *v16, v17 > 0x3F))
        {
LABEL_21:
          v14 = 257;
          goto LABEL_26;
        }

        if (!*v16)
        {
          break;
        }

        v16 += v17 + 1;
        if (&v16[-v11] >= 256)
        {
          goto LABEL_21;
        }
      }

      v14 = (v16 - v11 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_26:
  v18 = *(v8 + 4);
  v20 = 141559043;
  v21 = 1752392040;
  v22 = 1040;
  v23 = v14;
  v24 = 2101;
  v25 = v11;
  v26 = 1024;
  v27 = a3;
  v28 = 1024;
  v29 = v18;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TSR timestamp - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, new: %d  old: %d", &v20, 0x28u);
LABEL_27:
  if (a3 - *(v8 + 8) < 1)
  {
    return 0;
  }

  v20 = 167832317;
  LOBYTE(v21) = HIBYTE(a3);
  BYTE1(v21) = BYTE2(a3);
  BYTE2(v21) = BYTE1(a3);
  BYTE3(v21) = a3;
  BYTE4(v21) = HIBYTE(a4);
  BYTE5(v21) = BYTE2(a4);
  BYTE6(v21) = BYTE1(a4);
  HIBYTE(v21) = a4;
  v22 = 0;
  return update_record(a2, 14, &v20, 4500, 0, *(a1 + 200));
}

uint64_t add_record_to_service(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5, unsigned int a6)
{
  if (a4 <= 0x214)
  {
    v12 = 532;
  }

  else
  {
    v12 = a4;
  }

  v13 = malloc_type_calloc(1uLL, v12 + 928, 0x6328E1B3uLL);
  if (!v13)
  {
    __break(1u);
  }

  v17 = v13;
  v13[14] = a3;
  v18 = (v13 + 462);
  *(v13 + 8) = v13 + 462;
  v13[462] = v12;
  v13[18] = a4;
  v19 = *(a1 + 128);
  if (!SetRData(0, a5, &a5[a4], (v13 + 12), a4, v14, v15, v16))
  {
    v32 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 200);
        v44 = v19[203];
        if (v44)
        {
          v35 = *(v44 + 2736);
          if (v35)
          {
            v45 = *(v44 + 2736);
            while (1)
            {
              if (!v45 || (v46 = *v45, v46 > 0x3F))
              {
LABEL_35:
                v38 = 257;
                goto LABEL_42;
              }

              if (!*v45)
              {
                break;
              }

              v45 += v46 + 1;
              if (&v45[-v35] >= 256)
              {
                goto LABEL_35;
              }
            }

            v38 = (v45 - v35 + 1);
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          v35 = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v32 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 200);
        v34 = v19[203];
        if (v34)
        {
          v35 = *(v34 + 2736);
          if (v35)
          {
            v36 = *(v34 + 2736);
            while (1)
            {
              if (!v36 || (v37 = *v36, v37 > 0x3F))
              {
LABEL_18:
                v38 = 257;
                goto LABEL_42;
              }

              if (!*v36)
              {
                break;
              }

              v36 += v37 + 1;
              if (&v36[-v35] >= 256)
              {
                goto LABEL_18;
              }
            }

            v38 = (v36 - v35 + 1);
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          v35 = 0;
        }

LABEL_42:
        v48[0] = 67110147;
        v48[1] = v33;
        v49 = 2160;
        v50 = 1752392040;
        v51 = 1040;
        v52 = v38;
        v53 = 2101;
        v54 = v35;
        v55 = 2082;
        v56 = DNSTypeName(a3);
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[R%u] read_rr_from_ipc_msg: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v48, 0x2Cu);
      }
    }

    free(v17);
    return 4294901756;
  }

  SetNewRData(v17 + 24, 0, 0, v20, v21, v22, v23, v24);
  *(v17 + 48) = *v19;
  v25 = mDNS_AddRecordToService(mDNSStorage, a2 + 288, v17, v18, a6, *(a1 + 248));
  if (v25)
  {
    v31 = v25;
    free(v17);
  }

  else
  {
    if (mDNS_McastLoggingEnabled)
    {
      LogMcastService(a2 + 1520, a1, 1, v26, v27, v28, v29, v30, v48[0]);
    }

    *(v17 + 8) = *(a1 + 240);
    if (*(a2 + 27) && callExternalHelpers(*v19, (a2 + 28), *(a1 + 248), v26, v27, v28, v29, v30))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "add_record_to_service: calling external_start_advertising_service", v39, v40, v41, v42, v43, v48[0]);
      }

      internal_start_advertising_service(v17 + 24, *(a1 + 248), *(a1 + 188));
    }

    return 0;
  }

  return v31;
}

uint64_t update_record(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, uint64_t a5, int a6)
{
  if (a2 <= 0x214)
  {
    v12 = 532;
  }

  else
  {
    v12 = a2;
  }

  v13 = malloc_type_calloc(1uLL, v12 + 4, 0xD6172CA0uLL);
  if (!v13)
  {
    __break(1u);
  }

  v17 = v13;
  v75 = 0u;
  v76 = 0u;
  memset(v74, 0, sizeof(v74));
  v18 = *(a1 + 40);
  DWORD1(v74[0]) = *(a1 + 12);
  *&v75 = v18;
  *(&v75 + 1) = v13;
  *v13 = v12;
  WORD6(v74[0]) = a2;
  if (!SetRData(0, a3, &a3[a2], v74, a2, v14, v15, v16))
  {
    updated = 4294901756;
    v38 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v39 = v75;
      if (v75)
      {
        v55 = v75;
        while (1)
        {
          if (!v55 || (v56 = *v55, v56 > 0x3F))
          {
LABEL_45:
            v42 = 257;
            goto LABEL_63;
          }

          if (!*v55)
          {
            break;
          }

          v55 += v56 + 1;
          if (&v55[-v75] >= 256)
          {
            goto LABEL_45;
          }
        }

        v42 = (v55 - v75 + 1);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v38 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
LABEL_64:
        free(v17);
        return updated;
      }

      v39 = v75;
      if (v75)
      {
        v40 = v75;
        while (1)
        {
          if (!v40 || (v41 = *v40, v41 > 0x3F))
          {
LABEL_35:
            v42 = 257;
            goto LABEL_63;
          }

          if (!*v40)
          {
            break;
          }

          v40 += v41 + 1;
          if (&v40[-v75] >= 256)
          {
            goto LABEL_35;
          }
        }

        v42 = (v40 - v75 + 1);
      }

      else
      {
        v42 = 0;
      }
    }

LABEL_63:
    v67 = DNSTypeName(WORD2(v74[0]));
    *buf = 67110147;
    v78 = a6;
    v79 = 2160;
    v80 = 1752392040;
    v81 = 1040;
    v82 = v42;
    v83 = 2101;
    v84 = v39;
    v85 = 2082;
    v86 = v67;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[R%u] update_record: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x2Cu);
    goto LABEL_64;
  }

  RDLength = GetRDLength(v74, 0, v19, v20, v21, v22, v23, v24);
  v26 = RDLength;
  if (*(a1 + 12) == 16 && !RDLength)
  {
    *(v17 + 4) = 0;
    v26 = 1;
  }

  if (a5)
  {
    *(a1 + 608) = a5;
  }

  if (!ValidateRData(*(a1 + 12), v26, v17))
  {
    v43 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a1 + 8), v17 + 2, word_1001789D0);
    LogMsgWithLevel(v43, OS_LOG_TYPE_DEFAULT, "Attempt to update record with invalid rdata: %s", v44, v45, v46, v47, v48, word_1001789D0);
    updated = 4294901747;
LABEL_37:
    v49 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a1 + 8), (*(a1 + 48) + 4), word_1001789D0);
    LogMsgWithLevel(v49, OS_LOG_TYPE_DEFAULT, "update_record: Error %d for %s", v50, v51, v52, v53, v54, updated);
    goto LABEL_64;
  }

  mDNS_Lock_(mDNSStorage, "mDNS_Update", 16529);
  if (!a4)
  {
    a4 = *(a1 + 16);
  }

  v32 = *(a1 + 304);
  if (v32)
  {
    *(a1 + 304) = 0;
    v33 = *(a1 + 320);
    if (v33)
    {
      v34 = *(a1 + 312);
      v33(mDNSStorage, a1);
    }
  }

  *(a1 + 304) = v17;
  *(a1 + 312) = v26;
  *(a1 + 320) = update_callback;
  v35 = *(a1 + 172) & 0xFFFFFFFE;
  if (v35 == 4)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 32) && !*(a1 + 122))
  {
    if (IsLocalDomain(*(a1 + 40)))
    {
      v35 = *(a1 + 172) & 0xFFFFFFFE;
      goto LABEL_22;
    }

    updated = uDNS_UpdateRecord(a1, v36, v32, v27, v28, v29, v30, v31);
    if (!updated)
    {
      mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16553);
      return updated;
    }

    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16553);
    goto LABEL_37;
  }

LABEL_22:
  if (v35 != 4 && *(a1 + 12) != 41 && (*(a1 + 16) != a4 || *(a1 + 20) != v26 || memcmp((*(a1 + 48) + 4), v17 + 2, v26)))
  {
    *(a1 + 191) = 4;
    InitializeLastAPTime(mDNSStorage, a1);
    v62 = *(a1 + 332);
    if (v62)
    {
      v63 = dword_10016D258;
      while ((v63 - v62) >= 0)
      {
        v64 = *(a1 + 328) + 1;
        *(a1 + 328) = v64;
        v62 += 6000;
        if (v62 <= 1)
        {
          v62 = 1;
        }

        if (v64 <= 9)
        {
          v65 = v62;
        }

        else
        {
          v65 = 0;
        }

        *(a1 + 332) = v65;
        if (v64 >= 0xA)
        {
          goto LABEL_58;
        }
      }

      v66 = 0;
    }

    else
    {
LABEL_58:
      v66 = 1;
    }

    v69 = *(a1 + 336);
    if (!v69)
    {
      v70 = *(a1 + 328);
      if (v70)
      {
        *(a1 + 328) = v70 - 1;
      }
    }

    if (v66)
    {
      v71 = dword_10016D258 + 6000;
      if ((dword_10016D258 + 6000) <= 1)
      {
        v71 = 1;
      }

      *(a1 + 332) = v71;
    }

    v72 = *(a1 + 328);
    if (v72 + 1 < *(a1 + 191))
    {
      *(a1 + 191) = v72 + 1;
    }

    if (v72 <= 5)
    {
      if (!v69)
      {
        if (dword_10016D258 + 1000 * (6 - v72) <= 1)
        {
          v69 = 1;
        }

        else
        {
          v69 = dword_10016D258 + 1000 * (6 - v72);
        }

        *(a1 + 336) = v69;
      }

      v73 = *(a1 + 280);
      *(a1 + 280) = 4 * v73;
      *(a1 + 284) = v69 - 4 * v73;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Excessive update rate for %##s; delaying announcement by %ld second%s", v57, v58, v59, v60, v61, *(a1 + 40));
    }

    *(a1 + 16) = a4;
    goto LABEL_25;
  }

LABEL_24:
  CompleteRDataUpdate(mDNSStorage, a1, v32, v27, v28, v29, v30, v31);
LABEL_25:
  mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16582);
  return 0;
}

void update_callback(int a1, uint64_t a2, char *a3, uint64_t __n, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 608);
  if (!v10 || !*v10)
  {
    goto LABEL_16;
  }

  v12 = *(a2 + 24);
  v18[0] = *(a2 + 8);
  v18[1] = v12;
  v13 = *(a2 + 56);
  v19 = *(a2 + 40);
  v20 = v13;
  v14 = *(a2 + 172);
  v15 = (v14 & 0xFFFFFFFD) == 1 ? 0x20000 : (v14 == 2) << 20;
  if (WORD6(v18[0]) == __n && !memcmp((*(&v19 + 1) + 4), a3 + 4, __n))
  {
    goto LABEL_16;
  }

  SetNewRData(v18, a3, __n, __n, a5, a6, a7, a8);
  internal_stop_advertising_service(v18, v15, 0);
  v16 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = mDNSLogCategory_D2D_redacted;
    if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "update_callback: calling external_start_advertising_service", v17, 2u);
    }
  }

  internal_start_advertising_service(a2 + 8, v15, 0);
LABEL_16:
  if ((a2 + 908) != a3)
  {
    if (a3)
    {
      free(a3);
    }
  }
}

void FreeARElemCallback_2637(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v5 = &LocalDomainEnumRecords;
    do
    {
      v6 = v5;
      v5 = *v5;
      if (v5)
      {
        v7 = v5 + 1 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v5)
    {
      goto LABEL_18;
    }

    *v6 = *v5;
    v8 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    v11 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v11);
    v13 = 141558275;
    v14 = 1752392040;
    v15 = 2085;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeARElemCallback: Have to cut %{sensitive, mask.hash}s", &v13, 0x16u);
LABEL_18:
    v12 = *(a2 + 112);
    if (v12)
    {
      free(v12);
    }
  }
}

uint64_t ___get_unicast_discovery_dns_services_block_invoke(uint64_t a1, int a2, __int128 *a3, unsigned int a4)
{
  if (a3)
  {
    v8 = mdns_dns_service_definition_create();
    if (v8)
    {
      v9 = v8;
      if (a2 == 30)
      {
        v15 = *a3;
        v13 = _mdns_address_new();
        if (!v13)
        {
LABEL_10:
          os_release(v9);
          return 1;
        }

        v12 = v13;
        *(v13 + 24) = -384557540;
        *(v13 + 32) = v15;
        *(v13 + 48) = a4;
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_10;
        }

        v10 = *a3;
        v11 = _mdns_address_new();
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = v11;
        *(v11 + 24) = -384564720;
        *(v11 + 28) = bswap32(v10);
      }

      CFArrayAppendValue(v9[3], v12);
      os_release(v12);
      mdns_dns_service_definition_set_interface_index(v9, a4, 1);
      CFArrayAppendValue(*(a1 + 32), v9);
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t __add_domain_to_browser_block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (CFArrayGetCount(*(a2 + 24)) < 1)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (!ValueAtIndex)
  {
    return 1;
  }

  v6 = ValueAtIndex;
  result = malloc_type_calloc(1uLL, 0x3C0uLL, 0x12A9E533uLL);
  if (result)
  {
    v14 = result;
    v15 = a1[5];
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
          memcpy((result + 8), v15, v18);
          goto LABEL_13;
        }

        break;
      }

      v16 += v17 + 1;
    }

    while (v16 - v15 <= 255);
    *(result + 8) = 0;
LABEL_13:
    v19 = a1[6];
    *(v14 + 128) = *(v19 + 196);
    if (*(v19 + 288))
    {
      v20 = 0;
      *(v14 + 921) = *(v19 + 272);
      v19 = a1[6];
    }

    else
    {
      v20 = *(v19 + 188);
    }

    *(v14 + 127) = v20;
    *(v14 + 129) = *(v19 + 200);
    v21 = v6[25];
    if (v21 == 30)
    {
      v23 = *(v6 + 8);
      *buf = *(v6 + 36);
      *v41 = *(v6 + 11);
      v22 = 6;
    }

    else if (v21 == 2)
    {
      *v41 = 0;
      *buf = 0;
      v22 = 4;
      v23 = *(v6 + 7);
    }

    else
    {
      v23 = 0;
      v22 = 0;
      *v41 = 0;
      *buf = 0;
    }

    *(v14 + 142) = v22;
    *(v14 + 143) = v23;
    *(v14 + 72) = *buf;
    *(v14 + 146) = *v41;
    v24 = mDNSPlatformInterfaceIDfromInterfaceIndex(v4, v15, v8, v9, v10, v11, v12, v13);
    *(*(a1[4] + 8) + 24) = mDNS_StartBrowse((v14 + 264), (a1[7] + 10), a1[5], v24, *(a1[6] + 248), 0, (*(a1[6] + 248) & 0x80000) != 0, 0, a1[6]);
    v25 = *(*(a1[4] + 8) + 24);
    if (!v25)
    {
      *v14 = *(a1[7] + 272);
      *(a1[7] + 272) = v14;
      if (mDNS_McastLoggingEnabled)
      {
        LogMcastQuestion((v14 + 264), a1[6], 1);
      }

      return 1;
    }

    v26 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1[6] + 200);
        v28 = a1[7] + 10;
        v32 = v28;
        while (1)
        {
          if (!v32 || (v33 = *v32, v33 > 0x3F))
          {
LABEL_39:
            v31 = 257;
            goto LABEL_41;
          }

          if (!*v32)
          {
            break;
          }

          v32 += v33 + 1;
          if (&v32[-v28] >= 256)
          {
            goto LABEL_39;
          }
        }

        v31 = (v32 - v28 + 1);
LABEL_41:
        v34 = a1[5];
        if (v34)
        {
          v35 = a1[5];
          while (1)
          {
            if (!v35 || (v36 = *v35, v36 > 0x3F))
            {
LABEL_47:
              v37 = 257;
              goto LABEL_60;
            }

            if (!*v35)
            {
              break;
            }

            v35 += v36 + 1;
            if (&v35[-v34] >= 256)
            {
              goto LABEL_47;
            }
          }

          v37 = (v35 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v26 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1[6] + 200);
        v28 = a1[7] + 10;
        v29 = v28;
        while (1)
        {
          if (!v29 || (v30 = *v29, v30 > 0x3F))
          {
LABEL_30:
            v31 = 257;
            goto LABEL_50;
          }

          if (!*v29)
          {
            break;
          }

          v29 += v30 + 1;
          if (&v29[-v28] >= 256)
          {
            goto LABEL_30;
          }
        }

        v31 = (v29 - v28 + 1);
LABEL_50:
        v34 = a1[5];
        if (v34)
        {
          v38 = a1[5];
          while (1)
          {
            if (!v38 || (v39 = *v38, v39 > 0x3F))
            {
LABEL_56:
              v37 = 257;
              goto LABEL_60;
            }

            if (!*v38)
            {
              break;
            }

            v38 += v39 + 1;
            if (&v38[-v34] >= 256)
            {
              goto LABEL_56;
            }
          }

          v37 = (v38 - v34 + 1);
        }

        else
        {
          v37 = 0;
        }

LABEL_60:
        *buf = 67110915;
        *&buf[4] = v27;
        *v41 = 1024;
        *&v41[2] = v25;
        v42 = 2160;
        v43 = 1752392040;
        v44 = 1040;
        v45 = v31;
        v46 = 2101;
        v47 = v28;
        v48 = 2160;
        v49 = 1752392040;
        v50 = 1040;
        v51 = v37;
        v52 = 2101;
        v53 = v34;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[R%u] mDNS_StartBrowse returned error (UNICAST_DISCOVERY) -- error: %d, type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x42u);
      }
    }

    free(v14);
    return 1;
  }

  __break(1u);
  return result;
}

void *GenerateBrowseReply(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char **a4, unsigned int a5, unsigned int a6)
{
  memset(__s, 0, sizeof(__s));
  bzero(__src, 0x3F1uLL);
  *a4 = 0;
  if (a1)
  {
    v13 = (a1 + 1);
    v12 = *a1;
    if (v12 <= 0x3F)
    {
      if (v13 >= &v13[v12])
      {
        v14 = __s;
      }

      else
      {
        v14 = __s;
        v15 = *a1;
        do
        {
          v16 = *v13++;
          *v14++ = v16;
          --v15;
        }

        while (v15);
      }

      *v14 = 0;
    }

    mDNS_snprintf(__src);
  }

  else
  {
    LOBYTE(__s[0]) = 0;
  }

  v17 = strlen(__s);
  v18 = strlen(__src);
  reply = create_reply(0x42, v17 + v18 + 16, a3, v19, v20, v21, v22, v23);
  *a4 = reply;
  *(reply + 11) = bswap32(a5);
  v30 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, a2, 0, v25, v26, v27, v28, v29);
  v31 = *a4;
  *(v31 + 12) = bswap32(v30);
  *(v31 + 13) = bswap32(a6);
  v32 = v31 + 56;
  memcpy(v31 + 56, __s, v17 + 1);
  v33 = v32 + v17 + 1;
  v34 = strlen(__src) + 1;
  result = memcpy(v33, __src, v34);
  *&v33[v34] = 46;
  return result;
}

void append_reply(uint64_t a1, void *a2)
{
  if (*(a1 + 292))
  {
    if (a2)
    {
      free(a2);
    }
  }

  else
  {
    v2 = *(a1 + 24);
    if (!v2)
    {
      v2 = a1;
    }

    *a2 = 0;
    **(v2 + 104) = a2;
    *(v2 + 104) = a2;
  }
}