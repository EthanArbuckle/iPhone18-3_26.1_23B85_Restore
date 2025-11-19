const __CFString *tss_lookup_error(int a1)
{
  v1 = off_1000B4810;
  if (off_1000B4810)
  {
    if (tss_err_map == a1)
    {
      return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
    }

    for (i = &off_1000B4820; ; i += 2)
    {
      v1 = *i;
      if (!*i)
      {
        break;
      }

      v3 = *(i - 2);
      if (v3 == a1)
      {
        return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
      }
    }
  }

  return @"Unknown";
}

void *tss_create_session(const void *a1, const void *a2)
{
  v4 = malloc(0x60uLL);
  v10 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (!a2)
  {
    v13 = "signingServerURL is NULL";
    goto LABEL_10;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFURLGetTypeID())
  {
    v13 = "signingServerURL is malformed";
    goto LABEL_10;
  }

  v10[1] = CFRetain(a2);
  *(v10 + 10) = 256;
  if (a1)
  {
    CFRetain(a1);
  }

  *v10 = a1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10[3] = Mutable;
  if (!Mutable)
  {
LABEL_7:
    v13 = "out of memory";
LABEL_10:
    AMAuthInstallLog(3, "tss_create_session", v13, v5, v6, v7, v8, v9, v15);
    free(v10);
    return 0;
  }

  return v10;
}

uint64_t tss_close_session(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = tss_reset_session(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    free(a1);
  }

  return v9;
}

uint64_t tss_reset_session(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 72) = 0;
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      free(v15);
    }

    result = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    AMAuthInstallLog(3, "tss_reset_session", "NULL session", a4, a5, a6, a7, a8, v17);
    return 10009;
  }

  return result;
}

uint64_t tss_submit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "tss_submit", "NULL session", a4, a5, a6, a7, a8, v19);
    return 10009;
  }

  if (!*(a1 + 24))
  {
    AMAuthInstallLog(3, "tss_submit", "NULL request in session", a4, a5, a6, a7, a8, v19);
    v15 = 10008;
    v16 = a1;
    v17 = 10008;
LABEL_10:
    tss_set_last_error(v16, v17);
    return v15;
  }

  if (!*(a1 + 48))
  {
    tss_submit_job_with_retry();
    return *(a1 + 64);
  }

  v9 = malloc(8uLL);
  *(a1 + 56) = v9;
  if (!v9)
  {
    AMAuthInstallLog(3, "tss_submit_non_block", "out of memory", v10, v11, v12, v13, v14, v19);
    v15 = 10006;
    v16 = a1;
    v17 = 10006;
    goto LABEL_10;
  }

  pthread_create(v9, 0, tss_submit_job_with_retry, a1);
  return 0;
}

const __CFString *tss_set_last_error(const __CFString *result, int a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(result[2].isa) = a2;
    info = result[2].info;
    if (info)
    {
      CFRelease(info);
    }

    result = tss_lookup_error(a2);
    v3[2].info = result;
  }

  return result;
}

uint64_t tss_submit_job_with_retry()
{
  v0 = __chkstk_darwin();
  v6 = v0;
  if (v0)
  {
    if (*(v0 + 16) <= 1u)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v0 + 16);
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = 0;
  v9 = kCFAllocatorDefault;
  key = _kCFSystemVersionBuildVersionKey;
  do
  {
    AMAuthInstallLog(6, "tss_submit_job_with_retry", "TSS Connection attempt %d of %d.  (Will retry if TSS_ERR_SERVER_NOT_REACHABLE.)", v1, v2, v3, v4, v5, ++v8);
    error = 0;
    bzero(v212, 0x19000uLL);
    if (!*(v6 + 8))
    {
      AMAuthInstallLog(3, "tss_submit_job", "no server URL", v10, v11, v12, v13, v14, v175);
      v71 = 10008;
LABEL_25:
      tss_set_last_error(v6, v71);
      v72 = 0;
      v35 = 0;
      v73 = 0;
      v50 = 0;
      Request = 0;
      v28 = 0;
      *(v6 + 64) = v71;
      goto LABEL_35;
    }

    v15 = CFPropertyListCreateData(v9, *(v6 + 24), kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (!v15)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateXMLData failed %@", v16, v17, v18, v19, v20, error);
      v71 = 10036;
      goto LABEL_25;
    }

    v21 = v15;
    Length = CFDataGetLength(v15);
    v28 = CFURLCreateWithString(v9, @"TSS/controller?action=2", *(v6 + 8));
    if (!v28)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFURLCreateCopyAppendingPathComponent() failed", v23, v24, v25, v26, v27, v175);
      v74 = 10041;
      tss_set_last_error(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      Request = 0;
LABEL_34:
      *(v6 + 64) = v74;
      CFRelease(v21);
      v73 = 0;
      goto LABEL_35;
    }

    Request = CFHTTPMessageCreateRequest(v9, @"POST", v28, kCFHTTPVersion1_1);
    if (!Request)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFHTTPMessageCreateRequest failed", v29, v30, v31, v32, v33, v175);
      v74 = 10041;
      tss_set_last_error(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      goto LABEL_34;
    }

    v176 = Length;
    v35 = CFStringCreateWithFormat(v9, 0, @"%d");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"Keep-Alive");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Pragma", @"no-cache");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v35);
    v36 = _CFCopySystemVersionDictionary();
    if (v36)
    {
      v42 = v36;
      Value = CFDictionaryGetValue(v36, key);
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-OS-Version", Value);
      CFRelease(v42);
    }

    if (*(v6 + 32))
    {
      AMAuthInstallLog(7, "tss_submit_job", "Attempting to add additional entries to HTTP header", v37, v38, v39, v40, v41, v176);
      CFDictionaryApplyFunction(*(v6 + 32), _AMAuthInstallUpdateHTTPHeaderWithEntry, Request);
      AMAuthInstallLog(7, "tss_submit_job", "Done adding additional fields to HTTP header", v44, v45, v46, v47, v48, v177);
    }

    CFHTTPMessageSetBody(Request, v21);
    Mutable = CFDictionaryCreateMutable(v9, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v50 = Mutable;
    v51 = *(v6 + 80);
    if (v51)
    {
      CFDictionaryAddValue(Mutable, @"SocksProxySettings", v51);
      AMAuthInstallLog(7, "tss_submit_job", "Found a SOCKS proxy setting. Will attempt to use it.", v52, v53, v54, v55, v56, v176);
    }

    v57 = *(v6 + 88);
    if (v57)
    {
      CFDictionaryAddValue(v50, @"TrustedServerCAs", v57);
      AMAuthInstallLog(7, "tss_submit_job", "Found a trusted server CA. Will attempt to use it.", v58, v59, v60, v61, v62, v176);
    }

    theData[0] = 0;
    v63 = CFURLCopyScheme(*(v6 + 8));
    if (!v63)
    {
      v70 = "Invalid scheme in url";
      goto LABEL_31;
    }

    v69 = v63;
    *__s = 10000;
    if (CFStringCompare(v63, @"https", 1uLL) && CFStringCompare(v69, @"http", 1uLL))
    {
      CFRelease(v69);
      v70 = "unsupported URL scheme";
LABEL_31:
      AMAuthInstallLog(3, "tss_submit_job", v70, v64, v65, v66, v67, v68, v176);
      v74 = 10008;
      v80 = v6;
      v81 = 10008;
      goto LABEL_32;
    }

    CFRelease(v69);
    if (AMAuthInstallHttpMessageSendSyncNew(v9, Request, theData, __s, v50, 300.0))
    {
      AMAuthInstallLog(3, "tss_submit_job", "failed to send http request", v75, v76, v77, v78, v79, v176);
      v74 = 10002;
      v80 = v6;
      v81 = 10002;
LABEL_32:
      tss_set_last_error(v80, v81);
LABEL_33:
      v72 = @"Content-Length";
      goto LABEL_34;
    }

    v74 = *__s;
    if (*__s != 200)
    {
      AMAuthInstallLog(3, "tss_submit_job", "SendHttpRequest failed %d", v75, v76, v77, v78, v79, __s[0]);
      if (*__s == -1)
      {
        v74 = 10002;
      }

      v88 = v6;
      v89 = v74;
      goto LABEL_61;
    }

    if (CFDataGetLength(theData[0]) > 0x19000)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Response too large", v83, v84, v85, v86, v87, v176);
      v74 = 10052;
      v88 = v6;
      v89 = 10052;
LABEL_61:
      tss_set_last_error(v88, v89);
      CFRelease(theData[0]);
      goto LABEL_33;
    }

    CFDataGetBytePtr(theData[0]);
    CFDataGetLength(theData[0]);
    __memcpy_chk();
    v90 = CFDataGetLength(theData[0]);
    CFRelease(theData[0]);
    v96 = v90;
    *v210 = 0;
    *__s = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v182 = v90;
    if (v90 < 1)
    {
      v100 = 0;
      v187 = 0;
      cfb = 0;
      goto LABEL_108;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = v212;
    do
    {
      if (v99)
      {
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else if (v100 + 7 >= v96)
      {
        v99 = 0;
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v186 = v98;
        cf = v97;
        if (!strncmp(v101, "STATUS", 6uLL))
        {
          v102 = 0;
          v99 = v101 + 7;
          v97 = cf;
          do
          {
            v103 = v101[v102 + 7];
            if (v103 == 38)
            {
              break;
            }

            v210[v102++] = v103;
          }

          while (v102 != 8);
          v210[7] = 0;
          v96 = v182;
        }

        else
        {
          v99 = 0;
          v96 = v182;
          v97 = cf;
        }

        v98 = v186;
        if (v186)
        {
LABEL_66:
          if (v97)
          {
            goto LABEL_98;
          }

          goto LABEL_67;
        }
      }

      if (v100 + 8 >= v96)
      {
        v98 = 0;
        if (v97)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v184 = v99;
        cfa = v97;
        if (!strncmp(v101, "MESSAGE", 7uLL))
        {
          v104 = 0;
          v98 = v101 + 8;
          v97 = cfa;
          v99 = v184;
          do
          {
            v105 = v101[v104 + 8];
            if (v105 == 10)
            {
              break;
            }

            if (v105 == 38)
            {
              break;
            }

            __s[v104++] = v105;
          }

          while (v104 != 256);
          HIBYTE(v209) = 0;
          v96 = v182;
          if (cfa)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v98 = 0;
          v96 = v182;
          v99 = v184;
          v97 = cfa;
          if (cfa)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_67:
      if (v100 + 15 >= v96)
      {
        v97 = 0;
        goto LABEL_98;
      }

      v183 = v99;
      v185 = v98;
      if (strncmp(v101, "REQUEST_STRING", 0xEuLL))
      {
        v97 = 0;
        v96 = v182;
        v99 = v183;
LABEL_97:
        v98 = v185;
        goto LABEL_98;
      }

      v97 = v101 + 15;
      v99 = v183;
      if (!v183)
      {
        v96 = v182;
        goto LABEL_97;
      }

      v96 = v182;
      v98 = v185;
      if (v185)
      {
        goto LABEL_100;
      }

LABEL_98:
      ++v101;
      ++v100;
    }

    while (v100 != v96);
    v100 = v96;
LABEL_100:
    cfb = v97;
    if (v99)
    {
      v106 = v98 == 0;
    }

    else
    {
      v106 = 1;
    }

    v107 = !v106;
    v187 = v107;
LABEL_108:
    AMAuthInstallLog(8, "tss_submit_job", "----Begin request", v91, v92, v93, v94, v95, v176);
    AMAuthInstallLog(8, "tss_submit_job", "%@", v108, v109, v110, v111, v112, *(v6 + 24));
    AMAuthInstallLog(8, "tss_submit_job", "----End request", v113, v114, v115, v116, v117, v178);
    AMAuthInstallLog(8, "tss_submit_job", "----Begin response", v118, v119, v120, v121, v122, v179);
    AMAuthInstallLog(8, "tss_submit_job", "%s", v123, v124, v125, v126, v127, v212);
    AMAuthInstallLog(8, "tss_submit_job", "----End response", v128, v129, v130, v131, v132, v180);
    if ((v187 & 1) == 0)
    {
      AMAuthInstallLog(3, "tss_submit_job", "invalid response", v133, v134, v135, v136, v137, v181);
      v144 = 10052;
      v153 = v6;
      v154 = 10052;
      goto LABEL_115;
    }

    v138 = atoi(v210);
    if (!v138)
    {
      if (cfb)
      {
        __memcpy_chk();
        v155 = CFDataCreate(kCFAllocatorDefault, theData, v182 - v100 - 15);
        if (v155)
        {
          v161 = v155;
          if (error)
          {
            CFRelease(error);
          }

          cfc = v161;
          v73 = CFPropertyListCreateWithData(kCFAllocatorDefault, v161, 0, 0, &error);
          if (v73)
          {
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v73);
            *(v6 + 40) = Copy;
            if (Copy)
            {
              v173 = 0;
LABEL_130:
              *(v6 + 64) = v173;
              CFRelease(v21);
              CFRelease(cfc);
              goto LABEL_117;
            }

            AMAuthInstallLog(3, "tss_submit_job", "CFDictionaryCreateCopy failed", v168, v169, v170, v171, v172, v181);
            v173 = 10056;
          }

          else
          {
            AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateFromXMLData failed (%@)", v162, v163, v164, v165, v166, error);
            v173 = 10055;
          }

          tss_set_last_error(v6, v173);
          goto LABEL_130;
        }

        AMAuthInstallLog(3, "tss_submit_job", "CFDataCreate failed", v156, v157, v158, v159, v160, v181);
        v144 = 10054;
        v153 = v6;
        v154 = 10054;
      }

      else
      {
        AMAuthInstallLog(3, "tss_submit_job", "no data in response", v139, v140, v141, v142, v143, v181);
        v144 = 10053;
        v153 = v6;
        v154 = 10053;
      }

LABEL_115:
      tss_set_last_error(v153, v154);
      goto LABEL_116;
    }

    v144 = v138;
    AMAuthInstallLog(3, "tss_submit_job", "error from server=%d (%s)", v139, v140, v141, v142, v143, v138);
    v145 = *(v6 + 72);
    if (v145)
    {
      CFRelease(v145);
    }

    v146 = strlen(__s);
    v147 = CFStringCreateWithBytes(kCFAllocatorDefault, __s, v146, 0x8000100u, 0);
    *(v6 + 72) = v147;
    if (!v147)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Server message failed to convert: %d", v148, v149, v150, v151, v152, v144);
    }

LABEL_116:
    *(v6 + 64) = v144;
    CFRelease(v21);
    v73 = 0;
LABEL_117:
    v72 = @"Content-Length";
LABEL_35:
    if (error)
    {
      CFRelease(error);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Request)
    {
      CFRelease(Request);
    }

    if (v72)
    {
      CFRelease(v72);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    v9 = kCFAllocatorDefault;
    if (v73)
    {
      CFRelease(v73);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    v82 = *(v6 + 48);
    if (v82)
    {
      v82(v6);
    }
  }

  while (v6 && v8 < v7 && *(v6 + 64) == 10002);
  return 0;
}

void _AMAuthInstallUpdateHTTPHeaderWithEntry(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(7, "_AMAuthInstallUpdateHTTPHeaderWithEntry", "HTTP Request Header: %@=%@", a4, a5, a6, a7, a8, a1);

  CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

id UARPPersonalizationTSSRequestWithSigningServer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v13, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v13, 0x16u);
  }

  v8 = String(v3, v5, 0);
  v9 = String();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_1();
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_2();
    }
  }

  return v8;
}

id String()
{
  if (TSSRequestLogToken_onceToken != -1)
  {
    TSSRequestLogToken_cold_1();
  }

  v1 = TSSRequestLogToken_logToken;

  return v1;
}

id String(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler(String);
  v8 = AMAuthInstallCreate(kCFAllocatorDefault);
  if (!v8)
  {
    v13 = String();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_3();
    }

    goto LABEL_11;
  }

  v9 = v8;
  v10 = AMAuthInstallSetSigningServerURL(v8, v6);
  v11 = String();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_1();
    }

    CFRelease(v9);
LABEL_11:
    v14 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v15 = @" <AppleConnect>";
    }

    else
    {
      v15 = @" ";
    }

    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
  }

  v16 = String();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  v23 = 0;
  v17 = AMAuthInstallApCreatePersonalizedResponse(v9, v5, &v23);
  v18 = String();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v19 = @" <AppleConnect>";
    }

    else
    {
      v19 = @" ";
    }

    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
  }

  v20 = String();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  if (v17)
  {
    v21 = String();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_2(v17, v21);
    }

    v14 = 0;
  }

  else
  {
    v14 = v23;
  }

  CFRelease(v9);
LABEL_32:

  return v14;
}

id UARPPersonalizationTSSRequestWithSigningServerSSO(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v11, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v11, 0x16u);
  }

  v8 = String(v3, v5, 1);
  if (!v8)
  {
    v9 = String();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      UARPPersonalizationTSSRequestWithSigningServerSSO_cold_1();
    }
  }

  return v8;
}

void String(uint64_t a1, uint64_t a2)
{
  v3 = String();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void TSSRequestWithSigningServer_cold_2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v2, 8u);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id __copy_helper_block_e8_32s40s(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void __destroy_helper_block_e8_32s40s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        _EncodedDataRelease(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = _EncodedDataCreate(a2, a3, a4, a5, a6, 3);

  return _DEREncoderAddEncodedData(a1, v7);
}

uint64_t _DEREncoderAddEncodedData(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 20);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 24), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        _EncodedDataRelease(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 24);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(*(v2 + 8), v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *_EncodedDataCreate(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}

uint64_t DEREncoderAddUInt32(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v10 = bswap32(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 4;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = _EncodedDataCreate(a2, a3, &v11 - v7 + 5, v7, 0, 3);
  return _DEREncoderAddEncodedData(a1, v8);
}

uint64_t DEREncoderAddUInt64(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v5 = 0;
  v10 = bswap64(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 8)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 8;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = _EncodedDataCreate(a2, a3, &v11 - v7 + 9, v7, 0, 3);
  return _DEREncoderAddEncodedData(a1, v8);
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t _DEREncoderAddDataFromEncoderByEncoding(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = _EncodedDataCreate(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = _DEREncoderAddEncodedData(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddSequenceFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x10u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddSetFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x11u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddPrivateFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3)
{
  v6 = calloc(1uLL, 0x10uLL);
  v7 = v6;
  if (!v6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *(v6 + 3) = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = _DEREncoderAddDataFromEncoderByEncoding(a1, v6, 0, 0x10u, 1);
  if (!v8)
  {
    if (a2)
    {
      v8 = _DEREncoderAddDataFromEncoderByEncoding(v7, a2, 3u, a3, 1);
      goto LABEL_8;
    }

LABEL_7:
    v8 = 1;
  }

LABEL_8:
  DEREncoderDestroy(v7);
  return v8;
}

void _EncodedDataRelease(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          _EncodedDataRelease(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

id FormatHex(uint64_t a1, unint64_t a2, int a3)
{
  v6 = [NSMutableString stringWithCapacity:0];
  v7 = v6;
  v48 = 0;
  v47 = 0;
  if (a3)
  {
    v8 = @"00000000  ";
  }

  else
  {
    v8 = @"0000  ";
  }

  [v6 appendFormat:v8];
  v9 = 0;
  if (a2)
  {
    v10 = "%s %s\n%04x  ";
    if (a3)
    {
      v10 = "%s %s\n%08x  ";
    }

    __format = v10;
    do
    {
      if (v9 && (v9 & 0xF) == 0)
      {
        v11 = 0;
        v46 = 0;
        v45 = *(a1 + v9 - 16);
        do
        {
          v12 = *(&v45 + v11);
          if (v12 < 32 || v12 == 127 || *(&v45 + v11) == 32)
          {
            *(&v45 + v11) = 46;
          }

          ++v11;
        }

        while (v11 != 8);
        v13 = 0;
        v44 = 0;
        v43 = *(a1 + v9 - 8);
        do
        {
          v14 = *(&v43 + v13);
          if (v14 < 32 || v14 == 127 || *(&v43 + v13) == 32)
          {
            *(&v43 + v13) = 46;
          }

          ++v13;
        }

        while (v13 != 8);
        snprintf(__str, 0x20uLL, __format, &v45, &v43, v9);
        [v7 appendFormat:@"%s", __str];
      }

      if (v9 + 8 >= a2)
      {
        [v7 appendFormat:@"%02x ", *(a1 + v9++)];
      }

      else
      {
        v15 = *(a1 + v9);
        v16 = *(a1 + v9 + 1);
        v17 = *(a1 + v9 + 2);
        v18 = *(a1 + v9 + 3);
        v19 = *(a1 + v9 + 4);
        v20 = *(a1 + v9 + 5);
        if (((v9 + 8) & 0xF) != 0)
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x  ", v15, v16);
        }

        else
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x    ", v15, v16);
        }

        [v7 appendFormat:@"%s", __str];
        v9 += 8;
      }
    }

    while (v9 < a2);
    if (a2 >= 0x10)
    {
      a2 &= 0xFu;
      if (!a2)
      {
        [v7 appendString:@"   "];
        v35 = 0;
        v36 = a1 + v9;
        v47 = *(a1 + v9 - 16);
        do
        {
          v37 = *(&v47 + v35);
          if (v37 < 32 || v37 == 127 || *(&v47 + v35) == 32)
          {
            *(&v47 + v35) = 46;
          }

          ++v35;
        }

        while (v35 != 8);
        v38 = [NSString stringWithUTF8String:&v47];
        [v7 appendString:v38];

        [v7 appendString:@" "];
        v39 = 0;
        v47 = *(v36 - 8);
        do
        {
          v40 = *(&v47 + v39);
          if (v40 < 32 || v40 == 127 || *(&v47 + v39) == 32)
          {
            *(&v47 + v39) = 46;
          }

          ++v39;
        }

        while (v39 != 8);
        goto LABEL_58;
      }
    }
  }

  v21 = 3;
  if (a2 < 9)
  {
    v21 = 4;
  }

  v22 = 3 * (16 - a2) + v21;
  do
  {
    [v7 appendString:@" "];
    --v22;
  }

  while (v22);
  v23 = a2 - 8;
  if (a2 >= 8)
  {
    v26 = 0;
    v47 = *(a1 + v9 - a2);
    do
    {
      v27 = *(&v47 + v26);
      if (v27 < 32 || v27 == 127 || *(&v47 + v26) == 32)
      {
        *(&v47 + v26) = 46;
      }

      ++v26;
    }

    while (v26 != 8);
  }

  else
  {
    __memcpy_chk();
    *(&v47 + a2) = 0;
    if (a2)
    {
      v24 = &v47;
      do
      {
        v25 = *v24;
        if (v25 < 32 || v25 == 127 || *v24 == 32)
        {
          *v24 = 46;
        }

        v24 = (v24 + 1);
        --a2;
      }

      while (a2);
    }

    v23 = 0;
  }

  v28 = &v47;
  v29 = [NSString stringWithUTF8String:&v47];
  [v7 appendString:v29];

  if (v23)
  {
    [v7 appendString:@" "];
    __memcpy_chk();
    *(&v47 + v23) = 0;
    v30 = 1;
    do
    {
      v31 = *v28;
      if (v31 < 32 || v31 == 127 || *v28 == 32)
      {
        *v28 = 46;
      }

      v28 = (v28 + 1);
    }

    while (v23 > v30++);
LABEL_58:
    v33 = [NSString stringWithUTF8String:&v47];
    [v7 appendString:v33];
  }

  return v7;
}

void _AMRestorePartitionOpenFileWithURL_cold_2(char a1)
{
  v2 = __error();
  strerror(*v2);
  AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "open() returned %d, %s", v3, v4, v5, v6, v7, a1);
}

void __os_cleanup_iorelease_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_1(v6, v3, v4, v5, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_0(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

uint64_t AMSupportDigestSha1(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha256(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!sha256_digest_info)
  {
    sha256_digest_info = ccsha256_di();
  }

  ccdigest();
  return 0;
}

uint64_t AMSupportX509DecodeCertificate(unint64_t *a1, unint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    bzero(a1, 0x120uLL);
    a1[32] = a2;
    a1[33] = a3;
    if (DERParseSequence((a1 + 32), DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a1, 0x30uLL))
    {
      return 19;
    }

    if (DERParseSequence(a1, 0xAu, &AMSupportX509DERTBSCertItemSpecs, (a1 + 6), 0xA0uLL))
    {
      return 19;
    }

    v10 = 0u;
    v11 = 0u;
    v9 = 0;
    if (DERParseSequence((a1 + 18), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v10, 0x20uLL))
    {
      return 19;
    }

    if (DERParseSequenceContent(&v10, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, (a1 + 28), 0x20uLL))
    {
      return 19;
    }

    if (!DEROidCompare((a1 + 28), &oidRsa))
    {
      return 19;
    }

    v7 = a1[31];
    if (v7)
    {
      if (v7 != 2)
      {
        return 19;
      }

      v8 = a1[30];
      if (*v8 != 5 || v8[1])
      {
        return 19;
      }
    }

    if (DERParseBitString(&v11, a1 + 26, &v9) || v9)
    {
      return 19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMSupportRsaVerifySignatureSha1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  if (v3 == 20)
  {
    v4 = OUTLINED_FUNCTION_3_0(v1, "\x06\x05+\x0E\x03\x02\x1A", v2);
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }

  return v0;
}

uint64_t AMSupportRsaVerifySignatureSha256()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  if (v3 == 32)
  {
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }

  return v0;
}

uint64_t AMSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  theDict = 0;
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  if (Count < 1)
  {
    v22 = 0;
    v4 = 0;
    Mutable = 0;
    goto LABEL_31;
  }

  v24 = v13;
  v25 = v11;
  while (1)
  {
    v14 = *v11;
    if (!*a4)
    {
      *a4 = CFDictionaryCreateMutableCopy(a1, 0, a2);
    }

    v15 = CFGetTypeID(*v13);
    if (v15 == CFDictionaryGetTypeID())
    {
      break;
    }

    v19 = theDict;
    MutableCopy = *a4;
    if (theDict)
    {
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
        v19 = theDict;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v19);
      *a4 = MutableCopy;
    }

    if (!MutableCopy)
    {
      Mutable = 0;
LABEL_37:
      v4 = 2;
      goto LABEL_29;
    }

    CFDictionarySetValue(MutableCopy, v14, *v13);
    Mutable = 0;
LABEL_23:
    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v13;
    ++v11;
    if (!--Count)
    {
      v4 = 0;
      Mutable = 0;
      goto LABEL_29;
    }
  }

  Value = CFDictionaryGetValue(a2, v14);
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
    v18 = CFGetTypeID(Mutable);
    if (v18 != CFDictionaryGetTypeID())
    {
      v4 = 8;
      goto LABEL_29;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      goto LABEL_37;
    }
  }

  v21 = AMSupportCreateMergedDictionary(a1, Mutable, *v13, &theDict);
  if (!v21)
  {
    CFDictionarySetValue(*a4, v14, theDict);
    goto LABEL_23;
  }

  v4 = v21;
LABEL_29:
  v11 = v25;
  v22 = theDict;
  v13 = v24;
LABEL_31:
  free(v11);
  free(v13);
  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

uint64_t AMAuthInstallCreate(const __CFAllocator *a1)
{
  v2 = pthread_once(&_AMAuthInstallClassInitializeOnce, _AMAuthInstallClassInitialize);
  v36 = OUTLINED_FUNCTION_1_2(v2, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v36 || (cf = CFURLCreateWithString(a1, @"https://gs.apple.com:443/", 0)) == 0)
  {
    cf = 0;
    goto LABEL_20;
  }

  v39 = CFURLCreateWithString(a1, @"http://vega-dr.apple.com:8080/vegads/fuser", 0);
  if (!v39)
  {
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v4 = CFURLCreateWithString(a1, @"http://treecko-dr.apple.com:8080/TREECKO/controller", 0);
  v38 = v4;
  if (!v4)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_1_2(v4, v5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v37 = v6;
  if (!v6)
  {
LABEL_22:
    v37 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v8 = OUTLINED_FUNCTION_1_2(v6, v7, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = v8;
  if (!v8)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_1_2(v8, v9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = v11;
  if (!v11)
  {
LABEL_24:
    v31 = 0;
    v16 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
LABEL_27:
    v25 = 0;
LABEL_28:
    v28 = 0;
LABEL_29:
    v29 = 0;
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_1_2(v11, v12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = v14;
  if (!v14)
  {
    v31 = 0;
    goto LABEL_25;
  }

  v17 = OUTLINED_FUNCTION_1_2(v14, v15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = v17;
  if (!v17)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_1_2(v17, v18, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_1_2(v20, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = v23;
  if (!v23)
  {
    v31 = 0;
    goto LABEL_28;
  }

  v26 = OUTLINED_FUNCTION_1_2(v23, v24, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v28 = v26;
  if (!v26)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v29 = OUTLINED_FUNCTION_1_2(v26, v27, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v29)
  {
    Instance = _CFRuntimeCreateInstance();
    v31 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x208uLL);
      *(v31 + 520) = 0;
      *(v31 + 57) = 257;
      *(v31 + 72) = CFRetain(cf);
      *(v31 + 80) = 3;
      *(v31 + 352) = CFRetain(v36);
      *(v31 + 376) = CFRetain(v37);
      *(v31 + 384) = CFRetain(v10);
      *(v31 + 416) = CFRetain(v13);
      *(v31 + 160) = CFRetain(v39);
      *(v31 + 296) = CFRetain(v38);
      *(v31 + 88) = @"ApImg4Ticket";
      *(v31 + 200) = CFRetain(v16);
      *(v31 + 208) = CFRetain(v19);
      *(v31 + 216) = CFRetain(v22);
      v32 = calloc(1uLL, 0x30uLL);
      *(v31 + 128) = v32;
      if (v32)
      {
        v33 = CFRetain(v25);
        v34 = *(v31 + 128);
        *v34 = v33;
        *(v34 + 40) = 0;
        *(v34 + 24) = 0u;
        *(v34 + 8) = 0u;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
        *(v31 + 440) = _AMAuthInstallNoopUpdaterAddTags;
        *(v31 + 448) = _AMAuthInstallNoopUpdaterWriteManifests;
        *(v31 + 456) = CFRetain(v28);
        *(v31 + 464) = CFRetain(v29);
        *(v31 + 488) = 0;
        *(v31 + 512) = 0;
        *(v31 + 360) = AMAuthInstallLockCreate();
      }

      else
      {
        _AMAuthInstallFinalize(v31);
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  SafeRelease(v36);
  SafeRelease(cf);
  SafeRelease(v39);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v10);
  SafeRelease(v13);
  SafeRelease(0);
  SafeRelease(v16);
  SafeRelease(v19);
  SafeRelease(v22);
  SafeRelease(v25);
  SafeRelease(v28);
  SafeRelease(v29);
  return v31;
}

uint64_t AMAuthInstallSetSigningServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 72);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 72) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallApSupportsLocalSigning(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      if (*(v11 + 112))
      {
        v12 = AMAuthInstallApImg4SupportsLocalSigning(a1);
LABEL_8:
        v13 = v12;
        result = 0;
        *a2 = v13;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallApIsImg4");
    }

    v12 = AMAuthInstallApImg3SupportsLocalSigning();
    goto LABEL_8;
  }

  return result;
}

uint64_t AMAuthInstallApSupportsGlobalSigning(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      if (*(v11 + 112))
      {
        v12 = AMAuthInstallApImg4SupportsGlobalSigning(a1);
        result = 0;
        *a2 = v12;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallApIsImg4");
    }

    return 13;
  }

  return result;
}

uint64_t AMAuthInstallApRemoveInfoDict(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = 0;
  v6 = 1;
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v9);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        v3 = malloc(8 * Count);
        v13 = malloc(8 * Count);
        v4 = v13;
        v6 = 2;
        if (v3 && v13)
        {
          CFDictionaryGetKeysAndValues(v5, v3, v13);
          if (Count < 1)
          {
LABEL_14:
            v6 = 0;
            *a3 = CFRetain(v5);
          }

          else
          {
            v14 = 0;
            while (v3[v14])
            {
              v15 = v4[v14];
              if (!v15)
              {
                break;
              }

              v16 = CFGetTypeID(v15);
              if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v4[v14], @"Info"))
              {
                CFDictionaryRemoveValue(v4[v14], @"Info");
              }

              if (Count == ++v14)
              {
                goto LABEL_14;
              }
            }

            v6 = 1;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_6();
        v6 = 2;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
  }

  SafeRelease(v5);
  SafeFree(v3);
  SafeFree(v4);
  return v6;
}

uint64_t AMAuthInstallApCreatePersonalizedResponse(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = CFDictionaryContainsKey(theDict, @"Ap,LocalPolicy");
  v13 = 0;
  v68 = 0;
  v66 = 0;
  value = 0;
  v14 = 1;
  if (a1 && theDict && a3)
  {
    v15 = v6;
    if (AMAuthInstallApSupportsLocalSigning(a1, &v68 + 1, v7, v8, v9, v10, v11, v12))
    {
      goto LABEL_31;
    }

    v22 = AMAuthInstallApSupportsGlobalSigning(a1, &v68, v16, v17, v18, v19, v20, v21);
    if (v22 != 13)
    {
      v14 = v22;
      if (v22)
      {
        goto LABEL_31;
      }
    }

    v28 = *(a1 + 16);
    if (v28)
    {
      v29 = *(v28 + 94) != 0;
      if (HIBYTE(v68) && *(v28 + 94))
      {
        AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Forcing server signing\n", v23, v24, v25, v26, v27, v65);
        LOBYTE(v29) = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v29 = 0;
    }

    if (HIBYTE(v68) && !v29)
    {
      v30 = (a1 + 505);
      if (!*(a1 + 505))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (!v15 || !*(a1 + 505))
    {
      if (v68 != 0 && !v29)
      {
        v44 = CFRetain(*(a1 + 40));
        value = v44;
        if (v44)
        {
          v45 = v44;
          v46 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v46, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v13 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, *(a1 + 88), v45);
            *a3 = CFRetain(v13);
            AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Using global signing", v48, v49, v50, v51, v52, v65);
            v14 = 0;
            goto LABEL_32;
          }

          goto LABEL_41;
        }

        v58 = "global ticketData is NULL";
LABEL_40:
        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v58, v37, v38, v39, v40, v41, v65);
        v13 = 0;
        goto LABEL_41;
      }

      v53 = CFGetAllocator(a1);
      v54 = AMAuthInstallApRemoveInfoDict(v53, theDict, &v66);
      if (!v54)
      {
        v14 = AMAuthInstallRequestSendSync(a1, v66, a3);
        if (v14)
        {
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v14);
          AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "server request error: %@", v60, v61, v62, v63, v64, LocalizedStatusString);
        }

        goto LABEL_31;
      }

      v14 = v54;
      v57 = "could not remove info dicts from request";
      goto LABEL_37;
    }

    v30 = (a1 + 505);
    v28 = *(a1 + 16);
LABEL_19:
    *(v28 + 84) = 1;
    *(v28 + 128) = 384;
LABEL_20:
    v31 = OUTLINED_FUNCTION_3_1();
    SignedManifest = AMAuthInstallApImg4LocalCreateSignedManifest(v31, v32, 0, 0, 0, v33, v34, v35);
    if (!SignedManifest)
    {
      if (value)
      {
        v42 = CFGetAllocator(a1);
        v43 = CFDictionaryCreateMutable(v42, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v13 = v43;
        if (v43)
        {
          CFDictionaryAddValue(v43, *(a1 + 88), value);
          v14 = 0;
          *a3 = CFRetain(v13);
          goto LABEL_32;
        }

LABEL_41:
        v14 = 2;
        goto LABEL_32;
      }

      v58 = "ticketData is NULL";
      goto LABEL_40;
    }

    v14 = SignedManifest;
    if (*v30)
    {
      v56 = "hacktivated";
    }

    else
    {
      v56 = "local";
    }

    v65 = v56;
    v57 = "failed to create a %s Img4 ticket";
LABEL_37:
    AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v57, v37, v38, v39, v40, v41, v65);
LABEL_31:
    v13 = 0;
  }

LABEL_32:
  SafeRelease(v13);
  SafeRelease(value);
  SafeRelease(v66);
  return v14;
}

uint64_t AMAuthInstallApImg4DecodeRestoreInfo(const __CFData *a1, CFMutableDictionaryRef *a2)
{
  if (!a1 || !*a2)
  {
    return 1;
  }

  bzero(v43, 0x1C8uLL);
  v42[0] = 0;
  v42[1] = 0;
  v41[0] = 0;
  v41[1] = 0;
  v40 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Img4DecodeInit(BytePtr, Length, v43);
  if (v11)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6, v7, v8, v9, v10, v33);
  }

  else
  {
    if (!DERDecodeSeqContentInit(&v44, v42))
    {
      while (1)
      {
        do
        {
          while (1)
          {
            v17 = DERDecodeSeqNext(v42, &v40);
            if (!v17)
            {
              break;
            }

            if (v17 == 1)
            {
              return 0;
            }
          }

          v38 = 0;
          v39[0] = 0;
          v39[1] = 0;
          v37[0] = 0;
          v37[1] = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
        }

        while (DERDecodeItem(v41, &v38) || DERDecodeSeqContentInit(v39, v37) || DERDecodeSeqNext(v37, &v34) || v34 != 22);
        OUTLINED_FUNCTION_3_2();
        v22 = CFStringCreateWithBytes(v18, v19, v20, v21, 0);
        if (v22)
        {
          if (!DERDecodeSeqNext(v37, &v34))
          {
            break;
          }
        }

LABEL_34:
        SafeRelease(v22);
      }

      if (v34 == 1)
      {
        LOBYTE(v33) = 0;
        if (DERParseBoolean(&v35, &v33))
        {
          return 23;
        }

        if (v33)
        {
          v29 = kCFBooleanFalse;
        }

        else
        {
          v29 = kCFBooleanTrue;
        }

        if (!v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v34 != 2)
        {
          if (v34 == 4)
          {
            v27 = CFDataCreate(kCFAllocatorDefault, v35, v36);
          }

          else
          {
            if (v34 != 22)
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_3_2();
            v27 = CFStringCreateWithBytes(v23, v24, v25, v26, 0);
          }

          v30 = v27;
          if (v27)
          {
            CFDictionarySetValue(*a2, v22, v27);
          }

          v31 = v30;
          goto LABEL_33;
        }

        v33 = 0;
        if (DERParseInteger64(&v35, &v33))
        {
          return 23;
        }

        v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v33);
        if (!v28)
        {
LABEL_32:
          v31 = 0;
LABEL_33:
          SafeRelease(v31);
          goto LABEL_34;
        }

        v29 = v28;
      }

      CFDictionarySetValue(*a2, v22, v29);
      goto LABEL_32;
    }

    AMSupportLogInternal(3, "AMAuthInstallApImg4DecodeRestoreInfo", "can't parse top-level restoreinfo sequence", v12, v13, v14, v15, v16, v33);
  }

  return 99;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, void *a2, unsigned int *a3)
{
  v8 = 0;
  v81 = 0;
  v80 = 0;
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_7();
  if (!v12)
  {
LABEL_43:
    v75 = 3;
    goto LABEL_36;
  }

  v13 = v11;
  v3 = DEREncoderCreate(1);
  if (!v3)
  {
    v8 = 0;
    v4 = 0;
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  Count = CFDictionaryGetCount(v13);
  v15 = 8 * Count;
  v8 = malloc(v15);
  v16 = malloc(v15);
  v4 = v16;
  v5 = 0;
  if (!v8 || !v16)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_43;
  }

  CFDictionaryGetKeysAndValues(v13, v8, v16);
  if (Count)
  {
    v22 = 0;
    v23 = 8 * Count;
    v24 = "%s: unexpected restore property type";
    while (1)
    {
      v25 = v8[v22 / 8];
      if (!v25 || (v26 = CFGetTypeID(v8[v22 / 8]), v26 != CFStringGetTypeID()))
      {
        v77 = "invalid overridesKey";
        goto LABEL_40;
      }

      v27 = v4[v22 / 8];
      if (!v27)
      {
        break;
      }

      v28 = CFGetTypeID(v27);
      if (v28 == CFDataGetTypeID())
      {
        if (AMAuthInstallApImg4AddDataProperty(v3, v25, v4[v22 / 8], v29, v30, v31, v32, v33))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v34 = CFGetTypeID(v4[v22 / 8]);
        TypeID = CFBooleanGetTypeID();
        v36 = v4[v22 / 8];
        if (v34 == TypeID)
        {
          Value = CFBooleanGetValue(v36);
          if (AMAuthInstallApImg4AddBooleanProperty(v3, v25, Value, v38, v39, v40, v41, v42))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v43 = CFGetTypeID(v36);
          if (v43 != CFNumberGetTypeID())
          {
            goto LABEL_38;
          }

          v49 = v4[v22 / 8];
          if (CFNumberGetType(v49) == kCFNumberSInt32Type)
          {
            if (AMAuthInstallApImg4AddInteger32Property(v3, v25, v49, v50, v51, v52, v53, v54))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (CFNumberGetType(v49) != kCFNumberSInt64Type)
            {
              v24 = "%s: unexpected integer type";
LABEL_38:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v24, v44, v45, v46, v47, v48, "AMAuthInstallApImg4EncodeRestoreDict");
LABEL_39:
              v77 = "failed to encode restore property";
              goto LABEL_40;
            }

            if (AMAuthInstallApImg4AddInteger64Property(v3, v8[v22 / 8], v49, v44, v45, v46, v47, v48))
            {
              goto LABEL_39;
            }
          }
        }
      }

      v22 += 8;
      if (v23 == v22)
      {
        goto LABEL_25;
      }
    }

    v77 = "invalid overridesValue";
LABEL_40:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v77, v17, v18, v19, v20, v21, v79);
    goto LABEL_41;
  }

LABEL_25:
  v5 = DEREncoderCreate(0);
  if (!v5)
  {
LABEL_42:
    v7 = 0;
    v6 = 0;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_2();
  if (CFStringGetCString(v55, v56, v57, v58))
  {
    strlen(__s);
    OUTLINED_FUNCTION_5();
    if (DEREncoderAddData(v59, v60, v61, v62, v63, 0))
    {
      v79 = @"IM4M";
      v78 = "failed to add %@ string";
      goto LABEL_55;
    }
  }

  if (DEREncoderAddSetFromEncoder(v3, v5))
  {
    v78 = "failed to encode restore info properties as set";
LABEL_55:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v78, v64, v65, v66, v67, v68, v79);
    goto LABEL_42;
  }

  v6 = DEREncoderCreate(0);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_51;
  }

  if (DEREncoderAddSequenceFromEncoder(v5, v6))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info sequence", v69, v70, v71, v72, v73, v79);
    goto LABEL_53;
  }

  if (DEREncoderCreateEncodedBuffer(v6, &v80, &v81))
  {
LABEL_53:
    v7 = 0;
    goto LABEL_43;
  }

  v74 = DEREncoderCreate(0);
  v7 = v74;
  if (!v74)
  {
LABEL_51:
    v75 = 2;
    goto LABEL_36;
  }

  if (DEREncoderAddData(v74, 2u, 1u, v80, v81, 1) || DEREncoderCreateEncodedBuffer(v7, a2, a3))
  {
    goto LABEL_43;
  }

  v75 = 0;
LABEL_36:
  SafeFree(v8);
  SafeFree(v4);
  SafeFree(v80);
  DEREncoderDestroy(v3);
  DEREncoderDestroy(v5);
  DEREncoderDestroy(v7);
  DEREncoderDestroy(v6);
  return v75;
}

uint64_t AMAuthInstallApImg4LocalAddImages(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theDict)
  {
    v35 = "requestDict cannot be NULL";
LABEL_23:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", v35, a4, a5, a6, a7, a8, v36);
    v12 = 0;
    v13 = 0;
    Mutable = 0;
LABEL_24:
    v33 = 1;
    goto LABEL_18;
  }

  if (!a3)
  {
    v35 = "dstEncoder cannot be NULL";
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v12 = malloc(8 * Count);
  v13 = malloc(8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v12, v13);
  Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v33 = 2;
    goto LABEL_18;
  }

  if (Count >= 1)
  {
    v15 = 0;
    do
    {
      v16 = v12[v15];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v13[v15];
      v18 = CFGetTypeID(v12[v15]);
      if (v18 != CFStringGetTypeID() || v17 == 0)
      {
        goto LABEL_24;
      }

      v20 = CFGetTypeID(v17);
      if (v20 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(v17, @"Digest"))
        {
          v37.length = CFArrayGetCount(Mutable);
          v37.location = 0;
          if (CFArrayGetFirstIndexOfValue(Mutable, v37, v16) == -1)
          {
            CFArrayAppendValue(Mutable, v16);
            TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(v16);
            if (!TypeForEntryName)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "did not find a matching tag for requestTag %@", v22, v23, v24, v25, v26, v16);
              goto LABEL_24;
            }

            v27 = AMAuthInstallApImg4LocalAddImageProperties(TypeForEntryName, a3, TypeForEntryName, v17, v23, v24, v25, v26);
            if (v27)
            {
              v33 = v27;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "failed to add %@ image to the ticket body", v28, v29, v30, v31, v32, v16);
              goto LABEL_18;
            }
          }
        }
      }
    }

    while (Count != ++v15);
  }

  v33 = 0;
LABEL_18:
  SafeFree(v12);
  SafeFree(v13);
  SafeRelease(Mutable);
  return v33;
}

uint64_t AMAuthInstallApImg4LocalRegisterKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 16);
  if (*(v8 + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "local signing is not available for production fused devices.", a4, a5, a6, a7, a8, v26);
    return 14;
  }

  if (!*(a1 + 392))
  {
    if (*(v8 + 88) || *(v8 + 16))
    {
      if (*(v8 + 89))
      {
        v10 = *(v8 + 8);
        if (v10 == 32784)
        {
          v11 = @"ap.ticket.insec.rsa4k.key.private";
        }

        else
        {
          if (v10 != 35168)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "unrecognized chipid: 0x%08X", a4, a5, a6, a7, a8, v10);
            return 1;
          }

          v11 = @"ap.ticket.insec.rsa1k.key.private";
        }
      }

      else
      {
        v11 = @"ap.ticket.localpolicy.hacktivation.key.private";
        if (!*(a1 + 505))
        {
          v11 = @"ap.ticket.dev.key.private";
        }
      }
    }

    else
    {
      v11 = @"ap.ticket.unfused.key.private";
    }

    *(a1 + 392) = v11;
  }

  if (CFDictionaryContainsKey(*(a1 + 376), @"ap.ticket.dev.key.private"))
  {
    return 0;
  }

  v28 = OUTLINED_FUNCTION_1_3();
  v27 = OUTLINED_FUNCTION_1_3();
  v12 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v13 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v14 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v15 = OUTLINED_FUNCTION_1_3();
  v16 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v17 = OUTLINED_FUNCTION_1_3();
  v18 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v19 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v20 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  result = OUTLINED_FUNCTION_1_3();
  if ((!v28 || !v27 || !v15 || !v17 || !result) && (!v12 || !v13 || !v14 || !v16 || !v18 || !v19 || !v20))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available", v21, v22, v23, v24, v25, v26);
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFTypeRef *a2)
{
  memset(length, 0, sizeof(length));
  bytes = 0;
  if (!a1 || !a2)
  {
    v12 = 0;
    Mutable = 0;
    v13 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  if (!Mutable)
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_6;
  }

  v11 = *(a1 + 16);
  if (!*(v11 + 20))
  {
    if (!*(a1 + 400))
    {
      if (*(a1 + 505))
      {
        v14 = @"ap.ticket.localpolicy.hacktivation.leaf.cert";
      }

      else if (*(v11 + 88) || *(v11 + 16))
      {
        if (*(v11 + 89))
        {
          v30 = *(v11 + 8);
          switch(v30)
          {
            case 32770:
              v14 = @"ap.ticket.8002.insec.cert";
              break;
            case 35168:
              if (!*(a1 + 408))
              {
                *(a1 + 408) = @"ap.ticket.ca.cert";
              }

              CertData = AMAuthInstallCryptoGetCertData();
              if (CertData)
              {
                goto LABEL_46;
              }

              BytePtr = CFDataGetBytePtr(*&length[1]);
              v32 = CFDataGetLength(*&length[1]);
              CFDataAppendBytes(Mutable, BytePtr, v32);
              v14 = @"ap.ticket.8960.insec.cert";
              break;
            case 32784:
              v14 = @"ap.ticket.8010.insec.cert";
              break;
            default:
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "unrecognized chipid: 0x%08X", v5, v6, v7, v8, v9, v30);
              goto LABEL_42;
          }
        }

        else
        {
          v14 = @"ap.ticket.8960.dev.cert";
        }
      }

      else
      {
        v14 = @"ap.ticket.8960.unfused.cert";
      }

      *(a1 + 400) = v14;
    }

    if (!*(a1 + 505))
    {
      v15 = *(a1 + 16);
      if (!*(v15 + 93))
      {
        v16 = *(v15 + 8);
        v17 = v16 == 32770 || v16 == 35168;
        if (!v17 && v16 != 32784)
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "chipid: 0x%08X unsupported for img4 local signing", v5, v6, v7, v8, v9, v16);
LABEL_42:
          v12 = 0;
          v13 = 1;
          goto LABEL_6;
        }
      }
    }

    CertData = AMAuthInstallCryptoGetCertData();
    if (!CertData)
    {
      v20 = CFDataGetBytePtr(*&length[1]);
      v21 = CFDataGetLength(*&length[1]);
      CFDataAppendBytes(Mutable, v20, v21);
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v22 = CFDataGetBytePtr(Mutable);
        v23 = CFDataGetLength(Mutable);
        if (DEREncoderAddData(v12, 0, 0x10u, v22, v23, 1))
        {
          v13 = 3;
          goto LABEL_6;
        }

        if (!DEREncoderCreateEncodedBuffer(v12, &bytes, length))
        {
          v13 = 0;
          *a2 = CFDataCreate(0, bytes, length[0]);
          goto LABEL_26;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "%s: failed to create buffer", v24, v25, v26, v27, v28, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain");
      }

      v13 = 0;
      goto LABEL_26;
    }

LABEL_46:
    v13 = CertData;
    v12 = 0;
    goto LABEL_6;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "local signing is not available for production fused devices.", v5, v6, v7, v8, v9, v33);
  v12 = 0;
  v13 = 14;
LABEL_6:
  SafeRelease(*a2);
LABEL_26:
  SafeRelease(Mutable);
  SafeFree(bytes);
  DEREncoderDestroy(v12);
  return v13;
}

uint64_t AMAuthInstallApImg4LocalAddImageProperties(uint64_t a1, uint64_t *a2, const __CFString *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v104 = "toEncoder cannot be NULL";
LABEL_28:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", v104, a4, a5, a6, a7, a8, v105);
    v11 = 0;
    v25 = 1;
    goto LABEL_24;
  }

  if (!a3)
  {
    v104 = "imageTag cannot be NULL";
    goto LABEL_28;
  }

  if (!a4)
  {
    v104 = "requestDict cannot be NULL";
    goto LABEL_28;
  }

  v11 = DEREncoderCreate(1);
  if (!v11)
  {
    v25 = 2;
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"Digest");
  if (Value)
  {
    v13 = Value;
    if (CFDataGetLength(Value) < 1)
    {
      AMAuthInstallLog(6, "AMAuthInstallApImg4LocalAddImageProperties", "'%@' has zero length digest - skipping digest", v14, v15, v16, v17, v18, a3);
    }

    else
    {
      v19 = AMAuthInstallApImg4AddDataProperty(v11, @"DGST", v13, v14, v15, v16, v17, v18);
      if (v19)
      {
        v25 = v19;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add Digest property for '%@'", v20, v21, v22, v23, v24, a3);
        goto LABEL_24;
      }
    }
  }

  v26 = CFDictionaryGetValue(a4, @"Trusted");
  if (v26 && (v27 = CFBooleanGetValue(v26), v33 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EKEY", v27, v28, v29, v30, v31, v32), v33))
  {
    v25 = v33;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EKEY property for '%@'", v34, v35, v36, v37, v38, a3);
  }

  else
  {
    v39 = CFDictionaryGetValue(a4, @"DPRO");
    if (v39 && (v40 = CFBooleanGetValue(v39), v46 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DPRO", v40, v41, v42, v43, v44, v45), v46))
    {
      v25 = v46;
      AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DPRO property for '%@'", v47, v48, v49, v50, v51, a3);
    }

    else
    {
      v52 = CFDictionaryGetValue(a4, @"DSEC");
      if (v52 && (v53 = CFBooleanGetValue(v52), v59 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DSEC", v53, v54, v55, v56, v57, v58), v59))
      {
        v25 = v59;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DSEC property for '%@'", v60, v61, v62, v63, v64, a3);
      }

      else
      {
        v65 = CFDictionaryGetValue(a4, @"ESEC");
        if (v65 && (v66 = CFBooleanGetValue(v65), v72 = AMAuthInstallApImg4AddBooleanProperty(v11, @"ESEC", v66, v67, v68, v69, v70, v71), v72))
        {
          v25 = v72;
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add ESEC property for '%@'", v73, v74, v75, v76, v77, a3);
        }

        else
        {
          v78 = CFDictionaryGetValue(a4, @"EPRO");
          if (v78 && (v79 = CFBooleanGetValue(v78), v85 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EPRO", v79, v80, v81, v82, v83, v84), v85))
          {
            v25 = v85;
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EPRO property for '%@'", v86, v87, v88, v89, v90, a3);
          }

          else
          {
            v91 = CFDictionaryGetValue(a4, @"TBMDigests");
            if (v91 && (v97 = AMAuthInstallApImg4AddDataProperty(v11, @"tbms", v91, v92, v93, v94, v95, v96), v97))
            {
              v25 = v97;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add %@ property for '%@'", v92, v93, v94, v95, v96, @"tbms");
            }

            else
            {
              v25 = AMAuthInstallApImg4AddDictionaryProperty(v11, a2, a3, v92, v93, v94, v95, v96);
              if (v25)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "AMAuthInstallApImg4LocalAddDictionaryProperty failed for '%@'", v98, v99, v100, v101, v102, a3);
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  DEREncoderDestroy(v11);
  return v25;
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      v13 = *(cf + 46);
      if (v13)
      {
        AMAuthInstallReleaseRsaKeyData(*v13);
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v14 = AMAuthInstallCopyRsaKeyDataForKey();
        if (v14)
        {
          v12 = v14;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v14);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", v16, v17, v18, v19, v20, LocalizedStatusString);
        }

        else
        {
          v21 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v21;
          if (v21)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  SafeRelease(0);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *", v10, v11, v12, v13, v14, v25);
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v15, v16, v17, v18, v19, v20, v21, v22, v26);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v23 = *(a1 + 280);

  SafeRelease(v23);
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    bzero(&v6, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v6);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v148 = 0;
  cf = 0;
  v147 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v16);
  }

  v17 = (a1 + 120);
  v18 = *(a1 + 120);
  v19 = v18;
  if (!v18)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.", v11, v12, v13, v14, v15, v141);
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.", v11, v12, v13, v14, v15, v141);
    v19 = *v17;
    if (!*v17)
    {
      v25 = *(a1 + 104);
      v26 = CFGetAllocator(a1);
      v27 = v25(a1, v26, a1 + 120, &v147);
      if (v27)
      {
        v9 = v27;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v28, v29, v30, v31, v32, v147);
        Data = 0;
        goto LABEL_13;
      }

      v19 = *v17;
      if (!*v17)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.", v28, v29, v30, v31, v32, v141);
        Data = 0;
        v34 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(kCFAllocatorDefault, v19, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", v20, v21, v22, v23, v24, cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v17);
  if (!v18)
  {
    SafeRelease(*v17);
    *v17 = 0;
  }

LABEL_15:
  v35 = *(a1 + 16);
  if (!v35)
  {
    goto LABEL_21;
  }

  if (*(v35 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, _ApplyTagPrefix, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v35 = *(a1 + 16);
      if (!v35)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure", v36, v37, v38, v39, v40, v141);
    Data = 0;
    v9 = 0;
LABEL_13:
    v34 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v41 = *(v35 + 152);
  if (v41)
  {
    CFDictionaryApplyFunction(v41, _ApplyOverrideTags, theDict);
  }

LABEL_21:
  v42 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v42, @"@HostPlatformInfo", SimplePlatformInfoString);
  v44 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v44, @"@VersionInfo", LibraryVersionString);
  v46 = *(a1 + 16);
  if (!v46 || !*(v46 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", kCFBooleanTrue);
  }

  v47 = *(a1 + 96);
  if (v47)
  {
    CFDictionarySetValue(theDict, @"@UUID", v47);
  }

  v48 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v48)
  {
    v9 = v48;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v49, v50, v51, v52, v53, v48);
LABEL_28:
    Data = 0;
    v34 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_1000A1550, *(a1 + 72));
  v34 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v34 + 24) = CFRetain(theDict);
  *(v34 + 16) = *(a1 + 80);
  *(v34 + 80) = *(a1 + 488);
  *(v34 + 88) = *(a1 + 512);
  if (*(v34 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorMalloc, 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  *(v34 + 32) = Mutable;
  v71 = *(a1 + 16);
  if (v71 && !*(v71 + 160))
  {
    _CFDictionarySetInteger64Str(Mutable, @"x-intnt-apchipid", *(v71 + 8));
    v72 = *(v34 + 32);
    v73 = *(*(a1 + 16) + 64);
    context = 0;
    if (v72 && v73 && CFNumberGetValue(v73, kCFNumberSInt64Type, &context))
    {
      _CFDictionarySetInteger64Str(v72, @"x-intnt-certcepo", context);
    }

    _CFDictionarySetInteger64Str(*(v34 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v74 = *(v34 + 32);
    if (v74)
    {
      v75 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v74, @"x-intnt-apsecuritymode", v75);
      v74 = *(v34 + 32);
      if (v74)
      {
        if (*(*(a1 + 16) + 20))
        {
          v76 = @"yes";
        }

        else
        {
          v76 = @"no";
        }

        CFDictionarySetValue(v74, @"x-intnt-approductionmode", v76);
        v74 = *(v34 + 32);
      }
    }

    _CFDictionarySetInteger64Str(v74, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    _CFDictionarySetInteger64Str(*(v34 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v82 = *(v34 + 32);
      if (v82)
      {
        CFDictionarySetValue(v82, @"x-intnt-authuserid", @"yes");
      }
    }

    v83 = *(*(a1 + 16) + 72);
    if (v83)
    {
      CFDictionarySetValue(*(v34 + 32), @"x-intnt-usbserialstr", v83);
    }

    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict(kCFAllocatorDefault, *(*(a1 + 128) + 32), @"Info.Variant", v77, v78, v79, v80, v81);
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v34 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v85 = tss_submit(v34, v64, v65, v66, v67, v68, v69, v70);
  v91 = v85;
  if (!v85)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v85 <= 0x2710)
  {
    v92 = *(v34 + 72);
    if (v92)
    {
      v9 = v85 + 3100;
      LODWORD(context) = v85 + 3100;
      if (v85 < 0x384)
      {
        v93 = CFGetAllocator(a1);
        v99 = CFNumberCreate(v93, kCFNumberIntType, &context);
        if (v99)
        {
          CFDictionarySetValue(*(a1 + 352), v99, v92);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", v100, v101, v102, v103, v104, context);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", v94, v95, v96, v97, v98, context);
        }

        SafeRelease(v99);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v86, v87, v88, v89, v90, v85 + 28);
    }
  }

  SafeRelease(0);
  if (v91 > 9999)
  {
    if ((v91 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_1000862D0[v91 - 10000];
    }
  }

  else
  {
    v9 = (v91 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", v106, v107, v108, v109, v110, LocalizedStatusString);
LABEL_77:
  v111 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v111, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v112 = CFGetAllocator(a1);
    v118 = AMAuthInstallSupportBase64Encode(v112, Data, &v148, v113, v114, v115, v116, v117);
    if (v91)
    {
      if (!v118)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v119, v120, v121, v122, v123, v148);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>", v124, v125, v126, v127, v128, v142);
      }
    }

    else
    {
      if (!v118)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v119, v120, v121, v122, v123, v148);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>", v129, v130, v131, v132, v133, v143);
      }

      Value = CFDictionaryGetValue(*(v34 + 40), @"@ServerVersion");
      v140 = @"unavailable";
      if (Value)
      {
        LOBYTE(v140) = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v135, v136, v137, v138, v139, v140);
      AMAuthInstallDebugWriteObject(a1, *(v34 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v34 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v148);
  SafeRelease(0);
  if (v34)
  {
    tss_close_session(v34, v54, v55, v56, v57, v58, v59, v60);
  }

  return v9;
}

const char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = _CopyHexStringFromData_kAsciiHexChars[v9 >> 4];
        result[(v8 + 1)] = _CopyHexStringFromData_kAsciiHexChars[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, const __CFData *a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v14 = AMAuthInstallSupportRemoveFile(cf);
    if (v14)
    {
LABEL_12:
      v4 = v14;
      goto LABEL_13;
    }

    v13 = 0;
LABEL_8:
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = cf;
    }

    v14 = AMSupportPlatformWriteDataToFileURL(a2, v15);
    goto LABEL_12;
  }

  v7 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v7)
  {
    v13 = cfa;
    goto LABEL_8;
  }

  v4 = v7;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.", v8, v9, v10, v11, v12, v17);
LABEL_13:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_6(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_6();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_6();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}